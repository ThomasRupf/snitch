
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET--2mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00005478 80000000 TEXT
  2 .init             00000468 80005480 TEXT
  3 .rodata           00000238 800058e8 DATA
  4 .htif             00000048 80005b40 DATA
  5 .tdata            00000000 80005b88 DATA
  6 .tbss             00000010 80005b88 BSS
  7 .tbssend          00000000 80005b98 DATA
  8 .sdata            000000e8 80005b98 DATA
  9 .data             00000000 80005c80 DATA
 10 .sbss             00000004 80005c80 BSS
 11 .bss              00000000 80005c84 BSS
 12 .dram             00000000 80005c84 DATA
 13 .debug_info       000036f7 00000000 
 14 .debug_abbrev     00000bf6 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003964 00000000 
 17 .debug_loc        0000417a 00000000 
 18 .debug_ranges     00000380 00000000 
 19 .debug_str        00000b05 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003380 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000097e 00000000 


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
800006a0: 6f 20 10 6c  	j	0x80003560 <.LBB0_141+0x10>
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
800006d4: 93 0c 00 00  	mv	s9, zero
800006d8: 6f 00 00 01  	j	0x800006e8 <main+0xb4>
;     void *ret = (void *)alloc->next;
800006dc: 93 8c 07 00  	mv	s9, a5
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
80000734: 93 00 00 00  	mv	ra, zero
80000738: 6f 00 00 01  	j	0x80000748 <main+0x114>
;     void *ret = (void *)alloc->next;
8000073c: 93 80 07 00  	mv	ra, a5
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
80000760: 23 2c f1 00  	sw	a5, 24(sp)
;   for (i = 0; i < ni; i++)
80000764: 13 55 44 01  	srli	a0, s0, 20
80000768: 33 35 a0 00  	snez	a0, a0
8000076c: b7 f5 11 00  	lui	a1, 287
80000770: 93 85 95 50  	addi	a1, a1, 1289
80000774: b3 35 b4 00  	sltu	a1, s0, a1
80000778: b3 75 b5 00  	and	a1, a0, a1

8000077c <.LBB0_128>:
8000077c: 17 55 00 00  	auipc	a0, 5
80000780: 13 05 c5 41  	addi	a0, a0, 1052
80000784: 23 26 81 02  	sw	s0, 44(sp)
80000788: 23 28 b1 00  	sw	a1, 16(sp)
8000078c: 13 08 00 00  	mv	a6, zero
80000790: 93 08 00 00  	mv	a7, zero
80000794: 63 8c 05 24  	beqz	a1, 0x800009ec <.LBB0_128+0x270>
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
800009e0: e3 92 56 e4  	bne	a3, t0, 0x80000824 <.LBB0_128+0xa8>
800009e4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009e8: 6f 00 80 22  	j	0x80000c10 <.LBB0_128+0x494>
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
80000c0c: e3 1c 77 e2  	bne	a4, t2, 0x80000a44 <.LBB0_128+0x2c8>
;   for (i = 0; i < nk; i++)
80000c10: 13 d5 4d 01  	srli	a0, s11, 20
80000c14: 33 35 a0 00  	snez	a0, a0
80000c18: b7 f5 11 00  	lui	a1, 287
80000c1c: 93 85 95 3a  	addi	a1, a1, 937
80000c20: b3 b5 bd 00  	sltu	a1, s11, a1
80000c24: 33 75 b5 00  	and	a0, a0, a1

80000c28 <.LBB0_129>:
80000c28: 97 5a 00 00  	auipc	s5, 5
80000c2c: 93 8a 8a f7  	addi	s5, s5, -136
80000c30: 23 24 a1 00  	sw	a0, 8(sp)
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
80000c5c: 63 04 05 2a  	beqz	a0, 0x80000f04 <.LBB0_129+0x2dc>
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
80000ef8: e3 1e 54 dd  	bne	s0, s5, 0x80000cd4 <.LBB0_129+0xac>
80000efc: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f00: 6f 00 c0 26  	j	0x8000116c <.LBB0_129+0x544>
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
80001168: e3 1a 64 dd  	bne	s0, s6, 0x80000f3c <.LBB0_129+0x314>
8000116c: 23 24 b1 03  	sw	s11, 40(sp)
80001170: 23 2a 91 01  	sw	s9, 20(sp)
;   for (i = 0; i < nj; i++)
80001174: 13 d5 40 01  	srli	a0, ra, 20
80001178: 33 35 a0 00  	snez	a0, a0
8000117c: b7 f5 11 00  	lui	a1, 287
80001180: 93 85 95 28  	addi	a1, a1, 649
80001184: b3 b5 b0 00  	sltu	a1, ra, a1
80001188: b3 75 b5 00  	and	a1, a0, a1

8000118c <.LBB0_130>:
8000118c: 97 52 00 00  	auipc	t0, 5
80001190: 93 82 c2 a1  	addi	t0, t0, -1508
80001194: 23 2e 11 00  	sw	ra, 28(sp)
80001198: 23 26 b1 00  	sw	a1, 12(sp)
8000119c: 63 86 05 40  	beqz	a1, 0x800015a8 <.LBB0_130+0x41c>
800011a0: 13 04 00 00  	mv	s0, zero
800011a4: 13 06 00 00  	mv	a2, zero
800011a8: 13 07 00 00  	mv	a4, zero
800011ac: 93 04 00 00  	mv	s1, zero
800011b0: 13 05 00 00  	mv	a0, zero
800011b4: 93 05 80 00  	addi	a1, zero, 8
800011b8: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < nj; i++)
800011bc: 93 06 00 04  	addi	a3, zero, 64
800011c0: 93 07 00 0c  	addi	a5, zero, 192
800011c4: ab 20 d8 00  	scfgw	a6, a3
800011c8: ab a0 f5 00  	scfgw	a1, a5
800011cc: 13 08 10 01  	addi	a6, zero, 17
800011d0: 93 06 00 06  	addi	a3, zero, 96
800011d4: 93 07 00 0e  	addi	a5, zero, 224
800011d8: ab 20 d8 00  	scfgw	a6, a3
800011dc: ab a0 f5 00  	scfgw	a1, a5
800011e0: 93 05 00 02  	addi	a1, zero, 32
800011e4: ab 20 b0 00  	scfgw	zero, a1
800011e8: 2b a0 00 3a  	scfgwi	ra, 928
800011ec: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800011f0: 93 07 10 00  	addi	a5, zero, 1
800011f4: b7 b5 aa aa  	lui	a1, 699051
800011f8: 93 85 b5 aa  	addi	a1, a1, -1365
800011fc: 93 0d 80 01  	addi	s11, zero, 24
80001200: 87 b1 02 00  	fld	ft3, 0(t0)
80001204: 13 0a 10 00  	addi	s4, zero, 1
80001208: 93 00 10 00  	addi	ra, zero, 1
8000120c: 93 06 10 00  	addi	a3, zero, 1
80001210: 23 26 d1 08  	sw	a3, 140(sp)
80001214: 93 0a 10 00  	addi	s5, zero, 1
80001218: 93 06 10 00  	addi	a3, zero, 1
8000121c: 23 24 d1 08  	sw	a3, 136(sp)
80001220: 13 0b 10 00  	addi	s6, zero, 1
80001224: 93 0b 10 00  	addi	s7, zero, 1
80001228: 13 0c 10 00  	addi	s8, zero, 1
8000122c: 93 06 10 00  	addi	a3, zero, 1
80001230: 23 22 d1 08  	sw	a3, 132(sp)
80001234: 93 0c 10 00  	addi	s9, zero, 1
80001238: 13 0d 10 00  	addi	s10, zero, 1
8000123c: 13 08 10 00  	addi	a6, zero, 1
80001240: 93 02 10 00  	addi	t0, zero, 1
80001244: 13 03 10 00  	addi	t1, zero, 1
80001248: 93 09 10 00  	addi	s3, zero, 1
8000124c: 93 03 10 00  	addi	t2, zero, 1
80001250: 13 0e 10 00  	addi	t3, zero, 1
80001254: 93 08 10 00  	addi	a7, zero, 1
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
800012c4: 83 26 c1 08  	lw	a3, 140(sp)
800012c8: 33 84 86 40  	sub	s0, a3, s0
800012cc: d3 03 04 d2  	fcvt.d.w	ft7, s0
800012d0: 33 b4 ba 02  	mulhu	s0, s5, a1
800012d4: 13 54 44 00  	srli	s0, s0, 4
800012d8: 33 04 b4 03  	mul	s0, s0, s11
800012dc: 33 84 8a 40  	sub	s0, s5, s0
800012e0: 53 05 04 d2  	fcvt.d.w	fa0, s0
800012e4: 33 b4 b4 02  	mulhu	s0, s1, a1
800012e8: 13 54 44 00  	srli	s0, s0, 4
800012ec: 33 04 b4 03  	mul	s0, s0, s11
800012f0: 83 20 81 08  	lw	ra, 136(sp)
800012f4: 33 84 80 40  	sub	s0, ra, s0
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
8000138c: 33 b4 b2 02  	mulhu	s0, t0, a1
80001390: 13 54 44 00  	srli	s0, s0, 4
80001394: 33 04 b4 03  	mul	s0, s0, s11
80001398: 33 84 82 40  	sub	s0, t0, s0
8000139c: d3 0e 04 d2  	fcvt.d.w	ft9, s0
800013a0: 33 34 b3 02  	mulhu	s0, t1, a1
800013a4: 13 54 44 00  	srli	s0, s0, 4
800013a8: 33 04 b4 03  	mul	s0, s0, s11
800013ac: 33 04 83 40  	sub	s0, t1, s0
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
800013f0: 33 b4 b8 02  	mulhu	s0, a7, a1
800013f4: 13 54 44 00  	srli	s0, s0, 4
800013f8: 33 04 b4 03  	mul	s0, s0, s11
800013fc: 33 84 88 40  	sub	s0, a7, s0
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
80001524: 93 88 58 01  	addi	a7, a7, 21
80001528: 13 0e 4e 01  	addi	t3, t3, 20
8000152c: 93 83 33 01  	addi	t2, t2, 19
80001530: 93 89 29 01  	addi	s3, s3, 18
80001534: 13 03 13 01  	addi	t1, t1, 17
80001538: 93 82 02 01  	addi	t0, t0, 16
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
80001564: 93 80 80 00  	addi	ra, ra, 8
80001568: 23 24 11 08  	sw	ra, 136(sp)
8000156c: 83 20 c1 07  	lw	ra, 124(sp)
80001570: 93 84 84 00  	addi	s1, s1, 8
80001574: 93 8a 7a 00  	addi	s5, s5, 7
80001578: 93 86 66 00  	addi	a3, a3, 6
8000157c: 23 26 d1 08  	sw	a3, 140(sp)
80001580: 13 07 67 00  	addi	a4, a4, 6
80001584: 93 80 50 00  	addi	ra, ra, 5
80001588: 13 0a 4a 00  	addi	s4, s4, 4
8000158c: 13 06 46 00  	addi	a2, a2, 4
80001590: 93 87 37 00  	addi	a5, a5, 3
80001594: 13 04 34 00  	addi	s0, s0, 3
80001598: 93 06 50 1d  	addi	a3, zero, 469
8000159c: e3 16 d9 cc  	bne	s2, a3, 0x80001268 <.LBB0_130+0xdc>
800015a0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015a4: 6f 00 40 4e  	j	0x80001a88 <.LBB0_130+0x8fc>
800015a8: 13 0d 00 00  	mv	s10, zero
800015ac: 93 04 00 00  	mv	s1, zero
800015b0: 13 04 00 00  	mv	s0, zero
800015b4: 13 07 00 00  	mv	a4, zero
800015b8: 93 0b 00 00  	mv	s7, zero
;   for (i = 0; i < nj; i++)
800015bc: 13 86 00 06  	addi	a2, ra, 96
800015c0: 13 05 10 00  	addi	a0, zero, 1
800015c4: 23 2e a1 06  	sw	a0, 124(sp)
800015c8: b7 b5 aa aa  	lui	a1, 699051
800015cc: 93 86 b5 aa  	addi	a3, a1, -1365
800015d0: 87 b1 02 00  	fld	ft3, 0(t0)
800015d4: 37 55 a5 3f  	lui	a0, 260693
800015d8: 13 05 55 55  	addi	a0, a0, 1365
800015dc: 23 22 a1 02  	sw	a0, 36(sp)
800015e0: 37 55 55 55  	lui	a0, 349525
800015e4: 13 05 55 55  	addi	a0, a0, 1365
800015e8: 23 20 a1 02  	sw	a0, 32(sp)
800015ec: 13 05 10 00  	addi	a0, zero, 1
800015f0: 23 2c a1 06  	sw	a0, 120(sp)
800015f4: 13 05 10 00  	addi	a0, zero, 1
800015f8: 23 2a a1 06  	sw	a0, 116(sp)
800015fc: 13 05 10 00  	addi	a0, zero, 1
80001600: 23 28 a1 06  	sw	a0, 112(sp)
80001604: 13 05 10 00  	addi	a0, zero, 1
80001608: 23 26 a1 06  	sw	a0, 108(sp)
8000160c: 13 05 10 00  	addi	a0, zero, 1
80001610: 23 20 a1 08  	sw	a0, 128(sp)
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
80001648: 23 28 a1 04  	sw	a0, 80(sp)
8000164c: 13 05 10 00  	addi	a0, zero, 1
80001650: 23 26 a1 08  	sw	a0, 140(sp)
80001654: 13 05 10 00  	addi	a0, zero, 1
80001658: 23 26 a1 04  	sw	a0, 76(sp)
8000165c: 13 05 10 00  	addi	a0, zero, 1
80001660: 23 24 a1 04  	sw	a0, 72(sp)
80001664: 13 05 10 00  	addi	a0, zero, 1
80001668: 23 22 a1 04  	sw	a0, 68(sp)
8000166c: 13 0b 10 00  	addi	s6, zero, 1
80001670: 13 05 10 00  	addi	a0, zero, 1
80001674: 23 20 a1 04  	sw	a0, 64(sp)
80001678: 13 05 10 00  	addi	a0, zero, 1
8000167c: 23 2e a1 02  	sw	a0, 60(sp)
80001680: 13 05 10 00  	addi	a0, zero, 1
80001684: 23 22 a1 08  	sw	a0, 132(sp)
80001688: 13 05 10 00  	addi	a0, zero, 1
8000168c: 23 24 a1 08  	sw	a0, 136(sp)
80001690: 13 05 10 00  	addi	a0, zero, 1
80001694: 23 2c a1 02  	sw	a0, 56(sp)
80001698: 93 07 80 01  	addi	a5, zero, 24
;       C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
8000169c: 23 28 61 03  	sw	s6, 48(sp)
800016a0: 23 2a a1 03  	sw	s10, 52(sp)
800016a4: b3 b5 db 02  	mulhu	a1, s7, a3
800016a8: 93 d5 45 00  	srli	a1, a1, 4
800016ac: b3 85 f5 02  	mul	a1, a1, a5
800016b0: 13 08 07 00  	mv	a6, a4
800016b4: 13 87 0b 00  	mv	a4, s7
800016b8: 03 25 81 08  	lw	a0, 136(sp)
800016bc: b3 0b b5 40  	sub	s7, a0, a1
800016c0: 53 82 0b d2  	fcvt.d.w	ft4, s7
800016c4: 93 0b 07 00  	mv	s7, a4
800016c8: 13 07 08 00  	mv	a4, a6
800016cc: 03 2d 41 03  	lw	s10, 52(sp)
800016d0: b3 35 d8 02  	mulhu	a1, a6, a3
800016d4: 93 d5 45 00  	srli	a1, a1, 4
800016d8: b3 85 f5 02  	mul	a1, a1, a5
800016dc: 03 25 41 08  	lw	a0, 132(sp)
800016e0: b3 05 b5 40  	sub	a1, a0, a1
800016e4: d3 82 05 d2  	fcvt.d.w	ft5, a1
800016e8: 03 29 01 04  	lw	s2, 64(sp)
800016ec: b3 35 d9 02  	mulhu	a1, s2, a3
800016f0: 93 d5 45 00  	srli	a1, a1, 4
800016f4: b3 85 f5 02  	mul	a1, a1, a5
800016f8: b3 05 b9 40  	sub	a1, s2, a1
800016fc: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001700: b3 35 d4 02  	mulhu	a1, s0, a3
80001704: 93 d5 45 00  	srli	a1, a1, 4
80001708: b3 85 f5 02  	mul	a1, a1, a5
8000170c: b3 05 bb 40  	sub	a1, s6, a1
80001710: d3 83 05 d2  	fcvt.d.w	ft7, a1
80001714: 03 2a 81 04  	lw	s4, 72(sp)
80001718: b3 35 da 02  	mulhu	a1, s4, a3
8000171c: 93 d5 45 00  	srli	a1, a1, 4
80001720: b3 85 f5 02  	mul	a1, a1, a5
80001724: b3 05 ba 40  	sub	a1, s4, a1
80001728: 53 85 05 d2  	fcvt.d.w	fa0, a1
8000172c: b3 b5 d4 02  	mulhu	a1, s1, a3
80001730: 93 d5 45 00  	srli	a1, a1, 4
80001734: b3 85 f5 02  	mul	a1, a1, a5
80001738: 03 25 c1 08  	lw	a0, 140(sp)
8000173c: b3 05 b5 40  	sub	a1, a0, a1
80001740: d3 85 05 d2  	fcvt.d.w	fa1, a1
80001744: 83 2c 41 05  	lw	s9, 84(sp)
80001748: b3 b5 dc 02  	mulhu	a1, s9, a3
8000174c: 93 d5 45 00  	srli	a1, a1, 4
80001750: b3 85 f5 02  	mul	a1, a1, a5
80001754: b3 85 bc 40  	sub	a1, s9, a1
80001758: 53 86 05 d2  	fcvt.d.w	fa2, a1
8000175c: 03 2f c1 05  	lw	t5, 92(sp)
80001760: b3 35 df 02  	mulhu	a1, t5, a3
80001764: 93 d5 45 00  	srli	a1, a1, 4
80001768: b3 85 f5 02  	mul	a1, a1, a5
8000176c: b3 05 bf 40  	sub	a1, t5, a1
80001770: d3 86 05 d2  	fcvt.d.w	fa3, a1
80001774: 83 20 41 06  	lw	ra, 100(sp)
80001778: b3 b5 d0 02  	mulhu	a1, ra, a3
8000177c: 93 d5 45 00  	srli	a1, a1, 4
80001780: b3 85 f5 02  	mul	a1, a1, a5
80001784: b3 85 b0 40  	sub	a1, ra, a1
80001788: 53 87 05 d2  	fcvt.d.w	fa4, a1
8000178c: b3 35 dd 02  	mulhu	a1, s10, a3
80001790: 93 d5 45 00  	srli	a1, a1, 4
80001794: b3 85 f5 02  	mul	a1, a1, a5
80001798: 83 2a 01 08  	lw	s5, 128(sp)
8000179c: b3 85 ba 40  	sub	a1, s5, a1
800017a0: d3 87 05 d2  	fcvt.d.w	fa5, a1
800017a4: 03 23 01 07  	lw	t1, 112(sp)
800017a8: b3 35 d3 02  	mulhu	a1, t1, a3
800017ac: 93 d5 45 00  	srli	a1, a1, 4
800017b0: b3 85 f5 02  	mul	a1, a1, a5
800017b4: b3 05 b3 40  	sub	a1, t1, a1
800017b8: 53 88 05 d2  	fcvt.d.w	fa6, a1
800017bc: 83 2d c1 07  	lw	s11, 124(sp)
800017c0: b3 b5 dd 02  	mulhu	a1, s11, a3
800017c4: 93 d5 45 00  	srli	a1, a1, 4
800017c8: b3 85 f5 02  	mul	a1, a1, a5
800017cc: b3 85 bd 40  	sub	a1, s11, a1
800017d0: d3 88 05 d2  	fcvt.d.w	fa7, a1
800017d4: 03 28 81 07  	lw	a6, 120(sp)
800017d8: b3 35 d8 02  	mulhu	a1, a6, a3
800017dc: 93 d5 45 00  	srli	a1, a1, 4
800017e0: b3 85 f5 02  	mul	a1, a1, a5
800017e4: b3 05 b8 40  	sub	a1, a6, a1
800017e8: 53 8e 05 d2  	fcvt.d.w	ft8, a1
800017ec: 83 22 41 07  	lw	t0, 116(sp)
800017f0: b3 b5 d2 02  	mulhu	a1, t0, a3
800017f4: 93 d5 45 00  	srli	a1, a1, 4
800017f8: b3 85 f5 02  	mul	a1, a1, a5
800017fc: b3 85 b2 40  	sub	a1, t0, a1
80001800: d3 8e 05 d2  	fcvt.d.w	ft9, a1
80001804: 83 29 c1 06  	lw	s3, 108(sp)
80001808: b3 b5 d9 02  	mulhu	a1, s3, a3
8000180c: 93 d5 45 00  	srli	a1, a1, 4
80001810: b3 85 f5 02  	mul	a1, a1, a5
80001814: b3 85 b9 40  	sub	a1, s3, a1
80001818: 53 8f 05 d2  	fcvt.d.w	ft10, a1
8000181c: 83 23 81 06  	lw	t2, 104(sp)
80001820: b3 b5 d3 02  	mulhu	a1, t2, a3
80001824: 93 d5 45 00  	srli	a1, a1, 4
80001828: b3 85 f5 02  	mul	a1, a1, a5
8000182c: b3 85 b3 40  	sub	a1, t2, a1
80001830: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001834: 83 2e 01 06  	lw	t4, 96(sp)
80001838: b3 b5 de 02  	mulhu	a1, t4, a3
8000183c: 93 d5 45 00  	srli	a1, a1, 4
80001840: b3 85 f5 02  	mul	a1, a1, a5
80001844: b3 85 be 40  	sub	a1, t4, a1
80001848: 53 84 05 d2  	fcvt.d.w	fs0, a1
8000184c: 03 2c 81 05  	lw	s8, 88(sp)
80001850: b3 35 dc 02  	mulhu	a1, s8, a3
80001854: 93 d5 45 00  	srli	a1, a1, 4
80001858: b3 85 f5 02  	mul	a1, a1, a5
8000185c: b3 05 bc 40  	sub	a1, s8, a1
80001860: d3 84 05 d2  	fcvt.d.w	fs1, a1
80001864: 03 25 01 05  	lw	a0, 80(sp)
80001868: b3 35 d5 02  	mulhu	a1, a0, a3
8000186c: 93 d5 45 00  	srli	a1, a1, 4
80001870: b3 85 f5 02  	mul	a1, a1, a5
80001874: b3 05 b5 40  	sub	a1, a0, a1
80001878: 53 89 05 d2  	fcvt.d.w	fs2, a1
8000187c: 03 2e c1 04  	lw	t3, 76(sp)
80001880: b3 35 de 02  	mulhu	a1, t3, a3
80001884: 93 d5 45 00  	srli	a1, a1, 4
80001888: b3 85 f5 02  	mul	a1, a1, a5
8000188c: b3 05 be 40  	sub	a1, t3, a1
80001890: d3 89 05 d2  	fcvt.d.w	fs3, a1
80001894: 83 2f 41 04  	lw	t6, 68(sp)
80001898: b3 b5 df 02  	mulhu	a1, t6, a3
8000189c: 93 d5 45 00  	srli	a1, a1, 4
800018a0: b3 85 f5 02  	mul	a1, a1, a5
800018a4: b3 85 bf 40  	sub	a1, t6, a1
800018a8: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800018ac: 03 2b c1 03  	lw	s6, 60(sp)
800018b0: b3 35 db 02  	mulhu	a1, s6, a3
800018b4: 93 d5 45 00  	srli	a1, a1, 4
800018b8: b3 85 f5 02  	mul	a1, a1, a5
800018bc: b3 05 bb 40  	sub	a1, s6, a1
800018c0: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800018c4: 83 28 81 03  	lw	a7, 56(sp)
800018c8: b3 b5 d8 02  	mulhu	a1, a7, a3
800018cc: 93 d5 45 00  	srli	a1, a1, 4
800018d0: b3 85 f5 02  	mul	a1, a1, a5
800018d4: b3 85 b8 40  	sub	a1, a7, a1
800018d8: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800018dc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800018e0: 27 30 46 fa  	fsd	ft4, -96(a2)
800018e4: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800018e8: 27 34 46 fa  	fsd	ft4, -88(a2)
800018ec: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800018f0: 27 38 46 fa  	fsd	ft4, -80(a2)
800018f4: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800018f8: 27 3c 46 fa  	fsd	ft4, -72(a2)
800018fc: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001900: 27 30 46 fc  	fsd	ft4, -64(a2)
80001904: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001908: 27 34 46 fc  	fsd	ft4, -56(a2)
8000190c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001910: 27 38 46 fc  	fsd	ft4, -48(a2)
80001914: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001918: 27 3c 46 fc  	fsd	ft4, -40(a2)
8000191c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001920: 27 30 46 fe  	fsd	ft4, -32(a2)
80001924: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001928: 27 34 46 fe  	fsd	ft4, -24(a2)
8000192c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001930: 27 38 46 fe  	fsd	ft4, -16(a2)
80001934: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001938: 27 3c 46 fe  	fsd	ft4, -8(a2)
8000193c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001940: 27 30 46 00  	fsd	ft4, 0(a2)
80001944: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001948: 27 34 46 00  	fsd	ft4, 8(a2)
8000194c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001950: 27 38 46 00  	fsd	ft4, 16(a2)
80001954: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001958: 27 3c 46 00  	fsd	ft4, 24(a2)
8000195c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001960: 27 30 46 02  	fsd	ft4, 32(a2)
80001964: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001968: 27 34 46 02  	fsd	ft4, 40(a2)
8000196c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001970: 27 38 46 02  	fsd	ft4, 48(a2)
80001974: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001978: 27 3c 46 02  	fsd	ft4, 56(a2)
8000197c: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001980: 27 30 46 04  	fsd	ft4, 64(a2)
80001984: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80001988: 27 38 46 04  	fsd	ft4, 80(a2)
8000198c: 83 25 41 02  	lw	a1, 36(sp)
80001990: 23 26 b6 04  	sw	a1, 76(a2)
80001994: 83 25 01 02  	lw	a1, 32(sp)
80001998: 23 24 b6 04  	sw	a1, 72(a2)
8000199c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
800019a0: 27 3c 46 04  	fsd	ft4, 88(a2)
;   for (i = 0; i < nj; i++)
800019a4: 93 88 a8 01  	addi	a7, a7, 26
800019a8: 83 25 81 08  	lw	a1, 136(sp)
800019ac: 93 85 35 00  	addi	a1, a1, 3
800019b0: 23 24 b1 08  	sw	a1, 136(sp)
800019b4: 93 8b 3b 00  	addi	s7, s7, 3
800019b8: 83 25 41 08  	lw	a1, 132(sp)
800019bc: 93 85 45 00  	addi	a1, a1, 4
800019c0: 23 22 b1 08  	sw	a1, 132(sp)
800019c4: 13 07 47 00  	addi	a4, a4, 4
800019c8: 13 0b 9b 01  	addi	s6, s6, 25
800019cc: 23 2e 61 03  	sw	s6, 60(sp)
800019d0: 03 2b 01 03  	lw	s6, 48(sp)
800019d4: 13 09 59 00  	addi	s2, s2, 5
800019d8: 23 20 21 05  	sw	s2, 64(sp)
800019dc: 13 0b 6b 00  	addi	s6, s6, 6
800019e0: 13 04 64 00  	addi	s0, s0, 6
800019e4: 93 8f 7f 01  	addi	t6, t6, 23
800019e8: 23 22 f1 05  	sw	t6, 68(sp)
800019ec: 13 0a 7a 00  	addi	s4, s4, 7
800019f0: 23 24 41 05  	sw	s4, 72(sp)
800019f4: 13 0e 6e 01  	addi	t3, t3, 22
800019f8: 23 26 c1 05  	sw	t3, 76(sp)
800019fc: 83 25 c1 08  	lw	a1, 140(sp)
80001a00: 93 85 85 00  	addi	a1, a1, 8
80001a04: 23 26 b1 08  	sw	a1, 140(sp)
80001a08: 93 84 84 00  	addi	s1, s1, 8
80001a0c: 13 05 55 01  	addi	a0, a0, 21
80001a10: 23 28 a1 04  	sw	a0, 80(sp)
80001a14: 93 8c 9c 00  	addi	s9, s9, 9
80001a18: 23 2a 91 05  	sw	s9, 84(sp)
80001a1c: 13 0c 4c 01  	addi	s8, s8, 20
80001a20: 23 2c 81 05  	sw	s8, 88(sp)
80001a24: 13 0f af 00  	addi	t5, t5, 10
80001a28: 23 2e e1 05  	sw	t5, 92(sp)
80001a2c: 93 8e 3e 01  	addi	t4, t4, 19
80001a30: 23 20 d1 07  	sw	t4, 96(sp)
80001a34: 93 80 b0 00  	addi	ra, ra, 11
80001a38: 23 22 11 06  	sw	ra, 100(sp)
80001a3c: 93 83 23 01  	addi	t2, t2, 18
80001a40: 23 24 71 06  	sw	t2, 104(sp)
80001a44: 93 8a ca 00  	addi	s5, s5, 12
80001a48: 23 20 51 09  	sw	s5, 128(sp)
80001a4c: 13 0d cd 00  	addi	s10, s10, 12
80001a50: 93 89 19 01  	addi	s3, s3, 17
80001a54: 23 26 31 07  	sw	s3, 108(sp)
80001a58: 13 03 d3 00  	addi	t1, t1, 13
80001a5c: 23 28 61 06  	sw	t1, 112(sp)
80001a60: 93 82 02 01  	addi	t0, t0, 16
80001a64: 23 2a 51 06  	sw	t0, 116(sp)
80001a68: 13 06 06 0c  	addi	a2, a2, 192
80001a6c: 13 08 f8 00  	addi	a6, a6, 15
80001a70: 23 2c 01 07  	sw	a6, 120(sp)
80001a74: 93 8d ed 00  	addi	s11, s11, 14
80001a78: 23 2e b1 07  	sw	s11, 124(sp)
80001a7c: 93 05 50 1d  	addi	a1, zero, 469
80001a80: 23 2c 11 03  	sw	a7, 56(sp)
80001a84: e3 9c b8 c0  	bne	a7, a1, 0x8000169c <.LBB0_130+0x510>
80001a88: 83 20 81 01  	lw	ra, 24(sp)
;   for (i = 0; i < ni; i++)
80001a8c: 13 d5 40 01  	srli	a0, ra, 20
80001a90: 33 35 a0 00  	snez	a0, a0
80001a94: b7 f5 11 00  	lui	a1, 287
80001a98: 93 85 95 40  	addi	a1, a1, 1033
80001a9c: b3 b5 b0 00  	sltu	a1, ra, a1
80001aa0: 33 75 b5 00  	and	a0, a0, a1

80001aa4 <.LBB0_131>:
80001aa4: 17 46 00 00  	auipc	a2, 4
80001aa8: 13 06 c6 10  	addi	a2, a2, 268
80001aac: 23 22 a1 08  	sw	a0, 132(sp)
80001ab0: 63 06 05 3a  	beqz	a0, 0x80001e5c <.LBB0_131+0x3b8>
80001ab4: 93 08 00 00  	mv	a7, zero
80001ab8: 93 0f 00 00  	mv	t6, zero
80001abc: 13 0a 00 00  	mv	s4, zero
80001ac0: 93 0a 00 00  	mv	s5, zero
80001ac4: 13 0b 00 00  	mv	s6, zero
80001ac8: 13 08 00 00  	mv	a6, zero
80001acc: 93 02 00 00  	mv	t0, zero
80001ad0: 13 03 00 00  	mv	t1, zero
80001ad4: 93 03 00 00  	mv	t2, zero
80001ad8: 13 0e 00 00  	mv	t3, zero
80001adc: 93 0e 00 00  	mv	t4, zero
80001ae0: 13 0f 00 00  	mv	t5, zero
80001ae4: 93 09 00 00  	mv	s3, zero
80001ae8: 93 0b 00 00  	mv	s7, zero
80001aec: 13 0c 00 00  	mv	s8, zero
80001af0: 93 0c 00 00  	mv	s9, zero
80001af4: 93 0d 00 00  	mv	s11, zero
80001af8: 13 09 00 00  	mv	s2, zero
80001afc: 93 07 00 00  	mv	a5, zero
80001b00: 93 04 00 00  	mv	s1, zero
80001b04: 13 07 06 00  	mv	a4, a2
80001b08: 13 06 00 00  	mv	a2, zero
80001b0c: 93 05 00 00  	mv	a1, zero
80001b10: 93 06 00 00  	mv	a3, zero
80001b14: 13 05 80 00  	addi	a0, zero, 8
80001b18: 13 0d 70 01  	addi	s10, zero, 23
;   for (i = 0; i < ni; i++)
80001b1c: 13 04 00 04  	addi	s0, zero, 64
80001b20: ab 20 8d 00  	scfgw	s10, s0
80001b24: 13 04 00 0c  	addi	s0, zero, 192
80001b28: ab 20 85 00  	scfgw	a0, s0
80001b2c: 13 0d f0 00  	addi	s10, zero, 15
80001b30: 13 04 00 06  	addi	s0, zero, 96
80001b34: ab 20 8d 00  	scfgw	s10, s0
80001b38: 13 04 00 0e  	addi	s0, zero, 224
80001b3c: ab 20 85 00  	scfgw	a0, s0
80001b40: 13 05 00 02  	addi	a0, zero, 32
80001b44: ab 20 a0 00  	scfgw	zero, a0
80001b48: 2b a0 00 3a  	scfgwi	ra, 928
80001b4c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001b50: 37 95 2e ba  	lui	a0, 762601
80001b54: 13 04 35 ba  	addi	s0, a0, -1117
80001b58: 13 0d a0 fe  	addi	s10, zero, -22
80001b5c: 87 31 07 00  	fld	ft3, 0(a4)
80001b60: 13 05 60 01  	addi	a0, zero, 22
80001b64: 53 02 00 d2  	fcvt.d.w	ft4, zero
80001b68: 93 00 00 19  	addi	ra, zero, 400
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001b6c: 33 b7 88 02  	mulhu	a4, a7, s0
80001b70: 13 57 47 00  	srli	a4, a4, 4
80001b74: 33 07 a7 02  	mul	a4, a4, a0
80001b78: 33 87 e8 40  	sub	a4, a7, a4
80001b7c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001b80: 33 b7 8f 02  	mulhu	a4, t6, s0
80001b84: 13 57 47 00  	srli	a4, a4, 4
80001b88: 33 07 a7 02  	mul	a4, a4, a0
80001b8c: 33 87 ef 40  	sub	a4, t6, a4
80001b90: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001b94: 33 37 8a 02  	mulhu	a4, s4, s0
80001b98: 13 57 47 00  	srli	a4, a4, 4
80001b9c: 33 07 a7 02  	mul	a4, a4, a0
80001ba0: 33 07 ea 40  	sub	a4, s4, a4
80001ba4: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001ba8: 33 b7 8a 02  	mulhu	a4, s5, s0
80001bac: 13 57 47 00  	srli	a4, a4, 4
80001bb0: 33 07 a7 02  	mul	a4, a4, a0
80001bb4: 33 87 ea 40  	sub	a4, s5, a4
80001bb8: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001bbc: 33 37 8b 02  	mulhu	a4, s6, s0
80001bc0: 13 57 47 00  	srli	a4, a4, 4
80001bc4: 33 07 a7 02  	mul	a4, a4, a0
80001bc8: 33 07 eb 40  	sub	a4, s6, a4
80001bcc: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001bd0: 33 37 88 02  	mulhu	a4, a6, s0
80001bd4: 13 57 47 00  	srli	a4, a4, 4
80001bd8: 33 07 a7 02  	mul	a4, a4, a0
80001bdc: 33 07 e8 40  	sub	a4, a6, a4
80001be0: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001be4: 33 b7 82 02  	mulhu	a4, t0, s0
80001be8: 13 57 47 00  	srli	a4, a4, 4
80001bec: 33 07 a7 02  	mul	a4, a4, a0
80001bf0: 33 87 e2 40  	sub	a4, t0, a4
80001bf4: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001bf8: 33 37 83 02  	mulhu	a4, t1, s0
80001bfc: 13 57 47 00  	srli	a4, a4, 4
80001c00: 33 07 a7 02  	mul	a4, a4, a0
80001c04: 33 07 e3 40  	sub	a4, t1, a4
80001c08: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001c0c: 33 b7 83 02  	mulhu	a4, t2, s0
80001c10: 13 57 47 00  	srli	a4, a4, 4
80001c14: 33 07 a7 02  	mul	a4, a4, a0
80001c18: 33 87 e3 40  	sub	a4, t2, a4
80001c1c: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001c20: 33 37 8e 02  	mulhu	a4, t3, s0
80001c24: 13 57 47 00  	srli	a4, a4, 4
80001c28: 33 07 a7 02  	mul	a4, a4, a0
80001c2c: 33 07 ee 40  	sub	a4, t3, a4
80001c30: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001c34: 33 b7 8e 02  	mulhu	a4, t4, s0
80001c38: 13 57 47 00  	srli	a4, a4, 4
80001c3c: 33 07 a7 02  	mul	a4, a4, a0
80001c40: 33 87 ee 40  	sub	a4, t4, a4
80001c44: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001c48: 33 37 8f 02  	mulhu	a4, t5, s0
80001c4c: 13 57 47 00  	srli	a4, a4, 4
80001c50: 33 07 a7 02  	mul	a4, a4, a0
80001c54: 33 07 ef 40  	sub	a4, t5, a4
80001c58: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001c5c: 33 b7 89 02  	mulhu	a4, s3, s0
80001c60: 13 57 47 00  	srli	a4, a4, 4
80001c64: 33 07 a7 02  	mul	a4, a4, a0
80001c68: 33 87 e9 40  	sub	a4, s3, a4
80001c6c: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001c70: 33 b7 8b 02  	mulhu	a4, s7, s0
80001c74: 13 57 47 00  	srli	a4, a4, 4
80001c78: 33 07 a7 02  	mul	a4, a4, a0
80001c7c: 33 87 eb 40  	sub	a4, s7, a4
80001c80: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001c84: 33 37 8c 02  	mulhu	a4, s8, s0
80001c88: 13 57 47 00  	srli	a4, a4, 4
80001c8c: 33 07 a7 02  	mul	a4, a4, a0
80001c90: 33 07 ec 40  	sub	a4, s8, a4
80001c94: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001c98: 33 b7 8c 02  	mulhu	a4, s9, s0
80001c9c: 13 57 47 00  	srli	a4, a4, 4
80001ca0: 33 07 a7 02  	mul	a4, a4, a0
80001ca4: 33 87 ec 40  	sub	a4, s9, a4
80001ca8: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001cac: 33 b7 8d 02  	mulhu	a4, s11, s0
80001cb0: 13 57 47 00  	srli	a4, a4, 4
80001cb4: 33 07 a7 02  	mul	a4, a4, a0
80001cb8: 33 87 ed 40  	sub	a4, s11, a4
80001cbc: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001cc0: 33 37 89 02  	mulhu	a4, s2, s0
80001cc4: 13 57 47 00  	srli	a4, a4, 4
80001cc8: 33 07 a7 02  	mul	a4, a4, a0
80001ccc: 33 07 e9 40  	sub	a4, s2, a4
80001cd0: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001cd4: 33 b7 87 02  	mulhu	a4, a5, s0
80001cd8: 13 57 47 00  	srli	a4, a4, 4
80001cdc: 33 07 a7 02  	mul	a4, a4, a0
80001ce0: 33 87 e7 40  	sub	a4, a5, a4
80001ce4: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001ce8: 33 b7 84 02  	mulhu	a4, s1, s0
80001cec: 13 57 47 00  	srli	a4, a4, 4
80001cf0: 33 07 a7 02  	mul	a4, a4, a0
80001cf4: 33 87 e4 40  	sub	a4, s1, a4
80001cf8: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001cfc: 33 37 86 02  	mulhu	a4, a2, s0
80001d00: 13 57 47 00  	srli	a4, a4, 4
80001d04: 33 07 a7 02  	mul	a4, a4, a0
80001d08: 33 07 e6 40  	sub	a4, a2, a4
80001d0c: d3 0a 07 d2  	fcvt.d.w	fs5, a4
80001d10: 33 b7 85 02  	mulhu	a4, a1, s0
80001d14: 13 57 47 00  	srli	a4, a4, 4
80001d18: 33 07 a7 02  	mul	a4, a4, a0
80001d1c: 33 87 e5 40  	sub	a4, a1, a4
80001d20: 53 0b 07 d2  	fcvt.d.w	fs6, a4
80001d24: 33 b7 86 02  	mulhu	a4, a3, s0
80001d28: 13 57 47 00  	srli	a4, a4, 4
80001d2c: 33 07 a7 03  	mul	a4, a4, s10
80001d30: 33 87 e6 00  	add	a4, a3, a4
80001d34: d3 0b 07 d2  	fcvt.d.w	fs7, a4
80001d38: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001d3c: 53 80 52 22  	fmv.d	ft0, ft5
80001d40: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001d44: 53 80 52 22  	fmv.d	ft0, ft5
80001d48: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001d4c: 53 80 52 22  	fmv.d	ft0, ft5
80001d50: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001d54: 53 80 52 22  	fmv.d	ft0, ft5
80001d58: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001d5c: 53 80 52 22  	fmv.d	ft0, ft5
80001d60: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001d64: 53 80 52 22  	fmv.d	ft0, ft5
80001d68: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001d6c: 53 80 52 22  	fmv.d	ft0, ft5
80001d70: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001d74: 53 80 52 22  	fmv.d	ft0, ft5
80001d78: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001d7c: 53 80 52 22  	fmv.d	ft0, ft5
80001d80: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001d84: 53 80 52 22  	fmv.d	ft0, ft5
80001d88: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001d8c: 53 80 52 22  	fmv.d	ft0, ft5
80001d90: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001d94: 53 80 52 22  	fmv.d	ft0, ft5
80001d98: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001d9c: 53 80 52 22  	fmv.d	ft0, ft5
80001da0: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001da4: 53 80 52 22  	fmv.d	ft0, ft5
80001da8: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001dac: 53 80 52 22  	fmv.d	ft0, ft5
80001db0: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001db4: 53 80 52 22  	fmv.d	ft0, ft5
80001db8: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001dbc: 53 80 52 22  	fmv.d	ft0, ft5
80001dc0: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001dc4: 53 80 52 22  	fmv.d	ft0, ft5
80001dc8: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001dcc: 53 80 52 22  	fmv.d	ft0, ft5
80001dd0: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001dd4: 53 80 52 22  	fmv.d	ft0, ft5
80001dd8: 53 00 42 22  	fmv.d	ft0, ft4
80001ddc: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001de0: 53 80 52 22  	fmv.d	ft0, ft5
80001de4: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80001de8: 53 80 52 22  	fmv.d	ft0, ft5
80001dec: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001df0: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < ni; i++)
80001df4: 93 86 96 01  	addi	a3, a3, 25
80001df8: 93 85 85 01  	addi	a1, a1, 24
80001dfc: 13 06 76 01  	addi	a2, a2, 23
80001e00: 93 84 54 01  	addi	s1, s1, 21
80001e04: 93 87 47 01  	addi	a5, a5, 20
80001e08: 13 09 39 01  	addi	s2, s2, 19
80001e0c: 93 8d 2d 01  	addi	s11, s11, 18
80001e10: 93 8c 1c 01  	addi	s9, s9, 17
80001e14: 13 0c 0c 01  	addi	s8, s8, 16
80001e18: 93 8b fb 00  	addi	s7, s7, 15
80001e1c: 93 89 e9 00  	addi	s3, s3, 14
80001e20: 13 0f df 00  	addi	t5, t5, 13
80001e24: 93 8e ce 00  	addi	t4, t4, 12
80001e28: 13 0e be 00  	addi	t3, t3, 11
80001e2c: 93 83 a3 00  	addi	t2, t2, 10
80001e30: 13 03 93 00  	addi	t1, t1, 9
80001e34: 93 82 82 00  	addi	t0, t0, 8
80001e38: 13 08 78 00  	addi	a6, a6, 7
80001e3c: 13 0b 6b 00  	addi	s6, s6, 6
80001e40: 93 8a 5a 00  	addi	s5, s5, 5
80001e44: 13 0a 4a 00  	addi	s4, s4, 4
80001e48: 93 8f 3f 00  	addi	t6, t6, 3
80001e4c: 93 88 28 00  	addi	a7, a7, 2
80001e50: e3 9e 16 d0  	bne	a3, ra, 0x80001b6c <.LBB0_131+0xc8>
80001e54: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001e58: 6f 00 40 39  	j	0x800021ec <.LBB0_131+0x748>
80001e5c: 93 06 00 00  	mv	a3, zero
80001e60: 13 07 00 00  	mv	a4, zero
80001e64: 93 07 00 00  	mv	a5, zero
80001e68: 93 04 00 00  	mv	s1, zero
80001e6c: 93 05 00 00  	mv	a1, zero
80001e70: 13 0e 00 00  	mv	t3, zero
80001e74: 93 0e 00 00  	mv	t4, zero
80001e78: 13 0f 00 00  	mv	t5, zero
80001e7c: 93 0f 00 00  	mv	t6, zero
80001e80: 93 09 00 00  	mv	s3, zero
80001e84: 13 0a 00 00  	mv	s4, zero
80001e88: 93 0a 00 00  	mv	s5, zero
80001e8c: 13 0b 00 00  	mv	s6, zero
80001e90: 93 0b 00 00  	mv	s7, zero
80001e94: 13 0c 00 00  	mv	s8, zero
80001e98: 93 0c 00 00  	mv	s9, zero
80001e9c: 13 0d 00 00  	mv	s10, zero
80001ea0: 93 0d 00 00  	mv	s11, zero
80001ea4: 13 09 00 00  	mv	s2, zero
80001ea8: 13 08 00 00  	mv	a6, zero
80001eac: 93 08 00 00  	mv	a7, zero
80001eb0: 93 02 00 00  	mv	t0, zero
80001eb4: 13 03 00 00  	mv	t1, zero
;   for (i = 0; i < ni; i++)
80001eb8: 13 84 00 06  	addi	s0, ra, 96
80001ebc: 37 95 2e ba  	lui	a0, 762601
80001ec0: 13 05 35 ba  	addi	a0, a0, -1117
80001ec4: 87 31 06 00  	fld	ft3, 0(a2)
80001ec8: 93 03 60 01  	addi	t2, zero, 22
;       D[i][j] = (double) (i*(j+2) % nk) / nk;
80001ecc: 33 b6 a2 02  	mulhu	a2, t0, a0
80001ed0: 13 56 46 00  	srli	a2, a2, 4
80001ed4: 33 06 76 02  	mul	a2, a2, t2
80001ed8: b3 80 c2 40  	sub	ra, t0, a2
80001edc: 53 82 00 d2  	fcvt.d.w	ft4, ra
80001ee0: 33 b6 a8 02  	mulhu	a2, a7, a0
80001ee4: 13 56 46 00  	srli	a2, a2, 4
80001ee8: 33 06 76 02  	mul	a2, a2, t2
80001eec: 33 86 c8 40  	sub	a2, a7, a2
80001ef0: d3 02 06 d2  	fcvt.d.w	ft5, a2
80001ef4: 33 36 a9 02  	mulhu	a2, s2, a0
80001ef8: 13 56 46 00  	srli	a2, a2, 4
80001efc: 33 06 76 02  	mul	a2, a2, t2
80001f00: 33 06 c9 40  	sub	a2, s2, a2
80001f04: 53 03 06 d2  	fcvt.d.w	ft6, a2
80001f08: 33 36 ad 02  	mulhu	a2, s10, a0
80001f0c: 13 56 46 00  	srli	a2, a2, 4
80001f10: 33 06 76 02  	mul	a2, a2, t2
80001f14: 33 06 cd 40  	sub	a2, s10, a2
80001f18: d3 03 06 d2  	fcvt.d.w	ft7, a2
80001f1c: 33 b6 ac 02  	mulhu	a2, s9, a0
80001f20: 13 56 46 00  	srli	a2, a2, 4
80001f24: 33 06 76 02  	mul	a2, a2, t2
80001f28: 33 86 cc 40  	sub	a2, s9, a2
80001f2c: 53 05 06 d2  	fcvt.d.w	fa0, a2
80001f30: 33 b6 ab 02  	mulhu	a2, s7, a0
80001f34: 13 56 46 00  	srli	a2, a2, 4
80001f38: 33 06 76 02  	mul	a2, a2, t2
80001f3c: 33 86 cb 40  	sub	a2, s7, a2
80001f40: d3 05 06 d2  	fcvt.d.w	fa1, a2
80001f44: 33 b6 aa 02  	mulhu	a2, s5, a0
80001f48: 13 56 46 00  	srli	a2, a2, 4
80001f4c: 33 06 76 02  	mul	a2, a2, t2
80001f50: 33 86 ca 40  	sub	a2, s5, a2
80001f54: 53 06 06 d2  	fcvt.d.w	fa2, a2
80001f58: 33 b6 a9 02  	mulhu	a2, s3, a0
80001f5c: 13 56 46 00  	srli	a2, a2, 4
80001f60: 33 06 76 02  	mul	a2, a2, t2
80001f64: 33 86 c9 40  	sub	a2, s3, a2
80001f68: d3 06 06 d2  	fcvt.d.w	fa3, a2
80001f6c: 33 36 af 02  	mulhu	a2, t5, a0
80001f70: 13 56 46 00  	srli	a2, a2, 4
80001f74: 33 06 76 02  	mul	a2, a2, t2
80001f78: 33 06 cf 40  	sub	a2, t5, a2
80001f7c: 53 07 06 d2  	fcvt.d.w	fa4, a2
80001f80: 33 36 ae 02  	mulhu	a2, t3, a0
80001f84: 13 56 46 00  	srli	a2, a2, 4
80001f88: 33 06 76 02  	mul	a2, a2, t2
80001f8c: 33 06 ce 40  	sub	a2, t3, a2
80001f90: d3 07 06 d2  	fcvt.d.w	fa5, a2
80001f94: 33 b6 a4 02  	mulhu	a2, s1, a0
80001f98: 13 56 46 00  	srli	a2, a2, 4
80001f9c: 33 06 76 02  	mul	a2, a2, t2
80001fa0: 33 86 c4 40  	sub	a2, s1, a2
80001fa4: 53 08 06 d2  	fcvt.d.w	fa6, a2
80001fa8: 33 b6 a6 02  	mulhu	a2, a3, a0
80001fac: 13 56 46 00  	srli	a2, a2, 4
80001fb0: 33 06 76 02  	mul	a2, a2, t2
80001fb4: 33 86 c6 40  	sub	a2, a3, a2
80001fb8: d3 08 06 d2  	fcvt.d.w	fa7, a2
80001fbc: 33 36 a7 02  	mulhu	a2, a4, a0
80001fc0: 13 56 46 00  	srli	a2, a2, 4
80001fc4: 33 06 76 02  	mul	a2, a2, t2
80001fc8: 33 06 c7 40  	sub	a2, a4, a2
80001fcc: 53 0e 06 d2  	fcvt.d.w	ft8, a2
80001fd0: 33 b6 a7 02  	mulhu	a2, a5, a0
80001fd4: 13 56 46 00  	srli	a2, a2, 4
80001fd8: 33 06 76 02  	mul	a2, a2, t2
80001fdc: 33 86 c7 40  	sub	a2, a5, a2
80001fe0: d3 0e 06 d2  	fcvt.d.w	ft9, a2
80001fe4: 33 b6 a5 02  	mulhu	a2, a1, a0
80001fe8: 13 56 46 00  	srli	a2, a2, 4
80001fec: 33 06 76 02  	mul	a2, a2, t2
80001ff0: 33 86 c5 40  	sub	a2, a1, a2
80001ff4: 53 0f 06 d2  	fcvt.d.w	ft10, a2
80001ff8: 33 b6 ae 02  	mulhu	a2, t4, a0
80001ffc: 13 56 46 00  	srli	a2, a2, 4
80002000: 33 06 76 02  	mul	a2, a2, t2
80002004: 33 86 ce 40  	sub	a2, t4, a2
80002008: d3 0f 06 d2  	fcvt.d.w	ft11, a2
8000200c: 33 b6 af 02  	mulhu	a2, t6, a0
80002010: 13 56 46 00  	srli	a2, a2, 4
80002014: 33 06 76 02  	mul	a2, a2, t2
80002018: 33 86 cf 40  	sub	a2, t6, a2
8000201c: 53 04 06 d2  	fcvt.d.w	fs0, a2
80002020: 33 36 aa 02  	mulhu	a2, s4, a0
80002024: 13 56 46 00  	srli	a2, a2, 4
80002028: 33 06 76 02  	mul	a2, a2, t2
8000202c: 33 06 ca 40  	sub	a2, s4, a2
80002030: d3 04 06 d2  	fcvt.d.w	fs1, a2
80002034: 33 36 ab 02  	mulhu	a2, s6, a0
80002038: 13 56 46 00  	srli	a2, a2, 4
8000203c: 33 06 76 02  	mul	a2, a2, t2
80002040: 33 06 cb 40  	sub	a2, s6, a2
80002044: 53 09 06 d2  	fcvt.d.w	fs2, a2
80002048: 33 36 ac 02  	mulhu	a2, s8, a0
8000204c: 13 56 46 00  	srli	a2, a2, 4
80002050: 33 06 76 02  	mul	a2, a2, t2
80002054: 33 06 cc 40  	sub	a2, s8, a2
80002058: d3 09 06 d2  	fcvt.d.w	fs3, a2
8000205c: 33 b6 ad 02  	mulhu	a2, s11, a0
80002060: 13 56 46 00  	srli	a2, a2, 4
80002064: 33 06 76 02  	mul	a2, a2, t2
80002068: 33 86 cd 40  	sub	a2, s11, a2
8000206c: 53 0a 06 d2  	fcvt.d.w	fs4, a2
80002070: 33 36 a8 02  	mulhu	a2, a6, a0
80002074: 13 56 46 00  	srli	a2, a2, 4
80002078: 33 06 76 02  	mul	a2, a2, t2
8000207c: 33 06 c8 40  	sub	a2, a6, a2
80002080: d3 0a 06 d2  	fcvt.d.w	fs5, a2
80002084: 33 36 a3 02  	mulhu	a2, t1, a0
80002088: 13 56 46 00  	srli	a2, a2, 4
8000208c: 93 80 05 00  	mv	ra, a1
80002090: 93 85 04 00  	mv	a1, s1
80002094: 93 84 07 00  	mv	s1, a5
80002098: 93 07 07 00  	mv	a5, a4
8000209c: 13 87 06 00  	mv	a4, a3
800020a0: 93 06 a0 fe  	addi	a3, zero, -22
800020a4: 33 06 d6 02  	mul	a2, a2, a3
800020a8: 93 06 07 00  	mv	a3, a4
800020ac: 13 87 07 00  	mv	a4, a5
800020b0: 93 87 04 00  	mv	a5, s1
800020b4: 93 84 05 00  	mv	s1, a1
800020b8: 93 85 00 00  	mv	a1, ra
800020bc: 33 06 c3 00  	add	a2, t1, a2
800020c0: 53 0b 06 d2  	fcvt.d.w	fs6, a2
800020c4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800020c8: 27 30 44 fa  	fsd	ft4, -96(s0)
800020cc: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800020d0: 27 34 44 fa  	fsd	ft4, -88(s0)
800020d4: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800020d8: 27 38 44 fa  	fsd	ft4, -80(s0)
800020dc: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800020e0: 27 3c 44 fa  	fsd	ft4, -72(s0)
800020e4: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800020e8: 27 30 44 fc  	fsd	ft4, -64(s0)
800020ec: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800020f0: 27 34 44 fc  	fsd	ft4, -56(s0)
800020f4: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800020f8: 27 38 44 fc  	fsd	ft4, -48(s0)
800020fc: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80002100: 27 3c 44 fc  	fsd	ft4, -40(s0)
80002104: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80002108: 27 30 44 fe  	fsd	ft4, -32(s0)
8000210c: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80002110: 27 34 44 fe  	fsd	ft4, -24(s0)
80002114: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80002118: 27 38 44 fe  	fsd	ft4, -16(s0)
8000211c: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80002120: 27 3c 44 fe  	fsd	ft4, -8(s0)
80002124: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80002128: 27 30 44 00  	fsd	ft4, 0(s0)
8000212c: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80002130: 27 34 44 00  	fsd	ft4, 8(s0)
80002134: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80002138: 27 38 44 00  	fsd	ft4, 16(s0)
8000213c: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80002140: 27 3c 44 00  	fsd	ft4, 24(s0)
80002144: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80002148: 27 30 44 02  	fsd	ft4, 32(s0)
8000214c: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80002150: 27 34 44 02  	fsd	ft4, 40(s0)
80002154: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80002158: 27 38 44 02  	fsd	ft4, 48(s0)
8000215c: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80002160: 27 3c 44 02  	fsd	ft4, 56(s0)
80002164: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80002168: 27 34 44 04  	fsd	ft4, 72(s0)
8000216c: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80002170: 27 38 44 04  	fsd	ft4, 80(s0)
80002174: 23 22 04 04  	sw	zero, 68(s0)
80002178: 23 20 04 04  	sw	zero, 64(s0)
8000217c: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80002180: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < ni; i++)
80002184: 13 03 93 01  	addi	t1, t1, 25
80002188: 93 82 22 00  	addi	t0, t0, 2
8000218c: 93 88 38 00  	addi	a7, a7, 3
80002190: 13 08 88 01  	addi	a6, a6, 24
80002194: 13 09 49 00  	addi	s2, s2, 4
80002198: 93 8d 7d 01  	addi	s11, s11, 23
8000219c: 13 0d 5d 00  	addi	s10, s10, 5
800021a0: 93 8c 6c 00  	addi	s9, s9, 6
800021a4: 13 0c 5c 01  	addi	s8, s8, 21
800021a8: 93 8b 7b 00  	addi	s7, s7, 7
800021ac: 13 0b 4b 01  	addi	s6, s6, 20
800021b0: 93 8a 8a 00  	addi	s5, s5, 8
800021b4: 13 0a 3a 01  	addi	s4, s4, 19
800021b8: 93 89 99 00  	addi	s3, s3, 9
800021bc: 93 8f 2f 01  	addi	t6, t6, 18
800021c0: 13 0f af 00  	addi	t5, t5, 10
800021c4: 93 8e 1e 01  	addi	t4, t4, 17
800021c8: 13 0e be 00  	addi	t3, t3, 11
800021cc: 93 85 00 01  	addi	a1, ra, 16
800021d0: 93 84 c4 00  	addi	s1, s1, 12
800021d4: 93 87 f7 00  	addi	a5, a5, 15
800021d8: 13 04 04 0c  	addi	s0, s0, 192
800021dc: 13 07 e7 00  	addi	a4, a4, 14
800021e0: 93 86 d6 00  	addi	a3, a3, 13
800021e4: 13 06 00 19  	addi	a2, zero, 400
800021e8: e3 12 c3 ce  	bne	t1, a2, 0x80001ecc <.LBB0_131+0x428>
800021ec: 37 15 00 00  	lui	a0, 1
800021f0: 93 03 05 87  	addi	t2, a0, -1936
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800021f4: 73 25 00 b0  	csrr	a0, mcycle
800021f8: 23 20 a1 08  	sw	a0, 128(sp)
800021fc: 03 24 c1 02  	lw	s0, 44(sp)
;   for (i = 0; i < ni; i++) {
80002200: 33 05 74 00  	add	a0, s0, t2
80002204: 33 36 85 00  	sltu	a2, a0, s0
80002208: 93 05 85 28  	addi	a1, a0, 648
8000220c: 33 b5 a5 00  	sltu	a0, a1, a0
80002210: 33 07 a6 00  	add	a4, a2, a0
80002214: 03 23 81 02  	lw	t1, 40(sp)
80002218: b3 06 73 00  	add	a3, t1, t2
8000221c: 33 b6 66 00  	sltu	a2, a3, t1
80002220: 13 85 86 3e  	addi	a0, a3, 1000
80002224: b3 36 d5 00  	sltu	a3, a0, a3
80002228: 03 29 41 01  	lw	s2, 20(sp)
8000222c: b3 07 79 00  	add	a5, s2, t2
80002230: b3 b4 27 01  	sltu	s1, a5, s2
80002234: 13 8e 87 08  	addi	t3, a5, 136
80002238: b3 37 fe 00  	sltu	a5, t3, a5
8000223c: b3 87 f4 00  	add	a5, s1, a5
80002240: 63 06 07 02  	beqz	a4, 0x8000226c <.LBB0_131+0x7c8>
80002244: 93 05 00 00  	mv	a1, zero
80002248: b3 06 d6 00  	add	a3, a2, a3
8000224c: 63 96 07 02  	bnez	a5, 0x80002278 <.LBB0_131+0x7d4>
80002250: 33 36 8e 00  	sltu	a2, t3, s0
;   for (i = 0; i < ni; i++) {
80002254: 63 96 06 02  	bnez	a3, 0x80002280 <.LBB0_131+0x7dc>
80002258: 33 35 25 01  	sltu	a0, a0, s2
;   for (i = 0; i < ni; i++) {
8000225c: b3 65 b6 00  	or	a1, a2, a1
80002260: 63 96 07 02  	bnez	a5, 0x8000228c <.LBB0_131+0x7e8>
80002264: 33 36 6e 00  	sltu	a2, t3, t1
80002268: 6f 00 80 02  	j	0x80002290 <.LBB0_131+0x7ec>
8000226c: b3 b5 25 01  	sltu	a1, a1, s2
;   for (i = 0; i < ni; i++) {
80002270: b3 06 d6 00  	add	a3, a2, a3
80002274: e3 8e 07 fc  	beqz	a5, 0x80002250 <.LBB0_131+0x7ac>
80002278: 13 06 00 00  	mv	a2, zero
8000227c: e3 8e 06 fc  	beqz	a3, 0x80002258 <.LBB0_131+0x7b4>
80002280: 13 05 00 00  	mv	a0, zero
80002284: b3 65 b6 00  	or	a1, a2, a1
80002288: e3 8e 07 fc  	beqz	a5, 0x80002264 <.LBB0_131+0x7c0>
8000228c: 13 06 00 00  	mv	a2, zero
80002290: 33 65 a6 00  	or	a0, a2, a0
80002294: 33 f5 a5 00  	and	a0, a1, a0
80002298: 83 25 01 01  	lw	a1, 16(sp)
8000229c: 33 f5 a5 00  	and	a0, a1, a0
800022a0: 83 25 81 00  	lw	a1, 8(sp)
800022a4: 33 f5 a5 00  	and	a0, a1, a0
800022a8: 23 2e 71 06  	sw	t2, 124(sp)
800022ac: 23 2a c1 07  	sw	t3, 116(sp)
800022b0: 23 2c f1 06  	sw	a5, 120(sp)
800022b4: 63 04 05 24  	beqz	a0, 0x800024fc <.LBB0_132+0x1a4>
800022b8: 13 05 00 00  	mv	a0, zero
800022bc: 93 05 80 00  	addi	a1, zero, 8
800022c0: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++) {
800022c4: 93 06 00 04  	addi	a3, zero, 64
800022c8: 13 07 00 0c  	addi	a4, zero, 192
800022cc: ab 20 d6 00  	scfgw	a2, a3
800022d0: ab a0 e5 00  	scfgw	a1, a4
800022d4: 93 06 80 f5  	addi	a3, zero, -168
800022d8: 13 07 10 01  	addi	a4, zero, 17
800022dc: 93 07 00 06  	addi	a5, zero, 96
800022e0: 93 04 00 0e  	addi	s1, zero, 224
800022e4: ab 20 f7 00  	scfgw	a4, a5
800022e8: ab a0 96 00  	scfgw	a3, s1
800022ec: 93 06 f0 00  	addi	a3, zero, 15
800022f0: 93 07 00 08  	addi	a5, zero, 128
800022f4: 93 04 00 10  	addi	s1, zero, 256
800022f8: ab a0 f6 00  	scfgw	a3, a5
800022fc: ab a0 95 00  	scfgw	a1, s1
80002300: 93 05 00 02  	addi	a1, zero, 32
80002304: ab 20 b0 00  	scfgw	zero, a1
80002308: 2b 20 04 34  	scfgwi	s0, 832
8000230c: 93 05 00 09  	addi	a1, zero, 144
80002310: 93 07 10 00  	addi	a5, zero, 1
80002314: 93 84 07 04  	addi	s1, a5, 64
80002318: 13 84 07 0c  	addi	s0, a5, 192
8000231c: ab 20 96 00  	scfgw	a2, s1
80002320: ab a0 85 00  	scfgw	a1, s0
80002324: 37 f6 ff ff  	lui	a2, 1048575
80002328: 93 04 86 43  	addi	s1, a2, 1080
8000232c: 13 84 07 06  	addi	s0, a5, 96
80002330: ab 20 87 00  	scfgw	a4, s0
80002334: 13 87 07 0e  	addi	a4, a5, 224
80002338: ab a0 e4 00  	scfgw	s1, a4
8000233c: 13 06 86 3a  	addi	a2, a2, 936
80002340: 13 87 07 08  	addi	a4, a5, 128
80002344: 93 84 07 10  	addi	s1, a5, 256
80002348: ab a0 e6 00  	scfgw	a3, a4
8000234c: ab 20 96 00  	scfgw	a2, s1
80002350: 13 86 07 02  	addi	a2, a5, 32
80002354: ab 20 c0 00  	scfgw	zero, a2

80002358 <.LBB0_132>:
80002358: 17 46 00 00  	auipc	a2, 4
8000235c: 13 06 06 86  	addi	a2, a2, -1952
80002360: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
80002364: 2b 20 13 34  	scfgwi	t1, 833
80002368: 73 e6 00 7c  	csrrsi	a2, 1984, 1
8000236c: 13 06 00 01  	addi	a2, zero, 16
80002370: 93 06 09 00  	mv	a3, s2
80002374: 13 04 00 00  	mv	s0, zero
;       tmp[i][j] = 0.0;
80002378: 33 87 86 00  	add	a4, a3, s0
8000237c: 23 22 07 00  	sw	zero, 4(a4)
80002380: 23 20 07 00  	sw	zero, 0(a4)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002384: 07 33 07 00  	fld	ft6, 0(a4)
80002388: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000238c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002390: 27 30 47 00  	fsd	ft4, 0(a4)
80002394: 07 33 07 00  	fld	ft6, 0(a4)
80002398: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000239c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800023a0: 27 30 47 00  	fsd	ft4, 0(a4)
800023a4: 07 33 07 00  	fld	ft6, 0(a4)
800023a8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800023ac: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800023b0: 27 30 47 00  	fsd	ft4, 0(a4)
800023b4: 07 33 07 00  	fld	ft6, 0(a4)
800023b8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800023bc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800023c0: 27 30 47 00  	fsd	ft4, 0(a4)
800023c4: 07 33 07 00  	fld	ft6, 0(a4)
800023c8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800023cc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800023d0: 27 30 47 00  	fsd	ft4, 0(a4)
800023d4: 07 33 07 00  	fld	ft6, 0(a4)
800023d8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800023dc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800023e0: 27 30 47 00  	fsd	ft4, 0(a4)
800023e4: 07 33 07 00  	fld	ft6, 0(a4)
800023e8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800023ec: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800023f0: 27 30 47 00  	fsd	ft4, 0(a4)
800023f4: 07 33 07 00  	fld	ft6, 0(a4)
800023f8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800023fc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002400: 27 30 47 00  	fsd	ft4, 0(a4)
80002404: 07 33 07 00  	fld	ft6, 0(a4)
80002408: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000240c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002410: 27 30 47 00  	fsd	ft4, 0(a4)
80002414: 07 33 07 00  	fld	ft6, 0(a4)
80002418: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000241c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002420: 27 30 47 00  	fsd	ft4, 0(a4)
80002424: 07 33 07 00  	fld	ft6, 0(a4)
80002428: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000242c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002430: 27 30 47 00  	fsd	ft4, 0(a4)
80002434: 07 33 07 00  	fld	ft6, 0(a4)
80002438: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000243c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002440: 27 30 47 00  	fsd	ft4, 0(a4)
80002444: 07 33 07 00  	fld	ft6, 0(a4)
80002448: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000244c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002450: 27 30 47 00  	fsd	ft4, 0(a4)
80002454: 07 33 07 00  	fld	ft6, 0(a4)
80002458: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000245c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002460: 27 30 47 00  	fsd	ft4, 0(a4)
80002464: 07 33 07 00  	fld	ft6, 0(a4)
80002468: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000246c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002470: 27 30 47 00  	fsd	ft4, 0(a4)
80002474: 07 33 07 00  	fld	ft6, 0(a4)
80002478: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000247c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002480: 27 30 47 00  	fsd	ft4, 0(a4)
80002484: 07 33 07 00  	fld	ft6, 0(a4)
80002488: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000248c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
80002490: 27 30 47 00  	fsd	ft4, 0(a4)
80002494: 07 33 07 00  	fld	ft6, 0(a4)
80002498: 53 72 30 12  	fmul.d	ft4, ft0, ft3
8000249c: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024a0: 27 30 47 00  	fsd	ft4, 0(a4)
800024a4: 07 33 07 00  	fld	ft6, 0(a4)
800024a8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024ac: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024b0: 27 30 47 00  	fsd	ft4, 0(a4)
800024b4: 07 33 07 00  	fld	ft6, 0(a4)
800024b8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024bc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024c0: 27 30 47 00  	fsd	ft4, 0(a4)
800024c4: 07 33 07 00  	fld	ft6, 0(a4)
800024c8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024cc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
800024d0: 27 30 47 00  	fsd	ft4, 0(a4)
800024d4: 07 33 07 00  	fld	ft6, 0(a4)
800024d8: 53 72 30 12  	fmul.d	ft4, ft0, ft3
800024dc: 43 72 12 32  	fmadd.d	ft4, ft4, ft1, ft6
;     for (j = 0; j < nj; j++) {
800024e0: 13 04 84 00  	addi	s0, s0, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800024e4: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nj; j++) {
800024e8: e3 18 b4 e8  	bne	s0, a1, 0x80002378 <.LBB0_132+0x20>
;   for (i = 0; i < ni; i++) {
800024ec: 13 05 15 00  	addi	a0, a0, 1
800024f0: 93 86 06 09  	addi	a3, a3, 144
800024f4: e3 10 c5 e8  	bne	a0, a2, 0x80002374 <.LBB0_132+0x1c>
800024f8: 6f 00 40 41  	j	0x8000290c <.LBB0_133+0x1f0>
800024fc: 13 05 03 48  	addi	a0, t1, 1152
80002500: 93 02 05 48  	addi	t0, a0, 1152
80002504: 13 05 43 4c  	addi	a0, t1, 1220
80002508: 13 05 45 4c  	addi	a0, a0, 1220
8000250c: 93 08 04 06  	addi	a7, s0, 96
80002510: b3 84 13 01  	add	s1, t2, a7
80002514: 63 76 55 00  	bgeu	a0, t0, 0x80002520 <.LBB0_132+0x1c8>
80002518: 13 08 00 00  	mv	a6, zero
8000251c: 6f 00 80 00  	j	0x80002524 <.LBB0_132+0x1cc>
80002520: 33 38 25 01  	sltu	a6, a0, s2
;   for (i = 0; i < ni; i++) {
80002524: 13 85 04 1e  	addi	a0, s1, 480
80002528: 93 0e 03 63  	addi	t4, t1, 1584
8000252c: 93 05 83 6b  	addi	a1, t1, 1720
80002530: 63 86 07 00  	beqz	a5, 0x8000253c <.LBB0_132+0x1e4>
80002534: 13 07 00 00  	mv	a4, zero
80002538: 6f 00 80 00  	j	0x80002540 <.LBB0_132+0x1e8>
8000253c: 33 37 5e 00  	sltu	a4, t3, t0
;   for (i = 0; i < ni; i++) {
80002540: b3 b6 74 00  	sltu	a3, s1, t2
80002544: 33 36 95 00  	sltu	a2, a0, s1
80002548: 63 f0 d5 03  	bgeu	a1, t4, 0x80002568 <.LBB0_132+0x210>
8000254c: 93 04 00 00  	mv	s1, zero
80002550: 33 86 c6 00  	add	a2, a3, a2
80002554: 63 90 07 02  	bnez	a5, 0x80002574 <.LBB0_132+0x21c>
80002558: b3 35 de 01  	sltu	a1, t3, t4
;   for (i = 0; i < ni; i++) {
8000255c: 63 10 06 02  	bnez	a2, 0x8000257c <.LBB0_132+0x224>
80002560: 33 35 25 01  	sltu	a0, a0, s2
80002564: 6f 00 c0 01  	j	0x80002580 <.LBB0_132+0x228>
80002568: b3 b4 25 01  	sltu	s1, a1, s2
;   for (i = 0; i < ni; i++) {
8000256c: 33 86 c6 00  	add	a2, a3, a2
80002570: e3 84 07 fe  	beqz	a5, 0x80002558 <.LBB0_132+0x200>
80002574: 93 05 00 00  	mv	a1, zero
80002578: e3 04 06 fe  	beqz	a2, 0x80002560 <.LBB0_132+0x208>
8000257c: 13 05 00 00  	mv	a0, zero
80002580: b3 66 07 01  	or	a3, a4, a6
80002584: 33 e7 95 00  	or	a4, a1, s1
80002588: 63 86 07 00  	beqz	a5, 0x80002594 <.LBB0_132+0x23c>
8000258c: 13 06 00 00  	mv	a2, zero
80002590: 6f 00 80 00  	j	0x80002598 <.LBB0_132+0x240>
80002594: 33 36 1e 01  	sltu	a2, t3, a7
;   for (i = 0; i < ni; i++) {
80002598: 33 66 a6 00  	or	a2, a2, a0
8000259c: b3 f6 e6 00  	and	a3, a3, a4
800025a0: 33 76 d6 00  	and	a2, a2, a3
800025a4: 93 d6 42 01  	srli	a3, t0, 20
800025a8: b3 36 d0 00  	snez	a3, a3
800025ac: 37 07 12 00  	lui	a4, 288
800025b0: 13 07 97 f7  	addi	a4, a4, -135
800025b4: b3 b7 e2 00  	sltu	a5, t0, a4
800025b8: b3 f6 f6 00  	and	a3, a3, a5
800025bc: 33 f6 c6 00  	and	a2, a3, a2
800025c0: 93 d6 4e 01  	srli	a3, t4, 20
800025c4: b3 36 d0 00  	snez	a3, a3
800025c8: 33 b7 ee 00  	sltu	a4, t4, a4
800025cc: b3 f6 e6 00  	and	a3, a3, a4
800025d0: 33 f6 c6 00  	and	a2, a3, a2
800025d4: 93 d6 48 01  	srli	a3, a7, 20
800025d8: b3 36 d0 00  	snez	a3, a3
800025dc: 37 f7 11 00  	lui	a4, 287
800025e0: 13 07 17 5b  	addi	a4, a4, 1457
800025e4: 33 b7 e8 00  	sltu	a4, a7, a4
800025e8: b3 f6 e6 00  	and	a3, a3, a4
800025ec: 33 f6 c6 00  	and	a2, a3, a2
800025f0: 63 02 06 32  	beqz	a2, 0x80002914 <.LBB0_133+0x1f8>
800025f4: 93 06 00 00  	mv	a3, zero
800025f8: 13 06 80 00  	addi	a2, zero, 8
800025fc: 13 07 10 01  	addi	a4, zero, 17
;   for (i = 0; i < ni; i++) {
80002600: 13 05 00 04  	addi	a0, zero, 64
80002604: 93 07 00 0c  	addi	a5, zero, 192
80002608: ab 20 a7 00  	scfgw	a4, a0
8000260c: ab 20 f6 00  	scfgw	a2, a5
80002610: 13 05 80 f7  	addi	a0, zero, -136
80002614: 93 07 f0 00  	addi	a5, zero, 15
80002618: 93 04 00 06  	addi	s1, zero, 96
8000261c: ab a0 97 00  	scfgw	a5, s1
80002620: 93 04 00 0e  	addi	s1, zero, 224
80002624: ab 20 95 00  	scfgw	a0, s1
80002628: 93 04 00 02  	addi	s1, zero, 32
8000262c: ab 20 90 00  	scfgw	zero, s1
80002630: 2b a0 02 32  	scfgwi	t0, 800
80002634: 93 05 10 00  	addi	a1, zero, 1
80002638: 93 84 05 04  	addi	s1, a1, 64
8000263c: ab 20 97 00  	scfgw	a4, s1
80002640: 93 84 05 0c  	addi	s1, a1, 192
80002644: ab 20 96 00  	scfgw	a2, s1
80002648: 13 86 05 06  	addi	a2, a1, 96
8000264c: 93 84 05 0e  	addi	s1, a1, 224
80002650: ab a0 c7 00  	scfgw	a5, a2
80002654: ab 20 95 00  	scfgw	a0, s1
80002658: 93 85 05 02  	addi	a1, a1, 32
8000265c: ab 20 b0 00  	scfgw	zero, a1
80002660: 2b a0 1e 32  	scfgwi	t4, 801
80002664: 13 05 20 00  	addi	a0, zero, 2
80002668: 93 05 05 04  	addi	a1, a0, 64
8000266c: 13 06 05 0c  	addi	a2, a0, 192
80002670: ab 20 b7 00  	scfgw	a4, a1
80002674: ab 20 c0 00  	scfgw	zero, a2
80002678: 13 07 00 0b  	addi	a4, zero, 176
8000267c: 93 05 05 06  	addi	a1, a0, 96
80002680: 13 06 05 0e  	addi	a2, a0, 224
80002684: ab a0 b7 00  	scfgw	a5, a1
80002688: ab 20 c7 00  	scfgw	a4, a2
8000268c: 13 05 05 02  	addi	a0, a0, 32
80002690: ab 20 a0 00  	scfgw	zero, a0
80002694: 2b a0 28 32  	scfgwi	a7, 802
80002698: 73 e5 00 7c  	csrrsi	a0, 1984, 1
8000269c: 13 0f 00 09  	addi	t5, zero, 144
800026a0: 13 0c 09 00  	mv	s8, s2
800026a4: 83 2e 81 02  	lw	t4, 40(sp)
800026a8: 13 07 00 00  	mv	a4, zero
800026ac: 23 26 d1 08  	sw	a3, 140(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800026b0: 13 05 00 0b  	addi	a0, zero, 176
800026b4: 33 85 a6 02  	mul	a0, a3, a0
800026b8: b3 04 a4 00  	add	s1, s0, a0
800026bc: 93 8f 84 00  	addi	t6, s1, 8
800026c0: 13 89 04 01  	addi	s2, s1, 16
800026c4: 93 89 84 01  	addi	s3, s1, 24
800026c8: 13 8a 04 02  	addi	s4, s1, 32
800026cc: 93 8a 84 02  	addi	s5, s1, 40
800026d0: 13 8b 04 03  	addi	s6, s1, 48
800026d4: 93 8b 84 03  	addi	s7, s1, 56
800026d8: 93 8c 04 04  	addi	s9, s1, 64
800026dc: 13 8d 84 04  	addi	s10, s1, 72
800026e0: 93 8d 04 05  	addi	s11, s1, 80
800026e4: 93 80 84 05  	addi	ra, s1, 88
800026e8: 13 8e 84 06  	addi	t3, s1, 104
800026ec: 13 84 04 07  	addi	s0, s1, 112
800026f0: 93 85 84 07  	addi	a1, s1, 120
800026f4: 13 85 04 08  	addi	a0, s1, 128
800026f8: 13 86 84 08  	addi	a2, s1, 136
800026fc: 93 87 04 09  	addi	a5, s1, 144
80002700: 93 88 84 09  	addi	a7, s1, 152
80002704: 13 88 04 0a  	addi	a6, s1, 160
80002708: 93 82 84 0a  	addi	t0, s1, 168
;       tmp[i][j] = 0.0;
8000270c: 33 03 ec 00  	add	t1, s8, a4
80002710: 23 22 03 00  	sw	zero, 4(t1)
80002714: 23 20 03 00  	sw	zero, 0(t1)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002718: 07 b2 04 00  	fld	ft4, 0(s1)

8000271c <.LBB0_133>:
8000271c: 97 36 00 00  	auipc	a3, 3
80002720: 93 86 c6 49  	addi	a3, a3, 1180
80002724: 87 b1 06 00  	fld	ft3, 0(a3)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002728: b3 83 ee 00  	add	t2, t4, a4
8000272c: 87 b2 03 00  	fld	ft5, 0(t2)
80002730: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002734: 53 72 52 12  	fmul.d	ft4, ft4, ft5
80002738: 27 30 43 00  	fsd	ft4, 0(t1)
8000273c: 87 b2 0f 00  	fld	ft5, 0(t6)
80002740: 07 b3 03 09  	fld	ft6, 144(t2)
80002744: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002748: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
8000274c: 27 30 43 00  	fsd	ft4, 0(t1)
80002750: 87 32 09 00  	fld	ft5, 0(s2)
80002754: 07 b3 03 12  	fld	ft6, 288(t2)
80002758: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000275c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002760: 27 30 43 00  	fsd	ft4, 0(t1)
80002764: 87 b2 09 00  	fld	ft5, 0(s3)
80002768: 07 b3 03 1b  	fld	ft6, 432(t2)
8000276c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002770: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002774: 27 30 43 00  	fsd	ft4, 0(t1)
80002778: 87 32 0a 00  	fld	ft5, 0(s4)
8000277c: 07 b3 03 24  	fld	ft6, 576(t2)
80002780: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002784: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002788: 27 30 43 00  	fsd	ft4, 0(t1)
8000278c: 87 b2 0a 00  	fld	ft5, 0(s5)
80002790: 07 b3 03 2d  	fld	ft6, 720(t2)
80002794: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002798: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
8000279c: 27 30 43 00  	fsd	ft4, 0(t1)
800027a0: 87 32 0b 00  	fld	ft5, 0(s6)
800027a4: 07 b3 03 36  	fld	ft6, 864(t2)
800027a8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027ac: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027b0: 27 30 43 00  	fsd	ft4, 0(t1)
800027b4: 87 b2 0b 00  	fld	ft5, 0(s7)
800027b8: 07 b3 03 3f  	fld	ft6, 1008(t2)
800027bc: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027c0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027c4: 27 30 43 00  	fsd	ft4, 0(t1)
800027c8: 87 b2 0c 00  	fld	ft5, 0(s9)
800027cc: 07 b3 03 48  	fld	ft6, 1152(t2)
800027d0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027d4: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027d8: 27 30 43 00  	fsd	ft4, 0(t1)
800027dc: 87 32 0d 00  	fld	ft5, 0(s10)
800027e0: 07 b3 03 51  	fld	ft6, 1296(t2)
800027e4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027e8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800027ec: 27 30 43 00  	fsd	ft4, 0(t1)
800027f0: 87 b2 0d 00  	fld	ft5, 0(s11)
800027f4: 07 b3 03 5a  	fld	ft6, 1440(t2)
800027f8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800027fc: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002800: 27 30 43 00  	fsd	ft4, 0(t1)
80002804: 87 b2 00 00  	fld	ft5, 0(ra)
80002808: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000280c: 43 f2 12 22  	fmadd.d	ft4, ft5, ft1, ft4
80002810: 27 30 43 00  	fsd	ft4, 0(t1)
80002814: 07 b3 03 6c  	fld	ft6, 1728(t2)
80002818: d3 72 31 12  	fmul.d	ft5, ft2, ft3
8000281c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002820: 27 30 43 00  	fsd	ft4, 0(t1)
80002824: 87 32 0e 00  	fld	ft5, 0(t3)
80002828: 07 b3 03 75  	fld	ft6, 1872(t2)
8000282c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002830: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002834: 27 30 43 00  	fsd	ft4, 0(t1)
80002838: 87 32 04 00  	fld	ft5, 0(s0)
8000283c: 07 b3 03 7e  	fld	ft6, 2016(t2)
80002840: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002844: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002848: 27 30 43 00  	fsd	ft4, 0(t1)
8000284c: 87 b2 05 00  	fld	ft5, 0(a1)
80002850: 93 86 83 43  	addi	a3, t2, 1080
80002854: 07 b3 86 43  	fld	ft6, 1080(a3)
80002858: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000285c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002860: 27 30 43 00  	fsd	ft4, 0(t1)
80002864: 87 32 05 00  	fld	ft5, 0(a0)
80002868: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000286c: 43 f2 02 22  	fmadd.d	ft4, ft5, ft0, ft4
80002870: 27 30 43 00  	fsd	ft4, 0(t1)
80002874: 87 32 06 00  	fld	ft5, 0(a2)
80002878: 93 86 83 4c  	addi	a3, t2, 1224
8000287c: 07 b3 86 4c  	fld	ft6, 1224(a3)
80002880: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002884: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002888: 27 30 43 00  	fsd	ft4, 0(t1)
8000288c: 87 b2 07 00  	fld	ft5, 0(a5)
80002890: 93 86 03 51  	addi	a3, t2, 1296
80002894: 07 b3 06 51  	fld	ft6, 1296(a3)
80002898: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000289c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028a0: 27 30 43 00  	fsd	ft4, 0(t1)
800028a4: 87 b2 08 00  	fld	ft5, 0(a7)
800028a8: 93 86 83 55  	addi	a3, t2, 1368
800028ac: 07 b3 86 55  	fld	ft6, 1368(a3)
800028b0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800028b4: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028b8: 27 30 43 00  	fsd	ft4, 0(t1)
800028bc: 87 32 08 00  	fld	ft5, 0(a6)
800028c0: 93 86 03 5a  	addi	a3, t2, 1440
800028c4: 07 b3 06 5a  	fld	ft6, 1440(a3)
800028c8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800028cc: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800028d0: 27 30 43 00  	fsd	ft4, 0(t1)
800028d4: 87 b2 02 00  	fld	ft5, 0(t0)
800028d8: 93 86 83 5e  	addi	a3, t2, 1512
800028dc: 07 b3 86 5e  	fld	ft6, 1512(a3)
800028e0: d3 f1 32 12  	fmul.d	ft3, ft5, ft3
800028e4: c3 f1 61 22  	fmadd.d	ft3, ft3, ft6, ft4
;     for (j = 0; j < nj; j++) {
800028e8: 13 07 87 00  	addi	a4, a4, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800028ec: 27 30 33 00  	fsd	ft3, 0(t1)
;     for (j = 0; j < nj; j++) {
800028f0: e3 1e e7 e1  	bne	a4, t5, 0x8000270c <.LBB0_132+0x3b4>
800028f4: 83 26 c1 08  	lw	a3, 140(sp)
;   for (i = 0; i < ni; i++) {
800028f8: 93 86 16 00  	addi	a3, a3, 1
800028fc: 13 0c 0c 09  	addi	s8, s8, 144
80002900: 03 24 c1 02  	lw	s0, 44(sp)
80002904: 13 05 00 01  	addi	a0, zero, 16
80002908: e3 90 a6 da  	bne	a3, a0, 0x800026a8 <.LBB0_132+0x350>
8000290c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002910: 6f 00 00 29  	j	0x80002ba0 <.LBB0_134+0x288>
80002914: 93 05 00 00  	mv	a1, zero

80002918 <.LBB0_134>:
80002918: 17 35 00 00  	auipc	a0, 3
8000291c: 13 05 05 2a  	addi	a0, a0, 672
80002920: 87 31 05 00  	fld	ft3, 0(a0)
80002924: 03 2e 81 02  	lw	t3, 40(sp)
80002928: 13 07 00 00  	mv	a4, zero
8000292c: 23 24 b1 08  	sw	a1, 136(sp)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002930: 13 05 00 0b  	addi	a0, zero, 176
80002934: 33 85 a5 02  	mul	a0, a1, a0
80002938: b3 07 a4 00  	add	a5, s0, a0
8000293c: 13 85 87 00  	addi	a0, a5, 8
80002940: 23 26 a1 08  	sw	a0, 140(sp)
80002944: 93 8e 07 01  	addi	t4, a5, 16
80002948: 13 8f 87 01  	addi	t5, a5, 24
8000294c: 93 8f 07 02  	addi	t6, a5, 32
80002950: 13 83 87 02  	addi	t1, a5, 40
80002954: 93 89 07 03  	addi	s3, a5, 48
80002958: 13 8a 87 03  	addi	s4, a5, 56
8000295c: 93 8a 07 04  	addi	s5, a5, 64
80002960: 13 8b 87 04  	addi	s6, a5, 72
80002964: 93 8b 07 05  	addi	s7, a5, 80
80002968: 13 8c 87 05  	addi	s8, a5, 88
8000296c: 93 8c 07 06  	addi	s9, a5, 96
80002970: 13 8d 87 06  	addi	s10, a5, 104
80002974: 93 8d 07 07  	addi	s11, a5, 112
80002978: 93 80 87 07  	addi	ra, a5, 120
8000297c: 93 83 07 08  	addi	t2, a5, 128
80002980: 13 86 87 08  	addi	a2, a5, 136
80002984: 93 84 07 09  	addi	s1, a5, 144
80002988: 93 85 87 09  	addi	a1, a5, 152
8000298c: 93 86 07 0a  	addi	a3, a5, 160
80002990: 13 85 87 0a  	addi	a0, a5, 168
;       tmp[i][j] = 0.0;
80002994: 33 08 e9 00  	add	a6, s2, a4
80002998: 23 22 08 00  	sw	zero, 4(a6)
8000299c: 23 20 08 00  	sw	zero, 0(a6)
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
800029a0: 07 b2 07 00  	fld	ft4, 0(a5)
800029a4: b3 08 ee 00  	add	a7, t3, a4
800029a8: 87 b2 08 00  	fld	ft5, 0(a7)
800029ac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029b0: 53 72 52 12  	fmul.d	ft4, ft4, ft5
800029b4: 27 30 48 00  	fsd	ft4, 0(a6)
800029b8: 03 24 c1 08  	lw	s0, 140(sp)
800029bc: 87 32 04 00  	fld	ft5, 0(s0)
800029c0: 07 b3 08 09  	fld	ft6, 144(a7)
800029c4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029c8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800029cc: 27 30 48 00  	fsd	ft4, 0(a6)
800029d0: 87 b2 0e 00  	fld	ft5, 0(t4)
800029d4: 07 b3 08 12  	fld	ft6, 288(a7)
800029d8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029dc: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800029e0: 27 30 48 00  	fsd	ft4, 0(a6)
800029e4: 87 32 0f 00  	fld	ft5, 0(t5)
800029e8: 07 b3 08 1b  	fld	ft6, 432(a7)
800029ec: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029f0: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
800029f4: 27 30 48 00  	fsd	ft4, 0(a6)
800029f8: 87 b2 0f 00  	fld	ft5, 0(t6)
800029fc: 07 b3 08 24  	fld	ft6, 576(a7)
80002a00: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a04: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a08: 27 30 48 00  	fsd	ft4, 0(a6)
80002a0c: 87 32 03 00  	fld	ft5, 0(t1)
80002a10: 07 b3 08 2d  	fld	ft6, 720(a7)
80002a14: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a18: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a1c: 27 30 48 00  	fsd	ft4, 0(a6)
80002a20: 87 b2 09 00  	fld	ft5, 0(s3)
80002a24: 07 b3 08 36  	fld	ft6, 864(a7)
80002a28: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a2c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a30: 27 30 48 00  	fsd	ft4, 0(a6)
80002a34: 87 32 0a 00  	fld	ft5, 0(s4)
80002a38: 07 b3 08 3f  	fld	ft6, 1008(a7)
80002a3c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a40: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a44: 27 30 48 00  	fsd	ft4, 0(a6)
80002a48: 87 b2 0a 00  	fld	ft5, 0(s5)
80002a4c: 07 b3 08 48  	fld	ft6, 1152(a7)
80002a50: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a54: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a58: 27 30 48 00  	fsd	ft4, 0(a6)
80002a5c: 87 32 0b 00  	fld	ft5, 0(s6)
80002a60: 07 b3 08 51  	fld	ft6, 1296(a7)
80002a64: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a68: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a6c: 27 30 48 00  	fsd	ft4, 0(a6)
80002a70: 87 b2 0b 00  	fld	ft5, 0(s7)
80002a74: 07 b3 08 5a  	fld	ft6, 1440(a7)
80002a78: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a7c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a80: 27 30 48 00  	fsd	ft4, 0(a6)
80002a84: 87 32 0c 00  	fld	ft5, 0(s8)
80002a88: 07 b3 08 63  	fld	ft6, 1584(a7)
80002a8c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a90: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002a94: 27 30 48 00  	fsd	ft4, 0(a6)
80002a98: 87 b2 0c 00  	fld	ft5, 0(s9)
80002a9c: 07 b3 08 6c  	fld	ft6, 1728(a7)
80002aa0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002aa4: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002aa8: 27 30 48 00  	fsd	ft4, 0(a6)
80002aac: 87 32 0d 00  	fld	ft5, 0(s10)
80002ab0: 07 b3 08 75  	fld	ft6, 1872(a7)
80002ab4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002ab8: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002abc: 27 30 48 00  	fsd	ft4, 0(a6)
80002ac0: 87 b2 0d 00  	fld	ft5, 0(s11)
80002ac4: 07 b3 08 7e  	fld	ft6, 2016(a7)
80002ac8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002acc: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002ad0: 27 30 48 00  	fsd	ft4, 0(a6)
80002ad4: 87 b2 00 00  	fld	ft5, 0(ra)
80002ad8: 93 82 88 43  	addi	t0, a7, 1080
80002adc: 07 b3 82 43  	fld	ft6, 1080(t0)
80002ae0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002ae4: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002ae8: 27 30 48 00  	fsd	ft4, 0(a6)
80002aec: 87 b2 03 00  	fld	ft5, 0(t2)
80002af0: 13 84 08 48  	addi	s0, a7, 1152
80002af4: 07 33 04 48  	fld	ft6, 1152(s0)
80002af8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002afc: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b00: 27 30 48 00  	fsd	ft4, 0(a6)
80002b04: 87 32 06 00  	fld	ft5, 0(a2)
80002b08: 13 84 88 4c  	addi	s0, a7, 1224
80002b0c: 07 33 84 4c  	fld	ft6, 1224(s0)
80002b10: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b14: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b18: 27 30 48 00  	fsd	ft4, 0(a6)
80002b1c: 87 b2 04 00  	fld	ft5, 0(s1)
80002b20: 13 84 08 51  	addi	s0, a7, 1296
80002b24: 07 33 04 51  	fld	ft6, 1296(s0)
80002b28: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b2c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b30: 27 30 48 00  	fsd	ft4, 0(a6)
80002b34: 87 b2 05 00  	fld	ft5, 0(a1)
80002b38: 13 84 88 55  	addi	s0, a7, 1368
80002b3c: 07 33 84 55  	fld	ft6, 1368(s0)
80002b40: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b44: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b48: 27 30 48 00  	fsd	ft4, 0(a6)
80002b4c: 87 b2 06 00  	fld	ft5, 0(a3)
80002b50: 13 84 08 5a  	addi	s0, a7, 1440
80002b54: 07 33 04 5a  	fld	ft6, 1440(s0)
80002b58: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b5c: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
80002b60: 27 30 48 00  	fsd	ft4, 0(a6)
80002b64: 87 32 05 00  	fld	ft5, 0(a0)
80002b68: 13 84 88 5e  	addi	s0, a7, 1512
80002b6c: 07 33 84 5e  	fld	ft6, 1512(s0)
80002b70: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002b74: 43 f2 62 22  	fmadd.d	ft4, ft5, ft6, ft4
;     for (j = 0; j < nj; j++) {
80002b78: 13 07 87 00  	addi	a4, a4, 8
;         tmp[i][j] += alpha * A[i][k] * B[k][j];
80002b7c: 27 30 48 00  	fsd	ft4, 0(a6)
80002b80: 13 04 00 09  	addi	s0, zero, 144
;     for (j = 0; j < nj; j++) {
80002b84: e3 18 87 e0  	bne	a4, s0, 0x80002994 <.LBB0_134+0x7c>
80002b88: 83 25 81 08  	lw	a1, 136(sp)
;   for (i = 0; i < ni; i++) {
80002b8c: 93 85 15 00  	addi	a1, a1, 1
80002b90: 13 09 09 09  	addi	s2, s2, 144
80002b94: 03 24 c1 02  	lw	s0, 44(sp)
80002b98: 13 05 00 01  	addi	a0, zero, 16
80002b9c: e3 96 a5 d8  	bne	a1, a0, 0x80002928 <.LBB0_134+0x10>
80002ba0: 83 2d c1 01  	lw	s11, 28(sp)
80002ba4: 83 24 c1 07  	lw	s1, 124(sp)
;   for (i = 0; i < ni; i++) {
80002ba8: b3 85 b4 01  	add	a1, s1, s11
80002bac: b3 b6 95 00  	sltu	a3, a1, s1
80002bb0: 13 85 85 50  	addi	a0, a1, 1288
80002bb4: b3 37 b5 00  	sltu	a5, a0, a1
80002bb8: 83 23 81 01  	lw	t2, 24(sp)
80002bbc: 33 86 74 00  	add	a2, s1, t2
80002bc0: 33 37 96 00  	sltu	a4, a2, s1
80002bc4: 93 05 86 38  	addi	a1, a2, 904
80002bc8: 33 b6 c5 00  	sltu	a2, a1, a2
80002bcc: 33 07 c7 00  	add	a4, a4, a2
80002bd0: 03 26 81 07  	lw	a2, 120(sp)
80002bd4: 63 06 06 00  	beqz	a2, 0x80002be0 <.LBB0_134+0x2c8>
80002bd8: 13 06 00 00  	mv	a2, zero
80002bdc: 6f 00 c0 00  	j	0x80002be8 <.LBB0_134+0x2d0>
80002be0: 03 26 41 07  	lw	a2, 116(sp)
80002be4: 33 36 76 00  	sltu	a2, a2, t2
;   for (i = 0; i < ni; i++) {
80002be8: b3 87 f6 00  	add	a5, a3, a5
80002bec: 83 20 41 01  	lw	ra, 20(sp)
80002bf0: 63 00 07 02  	beqz	a4, 0x80002c10 <.LBB0_134+0x2f8>
80002bf4: 93 06 00 00  	mv	a3, zero
80002bf8: 63 90 07 02  	bnez	a5, 0x80002c18 <.LBB0_134+0x300>
80002bfc: 33 35 75 00  	sltu	a0, a0, t2
;   for (i = 0; i < ni; i++) {
80002c00: 33 66 d6 00  	or	a2, a2, a3
80002c04: 63 10 07 02  	bnez	a4, 0x80002c24 <.LBB0_134+0x30c>
80002c08: b3 b6 b5 01  	sltu	a3, a1, s11
80002c0c: 6f 00 c0 01  	j	0x80002c28 <.LBB0_134+0x310>
80002c10: b3 b6 15 00  	sltu	a3, a1, ra
;   for (i = 0; i < ni; i++) {
80002c14: e3 84 07 fe  	beqz	a5, 0x80002bfc <.LBB0_134+0x2e4>
80002c18: 13 05 00 00  	mv	a0, zero
80002c1c: 33 66 d6 00  	or	a2, a2, a3
80002c20: e3 04 07 fe  	beqz	a4, 0x80002c08 <.LBB0_134+0x2f0>
80002c24: 93 06 00 00  	mv	a3, zero
80002c28: 33 65 d5 00  	or	a0, a0, a3
80002c2c: 33 75 a6 00  	and	a0, a2, a0
80002c30: 03 26 41 08  	lw	a2, 132(sp)
80002c34: 33 75 a6 00  	and	a0, a2, a0
80002c38: 13 d6 40 01  	srli	a2, ra, 20
80002c3c: 33 36 c0 00  	snez	a2, a2
80002c40: b7 f6 11 00  	lui	a3, 287
80002c44: 93 86 96 70  	addi	a3, a3, 1801
80002c48: b3 b6 d0 00  	sltu	a3, ra, a3
80002c4c: 33 76 d6 00  	and	a2, a2, a3
80002c50: 33 75 a6 00  	and	a0, a2, a0
80002c54: 03 26 c1 00  	lw	a2, 12(sp)
80002c58: 33 75 a6 00  	and	a0, a2, a0
80002c5c: 63 08 05 1e  	beqz	a0, 0x80002e4c <.LBB0_135+0x11c>
80002c60: 13 05 00 00  	mv	a0, zero
80002c64: 93 05 80 00  	addi	a1, zero, 8
80002c68: 13 08 70 01  	addi	a6, zero, 23
;   for (i = 0; i < ni; i++) {
80002c6c: 93 06 00 04  	addi	a3, zero, 64
80002c70: 13 07 00 0c  	addi	a4, zero, 192
80002c74: ab 20 d8 00  	scfgw	a6, a3
80002c78: ab a0 e5 00  	scfgw	a1, a4
80002c7c: 93 06 f0 00  	addi	a3, zero, 15
80002c80: 13 07 00 06  	addi	a4, zero, 96
80002c84: 93 07 00 0e  	addi	a5, zero, 224
80002c88: ab a0 e6 00  	scfgw	a3, a4
80002c8c: ab a0 f5 00  	scfgw	a1, a5
80002c90: 13 07 00 02  	addi	a4, zero, 32
80002c94: ab 20 e0 00  	scfgw	zero, a4
80002c98: 2b a0 03 32  	scfgwi	t2, 800
80002c9c: 13 07 10 01  	addi	a4, zero, 17
80002ca0: 93 07 10 00  	addi	a5, zero, 1
80002ca4: 93 84 07 04  	addi	s1, a5, 64
80002ca8: 13 84 07 0c  	addi	s0, a5, 192
80002cac: ab 20 97 00  	scfgw	a4, s1
80002cb0: ab a0 85 00  	scfgw	a1, s0
80002cb4: 93 04 80 f7  	addi	s1, zero, -136
80002cb8: 13 84 07 06  	addi	s0, a5, 96
80002cbc: ab 20 88 00  	scfgw	a6, s0
80002cc0: 13 84 07 0e  	addi	s0, a5, 224
80002cc4: ab a0 84 00  	scfgw	s1, s0
80002cc8: 93 84 07 08  	addi	s1, a5, 128
80002ccc: 13 84 07 10  	addi	s0, a5, 256
80002cd0: ab a0 96 00  	scfgw	a3, s1
80002cd4: ab a0 85 00  	scfgw	a1, s0
80002cd8: 93 85 07 02  	addi	a1, a5, 32
80002cdc: ab 20 b0 00  	scfgw	zero, a1
80002ce0: 2b a0 10 34  	scfgwi	ra, 833
80002ce4: 93 05 00 0c  	addi	a1, zero, 192
80002ce8: 93 07 20 00  	addi	a5, zero, 2
80002cec: 93 84 07 04  	addi	s1, a5, 64
80002cf0: 13 84 07 0c  	addi	s0, a5, 192
80002cf4: ab 20 97 00  	scfgw	a4, s1
80002cf8: ab a0 85 00  	scfgw	a1, s0
80002cfc: 37 f7 ff ff  	lui	a4, 1048575
80002d00: 93 04 87 34  	addi	s1, a4, 840
80002d04: 13 84 07 06  	addi	s0, a5, 96
80002d08: 13 86 07 0e  	addi	a2, a5, 224
80002d0c: ab 20 88 00  	scfgw	a6, s0
80002d10: ab a0 c4 00  	scfgw	s1, a2
80002d14: 13 06 87 28  	addi	a2, a4, 648
80002d18: 13 87 07 08  	addi	a4, a5, 128
80002d1c: 93 84 07 10  	addi	s1, a5, 256
80002d20: ab a0 e6 00  	scfgw	a3, a4
80002d24: ab 20 96 00  	scfgw	a2, s1
80002d28: 13 86 07 02  	addi	a2, a5, 32
80002d2c: ab 20 c0 00  	scfgw	zero, a2

80002d30 <.LBB0_135>:
80002d30: 17 36 00 00  	auipc	a2, 3
80002d34: 13 06 06 e9  	addi	a2, a2, -368
80002d38: 87 31 06 00  	fld	ft3, 0(a2)
;   for (i = 0; i < ni; i++) {
80002d3c: 2b a0 2d 34  	scfgwi	s11, 834
80002d40: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002d44: 13 06 00 01  	addi	a2, zero, 16
80002d48: 93 86 03 00  	mv	a3, t2
80002d4c: 13 07 00 00  	mv	a4, zero
;       D[i][j] *= beta;
80002d50: b3 87 e6 00  	add	a5, a3, a4
80002d54: 53 72 30 12  	fmul.d	ft4, ft0, ft3
80002d58: 27 b0 47 00  	fsd	ft4, 0(a5)
;         D[i][j] += tmp[i][k] * C[k][j];
80002d5c: 07 b3 07 00  	fld	ft6, 0(a5)
80002d60: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d64: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d68: 07 b3 07 00  	fld	ft6, 0(a5)
80002d6c: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d70: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d74: 07 b3 07 00  	fld	ft6, 0(a5)
80002d78: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d7c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d80: 07 b3 07 00  	fld	ft6, 0(a5)
80002d84: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d88: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d8c: 07 b3 07 00  	fld	ft6, 0(a5)
80002d90: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002d94: 27 b0 47 00  	fsd	ft4, 0(a5)
80002d98: 07 b3 07 00  	fld	ft6, 0(a5)
80002d9c: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002da0: 27 b0 47 00  	fsd	ft4, 0(a5)
80002da4: 07 b3 07 00  	fld	ft6, 0(a5)
80002da8: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dac: 27 b0 47 00  	fsd	ft4, 0(a5)
80002db0: 07 b3 07 00  	fld	ft6, 0(a5)
80002db4: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002db8: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dbc: 07 b3 07 00  	fld	ft6, 0(a5)
80002dc0: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dc4: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dc8: 07 b3 07 00  	fld	ft6, 0(a5)
80002dcc: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002dd0: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dd4: 07 b3 07 00  	fld	ft6, 0(a5)
80002dd8: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002ddc: 27 b0 47 00  	fsd	ft4, 0(a5)
80002de0: 07 b3 07 00  	fld	ft6, 0(a5)
80002de4: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002de8: 27 b0 47 00  	fsd	ft4, 0(a5)
80002dec: 07 b3 07 00  	fld	ft6, 0(a5)
80002df0: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002df4: 27 b0 47 00  	fsd	ft4, 0(a5)
80002df8: 07 b3 07 00  	fld	ft6, 0(a5)
80002dfc: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002e00: 27 b0 47 00  	fsd	ft4, 0(a5)
80002e04: 07 b3 07 00  	fld	ft6, 0(a5)
80002e08: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002e0c: 27 b0 47 00  	fsd	ft4, 0(a5)
80002e10: 07 b3 07 00  	fld	ft6, 0(a5)
80002e14: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002e18: 27 b0 47 00  	fsd	ft4, 0(a5)
80002e1c: 07 b3 07 00  	fld	ft6, 0(a5)
80002e20: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
80002e24: 27 b0 47 00  	fsd	ft4, 0(a5)
80002e28: 07 b3 07 00  	fld	ft6, 0(a5)
80002e2c: 43 72 11 32  	fmadd.d	ft4, ft2, ft1, ft6
;     for (j = 0; j < nl; j++) {
80002e30: 13 07 87 00  	addi	a4, a4, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80002e34: 27 b0 47 00  	fsd	ft4, 0(a5)
;     for (j = 0; j < nl; j++) {
80002e38: e3 1c b7 f0  	bne	a4, a1, 0x80002d50 <.LBB0_135+0x20>
;   for (i = 0; i < ni; i++) {
80002e3c: 13 05 15 00  	addi	a0, a0, 1
80002e40: 93 86 06 0c  	addi	a3, a3, 192
80002e44: e3 14 c5 f0  	bne	a0, a2, 0x80002d4c <.LBB0_135+0x1c>
80002e48: 6f 00 80 34  	j	0x80003190 <.LBB0_136+0x158>
80002e4c: 13 85 0d 4e  	addi	a0, s11, 1248
80002e50: 93 08 05 4e  	addi	a7, a0, 1248
80002e54: 13 85 cd 53  	addi	a0, s11, 1340
80002e58: 13 06 c5 53  	addi	a2, a0, 1340
80002e5c: 13 85 80 04  	addi	a0, ra, 72
80002e60: 63 70 16 03  	bgeu	a2, a7, 0x80002e80 <.LBB0_135+0x150>
80002e64: 13 08 00 00  	mv	a6, zero
80002e68: 33 06 95 00  	add	a2, a0, s1
80002e6c: 63 10 07 02  	bnez	a4, 0x80002e8c <.LBB0_135+0x15c>
80002e70: b3 b4 15 01  	sltu	s1, a1, a7
;   for (i = 0; i < ni; i++) {
80002e74: 63 60 a6 02  	bltu	a2, a0, 0x80002e94 <.LBB0_135+0x164>
80002e78: 33 34 76 00  	sltu	s0, a2, t2
80002e7c: 6f 00 c0 01  	j	0x80002e98 <.LBB0_135+0x168>
80002e80: 33 38 76 00  	sltu	a6, a2, t2
;   for (i = 0; i < ni; i++) {
80002e84: 33 06 95 00  	add	a2, a0, s1
80002e88: e3 04 07 fe  	beqz	a4, 0x80002e70 <.LBB0_135+0x140>
80002e8c: 93 04 00 00  	mv	s1, zero
80002e90: e3 74 a6 fe  	bgeu	a2, a0, 0x80002e78 <.LBB0_135+0x148>
80002e94: 13 04 00 00  	mv	s0, zero
80002e98: 93 86 0d 6c  	addi	a3, s11, 1728
80002e9c: 93 87 8d 77  	addi	a5, s11, 1912
80002ea0: 63 0a 07 00  	beqz	a4, 0x80002eb4 <.LBB0_135+0x184>
80002ea4: 13 06 00 00  	mv	a2, zero
80002ea8: 63 ea d7 00  	bltu	a5, a3, 0x80002ebc <.LBB0_135+0x18c>
80002eac: b3 b7 77 00  	sltu	a5, a5, t2
80002eb0: 6f 00 00 01  	j	0x80002ec0 <.LBB0_135+0x190>
80002eb4: 33 b6 a5 00  	sltu	a2, a1, a0
;   for (i = 0; i < ni; i++) {
80002eb8: e3 fa d7 fe  	bgeu	a5, a3, 0x80002eac <.LBB0_135+0x17c>
80002ebc: 93 07 00 00  	mv	a5, zero
80002ec0: b3 64 98 00  	or	s1, a6, s1
80002ec4: 33 66 c4 00  	or	a2, s0, a2
80002ec8: 63 06 07 00  	beqz	a4, 0x80002ed4 <.LBB0_135+0x1a4>
80002ecc: 93 05 00 00  	mv	a1, zero
80002ed0: 6f 00 80 00  	j	0x80002ed8 <.LBB0_135+0x1a8>
80002ed4: b3 b5 d5 00  	sltu	a1, a1, a3
;   for (i = 0; i < ni; i++) {
80002ed8: b3 e5 b7 00  	or	a1, a5, a1
80002edc: 33 f6 c4 00  	and	a2, s1, a2
80002ee0: b3 f5 c5 00  	and	a1, a1, a2
80002ee4: 13 d6 48 01  	srli	a2, a7, 20
80002ee8: 33 36 c0 00  	snez	a2, a2
80002eec: 37 07 12 00  	lui	a4, 288
80002ef0: 13 07 97 f4  	addi	a4, a4, -183
80002ef4: b3 b7 e8 00  	sltu	a5, a7, a4
80002ef8: 33 76 f6 00  	and	a2, a2, a5
80002efc: b3 75 b6 00  	and	a1, a2, a1
80002f00: 13 56 45 01  	srli	a2, a0, 20
80002f04: 33 36 c0 00  	snez	a2, a2
80002f08: b7 f7 11 00  	lui	a5, 287
80002f0c: 93 87 17 79  	addi	a5, a5, 1937
80002f10: b3 37 f5 00  	sltu	a5, a0, a5
80002f14: 33 76 f6 00  	and	a2, a2, a5
80002f18: b3 75 b6 00  	and	a1, a2, a1
80002f1c: 13 d6 46 01  	srli	a2, a3, 20
80002f20: 33 36 c0 00  	snez	a2, a2
80002f24: 33 b7 e6 00  	sltu	a4, a3, a4
80002f28: 33 76 e6 00  	and	a2, a2, a4
80002f2c: 93 02 00 00  	mv	t0, zero
80002f30: b3 75 b6 00  	and	a1, a2, a1
80002f34: 63 82 05 26  	beqz	a1, 0x80003198 <.LBB0_137>
80002f38: 13 03 80 00  	addi	t1, zero, 8
80002f3c: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < ni; i++) {
80002f40: 13 07 00 04  	addi	a4, zero, 64
80002f44: 93 07 00 0c  	addi	a5, zero, 192
80002f48: ab 20 e6 00  	scfgw	a2, a4
80002f4c: ab 20 f3 00  	scfgw	t1, a5
80002f50: 13 07 80 f4  	addi	a4, zero, -184
80002f54: 93 07 f0 00  	addi	a5, zero, 15
80002f58: 93 04 00 06  	addi	s1, zero, 96
80002f5c: 13 04 00 0e  	addi	s0, zero, 224
80002f60: ab a0 97 00  	scfgw	a5, s1
80002f64: ab 20 87 00  	scfgw	a4, s0
80002f68: 93 04 00 02  	addi	s1, zero, 32
80002f6c: ab 20 90 00  	scfgw	zero, s1
80002f70: 2b a0 08 32  	scfgwi	a7, 800
80002f74: 93 04 10 00  	addi	s1, zero, 1
80002f78: 13 84 04 04  	addi	s0, s1, 64
80002f7c: 93 85 04 0c  	addi	a1, s1, 192
80002f80: ab 20 86 00  	scfgw	a2, s0
80002f84: ab 20 b0 00  	scfgw	zero, a1
80002f88: 13 08 00 09  	addi	a6, zero, 144
80002f8c: 93 85 04 06  	addi	a1, s1, 96
80002f90: ab a0 b7 00  	scfgw	a5, a1
80002f94: 93 85 04 0e  	addi	a1, s1, 224
80002f98: ab 20 b8 00  	scfgw	a6, a1
80002f9c: 93 85 04 02  	addi	a1, s1, 32
80002fa0: ab 20 b0 00  	scfgw	zero, a1
80002fa4: 2b 20 15 32  	scfgwi	a0, 801
80002fa8: 13 05 20 00  	addi	a0, zero, 2
80002fac: 93 05 05 04  	addi	a1, a0, 64
80002fb0: 93 04 05 0c  	addi	s1, a0, 192
80002fb4: ab 20 b6 00  	scfgw	a2, a1
80002fb8: ab 20 93 00  	scfgw	t1, s1
80002fbc: 93 05 05 06  	addi	a1, a0, 96
80002fc0: 13 06 05 0e  	addi	a2, a0, 224
80002fc4: ab a0 b7 00  	scfgw	a5, a1
80002fc8: ab 20 c7 00  	scfgw	a4, a2
80002fcc: 13 05 05 02  	addi	a0, a0, 32
80002fd0: ab 20 a0 00  	scfgw	zero, a0
80002fd4: 2b a0 26 32  	scfgwi	a3, 802
80002fd8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002fdc: 13 03 00 0c  	addi	t1, zero, 192
80002fe0: 93 08 00 01  	addi	a7, zero, 16
80002fe4: 93 07 00 00  	mv	a5, zero
;         D[i][j] += tmp[i][k] * C[k][j];
80002fe8: 33 85 02 03  	mul	a0, t0, a6
80002fec: b3 84 a0 00  	add	s1, ra, a0
80002ff0: 13 8e 84 00  	addi	t3, s1, 8
80002ff4: 93 8e 04 01  	addi	t4, s1, 16
80002ff8: 13 8f 84 01  	addi	t5, s1, 24
80002ffc: 93 8f 04 02  	addi	t6, s1, 32
80003000: 13 89 84 02  	addi	s2, s1, 40
80003004: 93 89 04 03  	addi	s3, s1, 48
80003008: 13 8a 84 03  	addi	s4, s1, 56
8000300c: 93 8a 04 04  	addi	s5, s1, 64
80003010: 13 8b 04 05  	addi	s6, s1, 80
80003014: 93 8b 84 05  	addi	s7, s1, 88
80003018: 13 8c 04 06  	addi	s8, s1, 96
8000301c: 93 8c 84 06  	addi	s9, s1, 104
80003020: 13 8d 04 07  	addi	s10, s1, 112
80003024: 13 86 84 07  	addi	a2, s1, 120
80003028: 93 86 04 08  	addi	a3, s1, 128
8000302c: 93 85 84 08  	addi	a1, s1, 136
;       D[i][j] *= beta;
80003030: 33 85 f3 00  	add	a0, t2, a5
80003034: 87 31 05 00  	fld	ft3, 0(a0)

80003038 <.LBB0_136>:
80003038: 17 37 00 00  	auipc	a4, 3
8000303c: 13 07 87 b8  	addi	a4, a4, -1144
80003040: 07 32 07 00  	fld	ft4, 0(a4)
;       D[i][j] *= beta;
80003044: d3 f1 41 12  	fmul.d	ft3, ft3, ft4
80003048: 27 30 35 00  	fsd	ft3, 0(a0)
;         D[i][j] += tmp[i][k] * C[k][j];
8000304c: 07 b2 04 00  	fld	ft4, 0(s1)
80003050: 33 87 fd 00  	add	a4, s11, a5
80003054: 87 32 07 00  	fld	ft5, 0(a4)
80003058: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000305c: 27 30 35 00  	fsd	ft3, 0(a0)
80003060: 07 32 0e 00  	fld	ft4, 0(t3)
80003064: 87 32 07 0c  	fld	ft5, 192(a4)
80003068: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000306c: 27 30 35 00  	fsd	ft3, 0(a0)
80003070: 07 b2 0e 00  	fld	ft4, 0(t4)
80003074: 87 32 07 18  	fld	ft5, 384(a4)
80003078: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000307c: 27 30 35 00  	fsd	ft3, 0(a0)
80003080: 07 32 0f 00  	fld	ft4, 0(t5)
80003084: 87 32 07 24  	fld	ft5, 576(a4)
80003088: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000308c: 27 30 35 00  	fsd	ft3, 0(a0)
80003090: 07 b2 0f 00  	fld	ft4, 0(t6)
80003094: 87 32 07 30  	fld	ft5, 768(a4)
80003098: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000309c: 27 30 35 00  	fsd	ft3, 0(a0)
800030a0: 07 32 09 00  	fld	ft4, 0(s2)
800030a4: 87 32 07 3c  	fld	ft5, 960(a4)
800030a8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030ac: 27 30 35 00  	fsd	ft3, 0(a0)
800030b0: 07 b2 09 00  	fld	ft4, 0(s3)
800030b4: 87 32 07 48  	fld	ft5, 1152(a4)
800030b8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030bc: 27 30 35 00  	fsd	ft3, 0(a0)
800030c0: 07 32 0a 00  	fld	ft4, 0(s4)
800030c4: 87 32 07 54  	fld	ft5, 1344(a4)
800030c8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030cc: 27 30 35 00  	fsd	ft3, 0(a0)
800030d0: 07 b2 0a 00  	fld	ft4, 0(s5)
800030d4: 87 32 07 60  	fld	ft5, 1536(a4)
800030d8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030dc: 27 30 35 00  	fsd	ft3, 0(a0)
800030e0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800030e4: 27 30 35 00  	fsd	ft3, 0(a0)
800030e8: 07 32 0b 00  	fld	ft4, 0(s6)
800030ec: 87 32 07 78  	fld	ft5, 1920(a4)
800030f0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030f4: 27 30 35 00  	fsd	ft3, 0(a0)
800030f8: 07 b2 0b 00  	fld	ft4, 0(s7)
800030fc: 13 04 07 42  	addi	s0, a4, 1056
80003100: 87 32 04 42  	fld	ft5, 1056(s0)
80003104: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003108: 27 30 35 00  	fsd	ft3, 0(a0)
8000310c: 07 32 0c 00  	fld	ft4, 0(s8)
80003110: 13 04 07 48  	addi	s0, a4, 1152
80003114: 87 32 04 48  	fld	ft5, 1152(s0)
80003118: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000311c: 27 30 35 00  	fsd	ft3, 0(a0)
80003120: 07 b2 0c 00  	fld	ft4, 0(s9)
80003124: c3 71 40 1a  	fmadd.d	ft3, ft0, ft4, ft3
80003128: 27 30 35 00  	fsd	ft3, 0(a0)
8000312c: 07 32 0d 00  	fld	ft4, 0(s10)
80003130: 13 04 07 54  	addi	s0, a4, 1344
80003134: 87 32 04 54  	fld	ft5, 1344(s0)
80003138: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000313c: 27 30 35 00  	fsd	ft3, 0(a0)
80003140: 07 32 06 00  	fld	ft4, 0(a2)
80003144: 13 04 07 5a  	addi	s0, a4, 1440
80003148: 87 32 04 5a  	fld	ft5, 1440(s0)
8000314c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003150: 27 30 35 00  	fsd	ft3, 0(a0)
80003154: 07 b2 06 00  	fld	ft4, 0(a3)
80003158: 13 04 07 60  	addi	s0, a4, 1536
8000315c: 87 32 04 60  	fld	ft5, 1536(s0)
80003160: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003164: 27 30 35 00  	fsd	ft3, 0(a0)
80003168: 07 b2 05 00  	fld	ft4, 0(a1)
8000316c: 13 07 07 66  	addi	a4, a4, 1632
80003170: 87 32 07 66  	fld	ft5, 1632(a4)
80003174: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++) {
80003178: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
8000317c: 27 30 35 00  	fsd	ft3, 0(a0)
;     for (j = 0; j < nl; j++) {
80003180: e3 98 67 ea  	bne	a5, t1, 0x80003030 <.LBB0_135+0x300>
;   for (i = 0; i < ni; i++) {
80003184: 93 82 12 00  	addi	t0, t0, 1
80003188: 93 83 03 0c  	addi	t2, t2, 192
8000318c: e3 9c 12 e5  	bne	t0, a7, 0x80002fe4 <.LBB0_135+0x2b4>
80003190: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003194: 6f 00 40 1d  	j	0x80003368 <.LBB0_137+0x1d0>

80003198 <.LBB0_137>:
80003198: 17 35 00 00  	auipc	a0, 3
8000319c: 13 05 85 a2  	addi	a0, a0, -1496
800031a0: 87 31 05 00  	fld	ft3, 0(a0)
800031a4: 13 03 00 0c  	addi	t1, zero, 192
800031a8: 93 08 00 01  	addi	a7, zero, 16
800031ac: 03 28 c1 01  	lw	a6, 28(sp)
800031b0: 93 07 00 00  	mv	a5, zero
;         D[i][j] += tmp[i][k] * C[k][j];
800031b4: 13 05 00 09  	addi	a0, zero, 144
800031b8: 33 85 a2 02  	mul	a0, t0, a0
800031bc: b3 84 a0 00  	add	s1, ra, a0
800031c0: 13 8e 84 00  	addi	t3, s1, 8
800031c4: 93 8e 04 01  	addi	t4, s1, 16
800031c8: 13 8f 84 01  	addi	t5, s1, 24
800031cc: 93 8f 04 02  	addi	t6, s1, 32
800031d0: 13 89 84 02  	addi	s2, s1, 40
800031d4: 93 89 04 03  	addi	s3, s1, 48
800031d8: 13 8a 84 03  	addi	s4, s1, 56
800031dc: 93 8a 04 04  	addi	s5, s1, 64
800031e0: 13 8b 84 04  	addi	s6, s1, 72
800031e4: 93 8b 04 05  	addi	s7, s1, 80
800031e8: 13 8c 84 05  	addi	s8, s1, 88
800031ec: 93 8c 04 06  	addi	s9, s1, 96
800031f0: 13 8d 84 06  	addi	s10, s1, 104
800031f4: 93 8d 04 07  	addi	s11, s1, 112
800031f8: 93 86 84 07  	addi	a3, s1, 120
800031fc: 13 85 04 08  	addi	a0, s1, 128
80003200: 13 86 84 08  	addi	a2, s1, 136
;       D[i][j] *= beta;
80003204: 33 87 f3 00  	add	a4, t2, a5
80003208: 07 32 07 00  	fld	ft4, 0(a4)
8000320c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003210: 27 30 47 00  	fsd	ft4, 0(a4)
;         D[i][j] += tmp[i][k] * C[k][j];
80003214: 87 b2 04 00  	fld	ft5, 0(s1)
80003218: 33 04 f8 00  	add	s0, a6, a5
8000321c: 07 33 04 00  	fld	ft6, 0(s0)
80003220: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003224: 27 30 47 00  	fsd	ft4, 0(a4)
80003228: 87 32 0e 00  	fld	ft5, 0(t3)
8000322c: 07 33 04 0c  	fld	ft6, 192(s0)
80003230: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003234: 27 30 47 00  	fsd	ft4, 0(a4)
80003238: 87 b2 0e 00  	fld	ft5, 0(t4)
8000323c: 07 33 04 18  	fld	ft6, 384(s0)
80003240: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003244: 27 30 47 00  	fsd	ft4, 0(a4)
80003248: 87 32 0f 00  	fld	ft5, 0(t5)
8000324c: 07 33 04 24  	fld	ft6, 576(s0)
80003250: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003254: 27 30 47 00  	fsd	ft4, 0(a4)
80003258: 87 b2 0f 00  	fld	ft5, 0(t6)
8000325c: 07 33 04 30  	fld	ft6, 768(s0)
80003260: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003264: 27 30 47 00  	fsd	ft4, 0(a4)
80003268: 87 32 09 00  	fld	ft5, 0(s2)
8000326c: 07 33 04 3c  	fld	ft6, 960(s0)
80003270: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003274: 27 30 47 00  	fsd	ft4, 0(a4)
80003278: 87 b2 09 00  	fld	ft5, 0(s3)
8000327c: 07 33 04 48  	fld	ft6, 1152(s0)
80003280: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003284: 27 30 47 00  	fsd	ft4, 0(a4)
80003288: 87 32 0a 00  	fld	ft5, 0(s4)
8000328c: 07 33 04 54  	fld	ft6, 1344(s0)
80003290: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003294: 27 30 47 00  	fsd	ft4, 0(a4)
80003298: 87 b2 0a 00  	fld	ft5, 0(s5)
8000329c: 07 33 04 60  	fld	ft6, 1536(s0)
800032a0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800032a4: 27 30 47 00  	fsd	ft4, 0(a4)
800032a8: 87 32 0b 00  	fld	ft5, 0(s6)
800032ac: 07 33 04 6c  	fld	ft6, 1728(s0)
800032b0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800032b4: 27 30 47 00  	fsd	ft4, 0(a4)
800032b8: 87 b2 0b 00  	fld	ft5, 0(s7)
800032bc: 07 33 04 78  	fld	ft6, 1920(s0)
800032c0: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800032c4: 27 30 47 00  	fsd	ft4, 0(a4)
800032c8: 87 32 0c 00  	fld	ft5, 0(s8)
800032cc: 93 05 04 42  	addi	a1, s0, 1056
800032d0: 07 b3 05 42  	fld	ft6, 1056(a1)
800032d4: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800032d8: 27 30 47 00  	fsd	ft4, 0(a4)
800032dc: 87 b2 0c 00  	fld	ft5, 0(s9)
800032e0: 93 05 04 48  	addi	a1, s0, 1152
800032e4: 07 b3 05 48  	fld	ft6, 1152(a1)
800032e8: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
800032ec: 27 30 47 00  	fsd	ft4, 0(a4)
800032f0: 87 32 0d 00  	fld	ft5, 0(s10)
800032f4: 93 05 04 4e  	addi	a1, s0, 1248
800032f8: 07 b3 05 4e  	fld	ft6, 1248(a1)
800032fc: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003300: 27 30 47 00  	fsd	ft4, 0(a4)
80003304: 87 b2 0d 00  	fld	ft5, 0(s11)
80003308: 93 05 04 54  	addi	a1, s0, 1344
8000330c: 07 b3 05 54  	fld	ft6, 1344(a1)
80003310: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003314: 27 30 47 00  	fsd	ft4, 0(a4)
80003318: 87 b2 06 00  	fld	ft5, 0(a3)
8000331c: 93 05 04 5a  	addi	a1, s0, 1440
80003320: 07 b3 05 5a  	fld	ft6, 1440(a1)
80003324: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
80003328: 27 30 47 00  	fsd	ft4, 0(a4)
8000332c: 87 32 05 00  	fld	ft5, 0(a0)
80003330: 93 05 04 60  	addi	a1, s0, 1536
80003334: 07 b3 05 60  	fld	ft6, 1536(a1)
80003338: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
8000333c: 27 30 47 00  	fsd	ft4, 0(a4)
80003340: 87 32 06 00  	fld	ft5, 0(a2)
80003344: 93 05 04 66  	addi	a1, s0, 1632
80003348: 07 b3 05 66  	fld	ft6, 1632(a1)
8000334c: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;     for (j = 0; j < nl; j++) {
80003350: 93 87 87 00  	addi	a5, a5, 8
;         D[i][j] += tmp[i][k] * C[k][j];
80003354: 27 30 47 00  	fsd	ft4, 0(a4)
;     for (j = 0; j < nl; j++) {
80003358: e3 96 67 ea  	bne	a5, t1, 0x80003204 <.LBB0_137+0x6c>
;   for (i = 0; i < ni; i++) {
8000335c: 93 82 12 00  	addi	t0, t0, 1
80003360: 93 83 03 0c  	addi	t2, t2, 192
80003364: e3 96 12 e5  	bne	t0, a7, 0x800031b0 <.LBB0_137+0x18>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80003368: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
8000336c: 83 25 01 08  	lw	a1, 128(sp)
80003370: b3 05 b5 40  	sub	a1, a0, a1

80003374 <.LBB0_138>:
80003374: 17 25 00 00  	auipc	a0, 2
80003378: 13 05 d5 58  	addi	a0, a0, 1421
8000337c: 97 00 00 00  	auipc	ra, 0
80003380: e7 80 00 24  	jalr	576(ra)
80003384: 03 25 41 08  	lw	a0, 132(sp)
80003388: 63 0e 05 0a  	beqz	a0, 0x80003444 <.LBB0_138+0xd0>
8000338c: 13 05 80 00  	addi	a0, zero, 8
80003390: 93 05 70 01  	addi	a1, zero, 23
;     for (int i = 0; i < n; i++){
80003394: 13 06 00 04  	addi	a2, zero, 64
80003398: 93 06 00 0c  	addi	a3, zero, 192
8000339c: ab a0 c5 00  	scfgw	a1, a2
800033a0: ab 20 d5 00  	scfgw	a0, a3
800033a4: 93 05 f0 00  	addi	a1, zero, 15
800033a8: 13 06 00 06  	addi	a2, zero, 96
800033ac: 93 06 00 0e  	addi	a3, zero, 224
800033b0: ab a0 c5 00  	scfgw	a1, a2
800033b4: ab 20 d5 00  	scfgw	a0, a3
800033b8: 13 05 00 02  	addi	a0, zero, 32
800033bc: ab 20 a0 00  	scfgw	zero, a0
800033c0: 03 25 81 01  	lw	a0, 24(sp)
800033c4: 2b 20 05 32  	scfgwi	a0, 800
800033c8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800033cc: d3 01 00 d2  	fcvt.d.w	ft3, zero
800033d0: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
800033d4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033d8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033dc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033e0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033e4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033e8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033ec: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033f0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033f4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033f8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800033fc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003400: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003404: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003408: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000340c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003410: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003414: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003418: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000341c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003420: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003424: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003428: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000342c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003430: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80003434: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003438: e3 1e 05 f8  	bnez	a0, 0x800033d4 <.LBB0_138+0x60>
8000343c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003440: 6f 00 00 0e  	j	0x80003520 <.LBB0_139>
;     for (int i = 0; i < n; i++){
80003444: 03 25 81 01  	lw	a0, 24(sp)
80003448: 13 05 05 06  	addi	a0, a0, 96
8000344c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003450: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80003454: 07 32 05 fa  	fld	ft4, -96(a0)
80003458: 87 32 85 fa  	fld	ft5, -88(a0)
8000345c: 07 33 05 fb  	fld	ft6, -80(a0)
80003460: 87 33 85 fb  	fld	ft7, -72(a0)
80003464: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003468: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000346c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003470: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003474: 07 32 05 fc  	fld	ft4, -64(a0)
80003478: 87 32 85 fc  	fld	ft5, -56(a0)
8000347c: 07 33 05 fd  	fld	ft6, -48(a0)
80003480: 87 33 85 fd  	fld	ft7, -40(a0)
80003484: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003488: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000348c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003490: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003494: 07 32 05 fe  	fld	ft4, -32(a0)
80003498: 87 32 85 fe  	fld	ft5, -24(a0)
8000349c: 07 33 05 ff  	fld	ft6, -16(a0)
800034a0: 87 33 85 ff  	fld	ft7, -8(a0)
800034a4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800034a8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800034ac: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800034b0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800034b4: 07 32 05 00  	fld	ft4, 0(a0)
800034b8: 87 32 85 00  	fld	ft5, 8(a0)
800034bc: 07 33 05 01  	fld	ft6, 16(a0)
800034c0: 87 33 85 01  	fld	ft7, 24(a0)
800034c4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800034c8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800034cc: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800034d0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800034d4: 07 32 05 02  	fld	ft4, 32(a0)
800034d8: 87 32 85 02  	fld	ft5, 40(a0)
800034dc: 07 33 05 03  	fld	ft6, 48(a0)
800034e0: 87 33 85 03  	fld	ft7, 56(a0)
800034e4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800034e8: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800034ec: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800034f0: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800034f4: 07 32 05 04  	fld	ft4, 64(a0)
800034f8: 87 32 85 04  	fld	ft5, 72(a0)
800034fc: 07 33 05 05  	fld	ft6, 80(a0)
80003500: 87 33 85 05  	fld	ft7, 88(a0)
80003504: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003508: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
8000350c: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003510: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80003514: 93 85 f5 ff  	addi	a1, a1, -1
80003518: 13 05 05 0c  	addi	a0, a0, 192
8000351c: e3 9c 05 f2  	bnez	a1, 0x80003454 <.LBB0_138+0xe0>

80003520 <.LBB0_139>:
80003520: 17 25 00 00  	auipc	a0, 2
80003524: 13 05 85 6a  	addi	a0, a0, 1704
80003528: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
8000352c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80003530: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80003534: 27 38 81 08  	fsd	fs0, 144(sp)
80003538: 03 26 01 09  	lw	a2, 144(sp)
8000353c: 83 26 41 09  	lw	a3, 148(sp)

80003540 <.LBB0_140>:
80003540: 17 25 00 00  	auipc	a0, 2
80003544: 13 05 55 3b  	addi	a0, a0, 949
80003548: 97 00 00 00  	auipc	ra, 0
8000354c: e7 80 40 07  	jalr	116(ra)

80003550 <.LBB0_141>:
80003550: 17 25 00 00  	auipc	a0, 2
80003554: 13 05 05 68  	addi	a0, a0, 1664
80003558: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
8000355c: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80003560: 87 3b 81 09  	fld	fs7, 152(sp)
80003564: 07 3b 01 0a  	fld	fs6, 160(sp)
80003568: 87 3a 81 0a  	fld	fs5, 168(sp)
8000356c: 07 3a 01 0b  	fld	fs4, 176(sp)
80003570: 87 39 81 0b  	fld	fs3, 184(sp)
80003574: 07 39 01 0c  	fld	fs2, 192(sp)
80003578: 87 34 81 0c  	fld	fs1, 200(sp)
8000357c: 07 34 01 0d  	fld	fs0, 208(sp)
80003580: 83 2d c1 0d  	lw	s11, 220(sp)
80003584: 03 2d 01 0e  	lw	s10, 224(sp)
80003588: 83 2c 41 0e  	lw	s9, 228(sp)
8000358c: 03 2c 81 0e  	lw	s8, 232(sp)
80003590: 83 2b c1 0e  	lw	s7, 236(sp)
80003594: 03 2b 01 0f  	lw	s6, 240(sp)
80003598: 83 2a 41 0f  	lw	s5, 244(sp)
8000359c: 03 2a 81 0f  	lw	s4, 248(sp)
800035a0: 83 29 c1 0f  	lw	s3, 252(sp)
800035a4: 03 29 01 10  	lw	s2, 256(sp)
800035a8: 83 24 41 10  	lw	s1, 260(sp)
800035ac: 03 24 81 10  	lw	s0, 264(sp)
800035b0: 83 20 c1 10  	lw	ra, 268(sp)
800035b4: 13 01 01 11  	addi	sp, sp, 272
800035b8: 67 80 00 00  	ret

800035bc <printf_>:
; {
800035bc: 13 01 01 fd  	addi	sp, sp, -48
800035c0: 23 26 11 00  	sw	ra, 12(sp)
800035c4: 93 02 05 00  	mv	t0, a0
800035c8: 23 26 11 03  	sw	a7, 44(sp)
800035cc: 23 24 01 03  	sw	a6, 40(sp)
800035d0: 23 22 f1 02  	sw	a5, 36(sp)
800035d4: 23 20 e1 02  	sw	a4, 32(sp)
800035d8: 23 2e d1 00  	sw	a3, 28(sp)
800035dc: 23 2c c1 00  	sw	a2, 24(sp)
800035e0: 23 2a b1 00  	sw	a1, 20(sp)
800035e4: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800035e8: 23 24 a1 00  	sw	a0, 8(sp)

800035ec <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800035ec: 17 15 00 00  	auipc	a0, 1
800035f0: 13 05 45 c2  	addi	a0, a0, -988
800035f4: 93 05 71 00  	addi	a1, sp, 7
800035f8: 13 06 f0 ff  	addi	a2, zero, -1
800035fc: 13 07 41 01  	addi	a4, sp, 20
80003600: 93 86 02 00  	mv	a3, t0
80003604: 97 00 00 00  	auipc	ra, 0
80003608: e7 80 40 01  	jalr	20(ra)
;   return ret;
8000360c: 83 20 c1 00  	lw	ra, 12(sp)
80003610: 13 01 01 03  	addi	sp, sp, 48
80003614: 67 80 00 00  	ret

80003618 <_vsnprintf.llvm.17592004524093383706>:
; {
80003618: 13 01 01 f9  	addi	sp, sp, -112
8000361c: 23 26 11 06  	sw	ra, 108(sp)
80003620: 23 24 81 06  	sw	s0, 104(sp)
80003624: 23 22 91 06  	sw	s1, 100(sp)
80003628: 23 20 21 07  	sw	s2, 96(sp)
8000362c: 23 2e 31 05  	sw	s3, 92(sp)
80003630: 23 2c 41 05  	sw	s4, 88(sp)
80003634: 23 2a 51 05  	sw	s5, 84(sp)
80003638: 23 28 61 05  	sw	s6, 80(sp)
8000363c: 23 26 71 05  	sw	s7, 76(sp)
80003640: 23 24 81 05  	sw	s8, 72(sp)
80003644: 23 22 91 05  	sw	s9, 68(sp)
80003648: 23 20 a1 05  	sw	s10, 64(sp)
8000364c: 23 2e b1 03  	sw	s11, 60(sp)
80003650: 93 09 07 00  	mv	s3, a4
80003654: 13 84 06 00  	mv	s0, a3
80003658: 93 0a 06 00  	mv	s5, a2
8000365c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80003660: 63 86 05 00  	beqz	a1, 0x8000366c <.LBB1_183>
80003664: 13 09 05 00  	mv	s2, a0
80003668: 6f 00 c0 00  	j	0x80003674 <.LBB1_183+0x8>

8000366c <.LBB1_183>:
8000366c: 17 19 00 00  	auipc	s2, 1
80003670: 13 09 09 c5  	addi	s2, s2, -944
80003674: 13 0c 00 00  	mv	s8, zero
80003678: 13 0b 50 02  	addi	s6, zero, 37
8000367c: 93 0d 00 01  	addi	s11, zero, 16
80003680: 93 0b e0 02  	addi	s7, zero, 46
80003684: 37 15 00 00  	lui	a0, 1
80003688: 13 05 05 80  	addi	a0, a0, -2048
8000368c: 23 2c a1 00  	sw	a0, 24(sp)
80003690: 37 05 01 00  	lui	a0, 16
80003694: 13 05 f5 ff  	addi	a0, a0, -1
80003698: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
8000369c: 13 0d 24 00  	addi	s10, s0, 2
800036a0: 93 0c 0c 00  	mv	s9, s8
800036a4: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
800036a8: 03 45 04 00  	lbu	a0, 0(s0)
800036ac: e3 04 05 30  	beqz	a0, 0x800041b4 <.LBB1_124+0x3b0>
800036b0: 63 08 65 03  	beq	a0, s6, 0x800036e0 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800036b4: 93 84 1c 00  	addi	s1, s9, 1
800036b8: 93 05 0a 00  	mv	a1, s4
800036bc: 13 86 0c 00  	mv	a2, s9
800036c0: 93 86 0a 00  	mv	a3, s5
800036c4: e7 00 09 00  	jalr	s2
;       format++;
800036c8: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800036cc: 13 0d 1d 00  	addi	s10, s10, 1
800036d0: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800036d4: 03 45 04 00  	lbu	a0, 0(s0)
800036d8: e3 1c 05 fc  	bnez	a0, 0x800036b0 <.LBB1_183+0x44>
800036dc: 6f 00 90 2d  	j	0x800041b4 <.LBB1_124+0x3b0>
;     flags = 0U;
800036e0: 13 04 00 00  	mv	s0, zero
800036e4: 6f 00 00 01  	j	0x800036f4 <.LBB1_9+0x8>

800036e8 <.LBB1_8>:
800036e8: 93 05 00 01  	addi	a1, zero, 16

800036ec <.LBB1_9>:
800036ec: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800036f0: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800036f4: 03 45 fd ff  	lbu	a0, -1(s10)
800036f8: 93 05 05 fe  	addi	a1, a0, -32
800036fc: 63 ec bd 02  	bltu	s11, a1, 0x80003734 <.LBB1_15>
80003700: 93 95 25 00  	slli	a1, a1, 2

80003704 <.LBB1_184>:
80003704: 17 26 00 00  	auipc	a2, 2
80003708: 13 06 06 21  	addi	a2, a2, 528
8000370c: b3 85 c5 00  	add	a1, a1, a2
80003710: 03 a6 05 00  	lw	a2, 0(a1)
80003714: 93 05 10 00  	addi	a1, zero, 1
80003718: 67 00 06 00  	jr	a2

8000371c <.LBB1_12>:
8000371c: 93 05 80 00  	addi	a1, zero, 8
80003720: 6f f0 df fc  	j	0x800036ec <.LBB1_9>

80003724 <.LBB1_13>:
80003724: 93 05 40 00  	addi	a1, zero, 4
80003728: 6f f0 5f fc  	j	0x800036ec <.LBB1_9>

8000372c <.LBB1_14>:
8000372c: 93 05 20 00  	addi	a1, zero, 2
80003730: 6f f0 df fb  	j	0x800036ec <.LBB1_9>

80003734 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003734: 93 05 05 fd  	addi	a1, a0, -48
80003738: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
8000373c: 93 05 fd ff  	addi	a1, s10, -1
80003740: 93 06 90 00  	addi	a3, zero, 9
80003744: 63 ee c6 06  	bltu	a3, a2, 0x800037c0 <.LBB1_15+0x8c>
80003748: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000374c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003750: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003754: b3 06 8b 03  	mul	a3, s6, s8
80003758: 93 85 15 00  	addi	a1, a1, 1
8000375c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003760: 93 06 05 fd  	addi	a3, a0, -48
80003764: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003768: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
8000376c: e3 e0 86 ff  	bltu	a3, s8, 0x8000374c <.LBB1_15+0x18>
80003770: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003774: 63 16 75 0b  	bne	a0, s7, 0x80003820 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003778: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
8000377c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80003780: 93 05 05 fd  	addi	a1, a0, -48
80003784: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003788: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
8000378c: 93 06 90 00  	addi	a3, zero, 9
80003790: 63 e0 c6 06  	bltu	a3, a2, 0x800037f0 <.LBB1_15+0xbc>
80003794: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003798: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000379c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800037a0: b3 86 8b 03  	mul	a3, s7, s8
800037a4: 93 85 15 00  	addi	a1, a1, 1
800037a8: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800037ac: 93 06 05 fd  	addi	a3, a0, -48
800037b0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800037b4: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800037b8: e3 e0 86 ff  	bltu	a3, s8, 0x80003798 <.LBB1_15+0x64>
800037bc: 6f 00 00 07  	j	0x8000382c <.LBB1_15+0xf8>
;     else if (*format == '*') {
800037c0: 13 06 a0 02  	addi	a2, zero, 42
800037c4: 63 18 c5 04  	bne	a0, a2, 0x80003814 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800037c8: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800037cc: 63 d4 05 00  	bgez	a1, 0x800037d4 <.LBB1_15+0xa0>
800037d0: 13 64 24 00  	ori	s0, s0, 2
800037d4: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800037d8: 03 45 0d 00  	lbu	a0, 0(s10)
800037dc: 13 d6 f5 41  	srai	a2, a1, 31
800037e0: b3 85 c5 00  	add	a1, a1, a2
800037e4: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800037e8: e3 08 75 f9  	beq	a0, s7, 0x80003778 <.LBB1_15+0x44>
800037ec: 6f 00 40 03  	j	0x80003820 <.LBB1_15+0xec>
;       else if (*format == '*') {
800037f0: 13 06 a0 02  	addi	a2, zero, 42
800037f4: 63 1a c5 02  	bne	a0, a2, 0x80003828 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800037f8: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800037fc: 63 44 70 01  	bgtz	s7, 0x80003804 <.LBB1_15+0xd0>
80003800: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003804: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003808: 13 0d 2d 00  	addi	s10, s10, 2
8000380c: 93 89 49 00  	addi	s3, s3, 4
80003810: 6f 00 00 02  	j	0x80003830 <.LBB1_15+0xfc>
80003814: 13 0b 00 00  	mv	s6, zero
80003818: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
8000381c: e3 0e 75 f5  	beq	a0, s7, 0x80003778 <.LBB1_15+0x44>
80003820: 93 0b 00 00  	mv	s7, zero
80003824: 6f 00 c0 00  	j	0x80003830 <.LBB1_15+0xfc>
80003828: 93 0b 00 00  	mv	s7, zero
8000382c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80003830: 93 05 85 f9  	addi	a1, a0, -104
80003834: 13 d6 15 00  	srli	a2, a1, 1
80003838: 93 95 f5 01  	slli	a1, a1, 31
8000383c: b3 e5 c5 00  	or	a1, a1, a2
80003840: 13 06 90 00  	addi	a2, zero, 9
80003844: 63 62 b6 06  	bltu	a2, a1, 0x800038a8 <.LBB1_42>
80003848: 93 95 25 00  	slli	a1, a1, 2

8000384c <.LBB1_185>:
8000384c: 17 26 00 00  	auipc	a2, 2
80003850: 13 06 c6 10  	addi	a2, a2, 268
80003854: b3 85 c5 00  	add	a1, a1, a2
80003858: 83 a6 05 00  	lw	a3, 0(a1)
8000385c: 93 05 10 00  	addi	a1, zero, 1
80003860: 13 06 00 10  	addi	a2, zero, 256
80003864: 67 80 06 00  	jr	a3

80003868 <.LBB1_36>:
;         if (*format == 'h') {
80003868: 03 45 1d 00  	lbu	a0, 1(s10)
8000386c: 93 05 80 06  	addi	a1, zero, 104
80003870: 63 12 b5 12  	bne	a0, a1, 0x80003994 <.LBB1_53+0x48>
80003874: 93 05 20 00  	addi	a1, zero, 2
80003878: 13 06 00 0c  	addi	a2, zero, 192
8000387c: 6f 00 00 02  	j	0x8000389c <.LBB1_41>

80003880 <.LBB1_38>:
80003880: 13 06 00 20  	addi	a2, zero, 512
80003884: 6f 00 80 01  	j	0x8000389c <.LBB1_41>

80003888 <.LBB1_39>:
;         if (*format == 'l') {
80003888: 03 45 1d 00  	lbu	a0, 1(s10)
8000388c: 93 05 c0 06  	addi	a1, zero, 108
80003890: 63 18 b5 10  	bne	a0, a1, 0x800039a0 <.LBB1_53+0x54>
80003894: 93 05 20 00  	addi	a1, zero, 2
80003898: 13 06 00 30  	addi	a2, zero, 768

8000389c <.LBB1_41>:
8000389c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
800038a0: 03 45 0d 00  	lbu	a0, 0(s10)
800038a4: 33 64 c4 00  	or	s0, s0, a2

800038a8 <.LBB1_42>:
;     switch (*format) {
800038a8: 93 05 b5 fd  	addi	a1, a0, -37
800038ac: 13 06 30 05  	addi	a2, zero, 83
800038b0: 63 64 b6 10  	bltu	a2, a1, 0x800039b8 <.LBB1_59>
800038b4: 93 95 25 00  	slli	a1, a1, 2

800038b8 <.LBB1_186>:
800038b8: 17 26 00 00  	auipc	a2, 2
800038bc: 13 06 86 0c  	addi	a2, a2, 200
800038c0: b3 85 c5 00  	add	a1, a1, a2
800038c4: 03 a6 05 00  	lw	a2, 0(a1)
800038c8: 93 05 80 00  	addi	a1, zero, 8
800038cc: 13 0c 00 01  	addi	s8, zero, 16
800038d0: 67 00 06 00  	jr	a2

800038d4 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800038d4: 13 74 f4 fe  	andi	s0, s0, -17
800038d8: 13 0c a0 00  	addi	s8, zero, 10

800038dc <.LBB1_45>:
;         if (*format == 'X') {
800038dc: 93 05 80 05  	addi	a1, zero, 88
800038e0: 63 14 b5 00  	bne	a0, a1, 0x800038e8 <.LBB1_45+0xc>
800038e4: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800038e8: 93 05 40 06  	addi	a1, zero, 100
800038ec: 63 08 b5 0e  	beq	a0, a1, 0x800039dc <.LBB1_62+0x8>
800038f0: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800038f4: 13 06 90 06  	addi	a2, zero, 105
800038f8: 63 02 c5 0e  	beq	a0, a2, 0x800039dc <.LBB1_62+0x8>
800038fc: 6f 00 80 0d  	j	0x800039d4 <.LBB1_62>

80003900 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80003900: 93 05 60 04  	addi	a1, zero, 70
80003904: 63 14 b5 00  	bne	a0, a1, 0x8000390c <.LBB1_49+0xc>
80003908: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000390c: 13 85 79 00  	addi	a0, s3, 7
80003910: 13 75 85 ff  	andi	a0, a0, -8
80003914: 07 35 05 00  	fld	fa0, 0(a0)
80003918: 93 09 85 00  	addi	s3, a0, 8
8000391c: 13 05 09 00  	mv	a0, s2
80003920: 93 05 0a 00  	mv	a1, s4
80003924: 13 86 0c 00  	mv	a2, s9
80003928: 93 86 0a 00  	mv	a3, s5
8000392c: 13 87 0b 00  	mv	a4, s7
80003930: 93 07 0b 00  	mv	a5, s6
80003934: 13 08 04 00  	mv	a6, s0
80003938: 97 10 00 00  	auipc	ra, 1
8000393c: e7 80 80 98  	jalr	-1656(ra)
80003940: 6f 00 00 7c  	j	0x80004100 <.LBB1_124+0x2fc>

80003944 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003944: 83 25 81 01  	lw	a1, 24(sp)
80003948: 33 64 b4 00  	or	s0, s0, a1

8000394c <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
8000394c: 13 65 25 00  	ori	a0, a0, 2
80003950: 93 05 70 04  	addi	a1, zero, 71
80003954: 63 14 b5 00  	bne	a0, a1, 0x8000395c <.LBB1_53+0x10>
80003958: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000395c: 13 85 79 00  	addi	a0, s3, 7
80003960: 13 75 85 ff  	andi	a0, a0, -8
80003964: 07 35 05 00  	fld	fa0, 0(a0)
80003968: 93 09 85 00  	addi	s3, a0, 8
8000396c: 13 05 09 00  	mv	a0, s2
80003970: 93 05 0a 00  	mv	a1, s4
80003974: 13 86 0c 00  	mv	a2, s9
80003978: 93 86 0a 00  	mv	a3, s5
8000397c: 13 87 0b 00  	mv	a4, s7
80003980: 93 07 0b 00  	mv	a5, s6
80003984: 13 08 04 00  	mv	a6, s0
80003988: 97 10 00 00  	auipc	ra, 1
8000398c: e7 80 80 01  	jalr	24(ra)
80003990: 6f 00 00 77  	j	0x80004100 <.LBB1_124+0x2fc>
80003994: 13 64 04 08  	ori	s0, s0, 128
80003998: 13 0d 1d 00  	addi	s10, s10, 1
8000399c: 6f f0 df f0  	j	0x800038a8 <.LBB1_42>
800039a0: 13 64 04 10  	ori	s0, s0, 256
800039a4: 13 0d 1d 00  	addi	s10, s10, 1
800039a8: 6f f0 1f f0  	j	0x800038a8 <.LBB1_42>

800039ac <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
800039ac: 13 8c 1c 00  	addi	s8, s9, 1
800039b0: 13 05 50 02  	addi	a0, zero, 37
800039b4: 6f 00 80 00  	j	0x800039bc <.LBB1_59+0x4>

800039b8 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800039b8: 13 8c 1c 00  	addi	s8, s9, 1
800039bc: 93 05 0a 00  	mv	a1, s4
800039c0: 13 86 0c 00  	mv	a2, s9
800039c4: 93 86 0a 00  	mv	a3, s5
800039c8: e7 00 09 00  	jalr	s2
800039cc: 6f 00 80 73  	j	0x80004104 <.LBB1_124+0x300>

800039d0 <.LBB1_61>:
800039d0: 93 05 20 00  	addi	a1, zero, 2

800039d4 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800039d4: 13 74 34 ff  	andi	s0, s0, -13
800039d8: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800039dc: 93 75 04 40  	andi	a1, s0, 1024
800039e0: 63 84 05 00  	beqz	a1, 0x800039e8 <.LBB1_62+0x14>
800039e4: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800039e8: 93 05 90 06  	addi	a1, zero, 105
800039ec: 63 06 b5 00  	beq	a0, a1, 0x800039f8 <.LBB1_62+0x24>
800039f0: 93 05 40 06  	addi	a1, zero, 100
800039f4: 63 1c b5 12  	bne	a0, a1, 0x80003b2c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800039f8: 13 75 04 20  	andi	a0, s0, 512
800039fc: 63 16 05 02  	bnez	a0, 0x80003a28 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80003a00: 13 75 04 10  	andi	a0, s0, 256
80003a04: 63 1c 05 14  	bnez	a0, 0x80003b5c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003a08: 13 75 04 04  	andi	a0, s0, 64
80003a0c: 63 18 05 4e  	bnez	a0, 0x80003efc <.LBB1_124+0xf8>
80003a10: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003a14: 93 75 04 08  	andi	a1, s0, 128
80003a18: 63 84 05 4e  	beqz	a1, 0x80003f00 <.LBB1_124+0xfc>
80003a1c: 13 15 08 01  	slli	a0, a6, 16
80003a20: 13 58 05 41  	srai	a6, a0, 16
80003a24: 6f 00 c0 4d  	j	0x80003f00 <.LBB1_124+0xfc>
80003a28: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003a2c: 13 85 79 00  	addi	a0, s3, 7
80003a30: 13 75 85 ff  	andi	a0, a0, -8
80003a34: 83 29 05 00  	lw	s3, 0(a0)
80003a38: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003a3c: 13 65 45 00  	ori	a0, a0, 4
80003a40: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003a44: 23 24 a1 00  	sw	a0, 8(sp)
80003a48: 33 e5 a9 00  	or	a0, s3, a0
80003a4c: 63 14 05 00  	bnez	a0, 0x80003a54 <.LBB1_62+0x80>
80003a50: 13 74 f4 fe  	andi	s0, s0, -17
80003a54: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a58: 93 75 04 40  	andi	a1, s0, 1024
80003a5c: 93 d5 a5 00  	srli	a1, a1, 10
80003a60: 33 75 b5 00  	and	a0, a0, a1
80003a64: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a68: 63 14 05 0a  	bnez	a0, 0x80003b10 <.LBB1_62+0x13c>
80003a6c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003a70: 63 da 04 00  	bgez	s1, 0x80003a84 <.LBB1_62+0xb0>
80003a74: 33 35 30 01  	snez	a0, s3
80003a78: b3 09 30 41  	neg	s3, s3
80003a7c: 33 85 a4 00  	add	a0, s1, a0
80003a80: b3 04 a0 40  	neg	s1, a0
80003a84: 13 09 00 00  	mv	s2, zero
80003a88: 13 75 04 02  	andi	a0, s0, 32
80003a8c: 13 45 15 06  	xori	a0, a0, 97
80003a90: 13 05 65 0f  	addi	a0, a0, 246
80003a94: 23 2a a1 00  	sw	a0, 20(sp)
80003a98: 6f 00 40 02  	j	0x80003abc <.LBB1_62+0xe8>
80003a9c: 13 06 10 00  	addi	a2, zero, 1
80003aa0: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003aa4: 93 36 f9 01  	sltiu	a3, s2, 31
80003aa8: 33 f6 c6 00  	and	a2, a3, a2
80003aac: 13 89 07 00  	mv	s2, a5
80003ab0: 93 09 05 00  	mv	s3, a0
80003ab4: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ab8: 63 0c 06 04  	beqz	a2, 0x80003b10 <.LBB1_62+0x13c>
;       value /= base;
80003abc: 13 85 09 00  	mv	a0, s3
80003ac0: 93 85 04 00  	mv	a1, s1
80003ac4: 13 06 0c 00  	mv	a2, s8
80003ac8: 93 06 00 00  	mv	a3, zero
80003acc: 97 c0 ff ff  	auipc	ra, 1048572
80003ad0: e7 80 40 53  	jalr	1332(ra)
80003ad4: 33 06 85 03  	mul	a2, a0, s8
80003ad8: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003adc: 13 77 e6 0f  	andi	a4, a2, 254
80003ae0: 93 06 00 03  	addi	a3, zero, 48
80003ae4: 93 07 a0 00  	addi	a5, zero, 10
80003ae8: 63 64 f7 00  	bltu	a4, a5, 0x80003af0 <.LBB1_62+0x11c>
80003aec: 83 26 41 01  	lw	a3, 20(sp)
80003af0: 33 86 c6 00  	add	a2, a3, a2
80003af4: 93 06 c1 01  	addi	a3, sp, 28
80003af8: b3 86 26 01  	add	a3, a3, s2
80003afc: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b00: e3 9e 04 f8  	bnez	s1, 0x80003a9c <.LBB1_62+0xc8>
80003b04: 33 b6 89 01  	sltu	a2, s3, s8
80003b08: 13 46 16 00  	xori	a2, a2, 1
80003b0c: 6f f0 5f f9  	j	0x80003aa0 <.LBB1_62+0xcc>
80003b10: 03 25 41 00  	lw	a0, 4(sp)
80003b14: 93 09 85 00  	addi	s3, a0, 8
80003b18: 03 25 81 00  	lw	a0, 8(sp)
80003b1c: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003b20: 13 07 c1 01  	addi	a4, sp, 28
80003b24: 03 29 c1 00  	lw	s2, 12(sp)
80003b28: 6f 00 80 47  	j	0x80003fa0 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003b2c: 13 75 04 20  	andi	a0, s0, 512
80003b30: 63 12 05 0c  	bnez	a0, 0x80003bf4 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003b34: 13 75 04 10  	andi	a0, s0, 256
80003b38: 63 1e 05 46  	bnez	a0, 0x80003fb4 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003b3c: 13 75 04 04  	andi	a0, s0, 64
80003b40: 63 10 05 50  	bnez	a0, 0x80004040 <.LBB1_124+0x23c>
80003b44: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003b48: 93 75 04 08  	andi	a1, s0, 128
80003b4c: 63 8c 05 4e  	beqz	a1, 0x80004044 <.LBB1_124+0x240>
80003b50: 83 25 01 01  	lw	a1, 16(sp)
80003b54: 33 75 b5 00  	and	a0, a0, a1
80003b58: 6f 00 c0 4e  	j	0x80004044 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003b5c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003b60: 63 14 08 00  	bnez	a6, 0x80003b68 <.LBB1_62+0x194>
80003b64: 13 74 f4 fe  	andi	s0, s0, -17
80003b68: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b6c: 13 76 04 40  	andi	a2, s0, 1024
80003b70: 13 56 a6 00  	srli	a2, a2, 10
80003b74: b3 f5 c5 00  	and	a1, a1, a2
80003b78: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b7c: 63 9c 05 40  	bnez	a1, 0x80003f94 <.LBB1_124+0x190>
80003b80: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003b84: 13 56 f8 41  	srai	a2, a6, 31
80003b88: b3 06 c8 00  	add	a3, a6, a2
80003b8c: b3 c6 c6 00  	xor	a3, a3, a2
80003b90: 13 76 04 02  	andi	a2, s0, 32
80003b94: 13 46 16 06  	xori	a2, a2, 97
80003b98: 93 08 66 0f  	addi	a7, a2, 246
80003b9c: 6f 00 40 03  	j	0x80003bd0 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ba0: 33 05 f6 00  	add	a0, a2, a5
80003ba4: 93 87 15 00  	addi	a5, a1, 1
80003ba8: 13 06 c1 01  	addi	a2, sp, 28
80003bac: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bb0: b3 b6 86 01  	sltu	a3, a3, s8
80003bb4: 93 c6 16 00  	xori	a3, a3, 1
80003bb8: 93 b5 f5 01  	sltiu	a1, a1, 31
80003bbc: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003bc0: 23 00 a6 00  	sb	a0, 0(a2)
80003bc4: 93 85 07 00  	mv	a1, a5
80003bc8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003bcc: 63 84 04 3c  	beqz	s1, 0x80003f94 <.LBB1_124+0x190>
;       value /= base;
80003bd0: 33 d7 86 03  	divu	a4, a3, s8
80003bd4: 33 06 87 03  	mul	a2, a4, s8
80003bd8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003bdc: 13 f5 e7 0f  	andi	a0, a5, 254
80003be0: 13 06 00 03  	addi	a2, zero, 48
80003be4: 93 04 a0 00  	addi	s1, zero, 10
80003be8: e3 6c 95 fa  	bltu	a0, s1, 0x80003ba0 <.LBB1_62+0x1cc>
80003bec: 13 86 08 00  	mv	a2, a7
80003bf0: 6f f0 1f fb  	j	0x80003ba0 <.LBB1_62+0x1cc>
80003bf4: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003bf8: 13 85 79 00  	addi	a0, s3, 7
80003bfc: 93 75 85 ff  	andi	a1, a0, -8
80003c00: 03 a9 05 00  	lw	s2, 0(a1)
80003c04: 13 e5 45 00  	ori	a0, a1, 4
80003c08: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003c0c: 33 65 39 01  	or	a0, s2, s3
80003c10: 23 24 b1 00  	sw	a1, 8(sp)
80003c14: 63 14 05 00  	bnez	a0, 0x80003c1c <.LBB1_62+0x248>
80003c18: 13 74 f4 fe  	andi	s0, s0, -17
80003c1c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003c20: 93 75 04 40  	andi	a1, s0, 1024
80003c24: 93 d5 a5 00  	srli	a1, a1, 10
80003c28: 33 75 b5 00  	and	a0, a0, a1
80003c2c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003c30: 63 18 05 08  	bnez	a0, 0x80003cc0 <.LBB1_62+0x2ec>
80003c34: 93 04 00 00  	mv	s1, zero
80003c38: 13 75 04 02  	andi	a0, s0, 32
80003c3c: 13 45 15 06  	xori	a0, a0, 97
80003c40: 13 05 65 0f  	addi	a0, a0, 246
80003c44: 23 2a a1 00  	sw	a0, 20(sp)
80003c48: 6f 00 40 02  	j	0x80003c6c <.LBB1_62+0x298>
80003c4c: 13 06 10 00  	addi	a2, zero, 1
80003c50: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c54: 93 b6 f4 01  	sltiu	a3, s1, 31
80003c58: 33 f6 c6 00  	and	a2, a3, a2
80003c5c: 93 84 07 00  	mv	s1, a5
80003c60: 13 09 05 00  	mv	s2, a0
80003c64: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c68: 63 0c 06 04  	beqz	a2, 0x80003cc0 <.LBB1_62+0x2ec>
;       value /= base;
80003c6c: 13 05 09 00  	mv	a0, s2
80003c70: 93 85 09 00  	mv	a1, s3
80003c74: 13 06 0c 00  	mv	a2, s8
80003c78: 93 06 00 00  	mv	a3, zero
80003c7c: 97 c0 ff ff  	auipc	ra, 1048572
80003c80: e7 80 40 38  	jalr	900(ra)
80003c84: 33 06 85 03  	mul	a2, a0, s8
80003c88: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003c8c: 13 77 e6 0f  	andi	a4, a2, 254
80003c90: 93 06 00 03  	addi	a3, zero, 48
80003c94: 93 07 a0 00  	addi	a5, zero, 10
80003c98: 63 64 f7 00  	bltu	a4, a5, 0x80003ca0 <.LBB1_62+0x2cc>
80003c9c: 83 26 41 01  	lw	a3, 20(sp)
80003ca0: 33 86 c6 00  	add	a2, a3, a2
80003ca4: 93 06 c1 01  	addi	a3, sp, 28
80003ca8: b3 86 96 00  	add	a3, a3, s1
80003cac: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003cb0: e3 9e 09 f8  	bnez	s3, 0x80003c4c <.LBB1_62+0x278>
80003cb4: 33 36 89 01  	sltu	a2, s2, s8
80003cb8: 13 46 16 00  	xori	a2, a2, 1
80003cbc: 6f f0 5f f9  	j	0x80003c50 <.LBB1_62+0x27c>
80003cc0: 03 25 81 00  	lw	a0, 8(sp)
80003cc4: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003cc8: 13 07 c1 01  	addi	a4, sp, 28
80003ccc: 03 29 c1 00  	lw	s2, 12(sp)
80003cd0: 6f 00 40 40  	j	0x800040d4 <.LBB1_124+0x2d0>

80003cd4 <.LBB1_108>:
80003cd4: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003cd8: 13 79 24 00  	andi	s2, s0, 2
80003cdc: 93 04 10 00  	addi	s1, zero, 1
80003ce0: 63 1e 09 02  	bnez	s2, 0x80003d1c <.LBB1_108+0x48>
80003ce4: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003ce8: 63 6a 9b 02  	bltu	s6, s1, 0x80003d1c <.LBB1_108+0x48>
80003cec: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003cf0: 13 0c fb ff  	addi	s8, s6, -1
80003cf4: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003cf8: 33 86 8c 00  	add	a2, s9, s0
80003cfc: 13 05 00 02  	addi	a0, zero, 32
80003d00: 93 05 0a 00  	mv	a1, s4
80003d04: 93 86 0a 00  	mv	a3, s5
80003d08: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003d0c: 13 04 14 00  	addi	s0, s0, 1
80003d10: e3 14 8c fe  	bne	s8, s0, 0x80003cf8 <.LBB1_108+0x24>
80003d14: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003d18: b3 8c 8c 00  	add	s9, s9, s0
80003d1c: 03 c5 09 00  	lbu	a0, 0(s3)
80003d20: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003d24: 93 89 49 00  	addi	s3, s3, 4
80003d28: 13 8c 1c 00  	addi	s8, s9, 1
80003d2c: 93 05 0a 00  	mv	a1, s4
80003d30: 13 86 0c 00  	mv	a2, s9
80003d34: 93 86 0a 00  	mv	a3, s5
80003d38: 13 89 0b 00  	mv	s2, s7
80003d3c: e7 80 0b 00  	jalr	s7
80003d40: 33 b5 64 01  	sltu	a0, s1, s6
80003d44: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003d48: 33 65 a4 00  	or	a0, s0, a0
80003d4c: 63 1c 05 3a  	bnez	a0, 0x80004104 <.LBB1_124+0x300>
;           while (l++ < width) {
80003d50: 33 04 9b 40  	sub	s0, s6, s1
80003d54: 93 0b e0 02  	addi	s7, zero, 46
80003d58: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003d5c: 13 0c 1c 00  	addi	s8, s8, 1
80003d60: 13 05 00 02  	addi	a0, zero, 32
80003d64: 93 05 0a 00  	mv	a1, s4
80003d68: 93 86 0a 00  	mv	a3, s5
80003d6c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003d70: 13 04 f4 ff  	addi	s0, s0, -1
80003d74: e3 12 04 fe  	bnez	s0, 0x80003d58 <.LBB1_108+0x84>
80003d78: 13 0b 50 02  	addi	s6, zero, 37
80003d7c: 13 04 1d 00  	addi	s0, s10, 1
80003d80: 6f f0 df 91  	j	0x8000369c <.LBB1_183+0x30>

80003d84 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003d84: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003d88: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003d8c: 63 14 05 00  	bnez	a0, 0x80003d94 <.LBB1_117+0x10>
80003d90: 93 fe fe fe  	andi	t4, t4, -17
80003d94: 93 04 a0 00  	addi	s1, zero, 10
80003d98: 13 04 f0 00  	addi	s0, zero, 15
80003d9c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003da0: 13 f6 0e 40  	andi	a2, t4, 1024
80003da4: 13 56 a6 00  	srli	a2, a2, 10
80003da8: b3 f5 c5 00  	and	a1, a1, a2
80003dac: 93 07 00 00  	mv	a5, zero
80003db0: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003db4: 63 98 05 10  	bnez	a1, 0x80003ec4 <.LBB1_124+0xc0>
80003db8: 93 05 00 00  	mv	a1, zero
80003dbc: 6f 00 40 03  	j	0x80003df0 <.LBB1_117+0x6c>
80003dc0: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003dc4: 33 06 d6 00  	add	a2, a2, a3
80003dc8: 93 87 15 00  	addi	a5, a1, 1
80003dcc: 93 06 c1 01  	addi	a3, sp, 28
80003dd0: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003dd4: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003dd8: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ddc: 93 b5 f5 01  	sltiu	a1, a1, 31
80003de0: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003de4: 23 80 c6 00  	sb	a2, 0(a3)
80003de8: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003dec: 63 0c 07 0c  	beqz	a4, 0x80003ec4 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003df0: 93 76 e5 00  	andi	a3, a0, 14
80003df4: 13 06 00 03  	addi	a2, zero, 48
80003df8: e3 e4 96 fc  	bltu	a3, s1, 0x80003dc0 <.LBB1_117+0x3c>
80003dfc: 13 06 70 03  	addi	a2, zero, 55
80003e00: 6f f0 1f fc  	j	0x80003dc0 <.LBB1_117+0x3c>

80003e04 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003e04: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003e08: 03 c5 07 00  	lbu	a0, 0(a5)
80003e0c: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003e10: 63 0c 05 02  	beqz	a0, 0x80003e48 <.LBB1_124+0x44>
80003e14: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003e18: 63 84 0b 00  	beqz	s7, 0x80003e20 <.LBB1_124+0x1c>
80003e1c: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003e20: 93 85 f5 ff  	addi	a1, a1, -1
80003e24: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003e28: 03 c7 16 00  	lbu	a4, 1(a3)
80003e2c: 13 86 16 00  	addi	a2, a3, 1
80003e30: b3 36 e0 00  	snez	a3, a4
80003e34: 33 37 b0 00  	snez	a4, a1
80003e38: 33 77 d7 00  	and	a4, a4, a3
80003e3c: 93 85 f5 ff  	addi	a1, a1, -1
80003e40: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003e44: e3 12 07 fe  	bnez	a4, 0x80003e28 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003e48: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003e4c: 93 75 04 40  	andi	a1, s0, 1024
80003e50: 93 b4 15 00  	seqz	s1, a1
80003e54: 23 2a c1 00  	sw	a2, 20(sp)
80003e58: b3 35 76 01  	sltu	a1, a2, s7
80003e5c: b3 e5 b4 00  	or	a1, s1, a1
80003e60: 63 94 05 00  	bnez	a1, 0x80003e68 <.LBB1_124+0x64>
80003e64: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003e68: 93 75 24 00  	andi	a1, s0, 2
80003e6c: 23 26 b1 00  	sw	a1, 12(sp)
80003e70: 63 96 05 2a  	bnez	a1, 0x8000411c <.LBB1_124+0x318>
80003e74: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003e78: 63 fe 65 29  	bgeu	a1, s6, 0x80004114 <.LBB1_124+0x310>
80003e7c: 23 24 f1 00  	sw	a5, 8(sp)
80003e80: 13 04 00 00  	mv	s0, zero
80003e84: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003e88: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003e8c: 33 86 8c 00  	add	a2, s9, s0
80003e90: 13 05 00 02  	addi	a0, zero, 32
80003e94: 93 05 0a 00  	mv	a1, s4
80003e98: 93 86 0a 00  	mv	a3, s5
80003e9c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003ea0: 13 04 14 00  	addi	s0, s0, 1
80003ea4: e3 14 89 fe  	bne	s2, s0, 0x80003e8c <.LBB1_124+0x88>
80003ea8: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003eac: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003eb0: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003eb4: 23 2a b1 00  	sw	a1, 20(sp)
80003eb8: b3 8c 8c 00  	add	s9, s9, s0
80003ebc: 13 09 0c 00  	mv	s2, s8
80003ec0: 6f 00 c0 25  	j	0x8000411c <.LBB1_124+0x318>
80003ec4: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003ec8: 13 07 c1 01  	addi	a4, sp, 28
80003ecc: 93 08 00 01  	addi	a7, zero, 16
80003ed0: 13 0e 80 00  	addi	t3, zero, 8
80003ed4: 13 05 09 00  	mv	a0, s2
80003ed8: 93 05 0a 00  	mv	a1, s4
80003edc: 13 86 0c 00  	mv	a2, s9
80003ee0: 93 86 0a 00  	mv	a3, s5
80003ee4: 13 08 00 00  	mv	a6, zero
80003ee8: 93 83 0b 00  	mv	t2, s7
80003eec: 97 10 00 00  	auipc	ra, 1
80003ef0: e7 80 00 fa  	jalr	-96(ra)
80003ef4: 13 0c 05 00  	mv	s8, a0
80003ef8: 6f 00 00 21  	j	0x80004108 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003efc: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003f00: 63 14 08 00  	bnez	a6, 0x80003f08 <.LBB1_124+0x104>
80003f04: 13 74 f4 fe  	andi	s0, s0, -17
80003f08: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f0c: 13 76 04 40  	andi	a2, s0, 1024
80003f10: 13 56 a6 00  	srli	a2, a2, 10
80003f14: b3 f5 c5 00  	and	a1, a1, a2
80003f18: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f1c: 63 9c 05 06  	bnez	a1, 0x80003f94 <.LBB1_124+0x190>
80003f20: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003f24: 13 56 f8 41  	srai	a2, a6, 31
80003f28: b3 06 c8 00  	add	a3, a6, a2
80003f2c: b3 c6 c6 00  	xor	a3, a3, a2
80003f30: 13 76 04 02  	andi	a2, s0, 32
80003f34: 13 46 16 06  	xori	a2, a2, 97
80003f38: 93 08 66 0f  	addi	a7, a2, 246
80003f3c: 6f 00 40 03  	j	0x80003f70 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f40: 33 05 f6 00  	add	a0, a2, a5
80003f44: 93 87 15 00  	addi	a5, a1, 1
80003f48: 13 06 c1 01  	addi	a2, sp, 28
80003f4c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f50: b3 b6 86 01  	sltu	a3, a3, s8
80003f54: 93 c6 16 00  	xori	a3, a3, 1
80003f58: 93 b5 f5 01  	sltiu	a1, a1, 31
80003f5c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f60: 23 00 a6 00  	sb	a0, 0(a2)
80003f64: 93 85 07 00  	mv	a1, a5
80003f68: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f6c: 63 84 04 02  	beqz	s1, 0x80003f94 <.LBB1_124+0x190>
;       value /= base;
80003f70: 33 d7 86 03  	divu	a4, a3, s8
80003f74: 33 06 87 03  	mul	a2, a4, s8
80003f78: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f7c: 13 f5 e7 0f  	andi	a0, a5, 254
80003f80: 13 06 00 03  	addi	a2, zero, 48
80003f84: 93 04 a0 00  	addi	s1, zero, 10
80003f88: e3 6c 95 fa  	bltu	a0, s1, 0x80003f40 <.LBB1_124+0x13c>
80003f8c: 13 86 08 00  	mv	a2, a7
80003f90: 6f f0 1f fb  	j	0x80003f40 <.LBB1_124+0x13c>
80003f94: 93 89 49 00  	addi	s3, s3, 4
80003f98: 13 58 f8 01  	srli	a6, a6, 31
80003f9c: 13 07 c1 01  	addi	a4, sp, 28
80003fa0: 13 05 09 00  	mv	a0, s2
80003fa4: 93 05 0a 00  	mv	a1, s4
80003fa8: 13 86 0c 00  	mv	a2, s9
80003fac: 93 86 0a 00  	mv	a3, s5
80003fb0: 6f 00 80 13  	j	0x800040e8 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003fb4: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003fb8: 63 14 05 00  	bnez	a0, 0x80003fc0 <.LBB1_124+0x1bc>
80003fbc: 13 74 f4 fe  	andi	s0, s0, -17
80003fc0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003fc4: 13 76 04 40  	andi	a2, s0, 1024
80003fc8: 13 56 a6 00  	srli	a2, a2, 10
80003fcc: b3 f5 c5 00  	and	a1, a1, a2
80003fd0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003fd4: 63 9c 05 0e  	bnez	a1, 0x800040cc <.LBB1_124+0x2c8>
80003fd8: 13 06 00 00  	mv	a2, zero
80003fdc: 93 75 04 02  	andi	a1, s0, 32
80003fe0: 93 c5 15 06  	xori	a1, a1, 97
80003fe4: 13 88 65 0f  	addi	a6, a1, 246
80003fe8: 6f 00 40 03  	j	0x8000401c <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003fec: 33 87 e7 00  	add	a4, a5, a4
80003ff0: 93 07 16 00  	addi	a5, a2, 1
80003ff4: 93 05 c1 01  	addi	a1, sp, 28
80003ff8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ffc: 33 35 85 01  	sltu	a0, a0, s8
80004000: 13 45 15 00  	xori	a0, a0, 1
80004004: 13 36 f6 01  	sltiu	a2, a2, 31
80004008: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000400c: 23 80 e4 00  	sb	a4, 0(s1)
80004010: 13 86 07 00  	mv	a2, a5
80004014: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004018: 63 8a 05 0a  	beqz	a1, 0x800040cc <.LBB1_124+0x2c8>
;       value /= base;
8000401c: b3 56 85 03  	divu	a3, a0, s8
80004020: 33 87 86 03  	mul	a4, a3, s8
80004024: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004028: 93 74 e7 0f  	andi	s1, a4, 254
8000402c: 93 07 00 03  	addi	a5, zero, 48
80004030: 93 05 a0 00  	addi	a1, zero, 10
80004034: e3 ec b4 fa  	bltu	s1, a1, 0x80003fec <.LBB1_124+0x1e8>
80004038: 93 07 08 00  	mv	a5, a6
8000403c: 6f f0 1f fb  	j	0x80003fec <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80004040: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80004044: 63 14 05 00  	bnez	a0, 0x8000404c <.LBB1_124+0x248>
80004048: 13 74 f4 fe  	andi	s0, s0, -17
8000404c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80004050: 13 76 04 40  	andi	a2, s0, 1024
80004054: 13 56 a6 00  	srli	a2, a2, 10
80004058: b3 f5 c5 00  	and	a1, a1, a2
8000405c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80004060: 63 96 05 06  	bnez	a1, 0x800040cc <.LBB1_124+0x2c8>
80004064: 13 06 00 00  	mv	a2, zero
80004068: 93 75 04 02  	andi	a1, s0, 32
8000406c: 93 c5 15 06  	xori	a1, a1, 97
80004070: 13 88 65 0f  	addi	a6, a1, 246
80004074: 6f 00 40 03  	j	0x800040a8 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004078: 33 87 e7 00  	add	a4, a5, a4
8000407c: 93 07 16 00  	addi	a5, a2, 1
80004080: 93 05 c1 01  	addi	a1, sp, 28
80004084: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004088: 33 35 85 01  	sltu	a0, a0, s8
8000408c: 13 45 15 00  	xori	a0, a0, 1
80004090: 13 36 f6 01  	sltiu	a2, a2, 31
80004094: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004098: 23 80 e4 00  	sb	a4, 0(s1)
8000409c: 13 86 07 00  	mv	a2, a5
800040a0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800040a4: 63 84 05 02  	beqz	a1, 0x800040cc <.LBB1_124+0x2c8>
;       value /= base;
800040a8: b3 56 85 03  	divu	a3, a0, s8
800040ac: 33 87 86 03  	mul	a4, a3, s8
800040b0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800040b4: 93 74 e7 0f  	andi	s1, a4, 254
800040b8: 93 07 00 03  	addi	a5, zero, 48
800040bc: 93 05 a0 00  	addi	a1, zero, 10
800040c0: e3 ec b4 fa  	bltu	s1, a1, 0x80004078 <.LBB1_124+0x274>
800040c4: 93 07 08 00  	mv	a5, a6
800040c8: 6f f0 1f fb  	j	0x80004078 <.LBB1_124+0x274>
800040cc: 93 89 49 00  	addi	s3, s3, 4
800040d0: 13 07 c1 01  	addi	a4, sp, 28
800040d4: 13 05 09 00  	mv	a0, s2
800040d8: 93 05 0a 00  	mv	a1, s4
800040dc: 13 86 0c 00  	mv	a2, s9
800040e0: 93 86 0a 00  	mv	a3, s5
800040e4: 13 08 00 00  	mv	a6, zero
800040e8: 93 08 0c 00  	mv	a7, s8
800040ec: 93 83 0b 00  	mv	t2, s7
800040f0: 13 0e 0b 00  	mv	t3, s6
800040f4: 93 0e 04 00  	mv	t4, s0
800040f8: 97 10 00 00  	auipc	ra, 1
800040fc: e7 80 40 d9  	jalr	-620(ra)
80004100: 13 0c 05 00  	mv	s8, a0
80004104: 13 0b 50 02  	addi	s6, zero, 37
80004108: 93 0b e0 02  	addi	s7, zero, 46
8000410c: 13 04 1d 00  	addi	s0, s10, 1
80004110: 6f f0 cf d8  	j	0x8000369c <.LBB1_183+0x30>
80004114: 93 85 15 00  	addi	a1, a1, 1
80004118: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000411c: 63 00 05 04  	beqz	a0, 0x8000415c <.LBB1_124+0x358>
80004120: 13 84 17 00  	addi	s0, a5, 1
80004124: 6f 00 00 03  	j	0x80004154 <.LBB1_124+0x350>
80004128: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
8000412c: 13 8c 1c 00  	addi	s8, s9, 1
80004130: 13 75 f5 0f  	andi	a0, a0, 255
80004134: 93 05 0a 00  	mv	a1, s4
80004138: 13 86 0c 00  	mv	a2, s9
8000413c: 93 86 0a 00  	mv	a3, s5
80004140: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004144: 03 45 04 00  	lbu	a0, 0(s0)
80004148: 13 04 14 00  	addi	s0, s0, 1
8000414c: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004150: 63 08 05 00  	beqz	a0, 0x80004160 <.LBB1_124+0x35c>
80004154: e3 9c 04 fc  	bnez	s1, 0x8000412c <.LBB1_124+0x328>
80004158: e3 98 0b fc  	bnez	s7, 0x80004128 <.LBB1_124+0x324>
8000415c: 13 8c 0c 00  	mv	s8, s9
80004160: 03 25 c1 00  	lw	a0, 12(sp)
80004164: 13 35 15 00  	seqz	a0, a0
80004168: 03 26 41 01  	lw	a2, 20(sp)
8000416c: b3 35 66 01  	sltu	a1, a2, s6
80004170: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80004174: 33 65 b5 00  	or	a0, a0, a1
80004178: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
8000417c: e3 14 05 f8  	bnez	a0, 0x80004104 <.LBB1_124+0x300>
;           while (l++ < width) {
80004180: 33 04 cb 40  	sub	s0, s6, a2
80004184: 93 0b e0 02  	addi	s7, zero, 46
80004188: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000418c: 13 0c 1c 00  	addi	s8, s8, 1
80004190: 13 05 00 02  	addi	a0, zero, 32
80004194: 93 05 0a 00  	mv	a1, s4
80004198: 93 86 0a 00  	mv	a3, s5
8000419c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800041a0: 13 04 f4 ff  	addi	s0, s0, -1
800041a4: e3 12 04 fe  	bnez	s0, 0x80004188 <.LBB1_124+0x384>
800041a8: 13 0b 50 02  	addi	s6, zero, 37
800041ac: 13 04 1d 00  	addi	s0, s10, 1
800041b0: 6f f0 cf ce  	j	0x8000369c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800041b4: 13 86 0c 00  	mv	a2, s9
800041b8: 63 e4 5c 01  	bltu	s9, s5, 0x800041c0 <.LBB1_124+0x3bc>
800041bc: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800041c0: 13 05 00 00  	mv	a0, zero
800041c4: 93 05 0a 00  	mv	a1, s4
800041c8: 93 86 0a 00  	mv	a3, s5
800041cc: e7 00 09 00  	jalr	s2
;   return (int)idx;
800041d0: 13 85 0c 00  	mv	a0, s9
800041d4: 83 2d c1 03  	lw	s11, 60(sp)
800041d8: 03 2d 01 04  	lw	s10, 64(sp)
800041dc: 83 2c 41 04  	lw	s9, 68(sp)
800041e0: 03 2c 81 04  	lw	s8, 72(sp)
800041e4: 83 2b c1 04  	lw	s7, 76(sp)
800041e8: 03 2b 01 05  	lw	s6, 80(sp)
800041ec: 83 2a 41 05  	lw	s5, 84(sp)
800041f0: 03 2a 81 05  	lw	s4, 88(sp)
800041f4: 83 29 c1 05  	lw	s3, 92(sp)
800041f8: 03 29 01 06  	lw	s2, 96(sp)
800041fc: 83 24 41 06  	lw	s1, 100(sp)
80004200: 03 24 81 06  	lw	s0, 104(sp)
80004204: 83 20 c1 06  	lw	ra, 108(sp)
80004208: 13 01 01 07  	addi	sp, sp, 112
8000420c: 67 80 00 00  	ret

80004210 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80004210: 63 04 05 0a  	beqz	a0, 0x800042b8 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004214: f3 25 40 f1  	csrr	a1, mhartid
80004218: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
8000421c: 33 86 c5 02  	mul	a2, a1, a2

80004220 <.LBB2_6>:
80004220: 97 26 00 00  	auipc	a3, 2
80004224: 93 86 46 a6  	addi	a3, a3, -1436
80004228: b3 05 d6 00  	add	a1, a2, a3
8000422c: 03 a7 05 00  	lw	a4, 0(a1)
80004230: 93 07 17 00  	addi	a5, a4, 1
80004234: 23 a0 f5 00  	sw	a5, 0(a1)
80004238: 33 87 e5 00  	add	a4, a1, a4
8000423c: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80004240: 03 a7 05 00  	lw	a4, 0(a1)
80004244: 13 07 47 c0  	addi	a4, a4, -1020
80004248: 33 37 e0 00  	snez	a4, a4
8000424c: 13 05 65 ff  	addi	a0, a0, -10
80004250: 33 35 a0 00  	snez	a0, a0
80004254: 33 75 e5 00  	and	a0, a0, a4
80004258: 63 10 05 06  	bnez	a0, 0x800042b8 <.LBB2_8+0x18>
8000425c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80004260: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004264: 23 26 05 00  	sw	zero, 12(a0)
80004268: 93 06 00 04  	addi	a3, zero, 64
8000426c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80004270: 23 2a 05 00  	sw	zero, 20(a0)
80004274: 93 06 10 00  	addi	a3, zero, 1
80004278: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
8000427c: 23 2e 05 00  	sw	zero, 28(a0)
80004280: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004284: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004288: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000428c: 23 22 05 02  	sw	zero, 36(a0)
80004290: 23 20 c5 02  	sw	a2, 32(a0)

80004294 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80004294: 17 25 00 00  	auipc	a0, 2
80004298: 13 05 c5 8a  	addi	a0, a0, -1876
8000429c: 23 20 d5 00  	sw	a3, 0(a0)

800042a0 <.LBB2_8>:
800042a0: 17 25 00 00  	auipc	a0, 2
800042a4: 13 05 05 8e  	addi	a0, a0, -1824
;         while (fromhost == 0)
800042a8: 03 26 05 00  	lw	a2, 0(a0)
800042ac: e3 0e 06 fe  	beqz	a2, 0x800042a8 <.LBB2_8+0x8>
;         fromhost = 0;
800042b0: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800042b4: 23 a0 05 00  	sw	zero, 0(a1)
; }
800042b8: 67 80 00 00  	ret

800042bc <_out_null>:
; }
800042bc: 67 80 00 00  	ret

800042c0 <_ftoa>:
; {
800042c0: 13 01 01 f9  	addi	sp, sp, -112
800042c4: 23 26 11 06  	sw	ra, 108(sp)
800042c8: 23 24 81 06  	sw	s0, 104(sp)
800042cc: 23 22 91 06  	sw	s1, 100(sp)
800042d0: 23 20 21 07  	sw	s2, 96(sp)
800042d4: 23 2e 31 05  	sw	s3, 92(sp)
800042d8: 23 2c 41 05  	sw	s4, 88(sp)
800042dc: 23 2a 51 05  	sw	s5, 84(sp)
800042e0: 23 28 61 05  	sw	s6, 80(sp)
800042e4: 23 26 71 05  	sw	s7, 76(sp)
800042e8: 23 24 81 05  	sw	s8, 72(sp)
800042ec: 23 22 91 05  	sw	s9, 68(sp)
800042f0: 23 20 a1 05  	sw	s10, 64(sp)
800042f4: 27 3c 81 02  	fsd	fs0, 56(sp)
800042f8: 27 38 91 02  	fsd	fs1, 48(sp)
800042fc: 27 34 21 03  	fsd	fs2, 40(sp)

80004300 <.LBB4_83>:
80004300: 97 24 00 00  	auipc	s1, 2
80004304: 93 84 84 8d  	addi	s1, s1, -1832
80004308: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
8000430c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80004310: 93 0a 08 00  	mv	s5, a6
80004314: 13 89 07 00  	mv	s2, a5
80004318: 93 89 06 00  	mv	s3, a3
8000431c: 13 0a 06 00  	mv	s4, a2
80004320: 13 8b 05 00  	mv	s6, a1
80004324: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80004328: 63 98 04 0e  	bnez	s1, 0x80004418 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000432c: 13 f5 2a 00  	andi	a0, s5, 2
80004330: 93 f5 3a 00  	andi	a1, s5, 3
80004334: b3 35 b0 00  	snez	a1, a1
80004338: 13 36 59 00  	sltiu	a2, s2, 5
8000433c: b3 65 b6 00  	or	a1, a2, a1
80004340: 93 5c 15 00  	srli	s9, a0, 1
80004344: 13 04 0a 00  	mv	s0, s4
80004348: 63 96 05 02  	bnez	a1, 0x80004374 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
8000434c: 93 04 c9 ff  	addi	s1, s2, -4
80004350: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004354: 13 04 16 00  	addi	s0, a2, 1
80004358: 13 05 00 02  	addi	a0, zero, 32
8000435c: 93 05 0b 00  	mv	a1, s6
80004360: 93 86 09 00  	mv	a3, s3
80004364: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004368: 93 84 f4 ff  	addi	s1, s1, -1
8000436c: 13 06 04 00  	mv	a2, s0
80004370: e3 92 04 fe  	bnez	s1, 0x80004354 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80004374: 93 04 14 00  	addi	s1, s0, 1
80004378: 13 05 d0 02  	addi	a0, zero, 45
8000437c: 93 05 0b 00  	mv	a1, s6
80004380: 13 06 04 00  	mv	a2, s0
80004384: 93 86 09 00  	mv	a3, s3
80004388: e7 80 0b 00  	jalr	s7
8000438c: 93 0a 24 00  	addi	s5, s0, 2
80004390: 13 05 90 06  	addi	a0, zero, 105
80004394: 93 05 0b 00  	mv	a1, s6
80004398: 13 86 04 00  	mv	a2, s1
8000439c: 93 86 09 00  	mv	a3, s3
800043a0: e7 80 0b 00  	jalr	s7
800043a4: 13 0c 34 00  	addi	s8, s0, 3
800043a8: 13 05 e0 06  	addi	a0, zero, 110
800043ac: 93 05 0b 00  	mv	a1, s6
800043b0: 13 86 0a 00  	mv	a2, s5
800043b4: 93 86 09 00  	mv	a3, s3
800043b8: e7 80 0b 00  	jalr	s7
800043bc: 93 04 44 00  	addi	s1, s0, 4
800043c0: 13 05 60 06  	addi	a0, zero, 102
800043c4: 93 05 0b 00  	mv	a1, s6
800043c8: 13 06 0c 00  	mv	a2, s8
800043cc: 93 86 09 00  	mv	a3, s3
800043d0: e7 80 0b 00  	jalr	s7
800043d4: 33 85 44 41  	sub	a0, s1, s4
800043d8: 33 35 25 01  	sltu	a0, a0, s2
800043dc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800043e0: 93 c5 1c 00  	xori	a1, s9, 1
800043e4: 33 e5 a5 00  	or	a0, a1, a0
800043e8: 63 16 05 56  	bnez	a0, 0x80004954 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800043ec: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800043f0: 13 84 14 00  	addi	s0, s1, 1
800043f4: 13 05 00 02  	addi	a0, zero, 32
800043f8: 93 05 0b 00  	mv	a1, s6
800043fc: 13 86 04 00  	mv	a2, s1
80004400: 93 86 09 00  	mv	a3, s3
80004404: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004408: 33 05 8a 00  	add	a0, s4, s0
8000440c: 93 04 04 00  	mv	s1, s0
80004410: e3 60 25 ff  	bltu	a0, s2, 0x800043f0 <.LBB4_83+0xf0>
80004414: 6f 00 40 54  	j	0x80004958 <.LBB4_90+0x378>
80004418: 53 04 a5 22  	fmv.d	fs0, fa0

8000441c <.LBB4_84>:
8000441c: 17 15 00 00  	auipc	a0, 1
80004420: 13 05 45 7c  	addi	a0, a0, 1988
80004424: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80004428: 53 05 05 a2  	fle.d	a0, fa0, ft0
8000442c: 63 1e 05 00  	bnez	a0, 0x80004448 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004430: 93 f5 4a 00  	andi	a1, s5, 4
80004434: 13 b5 15 00  	seqz	a0, a1
80004438: 63 82 05 06  	beqz	a1, 0x8000449c <.LBB4_88>

8000443c <.LBB4_85>:
8000443c: 17 1c 00 00  	auipc	s8, 1
80004440: 13 0c 4c 4b  	addi	s8, s8, 1204
80004444: 6f 00 00 06  	j	0x800044a4 <.LBB4_88+0x8>

80004448 <.LBB4_86>:
80004448: 17 15 00 00  	auipc	a0, 1
8000444c: 13 05 05 7a  	addi	a0, a0, 1952
80004450: 07 30 05 00  	fld	ft0, 0(a0)

80004454 <.LBB4_87>:
80004454: 17 15 00 00  	auipc	a0, 1
80004458: 13 05 c5 79  	addi	a0, a0, 1948
8000445c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80004460: 53 05 04 a2  	fle.d	a0, fs0, ft0
80004464: d3 85 80 a2  	fle.d	a1, ft1, fs0
80004468: 33 75 b5 00  	and	a0, a0, a1
8000446c: 63 1e 05 0e  	bnez	a0, 0x80004568 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004470: 13 85 0b 00  	mv	a0, s7
80004474: 93 05 0b 00  	mv	a1, s6
80004478: 13 06 0a 00  	mv	a2, s4
8000447c: 93 86 09 00  	mv	a3, s3
80004480: 53 05 84 22  	fmv.d	fa0, fs0
80004484: 93 07 09 00  	mv	a5, s2
80004488: 13 88 0a 00  	mv	a6, s5
8000448c: 97 00 00 00  	auipc	ra, 0
80004490: e7 80 40 51  	jalr	1300(ra)
80004494: 13 04 05 00  	mv	s0, a0
80004498: 6f 00 00 4c  	j	0x80004958 <.LBB4_90+0x378>

8000449c <.LBB4_88>:
8000449c: 17 1c 00 00  	auipc	s8, 1
800044a0: 13 0c 3c 47  	addi	s8, s8, 1139
800044a4: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800044a8: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800044ac: 13 f5 3a 00  	andi	a0, s5, 3
800044b0: 33 35 a0 00  	snez	a0, a0
800044b4: b3 b5 2c 01  	sltu	a1, s9, s2
800044b8: 93 c5 15 00  	xori	a1, a1, 1
800044bc: 33 65 b5 00  	or	a0, a0, a1
800044c0: 93 fa 2a 00  	andi	s5, s5, 2
800044c4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800044c8: 63 16 05 02  	bnez	a0, 0x800044f4 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800044cc: 33 04 99 41  	sub	s0, s2, s9
800044d0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800044d4: 93 04 16 00  	addi	s1, a2, 1
800044d8: 13 05 00 02  	addi	a0, zero, 32
800044dc: 93 05 0b 00  	mv	a1, s6
800044e0: 93 86 09 00  	mv	a3, s3
800044e4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800044e8: 13 04 f4 ff  	addi	s0, s0, -1
800044ec: 13 86 04 00  	mv	a2, s1
800044f0: e3 12 04 fe  	bnez	s0, 0x800044d4 <.LBB4_88+0x38>
800044f4: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800044f8: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800044fc: 33 05 9c 01  	add	a0, s8, s9
80004500: 03 45 05 00  	lbu	a0, 0(a0)
80004504: 13 86 04 00  	mv	a2, s1
80004508: 13 84 fc ff  	addi	s0, s9, -1
8000450c: 93 84 14 00  	addi	s1, s1, 1
80004510: 93 05 0b 00  	mv	a1, s6
80004514: 93 86 09 00  	mv	a3, s3
80004518: e7 80 0b 00  	jalr	s7
8000451c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80004520: e3 1e 04 fc  	bnez	s0, 0x800044fc <.LBB4_88+0x60>
80004524: 33 85 44 41  	sub	a0, s1, s4
80004528: 33 35 25 01  	sltu	a0, a0, s2
8000452c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004530: 93 c5 1a 00  	xori	a1, s5, 1
80004534: 33 e5 a5 00  	or	a0, a1, a0
80004538: 63 1e 05 40  	bnez	a0, 0x80004954 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000453c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004540: 13 84 14 00  	addi	s0, s1, 1
80004544: 13 05 00 02  	addi	a0, zero, 32
80004548: 93 05 0b 00  	mv	a1, s6
8000454c: 13 86 04 00  	mv	a2, s1
80004550: 93 86 09 00  	mv	a3, s3
80004554: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004558: 33 05 8a 00  	add	a0, s4, s0
8000455c: 93 04 04 00  	mv	s1, s0
80004560: e3 60 25 ff  	bltu	a0, s2, 0x80004540 <.LBB4_88+0xa4>
80004564: 6f 00 40 3f  	j	0x80004958 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80004568: 13 f5 0a 40  	andi	a0, s5, 1024
8000456c: 13 0c 60 00  	addi	s8, zero, 6
80004570: 63 04 05 00  	beqz	a0, 0x80004578 <.LBB4_88+0xdc>
80004574: 13 0c 07 00  	mv	s8, a4
80004578: 13 05 a0 00  	addi	a0, zero, 10
8000457c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004580: 63 6c ac 02  	bltu	s8, a0, 0x800045b8 <.LBB4_88+0x11c>
80004584: 93 04 6c ff  	addi	s1, s8, -10
80004588: 13 05 f0 01  	addi	a0, zero, 31
8000458c: 63 e4 a4 00  	bltu	s1, a0, 0x80004594 <.LBB4_88+0xf8>
80004590: 93 04 f0 01  	addi	s1, zero, 31
80004594: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80004598: 13 05 81 00  	addi	a0, sp, 8
8000459c: 93 05 00 03  	addi	a1, zero, 48
800045a0: 13 06 04 00  	mv	a2, s0
800045a4: 97 c0 ff ff  	auipc	ra, 1048572
800045a8: e7 80 40 fb  	jalr	-76(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800045ac: 13 c5 f4 ff  	not	a0, s1
800045b0: 33 0c ac 00  	add	s8, s8, a0
800045b4: 6f 00 80 00  	j	0x800045bc <.LBB4_88+0x120>
800045b8: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800045bc: 13 15 3c 00  	slli	a0, s8, 3

800045c0 <.LBB4_89>:
800045c0: 97 15 00 00  	auipc	a1, 1
800045c4: 93 85 05 51  	addi	a1, a1, 1296
800045c8: 33 05 b5 00  	add	a0, a0, a1
800045cc: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800045d0: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800045d4: 53 80 04 d2  	fcvt.d.w	ft0, s1
800045d8: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800045dc: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

800045e0 <.LBB4_90>:
800045e0: 17 15 00 00  	auipc	a0, 1
800045e4: 13 05 85 61  	addi	a0, a0, 1560
800045e8: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800045ec: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800045f0: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800045f4: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800045f8: d3 05 01 a2  	fle.d	a1, ft2, ft0
800045fc: 63 90 05 02  	bnez	a1, 0x8000461c <.LBB4_90+0x3c>
;     ++frac;
80004600: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004604: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80004608: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000460c: 63 94 05 02  	bnez	a1, 0x80004634 <.LBB4_90+0x54>
80004610: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004614: 93 84 14 00  	addi	s1, s1, 1
80004618: 6f 00 c0 01  	j	0x80004634 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
8000461c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80004620: 63 9a 05 00  	bnez	a1, 0x80004634 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004624: 93 35 15 00  	seqz	a1, a0
80004628: 13 76 15 00  	andi	a2, a0, 1
8000462c: b3 65 b6 00  	or	a1, a2, a1
80004630: 33 85 a5 00  	add	a0, a1, a0
80004634: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004638: 63 0c 0c 0c  	beqz	s8, 0x80004710 <.LBB4_90+0x130>
8000463c: 13 06 00 00  	mv	a2, zero
80004640: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004644: 33 83 85 00  	add	t1, a1, s0
80004648: 93 02 00 02  	addi	t0, zero, 32
8000464c: 33 87 82 40  	sub	a4, t0, s0
80004650: b7 d5 cc cc  	lui	a1, 838861
80004654: 93 83 d5 cc  	addi	t2, a1, -819
80004658: 13 08 a0 00  	addi	a6, zero, 10
8000465c: 93 08 90 00  	addi	a7, zero, 9
80004660: 63 04 c7 0c  	beq	a4, a2, 0x80004728 <.LBB4_90+0x148>
80004664: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80004668: 33 35 75 02  	mulhu	a0, a0, t2
8000466c: 13 55 35 00  	srli	a0, a0, 3
80004670: b3 06 05 03  	mul	a3, a0, a6
80004674: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004678: 93 e6 06 03  	ori	a3, a3, 48
8000467c: b3 07 c3 00  	add	a5, t1, a2
80004680: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004684: 13 06 16 00  	addi	a2, a2, 1
80004688: e3 ec b8 fc  	bltu	a7, a1, 0x80004660 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000468c: 33 05 c4 00  	add	a0, s0, a2
80004690: 93 05 f5 ff  	addi	a1, a0, -1
80004694: 93 06 e0 01  	addi	a3, zero, 30
80004698: b3 b6 b6 00  	sltu	a3, a3, a1
8000469c: 33 47 cc 00  	xor	a4, s8, a2
800046a0: 13 37 17 00  	seqz	a4, a4
800046a4: b3 e6 e6 00  	or	a3, a3, a4
800046a8: 63 94 06 08  	bnez	a3, 0x80004730 <.LBB4_90+0x150>
800046ac: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800046b0: 33 05 85 00  	add	a0, a0, s0
800046b4: 93 45 f6 ff  	not	a1, a2
800046b8: 33 8c 85 01  	add	s8, a1, s8
800046bc: 33 04 c4 00  	add	s0, s0, a2
800046c0: 93 05 f0 01  	addi	a1, zero, 31
800046c4: b3 86 85 40  	sub	a3, a1, s0
800046c8: 33 05 c5 00  	add	a0, a0, a2
800046cc: 93 05 0c 00  	mv	a1, s8
800046d0: 63 64 dc 00  	bltu	s8, a3, 0x800046d8 <.LBB4_90+0xf8>
800046d4: 93 85 06 00  	mv	a1, a3
800046d8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800046dc: 93 05 00 03  	addi	a1, zero, 48
800046e0: 97 c0 ff ff  	auipc	ra, 1048572
800046e4: e7 80 80 e7  	jalr	-392(ra)
800046e8: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800046ec: b3 05 a4 00  	add	a1, s0, a0
800046f0: 93 b5 f5 01  	sltiu	a1, a1, 31
800046f4: 33 46 ac 00  	xor	a2, s8, a0
800046f8: 33 36 c0 00  	snez	a2, a2
800046fc: 33 f6 c5 00  	and	a2, a1, a2
80004700: 13 05 15 00  	addi	a0, a0, 1
80004704: e3 14 06 fe  	bnez	a2, 0x800046ec <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004708: 33 05 a4 00  	add	a0, s0, a0
8000470c: 6f 00 80 02  	j	0x80004734 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80004710: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004714: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004718: 53 05 10 a2  	fle.d	a0, ft0, ft1
8000471c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004720: b3 84 a4 00  	add	s1, s1, a0
80004724: 6f 00 c0 03  	j	0x80004760 <.LBB4_90+0x180>
80004728: 13 04 00 02  	addi	s0, zero, 32
8000472c: 6f 00 80 03  	j	0x80004764 <.LBB4_90+0x184>
80004730: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004734: 63 8e 05 00  	beqz	a1, 0x80004750 <.LBB4_90+0x170>
;       buf[len++] = '.';
80004738: 13 04 15 00  	addi	s0, a0, 1
8000473c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80004740: 33 85 a5 00  	add	a0, a1, a0
80004744: 93 05 e0 02  	addi	a1, zero, 46
80004748: 23 00 b5 00  	sb	a1, 0(a0)
8000474c: 6f 00 80 00  	j	0x80004754 <.LBB4_90+0x174>
80004750: 13 04 05 00  	mv	s0, a0
80004754: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004758: 93 02 04 00  	mv	t0, s0
8000475c: 63 64 85 00  	bltu	a0, s0, 0x80004764 <.LBB4_90+0x184>
80004760: 93 02 00 02  	addi	t0, zero, 32
80004764: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80004768: 37 65 66 66  	lui	a0, 419430
8000476c: 93 05 75 66  	addi	a1, a0, 1639
80004770: 13 08 a0 00  	addi	a6, zero, 10
80004774: 93 06 81 00  	addi	a3, sp, 8
80004778: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000477c: 63 80 82 04  	beq	t0, s0, 0x800047bc <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80004780: 33 95 b4 02  	mulh	a0, s1, a1
80004784: 93 57 f5 01  	srli	a5, a0, 31
80004788: 13 55 25 40  	srai	a0, a0, 2
8000478c: 33 05 f5 00  	add	a0, a0, a5
80004790: b3 07 05 03  	mul	a5, a0, a6
80004794: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004798: 93 87 07 03  	addi	a5, a5, 48
8000479c: 13 0c 14 00  	addi	s8, s0, 1
800047a0: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
800047a4: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
800047a8: 23 00 f4 00  	sb	a5, 0(s0)
800047ac: 13 04 0c 00  	mv	s0, s8
800047b0: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800047b4: e3 64 c7 fc  	bltu	a4, a2, 0x8000477c <.LBB4_90+0x19c>
800047b8: 6f 00 80 00  	j	0x800047c0 <.LBB4_90+0x1e0>
800047bc: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800047c0: 93 f4 3a 00  	andi	s1, s5, 3
800047c4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800047c8: 63 96 a4 06  	bne	s1, a0, 0x80004834 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800047cc: 63 0c 09 00  	beqz	s2, 0x800047e4 <.LBB4_90+0x204>
800047d0: 13 f5 ca 00  	andi	a0, s5, 12
800047d4: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800047d8: 33 e5 ac 00  	or	a0, s9, a0
800047dc: 33 09 a9 40  	sub	s2, s2, a0
800047e0: 6f 00 80 00  	j	0x800047e8 <.LBB4_90+0x208>
800047e4: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800047e8: 33 35 2c 01  	sltu	a0, s8, s2
800047ec: 93 45 15 00  	xori	a1, a0, 1
800047f0: 13 05 f0 01  	addi	a0, zero, 31
800047f4: 33 36 85 01  	sltu	a2, a0, s8
800047f8: b3 65 b6 00  	or	a1, a2, a1
800047fc: 63 9c 05 02  	bnez	a1, 0x80004834 <.LBB4_90+0x254>
80004800: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004804: 93 45 fc ff  	not	a1, s8
80004808: b3 05 b9 00  	add	a1, s2, a1
8000480c: 33 06 85 41  	sub	a2, a0, s8
80004810: 33 85 86 01  	add	a0, a3, s8
80004814: 63 e4 c5 00  	bltu	a1, a2, 0x8000481c <.LBB4_90+0x23c>
80004818: 93 05 06 00  	mv	a1, a2
8000481c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80004820: 93 05 00 03  	addi	a1, zero, 48
80004824: 13 06 04 00  	mv	a2, s0
80004828: 97 c0 ff ff  	auipc	ra, 1048572
8000482c: e7 80 00 d3  	jalr	-720(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004830: 33 0c 84 01  	add	s8, s0, s8
80004834: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004838: 63 6a 85 05  	bltu	a0, s8, 0x8000488c <.LBB4_90+0x2ac>
;     if (negative) {
8000483c: 63 8c 0c 00  	beqz	s9, 0x80004854 <.LBB4_90+0x274>
80004840: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004844: 33 05 85 01  	add	a0, a0, s8
80004848: 13 0c 1c 00  	addi	s8, s8, 1
8000484c: 93 05 d0 02  	addi	a1, zero, 45
80004850: 6f 00 80 03  	j	0x80004888 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80004854: 13 f5 4a 00  	andi	a0, s5, 4
80004858: 63 10 05 02  	bnez	a0, 0x80004878 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
8000485c: 13 f5 8a 00  	andi	a0, s5, 8
80004860: 63 06 05 02  	beqz	a0, 0x8000488c <.LBB4_90+0x2ac>
80004864: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80004868: 33 05 85 01  	add	a0, a0, s8
8000486c: 13 0c 1c 00  	addi	s8, s8, 1
80004870: 93 05 00 02  	addi	a1, zero, 32
80004874: 6f 00 40 01  	j	0x80004888 <.LBB4_90+0x2a8>
80004878: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000487c: 33 05 85 01  	add	a0, a0, s8
80004880: 13 0c 1c 00  	addi	s8, s8, 1
80004884: 93 05 b0 02  	addi	a1, zero, 43
80004888: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000488c: 33 35 90 00  	snez	a0, s1
80004890: b3 35 2c 01  	sltu	a1, s8, s2
80004894: 93 c5 15 00  	xori	a1, a1, 1
80004898: 33 65 b5 00  	or	a0, a0, a1
8000489c: 93 fa 2a 00  	andi	s5, s5, 2
800048a0: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800048a4: 63 16 05 02  	bnez	a0, 0x800048d0 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
800048a8: b3 04 89 41  	sub	s1, s2, s8
800048ac: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800048b0: 13 04 16 00  	addi	s0, a2, 1
800048b4: 13 05 00 02  	addi	a0, zero, 32
800048b8: 93 05 0b 00  	mv	a1, s6
800048bc: 93 86 09 00  	mv	a3, s3
800048c0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800048c4: 93 84 f4 ff  	addi	s1, s1, -1
800048c8: 13 06 04 00  	mv	a2, s0
800048cc: e3 92 04 fe  	bnez	s1, 0x800048b0 <.LBB4_90+0x2d0>
800048d0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800048d4: 63 0c 0c 02  	beqz	s8, 0x8000490c <.LBB4_90+0x32c>
800048d8: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800048dc: 33 85 8c 01  	add	a0, s9, s8
800048e0: 03 45 05 00  	lbu	a0, 0(a0)
800048e4: 13 0d fc ff  	addi	s10, s8, -1
800048e8: 93 04 14 00  	addi	s1, s0, 1
800048ec: 93 05 0b 00  	mv	a1, s6
800048f0: 13 06 04 00  	mv	a2, s0
800048f4: 93 86 09 00  	mv	a3, s3
800048f8: e7 80 0b 00  	jalr	s7
800048fc: 13 84 04 00  	mv	s0, s1
80004900: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004904: e3 1c 0d fc  	bnez	s10, 0x800048dc <.LBB4_90+0x2fc>
80004908: 6f 00 80 00  	j	0x80004910 <.LBB4_90+0x330>
8000490c: 93 04 04 00  	mv	s1, s0
80004910: 33 85 44 41  	sub	a0, s1, s4
80004914: 33 35 25 01  	sltu	a0, a0, s2
80004918: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000491c: 93 c5 1a 00  	xori	a1, s5, 1
80004920: 33 e5 a5 00  	or	a0, a1, a0
80004924: 63 18 05 02  	bnez	a0, 0x80004954 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004928: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000492c: 13 84 14 00  	addi	s0, s1, 1
80004930: 13 05 00 02  	addi	a0, zero, 32
80004934: 93 05 0b 00  	mv	a1, s6
80004938: 13 86 04 00  	mv	a2, s1
8000493c: 93 86 09 00  	mv	a3, s3
80004940: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004944: 33 05 8a 00  	add	a0, s4, s0
80004948: 93 04 04 00  	mv	s1, s0
8000494c: e3 60 25 ff  	bltu	a0, s2, 0x8000492c <.LBB4_90+0x34c>
80004950: 6f 00 80 00  	j	0x80004958 <.LBB4_90+0x378>
80004954: 13 84 04 00  	mv	s0, s1
; }
80004958: 13 05 04 00  	mv	a0, s0
8000495c: 07 39 81 02  	fld	fs2, 40(sp)
80004960: 87 34 01 03  	fld	fs1, 48(sp)
80004964: 07 34 81 03  	fld	fs0, 56(sp)
80004968: 03 2d 01 04  	lw	s10, 64(sp)
8000496c: 83 2c 41 04  	lw	s9, 68(sp)
80004970: 03 2c 81 04  	lw	s8, 72(sp)
80004974: 83 2b c1 04  	lw	s7, 76(sp)
80004978: 03 2b 01 05  	lw	s6, 80(sp)
8000497c: 83 2a 41 05  	lw	s5, 84(sp)
80004980: 03 2a 81 05  	lw	s4, 88(sp)
80004984: 83 29 c1 05  	lw	s3, 92(sp)
80004988: 03 29 01 06  	lw	s2, 96(sp)
8000498c: 83 24 41 06  	lw	s1, 100(sp)
80004990: 03 24 81 06  	lw	s0, 104(sp)
80004994: 83 20 c1 06  	lw	ra, 108(sp)
80004998: 13 01 01 07  	addi	sp, sp, 112
8000499c: 67 80 00 00  	ret

800049a0 <_etoa>:
; {
800049a0: 13 01 01 f8  	addi	sp, sp, -128
800049a4: 23 2e 11 06  	sw	ra, 124(sp)
800049a8: 23 2c 81 06  	sw	s0, 120(sp)
800049ac: 23 2a 91 06  	sw	s1, 116(sp)
800049b0: 23 28 21 07  	sw	s2, 112(sp)
800049b4: 23 26 31 07  	sw	s3, 108(sp)
800049b8: 23 24 41 07  	sw	s4, 104(sp)
800049bc: 23 22 51 07  	sw	s5, 100(sp)
800049c0: 23 20 61 07  	sw	s6, 96(sp)
800049c4: 23 2e 71 05  	sw	s7, 92(sp)
800049c8: 23 2c 81 05  	sw	s8, 88(sp)
800049cc: 23 2a 91 05  	sw	s9, 84(sp)
800049d0: 23 28 a1 05  	sw	s10, 80(sp)
800049d4: 23 26 b1 05  	sw	s11, 76(sp)

800049d8 <.LBB5_43>:
800049d8: 97 14 00 00  	auipc	s1, 1
800049dc: 93 84 84 22  	addi	s1, s1, 552
800049e0: 87 b0 04 00  	fld	ft1, 0(s1)

800049e4 <.LBB5_44>:
800049e4: 97 14 00 00  	auipc	s1, 1
800049e8: 93 84 44 22  	addi	s1, s1, 548
800049ec: 07 b1 04 00  	fld	ft2, 0(s1)
800049f0: 53 00 a5 22  	fmv.d	ft0, fa0
800049f4: d3 04 15 a2  	fle.d	s1, fa0, ft1
800049f8: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800049fc: b3 f4 84 00  	and	s1, s1, s0
80004a00: 93 0a 08 00  	mv	s5, a6
80004a04: 13 89 07 00  	mv	s2, a5
80004a08: 93 07 07 00  	mv	a5, a4
80004a0c: 93 89 06 00  	mv	s3, a3
80004a10: 13 0a 06 00  	mv	s4, a2
80004a14: 13 8b 05 00  	mv	s6, a1
80004a18: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004a1c: 63 92 04 06  	bnez	s1, 0x80004a80 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004a20: 13 85 0b 00  	mv	a0, s7
80004a24: 93 05 0b 00  	mv	a1, s6
80004a28: 13 06 0a 00  	mv	a2, s4
80004a2c: 93 86 09 00  	mv	a3, s3
80004a30: 53 05 00 22  	fmv.d	fa0, ft0
80004a34: 13 87 07 00  	mv	a4, a5
80004a38: 93 07 09 00  	mv	a5, s2
80004a3c: 13 88 0a 00  	mv	a6, s5
80004a40: 83 2d c1 04  	lw	s11, 76(sp)
80004a44: 03 2d 01 05  	lw	s10, 80(sp)
80004a48: 83 2c 41 05  	lw	s9, 84(sp)
80004a4c: 03 2c 81 05  	lw	s8, 88(sp)
80004a50: 83 2b c1 05  	lw	s7, 92(sp)
80004a54: 03 2b 01 06  	lw	s6, 96(sp)
80004a58: 83 2a 41 06  	lw	s5, 100(sp)
80004a5c: 03 2a 81 06  	lw	s4, 104(sp)
80004a60: 83 29 c1 06  	lw	s3, 108(sp)
80004a64: 03 29 01 07  	lw	s2, 112(sp)
80004a68: 83 24 41 07  	lw	s1, 116(sp)
80004a6c: 03 24 81 07  	lw	s0, 120(sp)
80004a70: 83 20 c1 07  	lw	ra, 124(sp)
80004a74: 13 01 01 08  	addi	sp, sp, 128
80004a78: 17 03 00 00  	auipc	t1, 0
80004a7c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004a80: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004a84: 13 f5 0a 40  	andi	a0, s5, 1024
80004a88: 13 07 60 00  	addi	a4, zero, 6
80004a8c: 63 04 05 00  	beqz	a0, 0x80004a94 <.LBB5_44+0xb0>
80004a90: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004a94: 27 30 a1 02  	fsd	fa0, 32(sp)
80004a98: 83 25 41 02  	lw	a1, 36(sp)
80004a9c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004aa0: 93 d6 45 01  	srli	a3, a1, 20
80004aa4: b7 07 10 00  	lui	a5, 256
80004aa8: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004aac: b3 f5 f5 00  	and	a1, a1, a5
80004ab0: 23 2c c1 00  	sw	a2, 24(sp)
80004ab4: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004ab8: b3 e5 c5 00  	or	a1, a1, a2
80004abc: 23 2e b1 00  	sw	a1, 28(sp)
80004ac0: 87 30 81 01  	fld	ft1, 24(sp)

80004ac4 <.LBB5_45>:
80004ac4: 97 15 00 00  	auipc	a1, 1
80004ac8: 93 85 c5 14  	addi	a1, a1, 332
80004acc: 07 b1 05 00  	fld	ft2, 0(a1)

80004ad0 <.LBB5_46>:
80004ad0: 97 15 00 00  	auipc	a1, 1
80004ad4: 93 85 85 14  	addi	a1, a1, 328
80004ad8: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004adc: 93 f5 f6 7f  	andi	a1, a3, 2047
80004ae0: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004ae4: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004ae8: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004aec <.LBB5_47>:
80004aec: 97 15 00 00  	auipc	a1, 1
80004af0: 93 85 45 13  	addi	a1, a1, 308
80004af4: 07 b1 05 00  	fld	ft2, 0(a1)

80004af8 <.LBB5_48>:
80004af8: 97 15 00 00  	auipc	a1, 1
80004afc: 93 85 05 13  	addi	a1, a1, 304
80004b00: 87 b1 05 00  	fld	ft3, 0(a1)

80004b04 <.LBB5_49>:
80004b04: 97 15 00 00  	auipc	a1, 1
80004b08: 93 85 c5 12  	addi	a1, a1, 300
80004b0c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004b10: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004b14: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004b18: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004b1c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004b20 <.LBB5_50>:
80004b20: 17 16 00 00  	auipc	a2, 1
80004b24: 13 06 86 11  	addi	a2, a2, 280
80004b28: 87 31 06 00  	fld	ft3, 0(a2)

80004b2c <.LBB5_51>:
80004b2c: 17 16 00 00  	auipc	a2, 1
80004b30: 13 06 46 11  	addi	a2, a2, 276
80004b34: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004b38: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004b3c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004b40: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004b44: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004b48: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004b4c: 13 06 f6 3f  	addi	a2, a2, 1023
80004b50: 23 28 01 00  	sw	zero, 16(sp)
80004b54: 13 16 46 01  	slli	a2, a2, 20
80004b58: 23 2a c1 00  	sw	a2, 20(sp)

80004b5c <.LBB5_52>:
80004b5c: 17 16 00 00  	auipc	a2, 1
80004b60: 13 06 46 0f  	addi	a2, a2, 244
80004b64: 87 31 06 00  	fld	ft3, 0(a2)

80004b68 <.LBB5_53>:
80004b68: 17 16 00 00  	auipc	a2, 1
80004b6c: 13 06 06 0f  	addi	a2, a2, 240
80004b70: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004b74: 87 32 01 01  	fld	ft5, 16(sp)

80004b78 <.LBB5_54>:
80004b78: 17 16 00 00  	auipc	a2, 1
80004b7c: 13 06 06 0d  	addi	a2, a2, 208
80004b80: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004b84: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004b88 <.LBB5_55>:
80004b88: 17 16 00 00  	auipc	a2, 1
80004b8c: 13 06 86 0d  	addi	a2, a2, 216
80004b90: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004b94: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004b98: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004b9c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004ba0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004ba4: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004ba8: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004bac: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004bb0: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004bb4: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004bb8: 63 0a 06 00  	beqz	a2, 0x80004bcc <.LBB5_56+0x10>

80004bbc <.LBB5_56>:
80004bbc: 97 16 00 00  	auipc	a3, 1
80004bc0: 93 86 c6 0a  	addi	a3, a3, 172
80004bc4: 07 b1 06 00  	fld	ft2, 0(a3)
80004bc8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004bcc: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004bd0: 93 05 34 06  	addi	a1, s0, 99
80004bd4: 93 b5 75 0c  	sltiu	a1, a1, 199
80004bd8: 13 06 50 00  	addi	a2, zero, 5
80004bdc: b7 16 00 00  	lui	a3, 1
80004be0: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004be4: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004be8: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004bec: 63 84 06 06  	beqz	a3, 0x80004c54 <.LBB5_58+0x58>

80004bf0 <.LBB5_57>:
80004bf0: 97 15 00 00  	auipc	a1, 1
80004bf4: 93 85 05 08  	addi	a1, a1, 128
80004bf8: 07 b1 05 00  	fld	ft2, 0(a1)

80004bfc <.LBB5_58>:
80004bfc: 97 15 00 00  	auipc	a1, 1
80004c00: 93 85 c5 07  	addi	a1, a1, 124
80004c04: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004c08: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004c0c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004c10: b3 e5 c5 00  	or	a1, a1, a2
80004c14: 63 98 05 00  	bnez	a1, 0x80004c24 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004c18: 63 40 e4 02  	blt	s0, a4, 0x80004c38 <.LBB5_58+0x3c>
80004c1c: 13 07 00 00  	mv	a4, zero
80004c20: 6f 00 00 02  	j	0x80004c40 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004c24: 63 06 07 02  	beqz	a4, 0x80004c50 <.LBB5_58+0x54>
80004c28: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004c2c: 13 45 15 00  	xori	a0, a0, 1
80004c30: 33 07 a7 40  	sub	a4, a4, a0
80004c34: 6f 00 00 02  	j	0x80004c54 <.LBB5_58+0x58>
80004c38: 13 45 f4 ff  	not	a0, s0
80004c3c: 33 07 a7 00  	add	a4, a4, a0
80004c40: 13 04 00 00  	mv	s0, zero
80004c44: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004c48: 93 ea 0a 40  	ori	s5, s5, 1024
80004c4c: 6f 00 80 00  	j	0x80004c54 <.LBB5_58+0x58>
80004c50: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004c54: b3 05 99 41  	sub	a1, s2, s9
80004c58: 33 36 b9 00  	sltu	a2, s2, a1
80004c5c: 13 05 00 00  	mv	a0, zero
80004c60: 63 14 06 00  	bnez	a2, 0x80004c68 <.LBB5_58+0x6c>
80004c64: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004c68: 93 07 00 00  	mv	a5, zero
80004c6c: 93 d5 1a 00  	srli	a1, s5, 1
80004c70: 93 f4 15 00  	andi	s1, a1, 1
80004c74: b3 35 90 01  	snez	a1, s9
80004c78: b3 f5 b4 00  	and	a1, s1, a1
80004c7c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004c80: 63 94 05 00  	bnez	a1, 0x80004c88 <.LBB5_58+0x8c>
80004c84: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004c88: 93 35 14 00  	seqz	a1, s0
80004c8c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004c90: 63 94 05 00  	bnez	a1, 0x80004c98 <.LBB5_58+0x9c>
80004c94: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004c98: 63 04 05 00  	beqz	a0, 0x80004ca0 <.LBB5_58+0xa4>
80004c9c: 53 15 a5 22  	fneg.d	fa0, fa0
80004ca0: 37 f5 ff ff  	lui	a0, 1048575
80004ca4: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004ca8: 33 f8 aa 00  	and	a6, s5, a0
80004cac: 13 85 0b 00  	mv	a0, s7
80004cb0: 93 05 0b 00  	mv	a1, s6
80004cb4: 13 06 0a 00  	mv	a2, s4
80004cb8: 93 86 09 00  	mv	a3, s3
80004cbc: 97 f0 ff ff  	auipc	ra, 1048575
80004cc0: e7 80 40 60  	jalr	1540(ra)
80004cc4: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004cc8: 63 82 0c 18  	beqz	s9, 0x80004e4c <.LBB5_58+0x250>
80004ccc: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004cd0: 13 f5 0a 02  	andi	a0, s5, 32
80004cd4: 13 45 55 06  	xori	a0, a0, 101
80004cd8: 93 05 0b 00  	mv	a1, s6
80004cdc: 13 06 0d 00  	mv	a2, s10
80004ce0: 93 86 09 00  	mv	a3, s3
80004ce4: e7 80 0b 00  	jalr	s7
80004ce8: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004cec: 93 5a f4 01  	srli	s5, s0, 31
80004cf0: 13 55 f4 41  	srai	a0, s0, 31
80004cf4: b3 05 a4 00  	add	a1, s0, a0
80004cf8: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004cfc: 93 8d dc ff  	addi	s11, s9, -3
80004d00: 13 04 f0 01  	addi	s0, zero, 31
80004d04: 37 d5 cc cc  	lui	a0, 838861
80004d08: 13 05 d5 cc  	addi	a0, a0, -819
80004d0c: 13 08 a0 00  	addi	a6, zero, 10
80004d10: 93 08 c1 02  	addi	a7, sp, 44
80004d14: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004d18: b3 37 a7 02  	mulhu	a5, a4, a0
80004d1c: 93 d5 37 00  	srli	a1, a5, 3
80004d20: b3 87 05 03  	mul	a5, a1, a6
80004d24: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004d28: 13 e6 07 03  	ori	a2, a5, 48
80004d2c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004d30: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004d34: 13 0c 1c 00  	addi	s8, s8, 1
80004d38: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004d3c: 33 b6 e2 00  	sltu	a2, t0, a4
80004d40: 33 f6 c7 00  	and	a2, a5, a2
80004d44: 93 8d fd ff  	addi	s11, s11, -1
80004d48: 13 04 f4 ff  	addi	s0, s0, -1
80004d4c: 13 87 05 00  	mv	a4, a1
80004d50: e3 14 06 fc  	bnez	a2, 0x80004d18 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004d54: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004d58: 33 35 ac 00  	sltu	a0, s8, a0
80004d5c: 13 45 15 00  	xori	a0, a0, 1
80004d60: 93 c5 17 00  	xori	a1, a5, 1
80004d64: 33 e5 a5 00  	or	a0, a1, a0
80004d68: 63 12 05 04  	bnez	a0, 0x80004dac <.LBB5_58+0x1b0>
80004d6c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004d70: b3 85 8c 41  	sub	a1, s9, s8
80004d74: 93 85 d5 ff  	addi	a1, a1, -3
80004d78: 13 06 f0 01  	addi	a2, zero, 31
80004d7c: 33 06 86 41  	sub	a2, a2, s8
80004d80: 33 05 85 01  	add	a0, a0, s8
80004d84: 63 e4 c5 00  	bltu	a1, a2, 0x80004d8c <.LBB5_58+0x190>
80004d88: 93 05 06 00  	mv	a1, a2
80004d8c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004d90: 93 05 00 03  	addi	a1, zero, 48
80004d94: 97 b0 ff ff  	auipc	ra, 1048571
80004d98: e7 80 40 7c  	jalr	1988(ra)
;   if (flags & FLAGS_HASH) {
80004d9c: 63 e4 8d 00  	bltu	s11, s0, 0x80004da4 <.LBB5_58+0x1a8>
80004da0: 93 0d 04 00  	mv	s11, s0
80004da4: 33 85 8d 01  	add	a0, s11, s8
80004da8: 13 0c 15 00  	addi	s8, a0, 1
80004dac: 83 2c c1 00  	lw	s9, 12(sp)
80004db0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004db4: 63 60 85 03  	bltu	a0, s8, 0x80004dd4 <.LBB5_58+0x1d8>
80004db8: 13 05 c1 02  	addi	a0, sp, 44
80004dbc: 33 05 85 01  	add	a0, a0, s8
80004dc0: 93 05 d0 02  	addi	a1, zero, 45
80004dc4: 63 94 0a 00  	bnez	s5, 0x80004dcc <.LBB5_58+0x1d0>
80004dc8: 93 05 b0 02  	addi	a1, zero, 43
80004dcc: 13 0c 1c 00  	addi	s8, s8, 1
80004dd0: 23 00 b5 00  	sb	a1, 0(a0)
80004dd4: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004dd8: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004ddc: 33 85 8a 01  	add	a0, s5, s8
80004de0: 03 45 05 00  	lbu	a0, 0(a0)
80004de4: 13 06 04 00  	mv	a2, s0
80004de8: 93 04 fc ff  	addi	s1, s8, -1
80004dec: 13 04 14 00  	addi	s0, s0, 1
80004df0: 93 05 0b 00  	mv	a1, s6
80004df4: 93 86 09 00  	mv	a3, s3
80004df8: e7 80 0b 00  	jalr	s7
80004dfc: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004e00: e3 9e 04 fc  	bnez	s1, 0x80004ddc <.LBB5_58+0x1e0>
80004e04: 33 05 44 41  	sub	a0, s0, s4
80004e08: 33 35 25 01  	sltu	a0, a0, s2
80004e0c: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004e10: 93 c5 1c 00  	xori	a1, s9, 1
80004e14: 33 e5 a5 00  	or	a0, a1, a0
80004e18: 63 18 05 02  	bnez	a0, 0x80004e48 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004e1c: b3 04 40 41  	neg	s1, s4
80004e20: 13 0d 14 00  	addi	s10, s0, 1
80004e24: 13 05 00 02  	addi	a0, zero, 32
80004e28: 93 05 0b 00  	mv	a1, s6
80004e2c: 13 06 04 00  	mv	a2, s0
80004e30: 93 86 09 00  	mv	a3, s3
80004e34: e7 80 0b 00  	jalr	s7
80004e38: 33 85 a4 01  	add	a0, s1, s10
80004e3c: 13 04 0d 00  	mv	s0, s10
80004e40: e3 60 25 ff  	bltu	a0, s2, 0x80004e20 <.LBB5_58+0x224>
80004e44: 6f 00 80 00  	j	0x80004e4c <.LBB5_58+0x250>
80004e48: 13 0d 04 00  	mv	s10, s0
; }
80004e4c: 13 05 0d 00  	mv	a0, s10
80004e50: 83 2d c1 04  	lw	s11, 76(sp)
80004e54: 03 2d 01 05  	lw	s10, 80(sp)
80004e58: 83 2c 41 05  	lw	s9, 84(sp)
80004e5c: 03 2c 81 05  	lw	s8, 88(sp)
80004e60: 83 2b c1 05  	lw	s7, 92(sp)
80004e64: 03 2b 01 06  	lw	s6, 96(sp)
80004e68: 83 2a 41 06  	lw	s5, 100(sp)
80004e6c: 03 2a 81 06  	lw	s4, 104(sp)
80004e70: 83 29 c1 06  	lw	s3, 108(sp)
80004e74: 03 29 01 07  	lw	s2, 112(sp)
80004e78: 83 24 41 07  	lw	s1, 116(sp)
80004e7c: 03 24 81 07  	lw	s0, 120(sp)
80004e80: 83 20 c1 07  	lw	ra, 124(sp)
80004e84: 13 01 01 08  	addi	sp, sp, 128
80004e88: 67 80 00 00  	ret

80004e8c <_ntoa_format>:
; {
80004e8c: 13 01 01 fc  	addi	sp, sp, -64
80004e90: 23 2e 11 02  	sw	ra, 60(sp)
80004e94: 23 2c 81 02  	sw	s0, 56(sp)
80004e98: 23 2a 91 02  	sw	s1, 52(sp)
80004e9c: 23 28 21 03  	sw	s2, 48(sp)
80004ea0: 23 26 31 03  	sw	s3, 44(sp)
80004ea4: 23 24 41 03  	sw	s4, 40(sp)
80004ea8: 23 22 51 03  	sw	s5, 36(sp)
80004eac: 23 20 61 03  	sw	s6, 32(sp)
80004eb0: 23 2e 71 01  	sw	s7, 28(sp)
80004eb4: 23 2c 81 01  	sw	s8, 24(sp)
80004eb8: 23 2a 91 01  	sw	s9, 20(sp)
80004ebc: 23 28 a1 01  	sw	s10, 16(sp)
80004ec0: 23 26 b1 01  	sw	s11, 12(sp)
80004ec4: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004ec8: 93 fa 2e 00  	andi	s5, t4, 2
80004ecc: 13 09 0e 00  	mv	s2, t3
80004ed0: 13 8d 03 00  	mv	s10, t2
80004ed4: 93 8c 08 00  	mv	s9, a7
80004ed8: 13 8c 07 00  	mv	s8, a5
80004edc: 93 89 06 00  	mv	s3, a3
80004ee0: 13 0a 06 00  	mv	s4, a2
80004ee4: 13 8b 05 00  	mv	s6, a1
80004ee8: 93 0d 05 00  	mv	s11, a0
80004eec: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004ef0: 63 9e 0a 0c  	bnez	s5, 0x80004fcc <_ntoa_format+0x140>
80004ef4: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004ef8: 63 0e 09 00  	beqz	s2, 0x80004f14 <_ntoa_format+0x88>
80004efc: 63 0e 04 00  	beqz	s0, 0x80004f18 <_ntoa_format+0x8c>
80004f00: 13 f5 cb 00  	andi	a0, s7, 12
80004f04: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004f08: 33 65 05 01  	or	a0, a0, a6
80004f0c: 33 09 a9 40  	sub	s2, s2, a0
80004f10: 6f 00 80 00  	j	0x80004f18 <_ntoa_format+0x8c>
80004f14: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f18: 33 35 ac 01  	sltu	a0, s8, s10
80004f1c: 93 45 15 00  	xori	a1, a0, 1
80004f20: 13 05 f0 01  	addi	a0, zero, 31
80004f24: 33 36 85 01  	sltu	a2, a0, s8
80004f28: b3 65 b6 00  	or	a1, a2, a1
80004f2c: 63 94 05 04  	bnez	a1, 0x80004f74 <_ntoa_format+0xe8>
80004f30: 23 22 51 01  	sw	s5, 4(sp)
80004f34: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f38: 93 45 fc ff  	not	a1, s8
80004f3c: b3 85 a5 01  	add	a1, a1, s10
80004f40: 33 06 85 41  	sub	a2, a0, s8
80004f44: 33 05 87 01  	add	a0, a4, s8
80004f48: 63 e4 c5 00  	bltu	a1, a2, 0x80004f50 <_ntoa_format+0xc4>
80004f4c: 93 05 06 00  	mv	a1, a2
80004f50: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004f54: 93 05 00 03  	addi	a1, zero, 48
80004f58: 13 86 04 00  	mv	a2, s1
80004f5c: 97 b0 ff ff  	auipc	ra, 1048571
80004f60: e7 80 c0 5f  	jalr	1532(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f64: 33 8c 84 01  	add	s8, s1, s8
80004f68: 03 27 81 00  	lw	a4, 8(sp)
80004f6c: 13 88 0a 00  	mv	a6, s5
80004f70: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f74: 63 0c 04 04  	beqz	s0, 0x80004fcc <_ntoa_format+0x140>
80004f78: 33 35 2c 01  	sltu	a0, s8, s2
80004f7c: 93 45 15 00  	xori	a1, a0, 1
80004f80: 13 05 f0 01  	addi	a0, zero, 31
80004f84: 33 36 85 01  	sltu	a2, a0, s8
80004f88: b3 e5 c5 00  	or	a1, a1, a2
80004f8c: 63 90 05 04  	bnez	a1, 0x80004fcc <_ntoa_format+0x140>
80004f90: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f94: 93 45 fc ff  	not	a1, s8
80004f98: b3 05 b9 00  	add	a1, s2, a1
80004f9c: 33 06 85 41  	sub	a2, a0, s8
80004fa0: 33 05 87 01  	add	a0, a4, s8
80004fa4: 63 e4 c5 00  	bltu	a1, a2, 0x80004fac <_ntoa_format+0x120>
80004fa8: 93 05 06 00  	mv	a1, a2
80004fac: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004fb0: 93 05 00 03  	addi	a1, zero, 48
80004fb4: 13 86 04 00  	mv	a2, s1
80004fb8: 97 b0 ff ff  	auipc	ra, 1048571
80004fbc: e7 80 00 5a  	jalr	1440(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004fc0: 33 8c 84 01  	add	s8, s1, s8
80004fc4: 03 27 81 00  	lw	a4, 8(sp)
80004fc8: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004fcc: 13 f5 0b 01  	andi	a0, s7, 16
80004fd0: 63 02 05 0e  	beqz	a0, 0x800050b4 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004fd4: 13 f5 0b 40  	andi	a0, s7, 1024
80004fd8: 13 55 a5 00  	srli	a0, a0, 10
80004fdc: 93 35 1c 00  	seqz	a1, s8
80004fe0: 33 65 b5 00  	or	a0, a0, a1
80004fe4: 63 1e 05 02  	bnez	a0, 0x80005020 <_ntoa_format+0x194>
80004fe8: 33 45 ac 01  	xor	a0, s8, s10
80004fec: 33 35 a0 00  	snez	a0, a0
80004ff0: b3 45 2c 01  	xor	a1, s8, s2
80004ff4: b3 35 b0 00  	snez	a1, a1
80004ff8: 33 75 b5 00  	and	a0, a0, a1
80004ffc: 63 12 05 02  	bnez	a0, 0x80005020 <_ntoa_format+0x194>
;       len--;
80005000: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80005004: b3 35 a0 00  	snez	a1, a0
80005008: 13 86 0c ff  	addi	a2, s9, -16
8000500c: 13 36 16 00  	seqz	a2, a2
80005010: b3 75 b6 00  	and	a1, a2, a1
80005014: 63 84 05 00  	beqz	a1, 0x8000501c <_ntoa_format+0x190>
80005018: 13 05 ec ff  	addi	a0, s8, -2
8000501c: 13 0c 05 00  	mv	s8, a0
80005020: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005024: 63 96 ac 02  	bne	s9, a0, 0x80005050 <_ntoa_format+0x1c4>
80005028: 13 f5 0b 02  	andi	a0, s7, 32
8000502c: 93 55 55 00  	srli	a1, a0, 5
80005030: 13 06 f0 01  	addi	a2, zero, 31
80005034: 33 36 86 01  	sltu	a2, a2, s8
80005038: b3 e5 c5 00  	or	a1, a1, a2
8000503c: 63 9e 05 02  	bnez	a1, 0x80005078 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80005040: 33 05 87 01  	add	a0, a4, s8
80005044: 13 0c 1c 00  	addi	s8, s8, 1
80005048: 93 05 80 07  	addi	a1, zero, 120
8000504c: 6f 00 c0 04  	j	0x80005098 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005050: 13 85 ec ff  	addi	a0, s9, -2
80005054: 33 35 a0 00  	snez	a0, a0
80005058: 93 05 f0 01  	addi	a1, zero, 31
8000505c: b3 b5 85 01  	sltu	a1, a1, s8
80005060: 33 65 b5 00  	or	a0, a0, a1
80005064: 63 1c 05 02  	bnez	a0, 0x8000509c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80005068: 33 05 87 01  	add	a0, a4, s8
8000506c: 13 0c 1c 00  	addi	s8, s8, 1
80005070: 93 05 20 06  	addi	a1, zero, 98
80005074: 6f 00 40 02  	j	0x80005098 <_ntoa_format+0x20c>
80005078: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000507c: 13 35 15 00  	seqz	a0, a0
80005080: 93 c5 15 00  	xori	a1, a1, 1
80005084: 33 65 b5 00  	or	a0, a0, a1
80005088: 63 1a 05 00  	bnez	a0, 0x8000509c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000508c: 33 05 87 01  	add	a0, a4, s8
80005090: 13 0c 1c 00  	addi	s8, s8, 1
80005094: 93 05 80 05  	addi	a1, zero, 88
80005098: 23 00 b5 00  	sb	a1, 0(a0)
8000509c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800050a0: 63 60 85 07  	bltu	a0, s8, 0x80005100 <_ntoa_format+0x274>
;       buf[len++] = '0';
800050a4: 33 05 87 01  	add	a0, a4, s8
800050a8: 13 0c 1c 00  	addi	s8, s8, 1
800050ac: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800050b0: 23 00 b5 00  	sb	a1, 0(a0)
800050b4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800050b8: 63 64 85 05  	bltu	a0, s8, 0x80005100 <_ntoa_format+0x274>
;     if (negative) {
800050bc: 63 0a 08 00  	beqz	a6, 0x800050d0 <_ntoa_format+0x244>
;       buf[len++] = '-';
800050c0: 33 05 87 01  	add	a0, a4, s8
800050c4: 13 0c 1c 00  	addi	s8, s8, 1
800050c8: 93 05 d0 02  	addi	a1, zero, 45
800050cc: 6f 00 00 03  	j	0x800050fc <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800050d0: 13 f5 4b 00  	andi	a0, s7, 4
800050d4: 63 1e 05 00  	bnez	a0, 0x800050f0 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800050d8: 13 f5 8b 00  	andi	a0, s7, 8
800050dc: 63 02 05 02  	beqz	a0, 0x80005100 <_ntoa_format+0x274>
;       buf[len++] = ' ';
800050e0: 33 05 87 01  	add	a0, a4, s8
800050e4: 13 0c 1c 00  	addi	s8, s8, 1
800050e8: 93 05 00 02  	addi	a1, zero, 32
800050ec: 6f 00 00 01  	j	0x800050fc <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800050f0: 33 05 87 01  	add	a0, a4, s8
800050f4: 13 0c 1c 00  	addi	s8, s8, 1
800050f8: 93 05 b0 02  	addi	a1, zero, 43
800050fc: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005100: 13 f5 3b 00  	andi	a0, s7, 3
80005104: 33 35 a0 00  	snez	a0, a0
80005108: b3 35 2c 01  	sltu	a1, s8, s2
8000510c: 93 c5 15 00  	xori	a1, a1, 1
80005110: 33 65 b5 00  	or	a0, a0, a1
80005114: 13 04 0a 00  	mv	s0, s4
80005118: 63 16 05 02  	bnez	a0, 0x80005144 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
8000511c: b3 04 89 41  	sub	s1, s2, s8
80005120: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005124: 13 04 16 00  	addi	s0, a2, 1
80005128: 13 05 00 02  	addi	a0, zero, 32
8000512c: 93 05 0b 00  	mv	a1, s6
80005130: 93 86 09 00  	mv	a3, s3
80005134: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80005138: 93 84 f4 ff  	addi	s1, s1, -1
8000513c: 13 06 04 00  	mv	a2, s0
80005140: e3 92 04 fe  	bnez	s1, 0x80005124 <_ntoa_format+0x298>
80005144: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80005148: 63 0e 0c 02  	beqz	s8, 0x80005184 <_ntoa_format+0x2f8>
8000514c: 03 25 81 00  	lw	a0, 8(sp)
80005150: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80005154: 33 85 8b 01  	add	a0, s7, s8
80005158: 03 45 05 00  	lbu	a0, 0(a0)
8000515c: 93 0c fc ff  	addi	s9, s8, -1
80005160: 93 04 14 00  	addi	s1, s0, 1
80005164: 93 05 0b 00  	mv	a1, s6
80005168: 13 06 04 00  	mv	a2, s0
8000516c: 93 86 09 00  	mv	a3, s3
80005170: e7 80 0d 00  	jalr	s11
80005174: 13 84 04 00  	mv	s0, s1
80005178: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
8000517c: e3 9c 0c fc  	bnez	s9, 0x80005154 <_ntoa_format+0x2c8>
80005180: 6f 00 80 00  	j	0x80005188 <_ntoa_format+0x2fc>
80005184: 93 04 04 00  	mv	s1, s0
80005188: 33 85 44 41  	sub	a0, s1, s4
8000518c: 33 35 25 01  	sltu	a0, a0, s2
80005190: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005194: 93 c5 1a 00  	xori	a1, s5, 1
80005198: 33 e5 a5 00  	or	a0, a1, a0
8000519c: 63 18 05 02  	bnez	a0, 0x800051cc <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800051a0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800051a4: 13 84 14 00  	addi	s0, s1, 1
800051a8: 13 05 00 02  	addi	a0, zero, 32
800051ac: 93 05 0b 00  	mv	a1, s6
800051b0: 13 86 04 00  	mv	a2, s1
800051b4: 93 86 09 00  	mv	a3, s3
800051b8: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800051bc: 33 05 8a 00  	add	a0, s4, s0
800051c0: 93 04 04 00  	mv	s1, s0
800051c4: e3 60 25 ff  	bltu	a0, s2, 0x800051a4 <_ntoa_format+0x318>
800051c8: 6f 00 80 00  	j	0x800051d0 <_ntoa_format+0x344>
800051cc: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800051d0: 13 05 04 00  	mv	a0, s0
800051d4: 83 2d c1 00  	lw	s11, 12(sp)
800051d8: 03 2d 01 01  	lw	s10, 16(sp)
800051dc: 83 2c 41 01  	lw	s9, 20(sp)
800051e0: 03 2c 81 01  	lw	s8, 24(sp)
800051e4: 83 2b c1 01  	lw	s7, 28(sp)
800051e8: 03 2b 01 02  	lw	s6, 32(sp)
800051ec: 83 2a 41 02  	lw	s5, 36(sp)
800051f0: 03 2a 81 02  	lw	s4, 40(sp)
800051f4: 83 29 c1 02  	lw	s3, 44(sp)
800051f8: 03 29 01 03  	lw	s2, 48(sp)
800051fc: 83 24 41 03  	lw	s1, 52(sp)
80005200: 03 24 81 03  	lw	s0, 56(sp)
80005204: 83 20 c1 03  	lw	ra, 60(sp)
80005208: 13 01 01 04  	addi	sp, sp, 64
8000520c: 67 80 00 00  	ret

80005210 <_snrt_init_team>:
;     team->base.root = team;
80005210: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80005214: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80005218: 03 23 87 00  	lw	t1, 8(a4)
8000521c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80005220: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80005224: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80005228: 83 22 47 00  	lw	t0, 4(a4)
8000522c: 33 88 08 03  	mul	a6, a7, a6
80005230: 33 05 58 02  	mul	a0, a6, t0
80005234: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80005238: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
8000523c: 33 85 68 40  	sub	a0, a7, t1
80005240: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80005244: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80005248: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
8000524c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80005250: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80005254: 03 25 87 01  	lw	a0, 24(a4)
80005258: b7 05 00 10  	lui	a1, 65536
8000525c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80005260: 23 a2 07 02  	sw	zero, 36(a5)
80005264: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80005268: 03 25 07 02  	lw	a0, 32(a4)
8000526c: 83 25 47 02  	lw	a1, 36(a4)
80005270: 23 a4 a7 02  	sw	a0, 40(a5)
80005274: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80005278: 23 a8 c7 02  	sw	a2, 48(a5)
8000527c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80005280: 23 ac d7 02  	sw	a3, 56(a5)
80005284: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80005288: 03 25 07 01  	lw	a0, 16(a4)
8000528c: 33 08 a6 00  	add	a6, a2, a0
80005290: 93 05 08 19  	addi	a1, a6, 400
80005294: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80005298: b3 32 a8 00  	sltu	t0, a6, a0
8000529c: 93 55 15 00  	srli	a1, a0, 1
800052a0: 33 03 b8 00  	add	t1, a6, a1
800052a4: b3 35 03 01  	sltu	a1, t1, a6
800052a8: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800052ac: 23 a0 67 04  	sw	t1, 64(a5)
800052b0: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800052b4: 13 15 15 00  	slli	a0, a0, 1
800052b8: b3 05 c5 00  	add	a1, a0, a2
800052bc: 33 b5 a5 00  	sltu	a0, a1, a0
800052c0: 23 a4 b7 04  	sw	a1, 72(a5)
800052c4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800052c8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800052cc: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800052d0: 37 05 00 00  	lui	a0, 0
800052d4: 33 05 45 00  	add	a0, a0, tp
800052d8: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800052dc: 03 a5 07 00  	lw	a0, 0(a5)
800052e0: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800052e4: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800052e8: b3 85 b8 40  	sub	a1, a7, a1
800052ec: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800052f0: b7 05 00 00  	lui	a1, 0
800052f4: b3 85 45 00  	add	a1, a1, tp
800052f8: 23 a2 a5 00  	sw	a0, 4(a1)
800052fc: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80005300: 33 85 a8 02  	mul	a0, a7, a0

80005304 <.LBB0_1>:
80005304: 97 15 00 00  	auipc	a1, 1
80005308: 93 85 05 98  	addi	a1, a1, -1664
8000530c: 33 05 b5 00  	add	a0, a0, a1
80005310: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80005314: 83 28 07 03  	lw	a7, 48(a4)
80005318: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
8000531c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80005320: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80005324: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80005328: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
8000532c: 13 05 76 00  	addi	a0, a2, 7
80005330: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80005334: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80005338: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
8000533c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80005340: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80005344: 03 a5 05 00  	lw	a0, 0(a1)
80005348: 13 05 f5 44  	addi	a0, a0, 1103
8000534c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80005350: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80005354: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80005358: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
8000535c: 37 05 00 00  	lui	a0, 0
80005360: 33 05 45 00  	add	a0, a0, tp
80005364: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80005368: 37 05 00 00  	lui	a0, 0
8000536c: 33 05 45 00  	add	a0, a0, tp
80005370: 23 26 e5 00  	sw	a4, 12(a0)
; }
80005374: 67 80 00 00  	ret

80005378 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005378: 37 05 00 00  	lui	a0, 0
8000537c: 33 05 45 00  	add	a0, a0, tp
80005380: 03 25 05 00  	lw	a0, 0(a0)
80005384: 03 25 05 00  	lw	a0, 0(a0)
80005388: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000538c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005390: 33 85 a5 40  	sub	a0, a1, a0
80005394: 67 80 00 00  	ret

80005398 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80005398: 37 05 00 00  	lui	a0, 0
8000539c: 33 05 45 00  	add	a0, a0, tp
800053a0: 03 25 05 00  	lw	a0, 0(a0)
800053a4: 03 25 05 00  	lw	a0, 0(a0)
800053a8: 03 25 05 07  	lw	a0, 112(a0)
800053ac: 67 80 00 00  	ret

800053b0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800053b0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800053b4: 63 44 05 00  	bltz	a0, 0x800053bc <__snrt_isr+0xc>
;         while (1)
800053b8: 6f 00 00 00  	j	0x800053b8 <__snrt_isr+0x8>
800053bc: b7 05 00 80  	lui	a1, 524288
800053c0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800053c4: 33 75 b5 00  	and	a0, a0, a1
800053c8: 13 05 d5 ff  	addi	a0, a0, -3
800053cc: 93 55 25 00  	srli	a1, a0, 2
800053d0: 13 15 e5 01  	slli	a0, a0, 30
800053d4: 33 65 b5 00  	or	a0, a0, a1
800053d8: 93 05 40 00  	addi	a1, zero, 4
800053dc: 63 0a b5 06  	beq	a0, a1, 0x80005450 <.LBB1_7+0x58>
800053e0: 63 1a 05 08  	bnez	a0, 0x80005474 <.LBB1_7+0x7c>
800053e4: 37 05 00 00  	lui	a0, 0
800053e8: 33 05 45 00  	add	a0, a0, tp
800053ec: 03 25 05 00  	lw	a0, 0(a0)
800053f0: 03 25 05 00  	lw	a0, 0(a0)
800053f4: f3 25 40 f1  	csrr	a1, mhartid

800053f8 <.LBB1_7>:
;     asm volatile(
800053f8: 17 16 00 00  	auipc	a2, 1
800053fc: 13 06 86 88  	addi	a2, a2, -1912
80005400: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80005404: 93 06 06 00  	mv	a3, a2
80005408: 93 02 10 00  	addi	t0, zero, 1
8000540c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80005410: e3 9e 02 fe  	bnez	t0, 0x8000540c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80005414: b7 06 00 00  	lui	a3, 0
80005418: b3 86 46 00  	add	a3, a3, tp
8000541c: 83 a6 86 00  	lw	a3, 8(a3)
80005420: 33 85 a5 40  	sub	a0, a1, a0
80005424: 93 55 35 00  	srli	a1, a0, 3
80005428: 93 f5 c5 ff  	andi	a1, a1, -4
8000542c: b3 85 b6 00  	add	a1, a3, a1
80005430: 83 a6 05 00  	lw	a3, 0(a1)
80005434: 13 07 10 00  	addi	a4, zero, 1
80005438: 33 15 a7 00  	sll	a0, a4, a0
8000543c: 13 45 f5 ff  	not	a0, a0
80005440: 33 f5 a6 00  	and	a0, a3, a0
80005444: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80005448: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
8000544c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80005450: 37 05 00 00  	lui	a0, 0
80005454: 33 05 45 00  	add	a0, a0, tp
80005458: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000545c: b7 05 00 00  	lui	a1, 0
80005460: b3 85 45 00  	add	a1, a1, tp
80005464: 83 a5 c5 00  	lw	a1, 12(a1)
80005468: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
8000546c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80005470: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80005474: 67 80 00 00  	ret

Disassembly of section .init:

80005480 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80005480: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80005484: 93 81 81 f0  	addi	gp, gp, -248

80005488 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80005488: 97 00 00 00  	auipc	ra, 0
8000548c: e7 80 40 3c  	jalr	964(ra)

80005490 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005490: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005494: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005498: 97 00 00 00  	auipc	ra, 0
8000549c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800054a0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800054a4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800054a8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800054ac: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800054b0: 63 92 02 02  	bnez	t0, 0x800054d4 <snrt.crt0.init_registers>

800054b4 <.Lpcrel_hi0>:
;     la        t0, _edata
800054b4: 97 02 00 00  	auipc	t0, 0
800054b8: 93 82 c2 7c  	addi	t0, t0, 1996

800054bc <.Lpcrel_hi1>:
;     la        t1, _end
800054bc: 17 03 00 00  	auipc	t1, 0
800054c0: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
800054c4: 63 d8 62 00  	bge	t0, t1, 0x800054d4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800054c8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800054cc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800054d0: e3 cc 62 fe  	blt	t0, t1, 0x800054c8 <.Lpcrel_hi1+0xc>

800054d4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800054d4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800054d8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800054dc: 63 82 02 08  	beqz	t0, 0x80005560 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800054e0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800054e4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800054e8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800054ec: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800054f0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800054f4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800054f8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800054fc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80005500: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80005504: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80005508: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000550c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80005510: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80005514: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80005518: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000551c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80005520: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80005524: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80005528: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000552c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80005530: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80005534: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80005538: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000553c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80005540: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80005544: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80005548: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000554c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80005550: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80005554: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80005558: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000555c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80005560 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80005560: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80005564: 23 a0 06 00  	sw	zero, 0(a3)

80005568 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80005568: 97 02 00 00  	auipc	t0, 0
8000556c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80005570: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80005574: 93 87 06 00  	mv	a5, a3

80005578 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80005578: 97 03 00 00  	auipc	t2, 0
8000557c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80005580: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80005584: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80005588: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000558c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005590: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005594: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005598: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000559c: b3 86 66 40  	sub	a3, a3, t1

800055a0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800055a0: 97 02 00 00  	auipc	t0, 0
800055a4: 93 82 82 5e  	addi	t0, t0, 1512

800055a8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800055a8: 17 03 00 00  	auipc	t1, 0
800055ac: 13 03 03 5e  	addi	t1, t1, 1504

800055b0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800055b0: 97 03 00 00  	auipc	t2, 0
800055b4: 93 83 83 5d  	addi	t2, t2, 1496

800055b8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800055b8: 17 0e 00 00  	auipc	t3, 0
800055bc: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800055c0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800055c4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800055c8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800055cc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800055d0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800055d4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800055d8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800055dc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800055e0: 63 dc 62 00  	bge	t0, t1, 0x800055f8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800055e4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800055e8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800055ec: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800055f0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800055f4: e3 c8 62 fe  	blt	t0, t1, 0x800055e4 <.Lpcrel_hi7+0x2c>

800055f8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800055f8: 97 02 00 00  	auipc	t0, 0
800055fc: 93 82 02 59  	addi	t0, t0, 1424

80005600 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005600: 17 03 00 00  	auipc	t1, 0
80005604: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80005608: 63 da 62 00  	bge	t0, t1, 0x8000561c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000560c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005610: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005614: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005618: e3 ca 72 fe  	blt	t0, t2, 0x8000560c <.Lpcrel_hi9+0xc>

8000561c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000561c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005620: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005624: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005628: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000562c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005630: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005634: 97 00 00 00  	auipc	ra, 0
80005638: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
8000563c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005640: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005644: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005648: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000564c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005650: 13 01 41 01  	addi	sp, sp, 20

80005654 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005654: 97 02 00 00  	auipc	t0, 0
80005658: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000565c: 73 90 52 30  	csrw	mtvec, t0

80005660 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80005660: 97 00 00 00  	auipc	ra, 0
80005664: e7 80 00 22  	jalr	544(ra)

80005668 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80005668: 97 b0 ff ff  	auipc	ra, 1048571
8000566c: e7 80 c0 fc  	jalr	-52(ra)
;     mv        s0, a0 # store return value in s0
80005670: 13 04 05 00  	mv	s0, a0

80005674 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005674: 97 00 00 00  	auipc	ra, 0
80005678: e7 80 c0 20  	jalr	524(ra)

8000567c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000567c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005680: 97 00 00 00  	auipc	ra, 0
80005684: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005688: 73 00 50 10  	wfi	
;     j       1b
8000568c: 6f f0 df ff  	j	0x80005688 <snrt.crt0.end+0xc>

80005690 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005690: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005694: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005698: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000569c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800056a0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800056a4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800056a8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800056ac: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800056b0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800056b4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800056b8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800056bc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800056c0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800056c4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800056c8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800056cc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800056d0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800056d4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800056d8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800056dc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800056e0: 63 84 02 08  	beqz	t0, 0x80005768 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800056e4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800056e8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800056ec: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800056f0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800056f4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800056f8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800056fc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005700: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005704: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005708: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000570c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005710: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005714: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005718: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000571c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005720: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005724: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005728: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000572c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005730: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005734: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005738: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000573c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005740: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005744: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005748: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000574c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005750: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005754: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005758: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000575c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80005760: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80005764: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80005768: 97 00 00 00  	auipc	ra, 0
8000576c: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80005770: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005774: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005778: 63 84 02 08  	beqz	t0, 0x80005800 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000577c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005780: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005784: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005788: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000578c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005790: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005794: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005798: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000579c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800057a0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800057a4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800057a8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800057ac: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800057b0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800057b4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800057b8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800057bc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800057c0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800057c4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800057c8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800057cc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800057d0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800057d4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800057d8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800057dc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800057e0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800057e4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800057e8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800057ec: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800057f0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800057f4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800057f8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800057fc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005800: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005804: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005808: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000580c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005810: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005814: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005818: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000581c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005820: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005824: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005828: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000582c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005830: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005834: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005838: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000583c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005840: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005844: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005848: 73 00 20 30  	mret	

8000584c <_snrt_init_core_info>:
;     mv        a4, a1
8000584c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005850: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005854: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005858: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000585c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80005860: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80005864: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80005868: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000586c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005870: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005874: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005878: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000587c: 67 80 00 00  	ret

80005880 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005880: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005884: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005888: 97 00 00 00  	auipc	ra, 0
8000588c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80005890: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005894: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005898: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000589c: 13 01 41 00  	addi	sp, sp, 4
;     ret
800058a0: 67 80 00 00  	ret

800058a4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800058a4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800058a8: 67 80 00 00  	ret

800058ac <_snrt_exit>:
;     addi      sp, sp, -8
800058ac: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800058b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800058b4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800058b8: 97 00 00 00  	auipc	ra, 0
800058bc: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
800058c0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800058c4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800058c8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800058cc: 63 1c 05 00  	bnez	a0, 0x800058e4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800058d0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800058d4: 93 e2 12 00  	ori	t0, t0, 1

800058d8 <.Lpcrel_hi11>:
;     la        t1, tohost
800058d8: 17 03 00 00  	auipc	t1, 0
800058dc: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
800058e0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800058e4: 67 80 00 00  	ret
