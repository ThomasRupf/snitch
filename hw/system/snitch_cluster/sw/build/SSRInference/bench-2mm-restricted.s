
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-2mm-restricted:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004a60 80000000 TEXT
  2 .init             00000468 80004a60 TEXT
  3 .rodata           00000238 80004ec8 DATA
  4 .htif             00000048 80005100 DATA
  5 .tdata            00000000 80005148 DATA
  6 .tbss             00000010 80005148 BSS
  7 .tbssend          00000000 80005158 DATA
  8 .sdata            000000e8 80005158 DATA
  9 .data             00000000 80005240 DATA
 10 .sbss             00000004 80005240 BSS
 11 .bss              00000000 80005244 BSS
 12 .dram             00000000 80005244 DATA
 13 .debug_info       00003701 00000000 
 14 .debug_abbrev     00000c0c 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003705 00000000 
 17 .debug_loc        00003eff 00000000 
 18 .debug_ranges     00000398 00000000 
 19 .debug_str        00000b10 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003370 00000000 
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
800006a0: 6f 20 80 4a  	j	0x80002b48 <.LBB0_80+0x10>
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
800006d4: 13 07 00 00  	mv	a4, zero
800006d8: 6f 00 00 01  	j	0x800006e8 <main+0xb4>
;     void *ret = (void *)alloc->next;
800006dc: 13 87 07 00  	mv	a4, a5
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
80000714: 13 0d 00 00  	mv	s10, zero
80000718: 6f 00 00 01  	j	0x80000728 <main+0xf4>
;     void *ret = (void *)alloc->next;
8000071c: 13 8d 07 00  	mv	s10, a5
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
80000760: 23 22 e1 02  	sw	a4, 36(sp)
80000764: 23 24 f1 02  	sw	a5, 40(sp)
;   for (i = 0; i < ni; i++)
80000768: 13 55 44 01  	srli	a0, s0, 20
8000076c: 33 35 a0 00  	snez	a0, a0
80000770: b7 f5 11 00  	lui	a1, 287
80000774: 93 85 95 50  	addi	a1, a1, 1289
80000778: b3 35 b4 00  	sltu	a1, s0, a1
8000077c: b3 75 b5 00  	and	a1, a0, a1

80000780 <.LBB0_68>:
80000780: 17 55 00 00  	auipc	a0, 5
80000784: 13 05 85 9d  	addi	a0, a0, -1576
80000788: 23 2a b1 00  	sw	a1, 20(sp)
8000078c: 23 2e 81 00  	sw	s0, 28(sp)
80000790: 13 08 00 00  	mv	a6, zero
80000794: 93 08 00 00  	mv	a7, zero
80000798: 63 8c 05 24  	beqz	a1, 0x800009f0 <.LBB0_68+0x270>
8000079c: 13 03 00 00  	mv	t1, zero
800007a0: 93 03 00 00  	mv	t2, zero
800007a4: 13 0e 00 00  	mv	t3, zero
800007a8: 93 0e 00 00  	mv	t4, zero
800007ac: 13 0f 00 00  	mv	t5, zero
800007b0: 93 0f 00 00  	mv	t6, zero
800007b4: 13 09 00 00  	mv	s2, zero
800007b8: 93 05 80 00  	addi	a1, zero, 8
800007bc: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
800007c0: 93 06 00 04  	addi	a3, zero, 64
800007c4: 13 07 00 0c  	addi	a4, zero, 192
800007c8: ab 20 d6 00  	scfgw	a2, a3
800007cc: ab a0 e5 00  	scfgw	a1, a4
800007d0: 13 06 f0 00  	addi	a2, zero, 15
800007d4: 93 06 00 06  	addi	a3, zero, 96
800007d8: 13 07 00 0e  	addi	a4, zero, 224
800007dc: ab 20 d6 00  	scfgw	a2, a3
800007e0: ab a0 e5 00  	scfgw	a1, a4
800007e4: 93 05 00 02  	addi	a1, zero, 32
800007e8: ab 20 b0 00  	scfgw	zero, a1
800007ec: 2b 20 04 3a  	scfgwi	s0, 928
800007f0: 73 e0 00 7c  	csrsi	1984, 1
800007f4: 93 09 10 00  	addi	s3, zero, 1
800007f8: 87 31 05 00  	fld	ft3, 0(a0)
800007fc: 93 02 10 15  	addi	t0, zero, 337
80000800: 13 0a 10 00  	addi	s4, zero, 1
80000804: 93 0a 10 00  	addi	s5, zero, 1
80000808: 13 0b 10 00  	addi	s6, zero, 1
8000080c: 93 07 10 00  	addi	a5, zero, 1
80000810: 93 04 10 00  	addi	s1, zero, 1
80000814: 13 04 10 00  	addi	s0, zero, 1
80000818: 13 05 10 00  	addi	a0, zero, 1
8000081c: 93 05 10 00  	addi	a1, zero, 1
80000820: 13 06 10 00  	addi	a2, zero, 1
80000824: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000828: 53 80 31 22  	fmv.d	ft0, ft3
8000082c: 13 f7 f9 00  	andi	a4, s3, 15
80000830: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000834: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000838: 53 00 42 22  	fmv.d	ft0, ft4
8000083c: 13 77 e8 00  	andi	a4, a6, 14
80000840: 13 67 17 00  	ori	a4, a4, 1
80000844: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000848: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000084c: 53 00 42 22  	fmv.d	ft0, ft4
80000850: 13 77 fa 00  	andi	a4, s4, 15
80000854: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000858: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000085c: 53 00 42 22  	fmv.d	ft0, ft4
80000860: 13 f7 c8 00  	andi	a4, a7, 12
80000864: 13 67 17 00  	ori	a4, a4, 1
80000868: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000086c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000870: 53 00 42 22  	fmv.d	ft0, ft4
80000874: 13 f7 fa 00  	andi	a4, s5, 15
80000878: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000087c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000880: 53 00 42 22  	fmv.d	ft0, ft4
80000884: 13 77 e3 00  	andi	a4, t1, 14
80000888: 13 67 17 00  	ori	a4, a4, 1
8000088c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000890: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000894: 53 00 42 22  	fmv.d	ft0, ft4
80000898: 13 77 fb 00  	andi	a4, s6, 15
8000089c: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008a0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a4: 53 00 42 22  	fmv.d	ft0, ft4
800008a8: 13 f7 83 00  	andi	a4, t2, 8
800008ac: 13 67 17 00  	ori	a4, a4, 1
800008b0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b8: 53 00 42 22  	fmv.d	ft0, ft4
800008bc: 13 f7 f7 00  	andi	a4, a5, 15
800008c0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008c4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c8: 53 00 42 22  	fmv.d	ft0, ft4
800008cc: 13 77 ee 00  	andi	a4, t3, 14
800008d0: 13 67 17 00  	ori	a4, a4, 1
800008d4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008dc: 53 00 42 22  	fmv.d	ft0, ft4
800008e0: 13 f7 f4 00  	andi	a4, s1, 15
800008e4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008e8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008ec: 53 00 42 22  	fmv.d	ft0, ft4
800008f0: 13 f7 ce 00  	andi	a4, t4, 12
800008f4: 13 67 17 00  	ori	a4, a4, 1
800008f8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008fc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000900: 53 00 42 22  	fmv.d	ft0, ft4
80000904: 13 77 f4 00  	andi	a4, s0, 15
80000908: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000090c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000910: 53 00 42 22  	fmv.d	ft0, ft4
80000914: 13 77 ef 00  	andi	a4, t5, 14
80000918: 13 67 17 00  	ori	a4, a4, 1
8000091c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000920: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000924: 53 00 42 22  	fmv.d	ft0, ft4
80000928: 13 77 f5 00  	andi	a4, a0, 15
8000092c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000930: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000934: 53 00 42 22  	fmv.d	ft0, ft4
80000938: 53 80 31 22  	fmv.d	ft0, ft3
8000093c: 13 f7 f5 00  	andi	a4, a1, 15
80000940: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000944: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000948: 53 00 42 22  	fmv.d	ft0, ft4
8000094c: 13 f7 ef 00  	andi	a4, t6, 14
80000950: 13 67 17 00  	ori	a4, a4, 1
80000954: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000958: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000095c: 53 00 42 22  	fmv.d	ft0, ft4
80000960: 13 77 f6 00  	andi	a4, a2, 15
80000964: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000968: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000096c: 53 00 42 22  	fmv.d	ft0, ft4
80000970: 13 77 c9 00  	andi	a4, s2, 12
80000974: 13 67 17 00  	ori	a4, a4, 1
80000978: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000097c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000980: 53 00 42 22  	fmv.d	ft0, ft4
80000984: 13 f7 f6 00  	andi	a4, a3, 15
80000988: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000098c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000990: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
80000994: 93 86 56 01  	addi	a3, a3, 21
80000998: 13 09 49 01  	addi	s2, s2, 20
8000099c: 13 06 36 01  	addi	a2, a2, 19
800009a0: 93 8f 2f 01  	addi	t6, t6, 18
800009a4: 93 85 15 01  	addi	a1, a1, 17
800009a8: 13 05 f5 00  	addi	a0, a0, 15
800009ac: 13 0f ef 00  	addi	t5, t5, 14
800009b0: 13 04 d4 00  	addi	s0, s0, 13
800009b4: 93 8e ce 00  	addi	t4, t4, 12
800009b8: 93 84 b4 00  	addi	s1, s1, 11
800009bc: 13 0e ae 00  	addi	t3, t3, 10
800009c0: 93 87 97 00  	addi	a5, a5, 9
800009c4: 93 83 83 00  	addi	t2, t2, 8
800009c8: 13 0b 7b 00  	addi	s6, s6, 7
800009cc: 13 03 63 00  	addi	t1, t1, 6
800009d0: 93 8a 5a 00  	addi	s5, s5, 5
800009d4: 93 88 48 00  	addi	a7, a7, 4
800009d8: 13 0a 3a 00  	addi	s4, s4, 3
800009dc: 13 08 28 00  	addi	a6, a6, 2
800009e0: 93 89 19 00  	addi	s3, s3, 1
800009e4: e3 92 56 e4  	bne	a3, t0, 0x80000828 <.LBB0_68+0xa8>
800009e8: 73 f0 00 7c  	csrci	1984, 1
800009ec: 6f 00 80 22  	j	0x80000c14 <.LBB0_68+0x494>
800009f0: 93 02 00 00  	mv	t0, zero
800009f4: 13 0e 00 00  	mv	t3, zero
800009f8: 93 0e 00 00  	mv	t4, zero
800009fc: 13 0f 00 00  	mv	t5, zero
80000a00: 93 0f 00 00  	mv	t6, zero
80000a04: 13 09 00 00  	mv	s2, zero
80000a08: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a0c: 93 05 84 05  	addi	a1, s0, 88
80000a10: 13 0a 10 00  	addi	s4, zero, 1
80000a14: 37 03 b0 3f  	lui	t1, 260864
80000a18: 07 30 05 00  	fld	ft0, 0(a0)
80000a1c: 93 03 10 15  	addi	t2, zero, 337
80000a20: 93 0a 10 00  	addi	s5, zero, 1
80000a24: 13 0b 10 00  	addi	s6, zero, 1
80000a28: 93 0b 10 00  	addi	s7, zero, 1
80000a2c: 13 0c 10 00  	addi	s8, zero, 1
80000a30: 13 04 10 00  	addi	s0, zero, 1
80000a34: 13 05 10 00  	addi	a0, zero, 1
80000a38: 13 06 10 00  	addi	a2, zero, 1
80000a3c: 93 06 10 00  	addi	a3, zero, 1
80000a40: 13 07 10 00  	addi	a4, zero, 1
80000a44: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000a48: 23 a6 65 fa  	sw	t1, -84(a1)
80000a4c: 23 a4 05 fa  	sw	zero, -88(a1)
80000a50: 93 f4 f7 00  	andi	s1, a5, 15
80000a54: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a58: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a5c: 27 b8 15 fa  	fsd	ft1, -80(a1)
80000a60: 93 74 e9 00  	andi	s1, s2, 14
80000a64: 93 e4 14 00  	ori	s1, s1, 1
80000a68: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a6c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a70: 27 bc 15 fa  	fsd	ft1, -72(a1)
80000a74: 93 74 f6 00  	andi	s1, a2, 15
80000a78: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a7c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a80: 27 b0 15 fc  	fsd	ft1, -64(a1)
80000a84: 93 74 cf 00  	andi	s1, t5, 12
80000a88: 93 e4 14 00  	ori	s1, s1, 1
80000a8c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a90: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a94: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000a98: 93 74 f4 00  	andi	s1, s0, 15
80000a9c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000aa0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000aa4: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000aa8: 93 f4 ee 00  	andi	s1, t4, 14
80000aac: 93 e4 14 00  	ori	s1, s1, 1
80000ab0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ab4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ab8: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000abc: 93 f4 fb 00  	andi	s1, s7, 15
80000ac0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ac4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ac8: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000acc: 93 f4 82 00  	andi	s1, t0, 8
80000ad0: 93 e4 14 00  	ori	s1, s1, 1
80000ad4: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ad8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000adc: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000ae0: 93 f4 fa 00  	andi	s1, s5, 15
80000ae4: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ae8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000aec: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000af0: 93 74 e8 00  	andi	s1, a6, 14
80000af4: 93 e4 14 00  	ori	s1, s1, 1
80000af8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000afc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b00: 27 bc 15 fe  	fsd	ft1, -8(a1)
80000b04: 93 74 fa 00  	andi	s1, s4, 15
80000b08: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b0c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b10: 27 b0 15 00  	fsd	ft1, 0(a1)
80000b14: 93 f4 c8 00  	andi	s1, a7, 12
80000b18: 93 e4 14 00  	ori	s1, s1, 1
80000b1c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b20: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b24: 27 b4 15 00  	fsd	ft1, 8(a1)
80000b28: 93 74 fb 00  	andi	s1, s6, 15
80000b2c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b30: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b34: 27 b8 15 00  	fsd	ft1, 16(a1)
80000b38: 93 74 ee 00  	andi	s1, t3, 14
80000b3c: 93 e4 14 00  	ori	s1, s1, 1
80000b40: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b44: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b48: 27 bc 15 00  	fsd	ft1, 24(a1)
80000b4c: 93 74 fc 00  	andi	s1, s8, 15
80000b50: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b54: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b58: 27 b0 15 02  	fsd	ft1, 32(a1)
80000b5c: 23 a6 65 02  	sw	t1, 44(a1)
80000b60: 23 a4 05 02  	sw	zero, 40(a1)
80000b64: 93 74 f5 00  	andi	s1, a0, 15
80000b68: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b6c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b70: 27 b8 15 02  	fsd	ft1, 48(a1)
80000b74: 93 f4 ef 00  	andi	s1, t6, 14
80000b78: 93 e4 14 00  	ori	s1, s1, 1
80000b7c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b80: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b84: 27 bc 15 02  	fsd	ft1, 56(a1)
80000b88: 93 f4 f6 00  	andi	s1, a3, 15
80000b8c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b90: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b94: 27 b0 15 04  	fsd	ft1, 64(a1)
80000b98: 93 f4 c9 00  	andi	s1, s3, 12
80000b9c: 93 e4 14 00  	ori	s1, s1, 1
80000ba0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ba4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ba8: 27 b4 15 04  	fsd	ft1, 72(a1)
80000bac: 93 74 f7 00  	andi	s1, a4, 15
80000bb0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000bb4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000bb8: 27 b8 15 04  	fsd	ft1, 80(a1)
;   for (i = 0; i < ni; i++)
80000bbc: 93 87 17 00  	addi	a5, a5, 1
80000bc0: 13 07 57 01  	addi	a4, a4, 21
80000bc4: 93 89 49 01  	addi	s3, s3, 20
80000bc8: 13 09 29 00  	addi	s2, s2, 2
80000bcc: 93 86 36 01  	addi	a3, a3, 19
80000bd0: 13 06 36 00  	addi	a2, a2, 3
80000bd4: 93 8f 2f 01  	addi	t6, t6, 18
80000bd8: 13 0f 4f 00  	addi	t5, t5, 4
80000bdc: 13 05 15 01  	addi	a0, a0, 17
80000be0: 13 04 54 00  	addi	s0, s0, 5
80000be4: 93 8e 6e 00  	addi	t4, t4, 6
80000be8: 13 0c fc 00  	addi	s8, s8, 15
80000bec: 93 8b 7b 00  	addi	s7, s7, 7
80000bf0: 13 0e ee 00  	addi	t3, t3, 14
80000bf4: 93 82 82 00  	addi	t0, t0, 8
80000bf8: 13 0b db 00  	addi	s6, s6, 13
80000bfc: 93 8a 9a 00  	addi	s5, s5, 9
80000c00: 93 88 c8 00  	addi	a7, a7, 12
80000c04: 93 85 05 0b  	addi	a1, a1, 176
80000c08: 13 0a ba 00  	addi	s4, s4, 11
80000c0c: 13 08 a8 00  	addi	a6, a6, 10
80000c10: e3 1c 77 e2  	bne	a4, t2, 0x80000a48 <.LBB0_68+0x2c8>
;   for (i = 0; i < nk; i++)
80000c14: 13 55 4d 01  	srli	a0, s10, 20
80000c18: 33 35 a0 00  	snez	a0, a0
80000c1c: b7 f5 11 00  	lui	a1, 287
80000c20: 93 85 95 3a  	addi	a1, a1, 937
80000c24: b3 35 bd 00  	sltu	a1, s10, a1
80000c28: 33 75 b5 00  	and	a0, a0, a1

80000c2c <.LBB0_69>:
80000c2c: 97 4a 00 00  	auipc	s5, 4
80000c30: 93 8a 4a 53  	addi	s5, s5, 1332
80000c34: 23 28 a1 00  	sw	a0, 16(sp)
80000c38: 13 08 00 00  	mv	a6, zero
80000c3c: 93 08 00 00  	mv	a7, zero
80000c40: 93 02 00 00  	mv	t0, zero
80000c44: 13 03 00 00  	mv	t1, zero
80000c48: 93 03 00 00  	mv	t2, zero
80000c4c: 13 0e 00 00  	mv	t3, zero
80000c50: 93 0e 00 00  	mv	t4, zero
80000c54: 13 0f 00 00  	mv	t5, zero
80000c58: 93 0f 00 00  	mv	t6, zero
80000c5c: 13 09 00 00  	mv	s2, zero
80000c60: 63 04 05 2a  	beqz	a0, 0x80000f08 <.LBB0_69+0x2dc>
80000c64: 13 0a 00 00  	mv	s4, zero
80000c68: 13 0b 00 00  	mv	s6, zero
80000c6c: 13 07 00 00  	mv	a4, zero
80000c70: 93 07 00 00  	mv	a5, zero
80000c74: 93 04 00 00  	mv	s1, zero
80000c78: 13 04 00 00  	mv	s0, zero
80000c7c: 13 05 00 00  	mv	a0, zero
80000c80: 93 05 80 00  	addi	a1, zero, 8
80000c84: 93 09 10 01  	addi	s3, zero, 17
;   for (i = 0; i < nk; i++)
80000c88: 13 06 00 04  	addi	a2, zero, 64
80000c8c: ab a0 c9 00  	scfgw	s3, a2
80000c90: 13 06 00 0c  	addi	a2, zero, 192
80000c94: ab a0 c5 00  	scfgw	a1, a2
80000c98: 93 09 50 01  	addi	s3, zero, 21
80000c9c: 13 06 00 06  	addi	a2, zero, 96
80000ca0: ab a0 c9 00  	scfgw	s3, a2
80000ca4: 13 06 00 0e  	addi	a2, zero, 224
80000ca8: ab a0 c5 00  	scfgw	a1, a2
80000cac: 93 05 00 02  	addi	a1, zero, 32
80000cb0: ab 20 b0 00  	scfgw	zero, a1
80000cb4: 2b 20 0d 3a  	scfgwi	s10, 928
80000cb8: 73 e0 00 7c  	csrsi	1984, 1
80000cbc: b7 95 e3 38  	lui	a1, 233017
80000cc0: 93 85 95 e3  	addi	a1, a1, -455
80000cc4: 93 09 e0 fe  	addi	s3, zero, -18
80000cc8: 87 b1 0a 00  	fld	ft3, 0(s5)
80000ccc: 13 06 20 01  	addi	a2, zero, 18
80000cd0: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000cd4: 93 0a 60 17  	addi	s5, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000cd8: b3 36 b5 02  	mulhu	a3, a0, a1
80000cdc: 93 d6 26 00  	srli	a3, a3, 2
80000ce0: b3 86 c6 02  	mul	a3, a3, a2
80000ce4: b3 06 d5 40  	sub	a3, a0, a3
80000ce8: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000cec: b3 36 b8 02  	mulhu	a3, a6, a1
80000cf0: 93 d6 26 00  	srli	a3, a3, 2
80000cf4: b3 86 c6 02  	mul	a3, a3, a2
80000cf8: b3 06 d8 40  	sub	a3, a6, a3
80000cfc: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000d00: b3 b6 b8 02  	mulhu	a3, a7, a1
80000d04: 93 d6 26 00  	srli	a3, a3, 2
80000d08: b3 86 c6 02  	mul	a3, a3, a2
80000d0c: b3 86 d8 40  	sub	a3, a7, a3
80000d10: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000d14: b3 b6 b2 02  	mulhu	a3, t0, a1
80000d18: 93 d6 26 00  	srli	a3, a3, 2
80000d1c: b3 86 c6 02  	mul	a3, a3, a2
80000d20: b3 86 d2 40  	sub	a3, t0, a3
80000d24: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000d28: b3 36 b3 02  	mulhu	a3, t1, a1
80000d2c: 93 d6 26 00  	srli	a3, a3, 2
80000d30: b3 86 c6 02  	mul	a3, a3, a2
80000d34: b3 06 d3 40  	sub	a3, t1, a3
80000d38: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000d3c: b3 b6 b3 02  	mulhu	a3, t2, a1
80000d40: 93 d6 26 00  	srli	a3, a3, 2
80000d44: b3 86 c6 02  	mul	a3, a3, a2
80000d48: b3 86 d3 40  	sub	a3, t2, a3
80000d4c: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d50: b3 36 be 02  	mulhu	a3, t3, a1
80000d54: 93 d6 26 00  	srli	a3, a3, 2
80000d58: b3 86 c6 02  	mul	a3, a3, a2
80000d5c: b3 06 de 40  	sub	a3, t3, a3
80000d60: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000d64: b3 b6 be 02  	mulhu	a3, t4, a1
80000d68: 93 d6 26 00  	srli	a3, a3, 2
80000d6c: b3 86 c6 02  	mul	a3, a3, a2
80000d70: b3 86 de 40  	sub	a3, t4, a3
80000d74: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000d78: b3 36 bf 02  	mulhu	a3, t5, a1
80000d7c: 93 d6 26 00  	srli	a3, a3, 2
80000d80: b3 86 c6 02  	mul	a3, a3, a2
80000d84: b3 06 df 40  	sub	a3, t5, a3
80000d88: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000d8c: b3 b6 bf 02  	mulhu	a3, t6, a1
80000d90: 93 d6 26 00  	srli	a3, a3, 2
80000d94: b3 86 c6 02  	mul	a3, a3, a2
80000d98: b3 86 df 40  	sub	a3, t6, a3
80000d9c: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000da0: b3 36 b9 02  	mulhu	a3, s2, a1
80000da4: 93 d6 26 00  	srli	a3, a3, 2
80000da8: b3 86 c6 02  	mul	a3, a3, a2
80000dac: b3 06 d9 40  	sub	a3, s2, a3
80000db0: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000db4: b3 36 ba 02  	mulhu	a3, s4, a1
80000db8: 93 d6 26 00  	srli	a3, a3, 2
80000dbc: b3 86 c6 02  	mul	a3, a3, a2
80000dc0: b3 06 da 40  	sub	a3, s4, a3
80000dc4: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000dc8: b3 36 bb 02  	mulhu	a3, s6, a1
80000dcc: 93 d6 26 00  	srli	a3, a3, 2
80000dd0: b3 86 c6 02  	mul	a3, a3, a2
80000dd4: b3 06 db 40  	sub	a3, s6, a3
80000dd8: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000ddc: b3 36 b7 02  	mulhu	a3, a4, a1
80000de0: 93 d6 26 00  	srli	a3, a3, 2
80000de4: b3 86 c6 02  	mul	a3, a3, a2
80000de8: b3 06 d7 40  	sub	a3, a4, a3
80000dec: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000df0: b3 b6 b7 02  	mulhu	a3, a5, a1
80000df4: 93 d6 26 00  	srli	a3, a3, 2
80000df8: b3 86 c6 02  	mul	a3, a3, a2
80000dfc: b3 86 d7 40  	sub	a3, a5, a3
80000e00: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000e04: b3 b6 b4 02  	mulhu	a3, s1, a1
80000e08: 93 d6 26 00  	srli	a3, a3, 2
80000e0c: b3 86 c6 02  	mul	a3, a3, a2
80000e10: b3 86 d4 40  	sub	a3, s1, a3
80000e14: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000e18: b3 36 b4 02  	mulhu	a3, s0, a1
80000e1c: 93 d6 26 00  	srli	a3, a3, 2
80000e20: b3 86 36 03  	mul	a3, a3, s3
80000e24: b3 06 d4 00  	add	a3, s0, a3
80000e28: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000e2c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e30: 53 80 52 22  	fmv.d	ft0, ft5
80000e34: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e38: 53 80 52 22  	fmv.d	ft0, ft5
80000e3c: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e40: 53 80 52 22  	fmv.d	ft0, ft5
80000e44: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e48: 53 80 52 22  	fmv.d	ft0, ft5
80000e4c: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e50: 53 80 52 22  	fmv.d	ft0, ft5
80000e54: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e58: 53 80 52 22  	fmv.d	ft0, ft5
80000e5c: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e60: 53 80 52 22  	fmv.d	ft0, ft5
80000e64: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e68: 53 80 52 22  	fmv.d	ft0, ft5
80000e6c: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e70: 53 80 52 22  	fmv.d	ft0, ft5
80000e74: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e78: 53 80 52 22  	fmv.d	ft0, ft5
80000e7c: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e80: 53 80 52 22  	fmv.d	ft0, ft5
80000e84: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e88: 53 80 52 22  	fmv.d	ft0, ft5
80000e8c: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000e90: 53 80 52 22  	fmv.d	ft0, ft5
80000e94: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000e98: 53 80 52 22  	fmv.d	ft0, ft5
80000e9c: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ea0: 53 80 52 22  	fmv.d	ft0, ft5
80000ea4: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ea8: 53 80 52 22  	fmv.d	ft0, ft5
80000eac: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000eb0: 53 80 52 22  	fmv.d	ft0, ft5
80000eb4: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000eb8: 13 05 15 00  	addi	a0, a0, 1
80000ebc: 13 04 14 01  	addi	s0, s0, 17
80000ec0: 93 84 04 01  	addi	s1, s1, 16
80000ec4: 93 87 f7 00  	addi	a5, a5, 15
80000ec8: 13 07 e7 00  	addi	a4, a4, 14
80000ecc: 13 0b db 00  	addi	s6, s6, 13
80000ed0: 13 0a ca 00  	addi	s4, s4, 12
80000ed4: 13 09 b9 00  	addi	s2, s2, 11
80000ed8: 93 8f af 00  	addi	t6, t6, 10
80000edc: 13 0f 9f 00  	addi	t5, t5, 9
80000ee0: 93 8e 8e 00  	addi	t4, t4, 8
80000ee4: 13 0e 7e 00  	addi	t3, t3, 7
80000ee8: 93 83 63 00  	addi	t2, t2, 6
80000eec: 13 03 53 00  	addi	t1, t1, 5
80000ef0: 93 82 42 00  	addi	t0, t0, 4
80000ef4: 93 88 38 00  	addi	a7, a7, 3
80000ef8: 13 08 28 00  	addi	a6, a6, 2
80000efc: e3 1e 54 dd  	bne	s0, s5, 0x80000cd8 <.LBB0_69+0xac>
80000f00: 73 f0 00 7c  	csrci	1984, 1
80000f04: 6f 00 c0 26  	j	0x80001170 <.LBB0_69+0x544>
80000f08: 93 09 00 00  	mv	s3, zero
80000f0c: 13 0a 00 00  	mv	s4, zero
80000f10: 93 0b 00 00  	mv	s7, zero
80000f14: 93 07 00 00  	mv	a5, zero
80000f18: 93 04 00 00  	mv	s1, zero
80000f1c: 13 04 00 00  	mv	s0, zero
80000f20: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f24: 93 05 8d 04  	addi	a1, s10, 72
80000f28: 37 96 e3 38  	lui	a2, 233017
80000f2c: 13 06 96 e3  	addi	a2, a2, -455
80000f30: 07 b0 0a 00  	fld	ft0, 0(s5)
80000f34: 93 06 20 01  	addi	a3, zero, 18
80000f38: 93 0a e0 fe  	addi	s5, zero, -18
80000f3c: 13 0b 60 17  	addi	s6, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000f40: 33 37 c5 02  	mulhu	a4, a0, a2
80000f44: 13 57 27 00  	srli	a4, a4, 2
80000f48: 33 07 d7 02  	mul	a4, a4, a3
80000f4c: 33 07 e5 40  	sub	a4, a0, a4
80000f50: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000f54: 33 b7 c4 02  	mulhu	a4, s1, a2
80000f58: 13 57 27 00  	srli	a4, a4, 2
80000f5c: 33 07 d7 02  	mul	a4, a4, a3
80000f60: 33 87 e4 40  	sub	a4, s1, a4
80000f64: 53 01 07 d2  	fcvt.d.w	ft2, a4
80000f68: 33 b7 c7 02  	mulhu	a4, a5, a2
80000f6c: 13 57 27 00  	srli	a4, a4, 2
80000f70: 33 07 d7 02  	mul	a4, a4, a3
80000f74: 33 87 e7 40  	sub	a4, a5, a4
80000f78: d3 01 07 d2  	fcvt.d.w	ft3, a4
80000f7c: 33 37 ca 02  	mulhu	a4, s4, a2
80000f80: 13 57 27 00  	srli	a4, a4, 2
80000f84: 33 07 d7 02  	mul	a4, a4, a3
80000f88: 33 07 ea 40  	sub	a4, s4, a4
80000f8c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000f90: 33 37 c9 02  	mulhu	a4, s2, a2
80000f94: 13 57 27 00  	srli	a4, a4, 2
80000f98: 33 07 d7 02  	mul	a4, a4, a3
80000f9c: 33 07 e9 40  	sub	a4, s2, a4
80000fa0: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000fa4: 33 37 cf 02  	mulhu	a4, t5, a2
80000fa8: 13 57 27 00  	srli	a4, a4, 2
80000fac: 33 07 d7 02  	mul	a4, a4, a3
80000fb0: 33 07 ef 40  	sub	a4, t5, a4
80000fb4: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000fb8: 33 37 ce 02  	mulhu	a4, t3, a2
80000fbc: 13 57 27 00  	srli	a4, a4, 2
80000fc0: 33 07 d7 02  	mul	a4, a4, a3
80000fc4: 33 07 ee 40  	sub	a4, t3, a4
80000fc8: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000fcc: 33 37 c3 02  	mulhu	a4, t1, a2
80000fd0: 13 57 27 00  	srli	a4, a4, 2
80000fd4: 33 07 d7 02  	mul	a4, a4, a3
80000fd8: 33 07 e3 40  	sub	a4, t1, a4
80000fdc: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000fe0: 33 37 c8 02  	mulhu	a4, a6, a2
80000fe4: 13 57 27 00  	srli	a4, a4, 2
80000fe8: 33 07 d7 02  	mul	a4, a4, a3
80000fec: 33 07 e8 40  	sub	a4, a6, a4
80000ff0: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000ff4: 33 b7 c8 02  	mulhu	a4, a7, a2
80000ff8: 13 57 27 00  	srli	a4, a4, 2
80000ffc: 33 07 d7 02  	mul	a4, a4, a3
80001000: 33 87 e8 40  	sub	a4, a7, a4
80001004: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001008: 33 b7 c2 02  	mulhu	a4, t0, a2
8000100c: 13 57 27 00  	srli	a4, a4, 2
80001010: 33 07 d7 02  	mul	a4, a4, a3
80001014: 33 87 e2 40  	sub	a4, t0, a4
80001018: d3 06 07 d2  	fcvt.d.w	fa3, a4
8000101c: 33 b7 c3 02  	mulhu	a4, t2, a2
80001020: 13 57 27 00  	srli	a4, a4, 2
80001024: 33 07 d7 02  	mul	a4, a4, a3
80001028: 33 87 e3 40  	sub	a4, t2, a4
8000102c: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001030: 33 b7 ce 02  	mulhu	a4, t4, a2
80001034: 13 57 27 00  	srli	a4, a4, 2
80001038: 33 07 d7 02  	mul	a4, a4, a3
8000103c: 33 87 ee 40  	sub	a4, t4, a4
80001040: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001044: 33 b7 cf 02  	mulhu	a4, t6, a2
80001048: 13 57 27 00  	srli	a4, a4, 2
8000104c: 33 07 d7 02  	mul	a4, a4, a3
80001050: 33 87 ef 40  	sub	a4, t6, a4
80001054: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001058: 33 b7 c9 02  	mulhu	a4, s3, a2
8000105c: 13 57 27 00  	srli	a4, a4, 2
80001060: 33 07 d7 02  	mul	a4, a4, a3
80001064: 33 87 e9 40  	sub	a4, s3, a4
80001068: d3 08 07 d2  	fcvt.d.w	fa7, a4
8000106c: 33 b7 cb 02  	mulhu	a4, s7, a2
80001070: 13 57 27 00  	srli	a4, a4, 2
80001074: 33 07 d7 02  	mul	a4, a4, a3
80001078: 33 87 eb 40  	sub	a4, s7, a4
8000107c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001080: 33 37 c4 02  	mulhu	a4, s0, a2
80001084: 13 57 27 00  	srli	a4, a4, 2
80001088: 33 07 57 03  	mul	a4, a4, s5
8000108c: 33 07 e4 00  	add	a4, s0, a4
80001090: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001094: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001098: 27 bc 15 fa  	fsd	ft1, -72(a1)
8000109c: d3 70 01 12  	fmul.d	ft1, ft2, ft0
800010a0: 27 b0 15 fc  	fsd	ft1, -64(a1)
800010a4: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800010a8: 27 b4 15 fc  	fsd	ft1, -56(a1)
800010ac: d3 70 02 12  	fmul.d	ft1, ft4, ft0
800010b0: 27 b8 15 fc  	fsd	ft1, -48(a1)
800010b4: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
800010b8: 27 bc 15 fc  	fsd	ft1, -40(a1)
800010bc: d3 70 03 12  	fmul.d	ft1, ft6, ft0
800010c0: 27 b0 15 fe  	fsd	ft1, -32(a1)
800010c4: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
800010c8: 27 b4 15 fe  	fsd	ft1, -24(a1)
800010cc: d3 70 05 12  	fmul.d	ft1, fa0, ft0
800010d0: 27 b8 15 fe  	fsd	ft1, -16(a1)
800010d4: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
800010d8: 27 bc 15 fe  	fsd	ft1, -8(a1)
800010dc: d3 70 06 12  	fmul.d	ft1, fa2, ft0
800010e0: 27 b0 15 00  	fsd	ft1, 0(a1)
800010e4: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
800010e8: 27 b4 15 00  	fsd	ft1, 8(a1)
800010ec: d3 70 07 12  	fmul.d	ft1, fa4, ft0
800010f0: 27 b8 15 00  	fsd	ft1, 16(a1)
800010f4: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
800010f8: 27 bc 15 00  	fsd	ft1, 24(a1)
800010fc: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80001100: 27 b0 15 02  	fsd	ft1, 32(a1)
80001104: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80001108: 27 b4 15 02  	fsd	ft1, 40(a1)
8000110c: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80001110: 27 b8 15 02  	fsd	ft1, 48(a1)
80001114: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80001118: 27 bc 15 02  	fsd	ft1, 56(a1)
8000111c: 23 a2 05 04  	sw	zero, 68(a1)
80001120: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
80001124: 13 05 15 00  	addi	a0, a0, 1
80001128: 13 04 14 01  	addi	s0, s0, 17
8000112c: 93 84 24 00  	addi	s1, s1, 2
80001130: 93 87 37 00  	addi	a5, a5, 3
80001134: 93 8b 0b 01  	addi	s7, s7, 16
80001138: 13 0a 4a 00  	addi	s4, s4, 4
8000113c: 93 89 f9 00  	addi	s3, s3, 15
80001140: 13 09 59 00  	addi	s2, s2, 5
80001144: 93 8f ef 00  	addi	t6, t6, 14
80001148: 13 0f 6f 00  	addi	t5, t5, 6
8000114c: 93 8e de 00  	addi	t4, t4, 13
80001150: 13 0e 7e 00  	addi	t3, t3, 7
80001154: 93 83 c3 00  	addi	t2, t2, 12
80001158: 13 03 83 00  	addi	t1, t1, 8
8000115c: 93 82 b2 00  	addi	t0, t0, 11
80001160: 93 85 05 09  	addi	a1, a1, 144
80001164: 93 88 a8 00  	addi	a7, a7, 10
80001168: 13 08 98 00  	addi	a6, a6, 9
8000116c: e3 1a 64 dd  	bne	s0, s6, 0x80000f40 <.LBB0_69+0x314>
80001170: 23 2c a1 01  	sw	s10, 24(sp)
;   for (i = 0; i < nj; i++)
80001174: 13 d5 4c 01  	srli	a0, s9, 20
80001178: 33 35 a0 00  	snez	a0, a0
8000117c: b7 f5 11 00  	lui	a1, 287
80001180: 93 85 95 28  	addi	a1, a1, 649
80001184: b3 b5 bc 00  	sltu	a1, s9, a1
80001188: b3 75 b5 00  	and	a1, a0, a1

8000118c <.LBB0_70>:
8000118c: 17 48 00 00  	auipc	a6, 4
80001190: 13 08 c8 fd  	addi	a6, a6, -36
80001194: 23 26 b1 00  	sw	a1, 12(sp)
80001198: 23 20 91 03  	sw	s9, 32(sp)
8000119c: 63 86 05 40  	beqz	a1, 0x800015a8 <.LBB0_70+0x41c>
800011a0: 13 04 00 00  	mv	s0, zero
800011a4: 13 06 00 00  	mv	a2, zero
800011a8: 93 04 00 00  	mv	s1, zero
800011ac: 13 07 00 00  	mv	a4, zero
800011b0: 13 05 00 00  	mv	a0, zero
800011b4: 93 05 80 00  	addi	a1, zero, 8
800011b8: 93 08 70 01  	addi	a7, zero, 23
;   for (i = 0; i < nj; i++)
800011bc: 93 06 00 04  	addi	a3, zero, 64
800011c0: 93 07 00 0c  	addi	a5, zero, 192
800011c4: ab a0 d8 00  	scfgw	a7, a3
800011c8: ab a0 f5 00  	scfgw	a1, a5
800011cc: 93 08 10 01  	addi	a7, zero, 17
800011d0: 93 06 00 06  	addi	a3, zero, 96
800011d4: 93 07 00 0e  	addi	a5, zero, 224
800011d8: ab a0 d8 00  	scfgw	a7, a3
800011dc: ab a0 f5 00  	scfgw	a1, a5
800011e0: 93 05 00 02  	addi	a1, zero, 32
800011e4: ab 20 b0 00  	scfgw	zero, a1
800011e8: 2b a0 0c 3a  	scfgwi	s9, 928
800011ec: 73 e0 00 7c  	csrsi	1984, 1
800011f0: 93 07 10 00  	addi	a5, zero, 1
800011f4: b7 b5 aa aa  	lui	a1, 699051
800011f8: 93 85 b5 aa  	addi	a1, a1, -1365
800011fc: 93 0d 80 01  	addi	s11, zero, 24
80001200: 87 31 08 00  	fld	ft3, 0(a6)
80001204: 13 0a 10 00  	addi	s4, zero, 1
80001208: 93 00 10 00  	addi	ra, zero, 1
8000120c: 93 06 10 00  	addi	a3, zero, 1
80001210: 23 24 d1 08  	sw	a3, 136(sp)
80001214: 93 0a 10 00  	addi	s5, zero, 1
80001218: 93 06 10 00  	addi	a3, zero, 1
8000121c: 23 26 d1 08  	sw	a3, 140(sp)
80001220: 13 0b 10 00  	addi	s6, zero, 1
80001224: 93 0b 10 00  	addi	s7, zero, 1
80001228: 13 0c 10 00  	addi	s8, zero, 1
8000122c: 93 06 10 00  	addi	a3, zero, 1
80001230: 23 22 d1 08  	sw	a3, 132(sp)
80001234: 93 0c 10 00  	addi	s9, zero, 1
80001238: 13 0d 10 00  	addi	s10, zero, 1
8000123c: 13 08 10 00  	addi	a6, zero, 1
80001240: 93 08 10 00  	addi	a7, zero, 1
80001244: 93 02 10 00  	addi	t0, zero, 1
80001248: 13 09 10 00  	addi	s2, zero, 1
8000124c: 13 03 10 00  	addi	t1, zero, 1
80001250: 93 03 10 00  	addi	t2, zero, 1
80001254: 13 0f 10 00  	addi	t5, zero, 1
80001258: 13 0e 10 00  	addi	t3, zero, 1
8000125c: 93 0e 10 00  	addi	t4, zero, 1
80001260: 93 0f 10 00  	addi	t6, zero, 1
80001264: 93 09 10 00  	addi	s3, zero, 1
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80001268: 23 2c 51 07  	sw	s5, 120(sp)
8000126c: 23 2e 11 06  	sw	ra, 124(sp)
80001270: 23 20 81 08  	sw	s0, 128(sp)
80001274: 93 06 0a 00  	mv	a3, s4
80001278: 33 3a b4 02  	mulhu	s4, s0, a1
8000127c: 13 54 4a 00  	srli	s0, s4, 4
80001280: 13 8a 06 00  	mv	s4, a3
80001284: 33 04 b4 03  	mul	s0, s0, s11
80001288: 33 84 87 40  	sub	s0, a5, s0
8000128c: 53 02 04 d2  	fcvt.d.w	ft4, s0
80001290: 33 34 b6 02  	mulhu	s0, a2, a1
80001294: 13 54 44 00  	srli	s0, s0, 4
80001298: 33 04 b4 03  	mul	s0, s0, s11
8000129c: 33 84 86 40  	sub	s0, a3, s0
800012a0: d3 02 04 d2  	fcvt.d.w	ft5, s0
800012a4: 33 b4 b0 02  	mulhu	s0, ra, a1
800012a8: 13 54 44 00  	srli	s0, s0, 4
800012ac: 33 04 b4 03  	mul	s0, s0, s11
800012b0: 33 84 80 40  	sub	s0, ra, s0
800012b4: 53 03 04 d2  	fcvt.d.w	ft6, s0
800012b8: 33 b4 b4 02  	mulhu	s0, s1, a1
800012bc: 13 54 44 00  	srli	s0, s0, 4
800012c0: 33 04 b4 03  	mul	s0, s0, s11
800012c4: 83 20 81 08  	lw	ra, 136(sp)
800012c8: 33 84 80 40  	sub	s0, ra, s0
800012cc: d3 03 04 d2  	fcvt.d.w	ft7, s0
800012d0: 33 b4 ba 02  	mulhu	s0, s5, a1
800012d4: 13 54 44 00  	srli	s0, s0, 4
800012d8: 33 04 b4 03  	mul	s0, s0, s11
800012dc: 33 84 8a 40  	sub	s0, s5, s0
800012e0: 53 05 04 d2  	fcvt.d.w	fa0, s0
800012e4: 33 34 b7 02  	mulhu	s0, a4, a1
800012e8: 13 54 44 00  	srli	s0, s0, 4
800012ec: 33 04 b4 03  	mul	s0, s0, s11
800012f0: 83 26 c1 08  	lw	a3, 140(sp)
800012f4: 33 84 86 40  	sub	s0, a3, s0
800012f8: d3 05 04 d2  	fcvt.d.w	fa1, s0
800012fc: 33 34 bb 02  	mulhu	s0, s6, a1
80001300: 13 54 44 00  	srli	s0, s0, 4
80001304: 33 04 b4 03  	mul	s0, s0, s11
80001308: 33 04 8b 40  	sub	s0, s6, s0
8000130c: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001310: 33 b4 bb 02  	mulhu	s0, s7, a1
80001314: 13 54 44 00  	srli	s0, s0, 4
80001318: 33 04 b4 03  	mul	s0, s0, s11
8000131c: 33 84 8b 40  	sub	s0, s7, s0
80001320: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001324: 33 34 bc 02  	mulhu	s0, s8, a1
80001328: 13 54 44 00  	srli	s0, s0, 4
8000132c: 33 04 b4 03  	mul	s0, s0, s11
80001330: 33 04 8c 40  	sub	s0, s8, s0
80001334: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001338: 33 34 b5 02  	mulhu	s0, a0, a1
8000133c: 13 54 44 00  	srli	s0, s0, 4
80001340: 33 04 b4 03  	mul	s0, s0, s11
80001344: 83 2a 41 08  	lw	s5, 132(sp)
80001348: 33 84 8a 40  	sub	s0, s5, s0
8000134c: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001350: 33 b4 bc 02  	mulhu	s0, s9, a1
80001354: 13 54 44 00  	srli	s0, s0, 4
80001358: 33 04 b4 03  	mul	s0, s0, s11
8000135c: 33 84 8c 40  	sub	s0, s9, s0
80001360: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001364: 33 34 bd 02  	mulhu	s0, s10, a1
80001368: 13 54 44 00  	srli	s0, s0, 4
8000136c: 33 04 b4 03  	mul	s0, s0, s11
80001370: 33 04 8d 40  	sub	s0, s10, s0
80001374: d3 08 04 d2  	fcvt.d.w	fa7, s0
80001378: 33 34 b8 02  	mulhu	s0, a6, a1
8000137c: 13 54 44 00  	srli	s0, s0, 4
80001380: 33 04 b4 03  	mul	s0, s0, s11
80001384: 33 04 88 40  	sub	s0, a6, s0
80001388: 53 0e 04 d2  	fcvt.d.w	ft8, s0
8000138c: 33 b4 b8 02  	mulhu	s0, a7, a1
80001390: 13 54 44 00  	srli	s0, s0, 4
80001394: 33 04 b4 03  	mul	s0, s0, s11
80001398: 33 84 88 40  	sub	s0, a7, s0
8000139c: d3 0e 04 d2  	fcvt.d.w	ft9, s0
800013a0: 33 b4 b2 02  	mulhu	s0, t0, a1
800013a4: 13 54 44 00  	srli	s0, s0, 4
800013a8: 33 04 b4 03  	mul	s0, s0, s11
800013ac: 33 84 82 40  	sub	s0, t0, s0
800013b0: 53 0f 04 d2  	fcvt.d.w	ft10, s0
800013b4: 33 34 b9 02  	mulhu	s0, s2, a1
800013b8: 13 54 44 00  	srli	s0, s0, 4
800013bc: 33 04 b4 03  	mul	s0, s0, s11
800013c0: 33 04 89 40  	sub	s0, s2, s0
800013c4: d3 0f 04 d2  	fcvt.d.w	ft11, s0
800013c8: 33 34 b3 02  	mulhu	s0, t1, a1
800013cc: 13 54 44 00  	srli	s0, s0, 4
800013d0: 33 04 b4 03  	mul	s0, s0, s11
800013d4: 33 04 83 40  	sub	s0, t1, s0
800013d8: 53 04 04 d2  	fcvt.d.w	fs0, s0
800013dc: 33 b4 b3 02  	mulhu	s0, t2, a1
800013e0: 13 54 44 00  	srli	s0, s0, 4
800013e4: 33 04 b4 03  	mul	s0, s0, s11
800013e8: 33 84 83 40  	sub	s0, t2, s0
800013ec: d3 04 04 d2  	fcvt.d.w	fs1, s0
800013f0: 33 34 bf 02  	mulhu	s0, t5, a1
800013f4: 13 54 44 00  	srli	s0, s0, 4
800013f8: 33 04 b4 03  	mul	s0, s0, s11
800013fc: 33 04 8f 40  	sub	s0, t5, s0
80001400: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001404: 33 34 be 02  	mulhu	s0, t3, a1
80001408: 13 54 44 00  	srli	s0, s0, 4
8000140c: 33 04 b4 03  	mul	s0, s0, s11
80001410: 33 04 8e 40  	sub	s0, t3, s0
80001414: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001418: 33 b4 be 02  	mulhu	s0, t4, a1
8000141c: 13 54 44 00  	srli	s0, s0, 4
80001420: 33 04 b4 03  	mul	s0, s0, s11
80001424: 33 84 8e 40  	sub	s0, t4, s0
80001428: 53 0a 04 d2  	fcvt.d.w	fs4, s0
8000142c: 33 b4 bf 02  	mulhu	s0, t6, a1
80001430: 13 54 44 00  	srli	s0, s0, 4
80001434: 33 04 b4 03  	mul	s0, s0, s11
80001438: 33 84 8f 40  	sub	s0, t6, s0
8000143c: d3 0a 04 d2  	fcvt.d.w	fs5, s0
80001440: 33 b4 b9 02  	mulhu	s0, s3, a1
80001444: 13 54 44 00  	srli	s0, s0, 4
80001448: 33 04 b4 03  	mul	s0, s0, s11
8000144c: 33 84 89 40  	sub	s0, s3, s0
80001450: 53 0b 04 d2  	fcvt.d.w	fs6, s0
80001454: 03 24 01 08  	lw	s0, 128(sp)
80001458: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000145c: 53 00 42 22  	fmv.d	ft0, ft4
80001460: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001464: 53 00 42 22  	fmv.d	ft0, ft4
80001468: 53 72 33 12  	fmul.d	ft4, ft6, ft3
8000146c: 53 00 42 22  	fmv.d	ft0, ft4
80001470: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001474: 53 00 42 22  	fmv.d	ft0, ft4
80001478: 53 72 35 12  	fmul.d	ft4, fa0, ft3
8000147c: 53 00 42 22  	fmv.d	ft0, ft4
80001480: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001484: 53 00 42 22  	fmv.d	ft0, ft4
80001488: 53 72 36 12  	fmul.d	ft4, fa2, ft3
8000148c: 53 00 42 22  	fmv.d	ft0, ft4
80001490: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001494: 53 00 42 22  	fmv.d	ft0, ft4
80001498: 53 72 37 12  	fmul.d	ft4, fa4, ft3
8000149c: 53 00 42 22  	fmv.d	ft0, ft4
800014a0: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800014a4: 53 00 42 22  	fmv.d	ft0, ft4
800014a8: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800014ac: 53 00 42 22  	fmv.d	ft0, ft4
800014b0: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800014b4: 53 00 42 22  	fmv.d	ft0, ft4
800014b8: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
800014bc: 53 00 42 22  	fmv.d	ft0, ft4
800014c0: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
800014c4: 53 00 42 22  	fmv.d	ft0, ft4
800014c8: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
800014cc: 53 00 42 22  	fmv.d	ft0, ft4
800014d0: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
800014d4: 53 00 42 22  	fmv.d	ft0, ft4
800014d8: 53 72 34 12  	fmul.d	ft4, fs0, ft3
800014dc: 53 00 42 22  	fmv.d	ft0, ft4
800014e0: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
800014e4: 53 00 42 22  	fmv.d	ft0, ft4
800014e8: 53 72 39 12  	fmul.d	ft4, fs2, ft3
800014ec: 53 00 42 22  	fmv.d	ft0, ft4
800014f0: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
800014f4: 53 00 42 22  	fmv.d	ft0, ft4
800014f8: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
800014fc: 53 00 42 22  	fmv.d	ft0, ft4
80001500: 53 80 31 22  	fmv.d	ft0, ft3
80001504: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001508: 53 00 42 22  	fmv.d	ft0, ft4
8000150c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80001510: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nj; i++)
80001514: 93 89 a9 01  	addi	s3, s3, 26
80001518: 93 8f 9f 01  	addi	t6, t6, 25
8000151c: 93 8e 7e 01  	addi	t4, t4, 23
80001520: 13 0e 6e 01  	addi	t3, t3, 22
80001524: 13 0f 5f 01  	addi	t5, t5, 21
80001528: 93 83 43 01  	addi	t2, t2, 20
8000152c: 13 03 33 01  	addi	t1, t1, 19
80001530: 13 09 29 01  	addi	s2, s2, 18
80001534: 93 82 12 01  	addi	t0, t0, 17
80001538: 93 88 08 01  	addi	a7, a7, 16
8000153c: 13 08 f8 00  	addi	a6, a6, 15
80001540: 13 0d ed 00  	addi	s10, s10, 14
80001544: 93 8c dc 00  	addi	s9, s9, 13
80001548: 93 8a ca 00  	addi	s5, s5, 12
8000154c: 23 22 51 09  	sw	s5, 132(sp)
80001550: 83 2a 81 07  	lw	s5, 120(sp)
80001554: 13 05 c5 00  	addi	a0, a0, 12
80001558: 13 0c bc 00  	addi	s8, s8, 11
8000155c: 93 8b ab 00  	addi	s7, s7, 10
80001560: 13 0b 9b 00  	addi	s6, s6, 9
80001564: 93 86 86 00  	addi	a3, a3, 8
80001568: 23 26 d1 08  	sw	a3, 140(sp)
8000156c: 13 07 87 00  	addi	a4, a4, 8
80001570: 93 8a 7a 00  	addi	s5, s5, 7
80001574: 93 80 60 00  	addi	ra, ra, 6
80001578: 23 24 11 08  	sw	ra, 136(sp)
8000157c: 83 20 c1 07  	lw	ra, 124(sp)
80001580: 93 84 64 00  	addi	s1, s1, 6
80001584: 93 80 50 00  	addi	ra, ra, 5
80001588: 13 0a 4a 00  	addi	s4, s4, 4
8000158c: 13 06 46 00  	addi	a2, a2, 4
80001590: 93 87 37 00  	addi	a5, a5, 3
80001594: 13 04 34 00  	addi	s0, s0, 3
80001598: 93 06 50 1d  	addi	a3, zero, 469
8000159c: e3 96 d9 cc  	bne	s3, a3, 0x80001268 <.LBB0_70+0xdc>
800015a0: 73 f0 00 7c  	csrci	1984, 1
800015a4: 6f 00 c0 4d  	j	0x80001a80 <.LBB0_70+0x8f4>
800015a8: 93 0e 00 00  	mv	t4, zero
800015ac: 13 06 00 00  	mv	a2, zero
800015b0: 13 07 00 00  	mv	a4, zero
800015b4: 13 03 00 00  	mv	t1, zero
800015b8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
800015bc: 93 86 0c 06  	addi	a3, s9, 96
800015c0: 13 0f 10 00  	addi	t5, zero, 1
800015c4: b7 b5 aa aa  	lui	a1, 699051
800015c8: 13 84 b5 aa  	addi	s0, a1, -1365
800015cc: 07 30 08 00  	fld	ft0, 0(a6)
800015d0: 37 55 a5 3f  	lui	a0, 260693
800015d4: 13 05 55 55  	addi	a0, a0, 1365
800015d8: 23 28 a1 02  	sw	a0, 48(sp)
800015dc: 37 55 55 55  	lui	a0, 349525
800015e0: 13 05 55 55  	addi	a0, a0, 1365
800015e4: 23 26 a1 02  	sw	a0, 44(sp)
800015e8: 13 05 10 00  	addi	a0, zero, 1
800015ec: 23 2e a1 06  	sw	a0, 124(sp)
800015f0: 13 05 10 00  	addi	a0, zero, 1
800015f4: 23 2c a1 06  	sw	a0, 120(sp)
800015f8: 13 05 10 00  	addi	a0, zero, 1
800015fc: 23 2a a1 06  	sw	a0, 116(sp)
80001600: 13 05 10 00  	addi	a0, zero, 1
80001604: 23 28 a1 06  	sw	a0, 112(sp)
80001608: 93 05 10 00  	addi	a1, zero, 1
8000160c: 13 05 10 00  	addi	a0, zero, 1
80001610: 23 26 a1 06  	sw	a0, 108(sp)
80001614: 13 05 10 00  	addi	a0, zero, 1
80001618: 23 24 a1 06  	sw	a0, 104(sp)
8000161c: 13 05 10 00  	addi	a0, zero, 1
80001620: 23 22 a1 06  	sw	a0, 100(sp)
80001624: 13 05 10 00  	addi	a0, zero, 1
80001628: 23 20 a1 06  	sw	a0, 96(sp)
8000162c: 13 05 10 00  	addi	a0, zero, 1
80001630: 23 2e a1 04  	sw	a0, 92(sp)
80001634: 13 05 10 00  	addi	a0, zero, 1
80001638: 23 2c a1 04  	sw	a0, 88(sp)
8000163c: 13 05 10 00  	addi	a0, zero, 1
80001640: 23 2a a1 04  	sw	a0, 84(sp)
80001644: 13 05 10 00  	addi	a0, zero, 1
80001648: 23 20 a1 08  	sw	a0, 128(sp)
8000164c: 13 05 10 00  	addi	a0, zero, 1
80001650: 23 28 a1 04  	sw	a0, 80(sp)
80001654: 13 05 10 00  	addi	a0, zero, 1
80001658: 23 26 a1 04  	sw	a0, 76(sp)
8000165c: 13 05 10 00  	addi	a0, zero, 1
80001660: 23 24 a1 04  	sw	a0, 72(sp)
80001664: 13 09 10 00  	addi	s2, zero, 1
80001668: 13 05 10 00  	addi	a0, zero, 1
8000166c: 23 22 a1 04  	sw	a0, 68(sp)
80001670: 13 05 10 00  	addi	a0, zero, 1
80001674: 23 20 a1 04  	sw	a0, 64(sp)
80001678: 13 05 10 00  	addi	a0, zero, 1
8000167c: 23 26 a1 08  	sw	a0, 140(sp)
80001680: 13 05 10 00  	addi	a0, zero, 1
80001684: 23 24 a1 08  	sw	a0, 136(sp)
80001688: 13 05 10 00  	addi	a0, zero, 1
8000168c: 23 2e a1 02  	sw	a0, 60(sp)
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
80001690: 23 2a 21 03  	sw	s2, 52(sp)
80001694: 23 22 91 08  	sw	s1, 132(sp)
80001698: 23 2c d1 03  	sw	t4, 56(sp)
8000169c: 83 27 41 08  	lw	a5, 132(sp)
800016a0: b3 b4 87 02  	mulhu	s1, a5, s0
800016a4: 93 d4 44 00  	srli	s1, s1, 4
800016a8: 13 05 80 01  	addi	a0, zero, 24
800016ac: b3 84 a4 02  	mul	s1, s1, a0
800016b0: 13 08 06 00  	mv	a6, a2
800016b4: 13 06 03 00  	mv	a2, t1
800016b8: 83 27 81 08  	lw	a5, 136(sp)
800016bc: 33 83 97 40  	sub	t1, a5, s1
800016c0: d3 00 03 d2  	fcvt.d.w	ft1, t1
800016c4: 13 03 06 00  	mv	t1, a2
800016c8: 13 06 08 00  	mv	a2, a6
800016cc: 83 2e 81 03  	lw	t4, 56(sp)
800016d0: b3 34 83 02  	mulhu	s1, t1, s0
800016d4: 93 d4 44 00  	srli	s1, s1, 4
800016d8: b3 84 a4 02  	mul	s1, s1, a0
800016dc: 83 27 c1 08  	lw	a5, 140(sp)
800016e0: b3 84 97 40  	sub	s1, a5, s1
800016e4: 53 81 04 d2  	fcvt.d.w	ft2, s1
800016e8: 03 28 41 04  	lw	a6, 68(sp)
800016ec: b3 34 88 02  	mulhu	s1, a6, s0
800016f0: 93 d4 44 00  	srli	s1, s1, 4
800016f4: b3 84 a4 02  	mul	s1, s1, a0
800016f8: b3 04 98 40  	sub	s1, a6, s1
800016fc: d3 81 04 d2  	fcvt.d.w	ft3, s1
80001700: b3 34 87 02  	mulhu	s1, a4, s0
80001704: 93 d4 44 00  	srli	s1, s1, 4
80001708: b3 84 a4 02  	mul	s1, s1, a0
8000170c: b3 04 99 40  	sub	s1, s2, s1
80001710: 53 82 04 d2  	fcvt.d.w	ft4, s1
80001714: 83 2c c1 04  	lw	s9, 76(sp)
80001718: b3 b4 8c 02  	mulhu	s1, s9, s0
8000171c: 93 d4 44 00  	srli	s1, s1, 4
80001720: b3 84 a4 02  	mul	s1, s1, a0
80001724: b3 84 9c 40  	sub	s1, s9, s1
80001728: d3 82 04 d2  	fcvt.d.w	ft5, s1
8000172c: b3 34 86 02  	mulhu	s1, a2, s0
80001730: 93 d4 44 00  	srli	s1, s1, 4
80001734: b3 84 a4 02  	mul	s1, s1, a0
80001738: 83 27 01 08  	lw	a5, 128(sp)
8000173c: b3 84 97 40  	sub	s1, a5, s1
80001740: 53 83 04 d2  	fcvt.d.w	ft6, s1
80001744: 83 22 81 05  	lw	t0, 88(sp)
80001748: b3 b4 82 02  	mulhu	s1, t0, s0
8000174c: 93 d4 44 00  	srli	s1, s1, 4
80001750: b3 84 a4 02  	mul	s1, s1, a0
80001754: b3 84 92 40  	sub	s1, t0, s1
80001758: d3 83 04 d2  	fcvt.d.w	ft7, s1
8000175c: 83 20 01 06  	lw	ra, 96(sp)
80001760: b3 b4 80 02  	mulhu	s1, ra, s0
80001764: 93 d4 44 00  	srli	s1, s1, 4
80001768: b3 84 a4 02  	mul	s1, s1, a0
8000176c: b3 84 90 40  	sub	s1, ra, s1
80001770: 53 85 04 d2  	fcvt.d.w	fa0, s1
80001774: 03 2d 81 06  	lw	s10, 104(sp)
80001778: b3 34 8d 02  	mulhu	s1, s10, s0
8000177c: 93 d4 44 00  	srli	s1, s1, 4
80001780: b3 84 a4 02  	mul	s1, s1, a0
80001784: b3 04 9d 40  	sub	s1, s10, s1
80001788: d3 85 04 d2  	fcvt.d.w	fa1, s1
8000178c: b3 b4 8e 02  	mulhu	s1, t4, s0
80001790: 93 d4 44 00  	srli	s1, s1, 4
80001794: b3 84 a4 02  	mul	s1, s1, a0
80001798: b3 84 95 40  	sub	s1, a1, s1
8000179c: 53 86 04 d2  	fcvt.d.w	fa2, s1
800017a0: 03 2b 41 07  	lw	s6, 116(sp)
800017a4: b3 34 8b 02  	mulhu	s1, s6, s0
800017a8: 93 d4 44 00  	srli	s1, s1, 4
800017ac: b3 84 a4 02  	mul	s1, s1, a0
800017b0: b3 04 9b 40  	sub	s1, s6, s1
800017b4: d3 86 04 d2  	fcvt.d.w	fa3, s1
800017b8: b3 34 8f 02  	mulhu	s1, t5, s0
800017bc: 93 d4 44 00  	srli	s1, s1, 4
800017c0: b3 84 a4 02  	mul	s1, s1, a0
800017c4: b3 04 9f 40  	sub	s1, t5, s1
800017c8: 53 87 04 d2  	fcvt.d.w	fa4, s1
800017cc: 03 2a c1 07  	lw	s4, 124(sp)
800017d0: b3 34 8a 02  	mulhu	s1, s4, s0
800017d4: 93 d4 44 00  	srli	s1, s1, 4
800017d8: b3 84 a4 02  	mul	s1, s1, a0
800017dc: b3 04 9a 40  	sub	s1, s4, s1
800017e0: d3 87 04 d2  	fcvt.d.w	fa5, s1
800017e4: 83 2a 81 07  	lw	s5, 120(sp)
800017e8: b3 b4 8a 02  	mulhu	s1, s5, s0
800017ec: 93 d4 44 00  	srli	s1, s1, 4
800017f0: b3 84 a4 02  	mul	s1, s1, a0
800017f4: b3 84 9a 40  	sub	s1, s5, s1
800017f8: 53 88 04 d2  	fcvt.d.w	fa6, s1
800017fc: 83 2b 01 07  	lw	s7, 112(sp)
80001800: b3 b4 8b 02  	mulhu	s1, s7, s0
80001804: 93 d4 44 00  	srli	s1, s1, 4
80001808: b3 84 a4 02  	mul	s1, s1, a0
8000180c: b3 84 9b 40  	sub	s1, s7, s1
80001810: d3 88 04 d2  	fcvt.d.w	fa7, s1
80001814: 03 2c c1 06  	lw	s8, 108(sp)
80001818: b3 34 8c 02  	mulhu	s1, s8, s0
8000181c: 93 d4 44 00  	srli	s1, s1, 4
80001820: b3 84 a4 02  	mul	s1, s1, a0
80001824: b3 04 9c 40  	sub	s1, s8, s1
80001828: 53 8e 04 d2  	fcvt.d.w	ft8, s1
8000182c: 83 2d 41 06  	lw	s11, 100(sp)
80001830: b3 b4 8d 02  	mulhu	s1, s11, s0
80001834: 93 d4 44 00  	srli	s1, s1, 4
80001838: b3 84 a4 02  	mul	s1, s1, a0
8000183c: b3 84 9d 40  	sub	s1, s11, s1
80001840: d3 8e 04 d2  	fcvt.d.w	ft9, s1
80001844: 83 23 c1 05  	lw	t2, 92(sp)
80001848: b3 b4 83 02  	mulhu	s1, t2, s0
8000184c: 93 d4 44 00  	srli	s1, s1, 4
80001850: b3 84 a4 02  	mul	s1, s1, a0
80001854: b3 84 93 40  	sub	s1, t2, s1
80001858: 53 8f 04 d2  	fcvt.d.w	ft10, s1
8000185c: 83 29 41 05  	lw	s3, 84(sp)
80001860: b3 b4 89 02  	mulhu	s1, s3, s0
80001864: 93 d4 44 00  	srli	s1, s1, 4
80001868: b3 84 a4 02  	mul	s1, s1, a0
8000186c: b3 84 99 40  	sub	s1, s3, s1
80001870: d3 8f 04 d2  	fcvt.d.w	ft11, s1
80001874: 03 2e 01 05  	lw	t3, 80(sp)
80001878: b3 34 8e 02  	mulhu	s1, t3, s0
8000187c: 93 d4 44 00  	srli	s1, s1, 4
80001880: b3 84 a4 02  	mul	s1, s1, a0
80001884: b3 04 9e 40  	sub	s1, t3, s1
80001888: 53 84 04 d2  	fcvt.d.w	fs0, s1
8000188c: 83 2f 81 04  	lw	t6, 72(sp)
80001890: b3 b4 8f 02  	mulhu	s1, t6, s0
80001894: 93 d4 44 00  	srli	s1, s1, 4
80001898: b3 84 a4 02  	mul	s1, s1, a0
8000189c: b3 84 9f 40  	sub	s1, t6, s1
800018a0: d3 84 04 d2  	fcvt.d.w	fs1, s1
800018a4: 03 29 01 04  	lw	s2, 64(sp)
800018a8: b3 34 89 02  	mulhu	s1, s2, s0
800018ac: 93 d4 44 00  	srli	s1, s1, 4
800018b0: b3 84 a4 02  	mul	s1, s1, a0
800018b4: b3 04 99 40  	sub	s1, s2, s1
800018b8: 53 89 04 d2  	fcvt.d.w	fs2, s1
800018bc: 83 28 c1 03  	lw	a7, 60(sp)
800018c0: b3 b4 88 02  	mulhu	s1, a7, s0
800018c4: 93 d4 44 00  	srli	s1, s1, 4
800018c8: b3 84 a4 02  	mul	s1, s1, a0
800018cc: b3 84 98 40  	sub	s1, a7, s1
800018d0: d3 89 04 d2  	fcvt.d.w	fs3, s1
800018d4: 83 24 41 08  	lw	s1, 132(sp)
800018d8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800018dc: 27 b0 16 fa  	fsd	ft1, -96(a3)
800018e0: d3 70 01 12  	fmul.d	ft1, ft2, ft0
800018e4: 27 b4 16 fa  	fsd	ft1, -88(a3)
800018e8: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800018ec: 27 b8 16 fa  	fsd	ft1, -80(a3)
800018f0: d3 70 02 12  	fmul.d	ft1, ft4, ft0
800018f4: 27 bc 16 fa  	fsd	ft1, -72(a3)
800018f8: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
800018fc: 27 b0 16 fc  	fsd	ft1, -64(a3)
80001900: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001904: 27 b4 16 fc  	fsd	ft1, -56(a3)
80001908: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
8000190c: 27 b8 16 fc  	fsd	ft1, -48(a3)
80001910: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001914: 27 bc 16 fc  	fsd	ft1, -40(a3)
80001918: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
8000191c: 27 b0 16 fe  	fsd	ft1, -32(a3)
80001920: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80001924: 27 b4 16 fe  	fsd	ft1, -24(a3)
80001928: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
8000192c: 27 b8 16 fe  	fsd	ft1, -16(a3)
80001930: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80001934: 27 bc 16 fe  	fsd	ft1, -8(a3)
80001938: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
8000193c: 27 b0 16 00  	fsd	ft1, 0(a3)
80001940: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80001944: 27 b4 16 00  	fsd	ft1, 8(a3)
80001948: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
8000194c: 27 b8 16 00  	fsd	ft1, 16(a3)
80001950: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80001954: 27 bc 16 00  	fsd	ft1, 24(a3)
80001958: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
8000195c: 27 b0 16 02  	fsd	ft1, 32(a3)
80001960: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80001964: 27 b4 16 02  	fsd	ft1, 40(a3)
80001968: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
8000196c: 27 b8 16 02  	fsd	ft1, 48(a3)
80001970: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80001974: 27 bc 16 02  	fsd	ft1, 56(a3)
80001978: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
8000197c: 27 b0 16 04  	fsd	ft1, 64(a3)
80001980: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80001984: 27 b8 16 04  	fsd	ft1, 80(a3)
80001988: 13 05 0f 00  	mv	a0, t5
8000198c: 03 2f 01 03  	lw	t5, 48(sp)
80001990: 23 a6 e6 05  	sw	t5, 76(a3)
80001994: 13 0f 05 00  	mv	t5, a0
80001998: 03 25 c1 02  	lw	a0, 44(sp)
8000199c: 23 a4 a6 04  	sw	a0, 72(a3)
800019a0: d3 f0 09 12  	fmul.d	ft1, fs3, ft0
800019a4: 27 bc 16 04  	fsd	ft1, 88(a3)
;   for (i = 0; i < nj; i++)
800019a8: 93 88 a8 01  	addi	a7, a7, 26
800019ac: 03 25 81 08  	lw	a0, 136(sp)
800019b0: 13 05 35 00  	addi	a0, a0, 3
800019b4: 23 24 a1 08  	sw	a0, 136(sp)
800019b8: 93 84 34 00  	addi	s1, s1, 3
800019bc: 03 25 c1 08  	lw	a0, 140(sp)
800019c0: 13 05 45 00  	addi	a0, a0, 4
800019c4: 23 26 a1 08  	sw	a0, 140(sp)
800019c8: 13 03 43 00  	addi	t1, t1, 4
800019cc: 13 09 99 01  	addi	s2, s2, 25
800019d0: 23 20 21 05  	sw	s2, 64(sp)
800019d4: 03 29 41 03  	lw	s2, 52(sp)
800019d8: 13 08 58 00  	addi	a6, a6, 5
800019dc: 23 22 01 05  	sw	a6, 68(sp)
800019e0: 13 09 69 00  	addi	s2, s2, 6
800019e4: 13 07 67 00  	addi	a4, a4, 6
800019e8: 93 8f 7f 01  	addi	t6, t6, 23
800019ec: 23 24 f1 05  	sw	t6, 72(sp)
800019f0: 93 8c 7c 00  	addi	s9, s9, 7
800019f4: 23 26 91 05  	sw	s9, 76(sp)
800019f8: 13 0e 6e 01  	addi	t3, t3, 22
800019fc: 23 28 c1 05  	sw	t3, 80(sp)
80001a00: 93 87 87 00  	addi	a5, a5, 8
80001a04: 23 20 f1 08  	sw	a5, 128(sp)
80001a08: 13 06 86 00  	addi	a2, a2, 8
80001a0c: 93 89 59 01  	addi	s3, s3, 21
80001a10: 23 2a 31 05  	sw	s3, 84(sp)
80001a14: 93 82 92 00  	addi	t0, t0, 9
80001a18: 23 2c 51 04  	sw	t0, 88(sp)
80001a1c: 93 83 43 01  	addi	t2, t2, 20
80001a20: 23 2e 71 04  	sw	t2, 92(sp)
80001a24: 93 80 a0 00  	addi	ra, ra, 10
80001a28: 23 20 11 06  	sw	ra, 96(sp)
80001a2c: 93 8d 3d 01  	addi	s11, s11, 19
80001a30: 23 22 b1 07  	sw	s11, 100(sp)
80001a34: 13 0d bd 00  	addi	s10, s10, 11
80001a38: 23 24 a1 07  	sw	s10, 104(sp)
80001a3c: 13 0c 2c 01  	addi	s8, s8, 18
80001a40: 23 26 81 07  	sw	s8, 108(sp)
80001a44: 93 85 c5 00  	addi	a1, a1, 12
80001a48: 93 8e ce 00  	addi	t4, t4, 12
80001a4c: 93 8b 1b 01  	addi	s7, s7, 17
80001a50: 23 28 71 07  	sw	s7, 112(sp)
80001a54: 13 0b db 00  	addi	s6, s6, 13
80001a58: 23 2a 61 07  	sw	s6, 116(sp)
80001a5c: 93 8a 0a 01  	addi	s5, s5, 16
80001a60: 23 2c 51 07  	sw	s5, 120(sp)
80001a64: 93 86 06 0c  	addi	a3, a3, 192
80001a68: 13 0a fa 00  	addi	s4, s4, 15
80001a6c: 23 2e 41 07  	sw	s4, 124(sp)
80001a70: 13 0f ef 00  	addi	t5, t5, 14
80001a74: 13 05 50 1d  	addi	a0, zero, 469
80001a78: 23 2e 11 03  	sw	a7, 60(sp)
80001a7c: e3 9a a8 c0  	bne	a7, a0, 0x80001690 <.LBB0_70+0x504>
80001a80: 83 20 81 02  	lw	ra, 40(sp)
;   for (i = 0; i < ni; i++)
80001a84: 13 d5 40 01  	srli	a0, ra, 20
80001a88: 33 35 a0 00  	snez	a0, a0
80001a8c: b7 f5 11 00  	lui	a1, 287
80001a90: 93 85 95 40  	addi	a1, a1, 1033
80001a94: b3 b5 b0 00  	sltu	a1, ra, a1
80001a98: 33 75 b5 00  	and	a0, a0, a1
80001a9c: 23 24 a1 08  	sw	a0, 136(sp)
80001aa0: 63 08 05 3a  	beqz	a0, 0x80001e50 <.LBB0_71+0x308>
80001aa4: 13 0f 00 00  	mv	t5, zero
80001aa8: 93 0f 00 00  	mv	t6, zero
80001aac: 13 0a 00 00  	mv	s4, zero
80001ab0: 93 0a 00 00  	mv	s5, zero
80001ab4: 13 0b 00 00  	mv	s6, zero
80001ab8: 93 0b 00 00  	mv	s7, zero
80001abc: 13 0c 00 00  	mv	s8, zero
80001ac0: 13 08 00 00  	mv	a6, zero
80001ac4: 93 08 00 00  	mv	a7, zero
80001ac8: 93 02 00 00  	mv	t0, zero
80001acc: 13 03 00 00  	mv	t1, zero
80001ad0: 93 03 00 00  	mv	t2, zero
80001ad4: 13 0e 00 00  	mv	t3, zero
80001ad8: 93 0e 00 00  	mv	t4, zero
80001adc: 13 09 00 00  	mv	s2, zero
80001ae0: 93 0c 00 00  	mv	s9, zero
80001ae4: 93 0d 00 00  	mv	s11, zero
80001ae8: 93 09 00 00  	mv	s3, zero
80001aec: 93 07 00 00  	mv	a5, zero
80001af0: 13 04 00 00  	mv	s0, zero
80001af4: 93 04 00 00  	mv	s1, zero
80001af8: 13 06 00 00  	mv	a2, zero
80001afc: 93 05 00 00  	mv	a1, zero
80001b00: 13 05 80 00  	addi	a0, zero, 8
80001b04: 13 07 70 01  	addi	a4, zero, 23
;   for (i = 0; i < ni; i++)
80001b08: 93 06 00 04  	addi	a3, zero, 64
80001b0c: 13 0d 00 0c  	addi	s10, zero, 192
80001b10: ab 20 d7 00  	scfgw	a4, a3
80001b14: ab 20 a5 01  	scfgw	a0, s10
80001b18: 13 07 f0 00  	addi	a4, zero, 15
80001b1c: 93 06 00 06  	addi	a3, zero, 96
80001b20: 13 0d 00 0e  	addi	s10, zero, 224
80001b24: ab 20 d7 00  	scfgw	a4, a3
80001b28: ab 20 a5 01  	scfgw	a0, s10
80001b2c: 13 05 00 02  	addi	a0, zero, 32
80001b30: ab 20 a0 00  	scfgw	zero, a0
80001b34: 2b a0 00 3a  	scfgwi	ra, 928
80001b38: 73 e0 00 7c  	csrsi	1984, 1
80001b3c: 37 95 2e ba  	lui	a0, 762601
80001b40: 93 06 35 ba  	addi	a3, a0, -1117
80001b44: 13 0d a0 fe  	addi	s10, zero, -22

80001b48 <.LBB0_71>:
80001b48: 17 35 00 00  	auipc	a0, 3
80001b4c: 13 05 85 62  	addi	a0, a0, 1576
80001b50: 87 31 05 00  	fld	ft3, 0(a0)
80001b54: 13 05 60 01  	addi	a0, zero, 22
80001b58: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001b5c: 93 00 00 19  	addi	ra, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001b60: 33 37 df 02  	mulhu	a4, t5, a3
80001b64: 13 57 47 00  	srli	a4, a4, 4
80001b68: 33 07 a7 02  	mul	a4, a4, a0
80001b6c: 33 07 ef 40  	sub	a4, t5, a4
80001b70: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001b74: 33 b7 df 02  	mulhu	a4, t6, a3
80001b78: 13 57 47 00  	srli	a4, a4, 4
80001b7c: 33 07 a7 02  	mul	a4, a4, a0
80001b80: 33 87 ef 40  	sub	a4, t6, a4
80001b84: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001b88: 33 37 da 02  	mulhu	a4, s4, a3
80001b8c: 13 57 47 00  	srli	a4, a4, 4
80001b90: 33 07 a7 02  	mul	a4, a4, a0
80001b94: 33 07 ea 40  	sub	a4, s4, a4
80001b98: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001b9c: 33 b7 da 02  	mulhu	a4, s5, a3
80001ba0: 13 57 47 00  	srli	a4, a4, 4
80001ba4: 33 07 a7 02  	mul	a4, a4, a0
80001ba8: 33 87 ea 40  	sub	a4, s5, a4
80001bac: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001bb0: 33 37 db 02  	mulhu	a4, s6, a3
80001bb4: 13 57 47 00  	srli	a4, a4, 4
80001bb8: 33 07 a7 02  	mul	a4, a4, a0
80001bbc: 33 07 eb 40  	sub	a4, s6, a4
80001bc0: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001bc4: 33 b7 db 02  	mulhu	a4, s7, a3
80001bc8: 13 57 47 00  	srli	a4, a4, 4
80001bcc: 33 07 a7 02  	mul	a4, a4, a0
80001bd0: 33 87 eb 40  	sub	a4, s7, a4
80001bd4: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001bd8: 33 37 dc 02  	mulhu	a4, s8, a3
80001bdc: 13 57 47 00  	srli	a4, a4, 4
80001be0: 33 07 a7 02  	mul	a4, a4, a0
80001be4: 33 07 ec 40  	sub	a4, s8, a4
80001be8: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001bec: 33 37 d8 02  	mulhu	a4, a6, a3
80001bf0: 13 57 47 00  	srli	a4, a4, 4
80001bf4: 33 07 a7 02  	mul	a4, a4, a0
80001bf8: 33 07 e8 40  	sub	a4, a6, a4
80001bfc: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001c00: 33 b7 d8 02  	mulhu	a4, a7, a3
80001c04: 13 57 47 00  	srli	a4, a4, 4
80001c08: 33 07 a7 02  	mul	a4, a4, a0
80001c0c: 33 87 e8 40  	sub	a4, a7, a4
80001c10: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001c14: 33 b7 d2 02  	mulhu	a4, t0, a3
80001c18: 13 57 47 00  	srli	a4, a4, 4
80001c1c: 33 07 a7 02  	mul	a4, a4, a0
80001c20: 33 87 e2 40  	sub	a4, t0, a4
80001c24: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001c28: 33 37 d3 02  	mulhu	a4, t1, a3
80001c2c: 13 57 47 00  	srli	a4, a4, 4
80001c30: 33 07 a7 02  	mul	a4, a4, a0
80001c34: 33 07 e3 40  	sub	a4, t1, a4
80001c38: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001c3c: 33 b7 d3 02  	mulhu	a4, t2, a3
80001c40: 13 57 47 00  	srli	a4, a4, 4
80001c44: 33 07 a7 02  	mul	a4, a4, a0
80001c48: 33 87 e3 40  	sub	a4, t2, a4
80001c4c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001c50: 33 37 de 02  	mulhu	a4, t3, a3
80001c54: 13 57 47 00  	srli	a4, a4, 4
80001c58: 33 07 a7 02  	mul	a4, a4, a0
80001c5c: 33 07 ee 40  	sub	a4, t3, a4
80001c60: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001c64: 33 b7 de 02  	mulhu	a4, t4, a3
80001c68: 13 57 47 00  	srli	a4, a4, 4
80001c6c: 33 07 a7 02  	mul	a4, a4, a0
80001c70: 33 87 ee 40  	sub	a4, t4, a4
80001c74: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001c78: 33 37 d9 02  	mulhu	a4, s2, a3
80001c7c: 13 57 47 00  	srli	a4, a4, 4
80001c80: 33 07 a7 02  	mul	a4, a4, a0
80001c84: 33 07 e9 40  	sub	a4, s2, a4
80001c88: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001c8c: 33 b7 dc 02  	mulhu	a4, s9, a3
80001c90: 13 57 47 00  	srli	a4, a4, 4
80001c94: 33 07 a7 02  	mul	a4, a4, a0
80001c98: 33 87 ec 40  	sub	a4, s9, a4
80001c9c: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001ca0: 33 b7 dd 02  	mulhu	a4, s11, a3
80001ca4: 13 57 47 00  	srli	a4, a4, 4
80001ca8: 33 07 a7 02  	mul	a4, a4, a0
80001cac: 33 87 ed 40  	sub	a4, s11, a4
80001cb0: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001cb4: 33 b7 d9 02  	mulhu	a4, s3, a3
80001cb8: 13 57 47 00  	srli	a4, a4, 4
80001cbc: 33 07 a7 02  	mul	a4, a4, a0
80001cc0: 33 87 e9 40  	sub	a4, s3, a4
80001cc4: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001cc8: 33 b7 d7 02  	mulhu	a4, a5, a3
80001ccc: 13 57 47 00  	srli	a4, a4, 4
80001cd0: 33 07 a7 02  	mul	a4, a4, a0
80001cd4: 33 87 e7 40  	sub	a4, a5, a4
80001cd8: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001cdc: 33 37 d4 02  	mulhu	a4, s0, a3
80001ce0: 13 57 47 00  	srli	a4, a4, 4
80001ce4: 33 07 a7 02  	mul	a4, a4, a0
80001ce8: 33 07 e4 40  	sub	a4, s0, a4
80001cec: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001cf0: 33 b7 d4 02  	mulhu	a4, s1, a3
80001cf4: 13 57 47 00  	srli	a4, a4, 4
80001cf8: 33 07 a7 02  	mul	a4, a4, a0
80001cfc: 33 87 e4 40  	sub	a4, s1, a4
80001d00: d3 0a 07 d2  	fcvt.d.w	fs5, a4
80001d04: 33 37 d6 02  	mulhu	a4, a2, a3
80001d08: 13 57 47 00  	srli	a4, a4, 4
80001d0c: 33 07 a7 02  	mul	a4, a4, a0
80001d10: 33 07 e6 40  	sub	a4, a2, a4
80001d14: 53 0b 07 d2  	fcvt.d.w	fs6, a4
80001d18: 33 b7 d5 02  	mulhu	a4, a1, a3
80001d1c: 13 57 47 00  	srli	a4, a4, 4
80001d20: 33 07 a7 03  	mul	a4, a4, s10
80001d24: 33 87 e5 00  	add	a4, a1, a4
80001d28: d3 0b 07 d2  	fcvt.d.w	fs7, a4
80001d2c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001d30: 53 80 52 22  	fmv.d	ft0, ft5
80001d34: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001d38: 53 80 52 22  	fmv.d	ft0, ft5
80001d3c: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001d40: 53 80 52 22  	fmv.d	ft0, ft5
80001d44: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001d48: 53 80 52 22  	fmv.d	ft0, ft5
80001d4c: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001d50: 53 80 52 22  	fmv.d	ft0, ft5
80001d54: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001d58: 53 80 52 22  	fmv.d	ft0, ft5
80001d5c: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001d60: 53 80 52 22  	fmv.d	ft0, ft5
80001d64: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001d68: 53 80 52 22  	fmv.d	ft0, ft5
80001d6c: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001d70: 53 80 52 22  	fmv.d	ft0, ft5
80001d74: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001d78: 53 80 52 22  	fmv.d	ft0, ft5
80001d7c: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001d80: 53 80 52 22  	fmv.d	ft0, ft5
80001d84: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001d88: 53 80 52 22  	fmv.d	ft0, ft5
80001d8c: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001d90: 53 80 52 22  	fmv.d	ft0, ft5
80001d94: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001d98: 53 80 52 22  	fmv.d	ft0, ft5
80001d9c: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001da0: 53 80 52 22  	fmv.d	ft0, ft5
80001da4: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001da8: 53 80 52 22  	fmv.d	ft0, ft5
80001dac: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001db0: 53 80 52 22  	fmv.d	ft0, ft5
80001db4: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001db8: 53 80 52 22  	fmv.d	ft0, ft5
80001dbc: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001dc0: 53 80 52 22  	fmv.d	ft0, ft5
80001dc4: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001dc8: 53 80 52 22  	fmv.d	ft0, ft5
80001dcc: 53 00 42 22  	fmv.d	ft0, ft4
80001dd0: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001dd4: 53 80 52 22  	fmv.d	ft0, ft5
80001dd8: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001ddc: 53 80 52 22  	fmv.d	ft0, ft5
80001de0: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001de4: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001de8: 93 85 95 01  	addi	a1, a1, 25
80001dec: 13 06 86 01  	addi	a2, a2, 24
80001df0: 93 84 74 01  	addi	s1, s1, 23
80001df4: 13 04 54 01  	addi	s0, s0, 21
80001df8: 93 87 47 01  	addi	a5, a5, 20
80001dfc: 93 89 39 01  	addi	s3, s3, 19
80001e00: 93 8d 2d 01  	addi	s11, s11, 18
80001e04: 93 8c 1c 01  	addi	s9, s9, 17
80001e08: 13 09 09 01  	addi	s2, s2, 16
80001e0c: 93 8e fe 00  	addi	t4, t4, 15
80001e10: 13 0e ee 00  	addi	t3, t3, 14
80001e14: 93 83 d3 00  	addi	t2, t2, 13
80001e18: 13 03 c3 00  	addi	t1, t1, 12
80001e1c: 93 82 b2 00  	addi	t0, t0, 11
80001e20: 93 88 a8 00  	addi	a7, a7, 10
80001e24: 13 08 98 00  	addi	a6, a6, 9
80001e28: 13 0c 8c 00  	addi	s8, s8, 8
80001e2c: 93 8b 7b 00  	addi	s7, s7, 7
80001e30: 13 0b 6b 00  	addi	s6, s6, 6
80001e34: 93 8a 5a 00  	addi	s5, s5, 5
80001e38: 13 0a 4a 00  	addi	s4, s4, 4
80001e3c: 93 8f 3f 00  	addi	t6, t6, 3
80001e40: 13 0f 2f 00  	addi	t5, t5, 2
80001e44: e3 9e 15 d0  	bne	a1, ra, 0x80001b60 <.LBB0_71+0x18>
80001e48: 73 f0 00 7c  	csrci	1984, 1
80001e4c: 6f 00 c0 39  	j	0x800021e8 <.LBB0_72+0x330>
80001e50: 93 06 00 00  	mv	a3, zero
80001e54: 13 07 00 00  	mv	a4, zero
80001e58: 93 07 00 00  	mv	a5, zero
80001e5c: 93 04 00 00  	mv	s1, zero
80001e60: 23 26 01 08  	sw	zero, 140(sp)
80001e64: 13 0e 00 00  	mv	t3, zero
80001e68: 93 0e 00 00  	mv	t4, zero
80001e6c: 13 0f 00 00  	mv	t5, zero
80001e70: 93 0f 00 00  	mv	t6, zero
80001e74: 13 09 00 00  	mv	s2, zero
80001e78: 13 0a 00 00  	mv	s4, zero
80001e7c: 93 0a 00 00  	mv	s5, zero
80001e80: 13 0b 00 00  	mv	s6, zero
80001e84: 93 0b 00 00  	mv	s7, zero
80001e88: 13 0c 00 00  	mv	s8, zero
80001e8c: 93 0c 00 00  	mv	s9, zero
80001e90: 13 0d 00 00  	mv	s10, zero
80001e94: 93 0d 00 00  	mv	s11, zero
80001e98: 93 09 00 00  	mv	s3, zero
80001e9c: 13 08 00 00  	mv	a6, zero
80001ea0: 93 08 00 00  	mv	a7, zero
80001ea4: 93 02 00 00  	mv	t0, zero
80001ea8: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001eac: 13 84 00 06  	addi	s0, ra, 96
80001eb0: 37 95 2e ba  	lui	a0, 762601
80001eb4: 13 05 35 ba  	addi	a0, a0, -1117

80001eb8 <.LBB0_72>:
80001eb8: 97 35 00 00  	auipc	a1, 3
80001ebc: 93 85 85 2b  	addi	a1, a1, 696
80001ec0: 07 b0 05 00  	fld	ft0, 0(a1)
80001ec4: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001ec8: 33 b6 a2 02  	mulhu	a2, t0, a0
80001ecc: 13 56 46 00  	srli	a2, a2, 4
80001ed0: 33 06 76 02  	mul	a2, a2, t2
80001ed4: b3 80 c2 40  	sub	ra, t0, a2
80001ed8: d3 80 00 d2  	fcvt.d.w	ft1, ra
80001edc: 33 b6 a8 02  	mulhu	a2, a7, a0
80001ee0: 13 56 46 00  	srli	a2, a2, 4
80001ee4: 33 06 76 02  	mul	a2, a2, t2
80001ee8: 33 86 c8 40  	sub	a2, a7, a2
80001eec: 53 01 06 d2  	fcvt.d.w	ft2, a2
80001ef0: 33 b6 a9 02  	mulhu	a2, s3, a0
80001ef4: 13 56 46 00  	srli	a2, a2, 4
80001ef8: 33 06 76 02  	mul	a2, a2, t2
80001efc: 33 86 c9 40  	sub	a2, s3, a2
80001f00: d3 01 06 d2  	fcvt.d.w	ft3, a2
80001f04: 33 36 ad 02  	mulhu	a2, s10, a0
80001f08: 13 56 46 00  	srli	a2, a2, 4
80001f0c: 33 06 76 02  	mul	a2, a2, t2
80001f10: 33 06 cd 40  	sub	a2, s10, a2
80001f14: 53 02 06 d2  	fcvt.d.w	ft4, a2
80001f18: 33 b6 ac 02  	mulhu	a2, s9, a0
80001f1c: 13 56 46 00  	srli	a2, a2, 4
80001f20: 33 06 76 02  	mul	a2, a2, t2
80001f24: 33 86 cc 40  	sub	a2, s9, a2
80001f28: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001f2c: 33 b6 ab 02  	mulhu	a2, s7, a0
80001f30: 13 56 46 00  	srli	a2, a2, 4
80001f34: 33 06 76 02  	mul	a2, a2, t2
80001f38: 33 86 cb 40  	sub	a2, s7, a2
80001f3c: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001f40: 33 b6 aa 02  	mulhu	a2, s5, a0
80001f44: 13 56 46 00  	srli	a2, a2, 4
80001f48: 33 06 76 02  	mul	a2, a2, t2
80001f4c: 33 86 ca 40  	sub	a2, s5, a2
80001f50: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001f54: 33 36 a9 02  	mulhu	a2, s2, a0
80001f58: 13 56 46 00  	srli	a2, a2, 4
80001f5c: 33 06 76 02  	mul	a2, a2, t2
80001f60: 33 06 c9 40  	sub	a2, s2, a2
80001f64: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001f68: 33 36 af 02  	mulhu	a2, t5, a0
80001f6c: 13 56 46 00  	srli	a2, a2, 4
80001f70: 33 06 76 02  	mul	a2, a2, t2
80001f74: 33 06 cf 40  	sub	a2, t5, a2
80001f78: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001f7c: 33 36 ae 02  	mulhu	a2, t3, a0
80001f80: 13 56 46 00  	srli	a2, a2, 4
80001f84: 33 06 76 02  	mul	a2, a2, t2
80001f88: 33 06 ce 40  	sub	a2, t3, a2
80001f8c: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001f90: 33 b6 a4 02  	mulhu	a2, s1, a0
80001f94: 13 56 46 00  	srli	a2, a2, 4
80001f98: 33 06 76 02  	mul	a2, a2, t2
80001f9c: 33 86 c4 40  	sub	a2, s1, a2
80001fa0: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001fa4: 33 b6 a6 02  	mulhu	a2, a3, a0
80001fa8: 13 56 46 00  	srli	a2, a2, 4
80001fac: 33 06 76 02  	mul	a2, a2, t2
80001fb0: 33 86 c6 40  	sub	a2, a3, a2
80001fb4: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001fb8: 33 36 a7 02  	mulhu	a2, a4, a0
80001fbc: 13 56 46 00  	srli	a2, a2, 4
80001fc0: 33 06 76 02  	mul	a2, a2, t2
80001fc4: 33 06 c7 40  	sub	a2, a4, a2
80001fc8: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001fcc: 33 b6 a7 02  	mulhu	a2, a5, a0
80001fd0: 13 56 46 00  	srli	a2, a2, 4
80001fd4: 33 06 76 02  	mul	a2, a2, t2
80001fd8: 33 86 c7 40  	sub	a2, a5, a2
80001fdc: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001fe0: 83 20 c1 08  	lw	ra, 140(sp)
80001fe4: 33 b6 a0 02  	mulhu	a2, ra, a0
80001fe8: 13 56 46 00  	srli	a2, a2, 4
80001fec: 33 06 76 02  	mul	a2, a2, t2
80001ff0: 33 86 c0 40  	sub	a2, ra, a2
80001ff4: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001ff8: 33 b6 ae 02  	mulhu	a2, t4, a0
80001ffc: 13 56 46 00  	srli	a2, a2, 4
80002000: 33 06 76 02  	mul	a2, a2, t2
80002004: 33 86 ce 40  	sub	a2, t4, a2
80002008: 53 0e 06 d2  	fcvt.d.w	ft8, a2
8000200c: 33 b6 af 02  	mulhu	a2, t6, a0
80002010: 13 56 46 00  	srli	a2, a2, 4
80002014: 33 06 76 02  	mul	a2, a2, t2
80002018: 33 86 cf 40  	sub	a2, t6, a2
8000201c: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80002020: 33 36 aa 02  	mulhu	a2, s4, a0
80002024: 13 56 46 00  	srli	a2, a2, 4
80002028: 33 06 76 02  	mul	a2, a2, t2
8000202c: 33 06 ca 40  	sub	a2, s4, a2
80002030: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80002034: 33 36 ab 02  	mulhu	a2, s6, a0
80002038: 13 56 46 00  	srli	a2, a2, 4
8000203c: 33 06 76 02  	mul	a2, a2, t2
80002040: 33 06 cb 40  	sub	a2, s6, a2
80002044: d3 0f 06 d2  	fcvt.d.w	ft11, a2
80002048: 33 36 ac 02  	mulhu	a2, s8, a0
8000204c: 13 56 46 00  	srli	a2, a2, 4
80002050: 33 06 76 02  	mul	a2, a2, t2
80002054: 33 06 cc 40  	sub	a2, s8, a2
80002058: 53 04 06 d2  	fcvt.d.w	fs0, a2
8000205c: 33 b6 ad 02  	mulhu	a2, s11, a0
80002060: 13 56 46 00  	srli	a2, a2, 4
80002064: 33 06 76 02  	mul	a2, a2, t2
80002068: 33 86 cd 40  	sub	a2, s11, a2
8000206c: d3 04 06 d2  	fcvt.d.w	fs1, a2
80002070: 33 36 a8 02  	mulhu	a2, a6, a0
80002074: 13 56 46 00  	srli	a2, a2, 4
80002078: 33 06 76 02  	mul	a2, a2, t2
8000207c: 33 06 c8 40  	sub	a2, a6, a2
80002080: 53 09 06 d2  	fcvt.d.w	fs2, a2
80002084: 33 36 a3 02  	mulhu	a2, t1, a0
80002088: 13 56 46 00  	srli	a2, a2, 4
8000208c: 93 85 04 00  	mv	a1, s1
80002090: 93 84 07 00  	mv	s1, a5
80002094: 93 07 07 00  	mv	a5, a4
80002098: 13 87 06 00  	mv	a4, a3
8000209c: 93 06 a0 fe  	addi	a3, zero, -22
800020a0: 33 06 d6 02  	mul	a2, a2, a3
800020a4: 93 06 07 00  	mv	a3, a4
800020a8: 13 87 07 00  	mv	a4, a5
800020ac: 93 87 04 00  	mv	a5, s1
800020b0: 93 84 05 00  	mv	s1, a1
800020b4: 33 06 c3 00  	add	a2, t1, a2
800020b8: d3 09 06 d2  	fcvt.d.w	fs3, a2
800020bc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800020c0: 27 30 14 fa  	fsd	ft1, -96(s0)
800020c4: d3 70 01 12  	fmul.d	ft1, ft2, ft0
800020c8: 27 34 14 fa  	fsd	ft1, -88(s0)
800020cc: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800020d0: 27 38 14 fa  	fsd	ft1, -80(s0)
800020d4: d3 70 02 12  	fmul.d	ft1, ft4, ft0
800020d8: 27 3c 14 fa  	fsd	ft1, -72(s0)
800020dc: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
800020e0: 27 30 14 fc  	fsd	ft1, -64(s0)
800020e4: d3 70 03 12  	fmul.d	ft1, ft6, ft0
800020e8: 27 34 14 fc  	fsd	ft1, -56(s0)
800020ec: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
800020f0: 27 38 14 fc  	fsd	ft1, -48(s0)
800020f4: d3 70 05 12  	fmul.d	ft1, fa0, ft0
800020f8: 27 3c 14 fc  	fsd	ft1, -40(s0)
800020fc: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80002100: 27 30 14 fe  	fsd	ft1, -32(s0)
80002104: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80002108: 27 34 14 fe  	fsd	ft1, -24(s0)
8000210c: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80002110: 27 38 14 fe  	fsd	ft1, -16(s0)
80002114: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80002118: 27 3c 14 fe  	fsd	ft1, -8(s0)
8000211c: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80002120: 27 30 14 00  	fsd	ft1, 0(s0)
80002124: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80002128: 27 34 14 00  	fsd	ft1, 8(s0)
8000212c: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80002130: 27 38 14 00  	fsd	ft1, 16(s0)
80002134: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80002138: 27 3c 14 00  	fsd	ft1, 24(s0)
8000213c: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80002140: 27 30 14 02  	fsd	ft1, 32(s0)
80002144: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80002148: 27 34 14 02  	fsd	ft1, 40(s0)
8000214c: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80002150: 27 38 14 02  	fsd	ft1, 48(s0)
80002154: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80002158: 27 3c 14 02  	fsd	ft1, 56(s0)
8000215c: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80002160: 27 34 14 04  	fsd	ft1, 72(s0)
80002164: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80002168: 27 38 14 04  	fsd	ft1, 80(s0)
8000216c: 23 22 04 04  	sw	zero, 68(s0)
80002170: 23 20 04 04  	sw	zero, 64(s0)
80002174: d3 f0 09 12  	fmul.d	ft1, fs3, ft0
80002178: 27 3c 14 04  	fsd	ft1, 88(s0)
;   for (i = 0; i < ni; i++)
8000217c: 13 03 93 01  	addi	t1, t1, 25
80002180: 93 82 22 00  	addi	t0, t0, 2
80002184: 93 88 38 00  	addi	a7, a7, 3
80002188: 13 08 88 01  	addi	a6, a6, 24
8000218c: 93 89 49 00  	addi	s3, s3, 4
80002190: 93 8d 7d 01  	addi	s11, s11, 23
80002194: 13 0d 5d 00  	addi	s10, s10, 5
80002198: 93 8c 6c 00  	addi	s9, s9, 6
8000219c: 13 0c 5c 01  	addi	s8, s8, 21
800021a0: 93 8b 7b 00  	addi	s7, s7, 7
800021a4: 13 0b 4b 01  	addi	s6, s6, 20
800021a8: 93 8a 8a 00  	addi	s5, s5, 8
800021ac: 13 0a 3a 01  	addi	s4, s4, 19
800021b0: 13 09 99 00  	addi	s2, s2, 9
800021b4: 93 8f 2f 01  	addi	t6, t6, 18
800021b8: 13 0f af 00  	addi	t5, t5, 10
800021bc: 93 8e 1e 01  	addi	t4, t4, 17
800021c0: 13 0e be 00  	addi	t3, t3, 11
800021c4: 93 80 00 01  	addi	ra, ra, 16
800021c8: 23 26 11 08  	sw	ra, 140(sp)
800021cc: 93 84 c5 00  	addi	s1, a1, 12
800021d0: 93 87 f7 00  	addi	a5, a5, 15
800021d4: 13 04 04 0c  	addi	s0, s0, 192
800021d8: 13 07 e7 00  	addi	a4, a4, 14
800021dc: 93 86 d6 00  	addi	a3, a3, 13
800021e0: 93 05 00 19  	addi	a1, zero, 400
800021e4: e3 12 b3 ce  	bne	t1, a1, 0x80001ec8 <.LBB0_72+0x10>
;   for (i = 0; i < ni; i++) {
800021e8: 03 25 41 01  	lw	a0, 20(sp)
800021ec: 83 25 01 01  	lw	a1, 16(sp)
800021f0: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800021f4: 73 28 00 b0  	csrr	a6, mcycle
800021f8: 63 0a 05 20  	beqz	a0, 0x8000240c <.LBB0_73+0x16c>
800021fc: 13 05 00 00  	mv	a0, zero
80002200: 93 05 80 00  	addi	a1, zero, 8
80002204: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++) {
80002208: 93 06 00 04  	addi	a3, zero, 64
8000220c: 13 07 00 0c  	addi	a4, zero, 192
80002210: ab 20 d6 00  	scfgw	a2, a3
80002214: ab a0 e5 00  	scfgw	a1, a4
80002218: 93 06 80 f5  	addi	a3, zero, -168
8000221c: 13 07 10 01  	addi	a4, zero, 17
80002220: 93 04 00 06  	addi	s1, zero, 96
80002224: 13 04 00 0e  	addi	s0, zero, 224
80002228: ab 20 97 00  	scfgw	a4, s1
8000222c: ab a0 86 00  	scfgw	a3, s0
80002230: 93 06 f0 00  	addi	a3, zero, 15
80002234: 93 04 00 08  	addi	s1, zero, 128
80002238: 13 04 00 10  	addi	s0, zero, 256
8000223c: ab a0 96 00  	scfgw	a3, s1
80002240: ab a0 85 00  	scfgw	a1, s0
80002244: 93 05 00 02  	addi	a1, zero, 32
80002248: ab 20 b0 00  	scfgw	zero, a1
8000224c: 83 25 c1 01  	lw	a1, 28(sp)
80002250: 2b a0 05 34  	scfgwi	a1, 832
80002254: 93 05 00 09  	addi	a1, zero, 144
80002258: 93 04 10 00  	addi	s1, zero, 1
8000225c: 13 84 04 04  	addi	s0, s1, 64
80002260: 93 87 04 0c  	addi	a5, s1, 192
80002264: ab 20 86 00  	scfgw	a2, s0
80002268: ab a0 f5 00  	scfgw	a1, a5
8000226c: 37 f6 ff ff  	lui	a2, 1048575
80002270: 93 07 86 43  	addi	a5, a2, 1080
80002274: 13 84 04 06  	addi	s0, s1, 96
80002278: ab 20 87 00  	scfgw	a4, s0
8000227c: 13 87 04 0e  	addi	a4, s1, 224
80002280: ab a0 e7 00  	scfgw	a5, a4
80002284: 13 06 86 3a  	addi	a2, a2, 936
80002288: 13 87 04 08  	addi	a4, s1, 128
8000228c: 93 87 04 10  	addi	a5, s1, 256
80002290: ab a0 e6 00  	scfgw	a3, a4
80002294: ab 20 f6 00  	scfgw	a2, a5
80002298: 13 86 04 02  	addi	a2, s1, 32
8000229c: ab 20 c0 00  	scfgw	zero, a2

800022a0 <.LBB0_73>:
800022a0: 17 36 00 00  	auipc	a2, 3
800022a4: 13 06 86 ed  	addi	a2, a2, -296
800022a8: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
800022ac: 03 26 81 01  	lw	a2, 24(sp)
800022b0: 2b 20 16 34  	scfgwi	a2, 833
800022b4: 73 e0 00 7c  	csrsi	1984, 1
800022b8: 13 06 00 01  	addi	a2, zero, 16
800022bc: 83 22 41 02  	lw	t0, 36(sp)
800022c0: 93 86 02 00  	mv	a3, t0
800022c4: 03 29 81 02  	lw	s2, 40(sp)
800022c8: 03 23 01 02  	lw	t1, 32(sp)
800022cc: 83 29 81 08  	lw	s3, 136(sp)
800022d0: 13 07 00 00  	mv	a4, zero
;       tmp[i][j] = 0.0;
800022d4: b3 84 e6 00  	add	s1, a3, a4
800022d8: 23 a2 04 00  	sw	zero, 4(s1)
800022dc: 23 a0 04 00  	sw	zero, 0(s1)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800022e0: 53 02 00 22  	fmv.d	ft4, ft0
800022e4: d3 82 10 22  	fmv.d	ft5, ft1
800022e8: 53 f2 42 12  	fmul.d	ft4, ft5, ft4
800022ec: d3 02 00 22  	fmv.d	ft5, ft0
800022f0: 53 83 10 22  	fmv.d	ft6, ft1
800022f4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800022f8: d3 02 00 22  	fmv.d	ft5, ft0
800022fc: 53 83 10 22  	fmv.d	ft6, ft1
80002300: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002304: d3 02 00 22  	fmv.d	ft5, ft0
80002308: 53 83 10 22  	fmv.d	ft6, ft1
8000230c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002310: d3 02 00 22  	fmv.d	ft5, ft0
80002314: 53 83 10 22  	fmv.d	ft6, ft1
80002318: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
8000231c: d3 02 00 22  	fmv.d	ft5, ft0
80002320: 53 83 10 22  	fmv.d	ft6, ft1
80002324: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002328: d3 02 00 22  	fmv.d	ft5, ft0
8000232c: 53 83 10 22  	fmv.d	ft6, ft1
80002330: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002334: d3 02 00 22  	fmv.d	ft5, ft0
80002338: 53 83 10 22  	fmv.d	ft6, ft1
8000233c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002340: d3 02 00 22  	fmv.d	ft5, ft0
80002344: 53 83 10 22  	fmv.d	ft6, ft1
80002348: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
8000234c: d3 02 00 22  	fmv.d	ft5, ft0
80002350: 53 83 10 22  	fmv.d	ft6, ft1
80002354: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002358: d3 02 00 22  	fmv.d	ft5, ft0
8000235c: 53 83 10 22  	fmv.d	ft6, ft1
80002360: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002364: d3 02 00 22  	fmv.d	ft5, ft0
80002368: 53 83 10 22  	fmv.d	ft6, ft1
8000236c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002370: d3 02 00 22  	fmv.d	ft5, ft0
80002374: 53 83 10 22  	fmv.d	ft6, ft1
80002378: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
8000237c: d3 02 00 22  	fmv.d	ft5, ft0
80002380: 53 83 10 22  	fmv.d	ft6, ft1
80002384: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002388: d3 02 00 22  	fmv.d	ft5, ft0
8000238c: 53 83 10 22  	fmv.d	ft6, ft1
80002390: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002394: d3 02 00 22  	fmv.d	ft5, ft0
80002398: 53 83 10 22  	fmv.d	ft6, ft1
8000239c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023a0: d3 02 00 22  	fmv.d	ft5, ft0
800023a4: 53 83 10 22  	fmv.d	ft6, ft1
800023a8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023ac: d3 02 00 22  	fmv.d	ft5, ft0
800023b0: 53 83 10 22  	fmv.d	ft6, ft1
800023b4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023b8: d3 02 00 22  	fmv.d	ft5, ft0
800023bc: 53 83 10 22  	fmv.d	ft6, ft1
800023c0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023c4: d3 02 00 22  	fmv.d	ft5, ft0
800023c8: 53 83 10 22  	fmv.d	ft6, ft1
800023cc: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023d0: d3 02 00 22  	fmv.d	ft5, ft0
800023d4: 53 83 10 22  	fmv.d	ft6, ft1
800023d8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023dc: d3 02 00 22  	fmv.d	ft5, ft0
800023e0: 53 83 10 22  	fmv.d	ft6, ft1
800023e4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800023e8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
;     for (j = 0; j < nj; j++) {
800023ec: 13 07 87 00  	addi	a4, a4, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800023f0: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nj; j++) {
800023f4: e3 10 b7 ee  	bne	a4, a1, 0x800022d4 <.LBB0_73+0x34>
;   for (i = 0; i < ni; i++) {
800023f8: 13 05 15 00  	addi	a0, a0, 1
800023fc: 93 86 06 09  	addi	a3, a3, 144
80002400: e3 18 c5 ec  	bne	a0, a2, 0x800022d0 <.LBB0_73+0x30>
80002404: 73 f0 00 7c  	csrci	1984, 1
80002408: 6f 00 00 19  	j	0x80002598 <.LBB0_74+0x188>
8000240c: 13 05 00 00  	mv	a0, zero

80002410 <.LBB0_74>:
80002410: 97 35 00 00  	auipc	a1, 3
80002414: 93 85 85 d6  	addi	a1, a1, -664
80002418: 07 b0 05 00  	fld	ft0, 0(a1)
8000241c: 93 08 00 0b  	addi	a7, zero, 176
80002420: 13 06 00 09  	addi	a2, zero, 144
80002424: 93 03 00 01  	addi	t2, zero, 16
80002428: 83 22 41 02  	lw	t0, 36(sp)
8000242c: 13 87 02 00  	mv	a4, t0
80002430: 03 29 81 02  	lw	s2, 40(sp)
80002434: 03 23 01 02  	lw	t1, 32(sp)
80002438: 83 25 c1 01  	lw	a1, 28(sp)
8000243c: 83 26 81 01  	lw	a3, 24(sp)
80002440: 83 29 81 08  	lw	s3, 136(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002444: b3 07 15 03  	mul	a5, a0, a7
80002448: b3 87 f5 00  	add	a5, a1, a5
8000244c: 87 b0 87 04  	fld	ft1, 72(a5)
80002450: 07 b1 07 05  	fld	ft2, 80(a5)
80002454: 87 b1 87 05  	fld	ft3, 88(a5)
80002458: 07 b2 07 06  	fld	ft4, 96(a5)
8000245c: 87 b2 87 06  	fld	ft5, 104(a5)
80002460: 07 b3 07 07  	fld	ft6, 112(a5)
80002464: 87 b3 07 00  	fld	ft7, 0(a5)
80002468: 07 b5 87 00  	fld	fa0, 8(a5)
8000246c: 87 b5 07 01  	fld	fa1, 16(a5)
80002470: 07 b6 87 01  	fld	fa2, 24(a5)
80002474: 87 b6 07 02  	fld	fa3, 32(a5)
80002478: 07 b7 87 02  	fld	fa4, 40(a5)
8000247c: 87 b7 07 03  	fld	fa5, 48(a5)
80002480: 07 b8 87 03  	fld	fa6, 56(a5)
80002484: 87 b8 07 04  	fld	fa7, 64(a5)
80002488: 07 be 87 07  	fld	ft8, 120(a5)
8000248c: 87 be 07 08  	fld	ft9, 128(a5)
80002490: 07 bf 87 08  	fld	ft10, 136(a5)
80002494: 87 bf 07 09  	fld	ft11, 144(a5)
80002498: 07 b4 87 09  	fld	fs0, 152(a5)
8000249c: 87 b4 07 0a  	fld	fs1, 160(a5)
800024a0: 07 b9 87 0a  	fld	fs2, 168(a5)
800024a4: 93 04 00 00  	mv	s1, zero
800024a8: b3 87 96 00  	add	a5, a3, s1
800024ac: 87 b9 07 00  	fld	fs3, 0(a5)
800024b0: d3 f9 79 12  	fmul.d	fs3, fs3, ft7
800024b4: 07 ba 07 09  	fld	fs4, 144(a5)
800024b8: 87 ba 07 12  	fld	fs5, 288(a5)
800024bc: 07 bb 07 1b  	fld	fs6, 432(a5)
800024c0: 87 bb 07 24  	fld	fs7, 576(a5)
800024c4: c3 79 aa 9a  	fmadd.d	fs3, fs4, fa0, fs3
800024c8: 07 ba 07 2d  	fld	fs4, 720(a5)
800024cc: c3 f9 ba 9a  	fmadd.d	fs3, fs5, fa1, fs3
800024d0: 87 ba 07 36  	fld	fs5, 864(a5)
800024d4: c3 79 cb 9a  	fmadd.d	fs3, fs6, fa2, fs3
800024d8: 07 bb 07 3f  	fld	fs6, 1008(a5)
800024dc: c3 f9 db 9a  	fmadd.d	fs3, fs7, fa3, fs3
800024e0: 87 bb 07 48  	fld	fs7, 1152(a5)
800024e4: c3 79 ea 9a  	fmadd.d	fs3, fs4, fa4, fs3
800024e8: 07 ba 07 51  	fld	fs4, 1296(a5)
800024ec: c3 f9 fa 9a  	fmadd.d	fs3, fs5, fa5, fs3
800024f0: 87 ba 07 5a  	fld	fs5, 1440(a5)
800024f4: c3 79 0b 9b  	fmadd.d	fs3, fs6, fa6, fs3
800024f8: 07 bb 07 63  	fld	fs6, 1584(a5)
800024fc: c3 f9 1b 9b  	fmadd.d	fs3, fs7, fa7, fs3
80002500: 87 bb 07 6c  	fld	fs7, 1728(a5)
80002504: c3 79 1a 9a  	fmadd.d	fs3, fs4, ft1, fs3
80002508: 07 ba 07 75  	fld	fs4, 1872(a5)
8000250c: c3 f9 2a 9a  	fmadd.d	fs3, fs5, ft2, fs3
80002510: 87 ba 07 7e  	fld	fs5, 2016(a5)
80002514: 13 84 87 43  	addi	s0, a5, 1080
80002518: c3 79 3b 9a  	fmadd.d	fs3, fs6, ft3, fs3
8000251c: 07 3b 84 43  	fld	fs6, 1080(s0)
80002520: 13 84 07 48  	addi	s0, a5, 1152
80002524: c3 f9 4b 9a  	fmadd.d	fs3, fs7, ft4, fs3
80002528: 87 3b 04 48  	fld	fs7, 1152(s0)
8000252c: 13 84 87 4c  	addi	s0, a5, 1224
80002530: c3 79 5a 9a  	fmadd.d	fs3, fs4, ft5, fs3
80002534: 07 3a 84 4c  	fld	fs4, 1224(s0)
80002538: 13 84 07 51  	addi	s0, a5, 1296
8000253c: c3 f9 6a 9a  	fmadd.d	fs3, fs5, ft6, fs3
80002540: 87 3a 04 51  	fld	fs5, 1296(s0)
80002544: 13 84 87 55  	addi	s0, a5, 1368
80002548: c3 79 cb 9b  	fmadd.d	fs3, fs6, ft8, fs3
8000254c: 07 3b 84 55  	fld	fs6, 1368(s0)
80002550: 13 84 07 5a  	addi	s0, a5, 1440
80002554: c3 f9 db 9b  	fmadd.d	fs3, fs7, ft9, fs3
80002558: 87 3b 04 5a  	fld	fs7, 1440(s0)
8000255c: 93 87 87 5e  	addi	a5, a5, 1512
80002560: c3 79 ea 9b  	fmadd.d	fs3, fs4, ft10, fs3
80002564: 07 ba 87 5e  	fld	fs4, 1512(a5)
80002568: c3 f9 fa 9b  	fmadd.d	fs3, fs5, ft11, fs3
8000256c: c3 79 8b 9a  	fmadd.d	fs3, fs6, fs0, fs3
80002570: c3 f9 9b 9a  	fmadd.d	fs3, fs7, fs1, fs3
80002574: c3 79 2a 9b  	fmadd.d	fs3, fs4, fs2, fs3
80002578: b3 07 97 00  	add	a5, a4, s1
8000257c: d3 f9 09 12  	fmul.d	fs3, fs3, ft0
;     for (j = 0; j < nj; j++) {
80002580: 93 84 84 00  	addi	s1, s1, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002584: 27 b0 37 01  	fsd	fs3, 0(a5)
;     for (j = 0; j < nj; j++) {
80002588: e3 90 c4 f2  	bne	s1, a2, 0x800024a8 <.LBB0_74+0x98>
;   for (i = 0; i < ni; i++) {
8000258c: 13 05 15 00  	addi	a0, a0, 1
80002590: 13 07 07 09  	addi	a4, a4, 144
80002594: e3 18 75 ea  	bne	a0, t2, 0x80002444 <.LBB0_74+0x34>
;   for (i = 0; i < ni; i++) {
80002598: 13 d5 42 01  	srli	a0, t0, 20
8000259c: 33 35 a0 00  	snez	a0, a0
800025a0: b7 f5 11 00  	lui	a1, 287
800025a4: 93 85 95 70  	addi	a1, a1, 1801
800025a8: b3 b5 b2 00  	sltu	a1, t0, a1
800025ac: 33 75 b5 00  	and	a0, a0, a1
800025b0: 33 75 35 01  	and	a0, a0, s3
800025b4: 83 25 c1 00  	lw	a1, 12(sp)
800025b8: 33 f5 a5 00  	and	a0, a1, a0
800025bc: 63 0e 05 1e  	beqz	a0, 0x800027b8 <.LBB0_75+0x128>
800025c0: 13 05 00 00  	mv	a0, zero
800025c4: 93 05 80 00  	addi	a1, zero, 8
800025c8: 93 08 70 01  	addi	a7, zero, 23
;   for (i = 0; i < ni; i++) {
800025cc: 93 06 00 04  	addi	a3, zero, 64
800025d0: 13 07 00 0c  	addi	a4, zero, 192
800025d4: ab a0 d8 00  	scfgw	a7, a3
800025d8: ab a0 e5 00  	scfgw	a1, a4
800025dc: 93 06 f0 00  	addi	a3, zero, 15
800025e0: 13 07 00 06  	addi	a4, zero, 96
800025e4: 93 07 00 0e  	addi	a5, zero, 224
800025e8: ab a0 e6 00  	scfgw	a3, a4
800025ec: ab a0 f5 00  	scfgw	a1, a5
800025f0: 13 07 00 02  	addi	a4, zero, 32
800025f4: ab 20 e0 00  	scfgw	zero, a4
800025f8: 2b 20 09 32  	scfgwi	s2, 800
800025fc: 13 07 10 01  	addi	a4, zero, 17
80002600: 93 07 10 00  	addi	a5, zero, 1
80002604: 93 84 07 04  	addi	s1, a5, 64
80002608: 13 84 07 0c  	addi	s0, a5, 192
8000260c: ab 20 97 00  	scfgw	a4, s1
80002610: ab a0 85 00  	scfgw	a1, s0
80002614: 93 04 80 f7  	addi	s1, zero, -136
80002618: 13 84 07 06  	addi	s0, a5, 96
8000261c: ab a0 88 00  	scfgw	a7, s0
80002620: 13 84 07 0e  	addi	s0, a5, 224
80002624: ab a0 84 00  	scfgw	s1, s0
80002628: 93 84 07 08  	addi	s1, a5, 128
8000262c: 13 84 07 10  	addi	s0, a5, 256
80002630: ab a0 96 00  	scfgw	a3, s1
80002634: ab a0 85 00  	scfgw	a1, s0
80002638: 93 85 07 02  	addi	a1, a5, 32
8000263c: ab 20 b0 00  	scfgw	zero, a1
80002640: 2b a0 12 34  	scfgwi	t0, 833
80002644: 93 05 00 0c  	addi	a1, zero, 192
80002648: 93 07 20 00  	addi	a5, zero, 2
8000264c: 93 84 07 04  	addi	s1, a5, 64
80002650: 13 84 07 0c  	addi	s0, a5, 192
80002654: ab 20 97 00  	scfgw	a4, s1
80002658: ab a0 85 00  	scfgw	a1, s0
8000265c: 37 f7 ff ff  	lui	a4, 1048575
80002660: 93 04 87 34  	addi	s1, a4, 840
80002664: 13 84 07 06  	addi	s0, a5, 96
80002668: 13 86 07 0e  	addi	a2, a5, 224
8000266c: ab a0 88 00  	scfgw	a7, s0
80002670: ab a0 c4 00  	scfgw	s1, a2
80002674: 13 06 87 28  	addi	a2, a4, 648
80002678: 13 87 07 08  	addi	a4, a5, 128
8000267c: 93 84 07 10  	addi	s1, a5, 256
80002680: ab a0 e6 00  	scfgw	a3, a4
80002684: ab 20 96 00  	scfgw	a2, s1
80002688: 13 86 07 02  	addi	a2, a5, 32
8000268c: ab 20 c0 00  	scfgw	zero, a2

80002690 <.LBB0_75>:
80002690: 17 36 00 00  	auipc	a2, 3
80002694: 13 06 06 af  	addi	a2, a2, -1296
80002698: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
8000269c: 2b 20 23 34  	scfgwi	t1, 834
800026a0: 73 e0 00 7c  	csrsi	1984, 1
800026a4: 13 06 00 01  	addi	a2, zero, 16
800026a8: 93 06 09 00  	mv	a3, s2
800026ac: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
800026b0: b3 87 e6 00  	add	a5, a3, a4
800026b4: 53 02 00 22  	fmv.d	ft4, ft0
800026b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800026bc: 27 b0 47 00  	fsd	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
800026c0: d3 82 10 22  	fmv.d	ft5, ft1
800026c4: 53 03 21 22  	fmv.d	ft6, ft2
800026c8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800026cc: d3 82 10 22  	fmv.d	ft5, ft1
800026d0: 53 03 21 22  	fmv.d	ft6, ft2
800026d4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800026d8: d3 82 10 22  	fmv.d	ft5, ft1
800026dc: 53 03 21 22  	fmv.d	ft6, ft2
800026e0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800026e4: d3 82 10 22  	fmv.d	ft5, ft1
800026e8: 53 03 21 22  	fmv.d	ft6, ft2
800026ec: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800026f0: d3 82 10 22  	fmv.d	ft5, ft1
800026f4: 53 03 21 22  	fmv.d	ft6, ft2
800026f8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800026fc: d3 82 10 22  	fmv.d	ft5, ft1
80002700: 53 03 21 22  	fmv.d	ft6, ft2
80002704: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002708: d3 82 10 22  	fmv.d	ft5, ft1
8000270c: 53 03 21 22  	fmv.d	ft6, ft2
80002710: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002714: d3 82 10 22  	fmv.d	ft5, ft1
80002718: 53 03 21 22  	fmv.d	ft6, ft2
8000271c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002720: d3 82 10 22  	fmv.d	ft5, ft1
80002724: 53 03 21 22  	fmv.d	ft6, ft2
80002728: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
8000272c: d3 82 10 22  	fmv.d	ft5, ft1
80002730: 53 03 21 22  	fmv.d	ft6, ft2
80002734: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002738: d3 82 10 22  	fmv.d	ft5, ft1
8000273c: 53 03 21 22  	fmv.d	ft6, ft2
80002740: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002744: d3 82 10 22  	fmv.d	ft5, ft1
80002748: 53 03 21 22  	fmv.d	ft6, ft2
8000274c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002750: d3 82 10 22  	fmv.d	ft5, ft1
80002754: 53 03 21 22  	fmv.d	ft6, ft2
80002758: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
8000275c: d3 82 10 22  	fmv.d	ft5, ft1
80002760: 53 03 21 22  	fmv.d	ft6, ft2
80002764: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002768: d3 82 10 22  	fmv.d	ft5, ft1
8000276c: 53 03 21 22  	fmv.d	ft6, ft2
80002770: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002774: d3 82 10 22  	fmv.d	ft5, ft1
80002778: 53 03 21 22  	fmv.d	ft6, ft2
8000277c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80002780: d3 82 10 22  	fmv.d	ft5, ft1
80002784: 53 03 21 22  	fmv.d	ft6, ft2
80002788: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
8000278c: d3 82 10 22  	fmv.d	ft5, ft1
80002790: 53 03 21 22  	fmv.d	ft6, ft2
80002794: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;     for (j = 0; j < nl; j++) {
80002798: 13 07 87 00  	addi	a4, a4, 8
;         D[i][j] += tmp[i][k] * C[k][j];
8000279c: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++) {
800027a0: e3 18 b7 f0  	bne	a4, a1, 0x800026b0 <.LBB0_75+0x20>
;   for (i = 0; i < ni; i++) {
800027a4: 13 05 15 00  	addi	a0, a0, 1
800027a8: 93 86 06 0c  	addi	a3, a3, 192
800027ac: e3 10 c5 f0  	bne	a0, a2, 0x800026ac <.LBB0_75+0x1c>
800027b0: 73 f0 00 7c  	csrci	1984, 1
800027b4: 6f 00 c0 14  	j	0x80002900 <.LBB0_76+0x144>
800027b8: 13 05 00 00  	mv	a0, zero

800027bc <.LBB0_76>:
800027bc: 97 35 00 00  	auipc	a1, 3
800027c0: 93 85 45 9c  	addi	a1, a1, -1596
800027c4: 07 b0 05 00  	fld	ft0, 0(a1)
800027c8: 93 08 00 09  	addi	a7, zero, 144
800027cc: 13 06 00 0c  	addi	a2, zero, 192
800027d0: 93 06 00 01  	addi	a3, zero, 16
800027d4: 13 07 09 00  	mv	a4, s2
;         D[i][j] += tmp[i][k] * C[k][j];
800027d8: b3 07 15 03  	mul	a5, a0, a7
800027dc: b3 87 f2 00  	add	a5, t0, a5
800027e0: 87 b0 07 01  	fld	ft1, 16(a5)
800027e4: 07 b1 87 01  	fld	ft2, 24(a5)
800027e8: 87 b1 07 02  	fld	ft3, 32(a5)
800027ec: 07 b2 87 02  	fld	ft4, 40(a5)
800027f0: 87 b2 07 03  	fld	ft5, 48(a5)
800027f4: 07 b3 87 03  	fld	ft6, 56(a5)
800027f8: 87 b3 07 04  	fld	ft7, 64(a5)
800027fc: 07 b5 87 04  	fld	fa0, 72(a5)
80002800: 87 b5 07 05  	fld	fa1, 80(a5)
80002804: 07 b6 87 05  	fld	fa2, 88(a5)
80002808: 87 b6 07 06  	fld	fa3, 96(a5)
8000280c: 07 b7 87 06  	fld	fa4, 104(a5)
80002810: 87 b7 07 07  	fld	fa5, 112(a5)
80002814: 07 b8 87 07  	fld	fa6, 120(a5)
80002818: 87 b8 07 08  	fld	fa7, 128(a5)
8000281c: 07 be 87 08  	fld	ft8, 136(a5)
80002820: 87 be 07 00  	fld	ft9, 0(a5)
80002824: 07 bf 87 00  	fld	ft10, 8(a5)
80002828: 93 04 00 00  	mv	s1, zero
;       D[i][j] *= beta;
8000282c: b3 07 97 00  	add	a5, a4, s1
80002830: 87 bf 07 00  	fld	ft11, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
80002834: 33 04 93 00  	add	s0, t1, s1
80002838: 07 34 04 00  	fld	fs0, 0(s0)
8000283c: 87 34 04 0c  	fld	fs1, 192(s0)
;       D[i][j] *= beta;
80002840: d3 ff 0f 12  	fmul.d	ft11, ft11, ft0
;         D[i][j] += tmp[i][k] * C[k][j];
80002844: c3 7f d4 fb  	fmadd.d	ft11, fs0, ft9, ft11
80002848: c3 ff e4 fb  	fmadd.d	ft11, fs1, ft10, ft11
8000284c: 07 34 04 18  	fld	fs0, 384(s0)
80002850: 87 34 04 24  	fld	fs1, 576(s0)
80002854: 07 39 04 30  	fld	fs2, 768(s0)
80002858: 87 39 04 3c  	fld	fs3, 960(s0)
8000285c: c3 7f 14 fa  	fmadd.d	ft11, fs0, ft1, ft11
80002860: c3 ff 24 fa  	fmadd.d	ft11, fs1, ft2, ft11
80002864: c3 7f 39 fa  	fmadd.d	ft11, fs2, ft3, ft11
80002868: c3 ff 49 fa  	fmadd.d	ft11, fs3, ft4, ft11
8000286c: 07 34 04 48  	fld	fs0, 1152(s0)
80002870: 87 34 04 54  	fld	fs1, 1344(s0)
80002874: 07 39 04 60  	fld	fs2, 1536(s0)
80002878: 87 39 04 6c  	fld	fs3, 1728(s0)
8000287c: c3 7f 54 fa  	fmadd.d	ft11, fs0, ft5, ft11
80002880: c3 ff 64 fa  	fmadd.d	ft11, fs1, ft6, ft11
80002884: c3 7f 79 fa  	fmadd.d	ft11, fs2, ft7, ft11
80002888: c3 ff a9 fa  	fmadd.d	ft11, fs3, fa0, ft11
8000288c: 07 34 04 78  	fld	fs0, 1920(s0)
80002890: 93 05 04 42  	addi	a1, s0, 1056
80002894: 87 b4 05 42  	fld	fs1, 1056(a1)
80002898: 93 05 04 48  	addi	a1, s0, 1152
8000289c: 07 b9 05 48  	fld	fs2, 1152(a1)
800028a0: 93 05 04 4e  	addi	a1, s0, 1248
800028a4: 87 b9 05 4e  	fld	fs3, 1248(a1)
800028a8: c3 7f b4 fa  	fmadd.d	ft11, fs0, fa1, ft11
800028ac: c3 ff c4 fa  	fmadd.d	ft11, fs1, fa2, ft11
800028b0: c3 7f d9 fa  	fmadd.d	ft11, fs2, fa3, ft11
800028b4: c3 ff e9 fa  	fmadd.d	ft11, fs3, fa4, ft11
800028b8: 93 05 04 54  	addi	a1, s0, 1344
800028bc: 07 b4 05 54  	fld	fs0, 1344(a1)
800028c0: 93 05 04 5a  	addi	a1, s0, 1440
800028c4: 87 b4 05 5a  	fld	fs1, 1440(a1)
800028c8: 93 05 04 60  	addi	a1, s0, 1536
800028cc: 07 b9 05 60  	fld	fs2, 1536(a1)
800028d0: 93 05 04 66  	addi	a1, s0, 1632
800028d4: 87 b9 05 66  	fld	fs3, 1632(a1)
800028d8: c3 7f f4 fa  	fmadd.d	ft11, fs0, fa5, ft11
800028dc: c3 ff 04 fb  	fmadd.d	ft11, fs1, fa6, ft11
800028e0: c3 7f 19 fb  	fmadd.d	ft11, fs2, fa7, ft11
800028e4: c3 ff c9 fb  	fmadd.d	ft11, fs3, ft8, ft11
;     for (j = 0; j < nl; j++) {
800028e8: 93 84 84 00  	addi	s1, s1, 8
;         D[i][j] += tmp[i][k] * C[k][j];
800028ec: 27 b0 f7 01  	fsd	ft11, 0(a5)
;     for (j = 0; j < nl; j++) {
800028f0: e3 9e c4 f2  	bne	s1, a2, 0x8000282c <.LBB0_76+0x70>
;   for (i = 0; i < ni; i++) {
800028f4: 13 05 15 00  	addi	a0, a0, 1
800028f8: 13 07 07 0c  	addi	a4, a4, 192
800028fc: e3 1e d5 ec  	bne	a0, a3, 0x800027d8 <.LBB0_76+0x1c>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002900: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80002904: b3 05 05 41  	sub	a1, a0, a6

80002908 <.LBB0_77>:
80002908: 17 25 00 00  	auipc	a0, 2
8000290c: 13 05 95 5d  	addi	a0, a0, 1497
80002910: 97 00 00 00  	auipc	ra, 0
80002914: e7 80 40 29  	jalr	660(ra)
80002918: 63 8c 09 10  	beqz	s3, 0x80002a30 <.LBB0_77+0x128>
8000291c: 13 05 80 00  	addi	a0, zero, 8
80002920: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
80002924: 13 06 00 04  	addi	a2, zero, 64
80002928: 93 06 00 0c  	addi	a3, zero, 192
8000292c: ab a0 c5 00  	scfgw	a1, a2
80002930: ab 20 d5 00  	scfgw	a0, a3
80002934: 93 05 f0 00  	addi	a1, zero, 15
80002938: 13 06 00 06  	addi	a2, zero, 96
8000293c: 93 06 00 0e  	addi	a3, zero, 224
80002940: ab a0 c5 00  	scfgw	a1, a2
80002944: ab 20 d5 00  	scfgw	a0, a3
80002948: 13 05 00 02  	addi	a0, zero, 32
8000294c: ab 20 a0 00  	scfgw	zero, a0
80002950: 2b 20 09 32  	scfgwi	s2, 800
80002954: 73 e0 00 7c  	csrsi	1984, 1
80002958: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000295c: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80002960: 53 02 00 22  	fmv.d	ft4, ft0
80002964: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002968: 53 02 00 22  	fmv.d	ft4, ft0
8000296c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002970: 53 02 00 22  	fmv.d	ft4, ft0
80002974: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002978: 53 02 00 22  	fmv.d	ft4, ft0
8000297c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002980: 53 02 00 22  	fmv.d	ft4, ft0
80002984: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002988: 53 02 00 22  	fmv.d	ft4, ft0
8000298c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002990: 53 02 00 22  	fmv.d	ft4, ft0
80002994: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002998: 53 02 00 22  	fmv.d	ft4, ft0
8000299c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029a0: 53 02 00 22  	fmv.d	ft4, ft0
800029a4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029a8: 53 02 00 22  	fmv.d	ft4, ft0
800029ac: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029b0: 53 02 00 22  	fmv.d	ft4, ft0
800029b4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029b8: 53 02 00 22  	fmv.d	ft4, ft0
800029bc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029c0: 53 02 00 22  	fmv.d	ft4, ft0
800029c4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029c8: 53 02 00 22  	fmv.d	ft4, ft0
800029cc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029d0: 53 02 00 22  	fmv.d	ft4, ft0
800029d4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029d8: 53 02 00 22  	fmv.d	ft4, ft0
800029dc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029e0: 53 02 00 22  	fmv.d	ft4, ft0
800029e4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029e8: 53 02 00 22  	fmv.d	ft4, ft0
800029ec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029f0: 53 02 00 22  	fmv.d	ft4, ft0
800029f4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800029f8: 53 02 00 22  	fmv.d	ft4, ft0
800029fc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002a00: 53 02 00 22  	fmv.d	ft4, ft0
80002a04: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002a08: 53 02 00 22  	fmv.d	ft4, ft0
80002a0c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002a10: 53 02 00 22  	fmv.d	ft4, ft0
80002a14: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002a18: 53 02 00 22  	fmv.d	ft4, ft0
;     for (int i = 0; i < n; i++){
80002a1c: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80002a20: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     for (int i = 0; i < n; i++){
80002a24: e3 1e 05 f2  	bnez	a0, 0x80002960 <.LBB0_77+0x58>
80002a28: 73 f0 00 7c  	csrci	1984, 1
80002a2c: 6f 00 c0 0d  	j	0x80002b08 <.LBB0_78>
;     for (int i = 0; i < n; i++){
80002a30: 13 05 09 06  	addi	a0, s2, 96
80002a34: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002a38: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002a3c: 07 30 05 fa  	fld	ft0, -96(a0)
80002a40: 87 30 85 fa  	fld	ft1, -88(a0)
80002a44: 07 31 05 fb  	fld	ft2, -80(a0)
80002a48: 07 32 85 fb  	fld	ft4, -72(a0)
80002a4c: 53 70 30 02  	fadd.d	ft0, ft0, ft3
80002a50: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002a54: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002a58: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002a5c: 87 30 05 fc  	fld	ft1, -64(a0)
80002a60: 07 31 85 fc  	fld	ft2, -56(a0)
80002a64: 87 31 05 fd  	fld	ft3, -48(a0)
80002a68: 07 32 85 fd  	fld	ft4, -40(a0)
80002a6c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002a70: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002a74: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002a78: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002a7c: 87 30 05 fe  	fld	ft1, -32(a0)
80002a80: 07 31 85 fe  	fld	ft2, -24(a0)
80002a84: 87 31 05 ff  	fld	ft3, -16(a0)
80002a88: 07 32 85 ff  	fld	ft4, -8(a0)
80002a8c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002a90: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002a94: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002a98: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002a9c: 87 30 05 00  	fld	ft1, 0(a0)
80002aa0: 07 31 85 00  	fld	ft2, 8(a0)
80002aa4: 87 31 05 01  	fld	ft3, 16(a0)
80002aa8: 07 32 85 01  	fld	ft4, 24(a0)
80002aac: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002ab0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002ab4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002ab8: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002abc: 87 30 05 02  	fld	ft1, 32(a0)
80002ac0: 07 31 85 02  	fld	ft2, 40(a0)
80002ac4: 87 31 05 03  	fld	ft3, 48(a0)
80002ac8: 07 32 85 03  	fld	ft4, 56(a0)
80002acc: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002ad0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002ad4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002ad8: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002adc: 87 30 05 04  	fld	ft1, 64(a0)
80002ae0: 07 31 85 04  	fld	ft2, 72(a0)
80002ae4: 87 31 05 05  	fld	ft3, 80(a0)
80002ae8: 07 32 85 05  	fld	ft4, 88(a0)
80002aec: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002af0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002af4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002af8: d3 71 02 02  	fadd.d	ft3, ft4, ft0
;     for (int i = 0; i < n; i++){
80002afc: 93 85 f5 ff  	addi	a1, a1, -1
80002b00: 13 05 05 0c  	addi	a0, a0, 192
80002b04: e3 9c 05 f2  	bnez	a1, 0x80002a3c <.LBB0_77+0x134>

80002b08 <.LBB0_78>:
80002b08: 17 25 00 00  	auipc	a0, 2
80002b0c: 13 05 05 68  	addi	a0, a0, 1664
80002b10: 07 30 05 00  	fld	ft0, 0(a0)
;   double error = r - r_true;
80002b14: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
;   error = error < 0.0 ? -error : error;
80002b18: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
80002b1c: 27 38 81 08  	fsd	fs0, 144(sp)
80002b20: 03 26 01 09  	lw	a2, 144(sp)
80002b24: 83 26 41 09  	lw	a3, 148(sp)

80002b28 <.LBB0_79>:
80002b28: 17 25 00 00  	auipc	a0, 2
80002b2c: 13 05 d5 3a  	addi	a0, a0, 941
80002b30: 97 00 00 00  	auipc	ra, 0
80002b34: e7 80 40 07  	jalr	116(ra)

80002b38 <.LBB0_80>:
80002b38: 17 25 00 00  	auipc	a0, 2
80002b3c: 13 05 85 65  	addi	a0, a0, 1624
80002b40: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80002b44: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80002b48: 87 3b 81 09  	fld	fs7, 152(sp)
80002b4c: 07 3b 01 0a  	fld	fs6, 160(sp)
80002b50: 87 3a 81 0a  	fld	fs5, 168(sp)
80002b54: 07 3a 01 0b  	fld	fs4, 176(sp)
80002b58: 87 39 81 0b  	fld	fs3, 184(sp)
80002b5c: 07 39 01 0c  	fld	fs2, 192(sp)
80002b60: 87 34 81 0c  	fld	fs1, 200(sp)
80002b64: 07 34 01 0d  	fld	fs0, 208(sp)
80002b68: 83 2d c1 0d  	lw	s11, 220(sp)
80002b6c: 03 2d 01 0e  	lw	s10, 224(sp)
80002b70: 83 2c 41 0e  	lw	s9, 228(sp)
80002b74: 03 2c 81 0e  	lw	s8, 232(sp)
80002b78: 83 2b c1 0e  	lw	s7, 236(sp)
80002b7c: 03 2b 01 0f  	lw	s6, 240(sp)
80002b80: 83 2a 41 0f  	lw	s5, 244(sp)
80002b84: 03 2a 81 0f  	lw	s4, 248(sp)
80002b88: 83 29 c1 0f  	lw	s3, 252(sp)
80002b8c: 03 29 01 10  	lw	s2, 256(sp)
80002b90: 83 24 41 10  	lw	s1, 260(sp)
80002b94: 03 24 81 10  	lw	s0, 264(sp)
80002b98: 83 20 c1 10  	lw	ra, 268(sp)
80002b9c: 13 01 01 11  	addi	sp, sp, 272
80002ba0: 67 80 00 00  	ret

80002ba4 <printf_>:
; {
80002ba4: 13 01 01 fd  	addi	sp, sp, -48
80002ba8: 23 26 11 00  	sw	ra, 12(sp)
80002bac: 93 02 05 00  	mv	t0, a0
80002bb0: 23 26 11 03  	sw	a7, 44(sp)
80002bb4: 23 24 01 03  	sw	a6, 40(sp)
80002bb8: 23 22 f1 02  	sw	a5, 36(sp)
80002bbc: 23 20 e1 02  	sw	a4, 32(sp)
80002bc0: 23 2e d1 00  	sw	a3, 28(sp)
80002bc4: 23 2c c1 00  	sw	a2, 24(sp)
80002bc8: 23 2a b1 00  	sw	a1, 20(sp)
80002bcc: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002bd0: 23 24 a1 00  	sw	a0, 8(sp)

80002bd4 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002bd4: 17 15 00 00  	auipc	a0, 1
80002bd8: 13 05 45 c2  	addi	a0, a0, -988
80002bdc: 93 05 71 00  	addi	a1, sp, 7
80002be0: 13 06 f0 ff  	addi	a2, zero, -1
80002be4: 13 07 41 01  	addi	a4, sp, 20
80002be8: 93 86 02 00  	mv	a3, t0
80002bec: 97 00 00 00  	auipc	ra, 0
80002bf0: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002bf4: 83 20 c1 00  	lw	ra, 12(sp)
80002bf8: 13 01 01 03  	addi	sp, sp, 48
80002bfc: 67 80 00 00  	ret

80002c00 <_vsnprintf.llvm.1805434900161566649>:
; {
80002c00: 13 01 01 f9  	addi	sp, sp, -112
80002c04: 23 26 11 06  	sw	ra, 108(sp)
80002c08: 23 24 81 06  	sw	s0, 104(sp)
80002c0c: 23 22 91 06  	sw	s1, 100(sp)
80002c10: 23 20 21 07  	sw	s2, 96(sp)
80002c14: 23 2e 31 05  	sw	s3, 92(sp)
80002c18: 23 2c 41 05  	sw	s4, 88(sp)
80002c1c: 23 2a 51 05  	sw	s5, 84(sp)
80002c20: 23 28 61 05  	sw	s6, 80(sp)
80002c24: 23 26 71 05  	sw	s7, 76(sp)
80002c28: 23 24 81 05  	sw	s8, 72(sp)
80002c2c: 23 22 91 05  	sw	s9, 68(sp)
80002c30: 23 20 a1 05  	sw	s10, 64(sp)
80002c34: 23 2e b1 03  	sw	s11, 60(sp)
80002c38: 93 09 07 00  	mv	s3, a4
80002c3c: 13 84 06 00  	mv	s0, a3
80002c40: 93 0a 06 00  	mv	s5, a2
80002c44: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80002c48: 63 86 05 00  	beqz	a1, 0x80002c54 <.LBB1_183>
80002c4c: 13 09 05 00  	mv	s2, a0
80002c50: 6f 00 c0 00  	j	0x80002c5c <.LBB1_183+0x8>

80002c54 <.LBB1_183>:
80002c54: 17 19 00 00  	auipc	s2, 1
80002c58: 13 09 09 c5  	addi	s2, s2, -944
80002c5c: 13 0c 00 00  	mv	s8, zero
80002c60: 13 0b 50 02  	addi	s6, zero, 37
80002c64: 93 0d 00 01  	addi	s11, zero, 16
80002c68: 93 0b e0 02  	addi	s7, zero, 46
80002c6c: 37 15 00 00  	lui	a0, 1
80002c70: 13 05 05 80  	addi	a0, a0, -2048
80002c74: 23 2c a1 00  	sw	a0, 24(sp)
80002c78: 37 05 01 00  	lui	a0, 16
80002c7c: 13 05 f5 ff  	addi	a0, a0, -1
80002c80: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80002c84: 13 0d 24 00  	addi	s10, s0, 2
80002c88: 93 0c 0c 00  	mv	s9, s8
80002c8c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80002c90: 03 45 04 00  	lbu	a0, 0(s0)
80002c94: e3 04 05 30  	beqz	a0, 0x8000379c <.LBB1_124+0x3b0>
80002c98: 63 08 65 03  	beq	a0, s6, 0x80002cc8 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80002c9c: 93 84 1c 00  	addi	s1, s9, 1
80002ca0: 93 05 0a 00  	mv	a1, s4
80002ca4: 13 86 0c 00  	mv	a2, s9
80002ca8: 93 86 0a 00  	mv	a3, s5
80002cac: e7 00 09 00  	jalr	s2
;       format++;
80002cb0: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80002cb4: 13 0d 1d 00  	addi	s10, s10, 1
80002cb8: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80002cbc: 03 45 04 00  	lbu	a0, 0(s0)
80002cc0: e3 1c 05 fc  	bnez	a0, 0x80002c98 <.LBB1_183+0x44>
80002cc4: 6f 00 90 2d  	j	0x8000379c <.LBB1_124+0x3b0>
;     flags = 0U;
80002cc8: 13 04 00 00  	mv	s0, zero
80002ccc: 6f 00 00 01  	j	0x80002cdc <.LBB1_9+0x8>

80002cd0 <.LBB1_8>:
80002cd0: 93 05 00 01  	addi	a1, zero, 16

80002cd4 <.LBB1_9>:
80002cd4: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80002cd8: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80002cdc: 03 45 fd ff  	lbu	a0, -1(s10)
80002ce0: 93 05 05 fe  	addi	a1, a0, -32
80002ce4: 63 ec bd 02  	bltu	s11, a1, 0x80002d1c <.LBB1_15>
80002ce8: 93 95 25 00  	slli	a1, a1, 2

80002cec <.LBB1_184>:
80002cec: 17 26 00 00  	auipc	a2, 2
80002cf0: 13 06 86 20  	addi	a2, a2, 520
80002cf4: b3 85 c5 00  	add	a1, a1, a2
80002cf8: 03 a6 05 00  	lw	a2, 0(a1)
80002cfc: 93 05 10 00  	addi	a1, zero, 1
80002d00: 67 00 06 00  	jr	a2

80002d04 <.LBB1_12>:
80002d04: 93 05 80 00  	addi	a1, zero, 8
80002d08: 6f f0 df fc  	j	0x80002cd4 <.LBB1_9>

80002d0c <.LBB1_13>:
80002d0c: 93 05 40 00  	addi	a1, zero, 4
80002d10: 6f f0 5f fc  	j	0x80002cd4 <.LBB1_9>

80002d14 <.LBB1_14>:
80002d14: 93 05 20 00  	addi	a1, zero, 2
80002d18: 6f f0 df fb  	j	0x80002cd4 <.LBB1_9>

80002d1c <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80002d1c: 93 05 05 fd  	addi	a1, a0, -48
80002d20: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80002d24: 93 05 fd ff  	addi	a1, s10, -1
80002d28: 93 06 90 00  	addi	a3, zero, 9
80002d2c: 63 ee c6 06  	bltu	a3, a2, 0x80002da8 <.LBB1_15+0x8c>
80002d30: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002d34: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002d38: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002d3c: b3 06 8b 03  	mul	a3, s6, s8
80002d40: 93 85 15 00  	addi	a1, a1, 1
80002d44: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002d48: 93 06 05 fd  	addi	a3, a0, -48
80002d4c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002d50: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80002d54: e3 e0 86 ff  	bltu	a3, s8, 0x80002d34 <.LBB1_15+0x18>
80002d58: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002d5c: 63 16 75 0b  	bne	a0, s7, 0x80002e08 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80002d60: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80002d64: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80002d68: 93 05 05 fd  	addi	a1, a0, -48
80002d6c: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80002d70: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80002d74: 93 06 90 00  	addi	a3, zero, 9
80002d78: 63 e0 c6 06  	bltu	a3, a2, 0x80002dd8 <.LBB1_15+0xbc>
80002d7c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002d80: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002d84: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002d88: b3 86 8b 03  	mul	a3, s7, s8
80002d8c: 93 85 15 00  	addi	a1, a1, 1
80002d90: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002d94: 93 06 05 fd  	addi	a3, a0, -48
80002d98: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002d9c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80002da0: e3 e0 86 ff  	bltu	a3, s8, 0x80002d80 <.LBB1_15+0x64>
80002da4: 6f 00 00 07  	j	0x80002e14 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80002da8: 13 06 a0 02  	addi	a2, zero, 42
80002dac: 63 18 c5 04  	bne	a0, a2, 0x80002dfc <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80002db0: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80002db4: 63 d4 05 00  	bgez	a1, 0x80002dbc <.LBB1_15+0xa0>
80002db8: 13 64 24 00  	ori	s0, s0, 2
80002dbc: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80002dc0: 03 45 0d 00  	lbu	a0, 0(s10)
80002dc4: 13 d6 f5 41  	srai	a2, a1, 31
80002dc8: b3 85 c5 00  	add	a1, a1, a2
80002dcc: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80002dd0: e3 08 75 f9  	beq	a0, s7, 0x80002d60 <.LBB1_15+0x44>
80002dd4: 6f 00 40 03  	j	0x80002e08 <.LBB1_15+0xec>
;       else if (*format == '*') {
80002dd8: 13 06 a0 02  	addi	a2, zero, 42
80002ddc: 63 1a c5 02  	bne	a0, a2, 0x80002e10 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80002de0: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80002de4: 63 44 70 01  	bgtz	s7, 0x80002dec <.LBB1_15+0xd0>
80002de8: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80002dec: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80002df0: 13 0d 2d 00  	addi	s10, s10, 2
80002df4: 93 89 49 00  	addi	s3, s3, 4
80002df8: 6f 00 00 02  	j	0x80002e18 <.LBB1_15+0xfc>
80002dfc: 13 0b 00 00  	mv	s6, zero
80002e00: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002e04: e3 0e 75 f5  	beq	a0, s7, 0x80002d60 <.LBB1_15+0x44>
80002e08: 93 0b 00 00  	mv	s7, zero
80002e0c: 6f 00 c0 00  	j	0x80002e18 <.LBB1_15+0xfc>
80002e10: 93 0b 00 00  	mv	s7, zero
80002e14: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80002e18: 93 05 85 f9  	addi	a1, a0, -104
80002e1c: 13 d6 15 00  	srli	a2, a1, 1
80002e20: 93 95 f5 01  	slli	a1, a1, 31
80002e24: b3 e5 c5 00  	or	a1, a1, a2
80002e28: 13 06 90 00  	addi	a2, zero, 9
80002e2c: 63 62 b6 06  	bltu	a2, a1, 0x80002e90 <.LBB1_42>
80002e30: 93 95 25 00  	slli	a1, a1, 2

80002e34 <.LBB1_185>:
80002e34: 17 26 00 00  	auipc	a2, 2
80002e38: 13 06 46 10  	addi	a2, a2, 260
80002e3c: b3 85 c5 00  	add	a1, a1, a2
80002e40: 83 a6 05 00  	lw	a3, 0(a1)
80002e44: 93 05 10 00  	addi	a1, zero, 1
80002e48: 13 06 00 10  	addi	a2, zero, 256
80002e4c: 67 80 06 00  	jr	a3

80002e50 <.LBB1_36>:
;         if (*format == 'h') {
80002e50: 03 45 1d 00  	lbu	a0, 1(s10)
80002e54: 93 05 80 06  	addi	a1, zero, 104
80002e58: 63 12 b5 12  	bne	a0, a1, 0x80002f7c <.LBB1_53+0x48>
80002e5c: 93 05 20 00  	addi	a1, zero, 2
80002e60: 13 06 00 0c  	addi	a2, zero, 192
80002e64: 6f 00 00 02  	j	0x80002e84 <.LBB1_41>

80002e68 <.LBB1_38>:
80002e68: 13 06 00 20  	addi	a2, zero, 512
80002e6c: 6f 00 80 01  	j	0x80002e84 <.LBB1_41>

80002e70 <.LBB1_39>:
;         if (*format == 'l') {
80002e70: 03 45 1d 00  	lbu	a0, 1(s10)
80002e74: 93 05 c0 06  	addi	a1, zero, 108
80002e78: 63 18 b5 10  	bne	a0, a1, 0x80002f88 <.LBB1_53+0x54>
80002e7c: 93 05 20 00  	addi	a1, zero, 2
80002e80: 13 06 00 30  	addi	a2, zero, 768

80002e84 <.LBB1_41>:
80002e84: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80002e88: 03 45 0d 00  	lbu	a0, 0(s10)
80002e8c: 33 64 c4 00  	or	s0, s0, a2

80002e90 <.LBB1_42>:
;     switch (*format) {
80002e90: 93 05 b5 fd  	addi	a1, a0, -37
80002e94: 13 06 30 05  	addi	a2, zero, 83
80002e98: 63 64 b6 10  	bltu	a2, a1, 0x80002fa0 <.LBB1_59>
80002e9c: 93 95 25 00  	slli	a1, a1, 2

80002ea0 <.LBB1_186>:
80002ea0: 17 26 00 00  	auipc	a2, 2
80002ea4: 13 06 06 0c  	addi	a2, a2, 192
80002ea8: b3 85 c5 00  	add	a1, a1, a2
80002eac: 03 a6 05 00  	lw	a2, 0(a1)
80002eb0: 93 05 80 00  	addi	a1, zero, 8
80002eb4: 13 0c 00 01  	addi	s8, zero, 16
80002eb8: 67 00 06 00  	jr	a2

80002ebc <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80002ebc: 13 74 f4 fe  	andi	s0, s0, -17
80002ec0: 13 0c a0 00  	addi	s8, zero, 10

80002ec4 <.LBB1_45>:
;         if (*format == 'X') {
80002ec4: 93 05 80 05  	addi	a1, zero, 88
80002ec8: 63 14 b5 00  	bne	a0, a1, 0x80002ed0 <.LBB1_45+0xc>
80002ecc: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80002ed0: 93 05 40 06  	addi	a1, zero, 100
80002ed4: 63 08 b5 0e  	beq	a0, a1, 0x80002fc4 <.LBB1_62+0x8>
80002ed8: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80002edc: 13 06 90 06  	addi	a2, zero, 105
80002ee0: 63 02 c5 0e  	beq	a0, a2, 0x80002fc4 <.LBB1_62+0x8>
80002ee4: 6f 00 80 0d  	j	0x80002fbc <.LBB1_62>

80002ee8 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80002ee8: 93 05 60 04  	addi	a1, zero, 70
80002eec: 63 14 b5 00  	bne	a0, a1, 0x80002ef4 <.LBB1_49+0xc>
80002ef0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80002ef4: 13 85 79 00  	addi	a0, s3, 7
80002ef8: 13 75 85 ff  	andi	a0, a0, -8
80002efc: 07 35 05 00  	fld	fa0, 0(a0)
80002f00: 93 09 85 00  	addi	s3, a0, 8
80002f04: 13 05 09 00  	mv	a0, s2
80002f08: 93 05 0a 00  	mv	a1, s4
80002f0c: 13 86 0c 00  	mv	a2, s9
80002f10: 93 86 0a 00  	mv	a3, s5
80002f14: 13 87 0b 00  	mv	a4, s7
80002f18: 93 07 0b 00  	mv	a5, s6
80002f1c: 13 08 04 00  	mv	a6, s0
80002f20: 97 10 00 00  	auipc	ra, 1
80002f24: e7 80 80 98  	jalr	-1656(ra)
80002f28: 6f 00 00 7c  	j	0x800036e8 <.LBB1_124+0x2fc>

80002f2c <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80002f2c: 83 25 81 01  	lw	a1, 24(sp)
80002f30: 33 64 b4 00  	or	s0, s0, a1

80002f34 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80002f34: 13 65 25 00  	ori	a0, a0, 2
80002f38: 93 05 70 04  	addi	a1, zero, 71
80002f3c: 63 14 b5 00  	bne	a0, a1, 0x80002f44 <.LBB1_53+0x10>
80002f40: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80002f44: 13 85 79 00  	addi	a0, s3, 7
80002f48: 13 75 85 ff  	andi	a0, a0, -8
80002f4c: 07 35 05 00  	fld	fa0, 0(a0)
80002f50: 93 09 85 00  	addi	s3, a0, 8
80002f54: 13 05 09 00  	mv	a0, s2
80002f58: 93 05 0a 00  	mv	a1, s4
80002f5c: 13 86 0c 00  	mv	a2, s9
80002f60: 93 86 0a 00  	mv	a3, s5
80002f64: 13 87 0b 00  	mv	a4, s7
80002f68: 93 07 0b 00  	mv	a5, s6
80002f6c: 13 08 04 00  	mv	a6, s0
80002f70: 97 10 00 00  	auipc	ra, 1
80002f74: e7 80 80 01  	jalr	24(ra)
80002f78: 6f 00 00 77  	j	0x800036e8 <.LBB1_124+0x2fc>
80002f7c: 13 64 04 08  	ori	s0, s0, 128
80002f80: 13 0d 1d 00  	addi	s10, s10, 1
80002f84: 6f f0 df f0  	j	0x80002e90 <.LBB1_42>
80002f88: 13 64 04 10  	ori	s0, s0, 256
80002f8c: 13 0d 1d 00  	addi	s10, s10, 1
80002f90: 6f f0 1f f0  	j	0x80002e90 <.LBB1_42>

80002f94 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80002f94: 13 8c 1c 00  	addi	s8, s9, 1
80002f98: 13 05 50 02  	addi	a0, zero, 37
80002f9c: 6f 00 80 00  	j	0x80002fa4 <.LBB1_59+0x4>

80002fa0 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80002fa0: 13 8c 1c 00  	addi	s8, s9, 1
80002fa4: 93 05 0a 00  	mv	a1, s4
80002fa8: 13 86 0c 00  	mv	a2, s9
80002fac: 93 86 0a 00  	mv	a3, s5
80002fb0: e7 00 09 00  	jalr	s2
80002fb4: 6f 00 80 73  	j	0x800036ec <.LBB1_124+0x300>

80002fb8 <.LBB1_61>:
80002fb8: 93 05 20 00  	addi	a1, zero, 2

80002fbc <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80002fbc: 13 74 34 ff  	andi	s0, s0, -13
80002fc0: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80002fc4: 93 75 04 40  	andi	a1, s0, 1024
80002fc8: 63 84 05 00  	beqz	a1, 0x80002fd0 <.LBB1_62+0x14>
80002fcc: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80002fd0: 93 05 90 06  	addi	a1, zero, 105
80002fd4: 63 06 b5 00  	beq	a0, a1, 0x80002fe0 <.LBB1_62+0x24>
80002fd8: 93 05 40 06  	addi	a1, zero, 100
80002fdc: 63 1c b5 12  	bne	a0, a1, 0x80003114 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80002fe0: 13 75 04 20  	andi	a0, s0, 512
80002fe4: 63 16 05 02  	bnez	a0, 0x80003010 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80002fe8: 13 75 04 10  	andi	a0, s0, 256
80002fec: 63 1c 05 14  	bnez	a0, 0x80003144 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80002ff0: 13 75 04 04  	andi	a0, s0, 64
80002ff4: 63 18 05 4e  	bnez	a0, 0x800034e4 <.LBB1_124+0xf8>
80002ff8: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80002ffc: 93 75 04 08  	andi	a1, s0, 128
80003000: 63 84 05 4e  	beqz	a1, 0x800034e8 <.LBB1_124+0xfc>
80003004: 13 15 08 01  	slli	a0, a6, 16
80003008: 13 58 05 41  	srai	a6, a0, 16
8000300c: 6f 00 c0 4d  	j	0x800034e8 <.LBB1_124+0xfc>
80003010: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003014: 13 85 79 00  	addi	a0, s3, 7
80003018: 13 75 85 ff  	andi	a0, a0, -8
8000301c: 83 29 05 00  	lw	s3, 0(a0)
80003020: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003024: 13 65 45 00  	ori	a0, a0, 4
80003028: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
8000302c: 23 24 a1 00  	sw	a0, 8(sp)
80003030: 33 e5 a9 00  	or	a0, s3, a0
80003034: 63 14 05 00  	bnez	a0, 0x8000303c <.LBB1_62+0x80>
80003038: 13 74 f4 fe  	andi	s0, s0, -17
8000303c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003040: 93 75 04 40  	andi	a1, s0, 1024
80003044: 93 d5 a5 00  	srli	a1, a1, 10
80003048: 33 75 b5 00  	and	a0, a0, a1
8000304c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003050: 63 14 05 0a  	bnez	a0, 0x800030f8 <.LBB1_62+0x13c>
80003054: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003058: 63 da 04 00  	bgez	s1, 0x8000306c <.LBB1_62+0xb0>
8000305c: 33 35 30 01  	snez	a0, s3
80003060: b3 09 30 41  	neg	s3, s3
80003064: 33 85 a4 00  	add	a0, s1, a0
80003068: b3 04 a0 40  	neg	s1, a0
8000306c: 13 09 00 00  	mv	s2, zero
80003070: 13 75 04 02  	andi	a0, s0, 32
80003074: 13 45 15 06  	xori	a0, a0, 97
80003078: 13 05 65 0f  	addi	a0, a0, 246
8000307c: 23 2a a1 00  	sw	a0, 20(sp)
80003080: 6f 00 40 02  	j	0x800030a4 <.LBB1_62+0xe8>
80003084: 13 06 10 00  	addi	a2, zero, 1
80003088: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000308c: 93 36 f9 01  	sltiu	a3, s2, 31
80003090: 33 f6 c6 00  	and	a2, a3, a2
80003094: 13 89 07 00  	mv	s2, a5
80003098: 93 09 05 00  	mv	s3, a0
8000309c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800030a0: 63 0c 06 04  	beqz	a2, 0x800030f8 <.LBB1_62+0x13c>
;       value /= base;
800030a4: 13 85 09 00  	mv	a0, s3
800030a8: 93 85 04 00  	mv	a1, s1
800030ac: 13 06 0c 00  	mv	a2, s8
800030b0: 93 06 00 00  	mv	a3, zero
800030b4: 97 d0 ff ff  	auipc	ra, 1048573
800030b8: e7 80 c0 f4  	jalr	-180(ra)
800030bc: 33 06 85 03  	mul	a2, a0, s8
800030c0: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800030c4: 13 77 e6 0f  	andi	a4, a2, 254
800030c8: 93 06 00 03  	addi	a3, zero, 48
800030cc: 93 07 a0 00  	addi	a5, zero, 10
800030d0: 63 64 f7 00  	bltu	a4, a5, 0x800030d8 <.LBB1_62+0x11c>
800030d4: 83 26 41 01  	lw	a3, 20(sp)
800030d8: 33 86 c6 00  	add	a2, a3, a2
800030dc: 93 06 c1 01  	addi	a3, sp, 28
800030e0: b3 86 26 01  	add	a3, a3, s2
800030e4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800030e8: e3 9e 04 f8  	bnez	s1, 0x80003084 <.LBB1_62+0xc8>
800030ec: 33 b6 89 01  	sltu	a2, s3, s8
800030f0: 13 46 16 00  	xori	a2, a2, 1
800030f4: 6f f0 5f f9  	j	0x80003088 <.LBB1_62+0xcc>
800030f8: 03 25 41 00  	lw	a0, 4(sp)
800030fc: 93 09 85 00  	addi	s3, a0, 8
80003100: 03 25 81 00  	lw	a0, 8(sp)
80003104: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003108: 13 07 c1 01  	addi	a4, sp, 28
8000310c: 03 29 c1 00  	lw	s2, 12(sp)
80003110: 6f 00 80 47  	j	0x80003588 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003114: 13 75 04 20  	andi	a0, s0, 512
80003118: 63 12 05 0c  	bnez	a0, 0x800031dc <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
8000311c: 13 75 04 10  	andi	a0, s0, 256
80003120: 63 1e 05 46  	bnez	a0, 0x8000359c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003124: 13 75 04 04  	andi	a0, s0, 64
80003128: 63 10 05 50  	bnez	a0, 0x80003628 <.LBB1_124+0x23c>
8000312c: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003130: 93 75 04 08  	andi	a1, s0, 128
80003134: 63 8c 05 4e  	beqz	a1, 0x8000362c <.LBB1_124+0x240>
80003138: 83 25 01 01  	lw	a1, 16(sp)
8000313c: 33 75 b5 00  	and	a0, a0, a1
80003140: 6f 00 c0 4e  	j	0x8000362c <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003144: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003148: 63 14 08 00  	bnez	a6, 0x80003150 <.LBB1_62+0x194>
8000314c: 13 74 f4 fe  	andi	s0, s0, -17
80003150: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003154: 13 76 04 40  	andi	a2, s0, 1024
80003158: 13 56 a6 00  	srli	a2, a2, 10
8000315c: b3 f5 c5 00  	and	a1, a1, a2
80003160: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003164: 63 9c 05 40  	bnez	a1, 0x8000357c <.LBB1_124+0x190>
80003168: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000316c: 13 56 f8 41  	srai	a2, a6, 31
80003170: b3 06 c8 00  	add	a3, a6, a2
80003174: b3 c6 c6 00  	xor	a3, a3, a2
80003178: 13 76 04 02  	andi	a2, s0, 32
8000317c: 13 46 16 06  	xori	a2, a2, 97
80003180: 93 08 66 0f  	addi	a7, a2, 246
80003184: 6f 00 40 03  	j	0x800031b8 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003188: 33 05 f6 00  	add	a0, a2, a5
8000318c: 93 87 15 00  	addi	a5, a1, 1
80003190: 13 06 c1 01  	addi	a2, sp, 28
80003194: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003198: b3 b6 86 01  	sltu	a3, a3, s8
8000319c: 93 c6 16 00  	xori	a3, a3, 1
800031a0: 93 b5 f5 01  	sltiu	a1, a1, 31
800031a4: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800031a8: 23 00 a6 00  	sb	a0, 0(a2)
800031ac: 93 85 07 00  	mv	a1, a5
800031b0: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800031b4: 63 84 04 3c  	beqz	s1, 0x8000357c <.LBB1_124+0x190>
;       value /= base;
800031b8: 33 d7 86 03  	divu	a4, a3, s8
800031bc: 33 06 87 03  	mul	a2, a4, s8
800031c0: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800031c4: 13 f5 e7 0f  	andi	a0, a5, 254
800031c8: 13 06 00 03  	addi	a2, zero, 48
800031cc: 93 04 a0 00  	addi	s1, zero, 10
800031d0: e3 6c 95 fa  	bltu	a0, s1, 0x80003188 <.LBB1_62+0x1cc>
800031d4: 13 86 08 00  	mv	a2, a7
800031d8: 6f f0 1f fb  	j	0x80003188 <.LBB1_62+0x1cc>
800031dc: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800031e0: 13 85 79 00  	addi	a0, s3, 7
800031e4: 93 75 85 ff  	andi	a1, a0, -8
800031e8: 03 a9 05 00  	lw	s2, 0(a1)
800031ec: 13 e5 45 00  	ori	a0, a1, 4
800031f0: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800031f4: 33 65 39 01  	or	a0, s2, s3
800031f8: 23 24 b1 00  	sw	a1, 8(sp)
800031fc: 63 14 05 00  	bnez	a0, 0x80003204 <.LBB1_62+0x248>
80003200: 13 74 f4 fe  	andi	s0, s0, -17
80003204: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003208: 93 75 04 40  	andi	a1, s0, 1024
8000320c: 93 d5 a5 00  	srli	a1, a1, 10
80003210: 33 75 b5 00  	and	a0, a0, a1
80003214: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003218: 63 18 05 08  	bnez	a0, 0x800032a8 <.LBB1_62+0x2ec>
8000321c: 93 04 00 00  	mv	s1, zero
80003220: 13 75 04 02  	andi	a0, s0, 32
80003224: 13 45 15 06  	xori	a0, a0, 97
80003228: 13 05 65 0f  	addi	a0, a0, 246
8000322c: 23 2a a1 00  	sw	a0, 20(sp)
80003230: 6f 00 40 02  	j	0x80003254 <.LBB1_62+0x298>
80003234: 13 06 10 00  	addi	a2, zero, 1
80003238: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000323c: 93 b6 f4 01  	sltiu	a3, s1, 31
80003240: 33 f6 c6 00  	and	a2, a3, a2
80003244: 93 84 07 00  	mv	s1, a5
80003248: 13 09 05 00  	mv	s2, a0
8000324c: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003250: 63 0c 06 04  	beqz	a2, 0x800032a8 <.LBB1_62+0x2ec>
;       value /= base;
80003254: 13 05 09 00  	mv	a0, s2
80003258: 93 85 09 00  	mv	a1, s3
8000325c: 13 06 0c 00  	mv	a2, s8
80003260: 93 06 00 00  	mv	a3, zero
80003264: 97 d0 ff ff  	auipc	ra, 1048573
80003268: e7 80 c0 d9  	jalr	-612(ra)
8000326c: 33 06 85 03  	mul	a2, a0, s8
80003270: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003274: 13 77 e6 0f  	andi	a4, a2, 254
80003278: 93 06 00 03  	addi	a3, zero, 48
8000327c: 93 07 a0 00  	addi	a5, zero, 10
80003280: 63 64 f7 00  	bltu	a4, a5, 0x80003288 <.LBB1_62+0x2cc>
80003284: 83 26 41 01  	lw	a3, 20(sp)
80003288: 33 86 c6 00  	add	a2, a3, a2
8000328c: 93 06 c1 01  	addi	a3, sp, 28
80003290: b3 86 96 00  	add	a3, a3, s1
80003294: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003298: e3 9e 09 f8  	bnez	s3, 0x80003234 <.LBB1_62+0x278>
8000329c: 33 36 89 01  	sltu	a2, s2, s8
800032a0: 13 46 16 00  	xori	a2, a2, 1
800032a4: 6f f0 5f f9  	j	0x80003238 <.LBB1_62+0x27c>
800032a8: 03 25 81 00  	lw	a0, 8(sp)
800032ac: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800032b0: 13 07 c1 01  	addi	a4, sp, 28
800032b4: 03 29 c1 00  	lw	s2, 12(sp)
800032b8: 6f 00 40 40  	j	0x800036bc <.LBB1_124+0x2d0>

800032bc <.LBB1_108>:
800032bc: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800032c0: 13 79 24 00  	andi	s2, s0, 2
800032c4: 93 04 10 00  	addi	s1, zero, 1
800032c8: 63 1e 09 02  	bnez	s2, 0x80003304 <.LBB1_108+0x48>
800032cc: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800032d0: 63 6a 9b 02  	bltu	s6, s1, 0x80003304 <.LBB1_108+0x48>
800032d4: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800032d8: 13 0c fb ff  	addi	s8, s6, -1
800032dc: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800032e0: 33 86 8c 00  	add	a2, s9, s0
800032e4: 13 05 00 02  	addi	a0, zero, 32
800032e8: 93 05 0a 00  	mv	a1, s4
800032ec: 93 86 0a 00  	mv	a3, s5
800032f0: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800032f4: 13 04 14 00  	addi	s0, s0, 1
800032f8: e3 14 8c fe  	bne	s8, s0, 0x800032e0 <.LBB1_108+0x24>
800032fc: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003300: b3 8c 8c 00  	add	s9, s9, s0
80003304: 03 c5 09 00  	lbu	a0, 0(s3)
80003308: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
8000330c: 93 89 49 00  	addi	s3, s3, 4
80003310: 13 8c 1c 00  	addi	s8, s9, 1
80003314: 93 05 0a 00  	mv	a1, s4
80003318: 13 86 0c 00  	mv	a2, s9
8000331c: 93 86 0a 00  	mv	a3, s5
80003320: 13 89 0b 00  	mv	s2, s7
80003324: e7 80 0b 00  	jalr	s7
80003328: 33 b5 64 01  	sltu	a0, s1, s6
8000332c: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003330: 33 65 a4 00  	or	a0, s0, a0
80003334: 63 1c 05 3a  	bnez	a0, 0x800036ec <.LBB1_124+0x300>
;           while (l++ < width) {
80003338: 33 04 9b 40  	sub	s0, s6, s1
8000333c: 93 0b e0 02  	addi	s7, zero, 46
80003340: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003344: 13 0c 1c 00  	addi	s8, s8, 1
80003348: 13 05 00 02  	addi	a0, zero, 32
8000334c: 93 05 0a 00  	mv	a1, s4
80003350: 93 86 0a 00  	mv	a3, s5
80003354: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003358: 13 04 f4 ff  	addi	s0, s0, -1
8000335c: e3 12 04 fe  	bnez	s0, 0x80003340 <.LBB1_108+0x84>
80003360: 13 0b 50 02  	addi	s6, zero, 37
80003364: 13 04 1d 00  	addi	s0, s10, 1
80003368: 6f f0 df 91  	j	0x80002c84 <.LBB1_183+0x30>

8000336c <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
8000336c: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003370: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003374: 63 14 05 00  	bnez	a0, 0x8000337c <.LBB1_117+0x10>
80003378: 93 fe fe fe  	andi	t4, t4, -17
8000337c: 93 04 a0 00  	addi	s1, zero, 10
80003380: 13 04 f0 00  	addi	s0, zero, 15
80003384: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003388: 13 f6 0e 40  	andi	a2, t4, 1024
8000338c: 13 56 a6 00  	srli	a2, a2, 10
80003390: b3 f5 c5 00  	and	a1, a1, a2
80003394: 93 07 00 00  	mv	a5, zero
80003398: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
8000339c: 63 98 05 10  	bnez	a1, 0x800034ac <.LBB1_124+0xc0>
800033a0: 93 05 00 00  	mv	a1, zero
800033a4: 6f 00 40 03  	j	0x800033d8 <.LBB1_117+0x6c>
800033a8: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800033ac: 33 06 d6 00  	add	a2, a2, a3
800033b0: 93 87 15 00  	addi	a5, a1, 1
800033b4: 93 06 c1 01  	addi	a3, sp, 28
800033b8: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033bc: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800033c0: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033c4: 93 b5 f5 01  	sltiu	a1, a1, 31
800033c8: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800033cc: 23 80 c6 00  	sb	a2, 0(a3)
800033d0: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033d4: 63 0c 07 0c  	beqz	a4, 0x800034ac <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800033d8: 93 76 e5 00  	andi	a3, a0, 14
800033dc: 13 06 00 03  	addi	a2, zero, 48
800033e0: e3 e4 96 fc  	bltu	a3, s1, 0x800033a8 <.LBB1_117+0x3c>
800033e4: 13 06 70 03  	addi	a2, zero, 55
800033e8: 6f f0 1f fc  	j	0x800033a8 <.LBB1_117+0x3c>

800033ec <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800033ec: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800033f0: 03 c5 07 00  	lbu	a0, 0(a5)
800033f4: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800033f8: 63 0c 05 02  	beqz	a0, 0x80003430 <.LBB1_124+0x44>
800033fc: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003400: 63 84 0b 00  	beqz	s7, 0x80003408 <.LBB1_124+0x1c>
80003404: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003408: 93 85 f5 ff  	addi	a1, a1, -1
8000340c: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003410: 03 c7 16 00  	lbu	a4, 1(a3)
80003414: 13 86 16 00  	addi	a2, a3, 1
80003418: b3 36 e0 00  	snez	a3, a4
8000341c: 33 37 b0 00  	snez	a4, a1
80003420: 33 77 d7 00  	and	a4, a4, a3
80003424: 93 85 f5 ff  	addi	a1, a1, -1
80003428: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
8000342c: e3 12 07 fe  	bnez	a4, 0x80003410 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003430: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003434: 93 75 04 40  	andi	a1, s0, 1024
80003438: 93 b4 15 00  	seqz	s1, a1
8000343c: 23 2a c1 00  	sw	a2, 20(sp)
80003440: b3 35 76 01  	sltu	a1, a2, s7
80003444: b3 e5 b4 00  	or	a1, s1, a1
80003448: 63 94 05 00  	bnez	a1, 0x80003450 <.LBB1_124+0x64>
8000344c: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003450: 93 75 24 00  	andi	a1, s0, 2
80003454: 23 26 b1 00  	sw	a1, 12(sp)
80003458: 63 96 05 2a  	bnez	a1, 0x80003704 <.LBB1_124+0x318>
8000345c: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003460: 63 fe 65 29  	bgeu	a1, s6, 0x800036fc <.LBB1_124+0x310>
80003464: 23 24 f1 00  	sw	a5, 8(sp)
80003468: 13 04 00 00  	mv	s0, zero
8000346c: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003470: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003474: 33 86 8c 00  	add	a2, s9, s0
80003478: 13 05 00 02  	addi	a0, zero, 32
8000347c: 93 05 0a 00  	mv	a1, s4
80003480: 93 86 0a 00  	mv	a3, s5
80003484: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003488: 13 04 14 00  	addi	s0, s0, 1
8000348c: e3 14 89 fe  	bne	s2, s0, 0x80003474 <.LBB1_124+0x88>
80003490: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003494: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003498: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000349c: 23 2a b1 00  	sw	a1, 20(sp)
800034a0: b3 8c 8c 00  	add	s9, s9, s0
800034a4: 13 09 0c 00  	mv	s2, s8
800034a8: 6f 00 c0 25  	j	0x80003704 <.LBB1_124+0x318>
800034ac: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800034b0: 13 07 c1 01  	addi	a4, sp, 28
800034b4: 93 08 00 01  	addi	a7, zero, 16
800034b8: 13 0e 80 00  	addi	t3, zero, 8
800034bc: 13 05 09 00  	mv	a0, s2
800034c0: 93 05 0a 00  	mv	a1, s4
800034c4: 13 86 0c 00  	mv	a2, s9
800034c8: 93 86 0a 00  	mv	a3, s5
800034cc: 13 08 00 00  	mv	a6, zero
800034d0: 93 83 0b 00  	mv	t2, s7
800034d4: 97 10 00 00  	auipc	ra, 1
800034d8: e7 80 00 fa  	jalr	-96(ra)
800034dc: 13 0c 05 00  	mv	s8, a0
800034e0: 6f 00 00 21  	j	0x800036f0 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800034e4: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800034e8: 63 14 08 00  	bnez	a6, 0x800034f0 <.LBB1_124+0x104>
800034ec: 13 74 f4 fe  	andi	s0, s0, -17
800034f0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800034f4: 13 76 04 40  	andi	a2, s0, 1024
800034f8: 13 56 a6 00  	srli	a2, a2, 10
800034fc: b3 f5 c5 00  	and	a1, a1, a2
80003500: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003504: 63 9c 05 06  	bnez	a1, 0x8000357c <.LBB1_124+0x190>
80003508: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000350c: 13 56 f8 41  	srai	a2, a6, 31
80003510: b3 06 c8 00  	add	a3, a6, a2
80003514: b3 c6 c6 00  	xor	a3, a3, a2
80003518: 13 76 04 02  	andi	a2, s0, 32
8000351c: 13 46 16 06  	xori	a2, a2, 97
80003520: 93 08 66 0f  	addi	a7, a2, 246
80003524: 6f 00 40 03  	j	0x80003558 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003528: 33 05 f6 00  	add	a0, a2, a5
8000352c: 93 87 15 00  	addi	a5, a1, 1
80003530: 13 06 c1 01  	addi	a2, sp, 28
80003534: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003538: b3 b6 86 01  	sltu	a3, a3, s8
8000353c: 93 c6 16 00  	xori	a3, a3, 1
80003540: 93 b5 f5 01  	sltiu	a1, a1, 31
80003544: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003548: 23 00 a6 00  	sb	a0, 0(a2)
8000354c: 93 85 07 00  	mv	a1, a5
80003550: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003554: 63 84 04 02  	beqz	s1, 0x8000357c <.LBB1_124+0x190>
;       value /= base;
80003558: 33 d7 86 03  	divu	a4, a3, s8
8000355c: 33 06 87 03  	mul	a2, a4, s8
80003560: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003564: 13 f5 e7 0f  	andi	a0, a5, 254
80003568: 13 06 00 03  	addi	a2, zero, 48
8000356c: 93 04 a0 00  	addi	s1, zero, 10
80003570: e3 6c 95 fa  	bltu	a0, s1, 0x80003528 <.LBB1_124+0x13c>
80003574: 13 86 08 00  	mv	a2, a7
80003578: 6f f0 1f fb  	j	0x80003528 <.LBB1_124+0x13c>
8000357c: 93 89 49 00  	addi	s3, s3, 4
80003580: 13 58 f8 01  	srli	a6, a6, 31
80003584: 13 07 c1 01  	addi	a4, sp, 28
80003588: 13 05 09 00  	mv	a0, s2
8000358c: 93 05 0a 00  	mv	a1, s4
80003590: 13 86 0c 00  	mv	a2, s9
80003594: 93 86 0a 00  	mv	a3, s5
80003598: 6f 00 80 13  	j	0x800036d0 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
8000359c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800035a0: 63 14 05 00  	bnez	a0, 0x800035a8 <.LBB1_124+0x1bc>
800035a4: 13 74 f4 fe  	andi	s0, s0, -17
800035a8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800035ac: 13 76 04 40  	andi	a2, s0, 1024
800035b0: 13 56 a6 00  	srli	a2, a2, 10
800035b4: b3 f5 c5 00  	and	a1, a1, a2
800035b8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800035bc: 63 9c 05 0e  	bnez	a1, 0x800036b4 <.LBB1_124+0x2c8>
800035c0: 13 06 00 00  	mv	a2, zero
800035c4: 93 75 04 02  	andi	a1, s0, 32
800035c8: 93 c5 15 06  	xori	a1, a1, 97
800035cc: 13 88 65 0f  	addi	a6, a1, 246
800035d0: 6f 00 40 03  	j	0x80003604 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035d4: 33 87 e7 00  	add	a4, a5, a4
800035d8: 93 07 16 00  	addi	a5, a2, 1
800035dc: 93 05 c1 01  	addi	a1, sp, 28
800035e0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800035e4: 33 35 85 01  	sltu	a0, a0, s8
800035e8: 13 45 15 00  	xori	a0, a0, 1
800035ec: 13 36 f6 01  	sltiu	a2, a2, 31
800035f0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035f4: 23 80 e4 00  	sb	a4, 0(s1)
800035f8: 13 86 07 00  	mv	a2, a5
800035fc: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003600: 63 8a 05 0a  	beqz	a1, 0x800036b4 <.LBB1_124+0x2c8>
;       value /= base;
80003604: b3 56 85 03  	divu	a3, a0, s8
80003608: 33 87 86 03  	mul	a4, a3, s8
8000360c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003610: 93 74 e7 0f  	andi	s1, a4, 254
80003614: 93 07 00 03  	addi	a5, zero, 48
80003618: 93 05 a0 00  	addi	a1, zero, 10
8000361c: e3 ec b4 fa  	bltu	s1, a1, 0x800035d4 <.LBB1_124+0x1e8>
80003620: 93 07 08 00  	mv	a5, a6
80003624: 6f f0 1f fb  	j	0x800035d4 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003628: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
8000362c: 63 14 05 00  	bnez	a0, 0x80003634 <.LBB1_124+0x248>
80003630: 13 74 f4 fe  	andi	s0, s0, -17
80003634: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003638: 13 76 04 40  	andi	a2, s0, 1024
8000363c: 13 56 a6 00  	srli	a2, a2, 10
80003640: b3 f5 c5 00  	and	a1, a1, a2
80003644: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003648: 63 96 05 06  	bnez	a1, 0x800036b4 <.LBB1_124+0x2c8>
8000364c: 13 06 00 00  	mv	a2, zero
80003650: 93 75 04 02  	andi	a1, s0, 32
80003654: 93 c5 15 06  	xori	a1, a1, 97
80003658: 13 88 65 0f  	addi	a6, a1, 246
8000365c: 6f 00 40 03  	j	0x80003690 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003660: 33 87 e7 00  	add	a4, a5, a4
80003664: 93 07 16 00  	addi	a5, a2, 1
80003668: 93 05 c1 01  	addi	a1, sp, 28
8000366c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003670: 33 35 85 01  	sltu	a0, a0, s8
80003674: 13 45 15 00  	xori	a0, a0, 1
80003678: 13 36 f6 01  	sltiu	a2, a2, 31
8000367c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003680: 23 80 e4 00  	sb	a4, 0(s1)
80003684: 13 86 07 00  	mv	a2, a5
80003688: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000368c: 63 84 05 02  	beqz	a1, 0x800036b4 <.LBB1_124+0x2c8>
;       value /= base;
80003690: b3 56 85 03  	divu	a3, a0, s8
80003694: 33 87 86 03  	mul	a4, a3, s8
80003698: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000369c: 93 74 e7 0f  	andi	s1, a4, 254
800036a0: 93 07 00 03  	addi	a5, zero, 48
800036a4: 93 05 a0 00  	addi	a1, zero, 10
800036a8: e3 ec b4 fa  	bltu	s1, a1, 0x80003660 <.LBB1_124+0x274>
800036ac: 93 07 08 00  	mv	a5, a6
800036b0: 6f f0 1f fb  	j	0x80003660 <.LBB1_124+0x274>
800036b4: 93 89 49 00  	addi	s3, s3, 4
800036b8: 13 07 c1 01  	addi	a4, sp, 28
800036bc: 13 05 09 00  	mv	a0, s2
800036c0: 93 05 0a 00  	mv	a1, s4
800036c4: 13 86 0c 00  	mv	a2, s9
800036c8: 93 86 0a 00  	mv	a3, s5
800036cc: 13 08 00 00  	mv	a6, zero
800036d0: 93 08 0c 00  	mv	a7, s8
800036d4: 93 83 0b 00  	mv	t2, s7
800036d8: 13 0e 0b 00  	mv	t3, s6
800036dc: 93 0e 04 00  	mv	t4, s0
800036e0: 97 10 00 00  	auipc	ra, 1
800036e4: e7 80 40 d9  	jalr	-620(ra)
800036e8: 13 0c 05 00  	mv	s8, a0
800036ec: 13 0b 50 02  	addi	s6, zero, 37
800036f0: 93 0b e0 02  	addi	s7, zero, 46
800036f4: 13 04 1d 00  	addi	s0, s10, 1
800036f8: 6f f0 cf d8  	j	0x80002c84 <.LBB1_183+0x30>
800036fc: 93 85 15 00  	addi	a1, a1, 1
80003700: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003704: 63 00 05 04  	beqz	a0, 0x80003744 <.LBB1_124+0x358>
80003708: 13 84 17 00  	addi	s0, a5, 1
8000370c: 6f 00 00 03  	j	0x8000373c <.LBB1_124+0x350>
80003710: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003714: 13 8c 1c 00  	addi	s8, s9, 1
80003718: 13 75 f5 0f  	andi	a0, a0, 255
8000371c: 93 05 0a 00  	mv	a1, s4
80003720: 13 86 0c 00  	mv	a2, s9
80003724: 93 86 0a 00  	mv	a3, s5
80003728: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000372c: 03 45 04 00  	lbu	a0, 0(s0)
80003730: 13 04 14 00  	addi	s0, s0, 1
80003734: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003738: 63 08 05 00  	beqz	a0, 0x80003748 <.LBB1_124+0x35c>
8000373c: e3 9c 04 fc  	bnez	s1, 0x80003714 <.LBB1_124+0x328>
80003740: e3 98 0b fc  	bnez	s7, 0x80003710 <.LBB1_124+0x324>
80003744: 13 8c 0c 00  	mv	s8, s9
80003748: 03 25 c1 00  	lw	a0, 12(sp)
8000374c: 13 35 15 00  	seqz	a0, a0
80003750: 03 26 41 01  	lw	a2, 20(sp)
80003754: b3 35 66 01  	sltu	a1, a2, s6
80003758: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
8000375c: 33 65 b5 00  	or	a0, a0, a1
80003760: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003764: e3 14 05 f8  	bnez	a0, 0x800036ec <.LBB1_124+0x300>
;           while (l++ < width) {
80003768: 33 04 cb 40  	sub	s0, s6, a2
8000376c: 93 0b e0 02  	addi	s7, zero, 46
80003770: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003774: 13 0c 1c 00  	addi	s8, s8, 1
80003778: 13 05 00 02  	addi	a0, zero, 32
8000377c: 93 05 0a 00  	mv	a1, s4
80003780: 93 86 0a 00  	mv	a3, s5
80003784: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003788: 13 04 f4 ff  	addi	s0, s0, -1
8000378c: e3 12 04 fe  	bnez	s0, 0x80003770 <.LBB1_124+0x384>
80003790: 13 0b 50 02  	addi	s6, zero, 37
80003794: 13 04 1d 00  	addi	s0, s10, 1
80003798: 6f f0 cf ce  	j	0x80002c84 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000379c: 13 86 0c 00  	mv	a2, s9
800037a0: 63 e4 5c 01  	bltu	s9, s5, 0x800037a8 <.LBB1_124+0x3bc>
800037a4: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800037a8: 13 05 00 00  	mv	a0, zero
800037ac: 93 05 0a 00  	mv	a1, s4
800037b0: 93 86 0a 00  	mv	a3, s5
800037b4: e7 00 09 00  	jalr	s2
;   return (int)idx;
800037b8: 13 85 0c 00  	mv	a0, s9
800037bc: 83 2d c1 03  	lw	s11, 60(sp)
800037c0: 03 2d 01 04  	lw	s10, 64(sp)
800037c4: 83 2c 41 04  	lw	s9, 68(sp)
800037c8: 03 2c 81 04  	lw	s8, 72(sp)
800037cc: 83 2b c1 04  	lw	s7, 76(sp)
800037d0: 03 2b 01 05  	lw	s6, 80(sp)
800037d4: 83 2a 41 05  	lw	s5, 84(sp)
800037d8: 03 2a 81 05  	lw	s4, 88(sp)
800037dc: 83 29 c1 05  	lw	s3, 92(sp)
800037e0: 03 29 01 06  	lw	s2, 96(sp)
800037e4: 83 24 41 06  	lw	s1, 100(sp)
800037e8: 03 24 81 06  	lw	s0, 104(sp)
800037ec: 83 20 c1 06  	lw	ra, 108(sp)
800037f0: 13 01 01 07  	addi	sp, sp, 112
800037f4: 67 80 00 00  	ret

800037f8 <_out_char.llvm.1805434900161566649>:
;   if (character) {
800037f8: 63 04 05 0a  	beqz	a0, 0x800038a0 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800037fc: f3 25 40 f1  	csrr	a1, mhartid
80003800: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003804: 33 86 c5 02  	mul	a2, a1, a2

80003808 <.LBB2_6>:
80003808: 97 26 00 00  	auipc	a3, 2
8000380c: 93 86 c6 a3  	addi	a3, a3, -1476
80003810: b3 05 d6 00  	add	a1, a2, a3
80003814: 03 a7 05 00  	lw	a4, 0(a1)
80003818: 93 07 17 00  	addi	a5, a4, 1
8000381c: 23 a0 f5 00  	sw	a5, 0(a1)
80003820: 33 87 e5 00  	add	a4, a1, a4
80003824: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003828: 03 a7 05 00  	lw	a4, 0(a1)
8000382c: 13 07 47 c0  	addi	a4, a4, -1020
80003830: 33 37 e0 00  	snez	a4, a4
80003834: 13 05 65 ff  	addi	a0, a0, -10
80003838: 33 35 a0 00  	snez	a0, a0
8000383c: 33 75 e5 00  	and	a0, a0, a4
80003840: 63 10 05 06  	bnez	a0, 0x800038a0 <.LBB2_8+0x18>
80003844: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003848: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
8000384c: 23 26 05 00  	sw	zero, 12(a0)
80003850: 93 06 00 04  	addi	a3, zero, 64
80003854: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003858: 23 2a 05 00  	sw	zero, 20(a0)
8000385c: 93 06 10 00  	addi	a3, zero, 1
80003860: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003864: 23 2e 05 00  	sw	zero, 28(a0)
80003868: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000386c: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003870: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003874: 23 22 05 02  	sw	zero, 36(a0)
80003878: 23 20 c5 02  	sw	a2, 32(a0)

8000387c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
8000387c: 17 25 00 00  	auipc	a0, 2
80003880: 13 05 45 88  	addi	a0, a0, -1916
80003884: 23 20 d5 00  	sw	a3, 0(a0)

80003888 <.LBB2_8>:
80003888: 17 25 00 00  	auipc	a0, 2
8000388c: 13 05 85 8b  	addi	a0, a0, -1864
;         while (fromhost == 0)
80003890: 03 26 05 00  	lw	a2, 0(a0)
80003894: e3 0e 06 fe  	beqz	a2, 0x80003890 <.LBB2_8+0x8>
;         fromhost = 0;
80003898: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
8000389c: 23 a0 05 00  	sw	zero, 0(a1)
; }
800038a0: 67 80 00 00  	ret

800038a4 <_out_null>:
; }
800038a4: 67 80 00 00  	ret

800038a8 <_ftoa>:
; {
800038a8: 13 01 01 f9  	addi	sp, sp, -112
800038ac: 23 26 11 06  	sw	ra, 108(sp)
800038b0: 23 24 81 06  	sw	s0, 104(sp)
800038b4: 23 22 91 06  	sw	s1, 100(sp)
800038b8: 23 20 21 07  	sw	s2, 96(sp)
800038bc: 23 2e 31 05  	sw	s3, 92(sp)
800038c0: 23 2c 41 05  	sw	s4, 88(sp)
800038c4: 23 2a 51 05  	sw	s5, 84(sp)
800038c8: 23 28 61 05  	sw	s6, 80(sp)
800038cc: 23 26 71 05  	sw	s7, 76(sp)
800038d0: 23 24 81 05  	sw	s8, 72(sp)
800038d4: 23 22 91 05  	sw	s9, 68(sp)
800038d8: 23 20 a1 05  	sw	s10, 64(sp)
800038dc: 27 3c 81 02  	fsd	fs0, 56(sp)
800038e0: 27 38 91 02  	fsd	fs1, 48(sp)
800038e4: 27 34 21 03  	fsd	fs2, 40(sp)

800038e8 <.LBB4_83>:
800038e8: 97 24 00 00  	auipc	s1, 2
800038ec: 93 84 04 8b  	addi	s1, s1, -1872
800038f0: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800038f4: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800038f8: 93 0a 08 00  	mv	s5, a6
800038fc: 13 89 07 00  	mv	s2, a5
80003900: 93 89 06 00  	mv	s3, a3
80003904: 13 0a 06 00  	mv	s4, a2
80003908: 13 8b 05 00  	mv	s6, a1
8000390c: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003910: 63 98 04 0e  	bnez	s1, 0x80003a00 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003914: 13 f5 2a 00  	andi	a0, s5, 2
80003918: 93 f5 3a 00  	andi	a1, s5, 3
8000391c: b3 35 b0 00  	snez	a1, a1
80003920: 13 36 59 00  	sltiu	a2, s2, 5
80003924: b3 65 b6 00  	or	a1, a2, a1
80003928: 93 5c 15 00  	srli	s9, a0, 1
8000392c: 13 04 0a 00  	mv	s0, s4
80003930: 63 96 05 02  	bnez	a1, 0x8000395c <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003934: 93 04 c9 ff  	addi	s1, s2, -4
80003938: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000393c: 13 04 16 00  	addi	s0, a2, 1
80003940: 13 05 00 02  	addi	a0, zero, 32
80003944: 93 05 0b 00  	mv	a1, s6
80003948: 93 86 09 00  	mv	a3, s3
8000394c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003950: 93 84 f4 ff  	addi	s1, s1, -1
80003954: 13 06 04 00  	mv	a2, s0
80003958: e3 92 04 fe  	bnez	s1, 0x8000393c <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
8000395c: 93 04 14 00  	addi	s1, s0, 1
80003960: 13 05 d0 02  	addi	a0, zero, 45
80003964: 93 05 0b 00  	mv	a1, s6
80003968: 13 06 04 00  	mv	a2, s0
8000396c: 93 86 09 00  	mv	a3, s3
80003970: e7 80 0b 00  	jalr	s7
80003974: 93 0a 24 00  	addi	s5, s0, 2
80003978: 13 05 90 06  	addi	a0, zero, 105
8000397c: 93 05 0b 00  	mv	a1, s6
80003980: 13 86 04 00  	mv	a2, s1
80003984: 93 86 09 00  	mv	a3, s3
80003988: e7 80 0b 00  	jalr	s7
8000398c: 13 0c 34 00  	addi	s8, s0, 3
80003990: 13 05 e0 06  	addi	a0, zero, 110
80003994: 93 05 0b 00  	mv	a1, s6
80003998: 13 86 0a 00  	mv	a2, s5
8000399c: 93 86 09 00  	mv	a3, s3
800039a0: e7 80 0b 00  	jalr	s7
800039a4: 93 04 44 00  	addi	s1, s0, 4
800039a8: 13 05 60 06  	addi	a0, zero, 102
800039ac: 93 05 0b 00  	mv	a1, s6
800039b0: 13 06 0c 00  	mv	a2, s8
800039b4: 93 86 09 00  	mv	a3, s3
800039b8: e7 80 0b 00  	jalr	s7
800039bc: 33 85 44 41  	sub	a0, s1, s4
800039c0: 33 35 25 01  	sltu	a0, a0, s2
800039c4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800039c8: 93 c5 1c 00  	xori	a1, s9, 1
800039cc: 33 e5 a5 00  	or	a0, a1, a0
800039d0: 63 16 05 56  	bnez	a0, 0x80003f3c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800039d4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800039d8: 13 84 14 00  	addi	s0, s1, 1
800039dc: 13 05 00 02  	addi	a0, zero, 32
800039e0: 93 05 0b 00  	mv	a1, s6
800039e4: 13 86 04 00  	mv	a2, s1
800039e8: 93 86 09 00  	mv	a3, s3
800039ec: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800039f0: 33 05 8a 00  	add	a0, s4, s0
800039f4: 93 04 04 00  	mv	s1, s0
800039f8: e3 60 25 ff  	bltu	a0, s2, 0x800039d8 <.LBB4_83+0xf0>
800039fc: 6f 00 40 54  	j	0x80003f40 <.LBB4_90+0x378>
80003a00: 53 04 a5 22  	fmv.d	fs0, fa0

80003a04 <.LBB4_84>:
80003a04: 17 15 00 00  	auipc	a0, 1
80003a08: 13 05 c5 79  	addi	a0, a0, 1948
80003a0c: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003a10: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003a14: 63 1e 05 00  	bnez	a0, 0x80003a30 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003a18: 93 f5 4a 00  	andi	a1, s5, 4
80003a1c: 13 b5 15 00  	seqz	a0, a1
80003a20: 63 82 05 06  	beqz	a1, 0x80003a84 <.LBB4_88>

80003a24 <.LBB4_85>:
80003a24: 17 1c 00 00  	auipc	s8, 1
80003a28: 13 0c cc 4a  	addi	s8, s8, 1196
80003a2c: 6f 00 00 06  	j	0x80003a8c <.LBB4_88+0x8>

80003a30 <.LBB4_86>:
80003a30: 17 15 00 00  	auipc	a0, 1
80003a34: 13 05 85 77  	addi	a0, a0, 1912
80003a38: 07 30 05 00  	fld	ft0, 0(a0)

80003a3c <.LBB4_87>:
80003a3c: 17 15 00 00  	auipc	a0, 1
80003a40: 13 05 45 77  	addi	a0, a0, 1908
80003a44: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003a48: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003a4c: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003a50: 33 75 b5 00  	and	a0, a0, a1
80003a54: 63 1e 05 0e  	bnez	a0, 0x80003b50 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003a58: 13 85 0b 00  	mv	a0, s7
80003a5c: 93 05 0b 00  	mv	a1, s6
80003a60: 13 06 0a 00  	mv	a2, s4
80003a64: 93 86 09 00  	mv	a3, s3
80003a68: 53 05 84 22  	fmv.d	fa0, fs0
80003a6c: 93 07 09 00  	mv	a5, s2
80003a70: 13 88 0a 00  	mv	a6, s5
80003a74: 97 00 00 00  	auipc	ra, 0
80003a78: e7 80 40 51  	jalr	1300(ra)
80003a7c: 13 04 05 00  	mv	s0, a0
80003a80: 6f 00 00 4c  	j	0x80003f40 <.LBB4_90+0x378>

80003a84 <.LBB4_88>:
80003a84: 17 1c 00 00  	auipc	s8, 1
80003a88: 13 0c bc 46  	addi	s8, s8, 1131
80003a8c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003a90: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003a94: 13 f5 3a 00  	andi	a0, s5, 3
80003a98: 33 35 a0 00  	snez	a0, a0
80003a9c: b3 b5 2c 01  	sltu	a1, s9, s2
80003aa0: 93 c5 15 00  	xori	a1, a1, 1
80003aa4: 33 65 b5 00  	or	a0, a0, a1
80003aa8: 93 fa 2a 00  	andi	s5, s5, 2
80003aac: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003ab0: 63 16 05 02  	bnez	a0, 0x80003adc <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003ab4: 33 04 99 41  	sub	s0, s2, s9
80003ab8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003abc: 93 04 16 00  	addi	s1, a2, 1
80003ac0: 13 05 00 02  	addi	a0, zero, 32
80003ac4: 93 05 0b 00  	mv	a1, s6
80003ac8: 93 86 09 00  	mv	a3, s3
80003acc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003ad0: 13 04 f4 ff  	addi	s0, s0, -1
80003ad4: 13 86 04 00  	mv	a2, s1
80003ad8: e3 12 04 fe  	bnez	s0, 0x80003abc <.LBB4_88+0x38>
80003adc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003ae0: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003ae4: 33 05 9c 01  	add	a0, s8, s9
80003ae8: 03 45 05 00  	lbu	a0, 0(a0)
80003aec: 13 86 04 00  	mv	a2, s1
80003af0: 13 84 fc ff  	addi	s0, s9, -1
80003af4: 93 84 14 00  	addi	s1, s1, 1
80003af8: 93 05 0b 00  	mv	a1, s6
80003afc: 93 86 09 00  	mv	a3, s3
80003b00: e7 80 0b 00  	jalr	s7
80003b04: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003b08: e3 1e 04 fc  	bnez	s0, 0x80003ae4 <.LBB4_88+0x60>
80003b0c: 33 85 44 41  	sub	a0, s1, s4
80003b10: 33 35 25 01  	sltu	a0, a0, s2
80003b14: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003b18: 93 c5 1a 00  	xori	a1, s5, 1
80003b1c: 33 e5 a5 00  	or	a0, a1, a0
80003b20: 63 1e 05 40  	bnez	a0, 0x80003f3c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003b24: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003b28: 13 84 14 00  	addi	s0, s1, 1
80003b2c: 13 05 00 02  	addi	a0, zero, 32
80003b30: 93 05 0b 00  	mv	a1, s6
80003b34: 13 86 04 00  	mv	a2, s1
80003b38: 93 86 09 00  	mv	a3, s3
80003b3c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003b40: 33 05 8a 00  	add	a0, s4, s0
80003b44: 93 04 04 00  	mv	s1, s0
80003b48: e3 60 25 ff  	bltu	a0, s2, 0x80003b28 <.LBB4_88+0xa4>
80003b4c: 6f 00 40 3f  	j	0x80003f40 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003b50: 13 f5 0a 40  	andi	a0, s5, 1024
80003b54: 13 0c 60 00  	addi	s8, zero, 6
80003b58: 63 04 05 00  	beqz	a0, 0x80003b60 <.LBB4_88+0xdc>
80003b5c: 13 0c 07 00  	mv	s8, a4
80003b60: 13 05 a0 00  	addi	a0, zero, 10
80003b64: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003b68: 63 6c ac 02  	bltu	s8, a0, 0x80003ba0 <.LBB4_88+0x11c>
80003b6c: 93 04 6c ff  	addi	s1, s8, -10
80003b70: 13 05 f0 01  	addi	a0, zero, 31
80003b74: 63 e4 a4 00  	bltu	s1, a0, 0x80003b7c <.LBB4_88+0xf8>
80003b78: 93 04 f0 01  	addi	s1, zero, 31
80003b7c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003b80: 13 05 81 00  	addi	a0, sp, 8
80003b84: 93 05 00 03  	addi	a1, zero, 48
80003b88: 13 06 04 00  	mv	a2, s0
80003b8c: 97 d0 ff ff  	auipc	ra, 1048573
80003b90: e7 80 c0 9c  	jalr	-1588(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003b94: 13 c5 f4 ff  	not	a0, s1
80003b98: 33 0c ac 00  	add	s8, s8, a0
80003b9c: 6f 00 80 00  	j	0x80003ba4 <.LBB4_88+0x120>
80003ba0: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003ba4: 13 15 3c 00  	slli	a0, s8, 3

80003ba8 <.LBB4_89>:
80003ba8: 97 15 00 00  	auipc	a1, 1
80003bac: 93 85 85 50  	addi	a1, a1, 1288
80003bb0: 33 05 b5 00  	add	a0, a0, a1
80003bb4: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003bb8: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003bbc: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003bc0: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003bc4: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003bc8 <.LBB4_90>:
80003bc8: 17 15 00 00  	auipc	a0, 1
80003bcc: 13 05 05 5f  	addi	a0, a0, 1520
80003bd0: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003bd4: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003bd8: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003bdc: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003be0: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003be4: 63 90 05 02  	bnez	a1, 0x80003c04 <.LBB4_90+0x3c>
;     ++frac;
80003be8: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003bec: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003bf0: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003bf4: 63 94 05 02  	bnez	a1, 0x80003c1c <.LBB4_90+0x54>
80003bf8: 13 05 00 00  	mv	a0, zero
;       ++whole;
80003bfc: 93 84 14 00  	addi	s1, s1, 1
80003c00: 6f 00 c0 01  	j	0x80003c1c <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80003c04: d3 15 01 a2  	flt.d	a1, ft2, ft0
80003c08: 63 9a 05 00  	bnez	a1, 0x80003c1c <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80003c0c: 93 35 15 00  	seqz	a1, a0
80003c10: 13 76 15 00  	andi	a2, a0, 1
80003c14: b3 65 b6 00  	or	a1, a2, a1
80003c18: 33 85 a5 00  	add	a0, a1, a0
80003c1c: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80003c20: 63 0c 0c 0c  	beqz	s8, 0x80003cf8 <.LBB4_90+0x130>
80003c24: 13 06 00 00  	mv	a2, zero
80003c28: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003c2c: 33 83 85 00  	add	t1, a1, s0
80003c30: 93 02 00 02  	addi	t0, zero, 32
80003c34: 33 87 82 40  	sub	a4, t0, s0
80003c38: b7 d5 cc cc  	lui	a1, 838861
80003c3c: 93 83 d5 cc  	addi	t2, a1, -819
80003c40: 13 08 a0 00  	addi	a6, zero, 10
80003c44: 93 08 90 00  	addi	a7, zero, 9
80003c48: 63 04 c7 0c  	beq	a4, a2, 0x80003d10 <.LBB4_90+0x148>
80003c4c: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80003c50: 33 35 75 02  	mulhu	a0, a0, t2
80003c54: 13 55 35 00  	srli	a0, a0, 3
80003c58: b3 06 05 03  	mul	a3, a0, a6
80003c5c: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80003c60: 93 e6 06 03  	ori	a3, a3, 48
80003c64: b3 07 c3 00  	add	a5, t1, a2
80003c68: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80003c6c: 13 06 16 00  	addi	a2, a2, 1
80003c70: e3 ec b8 fc  	bltu	a7, a1, 0x80003c48 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003c74: 33 05 c4 00  	add	a0, s0, a2
80003c78: 93 05 f5 ff  	addi	a1, a0, -1
80003c7c: 93 06 e0 01  	addi	a3, zero, 30
80003c80: b3 b6 b6 00  	sltu	a3, a3, a1
80003c84: 33 47 cc 00  	xor	a4, s8, a2
80003c88: 13 37 17 00  	seqz	a4, a4
80003c8c: b3 e6 e6 00  	or	a3, a3, a4
80003c90: 63 94 06 08  	bnez	a3, 0x80003d18 <.LBB4_90+0x150>
80003c94: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003c98: 33 05 85 00  	add	a0, a0, s0
80003c9c: 93 45 f6 ff  	not	a1, a2
80003ca0: 33 8c 85 01  	add	s8, a1, s8
80003ca4: 33 04 c4 00  	add	s0, s0, a2
80003ca8: 93 05 f0 01  	addi	a1, zero, 31
80003cac: b3 86 85 40  	sub	a3, a1, s0
80003cb0: 33 05 c5 00  	add	a0, a0, a2
80003cb4: 93 05 0c 00  	mv	a1, s8
80003cb8: 63 64 dc 00  	bltu	s8, a3, 0x80003cc0 <.LBB4_90+0xf8>
80003cbc: 93 85 06 00  	mv	a1, a3
80003cc0: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003cc4: 93 05 00 03  	addi	a1, zero, 48
80003cc8: 97 d0 ff ff  	auipc	ra, 1048573
80003ccc: e7 80 00 89  	jalr	-1904(ra)
80003cd0: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003cd4: b3 05 a4 00  	add	a1, s0, a0
80003cd8: 93 b5 f5 01  	sltiu	a1, a1, 31
80003cdc: 33 46 ac 00  	xor	a2, s8, a0
80003ce0: 33 36 c0 00  	snez	a2, a2
80003ce4: 33 f6 c5 00  	and	a2, a1, a2
80003ce8: 13 05 15 00  	addi	a0, a0, 1
80003cec: e3 14 06 fe  	bnez	a2, 0x80003cd4 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003cf0: 33 05 a4 00  	add	a0, s0, a0
80003cf4: 6f 00 80 02  	j	0x80003d1c <.LBB4_90+0x154>
;     diff = value - (double)whole;
80003cf8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80003cfc: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003d00: 53 05 10 a2  	fle.d	a0, ft0, ft1
80003d04: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003d08: b3 84 a4 00  	add	s1, s1, a0
80003d0c: 6f 00 c0 03  	j	0x80003d48 <.LBB4_90+0x180>
80003d10: 13 04 00 02  	addi	s0, zero, 32
80003d14: 6f 00 80 03  	j	0x80003d4c <.LBB4_90+0x184>
80003d18: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003d1c: 63 8e 05 00  	beqz	a1, 0x80003d38 <.LBB4_90+0x170>
;       buf[len++] = '.';
80003d20: 13 04 15 00  	addi	s0, a0, 1
80003d24: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80003d28: 33 85 a5 00  	add	a0, a1, a0
80003d2c: 93 05 e0 02  	addi	a1, zero, 46
80003d30: 23 00 b5 00  	sb	a1, 0(a0)
80003d34: 6f 00 80 00  	j	0x80003d3c <.LBB4_90+0x174>
80003d38: 13 04 05 00  	mv	s0, a0
80003d3c: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003d40: 93 02 04 00  	mv	t0, s0
80003d44: 63 64 85 00  	bltu	a0, s0, 0x80003d4c <.LBB4_90+0x184>
80003d48: 93 02 00 02  	addi	t0, zero, 32
80003d4c: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80003d50: 37 65 66 66  	lui	a0, 419430
80003d54: 93 05 75 66  	addi	a1, a0, 1639
80003d58: 13 08 a0 00  	addi	a6, zero, 10
80003d5c: 93 06 81 00  	addi	a3, sp, 8
80003d60: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003d64: 63 80 82 04  	beq	t0, s0, 0x80003da4 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80003d68: 33 95 b4 02  	mulh	a0, s1, a1
80003d6c: 93 57 f5 01  	srli	a5, a0, 31
80003d70: 13 55 25 40  	srai	a0, a0, 2
80003d74: 33 05 f5 00  	add	a0, a0, a5
80003d78: b3 07 05 03  	mul	a5, a0, a6
80003d7c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80003d80: 93 87 07 03  	addi	a5, a5, 48
80003d84: 13 0c 14 00  	addi	s8, s0, 1
80003d88: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80003d8c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80003d90: 23 00 f4 00  	sb	a5, 0(s0)
80003d94: 13 04 0c 00  	mv	s0, s8
80003d98: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80003d9c: e3 64 c7 fc  	bltu	a4, a2, 0x80003d64 <.LBB4_90+0x19c>
80003da0: 6f 00 80 00  	j	0x80003da8 <.LBB4_90+0x1e0>
80003da4: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80003da8: 93 f4 3a 00  	andi	s1, s5, 3
80003dac: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80003db0: 63 96 a4 06  	bne	s1, a0, 0x80003e1c <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003db4: 63 0c 09 00  	beqz	s2, 0x80003dcc <.LBB4_90+0x204>
80003db8: 13 f5 ca 00  	andi	a0, s5, 12
80003dbc: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003dc0: 33 e5 ac 00  	or	a0, s9, a0
80003dc4: 33 09 a9 40  	sub	s2, s2, a0
80003dc8: 6f 00 80 00  	j	0x80003dd0 <.LBB4_90+0x208>
80003dcc: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003dd0: 33 35 2c 01  	sltu	a0, s8, s2
80003dd4: 93 45 15 00  	xori	a1, a0, 1
80003dd8: 13 05 f0 01  	addi	a0, zero, 31
80003ddc: 33 36 85 01  	sltu	a2, a0, s8
80003de0: b3 65 b6 00  	or	a1, a2, a1
80003de4: 63 9c 05 02  	bnez	a1, 0x80003e1c <.LBB4_90+0x254>
80003de8: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003dec: 93 45 fc ff  	not	a1, s8
80003df0: b3 05 b9 00  	add	a1, s2, a1
80003df4: 33 06 85 41  	sub	a2, a0, s8
80003df8: 33 85 86 01  	add	a0, a3, s8
80003dfc: 63 e4 c5 00  	bltu	a1, a2, 0x80003e04 <.LBB4_90+0x23c>
80003e00: 93 05 06 00  	mv	a1, a2
80003e04: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80003e08: 93 05 00 03  	addi	a1, zero, 48
80003e0c: 13 06 04 00  	mv	a2, s0
80003e10: 97 c0 ff ff  	auipc	ra, 1048572
80003e14: e7 80 80 74  	jalr	1864(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003e18: 33 0c 84 01  	add	s8, s0, s8
80003e1c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003e20: 63 6a 85 05  	bltu	a0, s8, 0x80003e74 <.LBB4_90+0x2ac>
;     if (negative) {
80003e24: 63 8c 0c 00  	beqz	s9, 0x80003e3c <.LBB4_90+0x274>
80003e28: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80003e2c: 33 05 85 01  	add	a0, a0, s8
80003e30: 13 0c 1c 00  	addi	s8, s8, 1
80003e34: 93 05 d0 02  	addi	a1, zero, 45
80003e38: 6f 00 80 03  	j	0x80003e70 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80003e3c: 13 f5 4a 00  	andi	a0, s5, 4
80003e40: 63 10 05 02  	bnez	a0, 0x80003e60 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80003e44: 13 f5 8a 00  	andi	a0, s5, 8
80003e48: 63 06 05 02  	beqz	a0, 0x80003e74 <.LBB4_90+0x2ac>
80003e4c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80003e50: 33 05 85 01  	add	a0, a0, s8
80003e54: 13 0c 1c 00  	addi	s8, s8, 1
80003e58: 93 05 00 02  	addi	a1, zero, 32
80003e5c: 6f 00 40 01  	j	0x80003e70 <.LBB4_90+0x2a8>
80003e60: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003e64: 33 05 85 01  	add	a0, a0, s8
80003e68: 13 0c 1c 00  	addi	s8, s8, 1
80003e6c: 93 05 b0 02  	addi	a1, zero, 43
80003e70: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003e74: 33 35 90 00  	snez	a0, s1
80003e78: b3 35 2c 01  	sltu	a1, s8, s2
80003e7c: 93 c5 15 00  	xori	a1, a1, 1
80003e80: 33 65 b5 00  	or	a0, a0, a1
80003e84: 93 fa 2a 00  	andi	s5, s5, 2
80003e88: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003e8c: 63 16 05 02  	bnez	a0, 0x80003eb8 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80003e90: b3 04 89 41  	sub	s1, s2, s8
80003e94: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003e98: 13 04 16 00  	addi	s0, a2, 1
80003e9c: 13 05 00 02  	addi	a0, zero, 32
80003ea0: 93 05 0b 00  	mv	a1, s6
80003ea4: 93 86 09 00  	mv	a3, s3
80003ea8: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003eac: 93 84 f4 ff  	addi	s1, s1, -1
80003eb0: 13 06 04 00  	mv	a2, s0
80003eb4: e3 92 04 fe  	bnez	s1, 0x80003e98 <.LBB4_90+0x2d0>
80003eb8: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003ebc: 63 0c 0c 02  	beqz	s8, 0x80003ef4 <.LBB4_90+0x32c>
80003ec0: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80003ec4: 33 85 8c 01  	add	a0, s9, s8
80003ec8: 03 45 05 00  	lbu	a0, 0(a0)
80003ecc: 13 0d fc ff  	addi	s10, s8, -1
80003ed0: 93 04 14 00  	addi	s1, s0, 1
80003ed4: 93 05 0b 00  	mv	a1, s6
80003ed8: 13 06 04 00  	mv	a2, s0
80003edc: 93 86 09 00  	mv	a3, s3
80003ee0: e7 80 0b 00  	jalr	s7
80003ee4: 13 84 04 00  	mv	s0, s1
80003ee8: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80003eec: e3 1c 0d fc  	bnez	s10, 0x80003ec4 <.LBB4_90+0x2fc>
80003ef0: 6f 00 80 00  	j	0x80003ef8 <.LBB4_90+0x330>
80003ef4: 93 04 04 00  	mv	s1, s0
80003ef8: 33 85 44 41  	sub	a0, s1, s4
80003efc: 33 35 25 01  	sltu	a0, a0, s2
80003f00: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003f04: 93 c5 1a 00  	xori	a1, s5, 1
80003f08: 33 e5 a5 00  	or	a0, a1, a0
80003f0c: 63 18 05 02  	bnez	a0, 0x80003f3c <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003f10: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003f14: 13 84 14 00  	addi	s0, s1, 1
80003f18: 13 05 00 02  	addi	a0, zero, 32
80003f1c: 93 05 0b 00  	mv	a1, s6
80003f20: 13 86 04 00  	mv	a2, s1
80003f24: 93 86 09 00  	mv	a3, s3
80003f28: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003f2c: 33 05 8a 00  	add	a0, s4, s0
80003f30: 93 04 04 00  	mv	s1, s0
80003f34: e3 60 25 ff  	bltu	a0, s2, 0x80003f14 <.LBB4_90+0x34c>
80003f38: 6f 00 80 00  	j	0x80003f40 <.LBB4_90+0x378>
80003f3c: 13 84 04 00  	mv	s0, s1
; }
80003f40: 13 05 04 00  	mv	a0, s0
80003f44: 07 39 81 02  	fld	fs2, 40(sp)
80003f48: 87 34 01 03  	fld	fs1, 48(sp)
80003f4c: 07 34 81 03  	fld	fs0, 56(sp)
80003f50: 03 2d 01 04  	lw	s10, 64(sp)
80003f54: 83 2c 41 04  	lw	s9, 68(sp)
80003f58: 03 2c 81 04  	lw	s8, 72(sp)
80003f5c: 83 2b c1 04  	lw	s7, 76(sp)
80003f60: 03 2b 01 05  	lw	s6, 80(sp)
80003f64: 83 2a 41 05  	lw	s5, 84(sp)
80003f68: 03 2a 81 05  	lw	s4, 88(sp)
80003f6c: 83 29 c1 05  	lw	s3, 92(sp)
80003f70: 03 29 01 06  	lw	s2, 96(sp)
80003f74: 83 24 41 06  	lw	s1, 100(sp)
80003f78: 03 24 81 06  	lw	s0, 104(sp)
80003f7c: 83 20 c1 06  	lw	ra, 108(sp)
80003f80: 13 01 01 07  	addi	sp, sp, 112
80003f84: 67 80 00 00  	ret

80003f88 <_etoa>:
; {
80003f88: 13 01 01 f8  	addi	sp, sp, -128
80003f8c: 23 2e 11 06  	sw	ra, 124(sp)
80003f90: 23 2c 81 06  	sw	s0, 120(sp)
80003f94: 23 2a 91 06  	sw	s1, 116(sp)
80003f98: 23 28 21 07  	sw	s2, 112(sp)
80003f9c: 23 26 31 07  	sw	s3, 108(sp)
80003fa0: 23 24 41 07  	sw	s4, 104(sp)
80003fa4: 23 22 51 07  	sw	s5, 100(sp)
80003fa8: 23 20 61 07  	sw	s6, 96(sp)
80003fac: 23 2e 71 05  	sw	s7, 92(sp)
80003fb0: 23 2c 81 05  	sw	s8, 88(sp)
80003fb4: 23 2a 91 05  	sw	s9, 84(sp)
80003fb8: 23 28 a1 05  	sw	s10, 80(sp)
80003fbc: 23 26 b1 05  	sw	s11, 76(sp)

80003fc0 <.LBB5_43>:
80003fc0: 97 14 00 00  	auipc	s1, 1
80003fc4: 93 84 04 20  	addi	s1, s1, 512
80003fc8: 87 b0 04 00  	fld	ft1, 0(s1)

80003fcc <.LBB5_44>:
80003fcc: 97 14 00 00  	auipc	s1, 1
80003fd0: 93 84 c4 1f  	addi	s1, s1, 508
80003fd4: 07 b1 04 00  	fld	ft2, 0(s1)
80003fd8: 53 00 a5 22  	fmv.d	ft0, fa0
80003fdc: d3 04 15 a2  	fle.d	s1, fa0, ft1
80003fe0: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80003fe4: b3 f4 84 00  	and	s1, s1, s0
80003fe8: 93 0a 08 00  	mv	s5, a6
80003fec: 13 89 07 00  	mv	s2, a5
80003ff0: 93 07 07 00  	mv	a5, a4
80003ff4: 93 89 06 00  	mv	s3, a3
80003ff8: 13 0a 06 00  	mv	s4, a2
80003ffc: 13 8b 05 00  	mv	s6, a1
80004000: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004004: 63 92 04 06  	bnez	s1, 0x80004068 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004008: 13 85 0b 00  	mv	a0, s7
8000400c: 93 05 0b 00  	mv	a1, s6
80004010: 13 06 0a 00  	mv	a2, s4
80004014: 93 86 09 00  	mv	a3, s3
80004018: 53 05 00 22  	fmv.d	fa0, ft0
8000401c: 13 87 07 00  	mv	a4, a5
80004020: 93 07 09 00  	mv	a5, s2
80004024: 13 88 0a 00  	mv	a6, s5
80004028: 83 2d c1 04  	lw	s11, 76(sp)
8000402c: 03 2d 01 05  	lw	s10, 80(sp)
80004030: 83 2c 41 05  	lw	s9, 84(sp)
80004034: 03 2c 81 05  	lw	s8, 88(sp)
80004038: 83 2b c1 05  	lw	s7, 92(sp)
8000403c: 03 2b 01 06  	lw	s6, 96(sp)
80004040: 83 2a 41 06  	lw	s5, 100(sp)
80004044: 03 2a 81 06  	lw	s4, 104(sp)
80004048: 83 29 c1 06  	lw	s3, 108(sp)
8000404c: 03 29 01 07  	lw	s2, 112(sp)
80004050: 83 24 41 07  	lw	s1, 116(sp)
80004054: 03 24 81 07  	lw	s0, 120(sp)
80004058: 83 20 c1 07  	lw	ra, 124(sp)
8000405c: 13 01 01 08  	addi	sp, sp, 128
80004060: 17 03 00 00  	auipc	t1, 0
80004064: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004068: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
8000406c: 13 f5 0a 40  	andi	a0, s5, 1024
80004070: 13 07 60 00  	addi	a4, zero, 6
80004074: 63 04 05 00  	beqz	a0, 0x8000407c <.LBB5_44+0xb0>
80004078: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
8000407c: 27 30 a1 02  	fsd	fa0, 32(sp)
80004080: 83 25 41 02  	lw	a1, 36(sp)
80004084: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004088: 93 d6 45 01  	srli	a3, a1, 20
8000408c: b7 07 10 00  	lui	a5, 256
80004090: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004094: b3 f5 f5 00  	and	a1, a1, a5
80004098: 23 2c c1 00  	sw	a2, 24(sp)
8000409c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800040a0: b3 e5 c5 00  	or	a1, a1, a2
800040a4: 23 2e b1 00  	sw	a1, 28(sp)
800040a8: 87 30 81 01  	fld	ft1, 24(sp)

800040ac <.LBB5_45>:
800040ac: 97 15 00 00  	auipc	a1, 1
800040b0: 93 85 45 12  	addi	a1, a1, 292
800040b4: 07 b1 05 00  	fld	ft2, 0(a1)

800040b8 <.LBB5_46>:
800040b8: 97 15 00 00  	auipc	a1, 1
800040bc: 93 85 05 12  	addi	a1, a1, 288
800040c0: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800040c4: 93 f5 f6 7f  	andi	a1, a3, 2047
800040c8: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800040cc: 53 82 05 d2  	fcvt.d.w	ft4, a1
800040d0: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800040d4 <.LBB5_47>:
800040d4: 97 15 00 00  	auipc	a1, 1
800040d8: 93 85 c5 10  	addi	a1, a1, 268
800040dc: 07 b1 05 00  	fld	ft2, 0(a1)

800040e0 <.LBB5_48>:
800040e0: 97 15 00 00  	auipc	a1, 1
800040e4: 93 85 85 10  	addi	a1, a1, 264
800040e8: 87 b1 05 00  	fld	ft3, 0(a1)

800040ec <.LBB5_49>:
800040ec: 97 15 00 00  	auipc	a1, 1
800040f0: 93 85 45 10  	addi	a1, a1, 260
800040f4: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800040f8: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800040fc: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004100: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004104: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004108 <.LBB5_50>:
80004108: 17 16 00 00  	auipc	a2, 1
8000410c: 13 06 06 0f  	addi	a2, a2, 240
80004110: 87 31 06 00  	fld	ft3, 0(a2)

80004114 <.LBB5_51>:
80004114: 17 16 00 00  	auipc	a2, 1
80004118: 13 06 c6 0e  	addi	a2, a2, 236
8000411c: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004120: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004124: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004128: 53 71 31 12  	fmul.d	ft2, ft2, ft3
8000412c: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004130: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004134: 13 06 f6 3f  	addi	a2, a2, 1023
80004138: 23 28 01 00  	sw	zero, 16(sp)
8000413c: 13 16 46 01  	slli	a2, a2, 20
80004140: 23 2a c1 00  	sw	a2, 20(sp)

80004144 <.LBB5_52>:
80004144: 17 16 00 00  	auipc	a2, 1
80004148: 13 06 c6 0c  	addi	a2, a2, 204
8000414c: 87 31 06 00  	fld	ft3, 0(a2)

80004150 <.LBB5_53>:
80004150: 17 16 00 00  	auipc	a2, 1
80004154: 13 06 86 0c  	addi	a2, a2, 200
80004158: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000415c: 87 32 01 01  	fld	ft5, 16(sp)

80004160 <.LBB5_54>:
80004160: 17 16 00 00  	auipc	a2, 1
80004164: 13 06 86 0a  	addi	a2, a2, 168
80004168: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000416c: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004170 <.LBB5_55>:
80004170: 17 16 00 00  	auipc	a2, 1
80004174: 13 06 06 0b  	addi	a2, a2, 176
80004178: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000417c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004180: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004184: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004188: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
8000418c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004190: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004194: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004198: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
8000419c: 53 16 15 a2  	flt.d	a2, fa0, ft1
800041a0: 63 0a 06 00  	beqz	a2, 0x800041b4 <.LBB5_56+0x10>

800041a4 <.LBB5_56>:
800041a4: 97 16 00 00  	auipc	a3, 1
800041a8: 93 86 46 08  	addi	a3, a3, 132
800041ac: 07 b1 06 00  	fld	ft2, 0(a3)
800041b0: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800041b4: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800041b8: 93 05 34 06  	addi	a1, s0, 99
800041bc: 93 b5 75 0c  	sltiu	a1, a1, 199
800041c0: 13 06 50 00  	addi	a2, zero, 5
800041c4: b7 16 00 00  	lui	a3, 1
800041c8: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800041cc: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800041d0: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800041d4: 63 84 06 06  	beqz	a3, 0x8000423c <.LBB5_58+0x58>

800041d8 <.LBB5_57>:
800041d8: 97 15 00 00  	auipc	a1, 1
800041dc: 93 85 85 05  	addi	a1, a1, 88
800041e0: 07 b1 05 00  	fld	ft2, 0(a1)

800041e4 <.LBB5_58>:
800041e4: 97 15 00 00  	auipc	a1, 1
800041e8: 93 85 45 05  	addi	a1, a1, 84
800041ec: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800041f0: d3 15 25 a2  	flt.d	a1, fa0, ft2
800041f4: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800041f8: b3 e5 c5 00  	or	a1, a1, a2
800041fc: 63 98 05 00  	bnez	a1, 0x8000420c <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004200: 63 40 e4 02  	blt	s0, a4, 0x80004220 <.LBB5_58+0x3c>
80004204: 13 07 00 00  	mv	a4, zero
80004208: 6f 00 00 02  	j	0x80004228 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000420c: 63 06 07 02  	beqz	a4, 0x80004238 <.LBB5_58+0x54>
80004210: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004214: 13 45 15 00  	xori	a0, a0, 1
80004218: 33 07 a7 40  	sub	a4, a4, a0
8000421c: 6f 00 00 02  	j	0x8000423c <.LBB5_58+0x58>
80004220: 13 45 f4 ff  	not	a0, s0
80004224: 33 07 a7 00  	add	a4, a4, a0
80004228: 13 04 00 00  	mv	s0, zero
8000422c: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004230: 93 ea 0a 40  	ori	s5, s5, 1024
80004234: 6f 00 80 00  	j	0x8000423c <.LBB5_58+0x58>
80004238: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
8000423c: b3 05 99 41  	sub	a1, s2, s9
80004240: 33 36 b9 00  	sltu	a2, s2, a1
80004244: 13 05 00 00  	mv	a0, zero
80004248: 63 14 06 00  	bnez	a2, 0x80004250 <.LBB5_58+0x6c>
8000424c: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004250: 93 07 00 00  	mv	a5, zero
80004254: 93 d5 1a 00  	srli	a1, s5, 1
80004258: 93 f4 15 00  	andi	s1, a1, 1
8000425c: b3 35 90 01  	snez	a1, s9
80004260: b3 f5 b4 00  	and	a1, s1, a1
80004264: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004268: 63 94 05 00  	bnez	a1, 0x80004270 <.LBB5_58+0x8c>
8000426c: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004270: 93 35 14 00  	seqz	a1, s0
80004274: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004278: 63 94 05 00  	bnez	a1, 0x80004280 <.LBB5_58+0x9c>
8000427c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004280: 63 04 05 00  	beqz	a0, 0x80004288 <.LBB5_58+0xa4>
80004284: 53 15 a5 22  	fneg.d	fa0, fa0
80004288: 37 f5 ff ff  	lui	a0, 1048575
8000428c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004290: 33 f8 aa 00  	and	a6, s5, a0
80004294: 13 85 0b 00  	mv	a0, s7
80004298: 93 05 0b 00  	mv	a1, s6
8000429c: 13 06 0a 00  	mv	a2, s4
800042a0: 93 86 09 00  	mv	a3, s3
800042a4: 97 f0 ff ff  	auipc	ra, 1048575
800042a8: e7 80 40 60  	jalr	1540(ra)
800042ac: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800042b0: 63 82 0c 18  	beqz	s9, 0x80004434 <.LBB5_58+0x250>
800042b4: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800042b8: 13 f5 0a 02  	andi	a0, s5, 32
800042bc: 13 45 55 06  	xori	a0, a0, 101
800042c0: 93 05 0b 00  	mv	a1, s6
800042c4: 13 06 0d 00  	mv	a2, s10
800042c8: 93 86 09 00  	mv	a3, s3
800042cc: e7 80 0b 00  	jalr	s7
800042d0: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800042d4: 93 5a f4 01  	srli	s5, s0, 31
800042d8: 13 55 f4 41  	srai	a0, s0, 31
800042dc: b3 05 a4 00  	add	a1, s0, a0
800042e0: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800042e4: 93 8d dc ff  	addi	s11, s9, -3
800042e8: 13 04 f0 01  	addi	s0, zero, 31
800042ec: 37 d5 cc cc  	lui	a0, 838861
800042f0: 13 05 d5 cc  	addi	a0, a0, -819
800042f4: 13 08 a0 00  	addi	a6, zero, 10
800042f8: 93 08 c1 02  	addi	a7, sp, 44
800042fc: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004300: b3 37 a7 02  	mulhu	a5, a4, a0
80004304: 93 d5 37 00  	srli	a1, a5, 3
80004308: b3 87 05 03  	mul	a5, a1, a6
8000430c: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004310: 13 e6 07 03  	ori	a2, a5, 48
80004314: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004318: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000431c: 13 0c 1c 00  	addi	s8, s8, 1
80004320: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004324: 33 b6 e2 00  	sltu	a2, t0, a4
80004328: 33 f6 c7 00  	and	a2, a5, a2
8000432c: 93 8d fd ff  	addi	s11, s11, -1
80004330: 13 04 f4 ff  	addi	s0, s0, -1
80004334: 13 87 05 00  	mv	a4, a1
80004338: e3 14 06 fc  	bnez	a2, 0x80004300 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000433c: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004340: 33 35 ac 00  	sltu	a0, s8, a0
80004344: 13 45 15 00  	xori	a0, a0, 1
80004348: 93 c5 17 00  	xori	a1, a5, 1
8000434c: 33 e5 a5 00  	or	a0, a1, a0
80004350: 63 12 05 04  	bnez	a0, 0x80004394 <.LBB5_58+0x1b0>
80004354: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004358: b3 85 8c 41  	sub	a1, s9, s8
8000435c: 93 85 d5 ff  	addi	a1, a1, -3
80004360: 13 06 f0 01  	addi	a2, zero, 31
80004364: 33 06 86 41  	sub	a2, a2, s8
80004368: 33 05 85 01  	add	a0, a0, s8
8000436c: 63 e4 c5 00  	bltu	a1, a2, 0x80004374 <.LBB5_58+0x190>
80004370: 93 05 06 00  	mv	a1, a2
80004374: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004378: 93 05 00 03  	addi	a1, zero, 48
8000437c: 97 c0 ff ff  	auipc	ra, 1048572
80004380: e7 80 c0 1d  	jalr	476(ra)
;   if (flags & FLAGS_HASH) {
80004384: 63 e4 8d 00  	bltu	s11, s0, 0x8000438c <.LBB5_58+0x1a8>
80004388: 93 0d 04 00  	mv	s11, s0
8000438c: 33 85 8d 01  	add	a0, s11, s8
80004390: 13 0c 15 00  	addi	s8, a0, 1
80004394: 83 2c c1 00  	lw	s9, 12(sp)
80004398: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000439c: 63 60 85 03  	bltu	a0, s8, 0x800043bc <.LBB5_58+0x1d8>
800043a0: 13 05 c1 02  	addi	a0, sp, 44
800043a4: 33 05 85 01  	add	a0, a0, s8
800043a8: 93 05 d0 02  	addi	a1, zero, 45
800043ac: 63 94 0a 00  	bnez	s5, 0x800043b4 <.LBB5_58+0x1d0>
800043b0: 93 05 b0 02  	addi	a1, zero, 43
800043b4: 13 0c 1c 00  	addi	s8, s8, 1
800043b8: 23 00 b5 00  	sb	a1, 0(a0)
800043bc: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800043c0: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800043c4: 33 85 8a 01  	add	a0, s5, s8
800043c8: 03 45 05 00  	lbu	a0, 0(a0)
800043cc: 13 06 04 00  	mv	a2, s0
800043d0: 93 04 fc ff  	addi	s1, s8, -1
800043d4: 13 04 14 00  	addi	s0, s0, 1
800043d8: 93 05 0b 00  	mv	a1, s6
800043dc: 93 86 09 00  	mv	a3, s3
800043e0: e7 80 0b 00  	jalr	s7
800043e4: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800043e8: e3 9e 04 fc  	bnez	s1, 0x800043c4 <.LBB5_58+0x1e0>
800043ec: 33 05 44 41  	sub	a0, s0, s4
800043f0: 33 35 25 01  	sltu	a0, a0, s2
800043f4: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800043f8: 93 c5 1c 00  	xori	a1, s9, 1
800043fc: 33 e5 a5 00  	or	a0, a1, a0
80004400: 63 18 05 02  	bnez	a0, 0x80004430 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004404: b3 04 40 41  	neg	s1, s4
80004408: 13 0d 14 00  	addi	s10, s0, 1
8000440c: 13 05 00 02  	addi	a0, zero, 32
80004410: 93 05 0b 00  	mv	a1, s6
80004414: 13 06 04 00  	mv	a2, s0
80004418: 93 86 09 00  	mv	a3, s3
8000441c: e7 80 0b 00  	jalr	s7
80004420: 33 85 a4 01  	add	a0, s1, s10
80004424: 13 04 0d 00  	mv	s0, s10
80004428: e3 60 25 ff  	bltu	a0, s2, 0x80004408 <.LBB5_58+0x224>
8000442c: 6f 00 80 00  	j	0x80004434 <.LBB5_58+0x250>
80004430: 13 0d 04 00  	mv	s10, s0
; }
80004434: 13 05 0d 00  	mv	a0, s10
80004438: 83 2d c1 04  	lw	s11, 76(sp)
8000443c: 03 2d 01 05  	lw	s10, 80(sp)
80004440: 83 2c 41 05  	lw	s9, 84(sp)
80004444: 03 2c 81 05  	lw	s8, 88(sp)
80004448: 83 2b c1 05  	lw	s7, 92(sp)
8000444c: 03 2b 01 06  	lw	s6, 96(sp)
80004450: 83 2a 41 06  	lw	s5, 100(sp)
80004454: 03 2a 81 06  	lw	s4, 104(sp)
80004458: 83 29 c1 06  	lw	s3, 108(sp)
8000445c: 03 29 01 07  	lw	s2, 112(sp)
80004460: 83 24 41 07  	lw	s1, 116(sp)
80004464: 03 24 81 07  	lw	s0, 120(sp)
80004468: 83 20 c1 07  	lw	ra, 124(sp)
8000446c: 13 01 01 08  	addi	sp, sp, 128
80004470: 67 80 00 00  	ret

80004474 <_ntoa_format>:
; {
80004474: 13 01 01 fc  	addi	sp, sp, -64
80004478: 23 2e 11 02  	sw	ra, 60(sp)
8000447c: 23 2c 81 02  	sw	s0, 56(sp)
80004480: 23 2a 91 02  	sw	s1, 52(sp)
80004484: 23 28 21 03  	sw	s2, 48(sp)
80004488: 23 26 31 03  	sw	s3, 44(sp)
8000448c: 23 24 41 03  	sw	s4, 40(sp)
80004490: 23 22 51 03  	sw	s5, 36(sp)
80004494: 23 20 61 03  	sw	s6, 32(sp)
80004498: 23 2e 71 01  	sw	s7, 28(sp)
8000449c: 23 2c 81 01  	sw	s8, 24(sp)
800044a0: 23 2a 91 01  	sw	s9, 20(sp)
800044a4: 23 28 a1 01  	sw	s10, 16(sp)
800044a8: 23 26 b1 01  	sw	s11, 12(sp)
800044ac: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800044b0: 93 fa 2e 00  	andi	s5, t4, 2
800044b4: 13 09 0e 00  	mv	s2, t3
800044b8: 13 8d 03 00  	mv	s10, t2
800044bc: 93 8c 08 00  	mv	s9, a7
800044c0: 13 8c 07 00  	mv	s8, a5
800044c4: 93 89 06 00  	mv	s3, a3
800044c8: 13 0a 06 00  	mv	s4, a2
800044cc: 13 8b 05 00  	mv	s6, a1
800044d0: 93 0d 05 00  	mv	s11, a0
800044d4: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800044d8: 63 9e 0a 0c  	bnez	s5, 0x800045b4 <_ntoa_format+0x140>
800044dc: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800044e0: 63 0e 09 00  	beqz	s2, 0x800044fc <_ntoa_format+0x88>
800044e4: 63 0e 04 00  	beqz	s0, 0x80004500 <_ntoa_format+0x8c>
800044e8: 13 f5 cb 00  	andi	a0, s7, 12
800044ec: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800044f0: 33 65 05 01  	or	a0, a0, a6
800044f4: 33 09 a9 40  	sub	s2, s2, a0
800044f8: 6f 00 80 00  	j	0x80004500 <_ntoa_format+0x8c>
800044fc: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004500: 33 35 ac 01  	sltu	a0, s8, s10
80004504: 93 45 15 00  	xori	a1, a0, 1
80004508: 13 05 f0 01  	addi	a0, zero, 31
8000450c: 33 36 85 01  	sltu	a2, a0, s8
80004510: b3 65 b6 00  	or	a1, a2, a1
80004514: 63 94 05 04  	bnez	a1, 0x8000455c <_ntoa_format+0xe8>
80004518: 23 22 51 01  	sw	s5, 4(sp)
8000451c: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004520: 93 45 fc ff  	not	a1, s8
80004524: b3 85 a5 01  	add	a1, a1, s10
80004528: 33 06 85 41  	sub	a2, a0, s8
8000452c: 33 05 87 01  	add	a0, a4, s8
80004530: 63 e4 c5 00  	bltu	a1, a2, 0x80004538 <_ntoa_format+0xc4>
80004534: 93 05 06 00  	mv	a1, a2
80004538: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000453c: 93 05 00 03  	addi	a1, zero, 48
80004540: 13 86 04 00  	mv	a2, s1
80004544: 97 c0 ff ff  	auipc	ra, 1048572
80004548: e7 80 40 01  	jalr	20(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000454c: 33 8c 84 01  	add	s8, s1, s8
80004550: 03 27 81 00  	lw	a4, 8(sp)
80004554: 13 88 0a 00  	mv	a6, s5
80004558: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000455c: 63 0c 04 04  	beqz	s0, 0x800045b4 <_ntoa_format+0x140>
80004560: 33 35 2c 01  	sltu	a0, s8, s2
80004564: 93 45 15 00  	xori	a1, a0, 1
80004568: 13 05 f0 01  	addi	a0, zero, 31
8000456c: 33 36 85 01  	sltu	a2, a0, s8
80004570: b3 e5 c5 00  	or	a1, a1, a2
80004574: 63 90 05 04  	bnez	a1, 0x800045b4 <_ntoa_format+0x140>
80004578: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000457c: 93 45 fc ff  	not	a1, s8
80004580: b3 05 b9 00  	add	a1, s2, a1
80004584: 33 06 85 41  	sub	a2, a0, s8
80004588: 33 05 87 01  	add	a0, a4, s8
8000458c: 63 e4 c5 00  	bltu	a1, a2, 0x80004594 <_ntoa_format+0x120>
80004590: 93 05 06 00  	mv	a1, a2
80004594: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004598: 93 05 00 03  	addi	a1, zero, 48
8000459c: 13 86 04 00  	mv	a2, s1
800045a0: 97 c0 ff ff  	auipc	ra, 1048572
800045a4: e7 80 80 fb  	jalr	-72(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800045a8: 33 8c 84 01  	add	s8, s1, s8
800045ac: 03 27 81 00  	lw	a4, 8(sp)
800045b0: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800045b4: 13 f5 0b 01  	andi	a0, s7, 16
800045b8: 63 02 05 0e  	beqz	a0, 0x8000469c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800045bc: 13 f5 0b 40  	andi	a0, s7, 1024
800045c0: 13 55 a5 00  	srli	a0, a0, 10
800045c4: 93 35 1c 00  	seqz	a1, s8
800045c8: 33 65 b5 00  	or	a0, a0, a1
800045cc: 63 1e 05 02  	bnez	a0, 0x80004608 <_ntoa_format+0x194>
800045d0: 33 45 ac 01  	xor	a0, s8, s10
800045d4: 33 35 a0 00  	snez	a0, a0
800045d8: b3 45 2c 01  	xor	a1, s8, s2
800045dc: b3 35 b0 00  	snez	a1, a1
800045e0: 33 75 b5 00  	and	a0, a0, a1
800045e4: 63 12 05 02  	bnez	a0, 0x80004608 <_ntoa_format+0x194>
;       len--;
800045e8: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800045ec: b3 35 a0 00  	snez	a1, a0
800045f0: 13 86 0c ff  	addi	a2, s9, -16
800045f4: 13 36 16 00  	seqz	a2, a2
800045f8: b3 75 b6 00  	and	a1, a2, a1
800045fc: 63 84 05 00  	beqz	a1, 0x80004604 <_ntoa_format+0x190>
80004600: 13 05 ec ff  	addi	a0, s8, -2
80004604: 13 0c 05 00  	mv	s8, a0
80004608: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000460c: 63 96 ac 02  	bne	s9, a0, 0x80004638 <_ntoa_format+0x1c4>
80004610: 13 f5 0b 02  	andi	a0, s7, 32
80004614: 93 55 55 00  	srli	a1, a0, 5
80004618: 13 06 f0 01  	addi	a2, zero, 31
8000461c: 33 36 86 01  	sltu	a2, a2, s8
80004620: b3 e5 c5 00  	or	a1, a1, a2
80004624: 63 9e 05 02  	bnez	a1, 0x80004660 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004628: 33 05 87 01  	add	a0, a4, s8
8000462c: 13 0c 1c 00  	addi	s8, s8, 1
80004630: 93 05 80 07  	addi	a1, zero, 120
80004634: 6f 00 c0 04  	j	0x80004680 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004638: 13 85 ec ff  	addi	a0, s9, -2
8000463c: 33 35 a0 00  	snez	a0, a0
80004640: 93 05 f0 01  	addi	a1, zero, 31
80004644: b3 b5 85 01  	sltu	a1, a1, s8
80004648: 33 65 b5 00  	or	a0, a0, a1
8000464c: 63 1c 05 02  	bnez	a0, 0x80004684 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004650: 33 05 87 01  	add	a0, a4, s8
80004654: 13 0c 1c 00  	addi	s8, s8, 1
80004658: 93 05 20 06  	addi	a1, zero, 98
8000465c: 6f 00 40 02  	j	0x80004680 <_ntoa_format+0x20c>
80004660: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004664: 13 35 15 00  	seqz	a0, a0
80004668: 93 c5 15 00  	xori	a1, a1, 1
8000466c: 33 65 b5 00  	or	a0, a0, a1
80004670: 63 1a 05 00  	bnez	a0, 0x80004684 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004674: 33 05 87 01  	add	a0, a4, s8
80004678: 13 0c 1c 00  	addi	s8, s8, 1
8000467c: 93 05 80 05  	addi	a1, zero, 88
80004680: 23 00 b5 00  	sb	a1, 0(a0)
80004684: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004688: 63 60 85 07  	bltu	a0, s8, 0x800046e8 <_ntoa_format+0x274>
;       buf[len++] = '0';
8000468c: 33 05 87 01  	add	a0, a4, s8
80004690: 13 0c 1c 00  	addi	s8, s8, 1
80004694: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004698: 23 00 b5 00  	sb	a1, 0(a0)
8000469c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800046a0: 63 64 85 05  	bltu	a0, s8, 0x800046e8 <_ntoa_format+0x274>
;     if (negative) {
800046a4: 63 0a 08 00  	beqz	a6, 0x800046b8 <_ntoa_format+0x244>
;       buf[len++] = '-';
800046a8: 33 05 87 01  	add	a0, a4, s8
800046ac: 13 0c 1c 00  	addi	s8, s8, 1
800046b0: 93 05 d0 02  	addi	a1, zero, 45
800046b4: 6f 00 00 03  	j	0x800046e4 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800046b8: 13 f5 4b 00  	andi	a0, s7, 4
800046bc: 63 1e 05 00  	bnez	a0, 0x800046d8 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800046c0: 13 f5 8b 00  	andi	a0, s7, 8
800046c4: 63 02 05 02  	beqz	a0, 0x800046e8 <_ntoa_format+0x274>
;       buf[len++] = ' ';
800046c8: 33 05 87 01  	add	a0, a4, s8
800046cc: 13 0c 1c 00  	addi	s8, s8, 1
800046d0: 93 05 00 02  	addi	a1, zero, 32
800046d4: 6f 00 00 01  	j	0x800046e4 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800046d8: 33 05 87 01  	add	a0, a4, s8
800046dc: 13 0c 1c 00  	addi	s8, s8, 1
800046e0: 93 05 b0 02  	addi	a1, zero, 43
800046e4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800046e8: 13 f5 3b 00  	andi	a0, s7, 3
800046ec: 33 35 a0 00  	snez	a0, a0
800046f0: b3 35 2c 01  	sltu	a1, s8, s2
800046f4: 93 c5 15 00  	xori	a1, a1, 1
800046f8: 33 65 b5 00  	or	a0, a0, a1
800046fc: 13 04 0a 00  	mv	s0, s4
80004700: 63 16 05 02  	bnez	a0, 0x8000472c <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004704: b3 04 89 41  	sub	s1, s2, s8
80004708: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000470c: 13 04 16 00  	addi	s0, a2, 1
80004710: 13 05 00 02  	addi	a0, zero, 32
80004714: 93 05 0b 00  	mv	a1, s6
80004718: 93 86 09 00  	mv	a3, s3
8000471c: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004720: 93 84 f4 ff  	addi	s1, s1, -1
80004724: 13 06 04 00  	mv	a2, s0
80004728: e3 92 04 fe  	bnez	s1, 0x8000470c <_ntoa_format+0x298>
8000472c: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004730: 63 0e 0c 02  	beqz	s8, 0x8000476c <_ntoa_format+0x2f8>
80004734: 03 25 81 00  	lw	a0, 8(sp)
80004738: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000473c: 33 85 8b 01  	add	a0, s7, s8
80004740: 03 45 05 00  	lbu	a0, 0(a0)
80004744: 93 0c fc ff  	addi	s9, s8, -1
80004748: 93 04 14 00  	addi	s1, s0, 1
8000474c: 93 05 0b 00  	mv	a1, s6
80004750: 13 06 04 00  	mv	a2, s0
80004754: 93 86 09 00  	mv	a3, s3
80004758: e7 80 0d 00  	jalr	s11
8000475c: 13 84 04 00  	mv	s0, s1
80004760: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004764: e3 9c 0c fc  	bnez	s9, 0x8000473c <_ntoa_format+0x2c8>
80004768: 6f 00 80 00  	j	0x80004770 <_ntoa_format+0x2fc>
8000476c: 93 04 04 00  	mv	s1, s0
80004770: 33 85 44 41  	sub	a0, s1, s4
80004774: 33 35 25 01  	sltu	a0, a0, s2
80004778: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000477c: 93 c5 1a 00  	xori	a1, s5, 1
80004780: 33 e5 a5 00  	or	a0, a1, a0
80004784: 63 18 05 02  	bnez	a0, 0x800047b4 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004788: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000478c: 13 84 14 00  	addi	s0, s1, 1
80004790: 13 05 00 02  	addi	a0, zero, 32
80004794: 93 05 0b 00  	mv	a1, s6
80004798: 13 86 04 00  	mv	a2, s1
8000479c: 93 86 09 00  	mv	a3, s3
800047a0: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800047a4: 33 05 8a 00  	add	a0, s4, s0
800047a8: 93 04 04 00  	mv	s1, s0
800047ac: e3 60 25 ff  	bltu	a0, s2, 0x8000478c <_ntoa_format+0x318>
800047b0: 6f 00 80 00  	j	0x800047b8 <_ntoa_format+0x344>
800047b4: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800047b8: 13 05 04 00  	mv	a0, s0
800047bc: 83 2d c1 00  	lw	s11, 12(sp)
800047c0: 03 2d 01 01  	lw	s10, 16(sp)
800047c4: 83 2c 41 01  	lw	s9, 20(sp)
800047c8: 03 2c 81 01  	lw	s8, 24(sp)
800047cc: 83 2b c1 01  	lw	s7, 28(sp)
800047d0: 03 2b 01 02  	lw	s6, 32(sp)
800047d4: 83 2a 41 02  	lw	s5, 36(sp)
800047d8: 03 2a 81 02  	lw	s4, 40(sp)
800047dc: 83 29 c1 02  	lw	s3, 44(sp)
800047e0: 03 29 01 03  	lw	s2, 48(sp)
800047e4: 83 24 41 03  	lw	s1, 52(sp)
800047e8: 03 24 81 03  	lw	s0, 56(sp)
800047ec: 83 20 c1 03  	lw	ra, 60(sp)
800047f0: 13 01 01 04  	addi	sp, sp, 64
800047f4: 67 80 00 00  	ret

800047f8 <_snrt_init_team>:
;     team->base.root = team;
800047f8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800047fc: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004800: 03 23 87 00  	lw	t1, 8(a4)
80004804: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004808: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
8000480c: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004810: 83 22 47 00  	lw	t0, 4(a4)
80004814: 33 88 08 03  	mul	a6, a7, a6
80004818: 33 05 58 02  	mul	a0, a6, t0
8000481c: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004820: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004824: 33 85 68 40  	sub	a0, a7, t1
80004828: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
8000482c: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004830: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004834: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004838: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
8000483c: 03 25 87 01  	lw	a0, 24(a4)
80004840: b7 05 00 10  	lui	a1, 65536
80004844: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004848: 23 a2 07 02  	sw	zero, 36(a5)
8000484c: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004850: 03 25 07 02  	lw	a0, 32(a4)
80004854: 83 25 47 02  	lw	a1, 36(a4)
80004858: 23 a4 a7 02  	sw	a0, 40(a5)
8000485c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004860: 23 a8 c7 02  	sw	a2, 48(a5)
80004864: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004868: 23 ac d7 02  	sw	a3, 56(a5)
8000486c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004870: 03 25 07 01  	lw	a0, 16(a4)
80004874: 33 08 a6 00  	add	a6, a2, a0
80004878: 93 05 08 19  	addi	a1, a6, 400
8000487c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004880: b3 32 a8 00  	sltu	t0, a6, a0
80004884: 93 55 15 00  	srli	a1, a0, 1
80004888: 33 03 b8 00  	add	t1, a6, a1
8000488c: b3 35 03 01  	sltu	a1, t1, a6
80004890: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004894: 23 a0 67 04  	sw	t1, 64(a5)
80004898: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
8000489c: 13 15 15 00  	slli	a0, a0, 1
800048a0: b3 05 c5 00  	add	a1, a0, a2
800048a4: 33 b5 a5 00  	sltu	a0, a1, a0
800048a8: 23 a4 b7 04  	sw	a1, 72(a5)
800048ac: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800048b0: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800048b4: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800048b8: 37 05 00 00  	lui	a0, 0
800048bc: 33 05 45 00  	add	a0, a0, tp
800048c0: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800048c4: 03 a5 07 00  	lw	a0, 0(a5)
800048c8: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800048cc: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800048d0: b3 85 b8 40  	sub	a1, a7, a1
800048d4: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800048d8: b7 05 00 00  	lui	a1, 0
800048dc: b3 85 45 00  	add	a1, a1, tp
800048e0: 23 a2 a5 00  	sw	a0, 4(a1)
800048e4: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800048e8: 33 85 a8 02  	mul	a0, a7, a0

800048ec <.LBB0_1>:
800048ec: 97 15 00 00  	auipc	a1, 1
800048f0: 93 85 85 95  	addi	a1, a1, -1704
800048f4: 33 05 b5 00  	add	a0, a0, a1
800048f8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800048fc: 83 28 07 03  	lw	a7, 48(a4)
80004900: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004904: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004908: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
8000490c: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004910: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004914: 13 05 76 00  	addi	a0, a2, 7
80004918: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
8000491c: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004920: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004924: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004928: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
8000492c: 03 a5 05 00  	lw	a0, 0(a1)
80004930: 13 05 f5 44  	addi	a0, a0, 1103
80004934: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004938: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
8000493c: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004940: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004944: 37 05 00 00  	lui	a0, 0
80004948: 33 05 45 00  	add	a0, a0, tp
8000494c: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004950: 37 05 00 00  	lui	a0, 0
80004954: 33 05 45 00  	add	a0, a0, tp
80004958: 23 26 e5 00  	sw	a4, 12(a0)
; }
8000495c: 67 80 00 00  	ret

80004960 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004960: 37 05 00 00  	lui	a0, 0
80004964: 33 05 45 00  	add	a0, a0, tp
80004968: 03 25 05 00  	lw	a0, 0(a0)
8000496c: 03 25 05 00  	lw	a0, 0(a0)
80004970: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004974: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004978: 33 85 a5 40  	sub	a0, a1, a0
8000497c: 67 80 00 00  	ret

80004980 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004980: 37 05 00 00  	lui	a0, 0
80004984: 33 05 45 00  	add	a0, a0, tp
80004988: 03 25 05 00  	lw	a0, 0(a0)
8000498c: 03 25 05 00  	lw	a0, 0(a0)
80004990: 03 25 05 07  	lw	a0, 112(a0)
80004994: 67 80 00 00  	ret

80004998 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004998: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
8000499c: 63 44 05 00  	bltz	a0, 0x800049a4 <__snrt_isr+0xc>
;         while (1)
800049a0: 6f 00 00 00  	j	0x800049a0 <__snrt_isr+0x8>
800049a4: b7 05 00 80  	lui	a1, 524288
800049a8: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800049ac: 33 75 b5 00  	and	a0, a0, a1
800049b0: 13 05 d5 ff  	addi	a0, a0, -3
800049b4: 93 55 25 00  	srli	a1, a0, 2
800049b8: 13 15 e5 01  	slli	a0, a0, 30
800049bc: 33 65 b5 00  	or	a0, a0, a1
800049c0: 93 05 40 00  	addi	a1, zero, 4
800049c4: 63 0a b5 06  	beq	a0, a1, 0x80004a38 <.LBB1_7+0x58>
800049c8: 63 1a 05 08  	bnez	a0, 0x80004a5c <.LBB1_7+0x7c>
800049cc: 37 05 00 00  	lui	a0, 0
800049d0: 33 05 45 00  	add	a0, a0, tp
800049d4: 03 25 05 00  	lw	a0, 0(a0)
800049d8: 03 25 05 00  	lw	a0, 0(a0)
800049dc: f3 25 40 f1  	csrr	a1, mhartid

800049e0 <.LBB1_7>:
;     asm volatile(
800049e0: 17 16 00 00  	auipc	a2, 1
800049e4: 13 06 06 86  	addi	a2, a2, -1952
800049e8: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800049ec: 93 06 06 00  	mv	a3, a2
800049f0: 93 02 10 00  	addi	t0, zero, 1
800049f4: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800049f8: e3 9e 02 fe  	bnez	t0, 0x800049f4 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800049fc: b7 06 00 00  	lui	a3, 0
80004a00: b3 86 46 00  	add	a3, a3, tp
80004a04: 83 a6 86 00  	lw	a3, 8(a3)
80004a08: 33 85 a5 40  	sub	a0, a1, a0
80004a0c: 93 55 35 00  	srli	a1, a0, 3
80004a10: 93 f5 c5 ff  	andi	a1, a1, -4
80004a14: b3 85 b6 00  	add	a1, a3, a1
80004a18: 83 a6 05 00  	lw	a3, 0(a1)
80004a1c: 13 07 10 00  	addi	a4, zero, 1
80004a20: 33 15 a7 00  	sll	a0, a4, a0
80004a24: 13 45 f5 ff  	not	a0, a0
80004a28: 33 f5 a6 00  	and	a0, a3, a0
80004a2c: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004a30: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004a34: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004a38: 37 05 00 00  	lui	a0, 0
80004a3c: 33 05 45 00  	add	a0, a0, tp
80004a40: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004a44: b7 05 00 00  	lui	a1, 0
80004a48: b3 85 45 00  	add	a1, a1, tp
80004a4c: 83 a5 c5 00  	lw	a1, 12(a1)
80004a50: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004a54: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004a58: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004a5c: 67 80 00 00  	ret

Disassembly of section .init:

80004a60 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004a60: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004a64: 93 81 81 ee  	addi	gp, gp, -280

80004a68 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004a68: 97 00 00 00  	auipc	ra, 0
80004a6c: e7 80 40 3c  	jalr	964(ra)

80004a70 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004a70: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004a74: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004a78: 97 00 00 00  	auipc	ra, 0
80004a7c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004a80: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004a84: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004a88: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004a8c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004a90: 63 92 02 02  	bnez	t0, 0x80004ab4 <snrt.crt0.init_registers>

80004a94 <.Lpcrel_hi0>:
;     la        t0, _edata
80004a94: 97 02 00 00  	auipc	t0, 0
80004a98: 93 82 c2 7a  	addi	t0, t0, 1964

80004a9c <.Lpcrel_hi1>:
;     la        t1, _end
80004a9c: 17 03 00 00  	auipc	t1, 0
80004aa0: 13 03 83 7a  	addi	t1, t1, 1960
;     bge       t0, t1, 2f
80004aa4: 63 d8 62 00  	bge	t0, t1, 0x80004ab4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004aa8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004aac: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004ab0: e3 cc 62 fe  	blt	t0, t1, 0x80004aa8 <.Lpcrel_hi1+0xc>

80004ab4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004ab4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004ab8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004abc: 63 82 02 08  	beqz	t0, 0x80004b40 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004ac0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004ac4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004ac8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004acc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004ad0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004ad4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004ad8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004adc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004ae0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004ae4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004ae8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004aec: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004af0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004af4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004af8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004afc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004b00: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004b04: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004b08: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004b0c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004b10: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004b14: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004b18: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004b1c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004b20: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004b24: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004b28: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004b2c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004b30: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004b34: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004b38: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004b3c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004b40 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004b40: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004b44: 23 a0 06 00  	sw	zero, 0(a3)

80004b48 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004b48: 97 02 00 00  	auipc	t0, 0
80004b4c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004b50: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004b54: 93 87 06 00  	mv	a5, a3

80004b58 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004b58: 97 03 00 00  	auipc	t2, 0
80004b5c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004b60: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004b64: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004b68: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004b6c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004b70: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004b74: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004b78: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004b7c: b3 86 66 40  	sub	a3, a3, t1

80004b80 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004b80: 97 02 00 00  	auipc	t0, 0
80004b84: 93 82 82 5c  	addi	t0, t0, 1480

80004b88 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004b88: 17 03 00 00  	auipc	t1, 0
80004b8c: 13 03 03 5c  	addi	t1, t1, 1472

80004b90 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004b90: 97 03 00 00  	auipc	t2, 0
80004b94: 93 83 83 5b  	addi	t2, t2, 1464

80004b98 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004b98: 17 0e 00 00  	auipc	t3, 0
80004b9c: 13 0e 0e 5c  	addi	t3, t3, 1472
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004ba0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004ba4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004ba8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004bac: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004bb0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004bb4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004bb8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004bbc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004bc0: 63 dc 62 00  	bge	t0, t1, 0x80004bd8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004bc4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004bc8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004bcc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004bd0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004bd4: e3 c8 62 fe  	blt	t0, t1, 0x80004bc4 <.Lpcrel_hi7+0x2c>

80004bd8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004bd8: 97 02 00 00  	auipc	t0, 0
80004bdc: 93 82 02 57  	addi	t0, t0, 1392

80004be0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004be0: 17 03 00 00  	auipc	t1, 0
80004be4: 13 03 83 57  	addi	t1, t1, 1400
;     bge       t0, t1, 2f
80004be8: 63 da 62 00  	bge	t0, t1, 0x80004bfc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004bec: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80004bf0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004bf4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80004bf8: e3 ca 72 fe  	blt	t0, t2, 0x80004bec <.Lpcrel_hi9+0xc>

80004bfc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80004bfc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80004c00: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80004c04: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80004c08: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80004c0c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80004c10: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80004c14: 97 00 00 00  	auipc	ra, 0
80004c18: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
80004c1c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80004c20: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80004c24: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80004c28: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80004c2c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80004c30: 13 01 41 01  	addi	sp, sp, 20

80004c34 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80004c34: 97 02 00 00  	auipc	t0, 0
80004c38: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80004c3c: 73 90 52 30  	csrw	mtvec, t0

80004c40 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80004c40: 97 00 00 00  	auipc	ra, 0
80004c44: e7 80 00 22  	jalr	544(ra)

80004c48 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80004c48: 97 c0 ff ff  	auipc	ra, 1048572
80004c4c: e7 80 c0 9e  	jalr	-1556(ra)
;     mv        s0, a0 # store return value in s0
80004c50: 13 04 05 00  	mv	s0, a0

80004c54 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80004c54: 97 00 00 00  	auipc	ra, 0
80004c58: e7 80 c0 20  	jalr	524(ra)

80004c5c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80004c5c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80004c60: 97 00 00 00  	auipc	ra, 0
80004c64: e7 80 c0 22  	jalr	556(ra)
;     wfi
80004c68: 73 00 50 10  	wfi	
;     j       1b
80004c6c: 6f f0 df ff  	j	0x80004c68 <snrt.crt0.end+0xc>

80004c70 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80004c70: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80004c74: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80004c78: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80004c7c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80004c80: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80004c84: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80004c88: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80004c8c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80004c90: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80004c94: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80004c98: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80004c9c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80004ca0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80004ca4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80004ca8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80004cac: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80004cb0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80004cb4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80004cb8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004cbc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004cc0: 63 84 02 08  	beqz	t0, 0x80004d48 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80004cc4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80004cc8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80004ccc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80004cd0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80004cd4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80004cd8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80004cdc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80004ce0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80004ce4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80004ce8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80004cec: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80004cf0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80004cf4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80004cf8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80004cfc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80004d00: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80004d04: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80004d08: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80004d0c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80004d10: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80004d14: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80004d18: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80004d1c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80004d20: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80004d24: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80004d28: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80004d2c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80004d30: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80004d34: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80004d38: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80004d3c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80004d40: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80004d44: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80004d48: 97 00 00 00  	auipc	ra, 0
80004d4c: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
80004d50: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004d54: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004d58: 63 84 02 08  	beqz	t0, 0x80004de0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80004d5c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80004d60: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80004d64: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80004d68: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80004d6c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80004d70: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80004d74: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80004d78: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80004d7c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80004d80: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80004d84: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80004d88: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80004d8c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80004d90: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80004d94: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80004d98: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80004d9c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80004da0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80004da4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80004da8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80004dac: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80004db0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80004db4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80004db8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80004dbc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80004dc0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80004dc4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80004dc8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80004dcc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80004dd0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80004dd4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80004dd8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80004ddc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80004de0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80004de4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80004de8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80004dec: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80004df0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80004df4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80004df8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80004dfc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80004e00: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80004e04: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80004e08: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80004e0c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80004e10: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80004e14: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80004e18: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80004e1c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80004e20: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80004e24: 13 01 01 05  	addi	sp, sp, 80
;     mret
80004e28: 73 00 20 30  	mret	

80004e2c <_snrt_init_core_info>:
;     mv        a4, a1
80004e2c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80004e30: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80004e34: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80004e38: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80004e3c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80004e40: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80004e44: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80004e48: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80004e4c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80004e50: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80004e54: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80004e58: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80004e5c: 67 80 00 00  	ret

80004e60 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80004e60: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80004e64: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80004e68: 97 00 00 00  	auipc	ra, 0
80004e6c: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80004e70: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80004e74: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80004e78: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80004e7c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80004e80: 67 80 00 00  	ret

80004e84 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80004e84: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80004e88: 67 80 00 00  	ret

80004e8c <_snrt_exit>:
;     addi      sp, sp, -8
80004e8c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80004e90: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80004e94: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80004e98: 97 00 00 00  	auipc	ra, 0
80004e9c: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80004ea0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80004ea4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80004ea8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80004eac: 63 1c 05 00  	bnez	a0, 0x80004ec4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80004eb0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80004eb4: 93 e2 12 00  	ori	t0, t0, 1

80004eb8 <.Lpcrel_hi11>:
;     la        t1, tohost
80004eb8: 17 03 00 00  	auipc	t1, 0
80004ebc: 13 03 83 24  	addi	t1, t1, 584
;     sw        t0, 0(t1)
80004ec0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80004ec4: 67 80 00 00  	ret
