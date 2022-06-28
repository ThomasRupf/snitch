
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET--mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002cb4 80000000 TEXT
  2 .init             00000468 80002cc0 TEXT
  3 .rodata           00000238 80003128 DATA
  4 .htif             00000048 80003380 DATA
  5 .tdata            00000000 800033c8 DATA
  6 .tbss             00000010 800033c8 BSS
  7 .tbssend          00000000 800033d8 DATA
  8 .sdata            000000c0 800033d8 DATA
  9 .data             00000000 80003498 DATA
 10 .sbss             00000004 80003498 BSS
 11 .bss              00000000 8000349c BSS
 12 .dram             00000000 8000349c DATA
 13 .debug_info       00003466 00000000 
 14 .debug_abbrev     00000c79 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002cab 00000000 
 17 .debug_loc        00002e4f 00000000 
 18 .debug_ranges     00000430 00000000 
 19 .debug_str        00000b31 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002dc 00000000 
 23 .symtab           00003170 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000090b 00000000 


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
80000644: 23 28 21 01  	sw	s2, 16(sp)
80000648: 27 34 81 00  	fsd	fs0, 8(sp)
8000064c: 37 05 00 00  	lui	a0, 0
80000650: 33 05 45 00  	add	a0, a0, tp
80000654: 83 25 45 00  	lw	a1, 4(a0)
80000658: 13 05 00 00  	mv	a0, zero
;     if (snrt_cluster_compute_core_idx() != 0u) {
8000065c: 63 9a 05 3e  	bnez	a1, 0x80000a50 <.LBB0_35+0x10>
;     return _snrt_team_current->root;
80000660: 37 05 00 00  	lui	a0, 0
80000664: 33 05 45 00  	add	a0, a0, tp
80000668: 03 25 05 00  	lw	a0, 0(a0)
8000066c: 03 25 05 00  	lw	a0, 0(a0)
80000670: b7 25 00 00  	lui	a1, 2
;     if (alloc->next + size > alloc->base + alloc->size) {
80000674: 03 24 85 05  	lw	s0, 88(a0)
80000678: 03 27 05 05  	lw	a4, 80(a0)
8000067c: 83 27 45 05  	lw	a5, 84(a0)
80000680: 93 86 05 0d  	addi	a3, a1, 208
80000684: b3 05 d4 00  	add	a1, s0, a3
80000688: 13 86 05 4b  	addi	a2, a1, 1200
8000068c: 33 87 e7 00  	add	a4, a5, a4
80000690: 63 76 c7 00  	bgeu	a4, a2, 0x8000069c <main+0x68>
80000694: 93 05 00 00  	mv	a1, zero
80000698: 6f 00 00 01  	j	0x800006a8 <main+0x74>
;     void *ret = (void *)alloc->next;
8000069c: 93 05 04 00  	mv	a1, s0
;     alloc->next += size;
800006a0: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006a4: 13 04 06 00  	mv	s0, a2
800006a8: 37 36 00 00  	lui	a2, 3
800006ac: 13 06 06 bc  	addi	a2, a2, -1088
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b0: b3 07 c4 00  	add	a5, s0, a2
800006b4: 63 7c f7 00  	bgeu	a4, a5, 0x800006cc <main+0x98>
800006b8: 13 06 00 00  	mv	a2, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800006bc: b3 06 d4 00  	add	a3, s0, a3
800006c0: 63 60 d7 02  	bltu	a4, a3, 0x800006e0 <main+0xac>
;     alloc->next += size;
800006c4: 23 2c d5 04  	sw	a3, 88(a0)
800006c8: 6f 00 c0 01  	j	0x800006e4 <main+0xb0>
;     void *ret = (void *)alloc->next;
800006cc: 13 06 04 00  	mv	a2, s0
;     alloc->next += size;
800006d0: 23 2c f5 04  	sw	a5, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d4: 13 84 07 00  	mv	s0, a5
800006d8: b3 06 d4 00  	add	a3, s0, a3
800006dc: e3 74 d7 fe  	bgeu	a4, a3, 0x800006c4 <main+0x90>
800006e0: 13 04 00 00  	mv	s0, zero
;     for (uint32_t i = 0; i < n; i++){
800006e4: 13 d5 45 01  	srli	a0, a1, 20
800006e8: 33 35 a0 00  	snez	a0, a0
800006ec: b7 e6 11 00  	lui	a3, 286
800006f0: 93 86 96 a8  	addi	a3, a3, -1399
800006f4: b3 b6 d5 00  	sltu	a3, a1, a3
800006f8: 33 75 d5 00  	and	a0, a0, a3

800006fc <.LBB0_31>:
800006fc: 17 38 00 00  	auipc	a6, 3
80000700: 13 08 c8 cd  	addi	a6, a6, -804
80000704: 93 06 00 00  	mv	a3, zero
80000708: 63 0c 05 06  	beqz	a0, 0x80000780 <.LBB0_31+0x84>
8000070c: 13 05 80 00  	addi	a0, zero, 8
80000710: 13 07 f0 4a  	addi	a4, zero, 1199
;     for (uint32_t i = 0; i < n; i++){
80000714: 93 07 00 04  	addi	a5, zero, 64
80000718: 93 04 00 0c  	addi	s1, zero, 192
8000071c: ab 20 f7 00  	scfgw	a4, a5
80000720: ab 20 95 00  	scfgw	a0, s1
80000724: 13 05 00 02  	addi	a0, zero, 32
80000728: ab 20 a0 00  	scfgw	zero, a0
8000072c: 2b a0 05 38  	scfgwi	a1, 896
80000730: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000734: 13 07 00 4b  	addi	a4, zero, 1200
80000738: 93 07 10 00  	addi	a5, zero, 1
8000073c: 87 31 08 00  	fld	ft3, 0(a6)
80000740: 37 d5 cc cc  	lui	a0, 838861
80000744: 93 04 d5 cc  	addi	s1, a0, -819
80000748: 93 08 40 01  	addi	a7, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
8000074c: 33 b5 96 02  	mulhu	a0, a3, s1
80000750: 13 55 45 00  	srli	a0, a0, 4
80000754: 33 05 15 03  	mul	a0, a0, a7
80000758: 33 85 a7 40  	sub	a0, a5, a0
8000075c: 53 02 15 d2  	fcvt.d.wu	ft4, a0
80000760: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000764: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
80000768: 93 86 16 00  	addi	a3, a3, 1
8000076c: 13 07 f7 ff  	addi	a4, a4, -1
80000770: 93 87 17 00  	addi	a5, a5, 1
80000774: e3 1c 07 fc  	bnez	a4, 0x8000074c <.LBB0_31+0x50>
80000778: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000077c: 6f 00 00 05  	j	0x800007cc <.LBB0_31+0xd0>
80000780: 13 07 00 4b  	addi	a4, zero, 1200
80000784: 93 07 10 00  	addi	a5, zero, 1
80000788: 87 31 08 00  	fld	ft3, 0(a6)
8000078c: 37 d5 cc cc  	lui	a0, 838861
80000790: 93 02 d5 cc  	addi	t0, a0, -819
80000794: 93 08 40 01  	addi	a7, zero, 20
80000798: 93 84 05 00  	mv	s1, a1
;         p[i] = (double)(seed + i % 20) * 3.141;
8000079c: 33 b5 56 02  	mulhu	a0, a3, t0
800007a0: 13 55 45 00  	srli	a0, a0, 4
800007a4: 33 05 15 03  	mul	a0, a0, a7
800007a8: 33 85 a7 40  	sub	a0, a5, a0
800007ac: 53 02 15 d2  	fcvt.d.wu	ft4, a0
800007b0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800007b4: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (uint32_t i = 0; i < n; i++){
800007b8: 93 86 16 00  	addi	a3, a3, 1
800007bc: 13 07 f7 ff  	addi	a4, a4, -1
800007c0: 93 84 84 00  	addi	s1, s1, 8
800007c4: 93 87 17 00  	addi	a5, a5, 1
800007c8: e3 1a 07 fc  	bnez	a4, 0x8000079c <.LBB0_31+0xa0>
800007cc: 13 55 46 01  	srli	a0, a2, 20
800007d0: 33 35 a0 00  	snez	a0, a0
800007d4: b7 d6 11 00  	lui	a3, 285
800007d8: 93 86 96 44  	addi	a3, a3, 1097
800007dc: b3 36 d6 00  	sltu	a3, a2, a3
800007e0: 33 75 d5 00  	and	a0, a0, a3
800007e4: 63 0e 05 06  	beqz	a0, 0x80000860 <.LBB0_31+0x164>
800007e8: 93 06 00 00  	mv	a3, zero
800007ec: 13 05 80 00  	addi	a0, zero, 8
800007f0: 13 07 70 57  	addi	a4, zero, 1399
;     for (uint32_t i = 0; i < n; i++){
800007f4: 93 07 00 04  	addi	a5, zero, 64
800007f8: ab 20 f7 00  	scfgw	a4, a5
800007fc: 13 07 00 0c  	addi	a4, zero, 192
80000800: ab 20 e5 00  	scfgw	a0, a4
80000804: 13 05 00 02  	addi	a0, zero, 32
80000808: ab 20 a0 00  	scfgw	zero, a0
8000080c: 2b 20 06 38  	scfgwi	a2, 896
80000810: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000814: 13 07 80 57  	addi	a4, zero, 1400
80000818: 93 07 10 00  	addi	a5, zero, 1
8000081c: 87 31 08 00  	fld	ft3, 0(a6)
80000820: 37 d5 cc cc  	lui	a0, 838861
80000824: 13 05 d5 cc  	addi	a0, a0, -819
80000828: 13 08 40 01  	addi	a6, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
8000082c: b3 b4 a6 02  	mulhu	s1, a3, a0
80000830: 93 d4 44 00  	srli	s1, s1, 4
80000834: b3 84 04 03  	mul	s1, s1, a6
80000838: b3 84 97 40  	sub	s1, a5, s1
8000083c: 53 82 14 d2  	fcvt.d.wu	ft4, s1
80000840: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000844: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
80000848: 93 86 16 00  	addi	a3, a3, 1
8000084c: 13 07 f7 ff  	addi	a4, a4, -1
80000850: 93 87 17 00  	addi	a5, a5, 1
80000854: e3 1c 07 fc  	bnez	a4, 0x8000082c <.LBB0_31+0x130>
80000858: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000085c: 6f 00 40 05  	j	0x800008b0 <.LBB0_31+0x1b4>
80000860: 93 06 00 00  	mv	a3, zero
80000864: 13 07 80 57  	addi	a4, zero, 1400
80000868: 93 07 10 00  	addi	a5, zero, 1
8000086c: 87 31 08 00  	fld	ft3, 0(a6)
80000870: 37 d5 cc cc  	lui	a0, 838861
80000874: 93 08 d5 cc  	addi	a7, a0, -819
80000878: 13 08 40 01  	addi	a6, zero, 20
8000087c: 93 04 06 00  	mv	s1, a2
;         p[i] = (double)(seed + i % 20) * 3.141;
80000880: 33 b5 16 03  	mulhu	a0, a3, a7
80000884: 13 55 45 00  	srli	a0, a0, 4
80000888: 33 05 05 03  	mul	a0, a0, a6
8000088c: 33 85 a7 40  	sub	a0, a5, a0
80000890: 53 02 15 d2  	fcvt.d.wu	ft4, a0
80000894: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000898: 27 b0 44 00  	fsd	ft4, 0(s1)
;     for (uint32_t i = 0; i < n; i++){
8000089c: 93 86 16 00  	addi	a3, a3, 1
800008a0: 13 07 f7 ff  	addi	a4, a4, -1
800008a4: 93 84 84 00  	addi	s1, s1, 8
800008a8: 93 87 17 00  	addi	a5, a5, 1
800008ac: e3 1a 07 fc  	bnez	a4, 0x80000880 <.LBB0_31+0x184>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800008b0: 73 29 00 b0  	csrr	s2, mcycle
;     matmul(c, a, b, n, p, m);
800008b4: 93 06 e0 01  	addi	a3, zero, 30
800008b8: 13 07 80 02  	addi	a4, zero, 40
800008bc: 93 07 30 02  	addi	a5, zero, 35
800008c0: 93 04 e0 01  	addi	s1, zero, 30
800008c4: 13 05 04 00  	mv	a0, s0
800008c8: 97 20 00 00  	auipc	ra, 2
800008cc: e7 80 00 06  	jalr	96(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800008d0: 73 25 00 b0  	csrr	a0, mcycle
;     printf("cycles = %lu\n", end - start);
800008d4: b3 05 25 41  	sub	a1, a0, s2

800008d8 <.LBB0_32>:
800008d8: 17 35 00 00  	auipc	a0, 3
800008dc: 13 05 95 86  	addi	a0, a0, -1943
800008e0: 97 00 00 00  	auipc	ra, 0
800008e4: e7 80 c0 18  	jalr	396(ra)
;     for (int i = 0; i < n; i++){
800008e8: 13 55 44 01  	srli	a0, s0, 20
800008ec: 33 35 a0 00  	snez	a0, a0
800008f0: b7 e5 11 00  	lui	a1, 286
800008f4: 93 85 95 f3  	addi	a1, a1, -199
800008f8: b3 35 b4 00  	sltu	a1, s0, a1
800008fc: 33 75 b5 00  	and	a0, a0, a1
80000900: 63 00 05 0e  	beqz	a0, 0x800009e0 <.LBB0_32+0x108>
80000904: 13 05 80 00  	addi	a0, zero, 8
80000908: 93 05 20 02  	addi	a1, zero, 34
;     for (int i = 0; i < n; i++){
8000090c: 13 06 00 04  	addi	a2, zero, 64
80000910: 93 06 00 0c  	addi	a3, zero, 192
80000914: ab a0 c5 00  	scfgw	a1, a2
80000918: ab 20 d5 00  	scfgw	a0, a3
8000091c: 93 05 d0 01  	addi	a1, zero, 29
80000920: 13 06 00 06  	addi	a2, zero, 96
80000924: 93 06 00 0e  	addi	a3, zero, 224
80000928: ab a0 c5 00  	scfgw	a1, a2
8000092c: ab 20 d5 00  	scfgw	a0, a3
80000930: 13 05 00 02  	addi	a0, zero, 32
80000934: ab 20 a0 00  	scfgw	zero, a0
80000938: 2b 20 04 32  	scfgwi	s0, 800
8000093c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000940: d3 01 00 d2  	fcvt.d.w	ft3, zero
;             r += A[i * m + j];
80000944: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000948: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000094c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000950: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000954: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000958: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000095c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000960: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000964: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000968: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000096c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000970: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000974: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000978: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000097c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000980: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000984: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000988: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000098c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000990: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000994: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80000998: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000099c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009a4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009a8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009ac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009b0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009b4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009b8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009bc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009c0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009c4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800009c8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800009cc: 93 84 f4 ff  	addi	s1, s1, -1
;             r += A[i * m + j];
800009d0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800009d4: e3 98 04 f6  	bnez	s1, 0x80000944 <.LBB0_32+0x6c>
800009d8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009dc: 6f 00 40 03  	j	0x80000a10 <.LBB0_33>
800009e0: 13 05 00 00  	mv	a0, zero
800009e4: d3 01 00 d2  	fcvt.d.w	ft3, zero
800009e8: 93 05 80 11  	addi	a1, zero, 280
800009ec: 13 06 00 00  	mv	a2, zero
;             r += A[i * m + j];
800009f0: b3 06 c4 00  	add	a3, s0, a2
800009f4: 07 b2 06 00  	fld	ft4, 0(a3)
;         for (int j = 0; j < m; j++){
800009f8: 13 06 86 00  	addi	a2, a2, 8
;             r += A[i * m + j];
800009fc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000a00: e3 18 b6 fe  	bne	a2, a1, 0x800009f0 <.LBB0_32+0x118>
;     for (int i = 0; i < n; i++){
80000a04: 13 05 15 00  	addi	a0, a0, 1
80000a08: 13 04 84 11  	addi	s0, s0, 280
80000a0c: e3 10 95 fe  	bne	a0, s1, 0x800009ec <.LBB0_32+0x114>

80000a10 <.LBB0_33>:
80000a10: 17 35 00 00  	auipc	a0, 3
80000a14: 13 05 05 9d  	addi	a0, a0, -1584
80000a18: 07 32 05 00  	fld	ft4, 0(a0)
;     double error = r - r_true;
80000a1c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;     error = error < 0.0 ? -error : error;
80000a20: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
80000a24: 27 30 81 00  	fsd	fs0, 0(sp)
80000a28: 03 26 01 00  	lw	a2, 0(sp)
80000a2c: 83 26 41 00  	lw	a3, 4(sp)

80000a30 <.LBB0_34>:
80000a30: 17 25 00 00  	auipc	a0, 2
80000a34: 13 05 55 70  	addi	a0, a0, 1797
80000a38: 97 00 00 00  	auipc	ra, 0
80000a3c: e7 80 40 03  	jalr	52(ra)

80000a40 <.LBB0_35>:
80000a40: 17 35 00 00  	auipc	a0, 3
80000a44: 13 05 85 9a  	addi	a0, a0, -1624
80000a48: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001;
80000a4c: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80000a50: 07 34 81 00  	fld	fs0, 8(sp)
80000a54: 03 29 01 01  	lw	s2, 16(sp)
80000a58: 83 24 41 01  	lw	s1, 20(sp)
80000a5c: 03 24 81 01  	lw	s0, 24(sp)
80000a60: 83 20 c1 01  	lw	ra, 28(sp)
80000a64: 13 01 01 02  	addi	sp, sp, 32
80000a68: 67 80 00 00  	ret

80000a6c <printf_>:
; {
80000a6c: 13 01 01 fd  	addi	sp, sp, -48
80000a70: 23 26 11 00  	sw	ra, 12(sp)
80000a74: 93 02 05 00  	mv	t0, a0
80000a78: 23 26 11 03  	sw	a7, 44(sp)
80000a7c: 23 24 01 03  	sw	a6, 40(sp)
80000a80: 23 22 f1 02  	sw	a5, 36(sp)
80000a84: 23 20 e1 02  	sw	a4, 32(sp)
80000a88: 23 2e d1 00  	sw	a3, 28(sp)
80000a8c: 23 2c c1 00  	sw	a2, 24(sp)
80000a90: 23 2a b1 00  	sw	a1, 20(sp)
80000a94: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000a98: 23 24 a1 00  	sw	a0, 8(sp)

80000a9c <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000a9c: 17 15 00 00  	auipc	a0, 1
80000aa0: 13 05 45 c2  	addi	a0, a0, -988
80000aa4: 93 05 71 00  	addi	a1, sp, 7
80000aa8: 13 06 f0 ff  	addi	a2, zero, -1
80000aac: 13 07 41 01  	addi	a4, sp, 20
80000ab0: 93 86 02 00  	mv	a3, t0
80000ab4: 97 00 00 00  	auipc	ra, 0
80000ab8: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000abc: 83 20 c1 00  	lw	ra, 12(sp)
80000ac0: 13 01 01 03  	addi	sp, sp, 48
80000ac4: 67 80 00 00  	ret

80000ac8 <_vsnprintf.llvm.17592004524093383706>:
; {
80000ac8: 13 01 01 f9  	addi	sp, sp, -112
80000acc: 23 26 11 06  	sw	ra, 108(sp)
80000ad0: 23 24 81 06  	sw	s0, 104(sp)
80000ad4: 23 22 91 06  	sw	s1, 100(sp)
80000ad8: 23 20 21 07  	sw	s2, 96(sp)
80000adc: 23 2e 31 05  	sw	s3, 92(sp)
80000ae0: 23 2c 41 05  	sw	s4, 88(sp)
80000ae4: 23 2a 51 05  	sw	s5, 84(sp)
80000ae8: 23 28 61 05  	sw	s6, 80(sp)
80000aec: 23 26 71 05  	sw	s7, 76(sp)
80000af0: 23 24 81 05  	sw	s8, 72(sp)
80000af4: 23 22 91 05  	sw	s9, 68(sp)
80000af8: 23 20 a1 05  	sw	s10, 64(sp)
80000afc: 23 2e b1 03  	sw	s11, 60(sp)
80000b00: 93 09 07 00  	mv	s3, a4
80000b04: 13 84 06 00  	mv	s0, a3
80000b08: 93 0a 06 00  	mv	s5, a2
80000b0c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000b10: 63 86 05 00  	beqz	a1, 0x80000b1c <.LBB1_183>
80000b14: 13 09 05 00  	mv	s2, a0
80000b18: 6f 00 c0 00  	j	0x80000b24 <.LBB1_183+0x8>

80000b1c <.LBB1_183>:
80000b1c: 17 19 00 00  	auipc	s2, 1
80000b20: 13 09 09 c5  	addi	s2, s2, -944
80000b24: 13 0c 00 00  	mv	s8, zero
80000b28: 13 0b 50 02  	addi	s6, zero, 37
80000b2c: 93 0d 00 01  	addi	s11, zero, 16
80000b30: 93 0b e0 02  	addi	s7, zero, 46
80000b34: 37 15 00 00  	lui	a0, 1
80000b38: 13 05 05 80  	addi	a0, a0, -2048
80000b3c: 23 2c a1 00  	sw	a0, 24(sp)
80000b40: 37 05 01 00  	lui	a0, 16
80000b44: 13 05 f5 ff  	addi	a0, a0, -1
80000b48: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000b4c: 13 0d 24 00  	addi	s10, s0, 2
80000b50: 93 0c 0c 00  	mv	s9, s8
80000b54: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000b58: 03 45 04 00  	lbu	a0, 0(s0)
80000b5c: e3 04 05 30  	beqz	a0, 0x80001664 <.LBB1_124+0x3b0>
80000b60: 63 08 65 03  	beq	a0, s6, 0x80000b90 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000b64: 93 84 1c 00  	addi	s1, s9, 1
80000b68: 93 05 0a 00  	mv	a1, s4
80000b6c: 13 86 0c 00  	mv	a2, s9
80000b70: 93 86 0a 00  	mv	a3, s5
80000b74: e7 00 09 00  	jalr	s2
;       format++;
80000b78: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000b7c: 13 0d 1d 00  	addi	s10, s10, 1
80000b80: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000b84: 03 45 04 00  	lbu	a0, 0(s0)
80000b88: e3 1c 05 fc  	bnez	a0, 0x80000b60 <.LBB1_183+0x44>
80000b8c: 6f 00 90 2d  	j	0x80001664 <.LBB1_124+0x3b0>
;     flags = 0U;
80000b90: 13 04 00 00  	mv	s0, zero
80000b94: 6f 00 00 01  	j	0x80000ba4 <.LBB1_9+0x8>

80000b98 <.LBB1_8>:
80000b98: 93 05 00 01  	addi	a1, zero, 16

80000b9c <.LBB1_9>:
80000b9c: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000ba0: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000ba4: 03 45 fd ff  	lbu	a0, -1(s10)
80000ba8: 93 05 05 fe  	addi	a1, a0, -32
80000bac: 63 ec bd 02  	bltu	s11, a1, 0x80000be4 <.LBB1_15>
80000bb0: 93 95 25 00  	slli	a1, a1, 2

80000bb4 <.LBB1_184>:
80000bb4: 17 26 00 00  	auipc	a2, 2
80000bb8: 13 06 06 5a  	addi	a2, a2, 1440
80000bbc: b3 85 c5 00  	add	a1, a1, a2
80000bc0: 03 a6 05 00  	lw	a2, 0(a1)
80000bc4: 93 05 10 00  	addi	a1, zero, 1
80000bc8: 67 00 06 00  	jr	a2

80000bcc <.LBB1_12>:
80000bcc: 93 05 80 00  	addi	a1, zero, 8
80000bd0: 6f f0 df fc  	j	0x80000b9c <.LBB1_9>

80000bd4 <.LBB1_13>:
80000bd4: 93 05 40 00  	addi	a1, zero, 4
80000bd8: 6f f0 5f fc  	j	0x80000b9c <.LBB1_9>

80000bdc <.LBB1_14>:
80000bdc: 93 05 20 00  	addi	a1, zero, 2
80000be0: 6f f0 df fb  	j	0x80000b9c <.LBB1_9>

80000be4 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000be4: 93 05 05 fd  	addi	a1, a0, -48
80000be8: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000bec: 93 05 fd ff  	addi	a1, s10, -1
80000bf0: 93 06 90 00  	addi	a3, zero, 9
80000bf4: 63 ee c6 06  	bltu	a3, a2, 0x80000c70 <.LBB1_15+0x8c>
80000bf8: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000bfc: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000c00: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000c04: b3 06 8b 03  	mul	a3, s6, s8
80000c08: 93 85 15 00  	addi	a1, a1, 1
80000c0c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000c10: 93 06 05 fd  	addi	a3, a0, -48
80000c14: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000c18: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000c1c: e3 e0 86 ff  	bltu	a3, s8, 0x80000bfc <.LBB1_15+0x18>
80000c20: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000c24: 63 16 75 0b  	bne	a0, s7, 0x80000cd0 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80000c28: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000c2c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80000c30: 93 05 05 fd  	addi	a1, a0, -48
80000c34: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80000c38: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000c3c: 93 06 90 00  	addi	a3, zero, 9
80000c40: 63 e0 c6 06  	bltu	a3, a2, 0x80000ca0 <.LBB1_15+0xbc>
80000c44: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000c48: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000c4c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000c50: b3 86 8b 03  	mul	a3, s7, s8
80000c54: 93 85 15 00  	addi	a1, a1, 1
80000c58: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000c5c: 93 06 05 fd  	addi	a3, a0, -48
80000c60: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000c64: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80000c68: e3 e0 86 ff  	bltu	a3, s8, 0x80000c48 <.LBB1_15+0x64>
80000c6c: 6f 00 00 07  	j	0x80000cdc <.LBB1_15+0xf8>
;     else if (*format == '*') {
80000c70: 13 06 a0 02  	addi	a2, zero, 42
80000c74: 63 18 c5 04  	bne	a0, a2, 0x80000cc4 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80000c78: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80000c7c: 63 d4 05 00  	bgez	a1, 0x80000c84 <.LBB1_15+0xa0>
80000c80: 13 64 24 00  	ori	s0, s0, 2
80000c84: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80000c88: 03 45 0d 00  	lbu	a0, 0(s10)
80000c8c: 13 d6 f5 41  	srai	a2, a1, 31
80000c90: b3 85 c5 00  	add	a1, a1, a2
80000c94: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80000c98: e3 08 75 f9  	beq	a0, s7, 0x80000c28 <.LBB1_15+0x44>
80000c9c: 6f 00 40 03  	j	0x80000cd0 <.LBB1_15+0xec>
;       else if (*format == '*') {
80000ca0: 13 06 a0 02  	addi	a2, zero, 42
80000ca4: 63 1a c5 02  	bne	a0, a2, 0x80000cd8 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80000ca8: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80000cac: 63 44 70 01  	bgtz	s7, 0x80000cb4 <.LBB1_15+0xd0>
80000cb0: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80000cb4: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80000cb8: 13 0d 2d 00  	addi	s10, s10, 2
80000cbc: 93 89 49 00  	addi	s3, s3, 4
80000cc0: 6f 00 00 02  	j	0x80000ce0 <.LBB1_15+0xfc>
80000cc4: 13 0b 00 00  	mv	s6, zero
80000cc8: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000ccc: e3 0e 75 f5  	beq	a0, s7, 0x80000c28 <.LBB1_15+0x44>
80000cd0: 93 0b 00 00  	mv	s7, zero
80000cd4: 6f 00 c0 00  	j	0x80000ce0 <.LBB1_15+0xfc>
80000cd8: 93 0b 00 00  	mv	s7, zero
80000cdc: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80000ce0: 93 05 85 f9  	addi	a1, a0, -104
80000ce4: 13 d6 15 00  	srli	a2, a1, 1
80000ce8: 93 95 f5 01  	slli	a1, a1, 31
80000cec: b3 e5 c5 00  	or	a1, a1, a2
80000cf0: 13 06 90 00  	addi	a2, zero, 9
80000cf4: 63 62 b6 06  	bltu	a2, a1, 0x80000d58 <.LBB1_42>
80000cf8: 93 95 25 00  	slli	a1, a1, 2

80000cfc <.LBB1_185>:
80000cfc: 17 26 00 00  	auipc	a2, 2
80000d00: 13 06 c6 49  	addi	a2, a2, 1180
80000d04: b3 85 c5 00  	add	a1, a1, a2
80000d08: 83 a6 05 00  	lw	a3, 0(a1)
80000d0c: 93 05 10 00  	addi	a1, zero, 1
80000d10: 13 06 00 10  	addi	a2, zero, 256
80000d14: 67 80 06 00  	jr	a3

80000d18 <.LBB1_36>:
;         if (*format == 'h') {
80000d18: 03 45 1d 00  	lbu	a0, 1(s10)
80000d1c: 93 05 80 06  	addi	a1, zero, 104
80000d20: 63 12 b5 12  	bne	a0, a1, 0x80000e44 <.LBB1_53+0x48>
80000d24: 93 05 20 00  	addi	a1, zero, 2
80000d28: 13 06 00 0c  	addi	a2, zero, 192
80000d2c: 6f 00 00 02  	j	0x80000d4c <.LBB1_41>

80000d30 <.LBB1_38>:
80000d30: 13 06 00 20  	addi	a2, zero, 512
80000d34: 6f 00 80 01  	j	0x80000d4c <.LBB1_41>

80000d38 <.LBB1_39>:
;         if (*format == 'l') {
80000d38: 03 45 1d 00  	lbu	a0, 1(s10)
80000d3c: 93 05 c0 06  	addi	a1, zero, 108
80000d40: 63 18 b5 10  	bne	a0, a1, 0x80000e50 <.LBB1_53+0x54>
80000d44: 93 05 20 00  	addi	a1, zero, 2
80000d48: 13 06 00 30  	addi	a2, zero, 768

80000d4c <.LBB1_41>:
80000d4c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80000d50: 03 45 0d 00  	lbu	a0, 0(s10)
80000d54: 33 64 c4 00  	or	s0, s0, a2

80000d58 <.LBB1_42>:
;     switch (*format) {
80000d58: 93 05 b5 fd  	addi	a1, a0, -37
80000d5c: 13 06 30 05  	addi	a2, zero, 83
80000d60: 63 64 b6 10  	bltu	a2, a1, 0x80000e68 <.LBB1_59>
80000d64: 93 95 25 00  	slli	a1, a1, 2

80000d68 <.LBB1_186>:
80000d68: 17 26 00 00  	auipc	a2, 2
80000d6c: 13 06 86 45  	addi	a2, a2, 1112
80000d70: b3 85 c5 00  	add	a1, a1, a2
80000d74: 03 a6 05 00  	lw	a2, 0(a1)
80000d78: 93 05 80 00  	addi	a1, zero, 8
80000d7c: 13 0c 00 01  	addi	s8, zero, 16
80000d80: 67 00 06 00  	jr	a2

80000d84 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80000d84: 13 74 f4 fe  	andi	s0, s0, -17
80000d88: 13 0c a0 00  	addi	s8, zero, 10

80000d8c <.LBB1_45>:
;         if (*format == 'X') {
80000d8c: 93 05 80 05  	addi	a1, zero, 88
80000d90: 63 14 b5 00  	bne	a0, a1, 0x80000d98 <.LBB1_45+0xc>
80000d94: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80000d98: 93 05 40 06  	addi	a1, zero, 100
80000d9c: 63 08 b5 0e  	beq	a0, a1, 0x80000e8c <.LBB1_62+0x8>
80000da0: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80000da4: 13 06 90 06  	addi	a2, zero, 105
80000da8: 63 02 c5 0e  	beq	a0, a2, 0x80000e8c <.LBB1_62+0x8>
80000dac: 6f 00 80 0d  	j	0x80000e84 <.LBB1_62>

80000db0 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80000db0: 93 05 60 04  	addi	a1, zero, 70
80000db4: 63 14 b5 00  	bne	a0, a1, 0x80000dbc <.LBB1_49+0xc>
80000db8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000dbc: 13 85 79 00  	addi	a0, s3, 7
80000dc0: 13 75 85 ff  	andi	a0, a0, -8
80000dc4: 07 35 05 00  	fld	fa0, 0(a0)
80000dc8: 93 09 85 00  	addi	s3, a0, 8
80000dcc: 13 05 09 00  	mv	a0, s2
80000dd0: 93 05 0a 00  	mv	a1, s4
80000dd4: 13 86 0c 00  	mv	a2, s9
80000dd8: 93 86 0a 00  	mv	a3, s5
80000ddc: 13 87 0b 00  	mv	a4, s7
80000de0: 93 07 0b 00  	mv	a5, s6
80000de4: 13 08 04 00  	mv	a6, s0
80000de8: 97 10 00 00  	auipc	ra, 1
80000dec: e7 80 80 98  	jalr	-1656(ra)
80000df0: 6f 00 00 7c  	j	0x800015b0 <.LBB1_124+0x2fc>

80000df4 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80000df4: 83 25 81 01  	lw	a1, 24(sp)
80000df8: 33 64 b4 00  	or	s0, s0, a1

80000dfc <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80000dfc: 13 65 25 00  	ori	a0, a0, 2
80000e00: 93 05 70 04  	addi	a1, zero, 71
80000e04: 63 14 b5 00  	bne	a0, a1, 0x80000e0c <.LBB1_53+0x10>
80000e08: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000e0c: 13 85 79 00  	addi	a0, s3, 7
80000e10: 13 75 85 ff  	andi	a0, a0, -8
80000e14: 07 35 05 00  	fld	fa0, 0(a0)
80000e18: 93 09 85 00  	addi	s3, a0, 8
80000e1c: 13 05 09 00  	mv	a0, s2
80000e20: 93 05 0a 00  	mv	a1, s4
80000e24: 13 86 0c 00  	mv	a2, s9
80000e28: 93 86 0a 00  	mv	a3, s5
80000e2c: 13 87 0b 00  	mv	a4, s7
80000e30: 93 07 0b 00  	mv	a5, s6
80000e34: 13 08 04 00  	mv	a6, s0
80000e38: 97 10 00 00  	auipc	ra, 1
80000e3c: e7 80 80 01  	jalr	24(ra)
80000e40: 6f 00 00 77  	j	0x800015b0 <.LBB1_124+0x2fc>
80000e44: 13 64 04 08  	ori	s0, s0, 128
80000e48: 13 0d 1d 00  	addi	s10, s10, 1
80000e4c: 6f f0 df f0  	j	0x80000d58 <.LBB1_42>
80000e50: 13 64 04 10  	ori	s0, s0, 256
80000e54: 13 0d 1d 00  	addi	s10, s10, 1
80000e58: 6f f0 1f f0  	j	0x80000d58 <.LBB1_42>

80000e5c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80000e5c: 13 8c 1c 00  	addi	s8, s9, 1
80000e60: 13 05 50 02  	addi	a0, zero, 37
80000e64: 6f 00 80 00  	j	0x80000e6c <.LBB1_59+0x4>

80000e68 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80000e68: 13 8c 1c 00  	addi	s8, s9, 1
80000e6c: 93 05 0a 00  	mv	a1, s4
80000e70: 13 86 0c 00  	mv	a2, s9
80000e74: 93 86 0a 00  	mv	a3, s5
80000e78: e7 00 09 00  	jalr	s2
80000e7c: 6f 00 80 73  	j	0x800015b4 <.LBB1_124+0x300>

80000e80 <.LBB1_61>:
80000e80: 93 05 20 00  	addi	a1, zero, 2

80000e84 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80000e84: 13 74 34 ff  	andi	s0, s0, -13
80000e88: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80000e8c: 93 75 04 40  	andi	a1, s0, 1024
80000e90: 63 84 05 00  	beqz	a1, 0x80000e98 <.LBB1_62+0x14>
80000e94: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80000e98: 93 05 90 06  	addi	a1, zero, 105
80000e9c: 63 06 b5 00  	beq	a0, a1, 0x80000ea8 <.LBB1_62+0x24>
80000ea0: 93 05 40 06  	addi	a1, zero, 100
80000ea4: 63 1c b5 12  	bne	a0, a1, 0x80000fdc <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80000ea8: 13 75 04 20  	andi	a0, s0, 512
80000eac: 63 16 05 02  	bnez	a0, 0x80000ed8 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80000eb0: 13 75 04 10  	andi	a0, s0, 256
80000eb4: 63 1c 05 14  	bnez	a0, 0x8000100c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000eb8: 13 75 04 04  	andi	a0, s0, 64
80000ebc: 63 18 05 4e  	bnez	a0, 0x800013ac <.LBB1_124+0xf8>
80000ec0: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000ec4: 93 75 04 08  	andi	a1, s0, 128
80000ec8: 63 84 05 4e  	beqz	a1, 0x800013b0 <.LBB1_124+0xfc>
80000ecc: 13 15 08 01  	slli	a0, a6, 16
80000ed0: 13 58 05 41  	srai	a6, a0, 16
80000ed4: 6f 00 c0 4d  	j	0x800013b0 <.LBB1_124+0xfc>
80000ed8: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80000edc: 13 85 79 00  	addi	a0, s3, 7
80000ee0: 13 75 85 ff  	andi	a0, a0, -8
80000ee4: 83 29 05 00  	lw	s3, 0(a0)
80000ee8: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80000eec: 13 65 45 00  	ori	a0, a0, 4
80000ef0: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80000ef4: 23 24 a1 00  	sw	a0, 8(sp)
80000ef8: 33 e5 a9 00  	or	a0, s3, a0
80000efc: 63 14 05 00  	bnez	a0, 0x80000f04 <.LBB1_62+0x80>
80000f00: 13 74 f4 fe  	andi	s0, s0, -17
80000f04: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000f08: 93 75 04 40  	andi	a1, s0, 1024
80000f0c: 93 d5 a5 00  	srli	a1, a1, 10
80000f10: 33 75 b5 00  	and	a0, a0, a1
80000f14: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000f18: 63 14 05 0a  	bnez	a0, 0x80000fc0 <.LBB1_62+0x13c>
80000f1c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000f20: 63 da 04 00  	bgez	s1, 0x80000f34 <.LBB1_62+0xb0>
80000f24: 33 35 30 01  	snez	a0, s3
80000f28: b3 09 30 41  	neg	s3, s3
80000f2c: 33 85 a4 00  	add	a0, s1, a0
80000f30: b3 04 a0 40  	neg	s1, a0
80000f34: 13 09 00 00  	mv	s2, zero
80000f38: 13 75 04 02  	andi	a0, s0, 32
80000f3c: 13 45 15 06  	xori	a0, a0, 97
80000f40: 13 05 65 0f  	addi	a0, a0, 246
80000f44: 23 2a a1 00  	sw	a0, 20(sp)
80000f48: 6f 00 40 02  	j	0x80000f6c <.LBB1_62+0xe8>
80000f4c: 13 06 10 00  	addi	a2, zero, 1
80000f50: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f54: 93 36 f9 01  	sltiu	a3, s2, 31
80000f58: 33 f6 c6 00  	and	a2, a3, a2
80000f5c: 13 89 07 00  	mv	s2, a5
80000f60: 93 09 05 00  	mv	s3, a0
80000f64: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f68: 63 0c 06 04  	beqz	a2, 0x80000fc0 <.LBB1_62+0x13c>
;       value /= base;
80000f6c: 13 85 09 00  	mv	a0, s3
80000f70: 93 85 04 00  	mv	a1, s1
80000f74: 13 06 0c 00  	mv	a2, s8
80000f78: 93 06 00 00  	mv	a3, zero
80000f7c: 97 f0 ff ff  	auipc	ra, 1048575
80000f80: e7 80 40 08  	jalr	132(ra)
80000f84: 33 06 85 03  	mul	a2, a0, s8
80000f88: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000f8c: 13 77 e6 0f  	andi	a4, a2, 254
80000f90: 93 06 00 03  	addi	a3, zero, 48
80000f94: 93 07 a0 00  	addi	a5, zero, 10
80000f98: 63 64 f7 00  	bltu	a4, a5, 0x80000fa0 <.LBB1_62+0x11c>
80000f9c: 83 26 41 01  	lw	a3, 20(sp)
80000fa0: 33 86 c6 00  	add	a2, a3, a2
80000fa4: 93 06 c1 01  	addi	a3, sp, 28
80000fa8: b3 86 26 01  	add	a3, a3, s2
80000fac: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000fb0: e3 9e 04 f8  	bnez	s1, 0x80000f4c <.LBB1_62+0xc8>
80000fb4: 33 b6 89 01  	sltu	a2, s3, s8
80000fb8: 13 46 16 00  	xori	a2, a2, 1
80000fbc: 6f f0 5f f9  	j	0x80000f50 <.LBB1_62+0xcc>
80000fc0: 03 25 41 00  	lw	a0, 4(sp)
80000fc4: 93 09 85 00  	addi	s3, a0, 8
80000fc8: 03 25 81 00  	lw	a0, 8(sp)
80000fcc: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000fd0: 13 07 c1 01  	addi	a4, sp, 28
80000fd4: 03 29 c1 00  	lw	s2, 12(sp)
80000fd8: 6f 00 80 47  	j	0x80001450 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80000fdc: 13 75 04 20  	andi	a0, s0, 512
80000fe0: 63 12 05 0c  	bnez	a0, 0x800010a4 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80000fe4: 13 75 04 10  	andi	a0, s0, 256
80000fe8: 63 1e 05 46  	bnez	a0, 0x80001464 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000fec: 13 75 04 04  	andi	a0, s0, 64
80000ff0: 63 10 05 50  	bnez	a0, 0x800014f0 <.LBB1_124+0x23c>
80000ff4: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000ff8: 93 75 04 08  	andi	a1, s0, 128
80000ffc: 63 8c 05 4e  	beqz	a1, 0x800014f4 <.LBB1_124+0x240>
80001000: 83 25 01 01  	lw	a1, 16(sp)
80001004: 33 75 b5 00  	and	a0, a0, a1
80001008: 6f 00 c0 4e  	j	0x800014f4 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
8000100c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001010: 63 14 08 00  	bnez	a6, 0x80001018 <.LBB1_62+0x194>
80001014: 13 74 f4 fe  	andi	s0, s0, -17
80001018: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000101c: 13 76 04 40  	andi	a2, s0, 1024
80001020: 13 56 a6 00  	srli	a2, a2, 10
80001024: b3 f5 c5 00  	and	a1, a1, a2
80001028: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000102c: 63 9c 05 40  	bnez	a1, 0x80001444 <.LBB1_124+0x190>
80001030: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001034: 13 56 f8 41  	srai	a2, a6, 31
80001038: b3 06 c8 00  	add	a3, a6, a2
8000103c: b3 c6 c6 00  	xor	a3, a3, a2
80001040: 13 76 04 02  	andi	a2, s0, 32
80001044: 13 46 16 06  	xori	a2, a2, 97
80001048: 93 08 66 0f  	addi	a7, a2, 246
8000104c: 6f 00 40 03  	j	0x80001080 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001050: 33 05 f6 00  	add	a0, a2, a5
80001054: 93 87 15 00  	addi	a5, a1, 1
80001058: 13 06 c1 01  	addi	a2, sp, 28
8000105c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001060: b3 b6 86 01  	sltu	a3, a3, s8
80001064: 93 c6 16 00  	xori	a3, a3, 1
80001068: 93 b5 f5 01  	sltiu	a1, a1, 31
8000106c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001070: 23 00 a6 00  	sb	a0, 0(a2)
80001074: 93 85 07 00  	mv	a1, a5
80001078: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000107c: 63 84 04 3c  	beqz	s1, 0x80001444 <.LBB1_124+0x190>
;       value /= base;
80001080: 33 d7 86 03  	divu	a4, a3, s8
80001084: 33 06 87 03  	mul	a2, a4, s8
80001088: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000108c: 13 f5 e7 0f  	andi	a0, a5, 254
80001090: 13 06 00 03  	addi	a2, zero, 48
80001094: 93 04 a0 00  	addi	s1, zero, 10
80001098: e3 6c 95 fa  	bltu	a0, s1, 0x80001050 <.LBB1_62+0x1cc>
8000109c: 13 86 08 00  	mv	a2, a7
800010a0: 6f f0 1f fb  	j	0x80001050 <.LBB1_62+0x1cc>
800010a4: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800010a8: 13 85 79 00  	addi	a0, s3, 7
800010ac: 93 75 85 ff  	andi	a1, a0, -8
800010b0: 03 a9 05 00  	lw	s2, 0(a1)
800010b4: 13 e5 45 00  	ori	a0, a1, 4
800010b8: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800010bc: 33 65 39 01  	or	a0, s2, s3
800010c0: 23 24 b1 00  	sw	a1, 8(sp)
800010c4: 63 14 05 00  	bnez	a0, 0x800010cc <.LBB1_62+0x248>
800010c8: 13 74 f4 fe  	andi	s0, s0, -17
800010cc: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800010d0: 93 75 04 40  	andi	a1, s0, 1024
800010d4: 93 d5 a5 00  	srli	a1, a1, 10
800010d8: 33 75 b5 00  	and	a0, a0, a1
800010dc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800010e0: 63 18 05 08  	bnez	a0, 0x80001170 <.LBB1_62+0x2ec>
800010e4: 93 04 00 00  	mv	s1, zero
800010e8: 13 75 04 02  	andi	a0, s0, 32
800010ec: 13 45 15 06  	xori	a0, a0, 97
800010f0: 13 05 65 0f  	addi	a0, a0, 246
800010f4: 23 2a a1 00  	sw	a0, 20(sp)
800010f8: 6f 00 40 02  	j	0x8000111c <.LBB1_62+0x298>
800010fc: 13 06 10 00  	addi	a2, zero, 1
80001100: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001104: 93 b6 f4 01  	sltiu	a3, s1, 31
80001108: 33 f6 c6 00  	and	a2, a3, a2
8000110c: 93 84 07 00  	mv	s1, a5
80001110: 13 09 05 00  	mv	s2, a0
80001114: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001118: 63 0c 06 04  	beqz	a2, 0x80001170 <.LBB1_62+0x2ec>
;       value /= base;
8000111c: 13 05 09 00  	mv	a0, s2
80001120: 93 85 09 00  	mv	a1, s3
80001124: 13 06 0c 00  	mv	a2, s8
80001128: 93 06 00 00  	mv	a3, zero
8000112c: 97 f0 ff ff  	auipc	ra, 1048575
80001130: e7 80 40 ed  	jalr	-300(ra)
80001134: 33 06 85 03  	mul	a2, a0, s8
80001138: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000113c: 13 77 e6 0f  	andi	a4, a2, 254
80001140: 93 06 00 03  	addi	a3, zero, 48
80001144: 93 07 a0 00  	addi	a5, zero, 10
80001148: 63 64 f7 00  	bltu	a4, a5, 0x80001150 <.LBB1_62+0x2cc>
8000114c: 83 26 41 01  	lw	a3, 20(sp)
80001150: 33 86 c6 00  	add	a2, a3, a2
80001154: 93 06 c1 01  	addi	a3, sp, 28
80001158: b3 86 96 00  	add	a3, a3, s1
8000115c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001160: e3 9e 09 f8  	bnez	s3, 0x800010fc <.LBB1_62+0x278>
80001164: 33 36 89 01  	sltu	a2, s2, s8
80001168: 13 46 16 00  	xori	a2, a2, 1
8000116c: 6f f0 5f f9  	j	0x80001100 <.LBB1_62+0x27c>
80001170: 03 25 81 00  	lw	a0, 8(sp)
80001174: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001178: 13 07 c1 01  	addi	a4, sp, 28
8000117c: 03 29 c1 00  	lw	s2, 12(sp)
80001180: 6f 00 40 40  	j	0x80001584 <.LBB1_124+0x2d0>

80001184 <.LBB1_108>:
80001184: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80001188: 13 79 24 00  	andi	s2, s0, 2
8000118c: 93 04 10 00  	addi	s1, zero, 1
80001190: 63 1e 09 02  	bnez	s2, 0x800011cc <.LBB1_108+0x48>
80001194: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80001198: 63 6a 9b 02  	bltu	s6, s1, 0x800011cc <.LBB1_108+0x48>
8000119c: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800011a0: 13 0c fb ff  	addi	s8, s6, -1
800011a4: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800011a8: 33 86 8c 00  	add	a2, s9, s0
800011ac: 13 05 00 02  	addi	a0, zero, 32
800011b0: 93 05 0a 00  	mv	a1, s4
800011b4: 93 86 0a 00  	mv	a3, s5
800011b8: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800011bc: 13 04 14 00  	addi	s0, s0, 1
800011c0: e3 14 8c fe  	bne	s8, s0, 0x800011a8 <.LBB1_108+0x24>
800011c4: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800011c8: b3 8c 8c 00  	add	s9, s9, s0
800011cc: 03 c5 09 00  	lbu	a0, 0(s3)
800011d0: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800011d4: 93 89 49 00  	addi	s3, s3, 4
800011d8: 13 8c 1c 00  	addi	s8, s9, 1
800011dc: 93 05 0a 00  	mv	a1, s4
800011e0: 13 86 0c 00  	mv	a2, s9
800011e4: 93 86 0a 00  	mv	a3, s5
800011e8: 13 89 0b 00  	mv	s2, s7
800011ec: e7 80 0b 00  	jalr	s7
800011f0: 33 b5 64 01  	sltu	a0, s1, s6
800011f4: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800011f8: 33 65 a4 00  	or	a0, s0, a0
800011fc: 63 1c 05 3a  	bnez	a0, 0x800015b4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001200: 33 04 9b 40  	sub	s0, s6, s1
80001204: 93 0b e0 02  	addi	s7, zero, 46
80001208: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000120c: 13 0c 1c 00  	addi	s8, s8, 1
80001210: 13 05 00 02  	addi	a0, zero, 32
80001214: 93 05 0a 00  	mv	a1, s4
80001218: 93 86 0a 00  	mv	a3, s5
8000121c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001220: 13 04 f4 ff  	addi	s0, s0, -1
80001224: e3 12 04 fe  	bnez	s0, 0x80001208 <.LBB1_108+0x84>
80001228: 13 0b 50 02  	addi	s6, zero, 37
8000122c: 13 04 1d 00  	addi	s0, s10, 1
80001230: 6f f0 df 91  	j	0x80000b4c <.LBB1_183+0x30>

80001234 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001234: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001238: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
8000123c: 63 14 05 00  	bnez	a0, 0x80001244 <.LBB1_117+0x10>
80001240: 93 fe fe fe  	andi	t4, t4, -17
80001244: 93 04 a0 00  	addi	s1, zero, 10
80001248: 13 04 f0 00  	addi	s0, zero, 15
8000124c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001250: 13 f6 0e 40  	andi	a2, t4, 1024
80001254: 13 56 a6 00  	srli	a2, a2, 10
80001258: b3 f5 c5 00  	and	a1, a1, a2
8000125c: 93 07 00 00  	mv	a5, zero
80001260: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001264: 63 98 05 10  	bnez	a1, 0x80001374 <.LBB1_124+0xc0>
80001268: 93 05 00 00  	mv	a1, zero
8000126c: 6f 00 40 03  	j	0x800012a0 <.LBB1_117+0x6c>
80001270: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001274: 33 06 d6 00  	add	a2, a2, a3
80001278: 93 87 15 00  	addi	a5, a1, 1
8000127c: 93 06 c1 01  	addi	a3, sp, 28
80001280: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001284: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80001288: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000128c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001290: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001294: 23 80 c6 00  	sb	a2, 0(a3)
80001298: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000129c: 63 0c 07 0c  	beqz	a4, 0x80001374 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800012a0: 93 76 e5 00  	andi	a3, a0, 14
800012a4: 13 06 00 03  	addi	a2, zero, 48
800012a8: e3 e4 96 fc  	bltu	a3, s1, 0x80001270 <.LBB1_117+0x3c>
800012ac: 13 06 70 03  	addi	a2, zero, 55
800012b0: 6f f0 1f fc  	j	0x80001270 <.LBB1_117+0x3c>

800012b4 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800012b4: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800012b8: 03 c5 07 00  	lbu	a0, 0(a5)
800012bc: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800012c0: 63 0c 05 02  	beqz	a0, 0x800012f8 <.LBB1_124+0x44>
800012c4: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800012c8: 63 84 0b 00  	beqz	s7, 0x800012d0 <.LBB1_124+0x1c>
800012cc: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800012d0: 93 85 f5 ff  	addi	a1, a1, -1
800012d4: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800012d8: 03 c7 16 00  	lbu	a4, 1(a3)
800012dc: 13 86 16 00  	addi	a2, a3, 1
800012e0: b3 36 e0 00  	snez	a3, a4
800012e4: 33 37 b0 00  	snez	a4, a1
800012e8: 33 77 d7 00  	and	a4, a4, a3
800012ec: 93 85 f5 ff  	addi	a1, a1, -1
800012f0: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800012f4: e3 12 07 fe  	bnez	a4, 0x800012d8 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800012f8: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800012fc: 93 75 04 40  	andi	a1, s0, 1024
80001300: 93 b4 15 00  	seqz	s1, a1
80001304: 23 2a c1 00  	sw	a2, 20(sp)
80001308: b3 35 76 01  	sltu	a1, a2, s7
8000130c: b3 e5 b4 00  	or	a1, s1, a1
80001310: 63 94 05 00  	bnez	a1, 0x80001318 <.LBB1_124+0x64>
80001314: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001318: 93 75 24 00  	andi	a1, s0, 2
8000131c: 23 26 b1 00  	sw	a1, 12(sp)
80001320: 63 96 05 2a  	bnez	a1, 0x800015cc <.LBB1_124+0x318>
80001324: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001328: 63 fe 65 29  	bgeu	a1, s6, 0x800015c4 <.LBB1_124+0x310>
8000132c: 23 24 f1 00  	sw	a5, 8(sp)
80001330: 13 04 00 00  	mv	s0, zero
80001334: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001338: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
8000133c: 33 86 8c 00  	add	a2, s9, s0
80001340: 13 05 00 02  	addi	a0, zero, 32
80001344: 93 05 0a 00  	mv	a1, s4
80001348: 93 86 0a 00  	mv	a3, s5
8000134c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001350: 13 04 14 00  	addi	s0, s0, 1
80001354: e3 14 89 fe  	bne	s2, s0, 0x8000133c <.LBB1_124+0x88>
80001358: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000135c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001360: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001364: 23 2a b1 00  	sw	a1, 20(sp)
80001368: b3 8c 8c 00  	add	s9, s9, s0
8000136c: 13 09 0c 00  	mv	s2, s8
80001370: 6f 00 c0 25  	j	0x800015cc <.LBB1_124+0x318>
80001374: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001378: 13 07 c1 01  	addi	a4, sp, 28
8000137c: 93 08 00 01  	addi	a7, zero, 16
80001380: 13 0e 80 00  	addi	t3, zero, 8
80001384: 13 05 09 00  	mv	a0, s2
80001388: 93 05 0a 00  	mv	a1, s4
8000138c: 13 86 0c 00  	mv	a2, s9
80001390: 93 86 0a 00  	mv	a3, s5
80001394: 13 08 00 00  	mv	a6, zero
80001398: 93 83 0b 00  	mv	t2, s7
8000139c: 97 10 00 00  	auipc	ra, 1
800013a0: e7 80 00 fa  	jalr	-96(ra)
800013a4: 13 0c 05 00  	mv	s8, a0
800013a8: 6f 00 00 21  	j	0x800015b8 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800013ac: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800013b0: 63 14 08 00  	bnez	a6, 0x800013b8 <.LBB1_124+0x104>
800013b4: 13 74 f4 fe  	andi	s0, s0, -17
800013b8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800013bc: 13 76 04 40  	andi	a2, s0, 1024
800013c0: 13 56 a6 00  	srli	a2, a2, 10
800013c4: b3 f5 c5 00  	and	a1, a1, a2
800013c8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800013cc: 63 9c 05 06  	bnez	a1, 0x80001444 <.LBB1_124+0x190>
800013d0: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800013d4: 13 56 f8 41  	srai	a2, a6, 31
800013d8: b3 06 c8 00  	add	a3, a6, a2
800013dc: b3 c6 c6 00  	xor	a3, a3, a2
800013e0: 13 76 04 02  	andi	a2, s0, 32
800013e4: 13 46 16 06  	xori	a2, a2, 97
800013e8: 93 08 66 0f  	addi	a7, a2, 246
800013ec: 6f 00 40 03  	j	0x80001420 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013f0: 33 05 f6 00  	add	a0, a2, a5
800013f4: 93 87 15 00  	addi	a5, a1, 1
800013f8: 13 06 c1 01  	addi	a2, sp, 28
800013fc: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001400: b3 b6 86 01  	sltu	a3, a3, s8
80001404: 93 c6 16 00  	xori	a3, a3, 1
80001408: 93 b5 f5 01  	sltiu	a1, a1, 31
8000140c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001410: 23 00 a6 00  	sb	a0, 0(a2)
80001414: 93 85 07 00  	mv	a1, a5
80001418: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000141c: 63 84 04 02  	beqz	s1, 0x80001444 <.LBB1_124+0x190>
;       value /= base;
80001420: 33 d7 86 03  	divu	a4, a3, s8
80001424: 33 06 87 03  	mul	a2, a4, s8
80001428: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000142c: 13 f5 e7 0f  	andi	a0, a5, 254
80001430: 13 06 00 03  	addi	a2, zero, 48
80001434: 93 04 a0 00  	addi	s1, zero, 10
80001438: e3 6c 95 fa  	bltu	a0, s1, 0x800013f0 <.LBB1_124+0x13c>
8000143c: 13 86 08 00  	mv	a2, a7
80001440: 6f f0 1f fb  	j	0x800013f0 <.LBB1_124+0x13c>
80001444: 93 89 49 00  	addi	s3, s3, 4
80001448: 13 58 f8 01  	srli	a6, a6, 31
8000144c: 13 07 c1 01  	addi	a4, sp, 28
80001450: 13 05 09 00  	mv	a0, s2
80001454: 93 05 0a 00  	mv	a1, s4
80001458: 13 86 0c 00  	mv	a2, s9
8000145c: 93 86 0a 00  	mv	a3, s5
80001460: 6f 00 80 13  	j	0x80001598 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001464: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001468: 63 14 05 00  	bnez	a0, 0x80001470 <.LBB1_124+0x1bc>
8000146c: 13 74 f4 fe  	andi	s0, s0, -17
80001470: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001474: 13 76 04 40  	andi	a2, s0, 1024
80001478: 13 56 a6 00  	srli	a2, a2, 10
8000147c: b3 f5 c5 00  	and	a1, a1, a2
80001480: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001484: 63 9c 05 0e  	bnez	a1, 0x8000157c <.LBB1_124+0x2c8>
80001488: 13 06 00 00  	mv	a2, zero
8000148c: 93 75 04 02  	andi	a1, s0, 32
80001490: 93 c5 15 06  	xori	a1, a1, 97
80001494: 13 88 65 0f  	addi	a6, a1, 246
80001498: 6f 00 40 03  	j	0x800014cc <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000149c: 33 87 e7 00  	add	a4, a5, a4
800014a0: 93 07 16 00  	addi	a5, a2, 1
800014a4: 93 05 c1 01  	addi	a1, sp, 28
800014a8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014ac: 33 35 85 01  	sltu	a0, a0, s8
800014b0: 13 45 15 00  	xori	a0, a0, 1
800014b4: 13 36 f6 01  	sltiu	a2, a2, 31
800014b8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014bc: 23 80 e4 00  	sb	a4, 0(s1)
800014c0: 13 86 07 00  	mv	a2, a5
800014c4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014c8: 63 8a 05 0a  	beqz	a1, 0x8000157c <.LBB1_124+0x2c8>
;       value /= base;
800014cc: b3 56 85 03  	divu	a3, a0, s8
800014d0: 33 87 86 03  	mul	a4, a3, s8
800014d4: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014d8: 93 74 e7 0f  	andi	s1, a4, 254
800014dc: 93 07 00 03  	addi	a5, zero, 48
800014e0: 93 05 a0 00  	addi	a1, zero, 10
800014e4: e3 ec b4 fa  	bltu	s1, a1, 0x8000149c <.LBB1_124+0x1e8>
800014e8: 93 07 08 00  	mv	a5, a6
800014ec: 6f f0 1f fb  	j	0x8000149c <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800014f0: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800014f4: 63 14 05 00  	bnez	a0, 0x800014fc <.LBB1_124+0x248>
800014f8: 13 74 f4 fe  	andi	s0, s0, -17
800014fc: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001500: 13 76 04 40  	andi	a2, s0, 1024
80001504: 13 56 a6 00  	srli	a2, a2, 10
80001508: b3 f5 c5 00  	and	a1, a1, a2
8000150c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001510: 63 96 05 06  	bnez	a1, 0x8000157c <.LBB1_124+0x2c8>
80001514: 13 06 00 00  	mv	a2, zero
80001518: 93 75 04 02  	andi	a1, s0, 32
8000151c: 93 c5 15 06  	xori	a1, a1, 97
80001520: 13 88 65 0f  	addi	a6, a1, 246
80001524: 6f 00 40 03  	j	0x80001558 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001528: 33 87 e7 00  	add	a4, a5, a4
8000152c: 93 07 16 00  	addi	a5, a2, 1
80001530: 93 05 c1 01  	addi	a1, sp, 28
80001534: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001538: 33 35 85 01  	sltu	a0, a0, s8
8000153c: 13 45 15 00  	xori	a0, a0, 1
80001540: 13 36 f6 01  	sltiu	a2, a2, 31
80001544: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001548: 23 80 e4 00  	sb	a4, 0(s1)
8000154c: 13 86 07 00  	mv	a2, a5
80001550: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001554: 63 84 05 02  	beqz	a1, 0x8000157c <.LBB1_124+0x2c8>
;       value /= base;
80001558: b3 56 85 03  	divu	a3, a0, s8
8000155c: 33 87 86 03  	mul	a4, a3, s8
80001560: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001564: 93 74 e7 0f  	andi	s1, a4, 254
80001568: 93 07 00 03  	addi	a5, zero, 48
8000156c: 93 05 a0 00  	addi	a1, zero, 10
80001570: e3 ec b4 fa  	bltu	s1, a1, 0x80001528 <.LBB1_124+0x274>
80001574: 93 07 08 00  	mv	a5, a6
80001578: 6f f0 1f fb  	j	0x80001528 <.LBB1_124+0x274>
8000157c: 93 89 49 00  	addi	s3, s3, 4
80001580: 13 07 c1 01  	addi	a4, sp, 28
80001584: 13 05 09 00  	mv	a0, s2
80001588: 93 05 0a 00  	mv	a1, s4
8000158c: 13 86 0c 00  	mv	a2, s9
80001590: 93 86 0a 00  	mv	a3, s5
80001594: 13 08 00 00  	mv	a6, zero
80001598: 93 08 0c 00  	mv	a7, s8
8000159c: 93 83 0b 00  	mv	t2, s7
800015a0: 13 0e 0b 00  	mv	t3, s6
800015a4: 93 0e 04 00  	mv	t4, s0
800015a8: 97 10 00 00  	auipc	ra, 1
800015ac: e7 80 40 d9  	jalr	-620(ra)
800015b0: 13 0c 05 00  	mv	s8, a0
800015b4: 13 0b 50 02  	addi	s6, zero, 37
800015b8: 93 0b e0 02  	addi	s7, zero, 46
800015bc: 13 04 1d 00  	addi	s0, s10, 1
800015c0: 6f f0 cf d8  	j	0x80000b4c <.LBB1_183+0x30>
800015c4: 93 85 15 00  	addi	a1, a1, 1
800015c8: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800015cc: 63 00 05 04  	beqz	a0, 0x8000160c <.LBB1_124+0x358>
800015d0: 13 84 17 00  	addi	s0, a5, 1
800015d4: 6f 00 00 03  	j	0x80001604 <.LBB1_124+0x350>
800015d8: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800015dc: 13 8c 1c 00  	addi	s8, s9, 1
800015e0: 13 75 f5 0f  	andi	a0, a0, 255
800015e4: 93 05 0a 00  	mv	a1, s4
800015e8: 13 86 0c 00  	mv	a2, s9
800015ec: 93 86 0a 00  	mv	a3, s5
800015f0: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800015f4: 03 45 04 00  	lbu	a0, 0(s0)
800015f8: 13 04 14 00  	addi	s0, s0, 1
800015fc: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001600: 63 08 05 00  	beqz	a0, 0x80001610 <.LBB1_124+0x35c>
80001604: e3 9c 04 fc  	bnez	s1, 0x800015dc <.LBB1_124+0x328>
80001608: e3 98 0b fc  	bnez	s7, 0x800015d8 <.LBB1_124+0x324>
8000160c: 13 8c 0c 00  	mv	s8, s9
80001610: 03 25 c1 00  	lw	a0, 12(sp)
80001614: 13 35 15 00  	seqz	a0, a0
80001618: 03 26 41 01  	lw	a2, 20(sp)
8000161c: b3 35 66 01  	sltu	a1, a2, s6
80001620: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001624: 33 65 b5 00  	or	a0, a0, a1
80001628: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
8000162c: e3 14 05 f8  	bnez	a0, 0x800015b4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001630: 33 04 cb 40  	sub	s0, s6, a2
80001634: 93 0b e0 02  	addi	s7, zero, 46
80001638: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000163c: 13 0c 1c 00  	addi	s8, s8, 1
80001640: 13 05 00 02  	addi	a0, zero, 32
80001644: 93 05 0a 00  	mv	a1, s4
80001648: 93 86 0a 00  	mv	a3, s5
8000164c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001650: 13 04 f4 ff  	addi	s0, s0, -1
80001654: e3 12 04 fe  	bnez	s0, 0x80001638 <.LBB1_124+0x384>
80001658: 13 0b 50 02  	addi	s6, zero, 37
8000165c: 13 04 1d 00  	addi	s0, s10, 1
80001660: 6f f0 cf ce  	j	0x80000b4c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001664: 13 86 0c 00  	mv	a2, s9
80001668: 63 e4 5c 01  	bltu	s9, s5, 0x80001670 <.LBB1_124+0x3bc>
8000166c: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001670: 13 05 00 00  	mv	a0, zero
80001674: 93 05 0a 00  	mv	a1, s4
80001678: 93 86 0a 00  	mv	a3, s5
8000167c: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001680: 13 85 0c 00  	mv	a0, s9
80001684: 83 2d c1 03  	lw	s11, 60(sp)
80001688: 03 2d 01 04  	lw	s10, 64(sp)
8000168c: 83 2c 41 04  	lw	s9, 68(sp)
80001690: 03 2c 81 04  	lw	s8, 72(sp)
80001694: 83 2b c1 04  	lw	s7, 76(sp)
80001698: 03 2b 01 05  	lw	s6, 80(sp)
8000169c: 83 2a 41 05  	lw	s5, 84(sp)
800016a0: 03 2a 81 05  	lw	s4, 88(sp)
800016a4: 83 29 c1 05  	lw	s3, 92(sp)
800016a8: 03 29 01 06  	lw	s2, 96(sp)
800016ac: 83 24 41 06  	lw	s1, 100(sp)
800016b0: 03 24 81 06  	lw	s0, 104(sp)
800016b4: 83 20 c1 06  	lw	ra, 108(sp)
800016b8: 13 01 01 07  	addi	sp, sp, 112
800016bc: 67 80 00 00  	ret

800016c0 <_out_char.llvm.17592004524093383706>:
;   if (character) {
800016c0: 63 04 05 0a  	beqz	a0, 0x80001768 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800016c4: f3 25 40 f1  	csrr	a1, mhartid
800016c8: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800016cc: 33 86 c5 02  	mul	a2, a1, a2

800016d0 <.LBB2_6>:
800016d0: 97 26 00 00  	auipc	a3, 2
800016d4: 93 86 c6 dc  	addi	a3, a3, -564
800016d8: b3 05 d6 00  	add	a1, a2, a3
800016dc: 03 a7 05 00  	lw	a4, 0(a1)
800016e0: 93 07 17 00  	addi	a5, a4, 1
800016e4: 23 a0 f5 00  	sw	a5, 0(a1)
800016e8: 33 87 e5 00  	add	a4, a1, a4
800016ec: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800016f0: 03 a7 05 00  	lw	a4, 0(a1)
800016f4: 13 07 47 c0  	addi	a4, a4, -1020
800016f8: 33 37 e0 00  	snez	a4, a4
800016fc: 13 05 65 ff  	addi	a0, a0, -10
80001700: 33 35 a0 00  	snez	a0, a0
80001704: 33 75 e5 00  	and	a0, a0, a4
80001708: 63 10 05 06  	bnez	a0, 0x80001768 <.LBB2_8+0x18>
8000170c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001710: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001714: 23 26 05 00  	sw	zero, 12(a0)
80001718: 93 06 00 04  	addi	a3, zero, 64
8000171c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001720: 23 2a 05 00  	sw	zero, 20(a0)
80001724: 93 06 10 00  	addi	a3, zero, 1
80001728: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
8000172c: 23 2e 05 00  	sw	zero, 28(a0)
80001730: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001734: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001738: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000173c: 23 22 05 02  	sw	zero, 36(a0)
80001740: 23 20 c5 02  	sw	a2, 32(a0)

80001744 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001744: 17 25 00 00  	auipc	a0, 2
80001748: 13 05 c5 c3  	addi	a0, a0, -964
8000174c: 23 20 d5 00  	sw	a3, 0(a0)

80001750 <.LBB2_8>:
80001750: 17 25 00 00  	auipc	a0, 2
80001754: 13 05 05 c7  	addi	a0, a0, -912
;         while (fromhost == 0)
80001758: 03 26 05 00  	lw	a2, 0(a0)
8000175c: e3 0e 06 fe  	beqz	a2, 0x80001758 <.LBB2_8+0x8>
;         fromhost = 0;
80001760: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001764: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001768: 67 80 00 00  	ret

8000176c <_out_null>:
; }
8000176c: 67 80 00 00  	ret

80001770 <_ftoa>:
; {
80001770: 13 01 01 f9  	addi	sp, sp, -112
80001774: 23 26 11 06  	sw	ra, 108(sp)
80001778: 23 24 81 06  	sw	s0, 104(sp)
8000177c: 23 22 91 06  	sw	s1, 100(sp)
80001780: 23 20 21 07  	sw	s2, 96(sp)
80001784: 23 2e 31 05  	sw	s3, 92(sp)
80001788: 23 2c 41 05  	sw	s4, 88(sp)
8000178c: 23 2a 51 05  	sw	s5, 84(sp)
80001790: 23 28 61 05  	sw	s6, 80(sp)
80001794: 23 26 71 05  	sw	s7, 76(sp)
80001798: 23 24 81 05  	sw	s8, 72(sp)
8000179c: 23 22 91 05  	sw	s9, 68(sp)
800017a0: 23 20 a1 05  	sw	s10, 64(sp)
800017a4: 27 3c 81 02  	fsd	fs0, 56(sp)
800017a8: 27 38 91 02  	fsd	fs1, 48(sp)
800017ac: 27 34 21 03  	fsd	fs2, 40(sp)

800017b0 <.LBB4_83>:
800017b0: 97 24 00 00  	auipc	s1, 2
800017b4: 93 84 04 c4  	addi	s1, s1, -960
800017b8: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800017bc: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800017c0: 93 0a 08 00  	mv	s5, a6
800017c4: 13 89 07 00  	mv	s2, a5
800017c8: 93 89 06 00  	mv	s3, a3
800017cc: 13 0a 06 00  	mv	s4, a2
800017d0: 13 8b 05 00  	mv	s6, a1
800017d4: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800017d8: 63 98 04 0e  	bnez	s1, 0x800018c8 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800017dc: 13 f5 2a 00  	andi	a0, s5, 2
800017e0: 93 f5 3a 00  	andi	a1, s5, 3
800017e4: b3 35 b0 00  	snez	a1, a1
800017e8: 13 36 59 00  	sltiu	a2, s2, 5
800017ec: b3 65 b6 00  	or	a1, a2, a1
800017f0: 93 5c 15 00  	srli	s9, a0, 1
800017f4: 13 04 0a 00  	mv	s0, s4
800017f8: 63 96 05 02  	bnez	a1, 0x80001824 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800017fc: 93 04 c9 ff  	addi	s1, s2, -4
80001800: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001804: 13 04 16 00  	addi	s0, a2, 1
80001808: 13 05 00 02  	addi	a0, zero, 32
8000180c: 93 05 0b 00  	mv	a1, s6
80001810: 93 86 09 00  	mv	a3, s3
80001814: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001818: 93 84 f4 ff  	addi	s1, s1, -1
8000181c: 13 06 04 00  	mv	a2, s0
80001820: e3 92 04 fe  	bnez	s1, 0x80001804 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001824: 93 04 14 00  	addi	s1, s0, 1
80001828: 13 05 d0 02  	addi	a0, zero, 45
8000182c: 93 05 0b 00  	mv	a1, s6
80001830: 13 06 04 00  	mv	a2, s0
80001834: 93 86 09 00  	mv	a3, s3
80001838: e7 80 0b 00  	jalr	s7
8000183c: 93 0a 24 00  	addi	s5, s0, 2
80001840: 13 05 90 06  	addi	a0, zero, 105
80001844: 93 05 0b 00  	mv	a1, s6
80001848: 13 86 04 00  	mv	a2, s1
8000184c: 93 86 09 00  	mv	a3, s3
80001850: e7 80 0b 00  	jalr	s7
80001854: 13 0c 34 00  	addi	s8, s0, 3
80001858: 13 05 e0 06  	addi	a0, zero, 110
8000185c: 93 05 0b 00  	mv	a1, s6
80001860: 13 86 0a 00  	mv	a2, s5
80001864: 93 86 09 00  	mv	a3, s3
80001868: e7 80 0b 00  	jalr	s7
8000186c: 93 04 44 00  	addi	s1, s0, 4
80001870: 13 05 60 06  	addi	a0, zero, 102
80001874: 93 05 0b 00  	mv	a1, s6
80001878: 13 06 0c 00  	mv	a2, s8
8000187c: 93 86 09 00  	mv	a3, s3
80001880: e7 80 0b 00  	jalr	s7
80001884: 33 85 44 41  	sub	a0, s1, s4
80001888: 33 35 25 01  	sltu	a0, a0, s2
8000188c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001890: 93 c5 1c 00  	xori	a1, s9, 1
80001894: 33 e5 a5 00  	or	a0, a1, a0
80001898: 63 16 05 56  	bnez	a0, 0x80001e04 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000189c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800018a0: 13 84 14 00  	addi	s0, s1, 1
800018a4: 13 05 00 02  	addi	a0, zero, 32
800018a8: 93 05 0b 00  	mv	a1, s6
800018ac: 13 86 04 00  	mv	a2, s1
800018b0: 93 86 09 00  	mv	a3, s3
800018b4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800018b8: 33 05 8a 00  	add	a0, s4, s0
800018bc: 93 04 04 00  	mv	s1, s0
800018c0: e3 60 25 ff  	bltu	a0, s2, 0x800018a0 <.LBB4_83+0xf0>
800018c4: 6f 00 40 54  	j	0x80001e08 <.LBB4_90+0x378>
800018c8: 53 04 a5 22  	fmv.d	fs0, fa0

800018cc <.LBB4_84>:
800018cc: 17 25 00 00  	auipc	a0, 2
800018d0: 13 05 c5 b2  	addi	a0, a0, -1236
800018d4: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800018d8: 53 05 05 a2  	fle.d	a0, fa0, ft0
800018dc: 63 1e 05 00  	bnez	a0, 0x800018f8 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800018e0: 93 f5 4a 00  	andi	a1, s5, 4
800018e4: 13 b5 15 00  	seqz	a0, a1
800018e8: 63 82 05 06  	beqz	a1, 0x8000194c <.LBB4_88>

800018ec <.LBB4_85>:
800018ec: 17 2c 00 00  	auipc	s8, 2
800018f0: 13 0c 4c 84  	addi	s8, s8, -1980
800018f4: 6f 00 00 06  	j	0x80001954 <.LBB4_88+0x8>

800018f8 <.LBB4_86>:
800018f8: 17 25 00 00  	auipc	a0, 2
800018fc: 13 05 85 b0  	addi	a0, a0, -1272
80001900: 07 30 05 00  	fld	ft0, 0(a0)

80001904 <.LBB4_87>:
80001904: 17 25 00 00  	auipc	a0, 2
80001908: 13 05 45 b0  	addi	a0, a0, -1276
8000190c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001910: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001914: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001918: 33 75 b5 00  	and	a0, a0, a1
8000191c: 63 1e 05 0e  	bnez	a0, 0x80001a18 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001920: 13 85 0b 00  	mv	a0, s7
80001924: 93 05 0b 00  	mv	a1, s6
80001928: 13 06 0a 00  	mv	a2, s4
8000192c: 93 86 09 00  	mv	a3, s3
80001930: 53 05 84 22  	fmv.d	fa0, fs0
80001934: 93 07 09 00  	mv	a5, s2
80001938: 13 88 0a 00  	mv	a6, s5
8000193c: 97 00 00 00  	auipc	ra, 0
80001940: e7 80 40 51  	jalr	1300(ra)
80001944: 13 04 05 00  	mv	s0, a0
80001948: 6f 00 00 4c  	j	0x80001e08 <.LBB4_90+0x378>

8000194c <.LBB4_88>:
8000194c: 17 2c 00 00  	auipc	s8, 2
80001950: 13 0c 3c 80  	addi	s8, s8, -2045
80001954: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001958: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000195c: 13 f5 3a 00  	andi	a0, s5, 3
80001960: 33 35 a0 00  	snez	a0, a0
80001964: b3 b5 2c 01  	sltu	a1, s9, s2
80001968: 93 c5 15 00  	xori	a1, a1, 1
8000196c: 33 65 b5 00  	or	a0, a0, a1
80001970: 93 fa 2a 00  	andi	s5, s5, 2
80001974: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001978: 63 16 05 02  	bnez	a0, 0x800019a4 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
8000197c: 33 04 99 41  	sub	s0, s2, s9
80001980: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001984: 93 04 16 00  	addi	s1, a2, 1
80001988: 13 05 00 02  	addi	a0, zero, 32
8000198c: 93 05 0b 00  	mv	a1, s6
80001990: 93 86 09 00  	mv	a3, s3
80001994: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001998: 13 04 f4 ff  	addi	s0, s0, -1
8000199c: 13 86 04 00  	mv	a2, s1
800019a0: e3 12 04 fe  	bnez	s0, 0x80001984 <.LBB4_88+0x38>
800019a4: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800019a8: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800019ac: 33 05 9c 01  	add	a0, s8, s9
800019b0: 03 45 05 00  	lbu	a0, 0(a0)
800019b4: 13 86 04 00  	mv	a2, s1
800019b8: 13 84 fc ff  	addi	s0, s9, -1
800019bc: 93 84 14 00  	addi	s1, s1, 1
800019c0: 93 05 0b 00  	mv	a1, s6
800019c4: 93 86 09 00  	mv	a3, s3
800019c8: e7 80 0b 00  	jalr	s7
800019cc: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800019d0: e3 1e 04 fc  	bnez	s0, 0x800019ac <.LBB4_88+0x60>
800019d4: 33 85 44 41  	sub	a0, s1, s4
800019d8: 33 35 25 01  	sltu	a0, a0, s2
800019dc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800019e0: 93 c5 1a 00  	xori	a1, s5, 1
800019e4: 33 e5 a5 00  	or	a0, a1, a0
800019e8: 63 1e 05 40  	bnez	a0, 0x80001e04 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800019ec: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800019f0: 13 84 14 00  	addi	s0, s1, 1
800019f4: 13 05 00 02  	addi	a0, zero, 32
800019f8: 93 05 0b 00  	mv	a1, s6
800019fc: 13 86 04 00  	mv	a2, s1
80001a00: 93 86 09 00  	mv	a3, s3
80001a04: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001a08: 33 05 8a 00  	add	a0, s4, s0
80001a0c: 93 04 04 00  	mv	s1, s0
80001a10: e3 60 25 ff  	bltu	a0, s2, 0x800019f0 <.LBB4_88+0xa4>
80001a14: 6f 00 40 3f  	j	0x80001e08 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001a18: 13 f5 0a 40  	andi	a0, s5, 1024
80001a1c: 13 0c 60 00  	addi	s8, zero, 6
80001a20: 63 04 05 00  	beqz	a0, 0x80001a28 <.LBB4_88+0xdc>
80001a24: 13 0c 07 00  	mv	s8, a4
80001a28: 13 05 a0 00  	addi	a0, zero, 10
80001a2c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001a30: 63 6c ac 02  	bltu	s8, a0, 0x80001a68 <.LBB4_88+0x11c>
80001a34: 93 04 6c ff  	addi	s1, s8, -10
80001a38: 13 05 f0 01  	addi	a0, zero, 31
80001a3c: 63 e4 a4 00  	bltu	s1, a0, 0x80001a44 <.LBB4_88+0xf8>
80001a40: 93 04 f0 01  	addi	s1, zero, 31
80001a44: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001a48: 13 05 81 00  	addi	a0, sp, 8
80001a4c: 93 05 00 03  	addi	a1, zero, 48
80001a50: 13 06 04 00  	mv	a2, s0
80001a54: 97 f0 ff ff  	auipc	ra, 1048575
80001a58: e7 80 40 b0  	jalr	-1276(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001a5c: 13 c5 f4 ff  	not	a0, s1
80001a60: 33 0c ac 00  	add	s8, s8, a0
80001a64: 6f 00 80 00  	j	0x80001a6c <.LBB4_88+0x120>
80001a68: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001a6c: 13 15 3c 00  	slli	a0, s8, 3

80001a70 <.LBB4_89>:
80001a70: 97 25 00 00  	auipc	a1, 2
80001a74: 93 85 05 8a  	addi	a1, a1, -1888
80001a78: 33 05 b5 00  	add	a0, a0, a1
80001a7c: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001a80: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001a84: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001a88: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001a8c: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001a90 <.LBB4_90>:
80001a90: 17 25 00 00  	auipc	a0, 2
80001a94: 13 05 05 98  	addi	a0, a0, -1664
80001a98: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001a9c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001aa0: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001aa4: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001aa8: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001aac: 63 90 05 02  	bnez	a1, 0x80001acc <.LBB4_90+0x3c>
;     ++frac;
80001ab0: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001ab4: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001ab8: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001abc: 63 94 05 02  	bnez	a1, 0x80001ae4 <.LBB4_90+0x54>
80001ac0: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001ac4: 93 84 14 00  	addi	s1, s1, 1
80001ac8: 6f 00 c0 01  	j	0x80001ae4 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001acc: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001ad0: 63 9a 05 00  	bnez	a1, 0x80001ae4 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001ad4: 93 35 15 00  	seqz	a1, a0
80001ad8: 13 76 15 00  	andi	a2, a0, 1
80001adc: b3 65 b6 00  	or	a1, a2, a1
80001ae0: 33 85 a5 00  	add	a0, a1, a0
80001ae4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001ae8: 63 0c 0c 0c  	beqz	s8, 0x80001bc0 <.LBB4_90+0x130>
80001aec: 13 06 00 00  	mv	a2, zero
80001af0: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001af4: 33 83 85 00  	add	t1, a1, s0
80001af8: 93 02 00 02  	addi	t0, zero, 32
80001afc: 33 87 82 40  	sub	a4, t0, s0
80001b00: b7 d5 cc cc  	lui	a1, 838861
80001b04: 93 83 d5 cc  	addi	t2, a1, -819
80001b08: 13 08 a0 00  	addi	a6, zero, 10
80001b0c: 93 08 90 00  	addi	a7, zero, 9
80001b10: 63 04 c7 0c  	beq	a4, a2, 0x80001bd8 <.LBB4_90+0x148>
80001b14: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001b18: 33 35 75 02  	mulhu	a0, a0, t2
80001b1c: 13 55 35 00  	srli	a0, a0, 3
80001b20: b3 06 05 03  	mul	a3, a0, a6
80001b24: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001b28: 93 e6 06 03  	ori	a3, a3, 48
80001b2c: b3 07 c3 00  	add	a5, t1, a2
80001b30: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001b34: 13 06 16 00  	addi	a2, a2, 1
80001b38: e3 ec b8 fc  	bltu	a7, a1, 0x80001b10 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001b3c: 33 05 c4 00  	add	a0, s0, a2
80001b40: 93 05 f5 ff  	addi	a1, a0, -1
80001b44: 93 06 e0 01  	addi	a3, zero, 30
80001b48: b3 b6 b6 00  	sltu	a3, a3, a1
80001b4c: 33 47 cc 00  	xor	a4, s8, a2
80001b50: 13 37 17 00  	seqz	a4, a4
80001b54: b3 e6 e6 00  	or	a3, a3, a4
80001b58: 63 94 06 08  	bnez	a3, 0x80001be0 <.LBB4_90+0x150>
80001b5c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001b60: 33 05 85 00  	add	a0, a0, s0
80001b64: 93 45 f6 ff  	not	a1, a2
80001b68: 33 8c 85 01  	add	s8, a1, s8
80001b6c: 33 04 c4 00  	add	s0, s0, a2
80001b70: 93 05 f0 01  	addi	a1, zero, 31
80001b74: b3 86 85 40  	sub	a3, a1, s0
80001b78: 33 05 c5 00  	add	a0, a0, a2
80001b7c: 93 05 0c 00  	mv	a1, s8
80001b80: 63 64 dc 00  	bltu	s8, a3, 0x80001b88 <.LBB4_90+0xf8>
80001b84: 93 85 06 00  	mv	a1, a3
80001b88: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001b8c: 93 05 00 03  	addi	a1, zero, 48
80001b90: 97 f0 ff ff  	auipc	ra, 1048575
80001b94: e7 80 80 9c  	jalr	-1592(ra)
80001b98: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001b9c: b3 05 a4 00  	add	a1, s0, a0
80001ba0: 93 b5 f5 01  	sltiu	a1, a1, 31
80001ba4: 33 46 ac 00  	xor	a2, s8, a0
80001ba8: 33 36 c0 00  	snez	a2, a2
80001bac: 33 f6 c5 00  	and	a2, a1, a2
80001bb0: 13 05 15 00  	addi	a0, a0, 1
80001bb4: e3 14 06 fe  	bnez	a2, 0x80001b9c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001bb8: 33 05 a4 00  	add	a0, s0, a0
80001bbc: 6f 00 80 02  	j	0x80001be4 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001bc0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001bc4: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001bc8: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001bcc: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001bd0: b3 84 a4 00  	add	s1, s1, a0
80001bd4: 6f 00 c0 03  	j	0x80001c10 <.LBB4_90+0x180>
80001bd8: 13 04 00 02  	addi	s0, zero, 32
80001bdc: 6f 00 80 03  	j	0x80001c14 <.LBB4_90+0x184>
80001be0: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001be4: 63 8e 05 00  	beqz	a1, 0x80001c00 <.LBB4_90+0x170>
;       buf[len++] = '.';
80001be8: 13 04 15 00  	addi	s0, a0, 1
80001bec: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001bf0: 33 85 a5 00  	add	a0, a1, a0
80001bf4: 93 05 e0 02  	addi	a1, zero, 46
80001bf8: 23 00 b5 00  	sb	a1, 0(a0)
80001bfc: 6f 00 80 00  	j	0x80001c04 <.LBB4_90+0x174>
80001c00: 13 04 05 00  	mv	s0, a0
80001c04: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001c08: 93 02 04 00  	mv	t0, s0
80001c0c: 63 64 85 00  	bltu	a0, s0, 0x80001c14 <.LBB4_90+0x184>
80001c10: 93 02 00 02  	addi	t0, zero, 32
80001c14: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001c18: 37 65 66 66  	lui	a0, 419430
80001c1c: 93 05 75 66  	addi	a1, a0, 1639
80001c20: 13 08 a0 00  	addi	a6, zero, 10
80001c24: 93 06 81 00  	addi	a3, sp, 8
80001c28: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001c2c: 63 80 82 04  	beq	t0, s0, 0x80001c6c <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80001c30: 33 95 b4 02  	mulh	a0, s1, a1
80001c34: 93 57 f5 01  	srli	a5, a0, 31
80001c38: 13 55 25 40  	srai	a0, a0, 2
80001c3c: 33 05 f5 00  	add	a0, a0, a5
80001c40: b3 07 05 03  	mul	a5, a0, a6
80001c44: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80001c48: 93 87 07 03  	addi	a5, a5, 48
80001c4c: 13 0c 14 00  	addi	s8, s0, 1
80001c50: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80001c54: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80001c58: 23 00 f4 00  	sb	a5, 0(s0)
80001c5c: 13 04 0c 00  	mv	s0, s8
80001c60: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80001c64: e3 64 c7 fc  	bltu	a4, a2, 0x80001c2c <.LBB4_90+0x19c>
80001c68: 6f 00 80 00  	j	0x80001c70 <.LBB4_90+0x1e0>
80001c6c: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001c70: 93 f4 3a 00  	andi	s1, s5, 3
80001c74: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80001c78: 63 96 a4 06  	bne	s1, a0, 0x80001ce4 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001c7c: 63 0c 09 00  	beqz	s2, 0x80001c94 <.LBB4_90+0x204>
80001c80: 13 f5 ca 00  	andi	a0, s5, 12
80001c84: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80001c88: 33 e5 ac 00  	or	a0, s9, a0
80001c8c: 33 09 a9 40  	sub	s2, s2, a0
80001c90: 6f 00 80 00  	j	0x80001c98 <.LBB4_90+0x208>
80001c94: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001c98: 33 35 2c 01  	sltu	a0, s8, s2
80001c9c: 93 45 15 00  	xori	a1, a0, 1
80001ca0: 13 05 f0 01  	addi	a0, zero, 31
80001ca4: 33 36 85 01  	sltu	a2, a0, s8
80001ca8: b3 65 b6 00  	or	a1, a2, a1
80001cac: 63 9c 05 02  	bnez	a1, 0x80001ce4 <.LBB4_90+0x254>
80001cb0: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001cb4: 93 45 fc ff  	not	a1, s8
80001cb8: b3 05 b9 00  	add	a1, s2, a1
80001cbc: 33 06 85 41  	sub	a2, a0, s8
80001cc0: 33 85 86 01  	add	a0, a3, s8
80001cc4: 63 e4 c5 00  	bltu	a1, a2, 0x80001ccc <.LBB4_90+0x23c>
80001cc8: 93 05 06 00  	mv	a1, a2
80001ccc: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80001cd0: 93 05 00 03  	addi	a1, zero, 48
80001cd4: 13 06 04 00  	mv	a2, s0
80001cd8: 97 f0 ff ff  	auipc	ra, 1048575
80001cdc: e7 80 00 88  	jalr	-1920(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001ce0: 33 0c 84 01  	add	s8, s0, s8
80001ce4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001ce8: 63 6a 85 05  	bltu	a0, s8, 0x80001d3c <.LBB4_90+0x2ac>
;     if (negative) {
80001cec: 63 8c 0c 00  	beqz	s9, 0x80001d04 <.LBB4_90+0x274>
80001cf0: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80001cf4: 33 05 85 01  	add	a0, a0, s8
80001cf8: 13 0c 1c 00  	addi	s8, s8, 1
80001cfc: 93 05 d0 02  	addi	a1, zero, 45
80001d00: 6f 00 80 03  	j	0x80001d38 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80001d04: 13 f5 4a 00  	andi	a0, s5, 4
80001d08: 63 10 05 02  	bnez	a0, 0x80001d28 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80001d0c: 13 f5 8a 00  	andi	a0, s5, 8
80001d10: 63 06 05 02  	beqz	a0, 0x80001d3c <.LBB4_90+0x2ac>
80001d14: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80001d18: 33 05 85 01  	add	a0, a0, s8
80001d1c: 13 0c 1c 00  	addi	s8, s8, 1
80001d20: 93 05 00 02  	addi	a1, zero, 32
80001d24: 6f 00 40 01  	j	0x80001d38 <.LBB4_90+0x2a8>
80001d28: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80001d2c: 33 05 85 01  	add	a0, a0, s8
80001d30: 13 0c 1c 00  	addi	s8, s8, 1
80001d34: 93 05 b0 02  	addi	a1, zero, 43
80001d38: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d3c: 33 35 90 00  	snez	a0, s1
80001d40: b3 35 2c 01  	sltu	a1, s8, s2
80001d44: 93 c5 15 00  	xori	a1, a1, 1
80001d48: 33 65 b5 00  	or	a0, a0, a1
80001d4c: 93 fa 2a 00  	andi	s5, s5, 2
80001d50: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d54: 63 16 05 02  	bnez	a0, 0x80001d80 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80001d58: b3 04 89 41  	sub	s1, s2, s8
80001d5c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001d60: 13 04 16 00  	addi	s0, a2, 1
80001d64: 13 05 00 02  	addi	a0, zero, 32
80001d68: 93 05 0b 00  	mv	a1, s6
80001d6c: 93 86 09 00  	mv	a3, s3
80001d70: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001d74: 93 84 f4 ff  	addi	s1, s1, -1
80001d78: 13 06 04 00  	mv	a2, s0
80001d7c: e3 92 04 fe  	bnez	s1, 0x80001d60 <.LBB4_90+0x2d0>
80001d80: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001d84: 63 0c 0c 02  	beqz	s8, 0x80001dbc <.LBB4_90+0x32c>
80001d88: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80001d8c: 33 85 8c 01  	add	a0, s9, s8
80001d90: 03 45 05 00  	lbu	a0, 0(a0)
80001d94: 13 0d fc ff  	addi	s10, s8, -1
80001d98: 93 04 14 00  	addi	s1, s0, 1
80001d9c: 93 05 0b 00  	mv	a1, s6
80001da0: 13 06 04 00  	mv	a2, s0
80001da4: 93 86 09 00  	mv	a3, s3
80001da8: e7 80 0b 00  	jalr	s7
80001dac: 13 84 04 00  	mv	s0, s1
80001db0: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80001db4: e3 1c 0d fc  	bnez	s10, 0x80001d8c <.LBB4_90+0x2fc>
80001db8: 6f 00 80 00  	j	0x80001dc0 <.LBB4_90+0x330>
80001dbc: 93 04 04 00  	mv	s1, s0
80001dc0: 33 85 44 41  	sub	a0, s1, s4
80001dc4: 33 35 25 01  	sltu	a0, a0, s2
80001dc8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001dcc: 93 c5 1a 00  	xori	a1, s5, 1
80001dd0: 33 e5 a5 00  	or	a0, a1, a0
80001dd4: 63 18 05 02  	bnez	a0, 0x80001e04 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001dd8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001ddc: 13 84 14 00  	addi	s0, s1, 1
80001de0: 13 05 00 02  	addi	a0, zero, 32
80001de4: 93 05 0b 00  	mv	a1, s6
80001de8: 13 86 04 00  	mv	a2, s1
80001dec: 93 86 09 00  	mv	a3, s3
80001df0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001df4: 33 05 8a 00  	add	a0, s4, s0
80001df8: 93 04 04 00  	mv	s1, s0
80001dfc: e3 60 25 ff  	bltu	a0, s2, 0x80001ddc <.LBB4_90+0x34c>
80001e00: 6f 00 80 00  	j	0x80001e08 <.LBB4_90+0x378>
80001e04: 13 84 04 00  	mv	s0, s1
; }
80001e08: 13 05 04 00  	mv	a0, s0
80001e0c: 07 39 81 02  	fld	fs2, 40(sp)
80001e10: 87 34 01 03  	fld	fs1, 48(sp)
80001e14: 07 34 81 03  	fld	fs0, 56(sp)
80001e18: 03 2d 01 04  	lw	s10, 64(sp)
80001e1c: 83 2c 41 04  	lw	s9, 68(sp)
80001e20: 03 2c 81 04  	lw	s8, 72(sp)
80001e24: 83 2b c1 04  	lw	s7, 76(sp)
80001e28: 03 2b 01 05  	lw	s6, 80(sp)
80001e2c: 83 2a 41 05  	lw	s5, 84(sp)
80001e30: 03 2a 81 05  	lw	s4, 88(sp)
80001e34: 83 29 c1 05  	lw	s3, 92(sp)
80001e38: 03 29 01 06  	lw	s2, 96(sp)
80001e3c: 83 24 41 06  	lw	s1, 100(sp)
80001e40: 03 24 81 06  	lw	s0, 104(sp)
80001e44: 83 20 c1 06  	lw	ra, 108(sp)
80001e48: 13 01 01 07  	addi	sp, sp, 112
80001e4c: 67 80 00 00  	ret

80001e50 <_etoa>:
; {
80001e50: 13 01 01 f8  	addi	sp, sp, -128
80001e54: 23 2e 11 06  	sw	ra, 124(sp)
80001e58: 23 2c 81 06  	sw	s0, 120(sp)
80001e5c: 23 2a 91 06  	sw	s1, 116(sp)
80001e60: 23 28 21 07  	sw	s2, 112(sp)
80001e64: 23 26 31 07  	sw	s3, 108(sp)
80001e68: 23 24 41 07  	sw	s4, 104(sp)
80001e6c: 23 22 51 07  	sw	s5, 100(sp)
80001e70: 23 20 61 07  	sw	s6, 96(sp)
80001e74: 23 2e 71 05  	sw	s7, 92(sp)
80001e78: 23 2c 81 05  	sw	s8, 88(sp)
80001e7c: 23 2a 91 05  	sw	s9, 84(sp)
80001e80: 23 28 a1 05  	sw	s10, 80(sp)
80001e84: 23 26 b1 05  	sw	s11, 76(sp)

80001e88 <.LBB5_43>:
80001e88: 97 14 00 00  	auipc	s1, 1
80001e8c: 93 84 04 59  	addi	s1, s1, 1424
80001e90: 87 b0 04 00  	fld	ft1, 0(s1)

80001e94 <.LBB5_44>:
80001e94: 97 14 00 00  	auipc	s1, 1
80001e98: 93 84 c4 58  	addi	s1, s1, 1420
80001e9c: 07 b1 04 00  	fld	ft2, 0(s1)
80001ea0: 53 00 a5 22  	fmv.d	ft0, fa0
80001ea4: d3 04 15 a2  	fle.d	s1, fa0, ft1
80001ea8: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001eac: b3 f4 84 00  	and	s1, s1, s0
80001eb0: 93 0a 08 00  	mv	s5, a6
80001eb4: 13 89 07 00  	mv	s2, a5
80001eb8: 93 07 07 00  	mv	a5, a4
80001ebc: 93 89 06 00  	mv	s3, a3
80001ec0: 13 0a 06 00  	mv	s4, a2
80001ec4: 13 8b 05 00  	mv	s6, a1
80001ec8: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001ecc: 63 92 04 06  	bnez	s1, 0x80001f30 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001ed0: 13 85 0b 00  	mv	a0, s7
80001ed4: 93 05 0b 00  	mv	a1, s6
80001ed8: 13 06 0a 00  	mv	a2, s4
80001edc: 93 86 09 00  	mv	a3, s3
80001ee0: 53 05 00 22  	fmv.d	fa0, ft0
80001ee4: 13 87 07 00  	mv	a4, a5
80001ee8: 93 07 09 00  	mv	a5, s2
80001eec: 13 88 0a 00  	mv	a6, s5
80001ef0: 83 2d c1 04  	lw	s11, 76(sp)
80001ef4: 03 2d 01 05  	lw	s10, 80(sp)
80001ef8: 83 2c 41 05  	lw	s9, 84(sp)
80001efc: 03 2c 81 05  	lw	s8, 88(sp)
80001f00: 83 2b c1 05  	lw	s7, 92(sp)
80001f04: 03 2b 01 06  	lw	s6, 96(sp)
80001f08: 83 2a 41 06  	lw	s5, 100(sp)
80001f0c: 03 2a 81 06  	lw	s4, 104(sp)
80001f10: 83 29 c1 06  	lw	s3, 108(sp)
80001f14: 03 29 01 07  	lw	s2, 112(sp)
80001f18: 83 24 41 07  	lw	s1, 116(sp)
80001f1c: 03 24 81 07  	lw	s0, 120(sp)
80001f20: 83 20 c1 07  	lw	ra, 124(sp)
80001f24: 13 01 01 08  	addi	sp, sp, 128
80001f28: 17 03 00 00  	auipc	t1, 0
80001f2c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80001f30: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80001f34: 13 f5 0a 40  	andi	a0, s5, 1024
80001f38: 13 07 60 00  	addi	a4, zero, 6
80001f3c: 63 04 05 00  	beqz	a0, 0x80001f44 <.LBB5_44+0xb0>
80001f40: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80001f44: 27 30 a1 02  	fsd	fa0, 32(sp)
80001f48: 83 25 41 02  	lw	a1, 36(sp)
80001f4c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001f50: 93 d6 45 01  	srli	a3, a1, 20
80001f54: b7 07 10 00  	lui	a5, 256
80001f58: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001f5c: b3 f5 f5 00  	and	a1, a1, a5
80001f60: 23 2c c1 00  	sw	a2, 24(sp)
80001f64: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001f68: b3 e5 c5 00  	or	a1, a1, a2
80001f6c: 23 2e b1 00  	sw	a1, 28(sp)
80001f70: 87 30 81 01  	fld	ft1, 24(sp)

80001f74 <.LBB5_45>:
80001f74: 97 15 00 00  	auipc	a1, 1
80001f78: 93 85 45 4b  	addi	a1, a1, 1204
80001f7c: 07 b1 05 00  	fld	ft2, 0(a1)

80001f80 <.LBB5_46>:
80001f80: 97 15 00 00  	auipc	a1, 1
80001f84: 93 85 05 4b  	addi	a1, a1, 1200
80001f88: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001f8c: 93 f5 f6 7f  	andi	a1, a3, 2047
80001f90: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001f94: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001f98: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80001f9c <.LBB5_47>:
80001f9c: 97 15 00 00  	auipc	a1, 1
80001fa0: 93 85 c5 49  	addi	a1, a1, 1180
80001fa4: 07 b1 05 00  	fld	ft2, 0(a1)

80001fa8 <.LBB5_48>:
80001fa8: 97 15 00 00  	auipc	a1, 1
80001fac: 93 85 85 49  	addi	a1, a1, 1176
80001fb0: 87 b1 05 00  	fld	ft3, 0(a1)

80001fb4 <.LBB5_49>:
80001fb4: 97 15 00 00  	auipc	a1, 1
80001fb8: 93 85 45 49  	addi	a1, a1, 1172
80001fbc: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001fc0: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80001fc4: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001fc8: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001fcc: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80001fd0 <.LBB5_50>:
80001fd0: 17 16 00 00  	auipc	a2, 1
80001fd4: 13 06 06 48  	addi	a2, a2, 1152
80001fd8: 87 31 06 00  	fld	ft3, 0(a2)

80001fdc <.LBB5_51>:
80001fdc: 17 16 00 00  	auipc	a2, 1
80001fe0: 13 06 c6 47  	addi	a2, a2, 1148
80001fe4: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001fe8: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80001fec: 53 01 06 d2  	fcvt.d.w	ft2, a2
80001ff0: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80001ff4: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80001ff8: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001ffc: 13 06 f6 3f  	addi	a2, a2, 1023
80002000: 23 28 01 00  	sw	zero, 16(sp)
80002004: 13 16 46 01  	slli	a2, a2, 20
80002008: 23 2a c1 00  	sw	a2, 20(sp)

8000200c <.LBB5_52>:
8000200c: 17 16 00 00  	auipc	a2, 1
80002010: 13 06 c6 45  	addi	a2, a2, 1116
80002014: 87 31 06 00  	fld	ft3, 0(a2)

80002018 <.LBB5_53>:
80002018: 17 16 00 00  	auipc	a2, 1
8000201c: 13 06 86 45  	addi	a2, a2, 1112
80002020: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002024: 87 32 01 01  	fld	ft5, 16(sp)

80002028 <.LBB5_54>:
80002028: 17 16 00 00  	auipc	a2, 1
8000202c: 13 06 86 43  	addi	a2, a2, 1080
80002030: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002034: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002038 <.LBB5_55>:
80002038: 17 16 00 00  	auipc	a2, 1
8000203c: 13 06 06 44  	addi	a2, a2, 1088
80002040: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002044: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002048: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000204c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002050: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002054: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002058: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000205c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002060: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002064: 53 16 15 a2  	flt.d	a2, fa0, ft1
80002068: 63 0a 06 00  	beqz	a2, 0x8000207c <.LBB5_56+0x10>

8000206c <.LBB5_56>:
8000206c: 97 16 00 00  	auipc	a3, 1
80002070: 93 86 46 41  	addi	a3, a3, 1044
80002074: 07 b1 06 00  	fld	ft2, 0(a3)
80002078: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
8000207c: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002080: 93 05 34 06  	addi	a1, s0, 99
80002084: 93 b5 75 0c  	sltiu	a1, a1, 199
80002088: 13 06 50 00  	addi	a2, zero, 5
8000208c: b7 16 00 00  	lui	a3, 1
80002090: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002094: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002098: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
8000209c: 63 84 06 06  	beqz	a3, 0x80002104 <.LBB5_58+0x58>

800020a0 <.LBB5_57>:
800020a0: 97 15 00 00  	auipc	a1, 1
800020a4: 93 85 85 3e  	addi	a1, a1, 1000
800020a8: 07 b1 05 00  	fld	ft2, 0(a1)

800020ac <.LBB5_58>:
800020ac: 97 15 00 00  	auipc	a1, 1
800020b0: 93 85 45 3e  	addi	a1, a1, 996
800020b4: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800020b8: d3 15 25 a2  	flt.d	a1, fa0, ft2
800020bc: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800020c0: b3 e5 c5 00  	or	a1, a1, a2
800020c4: 63 98 05 00  	bnez	a1, 0x800020d4 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800020c8: 63 40 e4 02  	blt	s0, a4, 0x800020e8 <.LBB5_58+0x3c>
800020cc: 13 07 00 00  	mv	a4, zero
800020d0: 6f 00 00 02  	j	0x800020f0 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800020d4: 63 06 07 02  	beqz	a4, 0x80002100 <.LBB5_58+0x54>
800020d8: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800020dc: 13 45 15 00  	xori	a0, a0, 1
800020e0: 33 07 a7 40  	sub	a4, a4, a0
800020e4: 6f 00 00 02  	j	0x80002104 <.LBB5_58+0x58>
800020e8: 13 45 f4 ff  	not	a0, s0
800020ec: 33 07 a7 00  	add	a4, a4, a0
800020f0: 13 04 00 00  	mv	s0, zero
800020f4: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800020f8: 93 ea 0a 40  	ori	s5, s5, 1024
800020fc: 6f 00 80 00  	j	0x80002104 <.LBB5_58+0x58>
80002100: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002104: b3 05 99 41  	sub	a1, s2, s9
80002108: 33 36 b9 00  	sltu	a2, s2, a1
8000210c: 13 05 00 00  	mv	a0, zero
80002110: 63 14 06 00  	bnez	a2, 0x80002118 <.LBB5_58+0x6c>
80002114: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002118: 93 07 00 00  	mv	a5, zero
8000211c: 93 d5 1a 00  	srli	a1, s5, 1
80002120: 93 f4 15 00  	andi	s1, a1, 1
80002124: b3 35 90 01  	snez	a1, s9
80002128: b3 f5 b4 00  	and	a1, s1, a1
8000212c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002130: 63 94 05 00  	bnez	a1, 0x80002138 <.LBB5_58+0x8c>
80002134: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002138: 93 35 14 00  	seqz	a1, s0
8000213c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002140: 63 94 05 00  	bnez	a1, 0x80002148 <.LBB5_58+0x9c>
80002144: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002148: 63 04 05 00  	beqz	a0, 0x80002150 <.LBB5_58+0xa4>
8000214c: 53 15 a5 22  	fneg.d	fa0, fa0
80002150: 37 f5 ff ff  	lui	a0, 1048575
80002154: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002158: 33 f8 aa 00  	and	a6, s5, a0
8000215c: 13 85 0b 00  	mv	a0, s7
80002160: 93 05 0b 00  	mv	a1, s6
80002164: 13 06 0a 00  	mv	a2, s4
80002168: 93 86 09 00  	mv	a3, s3
8000216c: 97 f0 ff ff  	auipc	ra, 1048575
80002170: e7 80 40 60  	jalr	1540(ra)
80002174: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80002178: 63 82 0c 18  	beqz	s9, 0x800022fc <.LBB5_58+0x250>
8000217c: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002180: 13 f5 0a 02  	andi	a0, s5, 32
80002184: 13 45 55 06  	xori	a0, a0, 101
80002188: 93 05 0b 00  	mv	a1, s6
8000218c: 13 06 0d 00  	mv	a2, s10
80002190: 93 86 09 00  	mv	a3, s3
80002194: e7 80 0b 00  	jalr	s7
80002198: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
8000219c: 93 5a f4 01  	srli	s5, s0, 31
800021a0: 13 55 f4 41  	srai	a0, s0, 31
800021a4: b3 05 a4 00  	add	a1, s0, a0
800021a8: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800021ac: 93 8d dc ff  	addi	s11, s9, -3
800021b0: 13 04 f0 01  	addi	s0, zero, 31
800021b4: 37 d5 cc cc  	lui	a0, 838861
800021b8: 13 05 d5 cc  	addi	a0, a0, -819
800021bc: 13 08 a0 00  	addi	a6, zero, 10
800021c0: 93 08 c1 02  	addi	a7, sp, 44
800021c4: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800021c8: b3 37 a7 02  	mulhu	a5, a4, a0
800021cc: 93 d5 37 00  	srli	a1, a5, 3
800021d0: b3 87 05 03  	mul	a5, a1, a6
800021d4: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800021d8: 13 e6 07 03  	ori	a2, a5, 48
800021dc: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800021e0: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800021e4: 13 0c 1c 00  	addi	s8, s8, 1
800021e8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800021ec: 33 b6 e2 00  	sltu	a2, t0, a4
800021f0: 33 f6 c7 00  	and	a2, a5, a2
800021f4: 93 8d fd ff  	addi	s11, s11, -1
800021f8: 13 04 f4 ff  	addi	s0, s0, -1
800021fc: 13 87 05 00  	mv	a4, a1
80002200: e3 14 06 fc  	bnez	a2, 0x800021c8 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002204: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002208: 33 35 ac 00  	sltu	a0, s8, a0
8000220c: 13 45 15 00  	xori	a0, a0, 1
80002210: 93 c5 17 00  	xori	a1, a5, 1
80002214: 33 e5 a5 00  	or	a0, a1, a0
80002218: 63 12 05 04  	bnez	a0, 0x8000225c <.LBB5_58+0x1b0>
8000221c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002220: b3 85 8c 41  	sub	a1, s9, s8
80002224: 93 85 d5 ff  	addi	a1, a1, -3
80002228: 13 06 f0 01  	addi	a2, zero, 31
8000222c: 33 06 86 41  	sub	a2, a2, s8
80002230: 33 05 85 01  	add	a0, a0, s8
80002234: 63 e4 c5 00  	bltu	a1, a2, 0x8000223c <.LBB5_58+0x190>
80002238: 93 05 06 00  	mv	a1, a2
8000223c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002240: 93 05 00 03  	addi	a1, zero, 48
80002244: 97 e0 ff ff  	auipc	ra, 1048574
80002248: e7 80 40 31  	jalr	788(ra)
;   if (flags & FLAGS_HASH) {
8000224c: 63 e4 8d 00  	bltu	s11, s0, 0x80002254 <.LBB5_58+0x1a8>
80002250: 93 0d 04 00  	mv	s11, s0
80002254: 33 85 8d 01  	add	a0, s11, s8
80002258: 13 0c 15 00  	addi	s8, a0, 1
8000225c: 83 2c c1 00  	lw	s9, 12(sp)
80002260: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002264: 63 60 85 03  	bltu	a0, s8, 0x80002284 <.LBB5_58+0x1d8>
80002268: 13 05 c1 02  	addi	a0, sp, 44
8000226c: 33 05 85 01  	add	a0, a0, s8
80002270: 93 05 d0 02  	addi	a1, zero, 45
80002274: 63 94 0a 00  	bnez	s5, 0x8000227c <.LBB5_58+0x1d0>
80002278: 93 05 b0 02  	addi	a1, zero, 43
8000227c: 13 0c 1c 00  	addi	s8, s8, 1
80002280: 23 00 b5 00  	sb	a1, 0(a0)
80002284: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80002288: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
8000228c: 33 85 8a 01  	add	a0, s5, s8
80002290: 03 45 05 00  	lbu	a0, 0(a0)
80002294: 13 06 04 00  	mv	a2, s0
80002298: 93 04 fc ff  	addi	s1, s8, -1
8000229c: 13 04 14 00  	addi	s0, s0, 1
800022a0: 93 05 0b 00  	mv	a1, s6
800022a4: 93 86 09 00  	mv	a3, s3
800022a8: e7 80 0b 00  	jalr	s7
800022ac: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800022b0: e3 9e 04 fc  	bnez	s1, 0x8000228c <.LBB5_58+0x1e0>
800022b4: 33 05 44 41  	sub	a0, s0, s4
800022b8: 33 35 25 01  	sltu	a0, a0, s2
800022bc: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800022c0: 93 c5 1c 00  	xori	a1, s9, 1
800022c4: 33 e5 a5 00  	or	a0, a1, a0
800022c8: 63 18 05 02  	bnez	a0, 0x800022f8 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800022cc: b3 04 40 41  	neg	s1, s4
800022d0: 13 0d 14 00  	addi	s10, s0, 1
800022d4: 13 05 00 02  	addi	a0, zero, 32
800022d8: 93 05 0b 00  	mv	a1, s6
800022dc: 13 06 04 00  	mv	a2, s0
800022e0: 93 86 09 00  	mv	a3, s3
800022e4: e7 80 0b 00  	jalr	s7
800022e8: 33 85 a4 01  	add	a0, s1, s10
800022ec: 13 04 0d 00  	mv	s0, s10
800022f0: e3 60 25 ff  	bltu	a0, s2, 0x800022d0 <.LBB5_58+0x224>
800022f4: 6f 00 80 00  	j	0x800022fc <.LBB5_58+0x250>
800022f8: 13 0d 04 00  	mv	s10, s0
; }
800022fc: 13 05 0d 00  	mv	a0, s10
80002300: 83 2d c1 04  	lw	s11, 76(sp)
80002304: 03 2d 01 05  	lw	s10, 80(sp)
80002308: 83 2c 41 05  	lw	s9, 84(sp)
8000230c: 03 2c 81 05  	lw	s8, 88(sp)
80002310: 83 2b c1 05  	lw	s7, 92(sp)
80002314: 03 2b 01 06  	lw	s6, 96(sp)
80002318: 83 2a 41 06  	lw	s5, 100(sp)
8000231c: 03 2a 81 06  	lw	s4, 104(sp)
80002320: 83 29 c1 06  	lw	s3, 108(sp)
80002324: 03 29 01 07  	lw	s2, 112(sp)
80002328: 83 24 41 07  	lw	s1, 116(sp)
8000232c: 03 24 81 07  	lw	s0, 120(sp)
80002330: 83 20 c1 07  	lw	ra, 124(sp)
80002334: 13 01 01 08  	addi	sp, sp, 128
80002338: 67 80 00 00  	ret

8000233c <_ntoa_format>:
; {
8000233c: 13 01 01 fc  	addi	sp, sp, -64
80002340: 23 2e 11 02  	sw	ra, 60(sp)
80002344: 23 2c 81 02  	sw	s0, 56(sp)
80002348: 23 2a 91 02  	sw	s1, 52(sp)
8000234c: 23 28 21 03  	sw	s2, 48(sp)
80002350: 23 26 31 03  	sw	s3, 44(sp)
80002354: 23 24 41 03  	sw	s4, 40(sp)
80002358: 23 22 51 03  	sw	s5, 36(sp)
8000235c: 23 20 61 03  	sw	s6, 32(sp)
80002360: 23 2e 71 01  	sw	s7, 28(sp)
80002364: 23 2c 81 01  	sw	s8, 24(sp)
80002368: 23 2a 91 01  	sw	s9, 20(sp)
8000236c: 23 28 a1 01  	sw	s10, 16(sp)
80002370: 23 26 b1 01  	sw	s11, 12(sp)
80002374: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80002378: 93 fa 2e 00  	andi	s5, t4, 2
8000237c: 13 09 0e 00  	mv	s2, t3
80002380: 13 8d 03 00  	mv	s10, t2
80002384: 93 8c 08 00  	mv	s9, a7
80002388: 13 8c 07 00  	mv	s8, a5
8000238c: 93 89 06 00  	mv	s3, a3
80002390: 13 0a 06 00  	mv	s4, a2
80002394: 13 8b 05 00  	mv	s6, a1
80002398: 93 0d 05 00  	mv	s11, a0
8000239c: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800023a0: 63 9e 0a 0c  	bnez	s5, 0x8000247c <_ntoa_format+0x140>
800023a4: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800023a8: 63 0e 09 00  	beqz	s2, 0x800023c4 <_ntoa_format+0x88>
800023ac: 63 0e 04 00  	beqz	s0, 0x800023c8 <_ntoa_format+0x8c>
800023b0: 13 f5 cb 00  	andi	a0, s7, 12
800023b4: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800023b8: 33 65 05 01  	or	a0, a0, a6
800023bc: 33 09 a9 40  	sub	s2, s2, a0
800023c0: 6f 00 80 00  	j	0x800023c8 <_ntoa_format+0x8c>
800023c4: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800023c8: 33 35 ac 01  	sltu	a0, s8, s10
800023cc: 93 45 15 00  	xori	a1, a0, 1
800023d0: 13 05 f0 01  	addi	a0, zero, 31
800023d4: 33 36 85 01  	sltu	a2, a0, s8
800023d8: b3 65 b6 00  	or	a1, a2, a1
800023dc: 63 94 05 04  	bnez	a1, 0x80002424 <_ntoa_format+0xe8>
800023e0: 23 22 51 01  	sw	s5, 4(sp)
800023e4: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800023e8: 93 45 fc ff  	not	a1, s8
800023ec: b3 85 a5 01  	add	a1, a1, s10
800023f0: 33 06 85 41  	sub	a2, a0, s8
800023f4: 33 05 87 01  	add	a0, a4, s8
800023f8: 63 e4 c5 00  	bltu	a1, a2, 0x80002400 <_ntoa_format+0xc4>
800023fc: 93 05 06 00  	mv	a1, a2
80002400: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002404: 93 05 00 03  	addi	a1, zero, 48
80002408: 13 86 04 00  	mv	a2, s1
8000240c: 97 e0 ff ff  	auipc	ra, 1048574
80002410: e7 80 c0 14  	jalr	332(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002414: 33 8c 84 01  	add	s8, s1, s8
80002418: 03 27 81 00  	lw	a4, 8(sp)
8000241c: 13 88 0a 00  	mv	a6, s5
80002420: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002424: 63 0c 04 04  	beqz	s0, 0x8000247c <_ntoa_format+0x140>
80002428: 33 35 2c 01  	sltu	a0, s8, s2
8000242c: 93 45 15 00  	xori	a1, a0, 1
80002430: 13 05 f0 01  	addi	a0, zero, 31
80002434: 33 36 85 01  	sltu	a2, a0, s8
80002438: b3 e5 c5 00  	or	a1, a1, a2
8000243c: 63 90 05 04  	bnez	a1, 0x8000247c <_ntoa_format+0x140>
80002440: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002444: 93 45 fc ff  	not	a1, s8
80002448: b3 05 b9 00  	add	a1, s2, a1
8000244c: 33 06 85 41  	sub	a2, a0, s8
80002450: 33 05 87 01  	add	a0, a4, s8
80002454: 63 e4 c5 00  	bltu	a1, a2, 0x8000245c <_ntoa_format+0x120>
80002458: 93 05 06 00  	mv	a1, a2
8000245c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002460: 93 05 00 03  	addi	a1, zero, 48
80002464: 13 86 04 00  	mv	a2, s1
80002468: 97 e0 ff ff  	auipc	ra, 1048574
8000246c: e7 80 00 0f  	jalr	240(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002470: 33 8c 84 01  	add	s8, s1, s8
80002474: 03 27 81 00  	lw	a4, 8(sp)
80002478: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
8000247c: 13 f5 0b 01  	andi	a0, s7, 16
80002480: 63 02 05 0e  	beqz	a0, 0x80002564 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002484: 13 f5 0b 40  	andi	a0, s7, 1024
80002488: 13 55 a5 00  	srli	a0, a0, 10
8000248c: 93 35 1c 00  	seqz	a1, s8
80002490: 33 65 b5 00  	or	a0, a0, a1
80002494: 63 1e 05 02  	bnez	a0, 0x800024d0 <_ntoa_format+0x194>
80002498: 33 45 ac 01  	xor	a0, s8, s10
8000249c: 33 35 a0 00  	snez	a0, a0
800024a0: b3 45 2c 01  	xor	a1, s8, s2
800024a4: b3 35 b0 00  	snez	a1, a1
800024a8: 33 75 b5 00  	and	a0, a0, a1
800024ac: 63 12 05 02  	bnez	a0, 0x800024d0 <_ntoa_format+0x194>
;       len--;
800024b0: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800024b4: b3 35 a0 00  	snez	a1, a0
800024b8: 13 86 0c ff  	addi	a2, s9, -16
800024bc: 13 36 16 00  	seqz	a2, a2
800024c0: b3 75 b6 00  	and	a1, a2, a1
800024c4: 63 84 05 00  	beqz	a1, 0x800024cc <_ntoa_format+0x190>
800024c8: 13 05 ec ff  	addi	a0, s8, -2
800024cc: 13 0c 05 00  	mv	s8, a0
800024d0: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800024d4: 63 96 ac 02  	bne	s9, a0, 0x80002500 <_ntoa_format+0x1c4>
800024d8: 13 f5 0b 02  	andi	a0, s7, 32
800024dc: 93 55 55 00  	srli	a1, a0, 5
800024e0: 13 06 f0 01  	addi	a2, zero, 31
800024e4: 33 36 86 01  	sltu	a2, a2, s8
800024e8: b3 e5 c5 00  	or	a1, a1, a2
800024ec: 63 9e 05 02  	bnez	a1, 0x80002528 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800024f0: 33 05 87 01  	add	a0, a4, s8
800024f4: 13 0c 1c 00  	addi	s8, s8, 1
800024f8: 93 05 80 07  	addi	a1, zero, 120
800024fc: 6f 00 c0 04  	j	0x80002548 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002500: 13 85 ec ff  	addi	a0, s9, -2
80002504: 33 35 a0 00  	snez	a0, a0
80002508: 93 05 f0 01  	addi	a1, zero, 31
8000250c: b3 b5 85 01  	sltu	a1, a1, s8
80002510: 33 65 b5 00  	or	a0, a0, a1
80002514: 63 1c 05 02  	bnez	a0, 0x8000254c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002518: 33 05 87 01  	add	a0, a4, s8
8000251c: 13 0c 1c 00  	addi	s8, s8, 1
80002520: 93 05 20 06  	addi	a1, zero, 98
80002524: 6f 00 40 02  	j	0x80002548 <_ntoa_format+0x20c>
80002528: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000252c: 13 35 15 00  	seqz	a0, a0
80002530: 93 c5 15 00  	xori	a1, a1, 1
80002534: 33 65 b5 00  	or	a0, a0, a1
80002538: 63 1a 05 00  	bnez	a0, 0x8000254c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000253c: 33 05 87 01  	add	a0, a4, s8
80002540: 13 0c 1c 00  	addi	s8, s8, 1
80002544: 93 05 80 05  	addi	a1, zero, 88
80002548: 23 00 b5 00  	sb	a1, 0(a0)
8000254c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002550: 63 60 85 07  	bltu	a0, s8, 0x800025b0 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002554: 33 05 87 01  	add	a0, a4, s8
80002558: 13 0c 1c 00  	addi	s8, s8, 1
8000255c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002560: 23 00 b5 00  	sb	a1, 0(a0)
80002564: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002568: 63 64 85 05  	bltu	a0, s8, 0x800025b0 <_ntoa_format+0x274>
;     if (negative) {
8000256c: 63 0a 08 00  	beqz	a6, 0x80002580 <_ntoa_format+0x244>
;       buf[len++] = '-';
80002570: 33 05 87 01  	add	a0, a4, s8
80002574: 13 0c 1c 00  	addi	s8, s8, 1
80002578: 93 05 d0 02  	addi	a1, zero, 45
8000257c: 6f 00 00 03  	j	0x800025ac <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002580: 13 f5 4b 00  	andi	a0, s7, 4
80002584: 63 1e 05 00  	bnez	a0, 0x800025a0 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80002588: 13 f5 8b 00  	andi	a0, s7, 8
8000258c: 63 02 05 02  	beqz	a0, 0x800025b0 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002590: 33 05 87 01  	add	a0, a4, s8
80002594: 13 0c 1c 00  	addi	s8, s8, 1
80002598: 93 05 00 02  	addi	a1, zero, 32
8000259c: 6f 00 00 01  	j	0x800025ac <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800025a0: 33 05 87 01  	add	a0, a4, s8
800025a4: 13 0c 1c 00  	addi	s8, s8, 1
800025a8: 93 05 b0 02  	addi	a1, zero, 43
800025ac: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800025b0: 13 f5 3b 00  	andi	a0, s7, 3
800025b4: 33 35 a0 00  	snez	a0, a0
800025b8: b3 35 2c 01  	sltu	a1, s8, s2
800025bc: 93 c5 15 00  	xori	a1, a1, 1
800025c0: 33 65 b5 00  	or	a0, a0, a1
800025c4: 13 04 0a 00  	mv	s0, s4
800025c8: 63 16 05 02  	bnez	a0, 0x800025f4 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800025cc: b3 04 89 41  	sub	s1, s2, s8
800025d0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800025d4: 13 04 16 00  	addi	s0, a2, 1
800025d8: 13 05 00 02  	addi	a0, zero, 32
800025dc: 93 05 0b 00  	mv	a1, s6
800025e0: 93 86 09 00  	mv	a3, s3
800025e4: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800025e8: 93 84 f4 ff  	addi	s1, s1, -1
800025ec: 13 06 04 00  	mv	a2, s0
800025f0: e3 92 04 fe  	bnez	s1, 0x800025d4 <_ntoa_format+0x298>
800025f4: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800025f8: 63 0e 0c 02  	beqz	s8, 0x80002634 <_ntoa_format+0x2f8>
800025fc: 03 25 81 00  	lw	a0, 8(sp)
80002600: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002604: 33 85 8b 01  	add	a0, s7, s8
80002608: 03 45 05 00  	lbu	a0, 0(a0)
8000260c: 93 0c fc ff  	addi	s9, s8, -1
80002610: 93 04 14 00  	addi	s1, s0, 1
80002614: 93 05 0b 00  	mv	a1, s6
80002618: 13 06 04 00  	mv	a2, s0
8000261c: 93 86 09 00  	mv	a3, s3
80002620: e7 80 0d 00  	jalr	s11
80002624: 13 84 04 00  	mv	s0, s1
80002628: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
8000262c: e3 9c 0c fc  	bnez	s9, 0x80002604 <_ntoa_format+0x2c8>
80002630: 6f 00 80 00  	j	0x80002638 <_ntoa_format+0x2fc>
80002634: 93 04 04 00  	mv	s1, s0
80002638: 33 85 44 41  	sub	a0, s1, s4
8000263c: 33 35 25 01  	sltu	a0, a0, s2
80002640: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002644: 93 c5 1a 00  	xori	a1, s5, 1
80002648: 33 e5 a5 00  	or	a0, a1, a0
8000264c: 63 18 05 02  	bnez	a0, 0x8000267c <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002650: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002654: 13 84 14 00  	addi	s0, s1, 1
80002658: 13 05 00 02  	addi	a0, zero, 32
8000265c: 93 05 0b 00  	mv	a1, s6
80002660: 13 86 04 00  	mv	a2, s1
80002664: 93 86 09 00  	mv	a3, s3
80002668: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
8000266c: 33 05 8a 00  	add	a0, s4, s0
80002670: 93 04 04 00  	mv	s1, s0
80002674: e3 60 25 ff  	bltu	a0, s2, 0x80002654 <_ntoa_format+0x318>
80002678: 6f 00 80 00  	j	0x80002680 <_ntoa_format+0x344>
8000267c: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002680: 13 05 04 00  	mv	a0, s0
80002684: 83 2d c1 00  	lw	s11, 12(sp)
80002688: 03 2d 01 01  	lw	s10, 16(sp)
8000268c: 83 2c 41 01  	lw	s9, 20(sp)
80002690: 03 2c 81 01  	lw	s8, 24(sp)
80002694: 83 2b c1 01  	lw	s7, 28(sp)
80002698: 03 2b 01 02  	lw	s6, 32(sp)
8000269c: 83 2a 41 02  	lw	s5, 36(sp)
800026a0: 03 2a 81 02  	lw	s4, 40(sp)
800026a4: 83 29 c1 02  	lw	s3, 44(sp)
800026a8: 03 29 01 03  	lw	s2, 48(sp)
800026ac: 83 24 41 03  	lw	s1, 52(sp)
800026b0: 03 24 81 03  	lw	s0, 56(sp)
800026b4: 83 20 c1 03  	lw	ra, 60(sp)
800026b8: 13 01 01 04  	addi	sp, sp, 64
800026bc: 67 80 00 00  	ret

800026c0 <_snrt_init_team>:
;     team->base.root = team;
800026c0: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800026c4: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800026c8: 03 23 87 00  	lw	t1, 8(a4)
800026cc: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800026d0: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800026d4: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800026d8: 83 22 47 00  	lw	t0, 4(a4)
800026dc: 33 88 08 03  	mul	a6, a7, a6
800026e0: 33 05 58 02  	mul	a0, a6, t0
800026e4: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800026e8: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800026ec: 33 85 68 40  	sub	a0, a7, t1
800026f0: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800026f4: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800026f8: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800026fc: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002700: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002704: 03 25 87 01  	lw	a0, 24(a4)
80002708: b7 05 00 10  	lui	a1, 65536
8000270c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002710: 23 a2 07 02  	sw	zero, 36(a5)
80002714: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002718: 03 25 07 02  	lw	a0, 32(a4)
8000271c: 83 25 47 02  	lw	a1, 36(a4)
80002720: 23 a4 a7 02  	sw	a0, 40(a5)
80002724: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002728: 23 a8 c7 02  	sw	a2, 48(a5)
8000272c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002730: 23 ac d7 02  	sw	a3, 56(a5)
80002734: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002738: 03 25 07 01  	lw	a0, 16(a4)
8000273c: 33 08 a6 00  	add	a6, a2, a0
80002740: 93 05 08 19  	addi	a1, a6, 400
80002744: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002748: b3 32 a8 00  	sltu	t0, a6, a0
8000274c: 93 55 15 00  	srli	a1, a0, 1
80002750: 33 03 b8 00  	add	t1, a6, a1
80002754: b3 35 03 01  	sltu	a1, t1, a6
80002758: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
8000275c: 23 a0 67 04  	sw	t1, 64(a5)
80002760: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002764: 13 15 15 00  	slli	a0, a0, 1
80002768: b3 05 c5 00  	add	a1, a0, a2
8000276c: 33 b5 a5 00  	sltu	a0, a1, a0
80002770: 23 a4 b7 04  	sw	a1, 72(a5)
80002774: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002778: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
8000277c: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002780: 37 05 00 00  	lui	a0, 0
80002784: 33 05 45 00  	add	a0, a0, tp
80002788: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000278c: 03 a5 07 00  	lw	a0, 0(a5)
80002790: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002794: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002798: b3 85 b8 40  	sub	a1, a7, a1
8000279c: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800027a0: b7 05 00 00  	lui	a1, 0
800027a4: b3 85 45 00  	add	a1, a1, tp
800027a8: 23 a2 a5 00  	sw	a0, 4(a1)
800027ac: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800027b0: 33 85 a8 02  	mul	a0, a7, a0

800027b4 <.LBB0_1>:
800027b4: 97 15 00 00  	auipc	a1, 1
800027b8: 93 85 85 ce  	addi	a1, a1, -792
800027bc: 33 05 b5 00  	add	a0, a0, a1
800027c0: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800027c4: 83 28 07 03  	lw	a7, 48(a4)
800027c8: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800027cc: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800027d0: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800027d4: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800027d8: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800027dc: 13 05 76 00  	addi	a0, a2, 7
800027e0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800027e4: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800027e8: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800027ec: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800027f0: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800027f4: 03 a5 05 00  	lw	a0, 0(a1)
800027f8: 13 05 f5 44  	addi	a0, a0, 1103
800027fc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002800: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002804: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002808: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
8000280c: 37 05 00 00  	lui	a0, 0
80002810: 33 05 45 00  	add	a0, a0, tp
80002814: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002818: 37 05 00 00  	lui	a0, 0
8000281c: 33 05 45 00  	add	a0, a0, tp
80002820: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002824: 67 80 00 00  	ret

80002828 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002828: 37 05 00 00  	lui	a0, 0
8000282c: 33 05 45 00  	add	a0, a0, tp
80002830: 03 25 05 00  	lw	a0, 0(a0)
80002834: 03 25 05 00  	lw	a0, 0(a0)
80002838: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000283c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002840: 33 85 a5 40  	sub	a0, a1, a0
80002844: 67 80 00 00  	ret

80002848 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002848: 37 05 00 00  	lui	a0, 0
8000284c: 33 05 45 00  	add	a0, a0, tp
80002850: 03 25 05 00  	lw	a0, 0(a0)
80002854: 03 25 05 00  	lw	a0, 0(a0)
80002858: 03 25 05 07  	lw	a0, 112(a0)
8000285c: 67 80 00 00  	ret

80002860 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002860: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002864: 63 44 05 00  	bltz	a0, 0x8000286c <__snrt_isr+0xc>
;         while (1)
80002868: 6f 00 00 00  	j	0x80002868 <__snrt_isr+0x8>
8000286c: b7 05 00 80  	lui	a1, 524288
80002870: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002874: 33 75 b5 00  	and	a0, a0, a1
80002878: 13 05 d5 ff  	addi	a0, a0, -3
8000287c: 93 55 25 00  	srli	a1, a0, 2
80002880: 13 15 e5 01  	slli	a0, a0, 30
80002884: 33 65 b5 00  	or	a0, a0, a1
80002888: 93 05 40 00  	addi	a1, zero, 4
8000288c: 63 0a b5 06  	beq	a0, a1, 0x80002900 <.LBB1_7+0x58>
80002890: 63 1a 05 08  	bnez	a0, 0x80002924 <.LBB1_7+0x7c>
80002894: 37 05 00 00  	lui	a0, 0
80002898: 33 05 45 00  	add	a0, a0, tp
8000289c: 03 25 05 00  	lw	a0, 0(a0)
800028a0: 03 25 05 00  	lw	a0, 0(a0)
800028a4: f3 25 40 f1  	csrr	a1, mhartid

800028a8 <.LBB1_7>:
;     asm volatile(
800028a8: 17 16 00 00  	auipc	a2, 1
800028ac: 13 06 06 bf  	addi	a2, a2, -1040
800028b0: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800028b4: 93 06 06 00  	mv	a3, a2
800028b8: 93 02 10 00  	addi	t0, zero, 1
800028bc: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800028c0: e3 9e 02 fe  	bnez	t0, 0x800028bc <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800028c4: b7 06 00 00  	lui	a3, 0
800028c8: b3 86 46 00  	add	a3, a3, tp
800028cc: 83 a6 86 00  	lw	a3, 8(a3)
800028d0: 33 85 a5 40  	sub	a0, a1, a0
800028d4: 93 55 35 00  	srli	a1, a0, 3
800028d8: 93 f5 c5 ff  	andi	a1, a1, -4
800028dc: b3 85 b6 00  	add	a1, a3, a1
800028e0: 83 a6 05 00  	lw	a3, 0(a1)
800028e4: 13 07 10 00  	addi	a4, zero, 1
800028e8: 33 15 a7 00  	sll	a0, a4, a0
800028ec: 13 45 f5 ff  	not	a0, a0
800028f0: 33 f5 a6 00  	and	a0, a3, a0
800028f4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800028f8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800028fc: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002900: 37 05 00 00  	lui	a0, 0
80002904: 33 05 45 00  	add	a0, a0, tp
80002908: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000290c: b7 05 00 00  	lui	a1, 0
80002910: b3 85 45 00  	add	a1, a1, tp
80002914: 83 a5 c5 00  	lw	a1, 12(a1)
80002918: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
8000291c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002920: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002924: 67 80 00 00  	ret

80002928 <matmul>:
; void matmul(double C[], double A[], double B[], int n, int p, int m){
80002928: 13 01 01 fd  	addi	sp, sp, -48
8000292c: 23 26 11 02  	sw	ra, 44(sp)
80002930: 23 24 81 02  	sw	s0, 40(sp)
80002934: 23 22 91 02  	sw	s1, 36(sp)
80002938: 23 20 21 03  	sw	s2, 32(sp)
8000293c: 23 2e 31 01  	sw	s3, 28(sp)
80002940: 23 2c 41 01  	sw	s4, 24(sp)
80002944: 23 2a 51 01  	sw	s5, 20(sp)
80002948: 23 28 61 01  	sw	s6, 16(sp)
8000294c: 23 26 71 01  	sw	s7, 12(sp)
80002950: 13 8b 06 00  	mv	s6, a3
;     for (int i = 0; i < n; i++){
80002954: 93 a6 16 00  	slti	a3, a3, 1
80002958: 93 a4 17 00  	slti	s1, a5, 1
8000295c: b3 e6 96 00  	or	a3, a3, s1
80002960: 63 94 06 32  	bnez	a3, 0x80002c88 <matmul+0x360>
80002964: 93 0b 05 00  	mv	s7, a0
;     for (int i = 0; i < n; i++){
80002968: 13 88 f7 ff  	addi	a6, a5, -1
8000296c: 93 1e 38 00  	slli	t4, a6, 3
80002970: 13 0e fb ff  	addi	t3, s6, -1
80002974: 13 99 37 00  	slli	s2, a5, 3
80002978: 33 05 c9 03  	mul	a0, s2, t3
8000297c: 33 85 ae 00  	add	a0, t4, a0
80002980: b3 0f 75 01  	add	t6, a0, s7
80002984: 33 b5 af 00  	sltu	a0, t6, a0
;             for (int k = 0; k < p; k++){
80002988: 63 58 e0 04  	blez	a4, 0x800029d8 <matmul+0xb0>
;     for (int i = 0; i < n; i++){
8000298c: 93 08 f7 ff  	addi	a7, a4, -1
80002990: 13 93 38 00  	slli	t1, a7, 3
80002994: 93 1a 37 00  	slli	s5, a4, 3
80002998: 33 84 ca 03  	mul	s0, s5, t3
8000299c: b3 02 19 03  	mul	t0, s2, a7
800029a0: b3 83 d2 01  	add	t2, t0, t4
800029a4: 33 8f c3 00  	add	t5, t2, a2
800029a8: 63 08 05 06  	beqz	a0, 0x80002a18 <matmul+0xf0>
800029ac: 93 06 00 00  	mv	a3, zero
800029b0: b3 09 83 00  	add	s3, t1, s0
800029b4: 63 68 7f 06  	bltu	t5, t2, 0x80002a24 <matmul+0xfc>
800029b8: 33 34 7f 01  	sltu	s0, t5, s7
;     for (int i = 0; i < n; i++){
800029bc: 33 8a b9 00  	add	s4, s3, a1
800029c0: 63 18 05 06  	bnez	a0, 0x80002a30 <matmul+0x108>
800029c4: b3 b4 bf 00  	sltu	s1, t6, a1
;     for (int i = 0; i < n; i++){
800029c8: b3 e6 86 00  	or	a3, a3, s0
800029cc: 63 68 3a 07  	bltu	s4, s3, 0x80002a3c <matmul+0x114>
800029d0: 33 34 7a 01  	sltu	s0, s4, s7
800029d4: 6f 00 c0 06  	j	0x80002a40 <matmul+0x118>
;     for (int i = 0; i < n; i++){
800029d8: 93 d5 4b 01  	srli	a1, s7, 20
800029dc: b3 35 b0 00  	snez	a1, a1
800029e0: 63 0e 05 22  	beqz	a0, 0x80002c1c <matmul+0x2f4>
800029e4: 13 05 00 00  	mv	a0, zero
800029e8: 33 f5 a5 00  	and	a0, a1, a0
800029ec: 63 12 05 24  	bnez	a0, 0x80002c30 <matmul+0x308>
800029f0: 13 84 8e 00  	addi	s0, t4, 8
;             C[m*i + j] = c;
800029f4: 13 85 0b 00  	mv	a0, s7
800029f8: 93 05 00 00  	mv	a1, zero
800029fc: 13 06 09 00  	mv	a2, s2
80002a00: 97 e0 ff ff  	auipc	ra, 1048574
80002a04: e7 80 80 b5  	jalr	-1192(ra)
;     for (int i = 0; i < n; i++){
80002a08: 13 0b fb ff  	addi	s6, s6, -1
80002a0c: b3 8b 8b 00  	add	s7, s7, s0
80002a10: e3 12 0b fe  	bnez	s6, 0x800029f4 <matmul+0xcc>
80002a14: 6f 00 40 27  	j	0x80002c88 <matmul+0x360>
80002a18: b3 b6 cf 00  	sltu	a3, t6, a2
;     for (int i = 0; i < n; i++){
80002a1c: b3 09 83 00  	add	s3, t1, s0
80002a20: e3 7c 7f f8  	bgeu	t5, t2, 0x800029b8 <matmul+0x90>
80002a24: 13 04 00 00  	mv	s0, zero
80002a28: 33 8a b9 00  	add	s4, s3, a1
80002a2c: e3 0c 05 f8  	beqz	a0, 0x800029c4 <matmul+0x9c>
80002a30: 93 04 00 00  	mv	s1, zero
80002a34: b3 e6 86 00  	or	a3, a3, s0
80002a38: e3 7c 3a f9  	bgeu	s4, s3, 0x800029d0 <matmul+0xa8>
80002a3c: 13 04 00 00  	mv	s0, zero
80002a40: 33 64 94 00  	or	s0, s0, s1
80002a44: 33 f4 86 00  	and	s0, a3, s0
80002a48: 93 d6 4b 01  	srli	a3, s7, 20
80002a4c: b3 34 d0 00  	snez	s1, a3
80002a50: b7 06 12 00  	lui	a3, 288
80002a54: 93 86 16 00  	addi	a3, a3, 1
80002a58: 63 06 05 00  	beqz	a0, 0x80002a64 <matmul+0x13c>
80002a5c: 13 05 00 00  	mv	a0, zero
80002a60: 6f 00 80 00  	j	0x80002a68 <matmul+0x140>
80002a64: 33 b5 df 00  	sltu	a0, t6, a3
;     for (int i = 0; i < n; i++){
80002a68: 33 f5 a4 00  	and	a0, s1, a0
80002a6c: 33 75 85 00  	and	a0, a0, s0
80002a70: 93 d4 45 01  	srli	s1, a1, 20
80002a74: b3 34 90 00  	snez	s1, s1
80002a78: 63 76 3a 01  	bgeu	s4, s3, 0x80002a84 <matmul+0x15c>
80002a7c: 13 04 00 00  	mv	s0, zero
80002a80: 6f 00 80 00  	j	0x80002a88 <matmul+0x160>
80002a84: 33 34 da 00  	sltu	s0, s4, a3
;     for (int i = 0; i < n; i++){
80002a88: b3 f4 84 00  	and	s1, s1, s0
80002a8c: 33 f5 a4 00  	and	a0, s1, a0
80002a90: 93 54 46 01  	srli	s1, a2, 20
80002a94: b3 34 90 00  	snez	s1, s1
80002a98: 63 76 7f 00  	bgeu	t5, t2, 0x80002aa4 <matmul+0x17c>
80002a9c: 93 06 00 00  	mv	a3, zero
80002aa0: 6f 00 80 00  	j	0x80002aa8 <matmul+0x180>
80002aa4: b3 36 df 00  	sltu	a3, t5, a3
;     for (int i = 0; i < n; i++){
80002aa8: b3 f6 d4 00  	and	a3, s1, a3
80002aac: 33 f5 a6 00  	and	a0, a3, a0
80002ab0: 63 0e 05 0e  	beqz	a0, 0x80002bac <matmul+0x284>
80002ab4: 13 05 00 00  	mv	a0, zero
80002ab8: 93 0e 80 00  	addi	t4, zero, 8
;     for (int i = 0; i < n; i++){
80002abc: 93 04 00 04  	addi	s1, zero, 64
80002ac0: ab 20 98 00  	scfgw	a6, s1
80002ac4: 93 04 00 0c  	addi	s1, zero, 192
80002ac8: ab a0 9e 00  	scfgw	t4, s1
80002acc: 93 04 00 06  	addi	s1, zero, 96
80002ad0: ab 20 9e 00  	scfgw	t3, s1
80002ad4: 93 04 00 0e  	addi	s1, zero, 224
80002ad8: ab a0 9e 00  	scfgw	t4, s1
80002adc: 93 04 00 02  	addi	s1, zero, 32
80002ae0: ab 20 90 00  	scfgw	zero, s1
80002ae4: 2b a0 0b 3a  	scfgwi	s7, 928
80002ae8: 93 04 10 00  	addi	s1, zero, 1
80002aec: 13 84 04 04  	addi	s0, s1, 64
80002af0: ab a0 88 00  	scfgw	a7, s0
80002af4: 13 84 04 0c  	addi	s0, s1, 192
80002af8: ab a0 8e 00  	scfgw	t4, s0
80002afc: 33 04 60 40  	neg	s0, t1
80002b00: 93 86 04 06  	addi	a3, s1, 96
80002b04: ab 20 d8 00  	scfgw	a6, a3
80002b08: 93 86 04 0e  	addi	a3, s1, 224
80002b0c: ab 20 d4 00  	scfgw	s0, a3
80002b10: 93 86 04 08  	addi	a3, s1, 128
80002b14: 13 84 04 10  	addi	s0, s1, 256
80002b18: ab 20 de 00  	scfgw	t3, a3
80002b1c: ab a0 8e 00  	scfgw	t4, s0
80002b20: 93 86 04 02  	addi	a3, s1, 32
80002b24: ab 20 d0 00  	scfgw	zero, a3
80002b28: 2b a0 15 34  	scfgwi	a1, 833
80002b2c: 93 05 20 00  	addi	a1, zero, 2
80002b30: 93 86 05 04  	addi	a3, a1, 64
80002b34: 93 84 05 0c  	addi	s1, a1, 192
80002b38: ab a0 d8 00  	scfgw	a7, a3
80002b3c: ab 20 99 00  	scfgw	s2, s1
80002b40: b3 86 5e 40  	sub	a3, t4, t0
80002b44: 93 84 05 06  	addi	s1, a1, 96
80002b48: 13 84 05 0e  	addi	s0, a1, 224
80002b4c: ab 20 98 00  	scfgw	a6, s1
80002b50: ab a0 86 00  	scfgw	a3, s0
80002b54: b3 06 70 40  	neg	a3, t2
80002b58: 93 84 05 08  	addi	s1, a1, 128
80002b5c: 13 84 05 10  	addi	s0, a1, 256
80002b60: ab 20 9e 00  	scfgw	t3, s1
80002b64: ab a0 86 00  	scfgw	a3, s0
80002b68: 93 85 05 02  	addi	a1, a1, 32
80002b6c: ab 20 b0 00  	scfgw	zero, a1
80002b70: 2b 20 26 34  	scfgwi	a2, 834
80002b74: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002b78: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002b7c: 93 05 00 00  	mv	a1, zero
80002b80: 13 06 07 00  	mv	a2, a4
80002b84: 53 82 31 22  	fmv.d	ft4, ft3
;             for (int k = 0; k < p; k++){
80002b88: 13 06 f6 ff  	addi	a2, a2, -1
;                 c += A[p*i + k] * B[k*m + j];
80002b8c: 43 72 11 22  	fmadd.d	ft4, ft2, ft1, ft4
;             for (int k = 0; k < p; k++){
80002b90: e3 1c 06 fe  	bnez	a2, 0x80002b88 <matmul+0x260>
;             C[m*i + j] = c;
80002b94: 53 00 42 22  	fmv.d	ft0, ft4
;         for (int j = 0; j < m; j++){
80002b98: 93 85 15 00  	addi	a1, a1, 1
80002b9c: e3 92 f5 fe  	bne	a1, a5, 0x80002b80 <matmul+0x258>
;     for (int i = 0; i < n; i++){
80002ba0: 13 05 15 00  	addi	a0, a0, 1
80002ba4: e3 1c 65 fd  	bne	a0, s6, 0x80002b7c <matmul+0x254>
80002ba8: 6f 00 c0 0d  	j	0x80002c84 <matmul+0x35c>
80002bac: 13 08 00 00  	mv	a6, zero
;     for (int i = 0; i < n; i++){
80002bb0: 93 86 8e 00  	addi	a3, t4, 8
80002bb4: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002bb8: 13 03 00 00  	mv	t1, zero
80002bbc: b3 08 f8 02  	mul	a7, a6, a5
80002bc0: 93 02 06 00  	mv	t0, a2
80002bc4: 13 85 05 00  	mv	a0, a1
80002bc8: 93 84 02 00  	mv	s1, t0
80002bcc: 13 04 07 00  	mv	s0, a4
80002bd0: 53 82 31 22  	fmv.d	ft4, ft3
;                 c += A[p*i + k] * B[k*m + j];
80002bd4: 87 32 05 00  	fld	ft5, 0(a0)
80002bd8: 07 b3 04 00  	fld	ft6, 0(s1)
80002bdc: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;             for (int k = 0; k < p; k++){
80002be0: 13 04 f4 ff  	addi	s0, s0, -1
80002be4: b3 84 d4 00  	add	s1, s1, a3
80002be8: 13 05 85 00  	addi	a0, a0, 8
80002bec: e3 14 04 fe  	bnez	s0, 0x80002bd4 <matmul+0x2ac>
;             C[m*i + j] = c;
80002bf0: 33 05 13 01  	add	a0, t1, a7
80002bf4: 13 15 35 00  	slli	a0, a0, 3
80002bf8: 33 85 ab 00  	add	a0, s7, a0
80002bfc: 27 30 45 00  	fsd	ft4, 0(a0)
;         for (int j = 0; j < m; j++){
80002c00: 13 03 13 00  	addi	t1, t1, 1
80002c04: 93 82 82 00  	addi	t0, t0, 8
80002c08: e3 1e f3 fa  	bne	t1, a5, 0x80002bc4 <matmul+0x29c>
;     for (int i = 0; i < n; i++){
80002c0c: 13 08 18 00  	addi	a6, a6, 1
80002c10: b3 85 55 01  	add	a1, a1, s5
80002c14: e3 12 68 fb  	bne	a6, s6, 0x80002bb8 <matmul+0x290>
80002c18: 6f 00 00 07  	j	0x80002c88 <matmul+0x360>
80002c1c: 37 05 12 00  	lui	a0, 288
80002c20: 13 05 15 00  	addi	a0, a0, 1
80002c24: 33 b5 af 00  	sltu	a0, t6, a0
;     for (int i = 0; i < n; i++){
80002c28: 33 f5 a5 00  	and	a0, a1, a0
80002c2c: e3 02 05 dc  	beqz	a0, 0x800029f0 <matmul+0xc8>
80002c30: 13 05 00 00  	mv	a0, zero
80002c34: 93 05 80 00  	addi	a1, zero, 8
;     for (int i = 0; i < n; i++){
80002c38: 13 06 00 04  	addi	a2, zero, 64
80002c3c: ab 20 c8 00  	scfgw	a6, a2
80002c40: 13 06 00 0c  	addi	a2, zero, 192
80002c44: ab a0 c5 00  	scfgw	a1, a2
80002c48: 13 06 00 06  	addi	a2, zero, 96
80002c4c: 93 06 00 0e  	addi	a3, zero, 224
80002c50: ab 20 ce 00  	scfgw	t3, a2
80002c54: ab a0 d5 00  	scfgw	a1, a3
80002c58: 93 05 00 02  	addi	a1, zero, 32
80002c5c: ab 20 b0 00  	scfgw	zero, a1
80002c60: 2b a0 0b 3a  	scfgwi	s7, 928
80002c64: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80002c68: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002c6c: 93 85 07 00  	mv	a1, a5
;             C[m*i + j] = c;
80002c70: 53 80 31 22  	fmv.d	ft0, ft3
;         for (int j = 0; j < m; j++){
80002c74: 93 85 f5 ff  	addi	a1, a1, -1
80002c78: e3 9c 05 fe  	bnez	a1, 0x80002c70 <matmul+0x348>
;     for (int i = 0; i < n; i++){
80002c7c: 13 05 15 00  	addi	a0, a0, 1
80002c80: e3 16 65 ff  	bne	a0, s6, 0x80002c6c <matmul+0x344>
80002c84: 73 f5 00 7c  	csrrci	a0, 1984, 1
;     return;
80002c88: 83 2b c1 00  	lw	s7, 12(sp)
80002c8c: 03 2b 01 01  	lw	s6, 16(sp)
80002c90: 83 2a 41 01  	lw	s5, 20(sp)
80002c94: 03 2a 81 01  	lw	s4, 24(sp)
80002c98: 83 29 c1 01  	lw	s3, 28(sp)
80002c9c: 03 29 01 02  	lw	s2, 32(sp)
80002ca0: 83 24 41 02  	lw	s1, 36(sp)
80002ca4: 03 24 81 02  	lw	s0, 40(sp)
80002ca8: 83 20 c1 02  	lw	ra, 44(sp)
80002cac: 13 01 01 03  	addi	sp, sp, 48
80002cb0: 67 80 00 00  	ret

Disassembly of section .init:

80002cc0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002cc0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002cc4: 93 81 81 f0  	addi	gp, gp, -248

80002cc8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002cc8: 97 00 00 00  	auipc	ra, 0
80002ccc: e7 80 40 3c  	jalr	964(ra)

80002cd0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002cd0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002cd4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002cd8: 97 00 00 00  	auipc	ra, 0
80002cdc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002ce0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002ce4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002ce8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002cec: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002cf0: 63 92 02 02  	bnez	t0, 0x80002d14 <snrt.crt0.init_registers>

80002cf4 <.Lpcrel_hi0>:
;     la        t0, _edata
80002cf4: 97 02 00 00  	auipc	t0, 0
80002cf8: 93 82 42 7a  	addi	t0, t0, 1956

80002cfc <.Lpcrel_hi1>:
;     la        t1, _end
80002cfc: 17 03 00 00  	auipc	t1, 0
80002d00: 13 03 03 7a  	addi	t1, t1, 1952
;     bge       t0, t1, 2f
80002d04: 63 d8 62 00  	bge	t0, t1, 0x80002d14 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002d08: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002d0c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002d10: e3 cc 62 fe  	blt	t0, t1, 0x80002d08 <.Lpcrel_hi1+0xc>

80002d14 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002d14: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002d18: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002d1c: 63 82 02 08  	beqz	t0, 0x80002da0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002d20: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002d24: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002d28: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002d2c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002d30: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002d34: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002d38: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002d3c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002d40: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002d44: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002d48: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002d4c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002d50: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002d54: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002d58: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002d5c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002d60: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002d64: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002d68: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002d6c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002d70: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002d74: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002d78: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002d7c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002d80: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002d84: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002d88: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002d8c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002d90: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002d94: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002d98: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002d9c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002da0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002da0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002da4: 23 a0 06 00  	sw	zero, 0(a3)

80002da8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002da8: 97 02 00 00  	auipc	t0, 0
80002dac: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80002db0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002db4: 93 87 06 00  	mv	a5, a3

80002db8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002db8: 97 03 00 00  	auipc	t2, 0
80002dbc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80002dc0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002dc4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002dc8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002dcc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002dd0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002dd4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002dd8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002ddc: b3 86 66 40  	sub	a3, a3, t1

80002de0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002de0: 97 02 00 00  	auipc	t0, 0
80002de4: 93 82 82 5e  	addi	t0, t0, 1512

80002de8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002de8: 17 03 00 00  	auipc	t1, 0
80002dec: 13 03 03 5e  	addi	t1, t1, 1504

80002df0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002df0: 97 03 00 00  	auipc	t2, 0
80002df4: 93 83 83 5d  	addi	t2, t2, 1496

80002df8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002df8: 17 0e 00 00  	auipc	t3, 0
80002dfc: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002e00: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002e04: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002e08: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002e0c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002e10: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002e14: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002e18: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002e1c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002e20: 63 dc 62 00  	bge	t0, t1, 0x80002e38 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002e24: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002e28: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002e2c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002e30: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002e34: e3 c8 62 fe  	blt	t0, t1, 0x80002e24 <.Lpcrel_hi7+0x2c>

80002e38 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002e38: 97 02 00 00  	auipc	t0, 0
80002e3c: 93 82 02 59  	addi	t0, t0, 1424

80002e40 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002e40: 17 03 00 00  	auipc	t1, 0
80002e44: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80002e48: 63 da 62 00  	bge	t0, t1, 0x80002e5c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002e4c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002e50: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002e54: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002e58: e3 ca 72 fe  	blt	t0, t2, 0x80002e4c <.Lpcrel_hi9+0xc>

80002e5c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002e5c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002e60: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002e64: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002e68: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002e6c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002e70: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002e74: 97 00 00 00  	auipc	ra, 0
80002e78: e7 80 c0 84  	jalr	-1972(ra)
;     lw        a0, 0(sp)
80002e7c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002e80: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002e84: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002e88: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002e8c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002e90: 13 01 41 01  	addi	sp, sp, 20

80002e94 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002e94: 97 02 00 00  	auipc	t0, 0
80002e98: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002e9c: 73 90 52 30  	csrw	mtvec, t0

80002ea0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002ea0: 97 00 00 00  	auipc	ra, 0
80002ea4: e7 80 00 22  	jalr	544(ra)

80002ea8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002ea8: 97 d0 ff ff  	auipc	ra, 1048573
80002eac: e7 80 c0 78  	jalr	1932(ra)
;     mv        s0, a0 # store return value in s0
80002eb0: 13 04 05 00  	mv	s0, a0

80002eb4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002eb4: 97 00 00 00  	auipc	ra, 0
80002eb8: e7 80 c0 20  	jalr	524(ra)

80002ebc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002ebc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002ec0: 97 00 00 00  	auipc	ra, 0
80002ec4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002ec8: 73 00 50 10  	wfi	
;     j       1b
80002ecc: 6f f0 df ff  	j	0x80002ec8 <snrt.crt0.end+0xc>

80002ed0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002ed0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002ed4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002ed8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002edc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002ee0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002ee4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002ee8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002eec: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002ef0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002ef4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002ef8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002efc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002f00: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002f04: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002f08: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002f0c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002f10: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002f14: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002f18: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002f1c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002f20: 63 84 02 08  	beqz	t0, 0x80002fa8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002f24: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002f28: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002f2c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002f30: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002f34: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002f38: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002f3c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002f40: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002f44: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002f48: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002f4c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002f50: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002f54: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002f58: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002f5c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002f60: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002f64: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002f68: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002f6c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002f70: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002f74: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002f78: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002f7c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002f80: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002f84: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002f88: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002f8c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002f90: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002f94: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002f98: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002f9c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002fa0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002fa4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002fa8: 97 00 00 00  	auipc	ra, 0
80002fac: e7 80 80 8b  	jalr	-1864(ra)
;     csrr    t0, misa
80002fb0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002fb4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002fb8: 63 84 02 08  	beqz	t0, 0x80003040 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002fbc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002fc0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002fc4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002fc8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002fcc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002fd0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002fd4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002fd8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002fdc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002fe0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002fe4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002fe8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002fec: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002ff0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002ff4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002ff8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002ffc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80003000: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80003004: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80003008: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000300c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80003010: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80003014: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80003018: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000301c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80003020: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80003024: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80003028: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000302c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80003030: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80003034: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80003038: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000303c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003040: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003044: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003048: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000304c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003050: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003054: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003058: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000305c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003060: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003064: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003068: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000306c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003070: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003074: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003078: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000307c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003080: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003084: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003088: 73 00 20 30  	mret	

8000308c <_snrt_init_core_info>:
;     mv        a4, a1
8000308c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003090: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003094: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003098: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000309c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800030a0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800030a4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800030a8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800030ac: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800030b0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800030b4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800030b8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800030bc: 67 80 00 00  	ret

800030c0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800030c0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800030c4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800030c8: 97 f0 ff ff  	auipc	ra, 1048575
800030cc: e7 80 00 78  	jalr	1920(ra)
;     lw        a0, 0(a0)
800030d0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
800030d4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
800030d8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
800030dc: 13 01 41 00  	addi	sp, sp, 4
;     ret
800030e0: 67 80 00 00  	ret

800030e4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800030e4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800030e8: 67 80 00 00  	ret

800030ec <_snrt_exit>:
;     addi      sp, sp, -8
800030ec: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800030f0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800030f4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800030f8: 97 f0 ff ff  	auipc	ra, 1048575
800030fc: e7 80 00 73  	jalr	1840(ra)
;     lw        t0, 0(sp)
80003100: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80003104: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80003108: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000310c: 63 1c 05 00  	bnez	a0, 0x80003124 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80003110: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80003114: 93 e2 12 00  	ori	t0, t0, 1

80003118 <.Lpcrel_hi11>:
;     la        t1, tohost
80003118: 17 03 00 00  	auipc	t1, 0
8000311c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
80003120: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80003124: 67 80 00 00  	ret
