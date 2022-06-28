
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-2mm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004eb4 80000000 TEXT
  2 .init             00000468 80004ec0 TEXT
  3 .rodata           00000238 80005328 DATA
  4 .htif             00000048 80005580 DATA
  5 .tdata            00000000 800055c8 DATA
  6 .tbss             00000010 800055c8 BSS
  7 .tbssend          00000000 800055d8 DATA
  8 .sdata            000000e8 800055d8 DATA
  9 .data             00000000 800056c0 DATA
 10 .sbss             00000004 800056c0 BSS
 11 .bss              00000000 800056c4 BSS
 12 .dram             00000000 800056c4 DATA
 13 .debug_info       000036f7 00000000 
 14 .debug_abbrev     00000bf6 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000038ea 00000000 
 17 .debug_loc        00003f3f 00000000 
 18 .debug_ranges     00000380 00000000 
 19 .debug_str        00000b05 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003370 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000965 00000000 


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
800006a0: 6f 20 d0 0f  	j	0x80002f9c <.LBB0_99+0x10>
;     return _snrt_team_current->root;
800006a4: 37 05 00 00  	lui	a0, 0
800006a8: 33 05 45 00  	add	a0, a0, tp
800006ac: 03 25 05 00  	lw	a0, 0(a0)
800006b0: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b4: 83 2c 85 05  	lw	s9, 88(a0)
800006b8: 83 25 05 05  	lw	a1, 80(a0)
800006bc: 03 27 45 05  	lw	a4, 84(a0)
800006c0: 37 16 00 00  	lui	a2, 1
800006c4: 13 06 06 90  	addi	a2, a2, -1792
800006c8: b3 86 cc 00  	add	a3, s9, a2
800006cc: b3 05 b7 00  	add	a1, a4, a1
800006d0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006dc <main+0xa8>
800006d4: 13 0d 00 00  	mv	s10, zero
800006d8: 6f 00 00 01  	j	0x800006e8 <main+0xb4>
;     void *ret = (void *)alloc->next;
800006dc: 13 8d 0c 00  	mv	s10, s9
;     alloc->next += size;
800006e0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e4: 93 8c 06 00  	mv	s9, a3
800006e8: b3 06 96 01  	add	a3, a2, s9
800006ec: 93 86 06 20  	addi	a3, a3, 512
800006f0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006fc <main+0xc8>
800006f4: 93 07 00 00  	mv	a5, zero
800006f8: 6f 00 00 01  	j	0x80000708 <main+0xd4>
;     void *ret = (void *)alloc->next;
800006fc: 93 87 0c 00  	mv	a5, s9
;     alloc->next += size;
80000700: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: 93 8c 06 00  	mv	s9, a3
80000708: b3 06 96 01  	add	a3, a2, s9
8000070c: 93 86 06 36  	addi	a3, a3, 864
80000710: 63 f6 d5 00  	bgeu	a1, a3, 0x8000071c <main+0xe8>
80000714: 93 00 00 00  	mv	ra, zero
80000718: 6f 00 00 01  	j	0x80000728 <main+0xf4>
;     void *ret = (void *)alloc->next;
8000071c: 93 80 0c 00  	mv	ra, s9
;     alloc->next += size;
80000720: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000724: 93 8c 06 00  	mv	s9, a3
80000728: b3 06 96 01  	add	a3, a2, s9
8000072c: 93 86 06 48  	addi	a3, a3, 1152
80000730: 63 f6 d5 00  	bgeu	a1, a3, 0x8000073c <main+0x108>
80000734: 93 0d 00 00  	mv	s11, zero
80000738: 6f 00 00 01  	j	0x80000748 <main+0x114>
;     void *ret = (void *)alloc->next;
8000073c: 93 8d 0c 00  	mv	s11, s9
;     alloc->next += size;
80000740: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000744: 93 8c 06 00  	mv	s9, a3
80000748: 33 06 96 01  	add	a2, a2, s9
8000074c: 13 06 06 30  	addi	a2, a2, 768
80000750: 63 f6 c5 00  	bgeu	a1, a2, 0x8000075c <main+0x128>
80000754: 93 0c 00 00  	mv	s9, zero
80000758: 6f 00 80 00  	j	0x80000760 <main+0x12c>
;     alloc->next += size;
8000075c: 23 2c c5 04  	sw	a2, 88(a0)
;   for (i = 0; i < ni; i++)
80000760: 13 d5 47 01  	srli	a0, a5, 20
80000764: 33 35 a0 00  	snez	a0, a0
80000768: b7 f5 11 00  	lui	a1, 287
8000076c: 93 85 95 50  	addi	a1, a1, 1289
80000770: b3 b5 b7 00  	sltu	a1, a5, a1
80000774: b3 75 b5 00  	and	a1, a0, a1

80000778 <.LBB0_87>:
80000778: 17 55 00 00  	auipc	a0, 5
8000077c: 13 05 05 e6  	addi	a0, a0, -416
80000780: 23 26 f1 02  	sw	a5, 44(sp)
80000784: 23 2a b1 00  	sw	a1, 20(sp)
80000788: 13 08 00 00  	mv	a6, zero
8000078c: 93 08 00 00  	mv	a7, zero
80000790: 63 8c 05 24  	beqz	a1, 0x800009e8 <.LBB0_87+0x270>
80000794: 13 03 00 00  	mv	t1, zero
80000798: 93 03 00 00  	mv	t2, zero
8000079c: 13 0e 00 00  	mv	t3, zero
800007a0: 93 0e 00 00  	mv	t4, zero
800007a4: 13 0f 00 00  	mv	t5, zero
800007a8: 93 0f 00 00  	mv	t6, zero
800007ac: 13 09 00 00  	mv	s2, zero
800007b0: 93 05 80 00  	addi	a1, zero, 8
800007b4: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
800007b8: 93 06 00 04  	addi	a3, zero, 64
800007bc: 13 07 00 0c  	addi	a4, zero, 192
800007c0: ab 20 d6 00  	scfgw	a2, a3
800007c4: ab a0 e5 00  	scfgw	a1, a4
800007c8: 13 06 f0 00  	addi	a2, zero, 15
800007cc: 93 06 00 06  	addi	a3, zero, 96
800007d0: 13 07 00 0e  	addi	a4, zero, 224
800007d4: ab 20 d6 00  	scfgw	a2, a3
800007d8: ab a0 e5 00  	scfgw	a1, a4
800007dc: 93 05 00 02  	addi	a1, zero, 32
800007e0: ab 20 b0 00  	scfgw	zero, a1
800007e4: 2b a0 07 3a  	scfgwi	a5, 928
800007e8: 73 e0 00 7c  	csrsi	1984, 1
800007ec: 93 09 10 00  	addi	s3, zero, 1
800007f0: 87 31 05 00  	fld	ft3, 0(a0)
800007f4: 93 02 10 15  	addi	t0, zero, 337
800007f8: 13 0a 10 00  	addi	s4, zero, 1
800007fc: 93 0a 10 00  	addi	s5, zero, 1
80000800: 13 0b 10 00  	addi	s6, zero, 1
80000804: 93 07 10 00  	addi	a5, zero, 1
80000808: 93 04 10 00  	addi	s1, zero, 1
8000080c: 13 04 10 00  	addi	s0, zero, 1
80000810: 13 05 10 00  	addi	a0, zero, 1
80000814: 93 05 10 00  	addi	a1, zero, 1
80000818: 13 06 10 00  	addi	a2, zero, 1
8000081c: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000820: 53 80 31 22  	fmv.d	ft0, ft3
80000824: 13 f7 f9 00  	andi	a4, s3, 15
80000828: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000082c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000830: 53 00 42 22  	fmv.d	ft0, ft4
80000834: 13 77 e8 00  	andi	a4, a6, 14
80000838: 13 67 17 00  	ori	a4, a4, 1
8000083c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000840: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000844: 53 00 42 22  	fmv.d	ft0, ft4
80000848: 13 77 fa 00  	andi	a4, s4, 15
8000084c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000850: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000854: 53 00 42 22  	fmv.d	ft0, ft4
80000858: 13 f7 c8 00  	andi	a4, a7, 12
8000085c: 13 67 17 00  	ori	a4, a4, 1
80000860: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000864: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000868: 53 00 42 22  	fmv.d	ft0, ft4
8000086c: 13 f7 fa 00  	andi	a4, s5, 15
80000870: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000874: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000878: 53 00 42 22  	fmv.d	ft0, ft4
8000087c: 13 77 e3 00  	andi	a4, t1, 14
80000880: 13 67 17 00  	ori	a4, a4, 1
80000884: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000888: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000088c: 53 00 42 22  	fmv.d	ft0, ft4
80000890: 13 77 fb 00  	andi	a4, s6, 15
80000894: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000898: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000089c: 53 00 42 22  	fmv.d	ft0, ft4
800008a0: 13 f7 83 00  	andi	a4, t2, 8
800008a4: 13 67 17 00  	ori	a4, a4, 1
800008a8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008ac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b0: 53 00 42 22  	fmv.d	ft0, ft4
800008b4: 13 f7 f7 00  	andi	a4, a5, 15
800008b8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c0: 53 00 42 22  	fmv.d	ft0, ft4
800008c4: 13 77 ee 00  	andi	a4, t3, 14
800008c8: 13 67 17 00  	ori	a4, a4, 1
800008cc: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008d0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d4: 53 00 42 22  	fmv.d	ft0, ft4
800008d8: 13 f7 f4 00  	andi	a4, s1, 15
800008dc: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008e0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e4: 53 00 42 22  	fmv.d	ft0, ft4
800008e8: 13 f7 ce 00  	andi	a4, t4, 12
800008ec: 13 67 17 00  	ori	a4, a4, 1
800008f0: 53 02 07 d2  	fcvt.d.w	ft4, a4
800008f4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f8: 53 00 42 22  	fmv.d	ft0, ft4
800008fc: 13 77 f4 00  	andi	a4, s0, 15
80000900: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000904: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000908: 53 00 42 22  	fmv.d	ft0, ft4
8000090c: 13 77 ef 00  	andi	a4, t5, 14
80000910: 13 67 17 00  	ori	a4, a4, 1
80000914: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000918: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000091c: 53 00 42 22  	fmv.d	ft0, ft4
80000920: 13 77 f5 00  	andi	a4, a0, 15
80000924: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000928: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000092c: 53 00 42 22  	fmv.d	ft0, ft4
80000930: 53 80 31 22  	fmv.d	ft0, ft3
80000934: 13 f7 f5 00  	andi	a4, a1, 15
80000938: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000093c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000940: 53 00 42 22  	fmv.d	ft0, ft4
80000944: 13 f7 ef 00  	andi	a4, t6, 14
80000948: 13 67 17 00  	ori	a4, a4, 1
8000094c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000950: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000954: 53 00 42 22  	fmv.d	ft0, ft4
80000958: 13 77 f6 00  	andi	a4, a2, 15
8000095c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000960: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000964: 53 00 42 22  	fmv.d	ft0, ft4
80000968: 13 77 c9 00  	andi	a4, s2, 12
8000096c: 13 67 17 00  	ori	a4, a4, 1
80000970: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000974: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000978: 53 00 42 22  	fmv.d	ft0, ft4
8000097c: 13 f7 f6 00  	andi	a4, a3, 15
80000980: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000984: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000988: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
8000098c: 93 86 56 01  	addi	a3, a3, 21
80000990: 13 09 49 01  	addi	s2, s2, 20
80000994: 13 06 36 01  	addi	a2, a2, 19
80000998: 93 8f 2f 01  	addi	t6, t6, 18
8000099c: 93 85 15 01  	addi	a1, a1, 17
800009a0: 13 05 f5 00  	addi	a0, a0, 15
800009a4: 13 0f ef 00  	addi	t5, t5, 14
800009a8: 13 04 d4 00  	addi	s0, s0, 13
800009ac: 93 8e ce 00  	addi	t4, t4, 12
800009b0: 93 84 b4 00  	addi	s1, s1, 11
800009b4: 13 0e ae 00  	addi	t3, t3, 10
800009b8: 93 87 97 00  	addi	a5, a5, 9
800009bc: 93 83 83 00  	addi	t2, t2, 8
800009c0: 13 0b 7b 00  	addi	s6, s6, 7
800009c4: 13 03 63 00  	addi	t1, t1, 6
800009c8: 93 8a 5a 00  	addi	s5, s5, 5
800009cc: 93 88 48 00  	addi	a7, a7, 4
800009d0: 13 0a 3a 00  	addi	s4, s4, 3
800009d4: 13 08 28 00  	addi	a6, a6, 2
800009d8: 93 89 19 00  	addi	s3, s3, 1
800009dc: e3 92 56 e4  	bne	a3, t0, 0x80000820 <.LBB0_87+0xa8>
800009e0: 73 f0 00 7c  	csrci	1984, 1
800009e4: 6f 00 80 22  	j	0x80000c0c <.LBB0_87+0x494>
800009e8: 93 02 00 00  	mv	t0, zero
800009ec: 13 0e 00 00  	mv	t3, zero
800009f0: 93 0e 00 00  	mv	t4, zero
800009f4: 13 0f 00 00  	mv	t5, zero
800009f8: 93 0f 00 00  	mv	t6, zero
800009fc: 13 09 00 00  	mv	s2, zero
80000a00: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a04: 93 85 87 05  	addi	a1, a5, 88
80000a08: 13 0a 10 00  	addi	s4, zero, 1
80000a0c: 37 03 b0 3f  	lui	t1, 260864
80000a10: 07 30 05 00  	fld	ft0, 0(a0)
80000a14: 93 03 10 15  	addi	t2, zero, 337
80000a18: 93 0a 10 00  	addi	s5, zero, 1
80000a1c: 13 0b 10 00  	addi	s6, zero, 1
80000a20: 93 0b 10 00  	addi	s7, zero, 1
80000a24: 13 0c 10 00  	addi	s8, zero, 1
80000a28: 13 04 10 00  	addi	s0, zero, 1
80000a2c: 13 05 10 00  	addi	a0, zero, 1
80000a30: 13 06 10 00  	addi	a2, zero, 1
80000a34: 93 06 10 00  	addi	a3, zero, 1
80000a38: 13 07 10 00  	addi	a4, zero, 1
80000a3c: 93 07 10 00  	addi	a5, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / ni;
80000a40: 23 a6 65 fa  	sw	t1, -84(a1)
80000a44: 23 a4 05 fa  	sw	zero, -88(a1)
80000a48: 93 f4 f7 00  	andi	s1, a5, 15
80000a4c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a50: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a54: 27 b8 15 fa  	fsd	ft1, -80(a1)
80000a58: 93 74 e9 00  	andi	s1, s2, 14
80000a5c: 93 e4 14 00  	ori	s1, s1, 1
80000a60: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a64: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a68: 27 bc 15 fa  	fsd	ft1, -72(a1)
80000a6c: 93 74 f6 00  	andi	s1, a2, 15
80000a70: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a74: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a78: 27 b0 15 fc  	fsd	ft1, -64(a1)
80000a7c: 93 74 cf 00  	andi	s1, t5, 12
80000a80: 93 e4 14 00  	ori	s1, s1, 1
80000a84: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a88: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a8c: 27 b4 15 fc  	fsd	ft1, -56(a1)
80000a90: 93 74 f4 00  	andi	s1, s0, 15
80000a94: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000a98: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a9c: 27 b8 15 fc  	fsd	ft1, -48(a1)
80000aa0: 93 f4 ee 00  	andi	s1, t4, 14
80000aa4: 93 e4 14 00  	ori	s1, s1, 1
80000aa8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000aac: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ab0: 27 bc 15 fc  	fsd	ft1, -40(a1)
80000ab4: 93 f4 fb 00  	andi	s1, s7, 15
80000ab8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000abc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ac0: 27 b0 15 fe  	fsd	ft1, -32(a1)
80000ac4: 93 f4 82 00  	andi	s1, t0, 8
80000ac8: 93 e4 14 00  	ori	s1, s1, 1
80000acc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ad0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ad4: 27 b4 15 fe  	fsd	ft1, -24(a1)
80000ad8: 93 f4 fa 00  	andi	s1, s5, 15
80000adc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000ae0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ae4: 27 b8 15 fe  	fsd	ft1, -16(a1)
80000ae8: 93 74 e8 00  	andi	s1, a6, 14
80000aec: 93 e4 14 00  	ori	s1, s1, 1
80000af0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000af4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000af8: 27 bc 15 fe  	fsd	ft1, -8(a1)
80000afc: 93 74 fa 00  	andi	s1, s4, 15
80000b00: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b04: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b08: 27 b0 15 00  	fsd	ft1, 0(a1)
80000b0c: 93 f4 c8 00  	andi	s1, a7, 12
80000b10: 93 e4 14 00  	ori	s1, s1, 1
80000b14: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b18: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b1c: 27 b4 15 00  	fsd	ft1, 8(a1)
80000b20: 93 74 fb 00  	andi	s1, s6, 15
80000b24: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b28: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b2c: 27 b8 15 00  	fsd	ft1, 16(a1)
80000b30: 93 74 ee 00  	andi	s1, t3, 14
80000b34: 93 e4 14 00  	ori	s1, s1, 1
80000b38: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b3c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b40: 27 bc 15 00  	fsd	ft1, 24(a1)
80000b44: 93 74 fc 00  	andi	s1, s8, 15
80000b48: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b4c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b50: 27 b0 15 02  	fsd	ft1, 32(a1)
80000b54: 23 a6 65 02  	sw	t1, 44(a1)
80000b58: 23 a4 05 02  	sw	zero, 40(a1)
80000b5c: 93 74 f5 00  	andi	s1, a0, 15
80000b60: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b64: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b68: 27 b8 15 02  	fsd	ft1, 48(a1)
80000b6c: 93 f4 ef 00  	andi	s1, t6, 14
80000b70: 93 e4 14 00  	ori	s1, s1, 1
80000b74: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b78: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b7c: 27 bc 15 02  	fsd	ft1, 56(a1)
80000b80: 93 f4 f6 00  	andi	s1, a3, 15
80000b84: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b88: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b8c: 27 b0 15 04  	fsd	ft1, 64(a1)
80000b90: 93 f4 c9 00  	andi	s1, s3, 12
80000b94: 93 e4 14 00  	ori	s1, s1, 1
80000b98: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000b9c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ba0: 27 b4 15 04  	fsd	ft1, 72(a1)
80000ba4: 93 74 f7 00  	andi	s1, a4, 15
80000ba8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80000bac: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000bb0: 27 b8 15 04  	fsd	ft1, 80(a1)
;   for (i = 0; i < ni; i++)
80000bb4: 93 87 17 00  	addi	a5, a5, 1
80000bb8: 13 07 57 01  	addi	a4, a4, 21
80000bbc: 93 89 49 01  	addi	s3, s3, 20
80000bc0: 13 09 29 00  	addi	s2, s2, 2
80000bc4: 93 86 36 01  	addi	a3, a3, 19
80000bc8: 13 06 36 00  	addi	a2, a2, 3
80000bcc: 93 8f 2f 01  	addi	t6, t6, 18
80000bd0: 13 0f 4f 00  	addi	t5, t5, 4
80000bd4: 13 05 15 01  	addi	a0, a0, 17
80000bd8: 13 04 54 00  	addi	s0, s0, 5
80000bdc: 93 8e 6e 00  	addi	t4, t4, 6
80000be0: 13 0c fc 00  	addi	s8, s8, 15
80000be4: 93 8b 7b 00  	addi	s7, s7, 7
80000be8: 13 0e ee 00  	addi	t3, t3, 14
80000bec: 93 82 82 00  	addi	t0, t0, 8
80000bf0: 13 0b db 00  	addi	s6, s6, 13
80000bf4: 93 8a 9a 00  	addi	s5, s5, 9
80000bf8: 93 88 c8 00  	addi	a7, a7, 12
80000bfc: 93 85 05 0b  	addi	a1, a1, 176
80000c00: 13 0a ba 00  	addi	s4, s4, 11
80000c04: 13 08 a8 00  	addi	a6, a6, 10
80000c08: e3 1c 77 e2  	bne	a4, t2, 0x80000a40 <.LBB0_87+0x2c8>
;   for (i = 0; i < nk; i++)
80000c0c: 13 d5 40 01  	srli	a0, ra, 20
80000c10: 33 35 a0 00  	snez	a0, a0
80000c14: b7 f5 11 00  	lui	a1, 287
80000c18: 93 85 95 3a  	addi	a1, a1, 937
80000c1c: b3 b5 b0 00  	sltu	a1, ra, a1
80000c20: 33 75 b5 00  	and	a0, a0, a1

80000c24 <.LBB0_88>:
80000c24: 97 5a 00 00  	auipc	s5, 5
80000c28: 93 8a ca 9b  	addi	s5, s5, -1604
80000c2c: 23 26 a1 00  	sw	a0, 12(sp)
80000c30: 13 08 00 00  	mv	a6, zero
80000c34: 93 08 00 00  	mv	a7, zero
80000c38: 93 02 00 00  	mv	t0, zero
80000c3c: 13 03 00 00  	mv	t1, zero
80000c40: 93 03 00 00  	mv	t2, zero
80000c44: 13 0e 00 00  	mv	t3, zero
80000c48: 93 0e 00 00  	mv	t4, zero
80000c4c: 13 0f 00 00  	mv	t5, zero
80000c50: 93 0f 00 00  	mv	t6, zero
80000c54: 13 09 00 00  	mv	s2, zero
80000c58: 63 04 05 2a  	beqz	a0, 0x80000f00 <.LBB0_88+0x2dc>
80000c5c: 13 0a 00 00  	mv	s4, zero
80000c60: 13 0b 00 00  	mv	s6, zero
80000c64: 13 07 00 00  	mv	a4, zero
80000c68: 93 07 00 00  	mv	a5, zero
80000c6c: 93 04 00 00  	mv	s1, zero
80000c70: 13 04 00 00  	mv	s0, zero
80000c74: 13 05 00 00  	mv	a0, zero
80000c78: 93 05 80 00  	addi	a1, zero, 8
80000c7c: 93 09 10 01  	addi	s3, zero, 17
;   for (i = 0; i < nk; i++)
80000c80: 13 06 00 04  	addi	a2, zero, 64
80000c84: ab a0 c9 00  	scfgw	s3, a2
80000c88: 13 06 00 0c  	addi	a2, zero, 192
80000c8c: ab a0 c5 00  	scfgw	a1, a2
80000c90: 93 09 50 01  	addi	s3, zero, 21
80000c94: 13 06 00 06  	addi	a2, zero, 96
80000c98: ab a0 c9 00  	scfgw	s3, a2
80000c9c: 13 06 00 0e  	addi	a2, zero, 224
80000ca0: ab a0 c5 00  	scfgw	a1, a2
80000ca4: 93 05 00 02  	addi	a1, zero, 32
80000ca8: ab 20 b0 00  	scfgw	zero, a1
80000cac: 2b a0 00 3a  	scfgwi	ra, 928
80000cb0: 73 e0 00 7c  	csrsi	1984, 1
80000cb4: b7 95 e3 38  	lui	a1, 233017
80000cb8: 93 85 95 e3  	addi	a1, a1, -455
80000cbc: 93 09 e0 fe  	addi	s3, zero, -18
80000cc0: 87 b1 0a 00  	fld	ft3, 0(s5)
80000cc4: 13 06 20 01  	addi	a2, zero, 18
80000cc8: 53 02 00 d2  	fcvt.d.w	ft4, zero
80000ccc: 93 0a 60 17  	addi	s5, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000cd0: b3 36 b5 02  	mulhu	a3, a0, a1
80000cd4: 93 d6 26 00  	srli	a3, a3, 2
80000cd8: b3 86 c6 02  	mul	a3, a3, a2
80000cdc: b3 06 d5 40  	sub	a3, a0, a3
80000ce0: d3 82 06 d2  	fcvt.d.w	ft5, a3
80000ce4: b3 36 b8 02  	mulhu	a3, a6, a1
80000ce8: 93 d6 26 00  	srli	a3, a3, 2
80000cec: b3 86 c6 02  	mul	a3, a3, a2
80000cf0: b3 06 d8 40  	sub	a3, a6, a3
80000cf4: 53 83 06 d2  	fcvt.d.w	ft6, a3
80000cf8: b3 b6 b8 02  	mulhu	a3, a7, a1
80000cfc: 93 d6 26 00  	srli	a3, a3, 2
80000d00: b3 86 c6 02  	mul	a3, a3, a2
80000d04: b3 86 d8 40  	sub	a3, a7, a3
80000d08: d3 83 06 d2  	fcvt.d.w	ft7, a3
80000d0c: b3 b6 b2 02  	mulhu	a3, t0, a1
80000d10: 93 d6 26 00  	srli	a3, a3, 2
80000d14: b3 86 c6 02  	mul	a3, a3, a2
80000d18: b3 86 d2 40  	sub	a3, t0, a3
80000d1c: 53 85 06 d2  	fcvt.d.w	fa0, a3
80000d20: b3 36 b3 02  	mulhu	a3, t1, a1
80000d24: 93 d6 26 00  	srli	a3, a3, 2
80000d28: b3 86 c6 02  	mul	a3, a3, a2
80000d2c: b3 06 d3 40  	sub	a3, t1, a3
80000d30: d3 85 06 d2  	fcvt.d.w	fa1, a3
80000d34: b3 b6 b3 02  	mulhu	a3, t2, a1
80000d38: 93 d6 26 00  	srli	a3, a3, 2
80000d3c: b3 86 c6 02  	mul	a3, a3, a2
80000d40: b3 86 d3 40  	sub	a3, t2, a3
80000d44: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d48: b3 36 be 02  	mulhu	a3, t3, a1
80000d4c: 93 d6 26 00  	srli	a3, a3, 2
80000d50: b3 86 c6 02  	mul	a3, a3, a2
80000d54: b3 06 de 40  	sub	a3, t3, a3
80000d58: d3 86 06 d2  	fcvt.d.w	fa3, a3
80000d5c: b3 b6 be 02  	mulhu	a3, t4, a1
80000d60: 93 d6 26 00  	srli	a3, a3, 2
80000d64: b3 86 c6 02  	mul	a3, a3, a2
80000d68: b3 86 de 40  	sub	a3, t4, a3
80000d6c: 53 87 06 d2  	fcvt.d.w	fa4, a3
80000d70: b3 36 bf 02  	mulhu	a3, t5, a1
80000d74: 93 d6 26 00  	srli	a3, a3, 2
80000d78: b3 86 c6 02  	mul	a3, a3, a2
80000d7c: b3 06 df 40  	sub	a3, t5, a3
80000d80: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000d84: b3 b6 bf 02  	mulhu	a3, t6, a1
80000d88: 93 d6 26 00  	srli	a3, a3, 2
80000d8c: b3 86 c6 02  	mul	a3, a3, a2
80000d90: b3 86 df 40  	sub	a3, t6, a3
80000d94: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000d98: b3 36 b9 02  	mulhu	a3, s2, a1
80000d9c: 93 d6 26 00  	srli	a3, a3, 2
80000da0: b3 86 c6 02  	mul	a3, a3, a2
80000da4: b3 06 d9 40  	sub	a3, s2, a3
80000da8: d3 88 06 d2  	fcvt.d.w	fa7, a3
80000dac: b3 36 ba 02  	mulhu	a3, s4, a1
80000db0: 93 d6 26 00  	srli	a3, a3, 2
80000db4: b3 86 c6 02  	mul	a3, a3, a2
80000db8: b3 06 da 40  	sub	a3, s4, a3
80000dbc: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80000dc0: b3 36 bb 02  	mulhu	a3, s6, a1
80000dc4: 93 d6 26 00  	srli	a3, a3, 2
80000dc8: b3 86 c6 02  	mul	a3, a3, a2
80000dcc: b3 06 db 40  	sub	a3, s6, a3
80000dd0: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80000dd4: b3 36 b7 02  	mulhu	a3, a4, a1
80000dd8: 93 d6 26 00  	srli	a3, a3, 2
80000ddc: b3 86 c6 02  	mul	a3, a3, a2
80000de0: b3 06 d7 40  	sub	a3, a4, a3
80000de4: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80000de8: b3 b6 b7 02  	mulhu	a3, a5, a1
80000dec: 93 d6 26 00  	srli	a3, a3, 2
80000df0: b3 86 c6 02  	mul	a3, a3, a2
80000df4: b3 86 d7 40  	sub	a3, a5, a3
80000df8: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80000dfc: b3 b6 b4 02  	mulhu	a3, s1, a1
80000e00: 93 d6 26 00  	srli	a3, a3, 2
80000e04: b3 86 c6 02  	mul	a3, a3, a2
80000e08: b3 86 d4 40  	sub	a3, s1, a3
80000e0c: 53 84 06 d2  	fcvt.d.w	fs0, a3
80000e10: b3 36 b4 02  	mulhu	a3, s0, a1
80000e14: 93 d6 26 00  	srli	a3, a3, 2
80000e18: b3 86 36 03  	mul	a3, a3, s3
80000e1c: b3 06 d4 00  	add	a3, s0, a3
80000e20: d3 84 06 d2  	fcvt.d.w	fs1, a3
80000e24: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e28: 53 80 52 22  	fmv.d	ft0, ft5
80000e2c: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e30: 53 80 52 22  	fmv.d	ft0, ft5
80000e34: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e38: 53 80 52 22  	fmv.d	ft0, ft5
80000e3c: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e40: 53 80 52 22  	fmv.d	ft0, ft5
80000e44: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e48: 53 80 52 22  	fmv.d	ft0, ft5
80000e4c: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e50: 53 80 52 22  	fmv.d	ft0, ft5
80000e54: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e58: 53 80 52 22  	fmv.d	ft0, ft5
80000e5c: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e60: 53 80 52 22  	fmv.d	ft0, ft5
80000e64: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e68: 53 80 52 22  	fmv.d	ft0, ft5
80000e6c: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e70: 53 80 52 22  	fmv.d	ft0, ft5
80000e74: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e78: 53 80 52 22  	fmv.d	ft0, ft5
80000e7c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e80: 53 80 52 22  	fmv.d	ft0, ft5
80000e84: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000e88: 53 80 52 22  	fmv.d	ft0, ft5
80000e8c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000e90: 53 80 52 22  	fmv.d	ft0, ft5
80000e94: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000e98: 53 80 52 22  	fmv.d	ft0, ft5
80000e9c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000ea0: 53 80 52 22  	fmv.d	ft0, ft5
80000ea4: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000ea8: 53 80 52 22  	fmv.d	ft0, ft5
80000eac: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000eb0: 13 05 15 00  	addi	a0, a0, 1
80000eb4: 13 04 14 01  	addi	s0, s0, 17
80000eb8: 93 84 04 01  	addi	s1, s1, 16
80000ebc: 93 87 f7 00  	addi	a5, a5, 15
80000ec0: 13 07 e7 00  	addi	a4, a4, 14
80000ec4: 13 0b db 00  	addi	s6, s6, 13
80000ec8: 13 0a ca 00  	addi	s4, s4, 12
80000ecc: 13 09 b9 00  	addi	s2, s2, 11
80000ed0: 93 8f af 00  	addi	t6, t6, 10
80000ed4: 13 0f 9f 00  	addi	t5, t5, 9
80000ed8: 93 8e 8e 00  	addi	t4, t4, 8
80000edc: 13 0e 7e 00  	addi	t3, t3, 7
80000ee0: 93 83 63 00  	addi	t2, t2, 6
80000ee4: 13 03 53 00  	addi	t1, t1, 5
80000ee8: 93 82 42 00  	addi	t0, t0, 4
80000eec: 93 88 38 00  	addi	a7, a7, 3
80000ef0: 13 08 28 00  	addi	a6, a6, 2
80000ef4: e3 1e 54 dd  	bne	s0, s5, 0x80000cd0 <.LBB0_88+0xac>
80000ef8: 73 f0 00 7c  	csrci	1984, 1
80000efc: 6f 00 c0 26  	j	0x80001168 <.LBB0_88+0x544>
80000f00: 93 09 00 00  	mv	s3, zero
80000f04: 13 0a 00 00  	mv	s4, zero
80000f08: 93 0b 00 00  	mv	s7, zero
80000f0c: 93 07 00 00  	mv	a5, zero
80000f10: 93 04 00 00  	mv	s1, zero
80000f14: 13 04 00 00  	mv	s0, zero
80000f18: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nk; i++)
80000f1c: 93 85 80 04  	addi	a1, ra, 72
80000f20: 37 96 e3 38  	lui	a2, 233017
80000f24: 13 06 96 e3  	addi	a2, a2, -455
80000f28: 07 b0 0a 00  	fld	ft0, 0(s5)
80000f2c: 93 06 20 01  	addi	a3, zero, 18
80000f30: 93 0a e0 fe  	addi	s5, zero, -18
80000f34: 13 0b 60 17  	addi	s6, zero, 374
;       B[i][j] = (double) (i*(j+1) % nj) / nj;
80000f38: 33 37 c5 02  	mulhu	a4, a0, a2
80000f3c: 13 57 27 00  	srli	a4, a4, 2
80000f40: 33 07 d7 02  	mul	a4, a4, a3
80000f44: 33 07 e5 40  	sub	a4, a0, a4
80000f48: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000f4c: 33 b7 c4 02  	mulhu	a4, s1, a2
80000f50: 13 57 27 00  	srli	a4, a4, 2
80000f54: 33 07 d7 02  	mul	a4, a4, a3
80000f58: 33 87 e4 40  	sub	a4, s1, a4
80000f5c: 53 01 07 d2  	fcvt.d.w	ft2, a4
80000f60: 33 b7 c7 02  	mulhu	a4, a5, a2
80000f64: 13 57 27 00  	srli	a4, a4, 2
80000f68: 33 07 d7 02  	mul	a4, a4, a3
80000f6c: 33 87 e7 40  	sub	a4, a5, a4
80000f70: d3 01 07 d2  	fcvt.d.w	ft3, a4
80000f74: 33 37 ca 02  	mulhu	a4, s4, a2
80000f78: 13 57 27 00  	srli	a4, a4, 2
80000f7c: 33 07 d7 02  	mul	a4, a4, a3
80000f80: 33 07 ea 40  	sub	a4, s4, a4
80000f84: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000f88: 33 37 c9 02  	mulhu	a4, s2, a2
80000f8c: 13 57 27 00  	srli	a4, a4, 2
80000f90: 33 07 d7 02  	mul	a4, a4, a3
80000f94: 33 07 e9 40  	sub	a4, s2, a4
80000f98: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000f9c: 33 37 cf 02  	mulhu	a4, t5, a2
80000fa0: 13 57 27 00  	srli	a4, a4, 2
80000fa4: 33 07 d7 02  	mul	a4, a4, a3
80000fa8: 33 07 ef 40  	sub	a4, t5, a4
80000fac: 53 03 07 d2  	fcvt.d.w	ft6, a4
80000fb0: 33 37 ce 02  	mulhu	a4, t3, a2
80000fb4: 13 57 27 00  	srli	a4, a4, 2
80000fb8: 33 07 d7 02  	mul	a4, a4, a3
80000fbc: 33 07 ee 40  	sub	a4, t3, a4
80000fc0: d3 03 07 d2  	fcvt.d.w	ft7, a4
80000fc4: 33 37 c3 02  	mulhu	a4, t1, a2
80000fc8: 13 57 27 00  	srli	a4, a4, 2
80000fcc: 33 07 d7 02  	mul	a4, a4, a3
80000fd0: 33 07 e3 40  	sub	a4, t1, a4
80000fd4: 53 05 07 d2  	fcvt.d.w	fa0, a4
80000fd8: 33 37 c8 02  	mulhu	a4, a6, a2
80000fdc: 13 57 27 00  	srli	a4, a4, 2
80000fe0: 33 07 d7 02  	mul	a4, a4, a3
80000fe4: 33 07 e8 40  	sub	a4, a6, a4
80000fe8: d3 05 07 d2  	fcvt.d.w	fa1, a4
80000fec: 33 b7 c8 02  	mulhu	a4, a7, a2
80000ff0: 13 57 27 00  	srli	a4, a4, 2
80000ff4: 33 07 d7 02  	mul	a4, a4, a3
80000ff8: 33 87 e8 40  	sub	a4, a7, a4
80000ffc: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001000: 33 b7 c2 02  	mulhu	a4, t0, a2
80001004: 13 57 27 00  	srli	a4, a4, 2
80001008: 33 07 d7 02  	mul	a4, a4, a3
8000100c: 33 87 e2 40  	sub	a4, t0, a4
80001010: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001014: 33 b7 c3 02  	mulhu	a4, t2, a2
80001018: 13 57 27 00  	srli	a4, a4, 2
8000101c: 33 07 d7 02  	mul	a4, a4, a3
80001020: 33 87 e3 40  	sub	a4, t2, a4
80001024: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001028: 33 b7 ce 02  	mulhu	a4, t4, a2
8000102c: 13 57 27 00  	srli	a4, a4, 2
80001030: 33 07 d7 02  	mul	a4, a4, a3
80001034: 33 87 ee 40  	sub	a4, t4, a4
80001038: d3 07 07 d2  	fcvt.d.w	fa5, a4
8000103c: 33 b7 cf 02  	mulhu	a4, t6, a2
80001040: 13 57 27 00  	srli	a4, a4, 2
80001044: 33 07 d7 02  	mul	a4, a4, a3
80001048: 33 87 ef 40  	sub	a4, t6, a4
8000104c: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001050: 33 b7 c9 02  	mulhu	a4, s3, a2
80001054: 13 57 27 00  	srli	a4, a4, 2
80001058: 33 07 d7 02  	mul	a4, a4, a3
8000105c: 33 87 e9 40  	sub	a4, s3, a4
80001060: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001064: 33 b7 cb 02  	mulhu	a4, s7, a2
80001068: 13 57 27 00  	srli	a4, a4, 2
8000106c: 33 07 d7 02  	mul	a4, a4, a3
80001070: 33 87 eb 40  	sub	a4, s7, a4
80001074: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001078: 33 37 c4 02  	mulhu	a4, s0, a2
8000107c: 13 57 27 00  	srli	a4, a4, 2
80001080: 33 07 57 03  	mul	a4, a4, s5
80001084: 33 07 e4 00  	add	a4, s0, a4
80001088: d3 0e 07 d2  	fcvt.d.w	ft9, a4
8000108c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001090: 27 bc 15 fa  	fsd	ft1, -72(a1)
80001094: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001098: 27 b0 15 fc  	fsd	ft1, -64(a1)
8000109c: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800010a0: 27 b4 15 fc  	fsd	ft1, -56(a1)
800010a4: d3 70 02 12  	fmul.d	ft1, ft4, ft0
800010a8: 27 b8 15 fc  	fsd	ft1, -48(a1)
800010ac: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
800010b0: 27 bc 15 fc  	fsd	ft1, -40(a1)
800010b4: d3 70 03 12  	fmul.d	ft1, ft6, ft0
800010b8: 27 b0 15 fe  	fsd	ft1, -32(a1)
800010bc: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
800010c0: 27 b4 15 fe  	fsd	ft1, -24(a1)
800010c4: d3 70 05 12  	fmul.d	ft1, fa0, ft0
800010c8: 27 b8 15 fe  	fsd	ft1, -16(a1)
800010cc: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
800010d0: 27 bc 15 fe  	fsd	ft1, -8(a1)
800010d4: d3 70 06 12  	fmul.d	ft1, fa2, ft0
800010d8: 27 b0 15 00  	fsd	ft1, 0(a1)
800010dc: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
800010e0: 27 b4 15 00  	fsd	ft1, 8(a1)
800010e4: d3 70 07 12  	fmul.d	ft1, fa4, ft0
800010e8: 27 b8 15 00  	fsd	ft1, 16(a1)
800010ec: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
800010f0: 27 bc 15 00  	fsd	ft1, 24(a1)
800010f4: d3 70 08 12  	fmul.d	ft1, fa6, ft0
800010f8: 27 b0 15 02  	fsd	ft1, 32(a1)
800010fc: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80001100: 27 b4 15 02  	fsd	ft1, 40(a1)
80001104: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80001108: 27 b8 15 02  	fsd	ft1, 48(a1)
8000110c: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80001110: 27 bc 15 02  	fsd	ft1, 56(a1)
80001114: 23 a2 05 04  	sw	zero, 68(a1)
80001118: 23 a0 05 04  	sw	zero, 64(a1)
;   for (i = 0; i < nk; i++)
8000111c: 13 05 15 00  	addi	a0, a0, 1
80001120: 13 04 14 01  	addi	s0, s0, 17
80001124: 93 84 24 00  	addi	s1, s1, 2
80001128: 93 87 37 00  	addi	a5, a5, 3
8000112c: 93 8b 0b 01  	addi	s7, s7, 16
80001130: 13 0a 4a 00  	addi	s4, s4, 4
80001134: 93 89 f9 00  	addi	s3, s3, 15
80001138: 13 09 59 00  	addi	s2, s2, 5
8000113c: 93 8f ef 00  	addi	t6, t6, 14
80001140: 13 0f 6f 00  	addi	t5, t5, 6
80001144: 93 8e de 00  	addi	t4, t4, 13
80001148: 13 0e 7e 00  	addi	t3, t3, 7
8000114c: 93 83 c3 00  	addi	t2, t2, 12
80001150: 13 03 83 00  	addi	t1, t1, 8
80001154: 93 82 b2 00  	addi	t0, t0, 11
80001158: 93 85 05 09  	addi	a1, a1, 144
8000115c: 93 88 a8 00  	addi	a7, a7, 10
80001160: 13 08 98 00  	addi	a6, a6, 9
80001164: e3 1a 64 dd  	bne	s0, s6, 0x80000f38 <.LBB0_88+0x314>
80001168: 23 24 11 02  	sw	ra, 40(sp)
8000116c: 23 2c a1 01  	sw	s10, 24(sp)
80001170: 23 2e 91 01  	sw	s9, 28(sp)
;   for (i = 0; i < nj; i++)
80001174: 13 d5 4d 01  	srli	a0, s11, 20
80001178: 33 35 a0 00  	snez	a0, a0
8000117c: b7 f5 11 00  	lui	a1, 287
80001180: 93 85 95 28  	addi	a1, a1, 649
80001184: b3 b5 bd 00  	sltu	a1, s11, a1
80001188: b3 75 b5 00  	and	a1, a0, a1

8000118c <.LBB0_89>:
8000118c: 17 48 00 00  	auipc	a6, 4
80001190: 13 08 c8 45  	addi	a6, a6, 1116
80001194: 23 28 b1 03  	sw	s11, 48(sp)
80001198: 23 28 b1 00  	sw	a1, 16(sp)
8000119c: 63 86 05 40  	beqz	a1, 0x800015a8 <.LBB0_89+0x41c>
800011a0: 13 04 00 00  	mv	s0, zero
800011a4: 13 06 00 00  	mv	a2, zero
800011a8: 13 07 00 00  	mv	a4, zero
800011ac: 93 04 00 00  	mv	s1, zero
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
800011e8: 2b a0 0d 3a  	scfgwi	s11, 928
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
80001248: 93 09 10 00  	addi	s3, zero, 1
8000124c: 93 03 10 00  	addi	t2, zero, 1
80001250: 13 0e 10 00  	addi	t3, zero, 1
80001254: 13 03 10 00  	addi	t1, zero, 1
80001258: 93 0e 10 00  	addi	t4, zero, 1
8000125c: 13 0f 10 00  	addi	t5, zero, 1
80001260: 93 0f 10 00  	addi	t6, zero, 1
80001264: 13 09 10 00  	addi	s2, zero, 1
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
800012b8: 33 34 b7 02  	mulhu	s0, a4, a1
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
800012e4: 33 b4 b4 02  	mulhu	s0, s1, a1
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
800013b4: 33 b4 b9 02  	mulhu	s0, s3, a1
800013b8: 13 54 44 00  	srli	s0, s0, 4
800013bc: 33 04 b4 03  	mul	s0, s0, s11
800013c0: 33 84 89 40  	sub	s0, s3, s0
800013c4: d3 0f 04 d2  	fcvt.d.w	ft11, s0
800013c8: 33 b4 b3 02  	mulhu	s0, t2, a1
800013cc: 13 54 44 00  	srli	s0, s0, 4
800013d0: 33 04 b4 03  	mul	s0, s0, s11
800013d4: 33 84 83 40  	sub	s0, t2, s0
800013d8: 53 04 04 d2  	fcvt.d.w	fs0, s0
800013dc: 33 34 be 02  	mulhu	s0, t3, a1
800013e0: 13 54 44 00  	srli	s0, s0, 4
800013e4: 33 04 b4 03  	mul	s0, s0, s11
800013e8: 33 04 8e 40  	sub	s0, t3, s0
800013ec: d3 04 04 d2  	fcvt.d.w	fs1, s0
800013f0: 33 34 b3 02  	mulhu	s0, t1, a1
800013f4: 13 54 44 00  	srli	s0, s0, 4
800013f8: 33 04 b4 03  	mul	s0, s0, s11
800013fc: 33 04 83 40  	sub	s0, t1, s0
80001400: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001404: 33 b4 be 02  	mulhu	s0, t4, a1
80001408: 13 54 44 00  	srli	s0, s0, 4
8000140c: 33 04 b4 03  	mul	s0, s0, s11
80001410: 33 84 8e 40  	sub	s0, t4, s0
80001414: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001418: 33 34 bf 02  	mulhu	s0, t5, a1
8000141c: 13 54 44 00  	srli	s0, s0, 4
80001420: 33 04 b4 03  	mul	s0, s0, s11
80001424: 33 04 8f 40  	sub	s0, t5, s0
80001428: 53 0a 04 d2  	fcvt.d.w	fs4, s0
8000142c: 33 b4 bf 02  	mulhu	s0, t6, a1
80001430: 13 54 44 00  	srli	s0, s0, 4
80001434: 33 04 b4 03  	mul	s0, s0, s11
80001438: 33 84 8f 40  	sub	s0, t6, s0
8000143c: d3 0a 04 d2  	fcvt.d.w	fs5, s0
80001440: 33 34 b9 02  	mulhu	s0, s2, a1
80001444: 13 54 44 00  	srli	s0, s0, 4
80001448: 33 04 b4 03  	mul	s0, s0, s11
8000144c: 33 04 89 40  	sub	s0, s2, s0
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
80001514: 13 09 a9 01  	addi	s2, s2, 26
80001518: 93 8f 9f 01  	addi	t6, t6, 25
8000151c: 13 0f 7f 01  	addi	t5, t5, 23
80001520: 93 8e 6e 01  	addi	t4, t4, 22
80001524: 13 03 53 01  	addi	t1, t1, 21
80001528: 13 0e 4e 01  	addi	t3, t3, 20
8000152c: 93 83 33 01  	addi	t2, t2, 19
80001530: 93 89 29 01  	addi	s3, s3, 18
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
8000156c: 93 84 84 00  	addi	s1, s1, 8
80001570: 93 8a 7a 00  	addi	s5, s5, 7
80001574: 93 80 60 00  	addi	ra, ra, 6
80001578: 23 24 11 08  	sw	ra, 136(sp)
8000157c: 83 20 c1 07  	lw	ra, 124(sp)
80001580: 13 07 67 00  	addi	a4, a4, 6
80001584: 93 80 50 00  	addi	ra, ra, 5
80001588: 13 0a 4a 00  	addi	s4, s4, 4
8000158c: 13 06 46 00  	addi	a2, a2, 4
80001590: 93 87 37 00  	addi	a5, a5, 3
80001594: 13 04 34 00  	addi	s0, s0, 3
80001598: 93 06 50 1d  	addi	a3, zero, 469
8000159c: e3 16 d9 cc  	bne	s2, a3, 0x80001268 <.LBB0_89+0xdc>
800015a0: 73 f0 00 7c  	csrci	1984, 1
800015a4: 6f 00 c0 4d  	j	0x80001a80 <.LBB0_89+0x8f4>
800015a8: 13 0f 00 00  	mv	t5, zero
800015ac: 13 06 00 00  	mv	a2, zero
800015b0: 13 07 00 00  	mv	a4, zero
800015b4: 93 03 00 00  	mv	t2, zero
800015b8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
800015bc: 93 86 0d 06  	addi	a3, s11, 96
800015c0: 13 03 10 00  	addi	t1, zero, 1
800015c4: b7 b5 aa aa  	lui	a1, 699051
800015c8: 13 84 b5 aa  	addi	s0, a1, -1365
800015cc: 07 30 08 00  	fld	ft0, 0(a6)
800015d0: 37 55 a5 3f  	lui	a0, 260693
800015d4: 13 05 55 55  	addi	a0, a0, 1365
800015d8: 23 22 a1 02  	sw	a0, 36(sp)
800015dc: 37 55 55 55  	lui	a0, 349525
800015e0: 13 05 55 55  	addi	a0, a0, 1365
800015e4: 23 20 a1 02  	sw	a0, 32(sp)
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
80001698: 23 2c e1 03  	sw	t5, 56(sp)
8000169c: 83 27 41 08  	lw	a5, 132(sp)
800016a0: b3 b4 87 02  	mulhu	s1, a5, s0
800016a4: 93 d4 44 00  	srli	s1, s1, 4
800016a8: 13 05 80 01  	addi	a0, zero, 24
800016ac: b3 84 a4 02  	mul	s1, s1, a0
800016b0: 13 08 06 00  	mv	a6, a2
800016b4: 13 86 03 00  	mv	a2, t2
800016b8: 83 27 81 08  	lw	a5, 136(sp)
800016bc: b3 83 97 40  	sub	t2, a5, s1
800016c0: d3 80 03 d2  	fcvt.d.w	ft1, t2
800016c4: 93 03 06 00  	mv	t2, a2
800016c8: 13 06 08 00  	mv	a2, a6
800016cc: 03 2f 81 03  	lw	t5, 56(sp)
800016d0: b3 b4 83 02  	mulhu	s1, t2, s0
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
8000178c: b3 34 8f 02  	mulhu	s1, t5, s0
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
800017b8: b3 34 83 02  	mulhu	s1, t1, s0
800017bc: 93 d4 44 00  	srli	s1, s1, 4
800017c0: b3 84 a4 02  	mul	s1, s1, a0
800017c4: b3 04 93 40  	sub	s1, t1, s1
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
80001844: 03 2e c1 05  	lw	t3, 92(sp)
80001848: b3 34 8e 02  	mulhu	s1, t3, s0
8000184c: 93 d4 44 00  	srli	s1, s1, 4
80001850: b3 84 a4 02  	mul	s1, s1, a0
80001854: b3 04 9e 40  	sub	s1, t3, s1
80001858: 53 8f 04 d2  	fcvt.d.w	ft10, s1
8000185c: 83 29 41 05  	lw	s3, 84(sp)
80001860: b3 b4 89 02  	mulhu	s1, s3, s0
80001864: 93 d4 44 00  	srli	s1, s1, 4
80001868: b3 84 a4 02  	mul	s1, s1, a0
8000186c: b3 84 99 40  	sub	s1, s3, s1
80001870: d3 8f 04 d2  	fcvt.d.w	ft11, s1
80001874: 83 2e 01 05  	lw	t4, 80(sp)
80001878: b3 b4 8e 02  	mulhu	s1, t4, s0
8000187c: 93 d4 44 00  	srli	s1, s1, 4
80001880: b3 84 a4 02  	mul	s1, s1, a0
80001884: b3 84 9e 40  	sub	s1, t4, s1
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
80001988: 13 05 03 00  	mv	a0, t1
8000198c: 03 23 41 02  	lw	t1, 36(sp)
80001990: 23 a6 66 04  	sw	t1, 76(a3)
80001994: 13 03 05 00  	mv	t1, a0
80001998: 03 25 01 02  	lw	a0, 32(sp)
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
800019c8: 93 83 43 00  	addi	t2, t2, 4
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
800019f8: 93 8e 6e 01  	addi	t4, t4, 22
800019fc: 23 28 d1 05  	sw	t4, 80(sp)
80001a00: 93 87 87 00  	addi	a5, a5, 8
80001a04: 23 20 f1 08  	sw	a5, 128(sp)
80001a08: 13 06 86 00  	addi	a2, a2, 8
80001a0c: 93 89 59 01  	addi	s3, s3, 21
80001a10: 23 2a 31 05  	sw	s3, 84(sp)
80001a14: 93 82 92 00  	addi	t0, t0, 9
80001a18: 23 2c 51 04  	sw	t0, 88(sp)
80001a1c: 13 0e 4e 01  	addi	t3, t3, 20
80001a20: 23 2e c1 05  	sw	t3, 92(sp)
80001a24: 93 80 a0 00  	addi	ra, ra, 10
80001a28: 23 20 11 06  	sw	ra, 96(sp)
80001a2c: 93 8d 3d 01  	addi	s11, s11, 19
80001a30: 23 22 b1 07  	sw	s11, 100(sp)
80001a34: 13 0d bd 00  	addi	s10, s10, 11
80001a38: 23 24 a1 07  	sw	s10, 104(sp)
80001a3c: 13 0c 2c 01  	addi	s8, s8, 18
80001a40: 23 26 81 07  	sw	s8, 108(sp)
80001a44: 93 85 c5 00  	addi	a1, a1, 12
80001a48: 13 0f cf 00  	addi	t5, t5, 12
80001a4c: 93 8b 1b 01  	addi	s7, s7, 17
80001a50: 23 28 71 07  	sw	s7, 112(sp)
80001a54: 13 0b db 00  	addi	s6, s6, 13
80001a58: 23 2a 61 07  	sw	s6, 116(sp)
80001a5c: 93 8a 0a 01  	addi	s5, s5, 16
80001a60: 23 2c 51 07  	sw	s5, 120(sp)
80001a64: 93 86 06 0c  	addi	a3, a3, 192
80001a68: 13 0a fa 00  	addi	s4, s4, 15
80001a6c: 23 2e 41 07  	sw	s4, 124(sp)
80001a70: 13 03 e3 00  	addi	t1, t1, 14
80001a74: 13 05 50 1d  	addi	a0, zero, 469
80001a78: 23 2e 11 03  	sw	a7, 60(sp)
80001a7c: e3 9a a8 c0  	bne	a7, a0, 0x80001690 <.LBB0_89+0x504>
80001a80: 83 20 c1 01  	lw	ra, 28(sp)
;   for (i = 0; i < ni; i++)
80001a84: 13 d5 40 01  	srli	a0, ra, 20
80001a88: 33 35 a0 00  	snez	a0, a0
80001a8c: b7 f5 11 00  	lui	a1, 287
80001a90: 93 85 95 40  	addi	a1, a1, 1033
80001a94: b3 b5 b0 00  	sltu	a1, ra, a1
80001a98: 33 75 b5 00  	and	a0, a0, a1
80001a9c: 23 22 a1 08  	sw	a0, 132(sp)
80001aa0: 63 08 05 3a  	beqz	a0, 0x80001e50 <.LBB0_90+0x308>
80001aa4: 13 03 00 00  	mv	t1, zero
80001aa8: 93 0f 00 00  	mv	t6, zero
80001aac: 13 0a 00 00  	mv	s4, zero
80001ab0: 93 0a 00 00  	mv	s5, zero
80001ab4: 13 0b 00 00  	mv	s6, zero
80001ab8: 93 0b 00 00  	mv	s7, zero
80001abc: 13 0c 00 00  	mv	s8, zero
80001ac0: 13 08 00 00  	mv	a6, zero
80001ac4: 93 08 00 00  	mv	a7, zero
80001ac8: 93 02 00 00  	mv	t0, zero
80001acc: 93 03 00 00  	mv	t2, zero
80001ad0: 13 0e 00 00  	mv	t3, zero
80001ad4: 93 0e 00 00  	mv	t4, zero
80001ad8: 13 0f 00 00  	mv	t5, zero
80001adc: 93 09 00 00  	mv	s3, zero
80001ae0: 93 0c 00 00  	mv	s9, zero
80001ae4: 93 0d 00 00  	mv	s11, zero
80001ae8: 13 09 00 00  	mv	s2, zero
80001aec: 93 07 00 00  	mv	a5, zero
80001af0: 93 04 00 00  	mv	s1, zero
80001af4: 13 04 00 00  	mv	s0, zero
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

80001b48 <.LBB0_90>:
80001b48: 17 45 00 00  	auipc	a0, 4
80001b4c: 13 05 85 aa  	addi	a0, a0, -1368
80001b50: 87 31 05 00  	fld	ft3, 0(a0)
80001b54: 13 05 60 01  	addi	a0, zero, 22
80001b58: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001b5c: 93 00 00 19  	addi	ra, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001b60: 33 37 d3 02  	mulhu	a4, t1, a3
80001b64: 13 57 47 00  	srli	a4, a4, 4
80001b68: 33 07 a7 02  	mul	a4, a4, a0
80001b6c: 33 07 e3 40  	sub	a4, t1, a4
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
80001c28: 33 b7 d3 02  	mulhu	a4, t2, a3
80001c2c: 13 57 47 00  	srli	a4, a4, 4
80001c30: 33 07 a7 02  	mul	a4, a4, a0
80001c34: 33 87 e3 40  	sub	a4, t2, a4
80001c38: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001c3c: 33 37 de 02  	mulhu	a4, t3, a3
80001c40: 13 57 47 00  	srli	a4, a4, 4
80001c44: 33 07 a7 02  	mul	a4, a4, a0
80001c48: 33 07 ee 40  	sub	a4, t3, a4
80001c4c: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001c50: 33 b7 de 02  	mulhu	a4, t4, a3
80001c54: 13 57 47 00  	srli	a4, a4, 4
80001c58: 33 07 a7 02  	mul	a4, a4, a0
80001c5c: 33 87 ee 40  	sub	a4, t4, a4
80001c60: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001c64: 33 37 df 02  	mulhu	a4, t5, a3
80001c68: 13 57 47 00  	srli	a4, a4, 4
80001c6c: 33 07 a7 02  	mul	a4, a4, a0
80001c70: 33 07 ef 40  	sub	a4, t5, a4
80001c74: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001c78: 33 b7 d9 02  	mulhu	a4, s3, a3
80001c7c: 13 57 47 00  	srli	a4, a4, 4
80001c80: 33 07 a7 02  	mul	a4, a4, a0
80001c84: 33 87 e9 40  	sub	a4, s3, a4
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
80001cb4: 33 37 d9 02  	mulhu	a4, s2, a3
80001cb8: 13 57 47 00  	srli	a4, a4, 4
80001cbc: 33 07 a7 02  	mul	a4, a4, a0
80001cc0: 33 07 e9 40  	sub	a4, s2, a4
80001cc4: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001cc8: 33 b7 d7 02  	mulhu	a4, a5, a3
80001ccc: 13 57 47 00  	srli	a4, a4, 4
80001cd0: 33 07 a7 02  	mul	a4, a4, a0
80001cd4: 33 87 e7 40  	sub	a4, a5, a4
80001cd8: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001cdc: 33 b7 d4 02  	mulhu	a4, s1, a3
80001ce0: 13 57 47 00  	srli	a4, a4, 4
80001ce4: 33 07 a7 02  	mul	a4, a4, a0
80001ce8: 33 87 e4 40  	sub	a4, s1, a4
80001cec: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001cf0: 33 37 d4 02  	mulhu	a4, s0, a3
80001cf4: 13 57 47 00  	srli	a4, a4, 4
80001cf8: 33 07 a7 02  	mul	a4, a4, a0
80001cfc: 33 07 e4 40  	sub	a4, s0, a4
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
80001df0: 13 04 74 01  	addi	s0, s0, 23
80001df4: 93 84 54 01  	addi	s1, s1, 21
80001df8: 93 87 47 01  	addi	a5, a5, 20
80001dfc: 13 09 39 01  	addi	s2, s2, 19
80001e00: 93 8d 2d 01  	addi	s11, s11, 18
80001e04: 93 8c 1c 01  	addi	s9, s9, 17
80001e08: 93 89 09 01  	addi	s3, s3, 16
80001e0c: 13 0f ff 00  	addi	t5, t5, 15
80001e10: 93 8e ee 00  	addi	t4, t4, 14
80001e14: 13 0e de 00  	addi	t3, t3, 13
80001e18: 93 83 c3 00  	addi	t2, t2, 12
80001e1c: 93 82 b2 00  	addi	t0, t0, 11
80001e20: 93 88 a8 00  	addi	a7, a7, 10
80001e24: 13 08 98 00  	addi	a6, a6, 9
80001e28: 13 0c 8c 00  	addi	s8, s8, 8
80001e2c: 93 8b 7b 00  	addi	s7, s7, 7
80001e30: 13 0b 6b 00  	addi	s6, s6, 6
80001e34: 93 8a 5a 00  	addi	s5, s5, 5
80001e38: 13 0a 4a 00  	addi	s4, s4, 4
80001e3c: 93 8f 3f 00  	addi	t6, t6, 3
80001e40: 13 03 23 00  	addi	t1, t1, 2
80001e44: e3 9e 15 d0  	bne	a1, ra, 0x80001b60 <.LBB0_90+0x18>
80001e48: 73 f0 00 7c  	csrci	1984, 1
80001e4c: 6f 00 c0 39  	j	0x800021e8 <.LBB0_91+0x330>
80001e50: 93 06 00 00  	mv	a3, zero
80001e54: 13 07 00 00  	mv	a4, zero
80001e58: 93 07 00 00  	mv	a5, zero
80001e5c: 93 04 00 00  	mv	s1, zero
80001e60: 23 26 01 08  	sw	zero, 140(sp)
80001e64: 13 0e 00 00  	mv	t3, zero
80001e68: 93 0e 00 00  	mv	t4, zero
80001e6c: 13 0f 00 00  	mv	t5, zero
80001e70: 93 0f 00 00  	mv	t6, zero
80001e74: 93 09 00 00  	mv	s3, zero
80001e78: 13 0a 00 00  	mv	s4, zero
80001e7c: 93 0a 00 00  	mv	s5, zero
80001e80: 13 0b 00 00  	mv	s6, zero
80001e84: 93 0b 00 00  	mv	s7, zero
80001e88: 13 0c 00 00  	mv	s8, zero
80001e8c: 93 0c 00 00  	mv	s9, zero
80001e90: 13 0d 00 00  	mv	s10, zero
80001e94: 93 0d 00 00  	mv	s11, zero
80001e98: 13 09 00 00  	mv	s2, zero
80001e9c: 13 08 00 00  	mv	a6, zero
80001ea0: 93 08 00 00  	mv	a7, zero
80001ea4: 93 02 00 00  	mv	t0, zero
80001ea8: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001eac: 13 84 00 06  	addi	s0, ra, 96
80001eb0: 37 95 2e ba  	lui	a0, 762601
80001eb4: 13 05 35 ba  	addi	a0, a0, -1117

80001eb8 <.LBB0_91>:
80001eb8: 97 35 00 00  	auipc	a1, 3
80001ebc: 93 85 85 73  	addi	a1, a1, 1848
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
80001ef0: 33 36 a9 02  	mulhu	a2, s2, a0
80001ef4: 13 56 46 00  	srli	a2, a2, 4
80001ef8: 33 06 76 02  	mul	a2, a2, t2
80001efc: 33 06 c9 40  	sub	a2, s2, a2
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
80001f54: 33 b6 a9 02  	mulhu	a2, s3, a0
80001f58: 13 56 46 00  	srli	a2, a2, 4
80001f5c: 33 06 76 02  	mul	a2, a2, t2
80001f60: 33 86 c9 40  	sub	a2, s3, a2
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
8000218c: 13 09 49 00  	addi	s2, s2, 4
80002190: 93 8d 7d 01  	addi	s11, s11, 23
80002194: 13 0d 5d 00  	addi	s10, s10, 5
80002198: 93 8c 6c 00  	addi	s9, s9, 6
8000219c: 13 0c 5c 01  	addi	s8, s8, 21
800021a0: 93 8b 7b 00  	addi	s7, s7, 7
800021a4: 13 0b 4b 01  	addi	s6, s6, 20
800021a8: 93 8a 8a 00  	addi	s5, s5, 8
800021ac: 13 0a 3a 01  	addi	s4, s4, 19
800021b0: 93 89 99 00  	addi	s3, s3, 9
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
800021e4: e3 12 b3 ce  	bne	t1, a1, 0x80001ec8 <.LBB0_91+0x10>
800021e8: 37 15 00 00  	lui	a0, 1
800021ec: 93 07 85 8f  	addi	a5, a0, -1800
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800021f0: 73 25 00 b0  	csrr	a0, mcycle
800021f4: 23 20 a1 08  	sw	a0, 128(sp)
800021f8: 03 24 c1 02  	lw	s0, 44(sp)
;   for (i = 0; i < ni; i++) {
800021fc: b3 05 f4 00  	add	a1, s0, a5
80002200: 33 b6 85 00  	sltu	a2, a1, s0
80002204: 13 85 05 20  	addi	a0, a1, 512
80002208: b3 35 b5 00  	sltu	a1, a0, a1
8000220c: 33 07 b6 00  	add	a4, a2, a1
80002210: 03 28 81 02  	lw	a6, 40(sp)
80002214: b3 06 f8 00  	add	a3, a6, a5
80002218: 33 b6 06 01  	sltu	a2, a3, a6
8000221c: 93 85 06 36  	addi	a1, a3, 864
80002220: b3 b6 d5 00  	sltu	a3, a1, a3
80002224: 83 29 81 01  	lw	s3, 24(sp)
80002228: 23 2e f1 06  	sw	a5, 124(sp)
8000222c: b3 87 f9 00  	add	a5, s3, a5
80002230: 63 06 07 02  	beqz	a4, 0x8000225c <.LBB0_91+0x3a4>
80002234: 13 05 00 00  	mv	a0, zero
80002238: b3 06 d6 00  	add	a3, a2, a3
8000223c: 63 e6 37 03  	bltu	a5, s3, 0x80002268 <.LBB0_91+0x3b0>
80002240: 33 b6 87 00  	sltu	a2, a5, s0
;   for (i = 0; i < ni; i++) {
80002244: 63 96 06 02  	bnez	a3, 0x80002270 <.LBB0_91+0x3b8>
80002248: b3 b5 35 01  	sltu	a1, a1, s3
;   for (i = 0; i < ni; i++) {
8000224c: 33 65 a6 00  	or	a0, a2, a0
80002250: 63 e6 37 03  	bltu	a5, s3, 0x8000227c <.LBB0_91+0x3c4>
80002254: 33 b6 07 01  	sltu	a2, a5, a6
80002258: 6f 00 80 02  	j	0x80002280 <.LBB0_91+0x3c8>
8000225c: 33 35 35 01  	sltu	a0, a0, s3
;   for (i = 0; i < ni; i++) {
80002260: b3 06 d6 00  	add	a3, a2, a3
80002264: e3 fe 37 fd  	bgeu	a5, s3, 0x80002240 <.LBB0_91+0x388>
80002268: 13 06 00 00  	mv	a2, zero
8000226c: e3 8e 06 fc  	beqz	a3, 0x80002248 <.LBB0_91+0x390>
80002270: 93 05 00 00  	mv	a1, zero
80002274: 33 65 a6 00  	or	a0, a2, a0
80002278: e3 fe 37 fd  	bgeu	a5, s3, 0x80002254 <.LBB0_91+0x39c>
8000227c: 13 06 00 00  	mv	a2, zero
80002280: b3 65 b6 00  	or	a1, a2, a1
80002284: 33 75 b5 00  	and	a0, a0, a1
80002288: 83 25 41 01  	lw	a1, 20(sp)
8000228c: 33 f5 a5 00  	and	a0, a1, a0
80002290: 83 25 c1 00  	lw	a1, 12(sp)
80002294: 33 f5 a5 00  	and	a0, a1, a0
80002298: 23 2a f1 06  	sw	a5, 116(sp)
8000229c: b3 b5 37 01  	sltu	a1, a5, s3
800022a0: 23 2c b1 06  	sw	a1, 120(sp)
800022a4: 63 0e 05 2e  	beqz	a0, 0x800025a0 <.LBB0_92+0x258>
800022a8: 13 05 00 00  	mv	a0, zero
800022ac: 93 05 80 00  	addi	a1, zero, 8
800022b0: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++) {
800022b4: 93 06 00 04  	addi	a3, zero, 64
800022b8: 13 07 00 0c  	addi	a4, zero, 192
800022bc: ab 20 d6 00  	scfgw	a2, a3
800022c0: ab a0 e5 00  	scfgw	a1, a4
800022c4: 93 06 80 f5  	addi	a3, zero, -168
800022c8: 13 07 10 01  	addi	a4, zero, 17
800022cc: 93 07 00 06  	addi	a5, zero, 96
800022d0: 93 04 00 0e  	addi	s1, zero, 224
800022d4: ab 20 f7 00  	scfgw	a4, a5
800022d8: ab a0 96 00  	scfgw	a3, s1
800022dc: 93 06 f0 00  	addi	a3, zero, 15
800022e0: 93 07 00 08  	addi	a5, zero, 128
800022e4: 93 04 00 10  	addi	s1, zero, 256
800022e8: ab a0 f6 00  	scfgw	a3, a5
800022ec: ab a0 95 00  	scfgw	a1, s1
800022f0: 93 05 00 02  	addi	a1, zero, 32
800022f4: ab 20 b0 00  	scfgw	zero, a1
800022f8: 2b 20 04 34  	scfgwi	s0, 832
800022fc: 93 05 00 09  	addi	a1, zero, 144
80002300: 93 07 10 00  	addi	a5, zero, 1
80002304: 93 84 07 04  	addi	s1, a5, 64
80002308: 13 84 07 0c  	addi	s0, a5, 192
8000230c: ab 20 96 00  	scfgw	a2, s1
80002310: ab a0 85 00  	scfgw	a1, s0
80002314: 37 f6 ff ff  	lui	a2, 1048575
80002318: 93 04 86 43  	addi	s1, a2, 1080
8000231c: 13 84 07 06  	addi	s0, a5, 96
80002320: ab 20 87 00  	scfgw	a4, s0
80002324: 13 87 07 0e  	addi	a4, a5, 224
80002328: ab a0 e4 00  	scfgw	s1, a4
8000232c: 13 06 86 3a  	addi	a2, a2, 936
80002330: 13 87 07 08  	addi	a4, a5, 128
80002334: 93 84 07 10  	addi	s1, a5, 256
80002338: ab a0 e6 00  	scfgw	a3, a4
8000233c: ab 20 96 00  	scfgw	a2, s1
80002340: 13 86 07 02  	addi	a2, a5, 32
80002344: ab 20 c0 00  	scfgw	zero, a2

80002348 <.LBB0_92>:
80002348: 17 36 00 00  	auipc	a2, 3
8000234c: 13 06 06 2b  	addi	a2, a2, 688
80002350: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
80002354: 2b 20 18 34  	scfgwi	a6, 833
80002358: 73 e0 00 7c  	csrsi	1984, 1
8000235c: 13 06 00 01  	addi	a2, zero, 16
80002360: 93 86 09 00  	mv	a3, s3
80002364: 13 04 00 00  	mv	s0, zero
;       tmp[i][j] = 0.0;
80002368: b3 84 86 00  	add	s1, a3, s0
8000236c: 23 a2 04 00  	sw	zero, 4(s1)
80002370: 23 a0 04 00  	sw	zero, 0(s1)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002374: 53 02 00 22  	fmv.d	ft4, ft0
80002378: d3 82 10 22  	fmv.d	ft5, ft1
8000237c: 07 b3 04 00  	fld	ft6, 0(s1)
80002380: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002384: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002388: 27 b0 44 00  	fsd	ft4, 0(s1)
8000238c: 53 02 00 22  	fmv.d	ft4, ft0
80002390: d3 82 10 22  	fmv.d	ft5, ft1
80002394: 07 b3 04 00  	fld	ft6, 0(s1)
80002398: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000239c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800023a0: 27 b0 44 00  	fsd	ft4, 0(s1)
800023a4: 53 02 00 22  	fmv.d	ft4, ft0
800023a8: d3 82 10 22  	fmv.d	ft5, ft1
800023ac: 07 b3 04 00  	fld	ft6, 0(s1)
800023b0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800023b4: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800023b8: 27 b0 44 00  	fsd	ft4, 0(s1)
800023bc: 53 02 00 22  	fmv.d	ft4, ft0
800023c0: d3 82 10 22  	fmv.d	ft5, ft1
800023c4: 07 b3 04 00  	fld	ft6, 0(s1)
800023c8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800023cc: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800023d0: 27 b0 44 00  	fsd	ft4, 0(s1)
800023d4: 53 02 00 22  	fmv.d	ft4, ft0
800023d8: d3 82 10 22  	fmv.d	ft5, ft1
800023dc: 07 b3 04 00  	fld	ft6, 0(s1)
800023e0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800023e4: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800023e8: 27 b0 44 00  	fsd	ft4, 0(s1)
800023ec: 53 02 00 22  	fmv.d	ft4, ft0
800023f0: d3 82 10 22  	fmv.d	ft5, ft1
800023f4: 07 b3 04 00  	fld	ft6, 0(s1)
800023f8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800023fc: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002400: 27 b0 44 00  	fsd	ft4, 0(s1)
80002404: 53 02 00 22  	fmv.d	ft4, ft0
80002408: d3 82 10 22  	fmv.d	ft5, ft1
8000240c: 07 b3 04 00  	fld	ft6, 0(s1)
80002410: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002414: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002418: 27 b0 44 00  	fsd	ft4, 0(s1)
8000241c: 53 02 00 22  	fmv.d	ft4, ft0
80002420: d3 82 10 22  	fmv.d	ft5, ft1
80002424: 07 b3 04 00  	fld	ft6, 0(s1)
80002428: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000242c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002430: 27 b0 44 00  	fsd	ft4, 0(s1)
80002434: 53 02 00 22  	fmv.d	ft4, ft0
80002438: d3 82 10 22  	fmv.d	ft5, ft1
8000243c: 07 b3 04 00  	fld	ft6, 0(s1)
80002440: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002444: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002448: 27 b0 44 00  	fsd	ft4, 0(s1)
8000244c: 53 02 00 22  	fmv.d	ft4, ft0
80002450: d3 82 10 22  	fmv.d	ft5, ft1
80002454: 07 b3 04 00  	fld	ft6, 0(s1)
80002458: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000245c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002460: 27 b0 44 00  	fsd	ft4, 0(s1)
80002464: 53 02 00 22  	fmv.d	ft4, ft0
80002468: d3 82 10 22  	fmv.d	ft5, ft1
8000246c: 07 b3 04 00  	fld	ft6, 0(s1)
80002470: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002474: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002478: 27 b0 44 00  	fsd	ft4, 0(s1)
8000247c: 53 02 00 22  	fmv.d	ft4, ft0
80002480: d3 82 10 22  	fmv.d	ft5, ft1
80002484: 07 b3 04 00  	fld	ft6, 0(s1)
80002488: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000248c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002490: 27 b0 44 00  	fsd	ft4, 0(s1)
80002494: 53 02 00 22  	fmv.d	ft4, ft0
80002498: d3 82 10 22  	fmv.d	ft5, ft1
8000249c: 07 b3 04 00  	fld	ft6, 0(s1)
800024a0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800024a4: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800024a8: 27 b0 44 00  	fsd	ft4, 0(s1)
800024ac: 53 02 00 22  	fmv.d	ft4, ft0
800024b0: d3 82 10 22  	fmv.d	ft5, ft1
800024b4: 07 b3 04 00  	fld	ft6, 0(s1)
800024b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800024bc: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800024c0: 27 b0 44 00  	fsd	ft4, 0(s1)
800024c4: 53 02 00 22  	fmv.d	ft4, ft0
800024c8: d3 82 10 22  	fmv.d	ft5, ft1
800024cc: 07 b3 04 00  	fld	ft6, 0(s1)
800024d0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800024d4: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800024d8: 27 b0 44 00  	fsd	ft4, 0(s1)
800024dc: 53 02 00 22  	fmv.d	ft4, ft0
800024e0: d3 82 10 22  	fmv.d	ft5, ft1
800024e4: 07 b3 04 00  	fld	ft6, 0(s1)
800024e8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800024ec: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
800024f0: 27 b0 44 00  	fsd	ft4, 0(s1)
800024f4: 53 02 00 22  	fmv.d	ft4, ft0
800024f8: d3 82 10 22  	fmv.d	ft5, ft1
800024fc: 07 b3 04 00  	fld	ft6, 0(s1)
80002500: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002504: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002508: 27 b0 44 00  	fsd	ft4, 0(s1)
8000250c: 53 02 00 22  	fmv.d	ft4, ft0
80002510: d3 82 10 22  	fmv.d	ft5, ft1
80002514: 07 b3 04 00  	fld	ft6, 0(s1)
80002518: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000251c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002520: 27 b0 44 00  	fsd	ft4, 0(s1)
80002524: 53 02 00 22  	fmv.d	ft4, ft0
80002528: d3 82 10 22  	fmv.d	ft5, ft1
8000252c: 07 b3 04 00  	fld	ft6, 0(s1)
80002530: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002534: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002538: 27 b0 44 00  	fsd	ft4, 0(s1)
8000253c: 53 02 00 22  	fmv.d	ft4, ft0
80002540: d3 82 10 22  	fmv.d	ft5, ft1
80002544: 07 b3 04 00  	fld	ft6, 0(s1)
80002548: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000254c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002550: 27 b0 44 00  	fsd	ft4, 0(s1)
80002554: 53 02 00 22  	fmv.d	ft4, ft0
80002558: d3 82 10 22  	fmv.d	ft5, ft1
8000255c: 07 b3 04 00  	fld	ft6, 0(s1)
80002560: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002564: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
80002568: 27 b0 44 00  	fsd	ft4, 0(s1)
8000256c: 53 02 00 22  	fmv.d	ft4, ft0
80002570: d3 82 10 22  	fmv.d	ft5, ft1
80002574: 07 b3 04 00  	fld	ft6, 0(s1)
80002578: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000257c: 43 72 52 32  	fmadd.d	ft4, ft4, ft5, ft6
;     for (j = 0; j < nj; j++) {
80002580: 13 04 84 00  	addi	s0, s0, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002584: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (j = 0; j < nj; j++) {
80002588: e3 10 b4 de  	bne	s0, a1, 0x80002368 <.LBB0_92+0x20>
;   for (i = 0; i < ni; i++) {
8000258c: 13 05 15 00  	addi	a0, a0, 1
80002590: 93 86 06 09  	addi	a3, a3, 144
80002594: e3 18 c5 dc  	bne	a0, a2, 0x80002364 <.LBB0_92+0x1c>
80002598: 73 f0 00 7c  	csrci	1984, 1
8000259c: 6f 00 00 29  	j	0x8000282c <.LBB0_93+0x288>
800025a0: 93 05 00 00  	mv	a1, zero

800025a4 <.LBB0_93>:
800025a4: 17 35 00 00  	auipc	a0, 3
800025a8: 13 05 45 05  	addi	a0, a0, 84
800025ac: 07 30 05 00  	fld	ft0, 0(a0)
800025b0: 83 2f 81 02  	lw	t6, 40(sp)
800025b4: 93 04 00 00  	mv	s1, zero
800025b8: 23 24 b1 08  	sw	a1, 136(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800025bc: 13 05 00 0b  	addi	a0, zero, 176
800025c0: 33 85 a5 02  	mul	a0, a1, a0
800025c4: b3 07 a4 00  	add	a5, s0, a0
800025c8: 13 85 87 00  	addi	a0, a5, 8
800025cc: 23 26 a1 08  	sw	a0, 140(sp)
800025d0: 13 89 07 01  	addi	s2, a5, 16
800025d4: 13 8a 87 01  	addi	s4, a5, 24
800025d8: 93 8a 07 02  	addi	s5, a5, 32
800025dc: 13 8b 87 02  	addi	s6, a5, 40
800025e0: 93 8b 07 03  	addi	s7, a5, 48
800025e4: 13 8c 87 03  	addi	s8, a5, 56
800025e8: 93 8c 07 04  	addi	s9, a5, 64
800025ec: 13 8d 87 04  	addi	s10, a5, 72
800025f0: 93 8d 07 05  	addi	s11, a5, 80
800025f4: 93 80 87 05  	addi	ra, a5, 88
800025f8: 13 8f 07 06  	addi	t5, a5, 96
800025fc: 93 85 87 06  	addi	a1, a5, 104
80002600: 13 84 07 07  	addi	s0, a5, 112
80002604: 93 86 87 07  	addi	a3, a5, 120
80002608: 13 85 07 08  	addi	a0, a5, 128
8000260c: 13 86 87 08  	addi	a2, a5, 136
80002610: 13 83 07 09  	addi	t1, a5, 144
80002614: 13 88 87 09  	addi	a6, a5, 152
80002618: 93 88 07 0a  	addi	a7, a5, 160
8000261c: 93 82 87 0a  	addi	t0, a5, 168
;       tmp[i][j] = 0.0;
80002620: b3 83 99 00  	add	t2, s3, s1
80002624: 23 a2 03 00  	sw	zero, 4(t2)
80002628: 23 a0 03 00  	sw	zero, 0(t2)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
8000262c: 87 b0 07 00  	fld	ft1, 0(a5)
80002630: 33 8e 9f 00  	add	t3, t6, s1
80002634: 07 31 0e 00  	fld	ft2, 0(t3)
80002638: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
8000263c: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
80002640: 27 b0 13 00  	fsd	ft1, 0(t2)
80002644: 03 27 c1 08  	lw	a4, 140(sp)
80002648: 07 31 07 00  	fld	ft2, 0(a4)
8000264c: 87 31 0e 09  	fld	ft3, 144(t3)
80002650: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002654: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002658: 27 b0 13 00  	fsd	ft1, 0(t2)
8000265c: 07 31 09 00  	fld	ft2, 0(s2)
80002660: 87 31 0e 12  	fld	ft3, 288(t3)
80002664: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002668: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000266c: 27 b0 13 00  	fsd	ft1, 0(t2)
80002670: 07 31 0a 00  	fld	ft2, 0(s4)
80002674: 87 31 0e 1b  	fld	ft3, 432(t3)
80002678: 53 71 01 12  	fmul.d	ft2, ft2, ft0
8000267c: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002680: 27 b0 13 00  	fsd	ft1, 0(t2)
80002684: 07 b1 0a 00  	fld	ft2, 0(s5)
80002688: 87 31 0e 24  	fld	ft3, 576(t3)
8000268c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002690: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002694: 27 b0 13 00  	fsd	ft1, 0(t2)
80002698: 07 31 0b 00  	fld	ft2, 0(s6)
8000269c: 87 31 0e 2d  	fld	ft3, 720(t3)
800026a0: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800026a4: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800026a8: 27 b0 13 00  	fsd	ft1, 0(t2)
800026ac: 07 b1 0b 00  	fld	ft2, 0(s7)
800026b0: 87 31 0e 36  	fld	ft3, 864(t3)
800026b4: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800026b8: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800026bc: 27 b0 13 00  	fsd	ft1, 0(t2)
800026c0: 07 31 0c 00  	fld	ft2, 0(s8)
800026c4: 87 31 0e 3f  	fld	ft3, 1008(t3)
800026c8: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800026cc: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800026d0: 27 b0 13 00  	fsd	ft1, 0(t2)
800026d4: 07 b1 0c 00  	fld	ft2, 0(s9)
800026d8: 87 31 0e 48  	fld	ft3, 1152(t3)
800026dc: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800026e0: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800026e4: 27 b0 13 00  	fsd	ft1, 0(t2)
800026e8: 07 31 0d 00  	fld	ft2, 0(s10)
800026ec: 87 31 0e 51  	fld	ft3, 1296(t3)
800026f0: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800026f4: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800026f8: 27 b0 13 00  	fsd	ft1, 0(t2)
800026fc: 07 b1 0d 00  	fld	ft2, 0(s11)
80002700: 87 31 0e 5a  	fld	ft3, 1440(t3)
80002704: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002708: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000270c: 27 b0 13 00  	fsd	ft1, 0(t2)
80002710: 07 b1 00 00  	fld	ft2, 0(ra)
80002714: 87 31 0e 63  	fld	ft3, 1584(t3)
80002718: 53 71 01 12  	fmul.d	ft2, ft2, ft0
8000271c: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002720: 27 b0 13 00  	fsd	ft1, 0(t2)
80002724: 07 31 0f 00  	fld	ft2, 0(t5)
80002728: 87 31 0e 6c  	fld	ft3, 1728(t3)
8000272c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002730: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002734: 27 b0 13 00  	fsd	ft1, 0(t2)
80002738: 07 b1 05 00  	fld	ft2, 0(a1)
8000273c: 87 31 0e 75  	fld	ft3, 1872(t3)
80002740: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002744: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002748: 27 b0 13 00  	fsd	ft1, 0(t2)
8000274c: 07 31 04 00  	fld	ft2, 0(s0)
80002750: 87 31 0e 7e  	fld	ft3, 2016(t3)
80002754: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002758: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000275c: 27 b0 13 00  	fsd	ft1, 0(t2)
80002760: 07 b1 06 00  	fld	ft2, 0(a3)
80002764: 93 0e 8e 43  	addi	t4, t3, 1080
80002768: 87 b1 8e 43  	fld	ft3, 1080(t4)
8000276c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002770: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
80002774: 27 b0 13 00  	fsd	ft1, 0(t2)
80002778: 07 31 05 00  	fld	ft2, 0(a0)
8000277c: 13 07 0e 48  	addi	a4, t3, 1152
80002780: 87 31 07 48  	fld	ft3, 1152(a4)
80002784: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002788: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
8000278c: 27 b0 13 00  	fsd	ft1, 0(t2)
80002790: 07 31 06 00  	fld	ft2, 0(a2)
80002794: 13 07 8e 4c  	addi	a4, t3, 1224
80002798: 87 31 87 4c  	fld	ft3, 1224(a4)
8000279c: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800027a0: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800027a4: 27 b0 13 00  	fsd	ft1, 0(t2)
800027a8: 07 31 03 00  	fld	ft2, 0(t1)
800027ac: 13 07 0e 51  	addi	a4, t3, 1296
800027b0: 87 31 07 51  	fld	ft3, 1296(a4)
800027b4: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800027b8: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800027bc: 27 b0 13 00  	fsd	ft1, 0(t2)
800027c0: 07 31 08 00  	fld	ft2, 0(a6)
800027c4: 13 07 8e 55  	addi	a4, t3, 1368
800027c8: 87 31 87 55  	fld	ft3, 1368(a4)
800027cc: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800027d0: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800027d4: 27 b0 13 00  	fsd	ft1, 0(t2)
800027d8: 07 b1 08 00  	fld	ft2, 0(a7)
800027dc: 13 07 0e 5a  	addi	a4, t3, 1440
800027e0: 87 31 07 5a  	fld	ft3, 1440(a4)
800027e4: 53 71 01 12  	fmul.d	ft2, ft2, ft0
800027e8: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
800027ec: 27 b0 13 00  	fsd	ft1, 0(t2)
800027f0: 07 b1 02 00  	fld	ft2, 0(t0)
800027f4: 13 07 8e 5e  	addi	a4, t3, 1512
800027f8: 87 31 87 5e  	fld	ft3, 1512(a4)
800027fc: 13 07 00 09  	addi	a4, zero, 144
80002800: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002804: c3 70 31 0a  	fmadd.d	ft1, ft2, ft3, ft1
;     for (j = 0; j < nj; j++) {
80002808: 93 84 84 00  	addi	s1, s1, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
8000280c: 27 b0 13 00  	fsd	ft1, 0(t2)
;     for (j = 0; j < nj; j++) {
80002810: e3 98 e4 e0  	bne	s1, a4, 0x80002620 <.LBB0_93+0x7c>
80002814: 83 25 81 08  	lw	a1, 136(sp)
;   for (i = 0; i < ni; i++) {
80002818: 93 85 15 00  	addi	a1, a1, 1
8000281c: 93 89 09 09  	addi	s3, s3, 144
80002820: 03 24 c1 02  	lw	s0, 44(sp)
80002824: 13 05 00 01  	addi	a0, zero, 16
80002828: e3 96 a5 d8  	bne	a1, a0, 0x800025b4 <.LBB0_93+0x10>
8000282c: 83 28 01 03  	lw	a7, 48(sp)
80002830: 83 26 c1 07  	lw	a3, 124(sp)
;   for (i = 0; i < ni; i++) {
80002834: 33 85 16 01  	add	a0, a3, a7
80002838: 33 37 d5 00  	sltu	a4, a0, a3
8000283c: 13 06 05 48  	addi	a2, a0, 1152
80002840: b3 37 a6 00  	sltu	a5, a2, a0
80002844: 83 23 c1 01  	lw	t2, 28(sp)
80002848: b3 85 76 00  	add	a1, a3, t2
8000284c: b3 b6 d5 00  	sltu	a3, a1, a3
80002850: 13 85 05 30  	addi	a0, a1, 768
80002854: b3 35 b5 00  	sltu	a1, a0, a1
80002858: b3 85 b6 00  	add	a1, a3, a1
8000285c: 83 26 81 07  	lw	a3, 120(sp)
80002860: 63 86 06 00  	beqz	a3, 0x8000286c <.LBB0_93+0x2c8>
80002864: 93 06 00 00  	mv	a3, zero
80002868: 6f 00 c0 00  	j	0x80002874 <.LBB0_93+0x2d0>
8000286c: 83 26 41 07  	lw	a3, 116(sp)
80002870: b3 b6 76 00  	sltu	a3, a3, t2
;   for (i = 0; i < ni; i++) {
80002874: b3 07 f7 00  	add	a5, a4, a5
80002878: 83 20 81 01  	lw	ra, 24(sp)
8000287c: 63 80 05 02  	beqz	a1, 0x8000289c <.LBB0_93+0x2f8>
80002880: 13 07 00 00  	mv	a4, zero
80002884: 63 90 07 02  	bnez	a5, 0x800028a4 <.LBB0_93+0x300>
80002888: 33 36 76 00  	sltu	a2, a2, t2
;   for (i = 0; i < ni; i++) {
8000288c: b3 e6 e6 00  	or	a3, a3, a4
80002890: 63 90 05 02  	bnez	a1, 0x800028b0 <.LBB0_93+0x30c>
80002894: 33 35 15 01  	sltu	a0, a0, a7
80002898: 6f 00 c0 01  	j	0x800028b4 <.LBB0_93+0x310>
8000289c: 33 37 15 00  	sltu	a4, a0, ra
;   for (i = 0; i < ni; i++) {
800028a0: e3 84 07 fe  	beqz	a5, 0x80002888 <.LBB0_93+0x2e4>
800028a4: 13 06 00 00  	mv	a2, zero
800028a8: b3 e6 e6 00  	or	a3, a3, a4
800028ac: e3 84 05 fe  	beqz	a1, 0x80002894 <.LBB0_93+0x2f0>
800028b0: 13 05 00 00  	mv	a0, zero
800028b4: 33 65 a6 00  	or	a0, a2, a0
800028b8: 33 f5 a6 00  	and	a0, a3, a0
800028bc: 83 25 41 08  	lw	a1, 132(sp)
800028c0: 33 f5 a5 00  	and	a0, a1, a0
800028c4: 93 d5 40 01  	srli	a1, ra, 20
800028c8: b3 35 b0 00  	snez	a1, a1
800028cc: 37 f6 11 00  	lui	a2, 287
800028d0: 13 06 96 70  	addi	a2, a2, 1801
800028d4: 33 b6 c0 00  	sltu	a2, ra, a2
800028d8: b3 f5 c5 00  	and	a1, a1, a2
800028dc: 33 f5 a5 00  	and	a0, a1, a0
800028e0: 83 25 01 01  	lw	a1, 16(sp)
800028e4: 33 f5 a5 00  	and	a0, a1, a0
800028e8: 63 04 05 28  	beqz	a0, 0x80002b70 <.LBB0_94+0x1b4>
800028ec: 13 05 00 00  	mv	a0, zero
800028f0: 93 05 80 00  	addi	a1, zero, 8
800028f4: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < ni; i++) {
800028f8: 93 06 00 04  	addi	a3, zero, 64
800028fc: 13 07 00 0c  	addi	a4, zero, 192
80002900: ab 20 d8 00  	scfgw	a6, a3
80002904: ab a0 e5 00  	scfgw	a1, a4
80002908: 93 06 f0 00  	addi	a3, zero, 15
8000290c: 13 07 00 06  	addi	a4, zero, 96
80002910: 93 07 00 0e  	addi	a5, zero, 224
80002914: ab a0 e6 00  	scfgw	a3, a4
80002918: ab a0 f5 00  	scfgw	a1, a5
8000291c: 13 07 00 02  	addi	a4, zero, 32
80002920: ab 20 e0 00  	scfgw	zero, a4
80002924: 2b a0 03 32  	scfgwi	t2, 800
80002928: 13 07 10 01  	addi	a4, zero, 17
8000292c: 93 07 10 00  	addi	a5, zero, 1
80002930: 93 84 07 04  	addi	s1, a5, 64
80002934: 13 84 07 0c  	addi	s0, a5, 192
80002938: ab 20 97 00  	scfgw	a4, s1
8000293c: ab a0 85 00  	scfgw	a1, s0
80002940: 93 04 80 f7  	addi	s1, zero, -136
80002944: 13 84 07 06  	addi	s0, a5, 96
80002948: ab 20 88 00  	scfgw	a6, s0
8000294c: 13 84 07 0e  	addi	s0, a5, 224
80002950: ab a0 84 00  	scfgw	s1, s0
80002954: 93 84 07 08  	addi	s1, a5, 128
80002958: 13 84 07 10  	addi	s0, a5, 256
8000295c: ab a0 96 00  	scfgw	a3, s1
80002960: ab a0 85 00  	scfgw	a1, s0
80002964: 93 85 07 02  	addi	a1, a5, 32
80002968: ab 20 b0 00  	scfgw	zero, a1
8000296c: 2b a0 10 34  	scfgwi	ra, 833
80002970: 93 05 00 0c  	addi	a1, zero, 192
80002974: 93 07 20 00  	addi	a5, zero, 2
80002978: 93 84 07 04  	addi	s1, a5, 64
8000297c: 13 84 07 0c  	addi	s0, a5, 192
80002980: ab 20 97 00  	scfgw	a4, s1
80002984: ab a0 85 00  	scfgw	a1, s0
80002988: 37 f7 ff ff  	lui	a4, 1048575
8000298c: 93 04 87 34  	addi	s1, a4, 840
80002990: 13 84 07 06  	addi	s0, a5, 96
80002994: 13 86 07 0e  	addi	a2, a5, 224
80002998: ab 20 88 00  	scfgw	a6, s0
8000299c: ab a0 c4 00  	scfgw	s1, a2
800029a0: 13 06 87 28  	addi	a2, a4, 648
800029a4: 13 87 07 08  	addi	a4, a5, 128
800029a8: 93 84 07 10  	addi	s1, a5, 256
800029ac: ab a0 e6 00  	scfgw	a3, a4
800029b0: ab 20 96 00  	scfgw	a2, s1
800029b4: 13 86 07 02  	addi	a2, a5, 32
800029b8: ab 20 c0 00  	scfgw	zero, a2

800029bc <.LBB0_94>:
800029bc: 17 36 00 00  	auipc	a2, 3
800029c0: 13 06 46 c4  	addi	a2, a2, -956
800029c4: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
800029c8: 2b a0 28 34  	scfgwi	a7, 834
800029cc: 73 e0 00 7c  	csrsi	1984, 1
800029d0: 13 06 00 01  	addi	a2, zero, 16
800029d4: 93 86 03 00  	mv	a3, t2
800029d8: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
800029dc: b3 87 e6 00  	add	a5, a3, a4
800029e0: 53 02 00 22  	fmv.d	ft4, ft0
800029e4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029e8: 27 b0 47 00  	fsd	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
800029ec: 53 82 10 22  	fmv.d	ft4, ft1
800029f0: d3 02 21 22  	fmv.d	ft5, ft2
800029f4: 07 b3 07 00  	fld	ft6, 0(a5)
800029f8: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
800029fc: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a00: 53 82 10 22  	fmv.d	ft4, ft1
80002a04: d3 02 21 22  	fmv.d	ft5, ft2
80002a08: 07 b3 07 00  	fld	ft6, 0(a5)
80002a0c: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a10: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a14: 53 82 10 22  	fmv.d	ft4, ft1
80002a18: d3 02 21 22  	fmv.d	ft5, ft2
80002a1c: 07 b3 07 00  	fld	ft6, 0(a5)
80002a20: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a24: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a28: 53 82 10 22  	fmv.d	ft4, ft1
80002a2c: d3 02 21 22  	fmv.d	ft5, ft2
80002a30: 07 b3 07 00  	fld	ft6, 0(a5)
80002a34: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a38: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a3c: 53 82 10 22  	fmv.d	ft4, ft1
80002a40: d3 02 21 22  	fmv.d	ft5, ft2
80002a44: 07 b3 07 00  	fld	ft6, 0(a5)
80002a48: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a4c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a50: 53 82 10 22  	fmv.d	ft4, ft1
80002a54: d3 02 21 22  	fmv.d	ft5, ft2
80002a58: 07 b3 07 00  	fld	ft6, 0(a5)
80002a5c: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a60: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a64: 53 82 10 22  	fmv.d	ft4, ft1
80002a68: d3 02 21 22  	fmv.d	ft5, ft2
80002a6c: 07 b3 07 00  	fld	ft6, 0(a5)
80002a70: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a74: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a78: 53 82 10 22  	fmv.d	ft4, ft1
80002a7c: d3 02 21 22  	fmv.d	ft5, ft2
80002a80: 07 b3 07 00  	fld	ft6, 0(a5)
80002a84: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a88: 27 b0 47 00  	fsd	ft4, 0(a5)
80002a8c: 53 82 10 22  	fmv.d	ft4, ft1
80002a90: d3 02 21 22  	fmv.d	ft5, ft2
80002a94: 07 b3 07 00  	fld	ft6, 0(a5)
80002a98: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002a9c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002aa0: 53 82 10 22  	fmv.d	ft4, ft1
80002aa4: d3 02 21 22  	fmv.d	ft5, ft2
80002aa8: 07 b3 07 00  	fld	ft6, 0(a5)
80002aac: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002ab0: 27 b0 47 00  	fsd	ft4, 0(a5)
80002ab4: 53 82 10 22  	fmv.d	ft4, ft1
80002ab8: d3 02 21 22  	fmv.d	ft5, ft2
80002abc: 07 b3 07 00  	fld	ft6, 0(a5)
80002ac0: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002ac4: 27 b0 47 00  	fsd	ft4, 0(a5)
80002ac8: 53 82 10 22  	fmv.d	ft4, ft1
80002acc: d3 02 21 22  	fmv.d	ft5, ft2
80002ad0: 07 b3 07 00  	fld	ft6, 0(a5)
80002ad4: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002ad8: 27 b0 47 00  	fsd	ft4, 0(a5)
80002adc: 53 82 10 22  	fmv.d	ft4, ft1
80002ae0: d3 02 21 22  	fmv.d	ft5, ft2
80002ae4: 07 b3 07 00  	fld	ft6, 0(a5)
80002ae8: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002aec: 27 b0 47 00  	fsd	ft4, 0(a5)
80002af0: 53 82 10 22  	fmv.d	ft4, ft1
80002af4: d3 02 21 22  	fmv.d	ft5, ft2
80002af8: 07 b3 07 00  	fld	ft6, 0(a5)
80002afc: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002b00: 27 b0 47 00  	fsd	ft4, 0(a5)
80002b04: 53 82 10 22  	fmv.d	ft4, ft1
80002b08: d3 02 21 22  	fmv.d	ft5, ft2
80002b0c: 07 b3 07 00  	fld	ft6, 0(a5)
80002b10: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002b14: 27 b0 47 00  	fsd	ft4, 0(a5)
80002b18: 53 82 10 22  	fmv.d	ft4, ft1
80002b1c: d3 02 21 22  	fmv.d	ft5, ft2
80002b20: 07 b3 07 00  	fld	ft6, 0(a5)
80002b24: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002b28: 27 b0 47 00  	fsd	ft4, 0(a5)
80002b2c: 53 82 10 22  	fmv.d	ft4, ft1
80002b30: d3 02 21 22  	fmv.d	ft5, ft2
80002b34: 07 b3 07 00  	fld	ft6, 0(a5)
80002b38: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
80002b3c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002b40: 53 82 10 22  	fmv.d	ft4, ft1
80002b44: d3 02 21 22  	fmv.d	ft5, ft2
80002b48: 07 b3 07 00  	fld	ft6, 0(a5)
80002b4c: 43 f2 42 32  	fmadd.d	ft4, ft5, ft4, ft6
;     for (j = 0; j < nl; j++) {
80002b50: 13 07 87 00  	addi	a4, a4, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002b54: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++) {
80002b58: e3 12 b7 e8  	bne	a4, a1, 0x800029dc <.LBB0_94+0x20>
;   for (i = 0; i < ni; i++) {
80002b5c: 13 05 15 00  	addi	a0, a0, 1
80002b60: 93 86 06 0c  	addi	a3, a3, 192
80002b64: e3 1a c5 e6  	bne	a0, a2, 0x800029d8 <.LBB0_94+0x1c>
80002b68: 73 f0 00 7c  	csrci	1984, 1
80002b6c: 6f 00 80 1d  	j	0x80002d44 <.LBB0_95+0x1d0>
80002b70: 93 02 00 00  	mv	t0, zero

80002b74 <.LBB0_95>:
80002b74: 17 35 00 00  	auipc	a0, 3
80002b78: 13 05 c5 a8  	addi	a0, a0, -1396
80002b7c: 07 30 05 00  	fld	ft0, 0(a0)
80002b80: 13 03 00 0c  	addi	t1, zero, 192
80002b84: 93 08 00 01  	addi	a7, zero, 16
80002b88: 03 28 01 03  	lw	a6, 48(sp)
80002b8c: 93 07 00 00  	mv	a5, zero
;         D[i][j] += tmp[i][k] * C[k][j];
80002b90: 13 05 00 09  	addi	a0, zero, 144
80002b94: 33 85 a2 02  	mul	a0, t0, a0
80002b98: b3 84 a0 00  	add	s1, ra, a0
80002b9c: 13 8e 84 00  	addi	t3, s1, 8
80002ba0: 93 8e 04 01  	addi	t4, s1, 16
80002ba4: 13 8f 84 01  	addi	t5, s1, 24
80002ba8: 93 8f 04 02  	addi	t6, s1, 32
80002bac: 13 89 84 02  	addi	s2, s1, 40
80002bb0: 93 89 04 03  	addi	s3, s1, 48
80002bb4: 13 8a 84 03  	addi	s4, s1, 56
80002bb8: 93 8a 04 04  	addi	s5, s1, 64
80002bbc: 13 8b 84 04  	addi	s6, s1, 72
80002bc0: 93 8b 04 05  	addi	s7, s1, 80
80002bc4: 13 8c 84 05  	addi	s8, s1, 88
80002bc8: 93 8c 04 06  	addi	s9, s1, 96
80002bcc: 13 8d 84 06  	addi	s10, s1, 104
80002bd0: 93 8d 04 07  	addi	s11, s1, 112
80002bd4: 93 86 84 07  	addi	a3, s1, 120
80002bd8: 13 85 04 08  	addi	a0, s1, 128
80002bdc: 13 86 84 08  	addi	a2, s1, 136
;       D[i][j] *= beta;
80002be0: 33 87 f3 00  	add	a4, t2, a5
80002be4: 87 30 07 00  	fld	ft1, 0(a4)
80002be8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80002bec: 27 30 17 00  	fsd	ft1, 0(a4)
;         D[i][j] += tmp[i][k] * C[k][j];
80002bf0: 07 b1 04 00  	fld	ft2, 0(s1)
80002bf4: 33 04 f8 00  	add	s0, a6, a5
80002bf8: 87 31 04 00  	fld	ft3, 0(s0)
80002bfc: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c00: 27 30 17 00  	fsd	ft1, 0(a4)
80002c04: 07 31 0e 00  	fld	ft2, 0(t3)
80002c08: 87 31 04 0c  	fld	ft3, 192(s0)
80002c0c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c10: 27 30 17 00  	fsd	ft1, 0(a4)
80002c14: 07 b1 0e 00  	fld	ft2, 0(t4)
80002c18: 87 31 04 18  	fld	ft3, 384(s0)
80002c1c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c20: 27 30 17 00  	fsd	ft1, 0(a4)
80002c24: 07 31 0f 00  	fld	ft2, 0(t5)
80002c28: 87 31 04 24  	fld	ft3, 576(s0)
80002c2c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c30: 27 30 17 00  	fsd	ft1, 0(a4)
80002c34: 07 b1 0f 00  	fld	ft2, 0(t6)
80002c38: 87 31 04 30  	fld	ft3, 768(s0)
80002c3c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c40: 27 30 17 00  	fsd	ft1, 0(a4)
80002c44: 07 31 09 00  	fld	ft2, 0(s2)
80002c48: 87 31 04 3c  	fld	ft3, 960(s0)
80002c4c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c50: 27 30 17 00  	fsd	ft1, 0(a4)
80002c54: 07 b1 09 00  	fld	ft2, 0(s3)
80002c58: 87 31 04 48  	fld	ft3, 1152(s0)
80002c5c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c60: 27 30 17 00  	fsd	ft1, 0(a4)
80002c64: 07 31 0a 00  	fld	ft2, 0(s4)
80002c68: 87 31 04 54  	fld	ft3, 1344(s0)
80002c6c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c70: 27 30 17 00  	fsd	ft1, 0(a4)
80002c74: 07 b1 0a 00  	fld	ft2, 0(s5)
80002c78: 87 31 04 60  	fld	ft3, 1536(s0)
80002c7c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c80: 27 30 17 00  	fsd	ft1, 0(a4)
80002c84: 07 31 0b 00  	fld	ft2, 0(s6)
80002c88: 87 31 04 6c  	fld	ft3, 1728(s0)
80002c8c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002c90: 27 30 17 00  	fsd	ft1, 0(a4)
80002c94: 07 b1 0b 00  	fld	ft2, 0(s7)
80002c98: 87 31 04 78  	fld	ft3, 1920(s0)
80002c9c: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002ca0: 27 30 17 00  	fsd	ft1, 0(a4)
80002ca4: 07 31 0c 00  	fld	ft2, 0(s8)
80002ca8: 93 05 04 42  	addi	a1, s0, 1056
80002cac: 87 b1 05 42  	fld	ft3, 1056(a1)
80002cb0: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002cb4: 27 30 17 00  	fsd	ft1, 0(a4)
80002cb8: 07 b1 0c 00  	fld	ft2, 0(s9)
80002cbc: 93 05 04 48  	addi	a1, s0, 1152
80002cc0: 87 b1 05 48  	fld	ft3, 1152(a1)
80002cc4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002cc8: 27 30 17 00  	fsd	ft1, 0(a4)
80002ccc: 07 31 0d 00  	fld	ft2, 0(s10)
80002cd0: 93 05 04 4e  	addi	a1, s0, 1248
80002cd4: 87 b1 05 4e  	fld	ft3, 1248(a1)
80002cd8: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002cdc: 27 30 17 00  	fsd	ft1, 0(a4)
80002ce0: 07 b1 0d 00  	fld	ft2, 0(s11)
80002ce4: 93 05 04 54  	addi	a1, s0, 1344
80002ce8: 87 b1 05 54  	fld	ft3, 1344(a1)
80002cec: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002cf0: 27 30 17 00  	fsd	ft1, 0(a4)
80002cf4: 07 b1 06 00  	fld	ft2, 0(a3)
80002cf8: 93 05 04 5a  	addi	a1, s0, 1440
80002cfc: 87 b1 05 5a  	fld	ft3, 1440(a1)
80002d00: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002d04: 27 30 17 00  	fsd	ft1, 0(a4)
80002d08: 07 31 05 00  	fld	ft2, 0(a0)
80002d0c: 93 05 04 60  	addi	a1, s0, 1536
80002d10: 87 b1 05 60  	fld	ft3, 1536(a1)
80002d14: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
80002d18: 27 30 17 00  	fsd	ft1, 0(a4)
80002d1c: 07 31 06 00  	fld	ft2, 0(a2)
80002d20: 93 05 04 66  	addi	a1, s0, 1632
80002d24: 87 b1 05 66  	fld	ft3, 1632(a1)
80002d28: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
;     for (j = 0; j < nl; j++) {
80002d2c: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002d30: 27 30 17 00  	fsd	ft1, 0(a4)
;     for (j = 0; j < nl; j++) {
80002d34: e3 96 67 ea  	bne	a5, t1, 0x80002be0 <.LBB0_95+0x6c>
;   for (i = 0; i < ni; i++) {
80002d38: 93 82 12 00  	addi	t0, t0, 1
80002d3c: 93 83 03 0c  	addi	t2, t2, 192
80002d40: e3 96 12 e5  	bne	t0, a7, 0x80002b8c <.LBB0_95+0x18>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002d44: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80002d48: 83 25 01 08  	lw	a1, 128(sp)
80002d4c: b3 05 b5 40  	sub	a1, a0, a1

80002d50 <.LBB0_96>:
80002d50: 17 25 00 00  	auipc	a0, 2
80002d54: 13 05 15 5f  	addi	a0, a0, 1521
80002d58: 97 00 00 00  	auipc	ra, 0
80002d5c: e7 80 00 2a  	jalr	672(ra)
80002d60: 03 25 41 08  	lw	a0, 132(sp)
80002d64: 63 0e 05 10  	beqz	a0, 0x80002e80 <.LBB0_96+0x130>
80002d68: 13 05 80 00  	addi	a0, zero, 8
80002d6c: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
80002d70: 13 06 00 04  	addi	a2, zero, 64
80002d74: 93 06 00 0c  	addi	a3, zero, 192
80002d78: ab a0 c5 00  	scfgw	a1, a2
80002d7c: ab 20 d5 00  	scfgw	a0, a3
80002d80: 93 05 f0 00  	addi	a1, zero, 15
80002d84: 13 06 00 06  	addi	a2, zero, 96
80002d88: 93 06 00 0e  	addi	a3, zero, 224
80002d8c: ab a0 c5 00  	scfgw	a1, a2
80002d90: ab 20 d5 00  	scfgw	a0, a3
80002d94: 13 05 00 02  	addi	a0, zero, 32
80002d98: ab 20 a0 00  	scfgw	zero, a0
80002d9c: 03 25 c1 01  	lw	a0, 28(sp)
80002da0: 2b 20 05 32  	scfgwi	a0, 800
80002da4: 73 e0 00 7c  	csrsi	1984, 1
80002da8: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002dac: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80002db0: 53 02 00 22  	fmv.d	ft4, ft0
80002db4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002db8: 53 02 00 22  	fmv.d	ft4, ft0
80002dbc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002dc0: 53 02 00 22  	fmv.d	ft4, ft0
80002dc4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002dc8: 53 02 00 22  	fmv.d	ft4, ft0
80002dcc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002dd0: 53 02 00 22  	fmv.d	ft4, ft0
80002dd4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002dd8: 53 02 00 22  	fmv.d	ft4, ft0
80002ddc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002de0: 53 02 00 22  	fmv.d	ft4, ft0
80002de4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002de8: 53 02 00 22  	fmv.d	ft4, ft0
80002dec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002df0: 53 02 00 22  	fmv.d	ft4, ft0
80002df4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002df8: 53 02 00 22  	fmv.d	ft4, ft0
80002dfc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e00: 53 02 00 22  	fmv.d	ft4, ft0
80002e04: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e08: 53 02 00 22  	fmv.d	ft4, ft0
80002e0c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e10: 53 02 00 22  	fmv.d	ft4, ft0
80002e14: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e18: 53 02 00 22  	fmv.d	ft4, ft0
80002e1c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e20: 53 02 00 22  	fmv.d	ft4, ft0
80002e24: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e28: 53 02 00 22  	fmv.d	ft4, ft0
80002e2c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e30: 53 02 00 22  	fmv.d	ft4, ft0
80002e34: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e38: 53 02 00 22  	fmv.d	ft4, ft0
80002e3c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e40: 53 02 00 22  	fmv.d	ft4, ft0
80002e44: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e48: 53 02 00 22  	fmv.d	ft4, ft0
80002e4c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e50: 53 02 00 22  	fmv.d	ft4, ft0
80002e54: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e58: 53 02 00 22  	fmv.d	ft4, ft0
80002e5c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e60: 53 02 00 22  	fmv.d	ft4, ft0
80002e64: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002e68: 53 02 00 22  	fmv.d	ft4, ft0
;     for (int i = 0; i < n; i++){
80002e6c: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80002e70: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     for (int i = 0; i < n; i++){
80002e74: e3 1e 05 f2  	bnez	a0, 0x80002db0 <.LBB0_96+0x60>
80002e78: 73 f0 00 7c  	csrci	1984, 1
80002e7c: 6f 00 00 0e  	j	0x80002f5c <.LBB0_97>
;     for (int i = 0; i < n; i++){
80002e80: 03 25 c1 01  	lw	a0, 28(sp)
80002e84: 13 05 05 06  	addi	a0, a0, 96
80002e88: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002e8c: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002e90: 07 30 05 fa  	fld	ft0, -96(a0)
80002e94: 87 30 85 fa  	fld	ft1, -88(a0)
80002e98: 07 31 05 fb  	fld	ft2, -80(a0)
80002e9c: 07 32 85 fb  	fld	ft4, -72(a0)
80002ea0: 53 70 30 02  	fadd.d	ft0, ft0, ft3
80002ea4: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002ea8: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002eac: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002eb0: 87 30 05 fc  	fld	ft1, -64(a0)
80002eb4: 07 31 85 fc  	fld	ft2, -56(a0)
80002eb8: 87 31 05 fd  	fld	ft3, -48(a0)
80002ebc: 07 32 85 fd  	fld	ft4, -40(a0)
80002ec0: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002ec4: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002ec8: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002ecc: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002ed0: 87 30 05 fe  	fld	ft1, -32(a0)
80002ed4: 07 31 85 fe  	fld	ft2, -24(a0)
80002ed8: 87 31 05 ff  	fld	ft3, -16(a0)
80002edc: 07 32 85 ff  	fld	ft4, -8(a0)
80002ee0: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002ee4: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002ee8: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002eec: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002ef0: 87 30 05 00  	fld	ft1, 0(a0)
80002ef4: 07 31 85 00  	fld	ft2, 8(a0)
80002ef8: 87 31 05 01  	fld	ft3, 16(a0)
80002efc: 07 32 85 01  	fld	ft4, 24(a0)
80002f00: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002f04: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002f08: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002f0c: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002f10: 87 30 05 02  	fld	ft1, 32(a0)
80002f14: 07 31 85 02  	fld	ft2, 40(a0)
80002f18: 87 31 05 03  	fld	ft3, 48(a0)
80002f1c: 07 32 85 03  	fld	ft4, 56(a0)
80002f20: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002f24: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002f28: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002f2c: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002f30: 87 30 05 04  	fld	ft1, 64(a0)
80002f34: 07 31 85 04  	fld	ft2, 72(a0)
80002f38: 87 31 05 05  	fld	ft3, 80(a0)
80002f3c: 07 32 85 05  	fld	ft4, 88(a0)
80002f40: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002f44: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002f48: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002f4c: d3 71 02 02  	fadd.d	ft3, ft4, ft0
;     for (int i = 0; i < n; i++){
80002f50: 93 85 f5 ff  	addi	a1, a1, -1
80002f54: 13 05 05 0c  	addi	a0, a0, 192
80002f58: e3 9c 05 f2  	bnez	a1, 0x80002e90 <.LBB0_96+0x140>

80002f5c <.LBB0_97>:
80002f5c: 17 25 00 00  	auipc	a0, 2
80002f60: 13 05 c5 6a  	addi	a0, a0, 1708
80002f64: 07 30 05 00  	fld	ft0, 0(a0)
;   double error = r - r_true;
80002f68: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
;   error = error < 0.0 ? -error : error;
80002f6c: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
80002f70: 27 38 81 08  	fsd	fs0, 144(sp)
80002f74: 03 26 01 09  	lw	a2, 144(sp)
80002f78: 83 26 41 09  	lw	a3, 148(sp)

80002f7c <.LBB0_98>:
80002f7c: 17 25 00 00  	auipc	a0, 2
80002f80: 13 05 95 3b  	addi	a0, a0, 953
80002f84: 97 00 00 00  	auipc	ra, 0
80002f88: e7 80 40 07  	jalr	116(ra)

80002f8c <.LBB0_99>:
80002f8c: 17 25 00 00  	auipc	a0, 2
80002f90: 13 05 45 68  	addi	a0, a0, 1668
80002f94: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80002f98: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80002f9c: 87 3b 81 09  	fld	fs7, 152(sp)
80002fa0: 07 3b 01 0a  	fld	fs6, 160(sp)
80002fa4: 87 3a 81 0a  	fld	fs5, 168(sp)
80002fa8: 07 3a 01 0b  	fld	fs4, 176(sp)
80002fac: 87 39 81 0b  	fld	fs3, 184(sp)
80002fb0: 07 39 01 0c  	fld	fs2, 192(sp)
80002fb4: 87 34 81 0c  	fld	fs1, 200(sp)
80002fb8: 07 34 01 0d  	fld	fs0, 208(sp)
80002fbc: 83 2d c1 0d  	lw	s11, 220(sp)
80002fc0: 03 2d 01 0e  	lw	s10, 224(sp)
80002fc4: 83 2c 41 0e  	lw	s9, 228(sp)
80002fc8: 03 2c 81 0e  	lw	s8, 232(sp)
80002fcc: 83 2b c1 0e  	lw	s7, 236(sp)
80002fd0: 03 2b 01 0f  	lw	s6, 240(sp)
80002fd4: 83 2a 41 0f  	lw	s5, 244(sp)
80002fd8: 03 2a 81 0f  	lw	s4, 248(sp)
80002fdc: 83 29 c1 0f  	lw	s3, 252(sp)
80002fe0: 03 29 01 10  	lw	s2, 256(sp)
80002fe4: 83 24 41 10  	lw	s1, 260(sp)
80002fe8: 03 24 81 10  	lw	s0, 264(sp)
80002fec: 83 20 c1 10  	lw	ra, 268(sp)
80002ff0: 13 01 01 11  	addi	sp, sp, 272
80002ff4: 67 80 00 00  	ret

80002ff8 <printf_>:
; {
80002ff8: 13 01 01 fd  	addi	sp, sp, -48
80002ffc: 23 26 11 00  	sw	ra, 12(sp)
80003000: 93 02 05 00  	mv	t0, a0
80003004: 23 26 11 03  	sw	a7, 44(sp)
80003008: 23 24 01 03  	sw	a6, 40(sp)
8000300c: 23 22 f1 02  	sw	a5, 36(sp)
80003010: 23 20 e1 02  	sw	a4, 32(sp)
80003014: 23 2e d1 00  	sw	a3, 28(sp)
80003018: 23 2c c1 00  	sw	a2, 24(sp)
8000301c: 23 2a b1 00  	sw	a1, 20(sp)
80003020: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80003024: 23 24 a1 00  	sw	a0, 8(sp)

80003028 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80003028: 17 15 00 00  	auipc	a0, 1
8000302c: 13 05 45 c2  	addi	a0, a0, -988
80003030: 93 05 71 00  	addi	a1, sp, 7
80003034: 13 06 f0 ff  	addi	a2, zero, -1
80003038: 13 07 41 01  	addi	a4, sp, 20
8000303c: 93 86 02 00  	mv	a3, t0
80003040: 97 00 00 00  	auipc	ra, 0
80003044: e7 80 40 01  	jalr	20(ra)
;   return ret;
80003048: 83 20 c1 00  	lw	ra, 12(sp)
8000304c: 13 01 01 03  	addi	sp, sp, 48
80003050: 67 80 00 00  	ret

80003054 <_vsnprintf.llvm.1805434900161566649>:
; {
80003054: 13 01 01 f9  	addi	sp, sp, -112
80003058: 23 26 11 06  	sw	ra, 108(sp)
8000305c: 23 24 81 06  	sw	s0, 104(sp)
80003060: 23 22 91 06  	sw	s1, 100(sp)
80003064: 23 20 21 07  	sw	s2, 96(sp)
80003068: 23 2e 31 05  	sw	s3, 92(sp)
8000306c: 23 2c 41 05  	sw	s4, 88(sp)
80003070: 23 2a 51 05  	sw	s5, 84(sp)
80003074: 23 28 61 05  	sw	s6, 80(sp)
80003078: 23 26 71 05  	sw	s7, 76(sp)
8000307c: 23 24 81 05  	sw	s8, 72(sp)
80003080: 23 22 91 05  	sw	s9, 68(sp)
80003084: 23 20 a1 05  	sw	s10, 64(sp)
80003088: 23 2e b1 03  	sw	s11, 60(sp)
8000308c: 93 09 07 00  	mv	s3, a4
80003090: 13 84 06 00  	mv	s0, a3
80003094: 93 0a 06 00  	mv	s5, a2
80003098: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000309c: 63 86 05 00  	beqz	a1, 0x800030a8 <.LBB1_183>
800030a0: 13 09 05 00  	mv	s2, a0
800030a4: 6f 00 c0 00  	j	0x800030b0 <.LBB1_183+0x8>

800030a8 <.LBB1_183>:
800030a8: 17 19 00 00  	auipc	s2, 1
800030ac: 13 09 09 c5  	addi	s2, s2, -944
800030b0: 13 0c 00 00  	mv	s8, zero
800030b4: 13 0b 50 02  	addi	s6, zero, 37
800030b8: 93 0d 00 01  	addi	s11, zero, 16
800030bc: 93 0b e0 02  	addi	s7, zero, 46
800030c0: 37 15 00 00  	lui	a0, 1
800030c4: 13 05 05 80  	addi	a0, a0, -2048
800030c8: 23 2c a1 00  	sw	a0, 24(sp)
800030cc: 37 05 01 00  	lui	a0, 16
800030d0: 13 05 f5 ff  	addi	a0, a0, -1
800030d4: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
800030d8: 13 0d 24 00  	addi	s10, s0, 2
800030dc: 93 0c 0c 00  	mv	s9, s8
800030e0: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800030e4: 03 45 04 00  	lbu	a0, 0(s0)
800030e8: e3 04 05 30  	beqz	a0, 0x80003bf0 <.LBB1_124+0x3b0>
800030ec: 63 08 65 03  	beq	a0, s6, 0x8000311c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800030f0: 93 84 1c 00  	addi	s1, s9, 1
800030f4: 93 05 0a 00  	mv	a1, s4
800030f8: 13 86 0c 00  	mv	a2, s9
800030fc: 93 86 0a 00  	mv	a3, s5
80003100: e7 00 09 00  	jalr	s2
;       format++;
80003104: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80003108: 13 0d 1d 00  	addi	s10, s10, 1
8000310c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80003110: 03 45 04 00  	lbu	a0, 0(s0)
80003114: e3 1c 05 fc  	bnez	a0, 0x800030ec <.LBB1_183+0x44>
80003118: 6f 00 90 2d  	j	0x80003bf0 <.LBB1_124+0x3b0>
;     flags = 0U;
8000311c: 13 04 00 00  	mv	s0, zero
80003120: 6f 00 00 01  	j	0x80003130 <.LBB1_9+0x8>

80003124 <.LBB1_8>:
80003124: 93 05 00 01  	addi	a1, zero, 16

80003128 <.LBB1_9>:
80003128: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
8000312c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80003130: 03 45 fd ff  	lbu	a0, -1(s10)
80003134: 93 05 05 fe  	addi	a1, a0, -32
80003138: 63 ec bd 02  	bltu	s11, a1, 0x80003170 <.LBB1_15>
8000313c: 93 95 25 00  	slli	a1, a1, 2

80003140 <.LBB1_184>:
80003140: 17 26 00 00  	auipc	a2, 2
80003144: 13 06 46 21  	addi	a2, a2, 532
80003148: b3 85 c5 00  	add	a1, a1, a2
8000314c: 03 a6 05 00  	lw	a2, 0(a1)
80003150: 93 05 10 00  	addi	a1, zero, 1
80003154: 67 00 06 00  	jr	a2

80003158 <.LBB1_12>:
80003158: 93 05 80 00  	addi	a1, zero, 8
8000315c: 6f f0 df fc  	j	0x80003128 <.LBB1_9>

80003160 <.LBB1_13>:
80003160: 93 05 40 00  	addi	a1, zero, 4
80003164: 6f f0 5f fc  	j	0x80003128 <.LBB1_9>

80003168 <.LBB1_14>:
80003168: 93 05 20 00  	addi	a1, zero, 2
8000316c: 6f f0 df fb  	j	0x80003128 <.LBB1_9>

80003170 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003170: 93 05 05 fd  	addi	a1, a0, -48
80003174: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003178: 93 05 fd ff  	addi	a1, s10, -1
8000317c: 93 06 90 00  	addi	a3, zero, 9
80003180: 63 ee c6 06  	bltu	a3, a2, 0x800031fc <.LBB1_15+0x8c>
80003184: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003188: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000318c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003190: b3 06 8b 03  	mul	a3, s6, s8
80003194: 93 85 15 00  	addi	a1, a1, 1
80003198: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000319c: 93 06 05 fd  	addi	a3, a0, -48
800031a0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800031a4: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800031a8: e3 e0 86 ff  	bltu	a3, s8, 0x80003188 <.LBB1_15+0x18>
800031ac: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800031b0: 63 16 75 0b  	bne	a0, s7, 0x8000325c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800031b4: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
800031b8: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
800031bc: 93 05 05 fd  	addi	a1, a0, -48
800031c0: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
800031c4: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
800031c8: 93 06 90 00  	addi	a3, zero, 9
800031cc: 63 e0 c6 06  	bltu	a3, a2, 0x8000322c <.LBB1_15+0xbc>
800031d0: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800031d4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800031d8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800031dc: b3 86 8b 03  	mul	a3, s7, s8
800031e0: 93 85 15 00  	addi	a1, a1, 1
800031e4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800031e8: 93 06 05 fd  	addi	a3, a0, -48
800031ec: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800031f0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800031f4: e3 e0 86 ff  	bltu	a3, s8, 0x800031d4 <.LBB1_15+0x64>
800031f8: 6f 00 00 07  	j	0x80003268 <.LBB1_15+0xf8>
;     else if (*format == '*') {
800031fc: 13 06 a0 02  	addi	a2, zero, 42
80003200: 63 18 c5 04  	bne	a0, a2, 0x80003250 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80003204: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003208: 63 d4 05 00  	bgez	a1, 0x80003210 <.LBB1_15+0xa0>
8000320c: 13 64 24 00  	ori	s0, s0, 2
80003210: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80003214: 03 45 0d 00  	lbu	a0, 0(s10)
80003218: 13 d6 f5 41  	srai	a2, a1, 31
8000321c: b3 85 c5 00  	add	a1, a1, a2
80003220: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80003224: e3 08 75 f9  	beq	a0, s7, 0x800031b4 <.LBB1_15+0x44>
80003228: 6f 00 40 03  	j	0x8000325c <.LBB1_15+0xec>
;       else if (*format == '*') {
8000322c: 13 06 a0 02  	addi	a2, zero, 42
80003230: 63 1a c5 02  	bne	a0, a2, 0x80003264 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80003234: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003238: 63 44 70 01  	bgtz	s7, 0x80003240 <.LBB1_15+0xd0>
8000323c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003240: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003244: 13 0d 2d 00  	addi	s10, s10, 2
80003248: 93 89 49 00  	addi	s3, s3, 4
8000324c: 6f 00 00 02  	j	0x8000326c <.LBB1_15+0xfc>
80003250: 13 0b 00 00  	mv	s6, zero
80003254: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003258: e3 0e 75 f5  	beq	a0, s7, 0x800031b4 <.LBB1_15+0x44>
8000325c: 93 0b 00 00  	mv	s7, zero
80003260: 6f 00 c0 00  	j	0x8000326c <.LBB1_15+0xfc>
80003264: 93 0b 00 00  	mv	s7, zero
80003268: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000326c: 93 05 85 f9  	addi	a1, a0, -104
80003270: 13 d6 15 00  	srli	a2, a1, 1
80003274: 93 95 f5 01  	slli	a1, a1, 31
80003278: b3 e5 c5 00  	or	a1, a1, a2
8000327c: 13 06 90 00  	addi	a2, zero, 9
80003280: 63 62 b6 06  	bltu	a2, a1, 0x800032e4 <.LBB1_42>
80003284: 93 95 25 00  	slli	a1, a1, 2

80003288 <.LBB1_185>:
80003288: 17 26 00 00  	auipc	a2, 2
8000328c: 13 06 06 11  	addi	a2, a2, 272
80003290: b3 85 c5 00  	add	a1, a1, a2
80003294: 83 a6 05 00  	lw	a3, 0(a1)
80003298: 93 05 10 00  	addi	a1, zero, 1
8000329c: 13 06 00 10  	addi	a2, zero, 256
800032a0: 67 80 06 00  	jr	a3

800032a4 <.LBB1_36>:
;         if (*format == 'h') {
800032a4: 03 45 1d 00  	lbu	a0, 1(s10)
800032a8: 93 05 80 06  	addi	a1, zero, 104
800032ac: 63 12 b5 12  	bne	a0, a1, 0x800033d0 <.LBB1_53+0x48>
800032b0: 93 05 20 00  	addi	a1, zero, 2
800032b4: 13 06 00 0c  	addi	a2, zero, 192
800032b8: 6f 00 00 02  	j	0x800032d8 <.LBB1_41>

800032bc <.LBB1_38>:
800032bc: 13 06 00 20  	addi	a2, zero, 512
800032c0: 6f 00 80 01  	j	0x800032d8 <.LBB1_41>

800032c4 <.LBB1_39>:
;         if (*format == 'l') {
800032c4: 03 45 1d 00  	lbu	a0, 1(s10)
800032c8: 93 05 c0 06  	addi	a1, zero, 108
800032cc: 63 18 b5 10  	bne	a0, a1, 0x800033dc <.LBB1_53+0x54>
800032d0: 93 05 20 00  	addi	a1, zero, 2
800032d4: 13 06 00 30  	addi	a2, zero, 768

800032d8 <.LBB1_41>:
800032d8: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
800032dc: 03 45 0d 00  	lbu	a0, 0(s10)
800032e0: 33 64 c4 00  	or	s0, s0, a2

800032e4 <.LBB1_42>:
;     switch (*format) {
800032e4: 93 05 b5 fd  	addi	a1, a0, -37
800032e8: 13 06 30 05  	addi	a2, zero, 83
800032ec: 63 64 b6 10  	bltu	a2, a1, 0x800033f4 <.LBB1_59>
800032f0: 93 95 25 00  	slli	a1, a1, 2

800032f4 <.LBB1_186>:
800032f4: 17 26 00 00  	auipc	a2, 2
800032f8: 13 06 c6 0c  	addi	a2, a2, 204
800032fc: b3 85 c5 00  	add	a1, a1, a2
80003300: 03 a6 05 00  	lw	a2, 0(a1)
80003304: 93 05 80 00  	addi	a1, zero, 8
80003308: 13 0c 00 01  	addi	s8, zero, 16
8000330c: 67 00 06 00  	jr	a2

80003310 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003310: 13 74 f4 fe  	andi	s0, s0, -17
80003314: 13 0c a0 00  	addi	s8, zero, 10

80003318 <.LBB1_45>:
;         if (*format == 'X') {
80003318: 93 05 80 05  	addi	a1, zero, 88
8000331c: 63 14 b5 00  	bne	a0, a1, 0x80003324 <.LBB1_45+0xc>
80003320: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003324: 93 05 40 06  	addi	a1, zero, 100
80003328: 63 08 b5 0e  	beq	a0, a1, 0x80003418 <.LBB1_62+0x8>
8000332c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003330: 13 06 90 06  	addi	a2, zero, 105
80003334: 63 02 c5 0e  	beq	a0, a2, 0x80003418 <.LBB1_62+0x8>
80003338: 6f 00 80 0d  	j	0x80003410 <.LBB1_62>

8000333c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
8000333c: 93 05 60 04  	addi	a1, zero, 70
80003340: 63 14 b5 00  	bne	a0, a1, 0x80003348 <.LBB1_49+0xc>
80003344: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003348: 13 85 79 00  	addi	a0, s3, 7
8000334c: 13 75 85 ff  	andi	a0, a0, -8
80003350: 07 35 05 00  	fld	fa0, 0(a0)
80003354: 93 09 85 00  	addi	s3, a0, 8
80003358: 13 05 09 00  	mv	a0, s2
8000335c: 93 05 0a 00  	mv	a1, s4
80003360: 13 86 0c 00  	mv	a2, s9
80003364: 93 86 0a 00  	mv	a3, s5
80003368: 13 87 0b 00  	mv	a4, s7
8000336c: 93 07 0b 00  	mv	a5, s6
80003370: 13 08 04 00  	mv	a6, s0
80003374: 97 10 00 00  	auipc	ra, 1
80003378: e7 80 80 98  	jalr	-1656(ra)
8000337c: 6f 00 00 7c  	j	0x80003b3c <.LBB1_124+0x2fc>

80003380 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003380: 83 25 81 01  	lw	a1, 24(sp)
80003384: 33 64 b4 00  	or	s0, s0, a1

80003388 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003388: 13 65 25 00  	ori	a0, a0, 2
8000338c: 93 05 70 04  	addi	a1, zero, 71
80003390: 63 14 b5 00  	bne	a0, a1, 0x80003398 <.LBB1_53+0x10>
80003394: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003398: 13 85 79 00  	addi	a0, s3, 7
8000339c: 13 75 85 ff  	andi	a0, a0, -8
800033a0: 07 35 05 00  	fld	fa0, 0(a0)
800033a4: 93 09 85 00  	addi	s3, a0, 8
800033a8: 13 05 09 00  	mv	a0, s2
800033ac: 93 05 0a 00  	mv	a1, s4
800033b0: 13 86 0c 00  	mv	a2, s9
800033b4: 93 86 0a 00  	mv	a3, s5
800033b8: 13 87 0b 00  	mv	a4, s7
800033bc: 93 07 0b 00  	mv	a5, s6
800033c0: 13 08 04 00  	mv	a6, s0
800033c4: 97 10 00 00  	auipc	ra, 1
800033c8: e7 80 80 01  	jalr	24(ra)
800033cc: 6f 00 00 77  	j	0x80003b3c <.LBB1_124+0x2fc>
800033d0: 13 64 04 08  	ori	s0, s0, 128
800033d4: 13 0d 1d 00  	addi	s10, s10, 1
800033d8: 6f f0 df f0  	j	0x800032e4 <.LBB1_42>
800033dc: 13 64 04 10  	ori	s0, s0, 256
800033e0: 13 0d 1d 00  	addi	s10, s10, 1
800033e4: 6f f0 1f f0  	j	0x800032e4 <.LBB1_42>

800033e8 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
800033e8: 13 8c 1c 00  	addi	s8, s9, 1
800033ec: 13 05 50 02  	addi	a0, zero, 37
800033f0: 6f 00 80 00  	j	0x800033f8 <.LBB1_59+0x4>

800033f4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800033f4: 13 8c 1c 00  	addi	s8, s9, 1
800033f8: 93 05 0a 00  	mv	a1, s4
800033fc: 13 86 0c 00  	mv	a2, s9
80003400: 93 86 0a 00  	mv	a3, s5
80003404: e7 00 09 00  	jalr	s2
80003408: 6f 00 80 73  	j	0x80003b40 <.LBB1_124+0x300>

8000340c <.LBB1_61>:
8000340c: 93 05 20 00  	addi	a1, zero, 2

80003410 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003410: 13 74 34 ff  	andi	s0, s0, -13
80003414: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003418: 93 75 04 40  	andi	a1, s0, 1024
8000341c: 63 84 05 00  	beqz	a1, 0x80003424 <.LBB1_62+0x14>
80003420: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003424: 93 05 90 06  	addi	a1, zero, 105
80003428: 63 06 b5 00  	beq	a0, a1, 0x80003434 <.LBB1_62+0x24>
8000342c: 93 05 40 06  	addi	a1, zero, 100
80003430: 63 1c b5 12  	bne	a0, a1, 0x80003568 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003434: 13 75 04 20  	andi	a0, s0, 512
80003438: 63 16 05 02  	bnez	a0, 0x80003464 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
8000343c: 13 75 04 10  	andi	a0, s0, 256
80003440: 63 1c 05 14  	bnez	a0, 0x80003598 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003444: 13 75 04 04  	andi	a0, s0, 64
80003448: 63 18 05 4e  	bnez	a0, 0x80003938 <.LBB1_124+0xf8>
8000344c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003450: 93 75 04 08  	andi	a1, s0, 128
80003454: 63 84 05 4e  	beqz	a1, 0x8000393c <.LBB1_124+0xfc>
80003458: 13 15 08 01  	slli	a0, a6, 16
8000345c: 13 58 05 41  	srai	a6, a0, 16
80003460: 6f 00 c0 4d  	j	0x8000393c <.LBB1_124+0xfc>
80003464: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003468: 13 85 79 00  	addi	a0, s3, 7
8000346c: 13 75 85 ff  	andi	a0, a0, -8
80003470: 83 29 05 00  	lw	s3, 0(a0)
80003474: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003478: 13 65 45 00  	ori	a0, a0, 4
8000347c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003480: 23 24 a1 00  	sw	a0, 8(sp)
80003484: 33 e5 a9 00  	or	a0, s3, a0
80003488: 63 14 05 00  	bnez	a0, 0x80003490 <.LBB1_62+0x80>
8000348c: 13 74 f4 fe  	andi	s0, s0, -17
80003490: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003494: 93 75 04 40  	andi	a1, s0, 1024
80003498: 93 d5 a5 00  	srli	a1, a1, 10
8000349c: 33 75 b5 00  	and	a0, a0, a1
800034a0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800034a4: 63 14 05 0a  	bnez	a0, 0x8000354c <.LBB1_62+0x13c>
800034a8: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800034ac: 63 da 04 00  	bgez	s1, 0x800034c0 <.LBB1_62+0xb0>
800034b0: 33 35 30 01  	snez	a0, s3
800034b4: b3 09 30 41  	neg	s3, s3
800034b8: 33 85 a4 00  	add	a0, s1, a0
800034bc: b3 04 a0 40  	neg	s1, a0
800034c0: 13 09 00 00  	mv	s2, zero
800034c4: 13 75 04 02  	andi	a0, s0, 32
800034c8: 13 45 15 06  	xori	a0, a0, 97
800034cc: 13 05 65 0f  	addi	a0, a0, 246
800034d0: 23 2a a1 00  	sw	a0, 20(sp)
800034d4: 6f 00 40 02  	j	0x800034f8 <.LBB1_62+0xe8>
800034d8: 13 06 10 00  	addi	a2, zero, 1
800034dc: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034e0: 93 36 f9 01  	sltiu	a3, s2, 31
800034e4: 33 f6 c6 00  	and	a2, a3, a2
800034e8: 13 89 07 00  	mv	s2, a5
800034ec: 93 09 05 00  	mv	s3, a0
800034f0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034f4: 63 0c 06 04  	beqz	a2, 0x8000354c <.LBB1_62+0x13c>
;       value /= base;
800034f8: 13 85 09 00  	mv	a0, s3
800034fc: 93 85 04 00  	mv	a1, s1
80003500: 13 06 0c 00  	mv	a2, s8
80003504: 93 06 00 00  	mv	a3, zero
80003508: 97 d0 ff ff  	auipc	ra, 1048573
8000350c: e7 80 80 af  	jalr	-1288(ra)
80003510: 33 06 85 03  	mul	a2, a0, s8
80003514: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003518: 13 77 e6 0f  	andi	a4, a2, 254
8000351c: 93 06 00 03  	addi	a3, zero, 48
80003520: 93 07 a0 00  	addi	a5, zero, 10
80003524: 63 64 f7 00  	bltu	a4, a5, 0x8000352c <.LBB1_62+0x11c>
80003528: 83 26 41 01  	lw	a3, 20(sp)
8000352c: 33 86 c6 00  	add	a2, a3, a2
80003530: 93 06 c1 01  	addi	a3, sp, 28
80003534: b3 86 26 01  	add	a3, a3, s2
80003538: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000353c: e3 9e 04 f8  	bnez	s1, 0x800034d8 <.LBB1_62+0xc8>
80003540: 33 b6 89 01  	sltu	a2, s3, s8
80003544: 13 46 16 00  	xori	a2, a2, 1
80003548: 6f f0 5f f9  	j	0x800034dc <.LBB1_62+0xcc>
8000354c: 03 25 41 00  	lw	a0, 4(sp)
80003550: 93 09 85 00  	addi	s3, a0, 8
80003554: 03 25 81 00  	lw	a0, 8(sp)
80003558: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000355c: 13 07 c1 01  	addi	a4, sp, 28
80003560: 03 29 c1 00  	lw	s2, 12(sp)
80003564: 6f 00 80 47  	j	0x800039dc <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003568: 13 75 04 20  	andi	a0, s0, 512
8000356c: 63 12 05 0c  	bnez	a0, 0x80003630 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003570: 13 75 04 10  	andi	a0, s0, 256
80003574: 63 1e 05 46  	bnez	a0, 0x800039f0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003578: 13 75 04 04  	andi	a0, s0, 64
8000357c: 63 10 05 50  	bnez	a0, 0x80003a7c <.LBB1_124+0x23c>
80003580: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003584: 93 75 04 08  	andi	a1, s0, 128
80003588: 63 8c 05 4e  	beqz	a1, 0x80003a80 <.LBB1_124+0x240>
8000358c: 83 25 01 01  	lw	a1, 16(sp)
80003590: 33 75 b5 00  	and	a0, a0, a1
80003594: 6f 00 c0 4e  	j	0x80003a80 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003598: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000359c: 63 14 08 00  	bnez	a6, 0x800035a4 <.LBB1_62+0x194>
800035a0: 13 74 f4 fe  	andi	s0, s0, -17
800035a4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800035a8: 13 76 04 40  	andi	a2, s0, 1024
800035ac: 13 56 a6 00  	srli	a2, a2, 10
800035b0: b3 f5 c5 00  	and	a1, a1, a2
800035b4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800035b8: 63 9c 05 40  	bnez	a1, 0x800039d0 <.LBB1_124+0x190>
800035bc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800035c0: 13 56 f8 41  	srai	a2, a6, 31
800035c4: b3 06 c8 00  	add	a3, a6, a2
800035c8: b3 c6 c6 00  	xor	a3, a3, a2
800035cc: 13 76 04 02  	andi	a2, s0, 32
800035d0: 13 46 16 06  	xori	a2, a2, 97
800035d4: 93 08 66 0f  	addi	a7, a2, 246
800035d8: 6f 00 40 03  	j	0x8000360c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035dc: 33 05 f6 00  	add	a0, a2, a5
800035e0: 93 87 15 00  	addi	a5, a1, 1
800035e4: 13 06 c1 01  	addi	a2, sp, 28
800035e8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800035ec: b3 b6 86 01  	sltu	a3, a3, s8
800035f0: 93 c6 16 00  	xori	a3, a3, 1
800035f4: 93 b5 f5 01  	sltiu	a1, a1, 31
800035f8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800035fc: 23 00 a6 00  	sb	a0, 0(a2)
80003600: 93 85 07 00  	mv	a1, a5
80003604: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003608: 63 84 04 3c  	beqz	s1, 0x800039d0 <.LBB1_124+0x190>
;       value /= base;
8000360c: 33 d7 86 03  	divu	a4, a3, s8
80003610: 33 06 87 03  	mul	a2, a4, s8
80003614: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003618: 13 f5 e7 0f  	andi	a0, a5, 254
8000361c: 13 06 00 03  	addi	a2, zero, 48
80003620: 93 04 a0 00  	addi	s1, zero, 10
80003624: e3 6c 95 fa  	bltu	a0, s1, 0x800035dc <.LBB1_62+0x1cc>
80003628: 13 86 08 00  	mv	a2, a7
8000362c: 6f f0 1f fb  	j	0x800035dc <.LBB1_62+0x1cc>
80003630: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003634: 13 85 79 00  	addi	a0, s3, 7
80003638: 93 75 85 ff  	andi	a1, a0, -8
8000363c: 03 a9 05 00  	lw	s2, 0(a1)
80003640: 13 e5 45 00  	ori	a0, a1, 4
80003644: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003648: 33 65 39 01  	or	a0, s2, s3
8000364c: 23 24 b1 00  	sw	a1, 8(sp)
80003650: 63 14 05 00  	bnez	a0, 0x80003658 <.LBB1_62+0x248>
80003654: 13 74 f4 fe  	andi	s0, s0, -17
80003658: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000365c: 93 75 04 40  	andi	a1, s0, 1024
80003660: 93 d5 a5 00  	srli	a1, a1, 10
80003664: 33 75 b5 00  	and	a0, a0, a1
80003668: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000366c: 63 18 05 08  	bnez	a0, 0x800036fc <.LBB1_62+0x2ec>
80003670: 93 04 00 00  	mv	s1, zero
80003674: 13 75 04 02  	andi	a0, s0, 32
80003678: 13 45 15 06  	xori	a0, a0, 97
8000367c: 13 05 65 0f  	addi	a0, a0, 246
80003680: 23 2a a1 00  	sw	a0, 20(sp)
80003684: 6f 00 40 02  	j	0x800036a8 <.LBB1_62+0x298>
80003688: 13 06 10 00  	addi	a2, zero, 1
8000368c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003690: 93 b6 f4 01  	sltiu	a3, s1, 31
80003694: 33 f6 c6 00  	and	a2, a3, a2
80003698: 93 84 07 00  	mv	s1, a5
8000369c: 13 09 05 00  	mv	s2, a0
800036a0: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800036a4: 63 0c 06 04  	beqz	a2, 0x800036fc <.LBB1_62+0x2ec>
;       value /= base;
800036a8: 13 05 09 00  	mv	a0, s2
800036ac: 93 85 09 00  	mv	a1, s3
800036b0: 13 06 0c 00  	mv	a2, s8
800036b4: 93 06 00 00  	mv	a3, zero
800036b8: 97 d0 ff ff  	auipc	ra, 1048573
800036bc: e7 80 80 94  	jalr	-1720(ra)
800036c0: 33 06 85 03  	mul	a2, a0, s8
800036c4: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036c8: 13 77 e6 0f  	andi	a4, a2, 254
800036cc: 93 06 00 03  	addi	a3, zero, 48
800036d0: 93 07 a0 00  	addi	a5, zero, 10
800036d4: 63 64 f7 00  	bltu	a4, a5, 0x800036dc <.LBB1_62+0x2cc>
800036d8: 83 26 41 01  	lw	a3, 20(sp)
800036dc: 33 86 c6 00  	add	a2, a3, a2
800036e0: 93 06 c1 01  	addi	a3, sp, 28
800036e4: b3 86 96 00  	add	a3, a3, s1
800036e8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800036ec: e3 9e 09 f8  	bnez	s3, 0x80003688 <.LBB1_62+0x278>
800036f0: 33 36 89 01  	sltu	a2, s2, s8
800036f4: 13 46 16 00  	xori	a2, a2, 1
800036f8: 6f f0 5f f9  	j	0x8000368c <.LBB1_62+0x27c>
800036fc: 03 25 81 00  	lw	a0, 8(sp)
80003700: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003704: 13 07 c1 01  	addi	a4, sp, 28
80003708: 03 29 c1 00  	lw	s2, 12(sp)
8000370c: 6f 00 40 40  	j	0x80003b10 <.LBB1_124+0x2d0>

80003710 <.LBB1_108>:
80003710: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003714: 13 79 24 00  	andi	s2, s0, 2
80003718: 93 04 10 00  	addi	s1, zero, 1
8000371c: 63 1e 09 02  	bnez	s2, 0x80003758 <.LBB1_108+0x48>
80003720: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003724: 63 6a 9b 02  	bltu	s6, s1, 0x80003758 <.LBB1_108+0x48>
80003728: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
8000372c: 13 0c fb ff  	addi	s8, s6, -1
80003730: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003734: 33 86 8c 00  	add	a2, s9, s0
80003738: 13 05 00 02  	addi	a0, zero, 32
8000373c: 93 05 0a 00  	mv	a1, s4
80003740: 93 86 0a 00  	mv	a3, s5
80003744: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003748: 13 04 14 00  	addi	s0, s0, 1
8000374c: e3 14 8c fe  	bne	s8, s0, 0x80003734 <.LBB1_108+0x24>
80003750: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003754: b3 8c 8c 00  	add	s9, s9, s0
80003758: 03 c5 09 00  	lbu	a0, 0(s3)
8000375c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003760: 93 89 49 00  	addi	s3, s3, 4
80003764: 13 8c 1c 00  	addi	s8, s9, 1
80003768: 93 05 0a 00  	mv	a1, s4
8000376c: 13 86 0c 00  	mv	a2, s9
80003770: 93 86 0a 00  	mv	a3, s5
80003774: 13 89 0b 00  	mv	s2, s7
80003778: e7 80 0b 00  	jalr	s7
8000377c: 33 b5 64 01  	sltu	a0, s1, s6
80003780: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003784: 33 65 a4 00  	or	a0, s0, a0
80003788: 63 1c 05 3a  	bnez	a0, 0x80003b40 <.LBB1_124+0x300>
;           while (l++ < width) {
8000378c: 33 04 9b 40  	sub	s0, s6, s1
80003790: 93 0b e0 02  	addi	s7, zero, 46
80003794: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003798: 13 0c 1c 00  	addi	s8, s8, 1
8000379c: 13 05 00 02  	addi	a0, zero, 32
800037a0: 93 05 0a 00  	mv	a1, s4
800037a4: 93 86 0a 00  	mv	a3, s5
800037a8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800037ac: 13 04 f4 ff  	addi	s0, s0, -1
800037b0: e3 12 04 fe  	bnez	s0, 0x80003794 <.LBB1_108+0x84>
800037b4: 13 0b 50 02  	addi	s6, zero, 37
800037b8: 13 04 1d 00  	addi	s0, s10, 1
800037bc: 6f f0 df 91  	j	0x800030d8 <.LBB1_183+0x30>

800037c0 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800037c0: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800037c4: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800037c8: 63 14 05 00  	bnez	a0, 0x800037d0 <.LBB1_117+0x10>
800037cc: 93 fe fe fe  	andi	t4, t4, -17
800037d0: 93 04 a0 00  	addi	s1, zero, 10
800037d4: 13 04 f0 00  	addi	s0, zero, 15
800037d8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800037dc: 13 f6 0e 40  	andi	a2, t4, 1024
800037e0: 13 56 a6 00  	srli	a2, a2, 10
800037e4: b3 f5 c5 00  	and	a1, a1, a2
800037e8: 93 07 00 00  	mv	a5, zero
800037ec: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800037f0: 63 98 05 10  	bnez	a1, 0x80003900 <.LBB1_124+0xc0>
800037f4: 93 05 00 00  	mv	a1, zero
800037f8: 6f 00 40 03  	j	0x8000382c <.LBB1_117+0x6c>
800037fc: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003800: 33 06 d6 00  	add	a2, a2, a3
80003804: 93 87 15 00  	addi	a5, a1, 1
80003808: 93 06 c1 01  	addi	a3, sp, 28
8000380c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003810: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003814: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003818: 93 b5 f5 01  	sltiu	a1, a1, 31
8000381c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003820: 23 80 c6 00  	sb	a2, 0(a3)
80003824: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003828: 63 0c 07 0c  	beqz	a4, 0x80003900 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000382c: 93 76 e5 00  	andi	a3, a0, 14
80003830: 13 06 00 03  	addi	a2, zero, 48
80003834: e3 e4 96 fc  	bltu	a3, s1, 0x800037fc <.LBB1_117+0x3c>
80003838: 13 06 70 03  	addi	a2, zero, 55
8000383c: 6f f0 1f fc  	j	0x800037fc <.LBB1_117+0x3c>

80003840 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003840: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003844: 03 c5 07 00  	lbu	a0, 0(a5)
80003848: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000384c: 63 0c 05 02  	beqz	a0, 0x80003884 <.LBB1_124+0x44>
80003850: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003854: 63 84 0b 00  	beqz	s7, 0x8000385c <.LBB1_124+0x1c>
80003858: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000385c: 93 85 f5 ff  	addi	a1, a1, -1
80003860: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003864: 03 c7 16 00  	lbu	a4, 1(a3)
80003868: 13 86 16 00  	addi	a2, a3, 1
8000386c: b3 36 e0 00  	snez	a3, a4
80003870: 33 37 b0 00  	snez	a4, a1
80003874: 33 77 d7 00  	and	a4, a4, a3
80003878: 93 85 f5 ff  	addi	a1, a1, -1
8000387c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003880: e3 12 07 fe  	bnez	a4, 0x80003864 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003884: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003888: 93 75 04 40  	andi	a1, s0, 1024
8000388c: 93 b4 15 00  	seqz	s1, a1
80003890: 23 2a c1 00  	sw	a2, 20(sp)
80003894: b3 35 76 01  	sltu	a1, a2, s7
80003898: b3 e5 b4 00  	or	a1, s1, a1
8000389c: 63 94 05 00  	bnez	a1, 0x800038a4 <.LBB1_124+0x64>
800038a0: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800038a4: 93 75 24 00  	andi	a1, s0, 2
800038a8: 23 26 b1 00  	sw	a1, 12(sp)
800038ac: 63 96 05 2a  	bnez	a1, 0x80003b58 <.LBB1_124+0x318>
800038b0: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800038b4: 63 fe 65 29  	bgeu	a1, s6, 0x80003b50 <.LBB1_124+0x310>
800038b8: 23 24 f1 00  	sw	a5, 8(sp)
800038bc: 13 04 00 00  	mv	s0, zero
800038c0: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800038c4: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800038c8: 33 86 8c 00  	add	a2, s9, s0
800038cc: 13 05 00 02  	addi	a0, zero, 32
800038d0: 93 05 0a 00  	mv	a1, s4
800038d4: 93 86 0a 00  	mv	a3, s5
800038d8: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800038dc: 13 04 14 00  	addi	s0, s0, 1
800038e0: e3 14 89 fe  	bne	s2, s0, 0x800038c8 <.LBB1_124+0x88>
800038e4: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800038e8: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800038ec: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800038f0: 23 2a b1 00  	sw	a1, 20(sp)
800038f4: b3 8c 8c 00  	add	s9, s9, s0
800038f8: 13 09 0c 00  	mv	s2, s8
800038fc: 6f 00 c0 25  	j	0x80003b58 <.LBB1_124+0x318>
80003900: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003904: 13 07 c1 01  	addi	a4, sp, 28
80003908: 93 08 00 01  	addi	a7, zero, 16
8000390c: 13 0e 80 00  	addi	t3, zero, 8
80003910: 13 05 09 00  	mv	a0, s2
80003914: 93 05 0a 00  	mv	a1, s4
80003918: 13 86 0c 00  	mv	a2, s9
8000391c: 93 86 0a 00  	mv	a3, s5
80003920: 13 08 00 00  	mv	a6, zero
80003924: 93 83 0b 00  	mv	t2, s7
80003928: 97 10 00 00  	auipc	ra, 1
8000392c: e7 80 00 fa  	jalr	-96(ra)
80003930: 13 0c 05 00  	mv	s8, a0
80003934: 6f 00 00 21  	j	0x80003b44 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003938: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000393c: 63 14 08 00  	bnez	a6, 0x80003944 <.LBB1_124+0x104>
80003940: 13 74 f4 fe  	andi	s0, s0, -17
80003944: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003948: 13 76 04 40  	andi	a2, s0, 1024
8000394c: 13 56 a6 00  	srli	a2, a2, 10
80003950: b3 f5 c5 00  	and	a1, a1, a2
80003954: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003958: 63 9c 05 06  	bnez	a1, 0x800039d0 <.LBB1_124+0x190>
8000395c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003960: 13 56 f8 41  	srai	a2, a6, 31
80003964: b3 06 c8 00  	add	a3, a6, a2
80003968: b3 c6 c6 00  	xor	a3, a3, a2
8000396c: 13 76 04 02  	andi	a2, s0, 32
80003970: 13 46 16 06  	xori	a2, a2, 97
80003974: 93 08 66 0f  	addi	a7, a2, 246
80003978: 6f 00 40 03  	j	0x800039ac <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000397c: 33 05 f6 00  	add	a0, a2, a5
80003980: 93 87 15 00  	addi	a5, a1, 1
80003984: 13 06 c1 01  	addi	a2, sp, 28
80003988: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000398c: b3 b6 86 01  	sltu	a3, a3, s8
80003990: 93 c6 16 00  	xori	a3, a3, 1
80003994: 93 b5 f5 01  	sltiu	a1, a1, 31
80003998: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000399c: 23 00 a6 00  	sb	a0, 0(a2)
800039a0: 93 85 07 00  	mv	a1, a5
800039a4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039a8: 63 84 04 02  	beqz	s1, 0x800039d0 <.LBB1_124+0x190>
;       value /= base;
800039ac: 33 d7 86 03  	divu	a4, a3, s8
800039b0: 33 06 87 03  	mul	a2, a4, s8
800039b4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039b8: 13 f5 e7 0f  	andi	a0, a5, 254
800039bc: 13 06 00 03  	addi	a2, zero, 48
800039c0: 93 04 a0 00  	addi	s1, zero, 10
800039c4: e3 6c 95 fa  	bltu	a0, s1, 0x8000397c <.LBB1_124+0x13c>
800039c8: 13 86 08 00  	mv	a2, a7
800039cc: 6f f0 1f fb  	j	0x8000397c <.LBB1_124+0x13c>
800039d0: 93 89 49 00  	addi	s3, s3, 4
800039d4: 13 58 f8 01  	srli	a6, a6, 31
800039d8: 13 07 c1 01  	addi	a4, sp, 28
800039dc: 13 05 09 00  	mv	a0, s2
800039e0: 93 05 0a 00  	mv	a1, s4
800039e4: 13 86 0c 00  	mv	a2, s9
800039e8: 93 86 0a 00  	mv	a3, s5
800039ec: 6f 00 80 13  	j	0x80003b24 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800039f0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800039f4: 63 14 05 00  	bnez	a0, 0x800039fc <.LBB1_124+0x1bc>
800039f8: 13 74 f4 fe  	andi	s0, s0, -17
800039fc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a00: 13 76 04 40  	andi	a2, s0, 1024
80003a04: 13 56 a6 00  	srli	a2, a2, 10
80003a08: b3 f5 c5 00  	and	a1, a1, a2
80003a0c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a10: 63 9c 05 0e  	bnez	a1, 0x80003b08 <.LBB1_124+0x2c8>
80003a14: 13 06 00 00  	mv	a2, zero
80003a18: 93 75 04 02  	andi	a1, s0, 32
80003a1c: 93 c5 15 06  	xori	a1, a1, 97
80003a20: 13 88 65 0f  	addi	a6, a1, 246
80003a24: 6f 00 40 03  	j	0x80003a58 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a28: 33 87 e7 00  	add	a4, a5, a4
80003a2c: 93 07 16 00  	addi	a5, a2, 1
80003a30: 93 05 c1 01  	addi	a1, sp, 28
80003a34: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a38: 33 35 85 01  	sltu	a0, a0, s8
80003a3c: 13 45 15 00  	xori	a0, a0, 1
80003a40: 13 36 f6 01  	sltiu	a2, a2, 31
80003a44: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a48: 23 80 e4 00  	sb	a4, 0(s1)
80003a4c: 13 86 07 00  	mv	a2, a5
80003a50: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a54: 63 8a 05 0a  	beqz	a1, 0x80003b08 <.LBB1_124+0x2c8>
;       value /= base;
80003a58: b3 56 85 03  	divu	a3, a0, s8
80003a5c: 33 87 86 03  	mul	a4, a3, s8
80003a60: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a64: 93 74 e7 0f  	andi	s1, a4, 254
80003a68: 93 07 00 03  	addi	a5, zero, 48
80003a6c: 93 05 a0 00  	addi	a1, zero, 10
80003a70: e3 ec b4 fa  	bltu	s1, a1, 0x80003a28 <.LBB1_124+0x1e8>
80003a74: 93 07 08 00  	mv	a5, a6
80003a78: 6f f0 1f fb  	j	0x80003a28 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a7c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003a80: 63 14 05 00  	bnez	a0, 0x80003a88 <.LBB1_124+0x248>
80003a84: 13 74 f4 fe  	andi	s0, s0, -17
80003a88: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a8c: 13 76 04 40  	andi	a2, s0, 1024
80003a90: 13 56 a6 00  	srli	a2, a2, 10
80003a94: b3 f5 c5 00  	and	a1, a1, a2
80003a98: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a9c: 63 96 05 06  	bnez	a1, 0x80003b08 <.LBB1_124+0x2c8>
80003aa0: 13 06 00 00  	mv	a2, zero
80003aa4: 93 75 04 02  	andi	a1, s0, 32
80003aa8: 93 c5 15 06  	xori	a1, a1, 97
80003aac: 13 88 65 0f  	addi	a6, a1, 246
80003ab0: 6f 00 40 03  	j	0x80003ae4 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ab4: 33 87 e7 00  	add	a4, a5, a4
80003ab8: 93 07 16 00  	addi	a5, a2, 1
80003abc: 93 05 c1 01  	addi	a1, sp, 28
80003ac0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ac4: 33 35 85 01  	sltu	a0, a0, s8
80003ac8: 13 45 15 00  	xori	a0, a0, 1
80003acc: 13 36 f6 01  	sltiu	a2, a2, 31
80003ad0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ad4: 23 80 e4 00  	sb	a4, 0(s1)
80003ad8: 13 86 07 00  	mv	a2, a5
80003adc: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ae0: 63 84 05 02  	beqz	a1, 0x80003b08 <.LBB1_124+0x2c8>
;       value /= base;
80003ae4: b3 56 85 03  	divu	a3, a0, s8
80003ae8: 33 87 86 03  	mul	a4, a3, s8
80003aec: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003af0: 93 74 e7 0f  	andi	s1, a4, 254
80003af4: 93 07 00 03  	addi	a5, zero, 48
80003af8: 93 05 a0 00  	addi	a1, zero, 10
80003afc: e3 ec b4 fa  	bltu	s1, a1, 0x80003ab4 <.LBB1_124+0x274>
80003b00: 93 07 08 00  	mv	a5, a6
80003b04: 6f f0 1f fb  	j	0x80003ab4 <.LBB1_124+0x274>
80003b08: 93 89 49 00  	addi	s3, s3, 4
80003b0c: 13 07 c1 01  	addi	a4, sp, 28
80003b10: 13 05 09 00  	mv	a0, s2
80003b14: 93 05 0a 00  	mv	a1, s4
80003b18: 13 86 0c 00  	mv	a2, s9
80003b1c: 93 86 0a 00  	mv	a3, s5
80003b20: 13 08 00 00  	mv	a6, zero
80003b24: 93 08 0c 00  	mv	a7, s8
80003b28: 93 83 0b 00  	mv	t2, s7
80003b2c: 13 0e 0b 00  	mv	t3, s6
80003b30: 93 0e 04 00  	mv	t4, s0
80003b34: 97 10 00 00  	auipc	ra, 1
80003b38: e7 80 40 d9  	jalr	-620(ra)
80003b3c: 13 0c 05 00  	mv	s8, a0
80003b40: 13 0b 50 02  	addi	s6, zero, 37
80003b44: 93 0b e0 02  	addi	s7, zero, 46
80003b48: 13 04 1d 00  	addi	s0, s10, 1
80003b4c: 6f f0 cf d8  	j	0x800030d8 <.LBB1_183+0x30>
80003b50: 93 85 15 00  	addi	a1, a1, 1
80003b54: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b58: 63 00 05 04  	beqz	a0, 0x80003b98 <.LBB1_124+0x358>
80003b5c: 13 84 17 00  	addi	s0, a5, 1
80003b60: 6f 00 00 03  	j	0x80003b90 <.LBB1_124+0x350>
80003b64: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80003b68: 13 8c 1c 00  	addi	s8, s9, 1
80003b6c: 13 75 f5 0f  	andi	a0, a0, 255
80003b70: 93 05 0a 00  	mv	a1, s4
80003b74: 13 86 0c 00  	mv	a2, s9
80003b78: 93 86 0a 00  	mv	a3, s5
80003b7c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b80: 03 45 04 00  	lbu	a0, 0(s0)
80003b84: 13 04 14 00  	addi	s0, s0, 1
80003b88: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003b8c: 63 08 05 00  	beqz	a0, 0x80003b9c <.LBB1_124+0x35c>
80003b90: e3 9c 04 fc  	bnez	s1, 0x80003b68 <.LBB1_124+0x328>
80003b94: e3 98 0b fc  	bnez	s7, 0x80003b64 <.LBB1_124+0x324>
80003b98: 13 8c 0c 00  	mv	s8, s9
80003b9c: 03 25 c1 00  	lw	a0, 12(sp)
80003ba0: 13 35 15 00  	seqz	a0, a0
80003ba4: 03 26 41 01  	lw	a2, 20(sp)
80003ba8: b3 35 66 01  	sltu	a1, a2, s6
80003bac: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003bb0: 33 65 b5 00  	or	a0, a0, a1
80003bb4: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80003bb8: e3 14 05 f8  	bnez	a0, 0x80003b40 <.LBB1_124+0x300>
;           while (l++ < width) {
80003bbc: 33 04 cb 40  	sub	s0, s6, a2
80003bc0: 93 0b e0 02  	addi	s7, zero, 46
80003bc4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003bc8: 13 0c 1c 00  	addi	s8, s8, 1
80003bcc: 13 05 00 02  	addi	a0, zero, 32
80003bd0: 93 05 0a 00  	mv	a1, s4
80003bd4: 93 86 0a 00  	mv	a3, s5
80003bd8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003bdc: 13 04 f4 ff  	addi	s0, s0, -1
80003be0: e3 12 04 fe  	bnez	s0, 0x80003bc4 <.LBB1_124+0x384>
80003be4: 13 0b 50 02  	addi	s6, zero, 37
80003be8: 13 04 1d 00  	addi	s0, s10, 1
80003bec: 6f f0 cf ce  	j	0x800030d8 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003bf0: 13 86 0c 00  	mv	a2, s9
80003bf4: 63 e4 5c 01  	bltu	s9, s5, 0x80003bfc <.LBB1_124+0x3bc>
80003bf8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80003bfc: 13 05 00 00  	mv	a0, zero
80003c00: 93 05 0a 00  	mv	a1, s4
80003c04: 93 86 0a 00  	mv	a3, s5
80003c08: e7 00 09 00  	jalr	s2
;   return (int)idx;
80003c0c: 13 85 0c 00  	mv	a0, s9
80003c10: 83 2d c1 03  	lw	s11, 60(sp)
80003c14: 03 2d 01 04  	lw	s10, 64(sp)
80003c18: 83 2c 41 04  	lw	s9, 68(sp)
80003c1c: 03 2c 81 04  	lw	s8, 72(sp)
80003c20: 83 2b c1 04  	lw	s7, 76(sp)
80003c24: 03 2b 01 05  	lw	s6, 80(sp)
80003c28: 83 2a 41 05  	lw	s5, 84(sp)
80003c2c: 03 2a 81 05  	lw	s4, 88(sp)
80003c30: 83 29 c1 05  	lw	s3, 92(sp)
80003c34: 03 29 01 06  	lw	s2, 96(sp)
80003c38: 83 24 41 06  	lw	s1, 100(sp)
80003c3c: 03 24 81 06  	lw	s0, 104(sp)
80003c40: 83 20 c1 06  	lw	ra, 108(sp)
80003c44: 13 01 01 07  	addi	sp, sp, 112
80003c48: 67 80 00 00  	ret

80003c4c <_out_char.llvm.1805434900161566649>:
;   if (character) {
80003c4c: 63 04 05 0a  	beqz	a0, 0x80003cf4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003c50: f3 25 40 f1  	csrr	a1, mhartid
80003c54: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80003c58: 33 86 c5 02  	mul	a2, a1, a2

80003c5c <.LBB2_6>:
80003c5c: 97 26 00 00  	auipc	a3, 2
80003c60: 93 86 86 a6  	addi	a3, a3, -1432
80003c64: b3 05 d6 00  	add	a1, a2, a3
80003c68: 03 a7 05 00  	lw	a4, 0(a1)
80003c6c: 93 07 17 00  	addi	a5, a4, 1
80003c70: 23 a0 f5 00  	sw	a5, 0(a1)
80003c74: 33 87 e5 00  	add	a4, a1, a4
80003c78: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003c7c: 03 a7 05 00  	lw	a4, 0(a1)
80003c80: 13 07 47 c0  	addi	a4, a4, -1020
80003c84: 33 37 e0 00  	snez	a4, a4
80003c88: 13 05 65 ff  	addi	a0, a0, -10
80003c8c: 33 35 a0 00  	snez	a0, a0
80003c90: 33 75 e5 00  	and	a0, a0, a4
80003c94: 63 10 05 06  	bnez	a0, 0x80003cf4 <.LBB2_8+0x18>
80003c98: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003c9c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003ca0: 23 26 05 00  	sw	zero, 12(a0)
80003ca4: 93 06 00 04  	addi	a3, zero, 64
80003ca8: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003cac: 23 2a 05 00  	sw	zero, 20(a0)
80003cb0: 93 06 10 00  	addi	a3, zero, 1
80003cb4: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80003cb8: 23 2e 05 00  	sw	zero, 28(a0)
80003cbc: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003cc0: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003cc4: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003cc8: 23 22 05 02  	sw	zero, 36(a0)
80003ccc: 23 20 c5 02  	sw	a2, 32(a0)

80003cd0 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003cd0: 17 25 00 00  	auipc	a0, 2
80003cd4: 13 05 05 8b  	addi	a0, a0, -1872
80003cd8: 23 20 d5 00  	sw	a3, 0(a0)

80003cdc <.LBB2_8>:
80003cdc: 17 25 00 00  	auipc	a0, 2
80003ce0: 13 05 45 8e  	addi	a0, a0, -1820
;         while (fromhost == 0)
80003ce4: 03 26 05 00  	lw	a2, 0(a0)
80003ce8: e3 0e 06 fe  	beqz	a2, 0x80003ce4 <.LBB2_8+0x8>
;         fromhost = 0;
80003cec: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80003cf0: 23 a0 05 00  	sw	zero, 0(a1)
; }
80003cf4: 67 80 00 00  	ret

80003cf8 <_out_null>:
; }
80003cf8: 67 80 00 00  	ret

80003cfc <_ftoa>:
; {
80003cfc: 13 01 01 f9  	addi	sp, sp, -112
80003d00: 23 26 11 06  	sw	ra, 108(sp)
80003d04: 23 24 81 06  	sw	s0, 104(sp)
80003d08: 23 22 91 06  	sw	s1, 100(sp)
80003d0c: 23 20 21 07  	sw	s2, 96(sp)
80003d10: 23 2e 31 05  	sw	s3, 92(sp)
80003d14: 23 2c 41 05  	sw	s4, 88(sp)
80003d18: 23 2a 51 05  	sw	s5, 84(sp)
80003d1c: 23 28 61 05  	sw	s6, 80(sp)
80003d20: 23 26 71 05  	sw	s7, 76(sp)
80003d24: 23 24 81 05  	sw	s8, 72(sp)
80003d28: 23 22 91 05  	sw	s9, 68(sp)
80003d2c: 23 20 a1 05  	sw	s10, 64(sp)
80003d30: 27 3c 81 02  	fsd	fs0, 56(sp)
80003d34: 27 38 91 02  	fsd	fs1, 48(sp)
80003d38: 27 34 21 03  	fsd	fs2, 40(sp)

80003d3c <.LBB4_83>:
80003d3c: 97 24 00 00  	auipc	s1, 2
80003d40: 93 84 c4 8d  	addi	s1, s1, -1828
80003d44: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80003d48: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003d4c: 93 0a 08 00  	mv	s5, a6
80003d50: 13 89 07 00  	mv	s2, a5
80003d54: 93 89 06 00  	mv	s3, a3
80003d58: 13 0a 06 00  	mv	s4, a2
80003d5c: 13 8b 05 00  	mv	s6, a1
80003d60: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003d64: 63 98 04 0e  	bnez	s1, 0x80003e54 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003d68: 13 f5 2a 00  	andi	a0, s5, 2
80003d6c: 93 f5 3a 00  	andi	a1, s5, 3
80003d70: b3 35 b0 00  	snez	a1, a1
80003d74: 13 36 59 00  	sltiu	a2, s2, 5
80003d78: b3 65 b6 00  	or	a1, a2, a1
80003d7c: 93 5c 15 00  	srli	s9, a0, 1
80003d80: 13 04 0a 00  	mv	s0, s4
80003d84: 63 96 05 02  	bnez	a1, 0x80003db0 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003d88: 93 04 c9 ff  	addi	s1, s2, -4
80003d8c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003d90: 13 04 16 00  	addi	s0, a2, 1
80003d94: 13 05 00 02  	addi	a0, zero, 32
80003d98: 93 05 0b 00  	mv	a1, s6
80003d9c: 93 86 09 00  	mv	a3, s3
80003da0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003da4: 93 84 f4 ff  	addi	s1, s1, -1
80003da8: 13 06 04 00  	mv	a2, s0
80003dac: e3 92 04 fe  	bnez	s1, 0x80003d90 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003db0: 93 04 14 00  	addi	s1, s0, 1
80003db4: 13 05 d0 02  	addi	a0, zero, 45
80003db8: 93 05 0b 00  	mv	a1, s6
80003dbc: 13 06 04 00  	mv	a2, s0
80003dc0: 93 86 09 00  	mv	a3, s3
80003dc4: e7 80 0b 00  	jalr	s7
80003dc8: 93 0a 24 00  	addi	s5, s0, 2
80003dcc: 13 05 90 06  	addi	a0, zero, 105
80003dd0: 93 05 0b 00  	mv	a1, s6
80003dd4: 13 86 04 00  	mv	a2, s1
80003dd8: 93 86 09 00  	mv	a3, s3
80003ddc: e7 80 0b 00  	jalr	s7
80003de0: 13 0c 34 00  	addi	s8, s0, 3
80003de4: 13 05 e0 06  	addi	a0, zero, 110
80003de8: 93 05 0b 00  	mv	a1, s6
80003dec: 13 86 0a 00  	mv	a2, s5
80003df0: 93 86 09 00  	mv	a3, s3
80003df4: e7 80 0b 00  	jalr	s7
80003df8: 93 04 44 00  	addi	s1, s0, 4
80003dfc: 13 05 60 06  	addi	a0, zero, 102
80003e00: 93 05 0b 00  	mv	a1, s6
80003e04: 13 06 0c 00  	mv	a2, s8
80003e08: 93 86 09 00  	mv	a3, s3
80003e0c: e7 80 0b 00  	jalr	s7
80003e10: 33 85 44 41  	sub	a0, s1, s4
80003e14: 33 35 25 01  	sltu	a0, a0, s2
80003e18: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003e1c: 93 c5 1c 00  	xori	a1, s9, 1
80003e20: 33 e5 a5 00  	or	a0, a1, a0
80003e24: 63 16 05 56  	bnez	a0, 0x80004390 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003e28: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003e2c: 13 84 14 00  	addi	s0, s1, 1
80003e30: 13 05 00 02  	addi	a0, zero, 32
80003e34: 93 05 0b 00  	mv	a1, s6
80003e38: 13 86 04 00  	mv	a2, s1
80003e3c: 93 86 09 00  	mv	a3, s3
80003e40: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003e44: 33 05 8a 00  	add	a0, s4, s0
80003e48: 93 04 04 00  	mv	s1, s0
80003e4c: e3 60 25 ff  	bltu	a0, s2, 0x80003e2c <.LBB4_83+0xf0>
80003e50: 6f 00 40 54  	j	0x80004394 <.LBB4_90+0x378>
80003e54: 53 04 a5 22  	fmv.d	fs0, fa0

80003e58 <.LBB4_84>:
80003e58: 17 15 00 00  	auipc	a0, 1
80003e5c: 13 05 85 7c  	addi	a0, a0, 1992
80003e60: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003e64: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003e68: 63 1e 05 00  	bnez	a0, 0x80003e84 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003e6c: 93 f5 4a 00  	andi	a1, s5, 4
80003e70: 13 b5 15 00  	seqz	a0, a1
80003e74: 63 82 05 06  	beqz	a1, 0x80003ed8 <.LBB4_88>

80003e78 <.LBB4_85>:
80003e78: 17 1c 00 00  	auipc	s8, 1
80003e7c: 13 0c 8c 4b  	addi	s8, s8, 1208
80003e80: 6f 00 00 06  	j	0x80003ee0 <.LBB4_88+0x8>

80003e84 <.LBB4_86>:
80003e84: 17 15 00 00  	auipc	a0, 1
80003e88: 13 05 45 7a  	addi	a0, a0, 1956
80003e8c: 07 30 05 00  	fld	ft0, 0(a0)

80003e90 <.LBB4_87>:
80003e90: 17 15 00 00  	auipc	a0, 1
80003e94: 13 05 05 7a  	addi	a0, a0, 1952
80003e98: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003e9c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003ea0: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003ea4: 33 75 b5 00  	and	a0, a0, a1
80003ea8: 63 1e 05 0e  	bnez	a0, 0x80003fa4 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003eac: 13 85 0b 00  	mv	a0, s7
80003eb0: 93 05 0b 00  	mv	a1, s6
80003eb4: 13 06 0a 00  	mv	a2, s4
80003eb8: 93 86 09 00  	mv	a3, s3
80003ebc: 53 05 84 22  	fmv.d	fa0, fs0
80003ec0: 93 07 09 00  	mv	a5, s2
80003ec4: 13 88 0a 00  	mv	a6, s5
80003ec8: 97 00 00 00  	auipc	ra, 0
80003ecc: e7 80 40 51  	jalr	1300(ra)
80003ed0: 13 04 05 00  	mv	s0, a0
80003ed4: 6f 00 00 4c  	j	0x80004394 <.LBB4_90+0x378>

80003ed8 <.LBB4_88>:
80003ed8: 17 1c 00 00  	auipc	s8, 1
80003edc: 13 0c 7c 47  	addi	s8, s8, 1143
80003ee0: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003ee4: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003ee8: 13 f5 3a 00  	andi	a0, s5, 3
80003eec: 33 35 a0 00  	snez	a0, a0
80003ef0: b3 b5 2c 01  	sltu	a1, s9, s2
80003ef4: 93 c5 15 00  	xori	a1, a1, 1
80003ef8: 33 65 b5 00  	or	a0, a0, a1
80003efc: 93 fa 2a 00  	andi	s5, s5, 2
80003f00: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003f04: 63 16 05 02  	bnez	a0, 0x80003f30 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003f08: 33 04 99 41  	sub	s0, s2, s9
80003f0c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003f10: 93 04 16 00  	addi	s1, a2, 1
80003f14: 13 05 00 02  	addi	a0, zero, 32
80003f18: 93 05 0b 00  	mv	a1, s6
80003f1c: 93 86 09 00  	mv	a3, s3
80003f20: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003f24: 13 04 f4 ff  	addi	s0, s0, -1
80003f28: 13 86 04 00  	mv	a2, s1
80003f2c: e3 12 04 fe  	bnez	s0, 0x80003f10 <.LBB4_88+0x38>
80003f30: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003f34: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003f38: 33 05 9c 01  	add	a0, s8, s9
80003f3c: 03 45 05 00  	lbu	a0, 0(a0)
80003f40: 13 86 04 00  	mv	a2, s1
80003f44: 13 84 fc ff  	addi	s0, s9, -1
80003f48: 93 84 14 00  	addi	s1, s1, 1
80003f4c: 93 05 0b 00  	mv	a1, s6
80003f50: 93 86 09 00  	mv	a3, s3
80003f54: e7 80 0b 00  	jalr	s7
80003f58: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003f5c: e3 1e 04 fc  	bnez	s0, 0x80003f38 <.LBB4_88+0x60>
80003f60: 33 85 44 41  	sub	a0, s1, s4
80003f64: 33 35 25 01  	sltu	a0, a0, s2
80003f68: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003f6c: 93 c5 1a 00  	xori	a1, s5, 1
80003f70: 33 e5 a5 00  	or	a0, a1, a0
80003f74: 63 1e 05 40  	bnez	a0, 0x80004390 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003f78: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003f7c: 13 84 14 00  	addi	s0, s1, 1
80003f80: 13 05 00 02  	addi	a0, zero, 32
80003f84: 93 05 0b 00  	mv	a1, s6
80003f88: 13 86 04 00  	mv	a2, s1
80003f8c: 93 86 09 00  	mv	a3, s3
80003f90: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003f94: 33 05 8a 00  	add	a0, s4, s0
80003f98: 93 04 04 00  	mv	s1, s0
80003f9c: e3 60 25 ff  	bltu	a0, s2, 0x80003f7c <.LBB4_88+0xa4>
80003fa0: 6f 00 40 3f  	j	0x80004394 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003fa4: 13 f5 0a 40  	andi	a0, s5, 1024
80003fa8: 13 0c 60 00  	addi	s8, zero, 6
80003fac: 63 04 05 00  	beqz	a0, 0x80003fb4 <.LBB4_88+0xdc>
80003fb0: 13 0c 07 00  	mv	s8, a4
80003fb4: 13 05 a0 00  	addi	a0, zero, 10
80003fb8: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003fbc: 63 6c ac 02  	bltu	s8, a0, 0x80003ff4 <.LBB4_88+0x11c>
80003fc0: 93 04 6c ff  	addi	s1, s8, -10
80003fc4: 13 05 f0 01  	addi	a0, zero, 31
80003fc8: 63 e4 a4 00  	bltu	s1, a0, 0x80003fd0 <.LBB4_88+0xf8>
80003fcc: 93 04 f0 01  	addi	s1, zero, 31
80003fd0: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003fd4: 13 05 81 00  	addi	a0, sp, 8
80003fd8: 93 05 00 03  	addi	a1, zero, 48
80003fdc: 13 06 04 00  	mv	a2, s0
80003fe0: 97 c0 ff ff  	auipc	ra, 1048572
80003fe4: e7 80 80 57  	jalr	1400(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003fe8: 13 c5 f4 ff  	not	a0, s1
80003fec: 33 0c ac 00  	add	s8, s8, a0
80003ff0: 6f 00 80 00  	j	0x80003ff8 <.LBB4_88+0x120>
80003ff4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003ff8: 13 15 3c 00  	slli	a0, s8, 3

80003ffc <.LBB4_89>:
80003ffc: 97 15 00 00  	auipc	a1, 1
80004000: 93 85 45 51  	addi	a1, a1, 1300
80004004: 33 05 b5 00  	add	a0, a0, a1
80004008: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
8000400c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80004010: 53 80 04 d2  	fcvt.d.w	ft0, s1
80004014: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80004018: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

8000401c <.LBB4_90>:
8000401c: 17 15 00 00  	auipc	a0, 1
80004020: 13 05 c5 61  	addi	a0, a0, 1564
80004024: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80004028: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
8000402c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80004030: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80004034: d3 05 01 a2  	fle.d	a1, ft2, ft0
80004038: 63 90 05 02  	bnez	a1, 0x80004058 <.LBB4_90+0x3c>
;     ++frac;
8000403c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004040: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80004044: d3 15 11 a2  	flt.d	a1, ft2, ft1
80004048: 63 94 05 02  	bnez	a1, 0x80004070 <.LBB4_90+0x54>
8000404c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004050: 93 84 14 00  	addi	s1, s1, 1
80004054: 6f 00 c0 01  	j	0x80004070 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80004058: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000405c: 63 9a 05 00  	bnez	a1, 0x80004070 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004060: 93 35 15 00  	seqz	a1, a0
80004064: 13 76 15 00  	andi	a2, a0, 1
80004068: b3 65 b6 00  	or	a1, a2, a1
8000406c: 33 85 a5 00  	add	a0, a1, a0
80004070: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004074: 63 0c 0c 0c  	beqz	s8, 0x8000414c <.LBB4_90+0x130>
80004078: 13 06 00 00  	mv	a2, zero
8000407c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004080: 33 83 85 00  	add	t1, a1, s0
80004084: 93 02 00 02  	addi	t0, zero, 32
80004088: 33 87 82 40  	sub	a4, t0, s0
8000408c: b7 d5 cc cc  	lui	a1, 838861
80004090: 93 83 d5 cc  	addi	t2, a1, -819
80004094: 13 08 a0 00  	addi	a6, zero, 10
80004098: 93 08 90 00  	addi	a7, zero, 9
8000409c: 63 04 c7 0c  	beq	a4, a2, 0x80004164 <.LBB4_90+0x148>
800040a0: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800040a4: 33 35 75 02  	mulhu	a0, a0, t2
800040a8: 13 55 35 00  	srli	a0, a0, 3
800040ac: b3 06 05 03  	mul	a3, a0, a6
800040b0: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800040b4: 93 e6 06 03  	ori	a3, a3, 48
800040b8: b3 07 c3 00  	add	a5, t1, a2
800040bc: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800040c0: 13 06 16 00  	addi	a2, a2, 1
800040c4: e3 ec b8 fc  	bltu	a7, a1, 0x8000409c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800040c8: 33 05 c4 00  	add	a0, s0, a2
800040cc: 93 05 f5 ff  	addi	a1, a0, -1
800040d0: 93 06 e0 01  	addi	a3, zero, 30
800040d4: b3 b6 b6 00  	sltu	a3, a3, a1
800040d8: 33 47 cc 00  	xor	a4, s8, a2
800040dc: 13 37 17 00  	seqz	a4, a4
800040e0: b3 e6 e6 00  	or	a3, a3, a4
800040e4: 63 94 06 08  	bnez	a3, 0x8000416c <.LBB4_90+0x150>
800040e8: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800040ec: 33 05 85 00  	add	a0, a0, s0
800040f0: 93 45 f6 ff  	not	a1, a2
800040f4: 33 8c 85 01  	add	s8, a1, s8
800040f8: 33 04 c4 00  	add	s0, s0, a2
800040fc: 93 05 f0 01  	addi	a1, zero, 31
80004100: b3 86 85 40  	sub	a3, a1, s0
80004104: 33 05 c5 00  	add	a0, a0, a2
80004108: 93 05 0c 00  	mv	a1, s8
8000410c: 63 64 dc 00  	bltu	s8, a3, 0x80004114 <.LBB4_90+0xf8>
80004110: 93 85 06 00  	mv	a1, a3
80004114: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004118: 93 05 00 03  	addi	a1, zero, 48
8000411c: 97 c0 ff ff  	auipc	ra, 1048572
80004120: e7 80 c0 43  	jalr	1084(ra)
80004124: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004128: b3 05 a4 00  	add	a1, s0, a0
8000412c: 93 b5 f5 01  	sltiu	a1, a1, 31
80004130: 33 46 ac 00  	xor	a2, s8, a0
80004134: 33 36 c0 00  	snez	a2, a2
80004138: 33 f6 c5 00  	and	a2, a1, a2
8000413c: 13 05 15 00  	addi	a0, a0, 1
80004140: e3 14 06 fe  	bnez	a2, 0x80004128 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004144: 33 05 a4 00  	add	a0, s0, a0
80004148: 6f 00 80 02  	j	0x80004170 <.LBB4_90+0x154>
;     diff = value - (double)whole;
8000414c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004150: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004154: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004158: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000415c: b3 84 a4 00  	add	s1, s1, a0
80004160: 6f 00 c0 03  	j	0x8000419c <.LBB4_90+0x180>
80004164: 13 04 00 02  	addi	s0, zero, 32
80004168: 6f 00 80 03  	j	0x800041a0 <.LBB4_90+0x184>
8000416c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004170: 63 8e 05 00  	beqz	a1, 0x8000418c <.LBB4_90+0x170>
;       buf[len++] = '.';
80004174: 13 04 15 00  	addi	s0, a0, 1
80004178: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000417c: 33 85 a5 00  	add	a0, a1, a0
80004180: 93 05 e0 02  	addi	a1, zero, 46
80004184: 23 00 b5 00  	sb	a1, 0(a0)
80004188: 6f 00 80 00  	j	0x80004190 <.LBB4_90+0x174>
8000418c: 13 04 05 00  	mv	s0, a0
80004190: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004194: 93 02 04 00  	mv	t0, s0
80004198: 63 64 85 00  	bltu	a0, s0, 0x800041a0 <.LBB4_90+0x184>
8000419c: 93 02 00 02  	addi	t0, zero, 32
800041a0: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800041a4: 37 65 66 66  	lui	a0, 419430
800041a8: 93 05 75 66  	addi	a1, a0, 1639
800041ac: 13 08 a0 00  	addi	a6, zero, 10
800041b0: 93 06 81 00  	addi	a3, sp, 8
800041b4: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800041b8: 63 80 82 04  	beq	t0, s0, 0x800041f8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
800041bc: 33 95 b4 02  	mulh	a0, s1, a1
800041c0: 93 57 f5 01  	srli	a5, a0, 31
800041c4: 13 55 25 40  	srai	a0, a0, 2
800041c8: 33 05 f5 00  	add	a0, a0, a5
800041cc: b3 07 05 03  	mul	a5, a0, a6
800041d0: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
800041d4: 93 87 07 03  	addi	a5, a5, 48
800041d8: 13 0c 14 00  	addi	s8, s0, 1
800041dc: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
800041e0: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
800041e4: 23 00 f4 00  	sb	a5, 0(s0)
800041e8: 13 04 0c 00  	mv	s0, s8
800041ec: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800041f0: e3 64 c7 fc  	bltu	a4, a2, 0x800041b8 <.LBB4_90+0x19c>
800041f4: 6f 00 80 00  	j	0x800041fc <.LBB4_90+0x1e0>
800041f8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800041fc: 93 f4 3a 00  	andi	s1, s5, 3
80004200: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004204: 63 96 a4 06  	bne	s1, a0, 0x80004270 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004208: 63 0c 09 00  	beqz	s2, 0x80004220 <.LBB4_90+0x204>
8000420c: 13 f5 ca 00  	andi	a0, s5, 12
80004210: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004214: 33 e5 ac 00  	or	a0, s9, a0
80004218: 33 09 a9 40  	sub	s2, s2, a0
8000421c: 6f 00 80 00  	j	0x80004224 <.LBB4_90+0x208>
80004220: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004224: 33 35 2c 01  	sltu	a0, s8, s2
80004228: 93 45 15 00  	xori	a1, a0, 1
8000422c: 13 05 f0 01  	addi	a0, zero, 31
80004230: 33 36 85 01  	sltu	a2, a0, s8
80004234: b3 65 b6 00  	or	a1, a2, a1
80004238: 63 9c 05 02  	bnez	a1, 0x80004270 <.LBB4_90+0x254>
8000423c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004240: 93 45 fc ff  	not	a1, s8
80004244: b3 05 b9 00  	add	a1, s2, a1
80004248: 33 06 85 41  	sub	a2, a0, s8
8000424c: 33 85 86 01  	add	a0, a3, s8
80004250: 63 e4 c5 00  	bltu	a1, a2, 0x80004258 <.LBB4_90+0x23c>
80004254: 93 05 06 00  	mv	a1, a2
80004258: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000425c: 93 05 00 03  	addi	a1, zero, 48
80004260: 13 06 04 00  	mv	a2, s0
80004264: 97 c0 ff ff  	auipc	ra, 1048572
80004268: e7 80 40 2f  	jalr	756(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000426c: 33 0c 84 01  	add	s8, s0, s8
80004270: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004274: 63 6a 85 05  	bltu	a0, s8, 0x800042c8 <.LBB4_90+0x2ac>
;     if (negative) {
80004278: 63 8c 0c 00  	beqz	s9, 0x80004290 <.LBB4_90+0x274>
8000427c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004280: 33 05 85 01  	add	a0, a0, s8
80004284: 13 0c 1c 00  	addi	s8, s8, 1
80004288: 93 05 d0 02  	addi	a1, zero, 45
8000428c: 6f 00 80 03  	j	0x800042c4 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80004290: 13 f5 4a 00  	andi	a0, s5, 4
80004294: 63 10 05 02  	bnez	a0, 0x800042b4 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80004298: 13 f5 8a 00  	andi	a0, s5, 8
8000429c: 63 06 05 02  	beqz	a0, 0x800042c8 <.LBB4_90+0x2ac>
800042a0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800042a4: 33 05 85 01  	add	a0, a0, s8
800042a8: 13 0c 1c 00  	addi	s8, s8, 1
800042ac: 93 05 00 02  	addi	a1, zero, 32
800042b0: 6f 00 40 01  	j	0x800042c4 <.LBB4_90+0x2a8>
800042b4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800042b8: 33 05 85 01  	add	a0, a0, s8
800042bc: 13 0c 1c 00  	addi	s8, s8, 1
800042c0: 93 05 b0 02  	addi	a1, zero, 43
800042c4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800042c8: 33 35 90 00  	snez	a0, s1
800042cc: b3 35 2c 01  	sltu	a1, s8, s2
800042d0: 93 c5 15 00  	xori	a1, a1, 1
800042d4: 33 65 b5 00  	or	a0, a0, a1
800042d8: 93 fa 2a 00  	andi	s5, s5, 2
800042dc: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800042e0: 63 16 05 02  	bnez	a0, 0x8000430c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
800042e4: b3 04 89 41  	sub	s1, s2, s8
800042e8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800042ec: 13 04 16 00  	addi	s0, a2, 1
800042f0: 13 05 00 02  	addi	a0, zero, 32
800042f4: 93 05 0b 00  	mv	a1, s6
800042f8: 93 86 09 00  	mv	a3, s3
800042fc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004300: 93 84 f4 ff  	addi	s1, s1, -1
80004304: 13 06 04 00  	mv	a2, s0
80004308: e3 92 04 fe  	bnez	s1, 0x800042ec <.LBB4_90+0x2d0>
8000430c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004310: 63 0c 0c 02  	beqz	s8, 0x80004348 <.LBB4_90+0x32c>
80004314: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004318: 33 85 8c 01  	add	a0, s9, s8
8000431c: 03 45 05 00  	lbu	a0, 0(a0)
80004320: 13 0d fc ff  	addi	s10, s8, -1
80004324: 93 04 14 00  	addi	s1, s0, 1
80004328: 93 05 0b 00  	mv	a1, s6
8000432c: 13 06 04 00  	mv	a2, s0
80004330: 93 86 09 00  	mv	a3, s3
80004334: e7 80 0b 00  	jalr	s7
80004338: 13 84 04 00  	mv	s0, s1
8000433c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004340: e3 1c 0d fc  	bnez	s10, 0x80004318 <.LBB4_90+0x2fc>
80004344: 6f 00 80 00  	j	0x8000434c <.LBB4_90+0x330>
80004348: 93 04 04 00  	mv	s1, s0
8000434c: 33 85 44 41  	sub	a0, s1, s4
80004350: 33 35 25 01  	sltu	a0, a0, s2
80004354: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004358: 93 c5 1a 00  	xori	a1, s5, 1
8000435c: 33 e5 a5 00  	or	a0, a1, a0
80004360: 63 18 05 02  	bnez	a0, 0x80004390 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004364: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004368: 13 84 14 00  	addi	s0, s1, 1
8000436c: 13 05 00 02  	addi	a0, zero, 32
80004370: 93 05 0b 00  	mv	a1, s6
80004374: 13 86 04 00  	mv	a2, s1
80004378: 93 86 09 00  	mv	a3, s3
8000437c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004380: 33 05 8a 00  	add	a0, s4, s0
80004384: 93 04 04 00  	mv	s1, s0
80004388: e3 60 25 ff  	bltu	a0, s2, 0x80004368 <.LBB4_90+0x34c>
8000438c: 6f 00 80 00  	j	0x80004394 <.LBB4_90+0x378>
80004390: 13 84 04 00  	mv	s0, s1
; }
80004394: 13 05 04 00  	mv	a0, s0
80004398: 07 39 81 02  	fld	fs2, 40(sp)
8000439c: 87 34 01 03  	fld	fs1, 48(sp)
800043a0: 07 34 81 03  	fld	fs0, 56(sp)
800043a4: 03 2d 01 04  	lw	s10, 64(sp)
800043a8: 83 2c 41 04  	lw	s9, 68(sp)
800043ac: 03 2c 81 04  	lw	s8, 72(sp)
800043b0: 83 2b c1 04  	lw	s7, 76(sp)
800043b4: 03 2b 01 05  	lw	s6, 80(sp)
800043b8: 83 2a 41 05  	lw	s5, 84(sp)
800043bc: 03 2a 81 05  	lw	s4, 88(sp)
800043c0: 83 29 c1 05  	lw	s3, 92(sp)
800043c4: 03 29 01 06  	lw	s2, 96(sp)
800043c8: 83 24 41 06  	lw	s1, 100(sp)
800043cc: 03 24 81 06  	lw	s0, 104(sp)
800043d0: 83 20 c1 06  	lw	ra, 108(sp)
800043d4: 13 01 01 07  	addi	sp, sp, 112
800043d8: 67 80 00 00  	ret

800043dc <_etoa>:
; {
800043dc: 13 01 01 f8  	addi	sp, sp, -128
800043e0: 23 2e 11 06  	sw	ra, 124(sp)
800043e4: 23 2c 81 06  	sw	s0, 120(sp)
800043e8: 23 2a 91 06  	sw	s1, 116(sp)
800043ec: 23 28 21 07  	sw	s2, 112(sp)
800043f0: 23 26 31 07  	sw	s3, 108(sp)
800043f4: 23 24 41 07  	sw	s4, 104(sp)
800043f8: 23 22 51 07  	sw	s5, 100(sp)
800043fc: 23 20 61 07  	sw	s6, 96(sp)
80004400: 23 2e 71 05  	sw	s7, 92(sp)
80004404: 23 2c 81 05  	sw	s8, 88(sp)
80004408: 23 2a 91 05  	sw	s9, 84(sp)
8000440c: 23 28 a1 05  	sw	s10, 80(sp)
80004410: 23 26 b1 05  	sw	s11, 76(sp)

80004414 <.LBB5_43>:
80004414: 97 14 00 00  	auipc	s1, 1
80004418: 93 84 c4 22  	addi	s1, s1, 556
8000441c: 87 b0 04 00  	fld	ft1, 0(s1)

80004420 <.LBB5_44>:
80004420: 97 14 00 00  	auipc	s1, 1
80004424: 93 84 84 22  	addi	s1, s1, 552
80004428: 07 b1 04 00  	fld	ft2, 0(s1)
8000442c: 53 00 a5 22  	fmv.d	ft0, fa0
80004430: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004434: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004438: b3 f4 84 00  	and	s1, s1, s0
8000443c: 93 0a 08 00  	mv	s5, a6
80004440: 13 89 07 00  	mv	s2, a5
80004444: 93 07 07 00  	mv	a5, a4
80004448: 93 89 06 00  	mv	s3, a3
8000444c: 13 0a 06 00  	mv	s4, a2
80004450: 13 8b 05 00  	mv	s6, a1
80004454: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004458: 63 92 04 06  	bnez	s1, 0x800044bc <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000445c: 13 85 0b 00  	mv	a0, s7
80004460: 93 05 0b 00  	mv	a1, s6
80004464: 13 06 0a 00  	mv	a2, s4
80004468: 93 86 09 00  	mv	a3, s3
8000446c: 53 05 00 22  	fmv.d	fa0, ft0
80004470: 13 87 07 00  	mv	a4, a5
80004474: 93 07 09 00  	mv	a5, s2
80004478: 13 88 0a 00  	mv	a6, s5
8000447c: 83 2d c1 04  	lw	s11, 76(sp)
80004480: 03 2d 01 05  	lw	s10, 80(sp)
80004484: 83 2c 41 05  	lw	s9, 84(sp)
80004488: 03 2c 81 05  	lw	s8, 88(sp)
8000448c: 83 2b c1 05  	lw	s7, 92(sp)
80004490: 03 2b 01 06  	lw	s6, 96(sp)
80004494: 83 2a 41 06  	lw	s5, 100(sp)
80004498: 03 2a 81 06  	lw	s4, 104(sp)
8000449c: 83 29 c1 06  	lw	s3, 108(sp)
800044a0: 03 29 01 07  	lw	s2, 112(sp)
800044a4: 83 24 41 07  	lw	s1, 116(sp)
800044a8: 03 24 81 07  	lw	s0, 120(sp)
800044ac: 83 20 c1 07  	lw	ra, 124(sp)
800044b0: 13 01 01 08  	addi	sp, sp, 128
800044b4: 17 03 00 00  	auipc	t1, 0
800044b8: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800044bc: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800044c0: 13 f5 0a 40  	andi	a0, s5, 1024
800044c4: 13 07 60 00  	addi	a4, zero, 6
800044c8: 63 04 05 00  	beqz	a0, 0x800044d0 <.LBB5_44+0xb0>
800044cc: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
800044d0: 27 30 a1 02  	fsd	fa0, 32(sp)
800044d4: 83 25 41 02  	lw	a1, 36(sp)
800044d8: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800044dc: 93 d6 45 01  	srli	a3, a1, 20
800044e0: b7 07 10 00  	lui	a5, 256
800044e4: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800044e8: b3 f5 f5 00  	and	a1, a1, a5
800044ec: 23 2c c1 00  	sw	a2, 24(sp)
800044f0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800044f4: b3 e5 c5 00  	or	a1, a1, a2
800044f8: 23 2e b1 00  	sw	a1, 28(sp)
800044fc: 87 30 81 01  	fld	ft1, 24(sp)

80004500 <.LBB5_45>:
80004500: 97 15 00 00  	auipc	a1, 1
80004504: 93 85 05 15  	addi	a1, a1, 336
80004508: 07 b1 05 00  	fld	ft2, 0(a1)

8000450c <.LBB5_46>:
8000450c: 97 15 00 00  	auipc	a1, 1
80004510: 93 85 c5 14  	addi	a1, a1, 332
80004514: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004518: 93 f5 f6 7f  	andi	a1, a3, 2047
8000451c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004520: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004524: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004528 <.LBB5_47>:
80004528: 97 15 00 00  	auipc	a1, 1
8000452c: 93 85 85 13  	addi	a1, a1, 312
80004530: 07 b1 05 00  	fld	ft2, 0(a1)

80004534 <.LBB5_48>:
80004534: 97 15 00 00  	auipc	a1, 1
80004538: 93 85 45 13  	addi	a1, a1, 308
8000453c: 87 b1 05 00  	fld	ft3, 0(a1)

80004540 <.LBB5_49>:
80004540: 97 15 00 00  	auipc	a1, 1
80004544: 93 85 05 13  	addi	a1, a1, 304
80004548: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000454c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004550: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004554: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004558: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000455c <.LBB5_50>:
8000455c: 17 16 00 00  	auipc	a2, 1
80004560: 13 06 c6 11  	addi	a2, a2, 284
80004564: 87 31 06 00  	fld	ft3, 0(a2)

80004568 <.LBB5_51>:
80004568: 17 16 00 00  	auipc	a2, 1
8000456c: 13 06 86 11  	addi	a2, a2, 280
80004570: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004574: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004578: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000457c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004580: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004584: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004588: 13 06 f6 3f  	addi	a2, a2, 1023
8000458c: 23 28 01 00  	sw	zero, 16(sp)
80004590: 13 16 46 01  	slli	a2, a2, 20
80004594: 23 2a c1 00  	sw	a2, 20(sp)

80004598 <.LBB5_52>:
80004598: 17 16 00 00  	auipc	a2, 1
8000459c: 13 06 86 0f  	addi	a2, a2, 248
800045a0: 87 31 06 00  	fld	ft3, 0(a2)

800045a4 <.LBB5_53>:
800045a4: 17 16 00 00  	auipc	a2, 1
800045a8: 13 06 46 0f  	addi	a2, a2, 244
800045ac: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800045b0: 87 32 01 01  	fld	ft5, 16(sp)

800045b4 <.LBB5_54>:
800045b4: 17 16 00 00  	auipc	a2, 1
800045b8: 13 06 46 0d  	addi	a2, a2, 212
800045bc: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800045c0: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

800045c4 <.LBB5_55>:
800045c4: 17 16 00 00  	auipc	a2, 1
800045c8: 13 06 c6 0d  	addi	a2, a2, 220
800045cc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800045d0: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
800045d4: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
800045d8: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
800045dc: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
800045e0: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
800045e4: 53 71 23 02  	fadd.d	ft2, ft6, ft2
800045e8: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
800045ec: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800045f0: 53 16 15 a2  	flt.d	a2, fa0, ft1
800045f4: 63 0a 06 00  	beqz	a2, 0x80004608 <.LBB5_56+0x10>

800045f8 <.LBB5_56>:
800045f8: 97 16 00 00  	auipc	a3, 1
800045fc: 93 86 06 0b  	addi	a3, a3, 176
80004600: 07 b1 06 00  	fld	ft2, 0(a3)
80004604: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004608: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000460c: 93 05 34 06  	addi	a1, s0, 99
80004610: 93 b5 75 0c  	sltiu	a1, a1, 199
80004614: 13 06 50 00  	addi	a2, zero, 5
80004618: b7 16 00 00  	lui	a3, 1
8000461c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004620: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004624: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004628: 63 84 06 06  	beqz	a3, 0x80004690 <.LBB5_58+0x58>

8000462c <.LBB5_57>:
8000462c: 97 15 00 00  	auipc	a1, 1
80004630: 93 85 45 08  	addi	a1, a1, 132
80004634: 07 b1 05 00  	fld	ft2, 0(a1)

80004638 <.LBB5_58>:
80004638: 97 15 00 00  	auipc	a1, 1
8000463c: 93 85 05 08  	addi	a1, a1, 128
80004640: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004644: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004648: 53 86 a1 a2  	fle.d	a2, ft3, fa0
8000464c: b3 e5 c5 00  	or	a1, a1, a2
80004650: 63 98 05 00  	bnez	a1, 0x80004660 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004654: 63 40 e4 02  	blt	s0, a4, 0x80004674 <.LBB5_58+0x3c>
80004658: 13 07 00 00  	mv	a4, zero
8000465c: 6f 00 00 02  	j	0x8000467c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004660: 63 06 07 02  	beqz	a4, 0x8000468c <.LBB5_58+0x54>
80004664: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004668: 13 45 15 00  	xori	a0, a0, 1
8000466c: 33 07 a7 40  	sub	a4, a4, a0
80004670: 6f 00 00 02  	j	0x80004690 <.LBB5_58+0x58>
80004674: 13 45 f4 ff  	not	a0, s0
80004678: 33 07 a7 00  	add	a4, a4, a0
8000467c: 13 04 00 00  	mv	s0, zero
80004680: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004684: 93 ea 0a 40  	ori	s5, s5, 1024
80004688: 6f 00 80 00  	j	0x80004690 <.LBB5_58+0x58>
8000468c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004690: b3 05 99 41  	sub	a1, s2, s9
80004694: 33 36 b9 00  	sltu	a2, s2, a1
80004698: 13 05 00 00  	mv	a0, zero
8000469c: 63 14 06 00  	bnez	a2, 0x800046a4 <.LBB5_58+0x6c>
800046a0: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800046a4: 93 07 00 00  	mv	a5, zero
800046a8: 93 d5 1a 00  	srli	a1, s5, 1
800046ac: 93 f4 15 00  	andi	s1, a1, 1
800046b0: b3 35 90 01  	snez	a1, s9
800046b4: b3 f5 b4 00  	and	a1, s1, a1
800046b8: 53 01 00 d2  	fcvt.d.w	ft2, zero
800046bc: 63 94 05 00  	bnez	a1, 0x800046c4 <.LBB5_58+0x8c>
800046c0: 93 07 05 00  	mv	a5, a0
;   if (expval) {
800046c4: 93 35 14 00  	seqz	a1, s0
800046c8: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
800046cc: 63 94 05 00  	bnez	a1, 0x800046d4 <.LBB5_58+0x9c>
800046d0: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800046d4: 63 04 05 00  	beqz	a0, 0x800046dc <.LBB5_58+0xa4>
800046d8: 53 15 a5 22  	fneg.d	fa0, fa0
800046dc: 37 f5 ff ff  	lui	a0, 1048575
800046e0: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800046e4: 33 f8 aa 00  	and	a6, s5, a0
800046e8: 13 85 0b 00  	mv	a0, s7
800046ec: 93 05 0b 00  	mv	a1, s6
800046f0: 13 06 0a 00  	mv	a2, s4
800046f4: 93 86 09 00  	mv	a3, s3
800046f8: 97 f0 ff ff  	auipc	ra, 1048575
800046fc: e7 80 40 60  	jalr	1540(ra)
80004700: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004704: 63 82 0c 18  	beqz	s9, 0x80004888 <.LBB5_58+0x250>
80004708: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
8000470c: 13 f5 0a 02  	andi	a0, s5, 32
80004710: 13 45 55 06  	xori	a0, a0, 101
80004714: 93 05 0b 00  	mv	a1, s6
80004718: 13 06 0d 00  	mv	a2, s10
8000471c: 93 86 09 00  	mv	a3, s3
80004720: e7 80 0b 00  	jalr	s7
80004724: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004728: 93 5a f4 01  	srli	s5, s0, 31
8000472c: 13 55 f4 41  	srai	a0, s0, 31
80004730: b3 05 a4 00  	add	a1, s0, a0
80004734: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004738: 93 8d dc ff  	addi	s11, s9, -3
8000473c: 13 04 f0 01  	addi	s0, zero, 31
80004740: 37 d5 cc cc  	lui	a0, 838861
80004744: 13 05 d5 cc  	addi	a0, a0, -819
80004748: 13 08 a0 00  	addi	a6, zero, 10
8000474c: 93 08 c1 02  	addi	a7, sp, 44
80004750: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004754: b3 37 a7 02  	mulhu	a5, a4, a0
80004758: 93 d5 37 00  	srli	a1, a5, 3
8000475c: b3 87 05 03  	mul	a5, a1, a6
80004760: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004764: 13 e6 07 03  	ori	a2, a5, 48
80004768: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000476c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004770: 13 0c 1c 00  	addi	s8, s8, 1
80004774: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004778: 33 b6 e2 00  	sltu	a2, t0, a4
8000477c: 33 f6 c7 00  	and	a2, a5, a2
80004780: 93 8d fd ff  	addi	s11, s11, -1
80004784: 13 04 f4 ff  	addi	s0, s0, -1
80004788: 13 87 05 00  	mv	a4, a1
8000478c: e3 14 06 fc  	bnez	a2, 0x80004754 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004790: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004794: 33 35 ac 00  	sltu	a0, s8, a0
80004798: 13 45 15 00  	xori	a0, a0, 1
8000479c: 93 c5 17 00  	xori	a1, a5, 1
800047a0: 33 e5 a5 00  	or	a0, a1, a0
800047a4: 63 12 05 04  	bnez	a0, 0x800047e8 <.LBB5_58+0x1b0>
800047a8: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800047ac: b3 85 8c 41  	sub	a1, s9, s8
800047b0: 93 85 d5 ff  	addi	a1, a1, -3
800047b4: 13 06 f0 01  	addi	a2, zero, 31
800047b8: 33 06 86 41  	sub	a2, a2, s8
800047bc: 33 05 85 01  	add	a0, a0, s8
800047c0: 63 e4 c5 00  	bltu	a1, a2, 0x800047c8 <.LBB5_58+0x190>
800047c4: 93 05 06 00  	mv	a1, a2
800047c8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800047cc: 93 05 00 03  	addi	a1, zero, 48
800047d0: 97 c0 ff ff  	auipc	ra, 1048572
800047d4: e7 80 80 d8  	jalr	-632(ra)
;   if (flags & FLAGS_HASH) {
800047d8: 63 e4 8d 00  	bltu	s11, s0, 0x800047e0 <.LBB5_58+0x1a8>
800047dc: 93 0d 04 00  	mv	s11, s0
800047e0: 33 85 8d 01  	add	a0, s11, s8
800047e4: 13 0c 15 00  	addi	s8, a0, 1
800047e8: 83 2c c1 00  	lw	s9, 12(sp)
800047ec: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800047f0: 63 60 85 03  	bltu	a0, s8, 0x80004810 <.LBB5_58+0x1d8>
800047f4: 13 05 c1 02  	addi	a0, sp, 44
800047f8: 33 05 85 01  	add	a0, a0, s8
800047fc: 93 05 d0 02  	addi	a1, zero, 45
80004800: 63 94 0a 00  	bnez	s5, 0x80004808 <.LBB5_58+0x1d0>
80004804: 93 05 b0 02  	addi	a1, zero, 43
80004808: 13 0c 1c 00  	addi	s8, s8, 1
8000480c: 23 00 b5 00  	sb	a1, 0(a0)
80004810: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004814: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004818: 33 85 8a 01  	add	a0, s5, s8
8000481c: 03 45 05 00  	lbu	a0, 0(a0)
80004820: 13 06 04 00  	mv	a2, s0
80004824: 93 04 fc ff  	addi	s1, s8, -1
80004828: 13 04 14 00  	addi	s0, s0, 1
8000482c: 93 05 0b 00  	mv	a1, s6
80004830: 93 86 09 00  	mv	a3, s3
80004834: e7 80 0b 00  	jalr	s7
80004838: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000483c: e3 9e 04 fc  	bnez	s1, 0x80004818 <.LBB5_58+0x1e0>
80004840: 33 05 44 41  	sub	a0, s0, s4
80004844: 33 35 25 01  	sltu	a0, a0, s2
80004848: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000484c: 93 c5 1c 00  	xori	a1, s9, 1
80004850: 33 e5 a5 00  	or	a0, a1, a0
80004854: 63 18 05 02  	bnez	a0, 0x80004884 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004858: b3 04 40 41  	neg	s1, s4
8000485c: 13 0d 14 00  	addi	s10, s0, 1
80004860: 13 05 00 02  	addi	a0, zero, 32
80004864: 93 05 0b 00  	mv	a1, s6
80004868: 13 06 04 00  	mv	a2, s0
8000486c: 93 86 09 00  	mv	a3, s3
80004870: e7 80 0b 00  	jalr	s7
80004874: 33 85 a4 01  	add	a0, s1, s10
80004878: 13 04 0d 00  	mv	s0, s10
8000487c: e3 60 25 ff  	bltu	a0, s2, 0x8000485c <.LBB5_58+0x224>
80004880: 6f 00 80 00  	j	0x80004888 <.LBB5_58+0x250>
80004884: 13 0d 04 00  	mv	s10, s0
; }
80004888: 13 05 0d 00  	mv	a0, s10
8000488c: 83 2d c1 04  	lw	s11, 76(sp)
80004890: 03 2d 01 05  	lw	s10, 80(sp)
80004894: 83 2c 41 05  	lw	s9, 84(sp)
80004898: 03 2c 81 05  	lw	s8, 88(sp)
8000489c: 83 2b c1 05  	lw	s7, 92(sp)
800048a0: 03 2b 01 06  	lw	s6, 96(sp)
800048a4: 83 2a 41 06  	lw	s5, 100(sp)
800048a8: 03 2a 81 06  	lw	s4, 104(sp)
800048ac: 83 29 c1 06  	lw	s3, 108(sp)
800048b0: 03 29 01 07  	lw	s2, 112(sp)
800048b4: 83 24 41 07  	lw	s1, 116(sp)
800048b8: 03 24 81 07  	lw	s0, 120(sp)
800048bc: 83 20 c1 07  	lw	ra, 124(sp)
800048c0: 13 01 01 08  	addi	sp, sp, 128
800048c4: 67 80 00 00  	ret

800048c8 <_ntoa_format>:
; {
800048c8: 13 01 01 fc  	addi	sp, sp, -64
800048cc: 23 2e 11 02  	sw	ra, 60(sp)
800048d0: 23 2c 81 02  	sw	s0, 56(sp)
800048d4: 23 2a 91 02  	sw	s1, 52(sp)
800048d8: 23 28 21 03  	sw	s2, 48(sp)
800048dc: 23 26 31 03  	sw	s3, 44(sp)
800048e0: 23 24 41 03  	sw	s4, 40(sp)
800048e4: 23 22 51 03  	sw	s5, 36(sp)
800048e8: 23 20 61 03  	sw	s6, 32(sp)
800048ec: 23 2e 71 01  	sw	s7, 28(sp)
800048f0: 23 2c 81 01  	sw	s8, 24(sp)
800048f4: 23 2a 91 01  	sw	s9, 20(sp)
800048f8: 23 28 a1 01  	sw	s10, 16(sp)
800048fc: 23 26 b1 01  	sw	s11, 12(sp)
80004900: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004904: 93 fa 2e 00  	andi	s5, t4, 2
80004908: 13 09 0e 00  	mv	s2, t3
8000490c: 13 8d 03 00  	mv	s10, t2
80004910: 93 8c 08 00  	mv	s9, a7
80004914: 13 8c 07 00  	mv	s8, a5
80004918: 93 89 06 00  	mv	s3, a3
8000491c: 13 0a 06 00  	mv	s4, a2
80004920: 13 8b 05 00  	mv	s6, a1
80004924: 93 0d 05 00  	mv	s11, a0
80004928: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000492c: 63 9e 0a 0c  	bnez	s5, 0x80004a08 <_ntoa_format+0x140>
80004930: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004934: 63 0e 09 00  	beqz	s2, 0x80004950 <_ntoa_format+0x88>
80004938: 63 0e 04 00  	beqz	s0, 0x80004954 <_ntoa_format+0x8c>
8000493c: 13 f5 cb 00  	andi	a0, s7, 12
80004940: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004944: 33 65 05 01  	or	a0, a0, a6
80004948: 33 09 a9 40  	sub	s2, s2, a0
8000494c: 6f 00 80 00  	j	0x80004954 <_ntoa_format+0x8c>
80004950: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004954: 33 35 ac 01  	sltu	a0, s8, s10
80004958: 93 45 15 00  	xori	a1, a0, 1
8000495c: 13 05 f0 01  	addi	a0, zero, 31
80004960: 33 36 85 01  	sltu	a2, a0, s8
80004964: b3 65 b6 00  	or	a1, a2, a1
80004968: 63 94 05 04  	bnez	a1, 0x800049b0 <_ntoa_format+0xe8>
8000496c: 23 22 51 01  	sw	s5, 4(sp)
80004970: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004974: 93 45 fc ff  	not	a1, s8
80004978: b3 85 a5 01  	add	a1, a1, s10
8000497c: 33 06 85 41  	sub	a2, a0, s8
80004980: 33 05 87 01  	add	a0, a4, s8
80004984: 63 e4 c5 00  	bltu	a1, a2, 0x8000498c <_ntoa_format+0xc4>
80004988: 93 05 06 00  	mv	a1, a2
8000498c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004990: 93 05 00 03  	addi	a1, zero, 48
80004994: 13 86 04 00  	mv	a2, s1
80004998: 97 c0 ff ff  	auipc	ra, 1048572
8000499c: e7 80 00 bc  	jalr	-1088(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049a0: 33 8c 84 01  	add	s8, s1, s8
800049a4: 03 27 81 00  	lw	a4, 8(sp)
800049a8: 13 88 0a 00  	mv	a6, s5
800049ac: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049b0: 63 0c 04 04  	beqz	s0, 0x80004a08 <_ntoa_format+0x140>
800049b4: 33 35 2c 01  	sltu	a0, s8, s2
800049b8: 93 45 15 00  	xori	a1, a0, 1
800049bc: 13 05 f0 01  	addi	a0, zero, 31
800049c0: 33 36 85 01  	sltu	a2, a0, s8
800049c4: b3 e5 c5 00  	or	a1, a1, a2
800049c8: 63 90 05 04  	bnez	a1, 0x80004a08 <_ntoa_format+0x140>
800049cc: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049d0: 93 45 fc ff  	not	a1, s8
800049d4: b3 05 b9 00  	add	a1, s2, a1
800049d8: 33 06 85 41  	sub	a2, a0, s8
800049dc: 33 05 87 01  	add	a0, a4, s8
800049e0: 63 e4 c5 00  	bltu	a1, a2, 0x800049e8 <_ntoa_format+0x120>
800049e4: 93 05 06 00  	mv	a1, a2
800049e8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800049ec: 93 05 00 03  	addi	a1, zero, 48
800049f0: 13 86 04 00  	mv	a2, s1
800049f4: 97 c0 ff ff  	auipc	ra, 1048572
800049f8: e7 80 40 b6  	jalr	-1180(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800049fc: 33 8c 84 01  	add	s8, s1, s8
80004a00: 03 27 81 00  	lw	a4, 8(sp)
80004a04: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004a08: 13 f5 0b 01  	andi	a0, s7, 16
80004a0c: 63 02 05 0e  	beqz	a0, 0x80004af0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004a10: 13 f5 0b 40  	andi	a0, s7, 1024
80004a14: 13 55 a5 00  	srli	a0, a0, 10
80004a18: 93 35 1c 00  	seqz	a1, s8
80004a1c: 33 65 b5 00  	or	a0, a0, a1
80004a20: 63 1e 05 02  	bnez	a0, 0x80004a5c <_ntoa_format+0x194>
80004a24: 33 45 ac 01  	xor	a0, s8, s10
80004a28: 33 35 a0 00  	snez	a0, a0
80004a2c: b3 45 2c 01  	xor	a1, s8, s2
80004a30: b3 35 b0 00  	snez	a1, a1
80004a34: 33 75 b5 00  	and	a0, a0, a1
80004a38: 63 12 05 02  	bnez	a0, 0x80004a5c <_ntoa_format+0x194>
;       len--;
80004a3c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004a40: b3 35 a0 00  	snez	a1, a0
80004a44: 13 86 0c ff  	addi	a2, s9, -16
80004a48: 13 36 16 00  	seqz	a2, a2
80004a4c: b3 75 b6 00  	and	a1, a2, a1
80004a50: 63 84 05 00  	beqz	a1, 0x80004a58 <_ntoa_format+0x190>
80004a54: 13 05 ec ff  	addi	a0, s8, -2
80004a58: 13 0c 05 00  	mv	s8, a0
80004a5c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a60: 63 96 ac 02  	bne	s9, a0, 0x80004a8c <_ntoa_format+0x1c4>
80004a64: 13 f5 0b 02  	andi	a0, s7, 32
80004a68: 93 55 55 00  	srli	a1, a0, 5
80004a6c: 13 06 f0 01  	addi	a2, zero, 31
80004a70: 33 36 86 01  	sltu	a2, a2, s8
80004a74: b3 e5 c5 00  	or	a1, a1, a2
80004a78: 63 9e 05 02  	bnez	a1, 0x80004ab4 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004a7c: 33 05 87 01  	add	a0, a4, s8
80004a80: 13 0c 1c 00  	addi	s8, s8, 1
80004a84: 93 05 80 07  	addi	a1, zero, 120
80004a88: 6f 00 c0 04  	j	0x80004ad4 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004a8c: 13 85 ec ff  	addi	a0, s9, -2
80004a90: 33 35 a0 00  	snez	a0, a0
80004a94: 93 05 f0 01  	addi	a1, zero, 31
80004a98: b3 b5 85 01  	sltu	a1, a1, s8
80004a9c: 33 65 b5 00  	or	a0, a0, a1
80004aa0: 63 1c 05 02  	bnez	a0, 0x80004ad8 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004aa4: 33 05 87 01  	add	a0, a4, s8
80004aa8: 13 0c 1c 00  	addi	s8, s8, 1
80004aac: 93 05 20 06  	addi	a1, zero, 98
80004ab0: 6f 00 40 02  	j	0x80004ad4 <_ntoa_format+0x20c>
80004ab4: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ab8: 13 35 15 00  	seqz	a0, a0
80004abc: 93 c5 15 00  	xori	a1, a1, 1
80004ac0: 33 65 b5 00  	or	a0, a0, a1
80004ac4: 63 1a 05 00  	bnez	a0, 0x80004ad8 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004ac8: 33 05 87 01  	add	a0, a4, s8
80004acc: 13 0c 1c 00  	addi	s8, s8, 1
80004ad0: 93 05 80 05  	addi	a1, zero, 88
80004ad4: 23 00 b5 00  	sb	a1, 0(a0)
80004ad8: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004adc: 63 60 85 07  	bltu	a0, s8, 0x80004b3c <_ntoa_format+0x274>
;       buf[len++] = '0';
80004ae0: 33 05 87 01  	add	a0, a4, s8
80004ae4: 13 0c 1c 00  	addi	s8, s8, 1
80004ae8: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004aec: 23 00 b5 00  	sb	a1, 0(a0)
80004af0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004af4: 63 64 85 05  	bltu	a0, s8, 0x80004b3c <_ntoa_format+0x274>
;     if (negative) {
80004af8: 63 0a 08 00  	beqz	a6, 0x80004b0c <_ntoa_format+0x244>
;       buf[len++] = '-';
80004afc: 33 05 87 01  	add	a0, a4, s8
80004b00: 13 0c 1c 00  	addi	s8, s8, 1
80004b04: 93 05 d0 02  	addi	a1, zero, 45
80004b08: 6f 00 00 03  	j	0x80004b38 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004b0c: 13 f5 4b 00  	andi	a0, s7, 4
80004b10: 63 1e 05 00  	bnez	a0, 0x80004b2c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004b14: 13 f5 8b 00  	andi	a0, s7, 8
80004b18: 63 02 05 02  	beqz	a0, 0x80004b3c <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004b1c: 33 05 87 01  	add	a0, a4, s8
80004b20: 13 0c 1c 00  	addi	s8, s8, 1
80004b24: 93 05 00 02  	addi	a1, zero, 32
80004b28: 6f 00 00 01  	j	0x80004b38 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004b2c: 33 05 87 01  	add	a0, a4, s8
80004b30: 13 0c 1c 00  	addi	s8, s8, 1
80004b34: 93 05 b0 02  	addi	a1, zero, 43
80004b38: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004b3c: 13 f5 3b 00  	andi	a0, s7, 3
80004b40: 33 35 a0 00  	snez	a0, a0
80004b44: b3 35 2c 01  	sltu	a1, s8, s2
80004b48: 93 c5 15 00  	xori	a1, a1, 1
80004b4c: 33 65 b5 00  	or	a0, a0, a1
80004b50: 13 04 0a 00  	mv	s0, s4
80004b54: 63 16 05 02  	bnez	a0, 0x80004b80 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80004b58: b3 04 89 41  	sub	s1, s2, s8
80004b5c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004b60: 13 04 16 00  	addi	s0, a2, 1
80004b64: 13 05 00 02  	addi	a0, zero, 32
80004b68: 93 05 0b 00  	mv	a1, s6
80004b6c: 93 86 09 00  	mv	a3, s3
80004b70: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004b74: 93 84 f4 ff  	addi	s1, s1, -1
80004b78: 13 06 04 00  	mv	a2, s0
80004b7c: e3 92 04 fe  	bnez	s1, 0x80004b60 <_ntoa_format+0x298>
80004b80: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004b84: 63 0e 0c 02  	beqz	s8, 0x80004bc0 <_ntoa_format+0x2f8>
80004b88: 03 25 81 00  	lw	a0, 8(sp)
80004b8c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004b90: 33 85 8b 01  	add	a0, s7, s8
80004b94: 03 45 05 00  	lbu	a0, 0(a0)
80004b98: 93 0c fc ff  	addi	s9, s8, -1
80004b9c: 93 04 14 00  	addi	s1, s0, 1
80004ba0: 93 05 0b 00  	mv	a1, s6
80004ba4: 13 06 04 00  	mv	a2, s0
80004ba8: 93 86 09 00  	mv	a3, s3
80004bac: e7 80 0d 00  	jalr	s11
80004bb0: 13 84 04 00  	mv	s0, s1
80004bb4: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80004bb8: e3 9c 0c fc  	bnez	s9, 0x80004b90 <_ntoa_format+0x2c8>
80004bbc: 6f 00 80 00  	j	0x80004bc4 <_ntoa_format+0x2fc>
80004bc0: 93 04 04 00  	mv	s1, s0
80004bc4: 33 85 44 41  	sub	a0, s1, s4
80004bc8: 33 35 25 01  	sltu	a0, a0, s2
80004bcc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004bd0: 93 c5 1a 00  	xori	a1, s5, 1
80004bd4: 33 e5 a5 00  	or	a0, a1, a0
80004bd8: 63 18 05 02  	bnez	a0, 0x80004c08 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004bdc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004be0: 13 84 14 00  	addi	s0, s1, 1
80004be4: 13 05 00 02  	addi	a0, zero, 32
80004be8: 93 05 0b 00  	mv	a1, s6
80004bec: 13 86 04 00  	mv	a2, s1
80004bf0: 93 86 09 00  	mv	a3, s3
80004bf4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80004bf8: 33 05 8a 00  	add	a0, s4, s0
80004bfc: 93 04 04 00  	mv	s1, s0
80004c00: e3 60 25 ff  	bltu	a0, s2, 0x80004be0 <_ntoa_format+0x318>
80004c04: 6f 00 80 00  	j	0x80004c0c <_ntoa_format+0x344>
80004c08: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80004c0c: 13 05 04 00  	mv	a0, s0
80004c10: 83 2d c1 00  	lw	s11, 12(sp)
80004c14: 03 2d 01 01  	lw	s10, 16(sp)
80004c18: 83 2c 41 01  	lw	s9, 20(sp)
80004c1c: 03 2c 81 01  	lw	s8, 24(sp)
80004c20: 83 2b c1 01  	lw	s7, 28(sp)
80004c24: 03 2b 01 02  	lw	s6, 32(sp)
80004c28: 83 2a 41 02  	lw	s5, 36(sp)
80004c2c: 03 2a 81 02  	lw	s4, 40(sp)
80004c30: 83 29 c1 02  	lw	s3, 44(sp)
80004c34: 03 29 01 03  	lw	s2, 48(sp)
80004c38: 83 24 41 03  	lw	s1, 52(sp)
80004c3c: 03 24 81 03  	lw	s0, 56(sp)
80004c40: 83 20 c1 03  	lw	ra, 60(sp)
80004c44: 13 01 01 04  	addi	sp, sp, 64
80004c48: 67 80 00 00  	ret

80004c4c <_snrt_init_team>:
;     team->base.root = team;
80004c4c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004c50: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004c54: 03 23 87 00  	lw	t1, 8(a4)
80004c58: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004c5c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004c60: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004c64: 83 22 47 00  	lw	t0, 4(a4)
80004c68: 33 88 08 03  	mul	a6, a7, a6
80004c6c: 33 05 58 02  	mul	a0, a6, t0
80004c70: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004c74: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80004c78: 33 85 68 40  	sub	a0, a7, t1
80004c7c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004c80: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004c84: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80004c88: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004c8c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004c90: 03 25 87 01  	lw	a0, 24(a4)
80004c94: b7 05 00 10  	lui	a1, 65536
80004c98: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004c9c: 23 a2 07 02  	sw	zero, 36(a5)
80004ca0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004ca4: 03 25 07 02  	lw	a0, 32(a4)
80004ca8: 83 25 47 02  	lw	a1, 36(a4)
80004cac: 23 a4 a7 02  	sw	a0, 40(a5)
80004cb0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004cb4: 23 a8 c7 02  	sw	a2, 48(a5)
80004cb8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004cbc: 23 ac d7 02  	sw	a3, 56(a5)
80004cc0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004cc4: 03 25 07 01  	lw	a0, 16(a4)
80004cc8: 33 08 a6 00  	add	a6, a2, a0
80004ccc: 93 05 08 19  	addi	a1, a6, 400
80004cd0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004cd4: b3 32 a8 00  	sltu	t0, a6, a0
80004cd8: 93 55 15 00  	srli	a1, a0, 1
80004cdc: 33 03 b8 00  	add	t1, a6, a1
80004ce0: b3 35 03 01  	sltu	a1, t1, a6
80004ce4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80004ce8: 23 a0 67 04  	sw	t1, 64(a5)
80004cec: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80004cf0: 13 15 15 00  	slli	a0, a0, 1
80004cf4: b3 05 c5 00  	add	a1, a0, a2
80004cf8: 33 b5 a5 00  	sltu	a0, a1, a0
80004cfc: 23 a4 b7 04  	sw	a1, 72(a5)
80004d00: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80004d04: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80004d08: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80004d0c: 37 05 00 00  	lui	a0, 0
80004d10: 33 05 45 00  	add	a0, a0, tp
80004d14: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004d18: 03 a5 07 00  	lw	a0, 0(a5)
80004d1c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80004d20: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80004d24: b3 85 b8 40  	sub	a1, a7, a1
80004d28: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80004d2c: b7 05 00 00  	lui	a1, 0
80004d30: b3 85 45 00  	add	a1, a1, tp
80004d34: 23 a2 a5 00  	sw	a0, 4(a1)
80004d38: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80004d3c: 33 85 a8 02  	mul	a0, a7, a0

80004d40 <.LBB0_1>:
80004d40: 97 15 00 00  	auipc	a1, 1
80004d44: 93 85 45 98  	addi	a1, a1, -1660
80004d48: 33 05 b5 00  	add	a0, a0, a1
80004d4c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004d50: 83 28 07 03  	lw	a7, 48(a4)
80004d54: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004d58: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004d5c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004d60: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004d64: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004d68: 13 05 76 00  	addi	a0, a2, 7
80004d6c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004d70: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004d74: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004d78: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004d7c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004d80: 03 a5 05 00  	lw	a0, 0(a1)
80004d84: 13 05 f5 44  	addi	a0, a0, 1103
80004d88: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004d8c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004d90: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004d94: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004d98: 37 05 00 00  	lui	a0, 0
80004d9c: 33 05 45 00  	add	a0, a0, tp
80004da0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004da4: 37 05 00 00  	lui	a0, 0
80004da8: 33 05 45 00  	add	a0, a0, tp
80004dac: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004db0: 67 80 00 00  	ret

80004db4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004db4: 37 05 00 00  	lui	a0, 0
80004db8: 33 05 45 00  	add	a0, a0, tp
80004dbc: 03 25 05 00  	lw	a0, 0(a0)
80004dc0: 03 25 05 00  	lw	a0, 0(a0)
80004dc4: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004dc8: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004dcc: 33 85 a5 40  	sub	a0, a1, a0
80004dd0: 67 80 00 00  	ret

80004dd4 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004dd4: 37 05 00 00  	lui	a0, 0
80004dd8: 33 05 45 00  	add	a0, a0, tp
80004ddc: 03 25 05 00  	lw	a0, 0(a0)
80004de0: 03 25 05 00  	lw	a0, 0(a0)
80004de4: 03 25 05 07  	lw	a0, 112(a0)
80004de8: 67 80 00 00  	ret

80004dec <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004dec: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004df0: 63 44 05 00  	bltz	a0, 0x80004df8 <__snrt_isr+0xc>
;         while (1)
80004df4: 6f 00 00 00  	j	0x80004df4 <__snrt_isr+0x8>
80004df8: b7 05 00 80  	lui	a1, 524288
80004dfc: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004e00: 33 75 b5 00  	and	a0, a0, a1
80004e04: 13 05 d5 ff  	addi	a0, a0, -3
80004e08: 93 55 25 00  	srli	a1, a0, 2
80004e0c: 13 15 e5 01  	slli	a0, a0, 30
80004e10: 33 65 b5 00  	or	a0, a0, a1
80004e14: 93 05 40 00  	addi	a1, zero, 4
80004e18: 63 0a b5 06  	beq	a0, a1, 0x80004e8c <.LBB1_7+0x58>
80004e1c: 63 1a 05 08  	bnez	a0, 0x80004eb0 <.LBB1_7+0x7c>
80004e20: 37 05 00 00  	lui	a0, 0
80004e24: 33 05 45 00  	add	a0, a0, tp
80004e28: 03 25 05 00  	lw	a0, 0(a0)
80004e2c: 03 25 05 00  	lw	a0, 0(a0)
80004e30: f3 25 40 f1  	csrr	a1, mhartid

80004e34 <.LBB1_7>:
;     asm volatile(
80004e34: 17 16 00 00  	auipc	a2, 1
80004e38: 13 06 c6 88  	addi	a2, a2, -1908
80004e3c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004e40: 93 06 06 00  	mv	a3, a2
80004e44: 93 02 10 00  	addi	t0, zero, 1
80004e48: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004e4c: e3 9e 02 fe  	bnez	t0, 0x80004e48 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004e50: b7 06 00 00  	lui	a3, 0
80004e54: b3 86 46 00  	add	a3, a3, tp
80004e58: 83 a6 86 00  	lw	a3, 8(a3)
80004e5c: 33 85 a5 40  	sub	a0, a1, a0
80004e60: 93 55 35 00  	srli	a1, a0, 3
80004e64: 93 f5 c5 ff  	andi	a1, a1, -4
80004e68: b3 85 b6 00  	add	a1, a3, a1
80004e6c: 83 a6 05 00  	lw	a3, 0(a1)
80004e70: 13 07 10 00  	addi	a4, zero, 1
80004e74: 33 15 a7 00  	sll	a0, a4, a0
80004e78: 13 45 f5 ff  	not	a0, a0
80004e7c: 33 f5 a6 00  	and	a0, a3, a0
80004e80: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004e84: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004e88: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004e8c: 37 05 00 00  	lui	a0, 0
80004e90: 33 05 45 00  	add	a0, a0, tp
80004e94: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004e98: b7 05 00 00  	lui	a1, 0
80004e9c: b3 85 45 00  	add	a1, a1, tp
80004ea0: 83 a5 c5 00  	lw	a1, 12(a1)
80004ea4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004ea8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004eac: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004eb0: 67 80 00 00  	ret

Disassembly of section .init:

80004ec0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004ec0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004ec4: 93 81 81 f0  	addi	gp, gp, -248

80004ec8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004ec8: 97 00 00 00  	auipc	ra, 0
80004ecc: e7 80 40 3c  	jalr	964(ra)

80004ed0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004ed0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004ed4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004ed8: 97 00 00 00  	auipc	ra, 0
80004edc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004ee0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004ee4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004ee8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004eec: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004ef0: 63 92 02 02  	bnez	t0, 0x80004f14 <snrt.crt0.init_registers>

80004ef4 <.Lpcrel_hi0>:
;     la        t0, _edata
80004ef4: 97 02 00 00  	auipc	t0, 0
80004ef8: 93 82 c2 7c  	addi	t0, t0, 1996

80004efc <.Lpcrel_hi1>:
;     la        t1, _end
80004efc: 17 03 00 00  	auipc	t1, 0
80004f00: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
80004f04: 63 d8 62 00  	bge	t0, t1, 0x80004f14 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004f08: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004f0c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004f10: e3 cc 62 fe  	blt	t0, t1, 0x80004f08 <.Lpcrel_hi1+0xc>

80004f14 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004f14: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004f18: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004f1c: 63 82 02 08  	beqz	t0, 0x80004fa0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004f20: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004f24: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004f28: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004f2c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004f30: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004f34: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004f38: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004f3c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004f40: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004f44: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004f48: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004f4c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004f50: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004f54: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004f58: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004f5c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004f60: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004f64: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004f68: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004f6c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004f70: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004f74: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004f78: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004f7c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004f80: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004f84: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004f88: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004f8c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004f90: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004f94: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004f98: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004f9c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004fa0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004fa0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004fa4: 23 a0 06 00  	sw	zero, 0(a3)

80004fa8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004fa8: 97 02 00 00  	auipc	t0, 0
80004fac: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004fb0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004fb4: 93 87 06 00  	mv	a5, a3

80004fb8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004fb8: 97 03 00 00  	auipc	t2, 0
80004fbc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004fc0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004fc4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004fc8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004fcc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004fd0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004fd4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004fd8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004fdc: b3 86 66 40  	sub	a3, a3, t1

80004fe0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004fe0: 97 02 00 00  	auipc	t0, 0
80004fe4: 93 82 82 5e  	addi	t0, t0, 1512

80004fe8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004fe8: 17 03 00 00  	auipc	t1, 0
80004fec: 13 03 03 5e  	addi	t1, t1, 1504

80004ff0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004ff0: 97 03 00 00  	auipc	t2, 0
80004ff4: 93 83 83 5d  	addi	t2, t2, 1496

80004ff8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004ff8: 17 0e 00 00  	auipc	t3, 0
80004ffc: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005000: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005004: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005008: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000500c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80005010: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80005014: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80005018: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000501c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80005020: 63 dc 62 00  	bge	t0, t1, 0x80005038 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80005024: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80005028: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000502c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005030: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80005034: e3 c8 62 fe  	blt	t0, t1, 0x80005024 <.Lpcrel_hi7+0x2c>

80005038 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80005038: 97 02 00 00  	auipc	t0, 0
8000503c: 93 82 02 59  	addi	t0, t0, 1424

80005040 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005040: 17 03 00 00  	auipc	t1, 0
80005044: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80005048: 63 da 62 00  	bge	t0, t1, 0x8000505c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000504c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005050: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005054: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005058: e3 ca 72 fe  	blt	t0, t2, 0x8000504c <.Lpcrel_hi9+0xc>

8000505c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000505c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005060: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005064: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005068: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000506c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005070: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005074: 97 00 00 00  	auipc	ra, 0
80005078: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000507c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005080: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005084: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005088: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000508c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005090: 13 01 41 01  	addi	sp, sp, 20

80005094 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005094: 97 02 00 00  	auipc	t0, 0
80005098: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000509c: 73 90 52 30  	csrw	mtvec, t0

800050a0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800050a0: 97 00 00 00  	auipc	ra, 0
800050a4: e7 80 00 22  	jalr	544(ra)

800050a8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800050a8: 97 b0 ff ff  	auipc	ra, 1048571
800050ac: e7 80 c0 58  	jalr	1420(ra)
;     mv        s0, a0 # store return value in s0
800050b0: 13 04 05 00  	mv	s0, a0

800050b4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800050b4: 97 00 00 00  	auipc	ra, 0
800050b8: e7 80 c0 20  	jalr	524(ra)

800050bc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800050bc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800050c0: 97 00 00 00  	auipc	ra, 0
800050c4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800050c8: 73 00 50 10  	wfi	
;     j       1b
800050cc: 6f f0 df ff  	j	0x800050c8 <snrt.crt0.end+0xc>

800050d0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800050d0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800050d4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800050d8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800050dc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800050e0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800050e4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800050e8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800050ec: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800050f0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800050f4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800050f8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800050fc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005100: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005104: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005108: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000510c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005110: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005114: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005118: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000511c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005120: 63 84 02 08  	beqz	t0, 0x800051a8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005124: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005128: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000512c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005130: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005134: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005138: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000513c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005140: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005144: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005148: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000514c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005150: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005154: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005158: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000515c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005160: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005164: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005168: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000516c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005170: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005174: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005178: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000517c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005180: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005184: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005188: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000518c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005190: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005194: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005198: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000519c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800051a0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800051a4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800051a8: 97 00 00 00  	auipc	ra, 0
800051ac: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
800051b0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800051b4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800051b8: 63 84 02 08  	beqz	t0, 0x80005240 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800051bc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
800051c0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
800051c4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
800051c8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
800051cc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
800051d0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
800051d4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
800051d8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
800051dc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800051e0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800051e4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800051e8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800051ec: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800051f0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800051f4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800051f8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800051fc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005200: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005204: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005208: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000520c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005210: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005214: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005218: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000521c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005220: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005224: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005228: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000522c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005230: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005234: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005238: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000523c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005240: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005244: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005248: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000524c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005250: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005254: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005258: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000525c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005260: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005264: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005268: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000526c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005270: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005274: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005278: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000527c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005280: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005284: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005288: 73 00 20 30  	mret	

8000528c <_snrt_init_core_info>:
;     mv        a4, a1
8000528c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005290: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005294: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005298: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000529c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800052a0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800052a4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800052a8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800052ac: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800052b0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800052b4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800052b8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800052bc: 67 80 00 00  	ret

800052c0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800052c0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800052c4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800052c8: 97 00 00 00  	auipc	ra, 0
800052cc: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
800052d0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
800052d4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
800052d8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
800052dc: 13 01 41 00  	addi	sp, sp, 4
;     ret
800052e0: 67 80 00 00  	ret

800052e4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800052e4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800052e8: 67 80 00 00  	ret

800052ec <_snrt_exit>:
;     addi      sp, sp, -8
800052ec: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800052f0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800052f4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800052f8: 97 00 00 00  	auipc	ra, 0
800052fc: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80005300: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005304: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005308: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000530c: 63 1c 05 00  	bnez	a0, 0x80005324 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005310: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005314: 93 e2 12 00  	ori	t0, t0, 1

80005318 <.Lpcrel_hi11>:
;     la        t1, tohost
80005318: 17 03 00 00  	auipc	t1, 0
8000531c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
80005320: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005324: 67 80 00 00  	ret
