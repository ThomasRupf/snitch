
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-sp:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000027a4 80000000 TEXT
  2 .init             00000468 800027b0 TEXT
  3 .rodata           00000230 80002c18 DATA
  4 .htif             00000048 80002e80 DATA
  5 .tdata            00000000 80002ec8 DATA
  6 .tbss             00000010 80002ec8 BSS
  7 .tbssend          00000000 80002ed8 DATA
  8 .sdata            00000108 80002ed8 DATA
  9 .data             00000000 80002fe0 DATA
 10 .sbss             00000004 80002fe0 BSS
 11 .bss              00000000 80002fe4 BSS
 12 .dram             00000000 80002fe4 DATA
 13 .debug_info       000031dd 00000000 
 14 .debug_abbrev     00000b3d 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000028e9 00000000 
 17 .debug_loc        00002c01 00000000 
 18 .debug_ranges     00000360 00000000 
 19 .debug_str        00000a75 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000278 00000000 
 23 .symtab           00003070 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000973 00000000 


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
80000644: 27 34 81 00  	fsd	fs0, 8(sp)
80000648: 37 05 00 00  	lui	a0, 0
8000064c: 33 05 45 00  	add	a0, a0, tp
80000650: 83 25 45 00  	lw	a1, 4(a0)
80000654: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
80000658: 63 9c 05 26  	bnez	a1, 0x800008d0 <.LBB0_20+0x10>
;     return _snrt_team_current->root;
8000065c: 37 05 00 00  	lui	a0, 0
80000660: 33 05 45 00  	add	a0, a0, tp
80000664: 03 25 05 00  	lw	a0, 0(a0)
80000668: 03 26 05 00  	lw	a2, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000066c: 83 25 86 05  	lw	a1, 88(a2)
80000670: 03 25 06 05  	lw	a0, 80(a2)
80000674: 83 26 46 05  	lw	a3, 84(a2)
80000678: 13 87 05 05  	addi	a4, a1, 80
8000067c: b3 86 a6 00  	add	a3, a3, a0
80000680: 63 fc e6 00  	bgeu	a3, a4, 0x80000698 <main+0x64>
80000684: 13 05 00 00  	mv	a0, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80000688: 93 07 07 00  	mv	a5, a4
8000068c: 63 e0 f6 02  	bltu	a3, a5, 0x800006ac <main+0x78>
;     alloc->next += size;
80000690: 23 2c f6 04  	sw	a5, 88(a2)
80000694: 6f 00 c0 01  	j	0x800006b0 <main+0x7c>
;     void *ret = (void *)alloc->next;
80000698: 13 85 05 00  	mv	a0, a1
;     alloc->next += size;
8000069c: 23 2c e6 04  	sw	a4, 88(a2)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006a0: 93 87 05 0a  	addi	a5, a1, 160
800006a4: 93 05 07 00  	mv	a1, a4
800006a8: e3 f4 f6 fe  	bgeu	a3, a5, 0x80000690 <main+0x5c>
800006ac: 93 05 00 00  	mv	a1, zero
800006b0: 37 26 09 40  	lui	a2, 262290
800006b4: 13 08 46 0c  	addi	a6, a2, 196
;         p[i] = seed * 3.141;
800006b8: 23 22 05 01  	sw	a6, 4(a0)
800006bc: b7 e6 a5 9b  	lui	a3, 637534
800006c0: 93 86 46 35  	addi	a3, a3, 852
800006c4: 23 20 d5 00  	sw	a3, 0(a0)
800006c8: 37 27 19 40  	lui	a4, 262546
800006cc: 93 08 47 0c  	addi	a7, a4, 196
800006d0: 23 26 15 01  	sw	a7, 12(a0)
800006d4: 23 24 d5 00  	sw	a3, 8(a0)
800006d8: b7 e7 22 40  	lui	a5, 262702
800006dc: 93 82 37 89  	addi	t0, a5, -1901
800006e0: 23 2a 55 00  	sw	t0, 20(a0)
800006e4: 37 76 bc 74  	lui	a2, 478151
800006e8: 13 06 f6 a7  	addi	a2, a2, -1409
800006ec: 23 28 c5 00  	sw	a2, 16(a0)
800006f0: 37 27 29 40  	lui	a4, 262802
800006f4: 13 03 47 0c  	addi	t1, a4, 196
800006f8: 23 2e 65 00  	sw	t1, 28(a0)
800006fc: 23 2c d5 00  	sw	a3, 24(a0)
80000700: b7 77 2f 40  	lui	a5, 262903
80000704: 93 83 57 8f  	addi	t2, a5, -1803
80000708: 23 22 75 02  	sw	t2, 36(a0)
8000070c: 37 67 8f c2  	lui	a4, 796918
80000710: 13 07 97 c2  	addi	a4, a4, -983
80000714: 23 20 e5 02  	sw	a4, 32(a0)
80000718: b7 e7 32 40  	lui	a5, 262958
8000071c: 13 8e 37 89  	addi	t3, a5, -1901
80000720: 23 26 c5 03  	sw	t3, 44(a0)
80000724: 23 24 c5 02  	sw	a2, 40(a0)
80000728: b7 07 36 40  	lui	a5, 263008
8000072c: 93 8e c7 ca  	addi	t4, a5, -852
80000730: 23 2a d5 03  	sw	t4, 52(a0)
80000734: b7 27 31 08  	lui	a5, 33554
80000738: 13 8f a7 6e  	addi	t5, a5, 1770
8000073c: 23 28 e5 03  	sw	t5, 48(a0)
80000740: b7 27 39 40  	lui	a5, 263058
80000744: 93 8f 47 0c  	addi	t6, a5, 196
80000748: 23 2e f5 03  	sw	t6, 60(a0)
8000074c: 23 2c d5 02  	sw	a3, 56(a0)
80000750: b7 47 3c 40  	lui	a5, 263108
80000754: 93 87 d7 4d  	addi	a5, a5, 1245
80000758: 23 22 f5 04  	sw	a5, 68(a0)
8000075c: 37 a4 1a 2f  	lui	s0, 192938
80000760: 13 04 e4 fb  	addi	s0, s0, -66
80000764: 23 20 85 04  	sw	s0, 64(a0)
80000768: 23 24 e5 04  	sw	a4, 72(a0)
8000076c: b7 74 3f 40  	lui	s1, 263159
80000770: 93 84 54 8f  	addi	s1, s1, -1803
80000774: 23 26 95 04  	sw	s1, 76(a0)
80000778: 23 a0 d5 00  	sw	a3, 0(a1)
8000077c: 23 a2 05 01  	sw	a6, 4(a1)
80000780: 23 a4 d5 00  	sw	a3, 8(a1)
80000784: 23 a6 15 01  	sw	a7, 12(a1)
80000788: 23 a8 c5 00  	sw	a2, 16(a1)
8000078c: 23 aa 55 00  	sw	t0, 20(a1)
80000790: 23 ac d5 00  	sw	a3, 24(a1)
80000794: 23 ae 65 00  	sw	t1, 28(a1)
80000798: 23 a0 e5 02  	sw	a4, 32(a1)
8000079c: 23 a2 75 02  	sw	t2, 36(a1)
800007a0: 23 a4 c5 02  	sw	a2, 40(a1)
800007a4: 23 a6 c5 03  	sw	t3, 44(a1)
800007a8: 23 a8 e5 03  	sw	t5, 48(a1)
800007ac: 23 aa d5 03  	sw	t4, 52(a1)
800007b0: 23 ac d5 02  	sw	a3, 56(a1)
800007b4: 23 ae f5 03  	sw	t6, 60(a1)
800007b8: 23 a0 85 04  	sw	s0, 64(a1)
800007bc: 23 a2 f5 04  	sw	a5, 68(a1)
800007c0: 23 a4 e5 04  	sw	a4, 72(a1)
800007c4: 23 a6 95 04  	sw	s1, 76(a1)
;         r += a[i] * b[i];
800007c8: 07 30 05 00  	fld	ft0, 0(a0)

800007cc <.LBB0_8>:
800007cc: 97 25 00 00  	auipc	a1, 2
800007d0: 93 85 c5 70  	addi	a1, a1, 1804
800007d4: 87 b0 05 00  	fld	ft1, 0(a1)
;         r += a[i] * b[i];
800007d8: 07 31 85 00  	fld	ft2, 8(a0)

800007dc <.LBB0_9>:
800007dc: 97 25 00 00  	auipc	a1, 2
800007e0: 93 85 45 70  	addi	a1, a1, 1796
800007e4: 87 b1 05 00  	fld	ft3, 0(a1)
;         r += a[i] * b[i];
800007e8: 07 32 05 01  	fld	ft4, 16(a0)

800007ec <.LBB0_10>:
800007ec: 97 25 00 00  	auipc	a1, 2
800007f0: 93 85 c5 6f  	addi	a1, a1, 1788
800007f4: 87 b2 05 00  	fld	ft5, 0(a1)
;         r += a[i] * b[i];
800007f8: 53 70 10 12  	fmul.d	ft0, ft0, ft1
800007fc: 43 70 31 02  	fmadd.d	ft0, ft2, ft3, ft0
80000800: 43 70 52 02  	fmadd.d	ft0, ft4, ft5, ft0
80000804: 87 30 85 01  	fld	ft1, 24(a0)

80000808 <.LBB0_11>:
80000808: 97 25 00 00  	auipc	a1, 2
8000080c: 93 85 85 6e  	addi	a1, a1, 1768
80000810: 07 b1 05 00  	fld	ft2, 0(a1)
;         r += a[i] * b[i];
80000814: 87 31 05 02  	fld	ft3, 32(a0)

80000818 <.LBB0_12>:
80000818: 97 25 00 00  	auipc	a1, 2
8000081c: 93 85 05 6e  	addi	a1, a1, 1760
80000820: 07 b2 05 00  	fld	ft4, 0(a1)
;         r += a[i] * b[i];
80000824: 87 32 85 02  	fld	ft5, 40(a0)

80000828 <.LBB0_13>:
80000828: 97 25 00 00  	auipc	a1, 2
8000082c: 93 85 85 6d  	addi	a1, a1, 1752
80000830: 07 b3 05 00  	fld	ft6, 0(a1)
;         r += a[i] * b[i];
80000834: 87 33 05 03  	fld	ft7, 48(a0)

80000838 <.LBB0_14>:
80000838: 97 25 00 00  	auipc	a1, 2
8000083c: 93 85 05 6d  	addi	a1, a1, 1744
80000840: 07 b5 05 00  	fld	fa0, 0(a1)
;         r += a[i] * b[i];
80000844: 43 f0 20 02  	fmadd.d	ft0, ft1, ft2, ft0
80000848: 43 f0 41 02  	fmadd.d	ft0, ft3, ft4, ft0
8000084c: 43 f0 62 02  	fmadd.d	ft0, ft5, ft6, ft0
80000850: 43 f0 a3 02  	fmadd.d	ft0, ft7, fa0, ft0
80000854: 87 30 85 03  	fld	ft1, 56(a0)

80000858 <.LBB0_15>:
80000858: 97 25 00 00  	auipc	a1, 2
8000085c: 93 85 85 6b  	addi	a1, a1, 1720
80000860: 07 b1 05 00  	fld	ft2, 0(a1)
;         r += a[i] * b[i];
80000864: 87 31 05 04  	fld	ft3, 64(a0)

80000868 <.LBB0_16>:
80000868: 97 25 00 00  	auipc	a1, 2
8000086c: 93 85 05 6b  	addi	a1, a1, 1712
80000870: 07 b2 05 00  	fld	ft4, 0(a1)
;         r += a[i] * b[i];
80000874: 87 32 85 04  	fld	ft5, 72(a0)

80000878 <.LBB0_17>:
80000878: 17 25 00 00  	auipc	a0, 2
8000087c: 13 05 85 6a  	addi	a0, a0, 1704
80000880: 07 33 05 00  	fld	ft6, 0(a0)

80000884 <.LBB0_18>:
80000884: 17 25 00 00  	auipc	a0, 2
80000888: 13 05 45 6a  	addi	a0, a0, 1700
8000088c: 87 33 05 00  	fld	ft7, 0(a0)
;         r += a[i] * b[i];
80000890: 43 f0 20 02  	fmadd.d	ft0, ft1, ft2, ft0
80000894: 43 f0 41 02  	fmadd.d	ft0, ft3, ft4, ft0
80000898: 43 f0 62 02  	fmadd.d	ft0, ft5, ft6, ft0
;     double error = r + r0 - r_true;
8000089c: 53 70 70 02  	fadd.d	ft0, ft0, ft7
;     error = error < 0.0 ? -error : error;
800008a0: 53 24 00 22  	fabs.d	fs0, ft0
;     printf("error = %f\n", error);
800008a4: 27 30 81 00  	fsd	fs0, 0(sp)
800008a8: 03 26 01 00  	lw	a2, 0(sp)
800008ac: 83 26 41 00  	lw	a3, 4(sp)

800008b0 <.LBB0_19>:
800008b0: 17 25 00 00  	auipc	a0, 2
800008b4: 13 05 55 37  	addi	a0, a0, 885
800008b8: 97 00 00 00  	auipc	ra, 0
800008bc: e7 80 00 03  	jalr	48(ra)

800008c0 <.LBB0_20>:
800008c0: 17 25 00 00  	auipc	a0, 2
800008c4: 13 05 05 67  	addi	a0, a0, 1648
800008c8: 07 30 05 00  	fld	ft0, 0(a0)
;     return error > 0.0001;
800008cc: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
800008d0: 07 34 81 00  	fld	fs0, 8(sp)
800008d4: 83 24 41 01  	lw	s1, 20(sp)
800008d8: 03 24 81 01  	lw	s0, 24(sp)
800008dc: 83 20 c1 01  	lw	ra, 28(sp)
800008e0: 13 01 01 02  	addi	sp, sp, 32
800008e4: 67 80 00 00  	ret

800008e8 <printf_>:
; {
800008e8: 13 01 01 fd  	addi	sp, sp, -48
800008ec: 23 26 11 00  	sw	ra, 12(sp)
800008f0: 93 02 05 00  	mv	t0, a0
800008f4: 23 26 11 03  	sw	a7, 44(sp)
800008f8: 23 24 01 03  	sw	a6, 40(sp)
800008fc: 23 22 f1 02  	sw	a5, 36(sp)
80000900: 23 20 e1 02  	sw	a4, 32(sp)
80000904: 23 2e d1 00  	sw	a3, 28(sp)
80000908: 23 2c c1 00  	sw	a2, 24(sp)
8000090c: 23 2a b1 00  	sw	a1, 20(sp)
80000910: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000914: 23 24 a1 00  	sw	a0, 8(sp)

80000918 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000918: 17 15 00 00  	auipc	a0, 1
8000091c: 13 05 45 c2  	addi	a0, a0, -988
80000920: 93 05 71 00  	addi	a1, sp, 7
80000924: 13 06 f0 ff  	addi	a2, zero, -1
80000928: 13 07 41 01  	addi	a4, sp, 20
8000092c: 93 86 02 00  	mv	a3, t0
80000930: 97 00 00 00  	auipc	ra, 0
80000934: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000938: 83 20 c1 00  	lw	ra, 12(sp)
8000093c: 13 01 01 03  	addi	sp, sp, 48
80000940: 67 80 00 00  	ret

80000944 <_vsnprintf.llvm.17592004524093383706>:
; {
80000944: 13 01 01 f9  	addi	sp, sp, -112
80000948: 23 26 11 06  	sw	ra, 108(sp)
8000094c: 23 24 81 06  	sw	s0, 104(sp)
80000950: 23 22 91 06  	sw	s1, 100(sp)
80000954: 23 20 21 07  	sw	s2, 96(sp)
80000958: 23 2e 31 05  	sw	s3, 92(sp)
8000095c: 23 2c 41 05  	sw	s4, 88(sp)
80000960: 23 2a 51 05  	sw	s5, 84(sp)
80000964: 23 28 61 05  	sw	s6, 80(sp)
80000968: 23 26 71 05  	sw	s7, 76(sp)
8000096c: 23 24 81 05  	sw	s8, 72(sp)
80000970: 23 22 91 05  	sw	s9, 68(sp)
80000974: 23 20 a1 05  	sw	s10, 64(sp)
80000978: 23 2e b1 03  	sw	s11, 60(sp)
8000097c: 93 09 07 00  	mv	s3, a4
80000980: 13 84 06 00  	mv	s0, a3
80000984: 93 0a 06 00  	mv	s5, a2
80000988: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000098c: 63 86 05 00  	beqz	a1, 0x80000998 <.LBB1_183>
80000990: 13 09 05 00  	mv	s2, a0
80000994: 6f 00 c0 00  	j	0x800009a0 <.LBB1_183+0x8>

80000998 <.LBB1_183>:
80000998: 17 19 00 00  	auipc	s2, 1
8000099c: 13 09 09 c5  	addi	s2, s2, -944
800009a0: 13 0c 00 00  	mv	s8, zero
800009a4: 13 0b 50 02  	addi	s6, zero, 37
800009a8: 93 0d 00 01  	addi	s11, zero, 16
800009ac: 93 0b e0 02  	addi	s7, zero, 46
800009b0: 37 15 00 00  	lui	a0, 1
800009b4: 13 05 05 80  	addi	a0, a0, -2048
800009b8: 23 2c a1 00  	sw	a0, 24(sp)
800009bc: 37 05 01 00  	lui	a0, 16
800009c0: 13 05 f5 ff  	addi	a0, a0, -1
800009c4: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
800009c8: 13 0d 24 00  	addi	s10, s0, 2
800009cc: 93 0c 0c 00  	mv	s9, s8
800009d0: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800009d4: 03 45 04 00  	lbu	a0, 0(s0)
800009d8: e3 04 05 30  	beqz	a0, 0x800014e0 <.LBB1_124+0x3b0>
800009dc: 63 08 65 03  	beq	a0, s6, 0x80000a0c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800009e0: 93 84 1c 00  	addi	s1, s9, 1
800009e4: 93 05 0a 00  	mv	a1, s4
800009e8: 13 86 0c 00  	mv	a2, s9
800009ec: 93 86 0a 00  	mv	a3, s5
800009f0: e7 00 09 00  	jalr	s2
;       format++;
800009f4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800009f8: 13 0d 1d 00  	addi	s10, s10, 1
800009fc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000a00: 03 45 04 00  	lbu	a0, 0(s0)
80000a04: e3 1c 05 fc  	bnez	a0, 0x800009dc <.LBB1_183+0x44>
80000a08: 6f 00 90 2d  	j	0x800014e0 <.LBB1_124+0x3b0>
;     flags = 0U;
80000a0c: 13 04 00 00  	mv	s0, zero
80000a10: 6f 00 00 01  	j	0x80000a20 <.LBB1_9+0x8>

80000a14 <.LBB1_8>:
80000a14: 93 05 00 01  	addi	a1, zero, 16

80000a18 <.LBB1_9>:
80000a18: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000a1c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000a20: 03 45 fd ff  	lbu	a0, -1(s10)
80000a24: 93 05 05 fe  	addi	a1, a0, -32
80000a28: 63 ec bd 02  	bltu	s11, a1, 0x80000a60 <.LBB1_15>
80000a2c: 93 95 25 00  	slli	a1, a1, 2

80000a30 <.LBB1_184>:
80000a30: 17 26 00 00  	auipc	a2, 2
80000a34: 13 06 86 20  	addi	a2, a2, 520
80000a38: b3 85 c5 00  	add	a1, a1, a2
80000a3c: 03 a6 05 00  	lw	a2, 0(a1)
80000a40: 93 05 10 00  	addi	a1, zero, 1
80000a44: 67 00 06 00  	jr	a2

80000a48 <.LBB1_12>:
80000a48: 93 05 80 00  	addi	a1, zero, 8
80000a4c: 6f f0 df fc  	j	0x80000a18 <.LBB1_9>

80000a50 <.LBB1_13>:
80000a50: 93 05 40 00  	addi	a1, zero, 4
80000a54: 6f f0 5f fc  	j	0x80000a18 <.LBB1_9>

80000a58 <.LBB1_14>:
80000a58: 93 05 20 00  	addi	a1, zero, 2
80000a5c: 6f f0 df fb  	j	0x80000a18 <.LBB1_9>

80000a60 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000a60: 93 05 05 fd  	addi	a1, a0, -48
80000a64: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000a68: 93 05 fd ff  	addi	a1, s10, -1
80000a6c: 93 06 90 00  	addi	a3, zero, 9
80000a70: 63 ee c6 06  	bltu	a3, a2, 0x80000aec <.LBB1_15+0x8c>
80000a74: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000a78: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000a7c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000a80: b3 06 8b 03  	mul	a3, s6, s8
80000a84: 93 85 15 00  	addi	a1, a1, 1
80000a88: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000a8c: 93 06 05 fd  	addi	a3, a0, -48
80000a90: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000a94: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000a98: e3 e0 86 ff  	bltu	a3, s8, 0x80000a78 <.LBB1_15+0x18>
80000a9c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000aa0: 63 16 75 0b  	bne	a0, s7, 0x80000b4c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80000aa4: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000aa8: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80000aac: 93 05 05 fd  	addi	a1, a0, -48
80000ab0: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80000ab4: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000ab8: 93 06 90 00  	addi	a3, zero, 9
80000abc: 63 e0 c6 06  	bltu	a3, a2, 0x80000b1c <.LBB1_15+0xbc>
80000ac0: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000ac4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000ac8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000acc: b3 86 8b 03  	mul	a3, s7, s8
80000ad0: 93 85 15 00  	addi	a1, a1, 1
80000ad4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000ad8: 93 06 05 fd  	addi	a3, a0, -48
80000adc: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000ae0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80000ae4: e3 e0 86 ff  	bltu	a3, s8, 0x80000ac4 <.LBB1_15+0x64>
80000ae8: 6f 00 00 07  	j	0x80000b58 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80000aec: 13 06 a0 02  	addi	a2, zero, 42
80000af0: 63 18 c5 04  	bne	a0, a2, 0x80000b40 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80000af4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80000af8: 63 d4 05 00  	bgez	a1, 0x80000b00 <.LBB1_15+0xa0>
80000afc: 13 64 24 00  	ori	s0, s0, 2
80000b00: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80000b04: 03 45 0d 00  	lbu	a0, 0(s10)
80000b08: 13 d6 f5 41  	srai	a2, a1, 31
80000b0c: b3 85 c5 00  	add	a1, a1, a2
80000b10: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80000b14: e3 08 75 f9  	beq	a0, s7, 0x80000aa4 <.LBB1_15+0x44>
80000b18: 6f 00 40 03  	j	0x80000b4c <.LBB1_15+0xec>
;       else if (*format == '*') {
80000b1c: 13 06 a0 02  	addi	a2, zero, 42
80000b20: 63 1a c5 02  	bne	a0, a2, 0x80000b54 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80000b24: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80000b28: 63 44 70 01  	bgtz	s7, 0x80000b30 <.LBB1_15+0xd0>
80000b2c: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80000b30: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80000b34: 13 0d 2d 00  	addi	s10, s10, 2
80000b38: 93 89 49 00  	addi	s3, s3, 4
80000b3c: 6f 00 00 02  	j	0x80000b5c <.LBB1_15+0xfc>
80000b40: 13 0b 00 00  	mv	s6, zero
80000b44: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000b48: e3 0e 75 f5  	beq	a0, s7, 0x80000aa4 <.LBB1_15+0x44>
80000b4c: 93 0b 00 00  	mv	s7, zero
80000b50: 6f 00 c0 00  	j	0x80000b5c <.LBB1_15+0xfc>
80000b54: 93 0b 00 00  	mv	s7, zero
80000b58: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80000b5c: 93 05 85 f9  	addi	a1, a0, -104
80000b60: 13 d6 15 00  	srli	a2, a1, 1
80000b64: 93 95 f5 01  	slli	a1, a1, 31
80000b68: b3 e5 c5 00  	or	a1, a1, a2
80000b6c: 13 06 90 00  	addi	a2, zero, 9
80000b70: 63 62 b6 06  	bltu	a2, a1, 0x80000bd4 <.LBB1_42>
80000b74: 93 95 25 00  	slli	a1, a1, 2

80000b78 <.LBB1_185>:
80000b78: 17 26 00 00  	auipc	a2, 2
80000b7c: 13 06 46 10  	addi	a2, a2, 260
80000b80: b3 85 c5 00  	add	a1, a1, a2
80000b84: 83 a6 05 00  	lw	a3, 0(a1)
80000b88: 93 05 10 00  	addi	a1, zero, 1
80000b8c: 13 06 00 10  	addi	a2, zero, 256
80000b90: 67 80 06 00  	jr	a3

80000b94 <.LBB1_36>:
;         if (*format == 'h') {
80000b94: 03 45 1d 00  	lbu	a0, 1(s10)
80000b98: 93 05 80 06  	addi	a1, zero, 104
80000b9c: 63 12 b5 12  	bne	a0, a1, 0x80000cc0 <.LBB1_53+0x48>
80000ba0: 93 05 20 00  	addi	a1, zero, 2
80000ba4: 13 06 00 0c  	addi	a2, zero, 192
80000ba8: 6f 00 00 02  	j	0x80000bc8 <.LBB1_41>

80000bac <.LBB1_38>:
80000bac: 13 06 00 20  	addi	a2, zero, 512
80000bb0: 6f 00 80 01  	j	0x80000bc8 <.LBB1_41>

80000bb4 <.LBB1_39>:
;         if (*format == 'l') {
80000bb4: 03 45 1d 00  	lbu	a0, 1(s10)
80000bb8: 93 05 c0 06  	addi	a1, zero, 108
80000bbc: 63 18 b5 10  	bne	a0, a1, 0x80000ccc <.LBB1_53+0x54>
80000bc0: 93 05 20 00  	addi	a1, zero, 2
80000bc4: 13 06 00 30  	addi	a2, zero, 768

80000bc8 <.LBB1_41>:
80000bc8: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80000bcc: 03 45 0d 00  	lbu	a0, 0(s10)
80000bd0: 33 64 c4 00  	or	s0, s0, a2

80000bd4 <.LBB1_42>:
;     switch (*format) {
80000bd4: 93 05 b5 fd  	addi	a1, a0, -37
80000bd8: 13 06 30 05  	addi	a2, zero, 83
80000bdc: 63 64 b6 10  	bltu	a2, a1, 0x80000ce4 <.LBB1_59>
80000be0: 93 95 25 00  	slli	a1, a1, 2

80000be4 <.LBB1_186>:
80000be4: 17 26 00 00  	auipc	a2, 2
80000be8: 13 06 06 0c  	addi	a2, a2, 192
80000bec: b3 85 c5 00  	add	a1, a1, a2
80000bf0: 03 a6 05 00  	lw	a2, 0(a1)
80000bf4: 93 05 80 00  	addi	a1, zero, 8
80000bf8: 13 0c 00 01  	addi	s8, zero, 16
80000bfc: 67 00 06 00  	jr	a2

80000c00 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80000c00: 13 74 f4 fe  	andi	s0, s0, -17
80000c04: 13 0c a0 00  	addi	s8, zero, 10

80000c08 <.LBB1_45>:
;         if (*format == 'X') {
80000c08: 93 05 80 05  	addi	a1, zero, 88
80000c0c: 63 14 b5 00  	bne	a0, a1, 0x80000c14 <.LBB1_45+0xc>
80000c10: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80000c14: 93 05 40 06  	addi	a1, zero, 100
80000c18: 63 08 b5 0e  	beq	a0, a1, 0x80000d08 <.LBB1_62+0x8>
80000c1c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80000c20: 13 06 90 06  	addi	a2, zero, 105
80000c24: 63 02 c5 0e  	beq	a0, a2, 0x80000d08 <.LBB1_62+0x8>
80000c28: 6f 00 80 0d  	j	0x80000d00 <.LBB1_62>

80000c2c <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80000c2c: 93 05 60 04  	addi	a1, zero, 70
80000c30: 63 14 b5 00  	bne	a0, a1, 0x80000c38 <.LBB1_49+0xc>
80000c34: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000c38: 13 85 79 00  	addi	a0, s3, 7
80000c3c: 13 75 85 ff  	andi	a0, a0, -8
80000c40: 07 35 05 00  	fld	fa0, 0(a0)
80000c44: 93 09 85 00  	addi	s3, a0, 8
80000c48: 13 05 09 00  	mv	a0, s2
80000c4c: 93 05 0a 00  	mv	a1, s4
80000c50: 13 86 0c 00  	mv	a2, s9
80000c54: 93 86 0a 00  	mv	a3, s5
80000c58: 13 87 0b 00  	mv	a4, s7
80000c5c: 93 07 0b 00  	mv	a5, s6
80000c60: 13 08 04 00  	mv	a6, s0
80000c64: 97 10 00 00  	auipc	ra, 1
80000c68: e7 80 80 98  	jalr	-1656(ra)
80000c6c: 6f 00 00 7c  	j	0x8000142c <.LBB1_124+0x2fc>

80000c70 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80000c70: 83 25 81 01  	lw	a1, 24(sp)
80000c74: 33 64 b4 00  	or	s0, s0, a1

80000c78 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80000c78: 13 65 25 00  	ori	a0, a0, 2
80000c7c: 93 05 70 04  	addi	a1, zero, 71
80000c80: 63 14 b5 00  	bne	a0, a1, 0x80000c88 <.LBB1_53+0x10>
80000c84: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000c88: 13 85 79 00  	addi	a0, s3, 7
80000c8c: 13 75 85 ff  	andi	a0, a0, -8
80000c90: 07 35 05 00  	fld	fa0, 0(a0)
80000c94: 93 09 85 00  	addi	s3, a0, 8
80000c98: 13 05 09 00  	mv	a0, s2
80000c9c: 93 05 0a 00  	mv	a1, s4
80000ca0: 13 86 0c 00  	mv	a2, s9
80000ca4: 93 86 0a 00  	mv	a3, s5
80000ca8: 13 87 0b 00  	mv	a4, s7
80000cac: 93 07 0b 00  	mv	a5, s6
80000cb0: 13 08 04 00  	mv	a6, s0
80000cb4: 97 10 00 00  	auipc	ra, 1
80000cb8: e7 80 80 01  	jalr	24(ra)
80000cbc: 6f 00 00 77  	j	0x8000142c <.LBB1_124+0x2fc>
80000cc0: 13 64 04 08  	ori	s0, s0, 128
80000cc4: 13 0d 1d 00  	addi	s10, s10, 1
80000cc8: 6f f0 df f0  	j	0x80000bd4 <.LBB1_42>
80000ccc: 13 64 04 10  	ori	s0, s0, 256
80000cd0: 13 0d 1d 00  	addi	s10, s10, 1
80000cd4: 6f f0 1f f0  	j	0x80000bd4 <.LBB1_42>

80000cd8 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80000cd8: 13 8c 1c 00  	addi	s8, s9, 1
80000cdc: 13 05 50 02  	addi	a0, zero, 37
80000ce0: 6f 00 80 00  	j	0x80000ce8 <.LBB1_59+0x4>

80000ce4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80000ce4: 13 8c 1c 00  	addi	s8, s9, 1
80000ce8: 93 05 0a 00  	mv	a1, s4
80000cec: 13 86 0c 00  	mv	a2, s9
80000cf0: 93 86 0a 00  	mv	a3, s5
80000cf4: e7 00 09 00  	jalr	s2
80000cf8: 6f 00 80 73  	j	0x80001430 <.LBB1_124+0x300>

80000cfc <.LBB1_61>:
80000cfc: 93 05 20 00  	addi	a1, zero, 2

80000d00 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80000d00: 13 74 34 ff  	andi	s0, s0, -13
80000d04: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80000d08: 93 75 04 40  	andi	a1, s0, 1024
80000d0c: 63 84 05 00  	beqz	a1, 0x80000d14 <.LBB1_62+0x14>
80000d10: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80000d14: 93 05 90 06  	addi	a1, zero, 105
80000d18: 63 06 b5 00  	beq	a0, a1, 0x80000d24 <.LBB1_62+0x24>
80000d1c: 93 05 40 06  	addi	a1, zero, 100
80000d20: 63 1c b5 12  	bne	a0, a1, 0x80000e58 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80000d24: 13 75 04 20  	andi	a0, s0, 512
80000d28: 63 16 05 02  	bnez	a0, 0x80000d54 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80000d2c: 13 75 04 10  	andi	a0, s0, 256
80000d30: 63 1c 05 14  	bnez	a0, 0x80000e88 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000d34: 13 75 04 04  	andi	a0, s0, 64
80000d38: 63 18 05 4e  	bnez	a0, 0x80001228 <.LBB1_124+0xf8>
80000d3c: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000d40: 93 75 04 08  	andi	a1, s0, 128
80000d44: 63 84 05 4e  	beqz	a1, 0x8000122c <.LBB1_124+0xfc>
80000d48: 13 15 08 01  	slli	a0, a6, 16
80000d4c: 13 58 05 41  	srai	a6, a0, 16
80000d50: 6f 00 c0 4d  	j	0x8000122c <.LBB1_124+0xfc>
80000d54: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80000d58: 13 85 79 00  	addi	a0, s3, 7
80000d5c: 13 75 85 ff  	andi	a0, a0, -8
80000d60: 83 29 05 00  	lw	s3, 0(a0)
80000d64: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80000d68: 13 65 45 00  	ori	a0, a0, 4
80000d6c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80000d70: 23 24 a1 00  	sw	a0, 8(sp)
80000d74: 33 e5 a9 00  	or	a0, s3, a0
80000d78: 63 14 05 00  	bnez	a0, 0x80000d80 <.LBB1_62+0x80>
80000d7c: 13 74 f4 fe  	andi	s0, s0, -17
80000d80: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000d84: 93 75 04 40  	andi	a1, s0, 1024
80000d88: 93 d5 a5 00  	srli	a1, a1, 10
80000d8c: 33 75 b5 00  	and	a0, a0, a1
80000d90: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000d94: 63 14 05 0a  	bnez	a0, 0x80000e3c <.LBB1_62+0x13c>
80000d98: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000d9c: 63 da 04 00  	bgez	s1, 0x80000db0 <.LBB1_62+0xb0>
80000da0: 33 35 30 01  	snez	a0, s3
80000da4: b3 09 30 41  	neg	s3, s3
80000da8: 33 85 a4 00  	add	a0, s1, a0
80000dac: b3 04 a0 40  	neg	s1, a0
80000db0: 13 09 00 00  	mv	s2, zero
80000db4: 13 75 04 02  	andi	a0, s0, 32
80000db8: 13 45 15 06  	xori	a0, a0, 97
80000dbc: 13 05 65 0f  	addi	a0, a0, 246
80000dc0: 23 2a a1 00  	sw	a0, 20(sp)
80000dc4: 6f 00 40 02  	j	0x80000de8 <.LBB1_62+0xe8>
80000dc8: 13 06 10 00  	addi	a2, zero, 1
80000dcc: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000dd0: 93 36 f9 01  	sltiu	a3, s2, 31
80000dd4: 33 f6 c6 00  	and	a2, a3, a2
80000dd8: 13 89 07 00  	mv	s2, a5
80000ddc: 93 09 05 00  	mv	s3, a0
80000de0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000de4: 63 0c 06 04  	beqz	a2, 0x80000e3c <.LBB1_62+0x13c>
;       value /= base;
80000de8: 13 85 09 00  	mv	a0, s3
80000dec: 93 85 04 00  	mv	a1, s1
80000df0: 13 06 0c 00  	mv	a2, s8
80000df4: 93 06 00 00  	mv	a3, zero
80000df8: 97 f0 ff ff  	auipc	ra, 1048575
80000dfc: e7 80 80 20  	jalr	520(ra)
80000e00: 33 06 85 03  	mul	a2, a0, s8
80000e04: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000e08: 13 77 e6 0f  	andi	a4, a2, 254
80000e0c: 93 06 00 03  	addi	a3, zero, 48
80000e10: 93 07 a0 00  	addi	a5, zero, 10
80000e14: 63 64 f7 00  	bltu	a4, a5, 0x80000e1c <.LBB1_62+0x11c>
80000e18: 83 26 41 01  	lw	a3, 20(sp)
80000e1c: 33 86 c6 00  	add	a2, a3, a2
80000e20: 93 06 c1 01  	addi	a3, sp, 28
80000e24: b3 86 26 01  	add	a3, a3, s2
80000e28: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000e2c: e3 9e 04 f8  	bnez	s1, 0x80000dc8 <.LBB1_62+0xc8>
80000e30: 33 b6 89 01  	sltu	a2, s3, s8
80000e34: 13 46 16 00  	xori	a2, a2, 1
80000e38: 6f f0 5f f9  	j	0x80000dcc <.LBB1_62+0xcc>
80000e3c: 03 25 41 00  	lw	a0, 4(sp)
80000e40: 93 09 85 00  	addi	s3, a0, 8
80000e44: 03 25 81 00  	lw	a0, 8(sp)
80000e48: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000e4c: 13 07 c1 01  	addi	a4, sp, 28
80000e50: 03 29 c1 00  	lw	s2, 12(sp)
80000e54: 6f 00 80 47  	j	0x800012cc <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80000e58: 13 75 04 20  	andi	a0, s0, 512
80000e5c: 63 12 05 0c  	bnez	a0, 0x80000f20 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80000e60: 13 75 04 10  	andi	a0, s0, 256
80000e64: 63 1e 05 46  	bnez	a0, 0x800012e0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000e68: 13 75 04 04  	andi	a0, s0, 64
80000e6c: 63 10 05 50  	bnez	a0, 0x8000136c <.LBB1_124+0x23c>
80000e70: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000e74: 93 75 04 08  	andi	a1, s0, 128
80000e78: 63 8c 05 4e  	beqz	a1, 0x80001370 <.LBB1_124+0x240>
80000e7c: 83 25 01 01  	lw	a1, 16(sp)
80000e80: 33 75 b5 00  	and	a0, a0, a1
80000e84: 6f 00 c0 4e  	j	0x80001370 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80000e88: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80000e8c: 63 14 08 00  	bnez	a6, 0x80000e94 <.LBB1_62+0x194>
80000e90: 13 74 f4 fe  	andi	s0, s0, -17
80000e94: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80000e98: 13 76 04 40  	andi	a2, s0, 1024
80000e9c: 13 56 a6 00  	srli	a2, a2, 10
80000ea0: b3 f5 c5 00  	and	a1, a1, a2
80000ea4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000ea8: 63 9c 05 40  	bnez	a1, 0x800012c0 <.LBB1_124+0x190>
80000eac: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000eb0: 13 56 f8 41  	srai	a2, a6, 31
80000eb4: b3 06 c8 00  	add	a3, a6, a2
80000eb8: b3 c6 c6 00  	xor	a3, a3, a2
80000ebc: 13 76 04 02  	andi	a2, s0, 32
80000ec0: 13 46 16 06  	xori	a2, a2, 97
80000ec4: 93 08 66 0f  	addi	a7, a2, 246
80000ec8: 6f 00 40 03  	j	0x80000efc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000ecc: 33 05 f6 00  	add	a0, a2, a5
80000ed0: 93 87 15 00  	addi	a5, a1, 1
80000ed4: 13 06 c1 01  	addi	a2, sp, 28
80000ed8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000edc: b3 b6 86 01  	sltu	a3, a3, s8
80000ee0: 93 c6 16 00  	xori	a3, a3, 1
80000ee4: 93 b5 f5 01  	sltiu	a1, a1, 31
80000ee8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000eec: 23 00 a6 00  	sb	a0, 0(a2)
80000ef0: 93 85 07 00  	mv	a1, a5
80000ef4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000ef8: 63 84 04 3c  	beqz	s1, 0x800012c0 <.LBB1_124+0x190>
;       value /= base;
80000efc: 33 d7 86 03  	divu	a4, a3, s8
80000f00: 33 06 87 03  	mul	a2, a4, s8
80000f04: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000f08: 13 f5 e7 0f  	andi	a0, a5, 254
80000f0c: 13 06 00 03  	addi	a2, zero, 48
80000f10: 93 04 a0 00  	addi	s1, zero, 10
80000f14: e3 6c 95 fa  	bltu	a0, s1, 0x80000ecc <.LBB1_62+0x1cc>
80000f18: 13 86 08 00  	mv	a2, a7
80000f1c: 6f f0 1f fb  	j	0x80000ecc <.LBB1_62+0x1cc>
80000f20: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80000f24: 13 85 79 00  	addi	a0, s3, 7
80000f28: 93 75 85 ff  	andi	a1, a0, -8
80000f2c: 03 a9 05 00  	lw	s2, 0(a1)
80000f30: 13 e5 45 00  	ori	a0, a1, 4
80000f34: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80000f38: 33 65 39 01  	or	a0, s2, s3
80000f3c: 23 24 b1 00  	sw	a1, 8(sp)
80000f40: 63 14 05 00  	bnez	a0, 0x80000f48 <.LBB1_62+0x248>
80000f44: 13 74 f4 fe  	andi	s0, s0, -17
80000f48: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000f4c: 93 75 04 40  	andi	a1, s0, 1024
80000f50: 93 d5 a5 00  	srli	a1, a1, 10
80000f54: 33 75 b5 00  	and	a0, a0, a1
80000f58: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000f5c: 63 18 05 08  	bnez	a0, 0x80000fec <.LBB1_62+0x2ec>
80000f60: 93 04 00 00  	mv	s1, zero
80000f64: 13 75 04 02  	andi	a0, s0, 32
80000f68: 13 45 15 06  	xori	a0, a0, 97
80000f6c: 13 05 65 0f  	addi	a0, a0, 246
80000f70: 23 2a a1 00  	sw	a0, 20(sp)
80000f74: 6f 00 40 02  	j	0x80000f98 <.LBB1_62+0x298>
80000f78: 13 06 10 00  	addi	a2, zero, 1
80000f7c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f80: 93 b6 f4 01  	sltiu	a3, s1, 31
80000f84: 33 f6 c6 00  	and	a2, a3, a2
80000f88: 93 84 07 00  	mv	s1, a5
80000f8c: 13 09 05 00  	mv	s2, a0
80000f90: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f94: 63 0c 06 04  	beqz	a2, 0x80000fec <.LBB1_62+0x2ec>
;       value /= base;
80000f98: 13 05 09 00  	mv	a0, s2
80000f9c: 93 85 09 00  	mv	a1, s3
80000fa0: 13 06 0c 00  	mv	a2, s8
80000fa4: 93 06 00 00  	mv	a3, zero
80000fa8: 97 f0 ff ff  	auipc	ra, 1048575
80000fac: e7 80 80 05  	jalr	88(ra)
80000fb0: 33 06 85 03  	mul	a2, a0, s8
80000fb4: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000fb8: 13 77 e6 0f  	andi	a4, a2, 254
80000fbc: 93 06 00 03  	addi	a3, zero, 48
80000fc0: 93 07 a0 00  	addi	a5, zero, 10
80000fc4: 63 64 f7 00  	bltu	a4, a5, 0x80000fcc <.LBB1_62+0x2cc>
80000fc8: 83 26 41 01  	lw	a3, 20(sp)
80000fcc: 33 86 c6 00  	add	a2, a3, a2
80000fd0: 93 06 c1 01  	addi	a3, sp, 28
80000fd4: b3 86 96 00  	add	a3, a3, s1
80000fd8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000fdc: e3 9e 09 f8  	bnez	s3, 0x80000f78 <.LBB1_62+0x278>
80000fe0: 33 36 89 01  	sltu	a2, s2, s8
80000fe4: 13 46 16 00  	xori	a2, a2, 1
80000fe8: 6f f0 5f f9  	j	0x80000f7c <.LBB1_62+0x27c>
80000fec: 03 25 81 00  	lw	a0, 8(sp)
80000ff0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000ff4: 13 07 c1 01  	addi	a4, sp, 28
80000ff8: 03 29 c1 00  	lw	s2, 12(sp)
80000ffc: 6f 00 40 40  	j	0x80001400 <.LBB1_124+0x2d0>

80001000 <.LBB1_108>:
80001000: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001004: 13 79 24 00  	andi	s2, s0, 2
80001008: 93 04 10 00  	addi	s1, zero, 1
8000100c: 63 1e 09 02  	bnez	s2, 0x80001048 <.LBB1_108+0x48>
80001010: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001014: 63 6a 9b 02  	bltu	s6, s1, 0x80001048 <.LBB1_108+0x48>
80001018: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
8000101c: 13 0c fb ff  	addi	s8, s6, -1
80001020: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001024: 33 86 8c 00  	add	a2, s9, s0
80001028: 13 05 00 02  	addi	a0, zero, 32
8000102c: 93 05 0a 00  	mv	a1, s4
80001030: 93 86 0a 00  	mv	a3, s5
80001034: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001038: 13 04 14 00  	addi	s0, s0, 1
8000103c: e3 14 8c fe  	bne	s8, s0, 0x80001024 <.LBB1_108+0x24>
80001040: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001044: b3 8c 8c 00  	add	s9, s9, s0
80001048: 03 c5 09 00  	lbu	a0, 0(s3)
8000104c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001050: 93 89 49 00  	addi	s3, s3, 4
80001054: 13 8c 1c 00  	addi	s8, s9, 1
80001058: 93 05 0a 00  	mv	a1, s4
8000105c: 13 86 0c 00  	mv	a2, s9
80001060: 93 86 0a 00  	mv	a3, s5
80001064: 13 89 0b 00  	mv	s2, s7
80001068: e7 80 0b 00  	jalr	s7
8000106c: 33 b5 64 01  	sltu	a0, s1, s6
80001070: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001074: 33 65 a4 00  	or	a0, s0, a0
80001078: 63 1c 05 3a  	bnez	a0, 0x80001430 <.LBB1_124+0x300>
;           while (l++ < width) {
8000107c: 33 04 9b 40  	sub	s0, s6, s1
80001080: 93 0b e0 02  	addi	s7, zero, 46
80001084: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001088: 13 0c 1c 00  	addi	s8, s8, 1
8000108c: 13 05 00 02  	addi	a0, zero, 32
80001090: 93 05 0a 00  	mv	a1, s4
80001094: 93 86 0a 00  	mv	a3, s5
80001098: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000109c: 13 04 f4 ff  	addi	s0, s0, -1
800010a0: e3 12 04 fe  	bnez	s0, 0x80001084 <.LBB1_108+0x84>
800010a4: 13 0b 50 02  	addi	s6, zero, 37
800010a8: 13 04 1d 00  	addi	s0, s10, 1
800010ac: 6f f0 df 91  	j	0x800009c8 <.LBB1_183+0x30>

800010b0 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800010b0: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800010b4: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800010b8: 63 14 05 00  	bnez	a0, 0x800010c0 <.LBB1_117+0x10>
800010bc: 93 fe fe fe  	andi	t4, t4, -17
800010c0: 93 04 a0 00  	addi	s1, zero, 10
800010c4: 13 04 f0 00  	addi	s0, zero, 15
800010c8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800010cc: 13 f6 0e 40  	andi	a2, t4, 1024
800010d0: 13 56 a6 00  	srli	a2, a2, 10
800010d4: b3 f5 c5 00  	and	a1, a1, a2
800010d8: 93 07 00 00  	mv	a5, zero
800010dc: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800010e0: 63 98 05 10  	bnez	a1, 0x800011f0 <.LBB1_124+0xc0>
800010e4: 93 05 00 00  	mv	a1, zero
800010e8: 6f 00 40 03  	j	0x8000111c <.LBB1_117+0x6c>
800010ec: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800010f0: 33 06 d6 00  	add	a2, a2, a3
800010f4: 93 87 15 00  	addi	a5, a1, 1
800010f8: 93 06 c1 01  	addi	a3, sp, 28
800010fc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001100: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001104: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001108: 93 b5 f5 01  	sltiu	a1, a1, 31
8000110c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001110: 23 80 c6 00  	sb	a2, 0(a3)
80001114: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001118: 63 0c 07 0c  	beqz	a4, 0x800011f0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000111c: 93 76 e5 00  	andi	a3, a0, 14
80001120: 13 06 00 03  	addi	a2, zero, 48
80001124: e3 e4 96 fc  	bltu	a3, s1, 0x800010ec <.LBB1_117+0x3c>
80001128: 13 06 70 03  	addi	a2, zero, 55
8000112c: 6f f0 1f fc  	j	0x800010ec <.LBB1_117+0x3c>

80001130 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001130: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001134: 03 c5 07 00  	lbu	a0, 0(a5)
80001138: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
8000113c: 63 0c 05 02  	beqz	a0, 0x80001174 <.LBB1_124+0x44>
80001140: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001144: 63 84 0b 00  	beqz	s7, 0x8000114c <.LBB1_124+0x1c>
80001148: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000114c: 93 85 f5 ff  	addi	a1, a1, -1
80001150: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001154: 03 c7 16 00  	lbu	a4, 1(a3)
80001158: 13 86 16 00  	addi	a2, a3, 1
8000115c: b3 36 e0 00  	snez	a3, a4
80001160: 33 37 b0 00  	snez	a4, a1
80001164: 33 77 d7 00  	and	a4, a4, a3
80001168: 93 85 f5 ff  	addi	a1, a1, -1
8000116c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001170: e3 12 07 fe  	bnez	a4, 0x80001154 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001174: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001178: 93 75 04 40  	andi	a1, s0, 1024
8000117c: 93 b4 15 00  	seqz	s1, a1
80001180: 23 2a c1 00  	sw	a2, 20(sp)
80001184: b3 35 76 01  	sltu	a1, a2, s7
80001188: b3 e5 b4 00  	or	a1, s1, a1
8000118c: 63 94 05 00  	bnez	a1, 0x80001194 <.LBB1_124+0x64>
80001190: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001194: 93 75 24 00  	andi	a1, s0, 2
80001198: 23 26 b1 00  	sw	a1, 12(sp)
8000119c: 63 96 05 2a  	bnez	a1, 0x80001448 <.LBB1_124+0x318>
800011a0: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800011a4: 63 fe 65 29  	bgeu	a1, s6, 0x80001440 <.LBB1_124+0x310>
800011a8: 23 24 f1 00  	sw	a5, 8(sp)
800011ac: 13 04 00 00  	mv	s0, zero
800011b0: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800011b4: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800011b8: 33 86 8c 00  	add	a2, s9, s0
800011bc: 13 05 00 02  	addi	a0, zero, 32
800011c0: 93 05 0a 00  	mv	a1, s4
800011c4: 93 86 0a 00  	mv	a3, s5
800011c8: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800011cc: 13 04 14 00  	addi	s0, s0, 1
800011d0: e3 14 89 fe  	bne	s2, s0, 0x800011b8 <.LBB1_124+0x88>
800011d4: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800011d8: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800011dc: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800011e0: 23 2a b1 00  	sw	a1, 20(sp)
800011e4: b3 8c 8c 00  	add	s9, s9, s0
800011e8: 13 09 0c 00  	mv	s2, s8
800011ec: 6f 00 c0 25  	j	0x80001448 <.LBB1_124+0x318>
800011f0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800011f4: 13 07 c1 01  	addi	a4, sp, 28
800011f8: 93 08 00 01  	addi	a7, zero, 16
800011fc: 13 0e 80 00  	addi	t3, zero, 8
80001200: 13 05 09 00  	mv	a0, s2
80001204: 93 05 0a 00  	mv	a1, s4
80001208: 13 86 0c 00  	mv	a2, s9
8000120c: 93 86 0a 00  	mv	a3, s5
80001210: 13 08 00 00  	mv	a6, zero
80001214: 93 83 0b 00  	mv	t2, s7
80001218: 97 10 00 00  	auipc	ra, 1
8000121c: e7 80 00 fa  	jalr	-96(ra)
80001220: 13 0c 05 00  	mv	s8, a0
80001224: 6f 00 00 21  	j	0x80001434 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001228: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000122c: 63 14 08 00  	bnez	a6, 0x80001234 <.LBB1_124+0x104>
80001230: 13 74 f4 fe  	andi	s0, s0, -17
80001234: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001238: 13 76 04 40  	andi	a2, s0, 1024
8000123c: 13 56 a6 00  	srli	a2, a2, 10
80001240: b3 f5 c5 00  	and	a1, a1, a2
80001244: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001248: 63 9c 05 06  	bnez	a1, 0x800012c0 <.LBB1_124+0x190>
8000124c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001250: 13 56 f8 41  	srai	a2, a6, 31
80001254: b3 06 c8 00  	add	a3, a6, a2
80001258: b3 c6 c6 00  	xor	a3, a3, a2
8000125c: 13 76 04 02  	andi	a2, s0, 32
80001260: 13 46 16 06  	xori	a2, a2, 97
80001264: 93 08 66 0f  	addi	a7, a2, 246
80001268: 6f 00 40 03  	j	0x8000129c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000126c: 33 05 f6 00  	add	a0, a2, a5
80001270: 93 87 15 00  	addi	a5, a1, 1
80001274: 13 06 c1 01  	addi	a2, sp, 28
80001278: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000127c: b3 b6 86 01  	sltu	a3, a3, s8
80001280: 93 c6 16 00  	xori	a3, a3, 1
80001284: 93 b5 f5 01  	sltiu	a1, a1, 31
80001288: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000128c: 23 00 a6 00  	sb	a0, 0(a2)
80001290: 93 85 07 00  	mv	a1, a5
80001294: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001298: 63 84 04 02  	beqz	s1, 0x800012c0 <.LBB1_124+0x190>
;       value /= base;
8000129c: 33 d7 86 03  	divu	a4, a3, s8
800012a0: 33 06 87 03  	mul	a2, a4, s8
800012a4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800012a8: 13 f5 e7 0f  	andi	a0, a5, 254
800012ac: 13 06 00 03  	addi	a2, zero, 48
800012b0: 93 04 a0 00  	addi	s1, zero, 10
800012b4: e3 6c 95 fa  	bltu	a0, s1, 0x8000126c <.LBB1_124+0x13c>
800012b8: 13 86 08 00  	mv	a2, a7
800012bc: 6f f0 1f fb  	j	0x8000126c <.LBB1_124+0x13c>
800012c0: 93 89 49 00  	addi	s3, s3, 4
800012c4: 13 58 f8 01  	srli	a6, a6, 31
800012c8: 13 07 c1 01  	addi	a4, sp, 28
800012cc: 13 05 09 00  	mv	a0, s2
800012d0: 93 05 0a 00  	mv	a1, s4
800012d4: 13 86 0c 00  	mv	a2, s9
800012d8: 93 86 0a 00  	mv	a3, s5
800012dc: 6f 00 80 13  	j	0x80001414 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800012e0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800012e4: 63 14 05 00  	bnez	a0, 0x800012ec <.LBB1_124+0x1bc>
800012e8: 13 74 f4 fe  	andi	s0, s0, -17
800012ec: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800012f0: 13 76 04 40  	andi	a2, s0, 1024
800012f4: 13 56 a6 00  	srli	a2, a2, 10
800012f8: b3 f5 c5 00  	and	a1, a1, a2
800012fc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001300: 63 9c 05 0e  	bnez	a1, 0x800013f8 <.LBB1_124+0x2c8>
80001304: 13 06 00 00  	mv	a2, zero
80001308: 93 75 04 02  	andi	a1, s0, 32
8000130c: 93 c5 15 06  	xori	a1, a1, 97
80001310: 13 88 65 0f  	addi	a6, a1, 246
80001314: 6f 00 40 03  	j	0x80001348 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001318: 33 87 e7 00  	add	a4, a5, a4
8000131c: 93 07 16 00  	addi	a5, a2, 1
80001320: 93 05 c1 01  	addi	a1, sp, 28
80001324: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001328: 33 35 85 01  	sltu	a0, a0, s8
8000132c: 13 45 15 00  	xori	a0, a0, 1
80001330: 13 36 f6 01  	sltiu	a2, a2, 31
80001334: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001338: 23 80 e4 00  	sb	a4, 0(s1)
8000133c: 13 86 07 00  	mv	a2, a5
80001340: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001344: 63 8a 05 0a  	beqz	a1, 0x800013f8 <.LBB1_124+0x2c8>
;       value /= base;
80001348: b3 56 85 03  	divu	a3, a0, s8
8000134c: 33 87 86 03  	mul	a4, a3, s8
80001350: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001354: 93 74 e7 0f  	andi	s1, a4, 254
80001358: 93 07 00 03  	addi	a5, zero, 48
8000135c: 93 05 a0 00  	addi	a1, zero, 10
80001360: e3 ec b4 fa  	bltu	s1, a1, 0x80001318 <.LBB1_124+0x1e8>
80001364: 93 07 08 00  	mv	a5, a6
80001368: 6f f0 1f fb  	j	0x80001318 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000136c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001370: 63 14 05 00  	bnez	a0, 0x80001378 <.LBB1_124+0x248>
80001374: 13 74 f4 fe  	andi	s0, s0, -17
80001378: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000137c: 13 76 04 40  	andi	a2, s0, 1024
80001380: 13 56 a6 00  	srli	a2, a2, 10
80001384: b3 f5 c5 00  	and	a1, a1, a2
80001388: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000138c: 63 96 05 06  	bnez	a1, 0x800013f8 <.LBB1_124+0x2c8>
80001390: 13 06 00 00  	mv	a2, zero
80001394: 93 75 04 02  	andi	a1, s0, 32
80001398: 93 c5 15 06  	xori	a1, a1, 97
8000139c: 13 88 65 0f  	addi	a6, a1, 246
800013a0: 6f 00 40 03  	j	0x800013d4 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013a4: 33 87 e7 00  	add	a4, a5, a4
800013a8: 93 07 16 00  	addi	a5, a2, 1
800013ac: 93 05 c1 01  	addi	a1, sp, 28
800013b0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013b4: 33 35 85 01  	sltu	a0, a0, s8
800013b8: 13 45 15 00  	xori	a0, a0, 1
800013bc: 13 36 f6 01  	sltiu	a2, a2, 31
800013c0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013c4: 23 80 e4 00  	sb	a4, 0(s1)
800013c8: 13 86 07 00  	mv	a2, a5
800013cc: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013d0: 63 84 05 02  	beqz	a1, 0x800013f8 <.LBB1_124+0x2c8>
;       value /= base;
800013d4: b3 56 85 03  	divu	a3, a0, s8
800013d8: 33 87 86 03  	mul	a4, a3, s8
800013dc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013e0: 93 74 e7 0f  	andi	s1, a4, 254
800013e4: 93 07 00 03  	addi	a5, zero, 48
800013e8: 93 05 a0 00  	addi	a1, zero, 10
800013ec: e3 ec b4 fa  	bltu	s1, a1, 0x800013a4 <.LBB1_124+0x274>
800013f0: 93 07 08 00  	mv	a5, a6
800013f4: 6f f0 1f fb  	j	0x800013a4 <.LBB1_124+0x274>
800013f8: 93 89 49 00  	addi	s3, s3, 4
800013fc: 13 07 c1 01  	addi	a4, sp, 28
80001400: 13 05 09 00  	mv	a0, s2
80001404: 93 05 0a 00  	mv	a1, s4
80001408: 13 86 0c 00  	mv	a2, s9
8000140c: 93 86 0a 00  	mv	a3, s5
80001410: 13 08 00 00  	mv	a6, zero
80001414: 93 08 0c 00  	mv	a7, s8
80001418: 93 83 0b 00  	mv	t2, s7
8000141c: 13 0e 0b 00  	mv	t3, s6
80001420: 93 0e 04 00  	mv	t4, s0
80001424: 97 10 00 00  	auipc	ra, 1
80001428: e7 80 40 d9  	jalr	-620(ra)
8000142c: 13 0c 05 00  	mv	s8, a0
80001430: 13 0b 50 02  	addi	s6, zero, 37
80001434: 93 0b e0 02  	addi	s7, zero, 46
80001438: 13 04 1d 00  	addi	s0, s10, 1
8000143c: 6f f0 cf d8  	j	0x800009c8 <.LBB1_183+0x30>
80001440: 93 85 15 00  	addi	a1, a1, 1
80001444: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001448: 63 00 05 04  	beqz	a0, 0x80001488 <.LBB1_124+0x358>
8000144c: 13 84 17 00  	addi	s0, a5, 1
80001450: 6f 00 00 03  	j	0x80001480 <.LBB1_124+0x350>
80001454: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001458: 13 8c 1c 00  	addi	s8, s9, 1
8000145c: 13 75 f5 0f  	andi	a0, a0, 255
80001460: 93 05 0a 00  	mv	a1, s4
80001464: 13 86 0c 00  	mv	a2, s9
80001468: 93 86 0a 00  	mv	a3, s5
8000146c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001470: 03 45 04 00  	lbu	a0, 0(s0)
80001474: 13 04 14 00  	addi	s0, s0, 1
80001478: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000147c: 63 08 05 00  	beqz	a0, 0x8000148c <.LBB1_124+0x35c>
80001480: e3 9c 04 fc  	bnez	s1, 0x80001458 <.LBB1_124+0x328>
80001484: e3 98 0b fc  	bnez	s7, 0x80001454 <.LBB1_124+0x324>
80001488: 13 8c 0c 00  	mv	s8, s9
8000148c: 03 25 c1 00  	lw	a0, 12(sp)
80001490: 13 35 15 00  	seqz	a0, a0
80001494: 03 26 41 01  	lw	a2, 20(sp)
80001498: b3 35 66 01  	sltu	a1, a2, s6
8000149c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800014a0: 33 65 b5 00  	or	a0, a0, a1
800014a4: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800014a8: e3 14 05 f8  	bnez	a0, 0x80001430 <.LBB1_124+0x300>
;           while (l++ < width) {
800014ac: 33 04 cb 40  	sub	s0, s6, a2
800014b0: 93 0b e0 02  	addi	s7, zero, 46
800014b4: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800014b8: 13 0c 1c 00  	addi	s8, s8, 1
800014bc: 13 05 00 02  	addi	a0, zero, 32
800014c0: 93 05 0a 00  	mv	a1, s4
800014c4: 93 86 0a 00  	mv	a3, s5
800014c8: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800014cc: 13 04 f4 ff  	addi	s0, s0, -1
800014d0: e3 12 04 fe  	bnez	s0, 0x800014b4 <.LBB1_124+0x384>
800014d4: 13 0b 50 02  	addi	s6, zero, 37
800014d8: 13 04 1d 00  	addi	s0, s10, 1
800014dc: 6f f0 cf ce  	j	0x800009c8 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800014e0: 13 86 0c 00  	mv	a2, s9
800014e4: 63 e4 5c 01  	bltu	s9, s5, 0x800014ec <.LBB1_124+0x3bc>
800014e8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800014ec: 13 05 00 00  	mv	a0, zero
800014f0: 93 05 0a 00  	mv	a1, s4
800014f4: 93 86 0a 00  	mv	a3, s5
800014f8: e7 00 09 00  	jalr	s2
;   return (int)idx;
800014fc: 13 85 0c 00  	mv	a0, s9
80001500: 83 2d c1 03  	lw	s11, 60(sp)
80001504: 03 2d 01 04  	lw	s10, 64(sp)
80001508: 83 2c 41 04  	lw	s9, 68(sp)
8000150c: 03 2c 81 04  	lw	s8, 72(sp)
80001510: 83 2b c1 04  	lw	s7, 76(sp)
80001514: 03 2b 01 05  	lw	s6, 80(sp)
80001518: 83 2a 41 05  	lw	s5, 84(sp)
8000151c: 03 2a 81 05  	lw	s4, 88(sp)
80001520: 83 29 c1 05  	lw	s3, 92(sp)
80001524: 03 29 01 06  	lw	s2, 96(sp)
80001528: 83 24 41 06  	lw	s1, 100(sp)
8000152c: 03 24 81 06  	lw	s0, 104(sp)
80001530: 83 20 c1 06  	lw	ra, 108(sp)
80001534: 13 01 01 07  	addi	sp, sp, 112
80001538: 67 80 00 00  	ret

8000153c <_out_char.llvm.17592004524093383706>:
;   if (character) {
8000153c: 63 04 05 0a  	beqz	a0, 0x800015e4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001540: f3 25 40 f1  	csrr	a1, mhartid
80001544: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001548: 33 86 c5 02  	mul	a2, a1, a2

8000154c <.LBB2_6>:
8000154c: 97 26 00 00  	auipc	a3, 2
80001550: 93 86 86 a9  	addi	a3, a3, -1384
80001554: b3 05 d6 00  	add	a1, a2, a3
80001558: 03 a7 05 00  	lw	a4, 0(a1)
8000155c: 93 07 17 00  	addi	a5, a4, 1
80001560: 23 a0 f5 00  	sw	a5, 0(a1)
80001564: 33 87 e5 00  	add	a4, a1, a4
80001568: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
8000156c: 03 a7 05 00  	lw	a4, 0(a1)
80001570: 13 07 47 c0  	addi	a4, a4, -1020
80001574: 33 37 e0 00  	snez	a4, a4
80001578: 13 05 65 ff  	addi	a0, a0, -10
8000157c: 33 35 a0 00  	snez	a0, a0
80001580: 33 75 e5 00  	and	a0, a0, a4
80001584: 63 10 05 06  	bnez	a0, 0x800015e4 <.LBB2_8+0x18>
80001588: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000158c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001590: 23 26 05 00  	sw	zero, 12(a0)
80001594: 93 06 00 04  	addi	a3, zero, 64
80001598: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000159c: 23 2a 05 00  	sw	zero, 20(a0)
800015a0: 93 06 10 00  	addi	a3, zero, 1
800015a4: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
800015a8: 23 2e 05 00  	sw	zero, 28(a0)
800015ac: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800015b0: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800015b4: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
800015b8: 23 22 05 02  	sw	zero, 36(a0)
800015bc: 23 20 c5 02  	sw	a2, 32(a0)

800015c0 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
800015c0: 17 25 00 00  	auipc	a0, 2
800015c4: 13 05 05 8c  	addi	a0, a0, -1856
800015c8: 23 20 d5 00  	sw	a3, 0(a0)

800015cc <.LBB2_8>:
800015cc: 17 25 00 00  	auipc	a0, 2
800015d0: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
800015d4: 03 26 05 00  	lw	a2, 0(a0)
800015d8: e3 0e 06 fe  	beqz	a2, 0x800015d4 <.LBB2_8+0x8>
;         fromhost = 0;
800015dc: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800015e0: 23 a0 05 00  	sw	zero, 0(a1)
; }
800015e4: 67 80 00 00  	ret

800015e8 <_out_null>:
; }
800015e8: 67 80 00 00  	ret

800015ec <_ftoa>:
; {
800015ec: 13 01 01 f9  	addi	sp, sp, -112
800015f0: 23 26 11 06  	sw	ra, 108(sp)
800015f4: 23 24 81 06  	sw	s0, 104(sp)
800015f8: 23 22 91 06  	sw	s1, 100(sp)
800015fc: 23 20 21 07  	sw	s2, 96(sp)
80001600: 23 2e 31 05  	sw	s3, 92(sp)
80001604: 23 2c 41 05  	sw	s4, 88(sp)
80001608: 23 2a 51 05  	sw	s5, 84(sp)
8000160c: 23 28 61 05  	sw	s6, 80(sp)
80001610: 23 26 71 05  	sw	s7, 76(sp)
80001614: 23 24 81 05  	sw	s8, 72(sp)
80001618: 23 22 91 05  	sw	s9, 68(sp)
8000161c: 23 20 a1 05  	sw	s10, 64(sp)
80001620: 27 3c 81 02  	fsd	fs0, 56(sp)
80001624: 27 38 91 02  	fsd	fs1, 48(sp)
80001628: 27 34 21 03  	fsd	fs2, 40(sp)

8000162c <.LBB4_83>:
8000162c: 97 24 00 00  	auipc	s1, 2
80001630: 93 84 c4 90  	addi	s1, s1, -1780
80001634: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001638: d3 04 a0 a2  	fle.d	s1, ft0, fa0
8000163c: 93 0a 08 00  	mv	s5, a6
80001640: 13 89 07 00  	mv	s2, a5
80001644: 93 89 06 00  	mv	s3, a3
80001648: 13 0a 06 00  	mv	s4, a2
8000164c: 13 8b 05 00  	mv	s6, a1
80001650: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001654: 63 98 04 0e  	bnez	s1, 0x80001744 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001658: 13 f5 2a 00  	andi	a0, s5, 2
8000165c: 93 f5 3a 00  	andi	a1, s5, 3
80001660: b3 35 b0 00  	snez	a1, a1
80001664: 13 36 59 00  	sltiu	a2, s2, 5
80001668: b3 65 b6 00  	or	a1, a2, a1
8000166c: 93 5c 15 00  	srli	s9, a0, 1
80001670: 13 04 0a 00  	mv	s0, s4
80001674: 63 96 05 02  	bnez	a1, 0x800016a0 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001678: 93 04 c9 ff  	addi	s1, s2, -4
8000167c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001680: 13 04 16 00  	addi	s0, a2, 1
80001684: 13 05 00 02  	addi	a0, zero, 32
80001688: 93 05 0b 00  	mv	a1, s6
8000168c: 93 86 09 00  	mv	a3, s3
80001690: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001694: 93 84 f4 ff  	addi	s1, s1, -1
80001698: 13 06 04 00  	mv	a2, s0
8000169c: e3 92 04 fe  	bnez	s1, 0x80001680 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800016a0: 93 04 14 00  	addi	s1, s0, 1
800016a4: 13 05 d0 02  	addi	a0, zero, 45
800016a8: 93 05 0b 00  	mv	a1, s6
800016ac: 13 06 04 00  	mv	a2, s0
800016b0: 93 86 09 00  	mv	a3, s3
800016b4: e7 80 0b 00  	jalr	s7
800016b8: 93 0a 24 00  	addi	s5, s0, 2
800016bc: 13 05 90 06  	addi	a0, zero, 105
800016c0: 93 05 0b 00  	mv	a1, s6
800016c4: 13 86 04 00  	mv	a2, s1
800016c8: 93 86 09 00  	mv	a3, s3
800016cc: e7 80 0b 00  	jalr	s7
800016d0: 13 0c 34 00  	addi	s8, s0, 3
800016d4: 13 05 e0 06  	addi	a0, zero, 110
800016d8: 93 05 0b 00  	mv	a1, s6
800016dc: 13 86 0a 00  	mv	a2, s5
800016e0: 93 86 09 00  	mv	a3, s3
800016e4: e7 80 0b 00  	jalr	s7
800016e8: 93 04 44 00  	addi	s1, s0, 4
800016ec: 13 05 60 06  	addi	a0, zero, 102
800016f0: 93 05 0b 00  	mv	a1, s6
800016f4: 13 06 0c 00  	mv	a2, s8
800016f8: 93 86 09 00  	mv	a3, s3
800016fc: e7 80 0b 00  	jalr	s7
80001700: 33 85 44 41  	sub	a0, s1, s4
80001704: 33 35 25 01  	sltu	a0, a0, s2
80001708: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000170c: 93 c5 1c 00  	xori	a1, s9, 1
80001710: 33 e5 a5 00  	or	a0, a1, a0
80001714: 63 16 05 56  	bnez	a0, 0x80001c80 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001718: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000171c: 13 84 14 00  	addi	s0, s1, 1
80001720: 13 05 00 02  	addi	a0, zero, 32
80001724: 93 05 0b 00  	mv	a1, s6
80001728: 13 86 04 00  	mv	a2, s1
8000172c: 93 86 09 00  	mv	a3, s3
80001730: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001734: 33 05 8a 00  	add	a0, s4, s0
80001738: 93 04 04 00  	mv	s1, s0
8000173c: e3 60 25 ff  	bltu	a0, s2, 0x8000171c <.LBB4_83+0xf0>
80001740: 6f 00 40 54  	j	0x80001c84 <.LBB4_90+0x378>
80001744: 53 04 a5 22  	fmv.d	fs0, fa0

80001748 <.LBB4_84>:
80001748: 17 15 00 00  	auipc	a0, 1
8000174c: 13 05 85 7f  	addi	a0, a0, 2040
80001750: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001754: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001758: 63 1e 05 00  	bnez	a0, 0x80001774 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000175c: 93 f5 4a 00  	andi	a1, s5, 4
80001760: 13 b5 15 00  	seqz	a0, a1
80001764: 63 82 05 06  	beqz	a1, 0x800017c8 <.LBB4_88>

80001768 <.LBB4_85>:
80001768: 17 1c 00 00  	auipc	s8, 1
8000176c: 13 0c 8c 4b  	addi	s8, s8, 1208
80001770: 6f 00 00 06  	j	0x800017d0 <.LBB4_88+0x8>

80001774 <.LBB4_86>:
80001774: 17 15 00 00  	auipc	a0, 1
80001778: 13 05 45 7d  	addi	a0, a0, 2004
8000177c: 07 30 05 00  	fld	ft0, 0(a0)

80001780 <.LBB4_87>:
80001780: 17 15 00 00  	auipc	a0, 1
80001784: 13 05 05 7d  	addi	a0, a0, 2000
80001788: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000178c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001790: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001794: 33 75 b5 00  	and	a0, a0, a1
80001798: 63 1e 05 0e  	bnez	a0, 0x80001894 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000179c: 13 85 0b 00  	mv	a0, s7
800017a0: 93 05 0b 00  	mv	a1, s6
800017a4: 13 06 0a 00  	mv	a2, s4
800017a8: 93 86 09 00  	mv	a3, s3
800017ac: 53 05 84 22  	fmv.d	fa0, fs0
800017b0: 93 07 09 00  	mv	a5, s2
800017b4: 13 88 0a 00  	mv	a6, s5
800017b8: 97 00 00 00  	auipc	ra, 0
800017bc: e7 80 40 51  	jalr	1300(ra)
800017c0: 13 04 05 00  	mv	s0, a0
800017c4: 6f 00 00 4c  	j	0x80001c84 <.LBB4_90+0x378>

800017c8 <.LBB4_88>:
800017c8: 17 1c 00 00  	auipc	s8, 1
800017cc: 13 0c 9c 46  	addi	s8, s8, 1129
800017d0: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800017d4: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800017d8: 13 f5 3a 00  	andi	a0, s5, 3
800017dc: 33 35 a0 00  	snez	a0, a0
800017e0: b3 b5 2c 01  	sltu	a1, s9, s2
800017e4: 93 c5 15 00  	xori	a1, a1, 1
800017e8: 33 65 b5 00  	or	a0, a0, a1
800017ec: 93 fa 2a 00  	andi	s5, s5, 2
800017f0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800017f4: 63 16 05 02  	bnez	a0, 0x80001820 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800017f8: 33 04 99 41  	sub	s0, s2, s9
800017fc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001800: 93 04 16 00  	addi	s1, a2, 1
80001804: 13 05 00 02  	addi	a0, zero, 32
80001808: 93 05 0b 00  	mv	a1, s6
8000180c: 93 86 09 00  	mv	a3, s3
80001810: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001814: 13 04 f4 ff  	addi	s0, s0, -1
80001818: 13 86 04 00  	mv	a2, s1
8000181c: e3 12 04 fe  	bnez	s0, 0x80001800 <.LBB4_88+0x38>
80001820: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001824: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001828: 33 05 9c 01  	add	a0, s8, s9
8000182c: 03 45 05 00  	lbu	a0, 0(a0)
80001830: 13 86 04 00  	mv	a2, s1
80001834: 13 84 fc ff  	addi	s0, s9, -1
80001838: 93 84 14 00  	addi	s1, s1, 1
8000183c: 93 05 0b 00  	mv	a1, s6
80001840: 93 86 09 00  	mv	a3, s3
80001844: e7 80 0b 00  	jalr	s7
80001848: 93 0c 04 00  	mv	s9, s0
;   while (len) {
8000184c: e3 1e 04 fc  	bnez	s0, 0x80001828 <.LBB4_88+0x60>
80001850: 33 85 44 41  	sub	a0, s1, s4
80001854: 33 35 25 01  	sltu	a0, a0, s2
80001858: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000185c: 93 c5 1a 00  	xori	a1, s5, 1
80001860: 33 e5 a5 00  	or	a0, a1, a0
80001864: 63 1e 05 40  	bnez	a0, 0x80001c80 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001868: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000186c: 13 84 14 00  	addi	s0, s1, 1
80001870: 13 05 00 02  	addi	a0, zero, 32
80001874: 93 05 0b 00  	mv	a1, s6
80001878: 13 86 04 00  	mv	a2, s1
8000187c: 93 86 09 00  	mv	a3, s3
80001880: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001884: 33 05 8a 00  	add	a0, s4, s0
80001888: 93 04 04 00  	mv	s1, s0
8000188c: e3 60 25 ff  	bltu	a0, s2, 0x8000186c <.LBB4_88+0xa4>
80001890: 6f 00 40 3f  	j	0x80001c84 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001894: 13 f5 0a 40  	andi	a0, s5, 1024
80001898: 13 0c 60 00  	addi	s8, zero, 6
8000189c: 63 04 05 00  	beqz	a0, 0x800018a4 <.LBB4_88+0xdc>
800018a0: 13 0c 07 00  	mv	s8, a4
800018a4: 13 05 a0 00  	addi	a0, zero, 10
800018a8: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800018ac: 63 6c ac 02  	bltu	s8, a0, 0x800018e4 <.LBB4_88+0x11c>
800018b0: 93 04 6c ff  	addi	s1, s8, -10
800018b4: 13 05 f0 01  	addi	a0, zero, 31
800018b8: 63 e4 a4 00  	bltu	s1, a0, 0x800018c0 <.LBB4_88+0xf8>
800018bc: 93 04 f0 01  	addi	s1, zero, 31
800018c0: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
800018c4: 13 05 81 00  	addi	a0, sp, 8
800018c8: 93 05 00 03  	addi	a1, zero, 48
800018cc: 13 06 04 00  	mv	a2, s0
800018d0: 97 f0 ff ff  	auipc	ra, 1048575
800018d4: e7 80 80 c8  	jalr	-888(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800018d8: 13 c5 f4 ff  	not	a0, s1
800018dc: 33 0c ac 00  	add	s8, s8, a0
800018e0: 6f 00 80 00  	j	0x800018e8 <.LBB4_88+0x120>
800018e4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800018e8: 13 15 3c 00  	slli	a0, s8, 3

800018ec <.LBB4_89>:
800018ec: 97 15 00 00  	auipc	a1, 1
800018f0: 93 85 c5 50  	addi	a1, a1, 1292
800018f4: 33 05 b5 00  	add	a0, a0, a1
800018f8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800018fc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001900: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001904: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001908: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

8000190c <.LBB4_90>:
8000190c: 17 15 00 00  	auipc	a0, 1
80001910: 13 05 c5 64  	addi	a0, a0, 1612
80001914: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001918: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
8000191c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001920: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001924: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001928: 63 90 05 02  	bnez	a1, 0x80001948 <.LBB4_90+0x3c>
;     ++frac;
8000192c: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001930: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001934: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001938: 63 94 05 02  	bnez	a1, 0x80001960 <.LBB4_90+0x54>
8000193c: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001940: 93 84 14 00  	addi	s1, s1, 1
80001944: 6f 00 c0 01  	j	0x80001960 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001948: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000194c: 63 9a 05 00  	bnez	a1, 0x80001960 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001950: 93 35 15 00  	seqz	a1, a0
80001954: 13 76 15 00  	andi	a2, a0, 1
80001958: b3 65 b6 00  	or	a1, a2, a1
8000195c: 33 85 a5 00  	add	a0, a1, a0
80001960: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001964: 63 0c 0c 0c  	beqz	s8, 0x80001a3c <.LBB4_90+0x130>
80001968: 13 06 00 00  	mv	a2, zero
8000196c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001970: 33 83 85 00  	add	t1, a1, s0
80001974: 93 02 00 02  	addi	t0, zero, 32
80001978: 33 87 82 40  	sub	a4, t0, s0
8000197c: b7 d5 cc cc  	lui	a1, 838861
80001980: 93 83 d5 cc  	addi	t2, a1, -819
80001984: 13 08 a0 00  	addi	a6, zero, 10
80001988: 93 08 90 00  	addi	a7, zero, 9
8000198c: 63 04 c7 0c  	beq	a4, a2, 0x80001a54 <.LBB4_90+0x148>
80001990: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001994: 33 35 75 02  	mulhu	a0, a0, t2
80001998: 13 55 35 00  	srli	a0, a0, 3
8000199c: b3 06 05 03  	mul	a3, a0, a6
800019a0: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800019a4: 93 e6 06 03  	ori	a3, a3, 48
800019a8: b3 07 c3 00  	add	a5, t1, a2
800019ac: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800019b0: 13 06 16 00  	addi	a2, a2, 1
800019b4: e3 ec b8 fc  	bltu	a7, a1, 0x8000198c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800019b8: 33 05 c4 00  	add	a0, s0, a2
800019bc: 93 05 f5 ff  	addi	a1, a0, -1
800019c0: 93 06 e0 01  	addi	a3, zero, 30
800019c4: b3 b6 b6 00  	sltu	a3, a3, a1
800019c8: 33 47 cc 00  	xor	a4, s8, a2
800019cc: 13 37 17 00  	seqz	a4, a4
800019d0: b3 e6 e6 00  	or	a3, a3, a4
800019d4: 63 94 06 08  	bnez	a3, 0x80001a5c <.LBB4_90+0x150>
800019d8: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800019dc: 33 05 85 00  	add	a0, a0, s0
800019e0: 93 45 f6 ff  	not	a1, a2
800019e4: 33 8c 85 01  	add	s8, a1, s8
800019e8: 33 04 c4 00  	add	s0, s0, a2
800019ec: 93 05 f0 01  	addi	a1, zero, 31
800019f0: b3 86 85 40  	sub	a3, a1, s0
800019f4: 33 05 c5 00  	add	a0, a0, a2
800019f8: 93 05 0c 00  	mv	a1, s8
800019fc: 63 64 dc 00  	bltu	s8, a3, 0x80001a04 <.LBB4_90+0xf8>
80001a00: 93 85 06 00  	mv	a1, a3
80001a04: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001a08: 93 05 00 03  	addi	a1, zero, 48
80001a0c: 97 f0 ff ff  	auipc	ra, 1048575
80001a10: e7 80 c0 b4  	jalr	-1204(ra)
80001a14: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001a18: b3 05 a4 00  	add	a1, s0, a0
80001a1c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001a20: 33 46 ac 00  	xor	a2, s8, a0
80001a24: 33 36 c0 00  	snez	a2, a2
80001a28: 33 f6 c5 00  	and	a2, a1, a2
80001a2c: 13 05 15 00  	addi	a0, a0, 1
80001a30: e3 14 06 fe  	bnez	a2, 0x80001a18 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001a34: 33 05 a4 00  	add	a0, s0, a0
80001a38: 6f 00 80 02  	j	0x80001a60 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001a3c: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001a40: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001a44: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001a48: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001a4c: b3 84 a4 00  	add	s1, s1, a0
80001a50: 6f 00 c0 03  	j	0x80001a8c <.LBB4_90+0x180>
80001a54: 13 04 00 02  	addi	s0, zero, 32
80001a58: 6f 00 80 03  	j	0x80001a90 <.LBB4_90+0x184>
80001a5c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001a60: 63 8e 05 00  	beqz	a1, 0x80001a7c <.LBB4_90+0x170>
;       buf[len++] = '.';
80001a64: 13 04 15 00  	addi	s0, a0, 1
80001a68: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001a6c: 33 85 a5 00  	add	a0, a1, a0
80001a70: 93 05 e0 02  	addi	a1, zero, 46
80001a74: 23 00 b5 00  	sb	a1, 0(a0)
80001a78: 6f 00 80 00  	j	0x80001a80 <.LBB4_90+0x174>
80001a7c: 13 04 05 00  	mv	s0, a0
80001a80: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001a84: 93 02 04 00  	mv	t0, s0
80001a88: 63 64 85 00  	bltu	a0, s0, 0x80001a90 <.LBB4_90+0x184>
80001a8c: 93 02 00 02  	addi	t0, zero, 32
80001a90: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001a94: 37 65 66 66  	lui	a0, 419430
80001a98: 93 05 75 66  	addi	a1, a0, 1639
80001a9c: 13 08 a0 00  	addi	a6, zero, 10
80001aa0: 93 06 81 00  	addi	a3, sp, 8
80001aa4: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001aa8: 63 80 82 04  	beq	t0, s0, 0x80001ae8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80001aac: 33 95 b4 02  	mulh	a0, s1, a1
80001ab0: 93 57 f5 01  	srli	a5, a0, 31
80001ab4: 13 55 25 40  	srai	a0, a0, 2
80001ab8: 33 05 f5 00  	add	a0, a0, a5
80001abc: b3 07 05 03  	mul	a5, a0, a6
80001ac0: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80001ac4: 93 87 07 03  	addi	a5, a5, 48
80001ac8: 13 0c 14 00  	addi	s8, s0, 1
80001acc: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80001ad0: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80001ad4: 23 00 f4 00  	sb	a5, 0(s0)
80001ad8: 13 04 0c 00  	mv	s0, s8
80001adc: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80001ae0: e3 64 c7 fc  	bltu	a4, a2, 0x80001aa8 <.LBB4_90+0x19c>
80001ae4: 6f 00 80 00  	j	0x80001aec <.LBB4_90+0x1e0>
80001ae8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001aec: 93 f4 3a 00  	andi	s1, s5, 3
80001af0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001af4: 63 96 a4 06  	bne	s1, a0, 0x80001b60 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001af8: 63 0c 09 00  	beqz	s2, 0x80001b10 <.LBB4_90+0x204>
80001afc: 13 f5 ca 00  	andi	a0, s5, 12
80001b00: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001b04: 33 e5 ac 00  	or	a0, s9, a0
80001b08: 33 09 a9 40  	sub	s2, s2, a0
80001b0c: 6f 00 80 00  	j	0x80001b14 <.LBB4_90+0x208>
80001b10: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001b14: 33 35 2c 01  	sltu	a0, s8, s2
80001b18: 93 45 15 00  	xori	a1, a0, 1
80001b1c: 13 05 f0 01  	addi	a0, zero, 31
80001b20: 33 36 85 01  	sltu	a2, a0, s8
80001b24: b3 65 b6 00  	or	a1, a2, a1
80001b28: 63 9c 05 02  	bnez	a1, 0x80001b60 <.LBB4_90+0x254>
80001b2c: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001b30: 93 45 fc ff  	not	a1, s8
80001b34: b3 05 b9 00  	add	a1, s2, a1
80001b38: 33 06 85 41  	sub	a2, a0, s8
80001b3c: 33 85 86 01  	add	a0, a3, s8
80001b40: 63 e4 c5 00  	bltu	a1, a2, 0x80001b48 <.LBB4_90+0x23c>
80001b44: 93 05 06 00  	mv	a1, a2
80001b48: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80001b4c: 93 05 00 03  	addi	a1, zero, 48
80001b50: 13 06 04 00  	mv	a2, s0
80001b54: 97 f0 ff ff  	auipc	ra, 1048575
80001b58: e7 80 40 a0  	jalr	-1532(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001b5c: 33 0c 84 01  	add	s8, s0, s8
80001b60: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001b64: 63 6a 85 05  	bltu	a0, s8, 0x80001bb8 <.LBB4_90+0x2ac>
;     if (negative) {
80001b68: 63 8c 0c 00  	beqz	s9, 0x80001b80 <.LBB4_90+0x274>
80001b6c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80001b70: 33 05 85 01  	add	a0, a0, s8
80001b74: 13 0c 1c 00  	addi	s8, s8, 1
80001b78: 93 05 d0 02  	addi	a1, zero, 45
80001b7c: 6f 00 80 03  	j	0x80001bb4 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80001b80: 13 f5 4a 00  	andi	a0, s5, 4
80001b84: 63 10 05 02  	bnez	a0, 0x80001ba4 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80001b88: 13 f5 8a 00  	andi	a0, s5, 8
80001b8c: 63 06 05 02  	beqz	a0, 0x80001bb8 <.LBB4_90+0x2ac>
80001b90: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80001b94: 33 05 85 01  	add	a0, a0, s8
80001b98: 13 0c 1c 00  	addi	s8, s8, 1
80001b9c: 93 05 00 02  	addi	a1, zero, 32
80001ba0: 6f 00 40 01  	j	0x80001bb4 <.LBB4_90+0x2a8>
80001ba4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80001ba8: 33 05 85 01  	add	a0, a0, s8
80001bac: 13 0c 1c 00  	addi	s8, s8, 1
80001bb0: 93 05 b0 02  	addi	a1, zero, 43
80001bb4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001bb8: 33 35 90 00  	snez	a0, s1
80001bbc: b3 35 2c 01  	sltu	a1, s8, s2
80001bc0: 93 c5 15 00  	xori	a1, a1, 1
80001bc4: 33 65 b5 00  	or	a0, a0, a1
80001bc8: 93 fa 2a 00  	andi	s5, s5, 2
80001bcc: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001bd0: 63 16 05 02  	bnez	a0, 0x80001bfc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80001bd4: b3 04 89 41  	sub	s1, s2, s8
80001bd8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001bdc: 13 04 16 00  	addi	s0, a2, 1
80001be0: 13 05 00 02  	addi	a0, zero, 32
80001be4: 93 05 0b 00  	mv	a1, s6
80001be8: 93 86 09 00  	mv	a3, s3
80001bec: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001bf0: 93 84 f4 ff  	addi	s1, s1, -1
80001bf4: 13 06 04 00  	mv	a2, s0
80001bf8: e3 92 04 fe  	bnez	s1, 0x80001bdc <.LBB4_90+0x2d0>
80001bfc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001c00: 63 0c 0c 02  	beqz	s8, 0x80001c38 <.LBB4_90+0x32c>
80001c04: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80001c08: 33 85 8c 01  	add	a0, s9, s8
80001c0c: 03 45 05 00  	lbu	a0, 0(a0)
80001c10: 13 0d fc ff  	addi	s10, s8, -1
80001c14: 93 04 14 00  	addi	s1, s0, 1
80001c18: 93 05 0b 00  	mv	a1, s6
80001c1c: 13 06 04 00  	mv	a2, s0
80001c20: 93 86 09 00  	mv	a3, s3
80001c24: e7 80 0b 00  	jalr	s7
80001c28: 13 84 04 00  	mv	s0, s1
80001c2c: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80001c30: e3 1c 0d fc  	bnez	s10, 0x80001c08 <.LBB4_90+0x2fc>
80001c34: 6f 00 80 00  	j	0x80001c3c <.LBB4_90+0x330>
80001c38: 93 04 04 00  	mv	s1, s0
80001c3c: 33 85 44 41  	sub	a0, s1, s4
80001c40: 33 35 25 01  	sltu	a0, a0, s2
80001c44: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001c48: 93 c5 1a 00  	xori	a1, s5, 1
80001c4c: 33 e5 a5 00  	or	a0, a1, a0
80001c50: 63 18 05 02  	bnez	a0, 0x80001c80 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001c54: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001c58: 13 84 14 00  	addi	s0, s1, 1
80001c5c: 13 05 00 02  	addi	a0, zero, 32
80001c60: 93 05 0b 00  	mv	a1, s6
80001c64: 13 86 04 00  	mv	a2, s1
80001c68: 93 86 09 00  	mv	a3, s3
80001c6c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001c70: 33 05 8a 00  	add	a0, s4, s0
80001c74: 93 04 04 00  	mv	s1, s0
80001c78: e3 60 25 ff  	bltu	a0, s2, 0x80001c58 <.LBB4_90+0x34c>
80001c7c: 6f 00 80 00  	j	0x80001c84 <.LBB4_90+0x378>
80001c80: 13 84 04 00  	mv	s0, s1
; }
80001c84: 13 05 04 00  	mv	a0, s0
80001c88: 07 39 81 02  	fld	fs2, 40(sp)
80001c8c: 87 34 01 03  	fld	fs1, 48(sp)
80001c90: 07 34 81 03  	fld	fs0, 56(sp)
80001c94: 03 2d 01 04  	lw	s10, 64(sp)
80001c98: 83 2c 41 04  	lw	s9, 68(sp)
80001c9c: 03 2c 81 04  	lw	s8, 72(sp)
80001ca0: 83 2b c1 04  	lw	s7, 76(sp)
80001ca4: 03 2b 01 05  	lw	s6, 80(sp)
80001ca8: 83 2a 41 05  	lw	s5, 84(sp)
80001cac: 03 2a 81 05  	lw	s4, 88(sp)
80001cb0: 83 29 c1 05  	lw	s3, 92(sp)
80001cb4: 03 29 01 06  	lw	s2, 96(sp)
80001cb8: 83 24 41 06  	lw	s1, 100(sp)
80001cbc: 03 24 81 06  	lw	s0, 104(sp)
80001cc0: 83 20 c1 06  	lw	ra, 108(sp)
80001cc4: 13 01 01 07  	addi	sp, sp, 112
80001cc8: 67 80 00 00  	ret

80001ccc <_etoa>:
; {
80001ccc: 13 01 01 f8  	addi	sp, sp, -128
80001cd0: 23 2e 11 06  	sw	ra, 124(sp)
80001cd4: 23 2c 81 06  	sw	s0, 120(sp)
80001cd8: 23 2a 91 06  	sw	s1, 116(sp)
80001cdc: 23 28 21 07  	sw	s2, 112(sp)
80001ce0: 23 26 31 07  	sw	s3, 108(sp)
80001ce4: 23 24 41 07  	sw	s4, 104(sp)
80001ce8: 23 22 51 07  	sw	s5, 100(sp)
80001cec: 23 20 61 07  	sw	s6, 96(sp)
80001cf0: 23 2e 71 05  	sw	s7, 92(sp)
80001cf4: 23 2c 81 05  	sw	s8, 88(sp)
80001cf8: 23 2a 91 05  	sw	s9, 84(sp)
80001cfc: 23 28 a1 05  	sw	s10, 80(sp)
80001d00: 23 26 b1 05  	sw	s11, 76(sp)

80001d04 <.LBB5_43>:
80001d04: 97 14 00 00  	auipc	s1, 1
80001d08: 93 84 c4 25  	addi	s1, s1, 604
80001d0c: 87 b0 04 00  	fld	ft1, 0(s1)

80001d10 <.LBB5_44>:
80001d10: 97 14 00 00  	auipc	s1, 1
80001d14: 93 84 84 25  	addi	s1, s1, 600
80001d18: 07 b1 04 00  	fld	ft2, 0(s1)
80001d1c: 53 00 a5 22  	fmv.d	ft0, fa0
80001d20: d3 04 15 a2  	fle.d	s1, fa0, ft1
80001d24: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001d28: b3 f4 84 00  	and	s1, s1, s0
80001d2c: 93 0a 08 00  	mv	s5, a6
80001d30: 13 89 07 00  	mv	s2, a5
80001d34: 93 07 07 00  	mv	a5, a4
80001d38: 93 89 06 00  	mv	s3, a3
80001d3c: 13 0a 06 00  	mv	s4, a2
80001d40: 13 8b 05 00  	mv	s6, a1
80001d44: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001d48: 63 92 04 06  	bnez	s1, 0x80001dac <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001d4c: 13 85 0b 00  	mv	a0, s7
80001d50: 93 05 0b 00  	mv	a1, s6
80001d54: 13 06 0a 00  	mv	a2, s4
80001d58: 93 86 09 00  	mv	a3, s3
80001d5c: 53 05 00 22  	fmv.d	fa0, ft0
80001d60: 13 87 07 00  	mv	a4, a5
80001d64: 93 07 09 00  	mv	a5, s2
80001d68: 13 88 0a 00  	mv	a6, s5
80001d6c: 83 2d c1 04  	lw	s11, 76(sp)
80001d70: 03 2d 01 05  	lw	s10, 80(sp)
80001d74: 83 2c 41 05  	lw	s9, 84(sp)
80001d78: 03 2c 81 05  	lw	s8, 88(sp)
80001d7c: 83 2b c1 05  	lw	s7, 92(sp)
80001d80: 03 2b 01 06  	lw	s6, 96(sp)
80001d84: 83 2a 41 06  	lw	s5, 100(sp)
80001d88: 03 2a 81 06  	lw	s4, 104(sp)
80001d8c: 83 29 c1 06  	lw	s3, 108(sp)
80001d90: 03 29 01 07  	lw	s2, 112(sp)
80001d94: 83 24 41 07  	lw	s1, 116(sp)
80001d98: 03 24 81 07  	lw	s0, 120(sp)
80001d9c: 83 20 c1 07  	lw	ra, 124(sp)
80001da0: 13 01 01 08  	addi	sp, sp, 128
80001da4: 17 03 00 00  	auipc	t1, 0
80001da8: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80001dac: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80001db0: 13 f5 0a 40  	andi	a0, s5, 1024
80001db4: 13 07 60 00  	addi	a4, zero, 6
80001db8: 63 04 05 00  	beqz	a0, 0x80001dc0 <.LBB5_44+0xb0>
80001dbc: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80001dc0: 27 30 a1 02  	fsd	fa0, 32(sp)
80001dc4: 83 25 41 02  	lw	a1, 36(sp)
80001dc8: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001dcc: 93 d6 45 01  	srli	a3, a1, 20
80001dd0: b7 07 10 00  	lui	a5, 256
80001dd4: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001dd8: b3 f5 f5 00  	and	a1, a1, a5
80001ddc: 23 2c c1 00  	sw	a2, 24(sp)
80001de0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001de4: b3 e5 c5 00  	or	a1, a1, a2
80001de8: 23 2e b1 00  	sw	a1, 28(sp)
80001dec: 87 30 81 01  	fld	ft1, 24(sp)

80001df0 <.LBB5_45>:
80001df0: 97 15 00 00  	auipc	a1, 1
80001df4: 93 85 05 18  	addi	a1, a1, 384
80001df8: 07 b1 05 00  	fld	ft2, 0(a1)

80001dfc <.LBB5_46>:
80001dfc: 97 15 00 00  	auipc	a1, 1
80001e00: 93 85 c5 17  	addi	a1, a1, 380
80001e04: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001e08: 93 f5 f6 7f  	andi	a1, a3, 2047
80001e0c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001e10: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001e14: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80001e18 <.LBB5_47>:
80001e18: 97 15 00 00  	auipc	a1, 1
80001e1c: 93 85 85 16  	addi	a1, a1, 360
80001e20: 07 b1 05 00  	fld	ft2, 0(a1)

80001e24 <.LBB5_48>:
80001e24: 97 15 00 00  	auipc	a1, 1
80001e28: 93 85 45 16  	addi	a1, a1, 356
80001e2c: 87 b1 05 00  	fld	ft3, 0(a1)

80001e30 <.LBB5_49>:
80001e30: 97 15 00 00  	auipc	a1, 1
80001e34: 93 85 05 16  	addi	a1, a1, 352
80001e38: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001e3c: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80001e40: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001e44: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001e48: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80001e4c <.LBB5_50>:
80001e4c: 17 16 00 00  	auipc	a2, 1
80001e50: 13 06 c6 14  	addi	a2, a2, 332
80001e54: 87 31 06 00  	fld	ft3, 0(a2)

80001e58 <.LBB5_51>:
80001e58: 17 16 00 00  	auipc	a2, 1
80001e5c: 13 06 86 14  	addi	a2, a2, 328
80001e60: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001e64: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80001e68: 53 01 06 d2  	fcvt.d.w	ft2, a2
80001e6c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80001e70: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80001e74: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001e78: 13 06 f6 3f  	addi	a2, a2, 1023
80001e7c: 23 28 01 00  	sw	zero, 16(sp)
80001e80: 13 16 46 01  	slli	a2, a2, 20
80001e84: 23 2a c1 00  	sw	a2, 20(sp)

80001e88 <.LBB5_52>:
80001e88: 17 16 00 00  	auipc	a2, 1
80001e8c: 13 06 86 12  	addi	a2, a2, 296
80001e90: 87 31 06 00  	fld	ft3, 0(a2)

80001e94 <.LBB5_53>:
80001e94: 17 16 00 00  	auipc	a2, 1
80001e98: 13 06 46 12  	addi	a2, a2, 292
80001e9c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001ea0: 87 32 01 01  	fld	ft5, 16(sp)

80001ea4 <.LBB5_54>:
80001ea4: 17 16 00 00  	auipc	a2, 1
80001ea8: 13 06 46 10  	addi	a2, a2, 260
80001eac: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80001eb0: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80001eb4 <.LBB5_55>:
80001eb4: 17 16 00 00  	auipc	a2, 1
80001eb8: 13 06 c6 10  	addi	a2, a2, 268
80001ebc: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80001ec0: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80001ec4: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80001ec8: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80001ecc: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80001ed0: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80001ed4: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80001ed8: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80001edc: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80001ee0: 53 16 15 a2  	flt.d	a2, fa0, ft1
80001ee4: 63 0a 06 00  	beqz	a2, 0x80001ef8 <.LBB5_56+0x10>

80001ee8 <.LBB5_56>:
80001ee8: 97 16 00 00  	auipc	a3, 1
80001eec: 93 86 06 0e  	addi	a3, a3, 224
80001ef0: 07 b1 06 00  	fld	ft2, 0(a3)
80001ef4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80001ef8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80001efc: 93 05 34 06  	addi	a1, s0, 99
80001f00: 93 b5 75 0c  	sltiu	a1, a1, 199
80001f04: 13 06 50 00  	addi	a2, zero, 5
80001f08: b7 16 00 00  	lui	a3, 1
80001f0c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80001f10: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80001f14: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80001f18: 63 84 06 06  	beqz	a3, 0x80001f80 <.LBB5_58+0x58>

80001f1c <.LBB5_57>:
80001f1c: 97 15 00 00  	auipc	a1, 1
80001f20: 93 85 45 0b  	addi	a1, a1, 180
80001f24: 07 b1 05 00  	fld	ft2, 0(a1)

80001f28 <.LBB5_58>:
80001f28: 97 15 00 00  	auipc	a1, 1
80001f2c: 93 85 05 0b  	addi	a1, a1, 176
80001f30: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80001f34: d3 15 25 a2  	flt.d	a1, fa0, ft2
80001f38: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80001f3c: b3 e5 c5 00  	or	a1, a1, a2
80001f40: 63 98 05 00  	bnez	a1, 0x80001f50 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80001f44: 63 40 e4 02  	blt	s0, a4, 0x80001f64 <.LBB5_58+0x3c>
80001f48: 13 07 00 00  	mv	a4, zero
80001f4c: 6f 00 00 02  	j	0x80001f6c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80001f50: 63 06 07 02  	beqz	a4, 0x80001f7c <.LBB5_58+0x54>
80001f54: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80001f58: 13 45 15 00  	xori	a0, a0, 1
80001f5c: 33 07 a7 40  	sub	a4, a4, a0
80001f60: 6f 00 00 02  	j	0x80001f80 <.LBB5_58+0x58>
80001f64: 13 45 f4 ff  	not	a0, s0
80001f68: 33 07 a7 00  	add	a4, a4, a0
80001f6c: 13 04 00 00  	mv	s0, zero
80001f70: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80001f74: 93 ea 0a 40  	ori	s5, s5, 1024
80001f78: 6f 00 80 00  	j	0x80001f80 <.LBB5_58+0x58>
80001f7c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80001f80: b3 05 99 41  	sub	a1, s2, s9
80001f84: 33 36 b9 00  	sltu	a2, s2, a1
80001f88: 13 05 00 00  	mv	a0, zero
80001f8c: 63 14 06 00  	bnez	a2, 0x80001f94 <.LBB5_58+0x6c>
80001f90: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80001f94: 93 07 00 00  	mv	a5, zero
80001f98: 93 d5 1a 00  	srli	a1, s5, 1
80001f9c: 93 f4 15 00  	andi	s1, a1, 1
80001fa0: b3 35 90 01  	snez	a1, s9
80001fa4: b3 f5 b4 00  	and	a1, s1, a1
80001fa8: 53 01 00 d2  	fcvt.d.w	ft2, zero
80001fac: 63 94 05 00  	bnez	a1, 0x80001fb4 <.LBB5_58+0x8c>
80001fb0: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80001fb4: 93 35 14 00  	seqz	a1, s0
80001fb8: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80001fbc: 63 94 05 00  	bnez	a1, 0x80001fc4 <.LBB5_58+0x9c>
80001fc0: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80001fc4: 63 04 05 00  	beqz	a0, 0x80001fcc <.LBB5_58+0xa4>
80001fc8: 53 15 a5 22  	fneg.d	fa0, fa0
80001fcc: 37 f5 ff ff  	lui	a0, 1048575
80001fd0: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80001fd4: 33 f8 aa 00  	and	a6, s5, a0
80001fd8: 13 85 0b 00  	mv	a0, s7
80001fdc: 93 05 0b 00  	mv	a1, s6
80001fe0: 13 06 0a 00  	mv	a2, s4
80001fe4: 93 86 09 00  	mv	a3, s3
80001fe8: 97 f0 ff ff  	auipc	ra, 1048575
80001fec: e7 80 40 60  	jalr	1540(ra)
80001ff0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80001ff4: 63 82 0c 18  	beqz	s9, 0x80002178 <.LBB5_58+0x250>
80001ff8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80001ffc: 13 f5 0a 02  	andi	a0, s5, 32
80002000: 13 45 55 06  	xori	a0, a0, 101
80002004: 93 05 0b 00  	mv	a1, s6
80002008: 13 06 0d 00  	mv	a2, s10
8000200c: 93 86 09 00  	mv	a3, s3
80002010: e7 80 0b 00  	jalr	s7
80002014: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002018: 93 5a f4 01  	srli	s5, s0, 31
8000201c: 13 55 f4 41  	srai	a0, s0, 31
80002020: b3 05 a4 00  	add	a1, s0, a0
80002024: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002028: 93 8d dc ff  	addi	s11, s9, -3
8000202c: 13 04 f0 01  	addi	s0, zero, 31
80002030: 37 d5 cc cc  	lui	a0, 838861
80002034: 13 05 d5 cc  	addi	a0, a0, -819
80002038: 13 08 a0 00  	addi	a6, zero, 10
8000203c: 93 08 c1 02  	addi	a7, sp, 44
80002040: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002044: b3 37 a7 02  	mulhu	a5, a4, a0
80002048: 93 d5 37 00  	srli	a1, a5, 3
8000204c: b3 87 05 03  	mul	a5, a1, a6
80002050: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002054: 13 e6 07 03  	ori	a2, a5, 48
80002058: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000205c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002060: 13 0c 1c 00  	addi	s8, s8, 1
80002064: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002068: 33 b6 e2 00  	sltu	a2, t0, a4
8000206c: 33 f6 c7 00  	and	a2, a5, a2
80002070: 93 8d fd ff  	addi	s11, s11, -1
80002074: 13 04 f4 ff  	addi	s0, s0, -1
80002078: 13 87 05 00  	mv	a4, a1
8000207c: e3 14 06 fc  	bnez	a2, 0x80002044 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002080: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002084: 33 35 ac 00  	sltu	a0, s8, a0
80002088: 13 45 15 00  	xori	a0, a0, 1
8000208c: 93 c5 17 00  	xori	a1, a5, 1
80002090: 33 e5 a5 00  	or	a0, a1, a0
80002094: 63 12 05 04  	bnez	a0, 0x800020d8 <.LBB5_58+0x1b0>
80002098: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000209c: b3 85 8c 41  	sub	a1, s9, s8
800020a0: 93 85 d5 ff  	addi	a1, a1, -3
800020a4: 13 06 f0 01  	addi	a2, zero, 31
800020a8: 33 06 86 41  	sub	a2, a2, s8
800020ac: 33 05 85 01  	add	a0, a0, s8
800020b0: 63 e4 c5 00  	bltu	a1, a2, 0x800020b8 <.LBB5_58+0x190>
800020b4: 93 05 06 00  	mv	a1, a2
800020b8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800020bc: 93 05 00 03  	addi	a1, zero, 48
800020c0: 97 e0 ff ff  	auipc	ra, 1048574
800020c4: e7 80 80 49  	jalr	1176(ra)
;   if (flags & FLAGS_HASH) {
800020c8: 63 e4 8d 00  	bltu	s11, s0, 0x800020d0 <.LBB5_58+0x1a8>
800020cc: 93 0d 04 00  	mv	s11, s0
800020d0: 33 85 8d 01  	add	a0, s11, s8
800020d4: 13 0c 15 00  	addi	s8, a0, 1
800020d8: 83 2c c1 00  	lw	s9, 12(sp)
800020dc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800020e0: 63 60 85 03  	bltu	a0, s8, 0x80002100 <.LBB5_58+0x1d8>
800020e4: 13 05 c1 02  	addi	a0, sp, 44
800020e8: 33 05 85 01  	add	a0, a0, s8
800020ec: 93 05 d0 02  	addi	a1, zero, 45
800020f0: 63 94 0a 00  	bnez	s5, 0x800020f8 <.LBB5_58+0x1d0>
800020f4: 93 05 b0 02  	addi	a1, zero, 43
800020f8: 13 0c 1c 00  	addi	s8, s8, 1
800020fc: 23 00 b5 00  	sb	a1, 0(a0)
80002100: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002104: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002108: 33 85 8a 01  	add	a0, s5, s8
8000210c: 03 45 05 00  	lbu	a0, 0(a0)
80002110: 13 06 04 00  	mv	a2, s0
80002114: 93 04 fc ff  	addi	s1, s8, -1
80002118: 13 04 14 00  	addi	s0, s0, 1
8000211c: 93 05 0b 00  	mv	a1, s6
80002120: 93 86 09 00  	mv	a3, s3
80002124: e7 80 0b 00  	jalr	s7
80002128: 13 8c 04 00  	mv	s8, s1
;   while (len) {
8000212c: e3 9e 04 fc  	bnez	s1, 0x80002108 <.LBB5_58+0x1e0>
80002130: 33 05 44 41  	sub	a0, s0, s4
80002134: 33 35 25 01  	sltu	a0, a0, s2
80002138: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
8000213c: 93 c5 1c 00  	xori	a1, s9, 1
80002140: 33 e5 a5 00  	or	a0, a1, a0
80002144: 63 18 05 02  	bnez	a0, 0x80002174 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002148: b3 04 40 41  	neg	s1, s4
8000214c: 13 0d 14 00  	addi	s10, s0, 1
80002150: 13 05 00 02  	addi	a0, zero, 32
80002154: 93 05 0b 00  	mv	a1, s6
80002158: 13 06 04 00  	mv	a2, s0
8000215c: 93 86 09 00  	mv	a3, s3
80002160: e7 80 0b 00  	jalr	s7
80002164: 33 85 a4 01  	add	a0, s1, s10
80002168: 13 04 0d 00  	mv	s0, s10
8000216c: e3 60 25 ff  	bltu	a0, s2, 0x8000214c <.LBB5_58+0x224>
80002170: 6f 00 80 00  	j	0x80002178 <.LBB5_58+0x250>
80002174: 13 0d 04 00  	mv	s10, s0
; }
80002178: 13 05 0d 00  	mv	a0, s10
8000217c: 83 2d c1 04  	lw	s11, 76(sp)
80002180: 03 2d 01 05  	lw	s10, 80(sp)
80002184: 83 2c 41 05  	lw	s9, 84(sp)
80002188: 03 2c 81 05  	lw	s8, 88(sp)
8000218c: 83 2b c1 05  	lw	s7, 92(sp)
80002190: 03 2b 01 06  	lw	s6, 96(sp)
80002194: 83 2a 41 06  	lw	s5, 100(sp)
80002198: 03 2a 81 06  	lw	s4, 104(sp)
8000219c: 83 29 c1 06  	lw	s3, 108(sp)
800021a0: 03 29 01 07  	lw	s2, 112(sp)
800021a4: 83 24 41 07  	lw	s1, 116(sp)
800021a8: 03 24 81 07  	lw	s0, 120(sp)
800021ac: 83 20 c1 07  	lw	ra, 124(sp)
800021b0: 13 01 01 08  	addi	sp, sp, 128
800021b4: 67 80 00 00  	ret

800021b8 <_ntoa_format>:
; {
800021b8: 13 01 01 fc  	addi	sp, sp, -64
800021bc: 23 2e 11 02  	sw	ra, 60(sp)
800021c0: 23 2c 81 02  	sw	s0, 56(sp)
800021c4: 23 2a 91 02  	sw	s1, 52(sp)
800021c8: 23 28 21 03  	sw	s2, 48(sp)
800021cc: 23 26 31 03  	sw	s3, 44(sp)
800021d0: 23 24 41 03  	sw	s4, 40(sp)
800021d4: 23 22 51 03  	sw	s5, 36(sp)
800021d8: 23 20 61 03  	sw	s6, 32(sp)
800021dc: 23 2e 71 01  	sw	s7, 28(sp)
800021e0: 23 2c 81 01  	sw	s8, 24(sp)
800021e4: 23 2a 91 01  	sw	s9, 20(sp)
800021e8: 23 28 a1 01  	sw	s10, 16(sp)
800021ec: 23 26 b1 01  	sw	s11, 12(sp)
800021f0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800021f4: 93 fa 2e 00  	andi	s5, t4, 2
800021f8: 13 09 0e 00  	mv	s2, t3
800021fc: 13 8d 03 00  	mv	s10, t2
80002200: 93 8c 08 00  	mv	s9, a7
80002204: 13 8c 07 00  	mv	s8, a5
80002208: 93 89 06 00  	mv	s3, a3
8000220c: 13 0a 06 00  	mv	s4, a2
80002210: 13 8b 05 00  	mv	s6, a1
80002214: 93 0d 05 00  	mv	s11, a0
80002218: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000221c: 63 9e 0a 0c  	bnez	s5, 0x800022f8 <_ntoa_format+0x140>
80002220: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002224: 63 0e 09 00  	beqz	s2, 0x80002240 <_ntoa_format+0x88>
80002228: 63 0e 04 00  	beqz	s0, 0x80002244 <_ntoa_format+0x8c>
8000222c: 13 f5 cb 00  	andi	a0, s7, 12
80002230: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002234: 33 65 05 01  	or	a0, a0, a6
80002238: 33 09 a9 40  	sub	s2, s2, a0
8000223c: 6f 00 80 00  	j	0x80002244 <_ntoa_format+0x8c>
80002240: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002244: 33 35 ac 01  	sltu	a0, s8, s10
80002248: 93 45 15 00  	xori	a1, a0, 1
8000224c: 13 05 f0 01  	addi	a0, zero, 31
80002250: 33 36 85 01  	sltu	a2, a0, s8
80002254: b3 65 b6 00  	or	a1, a2, a1
80002258: 63 94 05 04  	bnez	a1, 0x800022a0 <_ntoa_format+0xe8>
8000225c: 23 22 51 01  	sw	s5, 4(sp)
80002260: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002264: 93 45 fc ff  	not	a1, s8
80002268: b3 85 a5 01  	add	a1, a1, s10
8000226c: 33 06 85 41  	sub	a2, a0, s8
80002270: 33 05 87 01  	add	a0, a4, s8
80002274: 63 e4 c5 00  	bltu	a1, a2, 0x8000227c <_ntoa_format+0xc4>
80002278: 93 05 06 00  	mv	a1, a2
8000227c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002280: 93 05 00 03  	addi	a1, zero, 48
80002284: 13 86 04 00  	mv	a2, s1
80002288: 97 e0 ff ff  	auipc	ra, 1048574
8000228c: e7 80 00 2d  	jalr	720(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002290: 33 8c 84 01  	add	s8, s1, s8
80002294: 03 27 81 00  	lw	a4, 8(sp)
80002298: 13 88 0a 00  	mv	a6, s5
8000229c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800022a0: 63 0c 04 04  	beqz	s0, 0x800022f8 <_ntoa_format+0x140>
800022a4: 33 35 2c 01  	sltu	a0, s8, s2
800022a8: 93 45 15 00  	xori	a1, a0, 1
800022ac: 13 05 f0 01  	addi	a0, zero, 31
800022b0: 33 36 85 01  	sltu	a2, a0, s8
800022b4: b3 e5 c5 00  	or	a1, a1, a2
800022b8: 63 90 05 04  	bnez	a1, 0x800022f8 <_ntoa_format+0x140>
800022bc: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800022c0: 93 45 fc ff  	not	a1, s8
800022c4: b3 05 b9 00  	add	a1, s2, a1
800022c8: 33 06 85 41  	sub	a2, a0, s8
800022cc: 33 05 87 01  	add	a0, a4, s8
800022d0: 63 e4 c5 00  	bltu	a1, a2, 0x800022d8 <_ntoa_format+0x120>
800022d4: 93 05 06 00  	mv	a1, a2
800022d8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800022dc: 93 05 00 03  	addi	a1, zero, 48
800022e0: 13 86 04 00  	mv	a2, s1
800022e4: 97 e0 ff ff  	auipc	ra, 1048574
800022e8: e7 80 40 27  	jalr	628(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800022ec: 33 8c 84 01  	add	s8, s1, s8
800022f0: 03 27 81 00  	lw	a4, 8(sp)
800022f4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800022f8: 13 f5 0b 01  	andi	a0, s7, 16
800022fc: 63 02 05 0e  	beqz	a0, 0x800023e0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002300: 13 f5 0b 40  	andi	a0, s7, 1024
80002304: 13 55 a5 00  	srli	a0, a0, 10
80002308: 93 35 1c 00  	seqz	a1, s8
8000230c: 33 65 b5 00  	or	a0, a0, a1
80002310: 63 1e 05 02  	bnez	a0, 0x8000234c <_ntoa_format+0x194>
80002314: 33 45 ac 01  	xor	a0, s8, s10
80002318: 33 35 a0 00  	snez	a0, a0
8000231c: b3 45 2c 01  	xor	a1, s8, s2
80002320: b3 35 b0 00  	snez	a1, a1
80002324: 33 75 b5 00  	and	a0, a0, a1
80002328: 63 12 05 02  	bnez	a0, 0x8000234c <_ntoa_format+0x194>
;       len--;
8000232c: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002330: b3 35 a0 00  	snez	a1, a0
80002334: 13 86 0c ff  	addi	a2, s9, -16
80002338: 13 36 16 00  	seqz	a2, a2
8000233c: b3 75 b6 00  	and	a1, a2, a1
80002340: 63 84 05 00  	beqz	a1, 0x80002348 <_ntoa_format+0x190>
80002344: 13 05 ec ff  	addi	a0, s8, -2
80002348: 13 0c 05 00  	mv	s8, a0
8000234c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002350: 63 96 ac 02  	bne	s9, a0, 0x8000237c <_ntoa_format+0x1c4>
80002354: 13 f5 0b 02  	andi	a0, s7, 32
80002358: 93 55 55 00  	srli	a1, a0, 5
8000235c: 13 06 f0 01  	addi	a2, zero, 31
80002360: 33 36 86 01  	sltu	a2, a2, s8
80002364: b3 e5 c5 00  	or	a1, a1, a2
80002368: 63 9e 05 02  	bnez	a1, 0x800023a4 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
8000236c: 33 05 87 01  	add	a0, a4, s8
80002370: 13 0c 1c 00  	addi	s8, s8, 1
80002374: 93 05 80 07  	addi	a1, zero, 120
80002378: 6f 00 c0 04  	j	0x800023c4 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000237c: 13 85 ec ff  	addi	a0, s9, -2
80002380: 33 35 a0 00  	snez	a0, a0
80002384: 93 05 f0 01  	addi	a1, zero, 31
80002388: b3 b5 85 01  	sltu	a1, a1, s8
8000238c: 33 65 b5 00  	or	a0, a0, a1
80002390: 63 1c 05 02  	bnez	a0, 0x800023c8 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002394: 33 05 87 01  	add	a0, a4, s8
80002398: 13 0c 1c 00  	addi	s8, s8, 1
8000239c: 93 05 20 06  	addi	a1, zero, 98
800023a0: 6f 00 40 02  	j	0x800023c4 <_ntoa_format+0x20c>
800023a4: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800023a8: 13 35 15 00  	seqz	a0, a0
800023ac: 93 c5 15 00  	xori	a1, a1, 1
800023b0: 33 65 b5 00  	or	a0, a0, a1
800023b4: 63 1a 05 00  	bnez	a0, 0x800023c8 <_ntoa_format+0x210>
;       buf[len++] = 'X';
800023b8: 33 05 87 01  	add	a0, a4, s8
800023bc: 13 0c 1c 00  	addi	s8, s8, 1
800023c0: 93 05 80 05  	addi	a1, zero, 88
800023c4: 23 00 b5 00  	sb	a1, 0(a0)
800023c8: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800023cc: 63 60 85 07  	bltu	a0, s8, 0x8000242c <_ntoa_format+0x274>
;       buf[len++] = '0';
800023d0: 33 05 87 01  	add	a0, a4, s8
800023d4: 13 0c 1c 00  	addi	s8, s8, 1
800023d8: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800023dc: 23 00 b5 00  	sb	a1, 0(a0)
800023e0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800023e4: 63 64 85 05  	bltu	a0, s8, 0x8000242c <_ntoa_format+0x274>
;     if (negative) {
800023e8: 63 0a 08 00  	beqz	a6, 0x800023fc <_ntoa_format+0x244>
;       buf[len++] = '-';
800023ec: 33 05 87 01  	add	a0, a4, s8
800023f0: 13 0c 1c 00  	addi	s8, s8, 1
800023f4: 93 05 d0 02  	addi	a1, zero, 45
800023f8: 6f 00 00 03  	j	0x80002428 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800023fc: 13 f5 4b 00  	andi	a0, s7, 4
80002400: 63 1e 05 00  	bnez	a0, 0x8000241c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002404: 13 f5 8b 00  	andi	a0, s7, 8
80002408: 63 02 05 02  	beqz	a0, 0x8000242c <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000240c: 33 05 87 01  	add	a0, a4, s8
80002410: 13 0c 1c 00  	addi	s8, s8, 1
80002414: 93 05 00 02  	addi	a1, zero, 32
80002418: 6f 00 00 01  	j	0x80002428 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000241c: 33 05 87 01  	add	a0, a4, s8
80002420: 13 0c 1c 00  	addi	s8, s8, 1
80002424: 93 05 b0 02  	addi	a1, zero, 43
80002428: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000242c: 13 f5 3b 00  	andi	a0, s7, 3
80002430: 33 35 a0 00  	snez	a0, a0
80002434: b3 35 2c 01  	sltu	a1, s8, s2
80002438: 93 c5 15 00  	xori	a1, a1, 1
8000243c: 33 65 b5 00  	or	a0, a0, a1
80002440: 13 04 0a 00  	mv	s0, s4
80002444: 63 16 05 02  	bnez	a0, 0x80002470 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002448: b3 04 89 41  	sub	s1, s2, s8
8000244c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002450: 13 04 16 00  	addi	s0, a2, 1
80002454: 13 05 00 02  	addi	a0, zero, 32
80002458: 93 05 0b 00  	mv	a1, s6
8000245c: 93 86 09 00  	mv	a3, s3
80002460: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002464: 93 84 f4 ff  	addi	s1, s1, -1
80002468: 13 06 04 00  	mv	a2, s0
8000246c: e3 92 04 fe  	bnez	s1, 0x80002450 <_ntoa_format+0x298>
80002470: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002474: 63 0e 0c 02  	beqz	s8, 0x800024b0 <_ntoa_format+0x2f8>
80002478: 03 25 81 00  	lw	a0, 8(sp)
8000247c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002480: 33 85 8b 01  	add	a0, s7, s8
80002484: 03 45 05 00  	lbu	a0, 0(a0)
80002488: 93 0c fc ff  	addi	s9, s8, -1
8000248c: 93 04 14 00  	addi	s1, s0, 1
80002490: 93 05 0b 00  	mv	a1, s6
80002494: 13 06 04 00  	mv	a2, s0
80002498: 93 86 09 00  	mv	a3, s3
8000249c: e7 80 0d 00  	jalr	s11
800024a0: 13 84 04 00  	mv	s0, s1
800024a4: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800024a8: e3 9c 0c fc  	bnez	s9, 0x80002480 <_ntoa_format+0x2c8>
800024ac: 6f 00 80 00  	j	0x800024b4 <_ntoa_format+0x2fc>
800024b0: 93 04 04 00  	mv	s1, s0
800024b4: 33 85 44 41  	sub	a0, s1, s4
800024b8: 33 35 25 01  	sltu	a0, a0, s2
800024bc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800024c0: 93 c5 1a 00  	xori	a1, s5, 1
800024c4: 33 e5 a5 00  	or	a0, a1, a0
800024c8: 63 18 05 02  	bnez	a0, 0x800024f8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800024cc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800024d0: 13 84 14 00  	addi	s0, s1, 1
800024d4: 13 05 00 02  	addi	a0, zero, 32
800024d8: 93 05 0b 00  	mv	a1, s6
800024dc: 13 86 04 00  	mv	a2, s1
800024e0: 93 86 09 00  	mv	a3, s3
800024e4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800024e8: 33 05 8a 00  	add	a0, s4, s0
800024ec: 93 04 04 00  	mv	s1, s0
800024f0: e3 60 25 ff  	bltu	a0, s2, 0x800024d0 <_ntoa_format+0x318>
800024f4: 6f 00 80 00  	j	0x800024fc <_ntoa_format+0x344>
800024f8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800024fc: 13 05 04 00  	mv	a0, s0
80002500: 83 2d c1 00  	lw	s11, 12(sp)
80002504: 03 2d 01 01  	lw	s10, 16(sp)
80002508: 83 2c 41 01  	lw	s9, 20(sp)
8000250c: 03 2c 81 01  	lw	s8, 24(sp)
80002510: 83 2b c1 01  	lw	s7, 28(sp)
80002514: 03 2b 01 02  	lw	s6, 32(sp)
80002518: 83 2a 41 02  	lw	s5, 36(sp)
8000251c: 03 2a 81 02  	lw	s4, 40(sp)
80002520: 83 29 c1 02  	lw	s3, 44(sp)
80002524: 03 29 01 03  	lw	s2, 48(sp)
80002528: 83 24 41 03  	lw	s1, 52(sp)
8000252c: 03 24 81 03  	lw	s0, 56(sp)
80002530: 83 20 c1 03  	lw	ra, 60(sp)
80002534: 13 01 01 04  	addi	sp, sp, 64
80002538: 67 80 00 00  	ret

8000253c <_snrt_init_team>:
;     team->base.root = team;
8000253c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002540: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002544: 03 23 87 00  	lw	t1, 8(a4)
80002548: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000254c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002550: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002554: 83 22 47 00  	lw	t0, 4(a4)
80002558: 33 88 08 03  	mul	a6, a7, a6
8000255c: 33 05 58 02  	mul	a0, a6, t0
80002560: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002564: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002568: 33 85 68 40  	sub	a0, a7, t1
8000256c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002570: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002574: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002578: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000257c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002580: 03 25 87 01  	lw	a0, 24(a4)
80002584: b7 05 00 10  	lui	a1, 65536
80002588: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000258c: 23 a2 07 02  	sw	zero, 36(a5)
80002590: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002594: 03 25 07 02  	lw	a0, 32(a4)
80002598: 83 25 47 02  	lw	a1, 36(a4)
8000259c: 23 a4 a7 02  	sw	a0, 40(a5)
800025a0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800025a4: 23 a8 c7 02  	sw	a2, 48(a5)
800025a8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800025ac: 23 ac d7 02  	sw	a3, 56(a5)
800025b0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800025b4: 03 25 07 01  	lw	a0, 16(a4)
800025b8: 33 08 a6 00  	add	a6, a2, a0
800025bc: 93 05 08 19  	addi	a1, a6, 400
800025c0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800025c4: b3 32 a8 00  	sltu	t0, a6, a0
800025c8: 93 55 15 00  	srli	a1, a0, 1
800025cc: 33 03 b8 00  	add	t1, a6, a1
800025d0: b3 35 03 01  	sltu	a1, t1, a6
800025d4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800025d8: 23 a0 67 04  	sw	t1, 64(a5)
800025dc: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800025e0: 13 15 15 00  	slli	a0, a0, 1
800025e4: b3 05 c5 00  	add	a1, a0, a2
800025e8: 33 b5 a5 00  	sltu	a0, a1, a0
800025ec: 23 a4 b7 04  	sw	a1, 72(a5)
800025f0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800025f4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800025f8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800025fc: 37 05 00 00  	lui	a0, 0
80002600: 33 05 45 00  	add	a0, a0, tp
80002604: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002608: 03 a5 07 00  	lw	a0, 0(a5)
8000260c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002610: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002614: b3 85 b8 40  	sub	a1, a7, a1
80002618: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000261c: b7 05 00 00  	lui	a1, 0
80002620: b3 85 45 00  	add	a1, a1, tp
80002624: 23 a2 a5 00  	sw	a0, 4(a1)
80002628: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000262c: 33 85 a8 02  	mul	a0, a7, a0

80002630 <.LBB0_1>:
80002630: 97 15 00 00  	auipc	a1, 1
80002634: 93 85 45 9b  	addi	a1, a1, -1612
80002638: 33 05 b5 00  	add	a0, a0, a1
8000263c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002640: 83 28 07 03  	lw	a7, 48(a4)
80002644: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002648: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000264c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002650: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002654: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002658: 13 05 76 00  	addi	a0, a2, 7
8000265c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002660: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002664: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002668: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000266c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002670: 03 a5 05 00  	lw	a0, 0(a1)
80002674: 13 05 f5 44  	addi	a0, a0, 1103
80002678: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000267c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002680: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002684: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002688: 37 05 00 00  	lui	a0, 0
8000268c: 33 05 45 00  	add	a0, a0, tp
80002690: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002694: 37 05 00 00  	lui	a0, 0
80002698: 33 05 45 00  	add	a0, a0, tp
8000269c: 23 26 e5 00  	sw	a4, 12(a0)
; }
800026a0: 67 80 00 00  	ret

800026a4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800026a4: 37 05 00 00  	lui	a0, 0
800026a8: 33 05 45 00  	add	a0, a0, tp
800026ac: 03 25 05 00  	lw	a0, 0(a0)
800026b0: 03 25 05 00  	lw	a0, 0(a0)
800026b4: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800026b8: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800026bc: 33 85 a5 40  	sub	a0, a1, a0
800026c0: 67 80 00 00  	ret

800026c4 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800026c4: 37 05 00 00  	lui	a0, 0
800026c8: 33 05 45 00  	add	a0, a0, tp
800026cc: 03 25 05 00  	lw	a0, 0(a0)
800026d0: 03 25 05 00  	lw	a0, 0(a0)
800026d4: 03 25 05 07  	lw	a0, 112(a0)
800026d8: 67 80 00 00  	ret

800026dc <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800026dc: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800026e0: 63 44 05 00  	bltz	a0, 0x800026e8 <__snrt_isr+0xc>
;         while (1)
800026e4: 6f 00 00 00  	j	0x800026e4 <__snrt_isr+0x8>
800026e8: b7 05 00 80  	lui	a1, 524288
800026ec: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800026f0: 33 75 b5 00  	and	a0, a0, a1
800026f4: 13 05 d5 ff  	addi	a0, a0, -3
800026f8: 93 55 25 00  	srli	a1, a0, 2
800026fc: 13 15 e5 01  	slli	a0, a0, 30
80002700: 33 65 b5 00  	or	a0, a0, a1
80002704: 93 05 40 00  	addi	a1, zero, 4
80002708: 63 0a b5 06  	beq	a0, a1, 0x8000277c <.LBB1_7+0x58>
8000270c: 63 1a 05 08  	bnez	a0, 0x800027a0 <.LBB1_7+0x7c>
80002710: 37 05 00 00  	lui	a0, 0
80002714: 33 05 45 00  	add	a0, a0, tp
80002718: 03 25 05 00  	lw	a0, 0(a0)
8000271c: 03 25 05 00  	lw	a0, 0(a0)
80002720: f3 25 40 f1  	csrr	a1, mhartid

80002724 <.LBB1_7>:
;     asm volatile(
80002724: 17 16 00 00  	auipc	a2, 1
80002728: 13 06 c6 8b  	addi	a2, a2, -1860
8000272c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002730: 93 06 06 00  	mv	a3, a2
80002734: 93 02 10 00  	addi	t0, zero, 1
80002738: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
8000273c: e3 9e 02 fe  	bnez	t0, 0x80002738 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002740: b7 06 00 00  	lui	a3, 0
80002744: b3 86 46 00  	add	a3, a3, tp
80002748: 83 a6 86 00  	lw	a3, 8(a3)
8000274c: 33 85 a5 40  	sub	a0, a1, a0
80002750: 93 55 35 00  	srli	a1, a0, 3
80002754: 93 f5 c5 ff  	andi	a1, a1, -4
80002758: b3 85 b6 00  	add	a1, a3, a1
8000275c: 83 a6 05 00  	lw	a3, 0(a1)
80002760: 13 07 10 00  	addi	a4, zero, 1
80002764: 33 15 a7 00  	sll	a0, a4, a0
80002768: 13 45 f5 ff  	not	a0, a0
8000276c: 33 f5 a6 00  	and	a0, a3, a0
80002770: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002774: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002778: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000277c: 37 05 00 00  	lui	a0, 0
80002780: 33 05 45 00  	add	a0, a0, tp
80002784: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002788: b7 05 00 00  	lui	a1, 0
8000278c: b3 85 45 00  	add	a1, a1, tp
80002790: 83 a5 c5 00  	lw	a1, 12(a1)
80002794: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002798: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000279c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800027a0: 67 80 00 00  	ret

Disassembly of section .init:

800027b0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800027b0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800027b4: 93 81 81 f1  	addi	gp, gp, -232

800027b8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800027b8: 97 00 00 00  	auipc	ra, 0
800027bc: e7 80 40 3c  	jalr	964(ra)

800027c0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800027c0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800027c4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800027c8: 97 00 00 00  	auipc	ra, 0
800027cc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800027d0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800027d4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800027d8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800027dc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800027e0: 63 92 02 02  	bnez	t0, 0x80002804 <snrt.crt0.init_registers>

800027e4 <.Lpcrel_hi0>:
;     la        t0, _edata
800027e4: 97 02 00 00  	auipc	t0, 0
800027e8: 93 82 c2 7f  	addi	t0, t0, 2044

800027ec <.Lpcrel_hi1>:
;     la        t1, _end
800027ec: 17 03 00 00  	auipc	t1, 0
800027f0: 13 03 83 7f  	addi	t1, t1, 2040
;     bge       t0, t1, 2f
800027f4: 63 d8 62 00  	bge	t0, t1, 0x80002804 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800027f8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800027fc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002800: e3 cc 62 fe  	blt	t0, t1, 0x800027f8 <.Lpcrel_hi1+0xc>

80002804 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002804: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002808: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000280c: 63 82 02 08  	beqz	t0, 0x80002890 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002810: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002814: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002818: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000281c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002820: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002824: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002828: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000282c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002830: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002834: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002838: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000283c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002840: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002844: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002848: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000284c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002850: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002854: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002858: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000285c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002860: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002864: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002868: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000286c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002870: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002874: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002878: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000287c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002880: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002884: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002888: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000288c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002890 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002890: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002894: 23 a0 06 00  	sw	zero, 0(a3)

80002898 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002898: 97 02 00 00  	auipc	t0, 0
8000289c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800028a0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800028a4: 93 87 06 00  	mv	a5, a3

800028a8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800028a8: 97 03 00 00  	auipc	t2, 0
800028ac: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
800028b0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800028b4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800028b8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800028bc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800028c0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800028c4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800028c8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800028cc: b3 86 66 40  	sub	a3, a3, t1

800028d0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800028d0: 97 02 00 00  	auipc	t0, 0
800028d4: 93 82 82 5f  	addi	t0, t0, 1528

800028d8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800028d8: 17 03 00 00  	auipc	t1, 0
800028dc: 13 03 03 5f  	addi	t1, t1, 1520

800028e0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800028e0: 97 03 00 00  	auipc	t2, 0
800028e4: 93 83 83 5e  	addi	t2, t2, 1512

800028e8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800028e8: 17 0e 00 00  	auipc	t3, 0
800028ec: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800028f0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800028f4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800028f8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800028fc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002900: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002904: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002908: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000290c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002910: 63 dc 62 00  	bge	t0, t1, 0x80002928 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002914: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002918: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000291c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002920: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002924: e3 c8 62 fe  	blt	t0, t1, 0x80002914 <.Lpcrel_hi7+0x2c>

80002928 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002928: 97 02 00 00  	auipc	t0, 0
8000292c: 93 82 02 5a  	addi	t0, t0, 1440

80002930 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002930: 17 03 00 00  	auipc	t1, 0
80002934: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80002938: 63 da 62 00  	bge	t0, t1, 0x8000294c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000293c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002940: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002944: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002948: e3 ca 72 fe  	blt	t0, t2, 0x8000293c <.Lpcrel_hi9+0xc>

8000294c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000294c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002950: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002954: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002958: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000295c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002960: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002964: 97 00 00 00  	auipc	ra, 0
80002968: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000296c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002970: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002974: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002978: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000297c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002980: 13 01 41 01  	addi	sp, sp, 20

80002984 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002984: 97 02 00 00  	auipc	t0, 0
80002988: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000298c: 73 90 52 30  	csrw	mtvec, t0

80002990 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002990: 97 00 00 00  	auipc	ra, 0
80002994: e7 80 00 22  	jalr	544(ra)

80002998 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002998: 97 e0 ff ff  	auipc	ra, 1048574
8000299c: e7 80 c0 c9  	jalr	-868(ra)
;     mv        s0, a0 # store return value in s0
800029a0: 13 04 05 00  	mv	s0, a0

800029a4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800029a4: 97 00 00 00  	auipc	ra, 0
800029a8: e7 80 c0 20  	jalr	524(ra)

800029ac <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800029ac: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800029b0: 97 00 00 00  	auipc	ra, 0
800029b4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800029b8: 73 00 50 10  	wfi	
;     j       1b
800029bc: 6f f0 df ff  	j	0x800029b8 <snrt.crt0.end+0xc>

800029c0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800029c0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800029c4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800029c8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800029cc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800029d0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800029d4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800029d8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800029dc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800029e0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800029e4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800029e8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800029ec: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800029f0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800029f4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800029f8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800029fc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002a00: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002a04: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002a08: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002a0c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002a10: 63 84 02 08  	beqz	t0, 0x80002a98 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002a14: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002a18: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002a1c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002a20: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002a24: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002a28: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002a2c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002a30: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002a34: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002a38: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002a3c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002a40: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002a44: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002a48: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002a4c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002a50: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002a54: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002a58: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002a5c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002a60: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002a64: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002a68: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002a6c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002a70: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002a74: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002a78: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002a7c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002a80: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002a84: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002a88: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002a8c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002a90: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002a94: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002a98: 97 00 00 00  	auipc	ra, 0
80002a9c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80002aa0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002aa4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002aa8: 63 84 02 08  	beqz	t0, 0x80002b30 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002aac: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002ab0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002ab4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002ab8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002abc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002ac0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002ac4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002ac8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002acc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002ad0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002ad4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002ad8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002adc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002ae0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002ae4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002ae8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002aec: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80002af0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80002af4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80002af8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80002afc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80002b00: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80002b04: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80002b08: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80002b0c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80002b10: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80002b14: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80002b18: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80002b1c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80002b20: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80002b24: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80002b28: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80002b2c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80002b30: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80002b34: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80002b38: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80002b3c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80002b40: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80002b44: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80002b48: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80002b4c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80002b50: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80002b54: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80002b58: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80002b5c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80002b60: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80002b64: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80002b68: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80002b6c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80002b70: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80002b74: 13 01 01 05  	addi	sp, sp, 80
;     mret
80002b78: 73 00 20 30  	mret	

80002b7c <_snrt_init_core_info>:
;     mv        a4, a1
80002b7c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80002b80: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80002b84: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80002b88: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80002b8c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80002b90: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80002b94: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80002b98: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80002b9c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80002ba0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80002ba4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80002ba8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80002bac: 67 80 00 00  	ret

80002bb0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80002bb0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80002bb4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80002bb8: 97 00 00 00  	auipc	ra, 0
80002bbc: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80002bc0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80002bc4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80002bc8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80002bcc: 13 01 41 00  	addi	sp, sp, 4
;     ret
80002bd0: 67 80 00 00  	ret

80002bd4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80002bd4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80002bd8: 67 80 00 00  	ret

80002bdc <_snrt_exit>:
;     addi      sp, sp, -8
80002bdc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80002be0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80002be4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80002be8: 97 00 00 00  	auipc	ra, 0
80002bec: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80002bf0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80002bf4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80002bf8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80002bfc: 63 1c 05 00  	bnez	a0, 0x80002c14 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80002c00: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80002c04: 93 e2 12 00  	ori	t0, t0, 1

80002c08 <.Lpcrel_hi11>:
;     la        t1, tohost
80002c08: 17 03 00 00  	auipc	t1, 0
80002c0c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80002c10: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80002c14: 67 80 00 00  	ret
