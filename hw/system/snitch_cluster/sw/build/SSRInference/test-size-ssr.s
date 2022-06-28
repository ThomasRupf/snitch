
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-size-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002a68 80000000 TEXT
  2 .init             00000468 80002a70 TEXT
  3 .rodata           00000230 80002ed8 DATA
  4 .htif             00000048 80003140 DATA
  5 .tdata            00000000 80003188 DATA
  6 .tbss             00000010 80003188 BSS
  7 .tbssend          00000000 80003198 DATA
  8 .sdata            000000c8 80003198 DATA
  9 .data             00000000 80003260 DATA
 10 .sbss             00000004 80003260 BSS
 11 .bss              00000000 80003264 BSS
 12 .dram             00000000 80003264 DATA
 13 .debug_info       0000316e 00000000 
 14 .debug_abbrev     00000aba 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000281b 00000000 
 17 .debug_loc        00002c47 00000000 
 18 .debug_ranges     00000410 00000000 
 19 .debug_str        00000a36 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000250 00000000 
 23 .symtab           00002f20 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           000008d6 00000000 


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
8000063c: 27 38 81 00  	fsd	fs0, 16(sp)
80000640: 37 05 00 00  	lui	a0, 0
80000644: 33 05 45 00  	add	a0, a0, tp
80000648: 83 25 45 00  	lw	a1, 4(a0)
8000064c: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
80000650: 63 96 05 54  	bnez	a1, 0x80000b9c <.LBB0_32+0x10>
;     return _snrt_team_current->root;
80000654: 37 05 00 00  	lui	a0, 0
80000658: 33 05 45 00  	add	a0, a0, tp
8000065c: 03 25 05 00  	lw	a0, 0(a0)
80000660: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000664: 03 2e 85 05  	lw	t3, 88(a0)
80000668: 03 26 05 05  	lw	a2, 80(a0)
8000066c: 83 26 45 05  	lw	a3, 84(a0)
80000670: 93 05 0e 7e  	addi	a1, t3, 2016
80000674: 93 85 05 7e  	addi	a1, a1, 2016
80000678: 33 86 c6 00  	add	a2, a3, a2
8000067c: 63 76 b6 00  	bgeu	a2, a1, 0x80000688 <main+0x54>
80000680: 13 0e 00 00  	mv	t3, zero
80000684: 6f 00 80 08  	j	0x8000070c <.LBB0_28>
;     for (uint32_t i = 0; i < n; i++){
80000688: 13 56 4e 01  	srli	a2, t3, 20
8000068c: 33 36 c0 00  	snez	a2, a2
80000690: b7 f6 11 00  	lui	a3, 287
80000694: 93 86 96 04  	addi	a3, a3, 73
80000698: b3 36 de 00  	sltu	a3, t3, a3
8000069c: 33 76 d6 00  	and	a2, a2, a3
;     alloc->next += size;
800006a0: 23 2c b5 04  	sw	a1, 88(a0)
800006a4: 63 04 06 06  	beqz	a2, 0x8000070c <.LBB0_28>
800006a8: 13 05 80 00  	addi	a0, zero, 8
800006ac: 93 05 70 1f  	addi	a1, zero, 503
;     for (uint32_t i = 0; i < n; i++){
800006b0: 13 06 00 04  	addi	a2, zero, 64
800006b4: 93 06 00 0c  	addi	a3, zero, 192
800006b8: ab a0 c5 00  	scfgw	a1, a2
800006bc: ab 20 d5 00  	scfgw	a0, a3
800006c0: 13 05 00 02  	addi	a0, zero, 32
800006c4: ab 20 a0 00  	scfgw	zero, a0
800006c8: 2b 20 0e 38  	scfgwi	t3, 896

800006cc <.LBB0_26>:
800006cc: 17 35 00 00  	auipc	a0, 3
800006d0: 13 05 c5 ac  	addi	a0, a0, -1332
800006d4: 87 31 05 00  	fld	ft3, 0(a0)

800006d8 <.LBB0_27>:
800006d8: 17 35 00 00  	auipc	a0, 3
800006dc: 13 05 85 ac  	addi	a0, a0, -1336
800006e0: 07 32 05 00  	fld	ft4, 0(a0)
;     for (uint32_t i = 0; i < n; i++){
800006e4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800006e8: d3 02 00 d2  	fcvt.d.w	ft5, zero
800006ec: 13 05 80 1f  	addi	a0, zero, 504
;         p[i] = (double)(i) / 1000.0;
800006f0: 53 f3 32 12  	fmul.d	ft6, ft5, ft3
800006f4: 53 00 63 22  	fmv.d	ft0, ft6
;     for (uint32_t i = 0; i < n; i++){
800006f8: 13 05 f5 ff  	addi	a0, a0, -1
800006fc: d3 f2 42 02  	fadd.d	ft5, ft5, ft4
80000700: e3 18 05 fe  	bnez	a0, 0x800006f0 <.LBB0_27+0x18>
80000704: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000708: 6f 00 00 04  	j	0x80000748 <.LBB0_29+0x30>

8000070c <.LBB0_28>:
8000070c: 17 35 00 00  	auipc	a0, 3
80000710: 13 05 c5 a8  	addi	a0, a0, -1396
80000714: 87 31 05 00  	fld	ft3, 0(a0)

80000718 <.LBB0_29>:
80000718: 17 35 00 00  	auipc	a0, 3
8000071c: 13 05 85 a8  	addi	a0, a0, -1400
80000720: 07 32 05 00  	fld	ft4, 0(a0)
80000724: d3 02 00 d2  	fcvt.d.w	ft5, zero
80000728: 13 05 80 1f  	addi	a0, zero, 504
8000072c: 93 05 0e 00  	mv	a1, t3
;         p[i] = (double)(i) / 1000.0;
80000730: 53 f3 32 12  	fmul.d	ft6, ft5, ft3
80000734: 27 b0 65 00  	fsd	ft6, 0(a1)
80000738: d3 f2 42 02  	fadd.d	ft5, ft5, ft4
;     for (uint32_t i = 0; i < n; i++){
8000073c: 13 05 f5 ff  	addi	a0, a0, -1
80000740: 93 85 85 00  	addi	a1, a1, 8
80000744: e3 16 05 fe  	bnez	a0, 0x80000730 <.LBB0_29+0x18>
80000748: 93 0f 00 00  	mv	t6, zero
;     for (int in = 0; in < n; in++){
8000074c: 13 06 8e 0a  	addi	a2, t3, 168
80000750: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000754: 13 0f 00 54  	addi	t5, zero, 1344
80000758: 37 05 12 00  	lui	a0, 288
8000075c: 93 0e 95 ac  	addi	t4, a0, -1335
80000760: 13 03 80 00  	addi	t1, zero, 8
80000764: 13 08 60 00  	addi	a6, zero, 6
80000768: 93 08 50 00  	addi	a7, zero, 5
8000076c: 93 02 80 eb  	addi	t0, zero, -328
80000770: 93 07 40 00  	addi	a5, zero, 4
80000774: 93 03 30 00  	addi	t2, zero, 3
80000778: 6f 00 40 01  	j	0x8000078c <.LBB0_29+0x74>
8000077c: 73 f5 00 7c  	csrrci	a0, 1984, 1
;     for (int in = 0; in < n; in++){
80000780: 93 8f 1f 00  	addi	t6, t6, 1
80000784: 13 06 06 54  	addi	a2, a2, 1344
80000788: 63 8a 7f 3c  	beq	t6, t2, 0x80000b5c <.LBB0_30>
8000078c: 33 85 ef 03  	mul	a0, t6, t5
80000790: 33 07 ae 00  	add	a4, t3, a0
;         for (int im = 0; im < m; im++){
80000794: 93 56 47 01  	srli	a3, a4, 20
80000798: b3 36 d0 00  	snez	a3, a3
8000079c: b3 35 d7 01  	sltu	a1, a4, t4
800007a0: b3 f5 b6 00  	and	a1, a3, a1
800007a4: 63 8c 05 10  	beqz	a1, 0x800008bc <.LBB0_29+0x1a4>
800007a8: 13 05 00 00  	mv	a0, zero
;         for (int im = 0; im < m; im++){
800007ac: 93 05 00 04  	addi	a1, zero, 64
800007b0: ab 20 b8 00  	scfgw	a6, a1
800007b4: 93 05 00 0c  	addi	a1, zero, 192
800007b8: ab 20 b3 00  	scfgw	t1, a1
800007bc: 93 05 00 06  	addi	a1, zero, 96
800007c0: ab a0 b8 00  	scfgw	a7, a1
800007c4: 93 05 00 0e  	addi	a1, zero, 224
800007c8: ab 20 b3 00  	scfgw	t1, a1
800007cc: 93 05 00 08  	addi	a1, zero, 128
800007d0: ab a0 b7 00  	scfgw	a5, a1
800007d4: 93 05 00 10  	addi	a1, zero, 256
800007d8: ab a0 b2 00  	scfgw	t0, a1
800007dc: 93 05 00 0a  	addi	a1, zero, 160
800007e0: ab a0 b3 00  	scfgw	t2, a1
800007e4: 93 05 00 12  	addi	a1, zero, 288
800007e8: ab 20 b3 00  	scfgw	t1, a1
800007ec: 93 05 00 02  	addi	a1, zero, 32
800007f0: ab 20 b0 00  	scfgw	zero, a1
800007f4: 2b 20 07 36  	scfgwi	a4, 864
800007f8: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800007fc: 13 07 50 00  	addi	a4, zero, 5
;                         res += a[in*m*q*r + im*q*r + iq*r + ir];
80000800: d3 71 30 02  	fadd.d	ft3, ft0, ft3
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
;             for (int ip = 0; ip < p; ip++){
800008a4: 13 07 f7 ff  	addi	a4, a4, -1
;                         res += a[in*m*q*r + im*q*r + iq*r + ir];
800008a8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
;             for (int ip = 0; ip < p; ip++){
800008ac: e3 1a 07 f4  	bnez	a4, 0x80000800 <.LBB0_29+0xe8>
;         for (int im = 0; im < m; im++){
800008b0: 13 05 15 00  	addi	a0, a0, 1
800008b4: e3 14 f5 f4  	bne	a0, a5, 0x800007fc <.LBB0_29+0xe4>
800008b8: 6f f0 5f ec  	j	0x8000077c <.LBB0_29+0x64>
800008bc: 33 07 ae 00  	add	a4, t3, a0
;         for (int im = 0; im < m; im++){
800008c0: 13 55 47 01  	srli	a0, a4, 20
800008c4: 33 35 a0 00  	snez	a0, a0
800008c8: b3 35 d7 01  	sltu	a1, a4, t4
800008cc: 33 75 b5 00  	and	a0, a0, a1
800008d0: 63 0c 05 10  	beqz	a0, 0x800009e8 <.LBB0_29+0x2d0>
800008d4: 13 05 00 00  	mv	a0, zero
;         for (int im = 0; im < m; im++){
800008d8: 93 05 00 04  	addi	a1, zero, 64
800008dc: ab 20 b8 00  	scfgw	a6, a1
800008e0: 93 05 00 0c  	addi	a1, zero, 192
800008e4: ab 20 b3 00  	scfgw	t1, a1
800008e8: 93 05 00 06  	addi	a1, zero, 96
800008ec: ab a0 b8 00  	scfgw	a7, a1
800008f0: 93 05 00 0e  	addi	a1, zero, 224
800008f4: ab 20 b3 00  	scfgw	t1, a1
800008f8: 93 05 00 08  	addi	a1, zero, 128
800008fc: ab a0 b7 00  	scfgw	a5, a1
80000900: 93 05 00 10  	addi	a1, zero, 256
80000904: ab a0 b2 00  	scfgw	t0, a1
80000908: 93 05 00 0a  	addi	a1, zero, 160
8000090c: ab a0 b3 00  	scfgw	t2, a1
80000910: 93 05 00 12  	addi	a1, zero, 288
80000914: ab 20 b3 00  	scfgw	t1, a1
80000918: 93 05 00 02  	addi	a1, zero, 32
8000091c: ab 20 b0 00  	scfgw	zero, a1
80000920: 2b 20 07 36  	scfgwi	a4, 864
80000924: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000928: 13 07 50 00  	addi	a4, zero, 5
;                         res += a[in*m*q*r + im*q*r + iq*r + ir];
8000092c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000930: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000934: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000938: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000093c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000940: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000944: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000948: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000094c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000950: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000954: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000958: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000095c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000960: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000964: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000968: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000096c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000970: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000974: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000978: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000097c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000980: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000984: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000988: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000098c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000990: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000994: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
80000998: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
8000099c: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009a0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009a4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009a8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009ac: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009b0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009b4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009b8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009bc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009c0: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009c4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009c8: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
800009cc: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
;             for (int ip = 0; ip < p; ip++){
800009d0: 13 07 f7 ff  	addi	a4, a4, -1
;                         res += a[in*m*q*r + im*q*r + iq*r + ir];
800009d4: d3 f1 01 02  	fadd.d	ft3, ft3, ft0
;             for (int ip = 0; ip < p; ip++){
800009d8: e3 1a 07 f4  	bnez	a4, 0x8000092c <.LBB0_29+0x214>
;         for (int im = 0; im < m; im++){
800009dc: 13 05 15 00  	addi	a0, a0, 1
800009e0: e3 14 f5 f4  	bne	a0, a5, 0x80000928 <.LBB0_29+0x210>
800009e4: 6f f0 9f d9  	j	0x8000077c <.LBB0_29+0x64>
800009e8: 13 05 00 00  	mv	a0, zero
800009ec: 33 07 a6 00  	add	a4, a2, a0
800009f0: 07 32 87 f5  	fld	ft4, -168(a4)
800009f4: 87 32 07 f6  	fld	ft5, -160(a4)
800009f8: 07 33 87 f6  	fld	ft6, -152(a4)
800009fc: 87 33 07 f7  	fld	ft7, -144(a4)
80000a00: 07 35 87 f7  	fld	fa0, -136(a4)
80000a04: 53 f2 42 02  	fadd.d	ft4, ft5, ft4
80000a08: 87 32 07 f8  	fld	ft5, -128(a4)
80000a0c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000a10: 07 33 87 f8  	fld	ft6, -120(a4)
80000a14: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000a18: 87 33 07 f9  	fld	ft7, -112(a4)
80000a1c: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000a20: 07 35 87 f9  	fld	fa0, -104(a4)
80000a24: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000a28: 87 32 07 fa  	fld	ft5, -96(a4)
80000a2c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000a30: 07 33 87 fa  	fld	ft6, -88(a4)
80000a34: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000a38: 87 33 07 fb  	fld	ft7, -80(a4)
80000a3c: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000a40: 07 35 87 fb  	fld	fa0, -72(a4)
80000a44: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000a48: 87 32 07 fc  	fld	ft5, -64(a4)
80000a4c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000a50: 07 33 87 fc  	fld	ft6, -56(a4)
80000a54: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000a58: 87 33 07 fd  	fld	ft7, -48(a4)
80000a5c: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000a60: 07 35 87 fd  	fld	fa0, -40(a4)
80000a64: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000a68: 87 32 07 fe  	fld	ft5, -32(a4)
80000a6c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000a70: 07 33 87 fe  	fld	ft6, -24(a4)
80000a74: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000a78: 87 33 07 ff  	fld	ft7, -16(a4)
80000a7c: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000a80: 07 35 87 ff  	fld	fa0, -8(a4)
80000a84: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000a88: 87 32 07 00  	fld	ft5, 0(a4)
80000a8c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000a90: 07 33 87 00  	fld	ft6, 8(a4)
80000a94: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000a98: 87 33 07 01  	fld	ft7, 16(a4)
80000a9c: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000aa0: 07 35 87 01  	fld	fa0, 24(a4)
80000aa4: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000aa8: 87 32 07 02  	fld	ft5, 32(a4)
80000aac: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000ab0: 07 33 87 02  	fld	ft6, 40(a4)
80000ab4: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000ab8: 87 33 07 03  	fld	ft7, 48(a4)
80000abc: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000ac0: 07 35 87 03  	fld	fa0, 56(a4)
80000ac4: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000ac8: 87 32 07 04  	fld	ft5, 64(a4)
80000acc: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000ad0: 07 33 87 04  	fld	ft6, 72(a4)
80000ad4: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000ad8: 87 33 07 05  	fld	ft7, 80(a4)
80000adc: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000ae0: 07 35 87 05  	fld	fa0, 88(a4)
80000ae4: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000ae8: 87 32 07 06  	fld	ft5, 96(a4)
80000aec: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000af0: 07 33 87 06  	fld	ft6, 104(a4)
80000af4: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000af8: 87 33 07 07  	fld	ft7, 112(a4)
80000afc: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000b00: 07 35 87 07  	fld	fa0, 120(a4)
80000b04: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000b08: 87 32 07 08  	fld	ft5, 128(a4)
80000b0c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000b10: 07 33 87 08  	fld	ft6, 136(a4)
80000b14: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000b18: 87 33 07 09  	fld	ft7, 144(a4)
80000b1c: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000b20: 07 35 87 09  	fld	fa0, 152(a4)
80000b24: 53 72 52 02  	fadd.d	ft4, ft4, ft5
80000b28: 87 32 07 0a  	fld	ft5, 160(a4)
80000b2c: 53 72 62 02  	fadd.d	ft4, ft4, ft6
80000b30: 53 72 72 02  	fadd.d	ft4, ft4, ft7
80000b34: 53 72 a2 02  	fadd.d	ft4, ft4, fa0
80000b38: 53 72 52 02  	fadd.d	ft4, ft4, ft5
;                         res += a[in*m*q*r + im*q*r + iq*r + ir];
80000b3c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000b40: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000b44: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000b48: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int im = 0; im < m; im++){
80000b4c: 13 05 05 15  	addi	a0, a0, 336
;                         res += a[in*m*q*r + im*q*r + iq*r + ir];
80000b50: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;         for (int im = 0; im < m; im++){
80000b54: e3 1c e5 e9  	bne	a0, t5, 0x800009ec <.LBB0_29+0x2d4>
80000b58: 6f f0 9f c2  	j	0x80000780 <.LBB0_29+0x68>

80000b5c <.LBB0_30>:
80000b5c: 17 25 00 00  	auipc	a0, 2
80000b60: 13 05 c5 64  	addi	a0, a0, 1612
80000b64: 07 32 05 00  	fld	ft4, 0(a0)
;     double error = res - res_true;
80000b68: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;     error = error < 0.0 ? -error : error;
80000b6c: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
80000b70: 27 34 81 00  	fsd	fs0, 8(sp)
80000b74: 03 26 81 00  	lw	a2, 8(sp)
80000b78: 83 26 c1 00  	lw	a3, 12(sp)

80000b7c <.LBB0_31>:
80000b7c: 17 25 00 00  	auipc	a0, 2
80000b80: 13 05 95 36  	addi	a0, a0, 873
80000b84: 97 00 00 00  	auipc	ra, 0
80000b88: e7 80 80 02  	jalr	40(ra)

80000b8c <.LBB0_32>:
80000b8c: 17 25 00 00  	auipc	a0, 2
80000b90: 13 05 45 62  	addi	a0, a0, 1572
80000b94: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001;
80000b98: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80000b9c: 07 34 01 01  	fld	fs0, 16(sp)
80000ba0: 83 20 c1 01  	lw	ra, 28(sp)
80000ba4: 13 01 01 02  	addi	sp, sp, 32
80000ba8: 67 80 00 00  	ret

80000bac <printf_>:
; {
80000bac: 13 01 01 fd  	addi	sp, sp, -48
80000bb0: 23 26 11 00  	sw	ra, 12(sp)
80000bb4: 93 02 05 00  	mv	t0, a0
80000bb8: 23 26 11 03  	sw	a7, 44(sp)
80000bbc: 23 24 01 03  	sw	a6, 40(sp)
80000bc0: 23 22 f1 02  	sw	a5, 36(sp)
80000bc4: 23 20 e1 02  	sw	a4, 32(sp)
80000bc8: 23 2e d1 00  	sw	a3, 28(sp)
80000bcc: 23 2c c1 00  	sw	a2, 24(sp)
80000bd0: 23 2a b1 00  	sw	a1, 20(sp)
80000bd4: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000bd8: 23 24 a1 00  	sw	a0, 8(sp)

80000bdc <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000bdc: 17 15 00 00  	auipc	a0, 1
80000be0: 13 05 45 c2  	addi	a0, a0, -988
80000be4: 93 05 71 00  	addi	a1, sp, 7
80000be8: 13 06 f0 ff  	addi	a2, zero, -1
80000bec: 13 07 41 01  	addi	a4, sp, 20
80000bf0: 93 86 02 00  	mv	a3, t0
80000bf4: 97 00 00 00  	auipc	ra, 0
80000bf8: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000bfc: 83 20 c1 00  	lw	ra, 12(sp)
80000c00: 13 01 01 03  	addi	sp, sp, 48
80000c04: 67 80 00 00  	ret

80000c08 <_vsnprintf.llvm.17592004524093383706>:
; {
80000c08: 13 01 01 f9  	addi	sp, sp, -112
80000c0c: 23 26 11 06  	sw	ra, 108(sp)
80000c10: 23 24 81 06  	sw	s0, 104(sp)
80000c14: 23 22 91 06  	sw	s1, 100(sp)
80000c18: 23 20 21 07  	sw	s2, 96(sp)
80000c1c: 23 2e 31 05  	sw	s3, 92(sp)
80000c20: 23 2c 41 05  	sw	s4, 88(sp)
80000c24: 23 2a 51 05  	sw	s5, 84(sp)
80000c28: 23 28 61 05  	sw	s6, 80(sp)
80000c2c: 23 26 71 05  	sw	s7, 76(sp)
80000c30: 23 24 81 05  	sw	s8, 72(sp)
80000c34: 23 22 91 05  	sw	s9, 68(sp)
80000c38: 23 20 a1 05  	sw	s10, 64(sp)
80000c3c: 23 2e b1 03  	sw	s11, 60(sp)
80000c40: 93 09 07 00  	mv	s3, a4
80000c44: 13 84 06 00  	mv	s0, a3
80000c48: 93 0a 06 00  	mv	s5, a2
80000c4c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000c50: 63 86 05 00  	beqz	a1, 0x80000c5c <.LBB1_183>
80000c54: 13 09 05 00  	mv	s2, a0
80000c58: 6f 00 c0 00  	j	0x80000c64 <.LBB1_183+0x8>

80000c5c <.LBB1_183>:
80000c5c: 17 19 00 00  	auipc	s2, 1
80000c60: 13 09 09 c5  	addi	s2, s2, -944
80000c64: 13 0c 00 00  	mv	s8, zero
80000c68: 13 0b 50 02  	addi	s6, zero, 37
80000c6c: 93 0d 00 01  	addi	s11, zero, 16
80000c70: 93 0b e0 02  	addi	s7, zero, 46
80000c74: 37 15 00 00  	lui	a0, 1
80000c78: 13 05 05 80  	addi	a0, a0, -2048
80000c7c: 23 2c a1 00  	sw	a0, 24(sp)
80000c80: 37 05 01 00  	lui	a0, 16
80000c84: 13 05 f5 ff  	addi	a0, a0, -1
80000c88: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000c8c: 13 0d 24 00  	addi	s10, s0, 2
80000c90: 93 0c 0c 00  	mv	s9, s8
80000c94: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000c98: 03 45 04 00  	lbu	a0, 0(s0)
80000c9c: e3 04 05 30  	beqz	a0, 0x800017a4 <.LBB1_124+0x3b0>
80000ca0: 63 08 65 03  	beq	a0, s6, 0x80000cd0 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000ca4: 93 84 1c 00  	addi	s1, s9, 1
80000ca8: 93 05 0a 00  	mv	a1, s4
80000cac: 13 86 0c 00  	mv	a2, s9
80000cb0: 93 86 0a 00  	mv	a3, s5
80000cb4: e7 00 09 00  	jalr	s2
;       format++;
80000cb8: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000cbc: 13 0d 1d 00  	addi	s10, s10, 1
80000cc0: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000cc4: 03 45 04 00  	lbu	a0, 0(s0)
80000cc8: e3 1c 05 fc  	bnez	a0, 0x80000ca0 <.LBB1_183+0x44>
80000ccc: 6f 00 90 2d  	j	0x800017a4 <.LBB1_124+0x3b0>
;     flags = 0U;
80000cd0: 13 04 00 00  	mv	s0, zero
80000cd4: 6f 00 00 01  	j	0x80000ce4 <.LBB1_9+0x8>

80000cd8 <.LBB1_8>:
80000cd8: 93 05 00 01  	addi	a1, zero, 16

80000cdc <.LBB1_9>:
80000cdc: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000ce0: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000ce4: 03 45 fd ff  	lbu	a0, -1(s10)
80000ce8: 93 05 05 fe  	addi	a1, a0, -32
80000cec: 63 ec bd 02  	bltu	s11, a1, 0x80000d24 <.LBB1_15>
80000cf0: 93 95 25 00  	slli	a1, a1, 2

80000cf4 <.LBB1_184>:
80000cf4: 17 26 00 00  	auipc	a2, 2
80000cf8: 13 06 46 20  	addi	a2, a2, 516
80000cfc: b3 85 c5 00  	add	a1, a1, a2
80000d00: 03 a6 05 00  	lw	a2, 0(a1)
80000d04: 93 05 10 00  	addi	a1, zero, 1
80000d08: 67 00 06 00  	jr	a2

80000d0c <.LBB1_12>:
80000d0c: 93 05 80 00  	addi	a1, zero, 8
80000d10: 6f f0 df fc  	j	0x80000cdc <.LBB1_9>

80000d14 <.LBB1_13>:
80000d14: 93 05 40 00  	addi	a1, zero, 4
80000d18: 6f f0 5f fc  	j	0x80000cdc <.LBB1_9>

80000d1c <.LBB1_14>:
80000d1c: 93 05 20 00  	addi	a1, zero, 2
80000d20: 6f f0 df fb  	j	0x80000cdc <.LBB1_9>

80000d24 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000d24: 93 05 05 fd  	addi	a1, a0, -48
80000d28: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000d2c: 93 05 fd ff  	addi	a1, s10, -1
80000d30: 93 06 90 00  	addi	a3, zero, 9
80000d34: 63 ee c6 06  	bltu	a3, a2, 0x80000db0 <.LBB1_15+0x8c>
80000d38: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000d3c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000d40: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000d44: b3 06 8b 03  	mul	a3, s6, s8
80000d48: 93 85 15 00  	addi	a1, a1, 1
80000d4c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000d50: 93 06 05 fd  	addi	a3, a0, -48
80000d54: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000d58: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000d5c: e3 e0 86 ff  	bltu	a3, s8, 0x80000d3c <.LBB1_15+0x18>
80000d60: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000d64: 63 16 75 0b  	bne	a0, s7, 0x80000e10 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80000d68: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000d6c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80000d70: 93 05 05 fd  	addi	a1, a0, -48
80000d74: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80000d78: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000d7c: 93 06 90 00  	addi	a3, zero, 9
80000d80: 63 e0 c6 06  	bltu	a3, a2, 0x80000de0 <.LBB1_15+0xbc>
80000d84: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000d88: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000d8c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000d90: b3 86 8b 03  	mul	a3, s7, s8
80000d94: 93 85 15 00  	addi	a1, a1, 1
80000d98: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000d9c: 93 06 05 fd  	addi	a3, a0, -48
80000da0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000da4: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80000da8: e3 e0 86 ff  	bltu	a3, s8, 0x80000d88 <.LBB1_15+0x64>
80000dac: 6f 00 00 07  	j	0x80000e1c <.LBB1_15+0xf8>
;     else if (*format == '*') {
80000db0: 13 06 a0 02  	addi	a2, zero, 42
80000db4: 63 18 c5 04  	bne	a0, a2, 0x80000e04 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80000db8: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80000dbc: 63 d4 05 00  	bgez	a1, 0x80000dc4 <.LBB1_15+0xa0>
80000dc0: 13 64 24 00  	ori	s0, s0, 2
80000dc4: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80000dc8: 03 45 0d 00  	lbu	a0, 0(s10)
80000dcc: 13 d6 f5 41  	srai	a2, a1, 31
80000dd0: b3 85 c5 00  	add	a1, a1, a2
80000dd4: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80000dd8: e3 08 75 f9  	beq	a0, s7, 0x80000d68 <.LBB1_15+0x44>
80000ddc: 6f 00 40 03  	j	0x80000e10 <.LBB1_15+0xec>
;       else if (*format == '*') {
80000de0: 13 06 a0 02  	addi	a2, zero, 42
80000de4: 63 1a c5 02  	bne	a0, a2, 0x80000e18 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80000de8: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80000dec: 63 44 70 01  	bgtz	s7, 0x80000df4 <.LBB1_15+0xd0>
80000df0: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80000df4: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80000df8: 13 0d 2d 00  	addi	s10, s10, 2
80000dfc: 93 89 49 00  	addi	s3, s3, 4
80000e00: 6f 00 00 02  	j	0x80000e20 <.LBB1_15+0xfc>
80000e04: 13 0b 00 00  	mv	s6, zero
80000e08: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000e0c: e3 0e 75 f5  	beq	a0, s7, 0x80000d68 <.LBB1_15+0x44>
80000e10: 93 0b 00 00  	mv	s7, zero
80000e14: 6f 00 c0 00  	j	0x80000e20 <.LBB1_15+0xfc>
80000e18: 93 0b 00 00  	mv	s7, zero
80000e1c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80000e20: 93 05 85 f9  	addi	a1, a0, -104
80000e24: 13 d6 15 00  	srli	a2, a1, 1
80000e28: 93 95 f5 01  	slli	a1, a1, 31
80000e2c: b3 e5 c5 00  	or	a1, a1, a2
80000e30: 13 06 90 00  	addi	a2, zero, 9
80000e34: 63 62 b6 06  	bltu	a2, a1, 0x80000e98 <.LBB1_42>
80000e38: 93 95 25 00  	slli	a1, a1, 2

80000e3c <.LBB1_185>:
80000e3c: 17 26 00 00  	auipc	a2, 2
80000e40: 13 06 06 10  	addi	a2, a2, 256
80000e44: b3 85 c5 00  	add	a1, a1, a2
80000e48: 83 a6 05 00  	lw	a3, 0(a1)
80000e4c: 93 05 10 00  	addi	a1, zero, 1
80000e50: 13 06 00 10  	addi	a2, zero, 256
80000e54: 67 80 06 00  	jr	a3

80000e58 <.LBB1_36>:
;         if (*format == 'h') {
80000e58: 03 45 1d 00  	lbu	a0, 1(s10)
80000e5c: 93 05 80 06  	addi	a1, zero, 104
80000e60: 63 12 b5 12  	bne	a0, a1, 0x80000f84 <.LBB1_53+0x48>
80000e64: 93 05 20 00  	addi	a1, zero, 2
80000e68: 13 06 00 0c  	addi	a2, zero, 192
80000e6c: 6f 00 00 02  	j	0x80000e8c <.LBB1_41>

80000e70 <.LBB1_38>:
80000e70: 13 06 00 20  	addi	a2, zero, 512
80000e74: 6f 00 80 01  	j	0x80000e8c <.LBB1_41>

80000e78 <.LBB1_39>:
;         if (*format == 'l') {
80000e78: 03 45 1d 00  	lbu	a0, 1(s10)
80000e7c: 93 05 c0 06  	addi	a1, zero, 108
80000e80: 63 18 b5 10  	bne	a0, a1, 0x80000f90 <.LBB1_53+0x54>
80000e84: 93 05 20 00  	addi	a1, zero, 2
80000e88: 13 06 00 30  	addi	a2, zero, 768

80000e8c <.LBB1_41>:
80000e8c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80000e90: 03 45 0d 00  	lbu	a0, 0(s10)
80000e94: 33 64 c4 00  	or	s0, s0, a2

80000e98 <.LBB1_42>:
;     switch (*format) {
80000e98: 93 05 b5 fd  	addi	a1, a0, -37
80000e9c: 13 06 30 05  	addi	a2, zero, 83
80000ea0: 63 64 b6 10  	bltu	a2, a1, 0x80000fa8 <.LBB1_59>
80000ea4: 93 95 25 00  	slli	a1, a1, 2

80000ea8 <.LBB1_186>:
80000ea8: 17 26 00 00  	auipc	a2, 2
80000eac: 13 06 c6 0b  	addi	a2, a2, 188
80000eb0: b3 85 c5 00  	add	a1, a1, a2
80000eb4: 03 a6 05 00  	lw	a2, 0(a1)
80000eb8: 93 05 80 00  	addi	a1, zero, 8
80000ebc: 13 0c 00 01  	addi	s8, zero, 16
80000ec0: 67 00 06 00  	jr	a2

80000ec4 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80000ec4: 13 74 f4 fe  	andi	s0, s0, -17
80000ec8: 13 0c a0 00  	addi	s8, zero, 10

80000ecc <.LBB1_45>:
;         if (*format == 'X') {
80000ecc: 93 05 80 05  	addi	a1, zero, 88
80000ed0: 63 14 b5 00  	bne	a0, a1, 0x80000ed8 <.LBB1_45+0xc>
80000ed4: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80000ed8: 93 05 40 06  	addi	a1, zero, 100
80000edc: 63 08 b5 0e  	beq	a0, a1, 0x80000fcc <.LBB1_62+0x8>
80000ee0: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80000ee4: 13 06 90 06  	addi	a2, zero, 105
80000ee8: 63 02 c5 0e  	beq	a0, a2, 0x80000fcc <.LBB1_62+0x8>
80000eec: 6f 00 80 0d  	j	0x80000fc4 <.LBB1_62>

80000ef0 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80000ef0: 93 05 60 04  	addi	a1, zero, 70
80000ef4: 63 14 b5 00  	bne	a0, a1, 0x80000efc <.LBB1_49+0xc>
80000ef8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000efc: 13 85 79 00  	addi	a0, s3, 7
80000f00: 13 75 85 ff  	andi	a0, a0, -8
80000f04: 07 35 05 00  	fld	fa0, 0(a0)
80000f08: 93 09 85 00  	addi	s3, a0, 8
80000f0c: 13 05 09 00  	mv	a0, s2
80000f10: 93 05 0a 00  	mv	a1, s4
80000f14: 13 86 0c 00  	mv	a2, s9
80000f18: 93 86 0a 00  	mv	a3, s5
80000f1c: 13 87 0b 00  	mv	a4, s7
80000f20: 93 07 0b 00  	mv	a5, s6
80000f24: 13 08 04 00  	mv	a6, s0
80000f28: 97 10 00 00  	auipc	ra, 1
80000f2c: e7 80 80 98  	jalr	-1656(ra)
80000f30: 6f 00 00 7c  	j	0x800016f0 <.LBB1_124+0x2fc>

80000f34 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80000f34: 83 25 81 01  	lw	a1, 24(sp)
80000f38: 33 64 b4 00  	or	s0, s0, a1

80000f3c <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80000f3c: 13 65 25 00  	ori	a0, a0, 2
80000f40: 93 05 70 04  	addi	a1, zero, 71
80000f44: 63 14 b5 00  	bne	a0, a1, 0x80000f4c <.LBB1_53+0x10>
80000f48: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000f4c: 13 85 79 00  	addi	a0, s3, 7
80000f50: 13 75 85 ff  	andi	a0, a0, -8
80000f54: 07 35 05 00  	fld	fa0, 0(a0)
80000f58: 93 09 85 00  	addi	s3, a0, 8
80000f5c: 13 05 09 00  	mv	a0, s2
80000f60: 93 05 0a 00  	mv	a1, s4
80000f64: 13 86 0c 00  	mv	a2, s9
80000f68: 93 86 0a 00  	mv	a3, s5
80000f6c: 13 87 0b 00  	mv	a4, s7
80000f70: 93 07 0b 00  	mv	a5, s6
80000f74: 13 08 04 00  	mv	a6, s0
80000f78: 97 10 00 00  	auipc	ra, 1
80000f7c: e7 80 80 01  	jalr	24(ra)
80000f80: 6f 00 00 77  	j	0x800016f0 <.LBB1_124+0x2fc>
80000f84: 13 64 04 08  	ori	s0, s0, 128
80000f88: 13 0d 1d 00  	addi	s10, s10, 1
80000f8c: 6f f0 df f0  	j	0x80000e98 <.LBB1_42>
80000f90: 13 64 04 10  	ori	s0, s0, 256
80000f94: 13 0d 1d 00  	addi	s10, s10, 1
80000f98: 6f f0 1f f0  	j	0x80000e98 <.LBB1_42>

80000f9c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80000f9c: 13 8c 1c 00  	addi	s8, s9, 1
80000fa0: 13 05 50 02  	addi	a0, zero, 37
80000fa4: 6f 00 80 00  	j	0x80000fac <.LBB1_59+0x4>

80000fa8 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80000fa8: 13 8c 1c 00  	addi	s8, s9, 1
80000fac: 93 05 0a 00  	mv	a1, s4
80000fb0: 13 86 0c 00  	mv	a2, s9
80000fb4: 93 86 0a 00  	mv	a3, s5
80000fb8: e7 00 09 00  	jalr	s2
80000fbc: 6f 00 80 73  	j	0x800016f4 <.LBB1_124+0x300>

80000fc0 <.LBB1_61>:
80000fc0: 93 05 20 00  	addi	a1, zero, 2

80000fc4 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80000fc4: 13 74 34 ff  	andi	s0, s0, -13
80000fc8: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80000fcc: 93 75 04 40  	andi	a1, s0, 1024
80000fd0: 63 84 05 00  	beqz	a1, 0x80000fd8 <.LBB1_62+0x14>
80000fd4: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80000fd8: 93 05 90 06  	addi	a1, zero, 105
80000fdc: 63 06 b5 00  	beq	a0, a1, 0x80000fe8 <.LBB1_62+0x24>
80000fe0: 93 05 40 06  	addi	a1, zero, 100
80000fe4: 63 1c b5 12  	bne	a0, a1, 0x8000111c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80000fe8: 13 75 04 20  	andi	a0, s0, 512
80000fec: 63 16 05 02  	bnez	a0, 0x80001018 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80000ff0: 13 75 04 10  	andi	a0, s0, 256
80000ff4: 63 1c 05 14  	bnez	a0, 0x8000114c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000ff8: 13 75 04 04  	andi	a0, s0, 64
80000ffc: 63 18 05 4e  	bnez	a0, 0x800014ec <.LBB1_124+0xf8>
80001000: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001004: 93 75 04 08  	andi	a1, s0, 128
80001008: 63 84 05 4e  	beqz	a1, 0x800014f0 <.LBB1_124+0xfc>
8000100c: 13 15 08 01  	slli	a0, a6, 16
80001010: 13 58 05 41  	srai	a6, a0, 16
80001014: 6f 00 c0 4d  	j	0x800014f0 <.LBB1_124+0xfc>
80001018: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
8000101c: 13 85 79 00  	addi	a0, s3, 7
80001020: 13 75 85 ff  	andi	a0, a0, -8
80001024: 83 29 05 00  	lw	s3, 0(a0)
80001028: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
8000102c: 13 65 45 00  	ori	a0, a0, 4
80001030: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001034: 23 24 a1 00  	sw	a0, 8(sp)
80001038: 33 e5 a9 00  	or	a0, s3, a0
8000103c: 63 14 05 00  	bnez	a0, 0x80001044 <.LBB1_62+0x80>
80001040: 13 74 f4 fe  	andi	s0, s0, -17
80001044: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001048: 93 75 04 40  	andi	a1, s0, 1024
8000104c: 93 d5 a5 00  	srli	a1, a1, 10
80001050: 33 75 b5 00  	and	a0, a0, a1
80001054: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001058: 63 14 05 0a  	bnez	a0, 0x80001100 <.LBB1_62+0x13c>
8000105c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001060: 63 da 04 00  	bgez	s1, 0x80001074 <.LBB1_62+0xb0>
80001064: 33 35 30 01  	snez	a0, s3
80001068: b3 09 30 41  	neg	s3, s3
8000106c: 33 85 a4 00  	add	a0, s1, a0
80001070: b3 04 a0 40  	neg	s1, a0
80001074: 13 09 00 00  	mv	s2, zero
80001078: 13 75 04 02  	andi	a0, s0, 32
8000107c: 13 45 15 06  	xori	a0, a0, 97
80001080: 13 05 65 0f  	addi	a0, a0, 246
80001084: 23 2a a1 00  	sw	a0, 20(sp)
80001088: 6f 00 40 02  	j	0x800010ac <.LBB1_62+0xe8>
8000108c: 13 06 10 00  	addi	a2, zero, 1
80001090: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001094: 93 36 f9 01  	sltiu	a3, s2, 31
80001098: 33 f6 c6 00  	and	a2, a3, a2
8000109c: 13 89 07 00  	mv	s2, a5
800010a0: 93 09 05 00  	mv	s3, a0
800010a4: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800010a8: 63 0c 06 04  	beqz	a2, 0x80001100 <.LBB1_62+0x13c>
;       value /= base;
800010ac: 13 85 09 00  	mv	a0, s3
800010b0: 93 85 04 00  	mv	a1, s1
800010b4: 13 06 0c 00  	mv	a2, s8
800010b8: 93 06 00 00  	mv	a3, zero
800010bc: 97 f0 ff ff  	auipc	ra, 1048575
800010c0: e7 80 40 f4  	jalr	-188(ra)
800010c4: 33 06 85 03  	mul	a2, a0, s8
800010c8: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800010cc: 13 77 e6 0f  	andi	a4, a2, 254
800010d0: 93 06 00 03  	addi	a3, zero, 48
800010d4: 93 07 a0 00  	addi	a5, zero, 10
800010d8: 63 64 f7 00  	bltu	a4, a5, 0x800010e0 <.LBB1_62+0x11c>
800010dc: 83 26 41 01  	lw	a3, 20(sp)
800010e0: 33 86 c6 00  	add	a2, a3, a2
800010e4: 93 06 c1 01  	addi	a3, sp, 28
800010e8: b3 86 26 01  	add	a3, a3, s2
800010ec: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800010f0: e3 9e 04 f8  	bnez	s1, 0x8000108c <.LBB1_62+0xc8>
800010f4: 33 b6 89 01  	sltu	a2, s3, s8
800010f8: 13 46 16 00  	xori	a2, a2, 1
800010fc: 6f f0 5f f9  	j	0x80001090 <.LBB1_62+0xcc>
80001100: 03 25 41 00  	lw	a0, 4(sp)
80001104: 93 09 85 00  	addi	s3, a0, 8
80001108: 03 25 81 00  	lw	a0, 8(sp)
8000110c: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001110: 13 07 c1 01  	addi	a4, sp, 28
80001114: 03 29 c1 00  	lw	s2, 12(sp)
80001118: 6f 00 80 47  	j	0x80001590 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
8000111c: 13 75 04 20  	andi	a0, s0, 512
80001120: 63 12 05 0c  	bnez	a0, 0x800011e4 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001124: 13 75 04 10  	andi	a0, s0, 256
80001128: 63 1e 05 46  	bnez	a0, 0x800015a4 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000112c: 13 75 04 04  	andi	a0, s0, 64
80001130: 63 10 05 50  	bnez	a0, 0x80001630 <.LBB1_124+0x23c>
80001134: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001138: 93 75 04 08  	andi	a1, s0, 128
8000113c: 63 8c 05 4e  	beqz	a1, 0x80001634 <.LBB1_124+0x240>
80001140: 83 25 01 01  	lw	a1, 16(sp)
80001144: 33 75 b5 00  	and	a0, a0, a1
80001148: 6f 00 c0 4e  	j	0x80001634 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
8000114c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001150: 63 14 08 00  	bnez	a6, 0x80001158 <.LBB1_62+0x194>
80001154: 13 74 f4 fe  	andi	s0, s0, -17
80001158: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000115c: 13 76 04 40  	andi	a2, s0, 1024
80001160: 13 56 a6 00  	srli	a2, a2, 10
80001164: b3 f5 c5 00  	and	a1, a1, a2
80001168: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000116c: 63 9c 05 40  	bnez	a1, 0x80001584 <.LBB1_124+0x190>
80001170: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001174: 13 56 f8 41  	srai	a2, a6, 31
80001178: b3 06 c8 00  	add	a3, a6, a2
8000117c: b3 c6 c6 00  	xor	a3, a3, a2
80001180: 13 76 04 02  	andi	a2, s0, 32
80001184: 13 46 16 06  	xori	a2, a2, 97
80001188: 93 08 66 0f  	addi	a7, a2, 246
8000118c: 6f 00 40 03  	j	0x800011c0 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001190: 33 05 f6 00  	add	a0, a2, a5
80001194: 93 87 15 00  	addi	a5, a1, 1
80001198: 13 06 c1 01  	addi	a2, sp, 28
8000119c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800011a0: b3 b6 86 01  	sltu	a3, a3, s8
800011a4: 93 c6 16 00  	xori	a3, a3, 1
800011a8: 93 b5 f5 01  	sltiu	a1, a1, 31
800011ac: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800011b0: 23 00 a6 00  	sb	a0, 0(a2)
800011b4: 93 85 07 00  	mv	a1, a5
800011b8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800011bc: 63 84 04 3c  	beqz	s1, 0x80001584 <.LBB1_124+0x190>
;       value /= base;
800011c0: 33 d7 86 03  	divu	a4, a3, s8
800011c4: 33 06 87 03  	mul	a2, a4, s8
800011c8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800011cc: 13 f5 e7 0f  	andi	a0, a5, 254
800011d0: 13 06 00 03  	addi	a2, zero, 48
800011d4: 93 04 a0 00  	addi	s1, zero, 10
800011d8: e3 6c 95 fa  	bltu	a0, s1, 0x80001190 <.LBB1_62+0x1cc>
800011dc: 13 86 08 00  	mv	a2, a7
800011e0: 6f f0 1f fb  	j	0x80001190 <.LBB1_62+0x1cc>
800011e4: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800011e8: 13 85 79 00  	addi	a0, s3, 7
800011ec: 93 75 85 ff  	andi	a1, a0, -8
800011f0: 03 a9 05 00  	lw	s2, 0(a1)
800011f4: 13 e5 45 00  	ori	a0, a1, 4
800011f8: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800011fc: 33 65 39 01  	or	a0, s2, s3
80001200: 23 24 b1 00  	sw	a1, 8(sp)
80001204: 63 14 05 00  	bnez	a0, 0x8000120c <.LBB1_62+0x248>
80001208: 13 74 f4 fe  	andi	s0, s0, -17
8000120c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001210: 93 75 04 40  	andi	a1, s0, 1024
80001214: 93 d5 a5 00  	srli	a1, a1, 10
80001218: 33 75 b5 00  	and	a0, a0, a1
8000121c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001220: 63 18 05 08  	bnez	a0, 0x800012b0 <.LBB1_62+0x2ec>
80001224: 93 04 00 00  	mv	s1, zero
80001228: 13 75 04 02  	andi	a0, s0, 32
8000122c: 13 45 15 06  	xori	a0, a0, 97
80001230: 13 05 65 0f  	addi	a0, a0, 246
80001234: 23 2a a1 00  	sw	a0, 20(sp)
80001238: 6f 00 40 02  	j	0x8000125c <.LBB1_62+0x298>
8000123c: 13 06 10 00  	addi	a2, zero, 1
80001240: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001244: 93 b6 f4 01  	sltiu	a3, s1, 31
80001248: 33 f6 c6 00  	and	a2, a3, a2
8000124c: 93 84 07 00  	mv	s1, a5
80001250: 13 09 05 00  	mv	s2, a0
80001254: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001258: 63 0c 06 04  	beqz	a2, 0x800012b0 <.LBB1_62+0x2ec>
;       value /= base;
8000125c: 13 05 09 00  	mv	a0, s2
80001260: 93 85 09 00  	mv	a1, s3
80001264: 13 06 0c 00  	mv	a2, s8
80001268: 93 06 00 00  	mv	a3, zero
8000126c: 97 f0 ff ff  	auipc	ra, 1048575
80001270: e7 80 40 d9  	jalr	-620(ra)
80001274: 33 06 85 03  	mul	a2, a0, s8
80001278: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000127c: 13 77 e6 0f  	andi	a4, a2, 254
80001280: 93 06 00 03  	addi	a3, zero, 48
80001284: 93 07 a0 00  	addi	a5, zero, 10
80001288: 63 64 f7 00  	bltu	a4, a5, 0x80001290 <.LBB1_62+0x2cc>
8000128c: 83 26 41 01  	lw	a3, 20(sp)
80001290: 33 86 c6 00  	add	a2, a3, a2
80001294: 93 06 c1 01  	addi	a3, sp, 28
80001298: b3 86 96 00  	add	a3, a3, s1
8000129c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800012a0: e3 9e 09 f8  	bnez	s3, 0x8000123c <.LBB1_62+0x278>
800012a4: 33 36 89 01  	sltu	a2, s2, s8
800012a8: 13 46 16 00  	xori	a2, a2, 1
800012ac: 6f f0 5f f9  	j	0x80001240 <.LBB1_62+0x27c>
800012b0: 03 25 81 00  	lw	a0, 8(sp)
800012b4: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800012b8: 13 07 c1 01  	addi	a4, sp, 28
800012bc: 03 29 c1 00  	lw	s2, 12(sp)
800012c0: 6f 00 40 40  	j	0x800016c4 <.LBB1_124+0x2d0>

800012c4 <.LBB1_108>:
800012c4: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800012c8: 13 79 24 00  	andi	s2, s0, 2
800012cc: 93 04 10 00  	addi	s1, zero, 1
800012d0: 63 1e 09 02  	bnez	s2, 0x8000130c <.LBB1_108+0x48>
800012d4: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800012d8: 63 6a 9b 02  	bltu	s6, s1, 0x8000130c <.LBB1_108+0x48>
800012dc: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800012e0: 13 0c fb ff  	addi	s8, s6, -1
800012e4: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800012e8: 33 86 8c 00  	add	a2, s9, s0
800012ec: 13 05 00 02  	addi	a0, zero, 32
800012f0: 93 05 0a 00  	mv	a1, s4
800012f4: 93 86 0a 00  	mv	a3, s5
800012f8: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800012fc: 13 04 14 00  	addi	s0, s0, 1
80001300: e3 14 8c fe  	bne	s8, s0, 0x800012e8 <.LBB1_108+0x24>
80001304: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001308: b3 8c 8c 00  	add	s9, s9, s0
8000130c: 03 c5 09 00  	lbu	a0, 0(s3)
80001310: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001314: 93 89 49 00  	addi	s3, s3, 4
80001318: 13 8c 1c 00  	addi	s8, s9, 1
8000131c: 93 05 0a 00  	mv	a1, s4
80001320: 13 86 0c 00  	mv	a2, s9
80001324: 93 86 0a 00  	mv	a3, s5
80001328: 13 89 0b 00  	mv	s2, s7
8000132c: e7 80 0b 00  	jalr	s7
80001330: 33 b5 64 01  	sltu	a0, s1, s6
80001334: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001338: 33 65 a4 00  	or	a0, s0, a0
8000133c: 63 1c 05 3a  	bnez	a0, 0x800016f4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001340: 33 04 9b 40  	sub	s0, s6, s1
80001344: 93 0b e0 02  	addi	s7, zero, 46
80001348: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000134c: 13 0c 1c 00  	addi	s8, s8, 1
80001350: 13 05 00 02  	addi	a0, zero, 32
80001354: 93 05 0a 00  	mv	a1, s4
80001358: 93 86 0a 00  	mv	a3, s5
8000135c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001360: 13 04 f4 ff  	addi	s0, s0, -1
80001364: e3 12 04 fe  	bnez	s0, 0x80001348 <.LBB1_108+0x84>
80001368: 13 0b 50 02  	addi	s6, zero, 37
8000136c: 13 04 1d 00  	addi	s0, s10, 1
80001370: 6f f0 df 91  	j	0x80000c8c <.LBB1_183+0x30>

80001374 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001374: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001378: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
8000137c: 63 14 05 00  	bnez	a0, 0x80001384 <.LBB1_117+0x10>
80001380: 93 fe fe fe  	andi	t4, t4, -17
80001384: 93 04 a0 00  	addi	s1, zero, 10
80001388: 13 04 f0 00  	addi	s0, zero, 15
8000138c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001390: 13 f6 0e 40  	andi	a2, t4, 1024
80001394: 13 56 a6 00  	srli	a2, a2, 10
80001398: b3 f5 c5 00  	and	a1, a1, a2
8000139c: 93 07 00 00  	mv	a5, zero
800013a0: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800013a4: 63 98 05 10  	bnez	a1, 0x800014b4 <.LBB1_124+0xc0>
800013a8: 93 05 00 00  	mv	a1, zero
800013ac: 6f 00 40 03  	j	0x800013e0 <.LBB1_117+0x6c>
800013b0: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013b4: 33 06 d6 00  	add	a2, a2, a3
800013b8: 93 87 15 00  	addi	a5, a1, 1
800013bc: 93 06 c1 01  	addi	a3, sp, 28
800013c0: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013c4: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800013c8: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013cc: 93 b5 f5 01  	sltiu	a1, a1, 31
800013d0: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013d4: 23 80 c6 00  	sb	a2, 0(a3)
800013d8: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013dc: 63 0c 07 0c  	beqz	a4, 0x800014b4 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013e0: 93 76 e5 00  	andi	a3, a0, 14
800013e4: 13 06 00 03  	addi	a2, zero, 48
800013e8: e3 e4 96 fc  	bltu	a3, s1, 0x800013b0 <.LBB1_117+0x3c>
800013ec: 13 06 70 03  	addi	a2, zero, 55
800013f0: 6f f0 1f fc  	j	0x800013b0 <.LBB1_117+0x3c>

800013f4 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800013f4: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800013f8: 03 c5 07 00  	lbu	a0, 0(a5)
800013fc: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001400: 63 0c 05 02  	beqz	a0, 0x80001438 <.LBB1_124+0x44>
80001404: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001408: 63 84 0b 00  	beqz	s7, 0x80001410 <.LBB1_124+0x1c>
8000140c: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001410: 93 85 f5 ff  	addi	a1, a1, -1
80001414: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001418: 03 c7 16 00  	lbu	a4, 1(a3)
8000141c: 13 86 16 00  	addi	a2, a3, 1
80001420: b3 36 e0 00  	snez	a3, a4
80001424: 33 37 b0 00  	snez	a4, a1
80001428: 33 77 d7 00  	and	a4, a4, a3
8000142c: 93 85 f5 ff  	addi	a1, a1, -1
80001430: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001434: e3 12 07 fe  	bnez	a4, 0x80001418 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001438: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
8000143c: 93 75 04 40  	andi	a1, s0, 1024
80001440: 93 b4 15 00  	seqz	s1, a1
80001444: 23 2a c1 00  	sw	a2, 20(sp)
80001448: b3 35 76 01  	sltu	a1, a2, s7
8000144c: b3 e5 b4 00  	or	a1, s1, a1
80001450: 63 94 05 00  	bnez	a1, 0x80001458 <.LBB1_124+0x64>
80001454: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001458: 93 75 24 00  	andi	a1, s0, 2
8000145c: 23 26 b1 00  	sw	a1, 12(sp)
80001460: 63 96 05 2a  	bnez	a1, 0x8000170c <.LBB1_124+0x318>
80001464: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001468: 63 fe 65 29  	bgeu	a1, s6, 0x80001704 <.LBB1_124+0x310>
8000146c: 23 24 f1 00  	sw	a5, 8(sp)
80001470: 13 04 00 00  	mv	s0, zero
80001474: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001478: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
8000147c: 33 86 8c 00  	add	a2, s9, s0
80001480: 13 05 00 02  	addi	a0, zero, 32
80001484: 93 05 0a 00  	mv	a1, s4
80001488: 93 86 0a 00  	mv	a3, s5
8000148c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001490: 13 04 14 00  	addi	s0, s0, 1
80001494: e3 14 89 fe  	bne	s2, s0, 0x8000147c <.LBB1_124+0x88>
80001498: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000149c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800014a0: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800014a4: 23 2a b1 00  	sw	a1, 20(sp)
800014a8: b3 8c 8c 00  	add	s9, s9, s0
800014ac: 13 09 0c 00  	mv	s2, s8
800014b0: 6f 00 c0 25  	j	0x8000170c <.LBB1_124+0x318>
800014b4: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800014b8: 13 07 c1 01  	addi	a4, sp, 28
800014bc: 93 08 00 01  	addi	a7, zero, 16
800014c0: 13 0e 80 00  	addi	t3, zero, 8
800014c4: 13 05 09 00  	mv	a0, s2
800014c8: 93 05 0a 00  	mv	a1, s4
800014cc: 13 86 0c 00  	mv	a2, s9
800014d0: 93 86 0a 00  	mv	a3, s5
800014d4: 13 08 00 00  	mv	a6, zero
800014d8: 93 83 0b 00  	mv	t2, s7
800014dc: 97 10 00 00  	auipc	ra, 1
800014e0: e7 80 00 fa  	jalr	-96(ra)
800014e4: 13 0c 05 00  	mv	s8, a0
800014e8: 6f 00 00 21  	j	0x800016f8 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800014ec: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800014f0: 63 14 08 00  	bnez	a6, 0x800014f8 <.LBB1_124+0x104>
800014f4: 13 74 f4 fe  	andi	s0, s0, -17
800014f8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800014fc: 13 76 04 40  	andi	a2, s0, 1024
80001500: 13 56 a6 00  	srli	a2, a2, 10
80001504: b3 f5 c5 00  	and	a1, a1, a2
80001508: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000150c: 63 9c 05 06  	bnez	a1, 0x80001584 <.LBB1_124+0x190>
80001510: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001514: 13 56 f8 41  	srai	a2, a6, 31
80001518: b3 06 c8 00  	add	a3, a6, a2
8000151c: b3 c6 c6 00  	xor	a3, a3, a2
80001520: 13 76 04 02  	andi	a2, s0, 32
80001524: 13 46 16 06  	xori	a2, a2, 97
80001528: 93 08 66 0f  	addi	a7, a2, 246
8000152c: 6f 00 40 03  	j	0x80001560 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001530: 33 05 f6 00  	add	a0, a2, a5
80001534: 93 87 15 00  	addi	a5, a1, 1
80001538: 13 06 c1 01  	addi	a2, sp, 28
8000153c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001540: b3 b6 86 01  	sltu	a3, a3, s8
80001544: 93 c6 16 00  	xori	a3, a3, 1
80001548: 93 b5 f5 01  	sltiu	a1, a1, 31
8000154c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001550: 23 00 a6 00  	sb	a0, 0(a2)
80001554: 93 85 07 00  	mv	a1, a5
80001558: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000155c: 63 84 04 02  	beqz	s1, 0x80001584 <.LBB1_124+0x190>
;       value /= base;
80001560: 33 d7 86 03  	divu	a4, a3, s8
80001564: 33 06 87 03  	mul	a2, a4, s8
80001568: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000156c: 13 f5 e7 0f  	andi	a0, a5, 254
80001570: 13 06 00 03  	addi	a2, zero, 48
80001574: 93 04 a0 00  	addi	s1, zero, 10
80001578: e3 6c 95 fa  	bltu	a0, s1, 0x80001530 <.LBB1_124+0x13c>
8000157c: 13 86 08 00  	mv	a2, a7
80001580: 6f f0 1f fb  	j	0x80001530 <.LBB1_124+0x13c>
80001584: 93 89 49 00  	addi	s3, s3, 4
80001588: 13 58 f8 01  	srli	a6, a6, 31
8000158c: 13 07 c1 01  	addi	a4, sp, 28
80001590: 13 05 09 00  	mv	a0, s2
80001594: 93 05 0a 00  	mv	a1, s4
80001598: 13 86 0c 00  	mv	a2, s9
8000159c: 93 86 0a 00  	mv	a3, s5
800015a0: 6f 00 80 13  	j	0x800016d8 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800015a4: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800015a8: 63 14 05 00  	bnez	a0, 0x800015b0 <.LBB1_124+0x1bc>
800015ac: 13 74 f4 fe  	andi	s0, s0, -17
800015b0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800015b4: 13 76 04 40  	andi	a2, s0, 1024
800015b8: 13 56 a6 00  	srli	a2, a2, 10
800015bc: b3 f5 c5 00  	and	a1, a1, a2
800015c0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800015c4: 63 9c 05 0e  	bnez	a1, 0x800016bc <.LBB1_124+0x2c8>
800015c8: 13 06 00 00  	mv	a2, zero
800015cc: 93 75 04 02  	andi	a1, s0, 32
800015d0: 93 c5 15 06  	xori	a1, a1, 97
800015d4: 13 88 65 0f  	addi	a6, a1, 246
800015d8: 6f 00 40 03  	j	0x8000160c <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800015dc: 33 87 e7 00  	add	a4, a5, a4
800015e0: 93 07 16 00  	addi	a5, a2, 1
800015e4: 93 05 c1 01  	addi	a1, sp, 28
800015e8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800015ec: 33 35 85 01  	sltu	a0, a0, s8
800015f0: 13 45 15 00  	xori	a0, a0, 1
800015f4: 13 36 f6 01  	sltiu	a2, a2, 31
800015f8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800015fc: 23 80 e4 00  	sb	a4, 0(s1)
80001600: 13 86 07 00  	mv	a2, a5
80001604: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001608: 63 8a 05 0a  	beqz	a1, 0x800016bc <.LBB1_124+0x2c8>
;       value /= base;
8000160c: b3 56 85 03  	divu	a3, a0, s8
80001610: 33 87 86 03  	mul	a4, a3, s8
80001614: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001618: 93 74 e7 0f  	andi	s1, a4, 254
8000161c: 93 07 00 03  	addi	a5, zero, 48
80001620: 93 05 a0 00  	addi	a1, zero, 10
80001624: e3 ec b4 fa  	bltu	s1, a1, 0x800015dc <.LBB1_124+0x1e8>
80001628: 93 07 08 00  	mv	a5, a6
8000162c: 6f f0 1f fb  	j	0x800015dc <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001630: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001634: 63 14 05 00  	bnez	a0, 0x8000163c <.LBB1_124+0x248>
80001638: 13 74 f4 fe  	andi	s0, s0, -17
8000163c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001640: 13 76 04 40  	andi	a2, s0, 1024
80001644: 13 56 a6 00  	srli	a2, a2, 10
80001648: b3 f5 c5 00  	and	a1, a1, a2
8000164c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001650: 63 96 05 06  	bnez	a1, 0x800016bc <.LBB1_124+0x2c8>
80001654: 13 06 00 00  	mv	a2, zero
80001658: 93 75 04 02  	andi	a1, s0, 32
8000165c: 93 c5 15 06  	xori	a1, a1, 97
80001660: 13 88 65 0f  	addi	a6, a1, 246
80001664: 6f 00 40 03  	j	0x80001698 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001668: 33 87 e7 00  	add	a4, a5, a4
8000166c: 93 07 16 00  	addi	a5, a2, 1
80001670: 93 05 c1 01  	addi	a1, sp, 28
80001674: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001678: 33 35 85 01  	sltu	a0, a0, s8
8000167c: 13 45 15 00  	xori	a0, a0, 1
80001680: 13 36 f6 01  	sltiu	a2, a2, 31
80001684: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001688: 23 80 e4 00  	sb	a4, 0(s1)
8000168c: 13 86 07 00  	mv	a2, a5
80001690: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001694: 63 84 05 02  	beqz	a1, 0x800016bc <.LBB1_124+0x2c8>
;       value /= base;
80001698: b3 56 85 03  	divu	a3, a0, s8
8000169c: 33 87 86 03  	mul	a4, a3, s8
800016a0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016a4: 93 74 e7 0f  	andi	s1, a4, 254
800016a8: 93 07 00 03  	addi	a5, zero, 48
800016ac: 93 05 a0 00  	addi	a1, zero, 10
800016b0: e3 ec b4 fa  	bltu	s1, a1, 0x80001668 <.LBB1_124+0x274>
800016b4: 93 07 08 00  	mv	a5, a6
800016b8: 6f f0 1f fb  	j	0x80001668 <.LBB1_124+0x274>
800016bc: 93 89 49 00  	addi	s3, s3, 4
800016c0: 13 07 c1 01  	addi	a4, sp, 28
800016c4: 13 05 09 00  	mv	a0, s2
800016c8: 93 05 0a 00  	mv	a1, s4
800016cc: 13 86 0c 00  	mv	a2, s9
800016d0: 93 86 0a 00  	mv	a3, s5
800016d4: 13 08 00 00  	mv	a6, zero
800016d8: 93 08 0c 00  	mv	a7, s8
800016dc: 93 83 0b 00  	mv	t2, s7
800016e0: 13 0e 0b 00  	mv	t3, s6
800016e4: 93 0e 04 00  	mv	t4, s0
800016e8: 97 10 00 00  	auipc	ra, 1
800016ec: e7 80 40 d9  	jalr	-620(ra)
800016f0: 13 0c 05 00  	mv	s8, a0
800016f4: 13 0b 50 02  	addi	s6, zero, 37
800016f8: 93 0b e0 02  	addi	s7, zero, 46
800016fc: 13 04 1d 00  	addi	s0, s10, 1
80001700: 6f f0 cf d8  	j	0x80000c8c <.LBB1_183+0x30>
80001704: 93 85 15 00  	addi	a1, a1, 1
80001708: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000170c: 63 00 05 04  	beqz	a0, 0x8000174c <.LBB1_124+0x358>
80001710: 13 84 17 00  	addi	s0, a5, 1
80001714: 6f 00 00 03  	j	0x80001744 <.LBB1_124+0x350>
80001718: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
8000171c: 13 8c 1c 00  	addi	s8, s9, 1
80001720: 13 75 f5 0f  	andi	a0, a0, 255
80001724: 93 05 0a 00  	mv	a1, s4
80001728: 13 86 0c 00  	mv	a2, s9
8000172c: 93 86 0a 00  	mv	a3, s5
80001730: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001734: 03 45 04 00  	lbu	a0, 0(s0)
80001738: 13 04 14 00  	addi	s0, s0, 1
8000173c: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001740: 63 08 05 00  	beqz	a0, 0x80001750 <.LBB1_124+0x35c>
80001744: e3 9c 04 fc  	bnez	s1, 0x8000171c <.LBB1_124+0x328>
80001748: e3 98 0b fc  	bnez	s7, 0x80001718 <.LBB1_124+0x324>
8000174c: 13 8c 0c 00  	mv	s8, s9
80001750: 03 25 c1 00  	lw	a0, 12(sp)
80001754: 13 35 15 00  	seqz	a0, a0
80001758: 03 26 41 01  	lw	a2, 20(sp)
8000175c: b3 35 66 01  	sltu	a1, a2, s6
80001760: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001764: 33 65 b5 00  	or	a0, a0, a1
80001768: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
8000176c: e3 14 05 f8  	bnez	a0, 0x800016f4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001770: 33 04 cb 40  	sub	s0, s6, a2
80001774: 93 0b e0 02  	addi	s7, zero, 46
80001778: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000177c: 13 0c 1c 00  	addi	s8, s8, 1
80001780: 13 05 00 02  	addi	a0, zero, 32
80001784: 93 05 0a 00  	mv	a1, s4
80001788: 93 86 0a 00  	mv	a3, s5
8000178c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001790: 13 04 f4 ff  	addi	s0, s0, -1
80001794: e3 12 04 fe  	bnez	s0, 0x80001778 <.LBB1_124+0x384>
80001798: 13 0b 50 02  	addi	s6, zero, 37
8000179c: 13 04 1d 00  	addi	s0, s10, 1
800017a0: 6f f0 cf ce  	j	0x80000c8c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800017a4: 13 86 0c 00  	mv	a2, s9
800017a8: 63 e4 5c 01  	bltu	s9, s5, 0x800017b0 <.LBB1_124+0x3bc>
800017ac: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800017b0: 13 05 00 00  	mv	a0, zero
800017b4: 93 05 0a 00  	mv	a1, s4
800017b8: 93 86 0a 00  	mv	a3, s5
800017bc: e7 00 09 00  	jalr	s2
;   return (int)idx;
800017c0: 13 85 0c 00  	mv	a0, s9
800017c4: 83 2d c1 03  	lw	s11, 60(sp)
800017c8: 03 2d 01 04  	lw	s10, 64(sp)
800017cc: 83 2c 41 04  	lw	s9, 68(sp)
800017d0: 03 2c 81 04  	lw	s8, 72(sp)
800017d4: 83 2b c1 04  	lw	s7, 76(sp)
800017d8: 03 2b 01 05  	lw	s6, 80(sp)
800017dc: 83 2a 41 05  	lw	s5, 84(sp)
800017e0: 03 2a 81 05  	lw	s4, 88(sp)
800017e4: 83 29 c1 05  	lw	s3, 92(sp)
800017e8: 03 29 01 06  	lw	s2, 96(sp)
800017ec: 83 24 41 06  	lw	s1, 100(sp)
800017f0: 03 24 81 06  	lw	s0, 104(sp)
800017f4: 83 20 c1 06  	lw	ra, 108(sp)
800017f8: 13 01 01 07  	addi	sp, sp, 112
800017fc: 67 80 00 00  	ret

80001800 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80001800: 63 04 05 0a  	beqz	a0, 0x800018a8 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001804: f3 25 40 f1  	csrr	a1, mhartid
80001808: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
8000180c: 33 86 c5 02  	mul	a2, a1, a2

80001810 <.LBB2_6>:
80001810: 97 26 00 00  	auipc	a3, 2
80001814: 93 86 46 a5  	addi	a3, a3, -1452
80001818: b3 05 d6 00  	add	a1, a2, a3
8000181c: 03 a7 05 00  	lw	a4, 0(a1)
80001820: 93 07 17 00  	addi	a5, a4, 1
80001824: 23 a0 f5 00  	sw	a5, 0(a1)
80001828: 33 87 e5 00  	add	a4, a1, a4
8000182c: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001830: 03 a7 05 00  	lw	a4, 0(a1)
80001834: 13 07 47 c0  	addi	a4, a4, -1020
80001838: 33 37 e0 00  	snez	a4, a4
8000183c: 13 05 65 ff  	addi	a0, a0, -10
80001840: 33 35 a0 00  	snez	a0, a0
80001844: 33 75 e5 00  	and	a0, a0, a4
80001848: 63 10 05 06  	bnez	a0, 0x800018a8 <.LBB2_8+0x18>
8000184c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001850: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001854: 23 26 05 00  	sw	zero, 12(a0)
80001858: 93 06 00 04  	addi	a3, zero, 64
8000185c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001860: 23 2a 05 00  	sw	zero, 20(a0)
80001864: 93 06 10 00  	addi	a3, zero, 1
80001868: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
8000186c: 23 2e 05 00  	sw	zero, 28(a0)
80001870: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001874: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001878: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000187c: 23 22 05 02  	sw	zero, 36(a0)
80001880: 23 20 c5 02  	sw	a2, 32(a0)

80001884 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001884: 17 25 00 00  	auipc	a0, 2
80001888: 13 05 c5 8b  	addi	a0, a0, -1860
8000188c: 23 20 d5 00  	sw	a3, 0(a0)

80001890 <.LBB2_8>:
80001890: 17 25 00 00  	auipc	a0, 2
80001894: 13 05 05 8f  	addi	a0, a0, -1808
;         while (fromhost == 0)
80001898: 03 26 05 00  	lw	a2, 0(a0)
8000189c: e3 0e 06 fe  	beqz	a2, 0x80001898 <.LBB2_8+0x8>
;         fromhost = 0;
800018a0: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800018a4: 23 a0 05 00  	sw	zero, 0(a1)
; }
800018a8: 67 80 00 00  	ret

800018ac <_out_null>:
; }
800018ac: 67 80 00 00  	ret

800018b0 <_ftoa>:
; {
800018b0: 13 01 01 f9  	addi	sp, sp, -112
800018b4: 23 26 11 06  	sw	ra, 108(sp)
800018b8: 23 24 81 06  	sw	s0, 104(sp)
800018bc: 23 22 91 06  	sw	s1, 100(sp)
800018c0: 23 20 21 07  	sw	s2, 96(sp)
800018c4: 23 2e 31 05  	sw	s3, 92(sp)
800018c8: 23 2c 41 05  	sw	s4, 88(sp)
800018cc: 23 2a 51 05  	sw	s5, 84(sp)
800018d0: 23 28 61 05  	sw	s6, 80(sp)
800018d4: 23 26 71 05  	sw	s7, 76(sp)
800018d8: 23 24 81 05  	sw	s8, 72(sp)
800018dc: 23 22 91 05  	sw	s9, 68(sp)
800018e0: 23 20 a1 05  	sw	s10, 64(sp)
800018e4: 27 3c 81 02  	fsd	fs0, 56(sp)
800018e8: 27 38 91 02  	fsd	fs1, 48(sp)
800018ec: 27 34 21 03  	fsd	fs2, 40(sp)

800018f0 <.LBB4_83>:
800018f0: 97 24 00 00  	auipc	s1, 2
800018f4: 93 84 84 8c  	addi	s1, s1, -1848
800018f8: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800018fc: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001900: 93 0a 08 00  	mv	s5, a6
80001904: 13 89 07 00  	mv	s2, a5
80001908: 93 89 06 00  	mv	s3, a3
8000190c: 13 0a 06 00  	mv	s4, a2
80001910: 13 8b 05 00  	mv	s6, a1
80001914: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001918: 63 98 04 0e  	bnez	s1, 0x80001a08 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000191c: 13 f5 2a 00  	andi	a0, s5, 2
80001920: 93 f5 3a 00  	andi	a1, s5, 3
80001924: b3 35 b0 00  	snez	a1, a1
80001928: 13 36 59 00  	sltiu	a2, s2, 5
8000192c: b3 65 b6 00  	or	a1, a2, a1
80001930: 93 5c 15 00  	srli	s9, a0, 1
80001934: 13 04 0a 00  	mv	s0, s4
80001938: 63 96 05 02  	bnez	a1, 0x80001964 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
8000193c: 93 04 c9 ff  	addi	s1, s2, -4
80001940: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001944: 13 04 16 00  	addi	s0, a2, 1
80001948: 13 05 00 02  	addi	a0, zero, 32
8000194c: 93 05 0b 00  	mv	a1, s6
80001950: 93 86 09 00  	mv	a3, s3
80001954: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001958: 93 84 f4 ff  	addi	s1, s1, -1
8000195c: 13 06 04 00  	mv	a2, s0
80001960: e3 92 04 fe  	bnez	s1, 0x80001944 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001964: 93 04 14 00  	addi	s1, s0, 1
80001968: 13 05 d0 02  	addi	a0, zero, 45
8000196c: 93 05 0b 00  	mv	a1, s6
80001970: 13 06 04 00  	mv	a2, s0
80001974: 93 86 09 00  	mv	a3, s3
80001978: e7 80 0b 00  	jalr	s7
8000197c: 93 0a 24 00  	addi	s5, s0, 2
80001980: 13 05 90 06  	addi	a0, zero, 105
80001984: 93 05 0b 00  	mv	a1, s6
80001988: 13 86 04 00  	mv	a2, s1
8000198c: 93 86 09 00  	mv	a3, s3
80001990: e7 80 0b 00  	jalr	s7
80001994: 13 0c 34 00  	addi	s8, s0, 3
80001998: 13 05 e0 06  	addi	a0, zero, 110
8000199c: 93 05 0b 00  	mv	a1, s6
800019a0: 13 86 0a 00  	mv	a2, s5
800019a4: 93 86 09 00  	mv	a3, s3
800019a8: e7 80 0b 00  	jalr	s7
800019ac: 93 04 44 00  	addi	s1, s0, 4
800019b0: 13 05 60 06  	addi	a0, zero, 102
800019b4: 93 05 0b 00  	mv	a1, s6
800019b8: 13 06 0c 00  	mv	a2, s8
800019bc: 93 86 09 00  	mv	a3, s3
800019c0: e7 80 0b 00  	jalr	s7
800019c4: 33 85 44 41  	sub	a0, s1, s4
800019c8: 33 35 25 01  	sltu	a0, a0, s2
800019cc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800019d0: 93 c5 1c 00  	xori	a1, s9, 1
800019d4: 33 e5 a5 00  	or	a0, a1, a0
800019d8: 63 16 05 56  	bnez	a0, 0x80001f44 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800019dc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800019e0: 13 84 14 00  	addi	s0, s1, 1
800019e4: 13 05 00 02  	addi	a0, zero, 32
800019e8: 93 05 0b 00  	mv	a1, s6
800019ec: 13 86 04 00  	mv	a2, s1
800019f0: 93 86 09 00  	mv	a3, s3
800019f4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800019f8: 33 05 8a 00  	add	a0, s4, s0
800019fc: 93 04 04 00  	mv	s1, s0
80001a00: e3 60 25 ff  	bltu	a0, s2, 0x800019e0 <.LBB4_83+0xf0>
80001a04: 6f 00 40 54  	j	0x80001f48 <.LBB4_90+0x378>
80001a08: 53 04 a5 22  	fmv.d	fs0, fa0

80001a0c <.LBB4_84>:
80001a0c: 17 15 00 00  	auipc	a0, 1
80001a10: 13 05 45 7b  	addi	a0, a0, 1972
80001a14: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001a18: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001a1c: 63 1e 05 00  	bnez	a0, 0x80001a38 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001a20: 93 f5 4a 00  	andi	a1, s5, 4
80001a24: 13 b5 15 00  	seqz	a0, a1
80001a28: 63 82 05 06  	beqz	a1, 0x80001a8c <.LBB4_88>

80001a2c <.LBB4_85>:
80001a2c: 17 1c 00 00  	auipc	s8, 1
80001a30: 13 0c 4c 4b  	addi	s8, s8, 1204
80001a34: 6f 00 00 06  	j	0x80001a94 <.LBB4_88+0x8>

80001a38 <.LBB4_86>:
80001a38: 17 15 00 00  	auipc	a0, 1
80001a3c: 13 05 05 79  	addi	a0, a0, 1936
80001a40: 07 30 05 00  	fld	ft0, 0(a0)

80001a44 <.LBB4_87>:
80001a44: 17 15 00 00  	auipc	a0, 1
80001a48: 13 05 c5 78  	addi	a0, a0, 1932
80001a4c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001a50: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001a54: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001a58: 33 75 b5 00  	and	a0, a0, a1
80001a5c: 63 1e 05 0e  	bnez	a0, 0x80001b58 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001a60: 13 85 0b 00  	mv	a0, s7
80001a64: 93 05 0b 00  	mv	a1, s6
80001a68: 13 06 0a 00  	mv	a2, s4
80001a6c: 93 86 09 00  	mv	a3, s3
80001a70: 53 05 84 22  	fmv.d	fa0, fs0
80001a74: 93 07 09 00  	mv	a5, s2
80001a78: 13 88 0a 00  	mv	a6, s5
80001a7c: 97 00 00 00  	auipc	ra, 0
80001a80: e7 80 40 51  	jalr	1300(ra)
80001a84: 13 04 05 00  	mv	s0, a0
80001a88: 6f 00 00 4c  	j	0x80001f48 <.LBB4_90+0x378>

80001a8c <.LBB4_88>:
80001a8c: 17 1c 00 00  	auipc	s8, 1
80001a90: 13 0c 5c 46  	addi	s8, s8, 1125
80001a94: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001a98: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001a9c: 13 f5 3a 00  	andi	a0, s5, 3
80001aa0: 33 35 a0 00  	snez	a0, a0
80001aa4: b3 b5 2c 01  	sltu	a1, s9, s2
80001aa8: 93 c5 15 00  	xori	a1, a1, 1
80001aac: 33 65 b5 00  	or	a0, a0, a1
80001ab0: 93 fa 2a 00  	andi	s5, s5, 2
80001ab4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001ab8: 63 16 05 02  	bnez	a0, 0x80001ae4 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001abc: 33 04 99 41  	sub	s0, s2, s9
80001ac0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001ac4: 93 04 16 00  	addi	s1, a2, 1
80001ac8: 13 05 00 02  	addi	a0, zero, 32
80001acc: 93 05 0b 00  	mv	a1, s6
80001ad0: 93 86 09 00  	mv	a3, s3
80001ad4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001ad8: 13 04 f4 ff  	addi	s0, s0, -1
80001adc: 13 86 04 00  	mv	a2, s1
80001ae0: e3 12 04 fe  	bnez	s0, 0x80001ac4 <.LBB4_88+0x38>
80001ae4: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001ae8: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001aec: 33 05 9c 01  	add	a0, s8, s9
80001af0: 03 45 05 00  	lbu	a0, 0(a0)
80001af4: 13 86 04 00  	mv	a2, s1
80001af8: 13 84 fc ff  	addi	s0, s9, -1
80001afc: 93 84 14 00  	addi	s1, s1, 1
80001b00: 93 05 0b 00  	mv	a1, s6
80001b04: 93 86 09 00  	mv	a3, s3
80001b08: e7 80 0b 00  	jalr	s7
80001b0c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001b10: e3 1e 04 fc  	bnez	s0, 0x80001aec <.LBB4_88+0x60>
80001b14: 33 85 44 41  	sub	a0, s1, s4
80001b18: 33 35 25 01  	sltu	a0, a0, s2
80001b1c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001b20: 93 c5 1a 00  	xori	a1, s5, 1
80001b24: 33 e5 a5 00  	or	a0, a1, a0
80001b28: 63 1e 05 40  	bnez	a0, 0x80001f44 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001b2c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001b30: 13 84 14 00  	addi	s0, s1, 1
80001b34: 13 05 00 02  	addi	a0, zero, 32
80001b38: 93 05 0b 00  	mv	a1, s6
80001b3c: 13 86 04 00  	mv	a2, s1
80001b40: 93 86 09 00  	mv	a3, s3
80001b44: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001b48: 33 05 8a 00  	add	a0, s4, s0
80001b4c: 93 04 04 00  	mv	s1, s0
80001b50: e3 60 25 ff  	bltu	a0, s2, 0x80001b30 <.LBB4_88+0xa4>
80001b54: 6f 00 40 3f  	j	0x80001f48 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001b58: 13 f5 0a 40  	andi	a0, s5, 1024
80001b5c: 13 0c 60 00  	addi	s8, zero, 6
80001b60: 63 04 05 00  	beqz	a0, 0x80001b68 <.LBB4_88+0xdc>
80001b64: 13 0c 07 00  	mv	s8, a4
80001b68: 13 05 a0 00  	addi	a0, zero, 10
80001b6c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001b70: 63 6c ac 02  	bltu	s8, a0, 0x80001ba8 <.LBB4_88+0x11c>
80001b74: 93 04 6c ff  	addi	s1, s8, -10
80001b78: 13 05 f0 01  	addi	a0, zero, 31
80001b7c: 63 e4 a4 00  	bltu	s1, a0, 0x80001b84 <.LBB4_88+0xf8>
80001b80: 93 04 f0 01  	addi	s1, zero, 31
80001b84: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001b88: 13 05 81 00  	addi	a0, sp, 8
80001b8c: 93 05 00 03  	addi	a1, zero, 48
80001b90: 13 06 04 00  	mv	a2, s0
80001b94: 97 f0 ff ff  	auipc	ra, 1048575
80001b98: e7 80 40 9c  	jalr	-1596(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001b9c: 13 c5 f4 ff  	not	a0, s1
80001ba0: 33 0c ac 00  	add	s8, s8, a0
80001ba4: 6f 00 80 00  	j	0x80001bac <.LBB4_88+0x120>
80001ba8: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001bac: 13 15 3c 00  	slli	a0, s8, 3

80001bb0 <.LBB4_89>:
80001bb0: 97 15 00 00  	auipc	a1, 1
80001bb4: 93 85 85 50  	addi	a1, a1, 1288
80001bb8: 33 05 b5 00  	add	a0, a0, a1
80001bbc: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001bc0: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001bc4: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001bc8: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001bcc: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001bd0 <.LBB4_90>:
80001bd0: 17 15 00 00  	auipc	a0, 1
80001bd4: 13 05 85 60  	addi	a0, a0, 1544
80001bd8: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001bdc: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001be0: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001be4: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001be8: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001bec: 63 90 05 02  	bnez	a1, 0x80001c0c <.LBB4_90+0x3c>
;     ++frac;
80001bf0: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001bf4: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001bf8: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001bfc: 63 94 05 02  	bnez	a1, 0x80001c24 <.LBB4_90+0x54>
80001c00: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001c04: 93 84 14 00  	addi	s1, s1, 1
80001c08: 6f 00 c0 01  	j	0x80001c24 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001c0c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001c10: 63 9a 05 00  	bnez	a1, 0x80001c24 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001c14: 93 35 15 00  	seqz	a1, a0
80001c18: 13 76 15 00  	andi	a2, a0, 1
80001c1c: b3 65 b6 00  	or	a1, a2, a1
80001c20: 33 85 a5 00  	add	a0, a1, a0
80001c24: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001c28: 63 0c 0c 0c  	beqz	s8, 0x80001d00 <.LBB4_90+0x130>
80001c2c: 13 06 00 00  	mv	a2, zero
80001c30: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001c34: 33 83 85 00  	add	t1, a1, s0
80001c38: 93 02 00 02  	addi	t0, zero, 32
80001c3c: 33 87 82 40  	sub	a4, t0, s0
80001c40: b7 d5 cc cc  	lui	a1, 838861
80001c44: 93 83 d5 cc  	addi	t2, a1, -819
80001c48: 13 08 a0 00  	addi	a6, zero, 10
80001c4c: 93 08 90 00  	addi	a7, zero, 9
80001c50: 63 04 c7 0c  	beq	a4, a2, 0x80001d18 <.LBB4_90+0x148>
80001c54: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001c58: 33 35 75 02  	mulhu	a0, a0, t2
80001c5c: 13 55 35 00  	srli	a0, a0, 3
80001c60: b3 06 05 03  	mul	a3, a0, a6
80001c64: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001c68: 93 e6 06 03  	ori	a3, a3, 48
80001c6c: b3 07 c3 00  	add	a5, t1, a2
80001c70: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001c74: 13 06 16 00  	addi	a2, a2, 1
80001c78: e3 ec b8 fc  	bltu	a7, a1, 0x80001c50 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001c7c: 33 05 c4 00  	add	a0, s0, a2
80001c80: 93 05 f5 ff  	addi	a1, a0, -1
80001c84: 93 06 e0 01  	addi	a3, zero, 30
80001c88: b3 b6 b6 00  	sltu	a3, a3, a1
80001c8c: 33 47 cc 00  	xor	a4, s8, a2
80001c90: 13 37 17 00  	seqz	a4, a4
80001c94: b3 e6 e6 00  	or	a3, a3, a4
80001c98: 63 94 06 08  	bnez	a3, 0x80001d20 <.LBB4_90+0x150>
80001c9c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001ca0: 33 05 85 00  	add	a0, a0, s0
80001ca4: 93 45 f6 ff  	not	a1, a2
80001ca8: 33 8c 85 01  	add	s8, a1, s8
80001cac: 33 04 c4 00  	add	s0, s0, a2
80001cb0: 93 05 f0 01  	addi	a1, zero, 31
80001cb4: b3 86 85 40  	sub	a3, a1, s0
80001cb8: 33 05 c5 00  	add	a0, a0, a2
80001cbc: 93 05 0c 00  	mv	a1, s8
80001cc0: 63 64 dc 00  	bltu	s8, a3, 0x80001cc8 <.LBB4_90+0xf8>
80001cc4: 93 85 06 00  	mv	a1, a3
80001cc8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001ccc: 93 05 00 03  	addi	a1, zero, 48
80001cd0: 97 f0 ff ff  	auipc	ra, 1048575
80001cd4: e7 80 80 88  	jalr	-1912(ra)
80001cd8: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001cdc: b3 05 a4 00  	add	a1, s0, a0
80001ce0: 93 b5 f5 01  	sltiu	a1, a1, 31
80001ce4: 33 46 ac 00  	xor	a2, s8, a0
80001ce8: 33 36 c0 00  	snez	a2, a2
80001cec: 33 f6 c5 00  	and	a2, a1, a2
80001cf0: 13 05 15 00  	addi	a0, a0, 1
80001cf4: e3 14 06 fe  	bnez	a2, 0x80001cdc <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001cf8: 33 05 a4 00  	add	a0, s0, a0
80001cfc: 6f 00 80 02  	j	0x80001d24 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001d00: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001d04: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001d08: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001d0c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001d10: b3 84 a4 00  	add	s1, s1, a0
80001d14: 6f 00 c0 03  	j	0x80001d50 <.LBB4_90+0x180>
80001d18: 13 04 00 02  	addi	s0, zero, 32
80001d1c: 6f 00 80 03  	j	0x80001d54 <.LBB4_90+0x184>
80001d20: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001d24: 63 8e 05 00  	beqz	a1, 0x80001d40 <.LBB4_90+0x170>
;       buf[len++] = '.';
80001d28: 13 04 15 00  	addi	s0, a0, 1
80001d2c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001d30: 33 85 a5 00  	add	a0, a1, a0
80001d34: 93 05 e0 02  	addi	a1, zero, 46
80001d38: 23 00 b5 00  	sb	a1, 0(a0)
80001d3c: 6f 00 80 00  	j	0x80001d44 <.LBB4_90+0x174>
80001d40: 13 04 05 00  	mv	s0, a0
80001d44: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001d48: 93 02 04 00  	mv	t0, s0
80001d4c: 63 64 85 00  	bltu	a0, s0, 0x80001d54 <.LBB4_90+0x184>
80001d50: 93 02 00 02  	addi	t0, zero, 32
80001d54: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001d58: 37 65 66 66  	lui	a0, 419430
80001d5c: 93 05 75 66  	addi	a1, a0, 1639
80001d60: 13 08 a0 00  	addi	a6, zero, 10
80001d64: 93 06 81 00  	addi	a3, sp, 8
80001d68: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001d6c: 63 80 82 04  	beq	t0, s0, 0x80001dac <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80001d70: 33 95 b4 02  	mulh	a0, s1, a1
80001d74: 93 57 f5 01  	srli	a5, a0, 31
80001d78: 13 55 25 40  	srai	a0, a0, 2
80001d7c: 33 05 f5 00  	add	a0, a0, a5
80001d80: b3 07 05 03  	mul	a5, a0, a6
80001d84: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80001d88: 93 87 07 03  	addi	a5, a5, 48
80001d8c: 13 0c 14 00  	addi	s8, s0, 1
80001d90: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80001d94: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80001d98: 23 00 f4 00  	sb	a5, 0(s0)
80001d9c: 13 04 0c 00  	mv	s0, s8
80001da0: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80001da4: e3 64 c7 fc  	bltu	a4, a2, 0x80001d6c <.LBB4_90+0x19c>
80001da8: 6f 00 80 00  	j	0x80001db0 <.LBB4_90+0x1e0>
80001dac: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001db0: 93 f4 3a 00  	andi	s1, s5, 3
80001db4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001db8: 63 96 a4 06  	bne	s1, a0, 0x80001e24 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001dbc: 63 0c 09 00  	beqz	s2, 0x80001dd4 <.LBB4_90+0x204>
80001dc0: 13 f5 ca 00  	andi	a0, s5, 12
80001dc4: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001dc8: 33 e5 ac 00  	or	a0, s9, a0
80001dcc: 33 09 a9 40  	sub	s2, s2, a0
80001dd0: 6f 00 80 00  	j	0x80001dd8 <.LBB4_90+0x208>
80001dd4: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001dd8: 33 35 2c 01  	sltu	a0, s8, s2
80001ddc: 93 45 15 00  	xori	a1, a0, 1
80001de0: 13 05 f0 01  	addi	a0, zero, 31
80001de4: 33 36 85 01  	sltu	a2, a0, s8
80001de8: b3 65 b6 00  	or	a1, a2, a1
80001dec: 63 9c 05 02  	bnez	a1, 0x80001e24 <.LBB4_90+0x254>
80001df0: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001df4: 93 45 fc ff  	not	a1, s8
80001df8: b3 05 b9 00  	add	a1, s2, a1
80001dfc: 33 06 85 41  	sub	a2, a0, s8
80001e00: 33 85 86 01  	add	a0, a3, s8
80001e04: 63 e4 c5 00  	bltu	a1, a2, 0x80001e0c <.LBB4_90+0x23c>
80001e08: 93 05 06 00  	mv	a1, a2
80001e0c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80001e10: 93 05 00 03  	addi	a1, zero, 48
80001e14: 13 06 04 00  	mv	a2, s0
80001e18: 97 e0 ff ff  	auipc	ra, 1048574
80001e1c: e7 80 00 74  	jalr	1856(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001e20: 33 0c 84 01  	add	s8, s0, s8
80001e24: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001e28: 63 6a 85 05  	bltu	a0, s8, 0x80001e7c <.LBB4_90+0x2ac>
;     if (negative) {
80001e2c: 63 8c 0c 00  	beqz	s9, 0x80001e44 <.LBB4_90+0x274>
80001e30: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80001e34: 33 05 85 01  	add	a0, a0, s8
80001e38: 13 0c 1c 00  	addi	s8, s8, 1
80001e3c: 93 05 d0 02  	addi	a1, zero, 45
80001e40: 6f 00 80 03  	j	0x80001e78 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80001e44: 13 f5 4a 00  	andi	a0, s5, 4
80001e48: 63 10 05 02  	bnez	a0, 0x80001e68 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80001e4c: 13 f5 8a 00  	andi	a0, s5, 8
80001e50: 63 06 05 02  	beqz	a0, 0x80001e7c <.LBB4_90+0x2ac>
80001e54: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80001e58: 33 05 85 01  	add	a0, a0, s8
80001e5c: 13 0c 1c 00  	addi	s8, s8, 1
80001e60: 93 05 00 02  	addi	a1, zero, 32
80001e64: 6f 00 40 01  	j	0x80001e78 <.LBB4_90+0x2a8>
80001e68: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80001e6c: 33 05 85 01  	add	a0, a0, s8
80001e70: 13 0c 1c 00  	addi	s8, s8, 1
80001e74: 93 05 b0 02  	addi	a1, zero, 43
80001e78: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001e7c: 33 35 90 00  	snez	a0, s1
80001e80: b3 35 2c 01  	sltu	a1, s8, s2
80001e84: 93 c5 15 00  	xori	a1, a1, 1
80001e88: 33 65 b5 00  	or	a0, a0, a1
80001e8c: 93 fa 2a 00  	andi	s5, s5, 2
80001e90: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001e94: 63 16 05 02  	bnez	a0, 0x80001ec0 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80001e98: b3 04 89 41  	sub	s1, s2, s8
80001e9c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001ea0: 13 04 16 00  	addi	s0, a2, 1
80001ea4: 13 05 00 02  	addi	a0, zero, 32
80001ea8: 93 05 0b 00  	mv	a1, s6
80001eac: 93 86 09 00  	mv	a3, s3
80001eb0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001eb4: 93 84 f4 ff  	addi	s1, s1, -1
80001eb8: 13 06 04 00  	mv	a2, s0
80001ebc: e3 92 04 fe  	bnez	s1, 0x80001ea0 <.LBB4_90+0x2d0>
80001ec0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001ec4: 63 0c 0c 02  	beqz	s8, 0x80001efc <.LBB4_90+0x32c>
80001ec8: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80001ecc: 33 85 8c 01  	add	a0, s9, s8
80001ed0: 03 45 05 00  	lbu	a0, 0(a0)
80001ed4: 13 0d fc ff  	addi	s10, s8, -1
80001ed8: 93 04 14 00  	addi	s1, s0, 1
80001edc: 93 05 0b 00  	mv	a1, s6
80001ee0: 13 06 04 00  	mv	a2, s0
80001ee4: 93 86 09 00  	mv	a3, s3
80001ee8: e7 80 0b 00  	jalr	s7
80001eec: 13 84 04 00  	mv	s0, s1
80001ef0: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80001ef4: e3 1c 0d fc  	bnez	s10, 0x80001ecc <.LBB4_90+0x2fc>
80001ef8: 6f 00 80 00  	j	0x80001f00 <.LBB4_90+0x330>
80001efc: 93 04 04 00  	mv	s1, s0
80001f00: 33 85 44 41  	sub	a0, s1, s4
80001f04: 33 35 25 01  	sltu	a0, a0, s2
80001f08: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001f0c: 93 c5 1a 00  	xori	a1, s5, 1
80001f10: 33 e5 a5 00  	or	a0, a1, a0
80001f14: 63 18 05 02  	bnez	a0, 0x80001f44 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001f18: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001f1c: 13 84 14 00  	addi	s0, s1, 1
80001f20: 13 05 00 02  	addi	a0, zero, 32
80001f24: 93 05 0b 00  	mv	a1, s6
80001f28: 13 86 04 00  	mv	a2, s1
80001f2c: 93 86 09 00  	mv	a3, s3
80001f30: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001f34: 33 05 8a 00  	add	a0, s4, s0
80001f38: 93 04 04 00  	mv	s1, s0
80001f3c: e3 60 25 ff  	bltu	a0, s2, 0x80001f1c <.LBB4_90+0x34c>
80001f40: 6f 00 80 00  	j	0x80001f48 <.LBB4_90+0x378>
80001f44: 13 84 04 00  	mv	s0, s1
; }
80001f48: 13 05 04 00  	mv	a0, s0
80001f4c: 07 39 81 02  	fld	fs2, 40(sp)
80001f50: 87 34 01 03  	fld	fs1, 48(sp)
80001f54: 07 34 81 03  	fld	fs0, 56(sp)
80001f58: 03 2d 01 04  	lw	s10, 64(sp)
80001f5c: 83 2c 41 04  	lw	s9, 68(sp)
80001f60: 03 2c 81 04  	lw	s8, 72(sp)
80001f64: 83 2b c1 04  	lw	s7, 76(sp)
80001f68: 03 2b 01 05  	lw	s6, 80(sp)
80001f6c: 83 2a 41 05  	lw	s5, 84(sp)
80001f70: 03 2a 81 05  	lw	s4, 88(sp)
80001f74: 83 29 c1 05  	lw	s3, 92(sp)
80001f78: 03 29 01 06  	lw	s2, 96(sp)
80001f7c: 83 24 41 06  	lw	s1, 100(sp)
80001f80: 03 24 81 06  	lw	s0, 104(sp)
80001f84: 83 20 c1 06  	lw	ra, 108(sp)
80001f88: 13 01 01 07  	addi	sp, sp, 112
80001f8c: 67 80 00 00  	ret

80001f90 <_etoa>:
; {
80001f90: 13 01 01 f8  	addi	sp, sp, -128
80001f94: 23 2e 11 06  	sw	ra, 124(sp)
80001f98: 23 2c 81 06  	sw	s0, 120(sp)
80001f9c: 23 2a 91 06  	sw	s1, 116(sp)
80001fa0: 23 28 21 07  	sw	s2, 112(sp)
80001fa4: 23 26 31 07  	sw	s3, 108(sp)
80001fa8: 23 24 41 07  	sw	s4, 104(sp)
80001fac: 23 22 51 07  	sw	s5, 100(sp)
80001fb0: 23 20 61 07  	sw	s6, 96(sp)
80001fb4: 23 2e 71 05  	sw	s7, 92(sp)
80001fb8: 23 2c 81 05  	sw	s8, 88(sp)
80001fbc: 23 2a 91 05  	sw	s9, 84(sp)
80001fc0: 23 28 a1 05  	sw	s10, 80(sp)
80001fc4: 23 26 b1 05  	sw	s11, 76(sp)

80001fc8 <.LBB5_43>:
80001fc8: 97 14 00 00  	auipc	s1, 1
80001fcc: 93 84 84 21  	addi	s1, s1, 536
80001fd0: 87 b0 04 00  	fld	ft1, 0(s1)

80001fd4 <.LBB5_44>:
80001fd4: 97 14 00 00  	auipc	s1, 1
80001fd8: 93 84 44 21  	addi	s1, s1, 532
80001fdc: 07 b1 04 00  	fld	ft2, 0(s1)
80001fe0: 53 00 a5 22  	fmv.d	ft0, fa0
80001fe4: d3 04 15 a2  	fle.d	s1, fa0, ft1
80001fe8: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001fec: b3 f4 84 00  	and	s1, s1, s0
80001ff0: 93 0a 08 00  	mv	s5, a6
80001ff4: 13 89 07 00  	mv	s2, a5
80001ff8: 93 07 07 00  	mv	a5, a4
80001ffc: 93 89 06 00  	mv	s3, a3
80002000: 13 0a 06 00  	mv	s4, a2
80002004: 13 8b 05 00  	mv	s6, a1
80002008: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000200c: 63 92 04 06  	bnez	s1, 0x80002070 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002010: 13 85 0b 00  	mv	a0, s7
80002014: 93 05 0b 00  	mv	a1, s6
80002018: 13 06 0a 00  	mv	a2, s4
8000201c: 93 86 09 00  	mv	a3, s3
80002020: 53 05 00 22  	fmv.d	fa0, ft0
80002024: 13 87 07 00  	mv	a4, a5
80002028: 93 07 09 00  	mv	a5, s2
8000202c: 13 88 0a 00  	mv	a6, s5
80002030: 83 2d c1 04  	lw	s11, 76(sp)
80002034: 03 2d 01 05  	lw	s10, 80(sp)
80002038: 83 2c 41 05  	lw	s9, 84(sp)
8000203c: 03 2c 81 05  	lw	s8, 88(sp)
80002040: 83 2b c1 05  	lw	s7, 92(sp)
80002044: 03 2b 01 06  	lw	s6, 96(sp)
80002048: 83 2a 41 06  	lw	s5, 100(sp)
8000204c: 03 2a 81 06  	lw	s4, 104(sp)
80002050: 83 29 c1 06  	lw	s3, 108(sp)
80002054: 03 29 01 07  	lw	s2, 112(sp)
80002058: 83 24 41 07  	lw	s1, 116(sp)
8000205c: 03 24 81 07  	lw	s0, 120(sp)
80002060: 83 20 c1 07  	lw	ra, 124(sp)
80002064: 13 01 01 08  	addi	sp, sp, 128
80002068: 17 03 00 00  	auipc	t1, 0
8000206c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002070: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002074: 13 f5 0a 40  	andi	a0, s5, 1024
80002078: 13 07 60 00  	addi	a4, zero, 6
8000207c: 63 04 05 00  	beqz	a0, 0x80002084 <.LBB5_44+0xb0>
80002080: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002084: 27 30 a1 02  	fsd	fa0, 32(sp)
80002088: 83 25 41 02  	lw	a1, 36(sp)
8000208c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002090: 93 d6 45 01  	srli	a3, a1, 20
80002094: b7 07 10 00  	lui	a5, 256
80002098: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000209c: b3 f5 f5 00  	and	a1, a1, a5
800020a0: 23 2c c1 00  	sw	a2, 24(sp)
800020a4: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800020a8: b3 e5 c5 00  	or	a1, a1, a2
800020ac: 23 2e b1 00  	sw	a1, 28(sp)
800020b0: 87 30 81 01  	fld	ft1, 24(sp)

800020b4 <.LBB5_45>:
800020b4: 97 15 00 00  	auipc	a1, 1
800020b8: 93 85 c5 13  	addi	a1, a1, 316
800020bc: 07 b1 05 00  	fld	ft2, 0(a1)

800020c0 <.LBB5_46>:
800020c0: 97 15 00 00  	auipc	a1, 1
800020c4: 93 85 85 13  	addi	a1, a1, 312
800020c8: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800020cc: 93 f5 f6 7f  	andi	a1, a3, 2047
800020d0: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800020d4: 53 82 05 d2  	fcvt.d.w	ft4, a1
800020d8: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800020dc <.LBB5_47>:
800020dc: 97 15 00 00  	auipc	a1, 1
800020e0: 93 85 45 12  	addi	a1, a1, 292
800020e4: 07 b1 05 00  	fld	ft2, 0(a1)

800020e8 <.LBB5_48>:
800020e8: 97 15 00 00  	auipc	a1, 1
800020ec: 93 85 05 12  	addi	a1, a1, 288
800020f0: 87 b1 05 00  	fld	ft3, 0(a1)

800020f4 <.LBB5_49>:
800020f4: 97 15 00 00  	auipc	a1, 1
800020f8: 93 85 c5 11  	addi	a1, a1, 284
800020fc: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002100: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002104: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002108: d3 80 05 d2  	fcvt.d.w	ft1, a1
8000210c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002110 <.LBB5_50>:
80002110: 17 16 00 00  	auipc	a2, 1
80002114: 13 06 86 10  	addi	a2, a2, 264
80002118: 87 31 06 00  	fld	ft3, 0(a2)

8000211c <.LBB5_51>:
8000211c: 17 16 00 00  	auipc	a2, 1
80002120: 13 06 46 10  	addi	a2, a2, 260
80002124: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002128: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
8000212c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002130: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002134: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002138: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000213c: 13 06 f6 3f  	addi	a2, a2, 1023
80002140: 23 28 01 00  	sw	zero, 16(sp)
80002144: 13 16 46 01  	slli	a2, a2, 20
80002148: 23 2a c1 00  	sw	a2, 20(sp)

8000214c <.LBB5_52>:
8000214c: 17 16 00 00  	auipc	a2, 1
80002150: 13 06 46 0e  	addi	a2, a2, 228
80002154: 87 31 06 00  	fld	ft3, 0(a2)

80002158 <.LBB5_53>:
80002158: 17 16 00 00  	auipc	a2, 1
8000215c: 13 06 06 0e  	addi	a2, a2, 224
80002160: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002164: 87 32 01 01  	fld	ft5, 16(sp)

80002168 <.LBB5_54>:
80002168: 17 16 00 00  	auipc	a2, 1
8000216c: 13 06 06 0c  	addi	a2, a2, 192
80002170: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002174: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002178 <.LBB5_55>:
80002178: 17 16 00 00  	auipc	a2, 1
8000217c: 13 06 86 0c  	addi	a2, a2, 200
80002180: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002184: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002188: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000218c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002190: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002194: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002198: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000219c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
800021a0: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800021a4: 53 16 15 a2  	flt.d	a2, fa0, ft1
800021a8: 63 0a 06 00  	beqz	a2, 0x800021bc <.LBB5_56+0x10>

800021ac <.LBB5_56>:
800021ac: 97 16 00 00  	auipc	a3, 1
800021b0: 93 86 c6 09  	addi	a3, a3, 156
800021b4: 07 b1 06 00  	fld	ft2, 0(a3)
800021b8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800021bc: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800021c0: 93 05 34 06  	addi	a1, s0, 99
800021c4: 93 b5 75 0c  	sltiu	a1, a1, 199
800021c8: 13 06 50 00  	addi	a2, zero, 5
800021cc: b7 16 00 00  	lui	a3, 1
800021d0: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800021d4: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800021d8: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800021dc: 63 84 06 06  	beqz	a3, 0x80002244 <.LBB5_58+0x58>

800021e0 <.LBB5_57>:
800021e0: 97 15 00 00  	auipc	a1, 1
800021e4: 93 85 05 07  	addi	a1, a1, 112
800021e8: 07 b1 05 00  	fld	ft2, 0(a1)

800021ec <.LBB5_58>:
800021ec: 97 15 00 00  	auipc	a1, 1
800021f0: 93 85 c5 06  	addi	a1, a1, 108
800021f4: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800021f8: d3 15 25 a2  	flt.d	a1, fa0, ft2
800021fc: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002200: b3 e5 c5 00  	or	a1, a1, a2
80002204: 63 98 05 00  	bnez	a1, 0x80002214 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002208: 63 40 e4 02  	blt	s0, a4, 0x80002228 <.LBB5_58+0x3c>
8000220c: 13 07 00 00  	mv	a4, zero
80002210: 6f 00 00 02  	j	0x80002230 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002214: 63 06 07 02  	beqz	a4, 0x80002240 <.LBB5_58+0x54>
80002218: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000221c: 13 45 15 00  	xori	a0, a0, 1
80002220: 33 07 a7 40  	sub	a4, a4, a0
80002224: 6f 00 00 02  	j	0x80002244 <.LBB5_58+0x58>
80002228: 13 45 f4 ff  	not	a0, s0
8000222c: 33 07 a7 00  	add	a4, a4, a0
80002230: 13 04 00 00  	mv	s0, zero
80002234: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002238: 93 ea 0a 40  	ori	s5, s5, 1024
8000223c: 6f 00 80 00  	j	0x80002244 <.LBB5_58+0x58>
80002240: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002244: b3 05 99 41  	sub	a1, s2, s9
80002248: 33 36 b9 00  	sltu	a2, s2, a1
8000224c: 13 05 00 00  	mv	a0, zero
80002250: 63 14 06 00  	bnez	a2, 0x80002258 <.LBB5_58+0x6c>
80002254: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002258: 93 07 00 00  	mv	a5, zero
8000225c: 93 d5 1a 00  	srli	a1, s5, 1
80002260: 93 f4 15 00  	andi	s1, a1, 1
80002264: b3 35 90 01  	snez	a1, s9
80002268: b3 f5 b4 00  	and	a1, s1, a1
8000226c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002270: 63 94 05 00  	bnez	a1, 0x80002278 <.LBB5_58+0x8c>
80002274: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002278: 93 35 14 00  	seqz	a1, s0
8000227c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002280: 63 94 05 00  	bnez	a1, 0x80002288 <.LBB5_58+0x9c>
80002284: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002288: 63 04 05 00  	beqz	a0, 0x80002290 <.LBB5_58+0xa4>
8000228c: 53 15 a5 22  	fneg.d	fa0, fa0
80002290: 37 f5 ff ff  	lui	a0, 1048575
80002294: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002298: 33 f8 aa 00  	and	a6, s5, a0
8000229c: 13 85 0b 00  	mv	a0, s7
800022a0: 93 05 0b 00  	mv	a1, s6
800022a4: 13 06 0a 00  	mv	a2, s4
800022a8: 93 86 09 00  	mv	a3, s3
800022ac: 97 f0 ff ff  	auipc	ra, 1048575
800022b0: e7 80 40 60  	jalr	1540(ra)
800022b4: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800022b8: 63 82 0c 18  	beqz	s9, 0x8000243c <.LBB5_58+0x250>
800022bc: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800022c0: 13 f5 0a 02  	andi	a0, s5, 32
800022c4: 13 45 55 06  	xori	a0, a0, 101
800022c8: 93 05 0b 00  	mv	a1, s6
800022cc: 13 06 0d 00  	mv	a2, s10
800022d0: 93 86 09 00  	mv	a3, s3
800022d4: e7 80 0b 00  	jalr	s7
800022d8: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800022dc: 93 5a f4 01  	srli	s5, s0, 31
800022e0: 13 55 f4 41  	srai	a0, s0, 31
800022e4: b3 05 a4 00  	add	a1, s0, a0
800022e8: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800022ec: 93 8d dc ff  	addi	s11, s9, -3
800022f0: 13 04 f0 01  	addi	s0, zero, 31
800022f4: 37 d5 cc cc  	lui	a0, 838861
800022f8: 13 05 d5 cc  	addi	a0, a0, -819
800022fc: 13 08 a0 00  	addi	a6, zero, 10
80002300: 93 08 c1 02  	addi	a7, sp, 44
80002304: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002308: b3 37 a7 02  	mulhu	a5, a4, a0
8000230c: 93 d5 37 00  	srli	a1, a5, 3
80002310: b3 87 05 03  	mul	a5, a1, a6
80002314: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002318: 13 e6 07 03  	ori	a2, a5, 48
8000231c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002320: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002324: 13 0c 1c 00  	addi	s8, s8, 1
80002328: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000232c: 33 b6 e2 00  	sltu	a2, t0, a4
80002330: 33 f6 c7 00  	and	a2, a5, a2
80002334: 93 8d fd ff  	addi	s11, s11, -1
80002338: 13 04 f4 ff  	addi	s0, s0, -1
8000233c: 13 87 05 00  	mv	a4, a1
80002340: e3 14 06 fc  	bnez	a2, 0x80002308 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002344: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002348: 33 35 ac 00  	sltu	a0, s8, a0
8000234c: 13 45 15 00  	xori	a0, a0, 1
80002350: 93 c5 17 00  	xori	a1, a5, 1
80002354: 33 e5 a5 00  	or	a0, a1, a0
80002358: 63 12 05 04  	bnez	a0, 0x8000239c <.LBB5_58+0x1b0>
8000235c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002360: b3 85 8c 41  	sub	a1, s9, s8
80002364: 93 85 d5 ff  	addi	a1, a1, -3
80002368: 13 06 f0 01  	addi	a2, zero, 31
8000236c: 33 06 86 41  	sub	a2, a2, s8
80002370: 33 05 85 01  	add	a0, a0, s8
80002374: 63 e4 c5 00  	bltu	a1, a2, 0x8000237c <.LBB5_58+0x190>
80002378: 93 05 06 00  	mv	a1, a2
8000237c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002380: 93 05 00 03  	addi	a1, zero, 48
80002384: 97 e0 ff ff  	auipc	ra, 1048574
80002388: e7 80 40 1d  	jalr	468(ra)
;   if (flags & FLAGS_HASH) {
8000238c: 63 e4 8d 00  	bltu	s11, s0, 0x80002394 <.LBB5_58+0x1a8>
80002390: 93 0d 04 00  	mv	s11, s0
80002394: 33 85 8d 01  	add	a0, s11, s8
80002398: 13 0c 15 00  	addi	s8, a0, 1
8000239c: 83 2c c1 00  	lw	s9, 12(sp)
800023a0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800023a4: 63 60 85 03  	bltu	a0, s8, 0x800023c4 <.LBB5_58+0x1d8>
800023a8: 13 05 c1 02  	addi	a0, sp, 44
800023ac: 33 05 85 01  	add	a0, a0, s8
800023b0: 93 05 d0 02  	addi	a1, zero, 45
800023b4: 63 94 0a 00  	bnez	s5, 0x800023bc <.LBB5_58+0x1d0>
800023b8: 93 05 b0 02  	addi	a1, zero, 43
800023bc: 13 0c 1c 00  	addi	s8, s8, 1
800023c0: 23 00 b5 00  	sb	a1, 0(a0)
800023c4: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800023c8: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800023cc: 33 85 8a 01  	add	a0, s5, s8
800023d0: 03 45 05 00  	lbu	a0, 0(a0)
800023d4: 13 06 04 00  	mv	a2, s0
800023d8: 93 04 fc ff  	addi	s1, s8, -1
800023dc: 13 04 14 00  	addi	s0, s0, 1
800023e0: 93 05 0b 00  	mv	a1, s6
800023e4: 93 86 09 00  	mv	a3, s3
800023e8: e7 80 0b 00  	jalr	s7
800023ec: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800023f0: e3 9e 04 fc  	bnez	s1, 0x800023cc <.LBB5_58+0x1e0>
800023f4: 33 05 44 41  	sub	a0, s0, s4
800023f8: 33 35 25 01  	sltu	a0, a0, s2
800023fc: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002400: 93 c5 1c 00  	xori	a1, s9, 1
80002404: 33 e5 a5 00  	or	a0, a1, a0
80002408: 63 18 05 02  	bnez	a0, 0x80002438 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
8000240c: b3 04 40 41  	neg	s1, s4
80002410: 13 0d 14 00  	addi	s10, s0, 1
80002414: 13 05 00 02  	addi	a0, zero, 32
80002418: 93 05 0b 00  	mv	a1, s6
8000241c: 13 06 04 00  	mv	a2, s0
80002420: 93 86 09 00  	mv	a3, s3
80002424: e7 80 0b 00  	jalr	s7
80002428: 33 85 a4 01  	add	a0, s1, s10
8000242c: 13 04 0d 00  	mv	s0, s10
80002430: e3 60 25 ff  	bltu	a0, s2, 0x80002410 <.LBB5_58+0x224>
80002434: 6f 00 80 00  	j	0x8000243c <.LBB5_58+0x250>
80002438: 13 0d 04 00  	mv	s10, s0
; }
8000243c: 13 05 0d 00  	mv	a0, s10
80002440: 83 2d c1 04  	lw	s11, 76(sp)
80002444: 03 2d 01 05  	lw	s10, 80(sp)
80002448: 83 2c 41 05  	lw	s9, 84(sp)
8000244c: 03 2c 81 05  	lw	s8, 88(sp)
80002450: 83 2b c1 05  	lw	s7, 92(sp)
80002454: 03 2b 01 06  	lw	s6, 96(sp)
80002458: 83 2a 41 06  	lw	s5, 100(sp)
8000245c: 03 2a 81 06  	lw	s4, 104(sp)
80002460: 83 29 c1 06  	lw	s3, 108(sp)
80002464: 03 29 01 07  	lw	s2, 112(sp)
80002468: 83 24 41 07  	lw	s1, 116(sp)
8000246c: 03 24 81 07  	lw	s0, 120(sp)
80002470: 83 20 c1 07  	lw	ra, 124(sp)
80002474: 13 01 01 08  	addi	sp, sp, 128
80002478: 67 80 00 00  	ret

8000247c <_ntoa_format>:
; {
8000247c: 13 01 01 fc  	addi	sp, sp, -64
80002480: 23 2e 11 02  	sw	ra, 60(sp)
80002484: 23 2c 81 02  	sw	s0, 56(sp)
80002488: 23 2a 91 02  	sw	s1, 52(sp)
8000248c: 23 28 21 03  	sw	s2, 48(sp)
80002490: 23 26 31 03  	sw	s3, 44(sp)
80002494: 23 24 41 03  	sw	s4, 40(sp)
80002498: 23 22 51 03  	sw	s5, 36(sp)
8000249c: 23 20 61 03  	sw	s6, 32(sp)
800024a0: 23 2e 71 01  	sw	s7, 28(sp)
800024a4: 23 2c 81 01  	sw	s8, 24(sp)
800024a8: 23 2a 91 01  	sw	s9, 20(sp)
800024ac: 23 28 a1 01  	sw	s10, 16(sp)
800024b0: 23 26 b1 01  	sw	s11, 12(sp)
800024b4: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800024b8: 93 fa 2e 00  	andi	s5, t4, 2
800024bc: 13 09 0e 00  	mv	s2, t3
800024c0: 13 8d 03 00  	mv	s10, t2
800024c4: 93 8c 08 00  	mv	s9, a7
800024c8: 13 8c 07 00  	mv	s8, a5
800024cc: 93 89 06 00  	mv	s3, a3
800024d0: 13 0a 06 00  	mv	s4, a2
800024d4: 13 8b 05 00  	mv	s6, a1
800024d8: 93 0d 05 00  	mv	s11, a0
800024dc: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800024e0: 63 9e 0a 0c  	bnez	s5, 0x800025bc <_ntoa_format+0x140>
800024e4: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800024e8: 63 0e 09 00  	beqz	s2, 0x80002504 <_ntoa_format+0x88>
800024ec: 63 0e 04 00  	beqz	s0, 0x80002508 <_ntoa_format+0x8c>
800024f0: 13 f5 cb 00  	andi	a0, s7, 12
800024f4: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800024f8: 33 65 05 01  	or	a0, a0, a6
800024fc: 33 09 a9 40  	sub	s2, s2, a0
80002500: 6f 00 80 00  	j	0x80002508 <_ntoa_format+0x8c>
80002504: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002508: 33 35 ac 01  	sltu	a0, s8, s10
8000250c: 93 45 15 00  	xori	a1, a0, 1
80002510: 13 05 f0 01  	addi	a0, zero, 31
80002514: 33 36 85 01  	sltu	a2, a0, s8
80002518: b3 65 b6 00  	or	a1, a2, a1
8000251c: 63 94 05 04  	bnez	a1, 0x80002564 <_ntoa_format+0xe8>
80002520: 23 22 51 01  	sw	s5, 4(sp)
80002524: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002528: 93 45 fc ff  	not	a1, s8
8000252c: b3 85 a5 01  	add	a1, a1, s10
80002530: 33 06 85 41  	sub	a2, a0, s8
80002534: 33 05 87 01  	add	a0, a4, s8
80002538: 63 e4 c5 00  	bltu	a1, a2, 0x80002540 <_ntoa_format+0xc4>
8000253c: 93 05 06 00  	mv	a1, a2
80002540: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002544: 93 05 00 03  	addi	a1, zero, 48
80002548: 13 86 04 00  	mv	a2, s1
8000254c: 97 e0 ff ff  	auipc	ra, 1048574
80002550: e7 80 c0 00  	jalr	12(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002554: 33 8c 84 01  	add	s8, s1, s8
80002558: 03 27 81 00  	lw	a4, 8(sp)
8000255c: 13 88 0a 00  	mv	a6, s5
80002560: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002564: 63 0c 04 04  	beqz	s0, 0x800025bc <_ntoa_format+0x140>
80002568: 33 35 2c 01  	sltu	a0, s8, s2
8000256c: 93 45 15 00  	xori	a1, a0, 1
80002570: 13 05 f0 01  	addi	a0, zero, 31
80002574: 33 36 85 01  	sltu	a2, a0, s8
80002578: b3 e5 c5 00  	or	a1, a1, a2
8000257c: 63 90 05 04  	bnez	a1, 0x800025bc <_ntoa_format+0x140>
80002580: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002584: 93 45 fc ff  	not	a1, s8
80002588: b3 05 b9 00  	add	a1, s2, a1
8000258c: 33 06 85 41  	sub	a2, a0, s8
80002590: 33 05 87 01  	add	a0, a4, s8
80002594: 63 e4 c5 00  	bltu	a1, a2, 0x8000259c <_ntoa_format+0x120>
80002598: 93 05 06 00  	mv	a1, a2
8000259c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800025a0: 93 05 00 03  	addi	a1, zero, 48
800025a4: 13 86 04 00  	mv	a2, s1
800025a8: 97 e0 ff ff  	auipc	ra, 1048574
800025ac: e7 80 00 fb  	jalr	-80(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800025b0: 33 8c 84 01  	add	s8, s1, s8
800025b4: 03 27 81 00  	lw	a4, 8(sp)
800025b8: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800025bc: 13 f5 0b 01  	andi	a0, s7, 16
800025c0: 63 02 05 0e  	beqz	a0, 0x800026a4 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800025c4: 13 f5 0b 40  	andi	a0, s7, 1024
800025c8: 13 55 a5 00  	srli	a0, a0, 10
800025cc: 93 35 1c 00  	seqz	a1, s8
800025d0: 33 65 b5 00  	or	a0, a0, a1
800025d4: 63 1e 05 02  	bnez	a0, 0x80002610 <_ntoa_format+0x194>
800025d8: 33 45 ac 01  	xor	a0, s8, s10
800025dc: 33 35 a0 00  	snez	a0, a0
800025e0: b3 45 2c 01  	xor	a1, s8, s2
800025e4: b3 35 b0 00  	snez	a1, a1
800025e8: 33 75 b5 00  	and	a0, a0, a1
800025ec: 63 12 05 02  	bnez	a0, 0x80002610 <_ntoa_format+0x194>
;       len--;
800025f0: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800025f4: b3 35 a0 00  	snez	a1, a0
800025f8: 13 86 0c ff  	addi	a2, s9, -16
800025fc: 13 36 16 00  	seqz	a2, a2
80002600: b3 75 b6 00  	and	a1, a2, a1
80002604: 63 84 05 00  	beqz	a1, 0x8000260c <_ntoa_format+0x190>
80002608: 13 05 ec ff  	addi	a0, s8, -2
8000260c: 13 0c 05 00  	mv	s8, a0
80002610: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002614: 63 96 ac 02  	bne	s9, a0, 0x80002640 <_ntoa_format+0x1c4>
80002618: 13 f5 0b 02  	andi	a0, s7, 32
8000261c: 93 55 55 00  	srli	a1, a0, 5
80002620: 13 06 f0 01  	addi	a2, zero, 31
80002624: 33 36 86 01  	sltu	a2, a2, s8
80002628: b3 e5 c5 00  	or	a1, a1, a2
8000262c: 63 9e 05 02  	bnez	a1, 0x80002668 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002630: 33 05 87 01  	add	a0, a4, s8
80002634: 13 0c 1c 00  	addi	s8, s8, 1
80002638: 93 05 80 07  	addi	a1, zero, 120
8000263c: 6f 00 c0 04  	j	0x80002688 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002640: 13 85 ec ff  	addi	a0, s9, -2
80002644: 33 35 a0 00  	snez	a0, a0
80002648: 93 05 f0 01  	addi	a1, zero, 31
8000264c: b3 b5 85 01  	sltu	a1, a1, s8
80002650: 33 65 b5 00  	or	a0, a0, a1
80002654: 63 1c 05 02  	bnez	a0, 0x8000268c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002658: 33 05 87 01  	add	a0, a4, s8
8000265c: 13 0c 1c 00  	addi	s8, s8, 1
80002660: 93 05 20 06  	addi	a1, zero, 98
80002664: 6f 00 40 02  	j	0x80002688 <_ntoa_format+0x20c>
80002668: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000266c: 13 35 15 00  	seqz	a0, a0
80002670: 93 c5 15 00  	xori	a1, a1, 1
80002674: 33 65 b5 00  	or	a0, a0, a1
80002678: 63 1a 05 00  	bnez	a0, 0x8000268c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000267c: 33 05 87 01  	add	a0, a4, s8
80002680: 13 0c 1c 00  	addi	s8, s8, 1
80002684: 93 05 80 05  	addi	a1, zero, 88
80002688: 23 00 b5 00  	sb	a1, 0(a0)
8000268c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002690: 63 60 85 07  	bltu	a0, s8, 0x800026f0 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002694: 33 05 87 01  	add	a0, a4, s8
80002698: 13 0c 1c 00  	addi	s8, s8, 1
8000269c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800026a0: 23 00 b5 00  	sb	a1, 0(a0)
800026a4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800026a8: 63 64 85 05  	bltu	a0, s8, 0x800026f0 <_ntoa_format+0x274>
;     if (negative) {
800026ac: 63 0a 08 00  	beqz	a6, 0x800026c0 <_ntoa_format+0x244>
;       buf[len++] = '-';
800026b0: 33 05 87 01  	add	a0, a4, s8
800026b4: 13 0c 1c 00  	addi	s8, s8, 1
800026b8: 93 05 d0 02  	addi	a1, zero, 45
800026bc: 6f 00 00 03  	j	0x800026ec <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800026c0: 13 f5 4b 00  	andi	a0, s7, 4
800026c4: 63 1e 05 00  	bnez	a0, 0x800026e0 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800026c8: 13 f5 8b 00  	andi	a0, s7, 8
800026cc: 63 02 05 02  	beqz	a0, 0x800026f0 <_ntoa_format+0x274>
;       buf[len++] = ' ';
800026d0: 33 05 87 01  	add	a0, a4, s8
800026d4: 13 0c 1c 00  	addi	s8, s8, 1
800026d8: 93 05 00 02  	addi	a1, zero, 32
800026dc: 6f 00 00 01  	j	0x800026ec <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800026e0: 33 05 87 01  	add	a0, a4, s8
800026e4: 13 0c 1c 00  	addi	s8, s8, 1
800026e8: 93 05 b0 02  	addi	a1, zero, 43
800026ec: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800026f0: 13 f5 3b 00  	andi	a0, s7, 3
800026f4: 33 35 a0 00  	snez	a0, a0
800026f8: b3 35 2c 01  	sltu	a1, s8, s2
800026fc: 93 c5 15 00  	xori	a1, a1, 1
80002700: 33 65 b5 00  	or	a0, a0, a1
80002704: 13 04 0a 00  	mv	s0, s4
80002708: 63 16 05 02  	bnez	a0, 0x80002734 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
8000270c: b3 04 89 41  	sub	s1, s2, s8
80002710: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002714: 13 04 16 00  	addi	s0, a2, 1
80002718: 13 05 00 02  	addi	a0, zero, 32
8000271c: 93 05 0b 00  	mv	a1, s6
80002720: 93 86 09 00  	mv	a3, s3
80002724: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002728: 93 84 f4 ff  	addi	s1, s1, -1
8000272c: 13 06 04 00  	mv	a2, s0
80002730: e3 92 04 fe  	bnez	s1, 0x80002714 <_ntoa_format+0x298>
80002734: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002738: 63 0e 0c 02  	beqz	s8, 0x80002774 <_ntoa_format+0x2f8>
8000273c: 03 25 81 00  	lw	a0, 8(sp)
80002740: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002744: 33 85 8b 01  	add	a0, s7, s8
80002748: 03 45 05 00  	lbu	a0, 0(a0)
8000274c: 93 0c fc ff  	addi	s9, s8, -1
80002750: 93 04 14 00  	addi	s1, s0, 1
80002754: 93 05 0b 00  	mv	a1, s6
80002758: 13 06 04 00  	mv	a2, s0
8000275c: 93 86 09 00  	mv	a3, s3
80002760: e7 80 0d 00  	jalr	s11
80002764: 13 84 04 00  	mv	s0, s1
80002768: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
8000276c: e3 9c 0c fc  	bnez	s9, 0x80002744 <_ntoa_format+0x2c8>
80002770: 6f 00 80 00  	j	0x80002778 <_ntoa_format+0x2fc>
80002774: 93 04 04 00  	mv	s1, s0
80002778: 33 85 44 41  	sub	a0, s1, s4
8000277c: 33 35 25 01  	sltu	a0, a0, s2
80002780: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002784: 93 c5 1a 00  	xori	a1, s5, 1
80002788: 33 e5 a5 00  	or	a0, a1, a0
8000278c: 63 18 05 02  	bnez	a0, 0x800027bc <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002790: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002794: 13 84 14 00  	addi	s0, s1, 1
80002798: 13 05 00 02  	addi	a0, zero, 32
8000279c: 93 05 0b 00  	mv	a1, s6
800027a0: 13 86 04 00  	mv	a2, s1
800027a4: 93 86 09 00  	mv	a3, s3
800027a8: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800027ac: 33 05 8a 00  	add	a0, s4, s0
800027b0: 93 04 04 00  	mv	s1, s0
800027b4: e3 60 25 ff  	bltu	a0, s2, 0x80002794 <_ntoa_format+0x318>
800027b8: 6f 00 80 00  	j	0x800027c0 <_ntoa_format+0x344>
800027bc: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800027c0: 13 05 04 00  	mv	a0, s0
800027c4: 83 2d c1 00  	lw	s11, 12(sp)
800027c8: 03 2d 01 01  	lw	s10, 16(sp)
800027cc: 83 2c 41 01  	lw	s9, 20(sp)
800027d0: 03 2c 81 01  	lw	s8, 24(sp)
800027d4: 83 2b c1 01  	lw	s7, 28(sp)
800027d8: 03 2b 01 02  	lw	s6, 32(sp)
800027dc: 83 2a 41 02  	lw	s5, 36(sp)
800027e0: 03 2a 81 02  	lw	s4, 40(sp)
800027e4: 83 29 c1 02  	lw	s3, 44(sp)
800027e8: 03 29 01 03  	lw	s2, 48(sp)
800027ec: 83 24 41 03  	lw	s1, 52(sp)
800027f0: 03 24 81 03  	lw	s0, 56(sp)
800027f4: 83 20 c1 03  	lw	ra, 60(sp)
800027f8: 13 01 01 04  	addi	sp, sp, 64
800027fc: 67 80 00 00  	ret

80002800 <_snrt_init_team>:
;     team->base.root = team;
80002800: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002804: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002808: 03 23 87 00  	lw	t1, 8(a4)
8000280c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002810: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002814: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002818: 83 22 47 00  	lw	t0, 4(a4)
8000281c: 33 88 08 03  	mul	a6, a7, a6
80002820: 33 05 58 02  	mul	a0, a6, t0
80002824: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002828: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
8000282c: 33 85 68 40  	sub	a0, a7, t1
80002830: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002834: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002838: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
8000283c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002840: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002844: 03 25 87 01  	lw	a0, 24(a4)
80002848: b7 05 00 10  	lui	a1, 65536
8000284c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002850: 23 a2 07 02  	sw	zero, 36(a5)
80002854: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002858: 03 25 07 02  	lw	a0, 32(a4)
8000285c: 83 25 47 02  	lw	a1, 36(a4)
80002860: 23 a4 a7 02  	sw	a0, 40(a5)
80002864: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002868: 23 a8 c7 02  	sw	a2, 48(a5)
8000286c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002870: 23 ac d7 02  	sw	a3, 56(a5)
80002874: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002878: 03 25 07 01  	lw	a0, 16(a4)
8000287c: 33 08 a6 00  	add	a6, a2, a0
80002880: 93 05 08 19  	addi	a1, a6, 400
80002884: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002888: b3 32 a8 00  	sltu	t0, a6, a0
8000288c: 93 55 15 00  	srli	a1, a0, 1
80002890: 33 03 b8 00  	add	t1, a6, a1
80002894: b3 35 03 01  	sltu	a1, t1, a6
80002898: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
8000289c: 23 a0 67 04  	sw	t1, 64(a5)
800028a0: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800028a4: 13 15 15 00  	slli	a0, a0, 1
800028a8: b3 05 c5 00  	add	a1, a0, a2
800028ac: 33 b5 a5 00  	sltu	a0, a1, a0
800028b0: 23 a4 b7 04  	sw	a1, 72(a5)
800028b4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800028b8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800028bc: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800028c0: 37 05 00 00  	lui	a0, 0
800028c4: 33 05 45 00  	add	a0, a0, tp
800028c8: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800028cc: 03 a5 07 00  	lw	a0, 0(a5)
800028d0: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800028d4: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800028d8: b3 85 b8 40  	sub	a1, a7, a1
800028dc: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800028e0: b7 05 00 00  	lui	a1, 0
800028e4: b3 85 45 00  	add	a1, a1, tp
800028e8: 23 a2 a5 00  	sw	a0, 4(a1)
800028ec: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800028f0: 33 85 a8 02  	mul	a0, a7, a0

800028f4 <.LBB0_1>:
800028f4: 97 15 00 00  	auipc	a1, 1
800028f8: 93 85 05 97  	addi	a1, a1, -1680
800028fc: 33 05 b5 00  	add	a0, a0, a1
80002900: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002904: 83 28 07 03  	lw	a7, 48(a4)
80002908: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
8000290c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002910: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002914: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002918: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
8000291c: 13 05 76 00  	addi	a0, a2, 7
80002920: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002924: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002928: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
8000292c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002930: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002934: 03 a5 05 00  	lw	a0, 0(a1)
80002938: 13 05 f5 44  	addi	a0, a0, 1103
8000293c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002940: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002944: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002948: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
8000294c: 37 05 00 00  	lui	a0, 0
80002950: 33 05 45 00  	add	a0, a0, tp
80002954: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002958: 37 05 00 00  	lui	a0, 0
8000295c: 33 05 45 00  	add	a0, a0, tp
80002960: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002964: 67 80 00 00  	ret

80002968 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002968: 37 05 00 00  	lui	a0, 0
8000296c: 33 05 45 00  	add	a0, a0, tp
80002970: 03 25 05 00  	lw	a0, 0(a0)
80002974: 03 25 05 00  	lw	a0, 0(a0)
80002978: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000297c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002980: 33 85 a5 40  	sub	a0, a1, a0
80002984: 67 80 00 00  	ret

80002988 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002988: 37 05 00 00  	lui	a0, 0
8000298c: 33 05 45 00  	add	a0, a0, tp
80002990: 03 25 05 00  	lw	a0, 0(a0)
80002994: 03 25 05 00  	lw	a0, 0(a0)
80002998: 03 25 05 07  	lw	a0, 112(a0)
8000299c: 67 80 00 00  	ret

800029a0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800029a0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800029a4: 63 44 05 00  	bltz	a0, 0x800029ac <__snrt_isr+0xc>
;         while (1)
800029a8: 6f 00 00 00  	j	0x800029a8 <__snrt_isr+0x8>
800029ac: b7 05 00 80  	lui	a1, 524288
800029b0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800029b4: 33 75 b5 00  	and	a0, a0, a1
800029b8: 13 05 d5 ff  	addi	a0, a0, -3
800029bc: 93 55 25 00  	srli	a1, a0, 2
800029c0: 13 15 e5 01  	slli	a0, a0, 30
800029c4: 33 65 b5 00  	or	a0, a0, a1
800029c8: 93 05 40 00  	addi	a1, zero, 4
800029cc: 63 0a b5 06  	beq	a0, a1, 0x80002a40 <.LBB1_7+0x58>
800029d0: 63 1a 05 08  	bnez	a0, 0x80002a64 <.LBB1_7+0x7c>
800029d4: 37 05 00 00  	lui	a0, 0
800029d8: 33 05 45 00  	add	a0, a0, tp
800029dc: 03 25 05 00  	lw	a0, 0(a0)
800029e0: 03 25 05 00  	lw	a0, 0(a0)
800029e4: f3 25 40 f1  	csrr	a1, mhartid

800029e8 <.LBB1_7>:
;     asm volatile(
800029e8: 17 16 00 00  	auipc	a2, 1
800029ec: 13 06 86 87  	addi	a2, a2, -1928
800029f0: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800029f4: 93 06 06 00  	mv	a3, a2
800029f8: 93 02 10 00  	addi	t0, zero, 1
800029fc: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002a00: e3 9e 02 fe  	bnez	t0, 0x800029fc <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002a04: b7 06 00 00  	lui	a3, 0
80002a08: b3 86 46 00  	add	a3, a3, tp
80002a0c: 83 a6 86 00  	lw	a3, 8(a3)
80002a10: 33 85 a5 40  	sub	a0, a1, a0
80002a14: 93 55 35 00  	srli	a1, a0, 3
80002a18: 93 f5 c5 ff  	andi	a1, a1, -4
80002a1c: b3 85 b6 00  	add	a1, a3, a1
80002a20: 83 a6 05 00  	lw	a3, 0(a1)
80002a24: 13 07 10 00  	addi	a4, zero, 1
80002a28: 33 15 a7 00  	sll	a0, a4, a0
80002a2c: 13 45 f5 ff  	not	a0, a0
80002a30: 33 f5 a6 00  	and	a0, a3, a0
80002a34: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002a38: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002a3c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002a40: 37 05 00 00  	lui	a0, 0
80002a44: 33 05 45 00  	add	a0, a0, tp
80002a48: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002a4c: b7 05 00 00  	lui	a1, 0
80002a50: b3 85 45 00  	add	a1, a1, tp
80002a54: 83 a5 c5 00  	lw	a1, 12(a1)
80002a58: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002a5c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002a60: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002a64: 67 80 00 00  	ret

Disassembly of section .init:

80002a70 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002a70: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002a74: 93 81 81 f1  	addi	gp, gp, -232

80002a78 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002a78: 97 00 00 00  	auipc	ra, 0
80002a7c: e7 80 40 3c  	jalr	964(ra)

80002a80 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002a80: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002a84: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002a88: 97 00 00 00  	auipc	ra, 0
80002a8c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002a90: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002a94: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002a98: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002a9c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002aa0: 63 92 02 02  	bnez	t0, 0x80002ac4 <snrt.crt0.init_registers>

80002aa4 <.Lpcrel_hi0>:
;     la        t0, _edata
80002aa4: 97 02 00 00  	auipc	t0, 0
80002aa8: 93 82 c2 7b  	addi	t0, t0, 1980

80002aac <.Lpcrel_hi1>:
;     la        t1, _end
80002aac: 17 03 00 00  	auipc	t1, 0
80002ab0: 13 03 83 7b  	addi	t1, t1, 1976
;     bge       t0, t1, 2f
80002ab4: 63 d8 62 00  	bge	t0, t1, 0x80002ac4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002ab8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002abc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002ac0: e3 cc 62 fe  	blt	t0, t1, 0x80002ab8 <.Lpcrel_hi1+0xc>

80002ac4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002ac4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002ac8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002acc: 63 82 02 08  	beqz	t0, 0x80002b50 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002ad0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002ad4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002ad8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002adc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002ae0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002ae4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002ae8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002aec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002af0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002af4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002af8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002afc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002b00: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002b04: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002b08: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002b0c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002b10: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002b14: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002b18: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002b1c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002b20: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002b24: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002b28: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002b2c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002b30: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002b34: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002b38: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002b3c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002b40: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002b44: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002b48: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002b4c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002b50 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002b50: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002b54: 23 a0 06 00  	sw	zero, 0(a3)

80002b58 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002b58: 97 02 00 00  	auipc	t0, 0
80002b5c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80002b60: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002b64: 93 87 06 00  	mv	a5, a3

80002b68 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002b68: 97 03 00 00  	auipc	t2, 0
80002b6c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80002b70: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002b74: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002b78: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002b7c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002b80: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002b84: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002b88: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002b8c: b3 86 66 40  	sub	a3, a3, t1

80002b90 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002b90: 97 02 00 00  	auipc	t0, 0
80002b94: 93 82 82 5f  	addi	t0, t0, 1528

80002b98 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002b98: 17 03 00 00  	auipc	t1, 0
80002b9c: 13 03 03 5f  	addi	t1, t1, 1520

80002ba0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002ba0: 97 03 00 00  	auipc	t2, 0
80002ba4: 93 83 83 5e  	addi	t2, t2, 1512

80002ba8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002ba8: 17 0e 00 00  	auipc	t3, 0
80002bac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002bb0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002bb4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002bb8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002bbc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002bc0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002bc4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002bc8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002bcc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002bd0: 63 dc 62 00  	bge	t0, t1, 0x80002be8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002bd4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002bd8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002bdc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002be0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002be4: e3 c8 62 fe  	blt	t0, t1, 0x80002bd4 <.Lpcrel_hi7+0x2c>

80002be8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002be8: 97 02 00 00  	auipc	t0, 0
80002bec: 93 82 02 5a  	addi	t0, t0, 1440

80002bf0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002bf0: 17 03 00 00  	auipc	t1, 0
80002bf4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80002bf8: 63 da 62 00  	bge	t0, t1, 0x80002c0c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002bfc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002c00: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002c04: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002c08: e3 ca 72 fe  	blt	t0, t2, 0x80002bfc <.Lpcrel_hi9+0xc>

80002c0c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002c0c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002c10: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002c14: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002c18: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002c1c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002c20: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002c24: 97 00 00 00  	auipc	ra, 0
80002c28: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
80002c2c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002c30: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002c34: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002c38: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002c3c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002c40: 13 01 41 01  	addi	sp, sp, 20

80002c44 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002c44: 97 02 00 00  	auipc	t0, 0
80002c48: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002c4c: 73 90 52 30  	csrw	mtvec, t0

80002c50 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002c50: 97 00 00 00  	auipc	ra, 0
80002c54: e7 80 00 22  	jalr	544(ra)

80002c58 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002c58: 97 e0 ff ff  	auipc	ra, 1048574
80002c5c: e7 80 c0 9d  	jalr	-1572(ra)
;     mv        s0, a0 # store return value in s0
80002c60: 13 04 05 00  	mv	s0, a0

80002c64 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002c64: 97 00 00 00  	auipc	ra, 0
80002c68: e7 80 c0 20  	jalr	524(ra)

80002c6c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002c6c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002c70: 97 00 00 00  	auipc	ra, 0
80002c74: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002c78: 73 00 50 10  	wfi	
;     j       1b
80002c7c: 6f f0 df ff  	j	0x80002c78 <snrt.crt0.end+0xc>

80002c80 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002c80: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002c84: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002c88: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002c8c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002c90: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002c94: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002c98: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002c9c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002ca0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002ca4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002ca8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002cac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002cb0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002cb4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002cb8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002cbc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002cc0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002cc4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002cc8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002ccc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002cd0: 63 84 02 08  	beqz	t0, 0x80002d58 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002cd4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002cd8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002cdc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002ce0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002ce4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002ce8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002cec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002cf0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002cf4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002cf8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002cfc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002d00: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002d04: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002d08: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002d0c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002d10: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002d14: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002d18: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002d1c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002d20: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002d24: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002d28: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002d2c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002d30: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002d34: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002d38: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002d3c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002d40: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002d44: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002d48: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002d4c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002d50: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002d54: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002d58: 97 00 00 00  	auipc	ra, 0
80002d5c: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80002d60: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002d64: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002d68: 63 84 02 08  	beqz	t0, 0x80002df0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002d6c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002d70: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002d74: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002d78: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002d7c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002d80: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002d84: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002d88: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002d8c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002d90: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002d94: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002d98: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002d9c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002da0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002da4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002da8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002dac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80002db0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80002db4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80002db8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80002dbc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80002dc0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80002dc4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80002dc8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80002dcc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80002dd0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80002dd4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80002dd8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80002ddc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80002de0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80002de4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80002de8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80002dec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80002df0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80002df4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80002df8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80002dfc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80002e00: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80002e04: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80002e08: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80002e0c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80002e10: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80002e14: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80002e18: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80002e1c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80002e20: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80002e24: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80002e28: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80002e2c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80002e30: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80002e34: 13 01 01 05  	addi	sp, sp, 80
;     mret
80002e38: 73 00 20 30  	mret	

80002e3c <_snrt_init_core_info>:
;     mv        a4, a1
80002e3c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80002e40: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80002e44: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80002e48: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80002e4c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80002e50: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80002e54: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80002e58: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80002e5c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80002e60: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80002e64: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80002e68: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80002e6c: 67 80 00 00  	ret

80002e70 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80002e70: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80002e74: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80002e78: 97 00 00 00  	auipc	ra, 0
80002e7c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80002e80: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80002e84: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80002e88: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80002e8c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80002e90: 67 80 00 00  	ret

80002e94 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80002e94: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80002e98: 67 80 00 00  	ret

80002e9c <_snrt_exit>:
;     addi      sp, sp, -8
80002e9c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80002ea0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80002ea4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80002ea8: 97 00 00 00  	auipc	ra, 0
80002eac: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80002eb0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80002eb4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80002eb8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80002ebc: 63 1c 05 00  	bnez	a0, 0x80002ed4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80002ec0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80002ec4: 93 e2 12 00  	ori	t0, t0, 1

80002ec8 <.Lpcrel_hi11>:
;     la        t1, tohost
80002ec8: 17 03 00 00  	auipc	t1, 0
80002ecc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80002ed0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80002ed4: 67 80 00 00  	ret
