
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark/benchmark-matmul-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000029f0 80000000 TEXT
  2 .init             00000468 800029f0 TEXT
  3 .rodata           000002b8 80002e58 DATA
  4 .htif             00000048 80003140 DATA
  5 .tdata            00000000 80003188 DATA
  6 .tbss             00000010 80003188 BSS
  7 .tbssend          00000000 80003198 DATA
  8 .sdata            000000c0 80003198 DATA
  9 .data             00000000 80003258 DATA
 10 .sbss             00000004 80003258 BSS
 11 .bss              00000000 8000325c BSS
 12 .dram             00000000 8000325c DATA
 13 .debug_info       00003fa7 00000000 
 14 .debug_abbrev     00000e9a 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       000031df 00000000 
 17 .debug_str        00000e21 00000000 
 18 .comment          00000029 00000000 
 19 .riscv.attributes 00000037 00000000 
 20 .debug_frame      00000388 00000000 
 21 .debug_loc        0000355d 00000000 
 22 .debug_ranges     00000598 00000000 
 23 .symtab           00003aa0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000979 00000000 


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
; int main() {
80000634: 13 01 01 ff  	addi	sp, sp, -16
;     gemm_result_t result = gemm_bench(gemm_seq_ssr);
80000638: 23 26 11 00  	sw	ra, 12(sp)

8000063c <.LBB0_4>:
8000063c: 97 25 00 00  	auipc	a1, 2
80000640: 93 85 05 1f  	addi	a1, a1, 496
80000644: 13 05 01 00  	mv	a0, sp
80000648: 97 20 00 00  	auipc	ra, 2
8000064c: e7 80 c0 f0  	jalr	-244(ra)
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000650: 37 05 00 00  	lui	a0, 0
80000654: 33 05 45 00  	add	a0, a0, tp
80000658: 03 25 05 00  	lw	a0, 0(a0)
8000065c: 03 25 05 00  	lw	a0, 0(a0)
80000660: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000664: f3 25 40 f1  	csrr	a1, mhartid
;     if (snrt_global_core_idx() == 0) {
80000668: 63 90 a5 02  	bne	a1, a0, 0x80000688 <.LBB0_5+0x18>
;         printf("Cycles (SSR): %u\n", result.cycles_total);
8000066c: 83 25 81 00  	lw	a1, 8(sp)

80000670 <.LBB0_5>:
80000670: 17 35 00 00  	auipc	a0, 3
80000674: 13 05 d5 87  	addi	a0, a0, -1923
80000678: 97 00 00 00  	auipc	ra, 0
8000067c: e7 80 00 02  	jalr	32(ra)
;         return result.errors;
80000680: 03 25 01 00  	lw	a0, 0(sp)
80000684: 6f 00 80 00  	j	0x8000068c <.LBB0_5+0x1c>
80000688: 13 05 00 00  	mv	a0, zero
; }
8000068c: 83 20 c1 00  	lw	ra, 12(sp)
80000690: 13 01 01 01  	addi	sp, sp, 16
80000694: 67 80 00 00  	ret

80000698 <printf_>:
; {
80000698: 13 01 01 fd  	addi	sp, sp, -48
8000069c: 23 26 11 00  	sw	ra, 12(sp)
800006a0: 93 02 05 00  	mv	t0, a0
800006a4: 23 26 11 03  	sw	a7, 44(sp)
800006a8: 23 24 01 03  	sw	a6, 40(sp)
800006ac: 23 22 f1 02  	sw	a5, 36(sp)
800006b0: 23 20 e1 02  	sw	a4, 32(sp)
800006b4: 23 2e d1 00  	sw	a3, 28(sp)
800006b8: 23 2c c1 00  	sw	a2, 24(sp)
800006bc: 23 2a b1 00  	sw	a1, 20(sp)
800006c0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800006c4: 23 24 a1 00  	sw	a0, 8(sp)

800006c8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800006c8: 17 15 00 00  	auipc	a0, 1
800006cc: 13 05 45 c2  	addi	a0, a0, -988
800006d0: 93 05 71 00  	addi	a1, sp, 7
800006d4: 13 06 f0 ff  	addi	a2, zero, -1
800006d8: 13 07 41 01  	addi	a4, sp, 20
800006dc: 93 86 02 00  	mv	a3, t0
800006e0: 97 00 00 00  	auipc	ra, 0
800006e4: e7 80 40 01  	jalr	20(ra)
;   return ret;
800006e8: 83 20 c1 00  	lw	ra, 12(sp)
800006ec: 13 01 01 03  	addi	sp, sp, 48
800006f0: 67 80 00 00  	ret

800006f4 <_vsnprintf.llvm.11632292163828655644>:
; {
800006f4: 13 01 01 f9  	addi	sp, sp, -112
800006f8: 23 26 11 06  	sw	ra, 108(sp)
800006fc: 23 24 81 06  	sw	s0, 104(sp)
80000700: 23 22 91 06  	sw	s1, 100(sp)
80000704: 23 20 21 07  	sw	s2, 96(sp)
80000708: 23 2e 31 05  	sw	s3, 92(sp)
8000070c: 23 2c 41 05  	sw	s4, 88(sp)
80000710: 23 2a 51 05  	sw	s5, 84(sp)
80000714: 23 28 61 05  	sw	s6, 80(sp)
80000718: 23 26 71 05  	sw	s7, 76(sp)
8000071c: 23 24 81 05  	sw	s8, 72(sp)
80000720: 23 22 91 05  	sw	s9, 68(sp)
80000724: 23 20 a1 05  	sw	s10, 64(sp)
80000728: 23 2e b1 03  	sw	s11, 60(sp)
8000072c: 93 09 07 00  	mv	s3, a4
80000730: 13 84 06 00  	mv	s0, a3
80000734: 93 0a 06 00  	mv	s5, a2
80000738: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000073c: 63 86 05 00  	beqz	a1, 0x80000748 <.LBB1_183>
80000740: 13 09 05 00  	mv	s2, a0
80000744: 6f 00 c0 00  	j	0x80000750 <.LBB1_183+0x8>

80000748 <.LBB1_183>:
80000748: 17 19 00 00  	auipc	s2, 1
8000074c: 13 09 09 c5  	addi	s2, s2, -944
80000750: 13 0c 00 00  	mv	s8, zero
80000754: 13 0b 50 02  	addi	s6, zero, 37
80000758: 93 0d 00 01  	addi	s11, zero, 16
8000075c: 93 0b e0 02  	addi	s7, zero, 46
80000760: 37 15 00 00  	lui	a0, 1
80000764: 13 05 05 80  	addi	a0, a0, -2048
80000768: 23 2c a1 00  	sw	a0, 24(sp)
8000076c: 37 05 01 00  	lui	a0, 16
80000770: 13 05 f5 ff  	addi	a0, a0, -1
80000774: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000778: 13 0d 24 00  	addi	s10, s0, 2
8000077c: 93 0c 0c 00  	mv	s9, s8
80000780: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000784: 03 45 04 00  	lbu	a0, 0(s0)
80000788: e3 04 05 30  	beqz	a0, 0x80001290 <.LBB1_124+0x3b0>
8000078c: 63 08 65 03  	beq	a0, s6, 0x800007bc <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000790: 93 84 1c 00  	addi	s1, s9, 1
80000794: 93 05 0a 00  	mv	a1, s4
80000798: 13 86 0c 00  	mv	a2, s9
8000079c: 93 86 0a 00  	mv	a3, s5
800007a0: e7 00 09 00  	jalr	s2
;       format++;
800007a4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800007a8: 13 0d 1d 00  	addi	s10, s10, 1
800007ac: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800007b0: 03 45 04 00  	lbu	a0, 0(s0)
800007b4: e3 1c 05 fc  	bnez	a0, 0x8000078c <.LBB1_183+0x44>
800007b8: 6f 00 90 2d  	j	0x80001290 <.LBB1_124+0x3b0>
;     flags = 0U;
800007bc: 13 04 00 00  	mv	s0, zero
800007c0: 6f 00 00 01  	j	0x800007d0 <.LBB1_9+0x8>

800007c4 <.LBB1_8>:
800007c4: 93 05 00 01  	addi	a1, zero, 16

800007c8 <.LBB1_9>:
800007c8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800007cc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800007d0: 03 45 fd ff  	lbu	a0, -1(s10)
800007d4: 93 05 05 fe  	addi	a1, a0, -32
800007d8: 63 ec bd 02  	bltu	s11, a1, 0x80000810 <.LBB1_15>
800007dc: 93 95 25 00  	slli	a1, a1, 2

800007e0 <.LBB1_184>:
800007e0: 17 26 00 00  	auipc	a2, 2
800007e4: 13 06 46 72  	addi	a2, a2, 1828
800007e8: b3 85 c5 00  	add	a1, a1, a2
800007ec: 03 a6 05 00  	lw	a2, 0(a1)
800007f0: 93 05 10 00  	addi	a1, zero, 1
800007f4: 67 00 06 00  	jr	a2

800007f8 <.LBB1_12>:
800007f8: 93 05 80 00  	addi	a1, zero, 8
800007fc: 6f f0 df fc  	j	0x800007c8 <.LBB1_9>

80000800 <.LBB1_13>:
80000800: 93 05 40 00  	addi	a1, zero, 4
80000804: 6f f0 5f fc  	j	0x800007c8 <.LBB1_9>

80000808 <.LBB1_14>:
80000808: 93 05 20 00  	addi	a1, zero, 2
8000080c: 6f f0 df fb  	j	0x800007c8 <.LBB1_9>

80000810 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000810: 93 05 05 fd  	addi	a1, a0, -48
80000814: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000818: 93 05 fd ff  	addi	a1, s10, -1
8000081c: 93 06 90 00  	addi	a3, zero, 9
80000820: 63 ee c6 06  	bltu	a3, a2, 0x8000089c <.LBB1_15+0x8c>
80000824: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000828: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000082c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000830: b3 06 8b 03  	mul	a3, s6, s8
80000834: 93 85 15 00  	addi	a1, a1, 1
80000838: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000083c: 93 06 05 fd  	addi	a3, a0, -48
80000840: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000844: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000848: e3 e0 86 ff  	bltu	a3, s8, 0x80000828 <.LBB1_15+0x18>
8000084c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000850: 63 16 75 0b  	bne	a0, s7, 0x800008fc <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80000854: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000858: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000085c: 93 05 05 fd  	addi	a1, a0, -48
80000860: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80000864: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000868: 93 06 90 00  	addi	a3, zero, 9
8000086c: 63 e0 c6 06  	bltu	a3, a2, 0x800008cc <.LBB1_15+0xbc>
80000870: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000874: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000878: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000087c: b3 86 8b 03  	mul	a3, s7, s8
80000880: 93 85 15 00  	addi	a1, a1, 1
80000884: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000888: 93 06 05 fd  	addi	a3, a0, -48
8000088c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000890: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80000894: e3 e0 86 ff  	bltu	a3, s8, 0x80000874 <.LBB1_15+0x64>
80000898: 6f 00 00 07  	j	0x80000908 <.LBB1_15+0xf8>
;     else if (*format == '*') {
8000089c: 13 06 a0 02  	addi	a2, zero, 42
800008a0: 63 18 c5 04  	bne	a0, a2, 0x800008f0 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800008a4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800008a8: 63 d4 05 00  	bgez	a1, 0x800008b0 <.LBB1_15+0xa0>
800008ac: 13 64 24 00  	ori	s0, s0, 2
800008b0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800008b4: 03 45 0d 00  	lbu	a0, 0(s10)
800008b8: 13 d6 f5 41  	srai	a2, a1, 31
800008bc: b3 85 c5 00  	add	a1, a1, a2
800008c0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800008c4: e3 08 75 f9  	beq	a0, s7, 0x80000854 <.LBB1_15+0x44>
800008c8: 6f 00 40 03  	j	0x800008fc <.LBB1_15+0xec>
;       else if (*format == '*') {
800008cc: 13 06 a0 02  	addi	a2, zero, 42
800008d0: 63 1a c5 02  	bne	a0, a2, 0x80000904 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800008d4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800008d8: 63 44 70 01  	bgtz	s7, 0x800008e0 <.LBB1_15+0xd0>
800008dc: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800008e0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800008e4: 13 0d 2d 00  	addi	s10, s10, 2
800008e8: 93 89 49 00  	addi	s3, s3, 4
800008ec: 6f 00 00 02  	j	0x8000090c <.LBB1_15+0xfc>
800008f0: 13 0b 00 00  	mv	s6, zero
800008f4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800008f8: e3 0e 75 f5  	beq	a0, s7, 0x80000854 <.LBB1_15+0x44>
800008fc: 93 0b 00 00  	mv	s7, zero
80000900: 6f 00 c0 00  	j	0x8000090c <.LBB1_15+0xfc>
80000904: 93 0b 00 00  	mv	s7, zero
80000908: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000090c: 93 05 85 f9  	addi	a1, a0, -104
80000910: 13 d6 15 00  	srli	a2, a1, 1
80000914: 93 95 f5 01  	slli	a1, a1, 31
80000918: b3 e5 c5 00  	or	a1, a1, a2
8000091c: 13 06 90 00  	addi	a2, zero, 9
80000920: 63 62 b6 06  	bltu	a2, a1, 0x80000984 <.LBB1_42>
80000924: 93 95 25 00  	slli	a1, a1, 2

80000928 <.LBB1_185>:
80000928: 17 26 00 00  	auipc	a2, 2
8000092c: 13 06 06 62  	addi	a2, a2, 1568
80000930: b3 85 c5 00  	add	a1, a1, a2
80000934: 83 a6 05 00  	lw	a3, 0(a1)
80000938: 93 05 10 00  	addi	a1, zero, 1
8000093c: 13 06 00 10  	addi	a2, zero, 256
80000940: 67 80 06 00  	jr	a3

80000944 <.LBB1_36>:
;         if (*format == 'h') {
80000944: 03 45 1d 00  	lbu	a0, 1(s10)
80000948: 93 05 80 06  	addi	a1, zero, 104
8000094c: 63 12 b5 12  	bne	a0, a1, 0x80000a70 <.LBB1_53+0x48>
80000950: 93 05 20 00  	addi	a1, zero, 2
80000954: 13 06 00 0c  	addi	a2, zero, 192
80000958: 6f 00 00 02  	j	0x80000978 <.LBB1_41>

8000095c <.LBB1_38>:
8000095c: 13 06 00 20  	addi	a2, zero, 512
80000960: 6f 00 80 01  	j	0x80000978 <.LBB1_41>

80000964 <.LBB1_39>:
;         if (*format == 'l') {
80000964: 03 45 1d 00  	lbu	a0, 1(s10)
80000968: 93 05 c0 06  	addi	a1, zero, 108
8000096c: 63 18 b5 10  	bne	a0, a1, 0x80000a7c <.LBB1_53+0x54>
80000970: 93 05 20 00  	addi	a1, zero, 2
80000974: 13 06 00 30  	addi	a2, zero, 768

80000978 <.LBB1_41>:
80000978: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000097c: 03 45 0d 00  	lbu	a0, 0(s10)
80000980: 33 64 c4 00  	or	s0, s0, a2

80000984 <.LBB1_42>:
;     switch (*format) {
80000984: 93 05 b5 fd  	addi	a1, a0, -37
80000988: 13 06 30 05  	addi	a2, zero, 83
8000098c: 63 64 b6 10  	bltu	a2, a1, 0x80000a94 <.LBB1_59>
80000990: 93 95 25 00  	slli	a1, a1, 2

80000994 <.LBB1_186>:
80000994: 17 26 00 00  	auipc	a2, 2
80000998: 13 06 c6 5d  	addi	a2, a2, 1500
8000099c: b3 85 c5 00  	add	a1, a1, a2
800009a0: 03 a6 05 00  	lw	a2, 0(a1)
800009a4: 93 05 80 00  	addi	a1, zero, 8
800009a8: 13 0c 00 01  	addi	s8, zero, 16
800009ac: 67 00 06 00  	jr	a2

800009b0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800009b0: 13 74 f4 fe  	andi	s0, s0, -17
800009b4: 13 0c a0 00  	addi	s8, zero, 10

800009b8 <.LBB1_45>:
;         if (*format == 'X') {
800009b8: 93 05 80 05  	addi	a1, zero, 88
800009bc: 63 14 b5 00  	bne	a0, a1, 0x800009c4 <.LBB1_45+0xc>
800009c0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800009c4: 93 05 40 06  	addi	a1, zero, 100
800009c8: 63 08 b5 0e  	beq	a0, a1, 0x80000ab8 <.LBB1_62+0x8>
800009cc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800009d0: 13 06 90 06  	addi	a2, zero, 105
800009d4: 63 02 c5 0e  	beq	a0, a2, 0x80000ab8 <.LBB1_62+0x8>
800009d8: 6f 00 80 0d  	j	0x80000ab0 <.LBB1_62>

800009dc <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800009dc: 93 05 60 04  	addi	a1, zero, 70
800009e0: 63 14 b5 00  	bne	a0, a1, 0x800009e8 <.LBB1_49+0xc>
800009e4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800009e8: 13 85 79 00  	addi	a0, s3, 7
800009ec: 13 75 85 ff  	andi	a0, a0, -8
800009f0: 07 35 05 00  	fld	fa0, 0(a0)
800009f4: 93 09 85 00  	addi	s3, a0, 8
800009f8: 13 05 09 00  	mv	a0, s2
800009fc: 93 05 0a 00  	mv	a1, s4
80000a00: 13 86 0c 00  	mv	a2, s9
80000a04: 93 86 0a 00  	mv	a3, s5
80000a08: 13 87 0b 00  	mv	a4, s7
80000a0c: 93 07 0b 00  	mv	a5, s6
80000a10: 13 08 04 00  	mv	a6, s0
80000a14: 97 10 00 00  	auipc	ra, 1
80000a18: e7 80 80 98  	jalr	-1656(ra)
80000a1c: 6f 00 00 7c  	j	0x800011dc <.LBB1_124+0x2fc>

80000a20 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80000a20: 83 25 81 01  	lw	a1, 24(sp)
80000a24: 33 64 b4 00  	or	s0, s0, a1

80000a28 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80000a28: 13 65 25 00  	ori	a0, a0, 2
80000a2c: 93 05 70 04  	addi	a1, zero, 71
80000a30: 63 14 b5 00  	bne	a0, a1, 0x80000a38 <.LBB1_53+0x10>
80000a34: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000a38: 13 85 79 00  	addi	a0, s3, 7
80000a3c: 13 75 85 ff  	andi	a0, a0, -8
80000a40: 07 35 05 00  	fld	fa0, 0(a0)
80000a44: 93 09 85 00  	addi	s3, a0, 8
80000a48: 13 05 09 00  	mv	a0, s2
80000a4c: 93 05 0a 00  	mv	a1, s4
80000a50: 13 86 0c 00  	mv	a2, s9
80000a54: 93 86 0a 00  	mv	a3, s5
80000a58: 13 87 0b 00  	mv	a4, s7
80000a5c: 93 07 0b 00  	mv	a5, s6
80000a60: 13 08 04 00  	mv	a6, s0
80000a64: 97 10 00 00  	auipc	ra, 1
80000a68: e7 80 80 01  	jalr	24(ra)
80000a6c: 6f 00 00 77  	j	0x800011dc <.LBB1_124+0x2fc>
80000a70: 13 64 04 08  	ori	s0, s0, 128
80000a74: 13 0d 1d 00  	addi	s10, s10, 1
80000a78: 6f f0 df f0  	j	0x80000984 <.LBB1_42>
80000a7c: 13 64 04 10  	ori	s0, s0, 256
80000a80: 13 0d 1d 00  	addi	s10, s10, 1
80000a84: 6f f0 1f f0  	j	0x80000984 <.LBB1_42>

80000a88 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80000a88: 13 8c 1c 00  	addi	s8, s9, 1
80000a8c: 13 05 50 02  	addi	a0, zero, 37
80000a90: 6f 00 80 00  	j	0x80000a98 <.LBB1_59+0x4>

80000a94 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80000a94: 13 8c 1c 00  	addi	s8, s9, 1
80000a98: 93 05 0a 00  	mv	a1, s4
80000a9c: 13 86 0c 00  	mv	a2, s9
80000aa0: 93 86 0a 00  	mv	a3, s5
80000aa4: e7 00 09 00  	jalr	s2
80000aa8: 6f 00 80 73  	j	0x800011e0 <.LBB1_124+0x300>

80000aac <.LBB1_61>:
80000aac: 93 05 20 00  	addi	a1, zero, 2

80000ab0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80000ab0: 13 74 34 ff  	andi	s0, s0, -13
80000ab4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80000ab8: 93 75 04 40  	andi	a1, s0, 1024
80000abc: 63 84 05 00  	beqz	a1, 0x80000ac4 <.LBB1_62+0x14>
80000ac0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80000ac4: 93 05 90 06  	addi	a1, zero, 105
80000ac8: 63 06 b5 00  	beq	a0, a1, 0x80000ad4 <.LBB1_62+0x24>
80000acc: 93 05 40 06  	addi	a1, zero, 100
80000ad0: 63 1c b5 12  	bne	a0, a1, 0x80000c08 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80000ad4: 13 75 04 20  	andi	a0, s0, 512
80000ad8: 63 16 05 02  	bnez	a0, 0x80000b04 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80000adc: 13 75 04 10  	andi	a0, s0, 256
80000ae0: 63 1c 05 14  	bnez	a0, 0x80000c38 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000ae4: 13 75 04 04  	andi	a0, s0, 64
80000ae8: 63 18 05 4e  	bnez	a0, 0x80000fd8 <.LBB1_124+0xf8>
80000aec: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000af0: 93 75 04 08  	andi	a1, s0, 128
80000af4: 63 84 05 4e  	beqz	a1, 0x80000fdc <.LBB1_124+0xfc>
80000af8: 13 15 08 01  	slli	a0, a6, 16
80000afc: 13 58 05 41  	srai	a6, a0, 16
80000b00: 6f 00 c0 4d  	j	0x80000fdc <.LBB1_124+0xfc>
80000b04: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80000b08: 13 85 79 00  	addi	a0, s3, 7
80000b0c: 13 75 85 ff  	andi	a0, a0, -8
80000b10: 83 29 05 00  	lw	s3, 0(a0)
80000b14: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80000b18: 13 65 45 00  	ori	a0, a0, 4
80000b1c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80000b20: 23 24 a1 00  	sw	a0, 8(sp)
80000b24: 33 e5 a9 00  	or	a0, s3, a0
80000b28: 63 14 05 00  	bnez	a0, 0x80000b30 <.LBB1_62+0x80>
80000b2c: 13 74 f4 fe  	andi	s0, s0, -17
80000b30: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000b34: 93 75 04 40  	andi	a1, s0, 1024
80000b38: 93 d5 a5 00  	srli	a1, a1, 10
80000b3c: 33 75 b5 00  	and	a0, a0, a1
80000b40: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000b44: 63 14 05 0a  	bnez	a0, 0x80000bec <.LBB1_62+0x13c>
80000b48: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000b4c: 63 da 04 00  	bgez	s1, 0x80000b60 <.LBB1_62+0xb0>
80000b50: 33 35 30 01  	snez	a0, s3
80000b54: b3 09 30 41  	neg	s3, s3
80000b58: 33 85 a4 00  	add	a0, s1, a0
80000b5c: b3 04 a0 40  	neg	s1, a0
80000b60: 13 09 00 00  	mv	s2, zero
80000b64: 13 75 04 02  	andi	a0, s0, 32
80000b68: 13 45 15 06  	xori	a0, a0, 97
80000b6c: 13 05 65 0f  	addi	a0, a0, 246
80000b70: 23 2a a1 00  	sw	a0, 20(sp)
80000b74: 6f 00 40 02  	j	0x80000b98 <.LBB1_62+0xe8>
80000b78: 13 06 10 00  	addi	a2, zero, 1
80000b7c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000b80: 93 36 f9 01  	sltiu	a3, s2, 31
80000b84: 33 f6 c6 00  	and	a2, a3, a2
80000b88: 13 89 07 00  	mv	s2, a5
80000b8c: 93 09 05 00  	mv	s3, a0
80000b90: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000b94: 63 0c 06 04  	beqz	a2, 0x80000bec <.LBB1_62+0x13c>
;       value /= base;
80000b98: 13 85 09 00  	mv	a0, s3
80000b9c: 93 85 04 00  	mv	a1, s1
80000ba0: 13 06 0c 00  	mv	a2, s8
80000ba4: 93 06 00 00  	mv	a3, zero
80000ba8: 97 f0 ff ff  	auipc	ra, 1048575
80000bac: e7 80 80 45  	jalr	1112(ra)
80000bb0: 33 06 85 03  	mul	a2, a0, s8
80000bb4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000bb8: 13 77 e6 0f  	andi	a4, a2, 254
80000bbc: 93 06 00 03  	addi	a3, zero, 48
80000bc0: 93 07 a0 00  	addi	a5, zero, 10
80000bc4: 63 64 f7 00  	bltu	a4, a5, 0x80000bcc <.LBB1_62+0x11c>
80000bc8: 83 26 41 01  	lw	a3, 20(sp)
80000bcc: 33 86 c6 00  	add	a2, a3, a2
80000bd0: 93 06 c1 01  	addi	a3, sp, 28
80000bd4: b3 86 26 01  	add	a3, a3, s2
80000bd8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000bdc: e3 9e 04 f8  	bnez	s1, 0x80000b78 <.LBB1_62+0xc8>
80000be0: 33 b6 89 01  	sltu	a2, s3, s8
80000be4: 13 46 16 00  	xori	a2, a2, 1
80000be8: 6f f0 5f f9  	j	0x80000b7c <.LBB1_62+0xcc>
80000bec: 03 25 41 00  	lw	a0, 4(sp)
80000bf0: 93 09 85 00  	addi	s3, a0, 8
80000bf4: 03 25 81 00  	lw	a0, 8(sp)
80000bf8: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000bfc: 13 07 c1 01  	addi	a4, sp, 28
80000c00: 03 29 c1 00  	lw	s2, 12(sp)
80000c04: 6f 00 80 47  	j	0x8000107c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80000c08: 13 75 04 20  	andi	a0, s0, 512
80000c0c: 63 12 05 0c  	bnez	a0, 0x80000cd0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80000c10: 13 75 04 10  	andi	a0, s0, 256
80000c14: 63 1e 05 46  	bnez	a0, 0x80001090 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000c18: 13 75 04 04  	andi	a0, s0, 64
80000c1c: 63 10 05 50  	bnez	a0, 0x8000111c <.LBB1_124+0x23c>
80000c20: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000c24: 93 75 04 08  	andi	a1, s0, 128
80000c28: 63 8c 05 4e  	beqz	a1, 0x80001120 <.LBB1_124+0x240>
80000c2c: 83 25 01 01  	lw	a1, 16(sp)
80000c30: 33 75 b5 00  	and	a0, a0, a1
80000c34: 6f 00 c0 4e  	j	0x80001120 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80000c38: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80000c3c: 63 14 08 00  	bnez	a6, 0x80000c44 <.LBB1_62+0x194>
80000c40: 13 74 f4 fe  	andi	s0, s0, -17
80000c44: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80000c48: 13 76 04 40  	andi	a2, s0, 1024
80000c4c: 13 56 a6 00  	srli	a2, a2, 10
80000c50: b3 f5 c5 00  	and	a1, a1, a2
80000c54: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000c58: 63 9c 05 40  	bnez	a1, 0x80001070 <.LBB1_124+0x190>
80000c5c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000c60: 13 56 f8 41  	srai	a2, a6, 31
80000c64: b3 06 c8 00  	add	a3, a6, a2
80000c68: b3 c6 c6 00  	xor	a3, a3, a2
80000c6c: 13 76 04 02  	andi	a2, s0, 32
80000c70: 13 46 16 06  	xori	a2, a2, 97
80000c74: 93 08 66 0f  	addi	a7, a2, 246
80000c78: 6f 00 40 03  	j	0x80000cac <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000c7c: 33 05 f6 00  	add	a0, a2, a5
80000c80: 93 87 15 00  	addi	a5, a1, 1
80000c84: 13 06 c1 01  	addi	a2, sp, 28
80000c88: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000c8c: b3 b6 86 01  	sltu	a3, a3, s8
80000c90: 93 c6 16 00  	xori	a3, a3, 1
80000c94: 93 b5 f5 01  	sltiu	a1, a1, 31
80000c98: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000c9c: 23 00 a6 00  	sb	a0, 0(a2)
80000ca0: 93 85 07 00  	mv	a1, a5
80000ca4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000ca8: 63 84 04 3c  	beqz	s1, 0x80001070 <.LBB1_124+0x190>
;       value /= base;
80000cac: 33 d7 86 03  	divu	a4, a3, s8
80000cb0: 33 06 87 03  	mul	a2, a4, s8
80000cb4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000cb8: 13 f5 e7 0f  	andi	a0, a5, 254
80000cbc: 13 06 00 03  	addi	a2, zero, 48
80000cc0: 93 04 a0 00  	addi	s1, zero, 10
80000cc4: e3 6c 95 fa  	bltu	a0, s1, 0x80000c7c <.LBB1_62+0x1cc>
80000cc8: 13 86 08 00  	mv	a2, a7
80000ccc: 6f f0 1f fb  	j	0x80000c7c <.LBB1_62+0x1cc>
80000cd0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80000cd4: 13 85 79 00  	addi	a0, s3, 7
80000cd8: 93 75 85 ff  	andi	a1, a0, -8
80000cdc: 03 a9 05 00  	lw	s2, 0(a1)
80000ce0: 13 e5 45 00  	ori	a0, a1, 4
80000ce4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80000ce8: 33 65 39 01  	or	a0, s2, s3
80000cec: 23 24 b1 00  	sw	a1, 8(sp)
80000cf0: 63 14 05 00  	bnez	a0, 0x80000cf8 <.LBB1_62+0x248>
80000cf4: 13 74 f4 fe  	andi	s0, s0, -17
80000cf8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000cfc: 93 75 04 40  	andi	a1, s0, 1024
80000d00: 93 d5 a5 00  	srli	a1, a1, 10
80000d04: 33 75 b5 00  	and	a0, a0, a1
80000d08: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000d0c: 63 18 05 08  	bnez	a0, 0x80000d9c <.LBB1_62+0x2ec>
80000d10: 93 04 00 00  	mv	s1, zero
80000d14: 13 75 04 02  	andi	a0, s0, 32
80000d18: 13 45 15 06  	xori	a0, a0, 97
80000d1c: 13 05 65 0f  	addi	a0, a0, 246
80000d20: 23 2a a1 00  	sw	a0, 20(sp)
80000d24: 6f 00 40 02  	j	0x80000d48 <.LBB1_62+0x298>
80000d28: 13 06 10 00  	addi	a2, zero, 1
80000d2c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000d30: 93 b6 f4 01  	sltiu	a3, s1, 31
80000d34: 33 f6 c6 00  	and	a2, a3, a2
80000d38: 93 84 07 00  	mv	s1, a5
80000d3c: 13 09 05 00  	mv	s2, a0
80000d40: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000d44: 63 0c 06 04  	beqz	a2, 0x80000d9c <.LBB1_62+0x2ec>
;       value /= base;
80000d48: 13 05 09 00  	mv	a0, s2
80000d4c: 93 85 09 00  	mv	a1, s3
80000d50: 13 06 0c 00  	mv	a2, s8
80000d54: 93 06 00 00  	mv	a3, zero
80000d58: 97 f0 ff ff  	auipc	ra, 1048575
80000d5c: e7 80 80 2a  	jalr	680(ra)
80000d60: 33 06 85 03  	mul	a2, a0, s8
80000d64: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000d68: 13 77 e6 0f  	andi	a4, a2, 254
80000d6c: 93 06 00 03  	addi	a3, zero, 48
80000d70: 93 07 a0 00  	addi	a5, zero, 10
80000d74: 63 64 f7 00  	bltu	a4, a5, 0x80000d7c <.LBB1_62+0x2cc>
80000d78: 83 26 41 01  	lw	a3, 20(sp)
80000d7c: 33 86 c6 00  	add	a2, a3, a2
80000d80: 93 06 c1 01  	addi	a3, sp, 28
80000d84: b3 86 96 00  	add	a3, a3, s1
80000d88: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000d8c: e3 9e 09 f8  	bnez	s3, 0x80000d28 <.LBB1_62+0x278>
80000d90: 33 36 89 01  	sltu	a2, s2, s8
80000d94: 13 46 16 00  	xori	a2, a2, 1
80000d98: 6f f0 5f f9  	j	0x80000d2c <.LBB1_62+0x27c>
80000d9c: 03 25 81 00  	lw	a0, 8(sp)
80000da0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000da4: 13 07 c1 01  	addi	a4, sp, 28
80000da8: 03 29 c1 00  	lw	s2, 12(sp)
80000dac: 6f 00 40 40  	j	0x800011b0 <.LBB1_124+0x2d0>

80000db0 <.LBB1_108>:
80000db0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80000db4: 13 79 24 00  	andi	s2, s0, 2
80000db8: 93 04 10 00  	addi	s1, zero, 1
80000dbc: 63 1e 09 02  	bnez	s2, 0x80000df8 <.LBB1_108+0x48>
80000dc0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80000dc4: 63 6a 9b 02  	bltu	s6, s1, 0x80000df8 <.LBB1_108+0x48>
80000dc8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80000dcc: 13 0c fb ff  	addi	s8, s6, -1
80000dd0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80000dd4: 33 86 8c 00  	add	a2, s9, s0
80000dd8: 13 05 00 02  	addi	a0, zero, 32
80000ddc: 93 05 0a 00  	mv	a1, s4
80000de0: 93 86 0a 00  	mv	a3, s5
80000de4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80000de8: 13 04 14 00  	addi	s0, s0, 1
80000dec: e3 14 8c fe  	bne	s8, s0, 0x80000dd4 <.LBB1_108+0x24>
80000df0: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80000df4: b3 8c 8c 00  	add	s9, s9, s0
80000df8: 03 c5 09 00  	lbu	a0, 0(s3)
80000dfc: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80000e00: 93 89 49 00  	addi	s3, s3, 4
80000e04: 13 8c 1c 00  	addi	s8, s9, 1
80000e08: 93 05 0a 00  	mv	a1, s4
80000e0c: 13 86 0c 00  	mv	a2, s9
80000e10: 93 86 0a 00  	mv	a3, s5
80000e14: 13 89 0b 00  	mv	s2, s7
80000e18: e7 80 0b 00  	jalr	s7
80000e1c: 33 b5 64 01  	sltu	a0, s1, s6
80000e20: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80000e24: 33 65 a4 00  	or	a0, s0, a0
80000e28: 63 1c 05 3a  	bnez	a0, 0x800011e0 <.LBB1_124+0x300>
;           while (l++ < width) {
80000e2c: 33 04 9b 40  	sub	s0, s6, s1
80000e30: 93 0b e0 02  	addi	s7, zero, 46
80000e34: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80000e38: 13 0c 1c 00  	addi	s8, s8, 1
80000e3c: 13 05 00 02  	addi	a0, zero, 32
80000e40: 93 05 0a 00  	mv	a1, s4
80000e44: 93 86 0a 00  	mv	a3, s5
80000e48: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80000e4c: 13 04 f4 ff  	addi	s0, s0, -1
80000e50: e3 12 04 fe  	bnez	s0, 0x80000e34 <.LBB1_108+0x84>
80000e54: 13 0b 50 02  	addi	s6, zero, 37
80000e58: 13 04 1d 00  	addi	s0, s10, 1
80000e5c: 6f f0 df 91  	j	0x80000778 <.LBB1_183+0x30>

80000e60 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80000e60: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80000e64: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80000e68: 63 14 05 00  	bnez	a0, 0x80000e70 <.LBB1_117+0x10>
80000e6c: 93 fe fe fe  	andi	t4, t4, -17
80000e70: 93 04 a0 00  	addi	s1, zero, 10
80000e74: 13 04 f0 00  	addi	s0, zero, 15
80000e78: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000e7c: 13 f6 0e 40  	andi	a2, t4, 1024
80000e80: 13 56 a6 00  	srli	a2, a2, 10
80000e84: b3 f5 c5 00  	and	a1, a1, a2
80000e88: 93 07 00 00  	mv	a5, zero
80000e8c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80000e90: 63 98 05 10  	bnez	a1, 0x80000fa0 <.LBB1_124+0xc0>
80000e94: 93 05 00 00  	mv	a1, zero
80000e98: 6f 00 40 03  	j	0x80000ecc <.LBB1_117+0x6c>
80000e9c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000ea0: 33 06 d6 00  	add	a2, a2, a3
80000ea4: 93 87 15 00  	addi	a5, a1, 1
80000ea8: 93 06 c1 01  	addi	a3, sp, 28
80000eac: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000eb0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80000eb4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000eb8: 93 b5 f5 01  	sltiu	a1, a1, 31
80000ebc: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000ec0: 23 80 c6 00  	sb	a2, 0(a3)
80000ec4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000ec8: 63 0c 07 0c  	beqz	a4, 0x80000fa0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000ecc: 93 76 e5 00  	andi	a3, a0, 14
80000ed0: 13 06 00 03  	addi	a2, zero, 48
80000ed4: e3 e4 96 fc  	bltu	a3, s1, 0x80000e9c <.LBB1_117+0x3c>
80000ed8: 13 06 70 03  	addi	a2, zero, 55
80000edc: 6f f0 1f fc  	j	0x80000e9c <.LBB1_117+0x3c>

80000ee0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80000ee0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80000ee4: 03 c5 07 00  	lbu	a0, 0(a5)
80000ee8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80000eec: 63 0c 05 02  	beqz	a0, 0x80000f24 <.LBB1_124+0x44>
80000ef0: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80000ef4: 63 84 0b 00  	beqz	s7, 0x80000efc <.LBB1_124+0x1c>
80000ef8: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80000efc: 93 85 f5 ff  	addi	a1, a1, -1
80000f00: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80000f04: 03 c7 16 00  	lbu	a4, 1(a3)
80000f08: 13 86 16 00  	addi	a2, a3, 1
80000f0c: b3 36 e0 00  	snez	a3, a4
80000f10: 33 37 b0 00  	snez	a4, a1
80000f14: 33 77 d7 00  	and	a4, a4, a3
80000f18: 93 85 f5 ff  	addi	a1, a1, -1
80000f1c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80000f20: e3 12 07 fe  	bnez	a4, 0x80000f04 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80000f24: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80000f28: 93 75 04 40  	andi	a1, s0, 1024
80000f2c: 93 b4 15 00  	seqz	s1, a1
80000f30: 23 2a c1 00  	sw	a2, 20(sp)
80000f34: b3 35 76 01  	sltu	a1, a2, s7
80000f38: b3 e5 b4 00  	or	a1, s1, a1
80000f3c: 63 94 05 00  	bnez	a1, 0x80000f44 <.LBB1_124+0x64>
80000f40: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80000f44: 93 75 24 00  	andi	a1, s0, 2
80000f48: 23 26 b1 00  	sw	a1, 12(sp)
80000f4c: 63 96 05 2a  	bnez	a1, 0x800011f8 <.LBB1_124+0x318>
80000f50: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80000f54: 63 fe 65 29  	bgeu	a1, s6, 0x800011f0 <.LBB1_124+0x310>
80000f58: 23 24 f1 00  	sw	a5, 8(sp)
80000f5c: 13 04 00 00  	mv	s0, zero
80000f60: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80000f64: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80000f68: 33 86 8c 00  	add	a2, s9, s0
80000f6c: 13 05 00 02  	addi	a0, zero, 32
80000f70: 93 05 0a 00  	mv	a1, s4
80000f74: 93 86 0a 00  	mv	a3, s5
80000f78: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80000f7c: 13 04 14 00  	addi	s0, s0, 1
80000f80: e3 14 89 fe  	bne	s2, s0, 0x80000f68 <.LBB1_124+0x88>
80000f84: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80000f88: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80000f8c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80000f90: 23 2a b1 00  	sw	a1, 20(sp)
80000f94: b3 8c 8c 00  	add	s9, s9, s0
80000f98: 13 09 0c 00  	mv	s2, s8
80000f9c: 6f 00 c0 25  	j	0x800011f8 <.LBB1_124+0x318>
80000fa0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000fa4: 13 07 c1 01  	addi	a4, sp, 28
80000fa8: 93 08 00 01  	addi	a7, zero, 16
80000fac: 13 0e 80 00  	addi	t3, zero, 8
80000fb0: 13 05 09 00  	mv	a0, s2
80000fb4: 93 05 0a 00  	mv	a1, s4
80000fb8: 13 86 0c 00  	mv	a2, s9
80000fbc: 93 86 0a 00  	mv	a3, s5
80000fc0: 13 08 00 00  	mv	a6, zero
80000fc4: 93 83 0b 00  	mv	t2, s7
80000fc8: 97 10 00 00  	auipc	ra, 1
80000fcc: e7 80 00 fa  	jalr	-96(ra)
80000fd0: 13 0c 05 00  	mv	s8, a0
80000fd4: 6f 00 00 21  	j	0x800011e4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000fd8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80000fdc: 63 14 08 00  	bnez	a6, 0x80000fe4 <.LBB1_124+0x104>
80000fe0: 13 74 f4 fe  	andi	s0, s0, -17
80000fe4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80000fe8: 13 76 04 40  	andi	a2, s0, 1024
80000fec: 13 56 a6 00  	srli	a2, a2, 10
80000ff0: b3 f5 c5 00  	and	a1, a1, a2
80000ff4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000ff8: 63 9c 05 06  	bnez	a1, 0x80001070 <.LBB1_124+0x190>
80000ffc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001000: 13 56 f8 41  	srai	a2, a6, 31
80001004: b3 06 c8 00  	add	a3, a6, a2
80001008: b3 c6 c6 00  	xor	a3, a3, a2
8000100c: 13 76 04 02  	andi	a2, s0, 32
80001010: 13 46 16 06  	xori	a2, a2, 97
80001014: 93 08 66 0f  	addi	a7, a2, 246
80001018: 6f 00 40 03  	j	0x8000104c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000101c: 33 05 f6 00  	add	a0, a2, a5
80001020: 93 87 15 00  	addi	a5, a1, 1
80001024: 13 06 c1 01  	addi	a2, sp, 28
80001028: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000102c: b3 b6 86 01  	sltu	a3, a3, s8
80001030: 93 c6 16 00  	xori	a3, a3, 1
80001034: 93 b5 f5 01  	sltiu	a1, a1, 31
80001038: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000103c: 23 00 a6 00  	sb	a0, 0(a2)
80001040: 93 85 07 00  	mv	a1, a5
80001044: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001048: 63 84 04 02  	beqz	s1, 0x80001070 <.LBB1_124+0x190>
;       value /= base;
8000104c: 33 d7 86 03  	divu	a4, a3, s8
80001050: 33 06 87 03  	mul	a2, a4, s8
80001054: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001058: 13 f5 e7 0f  	andi	a0, a5, 254
8000105c: 13 06 00 03  	addi	a2, zero, 48
80001060: 93 04 a0 00  	addi	s1, zero, 10
80001064: e3 6c 95 fa  	bltu	a0, s1, 0x8000101c <.LBB1_124+0x13c>
80001068: 13 86 08 00  	mv	a2, a7
8000106c: 6f f0 1f fb  	j	0x8000101c <.LBB1_124+0x13c>
80001070: 93 89 49 00  	addi	s3, s3, 4
80001074: 13 58 f8 01  	srli	a6, a6, 31
80001078: 13 07 c1 01  	addi	a4, sp, 28
8000107c: 13 05 09 00  	mv	a0, s2
80001080: 93 05 0a 00  	mv	a1, s4
80001084: 13 86 0c 00  	mv	a2, s9
80001088: 93 86 0a 00  	mv	a3, s5
8000108c: 6f 00 80 13  	j	0x800011c4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001090: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001094: 63 14 05 00  	bnez	a0, 0x8000109c <.LBB1_124+0x1bc>
80001098: 13 74 f4 fe  	andi	s0, s0, -17
8000109c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800010a0: 13 76 04 40  	andi	a2, s0, 1024
800010a4: 13 56 a6 00  	srli	a2, a2, 10
800010a8: b3 f5 c5 00  	and	a1, a1, a2
800010ac: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800010b0: 63 9c 05 0e  	bnez	a1, 0x800011a8 <.LBB1_124+0x2c8>
800010b4: 13 06 00 00  	mv	a2, zero
800010b8: 93 75 04 02  	andi	a1, s0, 32
800010bc: 93 c5 15 06  	xori	a1, a1, 97
800010c0: 13 88 65 0f  	addi	a6, a1, 246
800010c4: 6f 00 40 03  	j	0x800010f8 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800010c8: 33 87 e7 00  	add	a4, a5, a4
800010cc: 93 07 16 00  	addi	a5, a2, 1
800010d0: 93 05 c1 01  	addi	a1, sp, 28
800010d4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800010d8: 33 35 85 01  	sltu	a0, a0, s8
800010dc: 13 45 15 00  	xori	a0, a0, 1
800010e0: 13 36 f6 01  	sltiu	a2, a2, 31
800010e4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800010e8: 23 80 e4 00  	sb	a4, 0(s1)
800010ec: 13 86 07 00  	mv	a2, a5
800010f0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800010f4: 63 8a 05 0a  	beqz	a1, 0x800011a8 <.LBB1_124+0x2c8>
;       value /= base;
800010f8: b3 56 85 03  	divu	a3, a0, s8
800010fc: 33 87 86 03  	mul	a4, a3, s8
80001100: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001104: 93 74 e7 0f  	andi	s1, a4, 254
80001108: 93 07 00 03  	addi	a5, zero, 48
8000110c: 93 05 a0 00  	addi	a1, zero, 10
80001110: e3 ec b4 fa  	bltu	s1, a1, 0x800010c8 <.LBB1_124+0x1e8>
80001114: 93 07 08 00  	mv	a5, a6
80001118: 6f f0 1f fb  	j	0x800010c8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000111c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001120: 63 14 05 00  	bnez	a0, 0x80001128 <.LBB1_124+0x248>
80001124: 13 74 f4 fe  	andi	s0, s0, -17
80001128: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000112c: 13 76 04 40  	andi	a2, s0, 1024
80001130: 13 56 a6 00  	srli	a2, a2, 10
80001134: b3 f5 c5 00  	and	a1, a1, a2
80001138: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000113c: 63 96 05 06  	bnez	a1, 0x800011a8 <.LBB1_124+0x2c8>
80001140: 13 06 00 00  	mv	a2, zero
80001144: 93 75 04 02  	andi	a1, s0, 32
80001148: 93 c5 15 06  	xori	a1, a1, 97
8000114c: 13 88 65 0f  	addi	a6, a1, 246
80001150: 6f 00 40 03  	j	0x80001184 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001154: 33 87 e7 00  	add	a4, a5, a4
80001158: 93 07 16 00  	addi	a5, a2, 1
8000115c: 93 05 c1 01  	addi	a1, sp, 28
80001160: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001164: 33 35 85 01  	sltu	a0, a0, s8
80001168: 13 45 15 00  	xori	a0, a0, 1
8000116c: 13 36 f6 01  	sltiu	a2, a2, 31
80001170: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001174: 23 80 e4 00  	sb	a4, 0(s1)
80001178: 13 86 07 00  	mv	a2, a5
8000117c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001180: 63 84 05 02  	beqz	a1, 0x800011a8 <.LBB1_124+0x2c8>
;       value /= base;
80001184: b3 56 85 03  	divu	a3, a0, s8
80001188: 33 87 86 03  	mul	a4, a3, s8
8000118c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001190: 93 74 e7 0f  	andi	s1, a4, 254
80001194: 93 07 00 03  	addi	a5, zero, 48
80001198: 93 05 a0 00  	addi	a1, zero, 10
8000119c: e3 ec b4 fa  	bltu	s1, a1, 0x80001154 <.LBB1_124+0x274>
800011a0: 93 07 08 00  	mv	a5, a6
800011a4: 6f f0 1f fb  	j	0x80001154 <.LBB1_124+0x274>
800011a8: 93 89 49 00  	addi	s3, s3, 4
800011ac: 13 07 c1 01  	addi	a4, sp, 28
800011b0: 13 05 09 00  	mv	a0, s2
800011b4: 93 05 0a 00  	mv	a1, s4
800011b8: 13 86 0c 00  	mv	a2, s9
800011bc: 93 86 0a 00  	mv	a3, s5
800011c0: 13 08 00 00  	mv	a6, zero
800011c4: 93 08 0c 00  	mv	a7, s8
800011c8: 93 83 0b 00  	mv	t2, s7
800011cc: 13 0e 0b 00  	mv	t3, s6
800011d0: 93 0e 04 00  	mv	t4, s0
800011d4: 97 10 00 00  	auipc	ra, 1
800011d8: e7 80 40 d9  	jalr	-620(ra)
800011dc: 13 0c 05 00  	mv	s8, a0
800011e0: 13 0b 50 02  	addi	s6, zero, 37
800011e4: 93 0b e0 02  	addi	s7, zero, 46
800011e8: 13 04 1d 00  	addi	s0, s10, 1
800011ec: 6f f0 cf d8  	j	0x80000778 <.LBB1_183+0x30>
800011f0: 93 85 15 00  	addi	a1, a1, 1
800011f4: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800011f8: 63 00 05 04  	beqz	a0, 0x80001238 <.LBB1_124+0x358>
800011fc: 13 84 17 00  	addi	s0, a5, 1
80001200: 6f 00 00 03  	j	0x80001230 <.LBB1_124+0x350>
80001204: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001208: 13 8c 1c 00  	addi	s8, s9, 1
8000120c: 13 75 f5 0f  	andi	a0, a0, 255
80001210: 93 05 0a 00  	mv	a1, s4
80001214: 13 86 0c 00  	mv	a2, s9
80001218: 93 86 0a 00  	mv	a3, s5
8000121c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001220: 03 45 04 00  	lbu	a0, 0(s0)
80001224: 13 04 14 00  	addi	s0, s0, 1
80001228: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000122c: 63 08 05 00  	beqz	a0, 0x8000123c <.LBB1_124+0x35c>
80001230: e3 9c 04 fc  	bnez	s1, 0x80001208 <.LBB1_124+0x328>
80001234: e3 98 0b fc  	bnez	s7, 0x80001204 <.LBB1_124+0x324>
80001238: 13 8c 0c 00  	mv	s8, s9
8000123c: 03 25 c1 00  	lw	a0, 12(sp)
80001240: 13 35 15 00  	seqz	a0, a0
80001244: 03 26 41 01  	lw	a2, 20(sp)
80001248: b3 35 66 01  	sltu	a1, a2, s6
8000124c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001250: 33 65 b5 00  	or	a0, a0, a1
80001254: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001258: e3 14 05 f8  	bnez	a0, 0x800011e0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000125c: 33 04 cb 40  	sub	s0, s6, a2
80001260: 93 0b e0 02  	addi	s7, zero, 46
80001264: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001268: 13 0c 1c 00  	addi	s8, s8, 1
8000126c: 13 05 00 02  	addi	a0, zero, 32
80001270: 93 05 0a 00  	mv	a1, s4
80001274: 93 86 0a 00  	mv	a3, s5
80001278: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000127c: 13 04 f4 ff  	addi	s0, s0, -1
80001280: e3 12 04 fe  	bnez	s0, 0x80001264 <.LBB1_124+0x384>
80001284: 13 0b 50 02  	addi	s6, zero, 37
80001288: 13 04 1d 00  	addi	s0, s10, 1
8000128c: 6f f0 cf ce  	j	0x80000778 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001290: 13 86 0c 00  	mv	a2, s9
80001294: 63 e4 5c 01  	bltu	s9, s5, 0x8000129c <.LBB1_124+0x3bc>
80001298: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000129c: 13 05 00 00  	mv	a0, zero
800012a0: 93 05 0a 00  	mv	a1, s4
800012a4: 93 86 0a 00  	mv	a3, s5
800012a8: e7 00 09 00  	jalr	s2
;   return (int)idx;
800012ac: 13 85 0c 00  	mv	a0, s9
800012b0: 83 2d c1 03  	lw	s11, 60(sp)
800012b4: 03 2d 01 04  	lw	s10, 64(sp)
800012b8: 83 2c 41 04  	lw	s9, 68(sp)
800012bc: 03 2c 81 04  	lw	s8, 72(sp)
800012c0: 83 2b c1 04  	lw	s7, 76(sp)
800012c4: 03 2b 01 05  	lw	s6, 80(sp)
800012c8: 83 2a 41 05  	lw	s5, 84(sp)
800012cc: 03 2a 81 05  	lw	s4, 88(sp)
800012d0: 83 29 c1 05  	lw	s3, 92(sp)
800012d4: 03 29 01 06  	lw	s2, 96(sp)
800012d8: 83 24 41 06  	lw	s1, 100(sp)
800012dc: 03 24 81 06  	lw	s0, 104(sp)
800012e0: 83 20 c1 06  	lw	ra, 108(sp)
800012e4: 13 01 01 07  	addi	sp, sp, 112
800012e8: 67 80 00 00  	ret

800012ec <_out_char.llvm.11632292163828655644>:
;   if (character) {
800012ec: 63 04 05 0a  	beqz	a0, 0x80001394 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800012f0: f3 25 40 f1  	csrr	a1, mhartid
800012f4: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800012f8: 33 86 c5 02  	mul	a2, a1, a2

800012fc <.LBB2_6>:
800012fc: 97 26 00 00  	auipc	a3, 2
80001300: 93 86 06 f6  	addi	a3, a3, -160
80001304: b3 05 d6 00  	add	a1, a2, a3
80001308: 03 a7 05 00  	lw	a4, 0(a1)
8000130c: 93 07 17 00  	addi	a5, a4, 1
80001310: 23 a0 f5 00  	sw	a5, 0(a1)
80001314: 33 87 e5 00  	add	a4, a1, a4
80001318: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
8000131c: 03 a7 05 00  	lw	a4, 0(a1)
80001320: 13 07 47 c0  	addi	a4, a4, -1020
80001324: 33 37 e0 00  	snez	a4, a4
80001328: 13 05 65 ff  	addi	a0, a0, -10
8000132c: 33 35 a0 00  	snez	a0, a0
80001330: 33 75 e5 00  	and	a0, a0, a4
80001334: 63 10 05 06  	bnez	a0, 0x80001394 <.LBB2_8+0x18>
80001338: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000133c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001340: 23 26 05 00  	sw	zero, 12(a0)
80001344: 93 06 00 04  	addi	a3, zero, 64
80001348: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000134c: 23 2a 05 00  	sw	zero, 20(a0)
80001350: 93 06 10 00  	addi	a3, zero, 1
80001354: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001358: 23 2e 05 00  	sw	zero, 28(a0)
8000135c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001360: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001364: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001368: 23 22 05 02  	sw	zero, 36(a0)
8000136c: 23 20 c5 02  	sw	a2, 32(a0)

80001370 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001370: 17 25 00 00  	auipc	a0, 2
80001374: 13 05 05 dd  	addi	a0, a0, -560
80001378: 23 20 d5 00  	sw	a3, 0(a0)

8000137c <.LBB2_8>:
8000137c: 17 25 00 00  	auipc	a0, 2
80001380: 13 05 45 e0  	addi	a0, a0, -508
;         while (fromhost == 0)
80001384: 03 26 05 00  	lw	a2, 0(a0)
80001388: e3 0e 06 fe  	beqz	a2, 0x80001384 <.LBB2_8+0x8>
;         fromhost = 0;
8000138c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001390: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001394: 67 80 00 00  	ret

80001398 <_out_null>:
; }
80001398: 67 80 00 00  	ret

8000139c <_ftoa>:
; {
8000139c: 13 01 01 f9  	addi	sp, sp, -112
800013a0: 23 26 11 06  	sw	ra, 108(sp)
800013a4: 23 24 81 06  	sw	s0, 104(sp)
800013a8: 23 22 91 06  	sw	s1, 100(sp)
800013ac: 23 20 21 07  	sw	s2, 96(sp)
800013b0: 23 2e 31 05  	sw	s3, 92(sp)
800013b4: 23 2c 41 05  	sw	s4, 88(sp)
800013b8: 23 2a 51 05  	sw	s5, 84(sp)
800013bc: 23 28 61 05  	sw	s6, 80(sp)
800013c0: 23 26 71 05  	sw	s7, 76(sp)
800013c4: 23 24 81 05  	sw	s8, 72(sp)
800013c8: 23 22 91 05  	sw	s9, 68(sp)
800013cc: 23 20 a1 05  	sw	s10, 64(sp)
800013d0: 27 3c 81 02  	fsd	fs0, 56(sp)
800013d4: 27 38 91 02  	fsd	fs1, 48(sp)
800013d8: 27 34 21 03  	fsd	fs2, 40(sp)

800013dc <.LBB4_83>:
800013dc: 97 24 00 00  	auipc	s1, 2
800013e0: 93 84 c4 db  	addi	s1, s1, -580
800013e4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800013e8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800013ec: 93 0a 08 00  	mv	s5, a6
800013f0: 13 89 07 00  	mv	s2, a5
800013f4: 93 89 06 00  	mv	s3, a3
800013f8: 13 0a 06 00  	mv	s4, a2
800013fc: 13 8b 05 00  	mv	s6, a1
80001400: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001404: 63 98 04 0e  	bnez	s1, 0x800014f4 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001408: 13 f5 2a 00  	andi	a0, s5, 2
8000140c: 93 f5 3a 00  	andi	a1, s5, 3
80001410: b3 35 b0 00  	snez	a1, a1
80001414: 13 36 59 00  	sltiu	a2, s2, 5
80001418: b3 65 b6 00  	or	a1, a2, a1
8000141c: 93 5c 15 00  	srli	s9, a0, 1
80001420: 13 04 0a 00  	mv	s0, s4
80001424: 63 96 05 02  	bnez	a1, 0x80001450 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001428: 93 04 c9 ff  	addi	s1, s2, -4
8000142c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001430: 13 04 16 00  	addi	s0, a2, 1
80001434: 13 05 00 02  	addi	a0, zero, 32
80001438: 93 05 0b 00  	mv	a1, s6
8000143c: 93 86 09 00  	mv	a3, s3
80001440: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001444: 93 84 f4 ff  	addi	s1, s1, -1
80001448: 13 06 04 00  	mv	a2, s0
8000144c: e3 92 04 fe  	bnez	s1, 0x80001430 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001450: 93 04 14 00  	addi	s1, s0, 1
80001454: 13 05 d0 02  	addi	a0, zero, 45
80001458: 93 05 0b 00  	mv	a1, s6
8000145c: 13 06 04 00  	mv	a2, s0
80001460: 93 86 09 00  	mv	a3, s3
80001464: e7 80 0b 00  	jalr	s7
80001468: 93 0a 24 00  	addi	s5, s0, 2
8000146c: 13 05 90 06  	addi	a0, zero, 105
80001470: 93 05 0b 00  	mv	a1, s6
80001474: 13 86 04 00  	mv	a2, s1
80001478: 93 86 09 00  	mv	a3, s3
8000147c: e7 80 0b 00  	jalr	s7
80001480: 13 0c 34 00  	addi	s8, s0, 3
80001484: 13 05 e0 06  	addi	a0, zero, 110
80001488: 93 05 0b 00  	mv	a1, s6
8000148c: 13 86 0a 00  	mv	a2, s5
80001490: 93 86 09 00  	mv	a3, s3
80001494: e7 80 0b 00  	jalr	s7
80001498: 93 04 44 00  	addi	s1, s0, 4
8000149c: 13 05 60 06  	addi	a0, zero, 102
800014a0: 93 05 0b 00  	mv	a1, s6
800014a4: 13 06 0c 00  	mv	a2, s8
800014a8: 93 86 09 00  	mv	a3, s3
800014ac: e7 80 0b 00  	jalr	s7
800014b0: 33 85 44 41  	sub	a0, s1, s4
800014b4: 33 35 25 01  	sltu	a0, a0, s2
800014b8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800014bc: 93 c5 1c 00  	xori	a1, s9, 1
800014c0: 33 e5 a5 00  	or	a0, a1, a0
800014c4: 63 16 05 56  	bnez	a0, 0x80001a30 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800014c8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800014cc: 13 84 14 00  	addi	s0, s1, 1
800014d0: 13 05 00 02  	addi	a0, zero, 32
800014d4: 93 05 0b 00  	mv	a1, s6
800014d8: 13 86 04 00  	mv	a2, s1
800014dc: 93 86 09 00  	mv	a3, s3
800014e0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800014e4: 33 05 8a 00  	add	a0, s4, s0
800014e8: 93 04 04 00  	mv	s1, s0
800014ec: e3 60 25 ff  	bltu	a0, s2, 0x800014cc <.LBB4_83+0xf0>
800014f0: 6f 00 40 54  	j	0x80001a34 <.LBB4_90+0x378>
800014f4: 53 04 a5 22  	fmv.d	fs0, fa0

800014f8 <.LBB4_84>:
800014f8: 17 25 00 00  	auipc	a0, 2
800014fc: 13 05 85 ca  	addi	a0, a0, -856
80001500: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001504: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001508: 63 1e 05 00  	bnez	a0, 0x80001524 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000150c: 93 f5 4a 00  	andi	a1, s5, 4
80001510: 13 b5 15 00  	seqz	a0, a1
80001514: 63 82 05 06  	beqz	a1, 0x80001578 <.LBB4_88>

80001518 <.LBB4_85>:
80001518: 17 2c 00 00  	auipc	s8, 2
8000151c: 13 0c 0c 9d  	addi	s8, s8, -1584
80001520: 6f 00 00 06  	j	0x80001580 <.LBB4_88+0x8>

80001524 <.LBB4_86>:
80001524: 17 25 00 00  	auipc	a0, 2
80001528: 13 05 45 c8  	addi	a0, a0, -892
8000152c: 07 30 05 00  	fld	ft0, 0(a0)

80001530 <.LBB4_87>:
80001530: 17 25 00 00  	auipc	a0, 2
80001534: 13 05 05 c8  	addi	a0, a0, -896
80001538: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000153c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001540: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001544: 33 75 b5 00  	and	a0, a0, a1
80001548: 63 1e 05 0e  	bnez	a0, 0x80001644 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000154c: 13 85 0b 00  	mv	a0, s7
80001550: 93 05 0b 00  	mv	a1, s6
80001554: 13 06 0a 00  	mv	a2, s4
80001558: 93 86 09 00  	mv	a3, s3
8000155c: 53 05 84 22  	fmv.d	fa0, fs0
80001560: 93 07 09 00  	mv	a5, s2
80001564: 13 88 0a 00  	mv	a6, s5
80001568: 97 00 00 00  	auipc	ra, 0
8000156c: e7 80 40 51  	jalr	1300(ra)
80001570: 13 04 05 00  	mv	s0, a0
80001574: 6f 00 00 4c  	j	0x80001a34 <.LBB4_90+0x378>

80001578 <.LBB4_88>:
80001578: 17 2c 00 00  	auipc	s8, 2
8000157c: 13 0c 7c 98  	addi	s8, s8, -1657
80001580: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001584: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001588: 13 f5 3a 00  	andi	a0, s5, 3
8000158c: 33 35 a0 00  	snez	a0, a0
80001590: b3 b5 2c 01  	sltu	a1, s9, s2
80001594: 93 c5 15 00  	xori	a1, a1, 1
80001598: 33 65 b5 00  	or	a0, a0, a1
8000159c: 93 fa 2a 00  	andi	s5, s5, 2
800015a0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800015a4: 63 16 05 02  	bnez	a0, 0x800015d0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800015a8: 33 04 99 41  	sub	s0, s2, s9
800015ac: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800015b0: 93 04 16 00  	addi	s1, a2, 1
800015b4: 13 05 00 02  	addi	a0, zero, 32
800015b8: 93 05 0b 00  	mv	a1, s6
800015bc: 93 86 09 00  	mv	a3, s3
800015c0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800015c4: 13 04 f4 ff  	addi	s0, s0, -1
800015c8: 13 86 04 00  	mv	a2, s1
800015cc: e3 12 04 fe  	bnez	s0, 0x800015b0 <.LBB4_88+0x38>
800015d0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800015d4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800015d8: 33 05 9c 01  	add	a0, s8, s9
800015dc: 03 45 05 00  	lbu	a0, 0(a0)
800015e0: 13 86 04 00  	mv	a2, s1
800015e4: 13 84 fc ff  	addi	s0, s9, -1
800015e8: 93 84 14 00  	addi	s1, s1, 1
800015ec: 93 05 0b 00  	mv	a1, s6
800015f0: 93 86 09 00  	mv	a3, s3
800015f4: e7 80 0b 00  	jalr	s7
800015f8: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800015fc: e3 1e 04 fc  	bnez	s0, 0x800015d8 <.LBB4_88+0x60>
80001600: 33 85 44 41  	sub	a0, s1, s4
80001604: 33 35 25 01  	sltu	a0, a0, s2
80001608: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000160c: 93 c5 1a 00  	xori	a1, s5, 1
80001610: 33 e5 a5 00  	or	a0, a1, a0
80001614: 63 1e 05 40  	bnez	a0, 0x80001a30 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001618: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000161c: 13 84 14 00  	addi	s0, s1, 1
80001620: 13 05 00 02  	addi	a0, zero, 32
80001624: 93 05 0b 00  	mv	a1, s6
80001628: 13 86 04 00  	mv	a2, s1
8000162c: 93 86 09 00  	mv	a3, s3
80001630: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001634: 33 05 8a 00  	add	a0, s4, s0
80001638: 93 04 04 00  	mv	s1, s0
8000163c: e3 60 25 ff  	bltu	a0, s2, 0x8000161c <.LBB4_88+0xa4>
80001640: 6f 00 40 3f  	j	0x80001a34 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001644: 13 f5 0a 40  	andi	a0, s5, 1024
80001648: 13 0c 60 00  	addi	s8, zero, 6
8000164c: 63 04 05 00  	beqz	a0, 0x80001654 <.LBB4_88+0xdc>
80001650: 13 0c 07 00  	mv	s8, a4
80001654: 13 05 a0 00  	addi	a0, zero, 10
80001658: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000165c: 63 6c ac 02  	bltu	s8, a0, 0x80001694 <.LBB4_88+0x11c>
80001660: 93 04 6c ff  	addi	s1, s8, -10
80001664: 13 05 f0 01  	addi	a0, zero, 31
80001668: 63 e4 a4 00  	bltu	s1, a0, 0x80001670 <.LBB4_88+0xf8>
8000166c: 93 04 f0 01  	addi	s1, zero, 31
80001670: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001674: 13 05 81 00  	addi	a0, sp, 8
80001678: 93 05 00 03  	addi	a1, zero, 48
8000167c: 13 06 04 00  	mv	a2, s0
80001680: 97 f0 ff ff  	auipc	ra, 1048575
80001684: e7 80 80 ed  	jalr	-296(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001688: 13 c5 f4 ff  	not	a0, s1
8000168c: 33 0c ac 00  	add	s8, s8, a0
80001690: 6f 00 80 00  	j	0x80001698 <.LBB4_88+0x120>
80001694: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001698: 13 15 3c 00  	slli	a0, s8, 3

8000169c <.LBB4_89>:
8000169c: 97 25 00 00  	auipc	a1, 2
800016a0: 93 85 45 a2  	addi	a1, a1, -1500
800016a4: 33 05 b5 00  	add	a0, a0, a1
800016a8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800016ac: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800016b0: 53 80 04 d2  	fcvt.d.w	ft0, s1
800016b4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800016b8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

800016bc <.LBB4_90>:
800016bc: 17 25 00 00  	auipc	a0, 2
800016c0: 13 05 c5 af  	addi	a0, a0, -1284
800016c4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800016c8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800016cc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800016d0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800016d4: d3 05 01 a2  	fle.d	a1, ft2, ft0
800016d8: 63 90 05 02  	bnez	a1, 0x800016f8 <.LBB4_90+0x3c>
;     ++frac;
800016dc: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
800016e0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800016e4: d3 15 11 a2  	flt.d	a1, ft2, ft1
800016e8: 63 94 05 02  	bnez	a1, 0x80001710 <.LBB4_90+0x54>
800016ec: 13 05 00 00  	mv	a0, zero
;       ++whole;
800016f0: 93 84 14 00  	addi	s1, s1, 1
800016f4: 6f 00 c0 01  	j	0x80001710 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800016f8: d3 15 01 a2  	flt.d	a1, ft2, ft0
800016fc: 63 9a 05 00  	bnez	a1, 0x80001710 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001700: 93 35 15 00  	seqz	a1, a0
80001704: 13 76 15 00  	andi	a2, a0, 1
80001708: b3 65 b6 00  	or	a1, a2, a1
8000170c: 33 85 a5 00  	add	a0, a1, a0
80001710: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001714: 63 0c 0c 0c  	beqz	s8, 0x800017ec <.LBB4_90+0x130>
80001718: 13 06 00 00  	mv	a2, zero
8000171c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001720: 33 83 85 00  	add	t1, a1, s0
80001724: 93 02 00 02  	addi	t0, zero, 32
80001728: 33 87 82 40  	sub	a4, t0, s0
8000172c: b7 d5 cc cc  	lui	a1, 838861
80001730: 93 83 d5 cc  	addi	t2, a1, -819
80001734: 13 08 a0 00  	addi	a6, zero, 10
80001738: 93 08 90 00  	addi	a7, zero, 9
8000173c: 63 04 c7 0c  	beq	a4, a2, 0x80001804 <.LBB4_90+0x148>
80001740: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001744: 33 35 75 02  	mulhu	a0, a0, t2
80001748: 13 55 35 00  	srli	a0, a0, 3
8000174c: b3 06 05 03  	mul	a3, a0, a6
80001750: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001754: 93 e6 06 03  	ori	a3, a3, 48
80001758: b3 07 c3 00  	add	a5, t1, a2
8000175c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001760: 13 06 16 00  	addi	a2, a2, 1
80001764: e3 ec b8 fc  	bltu	a7, a1, 0x8000173c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001768: 33 05 c4 00  	add	a0, s0, a2
8000176c: 93 05 f5 ff  	addi	a1, a0, -1
80001770: 93 06 e0 01  	addi	a3, zero, 30
80001774: b3 b6 b6 00  	sltu	a3, a3, a1
80001778: 33 47 cc 00  	xor	a4, s8, a2
8000177c: 13 37 17 00  	seqz	a4, a4
80001780: b3 e6 e6 00  	or	a3, a3, a4
80001784: 63 94 06 08  	bnez	a3, 0x8000180c <.LBB4_90+0x150>
80001788: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000178c: 33 05 85 00  	add	a0, a0, s0
80001790: 93 45 f6 ff  	not	a1, a2
80001794: 33 8c 85 01  	add	s8, a1, s8
80001798: 33 04 c4 00  	add	s0, s0, a2
8000179c: 93 05 f0 01  	addi	a1, zero, 31
800017a0: b3 86 85 40  	sub	a3, a1, s0
800017a4: 33 05 c5 00  	add	a0, a0, a2
800017a8: 93 05 0c 00  	mv	a1, s8
800017ac: 63 64 dc 00  	bltu	s8, a3, 0x800017b4 <.LBB4_90+0xf8>
800017b0: 93 85 06 00  	mv	a1, a3
800017b4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800017b8: 93 05 00 03  	addi	a1, zero, 48
800017bc: 97 f0 ff ff  	auipc	ra, 1048575
800017c0: e7 80 c0 d9  	jalr	-612(ra)
800017c4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800017c8: b3 05 a4 00  	add	a1, s0, a0
800017cc: 93 b5 f5 01  	sltiu	a1, a1, 31
800017d0: 33 46 ac 00  	xor	a2, s8, a0
800017d4: 33 36 c0 00  	snez	a2, a2
800017d8: 33 f6 c5 00  	and	a2, a1, a2
800017dc: 13 05 15 00  	addi	a0, a0, 1
800017e0: e3 14 06 fe  	bnez	a2, 0x800017c8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800017e4: 33 05 a4 00  	add	a0, s0, a0
800017e8: 6f 00 80 02  	j	0x80001810 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800017ec: d3 80 04 d2  	fcvt.d.w	ft1, s1
800017f0: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800017f4: 53 05 10 a2  	fle.d	a0, ft0, ft1
800017f8: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800017fc: b3 84 a4 00  	add	s1, s1, a0
80001800: 6f 00 c0 03  	j	0x8000183c <.LBB4_90+0x180>
80001804: 13 04 00 02  	addi	s0, zero, 32
80001808: 6f 00 80 03  	j	0x80001840 <.LBB4_90+0x184>
8000180c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001810: 63 8e 05 00  	beqz	a1, 0x8000182c <.LBB4_90+0x170>
;       buf[len++] = '.';
80001814: 13 04 15 00  	addi	s0, a0, 1
80001818: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000181c: 33 85 a5 00  	add	a0, a1, a0
80001820: 93 05 e0 02  	addi	a1, zero, 46
80001824: 23 00 b5 00  	sb	a1, 0(a0)
80001828: 6f 00 80 00  	j	0x80001830 <.LBB4_90+0x174>
8000182c: 13 04 05 00  	mv	s0, a0
80001830: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001834: 93 02 04 00  	mv	t0, s0
80001838: 63 64 85 00  	bltu	a0, s0, 0x80001840 <.LBB4_90+0x184>
8000183c: 93 02 00 02  	addi	t0, zero, 32
80001840: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001844: 37 65 66 66  	lui	a0, 419430
80001848: 93 05 75 66  	addi	a1, a0, 1639
8000184c: 13 08 a0 00  	addi	a6, zero, 10
80001850: 93 06 81 00  	addi	a3, sp, 8
80001854: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001858: 63 80 82 04  	beq	t0, s0, 0x80001898 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000185c: 33 95 b4 02  	mulh	a0, s1, a1
80001860: 93 57 f5 01  	srli	a5, a0, 31
80001864: 13 55 25 40  	srai	a0, a0, 2
80001868: 33 05 f5 00  	add	a0, a0, a5
8000186c: b3 07 05 03  	mul	a5, a0, a6
80001870: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80001874: 93 87 07 03  	addi	a5, a5, 48
80001878: 13 0c 14 00  	addi	s8, s0, 1
8000187c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80001880: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80001884: 23 00 f4 00  	sb	a5, 0(s0)
80001888: 13 04 0c 00  	mv	s0, s8
8000188c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80001890: e3 64 c7 fc  	bltu	a4, a2, 0x80001858 <.LBB4_90+0x19c>
80001894: 6f 00 80 00  	j	0x8000189c <.LBB4_90+0x1e0>
80001898: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000189c: 93 f4 3a 00  	andi	s1, s5, 3
800018a0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800018a4: 63 96 a4 06  	bne	s1, a0, 0x80001910 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800018a8: 63 0c 09 00  	beqz	s2, 0x800018c0 <.LBB4_90+0x204>
800018ac: 13 f5 ca 00  	andi	a0, s5, 12
800018b0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800018b4: 33 e5 ac 00  	or	a0, s9, a0
800018b8: 33 09 a9 40  	sub	s2, s2, a0
800018bc: 6f 00 80 00  	j	0x800018c4 <.LBB4_90+0x208>
800018c0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800018c4: 33 35 2c 01  	sltu	a0, s8, s2
800018c8: 93 45 15 00  	xori	a1, a0, 1
800018cc: 13 05 f0 01  	addi	a0, zero, 31
800018d0: 33 36 85 01  	sltu	a2, a0, s8
800018d4: b3 65 b6 00  	or	a1, a2, a1
800018d8: 63 9c 05 02  	bnez	a1, 0x80001910 <.LBB4_90+0x254>
800018dc: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800018e0: 93 45 fc ff  	not	a1, s8
800018e4: b3 05 b9 00  	add	a1, s2, a1
800018e8: 33 06 85 41  	sub	a2, a0, s8
800018ec: 33 85 86 01  	add	a0, a3, s8
800018f0: 63 e4 c5 00  	bltu	a1, a2, 0x800018f8 <.LBB4_90+0x23c>
800018f4: 93 05 06 00  	mv	a1, a2
800018f8: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800018fc: 93 05 00 03  	addi	a1, zero, 48
80001900: 13 06 04 00  	mv	a2, s0
80001904: 97 f0 ff ff  	auipc	ra, 1048575
80001908: e7 80 40 c5  	jalr	-940(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000190c: 33 0c 84 01  	add	s8, s0, s8
80001910: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001914: 63 6a 85 05  	bltu	a0, s8, 0x80001968 <.LBB4_90+0x2ac>
;     if (negative) {
80001918: 63 8c 0c 00  	beqz	s9, 0x80001930 <.LBB4_90+0x274>
8000191c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80001920: 33 05 85 01  	add	a0, a0, s8
80001924: 13 0c 1c 00  	addi	s8, s8, 1
80001928: 93 05 d0 02  	addi	a1, zero, 45
8000192c: 6f 00 80 03  	j	0x80001964 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80001930: 13 f5 4a 00  	andi	a0, s5, 4
80001934: 63 10 05 02  	bnez	a0, 0x80001954 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80001938: 13 f5 8a 00  	andi	a0, s5, 8
8000193c: 63 06 05 02  	beqz	a0, 0x80001968 <.LBB4_90+0x2ac>
80001940: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80001944: 33 05 85 01  	add	a0, a0, s8
80001948: 13 0c 1c 00  	addi	s8, s8, 1
8000194c: 93 05 00 02  	addi	a1, zero, 32
80001950: 6f 00 40 01  	j	0x80001964 <.LBB4_90+0x2a8>
80001954: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80001958: 33 05 85 01  	add	a0, a0, s8
8000195c: 13 0c 1c 00  	addi	s8, s8, 1
80001960: 93 05 b0 02  	addi	a1, zero, 43
80001964: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001968: 33 35 90 00  	snez	a0, s1
8000196c: b3 35 2c 01  	sltu	a1, s8, s2
80001970: 93 c5 15 00  	xori	a1, a1, 1
80001974: 33 65 b5 00  	or	a0, a0, a1
80001978: 93 fa 2a 00  	andi	s5, s5, 2
8000197c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001980: 63 16 05 02  	bnez	a0, 0x800019ac <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80001984: b3 04 89 41  	sub	s1, s2, s8
80001988: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000198c: 13 04 16 00  	addi	s0, a2, 1
80001990: 13 05 00 02  	addi	a0, zero, 32
80001994: 93 05 0b 00  	mv	a1, s6
80001998: 93 86 09 00  	mv	a3, s3
8000199c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800019a0: 93 84 f4 ff  	addi	s1, s1, -1
800019a4: 13 06 04 00  	mv	a2, s0
800019a8: e3 92 04 fe  	bnez	s1, 0x8000198c <.LBB4_90+0x2d0>
800019ac: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800019b0: 63 0c 0c 02  	beqz	s8, 0x800019e8 <.LBB4_90+0x32c>
800019b4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800019b8: 33 85 8c 01  	add	a0, s9, s8
800019bc: 03 45 05 00  	lbu	a0, 0(a0)
800019c0: 13 0d fc ff  	addi	s10, s8, -1
800019c4: 93 04 14 00  	addi	s1, s0, 1
800019c8: 93 05 0b 00  	mv	a1, s6
800019cc: 13 06 04 00  	mv	a2, s0
800019d0: 93 86 09 00  	mv	a3, s3
800019d4: e7 80 0b 00  	jalr	s7
800019d8: 13 84 04 00  	mv	s0, s1
800019dc: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800019e0: e3 1c 0d fc  	bnez	s10, 0x800019b8 <.LBB4_90+0x2fc>
800019e4: 6f 00 80 00  	j	0x800019ec <.LBB4_90+0x330>
800019e8: 93 04 04 00  	mv	s1, s0
800019ec: 33 85 44 41  	sub	a0, s1, s4
800019f0: 33 35 25 01  	sltu	a0, a0, s2
800019f4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800019f8: 93 c5 1a 00  	xori	a1, s5, 1
800019fc: 33 e5 a5 00  	or	a0, a1, a0
80001a00: 63 18 05 02  	bnez	a0, 0x80001a30 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001a04: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001a08: 13 84 14 00  	addi	s0, s1, 1
80001a0c: 13 05 00 02  	addi	a0, zero, 32
80001a10: 93 05 0b 00  	mv	a1, s6
80001a14: 13 86 04 00  	mv	a2, s1
80001a18: 93 86 09 00  	mv	a3, s3
80001a1c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001a20: 33 05 8a 00  	add	a0, s4, s0
80001a24: 93 04 04 00  	mv	s1, s0
80001a28: e3 60 25 ff  	bltu	a0, s2, 0x80001a08 <.LBB4_90+0x34c>
80001a2c: 6f 00 80 00  	j	0x80001a34 <.LBB4_90+0x378>
80001a30: 13 84 04 00  	mv	s0, s1
; }
80001a34: 13 05 04 00  	mv	a0, s0
80001a38: 07 39 81 02  	fld	fs2, 40(sp)
80001a3c: 87 34 01 03  	fld	fs1, 48(sp)
80001a40: 07 34 81 03  	fld	fs0, 56(sp)
80001a44: 03 2d 01 04  	lw	s10, 64(sp)
80001a48: 83 2c 41 04  	lw	s9, 68(sp)
80001a4c: 03 2c 81 04  	lw	s8, 72(sp)
80001a50: 83 2b c1 04  	lw	s7, 76(sp)
80001a54: 03 2b 01 05  	lw	s6, 80(sp)
80001a58: 83 2a 41 05  	lw	s5, 84(sp)
80001a5c: 03 2a 81 05  	lw	s4, 88(sp)
80001a60: 83 29 c1 05  	lw	s3, 92(sp)
80001a64: 03 29 01 06  	lw	s2, 96(sp)
80001a68: 83 24 41 06  	lw	s1, 100(sp)
80001a6c: 03 24 81 06  	lw	s0, 104(sp)
80001a70: 83 20 c1 06  	lw	ra, 108(sp)
80001a74: 13 01 01 07  	addi	sp, sp, 112
80001a78: 67 80 00 00  	ret

80001a7c <_etoa>:
; {
80001a7c: 13 01 01 f8  	addi	sp, sp, -128
80001a80: 23 2e 11 06  	sw	ra, 124(sp)
80001a84: 23 2c 81 06  	sw	s0, 120(sp)
80001a88: 23 2a 91 06  	sw	s1, 116(sp)
80001a8c: 23 28 21 07  	sw	s2, 112(sp)
80001a90: 23 26 31 07  	sw	s3, 108(sp)
80001a94: 23 24 41 07  	sw	s4, 104(sp)
80001a98: 23 22 51 07  	sw	s5, 100(sp)
80001a9c: 23 20 61 07  	sw	s6, 96(sp)
80001aa0: 23 2e 71 05  	sw	s7, 92(sp)
80001aa4: 23 2c 81 05  	sw	s8, 88(sp)
80001aa8: 23 2a 91 05  	sw	s9, 84(sp)
80001aac: 23 28 a1 05  	sw	s10, 80(sp)
80001ab0: 23 26 b1 05  	sw	s11, 76(sp)

80001ab4 <.LBB5_43>:
80001ab4: 97 14 00 00  	auipc	s1, 1
80001ab8: 93 84 c4 70  	addi	s1, s1, 1804
80001abc: 87 b0 04 00  	fld	ft1, 0(s1)

80001ac0 <.LBB5_44>:
80001ac0: 97 14 00 00  	auipc	s1, 1
80001ac4: 93 84 84 70  	addi	s1, s1, 1800
80001ac8: 07 b1 04 00  	fld	ft2, 0(s1)
80001acc: 53 00 a5 22  	fmv.d	ft0, fa0
80001ad0: d3 04 15 a2  	fle.d	s1, fa0, ft1
80001ad4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001ad8: b3 f4 84 00  	and	s1, s1, s0
80001adc: 93 0a 08 00  	mv	s5, a6
80001ae0: 13 89 07 00  	mv	s2, a5
80001ae4: 93 07 07 00  	mv	a5, a4
80001ae8: 93 89 06 00  	mv	s3, a3
80001aec: 13 0a 06 00  	mv	s4, a2
80001af0: 13 8b 05 00  	mv	s6, a1
80001af4: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001af8: 63 92 04 06  	bnez	s1, 0x80001b5c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001afc: 13 85 0b 00  	mv	a0, s7
80001b00: 93 05 0b 00  	mv	a1, s6
80001b04: 13 06 0a 00  	mv	a2, s4
80001b08: 93 86 09 00  	mv	a3, s3
80001b0c: 53 05 00 22  	fmv.d	fa0, ft0
80001b10: 13 87 07 00  	mv	a4, a5
80001b14: 93 07 09 00  	mv	a5, s2
80001b18: 13 88 0a 00  	mv	a6, s5
80001b1c: 83 2d c1 04  	lw	s11, 76(sp)
80001b20: 03 2d 01 05  	lw	s10, 80(sp)
80001b24: 83 2c 41 05  	lw	s9, 84(sp)
80001b28: 03 2c 81 05  	lw	s8, 88(sp)
80001b2c: 83 2b c1 05  	lw	s7, 92(sp)
80001b30: 03 2b 01 06  	lw	s6, 96(sp)
80001b34: 83 2a 41 06  	lw	s5, 100(sp)
80001b38: 03 2a 81 06  	lw	s4, 104(sp)
80001b3c: 83 29 c1 06  	lw	s3, 108(sp)
80001b40: 03 29 01 07  	lw	s2, 112(sp)
80001b44: 83 24 41 07  	lw	s1, 116(sp)
80001b48: 03 24 81 07  	lw	s0, 120(sp)
80001b4c: 83 20 c1 07  	lw	ra, 124(sp)
80001b50: 13 01 01 08  	addi	sp, sp, 128
80001b54: 17 03 00 00  	auipc	t1, 0
80001b58: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80001b5c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80001b60: 13 f5 0a 40  	andi	a0, s5, 1024
80001b64: 13 07 60 00  	addi	a4, zero, 6
80001b68: 63 04 05 00  	beqz	a0, 0x80001b70 <.LBB5_44+0xb0>
80001b6c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80001b70: 27 30 a1 02  	fsd	fa0, 32(sp)
80001b74: 83 25 41 02  	lw	a1, 36(sp)
80001b78: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001b7c: 93 d6 45 01  	srli	a3, a1, 20
80001b80: b7 07 10 00  	lui	a5, 256
80001b84: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001b88: b3 f5 f5 00  	and	a1, a1, a5
80001b8c: 23 2c c1 00  	sw	a2, 24(sp)
80001b90: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001b94: b3 e5 c5 00  	or	a1, a1, a2
80001b98: 23 2e b1 00  	sw	a1, 28(sp)
80001b9c: 87 30 81 01  	fld	ft1, 24(sp)

80001ba0 <.LBB5_45>:
80001ba0: 97 15 00 00  	auipc	a1, 1
80001ba4: 93 85 05 63  	addi	a1, a1, 1584
80001ba8: 07 b1 05 00  	fld	ft2, 0(a1)

80001bac <.LBB5_46>:
80001bac: 97 15 00 00  	auipc	a1, 1
80001bb0: 93 85 c5 62  	addi	a1, a1, 1580
80001bb4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001bb8: 93 f5 f6 7f  	andi	a1, a3, 2047
80001bbc: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001bc0: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001bc4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80001bc8 <.LBB5_47>:
80001bc8: 97 15 00 00  	auipc	a1, 1
80001bcc: 93 85 85 61  	addi	a1, a1, 1560
80001bd0: 07 b1 05 00  	fld	ft2, 0(a1)

80001bd4 <.LBB5_48>:
80001bd4: 97 15 00 00  	auipc	a1, 1
80001bd8: 93 85 45 61  	addi	a1, a1, 1556
80001bdc: 87 b1 05 00  	fld	ft3, 0(a1)

80001be0 <.LBB5_49>:
80001be0: 97 15 00 00  	auipc	a1, 1
80001be4: 93 85 05 61  	addi	a1, a1, 1552
80001be8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001bec: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80001bf0: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001bf4: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001bf8: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80001bfc <.LBB5_50>:
80001bfc: 17 16 00 00  	auipc	a2, 1
80001c00: 13 06 c6 5f  	addi	a2, a2, 1532
80001c04: 87 31 06 00  	fld	ft3, 0(a2)

80001c08 <.LBB5_51>:
80001c08: 17 16 00 00  	auipc	a2, 1
80001c0c: 13 06 86 5f  	addi	a2, a2, 1528
80001c10: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001c14: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80001c18: 53 01 06 d2  	fcvt.d.w	ft2, a2
80001c1c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80001c20: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80001c24: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001c28: 13 06 f6 3f  	addi	a2, a2, 1023
80001c2c: 23 28 01 00  	sw	zero, 16(sp)
80001c30: 13 16 46 01  	slli	a2, a2, 20
80001c34: 23 2a c1 00  	sw	a2, 20(sp)

80001c38 <.LBB5_52>:
80001c38: 17 16 00 00  	auipc	a2, 1
80001c3c: 13 06 86 5d  	addi	a2, a2, 1496
80001c40: 87 31 06 00  	fld	ft3, 0(a2)

80001c44 <.LBB5_53>:
80001c44: 17 16 00 00  	auipc	a2, 1
80001c48: 13 06 46 5d  	addi	a2, a2, 1492
80001c4c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001c50: 87 32 01 01  	fld	ft5, 16(sp)

80001c54 <.LBB5_54>:
80001c54: 17 16 00 00  	auipc	a2, 1
80001c58: 13 06 46 5b  	addi	a2, a2, 1460
80001c5c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80001c60: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80001c64 <.LBB5_55>:
80001c64: 17 16 00 00  	auipc	a2, 1
80001c68: 13 06 c6 5b  	addi	a2, a2, 1468
80001c6c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80001c70: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80001c74: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80001c78: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80001c7c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80001c80: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80001c84: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80001c88: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80001c8c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80001c90: 53 16 15 a2  	flt.d	a2, fa0, ft1
80001c94: 63 0a 06 00  	beqz	a2, 0x80001ca8 <.LBB5_56+0x10>

80001c98 <.LBB5_56>:
80001c98: 97 16 00 00  	auipc	a3, 1
80001c9c: 93 86 06 59  	addi	a3, a3, 1424
80001ca0: 07 b1 06 00  	fld	ft2, 0(a3)
80001ca4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80001ca8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80001cac: 93 05 34 06  	addi	a1, s0, 99
80001cb0: 93 b5 75 0c  	sltiu	a1, a1, 199
80001cb4: 13 06 50 00  	addi	a2, zero, 5
80001cb8: b7 16 00 00  	lui	a3, 1
80001cbc: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80001cc0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80001cc4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80001cc8: 63 84 06 06  	beqz	a3, 0x80001d30 <.LBB5_58+0x58>

80001ccc <.LBB5_57>:
80001ccc: 97 15 00 00  	auipc	a1, 1
80001cd0: 93 85 45 56  	addi	a1, a1, 1380
80001cd4: 07 b1 05 00  	fld	ft2, 0(a1)

80001cd8 <.LBB5_58>:
80001cd8: 97 15 00 00  	auipc	a1, 1
80001cdc: 93 85 05 56  	addi	a1, a1, 1376
80001ce0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80001ce4: d3 15 25 a2  	flt.d	a1, fa0, ft2
80001ce8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80001cec: b3 e5 c5 00  	or	a1, a1, a2
80001cf0: 63 98 05 00  	bnez	a1, 0x80001d00 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80001cf4: 63 40 e4 02  	blt	s0, a4, 0x80001d14 <.LBB5_58+0x3c>
80001cf8: 13 07 00 00  	mv	a4, zero
80001cfc: 6f 00 00 02  	j	0x80001d1c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80001d00: 63 06 07 02  	beqz	a4, 0x80001d2c <.LBB5_58+0x54>
80001d04: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80001d08: 13 45 15 00  	xori	a0, a0, 1
80001d0c: 33 07 a7 40  	sub	a4, a4, a0
80001d10: 6f 00 00 02  	j	0x80001d30 <.LBB5_58+0x58>
80001d14: 13 45 f4 ff  	not	a0, s0
80001d18: 33 07 a7 00  	add	a4, a4, a0
80001d1c: 13 04 00 00  	mv	s0, zero
80001d20: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80001d24: 93 ea 0a 40  	ori	s5, s5, 1024
80001d28: 6f 00 80 00  	j	0x80001d30 <.LBB5_58+0x58>
80001d2c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80001d30: b3 05 99 41  	sub	a1, s2, s9
80001d34: 33 36 b9 00  	sltu	a2, s2, a1
80001d38: 13 05 00 00  	mv	a0, zero
80001d3c: 63 14 06 00  	bnez	a2, 0x80001d44 <.LBB5_58+0x6c>
80001d40: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80001d44: 93 07 00 00  	mv	a5, zero
80001d48: 93 d5 1a 00  	srli	a1, s5, 1
80001d4c: 93 f4 15 00  	andi	s1, a1, 1
80001d50: b3 35 90 01  	snez	a1, s9
80001d54: b3 f5 b4 00  	and	a1, s1, a1
80001d58: 53 01 00 d2  	fcvt.d.w	ft2, zero
80001d5c: 63 94 05 00  	bnez	a1, 0x80001d64 <.LBB5_58+0x8c>
80001d60: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80001d64: 93 35 14 00  	seqz	a1, s0
80001d68: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80001d6c: 63 94 05 00  	bnez	a1, 0x80001d74 <.LBB5_58+0x9c>
80001d70: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80001d74: 63 04 05 00  	beqz	a0, 0x80001d7c <.LBB5_58+0xa4>
80001d78: 53 15 a5 22  	fneg.d	fa0, fa0
80001d7c: 37 f5 ff ff  	lui	a0, 1048575
80001d80: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80001d84: 33 f8 aa 00  	and	a6, s5, a0
80001d88: 13 85 0b 00  	mv	a0, s7
80001d8c: 93 05 0b 00  	mv	a1, s6
80001d90: 13 06 0a 00  	mv	a2, s4
80001d94: 93 86 09 00  	mv	a3, s3
80001d98: 97 f0 ff ff  	auipc	ra, 1048575
80001d9c: e7 80 40 60  	jalr	1540(ra)
80001da0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80001da4: 63 82 0c 18  	beqz	s9, 0x80001f28 <.LBB5_58+0x250>
80001da8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80001dac: 13 f5 0a 02  	andi	a0, s5, 32
80001db0: 13 45 55 06  	xori	a0, a0, 101
80001db4: 93 05 0b 00  	mv	a1, s6
80001db8: 13 06 0d 00  	mv	a2, s10
80001dbc: 93 86 09 00  	mv	a3, s3
80001dc0: e7 80 0b 00  	jalr	s7
80001dc4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80001dc8: 93 5a f4 01  	srli	s5, s0, 31
80001dcc: 13 55 f4 41  	srai	a0, s0, 31
80001dd0: b3 05 a4 00  	add	a1, s0, a0
80001dd4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80001dd8: 93 8d dc ff  	addi	s11, s9, -3
80001ddc: 13 04 f0 01  	addi	s0, zero, 31
80001de0: 37 d5 cc cc  	lui	a0, 838861
80001de4: 13 05 d5 cc  	addi	a0, a0, -819
80001de8: 13 08 a0 00  	addi	a6, zero, 10
80001dec: 93 08 c1 02  	addi	a7, sp, 44
80001df0: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80001df4: b3 37 a7 02  	mulhu	a5, a4, a0
80001df8: 93 d5 37 00  	srli	a1, a5, 3
80001dfc: b3 87 05 03  	mul	a5, a1, a6
80001e00: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e04: 13 e6 07 03  	ori	a2, a5, 48
80001e08: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e0c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e10: 13 0c 1c 00  	addi	s8, s8, 1
80001e14: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e18: 33 b6 e2 00  	sltu	a2, t0, a4
80001e1c: 33 f6 c7 00  	and	a2, a5, a2
80001e20: 93 8d fd ff  	addi	s11, s11, -1
80001e24: 13 04 f4 ff  	addi	s0, s0, -1
80001e28: 13 87 05 00  	mv	a4, a1
80001e2c: e3 14 06 fc  	bnez	a2, 0x80001df4 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001e30: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80001e34: 33 35 ac 00  	sltu	a0, s8, a0
80001e38: 13 45 15 00  	xori	a0, a0, 1
80001e3c: 93 c5 17 00  	xori	a1, a5, 1
80001e40: 33 e5 a5 00  	or	a0, a1, a0
80001e44: 63 12 05 04  	bnez	a0, 0x80001e88 <.LBB5_58+0x1b0>
80001e48: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80001e4c: b3 85 8c 41  	sub	a1, s9, s8
80001e50: 93 85 d5 ff  	addi	a1, a1, -3
80001e54: 13 06 f0 01  	addi	a2, zero, 31
80001e58: 33 06 86 41  	sub	a2, a2, s8
80001e5c: 33 05 85 01  	add	a0, a0, s8
80001e60: 63 e4 c5 00  	bltu	a1, a2, 0x80001e68 <.LBB5_58+0x190>
80001e64: 93 05 06 00  	mv	a1, a2
80001e68: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001e6c: 93 05 00 03  	addi	a1, zero, 48
80001e70: 97 e0 ff ff  	auipc	ra, 1048574
80001e74: e7 80 80 6e  	jalr	1768(ra)
;   if (flags & FLAGS_HASH) {
80001e78: 63 e4 8d 00  	bltu	s11, s0, 0x80001e80 <.LBB5_58+0x1a8>
80001e7c: 93 0d 04 00  	mv	s11, s0
80001e80: 33 85 8d 01  	add	a0, s11, s8
80001e84: 13 0c 15 00  	addi	s8, a0, 1
80001e88: 83 2c c1 00  	lw	s9, 12(sp)
80001e8c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80001e90: 63 60 85 03  	bltu	a0, s8, 0x80001eb0 <.LBB5_58+0x1d8>
80001e94: 13 05 c1 02  	addi	a0, sp, 44
80001e98: 33 05 85 01  	add	a0, a0, s8
80001e9c: 93 05 d0 02  	addi	a1, zero, 45
80001ea0: 63 94 0a 00  	bnez	s5, 0x80001ea8 <.LBB5_58+0x1d0>
80001ea4: 93 05 b0 02  	addi	a1, zero, 43
80001ea8: 13 0c 1c 00  	addi	s8, s8, 1
80001eac: 23 00 b5 00  	sb	a1, 0(a0)
80001eb0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80001eb4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80001eb8: 33 85 8a 01  	add	a0, s5, s8
80001ebc: 03 45 05 00  	lbu	a0, 0(a0)
80001ec0: 13 06 04 00  	mv	a2, s0
80001ec4: 93 04 fc ff  	addi	s1, s8, -1
80001ec8: 13 04 14 00  	addi	s0, s0, 1
80001ecc: 93 05 0b 00  	mv	a1, s6
80001ed0: 93 86 09 00  	mv	a3, s3
80001ed4: e7 80 0b 00  	jalr	s7
80001ed8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80001edc: e3 9e 04 fc  	bnez	s1, 0x80001eb8 <.LBB5_58+0x1e0>
80001ee0: 33 05 44 41  	sub	a0, s0, s4
80001ee4: 33 35 25 01  	sltu	a0, a0, s2
80001ee8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80001eec: 93 c5 1c 00  	xori	a1, s9, 1
80001ef0: 33 e5 a5 00  	or	a0, a1, a0
80001ef4: 63 18 05 02  	bnez	a0, 0x80001f24 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80001ef8: b3 04 40 41  	neg	s1, s4
80001efc: 13 0d 14 00  	addi	s10, s0, 1
80001f00: 13 05 00 02  	addi	a0, zero, 32
80001f04: 93 05 0b 00  	mv	a1, s6
80001f08: 13 06 04 00  	mv	a2, s0
80001f0c: 93 86 09 00  	mv	a3, s3
80001f10: e7 80 0b 00  	jalr	s7
80001f14: 33 85 a4 01  	add	a0, s1, s10
80001f18: 13 04 0d 00  	mv	s0, s10
80001f1c: e3 60 25 ff  	bltu	a0, s2, 0x80001efc <.LBB5_58+0x224>
80001f20: 6f 00 80 00  	j	0x80001f28 <.LBB5_58+0x250>
80001f24: 13 0d 04 00  	mv	s10, s0
; }
80001f28: 13 05 0d 00  	mv	a0, s10
80001f2c: 83 2d c1 04  	lw	s11, 76(sp)
80001f30: 03 2d 01 05  	lw	s10, 80(sp)
80001f34: 83 2c 41 05  	lw	s9, 84(sp)
80001f38: 03 2c 81 05  	lw	s8, 88(sp)
80001f3c: 83 2b c1 05  	lw	s7, 92(sp)
80001f40: 03 2b 01 06  	lw	s6, 96(sp)
80001f44: 83 2a 41 06  	lw	s5, 100(sp)
80001f48: 03 2a 81 06  	lw	s4, 104(sp)
80001f4c: 83 29 c1 06  	lw	s3, 108(sp)
80001f50: 03 29 01 07  	lw	s2, 112(sp)
80001f54: 83 24 41 07  	lw	s1, 116(sp)
80001f58: 03 24 81 07  	lw	s0, 120(sp)
80001f5c: 83 20 c1 07  	lw	ra, 124(sp)
80001f60: 13 01 01 08  	addi	sp, sp, 128
80001f64: 67 80 00 00  	ret

80001f68 <_ntoa_format>:
; {
80001f68: 13 01 01 fc  	addi	sp, sp, -64
80001f6c: 23 2e 11 02  	sw	ra, 60(sp)
80001f70: 23 2c 81 02  	sw	s0, 56(sp)
80001f74: 23 2a 91 02  	sw	s1, 52(sp)
80001f78: 23 28 21 03  	sw	s2, 48(sp)
80001f7c: 23 26 31 03  	sw	s3, 44(sp)
80001f80: 23 24 41 03  	sw	s4, 40(sp)
80001f84: 23 22 51 03  	sw	s5, 36(sp)
80001f88: 23 20 61 03  	sw	s6, 32(sp)
80001f8c: 23 2e 71 01  	sw	s7, 28(sp)
80001f90: 23 2c 81 01  	sw	s8, 24(sp)
80001f94: 23 2a 91 01  	sw	s9, 20(sp)
80001f98: 23 28 a1 01  	sw	s10, 16(sp)
80001f9c: 23 26 b1 01  	sw	s11, 12(sp)
80001fa0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80001fa4: 93 fa 2e 00  	andi	s5, t4, 2
80001fa8: 13 09 0e 00  	mv	s2, t3
80001fac: 13 8d 03 00  	mv	s10, t2
80001fb0: 93 8c 08 00  	mv	s9, a7
80001fb4: 13 8c 07 00  	mv	s8, a5
80001fb8: 93 89 06 00  	mv	s3, a3
80001fbc: 13 0a 06 00  	mv	s4, a2
80001fc0: 13 8b 05 00  	mv	s6, a1
80001fc4: 93 0d 05 00  	mv	s11, a0
80001fc8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80001fcc: 63 9e 0a 0c  	bnez	s5, 0x800020a8 <_ntoa_format+0x140>
80001fd0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001fd4: 63 0e 09 00  	beqz	s2, 0x80001ff0 <_ntoa_format+0x88>
80001fd8: 63 0e 04 00  	beqz	s0, 0x80001ff4 <_ntoa_format+0x8c>
80001fdc: 13 f5 cb 00  	andi	a0, s7, 12
80001fe0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001fe4: 33 65 05 01  	or	a0, a0, a6
80001fe8: 33 09 a9 40  	sub	s2, s2, a0
80001fec: 6f 00 80 00  	j	0x80001ff4 <_ntoa_format+0x8c>
80001ff0: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80001ff4: 33 35 ac 01  	sltu	a0, s8, s10
80001ff8: 93 45 15 00  	xori	a1, a0, 1
80001ffc: 13 05 f0 01  	addi	a0, zero, 31
80002000: 33 36 85 01  	sltu	a2, a0, s8
80002004: b3 65 b6 00  	or	a1, a2, a1
80002008: 63 94 05 04  	bnez	a1, 0x80002050 <_ntoa_format+0xe8>
8000200c: 23 22 51 01  	sw	s5, 4(sp)
80002010: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002014: 93 45 fc ff  	not	a1, s8
80002018: b3 85 a5 01  	add	a1, a1, s10
8000201c: 33 06 85 41  	sub	a2, a0, s8
80002020: 33 05 87 01  	add	a0, a4, s8
80002024: 63 e4 c5 00  	bltu	a1, a2, 0x8000202c <_ntoa_format+0xc4>
80002028: 93 05 06 00  	mv	a1, a2
8000202c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002030: 93 05 00 03  	addi	a1, zero, 48
80002034: 13 86 04 00  	mv	a2, s1
80002038: 97 e0 ff ff  	auipc	ra, 1048574
8000203c: e7 80 00 52  	jalr	1312(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002040: 33 8c 84 01  	add	s8, s1, s8
80002044: 03 27 81 00  	lw	a4, 8(sp)
80002048: 13 88 0a 00  	mv	a6, s5
8000204c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002050: 63 0c 04 04  	beqz	s0, 0x800020a8 <_ntoa_format+0x140>
80002054: 33 35 2c 01  	sltu	a0, s8, s2
80002058: 93 45 15 00  	xori	a1, a0, 1
8000205c: 13 05 f0 01  	addi	a0, zero, 31
80002060: 33 36 85 01  	sltu	a2, a0, s8
80002064: b3 e5 c5 00  	or	a1, a1, a2
80002068: 63 90 05 04  	bnez	a1, 0x800020a8 <_ntoa_format+0x140>
8000206c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002070: 93 45 fc ff  	not	a1, s8
80002074: b3 05 b9 00  	add	a1, s2, a1
80002078: 33 06 85 41  	sub	a2, a0, s8
8000207c: 33 05 87 01  	add	a0, a4, s8
80002080: 63 e4 c5 00  	bltu	a1, a2, 0x80002088 <_ntoa_format+0x120>
80002084: 93 05 06 00  	mv	a1, a2
80002088: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000208c: 93 05 00 03  	addi	a1, zero, 48
80002090: 13 86 04 00  	mv	a2, s1
80002094: 97 e0 ff ff  	auipc	ra, 1048574
80002098: e7 80 40 4c  	jalr	1220(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000209c: 33 8c 84 01  	add	s8, s1, s8
800020a0: 03 27 81 00  	lw	a4, 8(sp)
800020a4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800020a8: 13 f5 0b 01  	andi	a0, s7, 16
800020ac: 63 02 05 0e  	beqz	a0, 0x80002190 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800020b0: 13 f5 0b 40  	andi	a0, s7, 1024
800020b4: 13 55 a5 00  	srli	a0, a0, 10
800020b8: 93 35 1c 00  	seqz	a1, s8
800020bc: 33 65 b5 00  	or	a0, a0, a1
800020c0: 63 1e 05 02  	bnez	a0, 0x800020fc <_ntoa_format+0x194>
800020c4: 33 45 ac 01  	xor	a0, s8, s10
800020c8: 33 35 a0 00  	snez	a0, a0
800020cc: b3 45 2c 01  	xor	a1, s8, s2
800020d0: b3 35 b0 00  	snez	a1, a1
800020d4: 33 75 b5 00  	and	a0, a0, a1
800020d8: 63 12 05 02  	bnez	a0, 0x800020fc <_ntoa_format+0x194>
;       len--;
800020dc: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800020e0: b3 35 a0 00  	snez	a1, a0
800020e4: 13 86 0c ff  	addi	a2, s9, -16
800020e8: 13 36 16 00  	seqz	a2, a2
800020ec: b3 75 b6 00  	and	a1, a2, a1
800020f0: 63 84 05 00  	beqz	a1, 0x800020f8 <_ntoa_format+0x190>
800020f4: 13 05 ec ff  	addi	a0, s8, -2
800020f8: 13 0c 05 00  	mv	s8, a0
800020fc: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002100: 63 96 ac 02  	bne	s9, a0, 0x8000212c <_ntoa_format+0x1c4>
80002104: 13 f5 0b 02  	andi	a0, s7, 32
80002108: 93 55 55 00  	srli	a1, a0, 5
8000210c: 13 06 f0 01  	addi	a2, zero, 31
80002110: 33 36 86 01  	sltu	a2, a2, s8
80002114: b3 e5 c5 00  	or	a1, a1, a2
80002118: 63 9e 05 02  	bnez	a1, 0x80002154 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
8000211c: 33 05 87 01  	add	a0, a4, s8
80002120: 13 0c 1c 00  	addi	s8, s8, 1
80002124: 93 05 80 07  	addi	a1, zero, 120
80002128: 6f 00 c0 04  	j	0x80002174 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000212c: 13 85 ec ff  	addi	a0, s9, -2
80002130: 33 35 a0 00  	snez	a0, a0
80002134: 93 05 f0 01  	addi	a1, zero, 31
80002138: b3 b5 85 01  	sltu	a1, a1, s8
8000213c: 33 65 b5 00  	or	a0, a0, a1
80002140: 63 1c 05 02  	bnez	a0, 0x80002178 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002144: 33 05 87 01  	add	a0, a4, s8
80002148: 13 0c 1c 00  	addi	s8, s8, 1
8000214c: 93 05 20 06  	addi	a1, zero, 98
80002150: 6f 00 40 02  	j	0x80002174 <_ntoa_format+0x20c>
80002154: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002158: 13 35 15 00  	seqz	a0, a0
8000215c: 93 c5 15 00  	xori	a1, a1, 1
80002160: 33 65 b5 00  	or	a0, a0, a1
80002164: 63 1a 05 00  	bnez	a0, 0x80002178 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80002168: 33 05 87 01  	add	a0, a4, s8
8000216c: 13 0c 1c 00  	addi	s8, s8, 1
80002170: 93 05 80 05  	addi	a1, zero, 88
80002174: 23 00 b5 00  	sb	a1, 0(a0)
80002178: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000217c: 63 60 85 07  	bltu	a0, s8, 0x800021dc <_ntoa_format+0x274>
;       buf[len++] = '0';
80002180: 33 05 87 01  	add	a0, a4, s8
80002184: 13 0c 1c 00  	addi	s8, s8, 1
80002188: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000218c: 23 00 b5 00  	sb	a1, 0(a0)
80002190: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002194: 63 64 85 05  	bltu	a0, s8, 0x800021dc <_ntoa_format+0x274>
;     if (negative) {
80002198: 63 0a 08 00  	beqz	a6, 0x800021ac <_ntoa_format+0x244>
;       buf[len++] = '-';
8000219c: 33 05 87 01  	add	a0, a4, s8
800021a0: 13 0c 1c 00  	addi	s8, s8, 1
800021a4: 93 05 d0 02  	addi	a1, zero, 45
800021a8: 6f 00 00 03  	j	0x800021d8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800021ac: 13 f5 4b 00  	andi	a0, s7, 4
800021b0: 63 1e 05 00  	bnez	a0, 0x800021cc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800021b4: 13 f5 8b 00  	andi	a0, s7, 8
800021b8: 63 02 05 02  	beqz	a0, 0x800021dc <_ntoa_format+0x274>
;       buf[len++] = ' ';
800021bc: 33 05 87 01  	add	a0, a4, s8
800021c0: 13 0c 1c 00  	addi	s8, s8, 1
800021c4: 93 05 00 02  	addi	a1, zero, 32
800021c8: 6f 00 00 01  	j	0x800021d8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800021cc: 33 05 87 01  	add	a0, a4, s8
800021d0: 13 0c 1c 00  	addi	s8, s8, 1
800021d4: 93 05 b0 02  	addi	a1, zero, 43
800021d8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800021dc: 13 f5 3b 00  	andi	a0, s7, 3
800021e0: 33 35 a0 00  	snez	a0, a0
800021e4: b3 35 2c 01  	sltu	a1, s8, s2
800021e8: 93 c5 15 00  	xori	a1, a1, 1
800021ec: 33 65 b5 00  	or	a0, a0, a1
800021f0: 13 04 0a 00  	mv	s0, s4
800021f4: 63 16 05 02  	bnez	a0, 0x80002220 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800021f8: b3 04 89 41  	sub	s1, s2, s8
800021fc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002200: 13 04 16 00  	addi	s0, a2, 1
80002204: 13 05 00 02  	addi	a0, zero, 32
80002208: 93 05 0b 00  	mv	a1, s6
8000220c: 93 86 09 00  	mv	a3, s3
80002210: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002214: 93 84 f4 ff  	addi	s1, s1, -1
80002218: 13 06 04 00  	mv	a2, s0
8000221c: e3 92 04 fe  	bnez	s1, 0x80002200 <_ntoa_format+0x298>
80002220: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002224: 63 0e 0c 02  	beqz	s8, 0x80002260 <_ntoa_format+0x2f8>
80002228: 03 25 81 00  	lw	a0, 8(sp)
8000222c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002230: 33 85 8b 01  	add	a0, s7, s8
80002234: 03 45 05 00  	lbu	a0, 0(a0)
80002238: 93 0c fc ff  	addi	s9, s8, -1
8000223c: 93 04 14 00  	addi	s1, s0, 1
80002240: 93 05 0b 00  	mv	a1, s6
80002244: 13 06 04 00  	mv	a2, s0
80002248: 93 86 09 00  	mv	a3, s3
8000224c: e7 80 0d 00  	jalr	s11
80002250: 13 84 04 00  	mv	s0, s1
80002254: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002258: e3 9c 0c fc  	bnez	s9, 0x80002230 <_ntoa_format+0x2c8>
8000225c: 6f 00 80 00  	j	0x80002264 <_ntoa_format+0x2fc>
80002260: 93 04 04 00  	mv	s1, s0
80002264: 33 85 44 41  	sub	a0, s1, s4
80002268: 33 35 25 01  	sltu	a0, a0, s2
8000226c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002270: 93 c5 1a 00  	xori	a1, s5, 1
80002274: 33 e5 a5 00  	or	a0, a1, a0
80002278: 63 18 05 02  	bnez	a0, 0x800022a8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000227c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002280: 13 84 14 00  	addi	s0, s1, 1
80002284: 13 05 00 02  	addi	a0, zero, 32
80002288: 93 05 0b 00  	mv	a1, s6
8000228c: 13 86 04 00  	mv	a2, s1
80002290: 93 86 09 00  	mv	a3, s3
80002294: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002298: 33 05 8a 00  	add	a0, s4, s0
8000229c: 93 04 04 00  	mv	s1, s0
800022a0: e3 60 25 ff  	bltu	a0, s2, 0x80002280 <_ntoa_format+0x318>
800022a4: 6f 00 80 00  	j	0x800022ac <_ntoa_format+0x344>
800022a8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800022ac: 13 05 04 00  	mv	a0, s0
800022b0: 83 2d c1 00  	lw	s11, 12(sp)
800022b4: 03 2d 01 01  	lw	s10, 16(sp)
800022b8: 83 2c 41 01  	lw	s9, 20(sp)
800022bc: 03 2c 81 01  	lw	s8, 24(sp)
800022c0: 83 2b c1 01  	lw	s7, 28(sp)
800022c4: 03 2b 01 02  	lw	s6, 32(sp)
800022c8: 83 2a 41 02  	lw	s5, 36(sp)
800022cc: 03 2a 81 02  	lw	s4, 40(sp)
800022d0: 83 29 c1 02  	lw	s3, 44(sp)
800022d4: 03 29 01 03  	lw	s2, 48(sp)
800022d8: 83 24 41 03  	lw	s1, 52(sp)
800022dc: 03 24 81 03  	lw	s0, 56(sp)
800022e0: 83 20 c1 03  	lw	ra, 60(sp)
800022e4: 13 01 01 04  	addi	sp, sp, 64
800022e8: 67 80 00 00  	ret

800022ec <_snrt_init_team>:
;     team->base.root = team;
800022ec: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800022f0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800022f4: 03 23 87 00  	lw	t1, 8(a4)
800022f8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800022fc: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002300: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002304: 83 22 47 00  	lw	t0, 4(a4)
80002308: 33 88 08 03  	mul	a6, a7, a6
8000230c: 33 05 58 02  	mul	a0, a6, t0
80002310: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002314: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002318: 33 85 68 40  	sub	a0, a7, t1
8000231c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002320: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002324: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002328: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000232c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002330: 03 25 87 01  	lw	a0, 24(a4)
80002334: b7 05 00 10  	lui	a1, 65536
80002338: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000233c: 23 a2 07 02  	sw	zero, 36(a5)
80002340: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002344: 03 25 07 02  	lw	a0, 32(a4)
80002348: 83 25 47 02  	lw	a1, 36(a4)
8000234c: 23 a4 a7 02  	sw	a0, 40(a5)
80002350: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002354: 23 a8 c7 02  	sw	a2, 48(a5)
80002358: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
8000235c: 23 ac d7 02  	sw	a3, 56(a5)
80002360: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002364: 03 25 07 01  	lw	a0, 16(a4)
80002368: 33 08 a6 00  	add	a6, a2, a0
8000236c: 93 05 08 19  	addi	a1, a6, 400
80002370: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002374: b3 32 a8 00  	sltu	t0, a6, a0
80002378: 93 55 15 00  	srli	a1, a0, 1
8000237c: 33 03 b8 00  	add	t1, a6, a1
80002380: b3 35 03 01  	sltu	a1, t1, a6
80002384: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002388: 23 a0 67 04  	sw	t1, 64(a5)
8000238c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002390: 13 15 15 00  	slli	a0, a0, 1
80002394: b3 05 c5 00  	add	a1, a0, a2
80002398: 33 b5 a5 00  	sltu	a0, a1, a0
8000239c: 23 a4 b7 04  	sw	a1, 72(a5)
800023a0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800023a4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800023a8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800023ac: 37 05 00 00  	lui	a0, 0
800023b0: 33 05 45 00  	add	a0, a0, tp
800023b4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800023b8: 03 a5 07 00  	lw	a0, 0(a5)
800023bc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800023c0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800023c4: b3 85 b8 40  	sub	a1, a7, a1
800023c8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800023cc: b7 05 00 00  	lui	a1, 0
800023d0: b3 85 45 00  	add	a1, a1, tp
800023d4: 23 a2 a5 00  	sw	a0, 4(a1)
800023d8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800023dc: 33 85 a8 02  	mul	a0, a7, a0

800023e0 <.LBB0_1>:
800023e0: 97 15 00 00  	auipc	a1, 1
800023e4: 93 85 c5 e7  	addi	a1, a1, -388
800023e8: 33 05 b5 00  	add	a0, a0, a1
800023ec: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800023f0: 83 28 07 03  	lw	a7, 48(a4)
800023f4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800023f8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800023fc: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002400: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002404: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002408: 13 05 76 00  	addi	a0, a2, 7
8000240c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002410: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002414: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002418: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000241c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002420: 03 a5 05 00  	lw	a0, 0(a1)
80002424: 13 05 f5 44  	addi	a0, a0, 1103
80002428: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000242c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002430: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002434: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002438: 37 05 00 00  	lui	a0, 0
8000243c: 33 05 45 00  	add	a0, a0, tp
80002440: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002444: 37 05 00 00  	lui	a0, 0
80002448: 33 05 45 00  	add	a0, a0, tp
8000244c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002450: 67 80 00 00  	ret

80002454 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002454: 37 05 00 00  	lui	a0, 0
80002458: 33 05 45 00  	add	a0, a0, tp
8000245c: 03 25 05 00  	lw	a0, 0(a0)
80002460: 03 25 05 00  	lw	a0, 0(a0)
80002464: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002468: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000246c: 33 85 a5 40  	sub	a0, a1, a0
80002470: 67 80 00 00  	ret

80002474 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002474: 37 05 00 00  	lui	a0, 0
80002478: 33 05 45 00  	add	a0, a0, tp
8000247c: 03 25 05 00  	lw	a0, 0(a0)
80002480: 03 25 05 00  	lw	a0, 0(a0)
80002484: 03 25 05 07  	lw	a0, 112(a0)
80002488: 67 80 00 00  	ret

8000248c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000248c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002490: 63 44 05 00  	bltz	a0, 0x80002498 <__snrt_isr+0xc>
;         while (1)
80002494: 6f 00 00 00  	j	0x80002494 <__snrt_isr+0x8>
80002498: b7 05 00 80  	lui	a1, 524288
8000249c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800024a0: 33 75 b5 00  	and	a0, a0, a1
800024a4: 13 05 d5 ff  	addi	a0, a0, -3
800024a8: 93 55 25 00  	srli	a1, a0, 2
800024ac: 13 15 e5 01  	slli	a0, a0, 30
800024b0: 33 65 b5 00  	or	a0, a0, a1
800024b4: 93 05 40 00  	addi	a1, zero, 4
800024b8: 63 0a b5 06  	beq	a0, a1, 0x8000252c <.LBB1_7+0x58>
800024bc: 63 1a 05 08  	bnez	a0, 0x80002550 <.LBB1_7+0x7c>
800024c0: 37 05 00 00  	lui	a0, 0
800024c4: 33 05 45 00  	add	a0, a0, tp
800024c8: 03 25 05 00  	lw	a0, 0(a0)
800024cc: 03 25 05 00  	lw	a0, 0(a0)
800024d0: f3 25 40 f1  	csrr	a1, mhartid

800024d4 <.LBB1_7>:
;     asm volatile(
800024d4: 17 16 00 00  	auipc	a2, 1
800024d8: 13 06 46 d8  	addi	a2, a2, -636
800024dc: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800024e0: 93 06 06 00  	mv	a3, a2
800024e4: 93 02 10 00  	addi	t0, zero, 1
800024e8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800024ec: e3 9e 02 fe  	bnez	t0, 0x800024e8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800024f0: b7 06 00 00  	lui	a3, 0
800024f4: b3 86 46 00  	add	a3, a3, tp
800024f8: 83 a6 86 00  	lw	a3, 8(a3)
800024fc: 33 85 a5 40  	sub	a0, a1, a0
80002500: 93 55 35 00  	srli	a1, a0, 3
80002504: 93 f5 c5 ff  	andi	a1, a1, -4
80002508: b3 85 b6 00  	add	a1, a3, a1
8000250c: 83 a6 05 00  	lw	a3, 0(a1)
80002510: 13 07 10 00  	addi	a4, zero, 1
80002514: 33 15 a7 00  	sll	a0, a4, a0
80002518: 13 45 f5 ff  	not	a0, a0
8000251c: 33 f5 a6 00  	and	a0, a3, a0
80002520: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002524: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002528: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000252c: 37 05 00 00  	lui	a0, 0
80002530: 33 05 45 00  	add	a0, a0, tp
80002534: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002538: b7 05 00 00  	lui	a1, 0
8000253c: b3 85 45 00  	add	a1, a1, tp
80002540: 83 a5 c5 00  	lw	a1, 12(a1)
80002544: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002548: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000254c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002550: 67 80 00 00  	ret

80002554 <gemm_bench>:
; gemm_result_t gemm_bench(gemm_impl_t gemm_impl) {
80002554: 13 01 01 fc  	addi	sp, sp, -64
80002558: 23 2e 11 02  	sw	ra, 60(sp)
8000255c: 23 2c 81 02  	sw	s0, 56(sp)
80002560: 23 2a 91 02  	sw	s1, 52(sp)
80002564: 23 28 21 03  	sw	s2, 48(sp)
80002568: 23 26 31 03  	sw	s3, 44(sp)
8000256c: 23 24 41 03  	sw	s4, 40(sp)
80002570: 23 22 51 03  	sw	s5, 36(sp)
80002574: 23 20 61 03  	sw	s6, 32(sp)
80002578: 23 2e 71 01  	sw	s7, 28(sp)
8000257c: 23 2c 81 01  	sw	s8, 24(sp)
80002580: 23 2a 91 01  	sw	s9, 20(sp)
80002584: 23 28 a1 01  	sw	s10, 16(sp)
80002588: 23 26 b1 01  	sw	s11, 12(sp)
8000258c: 13 84 05 00  	mv	s0, a1
80002590: 13 0a 05 00  	mv	s4, a0
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80002594: 97 10 00 00  	auipc	ra, 1
80002598: e7 80 c0 85  	jalr	-1956(ra)
;     return _snrt_team_current->root->cluster_core_num;
8000259c: 37 05 00 00  	lui	a0, 0
800025a0: 33 05 45 00  	add	a0, a0, tp
800025a4: 03 25 05 00  	lw	a0, 0(a0)
800025a8: 83 25 05 00  	lw	a1, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800025ac: 37 05 00 00  	lui	a0, 0
800025b0: 33 05 45 00  	add	a0, a0, tp
;     return _snrt_team_current->root->cluster_core_num;
800025b4: 03 a6 c5 01  	lw	a2, 28(a1)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800025b8: 03 2d 45 00  	lw	s10, 4(a0)
;     return snrt_cluster_core_num() - 1;
800025bc: 13 05 f6 ff  	addi	a0, a2, -1
;     if (snrt_is_dm_core()) {
800025c0: 63 72 ad 08  	bgeu	s10, a0, 0x80002644 <.LBB0_24+0x30>

800025c4 <.LBB0_22>:
;     ptr += input_size * input_size + 1;
800025c4: 97 1d 00 00  	auipc	s11, 1
800025c8: 93 8d 4d 89  	addi	s11, s11, -1900
800025cc: 83 aa 0d 00  	lw	s5, 0(s11)
;     return _snrt_team_current->root->cluster_mem;
800025d0: 83 ac 05 03  	lw	s9, 48(a1)
;     ptr += input_size * input_size + 1;
800025d4: b3 85 5a 03  	mul	a1, s5, s5
800025d8: 13 96 35 00  	slli	a2, a1, 3
800025dc: 13 06 86 00  	addi	a2, a2, 8
800025e0: b3 89 cc 00  	add	s3, s9, a2
;     if (core_id % core_num == 0) populate(input_A, input_size * input_size, 1);
800025e4: b3 76 ad 02  	remu	a3, s10, a0
800025e8: 13 07 20 00  	addi	a4, zero, 2
;     ptr += input_size * input_size + 1;
800025ec: 33 86 c9 00  	add	a2, s3, a2
;     if (core_id % core_num == 0) populate(input_A, input_size * input_size, 1);
800025f0: 23 24 81 00  	sw	s0, 8(sp)
800025f4: 63 88 e6 06  	beq	a3, a4, 0x80002664 <.LBB0_24+0x50>
800025f8: 13 07 10 00  	addi	a4, zero, 1
;     if (core_id % core_num == 0) populate(input_A, input_size * input_size, 1);
800025fc: 63 80 e6 0a  	beq	a3, a4, 0x8000269c <.LBB0_25+0x34>
80002600: 63 98 06 0c  	bnez	a3, 0x800026d0 <.LBB0_26+0x30>
;     for (uint32_t i = 0; i < size; i++) {
80002604: 63 86 05 0c  	beqz	a1, 0x800026d0 <.LBB0_26+0x30>

80002608 <.LBB0_23>:
80002608: 97 16 00 00  	auipc	a3, 1
8000260c: 93 86 06 c4  	addi	a3, a3, -960
80002610: 07 b0 06 00  	fld	ft0, 0(a3)

80002614 <.LBB0_24>:
80002614: 97 16 00 00  	auipc	a3, 1
80002618: 93 86 c6 c2  	addi	a3, a3, -980
8000261c: 87 b0 06 00  	fld	ft1, 0(a3)
80002620: 53 01 00 22  	fmv.d	ft2, ft0
80002624: 93 86 0c 00  	mv	a3, s9
;         *ptr = (double)seed * 3.141;
80002628: d3 71 11 12  	fmul.d	ft3, ft2, ft1
8000262c: 27 b0 36 00  	fsd	ft3, 0(a3)
;         ++ptr;
80002630: 93 86 86 00  	addi	a3, a3, 8
;     for (uint32_t i = 0; i < size; i++) {
80002634: 93 85 f5 ff  	addi	a1, a1, -1
80002638: 53 71 01 02  	fadd.d	ft2, ft2, ft0
8000263c: e3 96 05 fe  	bnez	a1, 0x80002628 <.LBB0_24+0x14>
80002640: 6f 00 00 09  	j	0x800026d0 <.LBB0_26+0x30>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80002644: 97 00 00 00  	auipc	ra, 0
80002648: e7 80 c0 7a  	jalr	1964(ra)
8000264c: 97 00 00 00  	auipc	ra, 0
80002650: e7 80 40 7a  	jalr	1956(ra)
;         return (gemm_result_t){0, 0, 0};
80002654: 23 20 0a 00  	sw	zero, 0(s4)
80002658: 23 22 0a 00  	sw	zero, 4(s4)
8000265c: 23 24 0a 00  	sw	zero, 8(s4)
80002660: 6f 00 00 19  	j	0x800027f0 <.LBB0_28+0x7c>
;     for (uint32_t i = 0; i < size; i++) {
80002664: 63 86 05 06  	beqz	a1, 0x800026d0 <.LBB0_26+0x30>

80002668 <.LBB0_25>:
80002668: 97 16 00 00  	auipc	a3, 1
8000266c: 93 86 86 bd  	addi	a3, a3, -1064
80002670: 07 b0 06 00  	fld	ft0, 0(a3)
80002674: 93 06 00 00  	mv	a3, zero
80002678: 13 07 06 00  	mv	a4, a2
;         *ptr = (double)seed * 3.141;
8000267c: 93 87 36 00  	addi	a5, a3, 3
80002680: d3 80 17 d2  	fcvt.d.wu	ft1, a5
80002684: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80002688: 27 30 17 00  	fsd	ft1, 0(a4)
;     for (uint32_t i = 0; i < size; i++) {
8000268c: 93 86 16 00  	addi	a3, a3, 1
;         ++ptr;
80002690: 13 07 87 00  	addi	a4, a4, 8
;     for (uint32_t i = 0; i < size; i++) {
80002694: e3 94 d5 fe  	bne	a1, a3, 0x8000267c <.LBB0_25+0x14>
80002698: 6f 00 80 03  	j	0x800026d0 <.LBB0_26+0x30>
8000269c: 63 8a 05 02  	beqz	a1, 0x800026d0 <.LBB0_26+0x30>

800026a0 <.LBB0_26>:
800026a0: 97 16 00 00  	auipc	a3, 1
800026a4: 93 86 06 ba  	addi	a3, a3, -1120
800026a8: 07 b0 06 00  	fld	ft0, 0(a3)
800026ac: 93 06 00 00  	mv	a3, zero
800026b0: 13 87 09 00  	mv	a4, s3
;         *ptr = (double)seed * 3.141;
800026b4: 93 87 26 00  	addi	a5, a3, 2
800026b8: d3 80 17 d2  	fcvt.d.wu	ft1, a5
800026bc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800026c0: 27 30 17 00  	fsd	ft1, 0(a4)
;     for (uint32_t i = 0; i < size; i++) {
800026c4: 93 86 16 00  	addi	a3, a3, 1
;         ++ptr;
800026c8: 13 07 87 00  	addi	a4, a4, 8
;     for (uint32_t i = 0; i < size; i++) {
800026cc: e3 94 d5 fe  	bne	a1, a3, 0x800026b4 <.LBB0_26+0x14>
;     uint32_t N = input_size / core_num;
800026d0: b3 db aa 02  	divu	s7, s5, a0
;     double *argA = input_A + core_id * input_size;
800026d4: b3 85 aa 03  	mul	a1, s5, s10
800026d8: 93 95 35 00  	slli	a1, a1, 3
800026dc: 33 8c bc 00  	add	s8, s9, a1
;     double *argC = input_C + core_id * input_size;
800026e0: 33 0b b6 00  	add	s6, a2, a1
;     uint32_t ldA = input_size * core_num;
800026e4: 33 84 aa 02  	mul	s0, s5, a0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800026e8: f3 24 00 b0  	csrr	s1, mcycle
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800026ec: 97 00 00 00  	auipc	ra, 0
800026f0: e7 80 40 70  	jalr	1796(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800026f4: 73 29 00 b0  	csrr	s2, mcycle
;     gemm_impl(N, M, K, argA, ldA, argB, ldB, argC, ldC);
800026f8: 23 20 81 00  	sw	s0, 0(sp)
800026fc: 13 85 0b 00  	mv	a0, s7
80002700: 93 85 0a 00  	mv	a1, s5
80002704: 13 86 0a 00  	mv	a2, s5
80002708: 93 06 0c 00  	mv	a3, s8
8000270c: 13 07 04 00  	mv	a4, s0
80002710: 93 87 09 00  	mv	a5, s3
80002714: 13 88 0a 00  	mv	a6, s5
80002718: 93 08 0b 00  	mv	a7, s6
8000271c: 03 24 81 00  	lw	s0, 8(sp)
80002720: e7 00 04 00  	jalr	s0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002724: f3 29 00 b0  	csrr	s3, mcycle
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80002728: 97 00 00 00  	auipc	ra, 0
8000272c: e7 80 80 6c  	jalr	1736(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002730: 73 28 00 b0  	csrr	a6, mcycle
80002734: 83 a5 0d 00  	lw	a1, 0(s11)
;     if (core_id == 0) {
80002738: 33 35 a0 01  	snez	a0, s10
8000273c: 13 b6 15 00  	seqz	a2, a1
80002740: 33 65 c5 00  	or	a0, a0, a2
80002744: 63 18 05 08  	bnez	a0, 0x800027d4 <.LBB0_28+0x60>
80002748: 93 06 00 00  	mv	a3, zero
8000274c: 13 07 00 00  	mv	a4, zero
80002750: 13 06 00 00  	mv	a2, zero
;         for (uint32_t i = 0; i < input_size; i++) {
80002754: 33 85 5a 03  	mul	a0, s5, s5
80002758: 13 15 45 00  	slli	a0, a0, 4
8000275c: 33 05 95 01  	add	a0, a0, s9

80002760 <.LBB0_27>:
80002760: 97 17 00 00  	auipc	a5, 1
80002764: 93 87 07 af  	addi	a5, a5, -1296
80002768: 07 b0 07 00  	fld	ft0, 0(a5)
;         for (uint32_t i = 0; i < input_size; i++) {
8000276c: 93 07 05 01  	addi	a5, a0, 16
80002770: d3 00 00 d2  	fcvt.d.w	ft1, zero

80002774 <.LBB0_28>:
80002774: 17 04 00 00  	auipc	s0, 0
80002778: 13 04 c4 6e  	addi	s0, s0, 1772
8000277c: 93 88 04 00  	mv	a7, s1
80002780: 13 05 00 00  	mv	a0, zero
;             for (uint32_t n = 0; n < input_size; n++) {
80002784: b3 84 d5 02  	mul	s1, a1, a3
80002788: b3 84 97 00  	add	s1, a5, s1
8000278c: 53 81 10 22  	fmv.d	ft2, ft1
;                 sum += input_C[i * input_size + n];
80002790: 87 b1 04 00  	fld	ft3, 0(s1)
80002794: 53 f1 21 02  	fadd.d	ft2, ft3, ft2
;             for (uint32_t n = 0; n < input_size; n++) {
80002798: 13 05 15 00  	addi	a0, a0, 1
8000279c: 93 84 84 00  	addi	s1, s1, 8
;             for (uint32_t n = 0; n < input_size; n++) {
800027a0: e3 68 b5 fe  	bltu	a0, a1, 0x80002790 <.LBB0_28+0x1c>
;             double d = sum - output_checksum[i];
800027a4: 13 15 37 00  	slli	a0, a4, 3
800027a8: 33 05 85 00  	add	a0, a0, s0
800027ac: 87 31 05 00  	fld	ft3, 0(a0)
800027b0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;             asm volatile("fabs.d %[d], %[d]" : [ d ] "+f"(d));
800027b4: 53 21 21 22  	fabs.d	ft2, ft2
;         for (uint32_t i = 0; i < input_size; i++) {
800027b8: 83 a5 0d 00  	lw	a1, 0(s11)
;             diffs += d > 0.001;
800027bc: 53 15 20 a2  	flt.d	a0, ft0, ft2
800027c0: 33 06 a6 00  	add	a2, a2, a0
;         for (uint32_t i = 0; i < input_size; i++) {
800027c4: 13 07 17 00  	addi	a4, a4, 1
800027c8: 93 86 86 00  	addi	a3, a3, 8
800027cc: e3 6a b7 fa  	bltu	a4, a1, 0x80002780 <.LBB0_28+0xc>
800027d0: 6f 00 c0 00  	j	0x800027dc <.LBB0_28+0x68>
;     uint32_t diffs = 0;
800027d4: 13 06 00 00  	mv	a2, zero
800027d8: 93 88 04 00  	mv	a7, s1
;     return (gemm_result_t){
800027dc: 23 20 ca 00  	sw	a2, 0(s4)
;         .cycles_core = t2 - t1,
800027e0: 33 85 29 41  	sub	a0, s3, s2
;     return (gemm_result_t){
800027e4: 23 22 aa 00  	sw	a0, 4(s4)
;         .cycles_total = t3 - t0,
800027e8: 33 05 18 41  	sub	a0, a6, a7
;     return (gemm_result_t){
800027ec: 23 24 aa 00  	sw	a0, 8(s4)
; }
800027f0: 83 2d c1 00  	lw	s11, 12(sp)
800027f4: 03 2d 01 01  	lw	s10, 16(sp)
800027f8: 83 2c 41 01  	lw	s9, 20(sp)
800027fc: 03 2c 81 01  	lw	s8, 24(sp)
80002800: 83 2b c1 01  	lw	s7, 28(sp)
80002804: 03 2b 01 02  	lw	s6, 32(sp)
80002808: 83 2a 41 02  	lw	s5, 36(sp)
8000280c: 03 2a 81 02  	lw	s4, 40(sp)
80002810: 83 29 c1 02  	lw	s3, 44(sp)
80002814: 03 29 01 03  	lw	s2, 48(sp)
80002818: 83 24 41 03  	lw	s1, 52(sp)
8000281c: 03 24 81 03  	lw	s0, 56(sp)
80002820: 83 20 c1 03  	lw	ra, 60(sp)
80002824: 13 01 01 04  	addi	sp, sp, 64
80002828: 67 80 00 00  	ret

8000282c <gemm_seq_ssr>:
;                   double *B, uint32_t ldB, double *C, uint32_t ldC) {
8000282c: 13 01 01 ff  	addi	sp, sp, -16
80002830: 93 83 07 00  	mv	t2, a5
80002834: 13 8e 06 00  	mv	t3, a3
;     asm volatile("" : "=f"(ft0), "=f"(ft1));
80002838: d3 81 10 22  	fmv.d	ft3, ft1
8000283c: 53 02 00 22  	fmv.d	ft4, ft0
80002840: 27 34 41 00  	fsd	ft4, 8(sp)
80002844: 27 30 31 00  	fsd	ft3, 0(sp)
;     snrt_ssr_loop_3d(SNRT_SSR_DM0, K, M / 4, N, 8, 0 * 4, 8 * ldA);
80002848: 93 d7 25 00  	srli	a5, a1, 2
;     --b0;
8000284c: 93 06 f6 ff  	addi	a3, a2, -1
;     --b1;
80002850: 93 8f f7 ff  	addi	t6, a5, -1
;     --b2;
80002854: 93 0e f5 ff  	addi	t4, a0, -1
;     asm volatile(
80002858: 93 02 00 04  	addi	t0, zero, 64
8000285c: 13 83 06 00  	mv	t1, a3
80002860: ab 20 53 00  	scfgw	t1, t0
80002864: 93 02 00 06  	addi	t0, zero, 96
80002868: 13 83 0f 00  	mv	t1, t6
8000286c: ab 20 53 00  	scfgw	t1, t0
80002870: 93 02 00 08  	addi	t0, zero, 128
80002874: 13 83 0e 00  	mv	t1, t4
80002878: ab 20 53 00  	scfgw	t1, t0
8000287c: 13 0f 80 00  	addi	t5, zero, 8
80002880: 93 02 00 0c  	addi	t0, zero, 192
80002884: 13 03 80 00  	addi	t1, zero, 8
80002888: ab 20 53 00  	scfgw	t1, t0
;     a += i0 * b0;
8000288c: 93 97 36 00  	slli	a5, a3, 3
80002890: 33 03 f0 40  	neg	t1, a5
;     asm volatile(
80002894: 93 02 00 0e  	addi	t0, zero, 224
80002898: ab 20 53 00  	scfgw	t1, t0
;     a += i1 * b1;
8000289c: 33 07 d7 40  	sub	a4, a4, a3
800028a0: 13 13 37 00  	slli	t1, a4, 3
;     asm volatile(
800028a4: 93 02 00 10  	addi	t0, zero, 256
800028a8: ab 20 53 00  	scfgw	t1, t0
800028ac: 93 02 00 02  	addi	t0, zero, 32
800028b0: 13 03 30 00  	addi	t1, zero, 3
800028b4: ab 20 53 00  	scfgw	t1, t0
;     snrt_ssr_loop_4d(SNRT_SSR_DM1, 4, K, M / 4, N, 8, 8 * ldB, 8 * 4, 0);
800028b8: 13 17 38 00  	slli	a4, a6, 3
;     asm volatile(
800028bc: 93 02 10 04  	addi	t0, zero, 65
800028c0: 13 03 30 00  	addi	t1, zero, 3
800028c4: ab 20 53 00  	scfgw	t1, t0
800028c8: 93 02 10 06  	addi	t0, zero, 97
800028cc: 13 83 06 00  	mv	t1, a3
800028d0: ab 20 53 00  	scfgw	t1, t0
800028d4: 93 02 10 08  	addi	t0, zero, 129
800028d8: 13 83 0f 00  	mv	t1, t6
800028dc: ab 20 53 00  	scfgw	t1, t0
800028e0: 93 02 10 0a  	addi	t0, zero, 161
800028e4: 13 83 0e 00  	mv	t1, t4
800028e8: ab 20 53 00  	scfgw	t1, t0
800028ec: 93 02 10 0c  	addi	t0, zero, 193
800028f0: 13 03 80 00  	addi	t1, zero, 8
800028f4: ab 20 53 00  	scfgw	t1, t0
;     write_ssr_cfg(REG_STRIDES + 1, dm, i1 - a);
800028f8: 13 03 87 fe  	addi	t1, a4, -24
;     asm volatile(
800028fc: 93 02 10 0e  	addi	t0, zero, 225
80002900: ab 20 53 00  	scfgw	t1, t0
;     a += i1 * b1;
80002904: b3 06 d7 02  	mul	a3, a4, a3
;     write_ssr_cfg(REG_STRIDES + 2, dm, i2 - a);
80002908: 33 03 df 40  	sub	t1, t5, a3
;     asm volatile(
8000290c: 93 02 10 10  	addi	t0, zero, 257
80002910: ab 20 53 00  	scfgw	t1, t0
;     a += i2 * b2;
80002914: 13 97 5f 00  	slli	a4, t6, 5
;     write_ssr_cfg(REG_STRIDES + 3, dm, i3 - a);
80002918: b3 06 d7 00  	add	a3, a4, a3
8000291c: 13 07 80 fe  	addi	a4, zero, -24
80002920: 33 03 d7 40  	sub	t1, a4, a3
;     asm volatile(
80002924: 93 02 10 12  	addi	t0, zero, 289
80002928: ab 20 53 00  	scfgw	t1, t0
8000292c: 93 02 00 34  	addi	t0, zero, 832
80002930: 13 03 0e 00  	mv	t1, t3
80002934: ab 20 53 00  	scfgw	t1, t0
80002938: 93 02 10 36  	addi	t0, zero, 865
8000293c: 13 83 03 00  	mv	t1, t2
80002940: ab 20 53 00  	scfgw	t1, t0
;     for (uint32_t n = 0; n < N; n++) {
80002944: 93 36 15 00  	seqz	a3, a0
80002948: 13 b7 15 00  	seqz	a4, a1
8000294c: b3 e6 e6 00  	or	a3, a3, a4
80002950: 13 37 16 00  	seqz	a4, a2
80002954: b3 e6 e6 00  	or	a3, a3, a4
;     __builtin_ssr_enable();
80002958: 73 e7 00 7c  	csrrsi	a4, 1984, 1
;     for (uint32_t n = 0; n < N; n++) {
8000295c: 63 9c 06 06  	bnez	a3, 0x800029d4 <gemm_seq_ssr+0x1a8>
80002960: 03 28 01 01  	lw	a6, 16(sp)
80002964: 93 02 00 00  	mv	t0, zero
80002968: 93 07 00 00  	mv	a5, zero
8000296c: 33 83 02 03  	mul	t1, t0, a6
;             register double c0 = C[n * ldC + m + 0];
80002970: b3 86 67 00  	add	a3, a5, t1
80002974: 93 96 36 00  	slli	a3, a3, 3
80002978: 33 87 d8 00  	add	a4, a7, a3
8000297c: 87 31 07 00  	fld	ft3, 0(a4)
;             register double c1 = C[n * ldC + m + 1];
80002980: 07 32 87 00  	fld	ft4, 8(a4)
;             register double c2 = C[n * ldC + m + 2];
80002984: 07 33 07 01  	fld	ft6, 16(a4)
;             register double c3 = C[n * ldC + m + 3];
80002988: 87 32 87 01  	fld	ft5, 24(a4)
;             register double c1 = C[n * ldC + m + 1];
8000298c: 93 0e 87 00  	addi	t4, a4, 8
;             register double c2 = C[n * ldC + m + 2];
80002990: 13 0e 07 01  	addi	t3, a4, 16
;             register double c3 = C[n * ldC + m + 3];
80002994: 93 03 87 01  	addi	t2, a4, 24
80002998: 93 06 06 00  	mv	a3, a2
;             for (uint32_t k = 0; k < K; k++) {
8000299c: 93 86 f6 ff  	addi	a3, a3, -1
;                 asm volatile(
800029a0: c3 71 10 1a  	fmadd.d	ft3, ft0, ft1, ft3
800029a4: 43 72 10 22  	fmadd.d	ft4, ft0, ft1, ft4
800029a8: 43 73 10 32  	fmadd.d	ft6, ft0, ft1, ft6
800029ac: c3 72 10 2a  	fmadd.d	ft5, ft0, ft1, ft5
;             for (uint32_t k = 0; k < K; k++) {
800029b0: e3 96 06 fe  	bnez	a3, 0x8000299c <gemm_seq_ssr+0x170>
;             C[n * ldC + m + 0] = c0;
800029b4: 27 30 37 00  	fsd	ft3, 0(a4)
;             C[n * ldC + m + 1] = c1;
800029b8: 27 b0 4e 00  	fsd	ft4, 0(t4)
;             C[n * ldC + m + 2] = c2;
800029bc: 27 30 6e 00  	fsd	ft6, 0(t3)
;         for (uint32_t m = 0; m < M; m += 4) {
800029c0: 93 87 47 00  	addi	a5, a5, 4
;             C[n * ldC + m + 3] = c3;
800029c4: 27 b0 53 00  	fsd	ft5, 0(t2)
;         for (uint32_t m = 0; m < M; m += 4) {
800029c8: e3 e4 b7 fa  	bltu	a5, a1, 0x80002970 <gemm_seq_ssr+0x144>
;     for (uint32_t n = 0; n < N; n++) {
800029cc: 93 82 12 00  	addi	t0, t0, 1
800029d0: e3 9c a2 f8  	bne	t0, a0, 0x80002968 <gemm_seq_ssr+0x13c>
;     __builtin_ssr_disable();
800029d4: 73 f5 00 7c  	csrrci	a0, 1984, 1
;     asm volatile("" ::"f"(ft0), "f"(ft1));
800029d8: 87 31 81 00  	fld	ft3, 8(sp)
800029dc: 07 32 01 00  	fld	ft4, 0(sp)
800029e0: 53 80 31 22  	fmv.d	ft0, ft3
800029e4: d3 00 42 22  	fmv.d	ft1, ft4
; }
800029e8: 13 01 01 01  	addi	sp, sp, 16
800029ec: 67 80 00 00  	ret

Disassembly of section .init:

800029f0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800029f0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800029f4: 93 81 81 f9  	addi	gp, gp, -104

800029f8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800029f8: 97 00 00 00  	auipc	ra, 0
800029fc: e7 80 40 3c  	jalr	964(ra)

80002a00 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002a00: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002a04: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002a08: 97 00 00 00  	auipc	ra, 0
80002a0c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002a10: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002a14: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002a18: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002a1c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002a20: 63 92 02 02  	bnez	t0, 0x80002a44 <snrt.crt0.init_registers>

80002a24 <.Lpcrel_hi0>:
;     la        t0, _edata
80002a24: 97 12 00 00  	auipc	t0, 1
80002a28: 93 82 42 83  	addi	t0, t0, -1996

80002a2c <.Lpcrel_hi1>:
;     la        t1, _end
80002a2c: 17 13 00 00  	auipc	t1, 1
80002a30: 13 03 03 83  	addi	t1, t1, -2000
;     bge       t0, t1, 2f
80002a34: 63 d8 62 00  	bge	t0, t1, 0x80002a44 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002a38: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002a3c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002a40: e3 cc 62 fe  	blt	t0, t1, 0x80002a38 <.Lpcrel_hi1+0xc>

80002a44 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002a44: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002a48: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002a4c: 63 82 02 08  	beqz	t0, 0x80002ad0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002a50: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002a54: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002a58: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002a5c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002a60: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002a64: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002a68: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002a6c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002a70: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002a74: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002a78: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002a7c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002a80: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002a84: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002a88: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002a8c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002a90: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002a94: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002a98: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002a9c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002aa0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002aa4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002aa8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002aac: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002ab0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002ab4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002ab8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002abc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002ac0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002ac4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002ac8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002acc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002ad0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002ad0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002ad4: 23 a0 06 00  	sw	zero, 0(a3)

80002ad8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002ad8: 97 02 00 00  	auipc	t0, 0
80002adc: 83 a2 c2 40  	lw	t0, 1036(t0)
;     sub       a3, a3, t0
80002ae0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002ae4: 93 87 06 00  	mv	a5, a3

80002ae8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002ae8: 97 03 00 00  	auipc	t2, 0
80002aec: 83 a3 83 3f  	lw	t2, 1016(t2)
;     sll       t0, a0, t2  # this hart
80002af0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002af4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002af8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002afc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002b00: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002b04: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002b08: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002b0c: b3 86 66 40  	sub	a3, a3, t1

80002b10 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002b10: 97 02 00 00  	auipc	t0, 0
80002b14: 93 82 82 67  	addi	t0, t0, 1656

80002b18 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002b18: 17 03 00 00  	auipc	t1, 0
80002b1c: 13 03 03 67  	addi	t1, t1, 1648

80002b20 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002b20: 97 03 00 00  	auipc	t2, 0
80002b24: 93 83 83 66  	addi	t2, t2, 1640

80002b28 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002b28: 17 0e 00 00  	auipc	t3, 0
80002b2c: 13 0e 0e 67  	addi	t3, t3, 1648
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002b30: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002b34: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002b38: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002b3c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002b40: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002b44: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002b48: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002b4c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002b50: 63 dc 62 00  	bge	t0, t1, 0x80002b68 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002b54: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002b58: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002b5c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002b60: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002b64: e3 c8 62 fe  	blt	t0, t1, 0x80002b54 <.Lpcrel_hi7+0x2c>

80002b68 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002b68: 97 02 00 00  	auipc	t0, 0
80002b6c: 93 82 02 62  	addi	t0, t0, 1568

80002b70 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002b70: 17 03 00 00  	auipc	t1, 0
80002b74: 13 03 83 62  	addi	t1, t1, 1576
;     bge       t0, t1, 2f
80002b78: 63 da 62 00  	bge	t0, t1, 0x80002b8c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002b7c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002b80: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002b84: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002b88: e3 ca 72 fe  	blt	t0, t2, 0x80002b7c <.Lpcrel_hi9+0xc>

80002b8c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002b8c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002b90: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002b94: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002b98: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002b9c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002ba0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002ba4: 97 f0 ff ff  	auipc	ra, 1048575
80002ba8: e7 80 80 74  	jalr	1864(ra)
;     lw        a0, 0(sp)
80002bac: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002bb0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002bb4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002bb8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002bbc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002bc0: 13 01 41 01  	addi	sp, sp, 20

80002bc4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002bc4: 97 02 00 00  	auipc	t0, 0
80002bc8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002bcc: 73 90 52 30  	csrw	mtvec, t0

80002bd0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002bd0: 97 00 00 00  	auipc	ra, 0
80002bd4: e7 80 00 22  	jalr	544(ra)

80002bd8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002bd8: 97 e0 ff ff  	auipc	ra, 1048574
80002bdc: e7 80 c0 a5  	jalr	-1444(ra)
;     mv        s0, a0 # store return value in s0
80002be0: 13 04 05 00  	mv	s0, a0

80002be4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002be4: 97 00 00 00  	auipc	ra, 0
80002be8: e7 80 c0 20  	jalr	524(ra)

80002bec <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002bec: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002bf0: 97 00 00 00  	auipc	ra, 0
80002bf4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002bf8: 73 00 50 10  	wfi	
;     j       1b
80002bfc: 6f f0 df ff  	j	0x80002bf8 <snrt.crt0.end+0xc>

80002c00 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002c00: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002c04: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002c08: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002c0c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002c10: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002c14: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002c18: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002c1c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002c20: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002c24: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002c28: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002c2c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002c30: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002c34: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002c38: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002c3c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002c40: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002c44: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002c48: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002c4c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002c50: 63 84 02 08  	beqz	t0, 0x80002cd8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002c54: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002c58: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002c5c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002c60: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002c64: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002c68: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002c6c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002c70: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002c74: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002c78: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002c7c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002c80: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002c84: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002c88: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002c8c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002c90: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002c94: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002c98: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002c9c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002ca0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002ca4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002ca8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002cac: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002cb0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002cb4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002cb8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002cbc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002cc0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002cc4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002cc8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002ccc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002cd0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002cd4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002cd8: 97 f0 ff ff  	auipc	ra, 1048575
80002cdc: e7 80 40 7b  	jalr	1972(ra)
;     csrr    t0, misa
80002ce0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002ce4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002ce8: 63 84 02 08  	beqz	t0, 0x80002d70 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002cec: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002cf0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002cf4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002cf8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002cfc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002d00: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002d04: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002d08: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002d0c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002d10: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002d14: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002d18: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002d1c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002d20: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002d24: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002d28: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002d2c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80002d30: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80002d34: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80002d38: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80002d3c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80002d40: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80002d44: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80002d48: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80002d4c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80002d50: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80002d54: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80002d58: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80002d5c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80002d60: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80002d64: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80002d68: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80002d6c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80002d70: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80002d74: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80002d78: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80002d7c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80002d80: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80002d84: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80002d88: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80002d8c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80002d90: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80002d94: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80002d98: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80002d9c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80002da0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80002da4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80002da8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80002dac: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80002db0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80002db4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80002db8: 73 00 20 30  	mret	

80002dbc <_snrt_init_core_info>:
;     mv        a4, a1
80002dbc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80002dc0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80002dc4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80002dc8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80002dcc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80002dd0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80002dd4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80002dd8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80002ddc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80002de0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80002de4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80002de8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80002dec: 67 80 00 00  	ret

80002df0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80002df0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80002df4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80002df8: 97 f0 ff ff  	auipc	ra, 1048575
80002dfc: e7 80 c0 67  	jalr	1660(ra)
;     lw        a0, 0(a0)
80002e00: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80002e04: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80002e08: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80002e0c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80002e10: 67 80 00 00  	ret

80002e14 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80002e14: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80002e18: 67 80 00 00  	ret

80002e1c <_snrt_exit>:
;     addi      sp, sp, -8
80002e1c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80002e20: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80002e24: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80002e28: 97 f0 ff ff  	auipc	ra, 1048575
80002e2c: e7 80 c0 62  	jalr	1580(ra)
;     lw        t0, 0(sp)
80002e30: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80002e34: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80002e38: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80002e3c: 63 1c 05 00  	bnez	a0, 0x80002e54 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80002e40: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80002e44: 93 e2 12 00  	ori	t0, t0, 1

80002e48 <.Lpcrel_hi11>:
;     la        t1, tohost
80002e48: 17 03 00 00  	auipc	t1, 0
80002e4c: 13 03 83 2f  	addi	t1, t1, 760
;     sw        t0, 0(t1)
80002e50: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80002e54: 67 80 00 00  	ret
