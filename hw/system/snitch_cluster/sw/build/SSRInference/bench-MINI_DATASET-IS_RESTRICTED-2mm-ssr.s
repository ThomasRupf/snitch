
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-2mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004be4 80000000 TEXT
  2 .init             00000468 80004bf0 TEXT
  3 .rodata           00000238 80005058 DATA
  4 .htif             00000048 800052c0 DATA
  5 .tdata            00000000 80005308 DATA
  6 .tbss             00000010 80005308 BSS
  7 .tbssend          00000000 80005318 DATA
  8 .sdata            000000e8 80005318 DATA
  9 .data             00000000 80005400 DATA
 10 .sbss             00000004 80005400 BSS
 11 .bss              00000000 80005404 BSS
 12 .dram             00000000 80005404 DATA
 13 .debug_info       00003701 00000000 
 14 .debug_abbrev     00000c09 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000353e 00000000 
 17 .debug_loc        00003f86 00000000 
 18 .debug_ranges     000003d0 00000000 
 19 .debug_str        00000b05 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c8 00000000 
 23 .symtab           000033a0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000095e 00000000 


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
80000634: 13 01 01 ed  	addi	sp, sp, -304
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 12  	sw	ra, 300(sp)
8000063c: 23 24 81 12  	sw	s0, 296(sp)
80000640: 23 22 91 12  	sw	s1, 292(sp)
80000644: 23 20 21 13  	sw	s2, 288(sp)
80000648: 23 2e 31 11  	sw	s3, 284(sp)
8000064c: 23 2c 41 11  	sw	s4, 280(sp)
80000650: 23 2a 51 11  	sw	s5, 276(sp)
80000654: 23 28 61 11  	sw	s6, 272(sp)
80000658: 23 26 71 11  	sw	s7, 268(sp)
8000065c: 23 24 81 11  	sw	s8, 264(sp)
80000660: 23 22 91 11  	sw	s9, 260(sp)
80000664: 23 20 a1 11  	sw	s10, 256(sp)
80000668: 23 2e b1 0f  	sw	s11, 252(sp)
8000066c: 27 38 81 0e  	fsd	fs0, 240(sp)
80000670: 27 34 91 0e  	fsd	fs1, 232(sp)
80000674: 27 30 21 0f  	fsd	fs2, 224(sp)
80000678: 27 3c 31 0d  	fsd	fs3, 216(sp)
8000067c: 27 38 41 0d  	fsd	fs4, 208(sp)
80000680: 27 34 51 0d  	fsd	fs5, 200(sp)
80000684: 27 30 61 0d  	fsd	fs6, 192(sp)
80000688: 27 3c 71 0b  	fsd	fs7, 184(sp)
8000068c: 27 38 81 0b  	fsd	fs8, 176(sp)
80000690: 27 34 91 0b  	fsd	fs9, 168(sp)
80000694: 27 30 a1 0b  	fsd	fs10, 160(sp)
80000698: 37 05 00 00  	lui	a0, 0
8000069c: 33 05 45 00  	add	a0, a0, tp
800006a0: 83 25 45 00  	lw	a1, 4(a0)
800006a4: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006a8: 63 84 05 00  	beqz	a1, 0x800006b0 <main+0x7c>
800006ac: 6f 20 40 61  	j	0x80002cc0 <.LBB0_85+0x10>
;     return _snrt_team_current->root;
800006b0: 37 05 00 00  	lui	a0, 0
800006b4: 33 05 45 00  	add	a0, a0, tp
800006b8: 03 25 05 00  	lw	a0, 0(a0)
800006bc: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c0: 83 27 85 05  	lw	a5, 88(a0)
800006c4: 83 25 05 05  	lw	a1, 80(a0)
800006c8: 03 27 45 05  	lw	a4, 84(a0)
800006cc: 37 16 00 00  	lui	a2, 1
800006d0: 13 06 06 90  	addi	a2, a2, -1792
800006d4: b3 86 c7 00  	add	a3, a5, a2
800006d8: b3 05 b7 00  	add	a1, a4, a1
800006dc: 63 f6 d5 00  	bgeu	a1, a3, 0x800006e8 <main+0xb4>
800006e0: 13 07 00 00  	mv	a4, zero
800006e4: 6f 00 00 01  	j	0x800006f4 <main+0xc0>
;     void *ret = (void *)alloc->next;
800006e8: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
800006ec: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f0: 93 87 06 00  	mv	a5, a3
800006f4: b3 06 f6 00  	add	a3, a2, a5
800006f8: 93 86 06 20  	addi	a3, a3, 512
800006fc: 63 f6 d5 00  	bgeu	a1, a3, 0x80000708 <main+0xd4>
80000700: 13 04 00 00  	mv	s0, zero
80000704: 6f 00 00 01  	j	0x80000714 <main+0xe0>
;     void *ret = (void *)alloc->next;
80000708: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
8000070c: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000710: 93 87 06 00  	mv	a5, a3
80000714: b3 06 f6 00  	add	a3, a2, a5
80000718: 93 86 06 36  	addi	a3, a3, 864
8000071c: 63 f6 d5 00  	bgeu	a1, a3, 0x80000728 <main+0xf4>
80000720: 13 0d 00 00  	mv	s10, zero
80000724: 6f 00 00 01  	j	0x80000734 <main+0x100>
;     void *ret = (void *)alloc->next;
80000728: 13 8d 07 00  	mv	s10, a5
;     alloc->next += size;
8000072c: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000730: 93 87 06 00  	mv	a5, a3
80000734: b3 06 f6 00  	add	a3, a2, a5
80000738: 93 86 06 48  	addi	a3, a3, 1152
8000073c: 63 f6 d5 00  	bgeu	a1, a3, 0x80000748 <main+0x114>
80000740: 93 0c 00 00  	mv	s9, zero
80000744: 6f 00 00 01  	j	0x80000754 <main+0x120>
;     void *ret = (void *)alloc->next;
80000748: 93 8c 07 00  	mv	s9, a5
;     alloc->next += size;
8000074c: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000750: 93 87 06 00  	mv	a5, a3
80000754: 33 06 f6 00  	add	a2, a2, a5
80000758: 13 06 06 30  	addi	a2, a2, 768
8000075c: 63 f6 c5 00  	bgeu	a1, a2, 0x80000768 <main+0x134>
80000760: 93 07 00 00  	mv	a5, zero
80000764: 6f 00 80 00  	j	0x8000076c <main+0x138>
;     alloc->next += size;
80000768: 23 2c c5 04  	sw	a2, 88(a0)
8000076c: 23 24 e1 02  	sw	a4, 40(sp)
80000770: 23 26 f1 02  	sw	a5, 44(sp)
;   for (i = 0; i < ni; i++)
80000774: 13 55 44 01  	srli	a0, s0, 20
80000778: 33 35 a0 00  	snez	a0, a0
8000077c: b7 f5 11 00  	lui	a1, 287
80000780: 93 85 95 50  	addi	a1, a1, 1289
80000784: b3 35 b4 00  	sltu	a1, s0, a1
80000788: b3 75 b5 00  	and	a1, a0, a1

8000078c <.LBB0_74>:
8000078c: 17 55 00 00  	auipc	a0, 5
80000790: 13 05 c5 b8  	addi	a0, a0, -1140
80000794: 23 2c b1 00  	sw	a1, 24(sp)
80000798: 23 20 81 02  	sw	s0, 32(sp)
8000079c: 13 08 00 00  	mv	a6, zero
800007a0: 93 08 00 00  	mv	a7, zero
800007a4: 63 8c 05 24  	beqz	a1, 0x800009fc <.LBB0_74+0x270>
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
800007f8: 2b 20 04 3a  	scfgwi	s0, 928
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
800009f0: e3 92 56 e4  	bne	a3, t0, 0x80000834 <.LBB0_74+0xa8>
800009f4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009f8: 6f 00 80 22  	j	0x80000c20 <.LBB0_74+0x494>
800009fc: 93 02 00 00  	mv	t0, zero
80000a00: 13 0e 00 00  	mv	t3, zero
80000a04: 93 0e 00 00  	mv	t4, zero
80000a08: 13 0f 00 00  	mv	t5, zero
80000a0c: 93 0f 00 00  	mv	t6, zero
80000a10: 13 09 00 00  	mv	s2, zero
80000a14: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a18: 93 05 84 05  	addi	a1, s0, 88
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
80000c1c: e3 1c 77 e2  	bne	a4, t2, 0x80000a54 <.LBB0_74+0x2c8>
;   for (i = 0; i < nk; i++)
80000c20: 13 55 4d 01  	srli	a0, s10, 20
80000c24: 33 35 a0 00  	snez	a0, a0
80000c28: b7 f5 11 00  	lui	a1, 287
80000c2c: 93 85 95 3a  	addi	a1, a1, 937
80000c30: b3 35 bd 00  	sltu	a1, s10, a1
80000c34: 33 75 b5 00  	and	a0, a0, a1

80000c38 <.LBB0_75>:
80000c38: 97 4a 00 00  	auipc	s5, 4
80000c3c: 93 8a 8a 6e  	addi	s5, s5, 1768
80000c40: 23 2a a1 00  	sw	a0, 20(sp)
80000c44: 13 08 00 00  	mv	a6, zero
80000c48: 93 08 00 00  	mv	a7, zero
80000c4c: 93 02 00 00  	mv	t0, zero
80000c50: 13 03 00 00  	mv	t1, zero
80000c54: 93 03 00 00  	mv	t2, zero
80000c58: 13 0e 00 00  	mv	t3, zero
80000c5c: 93 0e 00 00  	mv	t4, zero
80000c60: 13 0f 00 00  	mv	t5, zero
80000c64: 93 0f 00 00  	mv	t6, zero
80000c68: 13 09 00 00  	mv	s2, zero
80000c6c: 63 04 05 2a  	beqz	a0, 0x80000f14 <.LBB0_75+0x2dc>
80000c70: 13 0a 00 00  	mv	s4, zero
80000c74: 13 0b 00 00  	mv	s6, zero
80000c78: 13 07 00 00  	mv	a4, zero
80000c7c: 93 07 00 00  	mv	a5, zero
80000c80: 93 04 00 00  	mv	s1, zero
80000c84: 13 04 00 00  	mv	s0, zero
80000c88: 13 05 00 00  	mv	a0, zero
80000c8c: 93 05 80 00  	addi	a1, zero, 8
80000c90: 93 09 10 01  	addi	s3, zero, 17
;   for (i = 0; i < nk; i++)
80000c94: 13 06 00 04  	addi	a2, zero, 64
80000c98: ab a0 c9 00  	scfgw	s3, a2
80000c9c: 13 06 00 0c  	addi	a2, zero, 192
80000ca0: ab a0 c5 00  	scfgw	a1, a2
80000ca4: 93 09 50 01  	addi	s3, zero, 21
80000ca8: 13 06 00 06  	addi	a2, zero, 96
80000cac: ab a0 c9 00  	scfgw	s3, a2
80000cb0: 13 06 00 0e  	addi	a2, zero, 224
80000cb4: ab a0 c5 00  	scfgw	a1, a2
80000cb8: 93 05 00 02  	addi	a1, zero, 32
80000cbc: ab 20 b0 00  	scfgw	zero, a1
80000cc0: 2b 20 0d 3a  	scfgwi	s10, 928
80000cc4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000cc8: b7 95 e3 38  	lui	a1, 233017
80000ccc: 93 85 95 e3  	addi	a1, a1, -455
80000cd0: 93 09 e0 fe  	addi	s3, zero, -18
80000cd4: 87 b1 0a 00  	fld	ft3, 0(s5)
80000cd8: 13 06 20 01  	addi	a2, zero, 18
80000cdc: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000ce0: 93 0a 60 17  	addi	s5, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000ce4: b3 36 b5 02  	mulhu	a3, a0, a1
80000ce8: 93 d6 26 00  	srli	a3, a3, 2
80000cec: b3 86 c6 02  	mul	a3, a3, a2
80000cf0: b3 06 d5 40  	sub	a3, a0, a3
80000cf4: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000cf8: b3 36 b8 02  	mulhu	a3, a6, a1
80000cfc: 93 d6 26 00  	srli	a3, a3, 2
80000d00: b3 86 c6 02  	mul	a3, a3, a2
80000d04: b3 06 d8 40  	sub	a3, a6, a3
80000d08: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000d0c: b3 b6 b8 02  	mulhu	a3, a7, a1
80000d10: 93 d6 26 00  	srli	a3, a3, 2
80000d14: b3 86 c6 02  	mul	a3, a3, a2
80000d18: b3 86 d8 40  	sub	a3, a7, a3
80000d1c: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000d20: b3 b6 b2 02  	mulhu	a3, t0, a1
80000d24: 93 d6 26 00  	srli	a3, a3, 2
80000d28: b3 86 c6 02  	mul	a3, a3, a2
80000d2c: b3 86 d2 40  	sub	a3, t0, a3
80000d30: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000d34: b3 36 b3 02  	mulhu	a3, t1, a1
80000d38: 93 d6 26 00  	srli	a3, a3, 2
80000d3c: b3 86 c6 02  	mul	a3, a3, a2
80000d40: b3 06 d3 40  	sub	a3, t1, a3
80000d44: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000d48: b3 b6 b3 02  	mulhu	a3, t2, a1
80000d4c: 93 d6 26 00  	srli	a3, a3, 2
80000d50: b3 86 c6 02  	mul	a3, a3, a2
80000d54: b3 86 d3 40  	sub	a3, t2, a3
80000d58: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d5c: b3 36 be 02  	mulhu	a3, t3, a1
80000d60: 93 d6 26 00  	srli	a3, a3, 2
80000d64: b3 86 c6 02  	mul	a3, a3, a2
80000d68: b3 06 de 40  	sub	a3, t3, a3
80000d6c: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000d70: b3 b6 be 02  	mulhu	a3, t4, a1
80000d74: 93 d6 26 00  	srli	a3, a3, 2
80000d78: b3 86 c6 02  	mul	a3, a3, a2
80000d7c: b3 86 de 40  	sub	a3, t4, a3
80000d80: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000d84: b3 36 bf 02  	mulhu	a3, t5, a1
80000d88: 93 d6 26 00  	srli	a3, a3, 2
80000d8c: b3 86 c6 02  	mul	a3, a3, a2
80000d90: b3 06 df 40  	sub	a3, t5, a3
80000d94: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000d98: b3 b6 bf 02  	mulhu	a3, t6, a1
80000d9c: 93 d6 26 00  	srli	a3, a3, 2
80000da0: b3 86 c6 02  	mul	a3, a3, a2
80000da4: b3 86 df 40  	sub	a3, t6, a3
80000da8: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000dac: b3 36 b9 02  	mulhu	a3, s2, a1
80000db0: 93 d6 26 00  	srli	a3, a3, 2
80000db4: b3 86 c6 02  	mul	a3, a3, a2
80000db8: b3 06 d9 40  	sub	a3, s2, a3
80000dbc: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000dc0: b3 36 ba 02  	mulhu	a3, s4, a1
80000dc4: 93 d6 26 00  	srli	a3, a3, 2
80000dc8: b3 86 c6 02  	mul	a3, a3, a2
80000dcc: b3 06 da 40  	sub	a3, s4, a3
80000dd0: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000dd4: b3 36 bb 02  	mulhu	a3, s6, a1
80000dd8: 93 d6 26 00  	srli	a3, a3, 2
80000ddc: b3 86 c6 02  	mul	a3, a3, a2
80000de0: b3 06 db 40  	sub	a3, s6, a3
80000de4: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000de8: b3 36 b7 02  	mulhu	a3, a4, a1
80000dec: 93 d6 26 00  	srli	a3, a3, 2
80000df0: b3 86 c6 02  	mul	a3, a3, a2
80000df4: b3 06 d7 40  	sub	a3, a4, a3
80000df8: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000dfc: b3 b6 b7 02  	mulhu	a3, a5, a1
80000e00: 93 d6 26 00  	srli	a3, a3, 2
80000e04: b3 86 c6 02  	mul	a3, a3, a2
80000e08: b3 86 d7 40  	sub	a3, a5, a3
80000e0c: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000e10: b3 b6 b4 02  	mulhu	a3, s1, a1
80000e14: 93 d6 26 00  	srli	a3, a3, 2
80000e18: b3 86 c6 02  	mul	a3, a3, a2
80000e1c: b3 86 d4 40  	sub	a3, s1, a3
80000e20: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000e24: b3 36 b4 02  	mulhu	a3, s0, a1
80000e28: 93 d6 26 00  	srli	a3, a3, 2
80000e2c: b3 86 36 03  	mul	a3, a3, s3
80000e30: b3 06 d4 00  	add	a3, s0, a3
80000e34: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000e38: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e3c: 53 80 52 22  	fmv.d	ft0, ft5
80000e40: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e44: 53 80 52 22  	fmv.d	ft0, ft5
80000e48: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e4c: 53 80 52 22  	fmv.d	ft0, ft5
80000e50: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e54: 53 80 52 22  	fmv.d	ft0, ft5
80000e58: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e5c: 53 80 52 22  	fmv.d	ft0, ft5
80000e60: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e64: 53 80 52 22  	fmv.d	ft0, ft5
80000e68: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e6c: 53 80 52 22  	fmv.d	ft0, ft5
80000e70: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e74: 53 80 52 22  	fmv.d	ft0, ft5
80000e78: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e7c: 53 80 52 22  	fmv.d	ft0, ft5
80000e80: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e84: 53 80 52 22  	fmv.d	ft0, ft5
80000e88: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e8c: 53 80 52 22  	fmv.d	ft0, ft5
80000e90: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e94: 53 80 52 22  	fmv.d	ft0, ft5
80000e98: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000e9c: 53 80 52 22  	fmv.d	ft0, ft5
80000ea0: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000ea4: 53 80 52 22  	fmv.d	ft0, ft5
80000ea8: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000eac: 53 80 52 22  	fmv.d	ft0, ft5
80000eb0: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000eb4: 53 80 52 22  	fmv.d	ft0, ft5
80000eb8: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000ebc: 53 80 52 22  	fmv.d	ft0, ft5
80000ec0: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ec4: 13 05 15 00  	addi	a0, a0, 1
80000ec8: 13 04 14 01  	addi	s0, s0, 17
80000ecc: 93 84 04 01  	addi	s1, s1, 16
80000ed0: 93 87 f7 00  	addi	a5, a5, 15
80000ed4: 13 07 e7 00  	addi	a4, a4, 14
80000ed8: 13 0b db 00  	addi	s6, s6, 13
80000edc: 13 0a ca 00  	addi	s4, s4, 12
80000ee0: 13 09 b9 00  	addi	s2, s2, 11
80000ee4: 93 8f af 00  	addi	t6, t6, 10
80000ee8: 13 0f 9f 00  	addi	t5, t5, 9
80000eec: 93 8e 8e 00  	addi	t4, t4, 8
80000ef0: 13 0e 7e 00  	addi	t3, t3, 7
80000ef4: 93 83 63 00  	addi	t2, t2, 6
80000ef8: 13 03 53 00  	addi	t1, t1, 5
80000efc: 93 82 42 00  	addi	t0, t0, 4
80000f00: 93 88 38 00  	addi	a7, a7, 3
80000f04: 13 08 28 00  	addi	a6, a6, 2
80000f08: e3 1e 54 dd  	bne	s0, s5, 0x80000ce4 <.LBB0_75+0xac>
80000f0c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f10: 6f 00 c0 26  	j	0x8000117c <.LBB0_75+0x544>
80000f14: 93 09 00 00  	mv	s3, zero
80000f18: 13 0a 00 00  	mv	s4, zero
80000f1c: 93 0b 00 00  	mv	s7, zero
80000f20: 93 07 00 00  	mv	a5, zero
80000f24: 93 04 00 00  	mv	s1, zero
80000f28: 13 04 00 00  	mv	s0, zero
80000f2c: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f30: 93 05 8d 04  	addi	a1, s10, 72
80000f34: 37 96 e3 38  	lui	a2, 233017
80000f38: 13 06 96 e3  	addi	a2, a2, -455
80000f3c: 87 b1 0a 00  	fld	ft3, 0(s5)
80000f40: 93 06 20 01  	addi	a3, zero, 18
80000f44: 93 0a e0 fe  	addi	s5, zero, -18
80000f48: 13 0b 60 17  	addi	s6, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000f4c: 33 37 c5 02  	mulhu	a4, a0, a2
80000f50: 13 57 27 00  	srli	a4, a4, 2
80000f54: 33 07 d7 02  	mul	a4, a4, a3
80000f58: 33 07 e5 40  	sub	a4, a0, a4
80000f5c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000f60: 33 b7 c4 02  	mulhu	a4, s1, a2
80000f64: 13 57 27 00  	srli	a4, a4, 2
80000f68: 33 07 d7 02  	mul	a4, a4, a3
80000f6c: 33 87 e4 40  	sub	a4, s1, a4
80000f70: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000f74: 33 b7 c7 02  	mulhu	a4, a5, a2
80000f78: 13 57 27 00  	srli	a4, a4, 2
80000f7c: 33 07 d7 02  	mul	a4, a4, a3
80000f80: 33 87 e7 40  	sub	a4, a5, a4
80000f84: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000f88: 33 37 ca 02  	mulhu	a4, s4, a2
80000f8c: 13 57 27 00  	srli	a4, a4, 2
80000f90: 33 07 d7 02  	mul	a4, a4, a3
80000f94: 33 07 ea 40  	sub	a4, s4, a4
80000f98: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000f9c: 33 37 c9 02  	mulhu	a4, s2, a2
80000fa0: 13 57 27 00  	srli	a4, a4, 2
80000fa4: 33 07 d7 02  	mul	a4, a4, a3
80000fa8: 33 07 e9 40  	sub	a4, s2, a4
80000fac: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000fb0: 33 37 cf 02  	mulhu	a4, t5, a2
80000fb4: 13 57 27 00  	srli	a4, a4, 2
80000fb8: 33 07 d7 02  	mul	a4, a4, a3
80000fbc: 33 07 ef 40  	sub	a4, t5, a4
80000fc0: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000fc4: 33 37 ce 02  	mulhu	a4, t3, a2
80000fc8: 13 57 27 00  	srli	a4, a4, 2
80000fcc: 33 07 d7 02  	mul	a4, a4, a3
80000fd0: 33 07 ee 40  	sub	a4, t3, a4
80000fd4: 53 06 07 d2  	fcvt.d.w	fa2, a4
80000fd8: 33 37 c3 02  	mulhu	a4, t1, a2
80000fdc: 13 57 27 00  	srli	a4, a4, 2
80000fe0: 33 07 d7 02  	mul	a4, a4, a3
80000fe4: 33 07 e3 40  	sub	a4, t1, a4
80000fe8: d3 06 07 d2  	fcvt.d.w	fa3, a4
80000fec: 33 37 c8 02  	mulhu	a4, a6, a2
80000ff0: 13 57 27 00  	srli	a4, a4, 2
80000ff4: 33 07 d7 02  	mul	a4, a4, a3
80000ff8: 33 07 e8 40  	sub	a4, a6, a4
80000ffc: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001000: 33 b7 c8 02  	mulhu	a4, a7, a2
80001004: 13 57 27 00  	srli	a4, a4, 2
80001008: 33 07 d7 02  	mul	a4, a4, a3
8000100c: 33 87 e8 40  	sub	a4, a7, a4
80001010: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001014: 33 b7 c2 02  	mulhu	a4, t0, a2
80001018: 13 57 27 00  	srli	a4, a4, 2
8000101c: 33 07 d7 02  	mul	a4, a4, a3
80001020: 33 87 e2 40  	sub	a4, t0, a4
80001024: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001028: 33 b7 c3 02  	mulhu	a4, t2, a2
8000102c: 13 57 27 00  	srli	a4, a4, 2
80001030: 33 07 d7 02  	mul	a4, a4, a3
80001034: 33 87 e3 40  	sub	a4, t2, a4
80001038: d3 08 07 d2  	fcvt.d.w	fa7, a4
8000103c: 33 b7 ce 02  	mulhu	a4, t4, a2
80001040: 13 57 27 00  	srli	a4, a4, 2
80001044: 33 07 d7 02  	mul	a4, a4, a3
80001048: 33 87 ee 40  	sub	a4, t4, a4
8000104c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001050: 33 b7 cf 02  	mulhu	a4, t6, a2
80001054: 13 57 27 00  	srli	a4, a4, 2
80001058: 33 07 d7 02  	mul	a4, a4, a3
8000105c: 33 87 ef 40  	sub	a4, t6, a4
80001060: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001064: 33 b7 c9 02  	mulhu	a4, s3, a2
80001068: 13 57 27 00  	srli	a4, a4, 2
8000106c: 33 07 d7 02  	mul	a4, a4, a3
80001070: 33 87 e9 40  	sub	a4, s3, a4
80001074: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001078: 33 b7 cb 02  	mulhu	a4, s7, a2
8000107c: 13 57 27 00  	srli	a4, a4, 2
80001080: 33 07 d7 02  	mul	a4, a4, a3
80001084: 33 87 eb 40  	sub	a4, s7, a4
80001088: d3 0f 07 d2  	fcvt.d.w	ft11, a4
8000108c: 33 37 c4 02  	mulhu	a4, s0, a2
80001090: 13 57 27 00  	srli	a4, a4, 2
80001094: 33 07 57 03  	mul	a4, a4, s5
80001098: 33 07 e4 00  	add	a4, s0, a4
8000109c: 53 04 07 d2  	fcvt.d.w	fs0, a4
800010a0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800010a4: 27 bc 45 fa  	fsd	ft4, -72(a1)
800010a8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800010ac: 27 b0 45 fc  	fsd	ft4, -64(a1)
800010b0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800010b4: 27 b4 45 fc  	fsd	ft4, -56(a1)
800010b8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800010bc: 27 b8 45 fc  	fsd	ft4, -48(a1)
800010c0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800010c4: 27 bc 45 fc  	fsd	ft4, -40(a1)
800010c8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800010cc: 27 b0 45 fe  	fsd	ft4, -32(a1)
800010d0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800010d4: 27 b4 45 fe  	fsd	ft4, -24(a1)
800010d8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800010dc: 27 b8 45 fe  	fsd	ft4, -16(a1)
800010e0: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800010e4: 27 bc 45 fe  	fsd	ft4, -8(a1)
800010e8: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800010ec: 27 b0 45 00  	fsd	ft4, 0(a1)
800010f0: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800010f4: 27 b4 45 00  	fsd	ft4, 8(a1)
800010f8: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800010fc: 27 b8 45 00  	fsd	ft4, 16(a1)
80001100: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001104: 27 bc 45 00  	fsd	ft4, 24(a1)
80001108: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000110c: 27 b0 45 02  	fsd	ft4, 32(a1)
80001110: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001114: 27 b4 45 02  	fsd	ft4, 40(a1)
80001118: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000111c: 27 b8 45 02  	fsd	ft4, 48(a1)
80001120: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001124: 27 bc 45 02  	fsd	ft4, 56(a1)
80001128: 23 a2 05 04  	sw	zero, 68(a1)
8000112c: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80001130: 13 05 15 00  	addi	a0, a0, 1
80001134: 13 04 14 01  	addi	s0, s0, 17
80001138: 93 84 24 00  	addi	s1, s1, 2
8000113c: 93 87 37 00  	addi	a5, a5, 3
80001140: 93 8b 0b 01  	addi	s7, s7, 16
80001144: 13 0a 4a 00  	addi	s4, s4, 4
80001148: 93 89 f9 00  	addi	s3, s3, 15
8000114c: 13 09 59 00  	addi	s2, s2, 5
80001150: 93 8f ef 00  	addi	t6, t6, 14
80001154: 13 0f 6f 00  	addi	t5, t5, 6
80001158: 93 8e de 00  	addi	t4, t4, 13
8000115c: 13 0e 7e 00  	addi	t3, t3, 7
80001160: 93 83 c3 00  	addi	t2, t2, 12
80001164: 13 03 83 00  	addi	t1, t1, 8
80001168: 93 82 b2 00  	addi	t0, t0, 11
8000116c: 93 85 05 09  	addi	a1, a1, 144
80001170: 93 88 a8 00  	addi	a7, a7, 10
80001174: 13 08 98 00  	addi	a6, a6, 9
80001178: e3 1a 64 dd  	bne	s0, s6, 0x80000f4c <.LBB0_75+0x314>
8000117c: 23 2e a1 01  	sw	s10, 28(sp)
;   for (i = 0; i < nj; i++)
80001180: 13 d5 4c 01  	srli	a0, s9, 20
80001184: b3 35 a0 00  	snez	a1, a0
80001188: 37 f5 11 00  	lui	a0, 287
8000118c: 13 05 95 28  	addi	a0, a0, 649
80001190: 33 b5 ac 00  	sltu	a0, s9, a0
80001194: 23 26 b1 00  	sw	a1, 12(sp)
80001198: b3 f5 a5 00  	and	a1, a1, a0

8000119c <.LBB0_76>:
8000119c: 97 48 00 00  	auipc	a7, 4
800011a0: 93 88 c8 18  	addi	a7, a7, 396
800011a4: 23 28 b1 00  	sw	a1, 16(sp)
800011a8: 23 22 91 03  	sw	s9, 36(sp)
800011ac: 63 86 05 40  	beqz	a1, 0x800015b8 <.LBB0_76+0x41c>
800011b0: 93 07 00 00  	mv	a5, zero
800011b4: 13 04 00 00  	mv	s0, zero
800011b8: 13 06 00 00  	mv	a2, zero
800011bc: 93 04 00 00  	mv	s1, zero
800011c0: 13 07 00 00  	mv	a4, zero
800011c4: 93 05 80 00  	addi	a1, zero, 8
800011c8: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < nj; i++)
800011cc: 93 06 00 04  	addi	a3, zero, 64
800011d0: 13 05 00 0c  	addi	a0, zero, 192
800011d4: ab 20 d8 00  	scfgw	a6, a3
800011d8: ab a0 a5 00  	scfgw	a1, a0
800011dc: 13 08 10 01  	addi	a6, zero, 17
800011e0: 93 06 00 06  	addi	a3, zero, 96
800011e4: 13 05 00 0e  	addi	a0, zero, 224
800011e8: ab 20 d8 00  	scfgw	a6, a3
800011ec: ab a0 a5 00  	scfgw	a1, a0
800011f0: 93 05 00 02  	addi	a1, zero, 32
800011f4: ab 20 b0 00  	scfgw	zero, a1
800011f8: 2b a0 0c 3a  	scfgwi	s9, 928
800011fc: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80001200: 13 05 10 00  	addi	a0, zero, 1
80001204: b7 b5 aa aa  	lui	a1, 699051
80001208: 93 85 b5 aa  	addi	a1, a1, -1365
8000120c: 93 00 80 01  	addi	ra, zero, 24
80001210: 87 b1 08 00  	fld	ft3, 0(a7)
80001214: 93 0a 10 00  	addi	s5, zero, 1
80001218: 13 0b 10 00  	addi	s6, zero, 1
8000121c: 93 06 10 00  	addi	a3, zero, 1
80001220: 23 2a d1 08  	sw	a3, 148(sp)
80001224: 93 0b 10 00  	addi	s7, zero, 1
80001228: 93 06 10 00  	addi	a3, zero, 1
8000122c: 23 28 d1 08  	sw	a3, 144(sp)
80001230: 13 0c 10 00  	addi	s8, zero, 1
80001234: 93 0c 10 00  	addi	s9, zero, 1
80001238: 13 0d 10 00  	addi	s10, zero, 1
8000123c: 93 06 10 00  	addi	a3, zero, 1
80001240: 23 26 d1 08  	sw	a3, 140(sp)
80001244: 93 0d 10 00  	addi	s11, zero, 1
80001248: 13 08 10 00  	addi	a6, zero, 1
8000124c: 93 08 10 00  	addi	a7, zero, 1
80001250: 93 02 10 00  	addi	t0, zero, 1
80001254: 13 03 10 00  	addi	t1, zero, 1
80001258: 13 09 10 00  	addi	s2, zero, 1
8000125c: 93 03 10 00  	addi	t2, zero, 1
80001260: 13 0e 10 00  	addi	t3, zero, 1
80001264: 93 0f 10 00  	addi	t6, zero, 1
80001268: 93 0e 10 00  	addi	t4, zero, 1
8000126c: 13 0f 10 00  	addi	t5, zero, 1
80001270: 93 09 10 00  	addi	s3, zero, 1
80001274: 13 0a 10 00  	addi	s4, zero, 1
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80001278: 23 20 71 09  	sw	s7, 128(sp)
8000127c: 23 22 61 09  	sw	s6, 132(sp)
80001280: 23 24 f1 08  	sw	a5, 136(sp)
80001284: 93 86 0a 00  	mv	a3, s5
80001288: b3 ba b7 02  	mulhu	s5, a5, a1
8000128c: 93 d7 4a 00  	srli	a5, s5, 4
80001290: 93 8a 06 00  	mv	s5, a3
80001294: b3 87 17 02  	mul	a5, a5, ra
80001298: b3 07 f5 40  	sub	a5, a0, a5
8000129c: 53 82 07 d2  	fcvt.d.w	ft4, a5
800012a0: b3 37 b4 02  	mulhu	a5, s0, a1
800012a4: 93 d7 47 00  	srli	a5, a5, 4
800012a8: b3 87 17 02  	mul	a5, a5, ra
800012ac: b3 87 f6 40  	sub	a5, a3, a5
800012b0: d3 82 07 d2  	fcvt.d.w	ft5, a5
800012b4: b3 37 bb 02  	mulhu	a5, s6, a1
800012b8: 93 d7 47 00  	srli	a5, a5, 4
800012bc: b3 87 17 02  	mul	a5, a5, ra
800012c0: b3 07 fb 40  	sub	a5, s6, a5
800012c4: 53 83 07 d2  	fcvt.d.w	ft6, a5
800012c8: b3 37 b6 02  	mulhu	a5, a2, a1
800012cc: 93 d7 47 00  	srli	a5, a5, 4
800012d0: b3 87 17 02  	mul	a5, a5, ra
800012d4: 83 26 41 09  	lw	a3, 148(sp)
800012d8: b3 87 f6 40  	sub	a5, a3, a5
800012dc: d3 83 07 d2  	fcvt.d.w	ft7, a5
800012e0: b3 b7 bb 02  	mulhu	a5, s7, a1
800012e4: 93 d7 47 00  	srli	a5, a5, 4
800012e8: b3 87 17 02  	mul	a5, a5, ra
800012ec: b3 87 fb 40  	sub	a5, s7, a5
800012f0: 53 85 07 d2  	fcvt.d.w	fa0, a5
800012f4: b3 b7 b4 02  	mulhu	a5, s1, a1
800012f8: 93 d7 47 00  	srli	a5, a5, 4
800012fc: b3 87 17 02  	mul	a5, a5, ra
80001300: 03 2b 01 09  	lw	s6, 144(sp)
80001304: b3 07 fb 40  	sub	a5, s6, a5
80001308: d3 85 07 d2  	fcvt.d.w	fa1, a5
8000130c: b3 37 bc 02  	mulhu	a5, s8, a1
80001310: 93 d7 47 00  	srli	a5, a5, 4
80001314: b3 87 17 02  	mul	a5, a5, ra
80001318: b3 07 fc 40  	sub	a5, s8, a5
8000131c: 53 86 07 d2  	fcvt.d.w	fa2, a5
80001320: b3 b7 bc 02  	mulhu	a5, s9, a1
80001324: 93 d7 47 00  	srli	a5, a5, 4
80001328: b3 87 17 02  	mul	a5, a5, ra
8000132c: b3 87 fc 40  	sub	a5, s9, a5
80001330: d3 86 07 d2  	fcvt.d.w	fa3, a5
80001334: b3 37 bd 02  	mulhu	a5, s10, a1
80001338: 93 d7 47 00  	srli	a5, a5, 4
8000133c: b3 87 17 02  	mul	a5, a5, ra
80001340: b3 07 fd 40  	sub	a5, s10, a5
80001344: 53 87 07 d2  	fcvt.d.w	fa4, a5
80001348: b3 37 b7 02  	mulhu	a5, a4, a1
8000134c: 93 d7 47 00  	srli	a5, a5, 4
80001350: b3 87 17 02  	mul	a5, a5, ra
80001354: 83 2b c1 08  	lw	s7, 140(sp)
80001358: b3 87 fb 40  	sub	a5, s7, a5
8000135c: d3 87 07 d2  	fcvt.d.w	fa5, a5
80001360: b3 b7 bd 02  	mulhu	a5, s11, a1
80001364: 93 d7 47 00  	srli	a5, a5, 4
80001368: b3 87 17 02  	mul	a5, a5, ra
8000136c: b3 87 fd 40  	sub	a5, s11, a5
80001370: 53 88 07 d2  	fcvt.d.w	fa6, a5
80001374: b3 37 b8 02  	mulhu	a5, a6, a1
80001378: 93 d7 47 00  	srli	a5, a5, 4
8000137c: b3 87 17 02  	mul	a5, a5, ra
80001380: b3 07 f8 40  	sub	a5, a6, a5
80001384: d3 88 07 d2  	fcvt.d.w	fa7, a5
80001388: b3 b7 b8 02  	mulhu	a5, a7, a1
8000138c: 93 d7 47 00  	srli	a5, a5, 4
80001390: b3 87 17 02  	mul	a5, a5, ra
80001394: b3 87 f8 40  	sub	a5, a7, a5
80001398: 53 8e 07 d2  	fcvt.d.w	ft8, a5
8000139c: b3 b7 b2 02  	mulhu	a5, t0, a1
800013a0: 93 d7 47 00  	srli	a5, a5, 4
800013a4: b3 87 17 02  	mul	a5, a5, ra
800013a8: b3 87 f2 40  	sub	a5, t0, a5
800013ac: d3 8e 07 d2  	fcvt.d.w	ft9, a5
800013b0: b3 37 b3 02  	mulhu	a5, t1, a1
800013b4: 93 d7 47 00  	srli	a5, a5, 4
800013b8: b3 87 17 02  	mul	a5, a5, ra
800013bc: b3 07 f3 40  	sub	a5, t1, a5
800013c0: 53 8f 07 d2  	fcvt.d.w	ft10, a5
800013c4: b3 37 b9 02  	mulhu	a5, s2, a1
800013c8: 93 d7 47 00  	srli	a5, a5, 4
800013cc: b3 87 17 02  	mul	a5, a5, ra
800013d0: b3 07 f9 40  	sub	a5, s2, a5
800013d4: d3 8f 07 d2  	fcvt.d.w	ft11, a5
800013d8: b3 b7 b3 02  	mulhu	a5, t2, a1
800013dc: 93 d7 47 00  	srli	a5, a5, 4
800013e0: b3 87 17 02  	mul	a5, a5, ra
800013e4: b3 87 f3 40  	sub	a5, t2, a5
800013e8: 53 84 07 d2  	fcvt.d.w	fs0, a5
800013ec: b3 37 be 02  	mulhu	a5, t3, a1
800013f0: 93 d7 47 00  	srli	a5, a5, 4
800013f4: b3 87 17 02  	mul	a5, a5, ra
800013f8: b3 07 fe 40  	sub	a5, t3, a5
800013fc: d3 84 07 d2  	fcvt.d.w	fs1, a5
80001400: b3 b7 bf 02  	mulhu	a5, t6, a1
80001404: 93 d7 47 00  	srli	a5, a5, 4
80001408: b3 87 17 02  	mul	a5, a5, ra
8000140c: b3 87 ff 40  	sub	a5, t6, a5
80001410: 53 89 07 d2  	fcvt.d.w	fs2, a5
80001414: b3 b7 be 02  	mulhu	a5, t4, a1
80001418: 93 d7 47 00  	srli	a5, a5, 4
8000141c: b3 87 17 02  	mul	a5, a5, ra
80001420: b3 87 fe 40  	sub	a5, t4, a5
80001424: d3 89 07 d2  	fcvt.d.w	fs3, a5
80001428: b3 37 bf 02  	mulhu	a5, t5, a1
8000142c: 93 d7 47 00  	srli	a5, a5, 4
80001430: b3 87 17 02  	mul	a5, a5, ra
80001434: b3 07 ff 40  	sub	a5, t5, a5
80001438: 53 8a 07 d2  	fcvt.d.w	fs4, a5
8000143c: b3 b7 b9 02  	mulhu	a5, s3, a1
80001440: 93 d7 47 00  	srli	a5, a5, 4
80001444: b3 87 17 02  	mul	a5, a5, ra
80001448: b3 87 f9 40  	sub	a5, s3, a5
8000144c: d3 8a 07 d2  	fcvt.d.w	fs5, a5
80001450: b3 37 ba 02  	mulhu	a5, s4, a1
80001454: 93 d7 47 00  	srli	a5, a5, 4
80001458: b3 87 17 02  	mul	a5, a5, ra
8000145c: b3 07 fa 40  	sub	a5, s4, a5
80001460: 53 8b 07 d2  	fcvt.d.w	fs6, a5
80001464: 83 27 81 08  	lw	a5, 136(sp)
80001468: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000146c: 53 00 42 22  	fmv.d	ft0, ft4
80001470: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001474: 53 00 42 22  	fmv.d	ft0, ft4
80001478: 53 72 33 12  	fmul.d	ft4, ft6, ft3
8000147c: 53 00 42 22  	fmv.d	ft0, ft4
80001480: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001484: 53 00 42 22  	fmv.d	ft0, ft4
80001488: 53 72 35 12  	fmul.d	ft4, fa0, ft3
8000148c: 53 00 42 22  	fmv.d	ft0, ft4
80001490: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001494: 53 00 42 22  	fmv.d	ft0, ft4
80001498: 53 72 36 12  	fmul.d	ft4, fa2, ft3
8000149c: 53 00 42 22  	fmv.d	ft0, ft4
800014a0: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800014a4: 53 00 42 22  	fmv.d	ft0, ft4
800014a8: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800014ac: 53 00 42 22  	fmv.d	ft0, ft4
800014b0: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800014b4: 53 00 42 22  	fmv.d	ft0, ft4
800014b8: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800014bc: 53 00 42 22  	fmv.d	ft0, ft4
800014c0: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800014c4: 53 00 42 22  	fmv.d	ft0, ft4
800014c8: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800014cc: 53 00 42 22  	fmv.d	ft0, ft4
800014d0: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800014d4: 53 00 42 22  	fmv.d	ft0, ft4
800014d8: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
800014dc: 53 00 42 22  	fmv.d	ft0, ft4
800014e0: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
800014e4: 53 00 42 22  	fmv.d	ft0, ft4
800014e8: 53 72 34 12  	fmul.d	ft4, fs0, ft3
800014ec: 53 00 42 22  	fmv.d	ft0, ft4
800014f0: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800014f4: 53 00 42 22  	fmv.d	ft0, ft4
800014f8: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800014fc: 53 00 42 22  	fmv.d	ft0, ft4
80001500: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001504: 53 00 42 22  	fmv.d	ft0, ft4
80001508: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
8000150c: 53 00 42 22  	fmv.d	ft0, ft4
80001510: 53 80 31 22  	fmv.d	ft0, ft3
80001514: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001518: 53 00 42 22  	fmv.d	ft0, ft4
8000151c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001520: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nj; i++)
80001524: 13 0a aa 01  	addi	s4, s4, 26
80001528: 93 89 99 01  	addi	s3, s3, 25
8000152c: 13 0f 7f 01  	addi	t5, t5, 23
80001530: 93 8e 6e 01  	addi	t4, t4, 22
80001534: 93 8f 5f 01  	addi	t6, t6, 21
80001538: 13 0e 4e 01  	addi	t3, t3, 20
8000153c: 93 83 33 01  	addi	t2, t2, 19
80001540: 13 09 29 01  	addi	s2, s2, 18
80001544: 13 03 13 01  	addi	t1, t1, 17
80001548: 93 82 02 01  	addi	t0, t0, 16
8000154c: 93 88 f8 00  	addi	a7, a7, 15
80001550: 13 08 e8 00  	addi	a6, a6, 14
80001554: 93 8d dd 00  	addi	s11, s11, 13
80001558: 93 8b cb 00  	addi	s7, s7, 12
8000155c: 23 26 71 09  	sw	s7, 140(sp)
80001560: 83 2b 01 08  	lw	s7, 128(sp)
80001564: 13 07 c7 00  	addi	a4, a4, 12
80001568: 13 0d bd 00  	addi	s10, s10, 11
8000156c: 93 8c ac 00  	addi	s9, s9, 10
80001570: 13 0c 9c 00  	addi	s8, s8, 9
80001574: 13 0b 8b 00  	addi	s6, s6, 8
80001578: 23 28 61 09  	sw	s6, 144(sp)
8000157c: 03 2b 41 08  	lw	s6, 132(sp)
80001580: 93 84 84 00  	addi	s1, s1, 8
80001584: 93 8b 7b 00  	addi	s7, s7, 7
80001588: 93 86 66 00  	addi	a3, a3, 6
8000158c: 23 2a d1 08  	sw	a3, 148(sp)
80001590: 13 06 66 00  	addi	a2, a2, 6
80001594: 13 0b 5b 00  	addi	s6, s6, 5
80001598: 93 8a 4a 00  	addi	s5, s5, 4
8000159c: 13 04 44 00  	addi	s0, s0, 4
800015a0: 13 05 35 00  	addi	a0, a0, 3
800015a4: 93 87 37 00  	addi	a5, a5, 3
800015a8: 93 06 50 1d  	addi	a3, zero, 469
800015ac: e3 16 da cc  	bne	s4, a3, 0x80001278 <.LBB0_76+0xdc>
800015b0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015b4: 6f 00 c0 4d  	j	0x80001a90 <.LBB0_76+0x8f4>
800015b8: 93 0d 00 00  	mv	s11, zero
800015bc: 93 07 00 00  	mv	a5, zero
800015c0: 13 04 00 00  	mv	s0, zero
800015c4: 93 04 00 00  	mv	s1, zero
800015c8: 13 0c 00 00  	mv	s8, zero
;   for (i = 0; i < nj; i++)
800015cc: 13 86 0c 06  	addi	a2, s9, 96
800015d0: 13 05 10 00  	addi	a0, zero, 1
800015d4: 23 22 a1 08  	sw	a0, 132(sp)
800015d8: b7 b5 aa aa  	lui	a1, 699051
800015dc: 93 86 b5 aa  	addi	a3, a1, -1365
800015e0: 87 b1 08 00  	fld	ft3, 0(a7)
800015e4: 37 55 a5 3f  	lui	a0, 260693
800015e8: 13 05 55 55  	addi	a0, a0, 1365
800015ec: 23 2a a1 02  	sw	a0, 52(sp)
800015f0: 37 55 55 55  	lui	a0, 349525
800015f4: 13 05 55 55  	addi	a0, a0, 1365
800015f8: 23 28 a1 02  	sw	a0, 48(sp)
800015fc: 13 05 10 00  	addi	a0, zero, 1
80001600: 23 20 a1 08  	sw	a0, 128(sp)
80001604: 13 05 10 00  	addi	a0, zero, 1
80001608: 23 2e a1 06  	sw	a0, 124(sp)
8000160c: 13 05 10 00  	addi	a0, zero, 1
80001610: 23 2c a1 06  	sw	a0, 120(sp)
80001614: 13 05 10 00  	addi	a0, zero, 1
80001618: 23 2a a1 06  	sw	a0, 116(sp)
8000161c: 13 05 10 00  	addi	a0, zero, 1
80001620: 23 24 a1 08  	sw	a0, 136(sp)
80001624: 13 05 10 00  	addi	a0, zero, 1
80001628: 23 28 a1 06  	sw	a0, 112(sp)
8000162c: 13 05 10 00  	addi	a0, zero, 1
80001630: 23 26 a1 06  	sw	a0, 108(sp)
80001634: 13 05 10 00  	addi	a0, zero, 1
80001638: 23 24 a1 06  	sw	a0, 104(sp)
8000163c: 13 05 10 00  	addi	a0, zero, 1
80001640: 23 22 a1 06  	sw	a0, 100(sp)
80001644: 13 05 10 00  	addi	a0, zero, 1
80001648: 23 20 a1 06  	sw	a0, 96(sp)
8000164c: 13 05 10 00  	addi	a0, zero, 1
80001650: 23 2e a1 04  	sw	a0, 92(sp)
80001654: 13 05 10 00  	addi	a0, zero, 1
80001658: 23 2c a1 04  	sw	a0, 88(sp)
8000165c: 13 05 10 00  	addi	a0, zero, 1
80001660: 23 2a a1 08  	sw	a0, 148(sp)
80001664: 13 05 10 00  	addi	a0, zero, 1
80001668: 23 2a a1 04  	sw	a0, 84(sp)
8000166c: 13 05 10 00  	addi	a0, zero, 1
80001670: 23 28 a1 04  	sw	a0, 80(sp)
80001674: 13 05 10 00  	addi	a0, zero, 1
80001678: 23 26 a1 04  	sw	a0, 76(sp)
8000167c: 93 0b 10 00  	addi	s7, zero, 1
80001680: 13 05 10 00  	addi	a0, zero, 1
80001684: 23 24 a1 04  	sw	a0, 72(sp)
80001688: 13 05 10 00  	addi	a0, zero, 1
8000168c: 23 22 a1 04  	sw	a0, 68(sp)
80001690: 13 05 10 00  	addi	a0, zero, 1
80001694: 23 26 a1 08  	sw	a0, 140(sp)
80001698: 13 05 10 00  	addi	a0, zero, 1
8000169c: 23 28 a1 08  	sw	a0, 144(sp)
800016a0: 13 05 10 00  	addi	a0, zero, 1
800016a4: 23 20 a1 04  	sw	a0, 64(sp)
800016a8: 13 07 80 01  	addi	a4, zero, 24
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
800016ac: 23 2c 71 03  	sw	s7, 56(sp)
800016b0: 23 2e b1 03  	sw	s11, 60(sp)
800016b4: b3 35 dc 02  	mulhu	a1, s8, a3
800016b8: 93 d5 45 00  	srli	a1, a1, 4
800016bc: b3 85 e5 02  	mul	a1, a1, a4
800016c0: 13 08 0c 00  	mv	a6, s8
800016c4: 03 25 01 09  	lw	a0, 144(sp)
800016c8: 33 0c b5 40  	sub	s8, a0, a1
800016cc: 53 02 0c d2  	fcvt.d.w	ft4, s8
800016d0: 13 0c 08 00  	mv	s8, a6
800016d4: 83 2d c1 03  	lw	s11, 60(sp)
800016d8: b3 b5 d4 02  	mulhu	a1, s1, a3
800016dc: 93 d5 45 00  	srli	a1, a1, 4
800016e0: b3 85 e5 02  	mul	a1, a1, a4
800016e4: 03 25 c1 08  	lw	a0, 140(sp)
800016e8: b3 05 b5 40  	sub	a1, a0, a1
800016ec: d3 82 05 d2  	fcvt.d.w	ft5, a1
800016f0: 03 2a 81 04  	lw	s4, 72(sp)
800016f4: b3 35 da 02  	mulhu	a1, s4, a3
800016f8: 93 d5 45 00  	srli	a1, a1, 4
800016fc: b3 85 e5 02  	mul	a1, a1, a4
80001700: b3 05 ba 40  	sub	a1, s4, a1
80001704: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001708: b3 35 d4 02  	mulhu	a1, s0, a3
8000170c: 93 d5 45 00  	srli	a1, a1, 4
80001710: b3 85 e5 02  	mul	a1, a1, a4
80001714: b3 85 bb 40  	sub	a1, s7, a1
80001718: d3 83 05 d2  	fcvt.d.w	ft7, a1
8000171c: 83 2a 01 05  	lw	s5, 80(sp)
80001720: b3 b5 da 02  	mulhu	a1, s5, a3
80001724: 93 d5 45 00  	srli	a1, a1, 4
80001728: b3 85 e5 02  	mul	a1, a1, a4
8000172c: b3 85 ba 40  	sub	a1, s5, a1
80001730: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001734: b3 b5 d7 02  	mulhu	a1, a5, a3
80001738: 93 d5 45 00  	srli	a1, a1, 4
8000173c: b3 85 e5 02  	mul	a1, a1, a4
80001740: 03 25 41 09  	lw	a0, 148(sp)
80001744: b3 05 b5 40  	sub	a1, a0, a1
80001748: d3 85 05 d2  	fcvt.d.w	fa1, a1
8000174c: 03 2d c1 05  	lw	s10, 92(sp)
80001750: b3 35 dd 02  	mulhu	a1, s10, a3
80001754: 93 d5 45 00  	srli	a1, a1, 4
80001758: b3 85 e5 02  	mul	a1, a1, a4
8000175c: b3 05 bd 40  	sub	a1, s10, a1
80001760: 53 86 05 d2  	fcvt.d.w	fa2, a1
80001764: 03 2f 41 06  	lw	t5, 100(sp)
80001768: b3 35 df 02  	mulhu	a1, t5, a3
8000176c: 93 d5 45 00  	srli	a1, a1, 4
80001770: b3 85 e5 02  	mul	a1, a1, a4
80001774: b3 05 bf 40  	sub	a1, t5, a1
80001778: d3 86 05 d2  	fcvt.d.w	fa3, a1
8000177c: 83 20 c1 06  	lw	ra, 108(sp)
80001780: b3 b5 d0 02  	mulhu	a1, ra, a3
80001784: 93 d5 45 00  	srli	a1, a1, 4
80001788: b3 85 e5 02  	mul	a1, a1, a4
8000178c: b3 85 b0 40  	sub	a1, ra, a1
80001790: 53 87 05 d2  	fcvt.d.w	fa4, a1
80001794: b3 b5 dd 02  	mulhu	a1, s11, a3
80001798: 93 d5 45 00  	srli	a1, a1, 4
8000179c: b3 85 e5 02  	mul	a1, a1, a4
800017a0: 03 2b 81 08  	lw	s6, 136(sp)
800017a4: b3 05 bb 40  	sub	a1, s6, a1
800017a8: d3 87 05 d2  	fcvt.d.w	fa5, a1
800017ac: 03 23 81 07  	lw	t1, 120(sp)
800017b0: b3 35 d3 02  	mulhu	a1, t1, a3
800017b4: 93 d5 45 00  	srli	a1, a1, 4
800017b8: b3 85 e5 02  	mul	a1, a1, a4
800017bc: b3 05 b3 40  	sub	a1, t1, a1
800017c0: 53 88 05 d2  	fcvt.d.w	fa6, a1
800017c4: 03 28 41 08  	lw	a6, 132(sp)
800017c8: b3 35 d8 02  	mulhu	a1, a6, a3
800017cc: 93 d5 45 00  	srli	a1, a1, 4
800017d0: b3 85 e5 02  	mul	a1, a1, a4
800017d4: b3 05 b8 40  	sub	a1, a6, a1
800017d8: d3 88 05 d2  	fcvt.d.w	fa7, a1
800017dc: 83 28 01 08  	lw	a7, 128(sp)
800017e0: b3 b5 d8 02  	mulhu	a1, a7, a3
800017e4: 93 d5 45 00  	srli	a1, a1, 4
800017e8: b3 85 e5 02  	mul	a1, a1, a4
800017ec: b3 85 b8 40  	sub	a1, a7, a1
800017f0: 53 8e 05 d2  	fcvt.d.w	ft8, a1
800017f4: 83 22 c1 07  	lw	t0, 124(sp)
800017f8: b3 b5 d2 02  	mulhu	a1, t0, a3
800017fc: 93 d5 45 00  	srli	a1, a1, 4
80001800: b3 85 e5 02  	mul	a1, a1, a4
80001804: b3 85 b2 40  	sub	a1, t0, a1
80001808: d3 8e 05 d2  	fcvt.d.w	ft9, a1
8000180c: 03 29 41 07  	lw	s2, 116(sp)
80001810: b3 35 d9 02  	mulhu	a1, s2, a3
80001814: 93 d5 45 00  	srli	a1, a1, 4
80001818: b3 85 e5 02  	mul	a1, a1, a4
8000181c: b3 05 b9 40  	sub	a1, s2, a1
80001820: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001824: 83 23 01 07  	lw	t2, 112(sp)
80001828: b3 b5 d3 02  	mulhu	a1, t2, a3
8000182c: 93 d5 45 00  	srli	a1, a1, 4
80001830: b3 85 e5 02  	mul	a1, a1, a4
80001834: b3 85 b3 40  	sub	a1, t2, a1
80001838: d3 8f 05 d2  	fcvt.d.w	ft11, a1
8000183c: 83 2e 81 06  	lw	t4, 104(sp)
80001840: b3 b5 de 02  	mulhu	a1, t4, a3
80001844: 93 d5 45 00  	srli	a1, a1, 4
80001848: b3 85 e5 02  	mul	a1, a1, a4
8000184c: b3 85 be 40  	sub	a1, t4, a1
80001850: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001854: 83 2c 01 06  	lw	s9, 96(sp)
80001858: b3 b5 dc 02  	mulhu	a1, s9, a3
8000185c: 93 d5 45 00  	srli	a1, a1, 4
80001860: b3 85 e5 02  	mul	a1, a1, a4
80001864: b3 85 bc 40  	sub	a1, s9, a1
80001868: d3 84 05 d2  	fcvt.d.w	fs1, a1
8000186c: 03 25 81 05  	lw	a0, 88(sp)
80001870: b3 35 d5 02  	mulhu	a1, a0, a3
80001874: 93 d5 45 00  	srli	a1, a1, 4
80001878: b3 85 e5 02  	mul	a1, a1, a4
8000187c: b3 05 b5 40  	sub	a1, a0, a1
80001880: 53 89 05 d2  	fcvt.d.w	fs2, a1
80001884: 03 2e 41 05  	lw	t3, 84(sp)
80001888: b3 35 de 02  	mulhu	a1, t3, a3
8000188c: 93 d5 45 00  	srli	a1, a1, 4
80001890: b3 85 e5 02  	mul	a1, a1, a4
80001894: b3 05 be 40  	sub	a1, t3, a1
80001898: d3 89 05 d2  	fcvt.d.w	fs3, a1
8000189c: 83 29 c1 04  	lw	s3, 76(sp)
800018a0: b3 b5 d9 02  	mulhu	a1, s3, a3
800018a4: 93 d5 45 00  	srli	a1, a1, 4
800018a8: b3 85 e5 02  	mul	a1, a1, a4
800018ac: b3 85 b9 40  	sub	a1, s3, a1
800018b0: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800018b4: 83 2b 41 04  	lw	s7, 68(sp)
800018b8: b3 b5 db 02  	mulhu	a1, s7, a3
800018bc: 93 d5 45 00  	srli	a1, a1, 4
800018c0: b3 85 e5 02  	mul	a1, a1, a4
800018c4: b3 85 bb 40  	sub	a1, s7, a1
800018c8: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800018cc: 83 2f 01 04  	lw	t6, 64(sp)
800018d0: b3 b5 df 02  	mulhu	a1, t6, a3
800018d4: 93 d5 45 00  	srli	a1, a1, 4
800018d8: b3 85 e5 02  	mul	a1, a1, a4
800018dc: b3 85 bf 40  	sub	a1, t6, a1
800018e0: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800018e4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800018e8: 27 30 46 fa  	fsd	ft4, -96(a2)
800018ec: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800018f0: 27 34 46 fa  	fsd	ft4, -88(a2)
800018f4: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800018f8: 27 38 46 fa  	fsd	ft4, -80(a2)
800018fc: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001900: 27 3c 46 fa  	fsd	ft4, -72(a2)
80001904: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001908: 27 30 46 fc  	fsd	ft4, -64(a2)
8000190c: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001910: 27 34 46 fc  	fsd	ft4, -56(a2)
80001914: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001918: 27 38 46 fc  	fsd	ft4, -48(a2)
8000191c: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001920: 27 3c 46 fc  	fsd	ft4, -40(a2)
80001924: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001928: 27 30 46 fe  	fsd	ft4, -32(a2)
8000192c: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001930: 27 34 46 fe  	fsd	ft4, -24(a2)
80001934: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001938: 27 38 46 fe  	fsd	ft4, -16(a2)
8000193c: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001940: 27 3c 46 fe  	fsd	ft4, -8(a2)
80001944: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001948: 27 30 46 00  	fsd	ft4, 0(a2)
8000194c: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001950: 27 34 46 00  	fsd	ft4, 8(a2)
80001954: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001958: 27 38 46 00  	fsd	ft4, 16(a2)
8000195c: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001960: 27 3c 46 00  	fsd	ft4, 24(a2)
80001964: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001968: 27 30 46 02  	fsd	ft4, 32(a2)
8000196c: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001970: 27 34 46 02  	fsd	ft4, 40(a2)
80001974: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001978: 27 38 46 02  	fsd	ft4, 48(a2)
8000197c: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001980: 27 3c 46 02  	fsd	ft4, 56(a2)
80001984: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001988: 27 30 46 04  	fsd	ft4, 64(a2)
8000198c: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001990: 27 38 46 04  	fsd	ft4, 80(a2)
80001994: 83 25 41 03  	lw	a1, 52(sp)
80001998: 23 26 b6 04  	sw	a1, 76(a2)
8000199c: 83 25 01 03  	lw	a1, 48(sp)
800019a0: 23 24 b6 04  	sw	a1, 72(a2)
800019a4: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800019a8: 27 3c 46 04  	fsd	ft4, 88(a2)
;   for (i = 0; i < nj; i++)
800019ac: 93 8f af 01  	addi	t6, t6, 26
800019b0: 83 25 01 09  	lw	a1, 144(sp)
800019b4: 93 85 35 00  	addi	a1, a1, 3
800019b8: 23 28 b1 08  	sw	a1, 144(sp)
800019bc: 13 0c 3c 00  	addi	s8, s8, 3
800019c0: 83 25 c1 08  	lw	a1, 140(sp)
800019c4: 93 85 45 00  	addi	a1, a1, 4
800019c8: 23 26 b1 08  	sw	a1, 140(sp)
800019cc: 93 84 44 00  	addi	s1, s1, 4
800019d0: 93 8b 9b 01  	addi	s7, s7, 25
800019d4: 23 22 71 05  	sw	s7, 68(sp)
800019d8: 83 2b 81 03  	lw	s7, 56(sp)
800019dc: 13 0a 5a 00  	addi	s4, s4, 5
800019e0: 23 24 41 05  	sw	s4, 72(sp)
800019e4: 93 8b 6b 00  	addi	s7, s7, 6
800019e8: 13 04 64 00  	addi	s0, s0, 6
800019ec: 93 89 79 01  	addi	s3, s3, 23
800019f0: 23 26 31 05  	sw	s3, 76(sp)
800019f4: 93 8a 7a 00  	addi	s5, s5, 7
800019f8: 23 28 51 05  	sw	s5, 80(sp)
800019fc: 13 0e 6e 01  	addi	t3, t3, 22
80001a00: 23 2a c1 05  	sw	t3, 84(sp)
80001a04: 83 25 41 09  	lw	a1, 148(sp)
80001a08: 93 85 85 00  	addi	a1, a1, 8
80001a0c: 23 2a b1 08  	sw	a1, 148(sp)
80001a10: 93 87 87 00  	addi	a5, a5, 8
80001a14: 13 05 55 01  	addi	a0, a0, 21
80001a18: 23 2c a1 04  	sw	a0, 88(sp)
80001a1c: 13 0d 9d 00  	addi	s10, s10, 9
80001a20: 23 2e a1 05  	sw	s10, 92(sp)
80001a24: 93 8c 4c 01  	addi	s9, s9, 20
80001a28: 23 20 91 07  	sw	s9, 96(sp)
80001a2c: 13 0f af 00  	addi	t5, t5, 10
80001a30: 23 22 e1 07  	sw	t5, 100(sp)
80001a34: 93 8e 3e 01  	addi	t4, t4, 19
80001a38: 23 24 d1 07  	sw	t4, 104(sp)
80001a3c: 93 80 b0 00  	addi	ra, ra, 11
80001a40: 23 26 11 06  	sw	ra, 108(sp)
80001a44: 93 83 23 01  	addi	t2, t2, 18
80001a48: 23 28 71 06  	sw	t2, 112(sp)
80001a4c: 13 0b cb 00  	addi	s6, s6, 12
80001a50: 23 24 61 09  	sw	s6, 136(sp)
80001a54: 93 8d cd 00  	addi	s11, s11, 12
80001a58: 13 09 19 01  	addi	s2, s2, 17
80001a5c: 23 2a 21 07  	sw	s2, 116(sp)
80001a60: 13 03 d3 00  	addi	t1, t1, 13
80001a64: 23 2c 61 06  	sw	t1, 120(sp)
80001a68: 93 82 02 01  	addi	t0, t0, 16
80001a6c: 23 2e 51 06  	sw	t0, 124(sp)
80001a70: 13 06 06 0c  	addi	a2, a2, 192
80001a74: 93 88 f8 00  	addi	a7, a7, 15
80001a78: 23 20 11 09  	sw	a7, 128(sp)
80001a7c: 13 08 e8 00  	addi	a6, a6, 14
80001a80: 23 22 01 09  	sw	a6, 132(sp)
80001a84: 93 05 50 1d  	addi	a1, zero, 469
80001a88: 23 20 f1 05  	sw	t6, 64(sp)
80001a8c: e3 90 bf c2  	bne	t6, a1, 0x800016ac <.LBB0_76+0x510>
80001a90: 83 20 c1 02  	lw	ra, 44(sp)
;   for (i = 0; i < ni; i++)
80001a94: 13 d5 40 01  	srli	a0, ra, 20
80001a98: 33 35 a0 00  	snez	a0, a0
80001a9c: b7 f5 11 00  	lui	a1, 287
80001aa0: 93 85 95 40  	addi	a1, a1, 1033
80001aa4: b3 b5 b0 00  	sltu	a1, ra, a1
80001aa8: 33 75 b5 00  	and	a0, a0, a1

80001aac <.LBB0_77>:
80001aac: 17 46 00 00  	auipc	a2, 4
80001ab0: 13 06 46 88  	addi	a2, a2, -1916
80001ab4: 23 2a a1 08  	sw	a0, 148(sp)
80001ab8: 63 06 05 3a  	beqz	a0, 0x80001e64 <.LBB0_77+0x3b8>
80001abc: 93 0f 00 00  	mv	t6, zero
80001ac0: 13 0a 00 00  	mv	s4, zero
80001ac4: 93 0a 00 00  	mv	s5, zero
80001ac8: 13 0b 00 00  	mv	s6, zero
80001acc: 13 08 00 00  	mv	a6, zero
80001ad0: 93 08 00 00  	mv	a7, zero
80001ad4: 93 02 00 00  	mv	t0, zero
80001ad8: 13 03 00 00  	mv	t1, zero
80001adc: 93 03 00 00  	mv	t2, zero
80001ae0: 13 0e 00 00  	mv	t3, zero
80001ae4: 93 0e 00 00  	mv	t4, zero
80001ae8: 13 0f 00 00  	mv	t5, zero
80001aec: 13 09 00 00  	mv	s2, zero
80001af0: 93 0b 00 00  	mv	s7, zero
80001af4: 13 0c 00 00  	mv	s8, zero
80001af8: 93 0c 00 00  	mv	s9, zero
80001afc: 93 0d 00 00  	mv	s11, zero
80001b00: 93 09 00 00  	mv	s3, zero
80001b04: 93 07 00 00  	mv	a5, zero
80001b08: 13 04 00 00  	mv	s0, zero
80001b0c: 13 07 06 00  	mv	a4, a2
80001b10: 13 06 00 00  	mv	a2, zero
80001b14: 93 05 00 00  	mv	a1, zero
80001b18: 93 06 00 00  	mv	a3, zero
80001b1c: 13 05 80 00  	addi	a0, zero, 8
80001b20: 13 0d 70 01  	addi	s10, zero, 23
;   for (i = 0; i < ni; i++)
80001b24: 93 04 00 04  	addi	s1, zero, 64
80001b28: ab 20 9d 00  	scfgw	s10, s1
80001b2c: 93 04 00 0c  	addi	s1, zero, 192
80001b30: ab 20 95 00  	scfgw	a0, s1
80001b34: 13 0d f0 00  	addi	s10, zero, 15
80001b38: 93 04 00 06  	addi	s1, zero, 96
80001b3c: ab 20 9d 00  	scfgw	s10, s1
80001b40: 93 04 00 0e  	addi	s1, zero, 224
80001b44: ab 20 95 00  	scfgw	a0, s1
80001b48: 13 05 00 02  	addi	a0, zero, 32
80001b4c: ab 20 a0 00  	scfgw	zero, a0
80001b50: 2b a0 00 3a  	scfgwi	ra, 928
80001b54: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001b58: 37 95 2e ba  	lui	a0, 762601
80001b5c: 93 04 35 ba  	addi	s1, a0, -1117
80001b60: 13 0d a0 fe  	addi	s10, zero, -22
80001b64: 87 31 07 00  	fld	ft3, 0(a4)
80001b68: 13 05 60 01  	addi	a0, zero, 22
80001b6c: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001b70: 93 00 00 19  	addi	ra, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001b74: 33 b7 9f 02  	mulhu	a4, t6, s1
80001b78: 13 57 47 00  	srli	a4, a4, 4
80001b7c: 33 07 a7 02  	mul	a4, a4, a0
80001b80: 33 87 ef 40  	sub	a4, t6, a4
80001b84: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001b88: 33 37 9a 02  	mulhu	a4, s4, s1
80001b8c: 13 57 47 00  	srli	a4, a4, 4
80001b90: 33 07 a7 02  	mul	a4, a4, a0
80001b94: 33 07 ea 40  	sub	a4, s4, a4
80001b98: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001b9c: 33 b7 9a 02  	mulhu	a4, s5, s1
80001ba0: 13 57 47 00  	srli	a4, a4, 4
80001ba4: 33 07 a7 02  	mul	a4, a4, a0
80001ba8: 33 87 ea 40  	sub	a4, s5, a4
80001bac: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001bb0: 33 37 9b 02  	mulhu	a4, s6, s1
80001bb4: 13 57 47 00  	srli	a4, a4, 4
80001bb8: 33 07 a7 02  	mul	a4, a4, a0
80001bbc: 33 07 eb 40  	sub	a4, s6, a4
80001bc0: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001bc4: 33 37 98 02  	mulhu	a4, a6, s1
80001bc8: 13 57 47 00  	srli	a4, a4, 4
80001bcc: 33 07 a7 02  	mul	a4, a4, a0
80001bd0: 33 07 e8 40  	sub	a4, a6, a4
80001bd4: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001bd8: 33 b7 98 02  	mulhu	a4, a7, s1
80001bdc: 13 57 47 00  	srli	a4, a4, 4
80001be0: 33 07 a7 02  	mul	a4, a4, a0
80001be4: 33 87 e8 40  	sub	a4, a7, a4
80001be8: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001bec: 33 b7 92 02  	mulhu	a4, t0, s1
80001bf0: 13 57 47 00  	srli	a4, a4, 4
80001bf4: 33 07 a7 02  	mul	a4, a4, a0
80001bf8: 33 87 e2 40  	sub	a4, t0, a4
80001bfc: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001c00: 33 37 93 02  	mulhu	a4, t1, s1
80001c04: 13 57 47 00  	srli	a4, a4, 4
80001c08: 33 07 a7 02  	mul	a4, a4, a0
80001c0c: 33 07 e3 40  	sub	a4, t1, a4
80001c10: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001c14: 33 b7 93 02  	mulhu	a4, t2, s1
80001c18: 13 57 47 00  	srli	a4, a4, 4
80001c1c: 33 07 a7 02  	mul	a4, a4, a0
80001c20: 33 87 e3 40  	sub	a4, t2, a4
80001c24: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001c28: 33 37 9e 02  	mulhu	a4, t3, s1
80001c2c: 13 57 47 00  	srli	a4, a4, 4
80001c30: 33 07 a7 02  	mul	a4, a4, a0
80001c34: 33 07 ee 40  	sub	a4, t3, a4
80001c38: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001c3c: 33 b7 9e 02  	mulhu	a4, t4, s1
80001c40: 13 57 47 00  	srli	a4, a4, 4
80001c44: 33 07 a7 02  	mul	a4, a4, a0
80001c48: 33 87 ee 40  	sub	a4, t4, a4
80001c4c: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001c50: 33 37 9f 02  	mulhu	a4, t5, s1
80001c54: 13 57 47 00  	srli	a4, a4, 4
80001c58: 33 07 a7 02  	mul	a4, a4, a0
80001c5c: 33 07 ef 40  	sub	a4, t5, a4
80001c60: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001c64: 33 37 99 02  	mulhu	a4, s2, s1
80001c68: 13 57 47 00  	srli	a4, a4, 4
80001c6c: 33 07 a7 02  	mul	a4, a4, a0
80001c70: 33 07 e9 40  	sub	a4, s2, a4
80001c74: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001c78: 33 b7 9b 02  	mulhu	a4, s7, s1
80001c7c: 13 57 47 00  	srli	a4, a4, 4
80001c80: 33 07 a7 02  	mul	a4, a4, a0
80001c84: 33 87 eb 40  	sub	a4, s7, a4
80001c88: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001c8c: 33 37 9c 02  	mulhu	a4, s8, s1
80001c90: 13 57 47 00  	srli	a4, a4, 4
80001c94: 33 07 a7 02  	mul	a4, a4, a0
80001c98: 33 07 ec 40  	sub	a4, s8, a4
80001c9c: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001ca0: 33 b7 9c 02  	mulhu	a4, s9, s1
80001ca4: 13 57 47 00  	srli	a4, a4, 4
80001ca8: 33 07 a7 02  	mul	a4, a4, a0
80001cac: 33 87 ec 40  	sub	a4, s9, a4
80001cb0: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001cb4: 33 b7 9d 02  	mulhu	a4, s11, s1
80001cb8: 13 57 47 00  	srli	a4, a4, 4
80001cbc: 33 07 a7 02  	mul	a4, a4, a0
80001cc0: 33 87 ed 40  	sub	a4, s11, a4
80001cc4: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001cc8: 33 b7 99 02  	mulhu	a4, s3, s1
80001ccc: 13 57 47 00  	srli	a4, a4, 4
80001cd0: 33 07 a7 02  	mul	a4, a4, a0
80001cd4: 33 87 e9 40  	sub	a4, s3, a4
80001cd8: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001cdc: 33 b7 97 02  	mulhu	a4, a5, s1
80001ce0: 13 57 47 00  	srli	a4, a4, 4
80001ce4: 33 07 a7 02  	mul	a4, a4, a0
80001ce8: 33 87 e7 40  	sub	a4, a5, a4
80001cec: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001cf0: 33 37 94 02  	mulhu	a4, s0, s1
80001cf4: 13 57 47 00  	srli	a4, a4, 4
80001cf8: 33 07 a7 02  	mul	a4, a4, a0
80001cfc: 33 07 e4 40  	sub	a4, s0, a4
80001d00: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001d04: 33 37 96 02  	mulhu	a4, a2, s1
80001d08: 13 57 47 00  	srli	a4, a4, 4
80001d0c: 33 07 a7 02  	mul	a4, a4, a0
80001d10: 33 07 e6 40  	sub	a4, a2, a4
80001d14: d3 0a 07 d2  	fcvt.d.w	fs5, a4
80001d18: 33 b7 95 02  	mulhu	a4, a1, s1
80001d1c: 13 57 47 00  	srli	a4, a4, 4
80001d20: 33 07 a7 02  	mul	a4, a4, a0
80001d24: 33 87 e5 40  	sub	a4, a1, a4
80001d28: 53 0b 07 d2  	fcvt.d.w	fs6, a4
80001d2c: 33 b7 96 02  	mulhu	a4, a3, s1
80001d30: 13 57 47 00  	srli	a4, a4, 4
80001d34: 33 07 a7 03  	mul	a4, a4, s10
80001d38: 33 87 e6 00  	add	a4, a3, a4
80001d3c: d3 0b 07 d2  	fcvt.d.w	fs7, a4
80001d40: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001d44: 53 80 52 22  	fmv.d	ft0, ft5
80001d48: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001d4c: 53 80 52 22  	fmv.d	ft0, ft5
80001d50: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001d54: 53 80 52 22  	fmv.d	ft0, ft5
80001d58: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001d5c: 53 80 52 22  	fmv.d	ft0, ft5
80001d60: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001d64: 53 80 52 22  	fmv.d	ft0, ft5
80001d68: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001d6c: 53 80 52 22  	fmv.d	ft0, ft5
80001d70: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001d74: 53 80 52 22  	fmv.d	ft0, ft5
80001d78: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001d7c: 53 80 52 22  	fmv.d	ft0, ft5
80001d80: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001d84: 53 80 52 22  	fmv.d	ft0, ft5
80001d88: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001d8c: 53 80 52 22  	fmv.d	ft0, ft5
80001d90: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001d94: 53 80 52 22  	fmv.d	ft0, ft5
80001d98: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001d9c: 53 80 52 22  	fmv.d	ft0, ft5
80001da0: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001da4: 53 80 52 22  	fmv.d	ft0, ft5
80001da8: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001dac: 53 80 52 22  	fmv.d	ft0, ft5
80001db0: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001db4: 53 80 52 22  	fmv.d	ft0, ft5
80001db8: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001dbc: 53 80 52 22  	fmv.d	ft0, ft5
80001dc0: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001dc4: 53 80 52 22  	fmv.d	ft0, ft5
80001dc8: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001dcc: 53 80 52 22  	fmv.d	ft0, ft5
80001dd0: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001dd4: 53 80 52 22  	fmv.d	ft0, ft5
80001dd8: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001ddc: 53 80 52 22  	fmv.d	ft0, ft5
80001de0: 53 00 42 22  	fmv.d	ft0, ft4
80001de4: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001de8: 53 80 52 22  	fmv.d	ft0, ft5
80001dec: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001df0: 53 80 52 22  	fmv.d	ft0, ft5
80001df4: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001df8: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001dfc: 93 86 96 01  	addi	a3, a3, 25
80001e00: 93 85 85 01  	addi	a1, a1, 24
80001e04: 13 06 76 01  	addi	a2, a2, 23
80001e08: 13 04 54 01  	addi	s0, s0, 21
80001e0c: 93 87 47 01  	addi	a5, a5, 20
80001e10: 93 89 39 01  	addi	s3, s3, 19
80001e14: 93 8d 2d 01  	addi	s11, s11, 18
80001e18: 93 8c 1c 01  	addi	s9, s9, 17
80001e1c: 13 0c 0c 01  	addi	s8, s8, 16
80001e20: 93 8b fb 00  	addi	s7, s7, 15
80001e24: 13 09 e9 00  	addi	s2, s2, 14
80001e28: 13 0f df 00  	addi	t5, t5, 13
80001e2c: 93 8e ce 00  	addi	t4, t4, 12
80001e30: 13 0e be 00  	addi	t3, t3, 11
80001e34: 93 83 a3 00  	addi	t2, t2, 10
80001e38: 13 03 93 00  	addi	t1, t1, 9
80001e3c: 93 82 82 00  	addi	t0, t0, 8
80001e40: 93 88 78 00  	addi	a7, a7, 7
80001e44: 13 08 68 00  	addi	a6, a6, 6
80001e48: 13 0b 5b 00  	addi	s6, s6, 5
80001e4c: 93 8a 4a 00  	addi	s5, s5, 4
80001e50: 13 0a 3a 00  	addi	s4, s4, 3
80001e54: 93 8f 2f 00  	addi	t6, t6, 2
80001e58: e3 9e 16 d0  	bne	a3, ra, 0x80001b74 <.LBB0_77+0xc8>
80001e5c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001e60: 6f 00 40 39  	j	0x800021f4 <.LBB0_77+0x748>
80001e64: 93 06 00 00  	mv	a3, zero
80001e68: 13 07 00 00  	mv	a4, zero
80001e6c: 93 07 00 00  	mv	a5, zero
80001e70: 93 04 00 00  	mv	s1, zero
80001e74: 93 05 00 00  	mv	a1, zero
80001e78: 13 0e 00 00  	mv	t3, zero
80001e7c: 93 0e 00 00  	mv	t4, zero
80001e80: 13 0f 00 00  	mv	t5, zero
80001e84: 93 0f 00 00  	mv	t6, zero
80001e88: 13 09 00 00  	mv	s2, zero
80001e8c: 13 0a 00 00  	mv	s4, zero
80001e90: 93 0a 00 00  	mv	s5, zero
80001e94: 13 0b 00 00  	mv	s6, zero
80001e98: 93 0b 00 00  	mv	s7, zero
80001e9c: 13 0c 00 00  	mv	s8, zero
80001ea0: 93 0c 00 00  	mv	s9, zero
80001ea4: 13 0d 00 00  	mv	s10, zero
80001ea8: 93 0d 00 00  	mv	s11, zero
80001eac: 93 09 00 00  	mv	s3, zero
80001eb0: 13 08 00 00  	mv	a6, zero
80001eb4: 93 08 00 00  	mv	a7, zero
80001eb8: 93 02 00 00  	mv	t0, zero
80001ebc: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001ec0: 13 84 00 06  	addi	s0, ra, 96
80001ec4: 37 95 2e ba  	lui	a0, 762601
80001ec8: 13 05 35 ba  	addi	a0, a0, -1117
80001ecc: 87 31 06 00  	fld	ft3, 0(a2)
80001ed0: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001ed4: 33 b6 a2 02  	mulhu	a2, t0, a0
80001ed8: 13 56 46 00  	srli	a2, a2, 4
80001edc: 33 06 76 02  	mul	a2, a2, t2
80001ee0: b3 80 c2 40  	sub	ra, t0, a2
80001ee4: 53 82 00 d2  	fcvt.d.w	ft4, ra
80001ee8: 33 b6 a8 02  	mulhu	a2, a7, a0
80001eec: 13 56 46 00  	srli	a2, a2, 4
80001ef0: 33 06 76 02  	mul	a2, a2, t2
80001ef4: 33 86 c8 40  	sub	a2, a7, a2
80001ef8: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001efc: 33 b6 a9 02  	mulhu	a2, s3, a0
80001f00: 13 56 46 00  	srli	a2, a2, 4
80001f04: 33 06 76 02  	mul	a2, a2, t2
80001f08: 33 86 c9 40  	sub	a2, s3, a2
80001f0c: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001f10: 33 36 ad 02  	mulhu	a2, s10, a0
80001f14: 13 56 46 00  	srli	a2, a2, 4
80001f18: 33 06 76 02  	mul	a2, a2, t2
80001f1c: 33 06 cd 40  	sub	a2, s10, a2
80001f20: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001f24: 33 b6 ac 02  	mulhu	a2, s9, a0
80001f28: 13 56 46 00  	srli	a2, a2, 4
80001f2c: 33 06 76 02  	mul	a2, a2, t2
80001f30: 33 86 cc 40  	sub	a2, s9, a2
80001f34: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001f38: 33 b6 ab 02  	mulhu	a2, s7, a0
80001f3c: 13 56 46 00  	srli	a2, a2, 4
80001f40: 33 06 76 02  	mul	a2, a2, t2
80001f44: 33 86 cb 40  	sub	a2, s7, a2
80001f48: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001f4c: 33 b6 aa 02  	mulhu	a2, s5, a0
80001f50: 13 56 46 00  	srli	a2, a2, 4
80001f54: 33 06 76 02  	mul	a2, a2, t2
80001f58: 33 86 ca 40  	sub	a2, s5, a2
80001f5c: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001f60: 33 36 a9 02  	mulhu	a2, s2, a0
80001f64: 13 56 46 00  	srli	a2, a2, 4
80001f68: 33 06 76 02  	mul	a2, a2, t2
80001f6c: 33 06 c9 40  	sub	a2, s2, a2
80001f70: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001f74: 33 36 af 02  	mulhu	a2, t5, a0
80001f78: 13 56 46 00  	srli	a2, a2, 4
80001f7c: 33 06 76 02  	mul	a2, a2, t2
80001f80: 33 06 cf 40  	sub	a2, t5, a2
80001f84: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001f88: 33 36 ae 02  	mulhu	a2, t3, a0
80001f8c: 13 56 46 00  	srli	a2, a2, 4
80001f90: 33 06 76 02  	mul	a2, a2, t2
80001f94: 33 06 ce 40  	sub	a2, t3, a2
80001f98: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001f9c: 33 b6 a4 02  	mulhu	a2, s1, a0
80001fa0: 13 56 46 00  	srli	a2, a2, 4
80001fa4: 33 06 76 02  	mul	a2, a2, t2
80001fa8: 33 86 c4 40  	sub	a2, s1, a2
80001fac: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001fb0: 33 b6 a6 02  	mulhu	a2, a3, a0
80001fb4: 13 56 46 00  	srli	a2, a2, 4
80001fb8: 33 06 76 02  	mul	a2, a2, t2
80001fbc: 33 86 c6 40  	sub	a2, a3, a2
80001fc0: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001fc4: 33 36 a7 02  	mulhu	a2, a4, a0
80001fc8: 13 56 46 00  	srli	a2, a2, 4
80001fcc: 33 06 76 02  	mul	a2, a2, t2
80001fd0: 33 06 c7 40  	sub	a2, a4, a2
80001fd4: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80001fd8: 33 b6 a7 02  	mulhu	a2, a5, a0
80001fdc: 13 56 46 00  	srli	a2, a2, 4
80001fe0: 33 06 76 02  	mul	a2, a2, t2
80001fe4: 33 86 c7 40  	sub	a2, a5, a2
80001fe8: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001fec: 33 b6 a5 02  	mulhu	a2, a1, a0
80001ff0: 13 56 46 00  	srli	a2, a2, 4
80001ff4: 33 06 76 02  	mul	a2, a2, t2
80001ff8: 33 86 c5 40  	sub	a2, a1, a2
80001ffc: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80002000: 33 b6 ae 02  	mulhu	a2, t4, a0
80002004: 13 56 46 00  	srli	a2, a2, 4
80002008: 33 06 76 02  	mul	a2, a2, t2
8000200c: 33 86 ce 40  	sub	a2, t4, a2
80002010: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80002014: 33 b6 af 02  	mulhu	a2, t6, a0
80002018: 13 56 46 00  	srli	a2, a2, 4
8000201c: 33 06 76 02  	mul	a2, a2, t2
80002020: 33 86 cf 40  	sub	a2, t6, a2
80002024: 53 04 06 d2  	fcvt.d.w	fs0, a2
80002028: 33 36 aa 02  	mulhu	a2, s4, a0
8000202c: 13 56 46 00  	srli	a2, a2, 4
80002030: 33 06 76 02  	mul	a2, a2, t2
80002034: 33 06 ca 40  	sub	a2, s4, a2
80002038: d3 04 06 d2  	fcvt.d.w	fs1, a2
8000203c: 33 36 ab 02  	mulhu	a2, s6, a0
80002040: 13 56 46 00  	srli	a2, a2, 4
80002044: 33 06 76 02  	mul	a2, a2, t2
80002048: 33 06 cb 40  	sub	a2, s6, a2
8000204c: 53 09 06 d2  	fcvt.d.w	fs2, a2
80002050: 33 36 ac 02  	mulhu	a2, s8, a0
80002054: 13 56 46 00  	srli	a2, a2, 4
80002058: 33 06 76 02  	mul	a2, a2, t2
8000205c: 33 06 cc 40  	sub	a2, s8, a2
80002060: d3 09 06 d2  	fcvt.d.w	fs3, a2
80002064: 33 b6 ad 02  	mulhu	a2, s11, a0
80002068: 13 56 46 00  	srli	a2, a2, 4
8000206c: 33 06 76 02  	mul	a2, a2, t2
80002070: 33 86 cd 40  	sub	a2, s11, a2
80002074: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80002078: 33 36 a8 02  	mulhu	a2, a6, a0
8000207c: 13 56 46 00  	srli	a2, a2, 4
80002080: 33 06 76 02  	mul	a2, a2, t2
80002084: 33 06 c8 40  	sub	a2, a6, a2
80002088: d3 0a 06 d2  	fcvt.d.w	fs5, a2
8000208c: 33 36 a3 02  	mulhu	a2, t1, a0
80002090: 13 56 46 00  	srli	a2, a2, 4
80002094: 93 80 05 00  	mv	ra, a1
80002098: 93 85 04 00  	mv	a1, s1
8000209c: 93 84 07 00  	mv	s1, a5
800020a0: 93 07 07 00  	mv	a5, a4
800020a4: 13 87 06 00  	mv	a4, a3
800020a8: 93 06 a0 fe  	addi	a3, zero, -22
800020ac: 33 06 d6 02  	mul	a2, a2, a3
800020b0: 93 06 07 00  	mv	a3, a4
800020b4: 13 87 07 00  	mv	a4, a5
800020b8: 93 87 04 00  	mv	a5, s1
800020bc: 93 84 05 00  	mv	s1, a1
800020c0: 93 85 00 00  	mv	a1, ra
800020c4: 33 06 c3 00  	add	a2, t1, a2
800020c8: 53 0b 06 d2  	fcvt.d.w	fs6, a2
800020cc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800020d0: 27 30 44 fa  	fsd	ft4, -96(s0)
800020d4: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800020d8: 27 34 44 fa  	fsd	ft4, -88(s0)
800020dc: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800020e0: 27 38 44 fa  	fsd	ft4, -80(s0)
800020e4: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800020e8: 27 3c 44 fa  	fsd	ft4, -72(s0)
800020ec: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800020f0: 27 30 44 fc  	fsd	ft4, -64(s0)
800020f4: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800020f8: 27 34 44 fc  	fsd	ft4, -56(s0)
800020fc: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80002100: 27 38 44 fc  	fsd	ft4, -48(s0)
80002104: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80002108: 27 3c 44 fc  	fsd	ft4, -40(s0)
8000210c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80002110: 27 30 44 fe  	fsd	ft4, -32(s0)
80002114: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80002118: 27 34 44 fe  	fsd	ft4, -24(s0)
8000211c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80002120: 27 38 44 fe  	fsd	ft4, -16(s0)
80002124: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80002128: 27 3c 44 fe  	fsd	ft4, -8(s0)
8000212c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80002130: 27 30 44 00  	fsd	ft4, 0(s0)
80002134: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80002138: 27 34 44 00  	fsd	ft4, 8(s0)
8000213c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80002140: 27 38 44 00  	fsd	ft4, 16(s0)
80002144: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80002148: 27 3c 44 00  	fsd	ft4, 24(s0)
8000214c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80002150: 27 30 44 02  	fsd	ft4, 32(s0)
80002154: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80002158: 27 34 44 02  	fsd	ft4, 40(s0)
8000215c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80002160: 27 38 44 02  	fsd	ft4, 48(s0)
80002164: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80002168: 27 3c 44 02  	fsd	ft4, 56(s0)
8000216c: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80002170: 27 34 44 04  	fsd	ft4, 72(s0)
80002174: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80002178: 27 38 44 04  	fsd	ft4, 80(s0)
8000217c: 23 22 04 04  	sw	zero, 68(s0)
80002180: 23 20 04 04  	sw	zero, 64(s0)
80002184: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80002188: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < ni; i++)
8000218c: 13 03 93 01  	addi	t1, t1, 25
80002190: 93 82 22 00  	addi	t0, t0, 2
80002194: 93 88 38 00  	addi	a7, a7, 3
80002198: 13 08 88 01  	addi	a6, a6, 24
8000219c: 93 89 49 00  	addi	s3, s3, 4
800021a0: 93 8d 7d 01  	addi	s11, s11, 23
800021a4: 13 0d 5d 00  	addi	s10, s10, 5
800021a8: 93 8c 6c 00  	addi	s9, s9, 6
800021ac: 13 0c 5c 01  	addi	s8, s8, 21
800021b0: 93 8b 7b 00  	addi	s7, s7, 7
800021b4: 13 0b 4b 01  	addi	s6, s6, 20
800021b8: 93 8a 8a 00  	addi	s5, s5, 8
800021bc: 13 0a 3a 01  	addi	s4, s4, 19
800021c0: 13 09 99 00  	addi	s2, s2, 9
800021c4: 93 8f 2f 01  	addi	t6, t6, 18
800021c8: 13 0f af 00  	addi	t5, t5, 10
800021cc: 93 8e 1e 01  	addi	t4, t4, 17
800021d0: 13 0e be 00  	addi	t3, t3, 11
800021d4: 93 85 00 01  	addi	a1, ra, 16
800021d8: 93 84 c4 00  	addi	s1, s1, 12
800021dc: 93 87 f7 00  	addi	a5, a5, 15
800021e0: 13 04 04 0c  	addi	s0, s0, 192
800021e4: 13 07 e7 00  	addi	a4, a4, 14
800021e8: 93 86 d6 00  	addi	a3, a3, 13
800021ec: 13 06 00 19  	addi	a2, zero, 400
800021f0: e3 12 c3 ce  	bne	t1, a2, 0x80001ed4 <.LBB0_77+0x428>
;   for (i = 0; i < ni; i++) {
800021f4: 03 25 81 01  	lw	a0, 24(sp)
800021f8: 83 25 41 01  	lw	a1, 20(sp)
800021fc: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002200: 73 28 00 b0  	csrr	a6, mcycle
80002204: 63 0c 05 3a  	beqz	a0, 0x800025bc <.LBB0_80+0xc8>
80002208: 13 05 00 00  	mv	a0, zero
8000220c: 93 05 80 00  	addi	a1, zero, 8
80002210: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++) {
80002214: 93 06 00 04  	addi	a3, zero, 64
80002218: 13 07 00 0c  	addi	a4, zero, 192
8000221c: ab 20 d6 00  	scfgw	a2, a3
80002220: ab a0 e5 00  	scfgw	a1, a4
80002224: 93 06 80 f5  	addi	a3, zero, -168
80002228: 13 07 10 01  	addi	a4, zero, 17
8000222c: 93 07 00 06  	addi	a5, zero, 96
80002230: 93 04 00 0e  	addi	s1, zero, 224
80002234: ab 20 f7 00  	scfgw	a4, a5
80002238: ab a0 96 00  	scfgw	a3, s1
8000223c: 93 06 f0 00  	addi	a3, zero, 15
80002240: 93 07 00 08  	addi	a5, zero, 128
80002244: 93 04 00 10  	addi	s1, zero, 256
80002248: ab a0 f6 00  	scfgw	a3, a5
8000224c: ab a0 95 00  	scfgw	a1, s1
80002250: 93 05 00 02  	addi	a1, zero, 32
80002254: ab 20 b0 00  	scfgw	zero, a1
80002258: 83 25 01 02  	lw	a1, 32(sp)
8000225c: 2b a0 05 34  	scfgwi	a1, 832
80002260: 93 05 00 09  	addi	a1, zero, 144
80002264: 93 07 10 00  	addi	a5, zero, 1
80002268: 93 84 07 04  	addi	s1, a5, 64
8000226c: 13 84 07 0c  	addi	s0, a5, 192
80002270: ab 20 96 00  	scfgw	a2, s1
80002274: ab a0 85 00  	scfgw	a1, s0
80002278: 37 f6 ff ff  	lui	a2, 1048575
8000227c: 93 04 86 43  	addi	s1, a2, 1080
80002280: 13 84 07 06  	addi	s0, a5, 96
80002284: ab 20 87 00  	scfgw	a4, s0
80002288: 13 87 07 0e  	addi	a4, a5, 224
8000228c: ab a0 e4 00  	scfgw	s1, a4
80002290: 13 06 86 3a  	addi	a2, a2, 936
80002294: 13 87 07 08  	addi	a4, a5, 128
80002298: 93 84 07 10  	addi	s1, a5, 256
8000229c: ab a0 e6 00  	scfgw	a3, a4
800022a0: ab 20 96 00  	scfgw	a2, s1
800022a4: 13 86 07 02  	addi	a2, a5, 32
800022a8: ab 20 c0 00  	scfgw	zero, a2

800022ac <.LBB0_78>:
800022ac: 17 36 00 00  	auipc	a2, 3
800022b0: 13 06 c6 08  	addi	a2, a2, 140
800022b4: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
800022b8: 03 26 c1 01  	lw	a2, 28(sp)
800022bc: 2b 20 16 34  	scfgwi	a2, 833
800022c0: 73 e6 00 7c  	csrrsi	a2, 1984, 1
800022c4: 13 06 00 01  	addi	a2, zero, 16
800022c8: 83 29 81 02  	lw	s3, 40(sp)
800022cc: 93 86 09 00  	mv	a3, s3
800022d0: 03 29 c1 02  	lw	s2, 44(sp)
800022d4: 03 2a 41 02  	lw	s4, 36(sp)
800022d8: 13 07 00 00  	mv	a4, zero
;       tmp[i][j] = 0.0;
800022dc: b3 87 e6 00  	add	a5, a3, a4
800022e0: 23 a2 07 00  	sw	zero, 4(a5)
800022e4: 23 a0 07 00  	sw	zero, 0(a5)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800022e8: 53 f2 00 12  	fmul.d	ft4, ft1, ft0
800022ec: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800022f0: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800022f4: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800022f8: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
800022fc: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002300: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002304: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002308: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
8000230c: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002310: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002314: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002318: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
8000231c: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002320: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002324: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002328: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
8000232c: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002330: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002334: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
80002338: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
8000233c: 43 f2 00 22  	fmadd.d	ft4, ft1, ft0, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002340: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;     for (j = 0; j < nj; j++) {
80002344: 13 07 87 00  	addi	a4, a4, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002348: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nj; j++) {
8000234c: e3 18 b7 f8  	bne	a4, a1, 0x800022dc <.LBB0_78+0x30>
;   for (i = 0; i < ni; i++) {
80002350: 13 05 15 00  	addi	a0, a0, 1
80002354: 93 86 06 09  	addi	a3, a3, 144
80002358: e3 10 c5 f8  	bne	a0, a2, 0x800022d8 <.LBB0_78+0x2c>
8000235c: 73 f5 00 7c  	csrrci	a0, 1984, 1
;   for (i = 0; i < ni; i++) {
80002360: 13 d5 49 01  	srli	a0, s3, 20
80002364: 33 35 a0 00  	snez	a0, a0
80002368: b7 f5 11 00  	lui	a1, 287
8000236c: 93 85 95 70  	addi	a1, a1, 1801
80002370: b3 b5 b9 00  	sltu	a1, s3, a1
80002374: 33 75 b5 00  	and	a0, a0, a1
80002378: 83 2a 41 09  	lw	s5, 148(sp)
8000237c: 33 75 55 01  	and	a0, a0, s5
80002380: 83 25 01 01  	lw	a1, 16(sp)
80002384: 33 f5 a5 00  	and	a0, a1, a0
80002388: 63 0e 05 54  	beqz	a0, 0x800028e4 <.LBB0_81+0x2bc>
8000238c: 13 05 00 00  	mv	a0, zero
80002390: 93 05 80 00  	addi	a1, zero, 8
80002394: 93 08 70 01  	addi	a7, zero, 23
;   for (i = 0; i < ni; i++) {
80002398: 93 06 00 04  	addi	a3, zero, 64
8000239c: 13 07 00 0c  	addi	a4, zero, 192
800023a0: ab a0 d8 00  	scfgw	a7, a3
800023a4: ab a0 e5 00  	scfgw	a1, a4
800023a8: 93 06 f0 00  	addi	a3, zero, 15
800023ac: 13 07 00 06  	addi	a4, zero, 96
800023b0: 93 07 00 0e  	addi	a5, zero, 224
800023b4: ab a0 e6 00  	scfgw	a3, a4
800023b8: ab a0 f5 00  	scfgw	a1, a5
800023bc: 13 07 00 02  	addi	a4, zero, 32
800023c0: ab 20 e0 00  	scfgw	zero, a4
800023c4: 2b 20 09 32  	scfgwi	s2, 800
800023c8: 13 07 10 01  	addi	a4, zero, 17
800023cc: 93 07 10 00  	addi	a5, zero, 1
800023d0: 93 84 07 04  	addi	s1, a5, 64
800023d4: 13 84 07 0c  	addi	s0, a5, 192
800023d8: ab 20 97 00  	scfgw	a4, s1
800023dc: ab a0 85 00  	scfgw	a1, s0
800023e0: 93 04 80 f7  	addi	s1, zero, -136
800023e4: 13 84 07 06  	addi	s0, a5, 96
800023e8: ab a0 88 00  	scfgw	a7, s0
800023ec: 13 84 07 0e  	addi	s0, a5, 224
800023f0: ab a0 84 00  	scfgw	s1, s0
800023f4: 93 84 07 08  	addi	s1, a5, 128
800023f8: 13 84 07 10  	addi	s0, a5, 256
800023fc: ab a0 96 00  	scfgw	a3, s1
80002400: ab a0 85 00  	scfgw	a1, s0
80002404: 93 85 07 02  	addi	a1, a5, 32
80002408: ab 20 b0 00  	scfgw	zero, a1
8000240c: 2b a0 19 34  	scfgwi	s3, 833
80002410: 93 05 00 0c  	addi	a1, zero, 192
80002414: 93 07 20 00  	addi	a5, zero, 2
80002418: 93 84 07 04  	addi	s1, a5, 64
8000241c: 13 84 07 0c  	addi	s0, a5, 192
80002420: ab 20 97 00  	scfgw	a4, s1
80002424: ab a0 85 00  	scfgw	a1, s0
80002428: 37 f7 ff ff  	lui	a4, 1048575
8000242c: 93 04 87 34  	addi	s1, a4, 840
80002430: 13 84 07 06  	addi	s0, a5, 96
80002434: 13 86 07 0e  	addi	a2, a5, 224
80002438: ab a0 88 00  	scfgw	a7, s0
8000243c: ab a0 c4 00  	scfgw	s1, a2
80002440: 13 06 87 28  	addi	a2, a4, 648
80002444: 13 87 07 08  	addi	a4, a5, 128
80002448: 93 84 07 10  	addi	s1, a5, 256
8000244c: ab a0 e6 00  	scfgw	a3, a4
80002450: ab 20 96 00  	scfgw	a2, s1
80002454: 13 86 07 02  	addi	a2, a5, 32
80002458: ab 20 c0 00  	scfgw	zero, a2

8000245c <.LBB0_79>:
8000245c: 17 36 00 00  	auipc	a2, 3
80002460: 13 06 46 ee  	addi	a2, a2, -284
80002464: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
80002468: 2b 20 2a 34  	scfgwi	s4, 834
8000246c: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002470: 13 06 00 01  	addi	a2, zero, 16
80002474: 93 06 09 00  	mv	a3, s2
80002478: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
8000247c: b3 87 e6 00  	add	a5, a3, a4
80002480: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002484: 27 b0 47 00  	fsd	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
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
800024bc: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024c0: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024c4: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024c8: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
800024cc: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;     for (j = 0; j < nl; j++) {
800024d0: 13 07 87 00  	addi	a4, a4, 8
;         D[i][j] += tmp[i][k] * C[k][j];
800024d4: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++) {
800024d8: e3 12 b7 fa  	bne	a4, a1, 0x8000247c <.LBB0_79+0x20>
;   for (i = 0; i < ni; i++) {
800024dc: 13 05 15 00  	addi	a0, a0, 1
800024e0: 93 86 06 0c  	addi	a3, a3, 192
800024e4: e3 1a c5 f8  	bne	a0, a2, 0x80002478 <.LBB0_79+0x1c>
800024e8: 73 f5 00 7c  	csrrci	a0, 1984, 1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800024ec: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
800024f0: b3 05 05 41  	sub	a1, a0, a6

800024f4 <.LBB0_80>:
800024f4: 17 35 00 00  	auipc	a0, 3
800024f8: 13 05 d5 b7  	addi	a0, a0, -1155
800024fc: 97 10 00 00  	auipc	ra, 1
80002500: e7 80 c0 82  	jalr	-2004(ra)
80002504: 63 82 0a 6a  	beqz	s5, 0x80002ba8 <.LBB0_82+0x264>
80002508: 13 05 80 00  	addi	a0, zero, 8
8000250c: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
80002510: 13 06 00 04  	addi	a2, zero, 64
80002514: 93 06 00 0c  	addi	a3, zero, 192
80002518: ab a0 c5 00  	scfgw	a1, a2
8000251c: ab 20 d5 00  	scfgw	a0, a3
80002520: 93 05 f0 00  	addi	a1, zero, 15
80002524: 13 06 00 06  	addi	a2, zero, 96
80002528: 93 06 00 0e  	addi	a3, zero, 224
8000252c: ab a0 c5 00  	scfgw	a1, a2
80002530: ab 20 d5 00  	scfgw	a0, a3
80002534: 13 05 00 02  	addi	a0, zero, 32
80002538: ab 20 a0 00  	scfgw	zero, a0
8000253c: 2b 20 09 32  	scfgwi	s2, 800
80002540: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002544: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002548: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
8000254c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002550: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002554: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002558: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000255c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002560: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002564: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002568: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000256c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002570: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002574: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002578: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000257c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002580: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002584: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002588: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000258c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002590: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002594: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80002598: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000259c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800025a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800025a4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800025a8: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800025ac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800025b0: e3 1e 05 f8  	bnez	a0, 0x8000254c <.LBB0_80+0x58>
800025b4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800025b8: 6f 00 80 6c  	j	0x80002c80 <.LBB0_83>
800025bc: 13 0b 00 00  	mv	s6, zero
800025c0: 03 25 c1 01  	lw	a0, 28(sp)
;   for (i = 0; i < ni; i++) {
800025c4: 93 02 05 09  	addi	t0, a0, 144
800025c8: 93 05 85 5e  	addi	a1, a0, 1512
800025cc: 13 83 85 5e  	addi	t1, a1, 1512
800025d0: 93 05 05 5a  	addi	a1, a0, 1440
800025d4: 13 8e 05 5a  	addi	t3, a1, 1440
800025d8: 93 d5 42 01  	srli	a1, t0, 20
800025dc: b3 35 b0 00  	snez	a1, a1
800025e0: 37 06 12 00  	lui	a2, 288
800025e4: 13 06 96 f7  	addi	a2, a2, -135
800025e8: b3 b6 c2 00  	sltu	a3, t0, a2
800025ec: b3 f5 d5 00  	and	a1, a1, a3
800025f0: 93 56 43 01  	srli	a3, t1, 20
800025f4: b3 36 d0 00  	snez	a3, a3
800025f8: 33 37 c3 00  	sltu	a4, t1, a2
800025fc: b3 f6 e6 00  	and	a3, a3, a4
80002600: b3 f5 d5 00  	and	a1, a1, a3
80002604: 93 56 4e 01  	srli	a3, t3, 20
80002608: b3 36 d0 00  	snez	a3, a3
8000260c: 33 36 ce 00  	sltu	a2, t3, a2
80002610: 33 f6 c6 00  	and	a2, a3, a2
80002614: 33 77 b6 00  	and	a4, a2, a1
80002618: 93 08 00 0b  	addi	a7, zero, 176
8000261c: 93 0e 80 00  	addi	t4, zero, 8
80002620: 13 0f 10 01  	addi	t5, zero, 17
80002624: 93 0f 10 00  	addi	t6, zero, 1

80002628 <.LBB0_81>:
80002628: 97 35 00 00  	auipc	a1, 3
8000262c: 93 85 05 d1  	addi	a1, a1, -752
80002630: 87 b1 05 00  	fld	ft3, 0(a1)
80002634: 93 0a 20 00  	addi	s5, zero, 2
80002638: 13 06 00 09  	addi	a2, zero, 144
8000263c: 93 03 00 01  	addi	t2, zero, 16
80002640: 83 29 81 02  	lw	s3, 40(sp)
80002644: 93 86 09 00  	mv	a3, s3
80002648: 03 29 c1 02  	lw	s2, 44(sp)
8000264c: 03 2a 41 02  	lw	s4, 36(sp)
80002650: 83 25 01 02  	lw	a1, 32(sp)
80002654: 6f 00 00 01  	j	0x80002664 <.LBB0_81+0x3c>
;   for (i = 0; i < ni; i++) {
80002658: 13 0b 1b 00  	addi	s6, s6, 1
8000265c: 93 86 06 09  	addi	a3, a3, 144
80002660: e3 00 7b d0  	beq	s6, t2, 0x80002360 <.LBB0_78+0xb4>
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002664: 33 04 1b 03  	mul	s0, s6, a7
80002668: 33 84 85 00  	add	s0, a1, s0
8000266c: 07 32 84 04  	fld	ft4, 72(s0)
80002670: 87 32 04 05  	fld	ft5, 80(s0)
80002674: 07 33 84 05  	fld	ft6, 88(s0)
80002678: 87 33 04 06  	fld	ft7, 96(s0)
8000267c: 07 35 84 06  	fld	fa0, 104(s0)
80002680: 87 35 04 07  	fld	fa1, 112(s0)
80002684: 07 36 04 00  	fld	fa2, 0(s0)
80002688: 87 36 84 00  	fld	fa3, 8(s0)
8000268c: 07 37 04 01  	fld	fa4, 16(s0)
80002690: 87 37 84 01  	fld	fa5, 24(s0)
80002694: 07 38 04 02  	fld	fa6, 32(s0)
80002698: 87 38 84 02  	fld	fa7, 40(s0)
8000269c: 07 3e 04 03  	fld	ft8, 48(s0)
800026a0: 87 3e 84 03  	fld	ft9, 56(s0)
800026a4: 07 3f 04 04  	fld	ft10, 64(s0)
800026a8: 87 3f 84 07  	fld	ft11, 120(s0)
800026ac: 07 34 04 08  	fld	fs0, 128(s0)
800026b0: 87 34 84 08  	fld	fs1, 136(s0)
800026b4: 07 39 04 09  	fld	fs2, 144(s0)
800026b8: 87 39 84 09  	fld	fs3, 152(s0)
800026bc: 07 3a 04 0a  	fld	fs4, 160(s0)
800026c0: 87 3a 84 0a  	fld	fs5, 168(s0)
800026c4: 13 04 00 00  	mv	s0, zero
800026c8: 63 0a 07 12  	beqz	a4, 0x800027fc <.LBB0_81+0x1d4>
;     for (j = 0; j < nj; j++) {
800026cc: 93 07 00 04  	addi	a5, zero, 64
800026d0: ab 20 ff 00  	scfgw	t5, a5
800026d4: 93 07 00 0c  	addi	a5, zero, 192
800026d8: ab a0 fe 00  	scfgw	t4, a5
800026dc: 93 07 00 02  	addi	a5, zero, 32
800026e0: ab 20 f0 00  	scfgw	zero, a5
800026e4: 2b a0 02 30  	scfgwi	t0, 768
800026e8: 93 87 0f 04  	addi	a5, t6, 64
800026ec: ab 20 ff 00  	scfgw	t5, a5
800026f0: 93 87 0f 0c  	addi	a5, t6, 192
800026f4: ab a0 fe 00  	scfgw	t4, a5
800026f8: 93 87 0f 02  	addi	a5, t6, 32
800026fc: ab 20 f0 00  	scfgw	zero, a5
80002700: 2b 20 13 30  	scfgwi	t1, 769
80002704: 93 87 0a 04  	addi	a5, s5, 64
80002708: ab 20 ff 00  	scfgw	t5, a5
8000270c: 93 87 0a 0c  	addi	a5, s5, 192
80002710: ab a0 fe 00  	scfgw	t4, a5
80002714: 93 87 0a 02  	addi	a5, s5, 32
80002718: ab 20 f0 00  	scfgw	zero, a5
8000271c: 2b 20 2e 30  	scfgwi	t3, 770
80002720: f3 e7 00 7c  	csrrsi	a5, 1984, 1
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002724: b3 07 85 00  	add	a5, a0, s0
80002728: 07 bb 07 00  	fld	fs6, 0(a5)
8000272c: 53 7b cb 12  	fmul.d	fs6, fs6, fa2
80002730: 07 bc 07 12  	fld	fs8, 288(a5)
80002734: 87 bc 07 1b  	fld	fs9, 432(a5)
80002738: 07 bd 07 24  	fld	fs10, 576(a5)
8000273c: 43 7b d0 b2  	fmadd.d	fs6, ft0, fa3, fs6
80002740: 87 bb 07 2d  	fld	fs7, 720(a5)
80002744: 43 7b ec b2  	fmadd.d	fs6, fs8, fa4, fs6
80002748: 07 bc 07 36  	fld	fs8, 864(a5)
8000274c: 43 fb fc b2  	fmadd.d	fs6, fs9, fa5, fs6
80002750: 87 bc 07 3f  	fld	fs9, 1008(a5)
80002754: 43 7b 0d b3  	fmadd.d	fs6, fs10, fa6, fs6
80002758: 07 bd 07 48  	fld	fs10, 1152(a5)
8000275c: 43 fb 1b b3  	fmadd.d	fs6, fs7, fa7, fs6
80002760: 87 bb 07 51  	fld	fs7, 1296(a5)
80002764: 43 7b cc b3  	fmadd.d	fs6, fs8, ft8, fs6
80002768: 07 bc 07 5a  	fld	fs8, 1440(a5)
8000276c: 43 fb dc b3  	fmadd.d	fs6, fs9, ft9, fs6
80002770: 87 bc 07 63  	fld	fs9, 1584(a5)
80002774: 43 7b ed b3  	fmadd.d	fs6, fs10, ft10, fs6
80002778: 07 bd 07 6c  	fld	fs10, 1728(a5)
8000277c: 43 fb 4b b2  	fmadd.d	fs6, fs7, ft4, fs6
80002780: 87 bb 07 75  	fld	fs7, 1872(a5)
80002784: 43 7b 5c b2  	fmadd.d	fs6, fs8, ft5, fs6
80002788: 07 bc 07 7e  	fld	fs8, 2016(a5)
8000278c: 93 84 87 43  	addi	s1, a5, 1080
80002790: 43 fb 6c b2  	fmadd.d	fs6, fs9, ft6, fs6
80002794: 87 bc 84 43  	fld	fs9, 1080(s1)
80002798: 93 84 07 48  	addi	s1, a5, 1152
8000279c: 43 7b 7d b2  	fmadd.d	fs6, fs10, ft7, fs6
800027a0: 07 bd 04 48  	fld	fs10, 1152(s1)
800027a4: 93 84 87 4c  	addi	s1, a5, 1224
800027a8: 43 fb ab b2  	fmadd.d	fs6, fs7, fa0, fs6
800027ac: 87 bb 84 4c  	fld	fs7, 1224(s1)
800027b0: 93 84 07 51  	addi	s1, a5, 1296
800027b4: 43 7b bc b2  	fmadd.d	fs6, fs8, fa1, fs6
800027b8: 07 bc 04 51  	fld	fs8, 1296(s1)
800027bc: 93 87 87 55  	addi	a5, a5, 1368
800027c0: 43 fb fc b3  	fmadd.d	fs6, fs9, ft11, fs6
800027c4: 87 bc 87 55  	fld	fs9, 1368(a5)
800027c8: 43 7b 8d b2  	fmadd.d	fs6, fs10, fs0, fs6
800027cc: 43 fb 9b b2  	fmadd.d	fs6, fs7, fs1, fs6
800027d0: 43 7b 2c b3  	fmadd.d	fs6, fs8, fs2, fs6
800027d4: 43 fb 3c b3  	fmadd.d	fs6, fs9, fs3, fs6
800027d8: 43 7b 41 b3  	fmadd.d	fs6, ft2, fs4, fs6
800027dc: 43 fb 50 b3  	fmadd.d	fs6, ft1, fs5, fs6
800027e0: b3 87 86 00  	add	a5, a3, s0
800027e4: 53 7b 3b 12  	fmul.d	fs6, fs6, ft3
;     for (j = 0; j < nj; j++) {
800027e8: 13 04 84 00  	addi	s0, s0, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800027ec: 27 b0 67 01  	fsd	fs6, 0(a5)
;     for (j = 0; j < nj; j++) {
800027f0: e3 1a c4 f2  	bne	s0, a2, 0x80002724 <.LBB0_81+0xfc>
800027f4: f3 f7 00 7c  	csrrci	a5, 1984, 1
800027f8: 6f f0 1f e6  	j	0x80002658 <.LBB0_81+0x30>
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800027fc: b3 07 85 00  	add	a5, a0, s0
80002800: 07 bb 07 00  	fld	fs6, 0(a5)
80002804: 53 7b cb 12  	fmul.d	fs6, fs6, fa2
80002808: 87 bb 07 09  	fld	fs7, 144(a5)
8000280c: 07 bc 07 12  	fld	fs8, 288(a5)
80002810: 87 bc 07 1b  	fld	fs9, 432(a5)
80002814: 07 bd 07 24  	fld	fs10, 576(a5)
80002818: 43 fb db b2  	fmadd.d	fs6, fs7, fa3, fs6
8000281c: 87 bb 07 2d  	fld	fs7, 720(a5)
80002820: 43 7b ec b2  	fmadd.d	fs6, fs8, fa4, fs6
80002824: 07 bc 07 36  	fld	fs8, 864(a5)
80002828: 43 fb fc b2  	fmadd.d	fs6, fs9, fa5, fs6
8000282c: 87 bc 07 3f  	fld	fs9, 1008(a5)
80002830: 43 7b 0d b3  	fmadd.d	fs6, fs10, fa6, fs6
80002834: 07 bd 07 48  	fld	fs10, 1152(a5)
80002838: 43 fb 1b b3  	fmadd.d	fs6, fs7, fa7, fs6
8000283c: 87 bb 07 51  	fld	fs7, 1296(a5)
80002840: 43 7b cc b3  	fmadd.d	fs6, fs8, ft8, fs6
80002844: 07 bc 07 5a  	fld	fs8, 1440(a5)
80002848: 43 fb dc b3  	fmadd.d	fs6, fs9, ft9, fs6
8000284c: 87 bc 07 63  	fld	fs9, 1584(a5)
80002850: 43 7b ed b3  	fmadd.d	fs6, fs10, ft10, fs6
80002854: 07 bd 07 6c  	fld	fs10, 1728(a5)
80002858: 43 fb 4b b2  	fmadd.d	fs6, fs7, ft4, fs6
8000285c: 87 bb 07 75  	fld	fs7, 1872(a5)
80002860: 43 7b 5c b2  	fmadd.d	fs6, fs8, ft5, fs6
80002864: 07 bc 07 7e  	fld	fs8, 2016(a5)
80002868: 93 84 87 43  	addi	s1, a5, 1080
8000286c: 43 fb 6c b2  	fmadd.d	fs6, fs9, ft6, fs6
80002870: 87 bc 84 43  	fld	fs9, 1080(s1)
80002874: 93 84 07 48  	addi	s1, a5, 1152
80002878: 43 7b 7d b2  	fmadd.d	fs6, fs10, ft7, fs6
8000287c: 07 bd 04 48  	fld	fs10, 1152(s1)
80002880: 93 84 87 4c  	addi	s1, a5, 1224
80002884: 43 fb ab b2  	fmadd.d	fs6, fs7, fa0, fs6
80002888: 87 bb 84 4c  	fld	fs7, 1224(s1)
8000288c: 93 84 07 51  	addi	s1, a5, 1296
80002890: 43 7b bc b2  	fmadd.d	fs6, fs8, fa1, fs6
80002894: 07 bc 04 51  	fld	fs8, 1296(s1)
80002898: 93 84 87 55  	addi	s1, a5, 1368
8000289c: 43 fb fc b3  	fmadd.d	fs6, fs9, ft11, fs6
800028a0: 87 bc 84 55  	fld	fs9, 1368(s1)
800028a4: 93 84 07 5a  	addi	s1, a5, 1440
800028a8: 43 7b 8d b2  	fmadd.d	fs6, fs10, fs0, fs6
800028ac: 07 bd 04 5a  	fld	fs10, 1440(s1)
800028b0: 93 87 87 5e  	addi	a5, a5, 1512
800028b4: 43 fb 9b b2  	fmadd.d	fs6, fs7, fs1, fs6
800028b8: 87 bb 87 5e  	fld	fs7, 1512(a5)
800028bc: 43 7b 2c b3  	fmadd.d	fs6, fs8, fs2, fs6
800028c0: 43 fb 3c b3  	fmadd.d	fs6, fs9, fs3, fs6
800028c4: 43 7b 4d b3  	fmadd.d	fs6, fs10, fs4, fs6
800028c8: 43 fb 5b b3  	fmadd.d	fs6, fs7, fs5, fs6
800028cc: b3 87 86 00  	add	a5, a3, s0
800028d0: 53 7b 3b 12  	fmul.d	fs6, fs6, ft3
;     for (j = 0; j < nj; j++) {
800028d4: 13 04 84 00  	addi	s0, s0, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800028d8: 27 b0 67 01  	fsd	fs6, 0(a5)
;     for (j = 0; j < nj; j++) {
800028dc: e3 10 c4 f2  	bne	s0, a2, 0x800027fc <.LBB0_81+0x1d4>
800028e0: 6f f0 9f d7  	j	0x80002658 <.LBB0_81+0x30>
800028e4: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < ni; i++) {
800028e8: 93 05 0a 66  	addi	a1, s4, 1632
800028ec: 93 82 05 66  	addi	t0, a1, 1632
800028f0: 93 05 0a 60  	addi	a1, s4, 1536
800028f4: 93 83 05 60  	addi	t2, a1, 1536
800028f8: b7 05 12 00  	lui	a1, 288
800028fc: 93 85 95 f4  	addi	a1, a1, -183
80002900: 33 36 ba 00  	sltu	a2, s4, a1
80002904: 83 26 c1 00  	lw	a3, 12(sp)
80002908: 33 f6 c6 00  	and	a2, a3, a2
8000290c: 93 d6 42 01  	srli	a3, t0, 20
80002910: b3 36 d0 00  	snez	a3, a3
80002914: 33 b7 b2 00  	sltu	a4, t0, a1
80002918: b3 f6 e6 00  	and	a3, a3, a4
8000291c: 33 76 d6 00  	and	a2, a2, a3
80002920: 93 d6 43 01  	srli	a3, t2, 20
80002924: b3 36 d0 00  	snez	a3, a3
80002928: b3 b5 b3 00  	sltu	a1, t2, a1
8000292c: b3 f5 b6 00  	and	a1, a3, a1
80002930: b3 f6 c5 00  	and	a3, a1, a2
80002934: 93 08 00 09  	addi	a7, zero, 144
80002938: 13 0e 80 00  	addi	t3, zero, 8
8000293c: 93 0e 70 01  	addi	t4, zero, 23
80002940: 13 0f 10 00  	addi	t5, zero, 1

80002944 <.LBB0_82>:
80002944: 97 35 00 00  	auipc	a1, 3
80002948: 93 85 c5 9f  	addi	a1, a1, -1540
8000294c: 87 b1 05 00  	fld	ft3, 0(a1)
80002950: 93 0f 20 00  	addi	t6, zero, 2
80002954: 93 05 00 0c  	addi	a1, zero, 192
80002958: 13 03 00 01  	addi	t1, zero, 16
8000295c: 13 06 09 00  	mv	a2, s2
80002960: 6f 00 00 01  	j	0x80002970 <.LBB0_82+0x2c>
;   for (i = 0; i < ni; i++) {
80002964: 13 05 15 00  	addi	a0, a0, 1
80002968: 13 06 06 0c  	addi	a2, a2, 192
8000296c: e3 00 65 b8  	beq	a0, t1, 0x800024ec <.LBB0_79+0x90>
;         D[i][j] += tmp[i][k] * C[k][j];
80002970: b3 07 15 03  	mul	a5, a0, a7
80002974: b3 87 f9 00  	add	a5, s3, a5
80002978: 07 b2 07 01  	fld	ft4, 16(a5)
8000297c: 87 b2 87 01  	fld	ft5, 24(a5)
80002980: 07 b3 07 02  	fld	ft6, 32(a5)
80002984: 87 b3 87 02  	fld	ft7, 40(a5)
80002988: 07 b5 07 03  	fld	fa0, 48(a5)
8000298c: 87 b5 87 03  	fld	fa1, 56(a5)
80002990: 07 b6 07 04  	fld	fa2, 64(a5)
80002994: 87 b6 87 04  	fld	fa3, 72(a5)
80002998: 07 b7 07 05  	fld	fa4, 80(a5)
8000299c: 87 b7 87 05  	fld	fa5, 88(a5)
800029a0: 07 b8 07 06  	fld	fa6, 96(a5)
800029a4: 87 b8 87 06  	fld	fa7, 104(a5)
800029a8: 07 be 07 07  	fld	ft8, 112(a5)
800029ac: 87 be 87 07  	fld	ft9, 120(a5)
800029b0: 07 bf 07 08  	fld	ft10, 128(a5)
800029b4: 87 bf 87 08  	fld	ft11, 136(a5)
800029b8: 07 b4 07 00  	fld	fs0, 0(a5)
800029bc: 87 b4 87 00  	fld	fs1, 8(a5)
800029c0: 93 07 00 00  	mv	a5, zero
800029c4: 63 8c 06 10  	beqz	a3, 0x80002adc <.LBB0_82+0x198>
;     for (j = 0; j < nl; j++) {
800029c8: 93 04 00 04  	addi	s1, zero, 64
800029cc: ab a0 9e 00  	scfgw	t4, s1
800029d0: 93 04 00 0c  	addi	s1, zero, 192
800029d4: ab 20 9e 00  	scfgw	t3, s1
800029d8: 93 04 00 02  	addi	s1, zero, 32
800029dc: ab 20 90 00  	scfgw	zero, s1
800029e0: 2b 20 0a 30  	scfgwi	s4, 768
800029e4: 93 04 0f 04  	addi	s1, t5, 64
800029e8: ab a0 9e 00  	scfgw	t4, s1
800029ec: 93 04 0f 0c  	addi	s1, t5, 192
800029f0: ab 20 9e 00  	scfgw	t3, s1
800029f4: 93 04 0f 02  	addi	s1, t5, 32
800029f8: ab 20 90 00  	scfgw	zero, s1
800029fc: 2b a0 12 30  	scfgwi	t0, 769
80002a00: 93 84 0f 04  	addi	s1, t6, 64
80002a04: ab a0 9e 00  	scfgw	t4, s1
80002a08: 93 84 0f 0c  	addi	s1, t6, 192
80002a0c: ab 20 9e 00  	scfgw	t3, s1
80002a10: 93 84 0f 02  	addi	s1, t6, 32
80002a14: ab 20 90 00  	scfgw	zero, s1
80002a18: 2b a0 23 30  	scfgwi	t2, 770
80002a1c: f3 e4 00 7c  	csrrsi	s1, 1984, 1
;       D[i][j] *= beta;
80002a20: 33 07 f6 00  	add	a4, a2, a5
80002a24: 07 39 07 00  	fld	fs2, 0(a4)
;         D[i][j] += tmp[i][k] * C[k][j];
80002a28: 33 04 fa 00  	add	s0, s4, a5
80002a2c: 07 3a 04 0c  	fld	fs4, 192(s0)
;       D[i][j] *= beta;
80002a30: 53 79 39 12  	fmul.d	fs2, fs2, ft3
;         D[i][j] += tmp[i][k] * C[k][j];
80002a34: 43 79 80 92  	fmadd.d	fs2, ft0, fs0, fs2
80002a38: 43 79 9a 92  	fmadd.d	fs2, fs4, fs1, fs2
80002a3c: 87 39 04 18  	fld	fs3, 384(s0)
80002a40: 07 3a 04 24  	fld	fs4, 576(s0)
80002a44: 87 3a 04 30  	fld	fs5, 768(s0)
80002a48: 07 3b 04 3c  	fld	fs6, 960(s0)
80002a4c: 43 f9 49 92  	fmadd.d	fs2, fs3, ft4, fs2
80002a50: 43 79 5a 92  	fmadd.d	fs2, fs4, ft5, fs2
80002a54: 43 f9 6a 92  	fmadd.d	fs2, fs5, ft6, fs2
80002a58: 43 79 7b 92  	fmadd.d	fs2, fs6, ft7, fs2
80002a5c: 87 39 04 48  	fld	fs3, 1152(s0)
80002a60: 07 3a 04 54  	fld	fs4, 1344(s0)
80002a64: 87 3a 04 60  	fld	fs5, 1536(s0)
80002a68: 07 3b 04 6c  	fld	fs6, 1728(s0)
80002a6c: 43 f9 a9 92  	fmadd.d	fs2, fs3, fa0, fs2
80002a70: 43 79 ba 92  	fmadd.d	fs2, fs4, fa1, fs2
80002a74: 43 f9 ca 92  	fmadd.d	fs2, fs5, fa2, fs2
80002a78: 43 79 db 92  	fmadd.d	fs2, fs6, fa3, fs2
80002a7c: 87 39 04 78  	fld	fs3, 1920(s0)
80002a80: 93 04 04 42  	addi	s1, s0, 1056
80002a84: 07 ba 04 42  	fld	fs4, 1056(s1)
80002a88: 93 04 04 48  	addi	s1, s0, 1152
80002a8c: 87 ba 04 48  	fld	fs5, 1152(s1)
80002a90: 93 04 04 4e  	addi	s1, s0, 1248
80002a94: 07 bb 04 4e  	fld	fs6, 1248(s1)
80002a98: 43 f9 e9 92  	fmadd.d	fs2, fs3, fa4, fs2
80002a9c: 43 79 fa 92  	fmadd.d	fs2, fs4, fa5, fs2
80002aa0: 43 f9 0a 93  	fmadd.d	fs2, fs5, fa6, fs2
80002aa4: 43 79 1b 93  	fmadd.d	fs2, fs6, fa7, fs2
80002aa8: 93 04 04 54  	addi	s1, s0, 1344
80002aac: 87 b9 04 54  	fld	fs3, 1344(s1)
80002ab0: 13 04 04 5a  	addi	s0, s0, 1440
80002ab4: 07 3a 04 5a  	fld	fs4, 1440(s0)
80002ab8: 43 f9 c9 93  	fmadd.d	fs2, fs3, ft8, fs2
80002abc: 43 79 da 93  	fmadd.d	fs2, fs4, ft9, fs2
80002ac0: 43 79 e1 93  	fmadd.d	fs2, ft2, ft10, fs2
80002ac4: 43 f9 f0 93  	fmadd.d	fs2, ft1, ft11, fs2
;     for (j = 0; j < nl; j++) {
80002ac8: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002acc: 27 30 27 01  	fsd	fs2, 0(a4)
;     for (j = 0; j < nl; j++) {
80002ad0: e3 98 b7 f4  	bne	a5, a1, 0x80002a20 <.LBB0_82+0xdc>
80002ad4: 73 f7 00 7c  	csrrci	a4, 1984, 1
80002ad8: 6f f0 df e8  	j	0x80002964 <.LBB0_82+0x20>
;       D[i][j] *= beta;
80002adc: b3 04 f6 00  	add	s1, a2, a5
80002ae0: 07 b9 04 00  	fld	fs2, 0(s1)
;         D[i][j] += tmp[i][k] * C[k][j];
80002ae4: 33 04 fa 00  	add	s0, s4, a5
80002ae8: 87 39 04 00  	fld	fs3, 0(s0)
80002aec: 07 3a 04 0c  	fld	fs4, 192(s0)
;       D[i][j] *= beta;
80002af0: 53 79 39 12  	fmul.d	fs2, fs2, ft3
;         D[i][j] += tmp[i][k] * C[k][j];
80002af4: 43 f9 89 92  	fmadd.d	fs2, fs3, fs0, fs2
80002af8: 43 79 9a 92  	fmadd.d	fs2, fs4, fs1, fs2
80002afc: 87 39 04 18  	fld	fs3, 384(s0)
80002b00: 07 3a 04 24  	fld	fs4, 576(s0)
80002b04: 87 3a 04 30  	fld	fs5, 768(s0)
80002b08: 07 3b 04 3c  	fld	fs6, 960(s0)
80002b0c: 43 f9 49 92  	fmadd.d	fs2, fs3, ft4, fs2
80002b10: 43 79 5a 92  	fmadd.d	fs2, fs4, ft5, fs2
80002b14: 43 f9 6a 92  	fmadd.d	fs2, fs5, ft6, fs2
80002b18: 43 79 7b 92  	fmadd.d	fs2, fs6, ft7, fs2
80002b1c: 87 39 04 48  	fld	fs3, 1152(s0)
80002b20: 07 3a 04 54  	fld	fs4, 1344(s0)
80002b24: 87 3a 04 60  	fld	fs5, 1536(s0)
80002b28: 07 3b 04 6c  	fld	fs6, 1728(s0)
80002b2c: 43 f9 a9 92  	fmadd.d	fs2, fs3, fa0, fs2
80002b30: 43 79 ba 92  	fmadd.d	fs2, fs4, fa1, fs2
80002b34: 43 f9 ca 92  	fmadd.d	fs2, fs5, fa2, fs2
80002b38: 43 79 db 92  	fmadd.d	fs2, fs6, fa3, fs2
80002b3c: 87 39 04 78  	fld	fs3, 1920(s0)
80002b40: 13 07 04 42  	addi	a4, s0, 1056
80002b44: 07 3a 07 42  	fld	fs4, 1056(a4)
80002b48: 13 07 04 48  	addi	a4, s0, 1152
80002b4c: 87 3a 07 48  	fld	fs5, 1152(a4)
80002b50: 13 07 04 4e  	addi	a4, s0, 1248
80002b54: 07 3b 07 4e  	fld	fs6, 1248(a4)
80002b58: 43 f9 e9 92  	fmadd.d	fs2, fs3, fa4, fs2
80002b5c: 43 79 fa 92  	fmadd.d	fs2, fs4, fa5, fs2
80002b60: 43 f9 0a 93  	fmadd.d	fs2, fs5, fa6, fs2
80002b64: 43 79 1b 93  	fmadd.d	fs2, fs6, fa7, fs2
80002b68: 13 07 04 54  	addi	a4, s0, 1344
80002b6c: 87 39 07 54  	fld	fs3, 1344(a4)
80002b70: 13 07 04 5a  	addi	a4, s0, 1440
80002b74: 07 3a 07 5a  	fld	fs4, 1440(a4)
80002b78: 13 07 04 60  	addi	a4, s0, 1536
80002b7c: 87 3a 07 60  	fld	fs5, 1536(a4)
80002b80: 13 07 04 66  	addi	a4, s0, 1632
80002b84: 07 3b 07 66  	fld	fs6, 1632(a4)
80002b88: 43 f9 c9 93  	fmadd.d	fs2, fs3, ft8, fs2
80002b8c: 43 79 da 93  	fmadd.d	fs2, fs4, ft9, fs2
80002b90: 43 f9 ea 93  	fmadd.d	fs2, fs5, ft10, fs2
80002b94: 43 79 fb 93  	fmadd.d	fs2, fs6, ft11, fs2
;     for (j = 0; j < nl; j++) {
80002b98: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002b9c: 27 b0 24 01  	fsd	fs2, 0(s1)
;     for (j = 0; j < nl; j++) {
80002ba0: e3 9e b7 f2  	bne	a5, a1, 0x80002adc <.LBB0_82+0x198>
80002ba4: 6f f0 1f dc  	j	0x80002964 <.LBB0_82+0x20>
;     for (int i = 0; i < n; i++){
80002ba8: 13 05 09 06  	addi	a0, s2, 96
80002bac: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002bb0: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002bb4: 07 32 05 fa  	fld	ft4, -96(a0)
80002bb8: 87 32 85 fa  	fld	ft5, -88(a0)
80002bbc: 07 33 05 fb  	fld	ft6, -80(a0)
80002bc0: 87 33 85 fb  	fld	ft7, -72(a0)
80002bc4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002bc8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002bcc: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002bd0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002bd4: 07 32 05 fc  	fld	ft4, -64(a0)
80002bd8: 87 32 85 fc  	fld	ft5, -56(a0)
80002bdc: 07 33 05 fd  	fld	ft6, -48(a0)
80002be0: 87 33 85 fd  	fld	ft7, -40(a0)
80002be4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002be8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002bec: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002bf0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002bf4: 07 32 05 fe  	fld	ft4, -32(a0)
80002bf8: 87 32 85 fe  	fld	ft5, -24(a0)
80002bfc: 07 33 05 ff  	fld	ft6, -16(a0)
80002c00: 87 33 85 ff  	fld	ft7, -8(a0)
80002c04: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002c08: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002c0c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002c10: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002c14: 07 32 05 00  	fld	ft4, 0(a0)
80002c18: 87 32 85 00  	fld	ft5, 8(a0)
80002c1c: 07 33 05 01  	fld	ft6, 16(a0)
80002c20: 87 33 85 01  	fld	ft7, 24(a0)
80002c24: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002c28: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002c2c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002c30: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002c34: 07 32 05 02  	fld	ft4, 32(a0)
80002c38: 87 32 85 02  	fld	ft5, 40(a0)
80002c3c: 07 33 05 03  	fld	ft6, 48(a0)
80002c40: 87 33 85 03  	fld	ft7, 56(a0)
80002c44: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002c48: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002c4c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002c50: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80002c54: 07 32 05 04  	fld	ft4, 64(a0)
80002c58: 87 32 85 04  	fld	ft5, 72(a0)
80002c5c: 07 33 05 05  	fld	ft6, 80(a0)
80002c60: 87 33 85 05  	fld	ft7, 88(a0)
80002c64: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002c68: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80002c6c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80002c70: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80002c74: 93 85 f5 ff  	addi	a1, a1, -1
80002c78: 13 05 05 0c  	addi	a0, a0, 192
80002c7c: e3 9c 05 f2  	bnez	a1, 0x80002bb4 <.LBB0_82+0x270>

80002c80 <.LBB0_83>:
80002c80: 17 25 00 00  	auipc	a0, 2
80002c84: 13 05 85 6c  	addi	a0, a0, 1736
80002c88: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80002c8c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80002c90: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80002c94: 27 3c 81 08  	fsd	fs0, 152(sp)
80002c98: 03 26 81 09  	lw	a2, 152(sp)
80002c9c: 83 26 c1 09  	lw	a3, 156(sp)

80002ca0 <.LBB0_84>:
80002ca0: 17 25 00 00  	auipc	a0, 2
80002ca4: 13 05 55 3c  	addi	a0, a0, 965
80002ca8: 97 00 00 00  	auipc	ra, 0
80002cac: e7 80 00 08  	jalr	128(ra)

80002cb0 <.LBB0_85>:
80002cb0: 17 25 00 00  	auipc	a0, 2
80002cb4: 13 05 05 6a  	addi	a0, a0, 1696
80002cb8: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80002cbc: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80002cc0: 07 3d 01 0a  	fld	fs10, 160(sp)
80002cc4: 87 3c 81 0a  	fld	fs9, 168(sp)
80002cc8: 07 3c 01 0b  	fld	fs8, 176(sp)
80002ccc: 87 3b 81 0b  	fld	fs7, 184(sp)
80002cd0: 07 3b 01 0c  	fld	fs6, 192(sp)
80002cd4: 87 3a 81 0c  	fld	fs5, 200(sp)
80002cd8: 07 3a 01 0d  	fld	fs4, 208(sp)
80002cdc: 87 39 81 0d  	fld	fs3, 216(sp)
80002ce0: 07 39 01 0e  	fld	fs2, 224(sp)
80002ce4: 87 34 81 0e  	fld	fs1, 232(sp)
80002ce8: 07 34 01 0f  	fld	fs0, 240(sp)
80002cec: 83 2d c1 0f  	lw	s11, 252(sp)
80002cf0: 03 2d 01 10  	lw	s10, 256(sp)
80002cf4: 83 2c 41 10  	lw	s9, 260(sp)
80002cf8: 03 2c 81 10  	lw	s8, 264(sp)
80002cfc: 83 2b c1 10  	lw	s7, 268(sp)
80002d00: 03 2b 01 11  	lw	s6, 272(sp)
80002d04: 83 2a 41 11  	lw	s5, 276(sp)
80002d08: 03 2a 81 11  	lw	s4, 280(sp)
80002d0c: 83 29 c1 11  	lw	s3, 284(sp)
80002d10: 03 29 01 12  	lw	s2, 288(sp)
80002d14: 83 24 41 12  	lw	s1, 292(sp)
80002d18: 03 24 81 12  	lw	s0, 296(sp)
80002d1c: 83 20 c1 12  	lw	ra, 300(sp)
80002d20: 13 01 01 13  	addi	sp, sp, 304
80002d24: 67 80 00 00  	ret

80002d28 <printf_>:
; {
80002d28: 13 01 01 fd  	addi	sp, sp, -48
80002d2c: 23 26 11 00  	sw	ra, 12(sp)
80002d30: 93 02 05 00  	mv	t0, a0
80002d34: 23 26 11 03  	sw	a7, 44(sp)
80002d38: 23 24 01 03  	sw	a6, 40(sp)
80002d3c: 23 22 f1 02  	sw	a5, 36(sp)
80002d40: 23 20 e1 02  	sw	a4, 32(sp)
80002d44: 23 2e d1 00  	sw	a3, 28(sp)
80002d48: 23 2c c1 00  	sw	a2, 24(sp)
80002d4c: 23 2a b1 00  	sw	a1, 20(sp)
80002d50: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002d54: 23 24 a1 00  	sw	a0, 8(sp)

80002d58 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002d58: 17 15 00 00  	auipc	a0, 1
80002d5c: 13 05 45 c2  	addi	a0, a0, -988
80002d60: 93 05 71 00  	addi	a1, sp, 7
80002d64: 13 06 f0 ff  	addi	a2, zero, -1
80002d68: 13 07 41 01  	addi	a4, sp, 20
80002d6c: 93 86 02 00  	mv	a3, t0
80002d70: 97 00 00 00  	auipc	ra, 0
80002d74: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002d78: 83 20 c1 00  	lw	ra, 12(sp)
80002d7c: 13 01 01 03  	addi	sp, sp, 48
80002d80: 67 80 00 00  	ret

80002d84 <_vsnprintf.llvm.17592004524093383706>:
; {
80002d84: 13 01 01 f9  	addi	sp, sp, -112
80002d88: 23 26 11 06  	sw	ra, 108(sp)
80002d8c: 23 24 81 06  	sw	s0, 104(sp)
80002d90: 23 22 91 06  	sw	s1, 100(sp)
80002d94: 23 20 21 07  	sw	s2, 96(sp)
80002d98: 23 2e 31 05  	sw	s3, 92(sp)
80002d9c: 23 2c 41 05  	sw	s4, 88(sp)
80002da0: 23 2a 51 05  	sw	s5, 84(sp)
80002da4: 23 28 61 05  	sw	s6, 80(sp)
80002da8: 23 26 71 05  	sw	s7, 76(sp)
80002dac: 23 24 81 05  	sw	s8, 72(sp)
80002db0: 23 22 91 05  	sw	s9, 68(sp)
80002db4: 23 20 a1 05  	sw	s10, 64(sp)
80002db8: 23 2e b1 03  	sw	s11, 60(sp)
80002dbc: 93 09 07 00  	mv	s3, a4
80002dc0: 13 84 06 00  	mv	s0, a3
80002dc4: 93 0a 06 00  	mv	s5, a2
80002dc8: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80002dcc: 63 86 05 00  	beqz	a1, 0x80002dd8 <.LBB1_183>
80002dd0: 13 09 05 00  	mv	s2, a0
80002dd4: 6f 00 c0 00  	j	0x80002de0 <.LBB1_183+0x8>

80002dd8 <.LBB1_183>:
80002dd8: 17 19 00 00  	auipc	s2, 1
80002ddc: 13 09 09 c5  	addi	s2, s2, -944
80002de0: 13 0c 00 00  	mv	s8, zero
80002de4: 13 0b 50 02  	addi	s6, zero, 37
80002de8: 93 0d 00 01  	addi	s11, zero, 16
80002dec: 93 0b e0 02  	addi	s7, zero, 46
80002df0: 37 15 00 00  	lui	a0, 1
80002df4: 13 05 05 80  	addi	a0, a0, -2048
80002df8: 23 2c a1 00  	sw	a0, 24(sp)
80002dfc: 37 05 01 00  	lui	a0, 16
80002e00: 13 05 f5 ff  	addi	a0, a0, -1
80002e04: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80002e08: 13 0d 24 00  	addi	s10, s0, 2
80002e0c: 93 0c 0c 00  	mv	s9, s8
80002e10: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80002e14: 03 45 04 00  	lbu	a0, 0(s0)
80002e18: e3 04 05 30  	beqz	a0, 0x80003920 <.LBB1_124+0x3b0>
80002e1c: 63 08 65 03  	beq	a0, s6, 0x80002e4c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80002e20: 93 84 1c 00  	addi	s1, s9, 1
80002e24: 93 05 0a 00  	mv	a1, s4
80002e28: 13 86 0c 00  	mv	a2, s9
80002e2c: 93 86 0a 00  	mv	a3, s5
80002e30: e7 00 09 00  	jalr	s2
;       format++;
80002e34: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80002e38: 13 0d 1d 00  	addi	s10, s10, 1
80002e3c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80002e40: 03 45 04 00  	lbu	a0, 0(s0)
80002e44: e3 1c 05 fc  	bnez	a0, 0x80002e1c <.LBB1_183+0x44>
80002e48: 6f 00 90 2d  	j	0x80003920 <.LBB1_124+0x3b0>
;     flags = 0U;
80002e4c: 13 04 00 00  	mv	s0, zero
80002e50: 6f 00 00 01  	j	0x80002e60 <.LBB1_9+0x8>

80002e54 <.LBB1_8>:
80002e54: 93 05 00 01  	addi	a1, zero, 16

80002e58 <.LBB1_9>:
80002e58: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80002e5c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80002e60: 03 45 fd ff  	lbu	a0, -1(s10)
80002e64: 93 05 05 fe  	addi	a1, a0, -32
80002e68: 63 ec bd 02  	bltu	s11, a1, 0x80002ea0 <.LBB1_15>
80002e6c: 93 95 25 00  	slli	a1, a1, 2

80002e70 <.LBB1_184>:
80002e70: 17 26 00 00  	auipc	a2, 2
80002e74: 13 06 46 21  	addi	a2, a2, 532
80002e78: b3 85 c5 00  	add	a1, a1, a2
80002e7c: 03 a6 05 00  	lw	a2, 0(a1)
80002e80: 93 05 10 00  	addi	a1, zero, 1
80002e84: 67 00 06 00  	jr	a2

80002e88 <.LBB1_12>:
80002e88: 93 05 80 00  	addi	a1, zero, 8
80002e8c: 6f f0 df fc  	j	0x80002e58 <.LBB1_9>

80002e90 <.LBB1_13>:
80002e90: 93 05 40 00  	addi	a1, zero, 4
80002e94: 6f f0 5f fc  	j	0x80002e58 <.LBB1_9>

80002e98 <.LBB1_14>:
80002e98: 93 05 20 00  	addi	a1, zero, 2
80002e9c: 6f f0 df fb  	j	0x80002e58 <.LBB1_9>

80002ea0 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80002ea0: 93 05 05 fd  	addi	a1, a0, -48
80002ea4: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80002ea8: 93 05 fd ff  	addi	a1, s10, -1
80002eac: 93 06 90 00  	addi	a3, zero, 9
80002eb0: 63 ee c6 06  	bltu	a3, a2, 0x80002f2c <.LBB1_15+0x8c>
80002eb4: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002eb8: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002ebc: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002ec0: b3 06 8b 03  	mul	a3, s6, s8
80002ec4: 93 85 15 00  	addi	a1, a1, 1
80002ec8: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002ecc: 93 06 05 fd  	addi	a3, a0, -48
80002ed0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002ed4: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80002ed8: e3 e0 86 ff  	bltu	a3, s8, 0x80002eb8 <.LBB1_15+0x18>
80002edc: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002ee0: 63 16 75 0b  	bne	a0, s7, 0x80002f8c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80002ee4: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80002ee8: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80002eec: 93 05 05 fd  	addi	a1, a0, -48
80002ef0: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80002ef4: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80002ef8: 93 06 90 00  	addi	a3, zero, 9
80002efc: 63 e0 c6 06  	bltu	a3, a2, 0x80002f5c <.LBB1_15+0xbc>
80002f00: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002f04: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002f08: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002f0c: b3 86 8b 03  	mul	a3, s7, s8
80002f10: 93 85 15 00  	addi	a1, a1, 1
80002f14: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002f18: 93 06 05 fd  	addi	a3, a0, -48
80002f1c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002f20: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80002f24: e3 e0 86 ff  	bltu	a3, s8, 0x80002f04 <.LBB1_15+0x64>
80002f28: 6f 00 00 07  	j	0x80002f98 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80002f2c: 13 06 a0 02  	addi	a2, zero, 42
80002f30: 63 18 c5 04  	bne	a0, a2, 0x80002f80 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80002f34: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80002f38: 63 d4 05 00  	bgez	a1, 0x80002f40 <.LBB1_15+0xa0>
80002f3c: 13 64 24 00  	ori	s0, s0, 2
80002f40: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80002f44: 03 45 0d 00  	lbu	a0, 0(s10)
80002f48: 13 d6 f5 41  	srai	a2, a1, 31
80002f4c: b3 85 c5 00  	add	a1, a1, a2
80002f50: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80002f54: e3 08 75 f9  	beq	a0, s7, 0x80002ee4 <.LBB1_15+0x44>
80002f58: 6f 00 40 03  	j	0x80002f8c <.LBB1_15+0xec>
;       else if (*format == '*') {
80002f5c: 13 06 a0 02  	addi	a2, zero, 42
80002f60: 63 1a c5 02  	bne	a0, a2, 0x80002f94 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80002f64: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80002f68: 63 44 70 01  	bgtz	s7, 0x80002f70 <.LBB1_15+0xd0>
80002f6c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80002f70: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80002f74: 13 0d 2d 00  	addi	s10, s10, 2
80002f78: 93 89 49 00  	addi	s3, s3, 4
80002f7c: 6f 00 00 02  	j	0x80002f9c <.LBB1_15+0xfc>
80002f80: 13 0b 00 00  	mv	s6, zero
80002f84: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002f88: e3 0e 75 f5  	beq	a0, s7, 0x80002ee4 <.LBB1_15+0x44>
80002f8c: 93 0b 00 00  	mv	s7, zero
80002f90: 6f 00 c0 00  	j	0x80002f9c <.LBB1_15+0xfc>
80002f94: 93 0b 00 00  	mv	s7, zero
80002f98: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80002f9c: 93 05 85 f9  	addi	a1, a0, -104
80002fa0: 13 d6 15 00  	srli	a2, a1, 1
80002fa4: 93 95 f5 01  	slli	a1, a1, 31
80002fa8: b3 e5 c5 00  	or	a1, a1, a2
80002fac: 13 06 90 00  	addi	a2, zero, 9
80002fb0: 63 62 b6 06  	bltu	a2, a1, 0x80003014 <.LBB1_42>
80002fb4: 93 95 25 00  	slli	a1, a1, 2

80002fb8 <.LBB1_185>:
80002fb8: 17 26 00 00  	auipc	a2, 2
80002fbc: 13 06 06 11  	addi	a2, a2, 272
80002fc0: b3 85 c5 00  	add	a1, a1, a2
80002fc4: 83 a6 05 00  	lw	a3, 0(a1)
80002fc8: 93 05 10 00  	addi	a1, zero, 1
80002fcc: 13 06 00 10  	addi	a2, zero, 256
80002fd0: 67 80 06 00  	jr	a3

80002fd4 <.LBB1_36>:
;         if (*format == 'h') {
80002fd4: 03 45 1d 00  	lbu	a0, 1(s10)
80002fd8: 93 05 80 06  	addi	a1, zero, 104
80002fdc: 63 12 b5 12  	bne	a0, a1, 0x80003100 <.LBB1_53+0x48>
80002fe0: 93 05 20 00  	addi	a1, zero, 2
80002fe4: 13 06 00 0c  	addi	a2, zero, 192
80002fe8: 6f 00 00 02  	j	0x80003008 <.LBB1_41>

80002fec <.LBB1_38>:
80002fec: 13 06 00 20  	addi	a2, zero, 512
80002ff0: 6f 00 80 01  	j	0x80003008 <.LBB1_41>

80002ff4 <.LBB1_39>:
;         if (*format == 'l') {
80002ff4: 03 45 1d 00  	lbu	a0, 1(s10)
80002ff8: 93 05 c0 06  	addi	a1, zero, 108
80002ffc: 63 18 b5 10  	bne	a0, a1, 0x8000310c <.LBB1_53+0x54>
80003000: 93 05 20 00  	addi	a1, zero, 2
80003004: 13 06 00 30  	addi	a2, zero, 768

80003008 <.LBB1_41>:
80003008: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000300c: 03 45 0d 00  	lbu	a0, 0(s10)
80003010: 33 64 c4 00  	or	s0, s0, a2

80003014 <.LBB1_42>:
;     switch (*format) {
80003014: 93 05 b5 fd  	addi	a1, a0, -37
80003018: 13 06 30 05  	addi	a2, zero, 83
8000301c: 63 64 b6 10  	bltu	a2, a1, 0x80003124 <.LBB1_59>
80003020: 93 95 25 00  	slli	a1, a1, 2

80003024 <.LBB1_186>:
80003024: 17 26 00 00  	auipc	a2, 2
80003028: 13 06 c6 0c  	addi	a2, a2, 204
8000302c: b3 85 c5 00  	add	a1, a1, a2
80003030: 03 a6 05 00  	lw	a2, 0(a1)
80003034: 93 05 80 00  	addi	a1, zero, 8
80003038: 13 0c 00 01  	addi	s8, zero, 16
8000303c: 67 00 06 00  	jr	a2

80003040 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003040: 13 74 f4 fe  	andi	s0, s0, -17
80003044: 13 0c a0 00  	addi	s8, zero, 10

80003048 <.LBB1_45>:
;         if (*format == 'X') {
80003048: 93 05 80 05  	addi	a1, zero, 88
8000304c: 63 14 b5 00  	bne	a0, a1, 0x80003054 <.LBB1_45+0xc>
80003050: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003054: 93 05 40 06  	addi	a1, zero, 100
80003058: 63 08 b5 0e  	beq	a0, a1, 0x80003148 <.LBB1_62+0x8>
8000305c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003060: 13 06 90 06  	addi	a2, zero, 105
80003064: 63 02 c5 0e  	beq	a0, a2, 0x80003148 <.LBB1_62+0x8>
80003068: 6f 00 80 0d  	j	0x80003140 <.LBB1_62>

8000306c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
8000306c: 93 05 60 04  	addi	a1, zero, 70
80003070: 63 14 b5 00  	bne	a0, a1, 0x80003078 <.LBB1_49+0xc>
80003074: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003078: 13 85 79 00  	addi	a0, s3, 7
8000307c: 13 75 85 ff  	andi	a0, a0, -8
80003080: 07 35 05 00  	fld	fa0, 0(a0)
80003084: 93 09 85 00  	addi	s3, a0, 8
80003088: 13 05 09 00  	mv	a0, s2
8000308c: 93 05 0a 00  	mv	a1, s4
80003090: 13 86 0c 00  	mv	a2, s9
80003094: 93 86 0a 00  	mv	a3, s5
80003098: 13 87 0b 00  	mv	a4, s7
8000309c: 93 07 0b 00  	mv	a5, s6
800030a0: 13 08 04 00  	mv	a6, s0
800030a4: 97 10 00 00  	auipc	ra, 1
800030a8: e7 80 80 98  	jalr	-1656(ra)
800030ac: 6f 00 00 7c  	j	0x8000386c <.LBB1_124+0x2fc>

800030b0 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800030b0: 83 25 81 01  	lw	a1, 24(sp)
800030b4: 33 64 b4 00  	or	s0, s0, a1

800030b8 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800030b8: 13 65 25 00  	ori	a0, a0, 2
800030bc: 93 05 70 04  	addi	a1, zero, 71
800030c0: 63 14 b5 00  	bne	a0, a1, 0x800030c8 <.LBB1_53+0x10>
800030c4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800030c8: 13 85 79 00  	addi	a0, s3, 7
800030cc: 13 75 85 ff  	andi	a0, a0, -8
800030d0: 07 35 05 00  	fld	fa0, 0(a0)
800030d4: 93 09 85 00  	addi	s3, a0, 8
800030d8: 13 05 09 00  	mv	a0, s2
800030dc: 93 05 0a 00  	mv	a1, s4
800030e0: 13 86 0c 00  	mv	a2, s9
800030e4: 93 86 0a 00  	mv	a3, s5
800030e8: 13 87 0b 00  	mv	a4, s7
800030ec: 93 07 0b 00  	mv	a5, s6
800030f0: 13 08 04 00  	mv	a6, s0
800030f4: 97 10 00 00  	auipc	ra, 1
800030f8: e7 80 80 01  	jalr	24(ra)
800030fc: 6f 00 00 77  	j	0x8000386c <.LBB1_124+0x2fc>
80003100: 13 64 04 08  	ori	s0, s0, 128
80003104: 13 0d 1d 00  	addi	s10, s10, 1
80003108: 6f f0 df f0  	j	0x80003014 <.LBB1_42>
8000310c: 13 64 04 10  	ori	s0, s0, 256
80003110: 13 0d 1d 00  	addi	s10, s10, 1
80003114: 6f f0 1f f0  	j	0x80003014 <.LBB1_42>

80003118 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003118: 13 8c 1c 00  	addi	s8, s9, 1
8000311c: 13 05 50 02  	addi	a0, zero, 37
80003120: 6f 00 80 00  	j	0x80003128 <.LBB1_59+0x4>

80003124 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003124: 13 8c 1c 00  	addi	s8, s9, 1
80003128: 93 05 0a 00  	mv	a1, s4
8000312c: 13 86 0c 00  	mv	a2, s9
80003130: 93 86 0a 00  	mv	a3, s5
80003134: e7 00 09 00  	jalr	s2
80003138: 6f 00 80 73  	j	0x80003870 <.LBB1_124+0x300>

8000313c <.LBB1_61>:
8000313c: 93 05 20 00  	addi	a1, zero, 2

80003140 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003140: 13 74 34 ff  	andi	s0, s0, -13
80003144: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003148: 93 75 04 40  	andi	a1, s0, 1024
8000314c: 63 84 05 00  	beqz	a1, 0x80003154 <.LBB1_62+0x14>
80003150: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003154: 93 05 90 06  	addi	a1, zero, 105
80003158: 63 06 b5 00  	beq	a0, a1, 0x80003164 <.LBB1_62+0x24>
8000315c: 93 05 40 06  	addi	a1, zero, 100
80003160: 63 1c b5 12  	bne	a0, a1, 0x80003298 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003164: 13 75 04 20  	andi	a0, s0, 512
80003168: 63 16 05 02  	bnez	a0, 0x80003194 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
8000316c: 13 75 04 10  	andi	a0, s0, 256
80003170: 63 1c 05 14  	bnez	a0, 0x800032c8 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003174: 13 75 04 04  	andi	a0, s0, 64
80003178: 63 18 05 4e  	bnez	a0, 0x80003668 <.LBB1_124+0xf8>
8000317c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003180: 93 75 04 08  	andi	a1, s0, 128
80003184: 63 84 05 4e  	beqz	a1, 0x8000366c <.LBB1_124+0xfc>
80003188: 13 15 08 01  	slli	a0, a6, 16
8000318c: 13 58 05 41  	srai	a6, a0, 16
80003190: 6f 00 c0 4d  	j	0x8000366c <.LBB1_124+0xfc>
80003194: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003198: 13 85 79 00  	addi	a0, s3, 7
8000319c: 13 75 85 ff  	andi	a0, a0, -8
800031a0: 83 29 05 00  	lw	s3, 0(a0)
800031a4: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800031a8: 13 65 45 00  	ori	a0, a0, 4
800031ac: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800031b0: 23 24 a1 00  	sw	a0, 8(sp)
800031b4: 33 e5 a9 00  	or	a0, s3, a0
800031b8: 63 14 05 00  	bnez	a0, 0x800031c0 <.LBB1_62+0x80>
800031bc: 13 74 f4 fe  	andi	s0, s0, -17
800031c0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800031c4: 93 75 04 40  	andi	a1, s0, 1024
800031c8: 93 d5 a5 00  	srli	a1, a1, 10
800031cc: 33 75 b5 00  	and	a0, a0, a1
800031d0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800031d4: 63 14 05 0a  	bnez	a0, 0x8000327c <.LBB1_62+0x13c>
800031d8: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800031dc: 63 da 04 00  	bgez	s1, 0x800031f0 <.LBB1_62+0xb0>
800031e0: 33 35 30 01  	snez	a0, s3
800031e4: b3 09 30 41  	neg	s3, s3
800031e8: 33 85 a4 00  	add	a0, s1, a0
800031ec: b3 04 a0 40  	neg	s1, a0
800031f0: 13 09 00 00  	mv	s2, zero
800031f4: 13 75 04 02  	andi	a0, s0, 32
800031f8: 13 45 15 06  	xori	a0, a0, 97
800031fc: 13 05 65 0f  	addi	a0, a0, 246
80003200: 23 2a a1 00  	sw	a0, 20(sp)
80003204: 6f 00 40 02  	j	0x80003228 <.LBB1_62+0xe8>
80003208: 13 06 10 00  	addi	a2, zero, 1
8000320c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003210: 93 36 f9 01  	sltiu	a3, s2, 31
80003214: 33 f6 c6 00  	and	a2, a3, a2
80003218: 13 89 07 00  	mv	s2, a5
8000321c: 93 09 05 00  	mv	s3, a0
80003220: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003224: 63 0c 06 04  	beqz	a2, 0x8000327c <.LBB1_62+0x13c>
;       value /= base;
80003228: 13 85 09 00  	mv	a0, s3
8000322c: 93 85 04 00  	mv	a1, s1
80003230: 13 06 0c 00  	mv	a2, s8
80003234: 93 06 00 00  	mv	a3, zero
80003238: 97 d0 ff ff  	auipc	ra, 1048573
8000323c: e7 80 80 dc  	jalr	-568(ra)
80003240: 33 06 85 03  	mul	a2, a0, s8
80003244: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003248: 13 77 e6 0f  	andi	a4, a2, 254
8000324c: 93 06 00 03  	addi	a3, zero, 48
80003250: 93 07 a0 00  	addi	a5, zero, 10
80003254: 63 64 f7 00  	bltu	a4, a5, 0x8000325c <.LBB1_62+0x11c>
80003258: 83 26 41 01  	lw	a3, 20(sp)
8000325c: 33 86 c6 00  	add	a2, a3, a2
80003260: 93 06 c1 01  	addi	a3, sp, 28
80003264: b3 86 26 01  	add	a3, a3, s2
80003268: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000326c: e3 9e 04 f8  	bnez	s1, 0x80003208 <.LBB1_62+0xc8>
80003270: 33 b6 89 01  	sltu	a2, s3, s8
80003274: 13 46 16 00  	xori	a2, a2, 1
80003278: 6f f0 5f f9  	j	0x8000320c <.LBB1_62+0xcc>
8000327c: 03 25 41 00  	lw	a0, 4(sp)
80003280: 93 09 85 00  	addi	s3, a0, 8
80003284: 03 25 81 00  	lw	a0, 8(sp)
80003288: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000328c: 13 07 c1 01  	addi	a4, sp, 28
80003290: 03 29 c1 00  	lw	s2, 12(sp)
80003294: 6f 00 80 47  	j	0x8000370c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003298: 13 75 04 20  	andi	a0, s0, 512
8000329c: 63 12 05 0c  	bnez	a0, 0x80003360 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800032a0: 13 75 04 10  	andi	a0, s0, 256
800032a4: 63 1e 05 46  	bnez	a0, 0x80003720 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800032a8: 13 75 04 04  	andi	a0, s0, 64
800032ac: 63 10 05 50  	bnez	a0, 0x800037ac <.LBB1_124+0x23c>
800032b0: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800032b4: 93 75 04 08  	andi	a1, s0, 128
800032b8: 63 8c 05 4e  	beqz	a1, 0x800037b0 <.LBB1_124+0x240>
800032bc: 83 25 01 01  	lw	a1, 16(sp)
800032c0: 33 75 b5 00  	and	a0, a0, a1
800032c4: 6f 00 c0 4e  	j	0x800037b0 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800032c8: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800032cc: 63 14 08 00  	bnez	a6, 0x800032d4 <.LBB1_62+0x194>
800032d0: 13 74 f4 fe  	andi	s0, s0, -17
800032d4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800032d8: 13 76 04 40  	andi	a2, s0, 1024
800032dc: 13 56 a6 00  	srli	a2, a2, 10
800032e0: b3 f5 c5 00  	and	a1, a1, a2
800032e4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800032e8: 63 9c 05 40  	bnez	a1, 0x80003700 <.LBB1_124+0x190>
800032ec: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800032f0: 13 56 f8 41  	srai	a2, a6, 31
800032f4: b3 06 c8 00  	add	a3, a6, a2
800032f8: b3 c6 c6 00  	xor	a3, a3, a2
800032fc: 13 76 04 02  	andi	a2, s0, 32
80003300: 13 46 16 06  	xori	a2, a2, 97
80003304: 93 08 66 0f  	addi	a7, a2, 246
80003308: 6f 00 40 03  	j	0x8000333c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000330c: 33 05 f6 00  	add	a0, a2, a5
80003310: 93 87 15 00  	addi	a5, a1, 1
80003314: 13 06 c1 01  	addi	a2, sp, 28
80003318: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000331c: b3 b6 86 01  	sltu	a3, a3, s8
80003320: 93 c6 16 00  	xori	a3, a3, 1
80003324: 93 b5 f5 01  	sltiu	a1, a1, 31
80003328: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000332c: 23 00 a6 00  	sb	a0, 0(a2)
80003330: 93 85 07 00  	mv	a1, a5
80003334: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003338: 63 84 04 3c  	beqz	s1, 0x80003700 <.LBB1_124+0x190>
;       value /= base;
8000333c: 33 d7 86 03  	divu	a4, a3, s8
80003340: 33 06 87 03  	mul	a2, a4, s8
80003344: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003348: 13 f5 e7 0f  	andi	a0, a5, 254
8000334c: 13 06 00 03  	addi	a2, zero, 48
80003350: 93 04 a0 00  	addi	s1, zero, 10
80003354: e3 6c 95 fa  	bltu	a0, s1, 0x8000330c <.LBB1_62+0x1cc>
80003358: 13 86 08 00  	mv	a2, a7
8000335c: 6f f0 1f fb  	j	0x8000330c <.LBB1_62+0x1cc>
80003360: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003364: 13 85 79 00  	addi	a0, s3, 7
80003368: 93 75 85 ff  	andi	a1, a0, -8
8000336c: 03 a9 05 00  	lw	s2, 0(a1)
80003370: 13 e5 45 00  	ori	a0, a1, 4
80003374: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003378: 33 65 39 01  	or	a0, s2, s3
8000337c: 23 24 b1 00  	sw	a1, 8(sp)
80003380: 63 14 05 00  	bnez	a0, 0x80003388 <.LBB1_62+0x248>
80003384: 13 74 f4 fe  	andi	s0, s0, -17
80003388: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000338c: 93 75 04 40  	andi	a1, s0, 1024
80003390: 93 d5 a5 00  	srli	a1, a1, 10
80003394: 33 75 b5 00  	and	a0, a0, a1
80003398: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000339c: 63 18 05 08  	bnez	a0, 0x8000342c <.LBB1_62+0x2ec>
800033a0: 93 04 00 00  	mv	s1, zero
800033a4: 13 75 04 02  	andi	a0, s0, 32
800033a8: 13 45 15 06  	xori	a0, a0, 97
800033ac: 13 05 65 0f  	addi	a0, a0, 246
800033b0: 23 2a a1 00  	sw	a0, 20(sp)
800033b4: 6f 00 40 02  	j	0x800033d8 <.LBB1_62+0x298>
800033b8: 13 06 10 00  	addi	a2, zero, 1
800033bc: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033c0: 93 b6 f4 01  	sltiu	a3, s1, 31
800033c4: 33 f6 c6 00  	and	a2, a3, a2
800033c8: 93 84 07 00  	mv	s1, a5
800033cc: 13 09 05 00  	mv	s2, a0
800033d0: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033d4: 63 0c 06 04  	beqz	a2, 0x8000342c <.LBB1_62+0x2ec>
;       value /= base;
800033d8: 13 05 09 00  	mv	a0, s2
800033dc: 93 85 09 00  	mv	a1, s3
800033e0: 13 06 0c 00  	mv	a2, s8
800033e4: 93 06 00 00  	mv	a3, zero
800033e8: 97 d0 ff ff  	auipc	ra, 1048573
800033ec: e7 80 80 c1  	jalr	-1000(ra)
800033f0: 33 06 85 03  	mul	a2, a0, s8
800033f4: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800033f8: 13 77 e6 0f  	andi	a4, a2, 254
800033fc: 93 06 00 03  	addi	a3, zero, 48
80003400: 93 07 a0 00  	addi	a5, zero, 10
80003404: 63 64 f7 00  	bltu	a4, a5, 0x8000340c <.LBB1_62+0x2cc>
80003408: 83 26 41 01  	lw	a3, 20(sp)
8000340c: 33 86 c6 00  	add	a2, a3, a2
80003410: 93 06 c1 01  	addi	a3, sp, 28
80003414: b3 86 96 00  	add	a3, a3, s1
80003418: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000341c: e3 9e 09 f8  	bnez	s3, 0x800033b8 <.LBB1_62+0x278>
80003420: 33 36 89 01  	sltu	a2, s2, s8
80003424: 13 46 16 00  	xori	a2, a2, 1
80003428: 6f f0 5f f9  	j	0x800033bc <.LBB1_62+0x27c>
8000342c: 03 25 81 00  	lw	a0, 8(sp)
80003430: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003434: 13 07 c1 01  	addi	a4, sp, 28
80003438: 03 29 c1 00  	lw	s2, 12(sp)
8000343c: 6f 00 40 40  	j	0x80003840 <.LBB1_124+0x2d0>

80003440 <.LBB1_108>:
80003440: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003444: 13 79 24 00  	andi	s2, s0, 2
80003448: 93 04 10 00  	addi	s1, zero, 1
8000344c: 63 1e 09 02  	bnez	s2, 0x80003488 <.LBB1_108+0x48>
80003450: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003454: 63 6a 9b 02  	bltu	s6, s1, 0x80003488 <.LBB1_108+0x48>
80003458: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
8000345c: 13 0c fb ff  	addi	s8, s6, -1
80003460: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003464: 33 86 8c 00  	add	a2, s9, s0
80003468: 13 05 00 02  	addi	a0, zero, 32
8000346c: 93 05 0a 00  	mv	a1, s4
80003470: 93 86 0a 00  	mv	a3, s5
80003474: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003478: 13 04 14 00  	addi	s0, s0, 1
8000347c: e3 14 8c fe  	bne	s8, s0, 0x80003464 <.LBB1_108+0x24>
80003480: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003484: b3 8c 8c 00  	add	s9, s9, s0
80003488: 03 c5 09 00  	lbu	a0, 0(s3)
8000348c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003490: 93 89 49 00  	addi	s3, s3, 4
80003494: 13 8c 1c 00  	addi	s8, s9, 1
80003498: 93 05 0a 00  	mv	a1, s4
8000349c: 13 86 0c 00  	mv	a2, s9
800034a0: 93 86 0a 00  	mv	a3, s5
800034a4: 13 89 0b 00  	mv	s2, s7
800034a8: e7 80 0b 00  	jalr	s7
800034ac: 33 b5 64 01  	sltu	a0, s1, s6
800034b0: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800034b4: 33 65 a4 00  	or	a0, s0, a0
800034b8: 63 1c 05 3a  	bnez	a0, 0x80003870 <.LBB1_124+0x300>
;           while (l++ < width) {
800034bc: 33 04 9b 40  	sub	s0, s6, s1
800034c0: 93 0b e0 02  	addi	s7, zero, 46
800034c4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800034c8: 13 0c 1c 00  	addi	s8, s8, 1
800034cc: 13 05 00 02  	addi	a0, zero, 32
800034d0: 93 05 0a 00  	mv	a1, s4
800034d4: 93 86 0a 00  	mv	a3, s5
800034d8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800034dc: 13 04 f4 ff  	addi	s0, s0, -1
800034e0: e3 12 04 fe  	bnez	s0, 0x800034c4 <.LBB1_108+0x84>
800034e4: 13 0b 50 02  	addi	s6, zero, 37
800034e8: 13 04 1d 00  	addi	s0, s10, 1
800034ec: 6f f0 df 91  	j	0x80002e08 <.LBB1_183+0x30>

800034f0 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800034f0: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800034f4: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800034f8: 63 14 05 00  	bnez	a0, 0x80003500 <.LBB1_117+0x10>
800034fc: 93 fe fe fe  	andi	t4, t4, -17
80003500: 93 04 a0 00  	addi	s1, zero, 10
80003504: 13 04 f0 00  	addi	s0, zero, 15
80003508: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000350c: 13 f6 0e 40  	andi	a2, t4, 1024
80003510: 13 56 a6 00  	srli	a2, a2, 10
80003514: b3 f5 c5 00  	and	a1, a1, a2
80003518: 93 07 00 00  	mv	a5, zero
8000351c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003520: 63 98 05 10  	bnez	a1, 0x80003630 <.LBB1_124+0xc0>
80003524: 93 05 00 00  	mv	a1, zero
80003528: 6f 00 40 03  	j	0x8000355c <.LBB1_117+0x6c>
8000352c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003530: 33 06 d6 00  	add	a2, a2, a3
80003534: 93 87 15 00  	addi	a5, a1, 1
80003538: 93 06 c1 01  	addi	a3, sp, 28
8000353c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003540: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003544: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003548: 93 b5 f5 01  	sltiu	a1, a1, 31
8000354c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003550: 23 80 c6 00  	sb	a2, 0(a3)
80003554: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003558: 63 0c 07 0c  	beqz	a4, 0x80003630 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000355c: 93 76 e5 00  	andi	a3, a0, 14
80003560: 13 06 00 03  	addi	a2, zero, 48
80003564: e3 e4 96 fc  	bltu	a3, s1, 0x8000352c <.LBB1_117+0x3c>
80003568: 13 06 70 03  	addi	a2, zero, 55
8000356c: 6f f0 1f fc  	j	0x8000352c <.LBB1_117+0x3c>

80003570 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003570: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003574: 03 c5 07 00  	lbu	a0, 0(a5)
80003578: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000357c: 63 0c 05 02  	beqz	a0, 0x800035b4 <.LBB1_124+0x44>
80003580: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003584: 63 84 0b 00  	beqz	s7, 0x8000358c <.LBB1_124+0x1c>
80003588: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000358c: 93 85 f5 ff  	addi	a1, a1, -1
80003590: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003594: 03 c7 16 00  	lbu	a4, 1(a3)
80003598: 13 86 16 00  	addi	a2, a3, 1
8000359c: b3 36 e0 00  	snez	a3, a4
800035a0: 33 37 b0 00  	snez	a4, a1
800035a4: 33 77 d7 00  	and	a4, a4, a3
800035a8: 93 85 f5 ff  	addi	a1, a1, -1
800035ac: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800035b0: e3 12 07 fe  	bnez	a4, 0x80003594 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800035b4: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800035b8: 93 75 04 40  	andi	a1, s0, 1024
800035bc: 93 b4 15 00  	seqz	s1, a1
800035c0: 23 2a c1 00  	sw	a2, 20(sp)
800035c4: b3 35 76 01  	sltu	a1, a2, s7
800035c8: b3 e5 b4 00  	or	a1, s1, a1
800035cc: 63 94 05 00  	bnez	a1, 0x800035d4 <.LBB1_124+0x64>
800035d0: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800035d4: 93 75 24 00  	andi	a1, s0, 2
800035d8: 23 26 b1 00  	sw	a1, 12(sp)
800035dc: 63 96 05 2a  	bnez	a1, 0x80003888 <.LBB1_124+0x318>
800035e0: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800035e4: 63 fe 65 29  	bgeu	a1, s6, 0x80003880 <.LBB1_124+0x310>
800035e8: 23 24 f1 00  	sw	a5, 8(sp)
800035ec: 13 04 00 00  	mv	s0, zero
800035f0: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800035f4: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800035f8: 33 86 8c 00  	add	a2, s9, s0
800035fc: 13 05 00 02  	addi	a0, zero, 32
80003600: 93 05 0a 00  	mv	a1, s4
80003604: 93 86 0a 00  	mv	a3, s5
80003608: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000360c: 13 04 14 00  	addi	s0, s0, 1
80003610: e3 14 89 fe  	bne	s2, s0, 0x800035f8 <.LBB1_124+0x88>
80003614: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003618: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000361c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003620: 23 2a b1 00  	sw	a1, 20(sp)
80003624: b3 8c 8c 00  	add	s9, s9, s0
80003628: 13 09 0c 00  	mv	s2, s8
8000362c: 6f 00 c0 25  	j	0x80003888 <.LBB1_124+0x318>
80003630: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003634: 13 07 c1 01  	addi	a4, sp, 28
80003638: 93 08 00 01  	addi	a7, zero, 16
8000363c: 13 0e 80 00  	addi	t3, zero, 8
80003640: 13 05 09 00  	mv	a0, s2
80003644: 93 05 0a 00  	mv	a1, s4
80003648: 13 86 0c 00  	mv	a2, s9
8000364c: 93 86 0a 00  	mv	a3, s5
80003650: 13 08 00 00  	mv	a6, zero
80003654: 93 83 0b 00  	mv	t2, s7
80003658: 97 10 00 00  	auipc	ra, 1
8000365c: e7 80 00 fa  	jalr	-96(ra)
80003660: 13 0c 05 00  	mv	s8, a0
80003664: 6f 00 00 21  	j	0x80003874 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003668: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000366c: 63 14 08 00  	bnez	a6, 0x80003674 <.LBB1_124+0x104>
80003670: 13 74 f4 fe  	andi	s0, s0, -17
80003674: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003678: 13 76 04 40  	andi	a2, s0, 1024
8000367c: 13 56 a6 00  	srli	a2, a2, 10
80003680: b3 f5 c5 00  	and	a1, a1, a2
80003684: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003688: 63 9c 05 06  	bnez	a1, 0x80003700 <.LBB1_124+0x190>
8000368c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003690: 13 56 f8 41  	srai	a2, a6, 31
80003694: b3 06 c8 00  	add	a3, a6, a2
80003698: b3 c6 c6 00  	xor	a3, a3, a2
8000369c: 13 76 04 02  	andi	a2, s0, 32
800036a0: 13 46 16 06  	xori	a2, a2, 97
800036a4: 93 08 66 0f  	addi	a7, a2, 246
800036a8: 6f 00 40 03  	j	0x800036dc <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036ac: 33 05 f6 00  	add	a0, a2, a5
800036b0: 93 87 15 00  	addi	a5, a1, 1
800036b4: 13 06 c1 01  	addi	a2, sp, 28
800036b8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800036bc: b3 b6 86 01  	sltu	a3, a3, s8
800036c0: 93 c6 16 00  	xori	a3, a3, 1
800036c4: 93 b5 f5 01  	sltiu	a1, a1, 31
800036c8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036cc: 23 00 a6 00  	sb	a0, 0(a2)
800036d0: 93 85 07 00  	mv	a1, a5
800036d4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800036d8: 63 84 04 02  	beqz	s1, 0x80003700 <.LBB1_124+0x190>
;       value /= base;
800036dc: 33 d7 86 03  	divu	a4, a3, s8
800036e0: 33 06 87 03  	mul	a2, a4, s8
800036e4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036e8: 13 f5 e7 0f  	andi	a0, a5, 254
800036ec: 13 06 00 03  	addi	a2, zero, 48
800036f0: 93 04 a0 00  	addi	s1, zero, 10
800036f4: e3 6c 95 fa  	bltu	a0, s1, 0x800036ac <.LBB1_124+0x13c>
800036f8: 13 86 08 00  	mv	a2, a7
800036fc: 6f f0 1f fb  	j	0x800036ac <.LBB1_124+0x13c>
80003700: 93 89 49 00  	addi	s3, s3, 4
80003704: 13 58 f8 01  	srli	a6, a6, 31
80003708: 13 07 c1 01  	addi	a4, sp, 28
8000370c: 13 05 09 00  	mv	a0, s2
80003710: 93 05 0a 00  	mv	a1, s4
80003714: 13 86 0c 00  	mv	a2, s9
80003718: 93 86 0a 00  	mv	a3, s5
8000371c: 6f 00 80 13  	j	0x80003854 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003720: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003724: 63 14 05 00  	bnez	a0, 0x8000372c <.LBB1_124+0x1bc>
80003728: 13 74 f4 fe  	andi	s0, s0, -17
8000372c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003730: 13 76 04 40  	andi	a2, s0, 1024
80003734: 13 56 a6 00  	srli	a2, a2, 10
80003738: b3 f5 c5 00  	and	a1, a1, a2
8000373c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003740: 63 9c 05 0e  	bnez	a1, 0x80003838 <.LBB1_124+0x2c8>
80003744: 13 06 00 00  	mv	a2, zero
80003748: 93 75 04 02  	andi	a1, s0, 32
8000374c: 93 c5 15 06  	xori	a1, a1, 97
80003750: 13 88 65 0f  	addi	a6, a1, 246
80003754: 6f 00 40 03  	j	0x80003788 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003758: 33 87 e7 00  	add	a4, a5, a4
8000375c: 93 07 16 00  	addi	a5, a2, 1
80003760: 93 05 c1 01  	addi	a1, sp, 28
80003764: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003768: 33 35 85 01  	sltu	a0, a0, s8
8000376c: 13 45 15 00  	xori	a0, a0, 1
80003770: 13 36 f6 01  	sltiu	a2, a2, 31
80003774: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003778: 23 80 e4 00  	sb	a4, 0(s1)
8000377c: 13 86 07 00  	mv	a2, a5
80003780: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003784: 63 8a 05 0a  	beqz	a1, 0x80003838 <.LBB1_124+0x2c8>
;       value /= base;
80003788: b3 56 85 03  	divu	a3, a0, s8
8000378c: 33 87 86 03  	mul	a4, a3, s8
80003790: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003794: 93 74 e7 0f  	andi	s1, a4, 254
80003798: 93 07 00 03  	addi	a5, zero, 48
8000379c: 93 05 a0 00  	addi	a1, zero, 10
800037a0: e3 ec b4 fa  	bltu	s1, a1, 0x80003758 <.LBB1_124+0x1e8>
800037a4: 93 07 08 00  	mv	a5, a6
800037a8: 6f f0 1f fb  	j	0x80003758 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800037ac: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800037b0: 63 14 05 00  	bnez	a0, 0x800037b8 <.LBB1_124+0x248>
800037b4: 13 74 f4 fe  	andi	s0, s0, -17
800037b8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800037bc: 13 76 04 40  	andi	a2, s0, 1024
800037c0: 13 56 a6 00  	srli	a2, a2, 10
800037c4: b3 f5 c5 00  	and	a1, a1, a2
800037c8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800037cc: 63 96 05 06  	bnez	a1, 0x80003838 <.LBB1_124+0x2c8>
800037d0: 13 06 00 00  	mv	a2, zero
800037d4: 93 75 04 02  	andi	a1, s0, 32
800037d8: 93 c5 15 06  	xori	a1, a1, 97
800037dc: 13 88 65 0f  	addi	a6, a1, 246
800037e0: 6f 00 40 03  	j	0x80003814 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037e4: 33 87 e7 00  	add	a4, a5, a4
800037e8: 93 07 16 00  	addi	a5, a2, 1
800037ec: 93 05 c1 01  	addi	a1, sp, 28
800037f0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800037f4: 33 35 85 01  	sltu	a0, a0, s8
800037f8: 13 45 15 00  	xori	a0, a0, 1
800037fc: 13 36 f6 01  	sltiu	a2, a2, 31
80003800: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003804: 23 80 e4 00  	sb	a4, 0(s1)
80003808: 13 86 07 00  	mv	a2, a5
8000380c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003810: 63 84 05 02  	beqz	a1, 0x80003838 <.LBB1_124+0x2c8>
;       value /= base;
80003814: b3 56 85 03  	divu	a3, a0, s8
80003818: 33 87 86 03  	mul	a4, a3, s8
8000381c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003820: 93 74 e7 0f  	andi	s1, a4, 254
80003824: 93 07 00 03  	addi	a5, zero, 48
80003828: 93 05 a0 00  	addi	a1, zero, 10
8000382c: e3 ec b4 fa  	bltu	s1, a1, 0x800037e4 <.LBB1_124+0x274>
80003830: 93 07 08 00  	mv	a5, a6
80003834: 6f f0 1f fb  	j	0x800037e4 <.LBB1_124+0x274>
80003838: 93 89 49 00  	addi	s3, s3, 4
8000383c: 13 07 c1 01  	addi	a4, sp, 28
80003840: 13 05 09 00  	mv	a0, s2
80003844: 93 05 0a 00  	mv	a1, s4
80003848: 13 86 0c 00  	mv	a2, s9
8000384c: 93 86 0a 00  	mv	a3, s5
80003850: 13 08 00 00  	mv	a6, zero
80003854: 93 08 0c 00  	mv	a7, s8
80003858: 93 83 0b 00  	mv	t2, s7
8000385c: 13 0e 0b 00  	mv	t3, s6
80003860: 93 0e 04 00  	mv	t4, s0
80003864: 97 10 00 00  	auipc	ra, 1
80003868: e7 80 40 d9  	jalr	-620(ra)
8000386c: 13 0c 05 00  	mv	s8, a0
80003870: 13 0b 50 02  	addi	s6, zero, 37
80003874: 93 0b e0 02  	addi	s7, zero, 46
80003878: 13 04 1d 00  	addi	s0, s10, 1
8000387c: 6f f0 cf d8  	j	0x80002e08 <.LBB1_183+0x30>
80003880: 93 85 15 00  	addi	a1, a1, 1
80003884: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003888: 63 00 05 04  	beqz	a0, 0x800038c8 <.LBB1_124+0x358>
8000388c: 13 84 17 00  	addi	s0, a5, 1
80003890: 6f 00 00 03  	j	0x800038c0 <.LBB1_124+0x350>
80003894: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003898: 13 8c 1c 00  	addi	s8, s9, 1
8000389c: 13 75 f5 0f  	andi	a0, a0, 255
800038a0: 93 05 0a 00  	mv	a1, s4
800038a4: 13 86 0c 00  	mv	a2, s9
800038a8: 93 86 0a 00  	mv	a3, s5
800038ac: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800038b0: 03 45 04 00  	lbu	a0, 0(s0)
800038b4: 13 04 14 00  	addi	s0, s0, 1
800038b8: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800038bc: 63 08 05 00  	beqz	a0, 0x800038cc <.LBB1_124+0x35c>
800038c0: e3 9c 04 fc  	bnez	s1, 0x80003898 <.LBB1_124+0x328>
800038c4: e3 98 0b fc  	bnez	s7, 0x80003894 <.LBB1_124+0x324>
800038c8: 13 8c 0c 00  	mv	s8, s9
800038cc: 03 25 c1 00  	lw	a0, 12(sp)
800038d0: 13 35 15 00  	seqz	a0, a0
800038d4: 03 26 41 01  	lw	a2, 20(sp)
800038d8: b3 35 66 01  	sltu	a1, a2, s6
800038dc: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800038e0: 33 65 b5 00  	or	a0, a0, a1
800038e4: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800038e8: e3 14 05 f8  	bnez	a0, 0x80003870 <.LBB1_124+0x300>
;           while (l++ < width) {
800038ec: 33 04 cb 40  	sub	s0, s6, a2
800038f0: 93 0b e0 02  	addi	s7, zero, 46
800038f4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800038f8: 13 0c 1c 00  	addi	s8, s8, 1
800038fc: 13 05 00 02  	addi	a0, zero, 32
80003900: 93 05 0a 00  	mv	a1, s4
80003904: 93 86 0a 00  	mv	a3, s5
80003908: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000390c: 13 04 f4 ff  	addi	s0, s0, -1
80003910: e3 12 04 fe  	bnez	s0, 0x800038f4 <.LBB1_124+0x384>
80003914: 13 0b 50 02  	addi	s6, zero, 37
80003918: 13 04 1d 00  	addi	s0, s10, 1
8000391c: 6f f0 cf ce  	j	0x80002e08 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003920: 13 86 0c 00  	mv	a2, s9
80003924: 63 e4 5c 01  	bltu	s9, s5, 0x8000392c <.LBB1_124+0x3bc>
80003928: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000392c: 13 05 00 00  	mv	a0, zero
80003930: 93 05 0a 00  	mv	a1, s4
80003934: 93 86 0a 00  	mv	a3, s5
80003938: e7 00 09 00  	jalr	s2
;   return (int)idx;
8000393c: 13 85 0c 00  	mv	a0, s9
80003940: 83 2d c1 03  	lw	s11, 60(sp)
80003944: 03 2d 01 04  	lw	s10, 64(sp)
80003948: 83 2c 41 04  	lw	s9, 68(sp)
8000394c: 03 2c 81 04  	lw	s8, 72(sp)
80003950: 83 2b c1 04  	lw	s7, 76(sp)
80003954: 03 2b 01 05  	lw	s6, 80(sp)
80003958: 83 2a 41 05  	lw	s5, 84(sp)
8000395c: 03 2a 81 05  	lw	s4, 88(sp)
80003960: 83 29 c1 05  	lw	s3, 92(sp)
80003964: 03 29 01 06  	lw	s2, 96(sp)
80003968: 83 24 41 06  	lw	s1, 100(sp)
8000396c: 03 24 81 06  	lw	s0, 104(sp)
80003970: 83 20 c1 06  	lw	ra, 108(sp)
80003974: 13 01 01 07  	addi	sp, sp, 112
80003978: 67 80 00 00  	ret

8000397c <_out_char.llvm.17592004524093383706>:
;   if (character) {
8000397c: 63 04 05 0a  	beqz	a0, 0x80003a24 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003980: f3 25 40 f1  	csrr	a1, mhartid
80003984: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003988: 33 86 c5 02  	mul	a2, a1, a2

8000398c <.LBB2_6>:
8000398c: 97 26 00 00  	auipc	a3, 2
80003990: 93 86 86 a7  	addi	a3, a3, -1416
80003994: b3 05 d6 00  	add	a1, a2, a3
80003998: 03 a7 05 00  	lw	a4, 0(a1)
8000399c: 93 07 17 00  	addi	a5, a4, 1
800039a0: 23 a0 f5 00  	sw	a5, 0(a1)
800039a4: 33 87 e5 00  	add	a4, a1, a4
800039a8: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800039ac: 03 a7 05 00  	lw	a4, 0(a1)
800039b0: 13 07 47 c0  	addi	a4, a4, -1020
800039b4: 33 37 e0 00  	snez	a4, a4
800039b8: 13 05 65 ff  	addi	a0, a0, -10
800039bc: 33 35 a0 00  	snez	a0, a0
800039c0: 33 75 e5 00  	and	a0, a0, a4
800039c4: 63 10 05 06  	bnez	a0, 0x80003a24 <.LBB2_8+0x18>
800039c8: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800039cc: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800039d0: 23 26 05 00  	sw	zero, 12(a0)
800039d4: 93 06 00 04  	addi	a3, zero, 64
800039d8: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
800039dc: 23 2a 05 00  	sw	zero, 20(a0)
800039e0: 93 06 10 00  	addi	a3, zero, 1
800039e4: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800039e8: 23 2e 05 00  	sw	zero, 28(a0)
800039ec: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800039f0: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800039f4: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800039f8: 23 22 05 02  	sw	zero, 36(a0)
800039fc: 23 20 c5 02  	sw	a2, 32(a0)

80003a00 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003a00: 17 25 00 00  	auipc	a0, 2
80003a04: 13 05 05 8c  	addi	a0, a0, -1856
80003a08: 23 20 d5 00  	sw	a3, 0(a0)

80003a0c <.LBB2_8>:
80003a0c: 17 25 00 00  	auipc	a0, 2
80003a10: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80003a14: 03 26 05 00  	lw	a2, 0(a0)
80003a18: e3 0e 06 fe  	beqz	a2, 0x80003a14 <.LBB2_8+0x8>
;         fromhost = 0;
80003a1c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003a20: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003a24: 67 80 00 00  	ret

80003a28 <_out_null>:
; }
80003a28: 67 80 00 00  	ret

80003a2c <_ftoa>:
; {
80003a2c: 13 01 01 f9  	addi	sp, sp, -112
80003a30: 23 26 11 06  	sw	ra, 108(sp)
80003a34: 23 24 81 06  	sw	s0, 104(sp)
80003a38: 23 22 91 06  	sw	s1, 100(sp)
80003a3c: 23 20 21 07  	sw	s2, 96(sp)
80003a40: 23 2e 31 05  	sw	s3, 92(sp)
80003a44: 23 2c 41 05  	sw	s4, 88(sp)
80003a48: 23 2a 51 05  	sw	s5, 84(sp)
80003a4c: 23 28 61 05  	sw	s6, 80(sp)
80003a50: 23 26 71 05  	sw	s7, 76(sp)
80003a54: 23 24 81 05  	sw	s8, 72(sp)
80003a58: 23 22 91 05  	sw	s9, 68(sp)
80003a5c: 23 20 a1 05  	sw	s10, 64(sp)
80003a60: 27 3c 81 02  	fsd	fs0, 56(sp)
80003a64: 27 38 91 02  	fsd	fs1, 48(sp)
80003a68: 27 34 21 03  	fsd	fs2, 40(sp)

80003a6c <.LBB4_83>:
80003a6c: 97 24 00 00  	auipc	s1, 2
80003a70: 93 84 c4 8e  	addi	s1, s1, -1812
80003a74: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003a78: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003a7c: 93 0a 08 00  	mv	s5, a6
80003a80: 13 89 07 00  	mv	s2, a5
80003a84: 93 89 06 00  	mv	s3, a3
80003a88: 13 0a 06 00  	mv	s4, a2
80003a8c: 13 8b 05 00  	mv	s6, a1
80003a90: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003a94: 63 98 04 0e  	bnez	s1, 0x80003b84 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003a98: 13 f5 2a 00  	andi	a0, s5, 2
80003a9c: 93 f5 3a 00  	andi	a1, s5, 3
80003aa0: b3 35 b0 00  	snez	a1, a1
80003aa4: 13 36 59 00  	sltiu	a2, s2, 5
80003aa8: b3 65 b6 00  	or	a1, a2, a1
80003aac: 93 5c 15 00  	srli	s9, a0, 1
80003ab0: 13 04 0a 00  	mv	s0, s4
80003ab4: 63 96 05 02  	bnez	a1, 0x80003ae0 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003ab8: 93 04 c9 ff  	addi	s1, s2, -4
80003abc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003ac0: 13 04 16 00  	addi	s0, a2, 1
80003ac4: 13 05 00 02  	addi	a0, zero, 32
80003ac8: 93 05 0b 00  	mv	a1, s6
80003acc: 93 86 09 00  	mv	a3, s3
80003ad0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003ad4: 93 84 f4 ff  	addi	s1, s1, -1
80003ad8: 13 06 04 00  	mv	a2, s0
80003adc: e3 92 04 fe  	bnez	s1, 0x80003ac0 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003ae0: 93 04 14 00  	addi	s1, s0, 1
80003ae4: 13 05 d0 02  	addi	a0, zero, 45
80003ae8: 93 05 0b 00  	mv	a1, s6
80003aec: 13 06 04 00  	mv	a2, s0
80003af0: 93 86 09 00  	mv	a3, s3
80003af4: e7 80 0b 00  	jalr	s7
80003af8: 93 0a 24 00  	addi	s5, s0, 2
80003afc: 13 05 90 06  	addi	a0, zero, 105
80003b00: 93 05 0b 00  	mv	a1, s6
80003b04: 13 86 04 00  	mv	a2, s1
80003b08: 93 86 09 00  	mv	a3, s3
80003b0c: e7 80 0b 00  	jalr	s7
80003b10: 13 0c 34 00  	addi	s8, s0, 3
80003b14: 13 05 e0 06  	addi	a0, zero, 110
80003b18: 93 05 0b 00  	mv	a1, s6
80003b1c: 13 86 0a 00  	mv	a2, s5
80003b20: 93 86 09 00  	mv	a3, s3
80003b24: e7 80 0b 00  	jalr	s7
80003b28: 93 04 44 00  	addi	s1, s0, 4
80003b2c: 13 05 60 06  	addi	a0, zero, 102
80003b30: 93 05 0b 00  	mv	a1, s6
80003b34: 13 06 0c 00  	mv	a2, s8
80003b38: 93 86 09 00  	mv	a3, s3
80003b3c: e7 80 0b 00  	jalr	s7
80003b40: 33 85 44 41  	sub	a0, s1, s4
80003b44: 33 35 25 01  	sltu	a0, a0, s2
80003b48: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003b4c: 93 c5 1c 00  	xori	a1, s9, 1
80003b50: 33 e5 a5 00  	or	a0, a1, a0
80003b54: 63 16 05 56  	bnez	a0, 0x800040c0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003b58: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003b5c: 13 84 14 00  	addi	s0, s1, 1
80003b60: 13 05 00 02  	addi	a0, zero, 32
80003b64: 93 05 0b 00  	mv	a1, s6
80003b68: 13 86 04 00  	mv	a2, s1
80003b6c: 93 86 09 00  	mv	a3, s3
80003b70: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003b74: 33 05 8a 00  	add	a0, s4, s0
80003b78: 93 04 04 00  	mv	s1, s0
80003b7c: e3 60 25 ff  	bltu	a0, s2, 0x80003b5c <.LBB4_83+0xf0>
80003b80: 6f 00 40 54  	j	0x800040c4 <.LBB4_90+0x378>
80003b84: 53 04 a5 22  	fmv.d	fs0, fa0

80003b88 <.LBB4_84>:
80003b88: 17 15 00 00  	auipc	a0, 1
80003b8c: 13 05 85 7d  	addi	a0, a0, 2008
80003b90: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003b94: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003b98: 63 1e 05 00  	bnez	a0, 0x80003bb4 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003b9c: 93 f5 4a 00  	andi	a1, s5, 4
80003ba0: 13 b5 15 00  	seqz	a0, a1
80003ba4: 63 82 05 06  	beqz	a1, 0x80003c08 <.LBB4_88>

80003ba8 <.LBB4_85>:
80003ba8: 17 1c 00 00  	auipc	s8, 1
80003bac: 13 0c 8c 4b  	addi	s8, s8, 1208
80003bb0: 6f 00 00 06  	j	0x80003c10 <.LBB4_88+0x8>

80003bb4 <.LBB4_86>:
80003bb4: 17 15 00 00  	auipc	a0, 1
80003bb8: 13 05 45 7b  	addi	a0, a0, 1972
80003bbc: 07 30 05 00  	fld	ft0, 0(a0)

80003bc0 <.LBB4_87>:
80003bc0: 17 15 00 00  	auipc	a0, 1
80003bc4: 13 05 05 7b  	addi	a0, a0, 1968
80003bc8: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003bcc: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003bd0: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003bd4: 33 75 b5 00  	and	a0, a0, a1
80003bd8: 63 1e 05 0e  	bnez	a0, 0x80003cd4 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003bdc: 13 85 0b 00  	mv	a0, s7
80003be0: 93 05 0b 00  	mv	a1, s6
80003be4: 13 06 0a 00  	mv	a2, s4
80003be8: 93 86 09 00  	mv	a3, s3
80003bec: 53 05 84 22  	fmv.d	fa0, fs0
80003bf0: 93 07 09 00  	mv	a5, s2
80003bf4: 13 88 0a 00  	mv	a6, s5
80003bf8: 97 00 00 00  	auipc	ra, 0
80003bfc: e7 80 40 51  	jalr	1300(ra)
80003c00: 13 04 05 00  	mv	s0, a0
80003c04: 6f 00 00 4c  	j	0x800040c4 <.LBB4_90+0x378>

80003c08 <.LBB4_88>:
80003c08: 17 1c 00 00  	auipc	s8, 1
80003c0c: 13 0c 7c 47  	addi	s8, s8, 1143
80003c10: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003c14: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003c18: 13 f5 3a 00  	andi	a0, s5, 3
80003c1c: 33 35 a0 00  	snez	a0, a0
80003c20: b3 b5 2c 01  	sltu	a1, s9, s2
80003c24: 93 c5 15 00  	xori	a1, a1, 1
80003c28: 33 65 b5 00  	or	a0, a0, a1
80003c2c: 93 fa 2a 00  	andi	s5, s5, 2
80003c30: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003c34: 63 16 05 02  	bnez	a0, 0x80003c60 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003c38: 33 04 99 41  	sub	s0, s2, s9
80003c3c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003c40: 93 04 16 00  	addi	s1, a2, 1
80003c44: 13 05 00 02  	addi	a0, zero, 32
80003c48: 93 05 0b 00  	mv	a1, s6
80003c4c: 93 86 09 00  	mv	a3, s3
80003c50: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003c54: 13 04 f4 ff  	addi	s0, s0, -1
80003c58: 13 86 04 00  	mv	a2, s1
80003c5c: e3 12 04 fe  	bnez	s0, 0x80003c40 <.LBB4_88+0x38>
80003c60: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003c64: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003c68: 33 05 9c 01  	add	a0, s8, s9
80003c6c: 03 45 05 00  	lbu	a0, 0(a0)
80003c70: 13 86 04 00  	mv	a2, s1
80003c74: 13 84 fc ff  	addi	s0, s9, -1
80003c78: 93 84 14 00  	addi	s1, s1, 1
80003c7c: 93 05 0b 00  	mv	a1, s6
80003c80: 93 86 09 00  	mv	a3, s3
80003c84: e7 80 0b 00  	jalr	s7
80003c88: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003c8c: e3 1e 04 fc  	bnez	s0, 0x80003c68 <.LBB4_88+0x60>
80003c90: 33 85 44 41  	sub	a0, s1, s4
80003c94: 33 35 25 01  	sltu	a0, a0, s2
80003c98: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003c9c: 93 c5 1a 00  	xori	a1, s5, 1
80003ca0: 33 e5 a5 00  	or	a0, a1, a0
80003ca4: 63 1e 05 40  	bnez	a0, 0x800040c0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003ca8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003cac: 13 84 14 00  	addi	s0, s1, 1
80003cb0: 13 05 00 02  	addi	a0, zero, 32
80003cb4: 93 05 0b 00  	mv	a1, s6
80003cb8: 13 86 04 00  	mv	a2, s1
80003cbc: 93 86 09 00  	mv	a3, s3
80003cc0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003cc4: 33 05 8a 00  	add	a0, s4, s0
80003cc8: 93 04 04 00  	mv	s1, s0
80003ccc: e3 60 25 ff  	bltu	a0, s2, 0x80003cac <.LBB4_88+0xa4>
80003cd0: 6f 00 40 3f  	j	0x800040c4 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003cd4: 13 f5 0a 40  	andi	a0, s5, 1024
80003cd8: 13 0c 60 00  	addi	s8, zero, 6
80003cdc: 63 04 05 00  	beqz	a0, 0x80003ce4 <.LBB4_88+0xdc>
80003ce0: 13 0c 07 00  	mv	s8, a4
80003ce4: 13 05 a0 00  	addi	a0, zero, 10
80003ce8: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003cec: 63 6c ac 02  	bltu	s8, a0, 0x80003d24 <.LBB4_88+0x11c>
80003cf0: 93 04 6c ff  	addi	s1, s8, -10
80003cf4: 13 05 f0 01  	addi	a0, zero, 31
80003cf8: 63 e4 a4 00  	bltu	s1, a0, 0x80003d00 <.LBB4_88+0xf8>
80003cfc: 93 04 f0 01  	addi	s1, zero, 31
80003d00: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003d04: 13 05 81 00  	addi	a0, sp, 8
80003d08: 93 05 00 03  	addi	a1, zero, 48
80003d0c: 13 06 04 00  	mv	a2, s0
80003d10: 97 d0 ff ff  	auipc	ra, 1048573
80003d14: e7 80 80 84  	jalr	-1976(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003d18: 13 c5 f4 ff  	not	a0, s1
80003d1c: 33 0c ac 00  	add	s8, s8, a0
80003d20: 6f 00 80 00  	j	0x80003d28 <.LBB4_88+0x120>
80003d24: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003d28: 13 15 3c 00  	slli	a0, s8, 3

80003d2c <.LBB4_89>:
80003d2c: 97 15 00 00  	auipc	a1, 1
80003d30: 93 85 45 51  	addi	a1, a1, 1300
80003d34: 33 05 b5 00  	add	a0, a0, a1
80003d38: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003d3c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003d40: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003d44: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003d48: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003d4c <.LBB4_90>:
80003d4c: 17 15 00 00  	auipc	a0, 1
80003d50: 13 05 c5 62  	addi	a0, a0, 1580
80003d54: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003d58: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003d5c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003d60: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003d64: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003d68: 63 90 05 02  	bnez	a1, 0x80003d88 <.LBB4_90+0x3c>
;     ++frac;
80003d6c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003d70: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003d74: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003d78: 63 94 05 02  	bnez	a1, 0x80003da0 <.LBB4_90+0x54>
80003d7c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80003d80: 93 84 14 00  	addi	s1, s1, 1
80003d84: 6f 00 c0 01  	j	0x80003da0 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80003d88: d3 15 01 a2  	flt.d	a1, ft2, ft0
80003d8c: 63 9a 05 00  	bnez	a1, 0x80003da0 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80003d90: 93 35 15 00  	seqz	a1, a0
80003d94: 13 76 15 00  	andi	a2, a0, 1
80003d98: b3 65 b6 00  	or	a1, a2, a1
80003d9c: 33 85 a5 00  	add	a0, a1, a0
80003da0: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80003da4: 63 0c 0c 0c  	beqz	s8, 0x80003e7c <.LBB4_90+0x130>
80003da8: 13 06 00 00  	mv	a2, zero
80003dac: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003db0: 33 83 85 00  	add	t1, a1, s0
80003db4: 93 02 00 02  	addi	t0, zero, 32
80003db8: 33 87 82 40  	sub	a4, t0, s0
80003dbc: b7 d5 cc cc  	lui	a1, 838861
80003dc0: 93 83 d5 cc  	addi	t2, a1, -819
80003dc4: 13 08 a0 00  	addi	a6, zero, 10
80003dc8: 93 08 90 00  	addi	a7, zero, 9
80003dcc: 63 04 c7 0c  	beq	a4, a2, 0x80003e94 <.LBB4_90+0x148>
80003dd0: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80003dd4: 33 35 75 02  	mulhu	a0, a0, t2
80003dd8: 13 55 35 00  	srli	a0, a0, 3
80003ddc: b3 06 05 03  	mul	a3, a0, a6
80003de0: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80003de4: 93 e6 06 03  	ori	a3, a3, 48
80003de8: b3 07 c3 00  	add	a5, t1, a2
80003dec: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80003df0: 13 06 16 00  	addi	a2, a2, 1
80003df4: e3 ec b8 fc  	bltu	a7, a1, 0x80003dcc <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003df8: 33 05 c4 00  	add	a0, s0, a2
80003dfc: 93 05 f5 ff  	addi	a1, a0, -1
80003e00: 93 06 e0 01  	addi	a3, zero, 30
80003e04: b3 b6 b6 00  	sltu	a3, a3, a1
80003e08: 33 47 cc 00  	xor	a4, s8, a2
80003e0c: 13 37 17 00  	seqz	a4, a4
80003e10: b3 e6 e6 00  	or	a3, a3, a4
80003e14: 63 94 06 08  	bnez	a3, 0x80003e9c <.LBB4_90+0x150>
80003e18: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003e1c: 33 05 85 00  	add	a0, a0, s0
80003e20: 93 45 f6 ff  	not	a1, a2
80003e24: 33 8c 85 01  	add	s8, a1, s8
80003e28: 33 04 c4 00  	add	s0, s0, a2
80003e2c: 93 05 f0 01  	addi	a1, zero, 31
80003e30: b3 86 85 40  	sub	a3, a1, s0
80003e34: 33 05 c5 00  	add	a0, a0, a2
80003e38: 93 05 0c 00  	mv	a1, s8
80003e3c: 63 64 dc 00  	bltu	s8, a3, 0x80003e44 <.LBB4_90+0xf8>
80003e40: 93 85 06 00  	mv	a1, a3
80003e44: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003e48: 93 05 00 03  	addi	a1, zero, 48
80003e4c: 97 c0 ff ff  	auipc	ra, 1048572
80003e50: e7 80 c0 70  	jalr	1804(ra)
80003e54: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003e58: b3 05 a4 00  	add	a1, s0, a0
80003e5c: 93 b5 f5 01  	sltiu	a1, a1, 31
80003e60: 33 46 ac 00  	xor	a2, s8, a0
80003e64: 33 36 c0 00  	snez	a2, a2
80003e68: 33 f6 c5 00  	and	a2, a1, a2
80003e6c: 13 05 15 00  	addi	a0, a0, 1
80003e70: e3 14 06 fe  	bnez	a2, 0x80003e58 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003e74: 33 05 a4 00  	add	a0, s0, a0
80003e78: 6f 00 80 02  	j	0x80003ea0 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80003e7c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80003e80: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003e84: 53 05 10 a2  	fle.d	a0, ft0, ft1
80003e88: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003e8c: b3 84 a4 00  	add	s1, s1, a0
80003e90: 6f 00 c0 03  	j	0x80003ecc <.LBB4_90+0x180>
80003e94: 13 04 00 02  	addi	s0, zero, 32
80003e98: 6f 00 80 03  	j	0x80003ed0 <.LBB4_90+0x184>
80003e9c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003ea0: 63 8e 05 00  	beqz	a1, 0x80003ebc <.LBB4_90+0x170>
;       buf[len++] = '.';
80003ea4: 13 04 15 00  	addi	s0, a0, 1
80003ea8: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80003eac: 33 85 a5 00  	add	a0, a1, a0
80003eb0: 93 05 e0 02  	addi	a1, zero, 46
80003eb4: 23 00 b5 00  	sb	a1, 0(a0)
80003eb8: 6f 00 80 00  	j	0x80003ec0 <.LBB4_90+0x174>
80003ebc: 13 04 05 00  	mv	s0, a0
80003ec0: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003ec4: 93 02 04 00  	mv	t0, s0
80003ec8: 63 64 85 00  	bltu	a0, s0, 0x80003ed0 <.LBB4_90+0x184>
80003ecc: 93 02 00 02  	addi	t0, zero, 32
80003ed0: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80003ed4: 37 65 66 66  	lui	a0, 419430
80003ed8: 93 05 75 66  	addi	a1, a0, 1639
80003edc: 13 08 a0 00  	addi	a6, zero, 10
80003ee0: 93 06 81 00  	addi	a3, sp, 8
80003ee4: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003ee8: 63 80 82 04  	beq	t0, s0, 0x80003f28 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80003eec: 33 95 b4 02  	mulh	a0, s1, a1
80003ef0: 93 57 f5 01  	srli	a5, a0, 31
80003ef4: 13 55 25 40  	srai	a0, a0, 2
80003ef8: 33 05 f5 00  	add	a0, a0, a5
80003efc: b3 07 05 03  	mul	a5, a0, a6
80003f00: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80003f04: 93 87 07 03  	addi	a5, a5, 48
80003f08: 13 0c 14 00  	addi	s8, s0, 1
80003f0c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80003f10: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80003f14: 23 00 f4 00  	sb	a5, 0(s0)
80003f18: 13 04 0c 00  	mv	s0, s8
80003f1c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80003f20: e3 64 c7 fc  	bltu	a4, a2, 0x80003ee8 <.LBB4_90+0x19c>
80003f24: 6f 00 80 00  	j	0x80003f2c <.LBB4_90+0x1e0>
80003f28: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80003f2c: 93 f4 3a 00  	andi	s1, s5, 3
80003f30: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80003f34: 63 96 a4 06  	bne	s1, a0, 0x80003fa0 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003f38: 63 0c 09 00  	beqz	s2, 0x80003f50 <.LBB4_90+0x204>
80003f3c: 13 f5 ca 00  	andi	a0, s5, 12
80003f40: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003f44: 33 e5 ac 00  	or	a0, s9, a0
80003f48: 33 09 a9 40  	sub	s2, s2, a0
80003f4c: 6f 00 80 00  	j	0x80003f54 <.LBB4_90+0x208>
80003f50: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003f54: 33 35 2c 01  	sltu	a0, s8, s2
80003f58: 93 45 15 00  	xori	a1, a0, 1
80003f5c: 13 05 f0 01  	addi	a0, zero, 31
80003f60: 33 36 85 01  	sltu	a2, a0, s8
80003f64: b3 65 b6 00  	or	a1, a2, a1
80003f68: 63 9c 05 02  	bnez	a1, 0x80003fa0 <.LBB4_90+0x254>
80003f6c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003f70: 93 45 fc ff  	not	a1, s8
80003f74: b3 05 b9 00  	add	a1, s2, a1
80003f78: 33 06 85 41  	sub	a2, a0, s8
80003f7c: 33 85 86 01  	add	a0, a3, s8
80003f80: 63 e4 c5 00  	bltu	a1, a2, 0x80003f88 <.LBB4_90+0x23c>
80003f84: 93 05 06 00  	mv	a1, a2
80003f88: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80003f8c: 93 05 00 03  	addi	a1, zero, 48
80003f90: 13 06 04 00  	mv	a2, s0
80003f94: 97 c0 ff ff  	auipc	ra, 1048572
80003f98: e7 80 40 5c  	jalr	1476(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003f9c: 33 0c 84 01  	add	s8, s0, s8
80003fa0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003fa4: 63 6a 85 05  	bltu	a0, s8, 0x80003ff8 <.LBB4_90+0x2ac>
;     if (negative) {
80003fa8: 63 8c 0c 00  	beqz	s9, 0x80003fc0 <.LBB4_90+0x274>
80003fac: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80003fb0: 33 05 85 01  	add	a0, a0, s8
80003fb4: 13 0c 1c 00  	addi	s8, s8, 1
80003fb8: 93 05 d0 02  	addi	a1, zero, 45
80003fbc: 6f 00 80 03  	j	0x80003ff4 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80003fc0: 13 f5 4a 00  	andi	a0, s5, 4
80003fc4: 63 10 05 02  	bnez	a0, 0x80003fe4 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80003fc8: 13 f5 8a 00  	andi	a0, s5, 8
80003fcc: 63 06 05 02  	beqz	a0, 0x80003ff8 <.LBB4_90+0x2ac>
80003fd0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80003fd4: 33 05 85 01  	add	a0, a0, s8
80003fd8: 13 0c 1c 00  	addi	s8, s8, 1
80003fdc: 93 05 00 02  	addi	a1, zero, 32
80003fe0: 6f 00 40 01  	j	0x80003ff4 <.LBB4_90+0x2a8>
80003fe4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003fe8: 33 05 85 01  	add	a0, a0, s8
80003fec: 13 0c 1c 00  	addi	s8, s8, 1
80003ff0: 93 05 b0 02  	addi	a1, zero, 43
80003ff4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003ff8: 33 35 90 00  	snez	a0, s1
80003ffc: b3 35 2c 01  	sltu	a1, s8, s2
80004000: 93 c5 15 00  	xori	a1, a1, 1
80004004: 33 65 b5 00  	or	a0, a0, a1
80004008: 93 fa 2a 00  	andi	s5, s5, 2
8000400c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004010: 63 16 05 02  	bnez	a0, 0x8000403c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004014: b3 04 89 41  	sub	s1, s2, s8
80004018: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000401c: 13 04 16 00  	addi	s0, a2, 1
80004020: 13 05 00 02  	addi	a0, zero, 32
80004024: 93 05 0b 00  	mv	a1, s6
80004028: 93 86 09 00  	mv	a3, s3
8000402c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004030: 93 84 f4 ff  	addi	s1, s1, -1
80004034: 13 06 04 00  	mv	a2, s0
80004038: e3 92 04 fe  	bnez	s1, 0x8000401c <.LBB4_90+0x2d0>
8000403c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004040: 63 0c 0c 02  	beqz	s8, 0x80004078 <.LBB4_90+0x32c>
80004044: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004048: 33 85 8c 01  	add	a0, s9, s8
8000404c: 03 45 05 00  	lbu	a0, 0(a0)
80004050: 13 0d fc ff  	addi	s10, s8, -1
80004054: 93 04 14 00  	addi	s1, s0, 1
80004058: 93 05 0b 00  	mv	a1, s6
8000405c: 13 06 04 00  	mv	a2, s0
80004060: 93 86 09 00  	mv	a3, s3
80004064: e7 80 0b 00  	jalr	s7
80004068: 13 84 04 00  	mv	s0, s1
8000406c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004070: e3 1c 0d fc  	bnez	s10, 0x80004048 <.LBB4_90+0x2fc>
80004074: 6f 00 80 00  	j	0x8000407c <.LBB4_90+0x330>
80004078: 93 04 04 00  	mv	s1, s0
8000407c: 33 85 44 41  	sub	a0, s1, s4
80004080: 33 35 25 01  	sltu	a0, a0, s2
80004084: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004088: 93 c5 1a 00  	xori	a1, s5, 1
8000408c: 33 e5 a5 00  	or	a0, a1, a0
80004090: 63 18 05 02  	bnez	a0, 0x800040c0 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004094: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004098: 13 84 14 00  	addi	s0, s1, 1
8000409c: 13 05 00 02  	addi	a0, zero, 32
800040a0: 93 05 0b 00  	mv	a1, s6
800040a4: 13 86 04 00  	mv	a2, s1
800040a8: 93 86 09 00  	mv	a3, s3
800040ac: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800040b0: 33 05 8a 00  	add	a0, s4, s0
800040b4: 93 04 04 00  	mv	s1, s0
800040b8: e3 60 25 ff  	bltu	a0, s2, 0x80004098 <.LBB4_90+0x34c>
800040bc: 6f 00 80 00  	j	0x800040c4 <.LBB4_90+0x378>
800040c0: 13 84 04 00  	mv	s0, s1
; }
800040c4: 13 05 04 00  	mv	a0, s0
800040c8: 07 39 81 02  	fld	fs2, 40(sp)
800040cc: 87 34 01 03  	fld	fs1, 48(sp)
800040d0: 07 34 81 03  	fld	fs0, 56(sp)
800040d4: 03 2d 01 04  	lw	s10, 64(sp)
800040d8: 83 2c 41 04  	lw	s9, 68(sp)
800040dc: 03 2c 81 04  	lw	s8, 72(sp)
800040e0: 83 2b c1 04  	lw	s7, 76(sp)
800040e4: 03 2b 01 05  	lw	s6, 80(sp)
800040e8: 83 2a 41 05  	lw	s5, 84(sp)
800040ec: 03 2a 81 05  	lw	s4, 88(sp)
800040f0: 83 29 c1 05  	lw	s3, 92(sp)
800040f4: 03 29 01 06  	lw	s2, 96(sp)
800040f8: 83 24 41 06  	lw	s1, 100(sp)
800040fc: 03 24 81 06  	lw	s0, 104(sp)
80004100: 83 20 c1 06  	lw	ra, 108(sp)
80004104: 13 01 01 07  	addi	sp, sp, 112
80004108: 67 80 00 00  	ret

8000410c <_etoa>:
; {
8000410c: 13 01 01 f8  	addi	sp, sp, -128
80004110: 23 2e 11 06  	sw	ra, 124(sp)
80004114: 23 2c 81 06  	sw	s0, 120(sp)
80004118: 23 2a 91 06  	sw	s1, 116(sp)
8000411c: 23 28 21 07  	sw	s2, 112(sp)
80004120: 23 26 31 07  	sw	s3, 108(sp)
80004124: 23 24 41 07  	sw	s4, 104(sp)
80004128: 23 22 51 07  	sw	s5, 100(sp)
8000412c: 23 20 61 07  	sw	s6, 96(sp)
80004130: 23 2e 71 05  	sw	s7, 92(sp)
80004134: 23 2c 81 05  	sw	s8, 88(sp)
80004138: 23 2a 91 05  	sw	s9, 84(sp)
8000413c: 23 28 a1 05  	sw	s10, 80(sp)
80004140: 23 26 b1 05  	sw	s11, 76(sp)

80004144 <.LBB5_43>:
80004144: 97 14 00 00  	auipc	s1, 1
80004148: 93 84 c4 23  	addi	s1, s1, 572
8000414c: 87 b0 04 00  	fld	ft1, 0(s1)

80004150 <.LBB5_44>:
80004150: 97 14 00 00  	auipc	s1, 1
80004154: 93 84 84 23  	addi	s1, s1, 568
80004158: 07 b1 04 00  	fld	ft2, 0(s1)
8000415c: 53 00 a5 22  	fmv.d	ft0, fa0
80004160: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004164: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004168: b3 f4 84 00  	and	s1, s1, s0
8000416c: 93 0a 08 00  	mv	s5, a6
80004170: 13 89 07 00  	mv	s2, a5
80004174: 93 07 07 00  	mv	a5, a4
80004178: 93 89 06 00  	mv	s3, a3
8000417c: 13 0a 06 00  	mv	s4, a2
80004180: 13 8b 05 00  	mv	s6, a1
80004184: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004188: 63 92 04 06  	bnez	s1, 0x800041ec <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000418c: 13 85 0b 00  	mv	a0, s7
80004190: 93 05 0b 00  	mv	a1, s6
80004194: 13 06 0a 00  	mv	a2, s4
80004198: 93 86 09 00  	mv	a3, s3
8000419c: 53 05 00 22  	fmv.d	fa0, ft0
800041a0: 13 87 07 00  	mv	a4, a5
800041a4: 93 07 09 00  	mv	a5, s2
800041a8: 13 88 0a 00  	mv	a6, s5
800041ac: 83 2d c1 04  	lw	s11, 76(sp)
800041b0: 03 2d 01 05  	lw	s10, 80(sp)
800041b4: 83 2c 41 05  	lw	s9, 84(sp)
800041b8: 03 2c 81 05  	lw	s8, 88(sp)
800041bc: 83 2b c1 05  	lw	s7, 92(sp)
800041c0: 03 2b 01 06  	lw	s6, 96(sp)
800041c4: 83 2a 41 06  	lw	s5, 100(sp)
800041c8: 03 2a 81 06  	lw	s4, 104(sp)
800041cc: 83 29 c1 06  	lw	s3, 108(sp)
800041d0: 03 29 01 07  	lw	s2, 112(sp)
800041d4: 83 24 41 07  	lw	s1, 116(sp)
800041d8: 03 24 81 07  	lw	s0, 120(sp)
800041dc: 83 20 c1 07  	lw	ra, 124(sp)
800041e0: 13 01 01 08  	addi	sp, sp, 128
800041e4: 17 03 00 00  	auipc	t1, 0
800041e8: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800041ec: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800041f0: 13 f5 0a 40  	andi	a0, s5, 1024
800041f4: 13 07 60 00  	addi	a4, zero, 6
800041f8: 63 04 05 00  	beqz	a0, 0x80004200 <.LBB5_44+0xb0>
800041fc: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004200: 27 30 a1 02  	fsd	fa0, 32(sp)
80004204: 83 25 41 02  	lw	a1, 36(sp)
80004208: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000420c: 93 d6 45 01  	srli	a3, a1, 20
80004210: b7 07 10 00  	lui	a5, 256
80004214: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004218: b3 f5 f5 00  	and	a1, a1, a5
8000421c: 23 2c c1 00  	sw	a2, 24(sp)
80004220: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004224: b3 e5 c5 00  	or	a1, a1, a2
80004228: 23 2e b1 00  	sw	a1, 28(sp)
8000422c: 87 30 81 01  	fld	ft1, 24(sp)

80004230 <.LBB5_45>:
80004230: 97 15 00 00  	auipc	a1, 1
80004234: 93 85 05 16  	addi	a1, a1, 352
80004238: 07 b1 05 00  	fld	ft2, 0(a1)

8000423c <.LBB5_46>:
8000423c: 97 15 00 00  	auipc	a1, 1
80004240: 93 85 c5 15  	addi	a1, a1, 348
80004244: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004248: 93 f5 f6 7f  	andi	a1, a3, 2047
8000424c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004250: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004254: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004258 <.LBB5_47>:
80004258: 97 15 00 00  	auipc	a1, 1
8000425c: 93 85 85 14  	addi	a1, a1, 328
80004260: 07 b1 05 00  	fld	ft2, 0(a1)

80004264 <.LBB5_48>:
80004264: 97 15 00 00  	auipc	a1, 1
80004268: 93 85 45 14  	addi	a1, a1, 324
8000426c: 87 b1 05 00  	fld	ft3, 0(a1)

80004270 <.LBB5_49>:
80004270: 97 15 00 00  	auipc	a1, 1
80004274: 93 85 05 14  	addi	a1, a1, 320
80004278: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000427c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004280: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004284: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004288: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000428c <.LBB5_50>:
8000428c: 17 16 00 00  	auipc	a2, 1
80004290: 13 06 c6 12  	addi	a2, a2, 300
80004294: 87 31 06 00  	fld	ft3, 0(a2)

80004298 <.LBB5_51>:
80004298: 17 16 00 00  	auipc	a2, 1
8000429c: 13 06 86 12  	addi	a2, a2, 296
800042a0: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800042a4: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800042a8: 53 01 06 d2  	fcvt.d.w	ft2, a2
800042ac: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800042b0: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800042b4: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800042b8: 13 06 f6 3f  	addi	a2, a2, 1023
800042bc: 23 28 01 00  	sw	zero, 16(sp)
800042c0: 13 16 46 01  	slli	a2, a2, 20
800042c4: 23 2a c1 00  	sw	a2, 20(sp)

800042c8 <.LBB5_52>:
800042c8: 17 16 00 00  	auipc	a2, 1
800042cc: 13 06 86 10  	addi	a2, a2, 264
800042d0: 87 31 06 00  	fld	ft3, 0(a2)

800042d4 <.LBB5_53>:
800042d4: 17 16 00 00  	auipc	a2, 1
800042d8: 13 06 46 10  	addi	a2, a2, 260
800042dc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800042e0: 87 32 01 01  	fld	ft5, 16(sp)

800042e4 <.LBB5_54>:
800042e4: 17 16 00 00  	auipc	a2, 1
800042e8: 13 06 46 0e  	addi	a2, a2, 228
800042ec: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800042f0: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

800042f4 <.LBB5_55>:
800042f4: 17 16 00 00  	auipc	a2, 1
800042f8: 13 06 c6 0e  	addi	a2, a2, 236
800042fc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004300: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004304: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004308: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000430c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004310: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004314: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004318: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000431c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004320: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004324: 63 0a 06 00  	beqz	a2, 0x80004338 <.LBB5_56+0x10>

80004328 <.LBB5_56>:
80004328: 97 16 00 00  	auipc	a3, 1
8000432c: 93 86 06 0c  	addi	a3, a3, 192
80004330: 07 b1 06 00  	fld	ft2, 0(a3)
80004334: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004338: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000433c: 93 05 34 06  	addi	a1, s0, 99
80004340: 93 b5 75 0c  	sltiu	a1, a1, 199
80004344: 13 06 50 00  	addi	a2, zero, 5
80004348: b7 16 00 00  	lui	a3, 1
8000434c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004350: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004354: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004358: 63 84 06 06  	beqz	a3, 0x800043c0 <.LBB5_58+0x58>

8000435c <.LBB5_57>:
8000435c: 97 15 00 00  	auipc	a1, 1
80004360: 93 85 45 09  	addi	a1, a1, 148
80004364: 07 b1 05 00  	fld	ft2, 0(a1)

80004368 <.LBB5_58>:
80004368: 97 15 00 00  	auipc	a1, 1
8000436c: 93 85 05 09  	addi	a1, a1, 144
80004370: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004374: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004378: 53 86 a1 a2  	fle.d	a2, ft3, fa0
8000437c: b3 e5 c5 00  	or	a1, a1, a2
80004380: 63 98 05 00  	bnez	a1, 0x80004390 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004384: 63 40 e4 02  	blt	s0, a4, 0x800043a4 <.LBB5_58+0x3c>
80004388: 13 07 00 00  	mv	a4, zero
8000438c: 6f 00 00 02  	j	0x800043ac <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004390: 63 06 07 02  	beqz	a4, 0x800043bc <.LBB5_58+0x54>
80004394: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004398: 13 45 15 00  	xori	a0, a0, 1
8000439c: 33 07 a7 40  	sub	a4, a4, a0
800043a0: 6f 00 00 02  	j	0x800043c0 <.LBB5_58+0x58>
800043a4: 13 45 f4 ff  	not	a0, s0
800043a8: 33 07 a7 00  	add	a4, a4, a0
800043ac: 13 04 00 00  	mv	s0, zero
800043b0: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800043b4: 93 ea 0a 40  	ori	s5, s5, 1024
800043b8: 6f 00 80 00  	j	0x800043c0 <.LBB5_58+0x58>
800043bc: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800043c0: b3 05 99 41  	sub	a1, s2, s9
800043c4: 33 36 b9 00  	sltu	a2, s2, a1
800043c8: 13 05 00 00  	mv	a0, zero
800043cc: 63 14 06 00  	bnez	a2, 0x800043d4 <.LBB5_58+0x6c>
800043d0: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800043d4: 93 07 00 00  	mv	a5, zero
800043d8: 93 d5 1a 00  	srli	a1, s5, 1
800043dc: 93 f4 15 00  	andi	s1, a1, 1
800043e0: b3 35 90 01  	snez	a1, s9
800043e4: b3 f5 b4 00  	and	a1, s1, a1
800043e8: 53 01 00 d2  	fcvt.d.w	ft2, zero
800043ec: 63 94 05 00  	bnez	a1, 0x800043f4 <.LBB5_58+0x8c>
800043f0: 93 07 05 00  	mv	a5, a0
;   if (expval) {
800043f4: 93 35 14 00  	seqz	a1, s0
800043f8: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
800043fc: 63 94 05 00  	bnez	a1, 0x80004404 <.LBB5_58+0x9c>
80004400: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004404: 63 04 05 00  	beqz	a0, 0x8000440c <.LBB5_58+0xa4>
80004408: 53 15 a5 22  	fneg.d	fa0, fa0
8000440c: 37 f5 ff ff  	lui	a0, 1048575
80004410: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004414: 33 f8 aa 00  	and	a6, s5, a0
80004418: 13 85 0b 00  	mv	a0, s7
8000441c: 93 05 0b 00  	mv	a1, s6
80004420: 13 06 0a 00  	mv	a2, s4
80004424: 93 86 09 00  	mv	a3, s3
80004428: 97 f0 ff ff  	auipc	ra, 1048575
8000442c: e7 80 40 60  	jalr	1540(ra)
80004430: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004434: 63 82 0c 18  	beqz	s9, 0x800045b8 <.LBB5_58+0x250>
80004438: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
8000443c: 13 f5 0a 02  	andi	a0, s5, 32
80004440: 13 45 55 06  	xori	a0, a0, 101
80004444: 93 05 0b 00  	mv	a1, s6
80004448: 13 06 0d 00  	mv	a2, s10
8000444c: 93 86 09 00  	mv	a3, s3
80004450: e7 80 0b 00  	jalr	s7
80004454: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004458: 93 5a f4 01  	srli	s5, s0, 31
8000445c: 13 55 f4 41  	srai	a0, s0, 31
80004460: b3 05 a4 00  	add	a1, s0, a0
80004464: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004468: 93 8d dc ff  	addi	s11, s9, -3
8000446c: 13 04 f0 01  	addi	s0, zero, 31
80004470: 37 d5 cc cc  	lui	a0, 838861
80004474: 13 05 d5 cc  	addi	a0, a0, -819
80004478: 13 08 a0 00  	addi	a6, zero, 10
8000447c: 93 08 c1 02  	addi	a7, sp, 44
80004480: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004484: b3 37 a7 02  	mulhu	a5, a4, a0
80004488: 93 d5 37 00  	srli	a1, a5, 3
8000448c: b3 87 05 03  	mul	a5, a1, a6
80004490: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004494: 13 e6 07 03  	ori	a2, a5, 48
80004498: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000449c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800044a0: 13 0c 1c 00  	addi	s8, s8, 1
800044a4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800044a8: 33 b6 e2 00  	sltu	a2, t0, a4
800044ac: 33 f6 c7 00  	and	a2, a5, a2
800044b0: 93 8d fd ff  	addi	s11, s11, -1
800044b4: 13 04 f4 ff  	addi	s0, s0, -1
800044b8: 13 87 05 00  	mv	a4, a1
800044bc: e3 14 06 fc  	bnez	a2, 0x80004484 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800044c0: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800044c4: 33 35 ac 00  	sltu	a0, s8, a0
800044c8: 13 45 15 00  	xori	a0, a0, 1
800044cc: 93 c5 17 00  	xori	a1, a5, 1
800044d0: 33 e5 a5 00  	or	a0, a1, a0
800044d4: 63 12 05 04  	bnez	a0, 0x80004518 <.LBB5_58+0x1b0>
800044d8: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800044dc: b3 85 8c 41  	sub	a1, s9, s8
800044e0: 93 85 d5 ff  	addi	a1, a1, -3
800044e4: 13 06 f0 01  	addi	a2, zero, 31
800044e8: 33 06 86 41  	sub	a2, a2, s8
800044ec: 33 05 85 01  	add	a0, a0, s8
800044f0: 63 e4 c5 00  	bltu	a1, a2, 0x800044f8 <.LBB5_58+0x190>
800044f4: 93 05 06 00  	mv	a1, a2
800044f8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800044fc: 93 05 00 03  	addi	a1, zero, 48
80004500: 97 c0 ff ff  	auipc	ra, 1048572
80004504: e7 80 80 05  	jalr	88(ra)
;   if (flags & FLAGS_HASH) {
80004508: 63 e4 8d 00  	bltu	s11, s0, 0x80004510 <.LBB5_58+0x1a8>
8000450c: 93 0d 04 00  	mv	s11, s0
80004510: 33 85 8d 01  	add	a0, s11, s8
80004514: 13 0c 15 00  	addi	s8, a0, 1
80004518: 83 2c c1 00  	lw	s9, 12(sp)
8000451c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004520: 63 60 85 03  	bltu	a0, s8, 0x80004540 <.LBB5_58+0x1d8>
80004524: 13 05 c1 02  	addi	a0, sp, 44
80004528: 33 05 85 01  	add	a0, a0, s8
8000452c: 93 05 d0 02  	addi	a1, zero, 45
80004530: 63 94 0a 00  	bnez	s5, 0x80004538 <.LBB5_58+0x1d0>
80004534: 93 05 b0 02  	addi	a1, zero, 43
80004538: 13 0c 1c 00  	addi	s8, s8, 1
8000453c: 23 00 b5 00  	sb	a1, 0(a0)
80004540: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004544: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004548: 33 85 8a 01  	add	a0, s5, s8
8000454c: 03 45 05 00  	lbu	a0, 0(a0)
80004550: 13 06 04 00  	mv	a2, s0
80004554: 93 04 fc ff  	addi	s1, s8, -1
80004558: 13 04 14 00  	addi	s0, s0, 1
8000455c: 93 05 0b 00  	mv	a1, s6
80004560: 93 86 09 00  	mv	a3, s3
80004564: e7 80 0b 00  	jalr	s7
80004568: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000456c: e3 9e 04 fc  	bnez	s1, 0x80004548 <.LBB5_58+0x1e0>
80004570: 33 05 44 41  	sub	a0, s0, s4
80004574: 33 35 25 01  	sltu	a0, a0, s2
80004578: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000457c: 93 c5 1c 00  	xori	a1, s9, 1
80004580: 33 e5 a5 00  	or	a0, a1, a0
80004584: 63 18 05 02  	bnez	a0, 0x800045b4 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004588: b3 04 40 41  	neg	s1, s4
8000458c: 13 0d 14 00  	addi	s10, s0, 1
80004590: 13 05 00 02  	addi	a0, zero, 32
80004594: 93 05 0b 00  	mv	a1, s6
80004598: 13 06 04 00  	mv	a2, s0
8000459c: 93 86 09 00  	mv	a3, s3
800045a0: e7 80 0b 00  	jalr	s7
800045a4: 33 85 a4 01  	add	a0, s1, s10
800045a8: 13 04 0d 00  	mv	s0, s10
800045ac: e3 60 25 ff  	bltu	a0, s2, 0x8000458c <.LBB5_58+0x224>
800045b0: 6f 00 80 00  	j	0x800045b8 <.LBB5_58+0x250>
800045b4: 13 0d 04 00  	mv	s10, s0
; }
800045b8: 13 05 0d 00  	mv	a0, s10
800045bc: 83 2d c1 04  	lw	s11, 76(sp)
800045c0: 03 2d 01 05  	lw	s10, 80(sp)
800045c4: 83 2c 41 05  	lw	s9, 84(sp)
800045c8: 03 2c 81 05  	lw	s8, 88(sp)
800045cc: 83 2b c1 05  	lw	s7, 92(sp)
800045d0: 03 2b 01 06  	lw	s6, 96(sp)
800045d4: 83 2a 41 06  	lw	s5, 100(sp)
800045d8: 03 2a 81 06  	lw	s4, 104(sp)
800045dc: 83 29 c1 06  	lw	s3, 108(sp)
800045e0: 03 29 01 07  	lw	s2, 112(sp)
800045e4: 83 24 41 07  	lw	s1, 116(sp)
800045e8: 03 24 81 07  	lw	s0, 120(sp)
800045ec: 83 20 c1 07  	lw	ra, 124(sp)
800045f0: 13 01 01 08  	addi	sp, sp, 128
800045f4: 67 80 00 00  	ret

800045f8 <_ntoa_format>:
; {
800045f8: 13 01 01 fc  	addi	sp, sp, -64
800045fc: 23 2e 11 02  	sw	ra, 60(sp)
80004600: 23 2c 81 02  	sw	s0, 56(sp)
80004604: 23 2a 91 02  	sw	s1, 52(sp)
80004608: 23 28 21 03  	sw	s2, 48(sp)
8000460c: 23 26 31 03  	sw	s3, 44(sp)
80004610: 23 24 41 03  	sw	s4, 40(sp)
80004614: 23 22 51 03  	sw	s5, 36(sp)
80004618: 23 20 61 03  	sw	s6, 32(sp)
8000461c: 23 2e 71 01  	sw	s7, 28(sp)
80004620: 23 2c 81 01  	sw	s8, 24(sp)
80004624: 23 2a 91 01  	sw	s9, 20(sp)
80004628: 23 28 a1 01  	sw	s10, 16(sp)
8000462c: 23 26 b1 01  	sw	s11, 12(sp)
80004630: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004634: 93 fa 2e 00  	andi	s5, t4, 2
80004638: 13 09 0e 00  	mv	s2, t3
8000463c: 13 8d 03 00  	mv	s10, t2
80004640: 93 8c 08 00  	mv	s9, a7
80004644: 13 8c 07 00  	mv	s8, a5
80004648: 93 89 06 00  	mv	s3, a3
8000464c: 13 0a 06 00  	mv	s4, a2
80004650: 13 8b 05 00  	mv	s6, a1
80004654: 93 0d 05 00  	mv	s11, a0
80004658: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000465c: 63 9e 0a 0c  	bnez	s5, 0x80004738 <_ntoa_format+0x140>
80004660: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004664: 63 0e 09 00  	beqz	s2, 0x80004680 <_ntoa_format+0x88>
80004668: 63 0e 04 00  	beqz	s0, 0x80004684 <_ntoa_format+0x8c>
8000466c: 13 f5 cb 00  	andi	a0, s7, 12
80004670: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004674: 33 65 05 01  	or	a0, a0, a6
80004678: 33 09 a9 40  	sub	s2, s2, a0
8000467c: 6f 00 80 00  	j	0x80004684 <_ntoa_format+0x8c>
80004680: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004684: 33 35 ac 01  	sltu	a0, s8, s10
80004688: 93 45 15 00  	xori	a1, a0, 1
8000468c: 13 05 f0 01  	addi	a0, zero, 31
80004690: 33 36 85 01  	sltu	a2, a0, s8
80004694: b3 65 b6 00  	or	a1, a2, a1
80004698: 63 94 05 04  	bnez	a1, 0x800046e0 <_ntoa_format+0xe8>
8000469c: 23 22 51 01  	sw	s5, 4(sp)
800046a0: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800046a4: 93 45 fc ff  	not	a1, s8
800046a8: b3 85 a5 01  	add	a1, a1, s10
800046ac: 33 06 85 41  	sub	a2, a0, s8
800046b0: 33 05 87 01  	add	a0, a4, s8
800046b4: 63 e4 c5 00  	bltu	a1, a2, 0x800046bc <_ntoa_format+0xc4>
800046b8: 93 05 06 00  	mv	a1, a2
800046bc: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800046c0: 93 05 00 03  	addi	a1, zero, 48
800046c4: 13 86 04 00  	mv	a2, s1
800046c8: 97 c0 ff ff  	auipc	ra, 1048572
800046cc: e7 80 00 e9  	jalr	-368(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800046d0: 33 8c 84 01  	add	s8, s1, s8
800046d4: 03 27 81 00  	lw	a4, 8(sp)
800046d8: 13 88 0a 00  	mv	a6, s5
800046dc: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800046e0: 63 0c 04 04  	beqz	s0, 0x80004738 <_ntoa_format+0x140>
800046e4: 33 35 2c 01  	sltu	a0, s8, s2
800046e8: 93 45 15 00  	xori	a1, a0, 1
800046ec: 13 05 f0 01  	addi	a0, zero, 31
800046f0: 33 36 85 01  	sltu	a2, a0, s8
800046f4: b3 e5 c5 00  	or	a1, a1, a2
800046f8: 63 90 05 04  	bnez	a1, 0x80004738 <_ntoa_format+0x140>
800046fc: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004700: 93 45 fc ff  	not	a1, s8
80004704: b3 05 b9 00  	add	a1, s2, a1
80004708: 33 06 85 41  	sub	a2, a0, s8
8000470c: 33 05 87 01  	add	a0, a4, s8
80004710: 63 e4 c5 00  	bltu	a1, a2, 0x80004718 <_ntoa_format+0x120>
80004714: 93 05 06 00  	mv	a1, a2
80004718: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000471c: 93 05 00 03  	addi	a1, zero, 48
80004720: 13 86 04 00  	mv	a2, s1
80004724: 97 c0 ff ff  	auipc	ra, 1048572
80004728: e7 80 40 e3  	jalr	-460(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000472c: 33 8c 84 01  	add	s8, s1, s8
80004730: 03 27 81 00  	lw	a4, 8(sp)
80004734: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004738: 13 f5 0b 01  	andi	a0, s7, 16
8000473c: 63 02 05 0e  	beqz	a0, 0x80004820 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004740: 13 f5 0b 40  	andi	a0, s7, 1024
80004744: 13 55 a5 00  	srli	a0, a0, 10
80004748: 93 35 1c 00  	seqz	a1, s8
8000474c: 33 65 b5 00  	or	a0, a0, a1
80004750: 63 1e 05 02  	bnez	a0, 0x8000478c <_ntoa_format+0x194>
80004754: 33 45 ac 01  	xor	a0, s8, s10
80004758: 33 35 a0 00  	snez	a0, a0
8000475c: b3 45 2c 01  	xor	a1, s8, s2
80004760: b3 35 b0 00  	snez	a1, a1
80004764: 33 75 b5 00  	and	a0, a0, a1
80004768: 63 12 05 02  	bnez	a0, 0x8000478c <_ntoa_format+0x194>
;       len--;
8000476c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004770: b3 35 a0 00  	snez	a1, a0
80004774: 13 86 0c ff  	addi	a2, s9, -16
80004778: 13 36 16 00  	seqz	a2, a2
8000477c: b3 75 b6 00  	and	a1, a2, a1
80004780: 63 84 05 00  	beqz	a1, 0x80004788 <_ntoa_format+0x190>
80004784: 13 05 ec ff  	addi	a0, s8, -2
80004788: 13 0c 05 00  	mv	s8, a0
8000478c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004790: 63 96 ac 02  	bne	s9, a0, 0x800047bc <_ntoa_format+0x1c4>
80004794: 13 f5 0b 02  	andi	a0, s7, 32
80004798: 93 55 55 00  	srli	a1, a0, 5
8000479c: 13 06 f0 01  	addi	a2, zero, 31
800047a0: 33 36 86 01  	sltu	a2, a2, s8
800047a4: b3 e5 c5 00  	or	a1, a1, a2
800047a8: 63 9e 05 02  	bnez	a1, 0x800047e4 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800047ac: 33 05 87 01  	add	a0, a4, s8
800047b0: 13 0c 1c 00  	addi	s8, s8, 1
800047b4: 93 05 80 07  	addi	a1, zero, 120
800047b8: 6f 00 c0 04  	j	0x80004804 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800047bc: 13 85 ec ff  	addi	a0, s9, -2
800047c0: 33 35 a0 00  	snez	a0, a0
800047c4: 93 05 f0 01  	addi	a1, zero, 31
800047c8: b3 b5 85 01  	sltu	a1, a1, s8
800047cc: 33 65 b5 00  	or	a0, a0, a1
800047d0: 63 1c 05 02  	bnez	a0, 0x80004808 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800047d4: 33 05 87 01  	add	a0, a4, s8
800047d8: 13 0c 1c 00  	addi	s8, s8, 1
800047dc: 93 05 20 06  	addi	a1, zero, 98
800047e0: 6f 00 40 02  	j	0x80004804 <_ntoa_format+0x20c>
800047e4: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800047e8: 13 35 15 00  	seqz	a0, a0
800047ec: 93 c5 15 00  	xori	a1, a1, 1
800047f0: 33 65 b5 00  	or	a0, a0, a1
800047f4: 63 1a 05 00  	bnez	a0, 0x80004808 <_ntoa_format+0x210>
;       buf[len++] = 'X';
800047f8: 33 05 87 01  	add	a0, a4, s8
800047fc: 13 0c 1c 00  	addi	s8, s8, 1
80004800: 93 05 80 05  	addi	a1, zero, 88
80004804: 23 00 b5 00  	sb	a1, 0(a0)
80004808: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000480c: 63 60 85 07  	bltu	a0, s8, 0x8000486c <_ntoa_format+0x274>
;       buf[len++] = '0';
80004810: 33 05 87 01  	add	a0, a4, s8
80004814: 13 0c 1c 00  	addi	s8, s8, 1
80004818: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000481c: 23 00 b5 00  	sb	a1, 0(a0)
80004820: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004824: 63 64 85 05  	bltu	a0, s8, 0x8000486c <_ntoa_format+0x274>
;     if (negative) {
80004828: 63 0a 08 00  	beqz	a6, 0x8000483c <_ntoa_format+0x244>
;       buf[len++] = '-';
8000482c: 33 05 87 01  	add	a0, a4, s8
80004830: 13 0c 1c 00  	addi	s8, s8, 1
80004834: 93 05 d0 02  	addi	a1, zero, 45
80004838: 6f 00 00 03  	j	0x80004868 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
8000483c: 13 f5 4b 00  	andi	a0, s7, 4
80004840: 63 1e 05 00  	bnez	a0, 0x8000485c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004844: 13 f5 8b 00  	andi	a0, s7, 8
80004848: 63 02 05 02  	beqz	a0, 0x8000486c <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000484c: 33 05 87 01  	add	a0, a4, s8
80004850: 13 0c 1c 00  	addi	s8, s8, 1
80004854: 93 05 00 02  	addi	a1, zero, 32
80004858: 6f 00 00 01  	j	0x80004868 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000485c: 33 05 87 01  	add	a0, a4, s8
80004860: 13 0c 1c 00  	addi	s8, s8, 1
80004864: 93 05 b0 02  	addi	a1, zero, 43
80004868: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000486c: 13 f5 3b 00  	andi	a0, s7, 3
80004870: 33 35 a0 00  	snez	a0, a0
80004874: b3 35 2c 01  	sltu	a1, s8, s2
80004878: 93 c5 15 00  	xori	a1, a1, 1
8000487c: 33 65 b5 00  	or	a0, a0, a1
80004880: 13 04 0a 00  	mv	s0, s4
80004884: 63 16 05 02  	bnez	a0, 0x800048b0 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004888: b3 04 89 41  	sub	s1, s2, s8
8000488c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004890: 13 04 16 00  	addi	s0, a2, 1
80004894: 13 05 00 02  	addi	a0, zero, 32
80004898: 93 05 0b 00  	mv	a1, s6
8000489c: 93 86 09 00  	mv	a3, s3
800048a0: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800048a4: 93 84 f4 ff  	addi	s1, s1, -1
800048a8: 13 06 04 00  	mv	a2, s0
800048ac: e3 92 04 fe  	bnez	s1, 0x80004890 <_ntoa_format+0x298>
800048b0: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800048b4: 63 0e 0c 02  	beqz	s8, 0x800048f0 <_ntoa_format+0x2f8>
800048b8: 03 25 81 00  	lw	a0, 8(sp)
800048bc: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800048c0: 33 85 8b 01  	add	a0, s7, s8
800048c4: 03 45 05 00  	lbu	a0, 0(a0)
800048c8: 93 0c fc ff  	addi	s9, s8, -1
800048cc: 93 04 14 00  	addi	s1, s0, 1
800048d0: 93 05 0b 00  	mv	a1, s6
800048d4: 13 06 04 00  	mv	a2, s0
800048d8: 93 86 09 00  	mv	a3, s3
800048dc: e7 80 0d 00  	jalr	s11
800048e0: 13 84 04 00  	mv	s0, s1
800048e4: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800048e8: e3 9c 0c fc  	bnez	s9, 0x800048c0 <_ntoa_format+0x2c8>
800048ec: 6f 00 80 00  	j	0x800048f4 <_ntoa_format+0x2fc>
800048f0: 93 04 04 00  	mv	s1, s0
800048f4: 33 85 44 41  	sub	a0, s1, s4
800048f8: 33 35 25 01  	sltu	a0, a0, s2
800048fc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004900: 93 c5 1a 00  	xori	a1, s5, 1
80004904: 33 e5 a5 00  	or	a0, a1, a0
80004908: 63 18 05 02  	bnez	a0, 0x80004938 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000490c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004910: 13 84 14 00  	addi	s0, s1, 1
80004914: 13 05 00 02  	addi	a0, zero, 32
80004918: 93 05 0b 00  	mv	a1, s6
8000491c: 13 86 04 00  	mv	a2, s1
80004920: 93 86 09 00  	mv	a3, s3
80004924: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004928: 33 05 8a 00  	add	a0, s4, s0
8000492c: 93 04 04 00  	mv	s1, s0
80004930: e3 60 25 ff  	bltu	a0, s2, 0x80004910 <_ntoa_format+0x318>
80004934: 6f 00 80 00  	j	0x8000493c <_ntoa_format+0x344>
80004938: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
8000493c: 13 05 04 00  	mv	a0, s0
80004940: 83 2d c1 00  	lw	s11, 12(sp)
80004944: 03 2d 01 01  	lw	s10, 16(sp)
80004948: 83 2c 41 01  	lw	s9, 20(sp)
8000494c: 03 2c 81 01  	lw	s8, 24(sp)
80004950: 83 2b c1 01  	lw	s7, 28(sp)
80004954: 03 2b 01 02  	lw	s6, 32(sp)
80004958: 83 2a 41 02  	lw	s5, 36(sp)
8000495c: 03 2a 81 02  	lw	s4, 40(sp)
80004960: 83 29 c1 02  	lw	s3, 44(sp)
80004964: 03 29 01 03  	lw	s2, 48(sp)
80004968: 83 24 41 03  	lw	s1, 52(sp)
8000496c: 03 24 81 03  	lw	s0, 56(sp)
80004970: 83 20 c1 03  	lw	ra, 60(sp)
80004974: 13 01 01 04  	addi	sp, sp, 64
80004978: 67 80 00 00  	ret

8000497c <_snrt_init_team>:
;     team->base.root = team;
8000497c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004980: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004984: 03 23 87 00  	lw	t1, 8(a4)
80004988: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000498c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004990: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004994: 83 22 47 00  	lw	t0, 4(a4)
80004998: 33 88 08 03  	mul	a6, a7, a6
8000499c: 33 05 58 02  	mul	a0, a6, t0
800049a0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800049a4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800049a8: 33 85 68 40  	sub	a0, a7, t1
800049ac: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800049b0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800049b4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800049b8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800049bc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800049c0: 03 25 87 01  	lw	a0, 24(a4)
800049c4: b7 05 00 10  	lui	a1, 65536
800049c8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800049cc: 23 a2 07 02  	sw	zero, 36(a5)
800049d0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800049d4: 03 25 07 02  	lw	a0, 32(a4)
800049d8: 83 25 47 02  	lw	a1, 36(a4)
800049dc: 23 a4 a7 02  	sw	a0, 40(a5)
800049e0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800049e4: 23 a8 c7 02  	sw	a2, 48(a5)
800049e8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800049ec: 23 ac d7 02  	sw	a3, 56(a5)
800049f0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800049f4: 03 25 07 01  	lw	a0, 16(a4)
800049f8: 33 08 a6 00  	add	a6, a2, a0
800049fc: 93 05 08 19  	addi	a1, a6, 400
80004a00: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004a04: b3 32 a8 00  	sltu	t0, a6, a0
80004a08: 93 55 15 00  	srli	a1, a0, 1
80004a0c: 33 03 b8 00  	add	t1, a6, a1
80004a10: b3 35 03 01  	sltu	a1, t1, a6
80004a14: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004a18: 23 a0 67 04  	sw	t1, 64(a5)
80004a1c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004a20: 13 15 15 00  	slli	a0, a0, 1
80004a24: b3 05 c5 00  	add	a1, a0, a2
80004a28: 33 b5 a5 00  	sltu	a0, a1, a0
80004a2c: 23 a4 b7 04  	sw	a1, 72(a5)
80004a30: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004a34: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004a38: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004a3c: 37 05 00 00  	lui	a0, 0
80004a40: 33 05 45 00  	add	a0, a0, tp
80004a44: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004a48: 03 a5 07 00  	lw	a0, 0(a5)
80004a4c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004a50: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004a54: b3 85 b8 40  	sub	a1, a7, a1
80004a58: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004a5c: b7 05 00 00  	lui	a1, 0
80004a60: b3 85 45 00  	add	a1, a1, tp
80004a64: 23 a2 a5 00  	sw	a0, 4(a1)
80004a68: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004a6c: 33 85 a8 02  	mul	a0, a7, a0

80004a70 <.LBB0_1>:
80004a70: 97 15 00 00  	auipc	a1, 1
80004a74: 93 85 45 99  	addi	a1, a1, -1644
80004a78: 33 05 b5 00  	add	a0, a0, a1
80004a7c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004a80: 83 28 07 03  	lw	a7, 48(a4)
80004a84: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004a88: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004a8c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004a90: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004a94: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004a98: 13 05 76 00  	addi	a0, a2, 7
80004a9c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004aa0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004aa4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004aa8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004aac: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004ab0: 03 a5 05 00  	lw	a0, 0(a1)
80004ab4: 13 05 f5 44  	addi	a0, a0, 1103
80004ab8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004abc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004ac0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004ac4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004ac8: 37 05 00 00  	lui	a0, 0
80004acc: 33 05 45 00  	add	a0, a0, tp
80004ad0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004ad4: 37 05 00 00  	lui	a0, 0
80004ad8: 33 05 45 00  	add	a0, a0, tp
80004adc: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004ae0: 67 80 00 00  	ret

80004ae4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004ae4: 37 05 00 00  	lui	a0, 0
80004ae8: 33 05 45 00  	add	a0, a0, tp
80004aec: 03 25 05 00  	lw	a0, 0(a0)
80004af0: 03 25 05 00  	lw	a0, 0(a0)
80004af4: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004af8: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004afc: 33 85 a5 40  	sub	a0, a1, a0
80004b00: 67 80 00 00  	ret

80004b04 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004b04: 37 05 00 00  	lui	a0, 0
80004b08: 33 05 45 00  	add	a0, a0, tp
80004b0c: 03 25 05 00  	lw	a0, 0(a0)
80004b10: 03 25 05 00  	lw	a0, 0(a0)
80004b14: 03 25 05 07  	lw	a0, 112(a0)
80004b18: 67 80 00 00  	ret

80004b1c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004b1c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004b20: 63 44 05 00  	bltz	a0, 0x80004b28 <__snrt_isr+0xc>
;         while (1)
80004b24: 6f 00 00 00  	j	0x80004b24 <__snrt_isr+0x8>
80004b28: b7 05 00 80  	lui	a1, 524288
80004b2c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004b30: 33 75 b5 00  	and	a0, a0, a1
80004b34: 13 05 d5 ff  	addi	a0, a0, -3
80004b38: 93 55 25 00  	srli	a1, a0, 2
80004b3c: 13 15 e5 01  	slli	a0, a0, 30
80004b40: 33 65 b5 00  	or	a0, a0, a1
80004b44: 93 05 40 00  	addi	a1, zero, 4
80004b48: 63 0a b5 06  	beq	a0, a1, 0x80004bbc <.LBB1_7+0x58>
80004b4c: 63 1a 05 08  	bnez	a0, 0x80004be0 <.LBB1_7+0x7c>
80004b50: 37 05 00 00  	lui	a0, 0
80004b54: 33 05 45 00  	add	a0, a0, tp
80004b58: 03 25 05 00  	lw	a0, 0(a0)
80004b5c: 03 25 05 00  	lw	a0, 0(a0)
80004b60: f3 25 40 f1  	csrr	a1, mhartid

80004b64 <.LBB1_7>:
;     asm volatile(
80004b64: 17 16 00 00  	auipc	a2, 1
80004b68: 13 06 c6 89  	addi	a2, a2, -1892
80004b6c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004b70: 93 06 06 00  	mv	a3, a2
80004b74: 93 02 10 00  	addi	t0, zero, 1
80004b78: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004b7c: e3 9e 02 fe  	bnez	t0, 0x80004b78 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004b80: b7 06 00 00  	lui	a3, 0
80004b84: b3 86 46 00  	add	a3, a3, tp
80004b88: 83 a6 86 00  	lw	a3, 8(a3)
80004b8c: 33 85 a5 40  	sub	a0, a1, a0
80004b90: 93 55 35 00  	srli	a1, a0, 3
80004b94: 93 f5 c5 ff  	andi	a1, a1, -4
80004b98: b3 85 b6 00  	add	a1, a3, a1
80004b9c: 83 a6 05 00  	lw	a3, 0(a1)
80004ba0: 13 07 10 00  	addi	a4, zero, 1
80004ba4: 33 15 a7 00  	sll	a0, a4, a0
80004ba8: 13 45 f5 ff  	not	a0, a0
80004bac: 33 f5 a6 00  	and	a0, a3, a0
80004bb0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004bb4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004bb8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004bbc: 37 05 00 00  	lui	a0, 0
80004bc0: 33 05 45 00  	add	a0, a0, tp
80004bc4: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004bc8: b7 05 00 00  	lui	a1, 0
80004bcc: b3 85 45 00  	add	a1, a1, tp
80004bd0: 83 a5 c5 00  	lw	a1, 12(a1)
80004bd4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004bd8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004bdc: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004be0: 67 80 00 00  	ret

Disassembly of section .init:

80004bf0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004bf0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004bf4: 93 81 81 f1  	addi	gp, gp, -232

80004bf8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004bf8: 97 00 00 00  	auipc	ra, 0
80004bfc: e7 80 40 3c  	jalr	964(ra)

80004c00 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004c00: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004c04: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004c08: 97 00 00 00  	auipc	ra, 0
80004c0c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004c10: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004c14: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004c18: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004c1c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004c20: 63 92 02 02  	bnez	t0, 0x80004c44 <snrt.crt0.init_registers>

80004c24 <.Lpcrel_hi0>:
;     la        t0, _edata
80004c24: 97 02 00 00  	auipc	t0, 0
80004c28: 93 82 c2 7d  	addi	t0, t0, 2012

80004c2c <.Lpcrel_hi1>:
;     la        t1, _end
80004c2c: 17 03 00 00  	auipc	t1, 0
80004c30: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
80004c34: 63 d8 62 00  	bge	t0, t1, 0x80004c44 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004c38: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004c3c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004c40: e3 cc 62 fe  	blt	t0, t1, 0x80004c38 <.Lpcrel_hi1+0xc>

80004c44 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004c44: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004c48: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004c4c: 63 82 02 08  	beqz	t0, 0x80004cd0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004c50: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004c54: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004c58: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004c5c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004c60: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004c64: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004c68: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004c6c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004c70: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004c74: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004c78: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004c7c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004c80: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004c84: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004c88: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004c8c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004c90: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004c94: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004c98: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004c9c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004ca0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004ca4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004ca8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004cac: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004cb0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004cb4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004cb8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004cbc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004cc0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004cc4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004cc8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004ccc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004cd0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004cd0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004cd4: 23 a0 06 00  	sw	zero, 0(a3)

80004cd8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004cd8: 97 02 00 00  	auipc	t0, 0
80004cdc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004ce0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004ce4: 93 87 06 00  	mv	a5, a3

80004ce8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004ce8: 97 03 00 00  	auipc	t2, 0
80004cec: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004cf0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004cf4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004cf8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004cfc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004d00: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004d04: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004d08: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004d0c: b3 86 66 40  	sub	a3, a3, t1

80004d10 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004d10: 97 02 00 00  	auipc	t0, 0
80004d14: 93 82 82 5f  	addi	t0, t0, 1528

80004d18 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004d18: 17 03 00 00  	auipc	t1, 0
80004d1c: 13 03 03 5f  	addi	t1, t1, 1520

80004d20 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004d20: 97 03 00 00  	auipc	t2, 0
80004d24: 93 83 83 5e  	addi	t2, t2, 1512

80004d28 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004d28: 17 0e 00 00  	auipc	t3, 0
80004d2c: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004d30: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004d34: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004d38: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004d3c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004d40: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004d44: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004d48: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004d4c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004d50: 63 dc 62 00  	bge	t0, t1, 0x80004d68 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004d54: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004d58: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004d5c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004d60: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004d64: e3 c8 62 fe  	blt	t0, t1, 0x80004d54 <.Lpcrel_hi7+0x2c>

80004d68 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004d68: 97 02 00 00  	auipc	t0, 0
80004d6c: 93 82 02 5a  	addi	t0, t0, 1440

80004d70 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004d70: 17 03 00 00  	auipc	t1, 0
80004d74: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80004d78: 63 da 62 00  	bge	t0, t1, 0x80004d8c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004d7c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80004d80: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004d84: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80004d88: e3 ca 72 fe  	blt	t0, t2, 0x80004d7c <.Lpcrel_hi9+0xc>

80004d8c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80004d8c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80004d90: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80004d94: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80004d98: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80004d9c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80004da0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80004da4: 97 00 00 00  	auipc	ra, 0
80004da8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80004dac: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80004db0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80004db4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80004db8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80004dbc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80004dc0: 13 01 41 01  	addi	sp, sp, 20

80004dc4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80004dc4: 97 02 00 00  	auipc	t0, 0
80004dc8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80004dcc: 73 90 52 30  	csrw	mtvec, t0

80004dd0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80004dd0: 97 00 00 00  	auipc	ra, 0
80004dd4: e7 80 00 22  	jalr	544(ra)

80004dd8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80004dd8: 97 c0 ff ff  	auipc	ra, 1048572
80004ddc: e7 80 c0 85  	jalr	-1956(ra)
;     mv        s0, a0 # store return value in s0
80004de0: 13 04 05 00  	mv	s0, a0

80004de4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80004de4: 97 00 00 00  	auipc	ra, 0
80004de8: e7 80 c0 20  	jalr	524(ra)

80004dec <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80004dec: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80004df0: 97 00 00 00  	auipc	ra, 0
80004df4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80004df8: 73 00 50 10  	wfi	
;     j       1b
80004dfc: 6f f0 df ff  	j	0x80004df8 <snrt.crt0.end+0xc>

80004e00 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80004e00: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80004e04: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80004e08: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80004e0c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80004e10: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80004e14: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80004e18: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80004e1c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80004e20: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80004e24: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80004e28: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80004e2c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80004e30: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80004e34: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80004e38: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80004e3c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80004e40: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80004e44: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80004e48: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004e4c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004e50: 63 84 02 08  	beqz	t0, 0x80004ed8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80004e54: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80004e58: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80004e5c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80004e60: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80004e64: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80004e68: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80004e6c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80004e70: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80004e74: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80004e78: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80004e7c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80004e80: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80004e84: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80004e88: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80004e8c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80004e90: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80004e94: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80004e98: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80004e9c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80004ea0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80004ea4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80004ea8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80004eac: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80004eb0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80004eb4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80004eb8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80004ebc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80004ec0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80004ec4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80004ec8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80004ecc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80004ed0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80004ed4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80004ed8: 97 00 00 00  	auipc	ra, 0
80004edc: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80004ee0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004ee4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004ee8: 63 84 02 08  	beqz	t0, 0x80004f70 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80004eec: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80004ef0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80004ef4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80004ef8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80004efc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80004f00: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80004f04: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80004f08: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80004f0c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80004f10: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80004f14: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80004f18: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80004f1c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80004f20: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80004f24: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80004f28: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80004f2c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80004f30: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80004f34: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80004f38: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80004f3c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80004f40: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80004f44: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80004f48: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80004f4c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80004f50: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80004f54: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80004f58: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80004f5c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80004f60: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80004f64: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80004f68: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80004f6c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80004f70: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80004f74: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80004f78: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80004f7c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80004f80: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80004f84: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80004f88: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80004f8c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80004f90: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80004f94: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80004f98: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80004f9c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80004fa0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80004fa4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80004fa8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80004fac: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80004fb0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80004fb4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80004fb8: 73 00 20 30  	mret	

80004fbc <_snrt_init_core_info>:
;     mv        a4, a1
80004fbc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80004fc0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80004fc4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80004fc8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80004fcc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80004fd0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80004fd4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80004fd8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80004fdc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80004fe0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80004fe4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80004fe8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80004fec: 67 80 00 00  	ret

80004ff0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80004ff0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80004ff4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80004ff8: 97 00 00 00  	auipc	ra, 0
80004ffc: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005000: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005004: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005008: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000500c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005010: 67 80 00 00  	ret

80005014 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005014: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005018: 67 80 00 00  	ret

8000501c <_snrt_exit>:
;     addi      sp, sp, -8
8000501c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005020: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005024: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005028: 97 00 00 00  	auipc	ra, 0
8000502c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80005030: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005034: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005038: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000503c: 63 1c 05 00  	bnez	a0, 0x80005054 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005040: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005044: 93 e2 12 00  	ori	t0, t0, 1

80005048 <.Lpcrel_hi11>:
;     la        t1, tohost
80005048: 17 03 00 00  	auipc	t1, 0
8000504c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80005050: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005054: 67 80 00 00  	ret
