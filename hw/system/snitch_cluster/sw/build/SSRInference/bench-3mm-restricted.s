
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-3mm-restricted:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004b68 80000000 TEXT
  2 .init             00000468 80004b70 TEXT
  3 .rodata           00000238 80004fd8 DATA
  4 .htif             00000048 80005240 DATA
  5 .tdata            00000000 80005288 DATA
  6 .tbss             00000010 80005288 BSS
  7 .tbssend          00000000 80005298 DATA
  8 .sdata            000000e8 80005298 DATA
  9 .data             00000000 80005380 DATA
 10 .sbss             00000004 80005380 BSS
 11 .bss              00000000 80005384 BSS
 12 .dram             00000000 80005384 DATA
 13 .debug_info       000037fa 00000000 
 14 .debug_abbrev     00000c0c 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003807 00000000 
 17 .debug_loc        00003e7a 00000000 
 18 .debug_ranges     00000398 00000000 
 19 .debug_str        00000b0c 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003430 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000955 00000000 


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
80000634: 13 01 01 f4  	addi	sp, sp, -192
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 0a  	sw	ra, 188(sp)
8000063c: 23 2c 81 0a  	sw	s0, 184(sp)
80000640: 23 2a 91 0a  	sw	s1, 180(sp)
80000644: 23 28 21 0b  	sw	s2, 176(sp)
80000648: 23 26 31 0b  	sw	s3, 172(sp)
8000064c: 23 24 41 0b  	sw	s4, 168(sp)
80000650: 23 22 51 0b  	sw	s5, 164(sp)
80000654: 23 20 61 0b  	sw	s6, 160(sp)
80000658: 23 2e 71 09  	sw	s7, 156(sp)
8000065c: 23 2c 81 09  	sw	s8, 152(sp)
80000660: 23 2a 91 09  	sw	s9, 148(sp)
80000664: 23 28 a1 09  	sw	s10, 144(sp)
80000668: 23 26 b1 09  	sw	s11, 140(sp)
8000066c: 27 30 81 08  	fsd	fs0, 128(sp)
80000670: 27 3c 91 06  	fsd	fs1, 120(sp)
80000674: 27 38 21 07  	fsd	fs2, 112(sp)
80000678: 27 34 31 07  	fsd	fs3, 104(sp)
8000067c: 27 30 41 07  	fsd	fs4, 96(sp)
80000680: 27 3c 51 05  	fsd	fs5, 88(sp)
80000684: 27 38 61 05  	fsd	fs6, 80(sp)
80000688: 27 34 71 05  	fsd	fs7, 72(sp)
8000068c: 37 05 00 00  	lui	a0, 0
80000690: 33 05 45 00  	add	a0, a0, tp
80000694: 83 25 45 00  	lw	a1, 4(a0)
80000698: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000069c: 63 84 05 00  	beqz	a1, 0x800006a4 <main+0x70>
800006a0: 6f 20 00 5b  	j	0x80002c50 <.LBB0_93+0x10>
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
800006d4: 13 08 00 00  	mv	a6, zero
800006d8: 6f 00 00 01  	j	0x800006e8 <main+0xb4>
;     void *ret = (void *)alloc->next;
800006dc: 13 88 07 00  	mv	a6, a5
;     alloc->next += size;
800006e0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e4: 93 87 06 00  	mv	a5, a3
800006e8: b3 06 f6 00  	add	a3, a2, a5
800006ec: 93 86 06 10  	addi	a3, a3, 256
800006f0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006fc <main+0xc8>
800006f4: 93 04 00 00  	mv	s1, zero
800006f8: 6f 00 00 01  	j	0x80000708 <main+0xd4>
;     void *ret = (void *)alloc->next;
800006fc: 93 84 07 00  	mv	s1, a5
;     alloc->next += size;
80000700: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: 93 87 06 00  	mv	a5, a3
80000708: b3 06 f6 00  	add	a3, a2, a5
8000070c: 93 86 06 24  	addi	a3, a3, 576
80000710: 63 f6 d5 00  	bgeu	a1, a3, 0x8000071c <main+0xe8>
80000714: 13 0c 00 00  	mv	s8, zero
80000718: 6f 00 00 01  	j	0x80000728 <main+0xf4>
;     void *ret = (void *)alloc->next;
8000071c: 13 8c 07 00  	mv	s8, a5
;     alloc->next += size;
80000720: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000724: 93 87 06 00  	mv	a5, a3
80000728: b3 06 f6 00  	add	a3, a2, a5
8000072c: 93 86 06 36  	addi	a3, a3, 864
80000730: 63 f6 d5 00  	bgeu	a1, a3, 0x8000073c <main+0x108>
80000734: 93 08 00 00  	mv	a7, zero
80000738: 6f 00 00 01  	j	0x80000748 <main+0x114>
;     void *ret = (void *)alloc->next;
8000073c: 93 88 07 00  	mv	a7, a5
;     alloc->next += size;
80000740: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000744: 93 87 06 00  	mv	a5, a3
80000748: b3 06 f6 00  	add	a3, a2, a5
8000074c: 93 86 06 48  	addi	a3, a3, 1152
80000750: 63 f6 d5 00  	bgeu	a1, a3, 0x8000075c <main+0x128>
80000754: 13 04 00 00  	mv	s0, zero
80000758: 6f 00 00 01  	j	0x80000768 <main+0x134>
;     void *ret = (void *)alloc->next;
8000075c: 13 84 07 00  	mv	s0, a5
;     alloc->next += size;
80000760: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000764: 93 87 06 00  	mv	a5, a3
80000768: b3 06 f6 00  	add	a3, a2, a5
8000076c: 93 86 06 78  	addi	a3, a3, 1920
80000770: 63 f6 d5 00  	bgeu	a1, a3, 0x8000077c <main+0x148>
80000774: 13 07 00 00  	mv	a4, zero
80000778: 6f 00 00 01  	j	0x80000788 <main+0x154>
;     void *ret = (void *)alloc->next;
8000077c: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
80000780: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000784: 93 87 06 00  	mv	a5, a3
80000788: 33 06 f6 00  	add	a2, a2, a5
8000078c: 13 06 06 20  	addi	a2, a2, 512
80000790: 63 f6 c5 00  	bgeu	a1, a2, 0x8000079c <main+0x168>
80000794: 93 07 00 00  	mv	a5, zero
80000798: 6f 00 80 00  	j	0x800007a0 <main+0x16c>
;     alloc->next += size;
8000079c: 23 2c c5 04  	sw	a2, 88(a0)
800007a0: 23 26 e1 02  	sw	a4, 44(sp)
800007a4: 23 28 81 02  	sw	s0, 48(sp)
800007a8: 23 20 11 03  	sw	a7, 32(sp)
800007ac: 23 22 01 03  	sw	a6, 36(sp)
800007b0: 23 24 f1 02  	sw	a5, 40(sp)
;   for (i = 0; i < ni; i++)
800007b4: 13 d5 44 01  	srli	a0, s1, 20
800007b8: 33 35 a0 00  	snez	a0, a0
800007bc: b7 f5 11 00  	lui	a1, 287
800007c0: 93 85 95 60  	addi	a1, a1, 1545
800007c4: b3 b5 b4 00  	sltu	a1, s1, a1
800007c8: 33 75 b5 00  	and	a0, a0, a1

800007cc <.LBB0_84>:
800007cc: 97 55 00 00  	auipc	a1, 5
800007d0: 93 85 c5 ac  	addi	a1, a1, -1332
800007d4: 23 2a a1 00  	sw	a0, 20(sp)
800007d8: 23 2e 91 00  	sw	s1, 28(sp)
800007dc: 13 08 00 00  	mv	a6, zero
800007e0: 63 04 05 22  	beqz	a0, 0x80000a08 <.LBB0_84+0x23c>
800007e4: 93 02 00 00  	mv	t0, zero
800007e8: 13 03 00 00  	mv	t1, zero
800007ec: 93 03 00 00  	mv	t2, zero
800007f0: 13 0e 00 00  	mv	t3, zero
800007f4: 93 0e 00 00  	mv	t4, zero
800007f8: 13 0f 00 00  	mv	t5, zero
800007fc: 93 0f 00 00  	mv	t6, zero
80000800: 13 05 80 00  	addi	a0, zero, 8
80000804: 13 06 30 01  	addi	a2, zero, 19
;   for (i = 0; i < ni; i++)
80000808: 93 06 00 04  	addi	a3, zero, 64
8000080c: 13 07 00 0c  	addi	a4, zero, 192
80000810: ab 20 d6 00  	scfgw	a2, a3
80000814: ab 20 e5 00  	scfgw	a0, a4
80000818: 13 06 f0 00  	addi	a2, zero, 15
8000081c: 93 06 00 06  	addi	a3, zero, 96
80000820: 13 07 00 0e  	addi	a4, zero, 224
80000824: ab 20 d6 00  	scfgw	a2, a3
80000828: ab 20 e5 00  	scfgw	a0, a4
8000082c: 13 05 00 02  	addi	a0, zero, 32
80000830: ab 20 a0 00  	scfgw	zero, a0
80000834: 2b a0 04 3a  	scfgwi	s1, 928
80000838: 73 e0 00 7c  	csrsi	1984, 1
8000083c: 13 09 10 00  	addi	s2, zero, 1
80000840: 87 b1 05 00  	fld	ft3, 0(a1)
80000844: 93 08 10 13  	addi	a7, zero, 305
80000848: 13 0a 10 00  	addi	s4, zero, 1
8000084c: 93 09 10 00  	addi	s3, zero, 1
80000850: 93 06 10 00  	addi	a3, zero, 1
80000854: 13 07 10 00  	addi	a4, zero, 1
80000858: 93 07 10 00  	addi	a5, zero, 1
8000085c: 93 04 10 00  	addi	s1, zero, 1
80000860: 13 04 10 00  	addi	s0, zero, 1
80000864: 13 05 10 00  	addi	a0, zero, 1
80000868: 93 05 10 00  	addi	a1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
8000086c: 53 80 31 22  	fmv.d	ft0, ft3
80000870: 13 76 f9 00  	andi	a2, s2, 15
80000874: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000878: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000087c: 53 00 42 22  	fmv.d	ft0, ft4
80000880: 13 76 e8 00  	andi	a2, a6, 14
80000884: 13 66 16 00  	ori	a2, a2, 1
80000888: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000088c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000890: 53 00 42 22  	fmv.d	ft0, ft4
80000894: 13 76 fa 00  	andi	a2, s4, 15
80000898: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000089c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a0: 53 00 42 22  	fmv.d	ft0, ft4
800008a4: 13 f6 c2 00  	andi	a2, t0, 12
800008a8: 13 66 16 00  	ori	a2, a2, 1
800008ac: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008b0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b4: 53 00 42 22  	fmv.d	ft0, ft4
800008b8: 13 f6 f9 00  	andi	a2, s3, 15
800008bc: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c4: 53 00 42 22  	fmv.d	ft0, ft4
800008c8: 13 76 e3 00  	andi	a2, t1, 14
800008cc: 13 66 16 00  	ori	a2, a2, 1
800008d0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008d4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d8: 53 00 42 22  	fmv.d	ft0, ft4
800008dc: 13 f6 f6 00  	andi	a2, a3, 15
800008e0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008e4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e8: 53 00 42 22  	fmv.d	ft0, ft4
800008ec: 13 f6 83 00  	andi	a2, t2, 8
800008f0: 13 66 16 00  	ori	a2, a2, 1
800008f4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008f8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008fc: 53 00 42 22  	fmv.d	ft0, ft4
80000900: 13 76 f7 00  	andi	a2, a4, 15
80000904: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000908: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000090c: 53 00 42 22  	fmv.d	ft0, ft4
80000910: 13 76 ee 00  	andi	a2, t3, 14
80000914: 13 66 16 00  	ori	a2, a2, 1
80000918: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000091c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000920: 53 00 42 22  	fmv.d	ft0, ft4
80000924: 13 f6 f7 00  	andi	a2, a5, 15
80000928: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000092c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000930: 53 00 42 22  	fmv.d	ft0, ft4
80000934: 13 f6 ce 00  	andi	a2, t4, 12
80000938: 13 66 16 00  	ori	a2, a2, 1
8000093c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000940: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000944: 53 00 42 22  	fmv.d	ft0, ft4
80000948: 13 f6 f4 00  	andi	a2, s1, 15
8000094c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000950: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000954: 53 00 42 22  	fmv.d	ft0, ft4
80000958: 13 76 ef 00  	andi	a2, t5, 14
8000095c: 13 66 16 00  	ori	a2, a2, 1
80000960: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000964: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000968: 53 00 42 22  	fmv.d	ft0, ft4
8000096c: 13 76 f4 00  	andi	a2, s0, 15
80000970: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000974: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000978: 53 00 42 22  	fmv.d	ft0, ft4
8000097c: 53 80 31 22  	fmv.d	ft0, ft3
80000980: 13 76 f5 00  	andi	a2, a0, 15
80000984: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000988: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000098c: 53 00 42 22  	fmv.d	ft0, ft4
80000990: 13 f6 ef 00  	andi	a2, t6, 14
80000994: 13 66 16 00  	ori	a2, a2, 1
80000998: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000099c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009a0: 53 00 42 22  	fmv.d	ft0, ft4
800009a4: 13 f6 f5 00  	andi	a2, a1, 15
800009a8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009ac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009b0: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009b4: 93 85 35 01  	addi	a1, a1, 19
800009b8: 93 8f 2f 01  	addi	t6, t6, 18
800009bc: 13 05 15 01  	addi	a0, a0, 17
800009c0: 13 04 f4 00  	addi	s0, s0, 15
800009c4: 13 0f ef 00  	addi	t5, t5, 14
800009c8: 93 84 d4 00  	addi	s1, s1, 13
800009cc: 93 8e ce 00  	addi	t4, t4, 12
800009d0: 93 87 b7 00  	addi	a5, a5, 11
800009d4: 13 0e ae 00  	addi	t3, t3, 10
800009d8: 13 07 97 00  	addi	a4, a4, 9
800009dc: 93 83 83 00  	addi	t2, t2, 8
800009e0: 93 86 76 00  	addi	a3, a3, 7
800009e4: 13 03 63 00  	addi	t1, t1, 6
800009e8: 93 89 59 00  	addi	s3, s3, 5
800009ec: 93 82 42 00  	addi	t0, t0, 4
800009f0: 13 0a 3a 00  	addi	s4, s4, 3
800009f4: 13 08 28 00  	addi	a6, a6, 2
800009f8: 13 09 19 00  	addi	s2, s2, 1
800009fc: e3 98 15 e7  	bne	a1, a7, 0x8000086c <.LBB0_84+0xa0>
80000a00: 73 f0 00 7c  	csrci	1984, 1
80000a04: 6f 00 40 20  	j	0x80000c08 <.LBB0_84+0x43c>
80000a08: 93 08 00 00  	mv	a7, zero
80000a0c: 13 0e 00 00  	mv	t3, zero
80000a10: 93 0e 00 00  	mv	t4, zero
80000a14: 13 0f 00 00  	mv	t5, zero
80000a18: 93 0f 00 00  	mv	t6, zero
80000a1c: 13 09 00 00  	mv	s2, zero
80000a20: 13 0a 00 00  	mv	s4, zero
;   for (i = 0; i < ni; i++)
80000a24: 13 85 04 05  	addi	a0, s1, 80
80000a28: 93 0a 10 00  	addi	s5, zero, 1
80000a2c: 37 a6 89 3f  	lui	a2, 260250
80000a30: 93 02 96 99  	addi	t0, a2, -1639
80000a34: 37 a6 99 99  	lui	a2, 629146
80000a38: 13 03 a6 99  	addi	t1, a2, -1638
80000a3c: 07 b0 05 00  	fld	ft0, 0(a1)
80000a40: 93 03 10 13  	addi	t2, zero, 305
80000a44: 13 0b 10 00  	addi	s6, zero, 1
80000a48: 93 0b 10 00  	addi	s7, zero, 1
80000a4c: 93 09 10 00  	addi	s3, zero, 1
80000a50: 93 07 10 00  	addi	a5, zero, 1
80000a54: 93 04 10 00  	addi	s1, zero, 1
80000a58: 13 04 10 00  	addi	s0, zero, 1
80000a5c: 93 05 10 00  	addi	a1, zero, 1
80000a60: 13 06 10 00  	addi	a2, zero, 1
80000a64: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000a68: 23 2a 55 fa  	sw	t0, -76(a0)
80000a6c: 23 28 65 fa  	sw	t1, -80(a0)
80000a70: 13 f7 f6 00  	andi	a4, a3, 15
80000a74: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000a78: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a7c: 27 3c 15 fa  	fsd	ft1, -72(a0)
80000a80: 13 77 e9 00  	andi	a4, s2, 14
80000a84: 13 67 17 00  	ori	a4, a4, 1
80000a88: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000a8c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000a90: 27 30 15 fc  	fsd	ft1, -64(a0)
80000a94: 13 77 f4 00  	andi	a4, s0, 15
80000a98: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000a9c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000aa0: 27 34 15 fc  	fsd	ft1, -56(a0)
80000aa4: 13 f7 cf 00  	andi	a4, t6, 12
80000aa8: 13 67 17 00  	ori	a4, a4, 1
80000aac: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000ab0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ab4: 27 38 15 fc  	fsd	ft1, -48(a0)
80000ab8: 13 f7 f7 00  	andi	a4, a5, 15
80000abc: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000ac0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ac4: 27 3c 15 fc  	fsd	ft1, -40(a0)
80000ac8: 13 f7 ee 00  	andi	a4, t4, 14
80000acc: 13 67 17 00  	ori	a4, a4, 1
80000ad0: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000ad4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ad8: 27 30 15 fe  	fsd	ft1, -32(a0)
80000adc: 13 f7 fb 00  	andi	a4, s7, 15
80000ae0: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000ae4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ae8: 27 34 15 fe  	fsd	ft1, -24(a0)
80000aec: 13 f7 88 00  	andi	a4, a7, 8
80000af0: 13 67 17 00  	ori	a4, a4, 1
80000af4: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000af8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000afc: 27 38 15 fe  	fsd	ft1, -16(a0)
80000b00: 13 f7 fa 00  	andi	a4, s5, 15
80000b04: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b08: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b0c: 27 3c 15 fe  	fsd	ft1, -8(a0)
80000b10: 13 77 e8 00  	andi	a4, a6, 14
80000b14: 13 67 17 00  	ori	a4, a4, 1
80000b18: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b1c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b20: 27 30 15 00  	fsd	ft1, 0(a0)
80000b24: 13 77 fb 00  	andi	a4, s6, 15
80000b28: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b2c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b30: 27 34 15 00  	fsd	ft1, 8(a0)
80000b34: 13 77 ce 00  	andi	a4, t3, 12
80000b38: 13 67 17 00  	ori	a4, a4, 1
80000b3c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b40: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b44: 27 38 15 00  	fsd	ft1, 16(a0)
80000b48: 13 f7 f9 00  	andi	a4, s3, 15
80000b4c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b50: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b54: 27 3c 15 00  	fsd	ft1, 24(a0)
80000b58: 13 77 ef 00  	andi	a4, t5, 14
80000b5c: 13 67 17 00  	ori	a4, a4, 1
80000b60: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b64: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b68: 27 30 15 02  	fsd	ft1, 32(a0)
80000b6c: 13 f7 f4 00  	andi	a4, s1, 15
80000b70: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b74: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b78: 27 34 15 02  	fsd	ft1, 40(a0)
80000b7c: 23 2a 55 02  	sw	t0, 52(a0)
80000b80: 23 28 65 02  	sw	t1, 48(a0)
80000b84: 13 f7 f5 00  	andi	a4, a1, 15
80000b88: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000b8c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000b90: 27 3c 15 02  	fsd	ft1, 56(a0)
80000b94: 13 77 ea 00  	andi	a4, s4, 14
80000b98: 13 67 17 00  	ori	a4, a4, 1
80000b9c: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000ba0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000ba4: 27 30 15 04  	fsd	ft1, 64(a0)
80000ba8: 13 77 f6 00  	andi	a4, a2, 15
80000bac: d3 00 07 d2  	fcvt.d.w	ft1, a4
80000bb0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000bb4: 27 34 15 04  	fsd	ft1, 72(a0)
;   for (i = 0; i < ni; i++)
80000bb8: 93 86 16 00  	addi	a3, a3, 1
80000bbc: 13 06 36 01  	addi	a2, a2, 19
80000bc0: 13 0a 2a 01  	addi	s4, s4, 18
80000bc4: 13 09 29 00  	addi	s2, s2, 2
80000bc8: 93 85 15 01  	addi	a1, a1, 17
80000bcc: 13 04 34 00  	addi	s0, s0, 3
80000bd0: 93 8f 4f 00  	addi	t6, t6, 4
80000bd4: 93 84 f4 00  	addi	s1, s1, 15
80000bd8: 93 87 57 00  	addi	a5, a5, 5
80000bdc: 13 0f ef 00  	addi	t5, t5, 14
80000be0: 93 8e 6e 00  	addi	t4, t4, 6
80000be4: 93 89 d9 00  	addi	s3, s3, 13
80000be8: 93 8b 7b 00  	addi	s7, s7, 7
80000bec: 13 0e ce 00  	addi	t3, t3, 12
80000bf0: 93 88 88 00  	addi	a7, a7, 8
80000bf4: 13 0b bb 00  	addi	s6, s6, 11
80000bf8: 13 05 05 0a  	addi	a0, a0, 160
80000bfc: 13 08 a8 00  	addi	a6, a6, 10
80000c00: 93 8a 9a 00  	addi	s5, s5, 9
80000c04: e3 12 76 e6  	bne	a2, t2, 0x80000a68 <.LBB0_84+0x29c>
;   for (i = 0; i < nk; i++)
80000c08: 13 55 4c 01  	srli	a0, s8, 20
80000c0c: 33 35 a0 00  	snez	a0, a0
80000c10: b7 f5 11 00  	lui	a1, 287
80000c14: 93 85 95 4c  	addi	a1, a1, 1225
80000c18: b3 35 bc 00  	sltu	a1, s8, a1
80000c1c: b3 75 b5 00  	and	a1, a0, a1

80000c20 <.LBB0_85>:
80000c20: 17 45 00 00  	auipc	a0, 4
80000c24: 13 05 05 68  	addi	a0, a0, 1664
80000c28: 23 28 b1 00  	sw	a1, 16(sp)
80000c2c: 23 2c 81 01  	sw	s8, 24(sp)
80000c30: 63 86 05 2e  	beqz	a1, 0x80000f1c <.LBB0_86+0x28c>
80000c34: 93 08 00 00  	mv	a7, zero
80000c38: 93 02 00 00  	mv	t0, zero
80000c3c: 13 03 00 00  	mv	t1, zero
80000c40: 93 05 80 00  	addi	a1, zero, 8
80000c44: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < nk; i++)
80000c48: 93 06 00 04  	addi	a3, zero, 64
80000c4c: 13 07 00 0c  	addi	a4, zero, 192
80000c50: ab 20 d6 00  	scfgw	a2, a3
80000c54: ab a0 e5 00  	scfgw	a1, a4
80000c58: 13 06 30 01  	addi	a2, zero, 19
80000c5c: 93 06 00 06  	addi	a3, zero, 96
80000c60: 13 07 00 0e  	addi	a4, zero, 224
80000c64: ab 20 d6 00  	scfgw	a2, a3
80000c68: ab a0 e5 00  	scfgw	a1, a4
80000c6c: 93 05 00 02  	addi	a1, zero, 32
80000c70: ab 20 b0 00  	scfgw	zero, a1
80000c74: 2b 20 0c 3a  	scfgwi	s8, 928
80000c78: 73 e0 00 7c  	csrsi	1984, 1
80000c7c: 13 0f 20 00  	addi	t5, zero, 2
80000c80: b7 95 e3 38  	lui	a1, 233017
80000c84: 13 87 95 e3  	addi	a4, a1, -455
80000c88: 93 07 20 01  	addi	a5, zero, 18
80000c8c: 87 31 05 00  	fld	ft3, 0(a0)

80000c90 <.LBB0_86>:
80000c90: 17 45 00 00  	auipc	a0, 4
80000c94: 13 05 85 61  	addi	a0, a0, 1560
80000c98: 07 32 05 00  	fld	ft4, 0(a0)
80000c9c: 13 08 a0 02  	addi	a6, zero, 42
80000ca0: 93 03 20 00  	addi	t2, zero, 2
80000ca4: 93 0f 20 00  	addi	t6, zero, 2
80000ca8: 13 09 20 00  	addi	s2, zero, 2
80000cac: 13 0e 20 00  	addi	t3, zero, 2
80000cb0: 13 0a 20 00  	addi	s4, zero, 2
80000cb4: 93 0a 20 00  	addi	s5, zero, 2
80000cb8: 93 0e 20 00  	addi	t4, zero, 2
80000cbc: 13 0b 20 00  	addi	s6, zero, 2
80000cc0: 93 0b 20 00  	addi	s7, zero, 2
80000cc4: 13 0c 20 00  	addi	s8, zero, 2
80000cc8: 93 09 20 00  	addi	s3, zero, 2
80000ccc: 13 06 20 00  	addi	a2, zero, 2
80000cd0: 13 04 20 00  	addi	s0, zero, 2
80000cd4: 93 05 20 00  	addi	a1, zero, 2
80000cd8: 93 06 20 00  	addi	a3, zero, 2
80000cdc: 93 04 20 00  	addi	s1, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000ce0: 33 35 ef 02  	mulhu	a0, t5, a4
80000ce4: 13 55 25 00  	srli	a0, a0, 2
80000ce8: 33 05 f5 02  	mul	a0, a0, a5
80000cec: 33 05 af 40  	sub	a0, t5, a0
80000cf0: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000cf4: 33 b5 e4 02  	mulhu	a0, s1, a4
80000cf8: 13 55 25 00  	srli	a0, a0, 2
80000cfc: 33 05 f5 02  	mul	a0, a0, a5
80000d00: 33 85 a4 40  	sub	a0, s1, a0
80000d04: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000d08: 33 b5 e8 02  	mulhu	a0, a7, a4
80000d0c: 13 55 25 00  	srli	a0, a0, 2
80000d10: 33 05 f5 02  	mul	a0, a0, a5
80000d14: 33 85 a3 40  	sub	a0, t2, a0
80000d18: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000d1c: 33 b5 ef 02  	mulhu	a0, t6, a4
80000d20: 13 55 25 00  	srli	a0, a0, 2
80000d24: 33 05 f5 02  	mul	a0, a0, a5
80000d28: 33 85 af 40  	sub	a0, t6, a0
80000d2c: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000d30: 33 35 e9 02  	mulhu	a0, s2, a4
80000d34: 13 55 25 00  	srli	a0, a0, 2
80000d38: 33 05 f5 02  	mul	a0, a0, a5
80000d3c: 33 05 a9 40  	sub	a0, s2, a0
80000d40: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000d44: 33 b5 e2 02  	mulhu	a0, t0, a4
80000d48: 13 55 25 00  	srli	a0, a0, 2
80000d4c: 33 05 f5 02  	mul	a0, a0, a5
80000d50: 33 05 ae 40  	sub	a0, t3, a0
80000d54: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000d58: 33 35 ea 02  	mulhu	a0, s4, a4
80000d5c: 13 55 25 00  	srli	a0, a0, 2
80000d60: 33 05 f5 02  	mul	a0, a0, a5
80000d64: 33 05 aa 40  	sub	a0, s4, a0
80000d68: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000d6c: 33 b5 ea 02  	mulhu	a0, s5, a4
80000d70: 13 55 25 00  	srli	a0, a0, 2
80000d74: 33 05 f5 02  	mul	a0, a0, a5
80000d78: 33 85 aa 40  	sub	a0, s5, a0
80000d7c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000d80: 33 35 e3 02  	mulhu	a0, t1, a4
80000d84: 13 55 25 00  	srli	a0, a0, 2
80000d88: 33 05 f5 02  	mul	a0, a0, a5
80000d8c: 33 85 ae 40  	sub	a0, t4, a0
80000d90: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000d94: 33 35 eb 02  	mulhu	a0, s6, a4
80000d98: 13 55 25 00  	srli	a0, a0, 2
80000d9c: 33 05 f5 02  	mul	a0, a0, a5
80000da0: 33 05 ab 40  	sub	a0, s6, a0
80000da4: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000da8: 33 b5 eb 02  	mulhu	a0, s7, a4
80000dac: 13 55 25 00  	srli	a0, a0, 2
80000db0: 33 05 f5 02  	mul	a0, a0, a5
80000db4: 33 85 ab 40  	sub	a0, s7, a0
80000db8: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000dbc: 33 35 ec 02  	mulhu	a0, s8, a4
80000dc0: 13 55 25 00  	srli	a0, a0, 2
80000dc4: 33 05 f5 02  	mul	a0, a0, a5
80000dc8: 33 05 ac 40  	sub	a0, s8, a0
80000dcc: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000dd0: 33 b5 e9 02  	mulhu	a0, s3, a4
80000dd4: 13 55 25 00  	srli	a0, a0, 2
80000dd8: 33 05 f5 02  	mul	a0, a0, a5
80000ddc: 33 85 a9 40  	sub	a0, s3, a0
80000de0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000de4: 33 35 e6 02  	mulhu	a0, a2, a4
80000de8: 13 55 25 00  	srli	a0, a0, 2
80000dec: 33 05 f5 02  	mul	a0, a0, a5
80000df0: 33 05 a6 40  	sub	a0, a2, a0
80000df4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000df8: 33 35 e4 02  	mulhu	a0, s0, a4
80000dfc: 13 55 25 00  	srli	a0, a0, 2
80000e00: 33 05 f5 02  	mul	a0, a0, a5
80000e04: 33 05 a4 40  	sub	a0, s0, a0
80000e08: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000e0c: 33 b5 e5 02  	mulhu	a0, a1, a4
80000e10: 13 55 25 00  	srli	a0, a0, 2
80000e14: 33 05 f5 02  	mul	a0, a0, a5
80000e18: 33 85 a5 40  	sub	a0, a1, a0
80000e1c: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000e20: 33 b5 e6 02  	mulhu	a0, a3, a4
80000e24: 13 55 25 00  	srli	a0, a0, 2
80000e28: 33 05 f5 02  	mul	a0, a0, a5
80000e2c: 33 85 a6 40  	sub	a0, a3, a0
80000e30: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000e34: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e38: 53 80 52 22  	fmv.d	ft0, ft5
80000e3c: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e40: 53 80 52 22  	fmv.d	ft0, ft5
80000e44: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e48: 53 80 52 22  	fmv.d	ft0, ft5
80000e4c: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e50: 53 80 52 22  	fmv.d	ft0, ft5
80000e54: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e58: 53 80 52 22  	fmv.d	ft0, ft5
80000e5c: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e60: 53 80 52 22  	fmv.d	ft0, ft5
80000e64: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e68: 53 80 52 22  	fmv.d	ft0, ft5
80000e6c: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e70: 53 80 52 22  	fmv.d	ft0, ft5
80000e74: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e78: 53 80 52 22  	fmv.d	ft0, ft5
80000e7c: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e80: 53 80 52 22  	fmv.d	ft0, ft5
80000e84: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e88: 53 80 52 22  	fmv.d	ft0, ft5
80000e8c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e90: 53 80 52 22  	fmv.d	ft0, ft5
80000e94: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000e98: 53 80 52 22  	fmv.d	ft0, ft5
80000e9c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000ea0: 53 80 52 22  	fmv.d	ft0, ft5
80000ea4: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ea8: 53 80 52 22  	fmv.d	ft0, ft5
80000eac: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000eb0: 53 80 52 22  	fmv.d	ft0, ft5
80000eb4: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000eb8: 53 80 52 22  	fmv.d	ft0, ft5
80000ebc: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ec0: 93 84 24 00  	addi	s1, s1, 2
80000ec4: 93 86 16 01  	addi	a3, a3, 17
80000ec8: 93 85 05 01  	addi	a1, a1, 16
80000ecc: 13 04 f4 00  	addi	s0, s0, 15
80000ed0: 13 06 e6 00  	addi	a2, a2, 14
80000ed4: 93 89 d9 00  	addi	s3, s3, 13
80000ed8: 13 0c cc 00  	addi	s8, s8, 12
80000edc: 93 8b bb 00  	addi	s7, s7, 11
80000ee0: 13 0b ab 00  	addi	s6, s6, 10
80000ee4: 93 8e 9e 00  	addi	t4, t4, 9
80000ee8: 13 03 93 00  	addi	t1, t1, 9
80000eec: 93 8a 8a 00  	addi	s5, s5, 8
80000ef0: 13 0a 7a 00  	addi	s4, s4, 7
80000ef4: 13 0e 6e 00  	addi	t3, t3, 6
80000ef8: 93 82 62 00  	addi	t0, t0, 6
80000efc: 13 09 59 00  	addi	s2, s2, 5
80000f00: 93 8f 4f 00  	addi	t6, t6, 4
80000f04: 93 83 33 00  	addi	t2, t2, 3
80000f08: 93 88 38 00  	addi	a7, a7, 3
80000f0c: 13 0f 1f 00  	addi	t5, t5, 1
80000f10: e3 98 04 dd  	bne	s1, a6, 0x80000ce0 <.LBB0_86+0x50>
80000f14: 73 f0 00 7c  	csrci	1984, 1
80000f18: 6f 00 80 2b  	j	0x800011d0 <.LBB0_86+0x540>
80000f1c: 13 03 00 00  	mv	t1, zero
80000f20: 93 03 00 00  	mv	t2, zero
80000f24: 13 0e 00 00  	mv	t3, zero
;   for (i = 0; i < nk; i++)
80000f28: 93 06 8c 04  	addi	a3, s8, 72
80000f2c: 13 0f 20 00  	addi	t5, zero, 2
80000f30: b7 95 e3 38  	lui	a1, 233017
80000f34: 93 87 95 e3  	addi	a5, a1, -455
80000f38: 93 04 20 01  	addi	s1, zero, 18
80000f3c: 07 30 05 00  	fld	ft0, 0(a0)
80000f40: 37 c5 96 3f  	lui	a0, 260460
80000f44: 13 08 c5 16  	addi	a6, a0, 364
80000f48: 37 75 c1 16  	lui	a0, 93207
80000f4c: 93 02 75 c1  	addi	t0, a0, -1001
80000f50: 93 08 a0 02  	addi	a7, zero, 42
80000f54: 93 0f 20 00  	addi	t6, zero, 2
80000f58: 93 0e 20 00  	addi	t4, zero, 2
80000f5c: 13 0a 20 00  	addi	s4, zero, 2
80000f60: 93 0a 20 00  	addi	s5, zero, 2
80000f64: 13 0b 20 00  	addi	s6, zero, 2
80000f68: 93 0b 20 00  	addi	s7, zero, 2
80000f6c: 13 0c 20 00  	addi	s8, zero, 2
80000f70: 13 09 20 00  	addi	s2, zero, 2
80000f74: 13 0d 20 00  	addi	s10, zero, 2
80000f78: 93 0d 20 00  	addi	s11, zero, 2
80000f7c: 93 09 20 00  	addi	s3, zero, 2
80000f80: 13 07 20 00  	addi	a4, zero, 2
80000f84: 13 04 20 00  	addi	s0, zero, 2
80000f88: 93 0c 20 00  	addi	s9, zero, 2
80000f8c: 93 05 20 00  	addi	a1, zero, 2
80000f90: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000f94: 33 b5 f5 02  	mulhu	a0, a1, a5
80000f98: 13 55 25 00  	srli	a0, a0, 2
80000f9c: 33 05 95 02  	mul	a0, a0, s1
80000fa0: 33 85 a5 40  	sub	a0, a1, a0
80000fa4: d3 00 05 d2  	fcvt.d.w	ft1, a0
80000fa8: 33 35 f6 02  	mulhu	a0, a2, a5
80000fac: 13 55 25 00  	srli	a0, a0, 2
80000fb0: 33 05 95 02  	mul	a0, a0, s1
80000fb4: 33 05 a6 40  	sub	a0, a2, a0
80000fb8: 53 01 05 d2  	fcvt.d.w	ft2, a0
80000fbc: 33 35 fe 02  	mulhu	a0, t3, a5
80000fc0: 13 55 25 00  	srli	a0, a0, 2
80000fc4: 33 05 95 02  	mul	a0, a0, s1
80000fc8: 33 85 ac 40  	sub	a0, s9, a0
80000fcc: d3 01 05 d2  	fcvt.d.w	ft3, a0
80000fd0: 33 35 f7 02  	mulhu	a0, a4, a5
80000fd4: 13 55 25 00  	srli	a0, a0, 2
80000fd8: 33 05 95 02  	mul	a0, a0, s1
80000fdc: 33 05 a7 40  	sub	a0, a4, a0
80000fe0: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000fe4: 33 b5 fd 02  	mulhu	a0, s11, a5
80000fe8: 13 55 25 00  	srli	a0, a0, 2
80000fec: 33 05 95 02  	mul	a0, a0, s1
80000ff0: 33 85 ad 40  	sub	a0, s11, a0
80000ff4: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000ff8: 33 b5 f3 02  	mulhu	a0, t2, a5
80000ffc: 13 55 25 00  	srli	a0, a0, 2
80001000: 33 05 95 02  	mul	a0, a0, s1
80001004: 33 05 a9 40  	sub	a0, s2, a0
80001008: 53 03 05 d2  	fcvt.d.w	ft6, a0
8000100c: 33 b5 fb 02  	mulhu	a0, s7, a5
80001010: 13 55 25 00  	srli	a0, a0, 2
80001014: 33 05 95 02  	mul	a0, a0, s1
80001018: 33 85 ab 40  	sub	a0, s7, a0
8000101c: d3 03 05 d2  	fcvt.d.w	ft7, a0
80001020: 33 b5 fa 02  	mulhu	a0, s5, a5
80001024: 13 55 25 00  	srli	a0, a0, 2
80001028: 33 05 95 02  	mul	a0, a0, s1
8000102c: 33 85 aa 40  	sub	a0, s5, a0
80001030: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001034: 33 35 f3 02  	mulhu	a0, t1, a5
80001038: 13 55 25 00  	srli	a0, a0, 2
8000103c: 33 05 95 02  	mul	a0, a0, s1
80001040: 33 85 ae 40  	sub	a0, t4, a0
80001044: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001048: 33 35 ff 02  	mulhu	a0, t5, a5
8000104c: 13 55 25 00  	srli	a0, a0, 2
80001050: 33 05 95 02  	mul	a0, a0, s1
80001054: 33 05 af 40  	sub	a0, t5, a0
80001058: 53 06 05 d2  	fcvt.d.w	fa2, a0
8000105c: 33 b5 ff 02  	mulhu	a0, t6, a5
80001060: 13 55 25 00  	srli	a0, a0, 2
80001064: 33 05 95 02  	mul	a0, a0, s1
80001068: 33 85 af 40  	sub	a0, t6, a0
8000106c: d3 06 05 d2  	fcvt.d.w	fa3, a0
80001070: 33 35 fa 02  	mulhu	a0, s4, a5
80001074: 13 55 25 00  	srli	a0, a0, 2
80001078: 33 05 95 02  	mul	a0, a0, s1
8000107c: 33 05 aa 40  	sub	a0, s4, a0
80001080: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001084: 33 35 fb 02  	mulhu	a0, s6, a5
80001088: 13 55 25 00  	srli	a0, a0, 2
8000108c: 33 05 95 02  	mul	a0, a0, s1
80001090: 33 05 ab 40  	sub	a0, s6, a0
80001094: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001098: 33 35 fc 02  	mulhu	a0, s8, a5
8000109c: 13 55 25 00  	srli	a0, a0, 2
800010a0: 33 05 95 02  	mul	a0, a0, s1
800010a4: 33 05 ac 40  	sub	a0, s8, a0
800010a8: 53 08 05 d2  	fcvt.d.w	fa6, a0
800010ac: 33 35 fd 02  	mulhu	a0, s10, a5
800010b0: 13 55 25 00  	srli	a0, a0, 2
800010b4: 33 05 95 02  	mul	a0, a0, s1
800010b8: 33 05 ad 40  	sub	a0, s10, a0
800010bc: d3 08 05 d2  	fcvt.d.w	fa7, a0
800010c0: 33 b5 f9 02  	mulhu	a0, s3, a5
800010c4: 13 55 25 00  	srli	a0, a0, 2
800010c8: 33 05 95 02  	mul	a0, a0, s1
800010cc: 33 85 a9 40  	sub	a0, s3, a0
800010d0: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800010d4: 33 35 f4 02  	mulhu	a0, s0, a5
800010d8: 13 55 25 00  	srli	a0, a0, 2
800010dc: 33 05 95 02  	mul	a0, a0, s1
800010e0: 33 05 a4 40  	sub	a0, s0, a0
800010e4: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800010e8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800010ec: 27 bc 16 fa  	fsd	ft1, -72(a3)
800010f0: d3 70 01 12  	fmul.d	ft1, ft2, ft0
800010f4: 27 b0 16 fc  	fsd	ft1, -64(a3)
800010f8: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800010fc: 27 b4 16 fc  	fsd	ft1, -56(a3)
80001100: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001104: 27 b8 16 fc  	fsd	ft1, -48(a3)
80001108: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
8000110c: 27 bc 16 fc  	fsd	ft1, -40(a3)
80001110: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001114: 27 b0 16 fe  	fsd	ft1, -32(a3)
80001118: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
8000111c: 27 b4 16 fe  	fsd	ft1, -24(a3)
80001120: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001124: 27 b8 16 fe  	fsd	ft1, -16(a3)
80001128: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
8000112c: 27 bc 16 fe  	fsd	ft1, -8(a3)
80001130: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80001134: 27 b0 16 00  	fsd	ft1, 0(a3)
80001138: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
8000113c: 27 b4 16 00  	fsd	ft1, 8(a3)
80001140: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80001144: 27 b8 16 00  	fsd	ft1, 16(a3)
80001148: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
8000114c: 27 bc 16 00  	fsd	ft1, 24(a3)
80001150: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80001154: 27 b0 16 02  	fsd	ft1, 32(a3)
80001158: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
8000115c: 27 b4 16 02  	fsd	ft1, 40(a3)
80001160: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80001164: 27 b8 16 02  	fsd	ft1, 48(a3)
80001168: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
8000116c: 27 bc 16 02  	fsd	ft1, 56(a3)
80001170: 23 a2 06 05  	sw	a6, 68(a3)
80001174: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
80001178: 13 06 26 00  	addi	a2, a2, 2
8000117c: 93 85 15 00  	addi	a1, a1, 1
80001180: 93 8c 3c 00  	addi	s9, s9, 3
80001184: 13 0e 3e 00  	addi	t3, t3, 3
80001188: 13 04 14 01  	addi	s0, s0, 17
8000118c: 13 07 47 00  	addi	a4, a4, 4
80001190: 93 89 09 01  	addi	s3, s3, 16
80001194: 93 8d 5d 00  	addi	s11, s11, 5
80001198: 13 0d fd 00  	addi	s10, s10, 15
8000119c: 13 09 69 00  	addi	s2, s2, 6
800011a0: 93 83 63 00  	addi	t2, t2, 6
800011a4: 13 0c ec 00  	addi	s8, s8, 14
800011a8: 93 8b 7b 00  	addi	s7, s7, 7
800011ac: 13 0b db 00  	addi	s6, s6, 13
800011b0: 93 8a 8a 00  	addi	s5, s5, 8
800011b4: 13 0a ca 00  	addi	s4, s4, 12
800011b8: 93 8e 9e 00  	addi	t4, t4, 9
800011bc: 13 03 93 00  	addi	t1, t1, 9
800011c0: 93 8f bf 00  	addi	t6, t6, 11
800011c4: 93 86 06 09  	addi	a3, a3, 144
800011c8: 13 0f af 00  	addi	t5, t5, 10
800011cc: e3 14 16 dd  	bne	a2, a7, 0x80000f94 <.LBB0_86+0x304>
800011d0: 83 29 01 03  	lw	s3, 48(sp)
;   for (i = 0; i < nj; i++)
800011d4: 13 d5 49 01  	srli	a0, s3, 20
800011d8: 33 35 a0 00  	snez	a0, a0
800011dc: b7 f5 11 00  	lui	a1, 287
800011e0: 93 85 95 28  	addi	a1, a1, 649
800011e4: b3 b5 b9 00  	sltu	a1, s3, a1
800011e8: 33 75 b5 00  	and	a0, a0, a1

800011ec <.LBB0_87>:
800011ec: 17 4f 00 00  	auipc	t5, 4
800011f0: 13 0f 4f 0c  	addi	t5, t5, 196
800011f4: 23 26 a1 00  	sw	a0, 12(sp)
800011f8: 63 04 05 3a  	beqz	a0, 0x800015a0 <.LBB0_87+0x3b4>
800011fc: 13 03 00 00  	mv	t1, zero
80001200: 13 0a 00 00  	mv	s4, zero
80001204: 93 0a 00 00  	mv	s5, zero
80001208: 13 0b 00 00  	mv	s6, zero
8000120c: 93 0b 00 00  	mv	s7, zero
80001210: 13 0c 00 00  	mv	s8, zero
80001214: 93 0c 00 00  	mv	s9, zero
80001218: 13 0d 00 00  	mv	s10, zero
8000121c: 93 0d 00 00  	mv	s11, zero
80001220: 93 00 00 00  	mv	ra, zero
80001224: 93 0f 00 00  	mv	t6, zero
80001228: 13 06 00 00  	mv	a2, zero
8000122c: 13 07 00 00  	mv	a4, zero
80001230: 93 05 00 00  	mv	a1, zero
80001234: 93 06 00 00  	mv	a3, zero
80001238: 93 07 00 00  	mv	a5, zero
8000123c: 13 04 00 00  	mv	s0, zero
80001240: 93 04 00 00  	mv	s1, zero
80001244: 13 08 00 00  	mv	a6, zero
80001248: 93 08 00 00  	mv	a7, zero
8000124c: 93 02 00 00  	mv	t0, zero
80001250: 13 09 00 00  	mv	s2, zero
80001254: 93 03 00 00  	mv	t2, zero
80001258: 13 0e 80 00  	addi	t3, zero, 8
8000125c: 93 0e 70 01  	addi	t4, zero, 23
;   for (i = 0; i < nj; i++)
80001260: 13 05 00 04  	addi	a0, zero, 64
80001264: ab a0 ae 00  	scfgw	t4, a0
80001268: 13 05 00 0c  	addi	a0, zero, 192
8000126c: ab 20 ae 00  	scfgw	t3, a0
80001270: 93 0e 10 01  	addi	t4, zero, 17
80001274: 13 05 00 06  	addi	a0, zero, 96
80001278: ab a0 ae 00  	scfgw	t4, a0
8000127c: 13 05 00 0e  	addi	a0, zero, 224
80001280: ab 20 ae 00  	scfgw	t3, a0
80001284: 13 05 00 02  	addi	a0, zero, 32
80001288: ab 20 a0 00  	scfgw	zero, a0
8000128c: 2b a0 09 3a  	scfgwi	s3, 928
80001290: 73 e0 00 7c  	csrsi	1984, 1
80001294: 37 95 2e ba  	lui	a0, 762601
80001298: 13 0e 35 ba  	addi	t3, a0, -1117
8000129c: 93 09 a0 fe  	addi	s3, zero, -22
800012a0: 87 31 0f 00  	fld	ft3, 0(t5)
800012a4: 93 0e 60 01  	addi	t4, zero, 22
800012a8: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012ac: 13 0f 40 1d  	addi	t5, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012b0: 33 35 c3 03  	mulhu	a0, t1, t3
800012b4: 13 55 45 00  	srli	a0, a0, 4
800012b8: 33 05 d5 03  	mul	a0, a0, t4
800012bc: 33 05 a3 40  	sub	a0, t1, a0
800012c0: d3 02 05 d2  	fcvt.d.w	ft5, a0
800012c4: 33 35 ca 03  	mulhu	a0, s4, t3
800012c8: 13 55 45 00  	srli	a0, a0, 4
800012cc: 33 05 d5 03  	mul	a0, a0, t4
800012d0: 33 05 aa 40  	sub	a0, s4, a0
800012d4: 53 03 05 d2  	fcvt.d.w	ft6, a0
800012d8: 33 b5 ca 03  	mulhu	a0, s5, t3
800012dc: 13 55 45 00  	srli	a0, a0, 4
800012e0: 33 05 d5 03  	mul	a0, a0, t4
800012e4: 33 85 aa 40  	sub	a0, s5, a0
800012e8: d3 03 05 d2  	fcvt.d.w	ft7, a0
800012ec: 33 35 cb 03  	mulhu	a0, s6, t3
800012f0: 13 55 45 00  	srli	a0, a0, 4
800012f4: 33 05 d5 03  	mul	a0, a0, t4
800012f8: 33 05 ab 40  	sub	a0, s6, a0
800012fc: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001300: 33 b5 cb 03  	mulhu	a0, s7, t3
80001304: 13 55 45 00  	srli	a0, a0, 4
80001308: 33 05 d5 03  	mul	a0, a0, t4
8000130c: 33 85 ab 40  	sub	a0, s7, a0
80001310: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001314: 33 35 cc 03  	mulhu	a0, s8, t3
80001318: 13 55 45 00  	srli	a0, a0, 4
8000131c: 33 05 d5 03  	mul	a0, a0, t4
80001320: 33 05 ac 40  	sub	a0, s8, a0
80001324: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001328: 33 b5 cc 03  	mulhu	a0, s9, t3
8000132c: 13 55 45 00  	srli	a0, a0, 4
80001330: 33 05 d5 03  	mul	a0, a0, t4
80001334: 33 85 ac 40  	sub	a0, s9, a0
80001338: d3 06 05 d2  	fcvt.d.w	fa3, a0
8000133c: 33 35 cd 03  	mulhu	a0, s10, t3
80001340: 13 55 45 00  	srli	a0, a0, 4
80001344: 33 05 d5 03  	mul	a0, a0, t4
80001348: 33 05 ad 40  	sub	a0, s10, a0
8000134c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001350: 33 b5 cd 03  	mulhu	a0, s11, t3
80001354: 13 55 45 00  	srli	a0, a0, 4
80001358: 33 05 d5 03  	mul	a0, a0, t4
8000135c: 33 85 ad 40  	sub	a0, s11, a0
80001360: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001364: 33 b5 c0 03  	mulhu	a0, ra, t3
80001368: 13 55 45 00  	srli	a0, a0, 4
8000136c: 33 05 d5 03  	mul	a0, a0, t4
80001370: 33 85 a0 40  	sub	a0, ra, a0
80001374: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001378: 33 b5 cf 03  	mulhu	a0, t6, t3
8000137c: 13 55 45 00  	srli	a0, a0, 4
80001380: 33 05 d5 03  	mul	a0, a0, t4
80001384: 33 85 af 40  	sub	a0, t6, a0
80001388: d3 08 05 d2  	fcvt.d.w	fa7, a0
8000138c: 33 35 c6 03  	mulhu	a0, a2, t3
80001390: 13 55 45 00  	srli	a0, a0, 4
80001394: 33 05 d5 03  	mul	a0, a0, t4
80001398: 33 05 a6 40  	sub	a0, a2, a0
8000139c: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800013a0: 33 35 c7 03  	mulhu	a0, a4, t3
800013a4: 13 55 45 00  	srli	a0, a0, 4
800013a8: 33 05 d5 03  	mul	a0, a0, t4
800013ac: 33 05 a7 40  	sub	a0, a4, a0
800013b0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800013b4: 33 b5 c5 03  	mulhu	a0, a1, t3
800013b8: 13 55 45 00  	srli	a0, a0, 4
800013bc: 33 05 d5 03  	mul	a0, a0, t4
800013c0: 33 85 a5 40  	sub	a0, a1, a0
800013c4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800013c8: 33 b5 c6 03  	mulhu	a0, a3, t3
800013cc: 13 55 45 00  	srli	a0, a0, 4
800013d0: 33 05 d5 03  	mul	a0, a0, t4
800013d4: 33 85 a6 40  	sub	a0, a3, a0
800013d8: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800013dc: 33 b5 c7 03  	mulhu	a0, a5, t3
800013e0: 13 55 45 00  	srli	a0, a0, 4
800013e4: 33 05 d5 03  	mul	a0, a0, t4
800013e8: 33 85 a7 40  	sub	a0, a5, a0
800013ec: 53 04 05 d2  	fcvt.d.w	fs0, a0
800013f0: 33 35 c4 03  	mulhu	a0, s0, t3
800013f4: 13 55 45 00  	srli	a0, a0, 4
800013f8: 33 05 d5 03  	mul	a0, a0, t4
800013fc: 33 05 a4 40  	sub	a0, s0, a0
80001400: d3 04 05 d2  	fcvt.d.w	fs1, a0
80001404: 33 b5 c4 03  	mulhu	a0, s1, t3
80001408: 13 55 45 00  	srli	a0, a0, 4
8000140c: 33 05 d5 03  	mul	a0, a0, t4
80001410: 33 85 a4 40  	sub	a0, s1, a0
80001414: 53 09 05 d2  	fcvt.d.w	fs2, a0
80001418: 33 35 c8 03  	mulhu	a0, a6, t3
8000141c: 13 55 45 00  	srli	a0, a0, 4
80001420: 33 05 d5 03  	mul	a0, a0, t4
80001424: 33 05 a8 40  	sub	a0, a6, a0
80001428: d3 09 05 d2  	fcvt.d.w	fs3, a0
8000142c: 33 b5 c8 03  	mulhu	a0, a7, t3
80001430: 13 55 45 00  	srli	a0, a0, 4
80001434: 33 05 d5 03  	mul	a0, a0, t4
80001438: 33 85 a8 40  	sub	a0, a7, a0
8000143c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80001440: 33 b5 c2 03  	mulhu	a0, t0, t3
80001444: 13 55 45 00  	srli	a0, a0, 4
80001448: 33 05 d5 03  	mul	a0, a0, t4
8000144c: 33 85 a2 40  	sub	a0, t0, a0
80001450: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80001454: 33 35 c9 03  	mulhu	a0, s2, t3
80001458: 13 55 45 00  	srli	a0, a0, 4
8000145c: 33 05 d5 03  	mul	a0, a0, t4
80001460: 33 05 a9 40  	sub	a0, s2, a0
80001464: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001468: 33 b5 c3 03  	mulhu	a0, t2, t3
8000146c: 13 55 45 00  	srli	a0, a0, 4
80001470: 33 05 35 03  	mul	a0, a0, s3
80001474: 33 85 a3 00  	add	a0, t2, a0
80001478: d3 0b 05 d2  	fcvt.d.w	fs7, a0
8000147c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001480: 53 80 52 22  	fmv.d	ft0, ft5
80001484: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001488: 53 80 52 22  	fmv.d	ft0, ft5
8000148c: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001490: 53 80 52 22  	fmv.d	ft0, ft5
80001494: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001498: 53 80 52 22  	fmv.d	ft0, ft5
8000149c: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
800014a0: 53 80 52 22  	fmv.d	ft0, ft5
800014a4: d3 72 36 12  	fmul.d	ft5, fa2, ft3
800014a8: 53 80 52 22  	fmv.d	ft0, ft5
800014ac: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
800014b0: 53 80 52 22  	fmv.d	ft0, ft5
800014b4: d3 72 37 12  	fmul.d	ft5, fa4, ft3
800014b8: 53 80 52 22  	fmv.d	ft0, ft5
800014bc: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
800014c0: 53 80 52 22  	fmv.d	ft0, ft5
800014c4: d3 72 38 12  	fmul.d	ft5, fa6, ft3
800014c8: 53 80 52 22  	fmv.d	ft0, ft5
800014cc: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
800014d0: 53 80 52 22  	fmv.d	ft0, ft5
800014d4: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
800014d8: 53 80 52 22  	fmv.d	ft0, ft5
800014dc: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
800014e0: 53 80 52 22  	fmv.d	ft0, ft5
800014e4: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
800014e8: 53 80 52 22  	fmv.d	ft0, ft5
800014ec: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
800014f0: 53 80 52 22  	fmv.d	ft0, ft5
800014f4: d3 72 34 12  	fmul.d	ft5, fs0, ft3
800014f8: 53 80 52 22  	fmv.d	ft0, ft5
800014fc: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001500: 53 80 52 22  	fmv.d	ft0, ft5
80001504: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001508: 53 80 52 22  	fmv.d	ft0, ft5
8000150c: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001510: 53 80 52 22  	fmv.d	ft0, ft5
80001514: 53 00 42 22  	fmv.d	ft0, ft4
80001518: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
8000151c: 53 80 52 22  	fmv.d	ft0, ft5
80001520: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001524: 53 80 52 22  	fmv.d	ft0, ft5
80001528: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
8000152c: 53 80 52 22  	fmv.d	ft0, ft5
80001530: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80001534: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nj; i++)
80001538: 93 83 a3 01  	addi	t2, t2, 26
8000153c: 13 09 99 01  	addi	s2, s2, 25
80001540: 93 82 82 01  	addi	t0, t0, 24
80001544: 93 88 78 01  	addi	a7, a7, 23
80001548: 13 08 58 01  	addi	a6, a6, 21
8000154c: 93 84 44 01  	addi	s1, s1, 20
80001550: 13 04 34 01  	addi	s0, s0, 19
80001554: 93 87 27 01  	addi	a5, a5, 18
80001558: 93 86 16 01  	addi	a3, a3, 17
8000155c: 93 85 05 01  	addi	a1, a1, 16
80001560: 13 07 f7 00  	addi	a4, a4, 15
80001564: 13 06 e6 00  	addi	a2, a2, 14
80001568: 93 8f df 00  	addi	t6, t6, 13
8000156c: 93 80 c0 00  	addi	ra, ra, 12
80001570: 93 8d bd 00  	addi	s11, s11, 11
80001574: 13 0d ad 00  	addi	s10, s10, 10
80001578: 93 8c 9c 00  	addi	s9, s9, 9
8000157c: 13 0c 8c 00  	addi	s8, s8, 8
80001580: 93 8b 7b 00  	addi	s7, s7, 7
80001584: 13 0b 6b 00  	addi	s6, s6, 6
80001588: 93 8a 5a 00  	addi	s5, s5, 5
8000158c: 13 0a 4a 00  	addi	s4, s4, 4
80001590: 13 03 33 00  	addi	t1, t1, 3
80001594: e3 9e e3 d1  	bne	t2, t5, 0x800012b0 <.LBB0_87+0xc4>
80001598: 73 f0 00 7c  	csrci	1984, 1
8000159c: 6f 00 c0 36  	j	0x80001908 <.LBB0_87+0x71c>
800015a0: 13 08 00 00  	mv	a6, zero
800015a4: 93 08 00 00  	mv	a7, zero
800015a8: 93 02 00 00  	mv	t0, zero
800015ac: 13 03 00 00  	mv	t1, zero
800015b0: 93 03 00 00  	mv	t2, zero
800015b4: 13 09 00 00  	mv	s2, zero
800015b8: 13 0e 00 00  	mv	t3, zero
800015bc: 93 0e 00 00  	mv	t4, zero
800015c0: 13 0a 00 00  	mv	s4, zero
800015c4: 93 0a 00 00  	mv	s5, zero
800015c8: 13 0b 00 00  	mv	s6, zero
800015cc: 93 0b 00 00  	mv	s7, zero
800015d0: 13 0c 00 00  	mv	s8, zero
800015d4: 93 0c 00 00  	mv	s9, zero
800015d8: 13 0d 00 00  	mv	s10, zero
800015dc: 93 0d 00 00  	mv	s11, zero
800015e0: 93 00 00 00  	mv	ra, zero
800015e4: 93 0f 00 00  	mv	t6, zero
800015e8: 13 06 00 00  	mv	a2, zero
800015ec: 93 06 00 00  	mv	a3, zero
800015f0: 13 07 00 00  	mv	a4, zero
800015f4: 93 07 00 00  	mv	a5, zero
800015f8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
800015fc: 13 84 09 06  	addi	s0, s3, 96
80001600: 37 95 2e ba  	lui	a0, 762601
80001604: 13 05 35 ba  	addi	a0, a0, -1117
80001608: 07 30 0f 00  	fld	ft0, 0(t5)
8000160c: 13 0f 60 01  	addi	t5, zero, 22
80001610: 93 09 a0 fe  	addi	s3, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80001614: b3 b5 a7 02  	mulhu	a1, a5, a0
80001618: 93 d5 45 00  	srli	a1, a1, 4
8000161c: b3 85 e5 03  	mul	a1, a1, t5
80001620: b3 85 b7 40  	sub	a1, a5, a1
80001624: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001628: b3 35 a7 02  	mulhu	a1, a4, a0
8000162c: 93 d5 45 00  	srli	a1, a1, 4
80001630: b3 85 e5 03  	mul	a1, a1, t5
80001634: b3 05 b7 40  	sub	a1, a4, a1
80001638: 53 81 05 d2  	fcvt.d.w	ft2, a1
8000163c: b3 35 a6 02  	mulhu	a1, a2, a0
80001640: 93 d5 45 00  	srli	a1, a1, 4
80001644: b3 85 e5 03  	mul	a1, a1, t5
80001648: b3 05 b6 40  	sub	a1, a2, a1
8000164c: d3 81 05 d2  	fcvt.d.w	ft3, a1
80001650: b3 b5 a0 02  	mulhu	a1, ra, a0
80001654: 93 d5 45 00  	srli	a1, a1, 4
80001658: b3 85 e5 03  	mul	a1, a1, t5
8000165c: b3 85 b0 40  	sub	a1, ra, a1
80001660: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001664: b3 35 ad 02  	mulhu	a1, s10, a0
80001668: 93 d5 45 00  	srli	a1, a1, 4
8000166c: b3 85 e5 03  	mul	a1, a1, t5
80001670: b3 05 bd 40  	sub	a1, s10, a1
80001674: d3 82 05 d2  	fcvt.d.w	ft5, a1
80001678: b3 b5 ac 02  	mulhu	a1, s9, a0
8000167c: 93 d5 45 00  	srli	a1, a1, 4
80001680: b3 85 e5 03  	mul	a1, a1, t5
80001684: b3 85 bc 40  	sub	a1, s9, a1
80001688: 53 83 05 d2  	fcvt.d.w	ft6, a1
8000168c: b3 b5 ab 02  	mulhu	a1, s7, a0
80001690: 93 d5 45 00  	srli	a1, a1, 4
80001694: b3 85 e5 03  	mul	a1, a1, t5
80001698: b3 85 bb 40  	sub	a1, s7, a1
8000169c: d3 83 05 d2  	fcvt.d.w	ft7, a1
800016a0: b3 b5 aa 02  	mulhu	a1, s5, a0
800016a4: 93 d5 45 00  	srli	a1, a1, 4
800016a8: b3 85 e5 03  	mul	a1, a1, t5
800016ac: b3 85 ba 40  	sub	a1, s5, a1
800016b0: 53 85 05 d2  	fcvt.d.w	fa0, a1
800016b4: b3 b5 ae 02  	mulhu	a1, t4, a0
800016b8: 93 d5 45 00  	srli	a1, a1, 4
800016bc: b3 85 e5 03  	mul	a1, a1, t5
800016c0: b3 85 be 40  	sub	a1, t4, a1
800016c4: d3 85 05 d2  	fcvt.d.w	fa1, a1
800016c8: b3 35 a9 02  	mulhu	a1, s2, a0
800016cc: 93 d5 45 00  	srli	a1, a1, 4
800016d0: b3 85 e5 03  	mul	a1, a1, t5
800016d4: b3 05 b9 40  	sub	a1, s2, a1
800016d8: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016dc: b3 35 a3 02  	mulhu	a1, t1, a0
800016e0: 93 d5 45 00  	srli	a1, a1, 4
800016e4: b3 85 e5 03  	mul	a1, a1, t5
800016e8: b3 05 b3 40  	sub	a1, t1, a1
800016ec: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016f0: b3 35 a8 02  	mulhu	a1, a6, a0
800016f4: 93 d5 45 00  	srli	a1, a1, 4
800016f8: b3 85 e5 03  	mul	a1, a1, t5
800016fc: b3 05 b8 40  	sub	a1, a6, a1
80001700: 53 87 05 d2  	fcvt.d.w	fa4, a1
80001704: b3 b5 a8 02  	mulhu	a1, a7, a0
80001708: 93 d5 45 00  	srli	a1, a1, 4
8000170c: b3 85 e5 03  	mul	a1, a1, t5
80001710: b3 85 b8 40  	sub	a1, a7, a1
80001714: d3 87 05 d2  	fcvt.d.w	fa5, a1
80001718: b3 b5 a2 02  	mulhu	a1, t0, a0
8000171c: 93 d5 45 00  	srli	a1, a1, 4
80001720: b3 85 e5 03  	mul	a1, a1, t5
80001724: b3 85 b2 40  	sub	a1, t0, a1
80001728: 53 88 05 d2  	fcvt.d.w	fa6, a1
8000172c: b3 b5 a3 02  	mulhu	a1, t2, a0
80001730: 93 d5 45 00  	srli	a1, a1, 4
80001734: b3 85 e5 03  	mul	a1, a1, t5
80001738: b3 85 b3 40  	sub	a1, t2, a1
8000173c: d3 88 05 d2  	fcvt.d.w	fa7, a1
80001740: b3 35 ae 02  	mulhu	a1, t3, a0
80001744: 93 d5 45 00  	srli	a1, a1, 4
80001748: b3 85 e5 03  	mul	a1, a1, t5
8000174c: b3 05 be 40  	sub	a1, t3, a1
80001750: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001754: b3 35 aa 02  	mulhu	a1, s4, a0
80001758: 93 d5 45 00  	srli	a1, a1, 4
8000175c: b3 85 e5 03  	mul	a1, a1, t5
80001760: b3 05 ba 40  	sub	a1, s4, a1
80001764: d3 8e 05 d2  	fcvt.d.w	ft9, a1
80001768: b3 35 ab 02  	mulhu	a1, s6, a0
8000176c: 93 d5 45 00  	srli	a1, a1, 4
80001770: b3 85 e5 03  	mul	a1, a1, t5
80001774: b3 05 bb 40  	sub	a1, s6, a1
80001778: 53 8f 05 d2  	fcvt.d.w	ft10, a1
8000177c: b3 35 ac 02  	mulhu	a1, s8, a0
80001780: 93 d5 45 00  	srli	a1, a1, 4
80001784: b3 85 e5 03  	mul	a1, a1, t5
80001788: b3 05 bc 40  	sub	a1, s8, a1
8000178c: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001790: b3 b5 ad 02  	mulhu	a1, s11, a0
80001794: 93 d5 45 00  	srli	a1, a1, 4
80001798: b3 85 e5 03  	mul	a1, a1, t5
8000179c: b3 85 bd 40  	sub	a1, s11, a1
800017a0: 53 84 05 d2  	fcvt.d.w	fs0, a1
800017a4: b3 b5 af 02  	mulhu	a1, t6, a0
800017a8: 93 d5 45 00  	srli	a1, a1, 4
800017ac: b3 85 e5 03  	mul	a1, a1, t5
800017b0: b3 85 bf 40  	sub	a1, t6, a1
800017b4: d3 84 05 d2  	fcvt.d.w	fs1, a1
800017b8: b3 b5 a6 02  	mulhu	a1, a3, a0
800017bc: 93 d5 45 00  	srli	a1, a1, 4
800017c0: b3 85 e5 03  	mul	a1, a1, t5
800017c4: b3 85 b6 40  	sub	a1, a3, a1
800017c8: 53 89 05 d2  	fcvt.d.w	fs2, a1
800017cc: b3 b5 a4 02  	mulhu	a1, s1, a0
800017d0: 93 d5 45 00  	srli	a1, a1, 4
800017d4: b3 85 35 03  	mul	a1, a1, s3
800017d8: b3 85 b4 00  	add	a1, s1, a1
800017dc: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017e0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800017e4: 27 30 14 fa  	fsd	ft1, -96(s0)
800017e8: d3 70 01 12  	fmul.d	ft1, ft2, ft0
800017ec: 27 34 14 fa  	fsd	ft1, -88(s0)
800017f0: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800017f4: 27 38 14 fa  	fsd	ft1, -80(s0)
800017f8: d3 70 02 12  	fmul.d	ft1, ft4, ft0
800017fc: 27 3c 14 fa  	fsd	ft1, -72(s0)
80001800: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80001804: 27 30 14 fc  	fsd	ft1, -64(s0)
80001808: d3 70 03 12  	fmul.d	ft1, ft6, ft0
8000180c: 27 34 14 fc  	fsd	ft1, -56(s0)
80001810: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80001814: 27 38 14 fc  	fsd	ft1, -48(s0)
80001818: d3 70 05 12  	fmul.d	ft1, fa0, ft0
8000181c: 27 3c 14 fc  	fsd	ft1, -40(s0)
80001820: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80001824: 27 30 14 fe  	fsd	ft1, -32(s0)
80001828: d3 70 06 12  	fmul.d	ft1, fa2, ft0
8000182c: 27 34 14 fe  	fsd	ft1, -24(s0)
80001830: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80001834: 27 38 14 fe  	fsd	ft1, -16(s0)
80001838: d3 70 07 12  	fmul.d	ft1, fa4, ft0
8000183c: 27 3c 14 fe  	fsd	ft1, -8(s0)
80001840: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80001844: 27 30 14 00  	fsd	ft1, 0(s0)
80001848: d3 70 08 12  	fmul.d	ft1, fa6, ft0
8000184c: 27 34 14 00  	fsd	ft1, 8(s0)
80001850: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80001854: 27 38 14 00  	fsd	ft1, 16(s0)
80001858: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
8000185c: 27 3c 14 00  	fsd	ft1, 24(s0)
80001860: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80001864: 27 30 14 02  	fsd	ft1, 32(s0)
80001868: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
8000186c: 27 34 14 02  	fsd	ft1, 40(s0)
80001870: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80001874: 27 38 14 02  	fsd	ft1, 48(s0)
80001878: d3 70 04 12  	fmul.d	ft1, fs0, ft0
8000187c: 27 30 14 04  	fsd	ft1, 64(s0)
80001880: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80001884: 27 34 14 04  	fsd	ft1, 72(s0)
80001888: d3 70 09 12  	fmul.d	ft1, fs2, ft0
8000188c: 27 38 14 04  	fsd	ft1, 80(s0)
80001890: 23 2e 04 02  	sw	zero, 60(s0)
80001894: 23 2c 04 02  	sw	zero, 56(s0)
80001898: d3 f0 09 12  	fmul.d	ft1, fs3, ft0
8000189c: 27 3c 14 04  	fsd	ft1, 88(s0)
;   for (i = 0; i < nj; i++)
800018a0: 93 84 a4 01  	addi	s1, s1, 26
800018a4: 93 87 37 00  	addi	a5, a5, 3
800018a8: 13 07 47 00  	addi	a4, a4, 4
800018ac: 93 86 96 01  	addi	a3, a3, 25
800018b0: 13 06 56 00  	addi	a2, a2, 5
800018b4: 93 8f 8f 01  	addi	t6, t6, 24
800018b8: 93 80 60 00  	addi	ra, ra, 6
800018bc: 93 8d 7d 01  	addi	s11, s11, 23
800018c0: 13 0d 7d 00  	addi	s10, s10, 7
800018c4: 93 8c 8c 00  	addi	s9, s9, 8
800018c8: 13 0c 5c 01  	addi	s8, s8, 21
800018cc: 93 8b 9b 00  	addi	s7, s7, 9
800018d0: 13 0b 4b 01  	addi	s6, s6, 20
800018d4: 93 8a aa 00  	addi	s5, s5, 10
800018d8: 13 0a 3a 01  	addi	s4, s4, 19
800018dc: 93 8e be 00  	addi	t4, t4, 11
800018e0: 13 0e 2e 01  	addi	t3, t3, 18
800018e4: 13 09 c9 00  	addi	s2, s2, 12
800018e8: 93 83 13 01  	addi	t2, t2, 17
800018ec: 13 03 d3 00  	addi	t1, t1, 13
800018f0: 93 82 02 01  	addi	t0, t0, 16
800018f4: 13 04 04 0c  	addi	s0, s0, 192
800018f8: 93 88 f8 00  	addi	a7, a7, 15
800018fc: 13 08 e8 00  	addi	a6, a6, 14
80001900: 93 05 40 1d  	addi	a1, zero, 468
80001904: e3 98 b4 d0  	bne	s1, a1, 0x80001614 <.LBB0_87+0x428>
80001908: 83 27 c1 02  	lw	a5, 44(sp)
;   for (i = 0; i < nm; i++)
8000190c: 13 d5 47 01  	srli	a0, a5, 20
80001910: 33 35 a0 00  	snez	a0, a0
80001914: b7 f5 11 00  	lui	a1, 287
80001918: 93 85 95 f8  	addi	a1, a1, -119
8000191c: b3 b5 b7 00  	sltu	a1, a5, a1
80001920: b3 75 b5 00  	and	a1, a0, a1

80001924 <.LBB0_88>:
80001924: 17 45 00 00  	auipc	a0, 4
80001928: 13 05 45 99  	addi	a0, a0, -1644
8000192c: 23 24 b1 00  	sw	a1, 8(sp)
80001930: 63 8e 05 36  	beqz	a1, 0x80001cac <.LBB0_89+0x31c>
80001934: 93 08 00 00  	mv	a7, zero
80001938: 93 02 00 00  	mv	t0, zero
8000193c: 93 03 00 00  	mv	t2, zero
80001940: 93 05 80 00  	addi	a1, zero, 8
80001944: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nm; i++)
80001948: 93 06 00 04  	addi	a3, zero, 64
8000194c: 13 07 00 0c  	addi	a4, zero, 192
80001950: ab 20 d6 00  	scfgw	a2, a3
80001954: ab a0 e5 00  	scfgw	a1, a4
80001958: 13 06 70 01  	addi	a2, zero, 23
8000195c: 93 06 00 06  	addi	a3, zero, 96
80001960: 13 07 00 0e  	addi	a4, zero, 224
80001964: ab 20 d6 00  	scfgw	a2, a3
80001968: ab a0 e5 00  	scfgw	a1, a4
8000196c: 93 05 00 02  	addi	a1, zero, 32
80001970: ab 20 b0 00  	scfgw	zero, a1
80001974: 2b a0 07 3a  	scfgwi	a5, 928
80001978: 73 e0 00 7c  	csrsi	1984, 1
8000197c: 13 0a 20 00  	addi	s4, zero, 2
80001980: b7 d5 cc cc  	lui	a1, 838861
80001984: 13 87 d5 cc  	addi	a4, a1, -819
80001988: 93 07 40 01  	addi	a5, zero, 20
8000198c: 87 31 05 00  	fld	ft3, 0(a0)

80001990 <.LBB0_89>:
80001990: 17 45 00 00  	auipc	a0, 4
80001994: 13 05 05 93  	addi	a0, a0, -1744
80001998: 07 32 05 00  	fld	ft4, 0(a0)
8000199c: 93 09 20 03  	addi	s3, zero, 50
800019a0: 13 0e 20 00  	addi	t3, zero, 2
800019a4: 93 0e 20 00  	addi	t4, zero, 2
800019a8: 93 0a 20 00  	addi	s5, zero, 2
800019ac: 13 0b 20 00  	addi	s6, zero, 2
800019b0: 93 0b 20 00  	addi	s7, zero, 2
800019b4: 13 0c 20 00  	addi	s8, zero, 2
800019b8: 13 09 20 00  	addi	s2, zero, 2
800019bc: 93 0c 20 00  	addi	s9, zero, 2
800019c0: 13 0f 20 00  	addi	t5, zero, 2
800019c4: 13 0d 20 00  	addi	s10, zero, 2
800019c8: 93 0d 20 00  	addi	s11, zero, 2
800019cc: 93 00 20 00  	addi	ra, zero, 2
800019d0: 93 0f 20 00  	addi	t6, zero, 2
800019d4: 93 04 20 00  	addi	s1, zero, 2
800019d8: 93 06 20 00  	addi	a3, zero, 2
800019dc: 13 05 20 00  	addi	a0, zero, 2
800019e0: 93 05 20 00  	addi	a1, zero, 2
800019e4: 13 06 20 00  	addi	a2, zero, 2
800019e8: 13 03 20 00  	addi	t1, zero, 2
800019ec: 13 08 20 00  	addi	a6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
800019f0: 33 34 e8 02  	mulhu	s0, a6, a4
800019f4: 13 54 44 00  	srli	s0, s0, 4
800019f8: 33 04 f4 02  	mul	s0, s0, a5
800019fc: 33 04 88 40  	sub	s0, a6, s0
80001a00: d3 02 04 d2  	fcvt.d.w	ft5, s0
80001a04: 33 34 ea 02  	mulhu	s0, s4, a4
80001a08: 13 54 44 00  	srli	s0, s0, 4
80001a0c: 33 04 f4 02  	mul	s0, s0, a5
80001a10: 33 04 8a 40  	sub	s0, s4, s0
80001a14: 53 03 04 d2  	fcvt.d.w	ft6, s0
80001a18: 33 b4 e8 02  	mulhu	s0, a7, a4
80001a1c: 13 54 44 00  	srli	s0, s0, 4
80001a20: 33 04 f4 02  	mul	s0, s0, a5
80001a24: 33 04 8e 40  	sub	s0, t3, s0
80001a28: d3 03 04 d2  	fcvt.d.w	ft7, s0
80001a2c: 33 b4 e2 02  	mulhu	s0, t0, a4
80001a30: 13 54 44 00  	srli	s0, s0, 4
80001a34: 33 04 f4 02  	mul	s0, s0, a5
80001a38: 33 84 8e 40  	sub	s0, t4, s0
80001a3c: 53 05 04 d2  	fcvt.d.w	fa0, s0
80001a40: 33 b4 ea 02  	mulhu	s0, s5, a4
80001a44: 13 54 44 00  	srli	s0, s0, 4
80001a48: 33 04 f4 02  	mul	s0, s0, a5
80001a4c: 33 84 8a 40  	sub	s0, s5, s0
80001a50: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001a54: 33 34 eb 02  	mulhu	s0, s6, a4
80001a58: 13 54 44 00  	srli	s0, s0, 4
80001a5c: 33 04 f4 02  	mul	s0, s0, a5
80001a60: 33 04 8b 40  	sub	s0, s6, s0
80001a64: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001a68: 33 b4 eb 02  	mulhu	s0, s7, a4
80001a6c: 13 54 44 00  	srli	s0, s0, 4
80001a70: 33 04 f4 02  	mul	s0, s0, a5
80001a74: 33 84 8b 40  	sub	s0, s7, s0
80001a78: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001a7c: 33 34 ec 02  	mulhu	s0, s8, a4
80001a80: 13 54 44 00  	srli	s0, s0, 4
80001a84: 33 04 f4 02  	mul	s0, s0, a5
80001a88: 33 04 8c 40  	sub	s0, s8, s0
80001a8c: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001a90: 33 b4 e3 02  	mulhu	s0, t2, a4
80001a94: 13 54 44 00  	srli	s0, s0, 4
80001a98: 33 04 f4 02  	mul	s0, s0, a5
80001a9c: 33 04 89 40  	sub	s0, s2, s0
80001aa0: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001aa4: 33 b4 ec 02  	mulhu	s0, s9, a4
80001aa8: 13 54 44 00  	srli	s0, s0, 4
80001aac: 33 04 f4 02  	mul	s0, s0, a5
80001ab0: 33 84 8c 40  	sub	s0, s9, s0
80001ab4: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001ab8: 33 34 ef 02  	mulhu	s0, t5, a4
80001abc: 13 54 44 00  	srli	s0, s0, 4
80001ac0: 33 04 f4 02  	mul	s0, s0, a5
80001ac4: 33 04 8f 40  	sub	s0, t5, s0
80001ac8: d3 08 04 d2  	fcvt.d.w	fa7, s0
80001acc: 33 34 ed 02  	mulhu	s0, s10, a4
80001ad0: 13 54 44 00  	srli	s0, s0, 4
80001ad4: 33 04 f4 02  	mul	s0, s0, a5
80001ad8: 33 04 8d 40  	sub	s0, s10, s0
80001adc: 53 0e 04 d2  	fcvt.d.w	ft8, s0
80001ae0: 33 b4 ed 02  	mulhu	s0, s11, a4
80001ae4: 13 54 44 00  	srli	s0, s0, 4
80001ae8: 33 04 f4 02  	mul	s0, s0, a5
80001aec: 33 84 8d 40  	sub	s0, s11, s0
80001af0: d3 0e 04 d2  	fcvt.d.w	ft9, s0
80001af4: 33 b4 e0 02  	mulhu	s0, ra, a4
80001af8: 13 54 44 00  	srli	s0, s0, 4
80001afc: 33 04 f4 02  	mul	s0, s0, a5
80001b00: 33 84 80 40  	sub	s0, ra, s0
80001b04: 53 0f 04 d2  	fcvt.d.w	ft10, s0
80001b08: 33 b4 ef 02  	mulhu	s0, t6, a4
80001b0c: 13 54 44 00  	srli	s0, s0, 4
80001b10: 33 04 f4 02  	mul	s0, s0, a5
80001b14: 33 84 8f 40  	sub	s0, t6, s0
80001b18: d3 0f 04 d2  	fcvt.d.w	ft11, s0
80001b1c: 33 b4 e4 02  	mulhu	s0, s1, a4
80001b20: 13 54 44 00  	srli	s0, s0, 4
80001b24: 33 04 f4 02  	mul	s0, s0, a5
80001b28: 33 84 84 40  	sub	s0, s1, s0
80001b2c: 53 04 04 d2  	fcvt.d.w	fs0, s0
80001b30: 33 b4 e6 02  	mulhu	s0, a3, a4
80001b34: 13 54 44 00  	srli	s0, s0, 4
80001b38: 33 04 f4 02  	mul	s0, s0, a5
80001b3c: 33 84 86 40  	sub	s0, a3, s0
80001b40: d3 04 04 d2  	fcvt.d.w	fs1, s0
80001b44: 33 34 e5 02  	mulhu	s0, a0, a4
80001b48: 13 54 44 00  	srli	s0, s0, 4
80001b4c: 33 04 f4 02  	mul	s0, s0, a5
80001b50: 33 04 85 40  	sub	s0, a0, s0
80001b54: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001b58: 33 b4 e5 02  	mulhu	s0, a1, a4
80001b5c: 13 54 44 00  	srli	s0, s0, 4
80001b60: 33 04 f4 02  	mul	s0, s0, a5
80001b64: 33 84 85 40  	sub	s0, a1, s0
80001b68: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001b6c: 33 34 e6 02  	mulhu	s0, a2, a4
80001b70: 13 54 44 00  	srli	s0, s0, 4
80001b74: 33 04 f4 02  	mul	s0, s0, a5
80001b78: 33 04 86 40  	sub	s0, a2, s0
80001b7c: 53 0a 04 d2  	fcvt.d.w	fs4, s0
80001b80: 33 34 e3 02  	mulhu	s0, t1, a4
80001b84: 13 54 44 00  	srli	s0, s0, 4
80001b88: 33 04 f4 02  	mul	s0, s0, a5
80001b8c: 33 04 83 40  	sub	s0, t1, s0
80001b90: d3 0a 04 d2  	fcvt.d.w	fs5, s0
80001b94: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80001b98: 53 80 52 22  	fmv.d	ft0, ft5
80001b9c: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80001ba0: 53 80 52 22  	fmv.d	ft0, ft5
80001ba4: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80001ba8: 53 80 52 22  	fmv.d	ft0, ft5
80001bac: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80001bb0: 53 80 52 22  	fmv.d	ft0, ft5
80001bb4: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80001bb8: 53 80 52 22  	fmv.d	ft0, ft5
80001bbc: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80001bc0: 53 80 52 22  	fmv.d	ft0, ft5
80001bc4: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80001bc8: 53 80 52 22  	fmv.d	ft0, ft5
80001bcc: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80001bd0: 53 80 52 22  	fmv.d	ft0, ft5
80001bd4: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80001bd8: 53 80 52 22  	fmv.d	ft0, ft5
80001bdc: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80001be0: 53 80 52 22  	fmv.d	ft0, ft5
80001be4: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80001be8: 53 80 52 22  	fmv.d	ft0, ft5
80001bec: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80001bf0: 53 80 52 22  	fmv.d	ft0, ft5
80001bf4: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80001bf8: 53 80 52 22  	fmv.d	ft0, ft5
80001bfc: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80001c00: 53 80 52 22  	fmv.d	ft0, ft5
80001c04: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80001c08: 53 80 52 22  	fmv.d	ft0, ft5
80001c0c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80001c10: 53 80 52 22  	fmv.d	ft0, ft5
80001c14: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80001c18: 53 80 52 22  	fmv.d	ft0, ft5
80001c1c: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80001c20: 53 80 52 22  	fmv.d	ft0, ft5
80001c24: 53 00 42 22  	fmv.d	ft0, ft4
80001c28: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80001c2c: 53 80 52 22  	fmv.d	ft0, ft5
80001c30: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80001c34: 53 80 52 22  	fmv.d	ft0, ft5
80001c38: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80001c3c: 53 80 52 22  	fmv.d	ft0, ft5
;   for (i = 0; i < nm; i++)
80001c40: 13 08 28 00  	addi	a6, a6, 2
80001c44: 13 03 73 01  	addi	t1, t1, 23
80001c48: 13 06 66 01  	addi	a2, a2, 22
80001c4c: 93 85 55 01  	addi	a1, a1, 21
80001c50: 13 05 35 01  	addi	a0, a0, 19
80001c54: 93 86 26 01  	addi	a3, a3, 18
80001c58: 93 84 14 01  	addi	s1, s1, 17
80001c5c: 93 8f 0f 01  	addi	t6, t6, 16
80001c60: 93 80 f0 00  	addi	ra, ra, 15
80001c64: 93 8d ed 00  	addi	s11, s11, 14
80001c68: 13 0d dd 00  	addi	s10, s10, 13
80001c6c: 13 0f cf 00  	addi	t5, t5, 12
80001c70: 93 8c bc 00  	addi	s9, s9, 11
80001c74: 13 09 a9 00  	addi	s2, s2, 10
80001c78: 93 83 a3 00  	addi	t2, t2, 10
80001c7c: 13 0c 9c 00  	addi	s8, s8, 9
80001c80: 93 8b 8b 00  	addi	s7, s7, 8
80001c84: 13 0b 7b 00  	addi	s6, s6, 7
80001c88: 93 8a 6a 00  	addi	s5, s5, 6
80001c8c: 93 8e 5e 00  	addi	t4, t4, 5
80001c90: 93 82 52 00  	addi	t0, t0, 5
80001c94: 13 0e 4e 00  	addi	t3, t3, 4
80001c98: 93 88 48 00  	addi	a7, a7, 4
80001c9c: 13 0a 3a 00  	addi	s4, s4, 3
80001ca0: e3 18 38 d5  	bne	a6, s3, 0x800019f0 <.LBB0_89+0x60>
80001ca4: 73 f0 00 7c  	csrci	1984, 1
80001ca8: 6f 00 80 37  	j	0x80002020 <.LBB0_89+0x690>
80001cac: 13 04 00 00  	mv	s0, zero
80001cb0: 13 06 00 00  	mv	a2, zero
80001cb4: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nm; i++)
80001cb8: 93 86 87 05  	addi	a3, a5, 88
80001cbc: 13 0f 20 00  	addi	t5, zero, 2
80001cc0: b7 d5 cc cc  	lui	a1, 838861
80001cc4: 93 87 d5 cc  	addi	a5, a1, -819
80001cc8: 13 03 40 01  	addi	t1, zero, 20
80001ccc: 07 30 05 00  	fld	ft0, 0(a0)
80001cd0: 37 85 94 3f  	lui	a0, 260424
80001cd4: 13 05 15 ae  	addi	a0, a0, -1311
80001cd8: 23 2c a1 02  	sw	a0, 56(sp)
80001cdc: 37 15 ae 47  	lui	a0, 293601
80001ce0: 13 05 b5 47  	addi	a0, a0, 1147
80001ce4: 23 2a a1 02  	sw	a0, 52(sp)
80001ce8: 13 09 20 00  	addi	s2, zero, 2
80001cec: 13 0a 20 00  	addi	s4, zero, 2
80001cf0: 93 0a 20 00  	addi	s5, zero, 2
80001cf4: 13 0b 20 00  	addi	s6, zero, 2
80001cf8: 93 0b 20 00  	addi	s7, zero, 2
80001cfc: 13 05 20 00  	addi	a0, zero, 2
80001d00: 13 0c 20 00  	addi	s8, zero, 2
80001d04: 93 0c 20 00  	addi	s9, zero, 2
80001d08: 13 0d 20 00  	addi	s10, zero, 2
80001d0c: 93 00 20 00  	addi	ra, zero, 2
80001d10: 93 03 20 00  	addi	t2, zero, 2
80001d14: 13 0e 20 00  	addi	t3, zero, 2
80001d18: 93 0d 20 00  	addi	s11, zero, 2
80001d1c: 93 08 20 00  	addi	a7, zero, 2
80001d20: 93 05 20 00  	addi	a1, zero, 2
80001d24: 93 0e 20 00  	addi	t4, zero, 2
80001d28: 93 09 20 00  	addi	s3, zero, 2
80001d2c: 13 08 20 00  	addi	a6, zero, 2
80001d30: 93 02 20 00  	addi	t0, zero, 2
80001d34: 93 0f 20 00  	addi	t6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d38: 23 2e 81 02  	sw	s0, 60(sp)
80001d3c: 33 b7 ff 02  	mulhu	a4, t6, a5
80001d40: 13 57 47 00  	srli	a4, a4, 4
80001d44: 13 04 06 00  	mv	s0, a2
80001d48: 13 06 05 00  	mv	a2, a0
80001d4c: 13 85 09 00  	mv	a0, s3
80001d50: b3 09 67 02  	mul	s3, a4, t1
80001d54: 33 87 3f 41  	sub	a4, t6, s3
80001d58: 93 09 05 00  	mv	s3, a0
80001d5c: 13 05 06 00  	mv	a0, a2
80001d60: 13 06 04 00  	mv	a2, s0
80001d64: 03 24 c1 03  	lw	s0, 60(sp)
80001d68: d3 00 07 d2  	fcvt.d.w	ft1, a4
80001d6c: 33 b7 f2 02  	mulhu	a4, t0, a5
80001d70: 13 57 47 00  	srli	a4, a4, 4
80001d74: 33 07 67 02  	mul	a4, a4, t1
80001d78: 33 87 e2 40  	sub	a4, t0, a4
80001d7c: 53 01 07 d2  	fcvt.d.w	ft2, a4
80001d80: 33 b7 f4 02  	mulhu	a4, s1, a5
80001d84: 13 57 47 00  	srli	a4, a4, 4
80001d88: 33 07 67 02  	mul	a4, a4, t1
80001d8c: 33 87 e9 40  	sub	a4, s3, a4
80001d90: d3 01 07 d2  	fcvt.d.w	ft3, a4
80001d94: 33 37 f6 02  	mulhu	a4, a2, a5
80001d98: 13 57 47 00  	srli	a4, a4, 4
80001d9c: 33 07 67 02  	mul	a4, a4, t1
80001da0: 33 87 e5 40  	sub	a4, a1, a4
80001da4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001da8: 33 b7 fd 02  	mulhu	a4, s11, a5
80001dac: 13 57 47 00  	srli	a4, a4, 4
80001db0: 33 07 67 02  	mul	a4, a4, t1
80001db4: 33 87 ed 40  	sub	a4, s11, a4
80001db8: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001dbc: 33 37 fe 02  	mulhu	a4, t3, a5
80001dc0: 13 57 47 00  	srli	a4, a4, 4
80001dc4: 33 07 67 02  	mul	a4, a4, t1
80001dc8: 33 07 ee 40  	sub	a4, t3, a4
80001dcc: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001dd0: 33 b7 f0 02  	mulhu	a4, ra, a5
80001dd4: 13 57 47 00  	srli	a4, a4, 4
80001dd8: 33 07 67 02  	mul	a4, a4, t1
80001ddc: 33 87 e0 40  	sub	a4, ra, a4
80001de0: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001de4: 33 b7 fc 02  	mulhu	a4, s9, a5
80001de8: 13 57 47 00  	srli	a4, a4, 4
80001dec: 33 07 67 02  	mul	a4, a4, t1
80001df0: 33 87 ec 40  	sub	a4, s9, a4
80001df4: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001df8: 33 37 f4 02  	mulhu	a4, s0, a5
80001dfc: 13 57 47 00  	srli	a4, a4, 4
80001e00: 33 07 67 02  	mul	a4, a4, t1
80001e04: 33 07 e5 40  	sub	a4, a0, a4
80001e08: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001e0c: 33 37 fb 02  	mulhu	a4, s6, a5
80001e10: 13 57 47 00  	srli	a4, a4, 4
80001e14: 33 07 67 02  	mul	a4, a4, t1
80001e18: 33 07 eb 40  	sub	a4, s6, a4
80001e1c: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001e20: 33 37 fa 02  	mulhu	a4, s4, a5
80001e24: 13 57 47 00  	srli	a4, a4, 4
80001e28: 33 07 67 02  	mul	a4, a4, t1
80001e2c: 33 07 ea 40  	sub	a4, s4, a4
80001e30: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001e34: 33 37 ff 02  	mulhu	a4, t5, a5
80001e38: 13 57 47 00  	srli	a4, a4, 4
80001e3c: 33 07 67 02  	mul	a4, a4, t1
80001e40: 33 07 ef 40  	sub	a4, t5, a4
80001e44: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001e48: 33 37 f9 02  	mulhu	a4, s2, a5
80001e4c: 13 57 47 00  	srli	a4, a4, 4
80001e50: 33 07 67 02  	mul	a4, a4, t1
80001e54: 33 07 e9 40  	sub	a4, s2, a4
80001e58: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001e5c: 33 b7 fa 02  	mulhu	a4, s5, a5
80001e60: 13 57 47 00  	srli	a4, a4, 4
80001e64: 33 07 67 02  	mul	a4, a4, t1
80001e68: 33 87 ea 40  	sub	a4, s5, a4
80001e6c: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001e70: 33 b7 fb 02  	mulhu	a4, s7, a5
80001e74: 13 57 47 00  	srli	a4, a4, 4
80001e78: 33 07 67 02  	mul	a4, a4, t1
80001e7c: 33 87 eb 40  	sub	a4, s7, a4
80001e80: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001e84: 33 37 fc 02  	mulhu	a4, s8, a5
80001e88: 13 57 47 00  	srli	a4, a4, 4
80001e8c: 33 07 67 02  	mul	a4, a4, t1
80001e90: 33 07 ec 40  	sub	a4, s8, a4
80001e94: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001e98: 33 37 fd 02  	mulhu	a4, s10, a5
80001e9c: 13 57 47 00  	srli	a4, a4, 4
80001ea0: 33 07 67 02  	mul	a4, a4, t1
80001ea4: 33 07 ed 40  	sub	a4, s10, a4
80001ea8: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001eac: 33 b7 f3 02  	mulhu	a4, t2, a5
80001eb0: 13 57 47 00  	srli	a4, a4, 4
80001eb4: 33 07 67 02  	mul	a4, a4, t1
80001eb8: 33 87 e3 40  	sub	a4, t2, a4
80001ebc: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001ec0: 33 b7 f8 02  	mulhu	a4, a7, a5
80001ec4: 13 57 47 00  	srli	a4, a4, 4
80001ec8: 33 07 67 02  	mul	a4, a4, t1
80001ecc: 33 87 e8 40  	sub	a4, a7, a4
80001ed0: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001ed4: 33 b7 fe 02  	mulhu	a4, t4, a5
80001ed8: 13 57 47 00  	srli	a4, a4, 4
80001edc: 33 07 67 02  	mul	a4, a4, t1
80001ee0: 33 87 ee 40  	sub	a4, t4, a4
80001ee4: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001ee8: 33 37 f8 02  	mulhu	a4, a6, a5
80001eec: 13 57 47 00  	srli	a4, a4, 4
80001ef0: 33 07 67 02  	mul	a4, a4, t1
80001ef4: 33 07 e8 40  	sub	a4, a6, a4
80001ef8: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001efc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001f00: 27 b4 16 fa  	fsd	ft1, -88(a3)
80001f04: d3 70 01 12  	fmul.d	ft1, ft2, ft0
80001f08: 27 b8 16 fa  	fsd	ft1, -80(a3)
80001f0c: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
80001f10: 27 bc 16 fa  	fsd	ft1, -72(a3)
80001f14: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80001f18: 27 b0 16 fc  	fsd	ft1, -64(a3)
80001f1c: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
80001f20: 27 b4 16 fc  	fsd	ft1, -56(a3)
80001f24: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80001f28: 27 b8 16 fc  	fsd	ft1, -48(a3)
80001f2c: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
80001f30: 27 bc 16 fc  	fsd	ft1, -40(a3)
80001f34: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80001f38: 27 b0 16 fe  	fsd	ft1, -32(a3)
80001f3c: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
80001f40: 27 b4 16 fe  	fsd	ft1, -24(a3)
80001f44: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80001f48: 27 b8 16 fe  	fsd	ft1, -16(a3)
80001f4c: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
80001f50: 27 bc 16 fe  	fsd	ft1, -8(a3)
80001f54: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80001f58: 27 b0 16 00  	fsd	ft1, 0(a3)
80001f5c: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
80001f60: 27 b4 16 00  	fsd	ft1, 8(a3)
80001f64: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80001f68: 27 b8 16 00  	fsd	ft1, 16(a3)
80001f6c: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
80001f70: 27 bc 16 00  	fsd	ft1, 24(a3)
80001f74: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80001f78: 27 b0 16 02  	fsd	ft1, 32(a3)
80001f7c: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
80001f80: 27 b4 16 02  	fsd	ft1, 40(a3)
80001f84: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80001f88: 27 b8 16 02  	fsd	ft1, 48(a3)
80001f8c: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
80001f90: 27 b0 16 04  	fsd	ft1, 64(a3)
80001f94: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80001f98: 27 b4 16 04  	fsd	ft1, 72(a3)
80001f9c: 03 27 81 03  	lw	a4, 56(sp)
80001fa0: 23 ae e6 02  	sw	a4, 60(a3)
80001fa4: 03 27 41 03  	lw	a4, 52(sp)
80001fa8: 23 ac e6 02  	sw	a4, 56(a3)
80001fac: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
80001fb0: 27 b8 16 04  	fsd	ft1, 80(a3)
;   for (i = 0; i < nm; i++)
80001fb4: 93 8f 2f 00  	addi	t6, t6, 2
80001fb8: 93 82 32 00  	addi	t0, t0, 3
80001fbc: 13 08 78 01  	addi	a6, a6, 23
80001fc0: 93 89 49 00  	addi	s3, s3, 4
80001fc4: 93 84 44 00  	addi	s1, s1, 4
80001fc8: 93 8e 6e 01  	addi	t4, t4, 22
80001fcc: 93 85 55 00  	addi	a1, a1, 5
80001fd0: 13 06 56 00  	addi	a2, a2, 5
80001fd4: 93 88 58 01  	addi	a7, a7, 21
80001fd8: 93 8d 6d 00  	addi	s11, s11, 6
80001fdc: 13 0e 7e 00  	addi	t3, t3, 7
80001fe0: 93 83 33 01  	addi	t2, t2, 19
80001fe4: 93 80 80 00  	addi	ra, ra, 8
80001fe8: 13 0d 2d 01  	addi	s10, s10, 18
80001fec: 93 8c 9c 00  	addi	s9, s9, 9
80001ff0: 13 0c 1c 01  	addi	s8, s8, 17
80001ff4: 13 05 a5 00  	addi	a0, a0, 10
80001ff8: 13 04 a4 00  	addi	s0, s0, 10
80001ffc: 93 8b 0b 01  	addi	s7, s7, 16
80002000: 13 0b bb 00  	addi	s6, s6, 11
80002004: 93 8a fa 00  	addi	s5, s5, 15
80002008: 13 0a ca 00  	addi	s4, s4, 12
8000200c: 13 09 e9 00  	addi	s2, s2, 14
80002010: 93 86 06 0b  	addi	a3, a3, 176
80002014: 13 0f df 00  	addi	t5, t5, 13
80002018: 13 07 20 03  	addi	a4, zero, 50
8000201c: e3 9e ef d0  	bne	t6, a4, 0x80001d38 <.LBB0_89+0x3a8>
;  for (i = 0; i < ni; i++)
80002020: 03 25 41 01  	lw	a0, 20(sp)
80002024: 83 25 01 01  	lw	a1, 16(sp)
80002028: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
8000202c: 73 28 00 b0  	csrr	a6, mcycle
80002030: 63 08 05 1e  	beqz	a0, 0x80002220 <.LBB0_89+0x890>
80002034: 13 05 00 00  	mv	a0, zero
80002038: 93 05 80 00  	addi	a1, zero, 8
8000203c: 13 06 30 01  	addi	a2, zero, 19
;  for (i = 0; i < ni; i++)
80002040: 93 06 00 04  	addi	a3, zero, 64
80002044: 13 07 00 0c  	addi	a4, zero, 192
80002048: ab 20 d6 00  	scfgw	a2, a3
8000204c: ab a0 e5 00  	scfgw	a1, a4
80002050: 93 06 80 f6  	addi	a3, zero, -152
80002054: 13 07 10 01  	addi	a4, zero, 17
80002058: 93 07 00 06  	addi	a5, zero, 96
8000205c: 93 04 00 0e  	addi	s1, zero, 224
80002060: ab 20 f7 00  	scfgw	a4, a5
80002064: ab a0 96 00  	scfgw	a3, s1
80002068: 93 06 f0 00  	addi	a3, zero, 15
8000206c: 93 07 00 08  	addi	a5, zero, 128
80002070: 93 04 00 10  	addi	s1, zero, 256
80002074: ab a0 f6 00  	scfgw	a3, a5
80002078: ab a0 95 00  	scfgw	a1, s1
8000207c: 93 05 00 02  	addi	a1, zero, 32
80002080: ab 20 b0 00  	scfgw	zero, a1
80002084: 83 25 c1 01  	lw	a1, 28(sp)
80002088: 2b a0 05 34  	scfgwi	a1, 832
8000208c: 93 05 00 09  	addi	a1, zero, 144
80002090: 93 07 10 00  	addi	a5, zero, 1
80002094: 93 84 07 04  	addi	s1, a5, 64
80002098: 13 84 07 0c  	addi	s0, a5, 192
8000209c: ab 20 96 00  	scfgw	a2, s1
800020a0: ab a0 85 00  	scfgw	a1, s0
800020a4: 37 f6 ff ff  	lui	a2, 1048575
800020a8: 93 04 86 55  	addi	s1, a2, 1368
800020ac: 13 84 07 06  	addi	s0, a5, 96
800020b0: ab 20 87 00  	scfgw	a4, s0
800020b4: 13 87 07 0e  	addi	a4, a5, 224
800020b8: ab a0 e4 00  	scfgw	s1, a4
800020bc: 13 06 86 4c  	addi	a2, a2, 1224
800020c0: 13 87 07 08  	addi	a4, a5, 128
800020c4: 93 84 07 10  	addi	s1, a5, 256
800020c8: ab a0 e6 00  	scfgw	a3, a4
800020cc: ab 20 96 00  	scfgw	a2, s1
800020d0: 13 86 07 02  	addi	a2, a5, 32
800020d4: ab 20 c0 00  	scfgw	zero, a2
800020d8: 03 26 81 01  	lw	a2, 24(sp)
800020dc: 2b 20 16 34  	scfgwi	a2, 833
800020e0: 73 e0 00 7c  	csrsi	1984, 1
800020e4: 13 06 00 01  	addi	a2, zero, 16
800020e8: 83 28 41 02  	lw	a7, 36(sp)
800020ec: 93 86 08 00  	mv	a3, a7
800020f0: 03 29 81 02  	lw	s2, 40(sp)
800020f4: 83 22 01 02  	lw	t0, 32(sp)
800020f8: 03 23 01 03  	lw	t1, 48(sp)
800020fc: 83 23 c1 02  	lw	t2, 44(sp)
80002100: 13 07 00 00  	mv	a4, zero
;  E[i][j] = 0.0;
80002104: b3 87 e6 00  	add	a5, a3, a4
80002108: 23 a2 07 00  	sw	zero, 4(a5)
8000210c: 23 a0 07 00  	sw	zero, 0(a5)
;    E[i][j] += A[i][k] * B[k][j];
80002110: d3 01 00 22  	fmv.d	ft3, ft0
80002114: 53 82 10 22  	fmv.d	ft4, ft1
80002118: d3 71 32 12  	fmul.d	ft3, ft4, ft3
8000211c: 53 02 00 22  	fmv.d	ft4, ft0
80002120: d3 82 10 22  	fmv.d	ft5, ft1
80002124: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002128: 53 02 00 22  	fmv.d	ft4, ft0
8000212c: d3 82 10 22  	fmv.d	ft5, ft1
80002130: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002134: 53 02 00 22  	fmv.d	ft4, ft0
80002138: d3 82 10 22  	fmv.d	ft5, ft1
8000213c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002140: 53 02 00 22  	fmv.d	ft4, ft0
80002144: d3 82 10 22  	fmv.d	ft5, ft1
80002148: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000214c: 53 02 00 22  	fmv.d	ft4, ft0
80002150: d3 82 10 22  	fmv.d	ft5, ft1
80002154: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002158: 53 02 00 22  	fmv.d	ft4, ft0
8000215c: d3 82 10 22  	fmv.d	ft5, ft1
80002160: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002164: 53 02 00 22  	fmv.d	ft4, ft0
80002168: d3 82 10 22  	fmv.d	ft5, ft1
8000216c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002170: 53 02 00 22  	fmv.d	ft4, ft0
80002174: d3 82 10 22  	fmv.d	ft5, ft1
80002178: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000217c: 53 02 00 22  	fmv.d	ft4, ft0
80002180: d3 82 10 22  	fmv.d	ft5, ft1
80002184: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002188: 53 02 00 22  	fmv.d	ft4, ft0
8000218c: d3 82 10 22  	fmv.d	ft5, ft1
80002190: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002194: 53 02 00 22  	fmv.d	ft4, ft0
80002198: d3 82 10 22  	fmv.d	ft5, ft1
8000219c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021a0: 53 02 00 22  	fmv.d	ft4, ft0
800021a4: d3 82 10 22  	fmv.d	ft5, ft1
800021a8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021ac: 53 02 00 22  	fmv.d	ft4, ft0
800021b0: d3 82 10 22  	fmv.d	ft5, ft1
800021b4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021b8: 53 02 00 22  	fmv.d	ft4, ft0
800021bc: d3 82 10 22  	fmv.d	ft5, ft1
800021c0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021c4: 53 02 00 22  	fmv.d	ft4, ft0
800021c8: d3 82 10 22  	fmv.d	ft5, ft1
800021cc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021d0: 53 02 00 22  	fmv.d	ft4, ft0
800021d4: d3 82 10 22  	fmv.d	ft5, ft1
800021d8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021dc: 53 02 00 22  	fmv.d	ft4, ft0
800021e0: d3 82 10 22  	fmv.d	ft5, ft1
800021e4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021e8: 53 02 00 22  	fmv.d	ft4, ft0
800021ec: d3 82 10 22  	fmv.d	ft5, ft1
800021f0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800021f4: 53 02 00 22  	fmv.d	ft4, ft0
800021f8: d3 82 10 22  	fmv.d	ft5, ft1
800021fc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nj; j++)
80002200: 13 07 87 00  	addi	a4, a4, 8
;    E[i][j] += A[i][k] * B[k][j];
80002204: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nj; j++)
80002208: e3 1e b7 ee  	bne	a4, a1, 0x80002104 <.LBB0_89+0x774>
;  for (i = 0; i < ni; i++)
8000220c: 13 05 15 00  	addi	a0, a0, 1
80002210: 93 86 06 09  	addi	a3, a3, 144
80002214: e3 16 c5 ee  	bne	a0, a2, 0x80002100 <.LBB0_89+0x770>
80002218: 73 f0 00 7c  	csrci	1984, 1
8000221c: 6f 00 40 16  	j	0x80002380 <.LBB0_89+0x9f0>
80002220: 13 05 00 00  	mv	a0, zero
80002224: 13 0e 00 0a  	addi	t3, zero, 160
80002228: 13 06 00 09  	addi	a2, zero, 144
8000222c: 93 0e 00 01  	addi	t4, zero, 16
80002230: 83 28 41 02  	lw	a7, 36(sp)
80002234: 13 87 08 00  	mv	a4, a7
80002238: 03 29 81 02  	lw	s2, 40(sp)
8000223c: 83 22 01 02  	lw	t0, 32(sp)
80002240: 03 23 01 03  	lw	t1, 48(sp)
80002244: 83 23 c1 02  	lw	t2, 44(sp)
80002248: 83 25 c1 01  	lw	a1, 28(sp)
8000224c: 83 26 81 01  	lw	a3, 24(sp)
;    E[i][j] += A[i][k] * B[k][j];
80002250: b3 07 c5 03  	mul	a5, a0, t3
80002254: b3 87 f5 00  	add	a5, a1, a5
80002258: 07 b0 07 02  	fld	ft0, 32(a5)
8000225c: 87 b0 87 02  	fld	ft1, 40(a5)
80002260: 07 b1 07 03  	fld	ft2, 48(a5)
80002264: 87 b1 87 03  	fld	ft3, 56(a5)
80002268: 07 b2 07 04  	fld	ft4, 64(a5)
8000226c: 87 b2 87 04  	fld	ft5, 72(a5)
80002270: 07 b3 07 05  	fld	ft6, 80(a5)
80002274: 87 b3 87 05  	fld	ft7, 88(a5)
80002278: 07 b5 07 06  	fld	fa0, 96(a5)
8000227c: 87 b5 87 06  	fld	fa1, 104(a5)
80002280: 07 b6 07 07  	fld	fa2, 112(a5)
80002284: 87 b6 87 07  	fld	fa3, 120(a5)
80002288: 07 b7 07 08  	fld	fa4, 128(a5)
8000228c: 87 b7 87 08  	fld	fa5, 136(a5)
80002290: 07 b8 07 09  	fld	fa6, 144(a5)
80002294: 87 b8 07 00  	fld	fa7, 0(a5)
80002298: 07 be 87 00  	fld	ft8, 8(a5)
8000229c: 87 be 07 01  	fld	ft9, 16(a5)
800022a0: 07 bf 87 01  	fld	ft10, 24(a5)
800022a4: 87 bf 87 09  	fld	ft11, 152(a5)
800022a8: 93 07 00 00  	mv	a5, zero
800022ac: b3 84 f6 00  	add	s1, a3, a5
800022b0: 07 b4 04 00  	fld	fs0, 0(s1)
800022b4: 53 74 14 13  	fmul.d	fs0, fs0, fa7
800022b8: 87 b4 04 09  	fld	fs1, 144(s1)
800022bc: 07 b9 04 12  	fld	fs2, 288(s1)
800022c0: 87 b9 04 1b  	fld	fs3, 432(s1)
800022c4: 07 ba 04 24  	fld	fs4, 576(s1)
800022c8: 43 f4 c4 43  	fmadd.d	fs0, fs1, ft8, fs0
800022cc: 43 74 d9 43  	fmadd.d	fs0, fs2, ft9, fs0
800022d0: 43 f4 e9 43  	fmadd.d	fs0, fs3, ft10, fs0
800022d4: 43 74 0a 42  	fmadd.d	fs0, fs4, ft0, fs0
800022d8: 87 b4 04 2d  	fld	fs1, 720(s1)
800022dc: 07 b9 04 36  	fld	fs2, 864(s1)
800022e0: 87 b9 04 3f  	fld	fs3, 1008(s1)
800022e4: 07 ba 04 48  	fld	fs4, 1152(s1)
800022e8: 43 f4 14 42  	fmadd.d	fs0, fs1, ft1, fs0
800022ec: 43 74 29 42  	fmadd.d	fs0, fs2, ft2, fs0
800022f0: 43 f4 39 42  	fmadd.d	fs0, fs3, ft3, fs0
800022f4: 43 74 4a 42  	fmadd.d	fs0, fs4, ft4, fs0
800022f8: 87 b4 04 51  	fld	fs1, 1296(s1)
800022fc: 07 b9 04 5a  	fld	fs2, 1440(s1)
80002300: 87 b9 04 63  	fld	fs3, 1584(s1)
80002304: 07 ba 04 6c  	fld	fs4, 1728(s1)
80002308: 43 f4 54 42  	fmadd.d	fs0, fs1, ft5, fs0
8000230c: 43 74 69 42  	fmadd.d	fs0, fs2, ft6, fs0
80002310: 43 f4 79 42  	fmadd.d	fs0, fs3, ft7, fs0
80002314: 43 74 aa 42  	fmadd.d	fs0, fs4, fa0, fs0
80002318: 87 b4 04 75  	fld	fs1, 1872(s1)
8000231c: 07 b9 04 7e  	fld	fs2, 2016(s1)
80002320: 13 84 84 43  	addi	s0, s1, 1080
80002324: 87 39 84 43  	fld	fs3, 1080(s0)
80002328: 13 84 04 48  	addi	s0, s1, 1152
8000232c: 07 3a 04 48  	fld	fs4, 1152(s0)
80002330: 43 f4 b4 42  	fmadd.d	fs0, fs1, fa1, fs0
80002334: 43 74 c9 42  	fmadd.d	fs0, fs2, fa2, fs0
80002338: 43 f4 d9 42  	fmadd.d	fs0, fs3, fa3, fs0
8000233c: 43 74 ea 42  	fmadd.d	fs0, fs4, fa4, fs0
80002340: 13 84 84 4c  	addi	s0, s1, 1224
80002344: 87 34 84 4c  	fld	fs1, 1224(s0)
80002348: 13 84 04 51  	addi	s0, s1, 1296
8000234c: 07 39 04 51  	fld	fs2, 1296(s0)
80002350: 93 84 84 55  	addi	s1, s1, 1368
80002354: 87 b9 84 55  	fld	fs3, 1368(s1)
80002358: 43 f4 f4 42  	fmadd.d	fs0, fs1, fa5, fs0
8000235c: 43 74 09 43  	fmadd.d	fs0, fs2, fa6, fs0
80002360: b3 04 f7 00  	add	s1, a4, a5
80002364: 43 f4 f9 43  	fmadd.d	fs0, fs3, ft11, fs0
;     for (j = 0; j < nj; j++)
80002368: 93 87 87 00  	addi	a5, a5, 8
;    E[i][j] += A[i][k] * B[k][j];
8000236c: 27 b0 84 00  	fsd	fs0, 0(s1)
;     for (j = 0; j < nj; j++)
80002370: e3 9e c7 f2  	bne	a5, a2, 0x800022ac <.LBB0_89+0x91c>
;  for (i = 0; i < ni; i++)
80002374: 13 05 15 00  	addi	a0, a0, 1
80002378: 13 07 07 09  	addi	a4, a4, 144
8000237c: e3 1a d5 ed  	bne	a0, t4, 0x80002250 <.LBB0_89+0x8c0>
;   for (i = 0; i < nj; i++)
80002380: 03 25 c1 00  	lw	a0, 12(sp)
80002384: 83 25 81 00  	lw	a1, 8(sp)
80002388: 33 75 b5 00  	and	a0, a0, a1
8000238c: 63 02 05 20  	beqz	a0, 0x80002590 <.LBB0_89+0xc00>
80002390: 13 05 00 00  	mv	a0, zero
80002394: 93 05 80 00  	addi	a1, zero, 8
80002398: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < nj; i++)
8000239c: 93 06 00 04  	addi	a3, zero, 64
800023a0: 13 07 00 0c  	addi	a4, zero, 192
800023a4: ab 20 d6 00  	scfgw	a2, a3
800023a8: ab a0 e5 00  	scfgw	a1, a4
800023ac: 93 06 80 f4  	addi	a3, zero, -184
800023b0: 13 07 50 01  	addi	a4, zero, 21
800023b4: 93 07 00 06  	addi	a5, zero, 96
800023b8: 93 04 00 0e  	addi	s1, zero, 224
800023bc: ab 20 f7 00  	scfgw	a4, a5
800023c0: ab a0 96 00  	scfgw	a3, s1
800023c4: 93 06 10 01  	addi	a3, zero, 17
800023c8: 93 07 00 08  	addi	a5, zero, 128
800023cc: 93 04 00 10  	addi	s1, zero, 256
800023d0: ab a0 f6 00  	scfgw	a3, a5
800023d4: ab a0 95 00  	scfgw	a1, s1
800023d8: 93 05 00 02  	addi	a1, zero, 32
800023dc: ab 20 b0 00  	scfgw	zero, a1
800023e0: 2b 20 03 34  	scfgwi	t1, 832
800023e4: 93 05 00 0b  	addi	a1, zero, 176
800023e8: 93 07 10 00  	addi	a5, zero, 1
800023ec: 93 84 07 04  	addi	s1, a5, 64
800023f0: 13 84 07 0c  	addi	s0, a5, 192
800023f4: ab 20 96 00  	scfgw	a2, s1
800023f8: ab a0 85 00  	scfgw	a1, s0
800023fc: 37 f6 ff ff  	lui	a2, 1048575
80002400: 93 04 86 03  	addi	s1, a2, 56
80002404: 13 84 07 06  	addi	s0, a5, 96
80002408: ab 20 87 00  	scfgw	a4, s0
8000240c: 13 87 07 0e  	addi	a4, a5, 224
80002410: ab a0 e4 00  	scfgw	s1, a4
80002414: 13 06 86 f8  	addi	a2, a2, -120
80002418: 13 87 07 08  	addi	a4, a5, 128
8000241c: 93 84 07 10  	addi	s1, a5, 256
80002420: ab a0 e6 00  	scfgw	a3, a4
80002424: ab 20 96 00  	scfgw	a2, s1
80002428: 13 86 07 02  	addi	a2, a5, 32
8000242c: ab 20 c0 00  	scfgw	zero, a2
80002430: 2b a0 13 34  	scfgwi	t2, 833
80002434: 73 e0 00 7c  	csrsi	1984, 1
80002438: 13 06 20 01  	addi	a2, zero, 18
8000243c: 93 86 02 00  	mv	a3, t0
80002440: 13 07 00 00  	mv	a4, zero
;  F[i][j] = 0.0;
80002444: b3 87 e6 00  	add	a5, a3, a4
80002448: 23 a2 07 00  	sw	zero, 4(a5)
8000244c: 23 a0 07 00  	sw	zero, 0(a5)
;    F[i][j] += C[i][k] * D[k][j];
80002450: d3 01 00 22  	fmv.d	ft3, ft0
80002454: 53 82 10 22  	fmv.d	ft4, ft1
80002458: d3 71 32 12  	fmul.d	ft3, ft4, ft3
8000245c: 53 02 00 22  	fmv.d	ft4, ft0
80002460: d3 82 10 22  	fmv.d	ft5, ft1
80002464: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002468: 53 02 00 22  	fmv.d	ft4, ft0
8000246c: d3 82 10 22  	fmv.d	ft5, ft1
80002470: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002474: 53 02 00 22  	fmv.d	ft4, ft0
80002478: d3 82 10 22  	fmv.d	ft5, ft1
8000247c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002480: 53 02 00 22  	fmv.d	ft4, ft0
80002484: d3 82 10 22  	fmv.d	ft5, ft1
80002488: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000248c: 53 02 00 22  	fmv.d	ft4, ft0
80002490: d3 82 10 22  	fmv.d	ft5, ft1
80002494: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002498: 53 02 00 22  	fmv.d	ft4, ft0
8000249c: d3 82 10 22  	fmv.d	ft5, ft1
800024a0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024a4: 53 02 00 22  	fmv.d	ft4, ft0
800024a8: d3 82 10 22  	fmv.d	ft5, ft1
800024ac: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024b0: 53 02 00 22  	fmv.d	ft4, ft0
800024b4: d3 82 10 22  	fmv.d	ft5, ft1
800024b8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024bc: 53 02 00 22  	fmv.d	ft4, ft0
800024c0: d3 82 10 22  	fmv.d	ft5, ft1
800024c4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024c8: 53 02 00 22  	fmv.d	ft4, ft0
800024cc: d3 82 10 22  	fmv.d	ft5, ft1
800024d0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024d4: 53 02 00 22  	fmv.d	ft4, ft0
800024d8: d3 82 10 22  	fmv.d	ft5, ft1
800024dc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024e0: 53 02 00 22  	fmv.d	ft4, ft0
800024e4: d3 82 10 22  	fmv.d	ft5, ft1
800024e8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024ec: 53 02 00 22  	fmv.d	ft4, ft0
800024f0: d3 82 10 22  	fmv.d	ft5, ft1
800024f4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024f8: 53 02 00 22  	fmv.d	ft4, ft0
800024fc: d3 82 10 22  	fmv.d	ft5, ft1
80002500: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002504: 53 02 00 22  	fmv.d	ft4, ft0
80002508: d3 82 10 22  	fmv.d	ft5, ft1
8000250c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002510: 53 02 00 22  	fmv.d	ft4, ft0
80002514: d3 82 10 22  	fmv.d	ft5, ft1
80002518: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000251c: 53 02 00 22  	fmv.d	ft4, ft0
80002520: d3 82 10 22  	fmv.d	ft5, ft1
80002524: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002528: 53 02 00 22  	fmv.d	ft4, ft0
8000252c: d3 82 10 22  	fmv.d	ft5, ft1
80002530: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002534: 53 02 00 22  	fmv.d	ft4, ft0
80002538: d3 82 10 22  	fmv.d	ft5, ft1
8000253c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002540: 53 02 00 22  	fmv.d	ft4, ft0
80002544: d3 82 10 22  	fmv.d	ft5, ft1
80002548: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000254c: 53 02 00 22  	fmv.d	ft4, ft0
80002550: d3 82 10 22  	fmv.d	ft5, ft1
80002554: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002558: 53 02 00 22  	fmv.d	ft4, ft0
8000255c: d3 82 10 22  	fmv.d	ft5, ft1
80002560: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002564: 53 02 00 22  	fmv.d	ft4, ft0
80002568: d3 82 10 22  	fmv.d	ft5, ft1
8000256c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++)
80002570: 13 07 87 00  	addi	a4, a4, 8
;    F[i][j] += C[i][k] * D[k][j];
80002574: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
80002578: e3 16 b7 ec  	bne	a4, a1, 0x80002444 <.LBB0_89+0xab4>
;   for (i = 0; i < nj; i++)
8000257c: 13 05 15 00  	addi	a0, a0, 1
80002580: 93 86 06 0b  	addi	a3, a3, 176
80002584: e3 1e c5 ea  	bne	a0, a2, 0x80002440 <.LBB0_89+0xab0>
80002588: 73 f0 00 7c  	csrci	1984, 1
8000258c: 6f 00 00 17  	j	0x800026fc <.LBB0_89+0xd6c>
80002590: 13 05 00 00  	mv	a0, zero
;   for (i = 0; i < nj; i++)
80002594: 93 85 03 42  	addi	a1, t2, 1056
80002598: 93 85 05 42  	addi	a1, a1, 1056
8000259c: 13 06 00 0c  	addi	a2, zero, 192
800025a0: 93 06 00 0b  	addi	a3, zero, 176
800025a4: 13 07 20 01  	addi	a4, zero, 18
800025a8: 93 87 02 00  	mv	a5, t0
;    F[i][j] += C[i][k] * D[k][j];
800025ac: b3 04 c5 02  	mul	s1, a0, a2
800025b0: b3 04 93 00  	add	s1, t1, s1
800025b4: 07 b0 04 04  	fld	ft0, 64(s1)
800025b8: 87 b0 84 04  	fld	ft1, 72(s1)
800025bc: 07 b1 04 05  	fld	ft2, 80(s1)
800025c0: 87 b1 84 05  	fld	ft3, 88(s1)
800025c4: 07 b2 04 06  	fld	ft4, 96(s1)
800025c8: 87 b2 84 06  	fld	ft5, 104(s1)
800025cc: 07 b3 04 07  	fld	ft6, 112(s1)
800025d0: 87 b3 84 07  	fld	ft7, 120(s1)
800025d4: 07 b5 04 08  	fld	fa0, 128(s1)
800025d8: 87 b5 84 08  	fld	fa1, 136(s1)
800025dc: 07 b6 04 00  	fld	fa2, 0(s1)
800025e0: 87 b6 84 00  	fld	fa3, 8(s1)
800025e4: 07 b7 04 01  	fld	fa4, 16(s1)
800025e8: 87 b7 84 01  	fld	fa5, 24(s1)
800025ec: 07 b8 04 02  	fld	fa6, 32(s1)
800025f0: 87 b8 84 02  	fld	fa7, 40(s1)
800025f4: 07 be 04 03  	fld	ft8, 48(s1)
800025f8: 87 be 84 03  	fld	ft9, 56(s1)
800025fc: 07 bf 04 09  	fld	ft10, 144(s1)
80002600: 87 bf 84 09  	fld	ft11, 152(s1)
80002604: 07 b4 04 0a  	fld	fs0, 160(s1)
80002608: 87 b4 84 0a  	fld	fs1, 168(s1)
8000260c: 07 b9 04 0b  	fld	fs2, 176(s1)
80002610: 87 b9 84 0b  	fld	fs3, 184(s1)
80002614: 93 04 00 00  	mv	s1, zero
80002618: 33 84 93 00  	add	s0, t2, s1
8000261c: 07 3a 04 00  	fld	fs4, 0(s0)
80002620: 87 3a 04 0b  	fld	fs5, 176(s0)
80002624: 07 3b 04 16  	fld	fs6, 352(s0)
80002628: 53 7a ca 12  	fmul.d	fs4, fs4, fa2
8000262c: 43 fa da a2  	fmadd.d	fs4, fs5, fa3, fs4
80002630: 87 3a 04 21  	fld	fs5, 528(s0)
80002634: 43 7a eb a2  	fmadd.d	fs4, fs6, fa4, fs4
80002638: 07 3b 04 2c  	fld	fs6, 704(s0)
8000263c: 87 3b 04 37  	fld	fs7, 880(s0)
80002640: 43 fa fa a2  	fmadd.d	fs4, fs5, fa5, fs4
80002644: 87 3a 04 42  	fld	fs5, 1056(s0)
80002648: 43 7a 0b a3  	fmadd.d	fs4, fs6, fa6, fs4
8000264c: 43 fa 1b a3  	fmadd.d	fs4, fs7, fa7, fs4
80002650: 07 3b 04 4d  	fld	fs6, 1232(s0)
80002654: 43 fa ca a3  	fmadd.d	fs4, fs5, ft8, fs4
80002658: 87 3a 04 58  	fld	fs5, 1408(s0)
8000265c: 87 3b 04 63  	fld	fs7, 1584(s0)
80002660: 43 7a db a3  	fmadd.d	fs4, fs6, ft9, fs4
80002664: 07 3b 04 6e  	fld	fs6, 1760(s0)
80002668: 43 fa 0a a2  	fmadd.d	fs4, fs5, ft0, fs4
8000266c: 43 fa 1b a2  	fmadd.d	fs4, fs7, ft1, fs4
80002670: 87 3a 04 79  	fld	fs5, 1936(s0)
80002674: 43 7a 2b a2  	fmadd.d	fs4, fs6, ft2, fs4
80002678: 33 84 95 00  	add	s0, a1, s1
8000267c: 07 3b 04 00  	fld	fs6, 0(s0)
80002680: 43 fa 3a a2  	fmadd.d	fs4, fs5, ft3, fs4
80002684: 87 3a 04 0b  	fld	fs5, 176(s0)
80002688: 87 3b 04 16  	fld	fs7, 352(s0)
8000268c: 43 7a 4b a2  	fmadd.d	fs4, fs6, ft4, fs4
80002690: 07 3b 04 21  	fld	fs6, 528(s0)
80002694: 43 fa 5a a2  	fmadd.d	fs4, fs5, ft5, fs4
80002698: 43 fa 6b a2  	fmadd.d	fs4, fs7, ft6, fs4
8000269c: 87 3a 04 2c  	fld	fs5, 704(s0)
800026a0: 43 7a 7b a2  	fmadd.d	fs4, fs6, ft7, fs4
800026a4: 07 3b 04 37  	fld	fs6, 880(s0)
800026a8: 87 3b 04 42  	fld	fs7, 1056(s0)
800026ac: 43 fa aa a2  	fmadd.d	fs4, fs5, fa0, fs4
800026b0: 87 3a 04 4d  	fld	fs5, 1232(s0)
800026b4: 43 7a bb a2  	fmadd.d	fs4, fs6, fa1, fs4
800026b8: 43 fa eb a3  	fmadd.d	fs4, fs7, ft10, fs4
800026bc: 07 3b 04 58  	fld	fs6, 1408(s0)
800026c0: 43 fa fa a3  	fmadd.d	fs4, fs5, ft11, fs4
800026c4: 87 3a 04 63  	fld	fs5, 1584(s0)
800026c8: 87 3b 04 6e  	fld	fs7, 1760(s0)
800026cc: 43 7a 8b a2  	fmadd.d	fs4, fs6, fs0, fs4
800026d0: 07 3b 04 79  	fld	fs6, 1936(s0)
800026d4: 43 fa 9a a2  	fmadd.d	fs4, fs5, fs1, fs4
800026d8: 43 fa 2b a3  	fmadd.d	fs4, fs7, fs2, fs4
800026dc: 33 84 97 00  	add	s0, a5, s1
800026e0: 43 7a 3b a3  	fmadd.d	fs4, fs6, fs3, fs4
;     for (j = 0; j < nl; j++)
800026e4: 93 84 84 00  	addi	s1, s1, 8
;    F[i][j] += C[i][k] * D[k][j];
800026e8: 27 30 44 01  	fsd	fs4, 0(s0)
;     for (j = 0; j < nl; j++)
800026ec: e3 96 d4 f2  	bne	s1, a3, 0x80002618 <.LBB0_89+0xc88>
;   for (i = 0; i < nj; i++)
800026f0: 13 05 15 00  	addi	a0, a0, 1
800026f4: 93 87 07 0b  	addi	a5, a5, 176
800026f8: e3 1a e5 ea  	bne	a0, a4, 0x800025ac <.LBB0_89+0xc1c>
;   for (i = 0; i < ni; i++)
800026fc: 13 d5 48 01  	srli	a0, a7, 20
80002700: 33 35 a0 00  	snez	a0, a0
80002704: b7 f5 11 00  	lui	a1, 287
80002708: 13 86 95 70  	addi	a2, a1, 1801
8000270c: 33 b6 c8 00  	sltu	a2, a7, a2
80002710: 33 75 c5 00  	and	a0, a0, a2
80002714: 13 d6 42 01  	srli	a2, t0, 20
80002718: 33 36 c0 00  	snez	a2, a2
8000271c: 93 85 95 3a  	addi	a1, a1, 937
80002720: b3 b5 b2 00  	sltu	a1, t0, a1
80002724: b3 75 b6 00  	and	a1, a2, a1
80002728: 33 75 b5 00  	and	a0, a0, a1
8000272c: 63 0a 05 1a  	beqz	a0, 0x800028e0 <.LBB0_89+0xf50>
80002730: 13 05 00 00  	mv	a0, zero
80002734: 93 05 80 00  	addi	a1, zero, 8
80002738: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++)
8000273c: 93 06 00 04  	addi	a3, zero, 64
80002740: 13 07 00 0c  	addi	a4, zero, 192
80002744: ab 20 d6 00  	scfgw	a2, a3
80002748: ab a0 e5 00  	scfgw	a1, a4
8000274c: 93 06 80 f7  	addi	a3, zero, -136
80002750: 13 07 50 01  	addi	a4, zero, 21
80002754: 93 07 00 06  	addi	a5, zero, 96
80002758: 93 04 00 0e  	addi	s1, zero, 224
8000275c: ab 20 f7 00  	scfgw	a4, a5
80002760: ab a0 96 00  	scfgw	a3, s1
80002764: 93 06 f0 00  	addi	a3, zero, 15
80002768: 93 07 00 08  	addi	a5, zero, 128
8000276c: 93 04 00 10  	addi	s1, zero, 256
80002770: ab a0 f6 00  	scfgw	a3, a5
80002774: ab a0 95 00  	scfgw	a1, s1
80002778: 93 05 00 02  	addi	a1, zero, 32
8000277c: ab 20 b0 00  	scfgw	zero, a1
80002780: 2b a0 08 34  	scfgwi	a7, 832
80002784: 93 05 00 0b  	addi	a1, zero, 176
80002788: 93 07 10 00  	addi	a5, zero, 1
8000278c: 93 84 07 04  	addi	s1, a5, 64
80002790: 13 84 07 0c  	addi	s0, a5, 192
80002794: ab 20 96 00  	scfgw	a2, s1
80002798: ab a0 85 00  	scfgw	a1, s0
8000279c: 37 f6 ff ff  	lui	a2, 1048575
800027a0: 93 04 86 45  	addi	s1, a2, 1112
800027a4: 13 84 07 06  	addi	s0, a5, 96
800027a8: ab 20 87 00  	scfgw	a4, s0
800027ac: 13 87 07 0e  	addi	a4, a5, 224
800027b0: ab a0 e4 00  	scfgw	s1, a4
800027b4: 13 06 86 3a  	addi	a2, a2, 936
800027b8: 13 87 07 08  	addi	a4, a5, 128
800027bc: 93 84 07 10  	addi	s1, a5, 256
800027c0: ab a0 e6 00  	scfgw	a3, a4
800027c4: ab 20 96 00  	scfgw	a2, s1
800027c8: 13 86 07 02  	addi	a2, a5, 32
800027cc: ab 20 c0 00  	scfgw	zero, a2
800027d0: 2b a0 12 34  	scfgwi	t0, 833
800027d4: 73 e0 00 7c  	csrsi	1984, 1
800027d8: 13 06 00 01  	addi	a2, zero, 16
800027dc: 93 06 09 00  	mv	a3, s2
800027e0: 13 07 00 00  	mv	a4, zero
;    G[i][j] += E[i][k] * F[k][j];
800027e4: b3 87 e6 00  	add	a5, a3, a4
800027e8: d3 01 00 22  	fmv.d	ft3, ft0
800027ec: 53 82 10 22  	fmv.d	ft4, ft1
800027f0: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800027f4: 53 02 00 22  	fmv.d	ft4, ft0
800027f8: d3 82 10 22  	fmv.d	ft5, ft1
800027fc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002800: 53 02 00 22  	fmv.d	ft4, ft0
80002804: d3 82 10 22  	fmv.d	ft5, ft1
80002808: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000280c: 53 02 00 22  	fmv.d	ft4, ft0
80002810: d3 82 10 22  	fmv.d	ft5, ft1
80002814: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002818: 53 02 00 22  	fmv.d	ft4, ft0
8000281c: d3 82 10 22  	fmv.d	ft5, ft1
80002820: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002824: 53 02 00 22  	fmv.d	ft4, ft0
80002828: d3 82 10 22  	fmv.d	ft5, ft1
8000282c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002830: 53 02 00 22  	fmv.d	ft4, ft0
80002834: d3 82 10 22  	fmv.d	ft5, ft1
80002838: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000283c: 53 02 00 22  	fmv.d	ft4, ft0
80002840: d3 82 10 22  	fmv.d	ft5, ft1
80002844: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002848: 53 02 00 22  	fmv.d	ft4, ft0
8000284c: d3 82 10 22  	fmv.d	ft5, ft1
80002850: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002854: 53 02 00 22  	fmv.d	ft4, ft0
80002858: d3 82 10 22  	fmv.d	ft5, ft1
8000285c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002860: 53 02 00 22  	fmv.d	ft4, ft0
80002864: d3 82 10 22  	fmv.d	ft5, ft1
80002868: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000286c: 53 02 00 22  	fmv.d	ft4, ft0
80002870: d3 82 10 22  	fmv.d	ft5, ft1
80002874: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002878: 53 02 00 22  	fmv.d	ft4, ft0
8000287c: d3 82 10 22  	fmv.d	ft5, ft1
80002880: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002884: 53 02 00 22  	fmv.d	ft4, ft0
80002888: d3 82 10 22  	fmv.d	ft5, ft1
8000288c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002890: 53 02 00 22  	fmv.d	ft4, ft0
80002894: d3 82 10 22  	fmv.d	ft5, ft1
80002898: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000289c: 53 02 00 22  	fmv.d	ft4, ft0
800028a0: d3 82 10 22  	fmv.d	ft5, ft1
800028a4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800028a8: 53 02 00 22  	fmv.d	ft4, ft0
800028ac: d3 82 10 22  	fmv.d	ft5, ft1
800028b0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800028b4: 53 02 00 22  	fmv.d	ft4, ft0
800028b8: d3 82 10 22  	fmv.d	ft5, ft1
800028bc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++)
800028c0: 13 07 87 00  	addi	a4, a4, 8
;    G[i][j] += E[i][k] * F[k][j];
800028c4: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
800028c8: e3 1e b7 f0  	bne	a4, a1, 0x800027e4 <.LBB0_89+0xe54>
;   for (i = 0; i < ni; i++)
800028cc: 13 05 15 00  	addi	a0, a0, 1
800028d0: 93 86 06 0b  	addi	a3, a3, 176
800028d4: e3 16 c5 f0  	bne	a0, a2, 0x800027e0 <.LBB0_89+0xe50>
800028d8: 73 f0 00 7c  	csrci	1984, 1
800028dc: 6f 00 40 13  	j	0x80002a10 <.LBB0_89+0x1080>
800028e0: 13 05 00 00  	mv	a0, zero
800028e4: 93 05 00 09  	addi	a1, zero, 144
800028e8: 13 06 00 0b  	addi	a2, zero, 176
800028ec: 93 06 00 01  	addi	a3, zero, 16
800028f0: 13 07 09 00  	mv	a4, s2
;    G[i][j] += E[i][k] * F[k][j];
800028f4: b3 07 b5 02  	mul	a5, a0, a1
800028f8: b3 87 f8 00  	add	a5, a7, a5
800028fc: 07 b0 07 01  	fld	ft0, 16(a5)
80002900: 87 b0 87 01  	fld	ft1, 24(a5)
80002904: 07 b1 07 02  	fld	ft2, 32(a5)
80002908: 87 b1 87 02  	fld	ft3, 40(a5)
8000290c: 07 b2 07 03  	fld	ft4, 48(a5)
80002910: 87 b2 87 03  	fld	ft5, 56(a5)
80002914: 07 b3 07 04  	fld	ft6, 64(a5)
80002918: 87 b3 87 04  	fld	ft7, 72(a5)
8000291c: 07 b5 07 05  	fld	fa0, 80(a5)
80002920: 87 b5 87 05  	fld	fa1, 88(a5)
80002924: 07 b6 07 06  	fld	fa2, 96(a5)
80002928: 87 b6 87 06  	fld	fa3, 104(a5)
8000292c: 07 b7 07 07  	fld	fa4, 112(a5)
80002930: 87 b7 87 07  	fld	fa5, 120(a5)
80002934: 07 b8 07 08  	fld	fa6, 128(a5)
80002938: 87 b8 87 08  	fld	fa7, 136(a5)
8000293c: 07 be 07 00  	fld	ft8, 0(a5)
80002940: 87 be 87 00  	fld	ft9, 8(a5)
80002944: 93 07 00 00  	mv	a5, zero
80002948: b3 84 f2 00  	add	s1, t0, a5
8000294c: 07 bf 04 00  	fld	ft10, 0(s1)
80002950: 87 bf 04 0b  	fld	ft11, 176(s1)
80002954: 07 b4 04 16  	fld	fs0, 352(s1)
80002958: 53 7f cf 13  	fmul.d	ft10, ft10, ft8
8000295c: 43 ff df f3  	fmadd.d	ft10, ft11, ft9, ft10
80002960: 43 7f 04 f2  	fmadd.d	ft10, fs0, ft0, ft10
80002964: 87 bf 04 21  	fld	ft11, 528(s1)
80002968: 07 b4 04 2c  	fld	fs0, 704(s1)
8000296c: 87 b4 04 37  	fld	fs1, 880(s1)
80002970: 07 b9 04 42  	fld	fs2, 1056(s1)
80002974: 43 ff 1f f2  	fmadd.d	ft10, ft11, ft1, ft10
80002978: 43 7f 24 f2  	fmadd.d	ft10, fs0, ft2, ft10
8000297c: 43 ff 34 f2  	fmadd.d	ft10, fs1, ft3, ft10
80002980: 43 7f 49 f2  	fmadd.d	ft10, fs2, ft4, ft10
80002984: 87 bf 04 4d  	fld	ft11, 1232(s1)
80002988: 07 b4 04 58  	fld	fs0, 1408(s1)
8000298c: 87 b4 04 63  	fld	fs1, 1584(s1)
80002990: 07 b9 04 6e  	fld	fs2, 1760(s1)
80002994: 43 ff 5f f2  	fmadd.d	ft10, ft11, ft5, ft10
80002998: 43 7f 64 f2  	fmadd.d	ft10, fs0, ft6, ft10
8000299c: 43 ff 74 f2  	fmadd.d	ft10, fs1, ft7, ft10
800029a0: 43 7f a9 f2  	fmadd.d	ft10, fs2, fa0, ft10
800029a4: 87 bf 04 79  	fld	ft11, 1936(s1)
800029a8: 13 84 04 42  	addi	s0, s1, 1056
800029ac: 07 34 04 42  	fld	fs0, 1056(s0)
800029b0: 13 84 84 47  	addi	s0, s1, 1144
800029b4: 87 34 84 47  	fld	fs1, 1144(s0)
800029b8: 13 84 04 4d  	addi	s0, s1, 1232
800029bc: 07 39 04 4d  	fld	fs2, 1232(s0)
800029c0: 43 ff bf f2  	fmadd.d	ft10, ft11, fa1, ft10
800029c4: 43 7f c4 f2  	fmadd.d	ft10, fs0, fa2, ft10
800029c8: 43 ff d4 f2  	fmadd.d	ft10, fs1, fa3, ft10
800029cc: 43 7f e9 f2  	fmadd.d	ft10, fs2, fa4, ft10
800029d0: 13 84 84 52  	addi	s0, s1, 1320
800029d4: 87 3f 84 52  	fld	ft11, 1320(s0)
800029d8: 13 84 04 58  	addi	s0, s1, 1408
800029dc: 07 34 04 58  	fld	fs0, 1408(s0)
800029e0: 93 84 84 5d  	addi	s1, s1, 1496
800029e4: 87 b4 84 5d  	fld	fs1, 1496(s1)
800029e8: 43 ff ff f2  	fmadd.d	ft10, ft11, fa5, ft10
800029ec: 43 7f 04 f3  	fmadd.d	ft10, fs0, fa6, ft10
800029f0: b3 04 f7 00  	add	s1, a4, a5
800029f4: 43 ff 14 f3  	fmadd.d	ft10, fs1, fa7, ft10
;     for (j = 0; j < nl; j++)
800029f8: 93 87 87 00  	addi	a5, a5, 8
;    G[i][j] += E[i][k] * F[k][j];
800029fc: 27 b0 e4 01  	fsd	ft10, 0(s1)
;     for (j = 0; j < nl; j++)
80002a00: e3 94 c7 f4  	bne	a5, a2, 0x80002948 <.LBB0_89+0xfb8>
;   for (i = 0; i < ni; i++)
80002a04: 13 05 15 00  	addi	a0, a0, 1
80002a08: 13 07 07 0b  	addi	a4, a4, 176
80002a0c: e3 14 d5 ee  	bne	a0, a3, 0x800028f4 <.LBB0_89+0xf64>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002a10: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80002a14: b3 05 05 41  	sub	a1, a0, a6

80002a18 <.LBB0_90>:
80002a18: 17 25 00 00  	auipc	a0, 2
80002a1c: 13 05 95 5d  	addi	a0, a0, 1497
80002a20: 97 00 00 00  	auipc	ra, 0
80002a24: e7 80 c0 28  	jalr	652(ra)
;     for (int i = 0; i < n; i++){
80002a28: 13 55 49 01  	srli	a0, s2, 20
80002a2c: 33 35 a0 00  	snez	a0, a0
80002a30: b7 f5 11 00  	lui	a1, 287
80002a34: 93 85 95 50  	addi	a1, a1, 1289
80002a38: b3 35 b9 00  	sltu	a1, s2, a1
80002a3c: 33 75 b5 00  	and	a0, a0, a1
80002a40: 63 04 05 10  	beqz	a0, 0x80002b48 <.LBB0_90+0x130>
80002a44: 13 05 80 00  	addi	a0, zero, 8
80002a48: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
80002a4c: 13 06 00 04  	addi	a2, zero, 64
80002a50: 93 06 00 0c  	addi	a3, zero, 192
80002a54: ab a0 c5 00  	scfgw	a1, a2
80002a58: ab 20 d5 00  	scfgw	a0, a3
80002a5c: 93 05 f0 00  	addi	a1, zero, 15
80002a60: 13 06 00 06  	addi	a2, zero, 96
80002a64: 93 06 00 0e  	addi	a3, zero, 224
80002a68: ab a0 c5 00  	scfgw	a1, a2
80002a6c: ab 20 d5 00  	scfgw	a0, a3
80002a70: 13 05 00 02  	addi	a0, zero, 32
80002a74: ab 20 a0 00  	scfgw	zero, a0
80002a78: 2b 20 09 32  	scfgwi	s2, 800
80002a7c: 73 e0 00 7c  	csrsi	1984, 1
80002a80: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002a84: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80002a88: 53 02 00 22  	fmv.d	ft4, ft0
80002a8c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002a90: 53 02 00 22  	fmv.d	ft4, ft0
80002a94: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002a98: 53 02 00 22  	fmv.d	ft4, ft0
80002a9c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002aa0: 53 02 00 22  	fmv.d	ft4, ft0
80002aa4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002aa8: 53 02 00 22  	fmv.d	ft4, ft0
80002aac: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ab0: 53 02 00 22  	fmv.d	ft4, ft0
80002ab4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ab8: 53 02 00 22  	fmv.d	ft4, ft0
80002abc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ac0: 53 02 00 22  	fmv.d	ft4, ft0
80002ac4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ac8: 53 02 00 22  	fmv.d	ft4, ft0
80002acc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ad0: 53 02 00 22  	fmv.d	ft4, ft0
80002ad4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ad8: 53 02 00 22  	fmv.d	ft4, ft0
80002adc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ae0: 53 02 00 22  	fmv.d	ft4, ft0
80002ae4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002ae8: 53 02 00 22  	fmv.d	ft4, ft0
80002aec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002af0: 53 02 00 22  	fmv.d	ft4, ft0
80002af4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002af8: 53 02 00 22  	fmv.d	ft4, ft0
80002afc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b00: 53 02 00 22  	fmv.d	ft4, ft0
80002b04: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b08: 53 02 00 22  	fmv.d	ft4, ft0
80002b0c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b10: 53 02 00 22  	fmv.d	ft4, ft0
80002b14: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b18: 53 02 00 22  	fmv.d	ft4, ft0
80002b1c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b20: 53 02 00 22  	fmv.d	ft4, ft0
80002b24: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b28: 53 02 00 22  	fmv.d	ft4, ft0
80002b2c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80002b30: 53 02 00 22  	fmv.d	ft4, ft0
;     for (int i = 0; i < n; i++){
80002b34: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80002b38: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     for (int i = 0; i < n; i++){
80002b3c: e3 16 05 f4  	bnez	a0, 0x80002a88 <.LBB0_90+0x70>
80002b40: 73 f0 00 7c  	csrci	1984, 1
80002b44: 6f 00 c0 0c  	j	0x80002c10 <.LBB0_91>
;     for (int i = 0; i < n; i++){
80002b48: 13 05 89 05  	addi	a0, s2, 88
80002b4c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002b50: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80002b54: 07 30 85 fa  	fld	ft0, -88(a0)
80002b58: 87 30 05 fb  	fld	ft1, -80(a0)
80002b5c: 53 70 30 02  	fadd.d	ft0, ft0, ft3
80002b60: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002b64: 87 30 85 fb  	fld	ft1, -72(a0)
80002b68: 07 31 05 fc  	fld	ft2, -64(a0)
80002b6c: 87 31 85 fc  	fld	ft3, -56(a0)
80002b70: 07 32 05 fd  	fld	ft4, -48(a0)
80002b74: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002b78: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002b7c: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002b80: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002b84: 87 30 85 fd  	fld	ft1, -40(a0)
80002b88: 07 31 05 fe  	fld	ft2, -32(a0)
80002b8c: 87 31 85 fe  	fld	ft3, -24(a0)
80002b90: 07 32 05 ff  	fld	ft4, -16(a0)
80002b94: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002b98: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002b9c: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002ba0: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002ba4: 87 30 85 ff  	fld	ft1, -8(a0)
80002ba8: 07 31 05 00  	fld	ft2, 0(a0)
80002bac: 87 31 85 00  	fld	ft3, 8(a0)
80002bb0: 07 32 05 01  	fld	ft4, 16(a0)
80002bb4: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002bb8: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002bbc: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002bc0: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002bc4: 87 30 85 01  	fld	ft1, 24(a0)
80002bc8: 07 31 05 02  	fld	ft2, 32(a0)
80002bcc: 87 31 85 02  	fld	ft3, 40(a0)
80002bd0: 07 32 05 03  	fld	ft4, 48(a0)
80002bd4: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002bd8: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002bdc: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002be0: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80002be4: 87 30 85 03  	fld	ft1, 56(a0)
80002be8: 07 31 05 04  	fld	ft2, 64(a0)
80002bec: 87 31 85 04  	fld	ft3, 72(a0)
80002bf0: 07 32 05 05  	fld	ft4, 80(a0)
80002bf4: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80002bf8: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80002bfc: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80002c00: d3 71 02 02  	fadd.d	ft3, ft4, ft0
;     for (int i = 0; i < n; i++){
80002c04: 93 85 f5 ff  	addi	a1, a1, -1
80002c08: 13 05 05 0b  	addi	a0, a0, 176
80002c0c: e3 94 05 f4  	bnez	a1, 0x80002b54 <.LBB0_90+0x13c>

80002c10 <.LBB0_91>:
80002c10: 17 25 00 00  	auipc	a0, 2
80002c14: 13 05 85 6b  	addi	a0, a0, 1720
80002c18: 07 30 05 00  	fld	ft0, 0(a0)
;   double error = r - r_true;
80002c1c: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
;   error = error < 0.0 ? -error : error;
80002c20: 53 24 00 22  	fabs.d	fs0, ft0
;   printf("error = %f\n", error);
80002c24: 27 30 81 04  	fsd	fs0, 64(sp)
80002c28: 03 26 01 04  	lw	a2, 64(sp)
80002c2c: 83 26 41 04  	lw	a3, 68(sp)

80002c30 <.LBB0_92>:
80002c30: 17 25 00 00  	auipc	a0, 2
80002c34: 13 05 55 3b  	addi	a0, a0, 949
80002c38: 97 00 00 00  	auipc	ra, 0
80002c3c: e7 80 40 07  	jalr	116(ra)

80002c40 <.LBB0_93>:
80002c40: 17 25 00 00  	auipc	a0, 2
80002c44: 13 05 05 69  	addi	a0, a0, 1680
80002c48: 07 30 05 00  	fld	ft0, 0(a0)
;   return error > 0.0001;
80002c4c: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80002c50: 87 3b 81 04  	fld	fs7, 72(sp)
80002c54: 07 3b 01 05  	fld	fs6, 80(sp)
80002c58: 87 3a 81 05  	fld	fs5, 88(sp)
80002c5c: 07 3a 01 06  	fld	fs4, 96(sp)
80002c60: 87 39 81 06  	fld	fs3, 104(sp)
80002c64: 07 39 01 07  	fld	fs2, 112(sp)
80002c68: 87 34 81 07  	fld	fs1, 120(sp)
80002c6c: 07 34 01 08  	fld	fs0, 128(sp)
80002c70: 83 2d c1 08  	lw	s11, 140(sp)
80002c74: 03 2d 01 09  	lw	s10, 144(sp)
80002c78: 83 2c 41 09  	lw	s9, 148(sp)
80002c7c: 03 2c 81 09  	lw	s8, 152(sp)
80002c80: 83 2b c1 09  	lw	s7, 156(sp)
80002c84: 03 2b 01 0a  	lw	s6, 160(sp)
80002c88: 83 2a 41 0a  	lw	s5, 164(sp)
80002c8c: 03 2a 81 0a  	lw	s4, 168(sp)
80002c90: 83 29 c1 0a  	lw	s3, 172(sp)
80002c94: 03 29 01 0b  	lw	s2, 176(sp)
80002c98: 83 24 41 0b  	lw	s1, 180(sp)
80002c9c: 03 24 81 0b  	lw	s0, 184(sp)
80002ca0: 83 20 c1 0b  	lw	ra, 188(sp)
80002ca4: 13 01 01 0c  	addi	sp, sp, 192
80002ca8: 67 80 00 00  	ret

80002cac <printf_>:
; {
80002cac: 13 01 01 fd  	addi	sp, sp, -48
80002cb0: 23 26 11 00  	sw	ra, 12(sp)
80002cb4: 93 02 05 00  	mv	t0, a0
80002cb8: 23 26 11 03  	sw	a7, 44(sp)
80002cbc: 23 24 01 03  	sw	a6, 40(sp)
80002cc0: 23 22 f1 02  	sw	a5, 36(sp)
80002cc4: 23 20 e1 02  	sw	a4, 32(sp)
80002cc8: 23 2e d1 00  	sw	a3, 28(sp)
80002ccc: 23 2c c1 00  	sw	a2, 24(sp)
80002cd0: 23 2a b1 00  	sw	a1, 20(sp)
80002cd4: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80002cd8: 23 24 a1 00  	sw	a0, 8(sp)

80002cdc <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80002cdc: 17 15 00 00  	auipc	a0, 1
80002ce0: 13 05 45 c2  	addi	a0, a0, -988
80002ce4: 93 05 71 00  	addi	a1, sp, 7
80002ce8: 13 06 f0 ff  	addi	a2, zero, -1
80002cec: 13 07 41 01  	addi	a4, sp, 20
80002cf0: 93 86 02 00  	mv	a3, t0
80002cf4: 97 00 00 00  	auipc	ra, 0
80002cf8: e7 80 40 01  	jalr	20(ra)
;   return ret;
80002cfc: 83 20 c1 00  	lw	ra, 12(sp)
80002d00: 13 01 01 03  	addi	sp, sp, 48
80002d04: 67 80 00 00  	ret

80002d08 <_vsnprintf.llvm.1805434900161566649>:
; {
80002d08: 13 01 01 f9  	addi	sp, sp, -112
80002d0c: 23 26 11 06  	sw	ra, 108(sp)
80002d10: 23 24 81 06  	sw	s0, 104(sp)
80002d14: 23 22 91 06  	sw	s1, 100(sp)
80002d18: 23 20 21 07  	sw	s2, 96(sp)
80002d1c: 23 2e 31 05  	sw	s3, 92(sp)
80002d20: 23 2c 41 05  	sw	s4, 88(sp)
80002d24: 23 2a 51 05  	sw	s5, 84(sp)
80002d28: 23 28 61 05  	sw	s6, 80(sp)
80002d2c: 23 26 71 05  	sw	s7, 76(sp)
80002d30: 23 24 81 05  	sw	s8, 72(sp)
80002d34: 23 22 91 05  	sw	s9, 68(sp)
80002d38: 23 20 a1 05  	sw	s10, 64(sp)
80002d3c: 23 2e b1 03  	sw	s11, 60(sp)
80002d40: 93 09 07 00  	mv	s3, a4
80002d44: 13 84 06 00  	mv	s0, a3
80002d48: 93 0a 06 00  	mv	s5, a2
80002d4c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80002d50: 63 86 05 00  	beqz	a1, 0x80002d5c <.LBB1_183>
80002d54: 13 09 05 00  	mv	s2, a0
80002d58: 6f 00 c0 00  	j	0x80002d64 <.LBB1_183+0x8>

80002d5c <.LBB1_183>:
80002d5c: 17 19 00 00  	auipc	s2, 1
80002d60: 13 09 09 c5  	addi	s2, s2, -944
80002d64: 13 0c 00 00  	mv	s8, zero
80002d68: 13 0b 50 02  	addi	s6, zero, 37
80002d6c: 93 0d 00 01  	addi	s11, zero, 16
80002d70: 93 0b e0 02  	addi	s7, zero, 46
80002d74: 37 15 00 00  	lui	a0, 1
80002d78: 13 05 05 80  	addi	a0, a0, -2048
80002d7c: 23 2c a1 00  	sw	a0, 24(sp)
80002d80: 37 05 01 00  	lui	a0, 16
80002d84: 13 05 f5 ff  	addi	a0, a0, -1
80002d88: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80002d8c: 13 0d 24 00  	addi	s10, s0, 2
80002d90: 93 0c 0c 00  	mv	s9, s8
80002d94: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80002d98: 03 45 04 00  	lbu	a0, 0(s0)
80002d9c: e3 04 05 30  	beqz	a0, 0x800038a4 <.LBB1_124+0x3b0>
80002da0: 63 08 65 03  	beq	a0, s6, 0x80002dd0 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80002da4: 93 84 1c 00  	addi	s1, s9, 1
80002da8: 93 05 0a 00  	mv	a1, s4
80002dac: 13 86 0c 00  	mv	a2, s9
80002db0: 93 86 0a 00  	mv	a3, s5
80002db4: e7 00 09 00  	jalr	s2
;       format++;
80002db8: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80002dbc: 13 0d 1d 00  	addi	s10, s10, 1
80002dc0: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80002dc4: 03 45 04 00  	lbu	a0, 0(s0)
80002dc8: e3 1c 05 fc  	bnez	a0, 0x80002da0 <.LBB1_183+0x44>
80002dcc: 6f 00 90 2d  	j	0x800038a4 <.LBB1_124+0x3b0>
;     flags = 0U;
80002dd0: 13 04 00 00  	mv	s0, zero
80002dd4: 6f 00 00 01  	j	0x80002de4 <.LBB1_9+0x8>

80002dd8 <.LBB1_8>:
80002dd8: 93 05 00 01  	addi	a1, zero, 16

80002ddc <.LBB1_9>:
80002ddc: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80002de0: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80002de4: 03 45 fd ff  	lbu	a0, -1(s10)
80002de8: 93 05 05 fe  	addi	a1, a0, -32
80002dec: 63 ec bd 02  	bltu	s11, a1, 0x80002e24 <.LBB1_15>
80002df0: 93 95 25 00  	slli	a1, a1, 2

80002df4 <.LBB1_184>:
80002df4: 17 26 00 00  	auipc	a2, 2
80002df8: 13 06 06 21  	addi	a2, a2, 528
80002dfc: b3 85 c5 00  	add	a1, a1, a2
80002e00: 03 a6 05 00  	lw	a2, 0(a1)
80002e04: 93 05 10 00  	addi	a1, zero, 1
80002e08: 67 00 06 00  	jr	a2

80002e0c <.LBB1_12>:
80002e0c: 93 05 80 00  	addi	a1, zero, 8
80002e10: 6f f0 df fc  	j	0x80002ddc <.LBB1_9>

80002e14 <.LBB1_13>:
80002e14: 93 05 40 00  	addi	a1, zero, 4
80002e18: 6f f0 5f fc  	j	0x80002ddc <.LBB1_9>

80002e1c <.LBB1_14>:
80002e1c: 93 05 20 00  	addi	a1, zero, 2
80002e20: 6f f0 df fb  	j	0x80002ddc <.LBB1_9>

80002e24 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80002e24: 93 05 05 fd  	addi	a1, a0, -48
80002e28: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80002e2c: 93 05 fd ff  	addi	a1, s10, -1
80002e30: 93 06 90 00  	addi	a3, zero, 9
80002e34: 63 ee c6 06  	bltu	a3, a2, 0x80002eb0 <.LBB1_15+0x8c>
80002e38: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002e3c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002e40: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002e44: b3 06 8b 03  	mul	a3, s6, s8
80002e48: 93 85 15 00  	addi	a1, a1, 1
80002e4c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002e50: 93 06 05 fd  	addi	a3, a0, -48
80002e54: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002e58: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80002e5c: e3 e0 86 ff  	bltu	a3, s8, 0x80002e3c <.LBB1_15+0x18>
80002e60: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002e64: 63 16 75 0b  	bne	a0, s7, 0x80002f10 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80002e68: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80002e6c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80002e70: 93 05 05 fd  	addi	a1, a0, -48
80002e74: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80002e78: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80002e7c: 93 06 90 00  	addi	a3, zero, 9
80002e80: 63 e0 c6 06  	bltu	a3, a2, 0x80002ee0 <.LBB1_15+0xbc>
80002e84: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002e88: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80002e8c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002e90: b3 86 8b 03  	mul	a3, s7, s8
80002e94: 93 85 15 00  	addi	a1, a1, 1
80002e98: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80002e9c: 93 06 05 fd  	addi	a3, a0, -48
80002ea0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80002ea4: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80002ea8: e3 e0 86 ff  	bltu	a3, s8, 0x80002e88 <.LBB1_15+0x64>
80002eac: 6f 00 00 07  	j	0x80002f1c <.LBB1_15+0xf8>
;     else if (*format == '*') {
80002eb0: 13 06 a0 02  	addi	a2, zero, 42
80002eb4: 63 18 c5 04  	bne	a0, a2, 0x80002f04 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80002eb8: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80002ebc: 63 d4 05 00  	bgez	a1, 0x80002ec4 <.LBB1_15+0xa0>
80002ec0: 13 64 24 00  	ori	s0, s0, 2
80002ec4: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80002ec8: 03 45 0d 00  	lbu	a0, 0(s10)
80002ecc: 13 d6 f5 41  	srai	a2, a1, 31
80002ed0: b3 85 c5 00  	add	a1, a1, a2
80002ed4: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80002ed8: e3 08 75 f9  	beq	a0, s7, 0x80002e68 <.LBB1_15+0x44>
80002edc: 6f 00 40 03  	j	0x80002f10 <.LBB1_15+0xec>
;       else if (*format == '*') {
80002ee0: 13 06 a0 02  	addi	a2, zero, 42
80002ee4: 63 1a c5 02  	bne	a0, a2, 0x80002f18 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80002ee8: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80002eec: 63 44 70 01  	bgtz	s7, 0x80002ef4 <.LBB1_15+0xd0>
80002ef0: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80002ef4: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80002ef8: 13 0d 2d 00  	addi	s10, s10, 2
80002efc: 93 89 49 00  	addi	s3, s3, 4
80002f00: 6f 00 00 02  	j	0x80002f20 <.LBB1_15+0xfc>
80002f04: 13 0b 00 00  	mv	s6, zero
80002f08: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80002f0c: e3 0e 75 f5  	beq	a0, s7, 0x80002e68 <.LBB1_15+0x44>
80002f10: 93 0b 00 00  	mv	s7, zero
80002f14: 6f 00 c0 00  	j	0x80002f20 <.LBB1_15+0xfc>
80002f18: 93 0b 00 00  	mv	s7, zero
80002f1c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80002f20: 93 05 85 f9  	addi	a1, a0, -104
80002f24: 13 d6 15 00  	srli	a2, a1, 1
80002f28: 93 95 f5 01  	slli	a1, a1, 31
80002f2c: b3 e5 c5 00  	or	a1, a1, a2
80002f30: 13 06 90 00  	addi	a2, zero, 9
80002f34: 63 62 b6 06  	bltu	a2, a1, 0x80002f98 <.LBB1_42>
80002f38: 93 95 25 00  	slli	a1, a1, 2

80002f3c <.LBB1_185>:
80002f3c: 17 26 00 00  	auipc	a2, 2
80002f40: 13 06 c6 10  	addi	a2, a2, 268
80002f44: b3 85 c5 00  	add	a1, a1, a2
80002f48: 83 a6 05 00  	lw	a3, 0(a1)
80002f4c: 93 05 10 00  	addi	a1, zero, 1
80002f50: 13 06 00 10  	addi	a2, zero, 256
80002f54: 67 80 06 00  	jr	a3

80002f58 <.LBB1_36>:
;         if (*format == 'h') {
80002f58: 03 45 1d 00  	lbu	a0, 1(s10)
80002f5c: 93 05 80 06  	addi	a1, zero, 104
80002f60: 63 12 b5 12  	bne	a0, a1, 0x80003084 <.LBB1_53+0x48>
80002f64: 93 05 20 00  	addi	a1, zero, 2
80002f68: 13 06 00 0c  	addi	a2, zero, 192
80002f6c: 6f 00 00 02  	j	0x80002f8c <.LBB1_41>

80002f70 <.LBB1_38>:
80002f70: 13 06 00 20  	addi	a2, zero, 512
80002f74: 6f 00 80 01  	j	0x80002f8c <.LBB1_41>

80002f78 <.LBB1_39>:
;         if (*format == 'l') {
80002f78: 03 45 1d 00  	lbu	a0, 1(s10)
80002f7c: 93 05 c0 06  	addi	a1, zero, 108
80002f80: 63 18 b5 10  	bne	a0, a1, 0x80003090 <.LBB1_53+0x54>
80002f84: 93 05 20 00  	addi	a1, zero, 2
80002f88: 13 06 00 30  	addi	a2, zero, 768

80002f8c <.LBB1_41>:
80002f8c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80002f90: 03 45 0d 00  	lbu	a0, 0(s10)
80002f94: 33 64 c4 00  	or	s0, s0, a2

80002f98 <.LBB1_42>:
;     switch (*format) {
80002f98: 93 05 b5 fd  	addi	a1, a0, -37
80002f9c: 13 06 30 05  	addi	a2, zero, 83
80002fa0: 63 64 b6 10  	bltu	a2, a1, 0x800030a8 <.LBB1_59>
80002fa4: 93 95 25 00  	slli	a1, a1, 2

80002fa8 <.LBB1_186>:
80002fa8: 17 26 00 00  	auipc	a2, 2
80002fac: 13 06 86 0c  	addi	a2, a2, 200
80002fb0: b3 85 c5 00  	add	a1, a1, a2
80002fb4: 03 a6 05 00  	lw	a2, 0(a1)
80002fb8: 93 05 80 00  	addi	a1, zero, 8
80002fbc: 13 0c 00 01  	addi	s8, zero, 16
80002fc0: 67 00 06 00  	jr	a2

80002fc4 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80002fc4: 13 74 f4 fe  	andi	s0, s0, -17
80002fc8: 13 0c a0 00  	addi	s8, zero, 10

80002fcc <.LBB1_45>:
;         if (*format == 'X') {
80002fcc: 93 05 80 05  	addi	a1, zero, 88
80002fd0: 63 14 b5 00  	bne	a0, a1, 0x80002fd8 <.LBB1_45+0xc>
80002fd4: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80002fd8: 93 05 40 06  	addi	a1, zero, 100
80002fdc: 63 08 b5 0e  	beq	a0, a1, 0x800030cc <.LBB1_62+0x8>
80002fe0: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80002fe4: 13 06 90 06  	addi	a2, zero, 105
80002fe8: 63 02 c5 0e  	beq	a0, a2, 0x800030cc <.LBB1_62+0x8>
80002fec: 6f 00 80 0d  	j	0x800030c4 <.LBB1_62>

80002ff0 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80002ff0: 93 05 60 04  	addi	a1, zero, 70
80002ff4: 63 14 b5 00  	bne	a0, a1, 0x80002ffc <.LBB1_49+0xc>
80002ff8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80002ffc: 13 85 79 00  	addi	a0, s3, 7
80003000: 13 75 85 ff  	andi	a0, a0, -8
80003004: 07 35 05 00  	fld	fa0, 0(a0)
80003008: 93 09 85 00  	addi	s3, a0, 8
8000300c: 13 05 09 00  	mv	a0, s2
80003010: 93 05 0a 00  	mv	a1, s4
80003014: 13 86 0c 00  	mv	a2, s9
80003018: 93 86 0a 00  	mv	a3, s5
8000301c: 13 87 0b 00  	mv	a4, s7
80003020: 93 07 0b 00  	mv	a5, s6
80003024: 13 08 04 00  	mv	a6, s0
80003028: 97 10 00 00  	auipc	ra, 1
8000302c: e7 80 80 98  	jalr	-1656(ra)
80003030: 6f 00 00 7c  	j	0x800037f0 <.LBB1_124+0x2fc>

80003034 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003034: 83 25 81 01  	lw	a1, 24(sp)
80003038: 33 64 b4 00  	or	s0, s0, a1

8000303c <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
8000303c: 13 65 25 00  	ori	a0, a0, 2
80003040: 93 05 70 04  	addi	a1, zero, 71
80003044: 63 14 b5 00  	bne	a0, a1, 0x8000304c <.LBB1_53+0x10>
80003048: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000304c: 13 85 79 00  	addi	a0, s3, 7
80003050: 13 75 85 ff  	andi	a0, a0, -8
80003054: 07 35 05 00  	fld	fa0, 0(a0)
80003058: 93 09 85 00  	addi	s3, a0, 8
8000305c: 13 05 09 00  	mv	a0, s2
80003060: 93 05 0a 00  	mv	a1, s4
80003064: 13 86 0c 00  	mv	a2, s9
80003068: 93 86 0a 00  	mv	a3, s5
8000306c: 13 87 0b 00  	mv	a4, s7
80003070: 93 07 0b 00  	mv	a5, s6
80003074: 13 08 04 00  	mv	a6, s0
80003078: 97 10 00 00  	auipc	ra, 1
8000307c: e7 80 80 01  	jalr	24(ra)
80003080: 6f 00 00 77  	j	0x800037f0 <.LBB1_124+0x2fc>
80003084: 13 64 04 08  	ori	s0, s0, 128
80003088: 13 0d 1d 00  	addi	s10, s10, 1
8000308c: 6f f0 df f0  	j	0x80002f98 <.LBB1_42>
80003090: 13 64 04 10  	ori	s0, s0, 256
80003094: 13 0d 1d 00  	addi	s10, s10, 1
80003098: 6f f0 1f f0  	j	0x80002f98 <.LBB1_42>

8000309c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000309c: 13 8c 1c 00  	addi	s8, s9, 1
800030a0: 13 05 50 02  	addi	a0, zero, 37
800030a4: 6f 00 80 00  	j	0x800030ac <.LBB1_59+0x4>

800030a8 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800030a8: 13 8c 1c 00  	addi	s8, s9, 1
800030ac: 93 05 0a 00  	mv	a1, s4
800030b0: 13 86 0c 00  	mv	a2, s9
800030b4: 93 86 0a 00  	mv	a3, s5
800030b8: e7 00 09 00  	jalr	s2
800030bc: 6f 00 80 73  	j	0x800037f4 <.LBB1_124+0x300>

800030c0 <.LBB1_61>:
800030c0: 93 05 20 00  	addi	a1, zero, 2

800030c4 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800030c4: 13 74 34 ff  	andi	s0, s0, -13
800030c8: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800030cc: 93 75 04 40  	andi	a1, s0, 1024
800030d0: 63 84 05 00  	beqz	a1, 0x800030d8 <.LBB1_62+0x14>
800030d4: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800030d8: 93 05 90 06  	addi	a1, zero, 105
800030dc: 63 06 b5 00  	beq	a0, a1, 0x800030e8 <.LBB1_62+0x24>
800030e0: 93 05 40 06  	addi	a1, zero, 100
800030e4: 63 1c b5 12  	bne	a0, a1, 0x8000321c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800030e8: 13 75 04 20  	andi	a0, s0, 512
800030ec: 63 16 05 02  	bnez	a0, 0x80003118 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800030f0: 13 75 04 10  	andi	a0, s0, 256
800030f4: 63 1c 05 14  	bnez	a0, 0x8000324c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800030f8: 13 75 04 04  	andi	a0, s0, 64
800030fc: 63 18 05 4e  	bnez	a0, 0x800035ec <.LBB1_124+0xf8>
80003100: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003104: 93 75 04 08  	andi	a1, s0, 128
80003108: 63 84 05 4e  	beqz	a1, 0x800035f0 <.LBB1_124+0xfc>
8000310c: 13 15 08 01  	slli	a0, a6, 16
80003110: 13 58 05 41  	srai	a6, a0, 16
80003114: 6f 00 c0 4d  	j	0x800035f0 <.LBB1_124+0xfc>
80003118: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
8000311c: 13 85 79 00  	addi	a0, s3, 7
80003120: 13 75 85 ff  	andi	a0, a0, -8
80003124: 83 29 05 00  	lw	s3, 0(a0)
80003128: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
8000312c: 13 65 45 00  	ori	a0, a0, 4
80003130: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003134: 23 24 a1 00  	sw	a0, 8(sp)
80003138: 33 e5 a9 00  	or	a0, s3, a0
8000313c: 63 14 05 00  	bnez	a0, 0x80003144 <.LBB1_62+0x80>
80003140: 13 74 f4 fe  	andi	s0, s0, -17
80003144: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003148: 93 75 04 40  	andi	a1, s0, 1024
8000314c: 93 d5 a5 00  	srli	a1, a1, 10
80003150: 33 75 b5 00  	and	a0, a0, a1
80003154: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003158: 63 14 05 0a  	bnez	a0, 0x80003200 <.LBB1_62+0x13c>
8000315c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003160: 63 da 04 00  	bgez	s1, 0x80003174 <.LBB1_62+0xb0>
80003164: 33 35 30 01  	snez	a0, s3
80003168: b3 09 30 41  	neg	s3, s3
8000316c: 33 85 a4 00  	add	a0, s1, a0
80003170: b3 04 a0 40  	neg	s1, a0
80003174: 13 09 00 00  	mv	s2, zero
80003178: 13 75 04 02  	andi	a0, s0, 32
8000317c: 13 45 15 06  	xori	a0, a0, 97
80003180: 13 05 65 0f  	addi	a0, a0, 246
80003184: 23 2a a1 00  	sw	a0, 20(sp)
80003188: 6f 00 40 02  	j	0x800031ac <.LBB1_62+0xe8>
8000318c: 13 06 10 00  	addi	a2, zero, 1
80003190: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003194: 93 36 f9 01  	sltiu	a3, s2, 31
80003198: 33 f6 c6 00  	and	a2, a3, a2
8000319c: 13 89 07 00  	mv	s2, a5
800031a0: 93 09 05 00  	mv	s3, a0
800031a4: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800031a8: 63 0c 06 04  	beqz	a2, 0x80003200 <.LBB1_62+0x13c>
;       value /= base;
800031ac: 13 85 09 00  	mv	a0, s3
800031b0: 93 85 04 00  	mv	a1, s1
800031b4: 13 06 0c 00  	mv	a2, s8
800031b8: 93 06 00 00  	mv	a3, zero
800031bc: 97 d0 ff ff  	auipc	ra, 1048573
800031c0: e7 80 40 e4  	jalr	-444(ra)
800031c4: 33 06 85 03  	mul	a2, a0, s8
800031c8: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800031cc: 13 77 e6 0f  	andi	a4, a2, 254
800031d0: 93 06 00 03  	addi	a3, zero, 48
800031d4: 93 07 a0 00  	addi	a5, zero, 10
800031d8: 63 64 f7 00  	bltu	a4, a5, 0x800031e0 <.LBB1_62+0x11c>
800031dc: 83 26 41 01  	lw	a3, 20(sp)
800031e0: 33 86 c6 00  	add	a2, a3, a2
800031e4: 93 06 c1 01  	addi	a3, sp, 28
800031e8: b3 86 26 01  	add	a3, a3, s2
800031ec: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800031f0: e3 9e 04 f8  	bnez	s1, 0x8000318c <.LBB1_62+0xc8>
800031f4: 33 b6 89 01  	sltu	a2, s3, s8
800031f8: 13 46 16 00  	xori	a2, a2, 1
800031fc: 6f f0 5f f9  	j	0x80003190 <.LBB1_62+0xcc>
80003200: 03 25 41 00  	lw	a0, 4(sp)
80003204: 93 09 85 00  	addi	s3, a0, 8
80003208: 03 25 81 00  	lw	a0, 8(sp)
8000320c: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003210: 13 07 c1 01  	addi	a4, sp, 28
80003214: 03 29 c1 00  	lw	s2, 12(sp)
80003218: 6f 00 80 47  	j	0x80003690 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
8000321c: 13 75 04 20  	andi	a0, s0, 512
80003220: 63 12 05 0c  	bnez	a0, 0x800032e4 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003224: 13 75 04 10  	andi	a0, s0, 256
80003228: 63 1e 05 46  	bnez	a0, 0x800036a4 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000322c: 13 75 04 04  	andi	a0, s0, 64
80003230: 63 10 05 50  	bnez	a0, 0x80003730 <.LBB1_124+0x23c>
80003234: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003238: 93 75 04 08  	andi	a1, s0, 128
8000323c: 63 8c 05 4e  	beqz	a1, 0x80003734 <.LBB1_124+0x240>
80003240: 83 25 01 01  	lw	a1, 16(sp)
80003244: 33 75 b5 00  	and	a0, a0, a1
80003248: 6f 00 c0 4e  	j	0x80003734 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
8000324c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003250: 63 14 08 00  	bnez	a6, 0x80003258 <.LBB1_62+0x194>
80003254: 13 74 f4 fe  	andi	s0, s0, -17
80003258: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000325c: 13 76 04 40  	andi	a2, s0, 1024
80003260: 13 56 a6 00  	srli	a2, a2, 10
80003264: b3 f5 c5 00  	and	a1, a1, a2
80003268: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000326c: 63 9c 05 40  	bnez	a1, 0x80003684 <.LBB1_124+0x190>
80003270: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003274: 13 56 f8 41  	srai	a2, a6, 31
80003278: b3 06 c8 00  	add	a3, a6, a2
8000327c: b3 c6 c6 00  	xor	a3, a3, a2
80003280: 13 76 04 02  	andi	a2, s0, 32
80003284: 13 46 16 06  	xori	a2, a2, 97
80003288: 93 08 66 0f  	addi	a7, a2, 246
8000328c: 6f 00 40 03  	j	0x800032c0 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003290: 33 05 f6 00  	add	a0, a2, a5
80003294: 93 87 15 00  	addi	a5, a1, 1
80003298: 13 06 c1 01  	addi	a2, sp, 28
8000329c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800032a0: b3 b6 86 01  	sltu	a3, a3, s8
800032a4: 93 c6 16 00  	xori	a3, a3, 1
800032a8: 93 b5 f5 01  	sltiu	a1, a1, 31
800032ac: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800032b0: 23 00 a6 00  	sb	a0, 0(a2)
800032b4: 93 85 07 00  	mv	a1, a5
800032b8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800032bc: 63 84 04 3c  	beqz	s1, 0x80003684 <.LBB1_124+0x190>
;       value /= base;
800032c0: 33 d7 86 03  	divu	a4, a3, s8
800032c4: 33 06 87 03  	mul	a2, a4, s8
800032c8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800032cc: 13 f5 e7 0f  	andi	a0, a5, 254
800032d0: 13 06 00 03  	addi	a2, zero, 48
800032d4: 93 04 a0 00  	addi	s1, zero, 10
800032d8: e3 6c 95 fa  	bltu	a0, s1, 0x80003290 <.LBB1_62+0x1cc>
800032dc: 13 86 08 00  	mv	a2, a7
800032e0: 6f f0 1f fb  	j	0x80003290 <.LBB1_62+0x1cc>
800032e4: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800032e8: 13 85 79 00  	addi	a0, s3, 7
800032ec: 93 75 85 ff  	andi	a1, a0, -8
800032f0: 03 a9 05 00  	lw	s2, 0(a1)
800032f4: 13 e5 45 00  	ori	a0, a1, 4
800032f8: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800032fc: 33 65 39 01  	or	a0, s2, s3
80003300: 23 24 b1 00  	sw	a1, 8(sp)
80003304: 63 14 05 00  	bnez	a0, 0x8000330c <.LBB1_62+0x248>
80003308: 13 74 f4 fe  	andi	s0, s0, -17
8000330c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003310: 93 75 04 40  	andi	a1, s0, 1024
80003314: 93 d5 a5 00  	srli	a1, a1, 10
80003318: 33 75 b5 00  	and	a0, a0, a1
8000331c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003320: 63 18 05 08  	bnez	a0, 0x800033b0 <.LBB1_62+0x2ec>
80003324: 93 04 00 00  	mv	s1, zero
80003328: 13 75 04 02  	andi	a0, s0, 32
8000332c: 13 45 15 06  	xori	a0, a0, 97
80003330: 13 05 65 0f  	addi	a0, a0, 246
80003334: 23 2a a1 00  	sw	a0, 20(sp)
80003338: 6f 00 40 02  	j	0x8000335c <.LBB1_62+0x298>
8000333c: 13 06 10 00  	addi	a2, zero, 1
80003340: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003344: 93 b6 f4 01  	sltiu	a3, s1, 31
80003348: 33 f6 c6 00  	and	a2, a3, a2
8000334c: 93 84 07 00  	mv	s1, a5
80003350: 13 09 05 00  	mv	s2, a0
80003354: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003358: 63 0c 06 04  	beqz	a2, 0x800033b0 <.LBB1_62+0x2ec>
;       value /= base;
8000335c: 13 05 09 00  	mv	a0, s2
80003360: 93 85 09 00  	mv	a1, s3
80003364: 13 06 0c 00  	mv	a2, s8
80003368: 93 06 00 00  	mv	a3, zero
8000336c: 97 d0 ff ff  	auipc	ra, 1048573
80003370: e7 80 40 c9  	jalr	-876(ra)
80003374: 33 06 85 03  	mul	a2, a0, s8
80003378: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000337c: 13 77 e6 0f  	andi	a4, a2, 254
80003380: 93 06 00 03  	addi	a3, zero, 48
80003384: 93 07 a0 00  	addi	a5, zero, 10
80003388: 63 64 f7 00  	bltu	a4, a5, 0x80003390 <.LBB1_62+0x2cc>
8000338c: 83 26 41 01  	lw	a3, 20(sp)
80003390: 33 86 c6 00  	add	a2, a3, a2
80003394: 93 06 c1 01  	addi	a3, sp, 28
80003398: b3 86 96 00  	add	a3, a3, s1
8000339c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033a0: e3 9e 09 f8  	bnez	s3, 0x8000333c <.LBB1_62+0x278>
800033a4: 33 36 89 01  	sltu	a2, s2, s8
800033a8: 13 46 16 00  	xori	a2, a2, 1
800033ac: 6f f0 5f f9  	j	0x80003340 <.LBB1_62+0x27c>
800033b0: 03 25 81 00  	lw	a0, 8(sp)
800033b4: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800033b8: 13 07 c1 01  	addi	a4, sp, 28
800033bc: 03 29 c1 00  	lw	s2, 12(sp)
800033c0: 6f 00 40 40  	j	0x800037c4 <.LBB1_124+0x2d0>

800033c4 <.LBB1_108>:
800033c4: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800033c8: 13 79 24 00  	andi	s2, s0, 2
800033cc: 93 04 10 00  	addi	s1, zero, 1
800033d0: 63 1e 09 02  	bnez	s2, 0x8000340c <.LBB1_108+0x48>
800033d4: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800033d8: 63 6a 9b 02  	bltu	s6, s1, 0x8000340c <.LBB1_108+0x48>
800033dc: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800033e0: 13 0c fb ff  	addi	s8, s6, -1
800033e4: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800033e8: 33 86 8c 00  	add	a2, s9, s0
800033ec: 13 05 00 02  	addi	a0, zero, 32
800033f0: 93 05 0a 00  	mv	a1, s4
800033f4: 93 86 0a 00  	mv	a3, s5
800033f8: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800033fc: 13 04 14 00  	addi	s0, s0, 1
80003400: e3 14 8c fe  	bne	s8, s0, 0x800033e8 <.LBB1_108+0x24>
80003404: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003408: b3 8c 8c 00  	add	s9, s9, s0
8000340c: 03 c5 09 00  	lbu	a0, 0(s3)
80003410: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003414: 93 89 49 00  	addi	s3, s3, 4
80003418: 13 8c 1c 00  	addi	s8, s9, 1
8000341c: 93 05 0a 00  	mv	a1, s4
80003420: 13 86 0c 00  	mv	a2, s9
80003424: 93 86 0a 00  	mv	a3, s5
80003428: 13 89 0b 00  	mv	s2, s7
8000342c: e7 80 0b 00  	jalr	s7
80003430: 33 b5 64 01  	sltu	a0, s1, s6
80003434: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003438: 33 65 a4 00  	or	a0, s0, a0
8000343c: 63 1c 05 3a  	bnez	a0, 0x800037f4 <.LBB1_124+0x300>
;           while (l++ < width) {
80003440: 33 04 9b 40  	sub	s0, s6, s1
80003444: 93 0b e0 02  	addi	s7, zero, 46
80003448: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000344c: 13 0c 1c 00  	addi	s8, s8, 1
80003450: 13 05 00 02  	addi	a0, zero, 32
80003454: 93 05 0a 00  	mv	a1, s4
80003458: 93 86 0a 00  	mv	a3, s5
8000345c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003460: 13 04 f4 ff  	addi	s0, s0, -1
80003464: e3 12 04 fe  	bnez	s0, 0x80003448 <.LBB1_108+0x84>
80003468: 13 0b 50 02  	addi	s6, zero, 37
8000346c: 13 04 1d 00  	addi	s0, s10, 1
80003470: 6f f0 df 91  	j	0x80002d8c <.LBB1_183+0x30>

80003474 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003474: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003478: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
8000347c: 63 14 05 00  	bnez	a0, 0x80003484 <.LBB1_117+0x10>
80003480: 93 fe fe fe  	andi	t4, t4, -17
80003484: 93 04 a0 00  	addi	s1, zero, 10
80003488: 13 04 f0 00  	addi	s0, zero, 15
8000348c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003490: 13 f6 0e 40  	andi	a2, t4, 1024
80003494: 13 56 a6 00  	srli	a2, a2, 10
80003498: b3 f5 c5 00  	and	a1, a1, a2
8000349c: 93 07 00 00  	mv	a5, zero
800034a0: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800034a4: 63 98 05 10  	bnez	a1, 0x800035b4 <.LBB1_124+0xc0>
800034a8: 93 05 00 00  	mv	a1, zero
800034ac: 6f 00 40 03  	j	0x800034e0 <.LBB1_117+0x6c>
800034b0: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800034b4: 33 06 d6 00  	add	a2, a2, a3
800034b8: 93 87 15 00  	addi	a5, a1, 1
800034bc: 93 06 c1 01  	addi	a3, sp, 28
800034c0: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034c4: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800034c8: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034cc: 93 b5 f5 01  	sltiu	a1, a1, 31
800034d0: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800034d4: 23 80 c6 00  	sb	a2, 0(a3)
800034d8: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800034dc: 63 0c 07 0c  	beqz	a4, 0x800035b4 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800034e0: 93 76 e5 00  	andi	a3, a0, 14
800034e4: 13 06 00 03  	addi	a2, zero, 48
800034e8: e3 e4 96 fc  	bltu	a3, s1, 0x800034b0 <.LBB1_117+0x3c>
800034ec: 13 06 70 03  	addi	a2, zero, 55
800034f0: 6f f0 1f fc  	j	0x800034b0 <.LBB1_117+0x3c>

800034f4 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800034f4: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800034f8: 03 c5 07 00  	lbu	a0, 0(a5)
800034fc: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003500: 63 0c 05 02  	beqz	a0, 0x80003538 <.LBB1_124+0x44>
80003504: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003508: 63 84 0b 00  	beqz	s7, 0x80003510 <.LBB1_124+0x1c>
8000350c: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003510: 93 85 f5 ff  	addi	a1, a1, -1
80003514: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003518: 03 c7 16 00  	lbu	a4, 1(a3)
8000351c: 13 86 16 00  	addi	a2, a3, 1
80003520: b3 36 e0 00  	snez	a3, a4
80003524: 33 37 b0 00  	snez	a4, a1
80003528: 33 77 d7 00  	and	a4, a4, a3
8000352c: 93 85 f5 ff  	addi	a1, a1, -1
80003530: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003534: e3 12 07 fe  	bnez	a4, 0x80003518 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003538: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
8000353c: 93 75 04 40  	andi	a1, s0, 1024
80003540: 93 b4 15 00  	seqz	s1, a1
80003544: 23 2a c1 00  	sw	a2, 20(sp)
80003548: b3 35 76 01  	sltu	a1, a2, s7
8000354c: b3 e5 b4 00  	or	a1, s1, a1
80003550: 63 94 05 00  	bnez	a1, 0x80003558 <.LBB1_124+0x64>
80003554: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003558: 93 75 24 00  	andi	a1, s0, 2
8000355c: 23 26 b1 00  	sw	a1, 12(sp)
80003560: 63 96 05 2a  	bnez	a1, 0x8000380c <.LBB1_124+0x318>
80003564: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003568: 63 fe 65 29  	bgeu	a1, s6, 0x80003804 <.LBB1_124+0x310>
8000356c: 23 24 f1 00  	sw	a5, 8(sp)
80003570: 13 04 00 00  	mv	s0, zero
80003574: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003578: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
8000357c: 33 86 8c 00  	add	a2, s9, s0
80003580: 13 05 00 02  	addi	a0, zero, 32
80003584: 93 05 0a 00  	mv	a1, s4
80003588: 93 86 0a 00  	mv	a3, s5
8000358c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003590: 13 04 14 00  	addi	s0, s0, 1
80003594: e3 14 89 fe  	bne	s2, s0, 0x8000357c <.LBB1_124+0x88>
80003598: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000359c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800035a0: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800035a4: 23 2a b1 00  	sw	a1, 20(sp)
800035a8: b3 8c 8c 00  	add	s9, s9, s0
800035ac: 13 09 0c 00  	mv	s2, s8
800035b0: 6f 00 c0 25  	j	0x8000380c <.LBB1_124+0x318>
800035b4: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800035b8: 13 07 c1 01  	addi	a4, sp, 28
800035bc: 93 08 00 01  	addi	a7, zero, 16
800035c0: 13 0e 80 00  	addi	t3, zero, 8
800035c4: 13 05 09 00  	mv	a0, s2
800035c8: 93 05 0a 00  	mv	a1, s4
800035cc: 13 86 0c 00  	mv	a2, s9
800035d0: 93 86 0a 00  	mv	a3, s5
800035d4: 13 08 00 00  	mv	a6, zero
800035d8: 93 83 0b 00  	mv	t2, s7
800035dc: 97 10 00 00  	auipc	ra, 1
800035e0: e7 80 00 fa  	jalr	-96(ra)
800035e4: 13 0c 05 00  	mv	s8, a0
800035e8: 6f 00 00 21  	j	0x800037f8 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800035ec: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800035f0: 63 14 08 00  	bnez	a6, 0x800035f8 <.LBB1_124+0x104>
800035f4: 13 74 f4 fe  	andi	s0, s0, -17
800035f8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800035fc: 13 76 04 40  	andi	a2, s0, 1024
80003600: 13 56 a6 00  	srli	a2, a2, 10
80003604: b3 f5 c5 00  	and	a1, a1, a2
80003608: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000360c: 63 9c 05 06  	bnez	a1, 0x80003684 <.LBB1_124+0x190>
80003610: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003614: 13 56 f8 41  	srai	a2, a6, 31
80003618: b3 06 c8 00  	add	a3, a6, a2
8000361c: b3 c6 c6 00  	xor	a3, a3, a2
80003620: 13 76 04 02  	andi	a2, s0, 32
80003624: 13 46 16 06  	xori	a2, a2, 97
80003628: 93 08 66 0f  	addi	a7, a2, 246
8000362c: 6f 00 40 03  	j	0x80003660 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003630: 33 05 f6 00  	add	a0, a2, a5
80003634: 93 87 15 00  	addi	a5, a1, 1
80003638: 13 06 c1 01  	addi	a2, sp, 28
8000363c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003640: b3 b6 86 01  	sltu	a3, a3, s8
80003644: 93 c6 16 00  	xori	a3, a3, 1
80003648: 93 b5 f5 01  	sltiu	a1, a1, 31
8000364c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003650: 23 00 a6 00  	sb	a0, 0(a2)
80003654: 93 85 07 00  	mv	a1, a5
80003658: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000365c: 63 84 04 02  	beqz	s1, 0x80003684 <.LBB1_124+0x190>
;       value /= base;
80003660: 33 d7 86 03  	divu	a4, a3, s8
80003664: 33 06 87 03  	mul	a2, a4, s8
80003668: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000366c: 13 f5 e7 0f  	andi	a0, a5, 254
80003670: 13 06 00 03  	addi	a2, zero, 48
80003674: 93 04 a0 00  	addi	s1, zero, 10
80003678: e3 6c 95 fa  	bltu	a0, s1, 0x80003630 <.LBB1_124+0x13c>
8000367c: 13 86 08 00  	mv	a2, a7
80003680: 6f f0 1f fb  	j	0x80003630 <.LBB1_124+0x13c>
80003684: 93 89 49 00  	addi	s3, s3, 4
80003688: 13 58 f8 01  	srli	a6, a6, 31
8000368c: 13 07 c1 01  	addi	a4, sp, 28
80003690: 13 05 09 00  	mv	a0, s2
80003694: 93 05 0a 00  	mv	a1, s4
80003698: 13 86 0c 00  	mv	a2, s9
8000369c: 93 86 0a 00  	mv	a3, s5
800036a0: 6f 00 80 13  	j	0x800037d8 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800036a4: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800036a8: 63 14 05 00  	bnez	a0, 0x800036b0 <.LBB1_124+0x1bc>
800036ac: 13 74 f4 fe  	andi	s0, s0, -17
800036b0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800036b4: 13 76 04 40  	andi	a2, s0, 1024
800036b8: 13 56 a6 00  	srli	a2, a2, 10
800036bc: b3 f5 c5 00  	and	a1, a1, a2
800036c0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800036c4: 63 9c 05 0e  	bnez	a1, 0x800037bc <.LBB1_124+0x2c8>
800036c8: 13 06 00 00  	mv	a2, zero
800036cc: 93 75 04 02  	andi	a1, s0, 32
800036d0: 93 c5 15 06  	xori	a1, a1, 97
800036d4: 13 88 65 0f  	addi	a6, a1, 246
800036d8: 6f 00 40 03  	j	0x8000370c <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036dc: 33 87 e7 00  	add	a4, a5, a4
800036e0: 93 07 16 00  	addi	a5, a2, 1
800036e4: 93 05 c1 01  	addi	a1, sp, 28
800036e8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800036ec: 33 35 85 01  	sltu	a0, a0, s8
800036f0: 13 45 15 00  	xori	a0, a0, 1
800036f4: 13 36 f6 01  	sltiu	a2, a2, 31
800036f8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800036fc: 23 80 e4 00  	sb	a4, 0(s1)
80003700: 13 86 07 00  	mv	a2, a5
80003704: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003708: 63 8a 05 0a  	beqz	a1, 0x800037bc <.LBB1_124+0x2c8>
;       value /= base;
8000370c: b3 56 85 03  	divu	a3, a0, s8
80003710: 33 87 86 03  	mul	a4, a3, s8
80003714: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003718: 93 74 e7 0f  	andi	s1, a4, 254
8000371c: 93 07 00 03  	addi	a5, zero, 48
80003720: 93 05 a0 00  	addi	a1, zero, 10
80003724: e3 ec b4 fa  	bltu	s1, a1, 0x800036dc <.LBB1_124+0x1e8>
80003728: 93 07 08 00  	mv	a5, a6
8000372c: 6f f0 1f fb  	j	0x800036dc <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003730: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003734: 63 14 05 00  	bnez	a0, 0x8000373c <.LBB1_124+0x248>
80003738: 13 74 f4 fe  	andi	s0, s0, -17
8000373c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003740: 13 76 04 40  	andi	a2, s0, 1024
80003744: 13 56 a6 00  	srli	a2, a2, 10
80003748: b3 f5 c5 00  	and	a1, a1, a2
8000374c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003750: 63 96 05 06  	bnez	a1, 0x800037bc <.LBB1_124+0x2c8>
80003754: 13 06 00 00  	mv	a2, zero
80003758: 93 75 04 02  	andi	a1, s0, 32
8000375c: 93 c5 15 06  	xori	a1, a1, 97
80003760: 13 88 65 0f  	addi	a6, a1, 246
80003764: 6f 00 40 03  	j	0x80003798 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003768: 33 87 e7 00  	add	a4, a5, a4
8000376c: 93 07 16 00  	addi	a5, a2, 1
80003770: 93 05 c1 01  	addi	a1, sp, 28
80003774: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003778: 33 35 85 01  	sltu	a0, a0, s8
8000377c: 13 45 15 00  	xori	a0, a0, 1
80003780: 13 36 f6 01  	sltiu	a2, a2, 31
80003784: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003788: 23 80 e4 00  	sb	a4, 0(s1)
8000378c: 13 86 07 00  	mv	a2, a5
80003790: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003794: 63 84 05 02  	beqz	a1, 0x800037bc <.LBB1_124+0x2c8>
;       value /= base;
80003798: b3 56 85 03  	divu	a3, a0, s8
8000379c: 33 87 86 03  	mul	a4, a3, s8
800037a0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800037a4: 93 74 e7 0f  	andi	s1, a4, 254
800037a8: 93 07 00 03  	addi	a5, zero, 48
800037ac: 93 05 a0 00  	addi	a1, zero, 10
800037b0: e3 ec b4 fa  	bltu	s1, a1, 0x80003768 <.LBB1_124+0x274>
800037b4: 93 07 08 00  	mv	a5, a6
800037b8: 6f f0 1f fb  	j	0x80003768 <.LBB1_124+0x274>
800037bc: 93 89 49 00  	addi	s3, s3, 4
800037c0: 13 07 c1 01  	addi	a4, sp, 28
800037c4: 13 05 09 00  	mv	a0, s2
800037c8: 93 05 0a 00  	mv	a1, s4
800037cc: 13 86 0c 00  	mv	a2, s9
800037d0: 93 86 0a 00  	mv	a3, s5
800037d4: 13 08 00 00  	mv	a6, zero
800037d8: 93 08 0c 00  	mv	a7, s8
800037dc: 93 83 0b 00  	mv	t2, s7
800037e0: 13 0e 0b 00  	mv	t3, s6
800037e4: 93 0e 04 00  	mv	t4, s0
800037e8: 97 10 00 00  	auipc	ra, 1
800037ec: e7 80 40 d9  	jalr	-620(ra)
800037f0: 13 0c 05 00  	mv	s8, a0
800037f4: 13 0b 50 02  	addi	s6, zero, 37
800037f8: 93 0b e0 02  	addi	s7, zero, 46
800037fc: 13 04 1d 00  	addi	s0, s10, 1
80003800: 6f f0 cf d8  	j	0x80002d8c <.LBB1_183+0x30>
80003804: 93 85 15 00  	addi	a1, a1, 1
80003808: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000380c: 63 00 05 04  	beqz	a0, 0x8000384c <.LBB1_124+0x358>
80003810: 13 84 17 00  	addi	s0, a5, 1
80003814: 6f 00 00 03  	j	0x80003844 <.LBB1_124+0x350>
80003818: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
8000381c: 13 8c 1c 00  	addi	s8, s9, 1
80003820: 13 75 f5 0f  	andi	a0, a0, 255
80003824: 93 05 0a 00  	mv	a1, s4
80003828: 13 86 0c 00  	mv	a2, s9
8000382c: 93 86 0a 00  	mv	a3, s5
80003830: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003834: 03 45 04 00  	lbu	a0, 0(s0)
80003838: 13 04 14 00  	addi	s0, s0, 1
8000383c: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003840: 63 08 05 00  	beqz	a0, 0x80003850 <.LBB1_124+0x35c>
80003844: e3 9c 04 fc  	bnez	s1, 0x8000381c <.LBB1_124+0x328>
80003848: e3 98 0b fc  	bnez	s7, 0x80003818 <.LBB1_124+0x324>
8000384c: 13 8c 0c 00  	mv	s8, s9
80003850: 03 25 c1 00  	lw	a0, 12(sp)
80003854: 13 35 15 00  	seqz	a0, a0
80003858: 03 26 41 01  	lw	a2, 20(sp)
8000385c: b3 35 66 01  	sltu	a1, a2, s6
80003860: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80003864: 33 65 b5 00  	or	a0, a0, a1
80003868: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
8000386c: e3 14 05 f8  	bnez	a0, 0x800037f4 <.LBB1_124+0x300>
;           while (l++ < width) {
80003870: 33 04 cb 40  	sub	s0, s6, a2
80003874: 93 0b e0 02  	addi	s7, zero, 46
80003878: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000387c: 13 0c 1c 00  	addi	s8, s8, 1
80003880: 13 05 00 02  	addi	a0, zero, 32
80003884: 93 05 0a 00  	mv	a1, s4
80003888: 93 86 0a 00  	mv	a3, s5
8000388c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003890: 13 04 f4 ff  	addi	s0, s0, -1
80003894: e3 12 04 fe  	bnez	s0, 0x80003878 <.LBB1_124+0x384>
80003898: 13 0b 50 02  	addi	s6, zero, 37
8000389c: 13 04 1d 00  	addi	s0, s10, 1
800038a0: 6f f0 cf ce  	j	0x80002d8c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800038a4: 13 86 0c 00  	mv	a2, s9
800038a8: 63 e4 5c 01  	bltu	s9, s5, 0x800038b0 <.LBB1_124+0x3bc>
800038ac: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800038b0: 13 05 00 00  	mv	a0, zero
800038b4: 93 05 0a 00  	mv	a1, s4
800038b8: 93 86 0a 00  	mv	a3, s5
800038bc: e7 00 09 00  	jalr	s2
;   return (int)idx;
800038c0: 13 85 0c 00  	mv	a0, s9
800038c4: 83 2d c1 03  	lw	s11, 60(sp)
800038c8: 03 2d 01 04  	lw	s10, 64(sp)
800038cc: 83 2c 41 04  	lw	s9, 68(sp)
800038d0: 03 2c 81 04  	lw	s8, 72(sp)
800038d4: 83 2b c1 04  	lw	s7, 76(sp)
800038d8: 03 2b 01 05  	lw	s6, 80(sp)
800038dc: 83 2a 41 05  	lw	s5, 84(sp)
800038e0: 03 2a 81 05  	lw	s4, 88(sp)
800038e4: 83 29 c1 05  	lw	s3, 92(sp)
800038e8: 03 29 01 06  	lw	s2, 96(sp)
800038ec: 83 24 41 06  	lw	s1, 100(sp)
800038f0: 03 24 81 06  	lw	s0, 104(sp)
800038f4: 83 20 c1 06  	lw	ra, 108(sp)
800038f8: 13 01 01 07  	addi	sp, sp, 112
800038fc: 67 80 00 00  	ret

80003900 <_out_char.llvm.1805434900161566649>:
;   if (character) {
80003900: 63 04 05 0a  	beqz	a0, 0x800039a8 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003904: f3 25 40 f1  	csrr	a1, mhartid
80003908: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
8000390c: 33 86 c5 02  	mul	a2, a1, a2

80003910 <.LBB2_6>:
80003910: 97 26 00 00  	auipc	a3, 2
80003914: 93 86 46 a7  	addi	a3, a3, -1420
80003918: b3 05 d6 00  	add	a1, a2, a3
8000391c: 03 a7 05 00  	lw	a4, 0(a1)
80003920: 93 07 17 00  	addi	a5, a4, 1
80003924: 23 a0 f5 00  	sw	a5, 0(a1)
80003928: 33 87 e5 00  	add	a4, a1, a4
8000392c: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80003930: 03 a7 05 00  	lw	a4, 0(a1)
80003934: 13 07 47 c0  	addi	a4, a4, -1020
80003938: 33 37 e0 00  	snez	a4, a4
8000393c: 13 05 65 ff  	addi	a0, a0, -10
80003940: 33 35 a0 00  	snez	a0, a0
80003944: 33 75 e5 00  	and	a0, a0, a4
80003948: 63 10 05 06  	bnez	a0, 0x800039a8 <.LBB2_8+0x18>
8000394c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80003950: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003954: 23 26 05 00  	sw	zero, 12(a0)
80003958: 93 06 00 04  	addi	a3, zero, 64
8000395c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80003960: 23 2a 05 00  	sw	zero, 20(a0)
80003964: 93 06 10 00  	addi	a3, zero, 1
80003968: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
8000396c: 23 2e 05 00  	sw	zero, 28(a0)
80003970: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80003974: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80003978: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000397c: 23 22 05 02  	sw	zero, 36(a0)
80003980: 23 20 c5 02  	sw	a2, 32(a0)

80003984 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80003984: 17 25 00 00  	auipc	a0, 2
80003988: 13 05 c5 8b  	addi	a0, a0, -1860
8000398c: 23 20 d5 00  	sw	a3, 0(a0)

80003990 <.LBB2_8>:
80003990: 17 25 00 00  	auipc	a0, 2
80003994: 13 05 05 8f  	addi	a0, a0, -1808
;         while (fromhost == 0)
80003998: 03 26 05 00  	lw	a2, 0(a0)
8000399c: e3 0e 06 fe  	beqz	a2, 0x80003998 <.LBB2_8+0x8>
;         fromhost = 0;
800039a0: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800039a4: 23 a0 05 00  	sw	zero, 0(a1)
; }
800039a8: 67 80 00 00  	ret

800039ac <_out_null>:
; }
800039ac: 67 80 00 00  	ret

800039b0 <_ftoa>:
; {
800039b0: 13 01 01 f9  	addi	sp, sp, -112
800039b4: 23 26 11 06  	sw	ra, 108(sp)
800039b8: 23 24 81 06  	sw	s0, 104(sp)
800039bc: 23 22 91 06  	sw	s1, 100(sp)
800039c0: 23 20 21 07  	sw	s2, 96(sp)
800039c4: 23 2e 31 05  	sw	s3, 92(sp)
800039c8: 23 2c 41 05  	sw	s4, 88(sp)
800039cc: 23 2a 51 05  	sw	s5, 84(sp)
800039d0: 23 28 61 05  	sw	s6, 80(sp)
800039d4: 23 26 71 05  	sw	s7, 76(sp)
800039d8: 23 24 81 05  	sw	s8, 72(sp)
800039dc: 23 22 91 05  	sw	s9, 68(sp)
800039e0: 23 20 a1 05  	sw	s10, 64(sp)
800039e4: 27 3c 81 02  	fsd	fs0, 56(sp)
800039e8: 27 38 91 02  	fsd	fs1, 48(sp)
800039ec: 27 34 21 03  	fsd	fs2, 40(sp)

800039f0 <.LBB4_83>:
800039f0: 97 24 00 00  	auipc	s1, 2
800039f4: 93 84 84 8e  	addi	s1, s1, -1816
800039f8: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800039fc: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80003a00: 93 0a 08 00  	mv	s5, a6
80003a04: 13 89 07 00  	mv	s2, a5
80003a08: 93 89 06 00  	mv	s3, a3
80003a0c: 13 0a 06 00  	mv	s4, a2
80003a10: 13 8b 05 00  	mv	s6, a1
80003a14: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80003a18: 63 98 04 0e  	bnez	s1, 0x80003b08 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003a1c: 13 f5 2a 00  	andi	a0, s5, 2
80003a20: 93 f5 3a 00  	andi	a1, s5, 3
80003a24: b3 35 b0 00  	snez	a1, a1
80003a28: 13 36 59 00  	sltiu	a2, s2, 5
80003a2c: b3 65 b6 00  	or	a1, a2, a1
80003a30: 93 5c 15 00  	srli	s9, a0, 1
80003a34: 13 04 0a 00  	mv	s0, s4
80003a38: 63 96 05 02  	bnez	a1, 0x80003a64 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80003a3c: 93 04 c9 ff  	addi	s1, s2, -4
80003a40: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003a44: 13 04 16 00  	addi	s0, a2, 1
80003a48: 13 05 00 02  	addi	a0, zero, 32
80003a4c: 93 05 0b 00  	mv	a1, s6
80003a50: 93 86 09 00  	mv	a3, s3
80003a54: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003a58: 93 84 f4 ff  	addi	s1, s1, -1
80003a5c: 13 06 04 00  	mv	a2, s0
80003a60: e3 92 04 fe  	bnez	s1, 0x80003a44 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80003a64: 93 04 14 00  	addi	s1, s0, 1
80003a68: 13 05 d0 02  	addi	a0, zero, 45
80003a6c: 93 05 0b 00  	mv	a1, s6
80003a70: 13 06 04 00  	mv	a2, s0
80003a74: 93 86 09 00  	mv	a3, s3
80003a78: e7 80 0b 00  	jalr	s7
80003a7c: 93 0a 24 00  	addi	s5, s0, 2
80003a80: 13 05 90 06  	addi	a0, zero, 105
80003a84: 93 05 0b 00  	mv	a1, s6
80003a88: 13 86 04 00  	mv	a2, s1
80003a8c: 93 86 09 00  	mv	a3, s3
80003a90: e7 80 0b 00  	jalr	s7
80003a94: 13 0c 34 00  	addi	s8, s0, 3
80003a98: 13 05 e0 06  	addi	a0, zero, 110
80003a9c: 93 05 0b 00  	mv	a1, s6
80003aa0: 13 86 0a 00  	mv	a2, s5
80003aa4: 93 86 09 00  	mv	a3, s3
80003aa8: e7 80 0b 00  	jalr	s7
80003aac: 93 04 44 00  	addi	s1, s0, 4
80003ab0: 13 05 60 06  	addi	a0, zero, 102
80003ab4: 93 05 0b 00  	mv	a1, s6
80003ab8: 13 06 0c 00  	mv	a2, s8
80003abc: 93 86 09 00  	mv	a3, s3
80003ac0: e7 80 0b 00  	jalr	s7
80003ac4: 33 85 44 41  	sub	a0, s1, s4
80003ac8: 33 35 25 01  	sltu	a0, a0, s2
80003acc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003ad0: 93 c5 1c 00  	xori	a1, s9, 1
80003ad4: 33 e5 a5 00  	or	a0, a1, a0
80003ad8: 63 16 05 56  	bnez	a0, 0x80004044 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003adc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003ae0: 13 84 14 00  	addi	s0, s1, 1
80003ae4: 13 05 00 02  	addi	a0, zero, 32
80003ae8: 93 05 0b 00  	mv	a1, s6
80003aec: 13 86 04 00  	mv	a2, s1
80003af0: 93 86 09 00  	mv	a3, s3
80003af4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003af8: 33 05 8a 00  	add	a0, s4, s0
80003afc: 93 04 04 00  	mv	s1, s0
80003b00: e3 60 25 ff  	bltu	a0, s2, 0x80003ae0 <.LBB4_83+0xf0>
80003b04: 6f 00 40 54  	j	0x80004048 <.LBB4_90+0x378>
80003b08: 53 04 a5 22  	fmv.d	fs0, fa0

80003b0c <.LBB4_84>:
80003b0c: 17 15 00 00  	auipc	a0, 1
80003b10: 13 05 45 7d  	addi	a0, a0, 2004
80003b14: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80003b18: 53 05 05 a2  	fle.d	a0, fa0, ft0
80003b1c: 63 1e 05 00  	bnez	a0, 0x80003b38 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003b20: 93 f5 4a 00  	andi	a1, s5, 4
80003b24: 13 b5 15 00  	seqz	a0, a1
80003b28: 63 82 05 06  	beqz	a1, 0x80003b8c <.LBB4_88>

80003b2c <.LBB4_85>:
80003b2c: 17 1c 00 00  	auipc	s8, 1
80003b30: 13 0c 4c 4b  	addi	s8, s8, 1204
80003b34: 6f 00 00 06  	j	0x80003b94 <.LBB4_88+0x8>

80003b38 <.LBB4_86>:
80003b38: 17 15 00 00  	auipc	a0, 1
80003b3c: 13 05 05 7b  	addi	a0, a0, 1968
80003b40: 07 30 05 00  	fld	ft0, 0(a0)

80003b44 <.LBB4_87>:
80003b44: 17 15 00 00  	auipc	a0, 1
80003b48: 13 05 c5 7a  	addi	a0, a0, 1964
80003b4c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80003b50: 53 05 04 a2  	fle.d	a0, fs0, ft0
80003b54: d3 85 80 a2  	fle.d	a1, ft1, fs0
80003b58: 33 75 b5 00  	and	a0, a0, a1
80003b5c: 63 1e 05 0e  	bnez	a0, 0x80003c58 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80003b60: 13 85 0b 00  	mv	a0, s7
80003b64: 93 05 0b 00  	mv	a1, s6
80003b68: 13 06 0a 00  	mv	a2, s4
80003b6c: 93 86 09 00  	mv	a3, s3
80003b70: 53 05 84 22  	fmv.d	fa0, fs0
80003b74: 93 07 09 00  	mv	a5, s2
80003b78: 13 88 0a 00  	mv	a6, s5
80003b7c: 97 00 00 00  	auipc	ra, 0
80003b80: e7 80 40 51  	jalr	1300(ra)
80003b84: 13 04 05 00  	mv	s0, a0
80003b88: 6f 00 00 4c  	j	0x80004048 <.LBB4_90+0x378>

80003b8c <.LBB4_88>:
80003b8c: 17 1c 00 00  	auipc	s8, 1
80003b90: 13 0c 3c 47  	addi	s8, s8, 1139
80003b94: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80003b98: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003b9c: 13 f5 3a 00  	andi	a0, s5, 3
80003ba0: 33 35 a0 00  	snez	a0, a0
80003ba4: b3 b5 2c 01  	sltu	a1, s9, s2
80003ba8: 93 c5 15 00  	xori	a1, a1, 1
80003bac: 33 65 b5 00  	or	a0, a0, a1
80003bb0: 93 fa 2a 00  	andi	s5, s5, 2
80003bb4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003bb8: 63 16 05 02  	bnez	a0, 0x80003be4 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80003bbc: 33 04 99 41  	sub	s0, s2, s9
80003bc0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003bc4: 93 04 16 00  	addi	s1, a2, 1
80003bc8: 13 05 00 02  	addi	a0, zero, 32
80003bcc: 93 05 0b 00  	mv	a1, s6
80003bd0: 93 86 09 00  	mv	a3, s3
80003bd4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003bd8: 13 04 f4 ff  	addi	s0, s0, -1
80003bdc: 13 86 04 00  	mv	a2, s1
80003be0: e3 12 04 fe  	bnez	s0, 0x80003bc4 <.LBB4_88+0x38>
80003be4: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003be8: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80003bec: 33 05 9c 01  	add	a0, s8, s9
80003bf0: 03 45 05 00  	lbu	a0, 0(a0)
80003bf4: 13 86 04 00  	mv	a2, s1
80003bf8: 13 84 fc ff  	addi	s0, s9, -1
80003bfc: 93 84 14 00  	addi	s1, s1, 1
80003c00: 93 05 0b 00  	mv	a1, s6
80003c04: 93 86 09 00  	mv	a3, s3
80003c08: e7 80 0b 00  	jalr	s7
80003c0c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80003c10: e3 1e 04 fc  	bnez	s0, 0x80003bec <.LBB4_88+0x60>
80003c14: 33 85 44 41  	sub	a0, s1, s4
80003c18: 33 35 25 01  	sltu	a0, a0, s2
80003c1c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80003c20: 93 c5 1a 00  	xori	a1, s5, 1
80003c24: 33 e5 a5 00  	or	a0, a1, a0
80003c28: 63 1e 05 40  	bnez	a0, 0x80004044 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80003c2c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80003c30: 13 84 14 00  	addi	s0, s1, 1
80003c34: 13 05 00 02  	addi	a0, zero, 32
80003c38: 93 05 0b 00  	mv	a1, s6
80003c3c: 13 86 04 00  	mv	a2, s1
80003c40: 93 86 09 00  	mv	a3, s3
80003c44: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80003c48: 33 05 8a 00  	add	a0, s4, s0
80003c4c: 93 04 04 00  	mv	s1, s0
80003c50: e3 60 25 ff  	bltu	a0, s2, 0x80003c30 <.LBB4_88+0xa4>
80003c54: 6f 00 40 3f  	j	0x80004048 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80003c58: 13 f5 0a 40  	andi	a0, s5, 1024
80003c5c: 13 0c 60 00  	addi	s8, zero, 6
80003c60: 63 04 05 00  	beqz	a0, 0x80003c68 <.LBB4_88+0xdc>
80003c64: 13 0c 07 00  	mv	s8, a4
80003c68: 13 05 a0 00  	addi	a0, zero, 10
80003c6c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003c70: 63 6c ac 02  	bltu	s8, a0, 0x80003ca8 <.LBB4_88+0x11c>
80003c74: 93 04 6c ff  	addi	s1, s8, -10
80003c78: 13 05 f0 01  	addi	a0, zero, 31
80003c7c: 63 e4 a4 00  	bltu	s1, a0, 0x80003c84 <.LBB4_88+0xf8>
80003c80: 93 04 f0 01  	addi	s1, zero, 31
80003c84: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80003c88: 13 05 81 00  	addi	a0, sp, 8
80003c8c: 93 05 00 03  	addi	a1, zero, 48
80003c90: 13 06 04 00  	mv	a2, s0
80003c94: 97 d0 ff ff  	auipc	ra, 1048573
80003c98: e7 80 40 8c  	jalr	-1852(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80003c9c: 13 c5 f4 ff  	not	a0, s1
80003ca0: 33 0c ac 00  	add	s8, s8, a0
80003ca4: 6f 00 80 00  	j	0x80003cac <.LBB4_88+0x120>
80003ca8: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80003cac: 13 15 3c 00  	slli	a0, s8, 3

80003cb0 <.LBB4_89>:
80003cb0: 97 15 00 00  	auipc	a1, 1
80003cb4: 93 85 05 51  	addi	a1, a1, 1296
80003cb8: 33 05 b5 00  	add	a0, a0, a1
80003cbc: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80003cc0: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80003cc4: 53 80 04 d2  	fcvt.d.w	ft0, s1
80003cc8: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80003ccc: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80003cd0 <.LBB4_90>:
80003cd0: 17 15 00 00  	auipc	a0, 1
80003cd4: 13 05 85 62  	addi	a0, a0, 1576
80003cd8: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80003cdc: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80003ce0: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80003ce4: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80003ce8: d3 05 01 a2  	fle.d	a1, ft2, ft0
80003cec: 63 90 05 02  	bnez	a1, 0x80003d0c <.LBB4_90+0x3c>
;     ++frac;
80003cf0: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80003cf4: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80003cf8: d3 15 11 a2  	flt.d	a1, ft2, ft1
80003cfc: 63 94 05 02  	bnez	a1, 0x80003d24 <.LBB4_90+0x54>
80003d00: 13 05 00 00  	mv	a0, zero
;       ++whole;
80003d04: 93 84 14 00  	addi	s1, s1, 1
80003d08: 6f 00 c0 01  	j	0x80003d24 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80003d0c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80003d10: 63 9a 05 00  	bnez	a1, 0x80003d24 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80003d14: 93 35 15 00  	seqz	a1, a0
80003d18: 13 76 15 00  	andi	a2, a0, 1
80003d1c: b3 65 b6 00  	or	a1, a2, a1
80003d20: 33 85 a5 00  	add	a0, a1, a0
80003d24: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80003d28: 63 0c 0c 0c  	beqz	s8, 0x80003e00 <.LBB4_90+0x130>
80003d2c: 13 06 00 00  	mv	a2, zero
80003d30: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003d34: 33 83 85 00  	add	t1, a1, s0
80003d38: 93 02 00 02  	addi	t0, zero, 32
80003d3c: 33 87 82 40  	sub	a4, t0, s0
80003d40: b7 d5 cc cc  	lui	a1, 838861
80003d44: 93 83 d5 cc  	addi	t2, a1, -819
80003d48: 13 08 a0 00  	addi	a6, zero, 10
80003d4c: 93 08 90 00  	addi	a7, zero, 9
80003d50: 63 04 c7 0c  	beq	a4, a2, 0x80003e18 <.LBB4_90+0x148>
80003d54: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80003d58: 33 35 75 02  	mulhu	a0, a0, t2
80003d5c: 13 55 35 00  	srli	a0, a0, 3
80003d60: b3 06 05 03  	mul	a3, a0, a6
80003d64: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80003d68: 93 e6 06 03  	ori	a3, a3, 48
80003d6c: b3 07 c3 00  	add	a5, t1, a2
80003d70: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80003d74: 13 06 16 00  	addi	a2, a2, 1
80003d78: e3 ec b8 fc  	bltu	a7, a1, 0x80003d50 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003d7c: 33 05 c4 00  	add	a0, s0, a2
80003d80: 93 05 f5 ff  	addi	a1, a0, -1
80003d84: 93 06 e0 01  	addi	a3, zero, 30
80003d88: b3 b6 b6 00  	sltu	a3, a3, a1
80003d8c: 33 47 cc 00  	xor	a4, s8, a2
80003d90: 13 37 17 00  	seqz	a4, a4
80003d94: b3 e6 e6 00  	or	a3, a3, a4
80003d98: 63 94 06 08  	bnez	a3, 0x80003e20 <.LBB4_90+0x150>
80003d9c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003da0: 33 05 85 00  	add	a0, a0, s0
80003da4: 93 45 f6 ff  	not	a1, a2
80003da8: 33 8c 85 01  	add	s8, a1, s8
80003dac: 33 04 c4 00  	add	s0, s0, a2
80003db0: 93 05 f0 01  	addi	a1, zero, 31
80003db4: b3 86 85 40  	sub	a3, a1, s0
80003db8: 33 05 c5 00  	add	a0, a0, a2
80003dbc: 93 05 0c 00  	mv	a1, s8
80003dc0: 63 64 dc 00  	bltu	s8, a3, 0x80003dc8 <.LBB4_90+0xf8>
80003dc4: 93 85 06 00  	mv	a1, a3
80003dc8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003dcc: 93 05 00 03  	addi	a1, zero, 48
80003dd0: 97 c0 ff ff  	auipc	ra, 1048572
80003dd4: e7 80 80 78  	jalr	1928(ra)
80003dd8: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80003ddc: b3 05 a4 00  	add	a1, s0, a0
80003de0: 93 b5 f5 01  	sltiu	a1, a1, 31
80003de4: 33 46 ac 00  	xor	a2, s8, a0
80003de8: 33 36 c0 00  	snez	a2, a2
80003dec: 33 f6 c5 00  	and	a2, a1, a2
80003df0: 13 05 15 00  	addi	a0, a0, 1
80003df4: e3 14 06 fe  	bnez	a2, 0x80003ddc <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003df8: 33 05 a4 00  	add	a0, s0, a0
80003dfc: 6f 00 80 02  	j	0x80003e24 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80003e00: d3 80 04 d2  	fcvt.d.w	ft1, s1
80003e04: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003e08: 53 05 10 a2  	fle.d	a0, ft0, ft1
80003e0c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80003e10: b3 84 a4 00  	add	s1, s1, a0
80003e14: 6f 00 c0 03  	j	0x80003e50 <.LBB4_90+0x180>
80003e18: 13 04 00 02  	addi	s0, zero, 32
80003e1c: 6f 00 80 03  	j	0x80003e54 <.LBB4_90+0x184>
80003e20: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003e24: 63 8e 05 00  	beqz	a1, 0x80003e40 <.LBB4_90+0x170>
;       buf[len++] = '.';
80003e28: 13 04 15 00  	addi	s0, a0, 1
80003e2c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80003e30: 33 85 a5 00  	add	a0, a1, a0
80003e34: 93 05 e0 02  	addi	a1, zero, 46
80003e38: 23 00 b5 00  	sb	a1, 0(a0)
80003e3c: 6f 00 80 00  	j	0x80003e44 <.LBB4_90+0x174>
80003e40: 13 04 05 00  	mv	s0, a0
80003e44: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003e48: 93 02 04 00  	mv	t0, s0
80003e4c: 63 64 85 00  	bltu	a0, s0, 0x80003e54 <.LBB4_90+0x184>
80003e50: 93 02 00 02  	addi	t0, zero, 32
80003e54: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80003e58: 37 65 66 66  	lui	a0, 419430
80003e5c: 93 05 75 66  	addi	a1, a0, 1639
80003e60: 13 08 a0 00  	addi	a6, zero, 10
80003e64: 93 06 81 00  	addi	a3, sp, 8
80003e68: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80003e6c: 63 80 82 04  	beq	t0, s0, 0x80003eac <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80003e70: 33 95 b4 02  	mulh	a0, s1, a1
80003e74: 93 57 f5 01  	srli	a5, a0, 31
80003e78: 13 55 25 40  	srai	a0, a0, 2
80003e7c: 33 05 f5 00  	add	a0, a0, a5
80003e80: b3 07 05 03  	mul	a5, a0, a6
80003e84: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80003e88: 93 87 07 03  	addi	a5, a5, 48
80003e8c: 13 0c 14 00  	addi	s8, s0, 1
80003e90: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80003e94: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80003e98: 23 00 f4 00  	sb	a5, 0(s0)
80003e9c: 13 04 0c 00  	mv	s0, s8
80003ea0: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80003ea4: e3 64 c7 fc  	bltu	a4, a2, 0x80003e6c <.LBB4_90+0x19c>
80003ea8: 6f 00 80 00  	j	0x80003eb0 <.LBB4_90+0x1e0>
80003eac: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80003eb0: 93 f4 3a 00  	andi	s1, s5, 3
80003eb4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80003eb8: 63 96 a4 06  	bne	s1, a0, 0x80003f24 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003ebc: 63 0c 09 00  	beqz	s2, 0x80003ed4 <.LBB4_90+0x204>
80003ec0: 13 f5 ca 00  	andi	a0, s5, 12
80003ec4: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003ec8: 33 e5 ac 00  	or	a0, s9, a0
80003ecc: 33 09 a9 40  	sub	s2, s2, a0
80003ed0: 6f 00 80 00  	j	0x80003ed8 <.LBB4_90+0x208>
80003ed4: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003ed8: 33 35 2c 01  	sltu	a0, s8, s2
80003edc: 93 45 15 00  	xori	a1, a0, 1
80003ee0: 13 05 f0 01  	addi	a0, zero, 31
80003ee4: 33 36 85 01  	sltu	a2, a0, s8
80003ee8: b3 65 b6 00  	or	a1, a2, a1
80003eec: 63 9c 05 02  	bnez	a1, 0x80003f24 <.LBB4_90+0x254>
80003ef0: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003ef4: 93 45 fc ff  	not	a1, s8
80003ef8: b3 05 b9 00  	add	a1, s2, a1
80003efc: 33 06 85 41  	sub	a2, a0, s8
80003f00: 33 85 86 01  	add	a0, a3, s8
80003f04: 63 e4 c5 00  	bltu	a1, a2, 0x80003f0c <.LBB4_90+0x23c>
80003f08: 93 05 06 00  	mv	a1, a2
80003f0c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80003f10: 93 05 00 03  	addi	a1, zero, 48
80003f14: 13 06 04 00  	mv	a2, s0
80003f18: 97 c0 ff ff  	auipc	ra, 1048572
80003f1c: e7 80 00 64  	jalr	1600(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80003f20: 33 0c 84 01  	add	s8, s0, s8
80003f24: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80003f28: 63 6a 85 05  	bltu	a0, s8, 0x80003f7c <.LBB4_90+0x2ac>
;     if (negative) {
80003f2c: 63 8c 0c 00  	beqz	s9, 0x80003f44 <.LBB4_90+0x274>
80003f30: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80003f34: 33 05 85 01  	add	a0, a0, s8
80003f38: 13 0c 1c 00  	addi	s8, s8, 1
80003f3c: 93 05 d0 02  	addi	a1, zero, 45
80003f40: 6f 00 80 03  	j	0x80003f78 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80003f44: 13 f5 4a 00  	andi	a0, s5, 4
80003f48: 63 10 05 02  	bnez	a0, 0x80003f68 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80003f4c: 13 f5 8a 00  	andi	a0, s5, 8
80003f50: 63 06 05 02  	beqz	a0, 0x80003f7c <.LBB4_90+0x2ac>
80003f54: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80003f58: 33 05 85 01  	add	a0, a0, s8
80003f5c: 13 0c 1c 00  	addi	s8, s8, 1
80003f60: 93 05 00 02  	addi	a1, zero, 32
80003f64: 6f 00 40 01  	j	0x80003f78 <.LBB4_90+0x2a8>
80003f68: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003f6c: 33 05 85 01  	add	a0, a0, s8
80003f70: 13 0c 1c 00  	addi	s8, s8, 1
80003f74: 93 05 b0 02  	addi	a1, zero, 43
80003f78: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003f7c: 33 35 90 00  	snez	a0, s1
80003f80: b3 35 2c 01  	sltu	a1, s8, s2
80003f84: 93 c5 15 00  	xori	a1, a1, 1
80003f88: 33 65 b5 00  	or	a0, a0, a1
80003f8c: 93 fa 2a 00  	andi	s5, s5, 2
80003f90: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003f94: 63 16 05 02  	bnez	a0, 0x80003fc0 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80003f98: b3 04 89 41  	sub	s1, s2, s8
80003f9c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80003fa0: 13 04 16 00  	addi	s0, a2, 1
80003fa4: 13 05 00 02  	addi	a0, zero, 32
80003fa8: 93 05 0b 00  	mv	a1, s6
80003fac: 93 86 09 00  	mv	a3, s3
80003fb0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80003fb4: 93 84 f4 ff  	addi	s1, s1, -1
80003fb8: 13 06 04 00  	mv	a2, s0
80003fbc: e3 92 04 fe  	bnez	s1, 0x80003fa0 <.LBB4_90+0x2d0>
80003fc0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80003fc4: 63 0c 0c 02  	beqz	s8, 0x80003ffc <.LBB4_90+0x32c>
80003fc8: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80003fcc: 33 85 8c 01  	add	a0, s9, s8
80003fd0: 03 45 05 00  	lbu	a0, 0(a0)
80003fd4: 13 0d fc ff  	addi	s10, s8, -1
80003fd8: 93 04 14 00  	addi	s1, s0, 1
80003fdc: 93 05 0b 00  	mv	a1, s6
80003fe0: 13 06 04 00  	mv	a2, s0
80003fe4: 93 86 09 00  	mv	a3, s3
80003fe8: e7 80 0b 00  	jalr	s7
80003fec: 13 84 04 00  	mv	s0, s1
80003ff0: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80003ff4: e3 1c 0d fc  	bnez	s10, 0x80003fcc <.LBB4_90+0x2fc>
80003ff8: 6f 00 80 00  	j	0x80004000 <.LBB4_90+0x330>
80003ffc: 93 04 04 00  	mv	s1, s0
80004000: 33 85 44 41  	sub	a0, s1, s4
80004004: 33 35 25 01  	sltu	a0, a0, s2
80004008: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000400c: 93 c5 1a 00  	xori	a1, s5, 1
80004010: 33 e5 a5 00  	or	a0, a1, a0
80004014: 63 18 05 02  	bnez	a0, 0x80004044 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004018: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000401c: 13 84 14 00  	addi	s0, s1, 1
80004020: 13 05 00 02  	addi	a0, zero, 32
80004024: 93 05 0b 00  	mv	a1, s6
80004028: 13 86 04 00  	mv	a2, s1
8000402c: 93 86 09 00  	mv	a3, s3
80004030: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004034: 33 05 8a 00  	add	a0, s4, s0
80004038: 93 04 04 00  	mv	s1, s0
8000403c: e3 60 25 ff  	bltu	a0, s2, 0x8000401c <.LBB4_90+0x34c>
80004040: 6f 00 80 00  	j	0x80004048 <.LBB4_90+0x378>
80004044: 13 84 04 00  	mv	s0, s1
; }
80004048: 13 05 04 00  	mv	a0, s0
8000404c: 07 39 81 02  	fld	fs2, 40(sp)
80004050: 87 34 01 03  	fld	fs1, 48(sp)
80004054: 07 34 81 03  	fld	fs0, 56(sp)
80004058: 03 2d 01 04  	lw	s10, 64(sp)
8000405c: 83 2c 41 04  	lw	s9, 68(sp)
80004060: 03 2c 81 04  	lw	s8, 72(sp)
80004064: 83 2b c1 04  	lw	s7, 76(sp)
80004068: 03 2b 01 05  	lw	s6, 80(sp)
8000406c: 83 2a 41 05  	lw	s5, 84(sp)
80004070: 03 2a 81 05  	lw	s4, 88(sp)
80004074: 83 29 c1 05  	lw	s3, 92(sp)
80004078: 03 29 01 06  	lw	s2, 96(sp)
8000407c: 83 24 41 06  	lw	s1, 100(sp)
80004080: 03 24 81 06  	lw	s0, 104(sp)
80004084: 83 20 c1 06  	lw	ra, 108(sp)
80004088: 13 01 01 07  	addi	sp, sp, 112
8000408c: 67 80 00 00  	ret

80004090 <_etoa>:
; {
80004090: 13 01 01 f8  	addi	sp, sp, -128
80004094: 23 2e 11 06  	sw	ra, 124(sp)
80004098: 23 2c 81 06  	sw	s0, 120(sp)
8000409c: 23 2a 91 06  	sw	s1, 116(sp)
800040a0: 23 28 21 07  	sw	s2, 112(sp)
800040a4: 23 26 31 07  	sw	s3, 108(sp)
800040a8: 23 24 41 07  	sw	s4, 104(sp)
800040ac: 23 22 51 07  	sw	s5, 100(sp)
800040b0: 23 20 61 07  	sw	s6, 96(sp)
800040b4: 23 2e 71 05  	sw	s7, 92(sp)
800040b8: 23 2c 81 05  	sw	s8, 88(sp)
800040bc: 23 2a 91 05  	sw	s9, 84(sp)
800040c0: 23 28 a1 05  	sw	s10, 80(sp)
800040c4: 23 26 b1 05  	sw	s11, 76(sp)

800040c8 <.LBB5_43>:
800040c8: 97 14 00 00  	auipc	s1, 1
800040cc: 93 84 84 23  	addi	s1, s1, 568
800040d0: 87 b0 04 00  	fld	ft1, 0(s1)

800040d4 <.LBB5_44>:
800040d4: 97 14 00 00  	auipc	s1, 1
800040d8: 93 84 44 23  	addi	s1, s1, 564
800040dc: 07 b1 04 00  	fld	ft2, 0(s1)
800040e0: 53 00 a5 22  	fmv.d	ft0, fa0
800040e4: d3 04 15 a2  	fle.d	s1, fa0, ft1
800040e8: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800040ec: b3 f4 84 00  	and	s1, s1, s0
800040f0: 93 0a 08 00  	mv	s5, a6
800040f4: 13 89 07 00  	mv	s2, a5
800040f8: 93 07 07 00  	mv	a5, a4
800040fc: 93 89 06 00  	mv	s3, a3
80004100: 13 0a 06 00  	mv	s4, a2
80004104: 13 8b 05 00  	mv	s6, a1
80004108: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000410c: 63 92 04 06  	bnez	s1, 0x80004170 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004110: 13 85 0b 00  	mv	a0, s7
80004114: 93 05 0b 00  	mv	a1, s6
80004118: 13 06 0a 00  	mv	a2, s4
8000411c: 93 86 09 00  	mv	a3, s3
80004120: 53 05 00 22  	fmv.d	fa0, ft0
80004124: 13 87 07 00  	mv	a4, a5
80004128: 93 07 09 00  	mv	a5, s2
8000412c: 13 88 0a 00  	mv	a6, s5
80004130: 83 2d c1 04  	lw	s11, 76(sp)
80004134: 03 2d 01 05  	lw	s10, 80(sp)
80004138: 83 2c 41 05  	lw	s9, 84(sp)
8000413c: 03 2c 81 05  	lw	s8, 88(sp)
80004140: 83 2b c1 05  	lw	s7, 92(sp)
80004144: 03 2b 01 06  	lw	s6, 96(sp)
80004148: 83 2a 41 06  	lw	s5, 100(sp)
8000414c: 03 2a 81 06  	lw	s4, 104(sp)
80004150: 83 29 c1 06  	lw	s3, 108(sp)
80004154: 03 29 01 07  	lw	s2, 112(sp)
80004158: 83 24 41 07  	lw	s1, 116(sp)
8000415c: 03 24 81 07  	lw	s0, 120(sp)
80004160: 83 20 c1 07  	lw	ra, 124(sp)
80004164: 13 01 01 08  	addi	sp, sp, 128
80004168: 17 03 00 00  	auipc	t1, 0
8000416c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004170: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004174: 13 f5 0a 40  	andi	a0, s5, 1024
80004178: 13 07 60 00  	addi	a4, zero, 6
8000417c: 63 04 05 00  	beqz	a0, 0x80004184 <.LBB5_44+0xb0>
80004180: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004184: 27 30 a1 02  	fsd	fa0, 32(sp)
80004188: 83 25 41 02  	lw	a1, 36(sp)
8000418c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004190: 93 d6 45 01  	srli	a3, a1, 20
80004194: b7 07 10 00  	lui	a5, 256
80004198: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000419c: b3 f5 f5 00  	and	a1, a1, a5
800041a0: 23 2c c1 00  	sw	a2, 24(sp)
800041a4: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800041a8: b3 e5 c5 00  	or	a1, a1, a2
800041ac: 23 2e b1 00  	sw	a1, 28(sp)
800041b0: 87 30 81 01  	fld	ft1, 24(sp)

800041b4 <.LBB5_45>:
800041b4: 97 15 00 00  	auipc	a1, 1
800041b8: 93 85 c5 15  	addi	a1, a1, 348
800041bc: 07 b1 05 00  	fld	ft2, 0(a1)

800041c0 <.LBB5_46>:
800041c0: 97 15 00 00  	auipc	a1, 1
800041c4: 93 85 85 15  	addi	a1, a1, 344
800041c8: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800041cc: 93 f5 f6 7f  	andi	a1, a3, 2047
800041d0: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800041d4: 53 82 05 d2  	fcvt.d.w	ft4, a1
800041d8: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800041dc <.LBB5_47>:
800041dc: 97 15 00 00  	auipc	a1, 1
800041e0: 93 85 45 14  	addi	a1, a1, 324
800041e4: 07 b1 05 00  	fld	ft2, 0(a1)

800041e8 <.LBB5_48>:
800041e8: 97 15 00 00  	auipc	a1, 1
800041ec: 93 85 05 14  	addi	a1, a1, 320
800041f0: 87 b1 05 00  	fld	ft3, 0(a1)

800041f4 <.LBB5_49>:
800041f4: 97 15 00 00  	auipc	a1, 1
800041f8: 93 85 c5 13  	addi	a1, a1, 316
800041fc: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004200: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004204: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004208: d3 80 05 d2  	fcvt.d.w	ft1, a1
8000420c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004210 <.LBB5_50>:
80004210: 17 16 00 00  	auipc	a2, 1
80004214: 13 06 86 12  	addi	a2, a2, 296
80004218: 87 31 06 00  	fld	ft3, 0(a2)

8000421c <.LBB5_51>:
8000421c: 17 16 00 00  	auipc	a2, 1
80004220: 13 06 46 12  	addi	a2, a2, 292
80004224: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004228: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
8000422c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004230: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004234: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004238: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000423c: 13 06 f6 3f  	addi	a2, a2, 1023
80004240: 23 28 01 00  	sw	zero, 16(sp)
80004244: 13 16 46 01  	slli	a2, a2, 20
80004248: 23 2a c1 00  	sw	a2, 20(sp)

8000424c <.LBB5_52>:
8000424c: 17 16 00 00  	auipc	a2, 1
80004250: 13 06 46 10  	addi	a2, a2, 260
80004254: 87 31 06 00  	fld	ft3, 0(a2)

80004258 <.LBB5_53>:
80004258: 17 16 00 00  	auipc	a2, 1
8000425c: 13 06 06 10  	addi	a2, a2, 256
80004260: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004264: 87 32 01 01  	fld	ft5, 16(sp)

80004268 <.LBB5_54>:
80004268: 17 16 00 00  	auipc	a2, 1
8000426c: 13 06 06 0e  	addi	a2, a2, 224
80004270: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004274: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004278 <.LBB5_55>:
80004278: 17 16 00 00  	auipc	a2, 1
8000427c: 13 06 86 0e  	addi	a2, a2, 232
80004280: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004284: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004288: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000428c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004290: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004294: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004298: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000429c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
800042a0: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800042a4: 53 16 15 a2  	flt.d	a2, fa0, ft1
800042a8: 63 0a 06 00  	beqz	a2, 0x800042bc <.LBB5_56+0x10>

800042ac <.LBB5_56>:
800042ac: 97 16 00 00  	auipc	a3, 1
800042b0: 93 86 c6 0b  	addi	a3, a3, 188
800042b4: 07 b1 06 00  	fld	ft2, 0(a3)
800042b8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800042bc: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800042c0: 93 05 34 06  	addi	a1, s0, 99
800042c4: 93 b5 75 0c  	sltiu	a1, a1, 199
800042c8: 13 06 50 00  	addi	a2, zero, 5
800042cc: b7 16 00 00  	lui	a3, 1
800042d0: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800042d4: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800042d8: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800042dc: 63 84 06 06  	beqz	a3, 0x80004344 <.LBB5_58+0x58>

800042e0 <.LBB5_57>:
800042e0: 97 15 00 00  	auipc	a1, 1
800042e4: 93 85 05 09  	addi	a1, a1, 144
800042e8: 07 b1 05 00  	fld	ft2, 0(a1)

800042ec <.LBB5_58>:
800042ec: 97 15 00 00  	auipc	a1, 1
800042f0: 93 85 c5 08  	addi	a1, a1, 140
800042f4: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800042f8: d3 15 25 a2  	flt.d	a1, fa0, ft2
800042fc: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004300: b3 e5 c5 00  	or	a1, a1, a2
80004304: 63 98 05 00  	bnez	a1, 0x80004314 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004308: 63 40 e4 02  	blt	s0, a4, 0x80004328 <.LBB5_58+0x3c>
8000430c: 13 07 00 00  	mv	a4, zero
80004310: 6f 00 00 02  	j	0x80004330 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004314: 63 06 07 02  	beqz	a4, 0x80004340 <.LBB5_58+0x54>
80004318: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000431c: 13 45 15 00  	xori	a0, a0, 1
80004320: 33 07 a7 40  	sub	a4, a4, a0
80004324: 6f 00 00 02  	j	0x80004344 <.LBB5_58+0x58>
80004328: 13 45 f4 ff  	not	a0, s0
8000432c: 33 07 a7 00  	add	a4, a4, a0
80004330: 13 04 00 00  	mv	s0, zero
80004334: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004338: 93 ea 0a 40  	ori	s5, s5, 1024
8000433c: 6f 00 80 00  	j	0x80004344 <.LBB5_58+0x58>
80004340: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004344: b3 05 99 41  	sub	a1, s2, s9
80004348: 33 36 b9 00  	sltu	a2, s2, a1
8000434c: 13 05 00 00  	mv	a0, zero
80004350: 63 14 06 00  	bnez	a2, 0x80004358 <.LBB5_58+0x6c>
80004354: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004358: 93 07 00 00  	mv	a5, zero
8000435c: 93 d5 1a 00  	srli	a1, s5, 1
80004360: 93 f4 15 00  	andi	s1, a1, 1
80004364: b3 35 90 01  	snez	a1, s9
80004368: b3 f5 b4 00  	and	a1, s1, a1
8000436c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004370: 63 94 05 00  	bnez	a1, 0x80004378 <.LBB5_58+0x8c>
80004374: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004378: 93 35 14 00  	seqz	a1, s0
8000437c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004380: 63 94 05 00  	bnez	a1, 0x80004388 <.LBB5_58+0x9c>
80004384: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004388: 63 04 05 00  	beqz	a0, 0x80004390 <.LBB5_58+0xa4>
8000438c: 53 15 a5 22  	fneg.d	fa0, fa0
80004390: 37 f5 ff ff  	lui	a0, 1048575
80004394: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004398: 33 f8 aa 00  	and	a6, s5, a0
8000439c: 13 85 0b 00  	mv	a0, s7
800043a0: 93 05 0b 00  	mv	a1, s6
800043a4: 13 06 0a 00  	mv	a2, s4
800043a8: 93 86 09 00  	mv	a3, s3
800043ac: 97 f0 ff ff  	auipc	ra, 1048575
800043b0: e7 80 40 60  	jalr	1540(ra)
800043b4: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800043b8: 63 82 0c 18  	beqz	s9, 0x8000453c <.LBB5_58+0x250>
800043bc: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800043c0: 13 f5 0a 02  	andi	a0, s5, 32
800043c4: 13 45 55 06  	xori	a0, a0, 101
800043c8: 93 05 0b 00  	mv	a1, s6
800043cc: 13 06 0d 00  	mv	a2, s10
800043d0: 93 86 09 00  	mv	a3, s3
800043d4: e7 80 0b 00  	jalr	s7
800043d8: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800043dc: 93 5a f4 01  	srli	s5, s0, 31
800043e0: 13 55 f4 41  	srai	a0, s0, 31
800043e4: b3 05 a4 00  	add	a1, s0, a0
800043e8: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800043ec: 93 8d dc ff  	addi	s11, s9, -3
800043f0: 13 04 f0 01  	addi	s0, zero, 31
800043f4: 37 d5 cc cc  	lui	a0, 838861
800043f8: 13 05 d5 cc  	addi	a0, a0, -819
800043fc: 13 08 a0 00  	addi	a6, zero, 10
80004400: 93 08 c1 02  	addi	a7, sp, 44
80004404: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004408: b3 37 a7 02  	mulhu	a5, a4, a0
8000440c: 93 d5 37 00  	srli	a1, a5, 3
80004410: b3 87 05 03  	mul	a5, a1, a6
80004414: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004418: 13 e6 07 03  	ori	a2, a5, 48
8000441c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004420: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004424: 13 0c 1c 00  	addi	s8, s8, 1
80004428: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000442c: 33 b6 e2 00  	sltu	a2, t0, a4
80004430: 33 f6 c7 00  	and	a2, a5, a2
80004434: 93 8d fd ff  	addi	s11, s11, -1
80004438: 13 04 f4 ff  	addi	s0, s0, -1
8000443c: 13 87 05 00  	mv	a4, a1
80004440: e3 14 06 fc  	bnez	a2, 0x80004408 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004444: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004448: 33 35 ac 00  	sltu	a0, s8, a0
8000444c: 13 45 15 00  	xori	a0, a0, 1
80004450: 93 c5 17 00  	xori	a1, a5, 1
80004454: 33 e5 a5 00  	or	a0, a1, a0
80004458: 63 12 05 04  	bnez	a0, 0x8000449c <.LBB5_58+0x1b0>
8000445c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004460: b3 85 8c 41  	sub	a1, s9, s8
80004464: 93 85 d5 ff  	addi	a1, a1, -3
80004468: 13 06 f0 01  	addi	a2, zero, 31
8000446c: 33 06 86 41  	sub	a2, a2, s8
80004470: 33 05 85 01  	add	a0, a0, s8
80004474: 63 e4 c5 00  	bltu	a1, a2, 0x8000447c <.LBB5_58+0x190>
80004478: 93 05 06 00  	mv	a1, a2
8000447c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004480: 93 05 00 03  	addi	a1, zero, 48
80004484: 97 c0 ff ff  	auipc	ra, 1048572
80004488: e7 80 40 0d  	jalr	212(ra)
;   if (flags & FLAGS_HASH) {
8000448c: 63 e4 8d 00  	bltu	s11, s0, 0x80004494 <.LBB5_58+0x1a8>
80004490: 93 0d 04 00  	mv	s11, s0
80004494: 33 85 8d 01  	add	a0, s11, s8
80004498: 13 0c 15 00  	addi	s8, a0, 1
8000449c: 83 2c c1 00  	lw	s9, 12(sp)
800044a0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800044a4: 63 60 85 03  	bltu	a0, s8, 0x800044c4 <.LBB5_58+0x1d8>
800044a8: 13 05 c1 02  	addi	a0, sp, 44
800044ac: 33 05 85 01  	add	a0, a0, s8
800044b0: 93 05 d0 02  	addi	a1, zero, 45
800044b4: 63 94 0a 00  	bnez	s5, 0x800044bc <.LBB5_58+0x1d0>
800044b8: 93 05 b0 02  	addi	a1, zero, 43
800044bc: 13 0c 1c 00  	addi	s8, s8, 1
800044c0: 23 00 b5 00  	sb	a1, 0(a0)
800044c4: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800044c8: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800044cc: 33 85 8a 01  	add	a0, s5, s8
800044d0: 03 45 05 00  	lbu	a0, 0(a0)
800044d4: 13 06 04 00  	mv	a2, s0
800044d8: 93 04 fc ff  	addi	s1, s8, -1
800044dc: 13 04 14 00  	addi	s0, s0, 1
800044e0: 93 05 0b 00  	mv	a1, s6
800044e4: 93 86 09 00  	mv	a3, s3
800044e8: e7 80 0b 00  	jalr	s7
800044ec: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800044f0: e3 9e 04 fc  	bnez	s1, 0x800044cc <.LBB5_58+0x1e0>
800044f4: 33 05 44 41  	sub	a0, s0, s4
800044f8: 33 35 25 01  	sltu	a0, a0, s2
800044fc: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004500: 93 c5 1c 00  	xori	a1, s9, 1
80004504: 33 e5 a5 00  	or	a0, a1, a0
80004508: 63 18 05 02  	bnez	a0, 0x80004538 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
8000450c: b3 04 40 41  	neg	s1, s4
80004510: 13 0d 14 00  	addi	s10, s0, 1
80004514: 13 05 00 02  	addi	a0, zero, 32
80004518: 93 05 0b 00  	mv	a1, s6
8000451c: 13 06 04 00  	mv	a2, s0
80004520: 93 86 09 00  	mv	a3, s3
80004524: e7 80 0b 00  	jalr	s7
80004528: 33 85 a4 01  	add	a0, s1, s10
8000452c: 13 04 0d 00  	mv	s0, s10
80004530: e3 60 25 ff  	bltu	a0, s2, 0x80004510 <.LBB5_58+0x224>
80004534: 6f 00 80 00  	j	0x8000453c <.LBB5_58+0x250>
80004538: 13 0d 04 00  	mv	s10, s0
; }
8000453c: 13 05 0d 00  	mv	a0, s10
80004540: 83 2d c1 04  	lw	s11, 76(sp)
80004544: 03 2d 01 05  	lw	s10, 80(sp)
80004548: 83 2c 41 05  	lw	s9, 84(sp)
8000454c: 03 2c 81 05  	lw	s8, 88(sp)
80004550: 83 2b c1 05  	lw	s7, 92(sp)
80004554: 03 2b 01 06  	lw	s6, 96(sp)
80004558: 83 2a 41 06  	lw	s5, 100(sp)
8000455c: 03 2a 81 06  	lw	s4, 104(sp)
80004560: 83 29 c1 06  	lw	s3, 108(sp)
80004564: 03 29 01 07  	lw	s2, 112(sp)
80004568: 83 24 41 07  	lw	s1, 116(sp)
8000456c: 03 24 81 07  	lw	s0, 120(sp)
80004570: 83 20 c1 07  	lw	ra, 124(sp)
80004574: 13 01 01 08  	addi	sp, sp, 128
80004578: 67 80 00 00  	ret

8000457c <_ntoa_format>:
; {
8000457c: 13 01 01 fc  	addi	sp, sp, -64
80004580: 23 2e 11 02  	sw	ra, 60(sp)
80004584: 23 2c 81 02  	sw	s0, 56(sp)
80004588: 23 2a 91 02  	sw	s1, 52(sp)
8000458c: 23 28 21 03  	sw	s2, 48(sp)
80004590: 23 26 31 03  	sw	s3, 44(sp)
80004594: 23 24 41 03  	sw	s4, 40(sp)
80004598: 23 22 51 03  	sw	s5, 36(sp)
8000459c: 23 20 61 03  	sw	s6, 32(sp)
800045a0: 23 2e 71 01  	sw	s7, 28(sp)
800045a4: 23 2c 81 01  	sw	s8, 24(sp)
800045a8: 23 2a 91 01  	sw	s9, 20(sp)
800045ac: 23 28 a1 01  	sw	s10, 16(sp)
800045b0: 23 26 b1 01  	sw	s11, 12(sp)
800045b4: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800045b8: 93 fa 2e 00  	andi	s5, t4, 2
800045bc: 13 09 0e 00  	mv	s2, t3
800045c0: 13 8d 03 00  	mv	s10, t2
800045c4: 93 8c 08 00  	mv	s9, a7
800045c8: 13 8c 07 00  	mv	s8, a5
800045cc: 93 89 06 00  	mv	s3, a3
800045d0: 13 0a 06 00  	mv	s4, a2
800045d4: 13 8b 05 00  	mv	s6, a1
800045d8: 93 0d 05 00  	mv	s11, a0
800045dc: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800045e0: 63 9e 0a 0c  	bnez	s5, 0x800046bc <_ntoa_format+0x140>
800045e4: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800045e8: 63 0e 09 00  	beqz	s2, 0x80004604 <_ntoa_format+0x88>
800045ec: 63 0e 04 00  	beqz	s0, 0x80004608 <_ntoa_format+0x8c>
800045f0: 13 f5 cb 00  	andi	a0, s7, 12
800045f4: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800045f8: 33 65 05 01  	or	a0, a0, a6
800045fc: 33 09 a9 40  	sub	s2, s2, a0
80004600: 6f 00 80 00  	j	0x80004608 <_ntoa_format+0x8c>
80004604: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004608: 33 35 ac 01  	sltu	a0, s8, s10
8000460c: 93 45 15 00  	xori	a1, a0, 1
80004610: 13 05 f0 01  	addi	a0, zero, 31
80004614: 33 36 85 01  	sltu	a2, a0, s8
80004618: b3 65 b6 00  	or	a1, a2, a1
8000461c: 63 94 05 04  	bnez	a1, 0x80004664 <_ntoa_format+0xe8>
80004620: 23 22 51 01  	sw	s5, 4(sp)
80004624: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004628: 93 45 fc ff  	not	a1, s8
8000462c: b3 85 a5 01  	add	a1, a1, s10
80004630: 33 06 85 41  	sub	a2, a0, s8
80004634: 33 05 87 01  	add	a0, a4, s8
80004638: 63 e4 c5 00  	bltu	a1, a2, 0x80004640 <_ntoa_format+0xc4>
8000463c: 93 05 06 00  	mv	a1, a2
80004640: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004644: 93 05 00 03  	addi	a1, zero, 48
80004648: 13 86 04 00  	mv	a2, s1
8000464c: 97 c0 ff ff  	auipc	ra, 1048572
80004650: e7 80 c0 f0  	jalr	-244(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004654: 33 8c 84 01  	add	s8, s1, s8
80004658: 03 27 81 00  	lw	a4, 8(sp)
8000465c: 13 88 0a 00  	mv	a6, s5
80004660: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004664: 63 0c 04 04  	beqz	s0, 0x800046bc <_ntoa_format+0x140>
80004668: 33 35 2c 01  	sltu	a0, s8, s2
8000466c: 93 45 15 00  	xori	a1, a0, 1
80004670: 13 05 f0 01  	addi	a0, zero, 31
80004674: 33 36 85 01  	sltu	a2, a0, s8
80004678: b3 e5 c5 00  	or	a1, a1, a2
8000467c: 63 90 05 04  	bnez	a1, 0x800046bc <_ntoa_format+0x140>
80004680: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004684: 93 45 fc ff  	not	a1, s8
80004688: b3 05 b9 00  	add	a1, s2, a1
8000468c: 33 06 85 41  	sub	a2, a0, s8
80004690: 33 05 87 01  	add	a0, a4, s8
80004694: 63 e4 c5 00  	bltu	a1, a2, 0x8000469c <_ntoa_format+0x120>
80004698: 93 05 06 00  	mv	a1, a2
8000469c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800046a0: 93 05 00 03  	addi	a1, zero, 48
800046a4: 13 86 04 00  	mv	a2, s1
800046a8: 97 c0 ff ff  	auipc	ra, 1048572
800046ac: e7 80 00 eb  	jalr	-336(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800046b0: 33 8c 84 01  	add	s8, s1, s8
800046b4: 03 27 81 00  	lw	a4, 8(sp)
800046b8: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800046bc: 13 f5 0b 01  	andi	a0, s7, 16
800046c0: 63 02 05 0e  	beqz	a0, 0x800047a4 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800046c4: 13 f5 0b 40  	andi	a0, s7, 1024
800046c8: 13 55 a5 00  	srli	a0, a0, 10
800046cc: 93 35 1c 00  	seqz	a1, s8
800046d0: 33 65 b5 00  	or	a0, a0, a1
800046d4: 63 1e 05 02  	bnez	a0, 0x80004710 <_ntoa_format+0x194>
800046d8: 33 45 ac 01  	xor	a0, s8, s10
800046dc: 33 35 a0 00  	snez	a0, a0
800046e0: b3 45 2c 01  	xor	a1, s8, s2
800046e4: b3 35 b0 00  	snez	a1, a1
800046e8: 33 75 b5 00  	and	a0, a0, a1
800046ec: 63 12 05 02  	bnez	a0, 0x80004710 <_ntoa_format+0x194>
;       len--;
800046f0: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800046f4: b3 35 a0 00  	snez	a1, a0
800046f8: 13 86 0c ff  	addi	a2, s9, -16
800046fc: 13 36 16 00  	seqz	a2, a2
80004700: b3 75 b6 00  	and	a1, a2, a1
80004704: 63 84 05 00  	beqz	a1, 0x8000470c <_ntoa_format+0x190>
80004708: 13 05 ec ff  	addi	a0, s8, -2
8000470c: 13 0c 05 00  	mv	s8, a0
80004710: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004714: 63 96 ac 02  	bne	s9, a0, 0x80004740 <_ntoa_format+0x1c4>
80004718: 13 f5 0b 02  	andi	a0, s7, 32
8000471c: 93 55 55 00  	srli	a1, a0, 5
80004720: 13 06 f0 01  	addi	a2, zero, 31
80004724: 33 36 86 01  	sltu	a2, a2, s8
80004728: b3 e5 c5 00  	or	a1, a1, a2
8000472c: 63 9e 05 02  	bnez	a1, 0x80004768 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004730: 33 05 87 01  	add	a0, a4, s8
80004734: 13 0c 1c 00  	addi	s8, s8, 1
80004738: 93 05 80 07  	addi	a1, zero, 120
8000473c: 6f 00 c0 04  	j	0x80004788 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004740: 13 85 ec ff  	addi	a0, s9, -2
80004744: 33 35 a0 00  	snez	a0, a0
80004748: 93 05 f0 01  	addi	a1, zero, 31
8000474c: b3 b5 85 01  	sltu	a1, a1, s8
80004750: 33 65 b5 00  	or	a0, a0, a1
80004754: 63 1c 05 02  	bnez	a0, 0x8000478c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004758: 33 05 87 01  	add	a0, a4, s8
8000475c: 13 0c 1c 00  	addi	s8, s8, 1
80004760: 93 05 20 06  	addi	a1, zero, 98
80004764: 6f 00 40 02  	j	0x80004788 <_ntoa_format+0x20c>
80004768: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000476c: 13 35 15 00  	seqz	a0, a0
80004770: 93 c5 15 00  	xori	a1, a1, 1
80004774: 33 65 b5 00  	or	a0, a0, a1
80004778: 63 1a 05 00  	bnez	a0, 0x8000478c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000477c: 33 05 87 01  	add	a0, a4, s8
80004780: 13 0c 1c 00  	addi	s8, s8, 1
80004784: 93 05 80 05  	addi	a1, zero, 88
80004788: 23 00 b5 00  	sb	a1, 0(a0)
8000478c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004790: 63 60 85 07  	bltu	a0, s8, 0x800047f0 <_ntoa_format+0x274>
;       buf[len++] = '0';
80004794: 33 05 87 01  	add	a0, a4, s8
80004798: 13 0c 1c 00  	addi	s8, s8, 1
8000479c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800047a0: 23 00 b5 00  	sb	a1, 0(a0)
800047a4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800047a8: 63 64 85 05  	bltu	a0, s8, 0x800047f0 <_ntoa_format+0x274>
;     if (negative) {
800047ac: 63 0a 08 00  	beqz	a6, 0x800047c0 <_ntoa_format+0x244>
;       buf[len++] = '-';
800047b0: 33 05 87 01  	add	a0, a4, s8
800047b4: 13 0c 1c 00  	addi	s8, s8, 1
800047b8: 93 05 d0 02  	addi	a1, zero, 45
800047bc: 6f 00 00 03  	j	0x800047ec <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800047c0: 13 f5 4b 00  	andi	a0, s7, 4
800047c4: 63 1e 05 00  	bnez	a0, 0x800047e0 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800047c8: 13 f5 8b 00  	andi	a0, s7, 8
800047cc: 63 02 05 02  	beqz	a0, 0x800047f0 <_ntoa_format+0x274>
;       buf[len++] = ' ';
800047d0: 33 05 87 01  	add	a0, a4, s8
800047d4: 13 0c 1c 00  	addi	s8, s8, 1
800047d8: 93 05 00 02  	addi	a1, zero, 32
800047dc: 6f 00 00 01  	j	0x800047ec <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800047e0: 33 05 87 01  	add	a0, a4, s8
800047e4: 13 0c 1c 00  	addi	s8, s8, 1
800047e8: 93 05 b0 02  	addi	a1, zero, 43
800047ec: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800047f0: 13 f5 3b 00  	andi	a0, s7, 3
800047f4: 33 35 a0 00  	snez	a0, a0
800047f8: b3 35 2c 01  	sltu	a1, s8, s2
800047fc: 93 c5 15 00  	xori	a1, a1, 1
80004800: 33 65 b5 00  	or	a0, a0, a1
80004804: 13 04 0a 00  	mv	s0, s4
80004808: 63 16 05 02  	bnez	a0, 0x80004834 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
8000480c: b3 04 89 41  	sub	s1, s2, s8
80004810: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004814: 13 04 16 00  	addi	s0, a2, 1
80004818: 13 05 00 02  	addi	a0, zero, 32
8000481c: 93 05 0b 00  	mv	a1, s6
80004820: 93 86 09 00  	mv	a3, s3
80004824: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80004828: 93 84 f4 ff  	addi	s1, s1, -1
8000482c: 13 06 04 00  	mv	a2, s0
80004830: e3 92 04 fe  	bnez	s1, 0x80004814 <_ntoa_format+0x298>
80004834: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80004838: 63 0e 0c 02  	beqz	s8, 0x80004874 <_ntoa_format+0x2f8>
8000483c: 03 25 81 00  	lw	a0, 8(sp)
80004840: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004844: 33 85 8b 01  	add	a0, s7, s8
80004848: 03 45 05 00  	lbu	a0, 0(a0)
8000484c: 93 0c fc ff  	addi	s9, s8, -1
80004850: 93 04 14 00  	addi	s1, s0, 1
80004854: 93 05 0b 00  	mv	a1, s6
80004858: 13 06 04 00  	mv	a2, s0
8000485c: 93 86 09 00  	mv	a3, s3
80004860: e7 80 0d 00  	jalr	s11
80004864: 13 84 04 00  	mv	s0, s1
80004868: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
8000486c: e3 9c 0c fc  	bnez	s9, 0x80004844 <_ntoa_format+0x2c8>
80004870: 6f 00 80 00  	j	0x80004878 <_ntoa_format+0x2fc>
80004874: 93 04 04 00  	mv	s1, s0
80004878: 33 85 44 41  	sub	a0, s1, s4
8000487c: 33 35 25 01  	sltu	a0, a0, s2
80004880: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004884: 93 c5 1a 00  	xori	a1, s5, 1
80004888: 33 e5 a5 00  	or	a0, a1, a0
8000488c: 63 18 05 02  	bnez	a0, 0x800048bc <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80004890: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004894: 13 84 14 00  	addi	s0, s1, 1
80004898: 13 05 00 02  	addi	a0, zero, 32
8000489c: 93 05 0b 00  	mv	a1, s6
800048a0: 13 86 04 00  	mv	a2, s1
800048a4: 93 86 09 00  	mv	a3, s3
800048a8: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800048ac: 33 05 8a 00  	add	a0, s4, s0
800048b0: 93 04 04 00  	mv	s1, s0
800048b4: e3 60 25 ff  	bltu	a0, s2, 0x80004894 <_ntoa_format+0x318>
800048b8: 6f 00 80 00  	j	0x800048c0 <_ntoa_format+0x344>
800048bc: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800048c0: 13 05 04 00  	mv	a0, s0
800048c4: 83 2d c1 00  	lw	s11, 12(sp)
800048c8: 03 2d 01 01  	lw	s10, 16(sp)
800048cc: 83 2c 41 01  	lw	s9, 20(sp)
800048d0: 03 2c 81 01  	lw	s8, 24(sp)
800048d4: 83 2b c1 01  	lw	s7, 28(sp)
800048d8: 03 2b 01 02  	lw	s6, 32(sp)
800048dc: 83 2a 41 02  	lw	s5, 36(sp)
800048e0: 03 2a 81 02  	lw	s4, 40(sp)
800048e4: 83 29 c1 02  	lw	s3, 44(sp)
800048e8: 03 29 01 03  	lw	s2, 48(sp)
800048ec: 83 24 41 03  	lw	s1, 52(sp)
800048f0: 03 24 81 03  	lw	s0, 56(sp)
800048f4: 83 20 c1 03  	lw	ra, 60(sp)
800048f8: 13 01 01 04  	addi	sp, sp, 64
800048fc: 67 80 00 00  	ret

80004900 <_snrt_init_team>:
;     team->base.root = team;
80004900: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80004904: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80004908: 03 23 87 00  	lw	t1, 8(a4)
8000490c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004910: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80004914: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80004918: 83 22 47 00  	lw	t0, 4(a4)
8000491c: 33 88 08 03  	mul	a6, a7, a6
80004920: 33 05 58 02  	mul	a0, a6, t0
80004924: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004928: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
8000492c: 33 85 68 40  	sub	a0, a7, t1
80004930: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80004934: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80004938: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
8000493c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80004940: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80004944: 03 25 87 01  	lw	a0, 24(a4)
80004948: b7 05 00 10  	lui	a1, 65536
8000494c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80004950: 23 a2 07 02  	sw	zero, 36(a5)
80004954: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80004958: 03 25 07 02  	lw	a0, 32(a4)
8000495c: 83 25 47 02  	lw	a1, 36(a4)
80004960: 23 a4 a7 02  	sw	a0, 40(a5)
80004964: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80004968: 23 a8 c7 02  	sw	a2, 48(a5)
8000496c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80004970: 23 ac d7 02  	sw	a3, 56(a5)
80004974: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80004978: 03 25 07 01  	lw	a0, 16(a4)
8000497c: 33 08 a6 00  	add	a6, a2, a0
80004980: 93 05 08 19  	addi	a1, a6, 400
80004984: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80004988: b3 32 a8 00  	sltu	t0, a6, a0
8000498c: 93 55 15 00  	srli	a1, a0, 1
80004990: 33 03 b8 00  	add	t1, a6, a1
80004994: b3 35 03 01  	sltu	a1, t1, a6
80004998: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
8000499c: 23 a0 67 04  	sw	t1, 64(a5)
800049a0: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800049a4: 13 15 15 00  	slli	a0, a0, 1
800049a8: b3 05 c5 00  	add	a1, a0, a2
800049ac: 33 b5 a5 00  	sltu	a0, a1, a0
800049b0: 23 a4 b7 04  	sw	a1, 72(a5)
800049b4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800049b8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800049bc: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800049c0: 37 05 00 00  	lui	a0, 0
800049c4: 33 05 45 00  	add	a0, a0, tp
800049c8: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800049cc: 03 a5 07 00  	lw	a0, 0(a5)
800049d0: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800049d4: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800049d8: b3 85 b8 40  	sub	a1, a7, a1
800049dc: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800049e0: b7 05 00 00  	lui	a1, 0
800049e4: b3 85 45 00  	add	a1, a1, tp
800049e8: 23 a2 a5 00  	sw	a0, 4(a1)
800049ec: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800049f0: 33 85 a8 02  	mul	a0, a7, a0

800049f4 <.LBB0_1>:
800049f4: 97 15 00 00  	auipc	a1, 1
800049f8: 93 85 05 99  	addi	a1, a1, -1648
800049fc: 33 05 b5 00  	add	a0, a0, a1
80004a00: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80004a04: 83 28 07 03  	lw	a7, 48(a4)
80004a08: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80004a0c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80004a10: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80004a14: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80004a18: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80004a1c: 13 05 76 00  	addi	a0, a2, 7
80004a20: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80004a24: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80004a28: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80004a2c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80004a30: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80004a34: 03 a5 05 00  	lw	a0, 0(a1)
80004a38: 13 05 f5 44  	addi	a0, a0, 1103
80004a3c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80004a40: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80004a44: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80004a48: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80004a4c: 37 05 00 00  	lui	a0, 0
80004a50: 33 05 45 00  	add	a0, a0, tp
80004a54: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80004a58: 37 05 00 00  	lui	a0, 0
80004a5c: 33 05 45 00  	add	a0, a0, tp
80004a60: 23 26 e5 00  	sw	a4, 12(a0)
; }
80004a64: 67 80 00 00  	ret

80004a68 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004a68: 37 05 00 00  	lui	a0, 0
80004a6c: 33 05 45 00  	add	a0, a0, tp
80004a70: 03 25 05 00  	lw	a0, 0(a0)
80004a74: 03 25 05 00  	lw	a0, 0(a0)
80004a78: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004a7c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80004a80: 33 85 a5 40  	sub	a0, a1, a0
80004a84: 67 80 00 00  	ret

80004a88 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80004a88: 37 05 00 00  	lui	a0, 0
80004a8c: 33 05 45 00  	add	a0, a0, tp
80004a90: 03 25 05 00  	lw	a0, 0(a0)
80004a94: 03 25 05 00  	lw	a0, 0(a0)
80004a98: 03 25 05 07  	lw	a0, 112(a0)
80004a9c: 67 80 00 00  	ret

80004aa0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80004aa0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80004aa4: 63 44 05 00  	bltz	a0, 0x80004aac <__snrt_isr+0xc>
;         while (1)
80004aa8: 6f 00 00 00  	j	0x80004aa8 <__snrt_isr+0x8>
80004aac: b7 05 00 80  	lui	a1, 524288
80004ab0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80004ab4: 33 75 b5 00  	and	a0, a0, a1
80004ab8: 13 05 d5 ff  	addi	a0, a0, -3
80004abc: 93 55 25 00  	srli	a1, a0, 2
80004ac0: 13 15 e5 01  	slli	a0, a0, 30
80004ac4: 33 65 b5 00  	or	a0, a0, a1
80004ac8: 93 05 40 00  	addi	a1, zero, 4
80004acc: 63 0a b5 06  	beq	a0, a1, 0x80004b40 <.LBB1_7+0x58>
80004ad0: 63 1a 05 08  	bnez	a0, 0x80004b64 <.LBB1_7+0x7c>
80004ad4: 37 05 00 00  	lui	a0, 0
80004ad8: 33 05 45 00  	add	a0, a0, tp
80004adc: 03 25 05 00  	lw	a0, 0(a0)
80004ae0: 03 25 05 00  	lw	a0, 0(a0)
80004ae4: f3 25 40 f1  	csrr	a1, mhartid

80004ae8 <.LBB1_7>:
;     asm volatile(
80004ae8: 17 16 00 00  	auipc	a2, 1
80004aec: 13 06 86 89  	addi	a2, a2, -1896
80004af0: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80004af4: 93 06 06 00  	mv	a3, a2
80004af8: 93 02 10 00  	addi	t0, zero, 1
80004afc: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80004b00: e3 9e 02 fe  	bnez	t0, 0x80004afc <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80004b04: b7 06 00 00  	lui	a3, 0
80004b08: b3 86 46 00  	add	a3, a3, tp
80004b0c: 83 a6 86 00  	lw	a3, 8(a3)
80004b10: 33 85 a5 40  	sub	a0, a1, a0
80004b14: 93 55 35 00  	srli	a1, a0, 3
80004b18: 93 f5 c5 ff  	andi	a1, a1, -4
80004b1c: b3 85 b6 00  	add	a1, a3, a1
80004b20: 83 a6 05 00  	lw	a3, 0(a1)
80004b24: 13 07 10 00  	addi	a4, zero, 1
80004b28: 33 15 a7 00  	sll	a0, a4, a0
80004b2c: 13 45 f5 ff  	not	a0, a0
80004b30: 33 f5 a6 00  	and	a0, a3, a0
80004b34: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80004b38: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80004b3c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80004b40: 37 05 00 00  	lui	a0, 0
80004b44: 33 05 45 00  	add	a0, a0, tp
80004b48: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004b4c: b7 05 00 00  	lui	a1, 0
80004b50: b3 85 45 00  	add	a1, a1, tp
80004b54: 83 a5 c5 00  	lw	a1, 12(a1)
80004b58: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80004b5c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80004b60: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80004b64: 67 80 00 00  	ret

Disassembly of section .init:

80004b70 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004b70: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004b74: 93 81 81 f1  	addi	gp, gp, -232

80004b78 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004b78: 97 00 00 00  	auipc	ra, 0
80004b7c: e7 80 40 3c  	jalr	964(ra)

80004b80 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004b80: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004b84: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004b88: 97 00 00 00  	auipc	ra, 0
80004b8c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004b90: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004b94: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004b98: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80004b9c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004ba0: 63 92 02 02  	bnez	t0, 0x80004bc4 <snrt.crt0.init_registers>

80004ba4 <.Lpcrel_hi0>:
;     la        t0, _edata
80004ba4: 97 02 00 00  	auipc	t0, 0
80004ba8: 93 82 c2 7d  	addi	t0, t0, 2012

80004bac <.Lpcrel_hi1>:
;     la        t1, _end
80004bac: 17 03 00 00  	auipc	t1, 0
80004bb0: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
80004bb4: 63 d8 62 00  	bge	t0, t1, 0x80004bc4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004bb8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80004bbc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80004bc0: e3 cc 62 fe  	blt	t0, t1, 0x80004bb8 <.Lpcrel_hi1+0xc>

80004bc4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80004bc4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80004bc8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80004bcc: 63 82 02 08  	beqz	t0, 0x80004c50 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80004bd0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80004bd4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80004bd8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80004bdc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80004be0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80004be4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80004be8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80004bec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80004bf0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80004bf4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80004bf8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80004bfc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80004c00: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80004c04: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80004c08: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80004c0c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80004c10: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80004c14: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80004c18: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80004c1c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004c20: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004c24: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004c28: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80004c2c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004c30: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004c34: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004c38: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80004c3c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004c40: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004c44: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004c48: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80004c4c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004c50 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004c50: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004c54: 23 a0 06 00  	sw	zero, 0(a3)

80004c58 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004c58: 97 02 00 00  	auipc	t0, 0
80004c5c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004c60: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004c64: 93 87 06 00  	mv	a5, a3

80004c68 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004c68: 97 03 00 00  	auipc	t2, 0
80004c6c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004c70: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004c74: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004c78: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80004c7c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004c80: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004c84: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004c88: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80004c8c: b3 86 66 40  	sub	a3, a3, t1

80004c90 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004c90: 97 02 00 00  	auipc	t0, 0
80004c94: 93 82 82 5f  	addi	t0, t0, 1528

80004c98 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004c98: 17 03 00 00  	auipc	t1, 0
80004c9c: 13 03 03 5f  	addi	t1, t1, 1520

80004ca0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004ca0: 97 03 00 00  	auipc	t2, 0
80004ca4: 93 83 83 5e  	addi	t2, t2, 1512

80004ca8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004ca8: 17 0e 00 00  	auipc	t3, 0
80004cac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004cb0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004cb4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004cb8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80004cbc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80004cc0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80004cc4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80004cc8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80004ccc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80004cd0: 63 dc 62 00  	bge	t0, t1, 0x80004ce8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80004cd4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80004cd8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80004cdc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004ce0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80004ce4: e3 c8 62 fe  	blt	t0, t1, 0x80004cd4 <.Lpcrel_hi7+0x2c>

80004ce8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80004ce8: 97 02 00 00  	auipc	t0, 0
80004cec: 93 82 02 5a  	addi	t0, t0, 1440

80004cf0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80004cf0: 17 03 00 00  	auipc	t1, 0
80004cf4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80004cf8: 63 da 62 00  	bge	t0, t1, 0x80004d0c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80004cfc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80004d00: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80004d04: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80004d08: e3 ca 72 fe  	blt	t0, t2, 0x80004cfc <.Lpcrel_hi9+0xc>

80004d0c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80004d0c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80004d10: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80004d14: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80004d18: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80004d1c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80004d20: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80004d24: 97 00 00 00  	auipc	ra, 0
80004d28: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
80004d2c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80004d30: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80004d34: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80004d38: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80004d3c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80004d40: 13 01 41 01  	addi	sp, sp, 20

80004d44 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80004d44: 97 02 00 00  	auipc	t0, 0
80004d48: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80004d4c: 73 90 52 30  	csrw	mtvec, t0

80004d50 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80004d50: 97 00 00 00  	auipc	ra, 0
80004d54: e7 80 00 22  	jalr	544(ra)

80004d58 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80004d58: 97 c0 ff ff  	auipc	ra, 1048572
80004d5c: e7 80 c0 8d  	jalr	-1828(ra)
;     mv        s0, a0 # store return value in s0
80004d60: 13 04 05 00  	mv	s0, a0

80004d64 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80004d64: 97 00 00 00  	auipc	ra, 0
80004d68: e7 80 c0 20  	jalr	524(ra)

80004d6c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80004d6c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80004d70: 97 00 00 00  	auipc	ra, 0
80004d74: e7 80 c0 22  	jalr	556(ra)
;     wfi
80004d78: 73 00 50 10  	wfi	
;     j       1b
80004d7c: 6f f0 df ff  	j	0x80004d78 <snrt.crt0.end+0xc>

80004d80 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80004d80: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80004d84: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80004d88: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80004d8c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80004d90: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80004d94: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80004d98: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80004d9c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80004da0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80004da4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80004da8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80004dac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80004db0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80004db4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80004db8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80004dbc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80004dc0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80004dc4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80004dc8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004dcc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004dd0: 63 84 02 08  	beqz	t0, 0x80004e58 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80004dd4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80004dd8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80004ddc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80004de0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80004de4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80004de8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80004dec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80004df0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80004df4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80004df8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80004dfc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80004e00: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80004e04: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80004e08: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80004e0c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80004e10: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80004e14: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80004e18: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80004e1c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80004e20: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80004e24: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80004e28: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80004e2c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80004e30: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80004e34: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80004e38: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80004e3c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80004e40: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80004e44: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80004e48: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80004e4c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80004e50: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80004e54: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80004e58: 97 00 00 00  	auipc	ra, 0
80004e5c: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80004e60: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004e64: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004e68: 63 84 02 08  	beqz	t0, 0x80004ef0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80004e6c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80004e70: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80004e74: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80004e78: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80004e7c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80004e80: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80004e84: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80004e88: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80004e8c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80004e90: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80004e94: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80004e98: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80004e9c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80004ea0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80004ea4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80004ea8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80004eac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80004eb0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80004eb4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80004eb8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80004ebc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80004ec0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80004ec4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80004ec8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80004ecc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80004ed0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80004ed4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80004ed8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80004edc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80004ee0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80004ee4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80004ee8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80004eec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80004ef0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80004ef4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80004ef8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80004efc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80004f00: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80004f04: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80004f08: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80004f0c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80004f10: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80004f14: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80004f18: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80004f1c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80004f20: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80004f24: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80004f28: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80004f2c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80004f30: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80004f34: 13 01 01 05  	addi	sp, sp, 80
;     mret
80004f38: 73 00 20 30  	mret	

80004f3c <_snrt_init_core_info>:
;     mv        a4, a1
80004f3c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80004f40: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80004f44: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80004f48: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80004f4c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80004f50: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80004f54: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80004f58: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80004f5c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80004f60: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80004f64: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80004f68: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80004f6c: 67 80 00 00  	ret

80004f70 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80004f70: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80004f74: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80004f78: 97 00 00 00  	auipc	ra, 0
80004f7c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80004f80: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80004f84: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80004f88: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80004f8c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80004f90: 67 80 00 00  	ret

80004f94 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80004f94: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80004f98: 67 80 00 00  	ret

80004f9c <_snrt_exit>:
;     addi      sp, sp, -8
80004f9c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80004fa0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80004fa4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80004fa8: 97 00 00 00  	auipc	ra, 0
80004fac: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
80004fb0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80004fb4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80004fb8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80004fbc: 63 1c 05 00  	bnez	a0, 0x80004fd4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80004fc0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80004fc4: 93 e2 12 00  	ori	t0, t0, 1

80004fc8 <.Lpcrel_hi11>:
;     la        t1, tohost
80004fc8: 17 03 00 00  	auipc	t1, 0
80004fcc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80004fd0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80004fd4: 67 80 00 00  	ret
