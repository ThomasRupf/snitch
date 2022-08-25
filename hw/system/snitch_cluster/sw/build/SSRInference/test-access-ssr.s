
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-access-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00003624 80000000 TEXT
  2 .init             00000468 80003630 TEXT
  3 .rodata           00000230 80003a98 DATA
  4 .htif             00000048 80003d00 DATA
  5 .tdata            00000000 80003d48 DATA
  6 .tbss             00000010 80003d48 BSS
  7 .tbssend          00000000 80003d58 DATA
  8 .sdata            000000b8 80003d58 DATA
  9 .data             00000000 80003e10 DATA
 10 .sbss             00000004 80003e10 BSS
 11 .bss              00000000 80003e14 BSS
 12 .dram             00000000 80003e14 DATA
 13 .debug_info       000030bd 00000000 
 14 .debug_abbrev     00000aa0 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000028be 00000000 
 17 .debug_loc        00003b73 00000000 
 18 .debug_ranges     00000420 00000000 
 19 .debug_str        00000a27 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000268 00000000 
 23 .symtab           00002ed0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           000008a2 00000000 


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
80000634: 13 01 01 cf  	addi	sp, sp, -784
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 30  	sw	ra, 780(sp)
8000063c: 27 30 81 30  	fsd	fs0, 768(sp)
80000640: 27 3c 91 2e  	fsd	fs1, 760(sp)
80000644: 27 38 21 2f  	fsd	fs2, 752(sp)
80000648: 27 34 31 2f  	fsd	fs3, 744(sp)
8000064c: 27 30 41 2f  	fsd	fs4, 736(sp)
80000650: 27 3c 51 2d  	fsd	fs5, 728(sp)
80000654: 27 38 61 2d  	fsd	fs6, 720(sp)
80000658: 27 34 71 2d  	fsd	fs7, 712(sp)
8000065c: 27 30 81 2d  	fsd	fs8, 704(sp)
80000660: 27 3c 91 2b  	fsd	fs9, 696(sp)
80000664: 27 38 a1 2b  	fsd	fs10, 688(sp)
80000668: 27 34 b1 2b  	fsd	fs11, 680(sp)
8000066c: 37 05 00 00  	lui	a0, 0
80000670: 33 05 45 00  	add	a0, a0, tp
80000674: 83 25 45 00  	lw	a1, 4(a0)
80000678: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000067c: 63 84 05 00  	beqz	a1, 0x80000684 <main+0x50>
80000680: 6f 10 c0 0a  	j	0x8000172c <.LBB0_20+0x10>
;     return _snrt_team_current->root;
80000684: 37 05 00 00  	lui	a0, 0
80000688: 33 05 45 00  	add	a0, a0, tp
8000068c: 03 25 05 00  	lw	a0, 0(a0)
80000690: 03 26 05 00  	lw	a2, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000694: 03 25 86 05  	lw	a0, 88(a2)
80000698: 83 25 06 05  	lw	a1, 80(a2)
8000069c: 03 27 46 05  	lw	a4, 84(a2)
800006a0: 93 06 05 36  	addi	a3, a0, 864
800006a4: b3 05 b7 00  	add	a1, a4, a1
800006a8: 63 f6 d5 00  	bgeu	a1, a3, 0x800006b4 <main+0x80>
800006ac: 13 05 00 00  	mv	a0, zero
800006b0: 6f 00 00 45  	j	0x80000b00 <main+0x4cc>
;     for (uint32_t i = 0; i < n; i++){
800006b4: 93 05 85 35  	addi	a1, a0, 856
800006b8: 13 57 45 01  	srli	a4, a0, 20
800006bc: 33 37 e0 00  	snez	a4, a4
800006c0: b7 07 12 00  	lui	a5, 288
800006c4: 93 87 17 00  	addi	a5, a5, 1
800006c8: b3 b5 f5 00  	sltu	a1, a1, a5
800006cc: b3 75 b7 00  	and	a1, a4, a1
;     alloc->next += size;
800006d0: 23 2c d6 04  	sw	a3, 88(a2)
800006d4: 63 86 05 42  	beqz	a1, 0x80000b00 <main+0x4cc>
800006d8: 13 06 80 00  	addi	a2, zero, 8
800006dc: 93 06 b0 06  	addi	a3, zero, 107
;     for (uint32_t i = 0; i < n; i++){
800006e0: 13 07 00 04  	addi	a4, zero, 64
800006e4: 93 07 00 0c  	addi	a5, zero, 192
800006e8: ab a0 e6 00  	scfgw	a3, a4
800006ec: ab 20 f6 00  	scfgw	a2, a5
800006f0: 13 06 00 02  	addi	a2, zero, 32
800006f4: ab 20 c0 00  	scfgw	zero, a2
800006f8: 2b 20 05 38  	scfgwi	a0, 896
800006fc: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80000700: 13 06 10 00  	addi	a2, zero, 1
80000704: 93 06 d0 06  	addi	a3, zero, 109
;         p[i] = (double)(seed + i);
80000708: d3 01 16 d2  	fcvt.d.wu	ft3, a2
8000070c: 53 80 31 22  	fmv.d	ft0, ft3
;     for (uint32_t i = 0; i < n; i++){
80000710: 13 06 16 00  	addi	a2, a2, 1
80000714: e3 1a d6 fe  	bne	a2, a3, 0x80000708 <main+0xd4>
80000718: 73 f6 00 7c  	csrrci	a2, 1984, 1
8000071c: 63 82 05 40  	beqz	a1, 0x80000b20 <main+0x4ec>
80000720: 13 06 80 00  	addi	a2, zero, 8
80000724: 93 05 b0 00  	addi	a1, zero, 11
;     for (int i = 0; i < n; i++){
80000728: 93 06 00 04  	addi	a3, zero, 64
8000072c: 13 07 00 0c  	addi	a4, zero, 192
80000730: ab a0 d5 00  	scfgw	a1, a3
80000734: ab 20 e6 00  	scfgw	a2, a4
80000738: 93 06 00 06  	addi	a3, zero, 96
8000073c: 13 07 00 0e  	addi	a4, zero, 224
80000740: ab 20 d6 00  	scfgw	a2, a3
80000744: ab 20 e6 00  	scfgw	a2, a4
80000748: 93 06 00 02  	addi	a3, zero, 32
8000074c: ab 20 d0 00  	scfgw	zero, a3
80000750: 2b 20 05 32  	scfgwi	a0, 800
80000754: f3 e6 00 7c  	csrrsi	a3, 1984, 1
;             r_row += a[i*m + j];
80000758: d3 01 00 22  	fmv.d	ft3, ft0
8000075c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000760: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000764: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000768: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000076c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000770: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000774: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000778: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000077c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000780: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000784: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000788: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000078c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000790: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000794: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000798: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000079c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007a0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007a4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007a8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007ac: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007b0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007b4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007b8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007bc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007c0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007c4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007c8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007cc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007d0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007d4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007d8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007dc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007e0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007e4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007e8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007ec: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007f0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007f4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007f8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800007fc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000800: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000804: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000808: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000080c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000810: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000814: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000818: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000081c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000820: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000824: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000828: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000082c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000830: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000834: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000838: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000083c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000840: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000844: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000848: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000084c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000850: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000854: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000858: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000085c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000860: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000864: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000868: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000086c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000870: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000874: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000878: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000087c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000880: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000884: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000888: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000088c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000890: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000894: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000898: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000089c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008a0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008a4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008a8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008ac: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008b0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008b4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008b8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008bc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008c0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008c4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008c8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008cc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008d0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008d4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008d8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008dc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008e0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008e4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008e8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008ec: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008f0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008f4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008f8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800008fc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000900: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000904: 53 02 00 22  	fmv.d	ft4, ft0
80000908: f3 f6 00 7c  	csrrci	a3, 1984, 1
8000090c: 93 06 00 06  	addi	a3, zero, 96
;     for (int j = 0; j < m; j++){
80000910: 13 07 00 04  	addi	a4, zero, 64
80000914: 93 07 00 0c  	addi	a5, zero, 192
80000918: ab 20 e6 00  	scfgw	a2, a4
8000091c: ab a0 f6 00  	scfgw	a3, a5
80000920: 13 06 80 d0  	addi	a2, zero, -760
80000924: 93 06 00 06  	addi	a3, zero, 96
80000928: 13 07 00 0e  	addi	a4, zero, 224
8000092c: ab a0 d5 00  	scfgw	a1, a3
80000930: ab 20 e6 00  	scfgw	a2, a4
80000934: 93 05 00 02  	addi	a1, zero, 32
80000938: ab 20 b0 00  	scfgw	zero, a1
8000093c: 2b 20 05 32  	scfgwi	a0, 800
80000940: f3 e5 00 7c  	csrrsi	a1, 1984, 1
;             r_col += a[j + i*m];
80000944: d3 02 00 22  	fmv.d	ft5, ft0
;             r_row += a[i*m + j];
80000948: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;             r_col += a[j + i*m];
8000094c: 53 72 50 02  	fadd.d	ft4, ft0, ft5
80000950: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000954: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000958: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000095c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000960: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000964: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000968: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000096c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000970: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000974: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000978: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000097c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000980: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000984: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000988: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000098c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000990: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000994: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000998: 53 72 02 02  	fadd.d	ft4, ft4, ft0
8000099c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009a0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009a4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009a8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009ac: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009b0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009b4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009b8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009bc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009c0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009c4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009c8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009cc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009d0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009d4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009d8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009dc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009e0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009e4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009e8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009ec: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009f0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009f4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009f8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
800009fc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a00: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a04: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a08: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a0c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a10: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a14: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a18: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a1c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a20: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a24: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a28: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a2c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a30: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a34: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a38: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a3c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a40: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a44: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a48: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a4c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a50: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a54: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a58: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a5c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a60: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a64: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a68: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a6c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a70: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a74: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a78: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a7c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a80: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a84: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a88: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a8c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a90: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a94: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a98: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000a9c: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aa0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aa4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aa8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aac: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ab0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ab4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ab8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000abc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ac0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ac4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ac8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000acc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ad0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ad4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ad8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000adc: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ae0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ae4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000ae8: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000aec: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000af0: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000af4: 53 72 02 02  	fadd.d	ft4, ft4, ft0
80000af8: f3 f5 00 7c  	csrrci	a1, 1984, 1
80000afc: 6f 00 80 67  	j	0x80001174 <main+0xb40>
80000b00: 93 05 10 00  	addi	a1, zero, 1
80000b04: 13 06 d0 06  	addi	a2, zero, 109
80000b08: 93 06 05 00  	mv	a3, a0
;         p[i] = (double)(seed + i);
80000b0c: d3 81 15 d2  	fcvt.d.wu	ft3, a1
80000b10: 27 b0 36 00  	fsd	ft3, 0(a3)
;     for (uint32_t i = 0; i < n; i++){
80000b14: 93 85 15 00  	addi	a1, a1, 1
80000b18: 93 86 86 00  	addi	a3, a3, 8
80000b1c: e3 98 c5 fe  	bne	a1, a2, 0x80000b0c <main+0x4d8>
;             r_row += a[i*m + j];
80000b20: 87 31 05 00  	fld	ft3, 0(a0)
80000b24: 27 3c 31 28  	fsd	ft3, 664(sp)
80000b28: 87 31 85 00  	fld	ft3, 8(a0)
80000b2c: 27 38 31 28  	fsd	ft3, 656(sp)
80000b30: 87 31 05 01  	fld	ft3, 16(a0)
80000b34: 27 34 31 28  	fsd	ft3, 648(sp)
80000b38: 87 33 85 01  	fld	ft7, 24(a0)
80000b3c: 07 35 05 02  	fld	fa0, 32(a0)
80000b40: 87 35 85 02  	fld	fa1, 40(a0)
80000b44: 07 36 05 03  	fld	fa2, 48(a0)
80000b48: 87 36 85 03  	fld	fa3, 56(a0)
80000b4c: 07 37 05 04  	fld	fa4, 64(a0)
80000b50: 87 37 85 04  	fld	fa5, 72(a0)
80000b54: 07 38 05 05  	fld	fa6, 80(a0)
80000b58: 87 38 85 05  	fld	fa7, 88(a0)
80000b5c: 07 3e 05 06  	fld	ft8, 96(a0)
80000b60: 87 3e 85 06  	fld	ft9, 104(a0)
80000b64: 07 3f 05 07  	fld	ft10, 112(a0)
80000b68: 87 3f 85 07  	fld	ft11, 120(a0)
80000b6c: 07 34 05 08  	fld	fs0, 128(a0)
80000b70: 87 34 85 08  	fld	fs1, 136(a0)
80000b74: 07 39 05 09  	fld	fs2, 144(a0)
80000b78: 87 39 85 09  	fld	fs3, 152(a0)
80000b7c: 07 3a 05 0a  	fld	fs4, 160(a0)
80000b80: 87 3a 85 0a  	fld	fs5, 168(a0)
80000b84: 07 3b 05 0b  	fld	fs6, 176(a0)
80000b88: 87 3b 85 0b  	fld	fs7, 184(a0)
80000b8c: 07 3c 05 0c  	fld	fs8, 192(a0)
80000b90: 87 3c 85 0c  	fld	fs9, 200(a0)
80000b94: 07 3d 05 0d  	fld	fs10, 208(a0)
80000b98: 87 3d 85 0d  	fld	fs11, 216(a0)
80000b9c: 87 31 05 0e  	fld	ft3, 224(a0)
80000ba0: 27 30 31 28  	fsd	ft3, 640(sp)
80000ba4: 87 31 85 0e  	fld	ft3, 232(a0)
80000ba8: 27 3c 31 26  	fsd	ft3, 632(sp)
80000bac: 87 31 05 0f  	fld	ft3, 240(a0)
80000bb0: 27 38 31 26  	fsd	ft3, 624(sp)
80000bb4: 87 31 85 0f  	fld	ft3, 248(a0)
80000bb8: 27 34 31 26  	fsd	ft3, 616(sp)
80000bbc: 87 31 05 10  	fld	ft3, 256(a0)
80000bc0: 27 30 31 26  	fsd	ft3, 608(sp)
80000bc4: 87 31 85 10  	fld	ft3, 264(a0)
80000bc8: 27 3c 31 24  	fsd	ft3, 600(sp)
80000bcc: 87 31 05 11  	fld	ft3, 272(a0)
80000bd0: 27 38 31 24  	fsd	ft3, 592(sp)
80000bd4: 87 31 85 11  	fld	ft3, 280(a0)
80000bd8: 27 34 31 24  	fsd	ft3, 584(sp)
80000bdc: 87 31 05 12  	fld	ft3, 288(a0)
80000be0: 27 30 31 24  	fsd	ft3, 576(sp)
80000be4: 87 31 85 12  	fld	ft3, 296(a0)
80000be8: 27 3c 31 22  	fsd	ft3, 568(sp)
80000bec: 87 31 05 13  	fld	ft3, 304(a0)
80000bf0: 27 38 31 22  	fsd	ft3, 560(sp)
80000bf4: 87 31 85 13  	fld	ft3, 312(a0)
80000bf8: 27 34 31 22  	fsd	ft3, 552(sp)
80000bfc: 87 31 05 14  	fld	ft3, 320(a0)
80000c00: 27 30 31 22  	fsd	ft3, 544(sp)
80000c04: 87 31 85 14  	fld	ft3, 328(a0)
80000c08: 27 3c 31 20  	fsd	ft3, 536(sp)
80000c0c: 87 31 05 15  	fld	ft3, 336(a0)
80000c10: 27 38 31 20  	fsd	ft3, 528(sp)
80000c14: 87 31 85 15  	fld	ft3, 344(a0)
80000c18: 27 34 31 20  	fsd	ft3, 520(sp)
80000c1c: 87 31 05 16  	fld	ft3, 352(a0)
80000c20: 27 30 31 20  	fsd	ft3, 512(sp)
80000c24: 87 31 85 16  	fld	ft3, 360(a0)
80000c28: 27 3c 31 1e  	fsd	ft3, 504(sp)
80000c2c: 87 31 05 17  	fld	ft3, 368(a0)
80000c30: 27 38 31 1e  	fsd	ft3, 496(sp)
80000c34: 87 31 85 17  	fld	ft3, 376(a0)
80000c38: 27 34 31 1e  	fsd	ft3, 488(sp)
80000c3c: 87 31 05 18  	fld	ft3, 384(a0)
80000c40: 27 30 31 1e  	fsd	ft3, 480(sp)
80000c44: 87 31 85 18  	fld	ft3, 392(a0)
80000c48: 27 3c 31 1c  	fsd	ft3, 472(sp)
80000c4c: 87 31 05 19  	fld	ft3, 400(a0)
80000c50: 27 38 31 1c  	fsd	ft3, 464(sp)
80000c54: 87 31 85 19  	fld	ft3, 408(a0)
80000c58: 27 34 31 1c  	fsd	ft3, 456(sp)
80000c5c: 87 31 05 1a  	fld	ft3, 416(a0)
80000c60: 27 30 31 1c  	fsd	ft3, 448(sp)
80000c64: 87 31 85 1a  	fld	ft3, 424(a0)
80000c68: 27 3c 31 1a  	fsd	ft3, 440(sp)
80000c6c: 87 31 05 1b  	fld	ft3, 432(a0)
80000c70: 27 38 31 1a  	fsd	ft3, 432(sp)
80000c74: 87 31 85 1b  	fld	ft3, 440(a0)
80000c78: 27 34 31 1a  	fsd	ft3, 424(sp)
80000c7c: 87 31 05 1c  	fld	ft3, 448(a0)
80000c80: 27 30 31 1a  	fsd	ft3, 416(sp)
80000c84: 87 31 85 1c  	fld	ft3, 456(a0)
80000c88: 27 3c 31 18  	fsd	ft3, 408(sp)
80000c8c: 87 31 05 1d  	fld	ft3, 464(a0)
80000c90: 27 38 31 18  	fsd	ft3, 400(sp)
80000c94: 87 31 85 1d  	fld	ft3, 472(a0)
80000c98: 27 34 31 18  	fsd	ft3, 392(sp)
80000c9c: 87 31 05 1e  	fld	ft3, 480(a0)
80000ca0: 27 30 31 18  	fsd	ft3, 384(sp)
80000ca4: 87 31 85 1e  	fld	ft3, 488(a0)
80000ca8: 27 3c 31 16  	fsd	ft3, 376(sp)
80000cac: 87 31 05 1f  	fld	ft3, 496(a0)
80000cb0: 27 38 31 16  	fsd	ft3, 368(sp)
80000cb4: 87 31 85 1f  	fld	ft3, 504(a0)
80000cb8: 27 34 31 16  	fsd	ft3, 360(sp)
80000cbc: 87 31 05 20  	fld	ft3, 512(a0)
80000cc0: 27 30 31 16  	fsd	ft3, 352(sp)
80000cc4: 87 31 85 20  	fld	ft3, 520(a0)
80000cc8: 27 3c 31 14  	fsd	ft3, 344(sp)
80000ccc: 87 31 05 21  	fld	ft3, 528(a0)
80000cd0: 27 38 31 14  	fsd	ft3, 336(sp)
80000cd4: 87 31 85 21  	fld	ft3, 536(a0)
80000cd8: 27 34 31 14  	fsd	ft3, 328(sp)
80000cdc: 87 31 05 22  	fld	ft3, 544(a0)
80000ce0: 27 30 31 14  	fsd	ft3, 320(sp)
80000ce4: 87 31 85 22  	fld	ft3, 552(a0)
80000ce8: 27 3c 31 12  	fsd	ft3, 312(sp)
80000cec: 87 31 05 23  	fld	ft3, 560(a0)
80000cf0: 27 38 31 12  	fsd	ft3, 304(sp)
80000cf4: 87 31 85 23  	fld	ft3, 568(a0)
80000cf8: 27 34 31 12  	fsd	ft3, 296(sp)
80000cfc: 87 31 05 24  	fld	ft3, 576(a0)
80000d00: 27 30 31 12  	fsd	ft3, 288(sp)
80000d04: 87 31 85 24  	fld	ft3, 584(a0)
80000d08: 27 3c 31 10  	fsd	ft3, 280(sp)
80000d0c: 87 31 05 25  	fld	ft3, 592(a0)
80000d10: 27 38 31 10  	fsd	ft3, 272(sp)
80000d14: 87 31 85 25  	fld	ft3, 600(a0)
80000d18: 27 34 31 10  	fsd	ft3, 264(sp)
80000d1c: 87 31 05 26  	fld	ft3, 608(a0)
80000d20: 27 30 31 10  	fsd	ft3, 256(sp)
80000d24: 87 31 85 26  	fld	ft3, 616(a0)
80000d28: 27 3c 31 0e  	fsd	ft3, 248(sp)
80000d2c: 87 31 05 27  	fld	ft3, 624(a0)
80000d30: 27 38 31 0e  	fsd	ft3, 240(sp)
80000d34: 87 31 85 27  	fld	ft3, 632(a0)
80000d38: 27 34 31 0e  	fsd	ft3, 232(sp)
80000d3c: 87 31 05 28  	fld	ft3, 640(a0)
80000d40: 27 30 31 0e  	fsd	ft3, 224(sp)
80000d44: 87 31 85 28  	fld	ft3, 648(a0)
80000d48: 27 3c 31 0c  	fsd	ft3, 216(sp)
80000d4c: 87 31 05 29  	fld	ft3, 656(a0)
80000d50: 27 38 31 0c  	fsd	ft3, 208(sp)
80000d54: 87 31 85 29  	fld	ft3, 664(a0)
80000d58: 27 34 31 0c  	fsd	ft3, 200(sp)
80000d5c: 87 31 05 2a  	fld	ft3, 672(a0)
80000d60: 27 30 31 0c  	fsd	ft3, 192(sp)
80000d64: 87 31 85 2a  	fld	ft3, 680(a0)
80000d68: 27 3c 31 0a  	fsd	ft3, 184(sp)
80000d6c: 87 31 05 2b  	fld	ft3, 688(a0)
80000d70: 27 38 31 0a  	fsd	ft3, 176(sp)
80000d74: 87 31 85 2b  	fld	ft3, 696(a0)
80000d78: 27 34 31 0a  	fsd	ft3, 168(sp)
80000d7c: 87 31 05 2c  	fld	ft3, 704(a0)
80000d80: 27 30 31 0a  	fsd	ft3, 160(sp)
80000d84: 87 31 85 2c  	fld	ft3, 712(a0)
80000d88: 27 3c 31 08  	fsd	ft3, 152(sp)
80000d8c: 87 31 05 2d  	fld	ft3, 720(a0)
80000d90: 27 38 31 08  	fsd	ft3, 144(sp)
80000d94: 87 31 85 2d  	fld	ft3, 728(a0)
80000d98: 27 34 31 08  	fsd	ft3, 136(sp)
80000d9c: 87 31 05 2e  	fld	ft3, 736(a0)
80000da0: 27 30 31 08  	fsd	ft3, 128(sp)
80000da4: 87 31 85 2e  	fld	ft3, 744(a0)
80000da8: 27 3c 31 06  	fsd	ft3, 120(sp)
80000dac: 87 31 05 2f  	fld	ft3, 752(a0)
80000db0: 27 38 31 06  	fsd	ft3, 112(sp)
80000db4: 87 31 85 2f  	fld	ft3, 760(a0)
80000db8: 27 34 31 06  	fsd	ft3, 104(sp)
80000dbc: 87 31 05 30  	fld	ft3, 768(a0)
80000dc0: 27 30 31 06  	fsd	ft3, 96(sp)
80000dc4: 87 31 85 30  	fld	ft3, 776(a0)
80000dc8: 27 3c 31 04  	fsd	ft3, 88(sp)
80000dcc: 87 31 05 31  	fld	ft3, 784(a0)
80000dd0: 27 38 31 04  	fsd	ft3, 80(sp)
80000dd4: 87 31 85 31  	fld	ft3, 792(a0)
80000dd8: 27 34 31 04  	fsd	ft3, 72(sp)
80000ddc: 87 31 05 32  	fld	ft3, 800(a0)
80000de0: 27 30 31 04  	fsd	ft3, 64(sp)
80000de4: 87 31 85 32  	fld	ft3, 808(a0)
80000de8: 27 3c 31 02  	fsd	ft3, 56(sp)
80000dec: 87 31 05 33  	fld	ft3, 816(a0)
80000df0: 27 38 31 02  	fsd	ft3, 48(sp)
80000df4: 87 31 85 33  	fld	ft3, 824(a0)
80000df8: 27 34 31 02  	fsd	ft3, 40(sp)
80000dfc: 87 31 05 34  	fld	ft3, 832(a0)
80000e00: 27 30 31 02  	fsd	ft3, 32(sp)
80000e04: 87 31 85 34  	fld	ft3, 840(a0)
80000e08: 27 3c 31 00  	fsd	ft3, 24(sp)
80000e0c: 87 31 05 35  	fld	ft3, 848(a0)
80000e10: 27 38 31 00  	fsd	ft3, 16(sp)
80000e14: 87 31 85 35  	fld	ft3, 856(a0)
80000e18: 27 34 31 00  	fsd	ft3, 8(sp)
80000e1c: 93 05 00 18  	addi	a1, zero, 384
80000e20: 13 06 00 1e  	addi	a2, zero, 480
80000e24: 53 02 00 d2  	fcvt.d.w	ft4, zero
;             r_col += a[j + i*m];
80000e28: b3 06 b5 00  	add	a3, a0, a1
80000e2c: 87 b1 06 e8  	fld	ft3, -384(a3)
80000e30: 87 b2 06 ee  	fld	ft5, -288(a3)
80000e34: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000e38: 07 b2 06 f4  	fld	ft4, -192(a3)
80000e3c: 07 b3 06 fa  	fld	ft6, -96(a3)
80000e40: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e44: 87 b2 06 00  	fld	ft5, 0(a3)
80000e48: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000e4c: d3 f1 61 02  	fadd.d	ft3, ft3, ft6
80000e50: 07 b2 06 06  	fld	ft4, 96(a3)
80000e54: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e58: 87 b2 06 0c  	fld	ft5, 192(a3)
80000e5c: 07 b3 06 12  	fld	ft6, 288(a3)
80000e60: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80000e64: 07 b2 06 18  	fld	ft4, 384(a3)
80000e68: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e6c: d3 f1 61 02  	fadd.d	ft3, ft3, ft6
;     for (int j = 0; j < m; j++){
80000e70: 93 85 85 00  	addi	a1, a1, 8
;             r_col += a[j + i*m];
80000e74: 53 f2 41 02  	fadd.d	ft4, ft3, ft4
80000e78: e3 98 c5 fa  	bne	a1, a2, 0x80000e28 <main+0x7f4>
;             r_row += a[i*m + j];
80000e7c: 87 31 81 29  	fld	ft3, 664(sp)
80000e80: 87 32 01 29  	fld	ft5, 656(sp)
80000e84: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80000e88: 87 32 81 28  	fld	ft5, 648(sp)
80000e8c: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000e90: d3 f1 71 02  	fadd.d	ft3, ft3, ft7
80000e94: d3 f1 a1 02  	fadd.d	ft3, ft3, fa0
80000e98: d3 f1 b1 02  	fadd.d	ft3, ft3, fa1
80000e9c: d3 f1 c1 02  	fadd.d	ft3, ft3, fa2
80000ea0: d3 f1 d1 02  	fadd.d	ft3, ft3, fa3
80000ea4: d3 f1 e1 02  	fadd.d	ft3, ft3, fa4
80000ea8: d3 f1 f1 02  	fadd.d	ft3, ft3, fa5
80000eac: d3 f1 01 03  	fadd.d	ft3, ft3, fa6
80000eb0: d3 f1 11 03  	fadd.d	ft3, ft3, fa7
80000eb4: d3 f1 c1 03  	fadd.d	ft3, ft3, ft8
80000eb8: d3 f1 d1 03  	fadd.d	ft3, ft3, ft9
80000ebc: d3 f1 e1 03  	fadd.d	ft3, ft3, ft10
80000ec0: d3 f1 f1 03  	fadd.d	ft3, ft3, ft11
80000ec4: d3 f1 81 02  	fadd.d	ft3, ft3, fs0
80000ec8: d3 f1 91 02  	fadd.d	ft3, ft3, fs1
80000ecc: d3 f1 21 03  	fadd.d	ft3, ft3, fs2
80000ed0: d3 f1 31 03  	fadd.d	ft3, ft3, fs3
80000ed4: d3 f1 41 03  	fadd.d	ft3, ft3, fs4
80000ed8: d3 f1 51 03  	fadd.d	ft3, ft3, fs5
80000edc: d3 f1 61 03  	fadd.d	ft3, ft3, fs6
80000ee0: d3 f1 71 03  	fadd.d	ft3, ft3, fs7
80000ee4: d3 f1 81 03  	fadd.d	ft3, ft3, fs8
80000ee8: d3 f1 91 03  	fadd.d	ft3, ft3, fs9
80000eec: d3 f1 a1 03  	fadd.d	ft3, ft3, fs10
80000ef0: d3 f1 b1 03  	fadd.d	ft3, ft3, fs11
80000ef4: 87 32 01 28  	fld	ft5, 640(sp)
80000ef8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000efc: 87 32 81 27  	fld	ft5, 632(sp)
80000f00: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f04: 87 32 01 27  	fld	ft5, 624(sp)
80000f08: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f0c: 87 32 81 26  	fld	ft5, 616(sp)
80000f10: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f14: 87 32 01 26  	fld	ft5, 608(sp)
80000f18: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f1c: 87 32 81 25  	fld	ft5, 600(sp)
80000f20: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f24: 87 32 01 25  	fld	ft5, 592(sp)
80000f28: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f2c: 87 32 81 24  	fld	ft5, 584(sp)
80000f30: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f34: 87 32 01 24  	fld	ft5, 576(sp)
80000f38: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f3c: 87 32 81 23  	fld	ft5, 568(sp)
80000f40: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f44: 87 32 01 23  	fld	ft5, 560(sp)
80000f48: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f4c: 87 32 81 22  	fld	ft5, 552(sp)
80000f50: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f54: 87 32 01 22  	fld	ft5, 544(sp)
80000f58: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f5c: 87 32 81 21  	fld	ft5, 536(sp)
80000f60: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f64: 87 32 01 21  	fld	ft5, 528(sp)
80000f68: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f6c: 87 32 81 20  	fld	ft5, 520(sp)
80000f70: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f74: 87 32 01 20  	fld	ft5, 512(sp)
80000f78: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f7c: 87 32 81 1f  	fld	ft5, 504(sp)
80000f80: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f84: 87 32 01 1f  	fld	ft5, 496(sp)
80000f88: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f8c: 87 32 81 1e  	fld	ft5, 488(sp)
80000f90: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f94: 87 32 01 1e  	fld	ft5, 480(sp)
80000f98: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000f9c: 87 32 81 1d  	fld	ft5, 472(sp)
80000fa0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fa4: 87 32 01 1d  	fld	ft5, 464(sp)
80000fa8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fac: 87 32 81 1c  	fld	ft5, 456(sp)
80000fb0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fb4: 87 32 01 1c  	fld	ft5, 448(sp)
80000fb8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fbc: 87 32 81 1b  	fld	ft5, 440(sp)
80000fc0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fc4: 87 32 01 1b  	fld	ft5, 432(sp)
80000fc8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fcc: 87 32 81 1a  	fld	ft5, 424(sp)
80000fd0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fd4: 87 32 01 1a  	fld	ft5, 416(sp)
80000fd8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fdc: 87 32 81 19  	fld	ft5, 408(sp)
80000fe0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fe4: 87 32 01 19  	fld	ft5, 400(sp)
80000fe8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000fec: 87 32 81 18  	fld	ft5, 392(sp)
80000ff0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000ff4: 87 32 01 18  	fld	ft5, 384(sp)
80000ff8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80000ffc: 87 32 81 17  	fld	ft5, 376(sp)
80001000: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001004: 87 32 01 17  	fld	ft5, 368(sp)
80001008: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000100c: 87 32 81 16  	fld	ft5, 360(sp)
80001010: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001014: 87 32 01 16  	fld	ft5, 352(sp)
80001018: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000101c: 87 32 81 15  	fld	ft5, 344(sp)
80001020: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001024: 87 32 01 15  	fld	ft5, 336(sp)
80001028: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000102c: 87 32 81 14  	fld	ft5, 328(sp)
80001030: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001034: 87 32 01 14  	fld	ft5, 320(sp)
80001038: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000103c: 87 32 81 13  	fld	ft5, 312(sp)
80001040: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001044: 87 32 01 13  	fld	ft5, 304(sp)
80001048: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000104c: 87 32 81 12  	fld	ft5, 296(sp)
80001050: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001054: 87 32 01 12  	fld	ft5, 288(sp)
80001058: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000105c: 87 32 81 11  	fld	ft5, 280(sp)
80001060: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001064: 87 32 01 11  	fld	ft5, 272(sp)
80001068: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000106c: 87 32 81 10  	fld	ft5, 264(sp)
80001070: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001074: 87 32 01 10  	fld	ft5, 256(sp)
80001078: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000107c: 87 32 81 0f  	fld	ft5, 248(sp)
80001080: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001084: 87 32 01 0f  	fld	ft5, 240(sp)
80001088: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000108c: 87 32 81 0e  	fld	ft5, 232(sp)
80001090: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001094: 87 32 01 0e  	fld	ft5, 224(sp)
80001098: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000109c: 87 32 81 0d  	fld	ft5, 216(sp)
800010a0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010a4: 87 32 01 0d  	fld	ft5, 208(sp)
800010a8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010ac: 87 32 81 0c  	fld	ft5, 200(sp)
800010b0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010b4: 87 32 01 0c  	fld	ft5, 192(sp)
800010b8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010bc: 87 32 81 0b  	fld	ft5, 184(sp)
800010c0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010c4: 87 32 01 0b  	fld	ft5, 176(sp)
800010c8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010cc: 87 32 81 0a  	fld	ft5, 168(sp)
800010d0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010d4: 87 32 01 0a  	fld	ft5, 160(sp)
800010d8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010dc: 87 32 81 09  	fld	ft5, 152(sp)
800010e0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010e4: 87 32 01 09  	fld	ft5, 144(sp)
800010e8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010ec: 87 32 81 08  	fld	ft5, 136(sp)
800010f0: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010f4: 87 32 01 08  	fld	ft5, 128(sp)
800010f8: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
800010fc: 87 32 81 07  	fld	ft5, 120(sp)
80001100: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001104: 87 32 01 07  	fld	ft5, 112(sp)
80001108: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000110c: 87 32 81 06  	fld	ft5, 104(sp)
80001110: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001114: 87 32 01 06  	fld	ft5, 96(sp)
80001118: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000111c: 87 32 81 05  	fld	ft5, 88(sp)
80001120: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001124: 87 32 01 05  	fld	ft5, 80(sp)
80001128: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000112c: 87 32 81 04  	fld	ft5, 72(sp)
80001130: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001134: 87 32 01 04  	fld	ft5, 64(sp)
80001138: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000113c: 87 32 81 03  	fld	ft5, 56(sp)
80001140: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001144: 87 32 01 03  	fld	ft5, 48(sp)
80001148: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000114c: 87 32 81 02  	fld	ft5, 40(sp)
80001150: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001154: 87 32 01 02  	fld	ft5, 32(sp)
80001158: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000115c: 87 32 81 01  	fld	ft5, 24(sp)
80001160: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
80001164: 87 32 01 01  	fld	ft5, 16(sp)
80001168: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
8000116c: 87 32 81 00  	fld	ft5, 8(sp)
80001170: d3 f1 51 02  	fadd.d	ft3, ft3, ft5
;     for (int i = n-1; i >= 0; i--) {
80001174: 93 05 85 35  	addi	a1, a0, 856
80001178: 13 56 45 01  	srli	a2, a0, 20
8000117c: 33 36 c0 00  	snez	a2, a2
80001180: b7 06 12 00  	lui	a3, 288
80001184: 93 86 16 00  	addi	a3, a3, 1
80001188: b3 b5 d5 00  	sltu	a1, a1, a3
8000118c: b3 75 b6 00  	and	a1, a2, a1
80001190: 63 8e 05 1e  	beqz	a1, 0x8000138c <main+0xd58>
80001194: 13 05 05 30  	addi	a0, a0, 768
80001198: 93 05 80 00  	addi	a1, zero, 8
8000119c: 13 06 b0 00  	addi	a2, zero, 11
;     for (int i = n-1; i >= 0; i--) {
800011a0: 93 06 00 04  	addi	a3, zero, 64
800011a4: 13 07 00 0c  	addi	a4, zero, 192
800011a8: ab 20 d6 00  	scfgw	a2, a3
800011ac: ab a0 e5 00  	scfgw	a1, a4
800011b0: 13 06 80 f4  	addi	a2, zero, -184
800011b4: 93 06 00 06  	addi	a3, zero, 96
800011b8: 13 07 00 0e  	addi	a4, zero, 224
800011bc: ab a0 d5 00  	scfgw	a1, a3
800011c0: ab 20 e6 00  	scfgw	a2, a4
800011c4: 93 05 00 02  	addi	a1, zero, 32
800011c8: ab 20 b0 00  	scfgw	zero, a1
800011cc: 2b 20 05 32  	scfgwi	a0, 800
800011d0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             r_rev += a[i*m + j];
800011d4: d3 02 00 22  	fmv.d	ft5, ft0
800011d8: d3 72 50 02  	fadd.d	ft5, ft0, ft5
800011dc: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011e0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011e4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011e8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011ec: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011f0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011f4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011f8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800011fc: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001200: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001204: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001208: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000120c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001210: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001214: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001218: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000121c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001220: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001224: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001228: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000122c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001230: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001234: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001238: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000123c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001240: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001244: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001248: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000124c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001250: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001254: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001258: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000125c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001260: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001264: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001268: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000126c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001270: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001274: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001278: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000127c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001280: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001284: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001288: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000128c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001290: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001294: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001298: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000129c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012a0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012a4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012a8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012ac: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012b0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012b4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012b8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012bc: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012c0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012c4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012c8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012cc: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012d0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012d4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012d8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012dc: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012e0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012e4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012e8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012ec: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012f0: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012f4: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012f8: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
800012fc: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001300: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001304: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001308: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000130c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001310: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001314: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001318: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000131c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001320: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001324: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001328: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000132c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001330: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001334: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001338: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000133c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001340: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001344: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001348: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000134c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001350: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001354: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001358: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000135c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001360: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001364: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001368: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000136c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001370: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001374: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001378: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
8000137c: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001380: d3 f2 02 02  	fadd.d	ft5, ft5, ft0
80001384: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001388: 6f 00 00 36  	j	0x800016e8 <.LBB0_18>
;             r_rev += a[i*m + j];
8000138c: 87 32 05 30  	fld	ft5, 768(a0)
80001390: 07 33 85 30  	fld	ft6, 776(a0)
80001394: 87 33 05 31  	fld	ft7, 784(a0)
80001398: 07 35 85 31  	fld	fa0, 792(a0)
8000139c: d3 72 53 02  	fadd.d	ft5, ft6, ft5
800013a0: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800013a4: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800013a8: 07 33 05 32  	fld	ft6, 800(a0)
800013ac: 87 33 85 32  	fld	ft7, 808(a0)
800013b0: 07 35 05 33  	fld	fa0, 816(a0)
800013b4: 87 35 85 33  	fld	fa1, 824(a0)
800013b8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800013bc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800013c0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800013c4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800013c8: 07 33 05 34  	fld	ft6, 832(a0)
800013cc: 87 33 85 34  	fld	ft7, 840(a0)
800013d0: 07 35 05 35  	fld	fa0, 848(a0)
800013d4: 87 35 85 35  	fld	fa1, 856(a0)
800013d8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800013dc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800013e0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800013e4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800013e8: 07 33 05 2a  	fld	ft6, 672(a0)
800013ec: 87 33 85 2a  	fld	ft7, 680(a0)
800013f0: 07 35 05 2b  	fld	fa0, 688(a0)
800013f4: 87 35 85 2b  	fld	fa1, 696(a0)
800013f8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800013fc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001400: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001404: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001408: 07 33 05 2c  	fld	ft6, 704(a0)
8000140c: 87 33 85 2c  	fld	ft7, 712(a0)
80001410: 07 35 05 2d  	fld	fa0, 720(a0)
80001414: 87 35 85 2d  	fld	fa1, 728(a0)
80001418: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000141c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001420: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001424: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001428: 07 33 05 2e  	fld	ft6, 736(a0)
8000142c: 87 33 85 2e  	fld	ft7, 744(a0)
80001430: 07 35 05 2f  	fld	fa0, 752(a0)
80001434: 87 35 85 2f  	fld	fa1, 760(a0)
80001438: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000143c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001440: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001444: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001448: 07 33 05 24  	fld	ft6, 576(a0)
8000144c: 87 33 85 24  	fld	ft7, 584(a0)
80001450: 07 35 05 25  	fld	fa0, 592(a0)
80001454: 87 35 85 25  	fld	fa1, 600(a0)
80001458: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000145c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001460: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001464: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001468: 07 33 05 26  	fld	ft6, 608(a0)
8000146c: 87 33 85 26  	fld	ft7, 616(a0)
80001470: 07 35 05 27  	fld	fa0, 624(a0)
80001474: 87 35 85 27  	fld	fa1, 632(a0)
80001478: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000147c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001480: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001484: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001488: 07 33 05 28  	fld	ft6, 640(a0)
8000148c: 87 33 85 28  	fld	ft7, 648(a0)
80001490: 07 35 05 29  	fld	fa0, 656(a0)
80001494: 87 35 85 29  	fld	fa1, 664(a0)
80001498: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000149c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800014a0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800014a4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800014a8: 07 33 05 1e  	fld	ft6, 480(a0)
800014ac: 87 33 85 1e  	fld	ft7, 488(a0)
800014b0: 07 35 05 1f  	fld	fa0, 496(a0)
800014b4: 87 35 85 1f  	fld	fa1, 504(a0)
800014b8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800014bc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800014c0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800014c4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800014c8: 07 33 05 20  	fld	ft6, 512(a0)
800014cc: 87 33 85 20  	fld	ft7, 520(a0)
800014d0: 07 35 05 21  	fld	fa0, 528(a0)
800014d4: 87 35 85 21  	fld	fa1, 536(a0)
800014d8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800014dc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800014e0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800014e4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800014e8: 07 33 05 22  	fld	ft6, 544(a0)
800014ec: 87 33 85 22  	fld	ft7, 552(a0)
800014f0: 07 35 05 23  	fld	fa0, 560(a0)
800014f4: 87 35 85 23  	fld	fa1, 568(a0)
800014f8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800014fc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001500: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001504: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001508: 07 33 05 18  	fld	ft6, 384(a0)
8000150c: 87 33 85 18  	fld	ft7, 392(a0)
80001510: 07 35 05 19  	fld	fa0, 400(a0)
80001514: 87 35 85 19  	fld	fa1, 408(a0)
80001518: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000151c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001520: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001524: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001528: 07 33 05 1a  	fld	ft6, 416(a0)
8000152c: 87 33 85 1a  	fld	ft7, 424(a0)
80001530: 07 35 05 1b  	fld	fa0, 432(a0)
80001534: 87 35 85 1b  	fld	fa1, 440(a0)
80001538: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000153c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001540: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001544: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001548: 07 33 05 1c  	fld	ft6, 448(a0)
8000154c: 87 33 85 1c  	fld	ft7, 456(a0)
80001550: 07 35 05 1d  	fld	fa0, 464(a0)
80001554: 87 35 85 1d  	fld	fa1, 472(a0)
80001558: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000155c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001560: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001564: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001568: 07 33 05 12  	fld	ft6, 288(a0)
8000156c: 87 33 85 12  	fld	ft7, 296(a0)
80001570: 07 35 05 13  	fld	fa0, 304(a0)
80001574: 87 35 85 13  	fld	fa1, 312(a0)
80001578: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000157c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001580: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001584: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001588: 07 33 05 14  	fld	ft6, 320(a0)
8000158c: 87 33 85 14  	fld	ft7, 328(a0)
80001590: 07 35 05 15  	fld	fa0, 336(a0)
80001594: 87 35 85 15  	fld	fa1, 344(a0)
80001598: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000159c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800015a0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800015a4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800015a8: 07 33 05 16  	fld	ft6, 352(a0)
800015ac: 87 33 85 16  	fld	ft7, 360(a0)
800015b0: 07 35 05 17  	fld	fa0, 368(a0)
800015b4: 87 35 85 17  	fld	fa1, 376(a0)
800015b8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800015bc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800015c0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800015c4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800015c8: 07 33 05 0c  	fld	ft6, 192(a0)
800015cc: 87 33 85 0c  	fld	ft7, 200(a0)
800015d0: 07 35 05 0d  	fld	fa0, 208(a0)
800015d4: 87 35 85 0d  	fld	fa1, 216(a0)
800015d8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800015dc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800015e0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800015e4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800015e8: 07 33 05 0e  	fld	ft6, 224(a0)
800015ec: 87 33 85 0e  	fld	ft7, 232(a0)
800015f0: 07 35 05 0f  	fld	fa0, 240(a0)
800015f4: 87 35 85 0f  	fld	fa1, 248(a0)
800015f8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800015fc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001600: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001604: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001608: 07 33 05 10  	fld	ft6, 256(a0)
8000160c: 87 33 85 10  	fld	ft7, 264(a0)
80001610: 07 35 05 11  	fld	fa0, 272(a0)
80001614: 87 35 85 11  	fld	fa1, 280(a0)
80001618: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000161c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001620: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001624: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001628: 07 33 05 06  	fld	ft6, 96(a0)
8000162c: 87 33 85 06  	fld	ft7, 104(a0)
80001630: 07 35 05 07  	fld	fa0, 112(a0)
80001634: 87 35 85 07  	fld	fa1, 120(a0)
80001638: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000163c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001640: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001644: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001648: 07 33 05 08  	fld	ft6, 128(a0)
8000164c: 87 33 85 08  	fld	ft7, 136(a0)
80001650: 07 35 05 09  	fld	fa0, 144(a0)
80001654: 87 35 85 09  	fld	fa1, 152(a0)
80001658: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000165c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001660: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001664: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001668: 07 33 05 0a  	fld	ft6, 160(a0)
8000166c: 87 33 85 0a  	fld	ft7, 168(a0)
80001670: 07 35 05 0b  	fld	fa0, 176(a0)
80001674: 87 35 85 0b  	fld	fa1, 184(a0)
80001678: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000167c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
80001680: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
80001684: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
80001688: 07 33 05 00  	fld	ft6, 0(a0)
8000168c: 87 33 85 00  	fld	ft7, 8(a0)
80001690: 07 35 05 01  	fld	fa0, 16(a0)
80001694: 87 35 85 01  	fld	fa1, 24(a0)
80001698: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
8000169c: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800016a0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800016a4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800016a8: 07 33 05 02  	fld	ft6, 32(a0)
800016ac: 87 33 85 02  	fld	ft7, 40(a0)
800016b0: 07 35 05 03  	fld	fa0, 48(a0)
800016b4: 87 35 85 03  	fld	fa1, 56(a0)
800016b8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800016bc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800016c0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800016c4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1
800016c8: 07 33 05 04  	fld	ft6, 64(a0)
800016cc: 87 33 85 04  	fld	ft7, 72(a0)
800016d0: 07 35 05 05  	fld	fa0, 80(a0)
800016d4: 87 35 85 05  	fld	fa1, 88(a0)
800016d8: d3 f2 62 02  	fadd.d	ft5, ft5, ft6
800016dc: d3 f2 72 02  	fadd.d	ft5, ft5, ft7
800016e0: d3 f2 a2 02  	fadd.d	ft5, ft5, fa0
800016e4: d3 f2 b2 02  	fadd.d	ft5, ft5, fa1

800016e8 <.LBB0_18>:
800016e8: 17 25 00 00  	auipc	a0, 2
800016ec: 13 05 05 67  	addi	a0, a0, 1648
800016f0: 07 33 05 00  	fld	ft6, 0(a0)
;     double error = 2*r_row - r_col - r_rev;
800016f4: 53 72 52 02  	fadd.d	ft4, ft4, ft5
800016f8: c3 f1 61 22  	fmadd.d	ft3, ft3, ft6, ft4
;     error = error < 0.0 ? -error : error;
800016fc: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
80001700: 27 30 81 2a  	fsd	fs0, 672(sp)
80001704: 03 26 01 2a  	lw	a2, 672(sp)
80001708: 83 26 41 2a  	lw	a3, 676(sp)

8000170c <.LBB0_19>:
8000170c: 17 25 00 00  	auipc	a0, 2
80001710: 13 05 95 39  	addi	a0, a0, 921
80001714: 97 00 00 00  	auipc	ra, 0
80001718: e7 80 40 05  	jalr	84(ra)

8000171c <.LBB0_20>:
8000171c: 17 25 00 00  	auipc	a0, 2
80001720: 13 05 45 64  	addi	a0, a0, 1604
80001724: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001;
80001728: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
8000172c: 87 3d 81 2a  	fld	fs11, 680(sp)
80001730: 07 3d 01 2b  	fld	fs10, 688(sp)
80001734: 87 3c 81 2b  	fld	fs9, 696(sp)
80001738: 07 3c 01 2c  	fld	fs8, 704(sp)
8000173c: 87 3b 81 2c  	fld	fs7, 712(sp)
80001740: 07 3b 01 2d  	fld	fs6, 720(sp)
80001744: 87 3a 81 2d  	fld	fs5, 728(sp)
80001748: 07 3a 01 2e  	fld	fs4, 736(sp)
8000174c: 87 39 81 2e  	fld	fs3, 744(sp)
80001750: 07 39 01 2f  	fld	fs2, 752(sp)
80001754: 87 34 81 2f  	fld	fs1, 760(sp)
80001758: 07 34 01 30  	fld	fs0, 768(sp)
8000175c: 83 20 c1 30  	lw	ra, 780(sp)
80001760: 13 01 01 31  	addi	sp, sp, 784
80001764: 67 80 00 00  	ret

80001768 <printf_>:
; {
80001768: 13 01 01 fd  	addi	sp, sp, -48
8000176c: 23 26 11 00  	sw	ra, 12(sp)
80001770: 93 02 05 00  	mv	t0, a0
80001774: 23 26 11 03  	sw	a7, 44(sp)
80001778: 23 24 01 03  	sw	a6, 40(sp)
8000177c: 23 22 f1 02  	sw	a5, 36(sp)
80001780: 23 20 e1 02  	sw	a4, 32(sp)
80001784: 23 2e d1 00  	sw	a3, 28(sp)
80001788: 23 2c c1 00  	sw	a2, 24(sp)
8000178c: 23 2a b1 00  	sw	a1, 20(sp)
80001790: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001794: 23 24 a1 00  	sw	a0, 8(sp)

80001798 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80001798: 17 15 00 00  	auipc	a0, 1
8000179c: 13 05 45 c2  	addi	a0, a0, -988
800017a0: 93 05 71 00  	addi	a1, sp, 7
800017a4: 13 06 f0 ff  	addi	a2, zero, -1
800017a8: 13 07 41 01  	addi	a4, sp, 20
800017ac: 93 86 02 00  	mv	a3, t0
800017b0: 97 00 00 00  	auipc	ra, 0
800017b4: e7 80 40 01  	jalr	20(ra)
;   return ret;
800017b8: 83 20 c1 00  	lw	ra, 12(sp)
800017bc: 13 01 01 03  	addi	sp, sp, 48
800017c0: 67 80 00 00  	ret

800017c4 <_vsnprintf.llvm.11632292163828655644>:
; {
800017c4: 13 01 01 f9  	addi	sp, sp, -112
800017c8: 23 26 11 06  	sw	ra, 108(sp)
800017cc: 23 24 81 06  	sw	s0, 104(sp)
800017d0: 23 22 91 06  	sw	s1, 100(sp)
800017d4: 23 20 21 07  	sw	s2, 96(sp)
800017d8: 23 2e 31 05  	sw	s3, 92(sp)
800017dc: 23 2c 41 05  	sw	s4, 88(sp)
800017e0: 23 2a 51 05  	sw	s5, 84(sp)
800017e4: 23 28 61 05  	sw	s6, 80(sp)
800017e8: 23 26 71 05  	sw	s7, 76(sp)
800017ec: 23 24 81 05  	sw	s8, 72(sp)
800017f0: 23 22 91 05  	sw	s9, 68(sp)
800017f4: 23 20 a1 05  	sw	s10, 64(sp)
800017f8: 23 2e b1 03  	sw	s11, 60(sp)
800017fc: 93 09 07 00  	mv	s3, a4
80001800: 13 84 06 00  	mv	s0, a3
80001804: 93 0a 06 00  	mv	s5, a2
80001808: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000180c: 63 86 05 00  	beqz	a1, 0x80001818 <.LBB1_183>
80001810: 13 09 05 00  	mv	s2, a0
80001814: 6f 00 c0 00  	j	0x80001820 <.LBB1_183+0x8>

80001818 <.LBB1_183>:
80001818: 17 19 00 00  	auipc	s2, 1
8000181c: 13 09 09 c5  	addi	s2, s2, -944
80001820: 13 0c 00 00  	mv	s8, zero
80001824: 13 0b 50 02  	addi	s6, zero, 37
80001828: 93 0d 00 01  	addi	s11, zero, 16
8000182c: 93 0b e0 02  	addi	s7, zero, 46
80001830: 37 15 00 00  	lui	a0, 1
80001834: 13 05 05 80  	addi	a0, a0, -2048
80001838: 23 2c a1 00  	sw	a0, 24(sp)
8000183c: 37 05 01 00  	lui	a0, 16
80001840: 13 05 f5 ff  	addi	a0, a0, -1
80001844: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001848: 13 0d 24 00  	addi	s10, s0, 2
8000184c: 93 0c 0c 00  	mv	s9, s8
80001850: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001854: 03 45 04 00  	lbu	a0, 0(s0)
80001858: e3 04 05 30  	beqz	a0, 0x80002360 <.LBB1_124+0x3b0>
8000185c: 63 08 65 03  	beq	a0, s6, 0x8000188c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001860: 93 84 1c 00  	addi	s1, s9, 1
80001864: 93 05 0a 00  	mv	a1, s4
80001868: 13 86 0c 00  	mv	a2, s9
8000186c: 93 86 0a 00  	mv	a3, s5
80001870: e7 00 09 00  	jalr	s2
;       format++;
80001874: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001878: 13 0d 1d 00  	addi	s10, s10, 1
8000187c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001880: 03 45 04 00  	lbu	a0, 0(s0)
80001884: e3 1c 05 fc  	bnez	a0, 0x8000185c <.LBB1_183+0x44>
80001888: 6f 00 90 2d  	j	0x80002360 <.LBB1_124+0x3b0>
;     flags = 0U;
8000188c: 13 04 00 00  	mv	s0, zero
80001890: 6f 00 00 01  	j	0x800018a0 <.LBB1_9+0x8>

80001894 <.LBB1_8>:
80001894: 93 05 00 01  	addi	a1, zero, 16

80001898 <.LBB1_9>:
80001898: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
8000189c: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800018a0: 03 45 fd ff  	lbu	a0, -1(s10)
800018a4: 93 05 05 fe  	addi	a1, a0, -32
800018a8: 63 ec bd 02  	bltu	s11, a1, 0x800018e0 <.LBB1_15>
800018ac: 93 95 25 00  	slli	a1, a1, 2

800018b0 <.LBB1_184>:
800018b0: 17 26 00 00  	auipc	a2, 2
800018b4: 13 06 86 20  	addi	a2, a2, 520
800018b8: b3 85 c5 00  	add	a1, a1, a2
800018bc: 03 a6 05 00  	lw	a2, 0(a1)
800018c0: 93 05 10 00  	addi	a1, zero, 1
800018c4: 67 00 06 00  	jr	a2

800018c8 <.LBB1_12>:
800018c8: 93 05 80 00  	addi	a1, zero, 8
800018cc: 6f f0 df fc  	j	0x80001898 <.LBB1_9>

800018d0 <.LBB1_13>:
800018d0: 93 05 40 00  	addi	a1, zero, 4
800018d4: 6f f0 5f fc  	j	0x80001898 <.LBB1_9>

800018d8 <.LBB1_14>:
800018d8: 93 05 20 00  	addi	a1, zero, 2
800018dc: 6f f0 df fb  	j	0x80001898 <.LBB1_9>

800018e0 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800018e0: 93 05 05 fd  	addi	a1, a0, -48
800018e4: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800018e8: 93 05 fd ff  	addi	a1, s10, -1
800018ec: 93 06 90 00  	addi	a3, zero, 9
800018f0: 63 ee c6 06  	bltu	a3, a2, 0x8000196c <.LBB1_15+0x8c>
800018f4: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800018f8: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800018fc: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001900: b3 06 8b 03  	mul	a3, s6, s8
80001904: 93 85 15 00  	addi	a1, a1, 1
80001908: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000190c: 93 06 05 fd  	addi	a3, a0, -48
80001910: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001914: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001918: e3 e0 86 ff  	bltu	a3, s8, 0x800018f8 <.LBB1_15+0x18>
8000191c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001920: 63 16 75 0b  	bne	a0, s7, 0x800019cc <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001924: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001928: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000192c: 93 05 05 fd  	addi	a1, a0, -48
80001930: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001934: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001938: 93 06 90 00  	addi	a3, zero, 9
8000193c: 63 e0 c6 06  	bltu	a3, a2, 0x8000199c <.LBB1_15+0xbc>
80001940: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001944: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001948: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000194c: b3 86 8b 03  	mul	a3, s7, s8
80001950: 93 85 15 00  	addi	a1, a1, 1
80001954: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001958: 93 06 05 fd  	addi	a3, a0, -48
8000195c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001960: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001964: e3 e0 86 ff  	bltu	a3, s8, 0x80001944 <.LBB1_15+0x64>
80001968: 6f 00 00 07  	j	0x800019d8 <.LBB1_15+0xf8>
;     else if (*format == '*') {
8000196c: 13 06 a0 02  	addi	a2, zero, 42
80001970: 63 18 c5 04  	bne	a0, a2, 0x800019c0 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001974: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001978: 63 d4 05 00  	bgez	a1, 0x80001980 <.LBB1_15+0xa0>
8000197c: 13 64 24 00  	ori	s0, s0, 2
80001980: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001984: 03 45 0d 00  	lbu	a0, 0(s10)
80001988: 13 d6 f5 41  	srai	a2, a1, 31
8000198c: b3 85 c5 00  	add	a1, a1, a2
80001990: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001994: e3 08 75 f9  	beq	a0, s7, 0x80001924 <.LBB1_15+0x44>
80001998: 6f 00 40 03  	j	0x800019cc <.LBB1_15+0xec>
;       else if (*format == '*') {
8000199c: 13 06 a0 02  	addi	a2, zero, 42
800019a0: 63 1a c5 02  	bne	a0, a2, 0x800019d4 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800019a4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800019a8: 63 44 70 01  	bgtz	s7, 0x800019b0 <.LBB1_15+0xd0>
800019ac: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800019b0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800019b4: 13 0d 2d 00  	addi	s10, s10, 2
800019b8: 93 89 49 00  	addi	s3, s3, 4
800019bc: 6f 00 00 02  	j	0x800019dc <.LBB1_15+0xfc>
800019c0: 13 0b 00 00  	mv	s6, zero
800019c4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800019c8: e3 0e 75 f5  	beq	a0, s7, 0x80001924 <.LBB1_15+0x44>
800019cc: 93 0b 00 00  	mv	s7, zero
800019d0: 6f 00 c0 00  	j	0x800019dc <.LBB1_15+0xfc>
800019d4: 93 0b 00 00  	mv	s7, zero
800019d8: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800019dc: 93 05 85 f9  	addi	a1, a0, -104
800019e0: 13 d6 15 00  	srli	a2, a1, 1
800019e4: 93 95 f5 01  	slli	a1, a1, 31
800019e8: b3 e5 c5 00  	or	a1, a1, a2
800019ec: 13 06 90 00  	addi	a2, zero, 9
800019f0: 63 62 b6 06  	bltu	a2, a1, 0x80001a54 <.LBB1_42>
800019f4: 93 95 25 00  	slli	a1, a1, 2

800019f8 <.LBB1_185>:
800019f8: 17 26 00 00  	auipc	a2, 2
800019fc: 13 06 46 10  	addi	a2, a2, 260
80001a00: b3 85 c5 00  	add	a1, a1, a2
80001a04: 83 a6 05 00  	lw	a3, 0(a1)
80001a08: 93 05 10 00  	addi	a1, zero, 1
80001a0c: 13 06 00 10  	addi	a2, zero, 256
80001a10: 67 80 06 00  	jr	a3

80001a14 <.LBB1_36>:
;         if (*format == 'h') {
80001a14: 03 45 1d 00  	lbu	a0, 1(s10)
80001a18: 93 05 80 06  	addi	a1, zero, 104
80001a1c: 63 12 b5 12  	bne	a0, a1, 0x80001b40 <.LBB1_53+0x48>
80001a20: 93 05 20 00  	addi	a1, zero, 2
80001a24: 13 06 00 0c  	addi	a2, zero, 192
80001a28: 6f 00 00 02  	j	0x80001a48 <.LBB1_41>

80001a2c <.LBB1_38>:
80001a2c: 13 06 00 20  	addi	a2, zero, 512
80001a30: 6f 00 80 01  	j	0x80001a48 <.LBB1_41>

80001a34 <.LBB1_39>:
;         if (*format == 'l') {
80001a34: 03 45 1d 00  	lbu	a0, 1(s10)
80001a38: 93 05 c0 06  	addi	a1, zero, 108
80001a3c: 63 18 b5 10  	bne	a0, a1, 0x80001b4c <.LBB1_53+0x54>
80001a40: 93 05 20 00  	addi	a1, zero, 2
80001a44: 13 06 00 30  	addi	a2, zero, 768

80001a48 <.LBB1_41>:
80001a48: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001a4c: 03 45 0d 00  	lbu	a0, 0(s10)
80001a50: 33 64 c4 00  	or	s0, s0, a2

80001a54 <.LBB1_42>:
;     switch (*format) {
80001a54: 93 05 b5 fd  	addi	a1, a0, -37
80001a58: 13 06 30 05  	addi	a2, zero, 83
80001a5c: 63 64 b6 10  	bltu	a2, a1, 0x80001b64 <.LBB1_59>
80001a60: 93 95 25 00  	slli	a1, a1, 2

80001a64 <.LBB1_186>:
80001a64: 17 26 00 00  	auipc	a2, 2
80001a68: 13 06 06 0c  	addi	a2, a2, 192
80001a6c: b3 85 c5 00  	add	a1, a1, a2
80001a70: 03 a6 05 00  	lw	a2, 0(a1)
80001a74: 93 05 80 00  	addi	a1, zero, 8
80001a78: 13 0c 00 01  	addi	s8, zero, 16
80001a7c: 67 00 06 00  	jr	a2

80001a80 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001a80: 13 74 f4 fe  	andi	s0, s0, -17
80001a84: 13 0c a0 00  	addi	s8, zero, 10

80001a88 <.LBB1_45>:
;         if (*format == 'X') {
80001a88: 93 05 80 05  	addi	a1, zero, 88
80001a8c: 63 14 b5 00  	bne	a0, a1, 0x80001a94 <.LBB1_45+0xc>
80001a90: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001a94: 93 05 40 06  	addi	a1, zero, 100
80001a98: 63 08 b5 0e  	beq	a0, a1, 0x80001b88 <.LBB1_62+0x8>
80001a9c: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001aa0: 13 06 90 06  	addi	a2, zero, 105
80001aa4: 63 02 c5 0e  	beq	a0, a2, 0x80001b88 <.LBB1_62+0x8>
80001aa8: 6f 00 80 0d  	j	0x80001b80 <.LBB1_62>

80001aac <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001aac: 93 05 60 04  	addi	a1, zero, 70
80001ab0: 63 14 b5 00  	bne	a0, a1, 0x80001ab8 <.LBB1_49+0xc>
80001ab4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001ab8: 13 85 79 00  	addi	a0, s3, 7
80001abc: 13 75 85 ff  	andi	a0, a0, -8
80001ac0: 07 35 05 00  	fld	fa0, 0(a0)
80001ac4: 93 09 85 00  	addi	s3, a0, 8
80001ac8: 13 05 09 00  	mv	a0, s2
80001acc: 93 05 0a 00  	mv	a1, s4
80001ad0: 13 86 0c 00  	mv	a2, s9
80001ad4: 93 86 0a 00  	mv	a3, s5
80001ad8: 13 87 0b 00  	mv	a4, s7
80001adc: 93 07 0b 00  	mv	a5, s6
80001ae0: 13 08 04 00  	mv	a6, s0
80001ae4: 97 10 00 00  	auipc	ra, 1
80001ae8: e7 80 80 98  	jalr	-1656(ra)
80001aec: 6f 00 00 7c  	j	0x800022ac <.LBB1_124+0x2fc>

80001af0 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001af0: 83 25 81 01  	lw	a1, 24(sp)
80001af4: 33 64 b4 00  	or	s0, s0, a1

80001af8 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001af8: 13 65 25 00  	ori	a0, a0, 2
80001afc: 93 05 70 04  	addi	a1, zero, 71
80001b00: 63 14 b5 00  	bne	a0, a1, 0x80001b08 <.LBB1_53+0x10>
80001b04: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001b08: 13 85 79 00  	addi	a0, s3, 7
80001b0c: 13 75 85 ff  	andi	a0, a0, -8
80001b10: 07 35 05 00  	fld	fa0, 0(a0)
80001b14: 93 09 85 00  	addi	s3, a0, 8
80001b18: 13 05 09 00  	mv	a0, s2
80001b1c: 93 05 0a 00  	mv	a1, s4
80001b20: 13 86 0c 00  	mv	a2, s9
80001b24: 93 86 0a 00  	mv	a3, s5
80001b28: 13 87 0b 00  	mv	a4, s7
80001b2c: 93 07 0b 00  	mv	a5, s6
80001b30: 13 08 04 00  	mv	a6, s0
80001b34: 97 10 00 00  	auipc	ra, 1
80001b38: e7 80 80 01  	jalr	24(ra)
80001b3c: 6f 00 00 77  	j	0x800022ac <.LBB1_124+0x2fc>
80001b40: 13 64 04 08  	ori	s0, s0, 128
80001b44: 13 0d 1d 00  	addi	s10, s10, 1
80001b48: 6f f0 df f0  	j	0x80001a54 <.LBB1_42>
80001b4c: 13 64 04 10  	ori	s0, s0, 256
80001b50: 13 0d 1d 00  	addi	s10, s10, 1
80001b54: 6f f0 1f f0  	j	0x80001a54 <.LBB1_42>

80001b58 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001b58: 13 8c 1c 00  	addi	s8, s9, 1
80001b5c: 13 05 50 02  	addi	a0, zero, 37
80001b60: 6f 00 80 00  	j	0x80001b68 <.LBB1_59+0x4>

80001b64 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80001b64: 13 8c 1c 00  	addi	s8, s9, 1
80001b68: 93 05 0a 00  	mv	a1, s4
80001b6c: 13 86 0c 00  	mv	a2, s9
80001b70: 93 86 0a 00  	mv	a3, s5
80001b74: e7 00 09 00  	jalr	s2
80001b78: 6f 00 80 73  	j	0x800022b0 <.LBB1_124+0x300>

80001b7c <.LBB1_61>:
80001b7c: 93 05 20 00  	addi	a1, zero, 2

80001b80 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001b80: 13 74 34 ff  	andi	s0, s0, -13
80001b84: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001b88: 93 75 04 40  	andi	a1, s0, 1024
80001b8c: 63 84 05 00  	beqz	a1, 0x80001b94 <.LBB1_62+0x14>
80001b90: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80001b94: 93 05 90 06  	addi	a1, zero, 105
80001b98: 63 06 b5 00  	beq	a0, a1, 0x80001ba4 <.LBB1_62+0x24>
80001b9c: 93 05 40 06  	addi	a1, zero, 100
80001ba0: 63 1c b5 12  	bne	a0, a1, 0x80001cd8 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80001ba4: 13 75 04 20  	andi	a0, s0, 512
80001ba8: 63 16 05 02  	bnez	a0, 0x80001bd4 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001bac: 13 75 04 10  	andi	a0, s0, 256
80001bb0: 63 1c 05 14  	bnez	a0, 0x80001d08 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001bb4: 13 75 04 04  	andi	a0, s0, 64
80001bb8: 63 18 05 4e  	bnez	a0, 0x800020a8 <.LBB1_124+0xf8>
80001bbc: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001bc0: 93 75 04 08  	andi	a1, s0, 128
80001bc4: 63 84 05 4e  	beqz	a1, 0x800020ac <.LBB1_124+0xfc>
80001bc8: 13 15 08 01  	slli	a0, a6, 16
80001bcc: 13 58 05 41  	srai	a6, a0, 16
80001bd0: 6f 00 c0 4d  	j	0x800020ac <.LBB1_124+0xfc>
80001bd4: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001bd8: 13 85 79 00  	addi	a0, s3, 7
80001bdc: 13 75 85 ff  	andi	a0, a0, -8
80001be0: 83 29 05 00  	lw	s3, 0(a0)
80001be4: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001be8: 13 65 45 00  	ori	a0, a0, 4
80001bec: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001bf0: 23 24 a1 00  	sw	a0, 8(sp)
80001bf4: 33 e5 a9 00  	or	a0, s3, a0
80001bf8: 63 14 05 00  	bnez	a0, 0x80001c00 <.LBB1_62+0x80>
80001bfc: 13 74 f4 fe  	andi	s0, s0, -17
80001c00: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001c04: 93 75 04 40  	andi	a1, s0, 1024
80001c08: 93 d5 a5 00  	srli	a1, a1, 10
80001c0c: 33 75 b5 00  	and	a0, a0, a1
80001c10: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001c14: 63 14 05 0a  	bnez	a0, 0x80001cbc <.LBB1_62+0x13c>
80001c18: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001c1c: 63 da 04 00  	bgez	s1, 0x80001c30 <.LBB1_62+0xb0>
80001c20: 33 35 30 01  	snez	a0, s3
80001c24: b3 09 30 41  	neg	s3, s3
80001c28: 33 85 a4 00  	add	a0, s1, a0
80001c2c: b3 04 a0 40  	neg	s1, a0
80001c30: 13 09 00 00  	mv	s2, zero
80001c34: 13 75 04 02  	andi	a0, s0, 32
80001c38: 13 45 15 06  	xori	a0, a0, 97
80001c3c: 13 05 65 0f  	addi	a0, a0, 246
80001c40: 23 2a a1 00  	sw	a0, 20(sp)
80001c44: 6f 00 40 02  	j	0x80001c68 <.LBB1_62+0xe8>
80001c48: 13 06 10 00  	addi	a2, zero, 1
80001c4c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001c50: 93 36 f9 01  	sltiu	a3, s2, 31
80001c54: 33 f6 c6 00  	and	a2, a3, a2
80001c58: 13 89 07 00  	mv	s2, a5
80001c5c: 93 09 05 00  	mv	s3, a0
80001c60: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001c64: 63 0c 06 04  	beqz	a2, 0x80001cbc <.LBB1_62+0x13c>
;       value /= base;
80001c68: 13 85 09 00  	mv	a0, s3
80001c6c: 93 85 04 00  	mv	a1, s1
80001c70: 13 06 0c 00  	mv	a2, s8
80001c74: 93 06 00 00  	mv	a3, zero
80001c78: 97 e0 ff ff  	auipc	ra, 1048574
80001c7c: e7 80 80 38  	jalr	904(ra)
80001c80: 33 06 85 03  	mul	a2, a0, s8
80001c84: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001c88: 13 77 e6 0f  	andi	a4, a2, 254
80001c8c: 93 06 00 03  	addi	a3, zero, 48
80001c90: 93 07 a0 00  	addi	a5, zero, 10
80001c94: 63 64 f7 00  	bltu	a4, a5, 0x80001c9c <.LBB1_62+0x11c>
80001c98: 83 26 41 01  	lw	a3, 20(sp)
80001c9c: 33 86 c6 00  	add	a2, a3, a2
80001ca0: 93 06 c1 01  	addi	a3, sp, 28
80001ca4: b3 86 26 01  	add	a3, a3, s2
80001ca8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001cac: e3 9e 04 f8  	bnez	s1, 0x80001c48 <.LBB1_62+0xc8>
80001cb0: 33 b6 89 01  	sltu	a2, s3, s8
80001cb4: 13 46 16 00  	xori	a2, a2, 1
80001cb8: 6f f0 5f f9  	j	0x80001c4c <.LBB1_62+0xcc>
80001cbc: 03 25 41 00  	lw	a0, 4(sp)
80001cc0: 93 09 85 00  	addi	s3, a0, 8
80001cc4: 03 25 81 00  	lw	a0, 8(sp)
80001cc8: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001ccc: 13 07 c1 01  	addi	a4, sp, 28
80001cd0: 03 29 c1 00  	lw	s2, 12(sp)
80001cd4: 6f 00 80 47  	j	0x8000214c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001cd8: 13 75 04 20  	andi	a0, s0, 512
80001cdc: 63 12 05 0c  	bnez	a0, 0x80001da0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001ce0: 13 75 04 10  	andi	a0, s0, 256
80001ce4: 63 1e 05 46  	bnez	a0, 0x80002160 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001ce8: 13 75 04 04  	andi	a0, s0, 64
80001cec: 63 10 05 50  	bnez	a0, 0x800021ec <.LBB1_124+0x23c>
80001cf0: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001cf4: 93 75 04 08  	andi	a1, s0, 128
80001cf8: 63 8c 05 4e  	beqz	a1, 0x800021f0 <.LBB1_124+0x240>
80001cfc: 83 25 01 01  	lw	a1, 16(sp)
80001d00: 33 75 b5 00  	and	a0, a0, a1
80001d04: 6f 00 c0 4e  	j	0x800021f0 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80001d08: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001d0c: 63 14 08 00  	bnez	a6, 0x80001d14 <.LBB1_62+0x194>
80001d10: 13 74 f4 fe  	andi	s0, s0, -17
80001d14: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d18: 13 76 04 40  	andi	a2, s0, 1024
80001d1c: 13 56 a6 00  	srli	a2, a2, 10
80001d20: b3 f5 c5 00  	and	a1, a1, a2
80001d24: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001d28: 63 9c 05 40  	bnez	a1, 0x80002140 <.LBB1_124+0x190>
80001d2c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001d30: 13 56 f8 41  	srai	a2, a6, 31
80001d34: b3 06 c8 00  	add	a3, a6, a2
80001d38: b3 c6 c6 00  	xor	a3, a3, a2
80001d3c: 13 76 04 02  	andi	a2, s0, 32
80001d40: 13 46 16 06  	xori	a2, a2, 97
80001d44: 93 08 66 0f  	addi	a7, a2, 246
80001d48: 6f 00 40 03  	j	0x80001d7c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d4c: 33 05 f6 00  	add	a0, a2, a5
80001d50: 93 87 15 00  	addi	a5, a1, 1
80001d54: 13 06 c1 01  	addi	a2, sp, 28
80001d58: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d5c: b3 b6 86 01  	sltu	a3, a3, s8
80001d60: 93 c6 16 00  	xori	a3, a3, 1
80001d64: 93 b5 f5 01  	sltiu	a1, a1, 31
80001d68: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d6c: 23 00 a6 00  	sb	a0, 0(a2)
80001d70: 93 85 07 00  	mv	a1, a5
80001d74: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001d78: 63 84 04 3c  	beqz	s1, 0x80002140 <.LBB1_124+0x190>
;       value /= base;
80001d7c: 33 d7 86 03  	divu	a4, a3, s8
80001d80: 33 06 87 03  	mul	a2, a4, s8
80001d84: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001d88: 13 f5 e7 0f  	andi	a0, a5, 254
80001d8c: 13 06 00 03  	addi	a2, zero, 48
80001d90: 93 04 a0 00  	addi	s1, zero, 10
80001d94: e3 6c 95 fa  	bltu	a0, s1, 0x80001d4c <.LBB1_62+0x1cc>
80001d98: 13 86 08 00  	mv	a2, a7
80001d9c: 6f f0 1f fb  	j	0x80001d4c <.LBB1_62+0x1cc>
80001da0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80001da4: 13 85 79 00  	addi	a0, s3, 7
80001da8: 93 75 85 ff  	andi	a1, a0, -8
80001dac: 03 a9 05 00  	lw	s2, 0(a1)
80001db0: 13 e5 45 00  	ori	a0, a1, 4
80001db4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001db8: 33 65 39 01  	or	a0, s2, s3
80001dbc: 23 24 b1 00  	sw	a1, 8(sp)
80001dc0: 63 14 05 00  	bnez	a0, 0x80001dc8 <.LBB1_62+0x248>
80001dc4: 13 74 f4 fe  	andi	s0, s0, -17
80001dc8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001dcc: 93 75 04 40  	andi	a1, s0, 1024
80001dd0: 93 d5 a5 00  	srli	a1, a1, 10
80001dd4: 33 75 b5 00  	and	a0, a0, a1
80001dd8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001ddc: 63 18 05 08  	bnez	a0, 0x80001e6c <.LBB1_62+0x2ec>
80001de0: 93 04 00 00  	mv	s1, zero
80001de4: 13 75 04 02  	andi	a0, s0, 32
80001de8: 13 45 15 06  	xori	a0, a0, 97
80001dec: 13 05 65 0f  	addi	a0, a0, 246
80001df0: 23 2a a1 00  	sw	a0, 20(sp)
80001df4: 6f 00 40 02  	j	0x80001e18 <.LBB1_62+0x298>
80001df8: 13 06 10 00  	addi	a2, zero, 1
80001dfc: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e00: 93 b6 f4 01  	sltiu	a3, s1, 31
80001e04: 33 f6 c6 00  	and	a2, a3, a2
80001e08: 93 84 07 00  	mv	s1, a5
80001e0c: 13 09 05 00  	mv	s2, a0
80001e10: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e14: 63 0c 06 04  	beqz	a2, 0x80001e6c <.LBB1_62+0x2ec>
;       value /= base;
80001e18: 13 05 09 00  	mv	a0, s2
80001e1c: 93 85 09 00  	mv	a1, s3
80001e20: 13 06 0c 00  	mv	a2, s8
80001e24: 93 06 00 00  	mv	a3, zero
80001e28: 97 e0 ff ff  	auipc	ra, 1048574
80001e2c: e7 80 80 1d  	jalr	472(ra)
80001e30: 33 06 85 03  	mul	a2, a0, s8
80001e34: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e38: 13 77 e6 0f  	andi	a4, a2, 254
80001e3c: 93 06 00 03  	addi	a3, zero, 48
80001e40: 93 07 a0 00  	addi	a5, zero, 10
80001e44: 63 64 f7 00  	bltu	a4, a5, 0x80001e4c <.LBB1_62+0x2cc>
80001e48: 83 26 41 01  	lw	a3, 20(sp)
80001e4c: 33 86 c6 00  	add	a2, a3, a2
80001e50: 93 06 c1 01  	addi	a3, sp, 28
80001e54: b3 86 96 00  	add	a3, a3, s1
80001e58: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e5c: e3 9e 09 f8  	bnez	s3, 0x80001df8 <.LBB1_62+0x278>
80001e60: 33 36 89 01  	sltu	a2, s2, s8
80001e64: 13 46 16 00  	xori	a2, a2, 1
80001e68: 6f f0 5f f9  	j	0x80001dfc <.LBB1_62+0x27c>
80001e6c: 03 25 81 00  	lw	a0, 8(sp)
80001e70: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001e74: 13 07 c1 01  	addi	a4, sp, 28
80001e78: 03 29 c1 00  	lw	s2, 12(sp)
80001e7c: 6f 00 40 40  	j	0x80002280 <.LBB1_124+0x2d0>

80001e80 <.LBB1_108>:
80001e80: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001e84: 13 79 24 00  	andi	s2, s0, 2
80001e88: 93 04 10 00  	addi	s1, zero, 1
80001e8c: 63 1e 09 02  	bnez	s2, 0x80001ec8 <.LBB1_108+0x48>
80001e90: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001e94: 63 6a 9b 02  	bltu	s6, s1, 0x80001ec8 <.LBB1_108+0x48>
80001e98: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80001e9c: 13 0c fb ff  	addi	s8, s6, -1
80001ea0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80001ea4: 33 86 8c 00  	add	a2, s9, s0
80001ea8: 13 05 00 02  	addi	a0, zero, 32
80001eac: 93 05 0a 00  	mv	a1, s4
80001eb0: 93 86 0a 00  	mv	a3, s5
80001eb4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001eb8: 13 04 14 00  	addi	s0, s0, 1
80001ebc: e3 14 8c fe  	bne	s8, s0, 0x80001ea4 <.LBB1_108+0x24>
80001ec0: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001ec4: b3 8c 8c 00  	add	s9, s9, s0
80001ec8: 03 c5 09 00  	lbu	a0, 0(s3)
80001ecc: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001ed0: 93 89 49 00  	addi	s3, s3, 4
80001ed4: 13 8c 1c 00  	addi	s8, s9, 1
80001ed8: 93 05 0a 00  	mv	a1, s4
80001edc: 13 86 0c 00  	mv	a2, s9
80001ee0: 93 86 0a 00  	mv	a3, s5
80001ee4: 13 89 0b 00  	mv	s2, s7
80001ee8: e7 80 0b 00  	jalr	s7
80001eec: 33 b5 64 01  	sltu	a0, s1, s6
80001ef0: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001ef4: 33 65 a4 00  	or	a0, s0, a0
80001ef8: 63 1c 05 3a  	bnez	a0, 0x800022b0 <.LBB1_124+0x300>
;           while (l++ < width) {
80001efc: 33 04 9b 40  	sub	s0, s6, s1
80001f00: 93 0b e0 02  	addi	s7, zero, 46
80001f04: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001f08: 13 0c 1c 00  	addi	s8, s8, 1
80001f0c: 13 05 00 02  	addi	a0, zero, 32
80001f10: 93 05 0a 00  	mv	a1, s4
80001f14: 93 86 0a 00  	mv	a3, s5
80001f18: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001f1c: 13 04 f4 ff  	addi	s0, s0, -1
80001f20: e3 12 04 fe  	bnez	s0, 0x80001f04 <.LBB1_108+0x84>
80001f24: 13 0b 50 02  	addi	s6, zero, 37
80001f28: 13 04 1d 00  	addi	s0, s10, 1
80001f2c: 6f f0 df 91  	j	0x80001848 <.LBB1_183+0x30>

80001f30 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001f30: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001f34: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80001f38: 63 14 05 00  	bnez	a0, 0x80001f40 <.LBB1_117+0x10>
80001f3c: 93 fe fe fe  	andi	t4, t4, -17
80001f40: 93 04 a0 00  	addi	s1, zero, 10
80001f44: 13 04 f0 00  	addi	s0, zero, 15
80001f48: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f4c: 13 f6 0e 40  	andi	a2, t4, 1024
80001f50: 13 56 a6 00  	srli	a2, a2, 10
80001f54: b3 f5 c5 00  	and	a1, a1, a2
80001f58: 93 07 00 00  	mv	a5, zero
80001f5c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001f60: 63 98 05 10  	bnez	a1, 0x80002070 <.LBB1_124+0xc0>
80001f64: 93 05 00 00  	mv	a1, zero
80001f68: 6f 00 40 03  	j	0x80001f9c <.LBB1_117+0x6c>
80001f6c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f70: 33 06 d6 00  	add	a2, a2, a3
80001f74: 93 87 15 00  	addi	a5, a1, 1
80001f78: 93 06 c1 01  	addi	a3, sp, 28
80001f7c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f80: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001f84: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f88: 93 b5 f5 01  	sltiu	a1, a1, 31
80001f8c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f90: 23 80 c6 00  	sb	a2, 0(a3)
80001f94: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001f98: 63 0c 07 0c  	beqz	a4, 0x80002070 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001f9c: 93 76 e5 00  	andi	a3, a0, 14
80001fa0: 13 06 00 03  	addi	a2, zero, 48
80001fa4: e3 e4 96 fc  	bltu	a3, s1, 0x80001f6c <.LBB1_117+0x3c>
80001fa8: 13 06 70 03  	addi	a2, zero, 55
80001fac: 6f f0 1f fc  	j	0x80001f6c <.LBB1_117+0x3c>

80001fb0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001fb0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80001fb4: 03 c5 07 00  	lbu	a0, 0(a5)
80001fb8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001fbc: 63 0c 05 02  	beqz	a0, 0x80001ff4 <.LBB1_124+0x44>
80001fc0: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001fc4: 63 84 0b 00  	beqz	s7, 0x80001fcc <.LBB1_124+0x1c>
80001fc8: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001fcc: 93 85 f5 ff  	addi	a1, a1, -1
80001fd0: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001fd4: 03 c7 16 00  	lbu	a4, 1(a3)
80001fd8: 13 86 16 00  	addi	a2, a3, 1
80001fdc: b3 36 e0 00  	snez	a3, a4
80001fe0: 33 37 b0 00  	snez	a4, a1
80001fe4: 33 77 d7 00  	and	a4, a4, a3
80001fe8: 93 85 f5 ff  	addi	a1, a1, -1
80001fec: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001ff0: e3 12 07 fe  	bnez	a4, 0x80001fd4 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001ff4: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80001ff8: 93 75 04 40  	andi	a1, s0, 1024
80001ffc: 93 b4 15 00  	seqz	s1, a1
80002000: 23 2a c1 00  	sw	a2, 20(sp)
80002004: b3 35 76 01  	sltu	a1, a2, s7
80002008: b3 e5 b4 00  	or	a1, s1, a1
8000200c: 63 94 05 00  	bnez	a1, 0x80002014 <.LBB1_124+0x64>
80002010: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80002014: 93 75 24 00  	andi	a1, s0, 2
80002018: 23 26 b1 00  	sw	a1, 12(sp)
8000201c: 63 96 05 2a  	bnez	a1, 0x800022c8 <.LBB1_124+0x318>
80002020: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80002024: 63 fe 65 29  	bgeu	a1, s6, 0x800022c0 <.LBB1_124+0x310>
80002028: 23 24 f1 00  	sw	a5, 8(sp)
8000202c: 13 04 00 00  	mv	s0, zero
80002030: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80002034: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80002038: 33 86 8c 00  	add	a2, s9, s0
8000203c: 13 05 00 02  	addi	a0, zero, 32
80002040: 93 05 0a 00  	mv	a1, s4
80002044: 93 86 0a 00  	mv	a3, s5
80002048: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000204c: 13 04 14 00  	addi	s0, s0, 1
80002050: e3 14 89 fe  	bne	s2, s0, 0x80002038 <.LBB1_124+0x88>
80002054: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002058: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000205c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002060: 23 2a b1 00  	sw	a1, 20(sp)
80002064: b3 8c 8c 00  	add	s9, s9, s0
80002068: 13 09 0c 00  	mv	s2, s8
8000206c: 6f 00 c0 25  	j	0x800022c8 <.LBB1_124+0x318>
80002070: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002074: 13 07 c1 01  	addi	a4, sp, 28
80002078: 93 08 00 01  	addi	a7, zero, 16
8000207c: 13 0e 80 00  	addi	t3, zero, 8
80002080: 13 05 09 00  	mv	a0, s2
80002084: 93 05 0a 00  	mv	a1, s4
80002088: 13 86 0c 00  	mv	a2, s9
8000208c: 93 86 0a 00  	mv	a3, s5
80002090: 13 08 00 00  	mv	a6, zero
80002094: 93 83 0b 00  	mv	t2, s7
80002098: 97 10 00 00  	auipc	ra, 1
8000209c: e7 80 00 fa  	jalr	-96(ra)
800020a0: 13 0c 05 00  	mv	s8, a0
800020a4: 6f 00 00 21  	j	0x800022b4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800020a8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800020ac: 63 14 08 00  	bnez	a6, 0x800020b4 <.LBB1_124+0x104>
800020b0: 13 74 f4 fe  	andi	s0, s0, -17
800020b4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800020b8: 13 76 04 40  	andi	a2, s0, 1024
800020bc: 13 56 a6 00  	srli	a2, a2, 10
800020c0: b3 f5 c5 00  	and	a1, a1, a2
800020c4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800020c8: 63 9c 05 06  	bnez	a1, 0x80002140 <.LBB1_124+0x190>
800020cc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800020d0: 13 56 f8 41  	srai	a2, a6, 31
800020d4: b3 06 c8 00  	add	a3, a6, a2
800020d8: b3 c6 c6 00  	xor	a3, a3, a2
800020dc: 13 76 04 02  	andi	a2, s0, 32
800020e0: 13 46 16 06  	xori	a2, a2, 97
800020e4: 93 08 66 0f  	addi	a7, a2, 246
800020e8: 6f 00 40 03  	j	0x8000211c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800020ec: 33 05 f6 00  	add	a0, a2, a5
800020f0: 93 87 15 00  	addi	a5, a1, 1
800020f4: 13 06 c1 01  	addi	a2, sp, 28
800020f8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800020fc: b3 b6 86 01  	sltu	a3, a3, s8
80002100: 93 c6 16 00  	xori	a3, a3, 1
80002104: 93 b5 f5 01  	sltiu	a1, a1, 31
80002108: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000210c: 23 00 a6 00  	sb	a0, 0(a2)
80002110: 93 85 07 00  	mv	a1, a5
80002114: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002118: 63 84 04 02  	beqz	s1, 0x80002140 <.LBB1_124+0x190>
;       value /= base;
8000211c: 33 d7 86 03  	divu	a4, a3, s8
80002120: 33 06 87 03  	mul	a2, a4, s8
80002124: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002128: 13 f5 e7 0f  	andi	a0, a5, 254
8000212c: 13 06 00 03  	addi	a2, zero, 48
80002130: 93 04 a0 00  	addi	s1, zero, 10
80002134: e3 6c 95 fa  	bltu	a0, s1, 0x800020ec <.LBB1_124+0x13c>
80002138: 13 86 08 00  	mv	a2, a7
8000213c: 6f f0 1f fb  	j	0x800020ec <.LBB1_124+0x13c>
80002140: 93 89 49 00  	addi	s3, s3, 4
80002144: 13 58 f8 01  	srli	a6, a6, 31
80002148: 13 07 c1 01  	addi	a4, sp, 28
8000214c: 13 05 09 00  	mv	a0, s2
80002150: 93 05 0a 00  	mv	a1, s4
80002154: 13 86 0c 00  	mv	a2, s9
80002158: 93 86 0a 00  	mv	a3, s5
8000215c: 6f 00 80 13  	j	0x80002294 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80002160: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80002164: 63 14 05 00  	bnez	a0, 0x8000216c <.LBB1_124+0x1bc>
80002168: 13 74 f4 fe  	andi	s0, s0, -17
8000216c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002170: 13 76 04 40  	andi	a2, s0, 1024
80002174: 13 56 a6 00  	srli	a2, a2, 10
80002178: b3 f5 c5 00  	and	a1, a1, a2
8000217c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002180: 63 9c 05 0e  	bnez	a1, 0x80002278 <.LBB1_124+0x2c8>
80002184: 13 06 00 00  	mv	a2, zero
80002188: 93 75 04 02  	andi	a1, s0, 32
8000218c: 93 c5 15 06  	xori	a1, a1, 97
80002190: 13 88 65 0f  	addi	a6, a1, 246
80002194: 6f 00 40 03  	j	0x800021c8 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002198: 33 87 e7 00  	add	a4, a5, a4
8000219c: 93 07 16 00  	addi	a5, a2, 1
800021a0: 93 05 c1 01  	addi	a1, sp, 28
800021a4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800021a8: 33 35 85 01  	sltu	a0, a0, s8
800021ac: 13 45 15 00  	xori	a0, a0, 1
800021b0: 13 36 f6 01  	sltiu	a2, a2, 31
800021b4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800021b8: 23 80 e4 00  	sb	a4, 0(s1)
800021bc: 13 86 07 00  	mv	a2, a5
800021c0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800021c4: 63 8a 05 0a  	beqz	a1, 0x80002278 <.LBB1_124+0x2c8>
;       value /= base;
800021c8: b3 56 85 03  	divu	a3, a0, s8
800021cc: 33 87 86 03  	mul	a4, a3, s8
800021d0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800021d4: 93 74 e7 0f  	andi	s1, a4, 254
800021d8: 93 07 00 03  	addi	a5, zero, 48
800021dc: 93 05 a0 00  	addi	a1, zero, 10
800021e0: e3 ec b4 fa  	bltu	s1, a1, 0x80002198 <.LBB1_124+0x1e8>
800021e4: 93 07 08 00  	mv	a5, a6
800021e8: 6f f0 1f fb  	j	0x80002198 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800021ec: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800021f0: 63 14 05 00  	bnez	a0, 0x800021f8 <.LBB1_124+0x248>
800021f4: 13 74 f4 fe  	andi	s0, s0, -17
800021f8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800021fc: 13 76 04 40  	andi	a2, s0, 1024
80002200: 13 56 a6 00  	srli	a2, a2, 10
80002204: b3 f5 c5 00  	and	a1, a1, a2
80002208: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000220c: 63 96 05 06  	bnez	a1, 0x80002278 <.LBB1_124+0x2c8>
80002210: 13 06 00 00  	mv	a2, zero
80002214: 93 75 04 02  	andi	a1, s0, 32
80002218: 93 c5 15 06  	xori	a1, a1, 97
8000221c: 13 88 65 0f  	addi	a6, a1, 246
80002220: 6f 00 40 03  	j	0x80002254 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002224: 33 87 e7 00  	add	a4, a5, a4
80002228: 93 07 16 00  	addi	a5, a2, 1
8000222c: 93 05 c1 01  	addi	a1, sp, 28
80002230: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002234: 33 35 85 01  	sltu	a0, a0, s8
80002238: 13 45 15 00  	xori	a0, a0, 1
8000223c: 13 36 f6 01  	sltiu	a2, a2, 31
80002240: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002244: 23 80 e4 00  	sb	a4, 0(s1)
80002248: 13 86 07 00  	mv	a2, a5
8000224c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002250: 63 84 05 02  	beqz	a1, 0x80002278 <.LBB1_124+0x2c8>
;       value /= base;
80002254: b3 56 85 03  	divu	a3, a0, s8
80002258: 33 87 86 03  	mul	a4, a3, s8
8000225c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002260: 93 74 e7 0f  	andi	s1, a4, 254
80002264: 93 07 00 03  	addi	a5, zero, 48
80002268: 93 05 a0 00  	addi	a1, zero, 10
8000226c: e3 ec b4 fa  	bltu	s1, a1, 0x80002224 <.LBB1_124+0x274>
80002270: 93 07 08 00  	mv	a5, a6
80002274: 6f f0 1f fb  	j	0x80002224 <.LBB1_124+0x274>
80002278: 93 89 49 00  	addi	s3, s3, 4
8000227c: 13 07 c1 01  	addi	a4, sp, 28
80002280: 13 05 09 00  	mv	a0, s2
80002284: 93 05 0a 00  	mv	a1, s4
80002288: 13 86 0c 00  	mv	a2, s9
8000228c: 93 86 0a 00  	mv	a3, s5
80002290: 13 08 00 00  	mv	a6, zero
80002294: 93 08 0c 00  	mv	a7, s8
80002298: 93 83 0b 00  	mv	t2, s7
8000229c: 13 0e 0b 00  	mv	t3, s6
800022a0: 93 0e 04 00  	mv	t4, s0
800022a4: 97 10 00 00  	auipc	ra, 1
800022a8: e7 80 40 d9  	jalr	-620(ra)
800022ac: 13 0c 05 00  	mv	s8, a0
800022b0: 13 0b 50 02  	addi	s6, zero, 37
800022b4: 93 0b e0 02  	addi	s7, zero, 46
800022b8: 13 04 1d 00  	addi	s0, s10, 1
800022bc: 6f f0 cf d8  	j	0x80001848 <.LBB1_183+0x30>
800022c0: 93 85 15 00  	addi	a1, a1, 1
800022c4: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800022c8: 63 00 05 04  	beqz	a0, 0x80002308 <.LBB1_124+0x358>
800022cc: 13 84 17 00  	addi	s0, a5, 1
800022d0: 6f 00 00 03  	j	0x80002300 <.LBB1_124+0x350>
800022d4: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800022d8: 13 8c 1c 00  	addi	s8, s9, 1
800022dc: 13 75 f5 0f  	andi	a0, a0, 255
800022e0: 93 05 0a 00  	mv	a1, s4
800022e4: 13 86 0c 00  	mv	a2, s9
800022e8: 93 86 0a 00  	mv	a3, s5
800022ec: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800022f0: 03 45 04 00  	lbu	a0, 0(s0)
800022f4: 13 04 14 00  	addi	s0, s0, 1
800022f8: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800022fc: 63 08 05 00  	beqz	a0, 0x8000230c <.LBB1_124+0x35c>
80002300: e3 9c 04 fc  	bnez	s1, 0x800022d8 <.LBB1_124+0x328>
80002304: e3 98 0b fc  	bnez	s7, 0x800022d4 <.LBB1_124+0x324>
80002308: 13 8c 0c 00  	mv	s8, s9
8000230c: 03 25 c1 00  	lw	a0, 12(sp)
80002310: 13 35 15 00  	seqz	a0, a0
80002314: 03 26 41 01  	lw	a2, 20(sp)
80002318: b3 35 66 01  	sltu	a1, a2, s6
8000231c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80002320: 33 65 b5 00  	or	a0, a0, a1
80002324: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80002328: e3 14 05 f8  	bnez	a0, 0x800022b0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000232c: 33 04 cb 40  	sub	s0, s6, a2
80002330: 93 0b e0 02  	addi	s7, zero, 46
80002334: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80002338: 13 0c 1c 00  	addi	s8, s8, 1
8000233c: 13 05 00 02  	addi	a0, zero, 32
80002340: 93 05 0a 00  	mv	a1, s4
80002344: 93 86 0a 00  	mv	a3, s5
80002348: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000234c: 13 04 f4 ff  	addi	s0, s0, -1
80002350: e3 12 04 fe  	bnez	s0, 0x80002334 <.LBB1_124+0x384>
80002354: 13 0b 50 02  	addi	s6, zero, 37
80002358: 13 04 1d 00  	addi	s0, s10, 1
8000235c: 6f f0 cf ce  	j	0x80001848 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002360: 13 86 0c 00  	mv	a2, s9
80002364: 63 e4 5c 01  	bltu	s9, s5, 0x8000236c <.LBB1_124+0x3bc>
80002368: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000236c: 13 05 00 00  	mv	a0, zero
80002370: 93 05 0a 00  	mv	a1, s4
80002374: 93 86 0a 00  	mv	a3, s5
80002378: e7 00 09 00  	jalr	s2
;   return (int)idx;
8000237c: 13 85 0c 00  	mv	a0, s9
80002380: 83 2d c1 03  	lw	s11, 60(sp)
80002384: 03 2d 01 04  	lw	s10, 64(sp)
80002388: 83 2c 41 04  	lw	s9, 68(sp)
8000238c: 03 2c 81 04  	lw	s8, 72(sp)
80002390: 83 2b c1 04  	lw	s7, 76(sp)
80002394: 03 2b 01 05  	lw	s6, 80(sp)
80002398: 83 2a 41 05  	lw	s5, 84(sp)
8000239c: 03 2a 81 05  	lw	s4, 88(sp)
800023a0: 83 29 c1 05  	lw	s3, 92(sp)
800023a4: 03 29 01 06  	lw	s2, 96(sp)
800023a8: 83 24 41 06  	lw	s1, 100(sp)
800023ac: 03 24 81 06  	lw	s0, 104(sp)
800023b0: 83 20 c1 06  	lw	ra, 108(sp)
800023b4: 13 01 01 07  	addi	sp, sp, 112
800023b8: 67 80 00 00  	ret

800023bc <_out_char.llvm.11632292163828655644>:
;   if (character) {
800023bc: 63 04 05 0a  	beqz	a0, 0x80002464 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800023c0: f3 25 40 f1  	csrr	a1, mhartid
800023c4: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800023c8: 33 86 c5 02  	mul	a2, a1, a2

800023cc <.LBB2_6>:
800023cc: 97 26 00 00  	auipc	a3, 2
800023d0: 93 86 86 a4  	addi	a3, a3, -1464
800023d4: b3 05 d6 00  	add	a1, a2, a3
800023d8: 03 a7 05 00  	lw	a4, 0(a1)
800023dc: 93 07 17 00  	addi	a5, a4, 1
800023e0: 23 a0 f5 00  	sw	a5, 0(a1)
800023e4: 33 87 e5 00  	add	a4, a1, a4
800023e8: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800023ec: 03 a7 05 00  	lw	a4, 0(a1)
800023f0: 13 07 47 c0  	addi	a4, a4, -1020
800023f4: 33 37 e0 00  	snez	a4, a4
800023f8: 13 05 65 ff  	addi	a0, a0, -10
800023fc: 33 35 a0 00  	snez	a0, a0
80002400: 33 75 e5 00  	and	a0, a0, a4
80002404: 63 10 05 06  	bnez	a0, 0x80002464 <.LBB2_8+0x18>
80002408: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000240c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002410: 23 26 05 00  	sw	zero, 12(a0)
80002414: 93 06 00 04  	addi	a3, zero, 64
80002418: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000241c: 23 2a 05 00  	sw	zero, 20(a0)
80002420: 93 06 10 00  	addi	a3, zero, 1
80002424: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80002428: 23 2e 05 00  	sw	zero, 28(a0)
8000242c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002430: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002434: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002438: 23 22 05 02  	sw	zero, 36(a0)
8000243c: 23 20 c5 02  	sw	a2, 32(a0)

80002440 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80002440: 17 25 00 00  	auipc	a0, 2
80002444: 13 05 05 8c  	addi	a0, a0, -1856
80002448: 23 20 d5 00  	sw	a3, 0(a0)

8000244c <.LBB2_8>:
8000244c: 17 25 00 00  	auipc	a0, 2
80002450: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80002454: 03 26 05 00  	lw	a2, 0(a0)
80002458: e3 0e 06 fe  	beqz	a2, 0x80002454 <.LBB2_8+0x8>
;         fromhost = 0;
8000245c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80002460: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002464: 67 80 00 00  	ret

80002468 <_out_null>:
; }
80002468: 67 80 00 00  	ret

8000246c <_ftoa>:
; {
8000246c: 13 01 01 f9  	addi	sp, sp, -112
80002470: 23 26 11 06  	sw	ra, 108(sp)
80002474: 23 24 81 06  	sw	s0, 104(sp)
80002478: 23 22 91 06  	sw	s1, 100(sp)
8000247c: 23 20 21 07  	sw	s2, 96(sp)
80002480: 23 2e 31 05  	sw	s3, 92(sp)
80002484: 23 2c 41 05  	sw	s4, 88(sp)
80002488: 23 2a 51 05  	sw	s5, 84(sp)
8000248c: 23 28 61 05  	sw	s6, 80(sp)
80002490: 23 26 71 05  	sw	s7, 76(sp)
80002494: 23 24 81 05  	sw	s8, 72(sp)
80002498: 23 22 91 05  	sw	s9, 68(sp)
8000249c: 23 20 a1 05  	sw	s10, 64(sp)
800024a0: 27 3c 81 02  	fsd	fs0, 56(sp)
800024a4: 27 38 91 02  	fsd	fs1, 48(sp)
800024a8: 27 34 21 03  	fsd	fs2, 40(sp)

800024ac <.LBB4_83>:
800024ac: 97 24 00 00  	auipc	s1, 2
800024b0: 93 84 c4 8b  	addi	s1, s1, -1860
800024b4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800024b8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800024bc: 93 0a 08 00  	mv	s5, a6
800024c0: 13 89 07 00  	mv	s2, a5
800024c4: 93 89 06 00  	mv	s3, a3
800024c8: 13 0a 06 00  	mv	s4, a2
800024cc: 13 8b 05 00  	mv	s6, a1
800024d0: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800024d4: 63 98 04 0e  	bnez	s1, 0x800025c4 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800024d8: 13 f5 2a 00  	andi	a0, s5, 2
800024dc: 93 f5 3a 00  	andi	a1, s5, 3
800024e0: b3 35 b0 00  	snez	a1, a1
800024e4: 13 36 59 00  	sltiu	a2, s2, 5
800024e8: b3 65 b6 00  	or	a1, a2, a1
800024ec: 93 5c 15 00  	srli	s9, a0, 1
800024f0: 13 04 0a 00  	mv	s0, s4
800024f4: 63 96 05 02  	bnez	a1, 0x80002520 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800024f8: 93 04 c9 ff  	addi	s1, s2, -4
800024fc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002500: 13 04 16 00  	addi	s0, a2, 1
80002504: 13 05 00 02  	addi	a0, zero, 32
80002508: 93 05 0b 00  	mv	a1, s6
8000250c: 93 86 09 00  	mv	a3, s3
80002510: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002514: 93 84 f4 ff  	addi	s1, s1, -1
80002518: 13 06 04 00  	mv	a2, s0
8000251c: e3 92 04 fe  	bnez	s1, 0x80002500 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80002520: 93 04 14 00  	addi	s1, s0, 1
80002524: 13 05 d0 02  	addi	a0, zero, 45
80002528: 93 05 0b 00  	mv	a1, s6
8000252c: 13 06 04 00  	mv	a2, s0
80002530: 93 86 09 00  	mv	a3, s3
80002534: e7 80 0b 00  	jalr	s7
80002538: 93 0a 24 00  	addi	s5, s0, 2
8000253c: 13 05 90 06  	addi	a0, zero, 105
80002540: 93 05 0b 00  	mv	a1, s6
80002544: 13 86 04 00  	mv	a2, s1
80002548: 93 86 09 00  	mv	a3, s3
8000254c: e7 80 0b 00  	jalr	s7
80002550: 13 0c 34 00  	addi	s8, s0, 3
80002554: 13 05 e0 06  	addi	a0, zero, 110
80002558: 93 05 0b 00  	mv	a1, s6
8000255c: 13 86 0a 00  	mv	a2, s5
80002560: 93 86 09 00  	mv	a3, s3
80002564: e7 80 0b 00  	jalr	s7
80002568: 93 04 44 00  	addi	s1, s0, 4
8000256c: 13 05 60 06  	addi	a0, zero, 102
80002570: 93 05 0b 00  	mv	a1, s6
80002574: 13 06 0c 00  	mv	a2, s8
80002578: 93 86 09 00  	mv	a3, s3
8000257c: e7 80 0b 00  	jalr	s7
80002580: 33 85 44 41  	sub	a0, s1, s4
80002584: 33 35 25 01  	sltu	a0, a0, s2
80002588: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000258c: 93 c5 1c 00  	xori	a1, s9, 1
80002590: 33 e5 a5 00  	or	a0, a1, a0
80002594: 63 16 05 56  	bnez	a0, 0x80002b00 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002598: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000259c: 13 84 14 00  	addi	s0, s1, 1
800025a0: 13 05 00 02  	addi	a0, zero, 32
800025a4: 93 05 0b 00  	mv	a1, s6
800025a8: 13 86 04 00  	mv	a2, s1
800025ac: 93 86 09 00  	mv	a3, s3
800025b0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800025b4: 33 05 8a 00  	add	a0, s4, s0
800025b8: 93 04 04 00  	mv	s1, s0
800025bc: e3 60 25 ff  	bltu	a0, s2, 0x8000259c <.LBB4_83+0xf0>
800025c0: 6f 00 40 54  	j	0x80002b04 <.LBB4_90+0x378>
800025c4: 53 04 a5 22  	fmv.d	fs0, fa0

800025c8 <.LBB4_84>:
800025c8: 17 15 00 00  	auipc	a0, 1
800025cc: 13 05 85 7a  	addi	a0, a0, 1960
800025d0: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800025d4: 53 05 05 a2  	fle.d	a0, fa0, ft0
800025d8: 63 1e 05 00  	bnez	a0, 0x800025f4 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800025dc: 93 f5 4a 00  	andi	a1, s5, 4
800025e0: 13 b5 15 00  	seqz	a0, a1
800025e4: 63 82 05 06  	beqz	a1, 0x80002648 <.LBB4_88>

800025e8 <.LBB4_85>:
800025e8: 17 1c 00 00  	auipc	s8, 1
800025ec: 13 0c 8c 4b  	addi	s8, s8, 1208
800025f0: 6f 00 00 06  	j	0x80002650 <.LBB4_88+0x8>

800025f4 <.LBB4_86>:
800025f4: 17 15 00 00  	auipc	a0, 1
800025f8: 13 05 45 78  	addi	a0, a0, 1924
800025fc: 07 30 05 00  	fld	ft0, 0(a0)

80002600 <.LBB4_87>:
80002600: 17 15 00 00  	auipc	a0, 1
80002604: 13 05 05 78  	addi	a0, a0, 1920
80002608: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000260c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80002610: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002614: 33 75 b5 00  	and	a0, a0, a1
80002618: 63 1e 05 0e  	bnez	a0, 0x80002714 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000261c: 13 85 0b 00  	mv	a0, s7
80002620: 93 05 0b 00  	mv	a1, s6
80002624: 13 06 0a 00  	mv	a2, s4
80002628: 93 86 09 00  	mv	a3, s3
8000262c: 53 05 84 22  	fmv.d	fa0, fs0
80002630: 93 07 09 00  	mv	a5, s2
80002634: 13 88 0a 00  	mv	a6, s5
80002638: 97 00 00 00  	auipc	ra, 0
8000263c: e7 80 40 51  	jalr	1300(ra)
80002640: 13 04 05 00  	mv	s0, a0
80002644: 6f 00 00 4c  	j	0x80002b04 <.LBB4_90+0x378>

80002648 <.LBB4_88>:
80002648: 17 1c 00 00  	auipc	s8, 1
8000264c: 13 0c 9c 46  	addi	s8, s8, 1129
80002650: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002654: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002658: 13 f5 3a 00  	andi	a0, s5, 3
8000265c: 33 35 a0 00  	snez	a0, a0
80002660: b3 b5 2c 01  	sltu	a1, s9, s2
80002664: 93 c5 15 00  	xori	a1, a1, 1
80002668: 33 65 b5 00  	or	a0, a0, a1
8000266c: 93 fa 2a 00  	andi	s5, s5, 2
80002670: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002674: 63 16 05 02  	bnez	a0, 0x800026a0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80002678: 33 04 99 41  	sub	s0, s2, s9
8000267c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002680: 93 04 16 00  	addi	s1, a2, 1
80002684: 13 05 00 02  	addi	a0, zero, 32
80002688: 93 05 0b 00  	mv	a1, s6
8000268c: 93 86 09 00  	mv	a3, s3
80002690: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002694: 13 04 f4 ff  	addi	s0, s0, -1
80002698: 13 86 04 00  	mv	a2, s1
8000269c: e3 12 04 fe  	bnez	s0, 0x80002680 <.LBB4_88+0x38>
800026a0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800026a4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800026a8: 33 05 9c 01  	add	a0, s8, s9
800026ac: 03 45 05 00  	lbu	a0, 0(a0)
800026b0: 13 86 04 00  	mv	a2, s1
800026b4: 13 84 fc ff  	addi	s0, s9, -1
800026b8: 93 84 14 00  	addi	s1, s1, 1
800026bc: 93 05 0b 00  	mv	a1, s6
800026c0: 93 86 09 00  	mv	a3, s3
800026c4: e7 80 0b 00  	jalr	s7
800026c8: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800026cc: e3 1e 04 fc  	bnez	s0, 0x800026a8 <.LBB4_88+0x60>
800026d0: 33 85 44 41  	sub	a0, s1, s4
800026d4: 33 35 25 01  	sltu	a0, a0, s2
800026d8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800026dc: 93 c5 1a 00  	xori	a1, s5, 1
800026e0: 33 e5 a5 00  	or	a0, a1, a0
800026e4: 63 1e 05 40  	bnez	a0, 0x80002b00 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800026e8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800026ec: 13 84 14 00  	addi	s0, s1, 1
800026f0: 13 05 00 02  	addi	a0, zero, 32
800026f4: 93 05 0b 00  	mv	a1, s6
800026f8: 13 86 04 00  	mv	a2, s1
800026fc: 93 86 09 00  	mv	a3, s3
80002700: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002704: 33 05 8a 00  	add	a0, s4, s0
80002708: 93 04 04 00  	mv	s1, s0
8000270c: e3 60 25 ff  	bltu	a0, s2, 0x800026ec <.LBB4_88+0xa4>
80002710: 6f 00 40 3f  	j	0x80002b04 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002714: 13 f5 0a 40  	andi	a0, s5, 1024
80002718: 13 0c 60 00  	addi	s8, zero, 6
8000271c: 63 04 05 00  	beqz	a0, 0x80002724 <.LBB4_88+0xdc>
80002720: 13 0c 07 00  	mv	s8, a4
80002724: 13 05 a0 00  	addi	a0, zero, 10
80002728: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000272c: 63 6c ac 02  	bltu	s8, a0, 0x80002764 <.LBB4_88+0x11c>
80002730: 93 04 6c ff  	addi	s1, s8, -10
80002734: 13 05 f0 01  	addi	a0, zero, 31
80002738: 63 e4 a4 00  	bltu	s1, a0, 0x80002740 <.LBB4_88+0xf8>
8000273c: 93 04 f0 01  	addi	s1, zero, 31
80002740: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002744: 13 05 81 00  	addi	a0, sp, 8
80002748: 93 05 00 03  	addi	a1, zero, 48
8000274c: 13 06 04 00  	mv	a2, s0
80002750: 97 e0 ff ff  	auipc	ra, 1048574
80002754: e7 80 80 e0  	jalr	-504(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002758: 13 c5 f4 ff  	not	a0, s1
8000275c: 33 0c ac 00  	add	s8, s8, a0
80002760: 6f 00 80 00  	j	0x80002768 <.LBB4_88+0x120>
80002764: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002768: 13 15 3c 00  	slli	a0, s8, 3

8000276c <.LBB4_89>:
8000276c: 97 15 00 00  	auipc	a1, 1
80002770: 93 85 c5 50  	addi	a1, a1, 1292
80002774: 33 05 b5 00  	add	a0, a0, a1
80002778: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
8000277c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002780: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002784: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002788: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

8000278c <.LBB4_90>:
8000278c: 17 15 00 00  	auipc	a0, 1
80002790: 13 05 c5 5f  	addi	a0, a0, 1532
80002794: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80002798: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
8000279c: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800027a0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800027a4: d3 05 01 a2  	fle.d	a1, ft2, ft0
800027a8: 63 90 05 02  	bnez	a1, 0x800027c8 <.LBB4_90+0x3c>
;     ++frac;
800027ac: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
800027b0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800027b4: d3 15 11 a2  	flt.d	a1, ft2, ft1
800027b8: 63 94 05 02  	bnez	a1, 0x800027e0 <.LBB4_90+0x54>
800027bc: 13 05 00 00  	mv	a0, zero
;       ++whole;
800027c0: 93 84 14 00  	addi	s1, s1, 1
800027c4: 6f 00 c0 01  	j	0x800027e0 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800027c8: d3 15 01 a2  	flt.d	a1, ft2, ft0
800027cc: 63 9a 05 00  	bnez	a1, 0x800027e0 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800027d0: 93 35 15 00  	seqz	a1, a0
800027d4: 13 76 15 00  	andi	a2, a0, 1
800027d8: b3 65 b6 00  	or	a1, a2, a1
800027dc: 33 85 a5 00  	add	a0, a1, a0
800027e0: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800027e4: 63 0c 0c 0c  	beqz	s8, 0x800028bc <.LBB4_90+0x130>
800027e8: 13 06 00 00  	mv	a2, zero
800027ec: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800027f0: 33 83 85 00  	add	t1, a1, s0
800027f4: 93 02 00 02  	addi	t0, zero, 32
800027f8: 33 87 82 40  	sub	a4, t0, s0
800027fc: b7 d5 cc cc  	lui	a1, 838861
80002800: 93 83 d5 cc  	addi	t2, a1, -819
80002804: 13 08 a0 00  	addi	a6, zero, 10
80002808: 93 08 90 00  	addi	a7, zero, 9
8000280c: 63 04 c7 0c  	beq	a4, a2, 0x800028d4 <.LBB4_90+0x148>
80002810: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002814: 33 35 75 02  	mulhu	a0, a0, t2
80002818: 13 55 35 00  	srli	a0, a0, 3
8000281c: b3 06 05 03  	mul	a3, a0, a6
80002820: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002824: 93 e6 06 03  	ori	a3, a3, 48
80002828: b3 07 c3 00  	add	a5, t1, a2
8000282c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002830: 13 06 16 00  	addi	a2, a2, 1
80002834: e3 ec b8 fc  	bltu	a7, a1, 0x8000280c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002838: 33 05 c4 00  	add	a0, s0, a2
8000283c: 93 05 f5 ff  	addi	a1, a0, -1
80002840: 93 06 e0 01  	addi	a3, zero, 30
80002844: b3 b6 b6 00  	sltu	a3, a3, a1
80002848: 33 47 cc 00  	xor	a4, s8, a2
8000284c: 13 37 17 00  	seqz	a4, a4
80002850: b3 e6 e6 00  	or	a3, a3, a4
80002854: 63 94 06 08  	bnez	a3, 0x800028dc <.LBB4_90+0x150>
80002858: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000285c: 33 05 85 00  	add	a0, a0, s0
80002860: 93 45 f6 ff  	not	a1, a2
80002864: 33 8c 85 01  	add	s8, a1, s8
80002868: 33 04 c4 00  	add	s0, s0, a2
8000286c: 93 05 f0 01  	addi	a1, zero, 31
80002870: b3 86 85 40  	sub	a3, a1, s0
80002874: 33 05 c5 00  	add	a0, a0, a2
80002878: 93 05 0c 00  	mv	a1, s8
8000287c: 63 64 dc 00  	bltu	s8, a3, 0x80002884 <.LBB4_90+0xf8>
80002880: 93 85 06 00  	mv	a1, a3
80002884: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002888: 93 05 00 03  	addi	a1, zero, 48
8000288c: 97 e0 ff ff  	auipc	ra, 1048574
80002890: e7 80 c0 cc  	jalr	-820(ra)
80002894: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002898: b3 05 a4 00  	add	a1, s0, a0
8000289c: 93 b5 f5 01  	sltiu	a1, a1, 31
800028a0: 33 46 ac 00  	xor	a2, s8, a0
800028a4: 33 36 c0 00  	snez	a2, a2
800028a8: 33 f6 c5 00  	and	a2, a1, a2
800028ac: 13 05 15 00  	addi	a0, a0, 1
800028b0: e3 14 06 fe  	bnez	a2, 0x80002898 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800028b4: 33 05 a4 00  	add	a0, s0, a0
800028b8: 6f 00 80 02  	j	0x800028e0 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800028bc: d3 80 04 d2  	fcvt.d.w	ft1, s1
800028c0: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800028c4: 53 05 10 a2  	fle.d	a0, ft0, ft1
800028c8: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800028cc: b3 84 a4 00  	add	s1, s1, a0
800028d0: 6f 00 c0 03  	j	0x8000290c <.LBB4_90+0x180>
800028d4: 13 04 00 02  	addi	s0, zero, 32
800028d8: 6f 00 80 03  	j	0x80002910 <.LBB4_90+0x184>
800028dc: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800028e0: 63 8e 05 00  	beqz	a1, 0x800028fc <.LBB4_90+0x170>
;       buf[len++] = '.';
800028e4: 13 04 15 00  	addi	s0, a0, 1
800028e8: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800028ec: 33 85 a5 00  	add	a0, a1, a0
800028f0: 93 05 e0 02  	addi	a1, zero, 46
800028f4: 23 00 b5 00  	sb	a1, 0(a0)
800028f8: 6f 00 80 00  	j	0x80002900 <.LBB4_90+0x174>
800028fc: 13 04 05 00  	mv	s0, a0
80002900: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002904: 93 02 04 00  	mv	t0, s0
80002908: 63 64 85 00  	bltu	a0, s0, 0x80002910 <.LBB4_90+0x184>
8000290c: 93 02 00 02  	addi	t0, zero, 32
80002910: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002914: 37 65 66 66  	lui	a0, 419430
80002918: 93 05 75 66  	addi	a1, a0, 1639
8000291c: 13 08 a0 00  	addi	a6, zero, 10
80002920: 93 06 81 00  	addi	a3, sp, 8
80002924: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002928: 63 80 82 04  	beq	t0, s0, 0x80002968 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000292c: 33 95 b4 02  	mulh	a0, s1, a1
80002930: 93 57 f5 01  	srli	a5, a0, 31
80002934: 13 55 25 40  	srai	a0, a0, 2
80002938: 33 05 f5 00  	add	a0, a0, a5
8000293c: b3 07 05 03  	mul	a5, a0, a6
80002940: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002944: 93 87 07 03  	addi	a5, a5, 48
80002948: 13 0c 14 00  	addi	s8, s0, 1
8000294c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002950: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002954: 23 00 f4 00  	sb	a5, 0(s0)
80002958: 13 04 0c 00  	mv	s0, s8
8000295c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002960: e3 64 c7 fc  	bltu	a4, a2, 0x80002928 <.LBB4_90+0x19c>
80002964: 6f 00 80 00  	j	0x8000296c <.LBB4_90+0x1e0>
80002968: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000296c: 93 f4 3a 00  	andi	s1, s5, 3
80002970: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002974: 63 96 a4 06  	bne	s1, a0, 0x800029e0 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002978: 63 0c 09 00  	beqz	s2, 0x80002990 <.LBB4_90+0x204>
8000297c: 13 f5 ca 00  	andi	a0, s5, 12
80002980: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002984: 33 e5 ac 00  	or	a0, s9, a0
80002988: 33 09 a9 40  	sub	s2, s2, a0
8000298c: 6f 00 80 00  	j	0x80002994 <.LBB4_90+0x208>
80002990: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002994: 33 35 2c 01  	sltu	a0, s8, s2
80002998: 93 45 15 00  	xori	a1, a0, 1
8000299c: 13 05 f0 01  	addi	a0, zero, 31
800029a0: 33 36 85 01  	sltu	a2, a0, s8
800029a4: b3 65 b6 00  	or	a1, a2, a1
800029a8: 63 9c 05 02  	bnez	a1, 0x800029e0 <.LBB4_90+0x254>
800029ac: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800029b0: 93 45 fc ff  	not	a1, s8
800029b4: b3 05 b9 00  	add	a1, s2, a1
800029b8: 33 06 85 41  	sub	a2, a0, s8
800029bc: 33 85 86 01  	add	a0, a3, s8
800029c0: 63 e4 c5 00  	bltu	a1, a2, 0x800029c8 <.LBB4_90+0x23c>
800029c4: 93 05 06 00  	mv	a1, a2
800029c8: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800029cc: 93 05 00 03  	addi	a1, zero, 48
800029d0: 13 06 04 00  	mv	a2, s0
800029d4: 97 e0 ff ff  	auipc	ra, 1048574
800029d8: e7 80 40 b8  	jalr	-1148(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800029dc: 33 0c 84 01  	add	s8, s0, s8
800029e0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800029e4: 63 6a 85 05  	bltu	a0, s8, 0x80002a38 <.LBB4_90+0x2ac>
;     if (negative) {
800029e8: 63 8c 0c 00  	beqz	s9, 0x80002a00 <.LBB4_90+0x274>
800029ec: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800029f0: 33 05 85 01  	add	a0, a0, s8
800029f4: 13 0c 1c 00  	addi	s8, s8, 1
800029f8: 93 05 d0 02  	addi	a1, zero, 45
800029fc: 6f 00 80 03  	j	0x80002a34 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002a00: 13 f5 4a 00  	andi	a0, s5, 4
80002a04: 63 10 05 02  	bnez	a0, 0x80002a24 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002a08: 13 f5 8a 00  	andi	a0, s5, 8
80002a0c: 63 06 05 02  	beqz	a0, 0x80002a38 <.LBB4_90+0x2ac>
80002a10: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002a14: 33 05 85 01  	add	a0, a0, s8
80002a18: 13 0c 1c 00  	addi	s8, s8, 1
80002a1c: 93 05 00 02  	addi	a1, zero, 32
80002a20: 6f 00 40 01  	j	0x80002a34 <.LBB4_90+0x2a8>
80002a24: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002a28: 33 05 85 01  	add	a0, a0, s8
80002a2c: 13 0c 1c 00  	addi	s8, s8, 1
80002a30: 93 05 b0 02  	addi	a1, zero, 43
80002a34: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002a38: 33 35 90 00  	snez	a0, s1
80002a3c: b3 35 2c 01  	sltu	a1, s8, s2
80002a40: 93 c5 15 00  	xori	a1, a1, 1
80002a44: 33 65 b5 00  	or	a0, a0, a1
80002a48: 93 fa 2a 00  	andi	s5, s5, 2
80002a4c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002a50: 63 16 05 02  	bnez	a0, 0x80002a7c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002a54: b3 04 89 41  	sub	s1, s2, s8
80002a58: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002a5c: 13 04 16 00  	addi	s0, a2, 1
80002a60: 13 05 00 02  	addi	a0, zero, 32
80002a64: 93 05 0b 00  	mv	a1, s6
80002a68: 93 86 09 00  	mv	a3, s3
80002a6c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002a70: 93 84 f4 ff  	addi	s1, s1, -1
80002a74: 13 06 04 00  	mv	a2, s0
80002a78: e3 92 04 fe  	bnez	s1, 0x80002a5c <.LBB4_90+0x2d0>
80002a7c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002a80: 63 0c 0c 02  	beqz	s8, 0x80002ab8 <.LBB4_90+0x32c>
80002a84: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002a88: 33 85 8c 01  	add	a0, s9, s8
80002a8c: 03 45 05 00  	lbu	a0, 0(a0)
80002a90: 13 0d fc ff  	addi	s10, s8, -1
80002a94: 93 04 14 00  	addi	s1, s0, 1
80002a98: 93 05 0b 00  	mv	a1, s6
80002a9c: 13 06 04 00  	mv	a2, s0
80002aa0: 93 86 09 00  	mv	a3, s3
80002aa4: e7 80 0b 00  	jalr	s7
80002aa8: 13 84 04 00  	mv	s0, s1
80002aac: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002ab0: e3 1c 0d fc  	bnez	s10, 0x80002a88 <.LBB4_90+0x2fc>
80002ab4: 6f 00 80 00  	j	0x80002abc <.LBB4_90+0x330>
80002ab8: 93 04 04 00  	mv	s1, s0
80002abc: 33 85 44 41  	sub	a0, s1, s4
80002ac0: 33 35 25 01  	sltu	a0, a0, s2
80002ac4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002ac8: 93 c5 1a 00  	xori	a1, s5, 1
80002acc: 33 e5 a5 00  	or	a0, a1, a0
80002ad0: 63 18 05 02  	bnez	a0, 0x80002b00 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002ad4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002ad8: 13 84 14 00  	addi	s0, s1, 1
80002adc: 13 05 00 02  	addi	a0, zero, 32
80002ae0: 93 05 0b 00  	mv	a1, s6
80002ae4: 13 86 04 00  	mv	a2, s1
80002ae8: 93 86 09 00  	mv	a3, s3
80002aec: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002af0: 33 05 8a 00  	add	a0, s4, s0
80002af4: 93 04 04 00  	mv	s1, s0
80002af8: e3 60 25 ff  	bltu	a0, s2, 0x80002ad8 <.LBB4_90+0x34c>
80002afc: 6f 00 80 00  	j	0x80002b04 <.LBB4_90+0x378>
80002b00: 13 84 04 00  	mv	s0, s1
; }
80002b04: 13 05 04 00  	mv	a0, s0
80002b08: 07 39 81 02  	fld	fs2, 40(sp)
80002b0c: 87 34 01 03  	fld	fs1, 48(sp)
80002b10: 07 34 81 03  	fld	fs0, 56(sp)
80002b14: 03 2d 01 04  	lw	s10, 64(sp)
80002b18: 83 2c 41 04  	lw	s9, 68(sp)
80002b1c: 03 2c 81 04  	lw	s8, 72(sp)
80002b20: 83 2b c1 04  	lw	s7, 76(sp)
80002b24: 03 2b 01 05  	lw	s6, 80(sp)
80002b28: 83 2a 41 05  	lw	s5, 84(sp)
80002b2c: 03 2a 81 05  	lw	s4, 88(sp)
80002b30: 83 29 c1 05  	lw	s3, 92(sp)
80002b34: 03 29 01 06  	lw	s2, 96(sp)
80002b38: 83 24 41 06  	lw	s1, 100(sp)
80002b3c: 03 24 81 06  	lw	s0, 104(sp)
80002b40: 83 20 c1 06  	lw	ra, 108(sp)
80002b44: 13 01 01 07  	addi	sp, sp, 112
80002b48: 67 80 00 00  	ret

80002b4c <_etoa>:
; {
80002b4c: 13 01 01 f8  	addi	sp, sp, -128
80002b50: 23 2e 11 06  	sw	ra, 124(sp)
80002b54: 23 2c 81 06  	sw	s0, 120(sp)
80002b58: 23 2a 91 06  	sw	s1, 116(sp)
80002b5c: 23 28 21 07  	sw	s2, 112(sp)
80002b60: 23 26 31 07  	sw	s3, 108(sp)
80002b64: 23 24 41 07  	sw	s4, 104(sp)
80002b68: 23 22 51 07  	sw	s5, 100(sp)
80002b6c: 23 20 61 07  	sw	s6, 96(sp)
80002b70: 23 2e 71 05  	sw	s7, 92(sp)
80002b74: 23 2c 81 05  	sw	s8, 88(sp)
80002b78: 23 2a 91 05  	sw	s9, 84(sp)
80002b7c: 23 28 a1 05  	sw	s10, 80(sp)
80002b80: 23 26 b1 05  	sw	s11, 76(sp)

80002b84 <.LBB5_43>:
80002b84: 97 14 00 00  	auipc	s1, 1
80002b88: 93 84 c4 20  	addi	s1, s1, 524
80002b8c: 87 b0 04 00  	fld	ft1, 0(s1)

80002b90 <.LBB5_44>:
80002b90: 97 14 00 00  	auipc	s1, 1
80002b94: 93 84 84 20  	addi	s1, s1, 520
80002b98: 07 b1 04 00  	fld	ft2, 0(s1)
80002b9c: 53 00 a5 22  	fmv.d	ft0, fa0
80002ba0: d3 04 15 a2  	fle.d	s1, fa0, ft1
80002ba4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002ba8: b3 f4 84 00  	and	s1, s1, s0
80002bac: 93 0a 08 00  	mv	s5, a6
80002bb0: 13 89 07 00  	mv	s2, a5
80002bb4: 93 07 07 00  	mv	a5, a4
80002bb8: 93 89 06 00  	mv	s3, a3
80002bbc: 13 0a 06 00  	mv	s4, a2
80002bc0: 13 8b 05 00  	mv	s6, a1
80002bc4: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002bc8: 63 92 04 06  	bnez	s1, 0x80002c2c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002bcc: 13 85 0b 00  	mv	a0, s7
80002bd0: 93 05 0b 00  	mv	a1, s6
80002bd4: 13 06 0a 00  	mv	a2, s4
80002bd8: 93 86 09 00  	mv	a3, s3
80002bdc: 53 05 00 22  	fmv.d	fa0, ft0
80002be0: 13 87 07 00  	mv	a4, a5
80002be4: 93 07 09 00  	mv	a5, s2
80002be8: 13 88 0a 00  	mv	a6, s5
80002bec: 83 2d c1 04  	lw	s11, 76(sp)
80002bf0: 03 2d 01 05  	lw	s10, 80(sp)
80002bf4: 83 2c 41 05  	lw	s9, 84(sp)
80002bf8: 03 2c 81 05  	lw	s8, 88(sp)
80002bfc: 83 2b c1 05  	lw	s7, 92(sp)
80002c00: 03 2b 01 06  	lw	s6, 96(sp)
80002c04: 83 2a 41 06  	lw	s5, 100(sp)
80002c08: 03 2a 81 06  	lw	s4, 104(sp)
80002c0c: 83 29 c1 06  	lw	s3, 108(sp)
80002c10: 03 29 01 07  	lw	s2, 112(sp)
80002c14: 83 24 41 07  	lw	s1, 116(sp)
80002c18: 03 24 81 07  	lw	s0, 120(sp)
80002c1c: 83 20 c1 07  	lw	ra, 124(sp)
80002c20: 13 01 01 08  	addi	sp, sp, 128
80002c24: 17 03 00 00  	auipc	t1, 0
80002c28: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002c2c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002c30: 13 f5 0a 40  	andi	a0, s5, 1024
80002c34: 13 07 60 00  	addi	a4, zero, 6
80002c38: 63 04 05 00  	beqz	a0, 0x80002c40 <.LBB5_44+0xb0>
80002c3c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002c40: 27 30 a1 02  	fsd	fa0, 32(sp)
80002c44: 83 25 41 02  	lw	a1, 36(sp)
80002c48: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002c4c: 93 d6 45 01  	srli	a3, a1, 20
80002c50: b7 07 10 00  	lui	a5, 256
80002c54: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002c58: b3 f5 f5 00  	and	a1, a1, a5
80002c5c: 23 2c c1 00  	sw	a2, 24(sp)
80002c60: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002c64: b3 e5 c5 00  	or	a1, a1, a2
80002c68: 23 2e b1 00  	sw	a1, 28(sp)
80002c6c: 87 30 81 01  	fld	ft1, 24(sp)

80002c70 <.LBB5_45>:
80002c70: 97 15 00 00  	auipc	a1, 1
80002c74: 93 85 05 13  	addi	a1, a1, 304
80002c78: 07 b1 05 00  	fld	ft2, 0(a1)

80002c7c <.LBB5_46>:
80002c7c: 97 15 00 00  	auipc	a1, 1
80002c80: 93 85 c5 12  	addi	a1, a1, 300
80002c84: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002c88: 93 f5 f6 7f  	andi	a1, a3, 2047
80002c8c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002c90: 53 82 05 d2  	fcvt.d.w	ft4, a1
80002c94: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002c98 <.LBB5_47>:
80002c98: 97 15 00 00  	auipc	a1, 1
80002c9c: 93 85 85 11  	addi	a1, a1, 280
80002ca0: 07 b1 05 00  	fld	ft2, 0(a1)

80002ca4 <.LBB5_48>:
80002ca4: 97 15 00 00  	auipc	a1, 1
80002ca8: 93 85 45 11  	addi	a1, a1, 276
80002cac: 87 b1 05 00  	fld	ft3, 0(a1)

80002cb0 <.LBB5_49>:
80002cb0: 97 15 00 00  	auipc	a1, 1
80002cb4: 93 85 05 11  	addi	a1, a1, 272
80002cb8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002cbc: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002cc0: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002cc4: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002cc8: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002ccc <.LBB5_50>:
80002ccc: 17 16 00 00  	auipc	a2, 1
80002cd0: 13 06 c6 0f  	addi	a2, a2, 252
80002cd4: 87 31 06 00  	fld	ft3, 0(a2)

80002cd8 <.LBB5_51>:
80002cd8: 17 16 00 00  	auipc	a2, 1
80002cdc: 13 06 86 0f  	addi	a2, a2, 248
80002ce0: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002ce4: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002ce8: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002cec: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002cf0: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002cf4: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002cf8: 13 06 f6 3f  	addi	a2, a2, 1023
80002cfc: 23 28 01 00  	sw	zero, 16(sp)
80002d00: 13 16 46 01  	slli	a2, a2, 20
80002d04: 23 2a c1 00  	sw	a2, 20(sp)

80002d08 <.LBB5_52>:
80002d08: 17 16 00 00  	auipc	a2, 1
80002d0c: 13 06 86 0d  	addi	a2, a2, 216
80002d10: 87 31 06 00  	fld	ft3, 0(a2)

80002d14 <.LBB5_53>:
80002d14: 17 16 00 00  	auipc	a2, 1
80002d18: 13 06 46 0d  	addi	a2, a2, 212
80002d1c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002d20: 87 32 01 01  	fld	ft5, 16(sp)

80002d24 <.LBB5_54>:
80002d24: 17 16 00 00  	auipc	a2, 1
80002d28: 13 06 46 0b  	addi	a2, a2, 180
80002d2c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002d30: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002d34 <.LBB5_55>:
80002d34: 17 16 00 00  	auipc	a2, 1
80002d38: 13 06 c6 0b  	addi	a2, a2, 188
80002d3c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002d40: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002d44: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80002d48: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002d4c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002d50: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002d54: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002d58: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002d5c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002d60: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002d64: 63 0a 06 00  	beqz	a2, 0x80002d78 <.LBB5_56+0x10>

80002d68 <.LBB5_56>:
80002d68: 97 16 00 00  	auipc	a3, 1
80002d6c: 93 86 06 09  	addi	a3, a3, 144
80002d70: 07 b1 06 00  	fld	ft2, 0(a3)
80002d74: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002d78: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002d7c: 93 05 34 06  	addi	a1, s0, 99
80002d80: 93 b5 75 0c  	sltiu	a1, a1, 199
80002d84: 13 06 50 00  	addi	a2, zero, 5
80002d88: b7 16 00 00  	lui	a3, 1
80002d8c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002d90: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002d94: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002d98: 63 84 06 06  	beqz	a3, 0x80002e00 <.LBB5_58+0x58>

80002d9c <.LBB5_57>:
80002d9c: 97 15 00 00  	auipc	a1, 1
80002da0: 93 85 45 06  	addi	a1, a1, 100
80002da4: 07 b1 05 00  	fld	ft2, 0(a1)

80002da8 <.LBB5_58>:
80002da8: 97 15 00 00  	auipc	a1, 1
80002dac: 93 85 05 06  	addi	a1, a1, 96
80002db0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80002db4: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002db8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002dbc: b3 e5 c5 00  	or	a1, a1, a2
80002dc0: 63 98 05 00  	bnez	a1, 0x80002dd0 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002dc4: 63 40 e4 02  	blt	s0, a4, 0x80002de4 <.LBB5_58+0x3c>
80002dc8: 13 07 00 00  	mv	a4, zero
80002dcc: 6f 00 00 02  	j	0x80002dec <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002dd0: 63 06 07 02  	beqz	a4, 0x80002dfc <.LBB5_58+0x54>
80002dd4: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002dd8: 13 45 15 00  	xori	a0, a0, 1
80002ddc: 33 07 a7 40  	sub	a4, a4, a0
80002de0: 6f 00 00 02  	j	0x80002e00 <.LBB5_58+0x58>
80002de4: 13 45 f4 ff  	not	a0, s0
80002de8: 33 07 a7 00  	add	a4, a4, a0
80002dec: 13 04 00 00  	mv	s0, zero
80002df0: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002df4: 93 ea 0a 40  	ori	s5, s5, 1024
80002df8: 6f 00 80 00  	j	0x80002e00 <.LBB5_58+0x58>
80002dfc: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002e00: b3 05 99 41  	sub	a1, s2, s9
80002e04: 33 36 b9 00  	sltu	a2, s2, a1
80002e08: 13 05 00 00  	mv	a0, zero
80002e0c: 63 14 06 00  	bnez	a2, 0x80002e14 <.LBB5_58+0x6c>
80002e10: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002e14: 93 07 00 00  	mv	a5, zero
80002e18: 93 d5 1a 00  	srli	a1, s5, 1
80002e1c: 93 f4 15 00  	andi	s1, a1, 1
80002e20: b3 35 90 01  	snez	a1, s9
80002e24: b3 f5 b4 00  	and	a1, s1, a1
80002e28: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002e2c: 63 94 05 00  	bnez	a1, 0x80002e34 <.LBB5_58+0x8c>
80002e30: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002e34: 93 35 14 00  	seqz	a1, s0
80002e38: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002e3c: 63 94 05 00  	bnez	a1, 0x80002e44 <.LBB5_58+0x9c>
80002e40: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002e44: 63 04 05 00  	beqz	a0, 0x80002e4c <.LBB5_58+0xa4>
80002e48: 53 15 a5 22  	fneg.d	fa0, fa0
80002e4c: 37 f5 ff ff  	lui	a0, 1048575
80002e50: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002e54: 33 f8 aa 00  	and	a6, s5, a0
80002e58: 13 85 0b 00  	mv	a0, s7
80002e5c: 93 05 0b 00  	mv	a1, s6
80002e60: 13 06 0a 00  	mv	a2, s4
80002e64: 93 86 09 00  	mv	a3, s3
80002e68: 97 f0 ff ff  	auipc	ra, 1048575
80002e6c: e7 80 40 60  	jalr	1540(ra)
80002e70: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002e74: 63 82 0c 18  	beqz	s9, 0x80002ff8 <.LBB5_58+0x250>
80002e78: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002e7c: 13 f5 0a 02  	andi	a0, s5, 32
80002e80: 13 45 55 06  	xori	a0, a0, 101
80002e84: 93 05 0b 00  	mv	a1, s6
80002e88: 13 06 0d 00  	mv	a2, s10
80002e8c: 93 86 09 00  	mv	a3, s3
80002e90: e7 80 0b 00  	jalr	s7
80002e94: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002e98: 93 5a f4 01  	srli	s5, s0, 31
80002e9c: 13 55 f4 41  	srai	a0, s0, 31
80002ea0: b3 05 a4 00  	add	a1, s0, a0
80002ea4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002ea8: 93 8d dc ff  	addi	s11, s9, -3
80002eac: 13 04 f0 01  	addi	s0, zero, 31
80002eb0: 37 d5 cc cc  	lui	a0, 838861
80002eb4: 13 05 d5 cc  	addi	a0, a0, -819
80002eb8: 13 08 a0 00  	addi	a6, zero, 10
80002ebc: 93 08 c1 02  	addi	a7, sp, 44
80002ec0: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002ec4: b3 37 a7 02  	mulhu	a5, a4, a0
80002ec8: 93 d5 37 00  	srli	a1, a5, 3
80002ecc: b3 87 05 03  	mul	a5, a1, a6
80002ed0: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002ed4: 13 e6 07 03  	ori	a2, a5, 48
80002ed8: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002edc: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002ee0: 13 0c 1c 00  	addi	s8, s8, 1
80002ee4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002ee8: 33 b6 e2 00  	sltu	a2, t0, a4
80002eec: 33 f6 c7 00  	and	a2, a5, a2
80002ef0: 93 8d fd ff  	addi	s11, s11, -1
80002ef4: 13 04 f4 ff  	addi	s0, s0, -1
80002ef8: 13 87 05 00  	mv	a4, a1
80002efc: e3 14 06 fc  	bnez	a2, 0x80002ec4 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002f00: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002f04: 33 35 ac 00  	sltu	a0, s8, a0
80002f08: 13 45 15 00  	xori	a0, a0, 1
80002f0c: 93 c5 17 00  	xori	a1, a5, 1
80002f10: 33 e5 a5 00  	or	a0, a1, a0
80002f14: 63 12 05 04  	bnez	a0, 0x80002f58 <.LBB5_58+0x1b0>
80002f18: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002f1c: b3 85 8c 41  	sub	a1, s9, s8
80002f20: 93 85 d5 ff  	addi	a1, a1, -3
80002f24: 13 06 f0 01  	addi	a2, zero, 31
80002f28: 33 06 86 41  	sub	a2, a2, s8
80002f2c: 33 05 85 01  	add	a0, a0, s8
80002f30: 63 e4 c5 00  	bltu	a1, a2, 0x80002f38 <.LBB5_58+0x190>
80002f34: 93 05 06 00  	mv	a1, a2
80002f38: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002f3c: 93 05 00 03  	addi	a1, zero, 48
80002f40: 97 d0 ff ff  	auipc	ra, 1048573
80002f44: e7 80 80 61  	jalr	1560(ra)
;   if (flags & FLAGS_HASH) {
80002f48: 63 e4 8d 00  	bltu	s11, s0, 0x80002f50 <.LBB5_58+0x1a8>
80002f4c: 93 0d 04 00  	mv	s11, s0
80002f50: 33 85 8d 01  	add	a0, s11, s8
80002f54: 13 0c 15 00  	addi	s8, a0, 1
80002f58: 83 2c c1 00  	lw	s9, 12(sp)
80002f5c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002f60: 63 60 85 03  	bltu	a0, s8, 0x80002f80 <.LBB5_58+0x1d8>
80002f64: 13 05 c1 02  	addi	a0, sp, 44
80002f68: 33 05 85 01  	add	a0, a0, s8
80002f6c: 93 05 d0 02  	addi	a1, zero, 45
80002f70: 63 94 0a 00  	bnez	s5, 0x80002f78 <.LBB5_58+0x1d0>
80002f74: 93 05 b0 02  	addi	a1, zero, 43
80002f78: 13 0c 1c 00  	addi	s8, s8, 1
80002f7c: 23 00 b5 00  	sb	a1, 0(a0)
80002f80: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002f84: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002f88: 33 85 8a 01  	add	a0, s5, s8
80002f8c: 03 45 05 00  	lbu	a0, 0(a0)
80002f90: 13 06 04 00  	mv	a2, s0
80002f94: 93 04 fc ff  	addi	s1, s8, -1
80002f98: 13 04 14 00  	addi	s0, s0, 1
80002f9c: 93 05 0b 00  	mv	a1, s6
80002fa0: 93 86 09 00  	mv	a3, s3
80002fa4: e7 80 0b 00  	jalr	s7
80002fa8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002fac: e3 9e 04 fc  	bnez	s1, 0x80002f88 <.LBB5_58+0x1e0>
80002fb0: 33 05 44 41  	sub	a0, s0, s4
80002fb4: 33 35 25 01  	sltu	a0, a0, s2
80002fb8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002fbc: 93 c5 1c 00  	xori	a1, s9, 1
80002fc0: 33 e5 a5 00  	or	a0, a1, a0
80002fc4: 63 18 05 02  	bnez	a0, 0x80002ff4 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002fc8: b3 04 40 41  	neg	s1, s4
80002fcc: 13 0d 14 00  	addi	s10, s0, 1
80002fd0: 13 05 00 02  	addi	a0, zero, 32
80002fd4: 93 05 0b 00  	mv	a1, s6
80002fd8: 13 06 04 00  	mv	a2, s0
80002fdc: 93 86 09 00  	mv	a3, s3
80002fe0: e7 80 0b 00  	jalr	s7
80002fe4: 33 85 a4 01  	add	a0, s1, s10
80002fe8: 13 04 0d 00  	mv	s0, s10
80002fec: e3 60 25 ff  	bltu	a0, s2, 0x80002fcc <.LBB5_58+0x224>
80002ff0: 6f 00 80 00  	j	0x80002ff8 <.LBB5_58+0x250>
80002ff4: 13 0d 04 00  	mv	s10, s0
; }
80002ff8: 13 05 0d 00  	mv	a0, s10
80002ffc: 83 2d c1 04  	lw	s11, 76(sp)
80003000: 03 2d 01 05  	lw	s10, 80(sp)
80003004: 83 2c 41 05  	lw	s9, 84(sp)
80003008: 03 2c 81 05  	lw	s8, 88(sp)
8000300c: 83 2b c1 05  	lw	s7, 92(sp)
80003010: 03 2b 01 06  	lw	s6, 96(sp)
80003014: 83 2a 41 06  	lw	s5, 100(sp)
80003018: 03 2a 81 06  	lw	s4, 104(sp)
8000301c: 83 29 c1 06  	lw	s3, 108(sp)
80003020: 03 29 01 07  	lw	s2, 112(sp)
80003024: 83 24 41 07  	lw	s1, 116(sp)
80003028: 03 24 81 07  	lw	s0, 120(sp)
8000302c: 83 20 c1 07  	lw	ra, 124(sp)
80003030: 13 01 01 08  	addi	sp, sp, 128
80003034: 67 80 00 00  	ret

80003038 <_ntoa_format>:
; {
80003038: 13 01 01 fc  	addi	sp, sp, -64
8000303c: 23 2e 11 02  	sw	ra, 60(sp)
80003040: 23 2c 81 02  	sw	s0, 56(sp)
80003044: 23 2a 91 02  	sw	s1, 52(sp)
80003048: 23 28 21 03  	sw	s2, 48(sp)
8000304c: 23 26 31 03  	sw	s3, 44(sp)
80003050: 23 24 41 03  	sw	s4, 40(sp)
80003054: 23 22 51 03  	sw	s5, 36(sp)
80003058: 23 20 61 03  	sw	s6, 32(sp)
8000305c: 23 2e 71 01  	sw	s7, 28(sp)
80003060: 23 2c 81 01  	sw	s8, 24(sp)
80003064: 23 2a 91 01  	sw	s9, 20(sp)
80003068: 23 28 a1 01  	sw	s10, 16(sp)
8000306c: 23 26 b1 01  	sw	s11, 12(sp)
80003070: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80003074: 93 fa 2e 00  	andi	s5, t4, 2
80003078: 13 09 0e 00  	mv	s2, t3
8000307c: 13 8d 03 00  	mv	s10, t2
80003080: 93 8c 08 00  	mv	s9, a7
80003084: 13 8c 07 00  	mv	s8, a5
80003088: 93 89 06 00  	mv	s3, a3
8000308c: 13 0a 06 00  	mv	s4, a2
80003090: 13 8b 05 00  	mv	s6, a1
80003094: 93 0d 05 00  	mv	s11, a0
80003098: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
8000309c: 63 9e 0a 0c  	bnez	s5, 0x80003178 <_ntoa_format+0x140>
800030a0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800030a4: 63 0e 09 00  	beqz	s2, 0x800030c0 <_ntoa_format+0x88>
800030a8: 63 0e 04 00  	beqz	s0, 0x800030c4 <_ntoa_format+0x8c>
800030ac: 13 f5 cb 00  	andi	a0, s7, 12
800030b0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800030b4: 33 65 05 01  	or	a0, a0, a6
800030b8: 33 09 a9 40  	sub	s2, s2, a0
800030bc: 6f 00 80 00  	j	0x800030c4 <_ntoa_format+0x8c>
800030c0: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800030c4: 33 35 ac 01  	sltu	a0, s8, s10
800030c8: 93 45 15 00  	xori	a1, a0, 1
800030cc: 13 05 f0 01  	addi	a0, zero, 31
800030d0: 33 36 85 01  	sltu	a2, a0, s8
800030d4: b3 65 b6 00  	or	a1, a2, a1
800030d8: 63 94 05 04  	bnez	a1, 0x80003120 <_ntoa_format+0xe8>
800030dc: 23 22 51 01  	sw	s5, 4(sp)
800030e0: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800030e4: 93 45 fc ff  	not	a1, s8
800030e8: b3 85 a5 01  	add	a1, a1, s10
800030ec: 33 06 85 41  	sub	a2, a0, s8
800030f0: 33 05 87 01  	add	a0, a4, s8
800030f4: 63 e4 c5 00  	bltu	a1, a2, 0x800030fc <_ntoa_format+0xc4>
800030f8: 93 05 06 00  	mv	a1, a2
800030fc: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80003100: 93 05 00 03  	addi	a1, zero, 48
80003104: 13 86 04 00  	mv	a2, s1
80003108: 97 d0 ff ff  	auipc	ra, 1048573
8000310c: e7 80 00 45  	jalr	1104(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003110: 33 8c 84 01  	add	s8, s1, s8
80003114: 03 27 81 00  	lw	a4, 8(sp)
80003118: 13 88 0a 00  	mv	a6, s5
8000311c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003120: 63 0c 04 04  	beqz	s0, 0x80003178 <_ntoa_format+0x140>
80003124: 33 35 2c 01  	sltu	a0, s8, s2
80003128: 93 45 15 00  	xori	a1, a0, 1
8000312c: 13 05 f0 01  	addi	a0, zero, 31
80003130: 33 36 85 01  	sltu	a2, a0, s8
80003134: b3 e5 c5 00  	or	a1, a1, a2
80003138: 63 90 05 04  	bnez	a1, 0x80003178 <_ntoa_format+0x140>
8000313c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003140: 93 45 fc ff  	not	a1, s8
80003144: b3 05 b9 00  	add	a1, s2, a1
80003148: 33 06 85 41  	sub	a2, a0, s8
8000314c: 33 05 87 01  	add	a0, a4, s8
80003150: 63 e4 c5 00  	bltu	a1, a2, 0x80003158 <_ntoa_format+0x120>
80003154: 93 05 06 00  	mv	a1, a2
80003158: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000315c: 93 05 00 03  	addi	a1, zero, 48
80003160: 13 86 04 00  	mv	a2, s1
80003164: 97 d0 ff ff  	auipc	ra, 1048573
80003168: e7 80 40 3f  	jalr	1012(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000316c: 33 8c 84 01  	add	s8, s1, s8
80003170: 03 27 81 00  	lw	a4, 8(sp)
80003174: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80003178: 13 f5 0b 01  	andi	a0, s7, 16
8000317c: 63 02 05 0e  	beqz	a0, 0x80003260 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80003180: 13 f5 0b 40  	andi	a0, s7, 1024
80003184: 13 55 a5 00  	srli	a0, a0, 10
80003188: 93 35 1c 00  	seqz	a1, s8
8000318c: 33 65 b5 00  	or	a0, a0, a1
80003190: 63 1e 05 02  	bnez	a0, 0x800031cc <_ntoa_format+0x194>
80003194: 33 45 ac 01  	xor	a0, s8, s10
80003198: 33 35 a0 00  	snez	a0, a0
8000319c: b3 45 2c 01  	xor	a1, s8, s2
800031a0: b3 35 b0 00  	snez	a1, a1
800031a4: 33 75 b5 00  	and	a0, a0, a1
800031a8: 63 12 05 02  	bnez	a0, 0x800031cc <_ntoa_format+0x194>
;       len--;
800031ac: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800031b0: b3 35 a0 00  	snez	a1, a0
800031b4: 13 86 0c ff  	addi	a2, s9, -16
800031b8: 13 36 16 00  	seqz	a2, a2
800031bc: b3 75 b6 00  	and	a1, a2, a1
800031c0: 63 84 05 00  	beqz	a1, 0x800031c8 <_ntoa_format+0x190>
800031c4: 13 05 ec ff  	addi	a0, s8, -2
800031c8: 13 0c 05 00  	mv	s8, a0
800031cc: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800031d0: 63 96 ac 02  	bne	s9, a0, 0x800031fc <_ntoa_format+0x1c4>
800031d4: 13 f5 0b 02  	andi	a0, s7, 32
800031d8: 93 55 55 00  	srli	a1, a0, 5
800031dc: 13 06 f0 01  	addi	a2, zero, 31
800031e0: 33 36 86 01  	sltu	a2, a2, s8
800031e4: b3 e5 c5 00  	or	a1, a1, a2
800031e8: 63 9e 05 02  	bnez	a1, 0x80003224 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800031ec: 33 05 87 01  	add	a0, a4, s8
800031f0: 13 0c 1c 00  	addi	s8, s8, 1
800031f4: 93 05 80 07  	addi	a1, zero, 120
800031f8: 6f 00 c0 04  	j	0x80003244 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800031fc: 13 85 ec ff  	addi	a0, s9, -2
80003200: 33 35 a0 00  	snez	a0, a0
80003204: 93 05 f0 01  	addi	a1, zero, 31
80003208: b3 b5 85 01  	sltu	a1, a1, s8
8000320c: 33 65 b5 00  	or	a0, a0, a1
80003210: 63 1c 05 02  	bnez	a0, 0x80003248 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80003214: 33 05 87 01  	add	a0, a4, s8
80003218: 13 0c 1c 00  	addi	s8, s8, 1
8000321c: 93 05 20 06  	addi	a1, zero, 98
80003220: 6f 00 40 02  	j	0x80003244 <_ntoa_format+0x20c>
80003224: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003228: 13 35 15 00  	seqz	a0, a0
8000322c: 93 c5 15 00  	xori	a1, a1, 1
80003230: 33 65 b5 00  	or	a0, a0, a1
80003234: 63 1a 05 00  	bnez	a0, 0x80003248 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80003238: 33 05 87 01  	add	a0, a4, s8
8000323c: 13 0c 1c 00  	addi	s8, s8, 1
80003240: 93 05 80 05  	addi	a1, zero, 88
80003244: 23 00 b5 00  	sb	a1, 0(a0)
80003248: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000324c: 63 60 85 07  	bltu	a0, s8, 0x800032ac <_ntoa_format+0x274>
;       buf[len++] = '0';
80003250: 33 05 87 01  	add	a0, a4, s8
80003254: 13 0c 1c 00  	addi	s8, s8, 1
80003258: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000325c: 23 00 b5 00  	sb	a1, 0(a0)
80003260: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003264: 63 64 85 05  	bltu	a0, s8, 0x800032ac <_ntoa_format+0x274>
;     if (negative) {
80003268: 63 0a 08 00  	beqz	a6, 0x8000327c <_ntoa_format+0x244>
;       buf[len++] = '-';
8000326c: 33 05 87 01  	add	a0, a4, s8
80003270: 13 0c 1c 00  	addi	s8, s8, 1
80003274: 93 05 d0 02  	addi	a1, zero, 45
80003278: 6f 00 00 03  	j	0x800032a8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
8000327c: 13 f5 4b 00  	andi	a0, s7, 4
80003280: 63 1e 05 00  	bnez	a0, 0x8000329c <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003284: 13 f5 8b 00  	andi	a0, s7, 8
80003288: 63 02 05 02  	beqz	a0, 0x800032ac <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000328c: 33 05 87 01  	add	a0, a4, s8
80003290: 13 0c 1c 00  	addi	s8, s8, 1
80003294: 93 05 00 02  	addi	a1, zero, 32
80003298: 6f 00 00 01  	j	0x800032a8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000329c: 33 05 87 01  	add	a0, a4, s8
800032a0: 13 0c 1c 00  	addi	s8, s8, 1
800032a4: 93 05 b0 02  	addi	a1, zero, 43
800032a8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800032ac: 13 f5 3b 00  	andi	a0, s7, 3
800032b0: 33 35 a0 00  	snez	a0, a0
800032b4: b3 35 2c 01  	sltu	a1, s8, s2
800032b8: 93 c5 15 00  	xori	a1, a1, 1
800032bc: 33 65 b5 00  	or	a0, a0, a1
800032c0: 13 04 0a 00  	mv	s0, s4
800032c4: 63 16 05 02  	bnez	a0, 0x800032f0 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800032c8: b3 04 89 41  	sub	s1, s2, s8
800032cc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800032d0: 13 04 16 00  	addi	s0, a2, 1
800032d4: 13 05 00 02  	addi	a0, zero, 32
800032d8: 93 05 0b 00  	mv	a1, s6
800032dc: 93 86 09 00  	mv	a3, s3
800032e0: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800032e4: 93 84 f4 ff  	addi	s1, s1, -1
800032e8: 13 06 04 00  	mv	a2, s0
800032ec: e3 92 04 fe  	bnez	s1, 0x800032d0 <_ntoa_format+0x298>
800032f0: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800032f4: 63 0e 0c 02  	beqz	s8, 0x80003330 <_ntoa_format+0x2f8>
800032f8: 03 25 81 00  	lw	a0, 8(sp)
800032fc: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003300: 33 85 8b 01  	add	a0, s7, s8
80003304: 03 45 05 00  	lbu	a0, 0(a0)
80003308: 93 0c fc ff  	addi	s9, s8, -1
8000330c: 93 04 14 00  	addi	s1, s0, 1
80003310: 93 05 0b 00  	mv	a1, s6
80003314: 13 06 04 00  	mv	a2, s0
80003318: 93 86 09 00  	mv	a3, s3
8000331c: e7 80 0d 00  	jalr	s11
80003320: 13 84 04 00  	mv	s0, s1
80003324: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80003328: e3 9c 0c fc  	bnez	s9, 0x80003300 <_ntoa_format+0x2c8>
8000332c: 6f 00 80 00  	j	0x80003334 <_ntoa_format+0x2fc>
80003330: 93 04 04 00  	mv	s1, s0
80003334: 33 85 44 41  	sub	a0, s1, s4
80003338: 33 35 25 01  	sltu	a0, a0, s2
8000333c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003340: 93 c5 1a 00  	xori	a1, s5, 1
80003344: 33 e5 a5 00  	or	a0, a1, a0
80003348: 63 18 05 02  	bnez	a0, 0x80003378 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000334c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003350: 13 84 14 00  	addi	s0, s1, 1
80003354: 13 05 00 02  	addi	a0, zero, 32
80003358: 93 05 0b 00  	mv	a1, s6
8000335c: 13 86 04 00  	mv	a2, s1
80003360: 93 86 09 00  	mv	a3, s3
80003364: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80003368: 33 05 8a 00  	add	a0, s4, s0
8000336c: 93 04 04 00  	mv	s1, s0
80003370: e3 60 25 ff  	bltu	a0, s2, 0x80003350 <_ntoa_format+0x318>
80003374: 6f 00 80 00  	j	0x8000337c <_ntoa_format+0x344>
80003378: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
8000337c: 13 05 04 00  	mv	a0, s0
80003380: 83 2d c1 00  	lw	s11, 12(sp)
80003384: 03 2d 01 01  	lw	s10, 16(sp)
80003388: 83 2c 41 01  	lw	s9, 20(sp)
8000338c: 03 2c 81 01  	lw	s8, 24(sp)
80003390: 83 2b c1 01  	lw	s7, 28(sp)
80003394: 03 2b 01 02  	lw	s6, 32(sp)
80003398: 83 2a 41 02  	lw	s5, 36(sp)
8000339c: 03 2a 81 02  	lw	s4, 40(sp)
800033a0: 83 29 c1 02  	lw	s3, 44(sp)
800033a4: 03 29 01 03  	lw	s2, 48(sp)
800033a8: 83 24 41 03  	lw	s1, 52(sp)
800033ac: 03 24 81 03  	lw	s0, 56(sp)
800033b0: 83 20 c1 03  	lw	ra, 60(sp)
800033b4: 13 01 01 04  	addi	sp, sp, 64
800033b8: 67 80 00 00  	ret

800033bc <_snrt_init_team>:
;     team->base.root = team;
800033bc: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800033c0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800033c4: 03 23 87 00  	lw	t1, 8(a4)
800033c8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800033cc: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800033d0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800033d4: 83 22 47 00  	lw	t0, 4(a4)
800033d8: 33 88 08 03  	mul	a6, a7, a6
800033dc: 33 05 58 02  	mul	a0, a6, t0
800033e0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800033e4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800033e8: 33 85 68 40  	sub	a0, a7, t1
800033ec: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800033f0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800033f4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800033f8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800033fc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80003400: 03 25 87 01  	lw	a0, 24(a4)
80003404: b7 05 00 10  	lui	a1, 65536
80003408: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000340c: 23 a2 07 02  	sw	zero, 36(a5)
80003410: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80003414: 03 25 07 02  	lw	a0, 32(a4)
80003418: 83 25 47 02  	lw	a1, 36(a4)
8000341c: 23 a4 a7 02  	sw	a0, 40(a5)
80003420: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80003424: 23 a8 c7 02  	sw	a2, 48(a5)
80003428: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
8000342c: 23 ac d7 02  	sw	a3, 56(a5)
80003430: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80003434: 03 25 07 01  	lw	a0, 16(a4)
80003438: 33 08 a6 00  	add	a6, a2, a0
8000343c: 93 05 08 19  	addi	a1, a6, 400
80003440: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80003444: b3 32 a8 00  	sltu	t0, a6, a0
80003448: 93 55 15 00  	srli	a1, a0, 1
8000344c: 33 03 b8 00  	add	t1, a6, a1
80003450: b3 35 03 01  	sltu	a1, t1, a6
80003454: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80003458: 23 a0 67 04  	sw	t1, 64(a5)
8000345c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80003460: 13 15 15 00  	slli	a0, a0, 1
80003464: b3 05 c5 00  	add	a1, a0, a2
80003468: 33 b5 a5 00  	sltu	a0, a1, a0
8000346c: 23 a4 b7 04  	sw	a1, 72(a5)
80003470: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80003474: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80003478: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000347c: 37 05 00 00  	lui	a0, 0
80003480: 33 05 45 00  	add	a0, a0, tp
80003484: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003488: 03 a5 07 00  	lw	a0, 0(a5)
8000348c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80003490: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80003494: b3 85 b8 40  	sub	a1, a7, a1
80003498: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000349c: b7 05 00 00  	lui	a1, 0
800034a0: b3 85 45 00  	add	a1, a1, tp
800034a4: 23 a2 a5 00  	sw	a0, 4(a1)
800034a8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800034ac: 33 85 a8 02  	mul	a0, a7, a0

800034b0 <.LBB0_1>:
800034b0: 97 15 00 00  	auipc	a1, 1
800034b4: 93 85 45 96  	addi	a1, a1, -1692
800034b8: 33 05 b5 00  	add	a0, a0, a1
800034bc: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800034c0: 83 28 07 03  	lw	a7, 48(a4)
800034c4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800034c8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800034cc: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800034d0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800034d4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800034d8: 13 05 76 00  	addi	a0, a2, 7
800034dc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800034e0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800034e4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800034e8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800034ec: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800034f0: 03 a5 05 00  	lw	a0, 0(a1)
800034f4: 13 05 f5 44  	addi	a0, a0, 1103
800034f8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800034fc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80003500: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80003504: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80003508: 37 05 00 00  	lui	a0, 0
8000350c: 33 05 45 00  	add	a0, a0, tp
80003510: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80003514: 37 05 00 00  	lui	a0, 0
80003518: 33 05 45 00  	add	a0, a0, tp
8000351c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80003520: 67 80 00 00  	ret

80003524 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80003524: 37 05 00 00  	lui	a0, 0
80003528: 33 05 45 00  	add	a0, a0, tp
8000352c: 03 25 05 00  	lw	a0, 0(a0)
80003530: 03 25 05 00  	lw	a0, 0(a0)
80003534: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003538: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000353c: 33 85 a5 40  	sub	a0, a1, a0
80003540: 67 80 00 00  	ret

80003544 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80003544: 37 05 00 00  	lui	a0, 0
80003548: 33 05 45 00  	add	a0, a0, tp
8000354c: 03 25 05 00  	lw	a0, 0(a0)
80003550: 03 25 05 00  	lw	a0, 0(a0)
80003554: 03 25 05 07  	lw	a0, 112(a0)
80003558: 67 80 00 00  	ret

8000355c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000355c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80003560: 63 44 05 00  	bltz	a0, 0x80003568 <__snrt_isr+0xc>
;         while (1)
80003564: 6f 00 00 00  	j	0x80003564 <__snrt_isr+0x8>
80003568: b7 05 00 80  	lui	a1, 524288
8000356c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80003570: 33 75 b5 00  	and	a0, a0, a1
80003574: 13 05 d5 ff  	addi	a0, a0, -3
80003578: 93 55 25 00  	srli	a1, a0, 2
8000357c: 13 15 e5 01  	slli	a0, a0, 30
80003580: 33 65 b5 00  	or	a0, a0, a1
80003584: 93 05 40 00  	addi	a1, zero, 4
80003588: 63 0a b5 06  	beq	a0, a1, 0x800035fc <.LBB1_7+0x58>
8000358c: 63 1a 05 08  	bnez	a0, 0x80003620 <.LBB1_7+0x7c>
80003590: 37 05 00 00  	lui	a0, 0
80003594: 33 05 45 00  	add	a0, a0, tp
80003598: 03 25 05 00  	lw	a0, 0(a0)
8000359c: 03 25 05 00  	lw	a0, 0(a0)
800035a0: f3 25 40 f1  	csrr	a1, mhartid

800035a4 <.LBB1_7>:
;     asm volatile(
800035a4: 17 16 00 00  	auipc	a2, 1
800035a8: 13 06 c6 86  	addi	a2, a2, -1940
800035ac: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800035b0: 93 06 06 00  	mv	a3, a2
800035b4: 93 02 10 00  	addi	t0, zero, 1
800035b8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800035bc: e3 9e 02 fe  	bnez	t0, 0x800035b8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800035c0: b7 06 00 00  	lui	a3, 0
800035c4: b3 86 46 00  	add	a3, a3, tp
800035c8: 83 a6 86 00  	lw	a3, 8(a3)
800035cc: 33 85 a5 40  	sub	a0, a1, a0
800035d0: 93 55 35 00  	srli	a1, a0, 3
800035d4: 93 f5 c5 ff  	andi	a1, a1, -4
800035d8: b3 85 b6 00  	add	a1, a3, a1
800035dc: 83 a6 05 00  	lw	a3, 0(a1)
800035e0: 13 07 10 00  	addi	a4, zero, 1
800035e4: 33 15 a7 00  	sll	a0, a4, a0
800035e8: 13 45 f5 ff  	not	a0, a0
800035ec: 33 f5 a6 00  	and	a0, a3, a0
800035f0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800035f4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800035f8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800035fc: 37 05 00 00  	lui	a0, 0
80003600: 33 05 45 00  	add	a0, a0, tp
80003604: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003608: b7 05 00 00  	lui	a1, 0
8000360c: b3 85 45 00  	add	a1, a1, tp
80003610: 83 a5 c5 00  	lw	a1, 12(a1)
80003614: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80003618: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000361c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80003620: 67 80 00 00  	ret

Disassembly of section .init:

80003630 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80003630: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80003634: 93 81 81 f1  	addi	gp, gp, -232

80003638 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80003638: 97 00 00 00  	auipc	ra, 0
8000363c: e7 80 40 3c  	jalr	964(ra)

80003640 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80003640: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80003644: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80003648: 97 00 00 00  	auipc	ra, 0
8000364c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80003650: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80003654: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80003658: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000365c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80003660: 63 92 02 02  	bnez	t0, 0x80003684 <snrt.crt0.init_registers>

80003664 <.Lpcrel_hi0>:
;     la        t0, _edata
80003664: 97 02 00 00  	auipc	t0, 0
80003668: 93 82 c2 7a  	addi	t0, t0, 1964

8000366c <.Lpcrel_hi1>:
;     la        t1, _end
8000366c: 17 03 00 00  	auipc	t1, 0
80003670: 13 03 83 7a  	addi	t1, t1, 1960
;     bge       t0, t1, 2f
80003674: 63 d8 62 00  	bge	t0, t1, 0x80003684 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80003678: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000367c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80003680: e3 cc 62 fe  	blt	t0, t1, 0x80003678 <.Lpcrel_hi1+0xc>

80003684 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80003684: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80003688: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000368c: 63 82 02 08  	beqz	t0, 0x80003710 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80003690: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80003694: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80003698: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000369c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800036a0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800036a4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800036a8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800036ac: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800036b0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800036b4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800036b8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800036bc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800036c0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800036c4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800036c8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800036cc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800036d0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800036d4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800036d8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800036dc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800036e0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800036e4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800036e8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800036ec: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800036f0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800036f4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800036f8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800036fc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80003700: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80003704: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80003708: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000370c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80003710 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80003710: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80003714: 23 a0 06 00  	sw	zero, 0(a3)

80003718 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80003718: 97 02 00 00  	auipc	t0, 0
8000371c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80003720: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80003724: 93 87 06 00  	mv	a5, a3

80003728 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80003728: 97 03 00 00  	auipc	t2, 0
8000372c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80003730: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80003734: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80003738: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000373c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80003740: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80003744: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80003748: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000374c: b3 86 66 40  	sub	a3, a3, t1

80003750 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80003750: 97 02 00 00  	auipc	t0, 0
80003754: 93 82 82 5f  	addi	t0, t0, 1528

80003758 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80003758: 17 03 00 00  	auipc	t1, 0
8000375c: 13 03 03 5f  	addi	t1, t1, 1520

80003760 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80003760: 97 03 00 00  	auipc	t2, 0
80003764: 93 83 83 5e  	addi	t2, t2, 1512

80003768 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80003768: 17 0e 00 00  	auipc	t3, 0
8000376c: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80003770: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80003774: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80003778: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000377c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80003780: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80003784: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80003788: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000378c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80003790: 63 dc 62 00  	bge	t0, t1, 0x800037a8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80003794: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80003798: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000379c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800037a0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800037a4: e3 c8 62 fe  	blt	t0, t1, 0x80003794 <.Lpcrel_hi7+0x2c>

800037a8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800037a8: 97 02 00 00  	auipc	t0, 0
800037ac: 93 82 02 5a  	addi	t0, t0, 1440

800037b0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800037b0: 17 03 00 00  	auipc	t1, 0
800037b4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
800037b8: 63 da 62 00  	bge	t0, t1, 0x800037cc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800037bc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800037c0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800037c4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800037c8: e3 ca 72 fe  	blt	t0, t2, 0x800037bc <.Lpcrel_hi9+0xc>

800037cc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800037cc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800037d0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800037d4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800037d8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800037dc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800037e0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800037e4: 97 00 00 00  	auipc	ra, 0
800037e8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
800037ec: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800037f0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800037f4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800037f8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800037fc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80003800: 13 01 41 01  	addi	sp, sp, 20

80003804 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80003804: 97 02 00 00  	auipc	t0, 0
80003808: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000380c: 73 90 52 30  	csrw	mtvec, t0

80003810 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80003810: 97 00 00 00  	auipc	ra, 0
80003814: e7 80 00 22  	jalr	544(ra)

80003818 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80003818: 97 d0 ff ff  	auipc	ra, 1048573
8000381c: e7 80 c0 e1  	jalr	-484(ra)
;     mv        s0, a0 # store return value in s0
80003820: 13 04 05 00  	mv	s0, a0

80003824 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80003824: 97 00 00 00  	auipc	ra, 0
80003828: e7 80 c0 20  	jalr	524(ra)

8000382c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000382c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80003830: 97 00 00 00  	auipc	ra, 0
80003834: e7 80 c0 22  	jalr	556(ra)
;     wfi
80003838: 73 00 50 10  	wfi	
;     j       1b
8000383c: 6f f0 df ff  	j	0x80003838 <snrt.crt0.end+0xc>

80003840 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80003840: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80003844: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80003848: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000384c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80003850: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80003854: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80003858: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000385c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80003860: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80003864: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80003868: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000386c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80003870: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80003874: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80003878: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000387c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80003880: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80003884: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80003888: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000388c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003890: 63 84 02 08  	beqz	t0, 0x80003918 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80003894: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80003898: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000389c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800038a0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800038a4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800038a8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800038ac: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800038b0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800038b4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800038b8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800038bc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800038c0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800038c4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800038c8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800038cc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800038d0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800038d4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800038d8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800038dc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800038e0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800038e4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800038e8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800038ec: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800038f0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800038f4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800038f8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800038fc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003900: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003904: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003908: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000390c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003910: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003914: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003918: 97 00 00 00  	auipc	ra, 0
8000391c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80003920: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003924: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003928: 63 84 02 08  	beqz	t0, 0x800039b0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000392c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003930: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003934: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003938: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000393c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003940: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003944: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003948: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000394c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003950: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003954: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003958: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000395c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80003960: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80003964: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80003968: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000396c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003970: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003974: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003978: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000397c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003980: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003984: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003988: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000398c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003990: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003994: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003998: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000399c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800039a0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800039a4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800039a8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800039ac: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800039b0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800039b4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800039b8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800039bc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800039c0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800039c4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800039c8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800039cc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800039d0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800039d4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800039d8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800039dc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800039e0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800039e4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800039e8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800039ec: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800039f0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800039f4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800039f8: 73 00 20 30  	mret	

800039fc <_snrt_init_core_info>:
;     mv        a4, a1
800039fc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003a00: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003a04: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003a08: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80003a0c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003a10: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003a14: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003a18: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80003a1c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003a20: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003a24: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003a28: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80003a2c: 67 80 00 00  	ret

80003a30 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003a30: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003a34: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003a38: 97 00 00 00  	auipc	ra, 0
80003a3c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80003a40: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003a44: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003a48: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80003a4c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003a50: 67 80 00 00  	ret

80003a54 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003a54: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003a58: 67 80 00 00  	ret

80003a5c <_snrt_exit>:
;     addi      sp, sp, -8
80003a5c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80003a60: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80003a64: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80003a68: 97 00 00 00  	auipc	ra, 0
80003a6c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80003a70: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003a74: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003a78: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80003a7c: 63 1c 05 00  	bnez	a0, 0x80003a94 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003a80: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003a84: 93 e2 12 00  	ori	t0, t0, 1

80003a88 <.Lpcrel_hi11>:
;     la        t1, tohost
80003a88: 17 03 00 00  	auipc	t1, 0
80003a8c: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80003a90: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003a94: 67 80 00 00  	ret
