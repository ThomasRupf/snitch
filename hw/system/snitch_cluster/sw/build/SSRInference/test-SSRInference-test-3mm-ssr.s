
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/test-SSRInference-test-3mm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00005964 80000000 TEXT
  2 .init             00000468 80005970 TEXT
  3 .rodata           00000238 80005dd8 DATA
  4 .htif             00000048 80006040 DATA
  5 .tdata            00000000 80006088 DATA
  6 .tbss             00000010 80006088 BSS
  7 .tbssend          00000000 80006098 DATA
  8 .sdata            000000e8 80006098 DATA
  9 .data             00000000 80006180 DATA
 10 .sbss             00000004 80006180 BSS
 11 .bss              00000000 80006184 BSS
 12 .dram             00000000 80006184 DATA
 13 .debug_info       000037d6 00000000 
 14 .debug_abbrev     00000bff 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003a87 00000000 
 17 .debug_loc        00003e90 00000000 
 18 .debug_ranges     00000380 00000000 
 19 .debug_str        00000b01 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           00003370 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000956 00000000 


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
80000634: 13 01 01 f3  	addi	sp, sp, -208
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 0c  	sw	ra, 204(sp)
8000063c: 23 24 81 0c  	sw	s0, 200(sp)
80000640: 23 22 91 0c  	sw	s1, 196(sp)
80000644: 23 20 21 0d  	sw	s2, 192(sp)
80000648: 23 2e 31 0b  	sw	s3, 188(sp)
8000064c: 23 2c 41 0b  	sw	s4, 184(sp)
80000650: 23 2a 51 0b  	sw	s5, 180(sp)
80000654: 23 28 61 0b  	sw	s6, 176(sp)
80000658: 23 26 71 0b  	sw	s7, 172(sp)
8000065c: 23 24 81 0b  	sw	s8, 168(sp)
80000660: 23 22 91 0b  	sw	s9, 164(sp)
80000664: 23 20 a1 0b  	sw	s10, 160(sp)
80000668: 23 2e b1 09  	sw	s11, 156(sp)
8000066c: 27 38 81 08  	fsd	fs0, 144(sp)
80000670: 27 34 91 08  	fsd	fs1, 136(sp)
80000674: 27 30 21 09  	fsd	fs2, 128(sp)
80000678: 27 3c 31 07  	fsd	fs3, 120(sp)
8000067c: 27 38 41 07  	fsd	fs4, 112(sp)
80000680: 27 34 51 07  	fsd	fs5, 104(sp)
80000684: 27 30 61 07  	fsd	fs6, 96(sp)
80000688: 27 3c 71 05  	fsd	fs7, 88(sp)
8000068c: 37 05 00 00  	lui	a0, 0
80000690: 33 05 45 00  	add	a0, a0, tp
80000694: 83 25 45 00  	lw	a1, 4(a0)
80000698: 13 05 00 00  	mv	a0, zero
;   if(snrt_cluster_compute_core_idx() != 0u) return 0;
8000069c: 63 84 05 00  	beqz	a1, 0x800006a4 <main+0x70>
800006a0: 6f 30 c0 3a  	j	0x80003a4c <.LBB0_183+0x10>
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
800006d4: 93 00 00 00  	mv	ra, zero
800006d8: 6f 00 00 01  	j	0x800006e8 <main+0xb4>
;     void *ret = (void *)alloc->next;
800006dc: 93 80 07 00  	mv	ra, a5
;     alloc->next += size;
800006e0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e4: 93 87 06 00  	mv	a5, a3
800006e8: b3 06 f6 00  	add	a3, a2, a5
800006ec: 93 86 06 10  	addi	a3, a3, 256
800006f0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006fc <main+0xc8>
800006f4: 23 28 01 02  	sw	zero, 48(sp)
800006f8: 6f 00 00 01  	j	0x80000708 <main+0xd4>
;     void *ret = (void *)alloc->next;
800006fc: 23 28 f1 02  	sw	a5, 48(sp)
;     alloc->next += size;
80000700: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: 93 87 06 00  	mv	a5, a3
80000708: b3 06 f6 00  	add	a3, a2, a5
8000070c: 93 86 06 24  	addi	a3, a3, 576
80000710: 63 f6 d5 00  	bgeu	a1, a3, 0x8000071c <main+0xe8>
80000714: 93 0c 00 00  	mv	s9, zero
80000718: 6f 00 00 01  	j	0x80000728 <main+0xf4>
;     void *ret = (void *)alloc->next;
8000071c: 93 8c 07 00  	mv	s9, a5
;     alloc->next += size;
80000720: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000724: 93 87 06 00  	mv	a5, a3
80000728: b3 06 f6 00  	add	a3, a2, a5
8000072c: 93 86 06 36  	addi	a3, a3, 864
80000730: 63 f6 d5 00  	bgeu	a1, a3, 0x8000073c <main+0x108>
80000734: 13 0c 00 00  	mv	s8, zero
80000738: 6f 00 00 01  	j	0x80000748 <main+0x114>
;     void *ret = (void *)alloc->next;
8000073c: 13 8c 07 00  	mv	s8, a5
;     alloc->next += size;
80000740: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000744: 93 87 06 00  	mv	a5, a3
80000748: b3 06 f6 00  	add	a3, a2, a5
8000074c: 93 86 06 48  	addi	a3, a3, 1152
80000750: 63 f6 d5 00  	bgeu	a1, a3, 0x8000075c <main+0x128>
80000754: 13 07 00 00  	mv	a4, zero
80000758: 6f 00 00 01  	j	0x80000768 <main+0x134>
;     void *ret = (void *)alloc->next;
8000075c: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
80000760: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000764: 93 87 06 00  	mv	a5, a3
80000768: b3 06 f6 00  	add	a3, a2, a5
8000076c: 93 86 06 78  	addi	a3, a3, 1920
80000770: 63 f6 d5 00  	bgeu	a1, a3, 0x8000077c <main+0x148>
80000774: 93 04 00 00  	mv	s1, zero
80000778: 6f 00 00 01  	j	0x80000788 <main+0x154>
;     void *ret = (void *)alloc->next;
8000077c: 93 84 07 00  	mv	s1, a5
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
800007a0: 23 26 91 04  	sw	s1, 76(sp)
800007a4: 23 26 f1 02  	sw	a5, 44(sp)
800007a8: 83 27 01 03  	lw	a5, 48(sp)
;   for (i = 0; i < ni; i++)
800007ac: 13 d5 47 01  	srli	a0, a5, 20
800007b0: 33 35 a0 00  	snez	a0, a0
800007b4: b7 f5 11 00  	lui	a1, 287
800007b8: 93 85 95 60  	addi	a1, a1, 1545
800007bc: b3 b5 b7 00  	sltu	a1, a5, a1
800007c0: 33 75 b5 00  	and	a0, a0, a1

800007c4 <.LBB0_174>:
800007c4: 97 65 00 00  	auipc	a1, 6
800007c8: 93 85 45 8d  	addi	a1, a1, -1836
800007cc: 23 2e e1 02  	sw	a4, 60(sp)
800007d0: 23 22 a1 02  	sw	a0, 36(sp)
800007d4: 13 08 00 00  	mv	a6, zero
800007d8: 63 04 05 22  	beqz	a0, 0x80000a00 <.LBB0_174+0x23c>
800007dc: 93 02 00 00  	mv	t0, zero
800007e0: 13 03 00 00  	mv	t1, zero
800007e4: 93 03 00 00  	mv	t2, zero
800007e8: 13 0e 00 00  	mv	t3, zero
800007ec: 93 0e 00 00  	mv	t4, zero
800007f0: 13 0f 00 00  	mv	t5, zero
800007f4: 93 0f 00 00  	mv	t6, zero
800007f8: 13 05 80 00  	addi	a0, zero, 8
800007fc: 13 06 30 01  	addi	a2, zero, 19
;   for (i = 0; i < ni; i++)
80000800: 93 06 00 04  	addi	a3, zero, 64
80000804: 13 07 00 0c  	addi	a4, zero, 192
80000808: ab 20 d6 00  	scfgw	a2, a3
8000080c: ab 20 e5 00  	scfgw	a0, a4
80000810: 13 06 f0 00  	addi	a2, zero, 15
80000814: 93 06 00 06  	addi	a3, zero, 96
80000818: 13 07 00 0e  	addi	a4, zero, 224
8000081c: ab 20 d6 00  	scfgw	a2, a3
80000820: ab 20 e5 00  	scfgw	a0, a4
80000824: 13 05 00 02  	addi	a0, zero, 32
80000828: ab 20 a0 00  	scfgw	zero, a0
8000082c: 2b a0 07 3a  	scfgwi	a5, 928
80000830: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000834: 13 09 10 00  	addi	s2, zero, 1
80000838: 87 b1 05 00  	fld	ft3, 0(a1)
8000083c: 93 08 10 13  	addi	a7, zero, 305
80000840: 93 09 10 00  	addi	s3, zero, 1
80000844: 13 0a 10 00  	addi	s4, zero, 1
80000848: 93 06 10 00  	addi	a3, zero, 1
8000084c: 13 07 10 00  	addi	a4, zero, 1
80000850: 93 07 10 00  	addi	a5, zero, 1
80000854: 93 04 10 00  	addi	s1, zero, 1
80000858: 13 04 10 00  	addi	s0, zero, 1
8000085c: 13 05 10 00  	addi	a0, zero, 1
80000860: 93 05 10 00  	addi	a1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000864: 53 80 31 22  	fmv.d	ft0, ft3
80000868: 13 76 f9 00  	andi	a2, s2, 15
8000086c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000870: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000874: 53 00 42 22  	fmv.d	ft0, ft4
80000878: 13 76 e8 00  	andi	a2, a6, 14
8000087c: 13 66 16 00  	ori	a2, a2, 1
80000880: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000884: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000888: 53 00 42 22  	fmv.d	ft0, ft4
8000088c: 13 f6 f9 00  	andi	a2, s3, 15
80000890: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000894: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000898: 53 00 42 22  	fmv.d	ft0, ft4
8000089c: 13 f6 c2 00  	andi	a2, t0, 12
800008a0: 13 66 16 00  	ori	a2, a2, 1
800008a4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008ac: 53 00 42 22  	fmv.d	ft0, ft4
800008b0: 13 76 fa 00  	andi	a2, s4, 15
800008b4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008bc: 53 00 42 22  	fmv.d	ft0, ft4
800008c0: 13 76 e3 00  	andi	a2, t1, 14
800008c4: 13 66 16 00  	ori	a2, a2, 1
800008c8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008cc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008d0: 53 00 42 22  	fmv.d	ft0, ft4
800008d4: 13 f6 f6 00  	andi	a2, a3, 15
800008d8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008dc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e0: 53 00 42 22  	fmv.d	ft0, ft4
800008e4: 13 f6 83 00  	andi	a2, t2, 8
800008e8: 13 66 16 00  	ori	a2, a2, 1
800008ec: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008f0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f4: 53 00 42 22  	fmv.d	ft0, ft4
800008f8: 13 76 f7 00  	andi	a2, a4, 15
800008fc: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000900: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000904: 53 00 42 22  	fmv.d	ft0, ft4
80000908: 13 76 ee 00  	andi	a2, t3, 14
8000090c: 13 66 16 00  	ori	a2, a2, 1
80000910: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000914: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000918: 53 00 42 22  	fmv.d	ft0, ft4
8000091c: 13 f6 f7 00  	andi	a2, a5, 15
80000920: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000924: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000928: 53 00 42 22  	fmv.d	ft0, ft4
8000092c: 13 f6 ce 00  	andi	a2, t4, 12
80000930: 13 66 16 00  	ori	a2, a2, 1
80000934: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000938: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000093c: 53 00 42 22  	fmv.d	ft0, ft4
80000940: 13 f6 f4 00  	andi	a2, s1, 15
80000944: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000948: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000094c: 53 00 42 22  	fmv.d	ft0, ft4
80000950: 13 76 ef 00  	andi	a2, t5, 14
80000954: 13 66 16 00  	ori	a2, a2, 1
80000958: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000095c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000960: 53 00 42 22  	fmv.d	ft0, ft4
80000964: 13 76 f4 00  	andi	a2, s0, 15
80000968: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000096c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000970: 53 00 42 22  	fmv.d	ft0, ft4
80000974: 53 80 31 22  	fmv.d	ft0, ft3
80000978: 13 76 f5 00  	andi	a2, a0, 15
8000097c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000980: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000984: 53 00 42 22  	fmv.d	ft0, ft4
80000988: 13 f6 ef 00  	andi	a2, t6, 14
8000098c: 13 66 16 00  	ori	a2, a2, 1
80000990: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000994: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000998: 53 00 42 22  	fmv.d	ft0, ft4
8000099c: 13 f6 f5 00  	andi	a2, a1, 15
800009a0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009a4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009a8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009ac: 93 85 35 01  	addi	a1, a1, 19
800009b0: 93 8f 2f 01  	addi	t6, t6, 18
800009b4: 13 05 15 01  	addi	a0, a0, 17
800009b8: 13 04 f4 00  	addi	s0, s0, 15
800009bc: 13 0f ef 00  	addi	t5, t5, 14
800009c0: 93 84 d4 00  	addi	s1, s1, 13
800009c4: 93 8e ce 00  	addi	t4, t4, 12
800009c8: 93 87 b7 00  	addi	a5, a5, 11
800009cc: 13 0e ae 00  	addi	t3, t3, 10
800009d0: 13 07 97 00  	addi	a4, a4, 9
800009d4: 93 83 83 00  	addi	t2, t2, 8
800009d8: 93 86 76 00  	addi	a3, a3, 7
800009dc: 13 03 63 00  	addi	t1, t1, 6
800009e0: 13 0a 5a 00  	addi	s4, s4, 5
800009e4: 93 82 42 00  	addi	t0, t0, 4
800009e8: 93 89 39 00  	addi	s3, s3, 3
800009ec: 13 08 28 00  	addi	a6, a6, 2
800009f0: 13 09 19 00  	addi	s2, s2, 1
800009f4: e3 98 15 e7  	bne	a1, a7, 0x80000864 <.LBB0_174+0xa0>
800009f8: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009fc: 6f 00 40 20  	j	0x80000c00 <.LBB0_174+0x43c>
80000a00: 93 08 00 00  	mv	a7, zero
80000a04: 13 0e 00 00  	mv	t3, zero
80000a08: 93 0e 00 00  	mv	t4, zero
80000a0c: 13 0f 00 00  	mv	t5, zero
80000a10: 93 0f 00 00  	mv	t6, zero
80000a14: 13 09 00 00  	mv	s2, zero
80000a18: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a1c: 13 85 07 05  	addi	a0, a5, 80
80000a20: 13 0a 10 00  	addi	s4, zero, 1
80000a24: 37 a6 89 3f  	lui	a2, 260250
80000a28: 93 02 96 99  	addi	t0, a2, -1639
80000a2c: 37 a6 99 99  	lui	a2, 629146
80000a30: 13 03 a6 99  	addi	t1, a2, -1638
80000a34: 87 b1 05 00  	fld	ft3, 0(a1)
80000a38: 93 03 10 13  	addi	t2, zero, 305
80000a3c: 93 0a 10 00  	addi	s5, zero, 1
80000a40: 93 0b 10 00  	addi	s7, zero, 1
80000a44: 13 0b 10 00  	addi	s6, zero, 1
80000a48: 93 07 10 00  	addi	a5, zero, 1
80000a4c: 93 04 10 00  	addi	s1, zero, 1
80000a50: 13 04 10 00  	addi	s0, zero, 1
80000a54: 93 05 10 00  	addi	a1, zero, 1
80000a58: 13 06 10 00  	addi	a2, zero, 1
80000a5c: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000a60: 23 2a 55 fa  	sw	t0, -76(a0)
80000a64: 23 28 65 fa  	sw	t1, -80(a0)
80000a68: 13 f7 f6 00  	andi	a4, a3, 15
80000a6c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a70: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a74: 27 3c 45 fa  	fsd	ft4, -72(a0)
80000a78: 13 77 e9 00  	andi	a4, s2, 14
80000a7c: 13 67 17 00  	ori	a4, a4, 1
80000a80: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a84: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a88: 27 30 45 fc  	fsd	ft4, -64(a0)
80000a8c: 13 77 f4 00  	andi	a4, s0, 15
80000a90: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a98: 27 34 45 fc  	fsd	ft4, -56(a0)
80000a9c: 13 f7 cf 00  	andi	a4, t6, 12
80000aa0: 13 67 17 00  	ori	a4, a4, 1
80000aa4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aa8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aac: 27 38 45 fc  	fsd	ft4, -48(a0)
80000ab0: 13 f7 f7 00  	andi	a4, a5, 15
80000ab4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ab8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000abc: 27 3c 45 fc  	fsd	ft4, -40(a0)
80000ac0: 13 f7 ee 00  	andi	a4, t4, 14
80000ac4: 13 67 17 00  	ori	a4, a4, 1
80000ac8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000acc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ad0: 27 30 45 fe  	fsd	ft4, -32(a0)
80000ad4: 13 f7 fb 00  	andi	a4, s7, 15
80000ad8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000adc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ae0: 27 34 45 fe  	fsd	ft4, -24(a0)
80000ae4: 13 f7 88 00  	andi	a4, a7, 8
80000ae8: 13 67 17 00  	ori	a4, a4, 1
80000aec: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000af0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af4: 27 38 45 fe  	fsd	ft4, -16(a0)
80000af8: 13 77 fa 00  	andi	a4, s4, 15
80000afc: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b00: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b04: 27 3c 45 fe  	fsd	ft4, -8(a0)
80000b08: 13 77 e8 00  	andi	a4, a6, 14
80000b0c: 13 67 17 00  	ori	a4, a4, 1
80000b10: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b14: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b18: 27 30 45 00  	fsd	ft4, 0(a0)
80000b1c: 13 f7 fa 00  	andi	a4, s5, 15
80000b20: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b28: 27 34 45 00  	fsd	ft4, 8(a0)
80000b2c: 13 77 ce 00  	andi	a4, t3, 12
80000b30: 13 67 17 00  	ori	a4, a4, 1
80000b34: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b38: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b3c: 27 38 45 00  	fsd	ft4, 16(a0)
80000b40: 13 77 fb 00  	andi	a4, s6, 15
80000b44: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b48: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b4c: 27 3c 45 00  	fsd	ft4, 24(a0)
80000b50: 13 77 ef 00  	andi	a4, t5, 14
80000b54: 13 67 17 00  	ori	a4, a4, 1
80000b58: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b5c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b60: 27 30 45 02  	fsd	ft4, 32(a0)
80000b64: 13 f7 f4 00  	andi	a4, s1, 15
80000b68: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b6c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b70: 27 34 45 02  	fsd	ft4, 40(a0)
80000b74: 23 2a 55 02  	sw	t0, 52(a0)
80000b78: 23 28 65 02  	sw	t1, 48(a0)
80000b7c: 13 f7 f5 00  	andi	a4, a1, 15
80000b80: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b84: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b88: 27 3c 45 02  	fsd	ft4, 56(a0)
80000b8c: 13 f7 e9 00  	andi	a4, s3, 14
80000b90: 13 67 17 00  	ori	a4, a4, 1
80000b94: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b98: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b9c: 27 30 45 04  	fsd	ft4, 64(a0)
80000ba0: 13 77 f6 00  	andi	a4, a2, 15
80000ba4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ba8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000bac: 27 34 45 04  	fsd	ft4, 72(a0)
;   for (i = 0; i < ni; i++)
80000bb0: 93 86 16 00  	addi	a3, a3, 1
80000bb4: 13 06 36 01  	addi	a2, a2, 19
80000bb8: 93 89 29 01  	addi	s3, s3, 18
80000bbc: 13 09 29 00  	addi	s2, s2, 2
80000bc0: 93 85 15 01  	addi	a1, a1, 17
80000bc4: 13 04 34 00  	addi	s0, s0, 3
80000bc8: 93 8f 4f 00  	addi	t6, t6, 4
80000bcc: 93 84 f4 00  	addi	s1, s1, 15
80000bd0: 93 87 57 00  	addi	a5, a5, 5
80000bd4: 13 0f ef 00  	addi	t5, t5, 14
80000bd8: 93 8e 6e 00  	addi	t4, t4, 6
80000bdc: 13 0b db 00  	addi	s6, s6, 13
80000be0: 93 8b 7b 00  	addi	s7, s7, 7
80000be4: 13 0e ce 00  	addi	t3, t3, 12
80000be8: 93 88 88 00  	addi	a7, a7, 8
80000bec: 93 8a ba 00  	addi	s5, s5, 11
80000bf0: 13 05 05 0a  	addi	a0, a0, 160
80000bf4: 13 08 a8 00  	addi	a6, a6, 10
80000bf8: 13 0a 9a 00  	addi	s4, s4, 9
80000bfc: e3 12 76 e6  	bne	a2, t2, 0x80000a60 <.LBB0_174+0x29c>
;   for (i = 0; i < nk; i++)
80000c00: 13 d5 4c 01  	srli	a0, s9, 20
80000c04: 33 35 a0 00  	snez	a0, a0
80000c08: b7 f5 11 00  	lui	a1, 287
80000c0c: 93 85 95 4c  	addi	a1, a1, 1225
80000c10: b3 b5 bc 00  	sltu	a1, s9, a1
80000c14: b3 75 b5 00  	and	a1, a0, a1

80000c18 <.LBB0_175>:
80000c18: 17 55 00 00  	auipc	a0, 5
80000c1c: 13 05 85 48  	addi	a0, a0, 1160
80000c20: 23 2a 81 03  	sw	s8, 52(sp)
80000c24: 23 22 91 05  	sw	s9, 68(sp)
80000c28: 23 2c b1 00  	sw	a1, 24(sp)
80000c2c: 63 86 05 2e  	beqz	a1, 0x80000f18 <.LBB0_176+0x28c>
80000c30: 93 08 00 00  	mv	a7, zero
80000c34: 93 02 00 00  	mv	t0, zero
80000c38: 13 03 00 00  	mv	t1, zero
80000c3c: 93 05 80 00  	addi	a1, zero, 8
80000c40: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < nk; i++)
80000c44: 93 06 00 04  	addi	a3, zero, 64
80000c48: 13 07 00 0c  	addi	a4, zero, 192
80000c4c: ab 20 d6 00  	scfgw	a2, a3
80000c50: ab a0 e5 00  	scfgw	a1, a4
80000c54: 13 06 30 01  	addi	a2, zero, 19
80000c58: 93 06 00 06  	addi	a3, zero, 96
80000c5c: 13 07 00 0e  	addi	a4, zero, 224
80000c60: ab 20 d6 00  	scfgw	a2, a3
80000c64: ab a0 e5 00  	scfgw	a1, a4
80000c68: 93 05 00 02  	addi	a1, zero, 32
80000c6c: ab 20 b0 00  	scfgw	zero, a1
80000c70: 2b a0 0c 3a  	scfgwi	s9, 928
80000c74: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000c78: 13 0f 20 00  	addi	t5, zero, 2
80000c7c: b7 95 e3 38  	lui	a1, 233017
80000c80: 13 87 95 e3  	addi	a4, a1, -455
80000c84: 93 07 20 01  	addi	a5, zero, 18
80000c88: 87 31 05 00  	fld	ft3, 0(a0)

80000c8c <.LBB0_176>:
80000c8c: 17 55 00 00  	auipc	a0, 5
80000c90: 13 05 c5 41  	addi	a0, a0, 1052
80000c94: 07 32 05 00  	fld	ft4, 0(a0)
80000c98: 13 08 a0 02  	addi	a6, zero, 42
80000c9c: 93 03 20 00  	addi	t2, zero, 2
80000ca0: 93 0f 20 00  	addi	t6, zero, 2
80000ca4: 13 09 20 00  	addi	s2, zero, 2
80000ca8: 13 0e 20 00  	addi	t3, zero, 2
80000cac: 93 09 20 00  	addi	s3, zero, 2
80000cb0: 13 0a 20 00  	addi	s4, zero, 2
80000cb4: 93 0e 20 00  	addi	t4, zero, 2
80000cb8: 93 0a 20 00  	addi	s5, zero, 2
80000cbc: 93 0b 20 00  	addi	s7, zero, 2
80000cc0: 13 0c 20 00  	addi	s8, zero, 2
80000cc4: 13 0b 20 00  	addi	s6, zero, 2
80000cc8: 13 06 20 00  	addi	a2, zero, 2
80000ccc: 13 04 20 00  	addi	s0, zero, 2
80000cd0: 93 05 20 00  	addi	a1, zero, 2
80000cd4: 93 06 20 00  	addi	a3, zero, 2
80000cd8: 93 04 20 00  	addi	s1, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000cdc: 33 35 ef 02  	mulhu	a0, t5, a4
80000ce0: 13 55 25 00  	srli	a0, a0, 2
80000ce4: 33 05 f5 02  	mul	a0, a0, a5
80000ce8: 33 05 af 40  	sub	a0, t5, a0
80000cec: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000cf0: 33 b5 e4 02  	mulhu	a0, s1, a4
80000cf4: 13 55 25 00  	srli	a0, a0, 2
80000cf8: 33 05 f5 02  	mul	a0, a0, a5
80000cfc: 33 85 a4 40  	sub	a0, s1, a0
80000d00: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000d04: 33 b5 e8 02  	mulhu	a0, a7, a4
80000d08: 13 55 25 00  	srli	a0, a0, 2
80000d0c: 33 05 f5 02  	mul	a0, a0, a5
80000d10: 33 85 a3 40  	sub	a0, t2, a0
80000d14: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000d18: 33 b5 ef 02  	mulhu	a0, t6, a4
80000d1c: 13 55 25 00  	srli	a0, a0, 2
80000d20: 33 05 f5 02  	mul	a0, a0, a5
80000d24: 33 85 af 40  	sub	a0, t6, a0
80000d28: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000d2c: 33 35 e9 02  	mulhu	a0, s2, a4
80000d30: 13 55 25 00  	srli	a0, a0, 2
80000d34: 33 05 f5 02  	mul	a0, a0, a5
80000d38: 33 05 a9 40  	sub	a0, s2, a0
80000d3c: d3 05 05 d2  	fcvt.d.w	fa1, a0
80000d40: 33 b5 e2 02  	mulhu	a0, t0, a4
80000d44: 13 55 25 00  	srli	a0, a0, 2
80000d48: 33 05 f5 02  	mul	a0, a0, a5
80000d4c: 33 05 ae 40  	sub	a0, t3, a0
80000d50: 53 06 05 d2  	fcvt.d.w	fa2, a0
80000d54: 33 b5 e9 02  	mulhu	a0, s3, a4
80000d58: 13 55 25 00  	srli	a0, a0, 2
80000d5c: 33 05 f5 02  	mul	a0, a0, a5
80000d60: 33 85 a9 40  	sub	a0, s3, a0
80000d64: d3 06 05 d2  	fcvt.d.w	fa3, a0
80000d68: 33 35 ea 02  	mulhu	a0, s4, a4
80000d6c: 13 55 25 00  	srli	a0, a0, 2
80000d70: 33 05 f5 02  	mul	a0, a0, a5
80000d74: 33 05 aa 40  	sub	a0, s4, a0
80000d78: 53 07 05 d2  	fcvt.d.w	fa4, a0
80000d7c: 33 35 e3 02  	mulhu	a0, t1, a4
80000d80: 13 55 25 00  	srli	a0, a0, 2
80000d84: 33 05 f5 02  	mul	a0, a0, a5
80000d88: 33 85 ae 40  	sub	a0, t4, a0
80000d8c: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000d90: 33 b5 ea 02  	mulhu	a0, s5, a4
80000d94: 13 55 25 00  	srli	a0, a0, 2
80000d98: 33 05 f5 02  	mul	a0, a0, a5
80000d9c: 33 85 aa 40  	sub	a0, s5, a0
80000da0: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000da4: 33 b5 eb 02  	mulhu	a0, s7, a4
80000da8: 13 55 25 00  	srli	a0, a0, 2
80000dac: 33 05 f5 02  	mul	a0, a0, a5
80000db0: 33 85 ab 40  	sub	a0, s7, a0
80000db4: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000db8: 33 35 ec 02  	mulhu	a0, s8, a4
80000dbc: 13 55 25 00  	srli	a0, a0, 2
80000dc0: 33 05 f5 02  	mul	a0, a0, a5
80000dc4: 33 05 ac 40  	sub	a0, s8, a0
80000dc8: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000dcc: 33 35 eb 02  	mulhu	a0, s6, a4
80000dd0: 13 55 25 00  	srli	a0, a0, 2
80000dd4: 33 05 f5 02  	mul	a0, a0, a5
80000dd8: 33 05 ab 40  	sub	a0, s6, a0
80000ddc: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000de0: 33 35 e6 02  	mulhu	a0, a2, a4
80000de4: 13 55 25 00  	srli	a0, a0, 2
80000de8: 33 05 f5 02  	mul	a0, a0, a5
80000dec: 33 05 a6 40  	sub	a0, a2, a0
80000df0: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000df4: 33 35 e4 02  	mulhu	a0, s0, a4
80000df8: 13 55 25 00  	srli	a0, a0, 2
80000dfc: 33 05 f5 02  	mul	a0, a0, a5
80000e00: 33 05 a4 40  	sub	a0, s0, a0
80000e04: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000e08: 33 b5 e5 02  	mulhu	a0, a1, a4
80000e0c: 13 55 25 00  	srli	a0, a0, 2
80000e10: 33 05 f5 02  	mul	a0, a0, a5
80000e14: 33 85 a5 40  	sub	a0, a1, a0
80000e18: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000e1c: 33 b5 e6 02  	mulhu	a0, a3, a4
80000e20: 13 55 25 00  	srli	a0, a0, 2
80000e24: 33 05 f5 02  	mul	a0, a0, a5
80000e28: 33 85 a6 40  	sub	a0, a3, a0
80000e2c: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000e30: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80000e34: 53 80 52 22  	fmv.d	ft0, ft5
80000e38: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80000e3c: 53 80 52 22  	fmv.d	ft0, ft5
80000e40: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
80000e44: 53 80 52 22  	fmv.d	ft0, ft5
80000e48: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80000e4c: 53 80 52 22  	fmv.d	ft0, ft5
80000e50: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
80000e54: 53 80 52 22  	fmv.d	ft0, ft5
80000e58: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80000e5c: 53 80 52 22  	fmv.d	ft0, ft5
80000e60: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
80000e64: 53 80 52 22  	fmv.d	ft0, ft5
80000e68: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80000e6c: 53 80 52 22  	fmv.d	ft0, ft5
80000e70: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80000e74: 53 80 52 22  	fmv.d	ft0, ft5
80000e78: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80000e7c: 53 80 52 22  	fmv.d	ft0, ft5
80000e80: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80000e84: 53 80 52 22  	fmv.d	ft0, ft5
80000e88: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80000e8c: 53 80 52 22  	fmv.d	ft0, ft5
80000e90: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80000e94: 53 80 52 22  	fmv.d	ft0, ft5
80000e98: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80000e9c: 53 80 52 22  	fmv.d	ft0, ft5
80000ea0: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80000ea4: 53 80 52 22  	fmv.d	ft0, ft5
80000ea8: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80000eac: 53 80 52 22  	fmv.d	ft0, ft5
80000eb0: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80000eb4: 53 80 52 22  	fmv.d	ft0, ft5
80000eb8: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < nk; i++)
80000ebc: 93 84 24 00  	addi	s1, s1, 2
80000ec0: 93 86 16 01  	addi	a3, a3, 17
80000ec4: 93 85 05 01  	addi	a1, a1, 16
80000ec8: 13 04 f4 00  	addi	s0, s0, 15
80000ecc: 13 06 e6 00  	addi	a2, a2, 14
80000ed0: 13 0b db 00  	addi	s6, s6, 13
80000ed4: 13 0c cc 00  	addi	s8, s8, 12
80000ed8: 93 8b bb 00  	addi	s7, s7, 11
80000edc: 93 8a aa 00  	addi	s5, s5, 10
80000ee0: 93 8e 9e 00  	addi	t4, t4, 9
80000ee4: 13 03 93 00  	addi	t1, t1, 9
80000ee8: 13 0a 8a 00  	addi	s4, s4, 8
80000eec: 93 89 79 00  	addi	s3, s3, 7
80000ef0: 13 0e 6e 00  	addi	t3, t3, 6
80000ef4: 93 82 62 00  	addi	t0, t0, 6
80000ef8: 13 09 59 00  	addi	s2, s2, 5
80000efc: 93 8f 4f 00  	addi	t6, t6, 4
80000f00: 93 83 33 00  	addi	t2, t2, 3
80000f04: 93 88 38 00  	addi	a7, a7, 3
80000f08: 13 0f 1f 00  	addi	t5, t5, 1
80000f0c: e3 98 04 dd  	bne	s1, a6, 0x80000cdc <.LBB0_176+0x50>
80000f10: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f14: 6f 00 80 2b  	j	0x800011cc <.LBB0_176+0x540>
80000f18: 13 03 00 00  	mv	t1, zero
80000f1c: 93 03 00 00  	mv	t2, zero
80000f20: 13 0e 00 00  	mv	t3, zero
;   for (i = 0; i < nk; i++)
80000f24: 93 86 8c 04  	addi	a3, s9, 72
80000f28: 13 0f 20 00  	addi	t5, zero, 2
80000f2c: b7 95 e3 38  	lui	a1, 233017
80000f30: 93 87 95 e3  	addi	a5, a1, -455
80000f34: 93 04 20 01  	addi	s1, zero, 18
80000f38: 87 31 05 00  	fld	ft3, 0(a0)
80000f3c: 37 c5 96 3f  	lui	a0, 260460
80000f40: 13 08 c5 16  	addi	a6, a0, 364
80000f44: 37 75 c1 16  	lui	a0, 93207
80000f48: 93 02 75 c1  	addi	t0, a0, -1001
80000f4c: 93 08 a0 02  	addi	a7, zero, 42
80000f50: 93 0f 20 00  	addi	t6, zero, 2
80000f54: 93 0e 20 00  	addi	t4, zero, 2
80000f58: 93 09 20 00  	addi	s3, zero, 2
80000f5c: 13 0a 20 00  	addi	s4, zero, 2
80000f60: 93 0a 20 00  	addi	s5, zero, 2
80000f64: 93 0b 20 00  	addi	s7, zero, 2
80000f68: 13 0c 20 00  	addi	s8, zero, 2
80000f6c: 13 09 20 00  	addi	s2, zero, 2
80000f70: 13 0d 20 00  	addi	s10, zero, 2
80000f74: 93 0d 20 00  	addi	s11, zero, 2
80000f78: 13 0b 20 00  	addi	s6, zero, 2
80000f7c: 13 07 20 00  	addi	a4, zero, 2
80000f80: 13 04 20 00  	addi	s0, zero, 2
80000f84: 93 0c 20 00  	addi	s9, zero, 2
80000f88: 93 05 20 00  	addi	a1, zero, 2
80000f8c: 13 06 20 00  	addi	a2, zero, 2
;       B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
80000f90: 33 b5 f5 02  	mulhu	a0, a1, a5
80000f94: 13 55 25 00  	srli	a0, a0, 2
80000f98: 33 05 95 02  	mul	a0, a0, s1
80000f9c: 33 85 a5 40  	sub	a0, a1, a0
80000fa0: 53 02 05 d2  	fcvt.d.w	ft4, a0
80000fa4: 33 35 f6 02  	mulhu	a0, a2, a5
80000fa8: 13 55 25 00  	srli	a0, a0, 2
80000fac: 33 05 95 02  	mul	a0, a0, s1
80000fb0: 33 05 a6 40  	sub	a0, a2, a0
80000fb4: d3 02 05 d2  	fcvt.d.w	ft5, a0
80000fb8: 33 35 fe 02  	mulhu	a0, t3, a5
80000fbc: 13 55 25 00  	srli	a0, a0, 2
80000fc0: 33 05 95 02  	mul	a0, a0, s1
80000fc4: 33 85 ac 40  	sub	a0, s9, a0
80000fc8: 53 03 05 d2  	fcvt.d.w	ft6, a0
80000fcc: 33 35 f7 02  	mulhu	a0, a4, a5
80000fd0: 13 55 25 00  	srli	a0, a0, 2
80000fd4: 33 05 95 02  	mul	a0, a0, s1
80000fd8: 33 05 a7 40  	sub	a0, a4, a0
80000fdc: d3 03 05 d2  	fcvt.d.w	ft7, a0
80000fe0: 33 b5 fd 02  	mulhu	a0, s11, a5
80000fe4: 13 55 25 00  	srli	a0, a0, 2
80000fe8: 33 05 95 02  	mul	a0, a0, s1
80000fec: 33 85 ad 40  	sub	a0, s11, a0
80000ff0: 53 05 05 d2  	fcvt.d.w	fa0, a0
80000ff4: 33 b5 f3 02  	mulhu	a0, t2, a5
80000ff8: 13 55 25 00  	srli	a0, a0, 2
80000ffc: 33 05 95 02  	mul	a0, a0, s1
80001000: 33 05 a9 40  	sub	a0, s2, a0
80001004: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001008: 33 b5 fb 02  	mulhu	a0, s7, a5
8000100c: 13 55 25 00  	srli	a0, a0, 2
80001010: 33 05 95 02  	mul	a0, a0, s1
80001014: 33 85 ab 40  	sub	a0, s7, a0
80001018: 53 06 05 d2  	fcvt.d.w	fa2, a0
8000101c: 33 35 fa 02  	mulhu	a0, s4, a5
80001020: 13 55 25 00  	srli	a0, a0, 2
80001024: 33 05 95 02  	mul	a0, a0, s1
80001028: 33 05 aa 40  	sub	a0, s4, a0
8000102c: d3 06 05 d2  	fcvt.d.w	fa3, a0
80001030: 33 35 f3 02  	mulhu	a0, t1, a5
80001034: 13 55 25 00  	srli	a0, a0, 2
80001038: 33 05 95 02  	mul	a0, a0, s1
8000103c: 33 85 ae 40  	sub	a0, t4, a0
80001040: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001044: 33 35 ff 02  	mulhu	a0, t5, a5
80001048: 13 55 25 00  	srli	a0, a0, 2
8000104c: 33 05 95 02  	mul	a0, a0, s1
80001050: 33 05 af 40  	sub	a0, t5, a0
80001054: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001058: 33 b5 ff 02  	mulhu	a0, t6, a5
8000105c: 13 55 25 00  	srli	a0, a0, 2
80001060: 33 05 95 02  	mul	a0, a0, s1
80001064: 33 85 af 40  	sub	a0, t6, a0
80001068: 53 08 05 d2  	fcvt.d.w	fa6, a0
8000106c: 33 b5 f9 02  	mulhu	a0, s3, a5
80001070: 13 55 25 00  	srli	a0, a0, 2
80001074: 33 05 95 02  	mul	a0, a0, s1
80001078: 33 85 a9 40  	sub	a0, s3, a0
8000107c: d3 08 05 d2  	fcvt.d.w	fa7, a0
80001080: 33 b5 fa 02  	mulhu	a0, s5, a5
80001084: 13 55 25 00  	srli	a0, a0, 2
80001088: 33 05 95 02  	mul	a0, a0, s1
8000108c: 33 85 aa 40  	sub	a0, s5, a0
80001090: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80001094: 33 35 fc 02  	mulhu	a0, s8, a5
80001098: 13 55 25 00  	srli	a0, a0, 2
8000109c: 33 05 95 02  	mul	a0, a0, s1
800010a0: 33 05 ac 40  	sub	a0, s8, a0
800010a4: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800010a8: 33 35 fd 02  	mulhu	a0, s10, a5
800010ac: 13 55 25 00  	srli	a0, a0, 2
800010b0: 33 05 95 02  	mul	a0, a0, s1
800010b4: 33 05 ad 40  	sub	a0, s10, a0
800010b8: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800010bc: 33 35 fb 02  	mulhu	a0, s6, a5
800010c0: 13 55 25 00  	srli	a0, a0, 2
800010c4: 33 05 95 02  	mul	a0, a0, s1
800010c8: 33 05 ab 40  	sub	a0, s6, a0
800010cc: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800010d0: 33 35 f4 02  	mulhu	a0, s0, a5
800010d4: 13 55 25 00  	srli	a0, a0, 2
800010d8: 33 05 95 02  	mul	a0, a0, s1
800010dc: 33 05 a4 40  	sub	a0, s0, a0
800010e0: 53 04 05 d2  	fcvt.d.w	fs0, a0
800010e4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800010e8: 27 bc 46 fa  	fsd	ft4, -72(a3)
800010ec: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800010f0: 27 b0 46 fc  	fsd	ft4, -64(a3)
800010f4: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800010f8: 27 b4 46 fc  	fsd	ft4, -56(a3)
800010fc: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001100: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001104: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001108: 27 bc 46 fc  	fsd	ft4, -40(a3)
8000110c: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001110: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001114: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001118: 27 b4 46 fe  	fsd	ft4, -24(a3)
8000111c: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001120: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001124: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001128: 27 bc 46 fe  	fsd	ft4, -8(a3)
8000112c: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001130: 27 b0 46 00  	fsd	ft4, 0(a3)
80001134: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001138: 27 b4 46 00  	fsd	ft4, 8(a3)
8000113c: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001140: 27 b8 46 00  	fsd	ft4, 16(a3)
80001144: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001148: 27 bc 46 00  	fsd	ft4, 24(a3)
8000114c: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001150: 27 b0 46 02  	fsd	ft4, 32(a3)
80001154: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001158: 27 b4 46 02  	fsd	ft4, 40(a3)
8000115c: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001160: 27 b8 46 02  	fsd	ft4, 48(a3)
80001164: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001168: 27 bc 46 02  	fsd	ft4, 56(a3)
8000116c: 23 a2 06 05  	sw	a6, 68(a3)
80001170: 23 a0 56 04  	sw	t0, 64(a3)
;   for (i = 0; i < nk; i++)
80001174: 13 06 26 00  	addi	a2, a2, 2
80001178: 93 85 15 00  	addi	a1, a1, 1
8000117c: 93 8c 3c 00  	addi	s9, s9, 3
80001180: 13 0e 3e 00  	addi	t3, t3, 3
80001184: 13 04 14 01  	addi	s0, s0, 17
80001188: 13 07 47 00  	addi	a4, a4, 4
8000118c: 13 0b 0b 01  	addi	s6, s6, 16
80001190: 93 8d 5d 00  	addi	s11, s11, 5
80001194: 13 0d fd 00  	addi	s10, s10, 15
80001198: 13 09 69 00  	addi	s2, s2, 6
8000119c: 93 83 63 00  	addi	t2, t2, 6
800011a0: 13 0c ec 00  	addi	s8, s8, 14
800011a4: 93 8b 7b 00  	addi	s7, s7, 7
800011a8: 93 8a da 00  	addi	s5, s5, 13
800011ac: 13 0a 8a 00  	addi	s4, s4, 8
800011b0: 93 89 c9 00  	addi	s3, s3, 12
800011b4: 93 8e 9e 00  	addi	t4, t4, 9
800011b8: 13 03 93 00  	addi	t1, t1, 9
800011bc: 93 8f bf 00  	addi	t6, t6, 11
800011c0: 93 86 06 09  	addi	a3, a3, 144
800011c4: 13 0f af 00  	addi	t5, t5, 10
800011c8: e3 14 16 dd  	bne	a2, a7, 0x80000f90 <.LBB0_176+0x304>
800011cc: 23 24 11 02  	sw	ra, 40(sp)
800011d0: 03 2b c1 03  	lw	s6, 60(sp)
;   for (i = 0; i < nj; i++)
800011d4: 13 55 4b 01  	srli	a0, s6, 20
800011d8: 33 35 a0 00  	snez	a0, a0
800011dc: b7 f5 11 00  	lui	a1, 287
800011e0: 93 85 95 28  	addi	a1, a1, 649
800011e4: b3 35 bb 00  	sltu	a1, s6, a1
800011e8: 33 75 b5 00  	and	a0, a0, a1

800011ec <.LBB0_177>:
800011ec: 17 5a 00 00  	auipc	s4, 5
800011f0: 13 0a 4a ec  	addi	s4, s4, -316
800011f4: 23 2e a1 00  	sw	a0, 28(sp)
800011f8: 63 04 05 3a  	beqz	a0, 0x800015a0 <.LBB0_177+0x3b4>
800011fc: 93 08 00 00  	mv	a7, zero
80001200: 93 03 00 00  	mv	t2, zero
80001204: 13 0e 00 00  	mv	t3, zero
80001208: 93 0e 00 00  	mv	t4, zero
8000120c: 93 0b 00 00  	mv	s7, zero
80001210: 13 0c 00 00  	mv	s8, zero
80001214: 93 0c 00 00  	mv	s9, zero
80001218: 13 0d 00 00  	mv	s10, zero
8000121c: 93 0d 00 00  	mv	s11, zero
80001220: 93 00 00 00  	mv	ra, zero
80001224: 93 0a 00 00  	mv	s5, zero
80001228: 13 06 00 00  	mv	a2, zero
8000122c: 13 07 00 00  	mv	a4, zero
80001230: 93 05 00 00  	mv	a1, zero
80001234: 93 06 00 00  	mv	a3, zero
80001238: 93 07 00 00  	mv	a5, zero
8000123c: 93 04 00 00  	mv	s1, zero
80001240: 13 04 00 00  	mv	s0, zero
80001244: 13 08 00 00  	mv	a6, zero
80001248: 93 02 00 00  	mv	t0, zero
8000124c: 13 03 00 00  	mv	t1, zero
80001250: 13 09 00 00  	mv	s2, zero
80001254: 13 0f 00 00  	mv	t5, zero
80001258: 93 0f 80 00  	addi	t6, zero, 8
8000125c: 93 09 70 01  	addi	s3, zero, 23
;   for (i = 0; i < nj; i++)
80001260: 13 05 00 04  	addi	a0, zero, 64
80001264: ab a0 a9 00  	scfgw	s3, a0
80001268: 13 05 00 0c  	addi	a0, zero, 192
8000126c: ab a0 af 00  	scfgw	t6, a0
80001270: 93 09 10 01  	addi	s3, zero, 17
80001274: 13 05 00 06  	addi	a0, zero, 96
80001278: ab a0 a9 00  	scfgw	s3, a0
8000127c: 13 05 00 0e  	addi	a0, zero, 224
80001280: ab a0 af 00  	scfgw	t6, a0
80001284: 13 05 00 02  	addi	a0, zero, 32
80001288: ab 20 a0 00  	scfgw	zero, a0
8000128c: 2b 20 0b 3a  	scfgwi	s6, 928
80001290: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001294: 37 95 2e ba  	lui	a0, 762601
80001298: 93 0f 35 ba  	addi	t6, a0, -1117
8000129c: 13 0b a0 fe  	addi	s6, zero, -22
800012a0: 87 31 0a 00  	fld	ft3, 0(s4)
800012a4: 93 09 60 01  	addi	s3, zero, 22
800012a8: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012ac: 13 0a 40 1d  	addi	s4, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012b0: 33 b5 f8 03  	mulhu	a0, a7, t6
800012b4: 13 55 45 00  	srli	a0, a0, 4
800012b8: 33 05 35 03  	mul	a0, a0, s3
800012bc: 33 85 a8 40  	sub	a0, a7, a0
800012c0: d3 02 05 d2  	fcvt.d.w	ft5, a0
800012c4: 33 b5 f3 03  	mulhu	a0, t2, t6
800012c8: 13 55 45 00  	srli	a0, a0, 4
800012cc: 33 05 35 03  	mul	a0, a0, s3
800012d0: 33 85 a3 40  	sub	a0, t2, a0
800012d4: 53 03 05 d2  	fcvt.d.w	ft6, a0
800012d8: 33 35 fe 03  	mulhu	a0, t3, t6
800012dc: 13 55 45 00  	srli	a0, a0, 4
800012e0: 33 05 35 03  	mul	a0, a0, s3
800012e4: 33 05 ae 40  	sub	a0, t3, a0
800012e8: d3 03 05 d2  	fcvt.d.w	ft7, a0
800012ec: 33 b5 fe 03  	mulhu	a0, t4, t6
800012f0: 13 55 45 00  	srli	a0, a0, 4
800012f4: 33 05 35 03  	mul	a0, a0, s3
800012f8: 33 85 ae 40  	sub	a0, t4, a0
800012fc: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001300: 33 b5 fb 03  	mulhu	a0, s7, t6
80001304: 13 55 45 00  	srli	a0, a0, 4
80001308: 33 05 35 03  	mul	a0, a0, s3
8000130c: 33 85 ab 40  	sub	a0, s7, a0
80001310: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001314: 33 35 fc 03  	mulhu	a0, s8, t6
80001318: 13 55 45 00  	srli	a0, a0, 4
8000131c: 33 05 35 03  	mul	a0, a0, s3
80001320: 33 05 ac 40  	sub	a0, s8, a0
80001324: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001328: 33 b5 fc 03  	mulhu	a0, s9, t6
8000132c: 13 55 45 00  	srli	a0, a0, 4
80001330: 33 05 35 03  	mul	a0, a0, s3
80001334: 33 85 ac 40  	sub	a0, s9, a0
80001338: d3 06 05 d2  	fcvt.d.w	fa3, a0
8000133c: 33 35 fd 03  	mulhu	a0, s10, t6
80001340: 13 55 45 00  	srli	a0, a0, 4
80001344: 33 05 35 03  	mul	a0, a0, s3
80001348: 33 05 ad 40  	sub	a0, s10, a0
8000134c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001350: 33 b5 fd 03  	mulhu	a0, s11, t6
80001354: 13 55 45 00  	srli	a0, a0, 4
80001358: 33 05 35 03  	mul	a0, a0, s3
8000135c: 33 85 ad 40  	sub	a0, s11, a0
80001360: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001364: 33 b5 f0 03  	mulhu	a0, ra, t6
80001368: 13 55 45 00  	srli	a0, a0, 4
8000136c: 33 05 35 03  	mul	a0, a0, s3
80001370: 33 85 a0 40  	sub	a0, ra, a0
80001374: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001378: 33 b5 fa 03  	mulhu	a0, s5, t6
8000137c: 13 55 45 00  	srli	a0, a0, 4
80001380: 33 05 35 03  	mul	a0, a0, s3
80001384: 33 85 aa 40  	sub	a0, s5, a0
80001388: d3 08 05 d2  	fcvt.d.w	fa7, a0
8000138c: 33 35 f6 03  	mulhu	a0, a2, t6
80001390: 13 55 45 00  	srli	a0, a0, 4
80001394: 33 05 35 03  	mul	a0, a0, s3
80001398: 33 05 a6 40  	sub	a0, a2, a0
8000139c: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800013a0: 33 35 f7 03  	mulhu	a0, a4, t6
800013a4: 13 55 45 00  	srli	a0, a0, 4
800013a8: 33 05 35 03  	mul	a0, a0, s3
800013ac: 33 05 a7 40  	sub	a0, a4, a0
800013b0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800013b4: 33 b5 f5 03  	mulhu	a0, a1, t6
800013b8: 13 55 45 00  	srli	a0, a0, 4
800013bc: 33 05 35 03  	mul	a0, a0, s3
800013c0: 33 85 a5 40  	sub	a0, a1, a0
800013c4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800013c8: 33 b5 f6 03  	mulhu	a0, a3, t6
800013cc: 13 55 45 00  	srli	a0, a0, 4
800013d0: 33 05 35 03  	mul	a0, a0, s3
800013d4: 33 85 a6 40  	sub	a0, a3, a0
800013d8: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800013dc: 33 b5 f7 03  	mulhu	a0, a5, t6
800013e0: 13 55 45 00  	srli	a0, a0, 4
800013e4: 33 05 35 03  	mul	a0, a0, s3
800013e8: 33 85 a7 40  	sub	a0, a5, a0
800013ec: 53 04 05 d2  	fcvt.d.w	fs0, a0
800013f0: 33 b5 f4 03  	mulhu	a0, s1, t6
800013f4: 13 55 45 00  	srli	a0, a0, 4
800013f8: 33 05 35 03  	mul	a0, a0, s3
800013fc: 33 85 a4 40  	sub	a0, s1, a0
80001400: d3 04 05 d2  	fcvt.d.w	fs1, a0
80001404: 33 35 f4 03  	mulhu	a0, s0, t6
80001408: 13 55 45 00  	srli	a0, a0, 4
8000140c: 33 05 35 03  	mul	a0, a0, s3
80001410: 33 05 a4 40  	sub	a0, s0, a0
80001414: 53 09 05 d2  	fcvt.d.w	fs2, a0
80001418: 33 35 f8 03  	mulhu	a0, a6, t6
8000141c: 13 55 45 00  	srli	a0, a0, 4
80001420: 33 05 35 03  	mul	a0, a0, s3
80001424: 33 05 a8 40  	sub	a0, a6, a0
80001428: d3 09 05 d2  	fcvt.d.w	fs3, a0
8000142c: 33 b5 f2 03  	mulhu	a0, t0, t6
80001430: 13 55 45 00  	srli	a0, a0, 4
80001434: 33 05 35 03  	mul	a0, a0, s3
80001438: 33 85 a2 40  	sub	a0, t0, a0
8000143c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80001440: 33 35 f3 03  	mulhu	a0, t1, t6
80001444: 13 55 45 00  	srli	a0, a0, 4
80001448: 33 05 35 03  	mul	a0, a0, s3
8000144c: 33 05 a3 40  	sub	a0, t1, a0
80001450: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80001454: 33 35 f9 03  	mulhu	a0, s2, t6
80001458: 13 55 45 00  	srli	a0, a0, 4
8000145c: 33 05 35 03  	mul	a0, a0, s3
80001460: 33 05 a9 40  	sub	a0, s2, a0
80001464: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001468: 33 35 ff 03  	mulhu	a0, t5, t6
8000146c: 13 55 45 00  	srli	a0, a0, 4
80001470: 33 05 65 03  	mul	a0, a0, s6
80001474: 33 05 af 00  	add	a0, t5, a0
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
80001538: 13 0f af 01  	addi	t5, t5, 26
8000153c: 13 09 99 01  	addi	s2, s2, 25
80001540: 13 03 83 01  	addi	t1, t1, 24
80001544: 93 82 72 01  	addi	t0, t0, 23
80001548: 13 08 58 01  	addi	a6, a6, 21
8000154c: 13 04 44 01  	addi	s0, s0, 20
80001550: 93 84 34 01  	addi	s1, s1, 19
80001554: 93 87 27 01  	addi	a5, a5, 18
80001558: 93 86 16 01  	addi	a3, a3, 17
8000155c: 93 85 05 01  	addi	a1, a1, 16
80001560: 13 07 f7 00  	addi	a4, a4, 15
80001564: 13 06 e6 00  	addi	a2, a2, 14
80001568: 93 8a da 00  	addi	s5, s5, 13
8000156c: 93 80 c0 00  	addi	ra, ra, 12
80001570: 93 8d bd 00  	addi	s11, s11, 11
80001574: 13 0d ad 00  	addi	s10, s10, 10
80001578: 93 8c 9c 00  	addi	s9, s9, 9
8000157c: 13 0c 8c 00  	addi	s8, s8, 8
80001580: 93 8b 7b 00  	addi	s7, s7, 7
80001584: 93 8e 6e 00  	addi	t4, t4, 6
80001588: 13 0e 5e 00  	addi	t3, t3, 5
8000158c: 93 83 43 00  	addi	t2, t2, 4
80001590: 93 88 38 00  	addi	a7, a7, 3
80001594: e3 1e 4f d1  	bne	t5, s4, 0x800012b0 <.LBB0_177+0xc4>
80001598: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000159c: 6f 00 c0 36  	j	0x80001908 <.LBB0_177+0x71c>
800015a0: 13 08 00 00  	mv	a6, zero
800015a4: 93 08 00 00  	mv	a7, zero
800015a8: 93 02 00 00  	mv	t0, zero
800015ac: 13 03 00 00  	mv	t1, zero
800015b0: 93 03 00 00  	mv	t2, zero
800015b4: 13 0e 00 00  	mv	t3, zero
800015b8: 93 0e 00 00  	mv	t4, zero
800015bc: 13 0f 00 00  	mv	t5, zero
800015c0: 13 09 00 00  	mv	s2, zero
800015c4: 93 0b 00 00  	mv	s7, zero
800015c8: 13 0c 00 00  	mv	s8, zero
800015cc: 93 0f 00 00  	mv	t6, zero
800015d0: 93 09 00 00  	mv	s3, zero
800015d4: 93 0c 00 00  	mv	s9, zero
800015d8: 13 0d 00 00  	mv	s10, zero
800015dc: 93 0d 00 00  	mv	s11, zero
800015e0: 93 00 00 00  	mv	ra, zero
800015e4: 93 0a 00 00  	mv	s5, zero
800015e8: 13 06 00 00  	mv	a2, zero
800015ec: 93 06 00 00  	mv	a3, zero
800015f0: 13 07 00 00  	mv	a4, zero
800015f4: 93 07 00 00  	mv	a5, zero
800015f8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
800015fc: 13 04 0b 06  	addi	s0, s6, 96
80001600: 37 95 2e ba  	lui	a0, 762601
80001604: 13 05 35 ba  	addi	a0, a0, -1117
80001608: 87 31 0a 00  	fld	ft3, 0(s4)
8000160c: 13 0a 60 01  	addi	s4, zero, 22
80001610: 13 0b a0 fe  	addi	s6, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80001614: b3 b5 a7 02  	mulhu	a1, a5, a0
80001618: 93 d5 45 00  	srli	a1, a1, 4
8000161c: b3 85 45 03  	mul	a1, a1, s4
80001620: b3 85 b7 40  	sub	a1, a5, a1
80001624: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001628: b3 35 a7 02  	mulhu	a1, a4, a0
8000162c: 93 d5 45 00  	srli	a1, a1, 4
80001630: b3 85 45 03  	mul	a1, a1, s4
80001634: b3 05 b7 40  	sub	a1, a4, a1
80001638: d3 82 05 d2  	fcvt.d.w	ft5, a1
8000163c: b3 35 a6 02  	mulhu	a1, a2, a0
80001640: 93 d5 45 00  	srli	a1, a1, 4
80001644: b3 85 45 03  	mul	a1, a1, s4
80001648: b3 05 b6 40  	sub	a1, a2, a1
8000164c: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001650: b3 b5 a0 02  	mulhu	a1, ra, a0
80001654: 93 d5 45 00  	srli	a1, a1, 4
80001658: b3 85 45 03  	mul	a1, a1, s4
8000165c: b3 85 b0 40  	sub	a1, ra, a1
80001660: d3 83 05 d2  	fcvt.d.w	ft7, a1
80001664: b3 35 ad 02  	mulhu	a1, s10, a0
80001668: 93 d5 45 00  	srli	a1, a1, 4
8000166c: b3 85 45 03  	mul	a1, a1, s4
80001670: b3 05 bd 40  	sub	a1, s10, a1
80001674: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001678: b3 b5 ac 02  	mulhu	a1, s9, a0
8000167c: 93 d5 45 00  	srli	a1, a1, 4
80001680: b3 85 45 03  	mul	a1, a1, s4
80001684: b3 85 bc 40  	sub	a1, s9, a1
80001688: d3 85 05 d2  	fcvt.d.w	fa1, a1
8000168c: b3 b5 af 02  	mulhu	a1, t6, a0
80001690: 93 d5 45 00  	srli	a1, a1, 4
80001694: b3 85 45 03  	mul	a1, a1, s4
80001698: b3 85 bf 40  	sub	a1, t6, a1
8000169c: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016a0: b3 b5 ab 02  	mulhu	a1, s7, a0
800016a4: 93 d5 45 00  	srli	a1, a1, 4
800016a8: b3 85 45 03  	mul	a1, a1, s4
800016ac: b3 85 bb 40  	sub	a1, s7, a1
800016b0: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016b4: b3 35 af 02  	mulhu	a1, t5, a0
800016b8: 93 d5 45 00  	srli	a1, a1, 4
800016bc: b3 85 45 03  	mul	a1, a1, s4
800016c0: b3 05 bf 40  	sub	a1, t5, a1
800016c4: 53 87 05 d2  	fcvt.d.w	fa4, a1
800016c8: b3 35 ae 02  	mulhu	a1, t3, a0
800016cc: 93 d5 45 00  	srli	a1, a1, 4
800016d0: b3 85 45 03  	mul	a1, a1, s4
800016d4: b3 05 be 40  	sub	a1, t3, a1
800016d8: d3 87 05 d2  	fcvt.d.w	fa5, a1
800016dc: b3 35 a3 02  	mulhu	a1, t1, a0
800016e0: 93 d5 45 00  	srli	a1, a1, 4
800016e4: b3 85 45 03  	mul	a1, a1, s4
800016e8: b3 05 b3 40  	sub	a1, t1, a1
800016ec: 53 88 05 d2  	fcvt.d.w	fa6, a1
800016f0: b3 35 a8 02  	mulhu	a1, a6, a0
800016f4: 93 d5 45 00  	srli	a1, a1, 4
800016f8: b3 85 45 03  	mul	a1, a1, s4
800016fc: b3 05 b8 40  	sub	a1, a6, a1
80001700: d3 88 05 d2  	fcvt.d.w	fa7, a1
80001704: b3 b5 a8 02  	mulhu	a1, a7, a0
80001708: 93 d5 45 00  	srli	a1, a1, 4
8000170c: b3 85 45 03  	mul	a1, a1, s4
80001710: b3 85 b8 40  	sub	a1, a7, a1
80001714: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001718: b3 b5 a2 02  	mulhu	a1, t0, a0
8000171c: 93 d5 45 00  	srli	a1, a1, 4
80001720: b3 85 45 03  	mul	a1, a1, s4
80001724: b3 85 b2 40  	sub	a1, t0, a1
80001728: d3 8e 05 d2  	fcvt.d.w	ft9, a1
8000172c: b3 b5 a3 02  	mulhu	a1, t2, a0
80001730: 93 d5 45 00  	srli	a1, a1, 4
80001734: b3 85 45 03  	mul	a1, a1, s4
80001738: b3 85 b3 40  	sub	a1, t2, a1
8000173c: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001740: b3 b5 ae 02  	mulhu	a1, t4, a0
80001744: 93 d5 45 00  	srli	a1, a1, 4
80001748: b3 85 45 03  	mul	a1, a1, s4
8000174c: b3 85 be 40  	sub	a1, t4, a1
80001750: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001754: b3 35 a9 02  	mulhu	a1, s2, a0
80001758: 93 d5 45 00  	srli	a1, a1, 4
8000175c: b3 85 45 03  	mul	a1, a1, s4
80001760: b3 05 b9 40  	sub	a1, s2, a1
80001764: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001768: b3 35 ac 02  	mulhu	a1, s8, a0
8000176c: 93 d5 45 00  	srli	a1, a1, 4
80001770: b3 85 45 03  	mul	a1, a1, s4
80001774: b3 05 bc 40  	sub	a1, s8, a1
80001778: d3 84 05 d2  	fcvt.d.w	fs1, a1
8000177c: b3 b5 a9 02  	mulhu	a1, s3, a0
80001780: 93 d5 45 00  	srli	a1, a1, 4
80001784: b3 85 45 03  	mul	a1, a1, s4
80001788: b3 85 b9 40  	sub	a1, s3, a1
8000178c: 53 89 05 d2  	fcvt.d.w	fs2, a1
80001790: b3 b5 ad 02  	mulhu	a1, s11, a0
80001794: 93 d5 45 00  	srli	a1, a1, 4
80001798: b3 85 45 03  	mul	a1, a1, s4
8000179c: b3 85 bd 40  	sub	a1, s11, a1
800017a0: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017a4: b3 b5 aa 02  	mulhu	a1, s5, a0
800017a8: 93 d5 45 00  	srli	a1, a1, 4
800017ac: b3 85 45 03  	mul	a1, a1, s4
800017b0: b3 85 ba 40  	sub	a1, s5, a1
800017b4: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800017b8: b3 b5 a6 02  	mulhu	a1, a3, a0
800017bc: 93 d5 45 00  	srli	a1, a1, 4
800017c0: b3 85 45 03  	mul	a1, a1, s4
800017c4: b3 85 b6 40  	sub	a1, a3, a1
800017c8: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800017cc: b3 b5 a4 02  	mulhu	a1, s1, a0
800017d0: 93 d5 45 00  	srli	a1, a1, 4
800017d4: b3 85 65 03  	mul	a1, a1, s6
800017d8: b3 85 b4 00  	add	a1, s1, a1
800017dc: 53 8b 05 d2  	fcvt.d.w	fs6, a1
800017e0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800017e4: 27 30 44 fa  	fsd	ft4, -96(s0)
800017e8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800017ec: 27 34 44 fa  	fsd	ft4, -88(s0)
800017f0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800017f4: 27 38 44 fa  	fsd	ft4, -80(s0)
800017f8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800017fc: 27 3c 44 fa  	fsd	ft4, -72(s0)
80001800: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001804: 27 30 44 fc  	fsd	ft4, -64(s0)
80001808: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
8000180c: 27 34 44 fc  	fsd	ft4, -56(s0)
80001810: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001814: 27 38 44 fc  	fsd	ft4, -48(s0)
80001818: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
8000181c: 27 3c 44 fc  	fsd	ft4, -40(s0)
80001820: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001824: 27 30 44 fe  	fsd	ft4, -32(s0)
80001828: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000182c: 27 34 44 fe  	fsd	ft4, -24(s0)
80001830: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001834: 27 38 44 fe  	fsd	ft4, -16(s0)
80001838: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000183c: 27 3c 44 fe  	fsd	ft4, -8(s0)
80001840: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001844: 27 30 44 00  	fsd	ft4, 0(s0)
80001848: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000184c: 27 34 44 00  	fsd	ft4, 8(s0)
80001850: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001854: 27 38 44 00  	fsd	ft4, 16(s0)
80001858: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000185c: 27 3c 44 00  	fsd	ft4, 24(s0)
80001860: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001864: 27 30 44 02  	fsd	ft4, 32(s0)
80001868: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
8000186c: 27 34 44 02  	fsd	ft4, 40(s0)
80001870: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001874: 27 38 44 02  	fsd	ft4, 48(s0)
80001878: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
8000187c: 27 30 44 04  	fsd	ft4, 64(s0)
80001880: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001884: 27 34 44 04  	fsd	ft4, 72(s0)
80001888: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
8000188c: 27 38 44 04  	fsd	ft4, 80(s0)
80001890: 23 2e 04 02  	sw	zero, 60(s0)
80001894: 23 2c 04 02  	sw	zero, 56(s0)
80001898: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
8000189c: 27 3c 44 04  	fsd	ft4, 88(s0)
;   for (i = 0; i < nj; i++)
800018a0: 93 84 a4 01  	addi	s1, s1, 26
800018a4: 93 87 37 00  	addi	a5, a5, 3
800018a8: 13 07 47 00  	addi	a4, a4, 4
800018ac: 93 86 96 01  	addi	a3, a3, 25
800018b0: 13 06 56 00  	addi	a2, a2, 5
800018b4: 93 8a 8a 01  	addi	s5, s5, 24
800018b8: 93 80 60 00  	addi	ra, ra, 6
800018bc: 93 8d 7d 01  	addi	s11, s11, 23
800018c0: 13 0d 7d 00  	addi	s10, s10, 7
800018c4: 93 8c 8c 00  	addi	s9, s9, 8
800018c8: 93 89 59 01  	addi	s3, s3, 21
800018cc: 93 8f 9f 00  	addi	t6, t6, 9
800018d0: 13 0c 4c 01  	addi	s8, s8, 20
800018d4: 93 8b ab 00  	addi	s7, s7, 10
800018d8: 13 09 39 01  	addi	s2, s2, 19
800018dc: 13 0f bf 00  	addi	t5, t5, 11
800018e0: 93 8e 2e 01  	addi	t4, t4, 18
800018e4: 13 0e ce 00  	addi	t3, t3, 12
800018e8: 93 83 13 01  	addi	t2, t2, 17
800018ec: 13 03 d3 00  	addi	t1, t1, 13
800018f0: 93 82 02 01  	addi	t0, t0, 16
800018f4: 13 04 04 0c  	addi	s0, s0, 192
800018f8: 93 88 f8 00  	addi	a7, a7, 15
800018fc: 13 08 e8 00  	addi	a6, a6, 14
80001900: 93 05 40 1d  	addi	a1, zero, 468
80001904: e3 98 b4 d0  	bne	s1, a1, 0x80001614 <.LBB0_177+0x428>
80001908: 83 27 c1 04  	lw	a5, 76(sp)
;   for (i = 0; i < nm; i++)
8000190c: 13 d5 47 01  	srli	a0, a5, 20
80001910: 33 35 a0 00  	snez	a0, a0
80001914: b7 f5 11 00  	lui	a1, 287
80001918: 93 85 95 f8  	addi	a1, a1, -119
8000191c: b3 b5 b7 00  	sltu	a1, a5, a1
80001920: b3 75 b5 00  	and	a1, a0, a1

80001924 <.LBB0_178>:
80001924: 17 45 00 00  	auipc	a0, 4
80001928: 13 05 45 79  	addi	a0, a0, 1940
8000192c: 23 28 b1 00  	sw	a1, 16(sp)
80001930: 63 8e 05 36  	beqz	a1, 0x80001cac <.LBB0_179+0x31c>
80001934: 93 08 00 00  	mv	a7, zero
80001938: 93 02 00 00  	mv	t0, zero
8000193c: 13 03 00 00  	mv	t1, zero
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
80001978: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000197c: 93 0f 20 00  	addi	t6, zero, 2
80001980: b7 d5 cc cc  	lui	a1, 838861
80001984: 13 87 d5 cc  	addi	a4, a1, -819
80001988: 93 07 40 01  	addi	a5, zero, 20
8000198c: 87 31 05 00  	fld	ft3, 0(a0)

80001990 <.LBB0_179>:
80001990: 17 45 00 00  	auipc	a0, 4
80001994: 13 05 05 73  	addi	a0, a0, 1840
80001998: 07 32 05 00  	fld	ft4, 0(a0)
8000199c: 13 0b 20 03  	addi	s6, zero, 50
800019a0: 93 03 20 00  	addi	t2, zero, 2
800019a4: 13 0e 20 00  	addi	t3, zero, 2
800019a8: 13 09 20 00  	addi	s2, zero, 2
800019ac: 93 09 20 00  	addi	s3, zero, 2
800019b0: 13 0a 20 00  	addi	s4, zero, 2
800019b4: 93 0b 20 00  	addi	s7, zero, 2
800019b8: 13 0f 20 00  	addi	t5, zero, 2
800019bc: 13 0c 20 00  	addi	s8, zero, 2
800019c0: 93 0c 20 00  	addi	s9, zero, 2
800019c4: 13 0d 20 00  	addi	s10, zero, 2
800019c8: 93 0d 20 00  	addi	s11, zero, 2
800019cc: 93 00 20 00  	addi	ra, zero, 2
800019d0: 93 0a 20 00  	addi	s5, zero, 2
800019d4: 93 04 20 00  	addi	s1, zero, 2
800019d8: 93 06 20 00  	addi	a3, zero, 2
800019dc: 13 05 20 00  	addi	a0, zero, 2
800019e0: 93 05 20 00  	addi	a1, zero, 2
800019e4: 13 06 20 00  	addi	a2, zero, 2
800019e8: 93 0e 20 00  	addi	t4, zero, 2
800019ec: 13 08 20 00  	addi	a6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
800019f0: 33 34 e8 02  	mulhu	s0, a6, a4
800019f4: 13 54 44 00  	srli	s0, s0, 4
800019f8: 33 04 f4 02  	mul	s0, s0, a5
800019fc: 33 04 88 40  	sub	s0, a6, s0
80001a00: d3 02 04 d2  	fcvt.d.w	ft5, s0
80001a04: 33 b4 ef 02  	mulhu	s0, t6, a4
80001a08: 13 54 44 00  	srli	s0, s0, 4
80001a0c: 33 04 f4 02  	mul	s0, s0, a5
80001a10: 33 84 8f 40  	sub	s0, t6, s0
80001a14: 53 03 04 d2  	fcvt.d.w	ft6, s0
80001a18: 33 b4 e8 02  	mulhu	s0, a7, a4
80001a1c: 13 54 44 00  	srli	s0, s0, 4
80001a20: 33 04 f4 02  	mul	s0, s0, a5
80001a24: 33 84 83 40  	sub	s0, t2, s0
80001a28: d3 03 04 d2  	fcvt.d.w	ft7, s0
80001a2c: 33 b4 e2 02  	mulhu	s0, t0, a4
80001a30: 13 54 44 00  	srli	s0, s0, 4
80001a34: 33 04 f4 02  	mul	s0, s0, a5
80001a38: 33 04 8e 40  	sub	s0, t3, s0
80001a3c: 53 05 04 d2  	fcvt.d.w	fa0, s0
80001a40: 33 34 e9 02  	mulhu	s0, s2, a4
80001a44: 13 54 44 00  	srli	s0, s0, 4
80001a48: 33 04 f4 02  	mul	s0, s0, a5
80001a4c: 33 04 89 40  	sub	s0, s2, s0
80001a50: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001a54: 33 b4 e9 02  	mulhu	s0, s3, a4
80001a58: 13 54 44 00  	srli	s0, s0, 4
80001a5c: 33 04 f4 02  	mul	s0, s0, a5
80001a60: 33 84 89 40  	sub	s0, s3, s0
80001a64: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001a68: 33 34 ea 02  	mulhu	s0, s4, a4
80001a6c: 13 54 44 00  	srli	s0, s0, 4
80001a70: 33 04 f4 02  	mul	s0, s0, a5
80001a74: 33 04 8a 40  	sub	s0, s4, s0
80001a78: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001a7c: 33 b4 eb 02  	mulhu	s0, s7, a4
80001a80: 13 54 44 00  	srli	s0, s0, 4
80001a84: 33 04 f4 02  	mul	s0, s0, a5
80001a88: 33 84 8b 40  	sub	s0, s7, s0
80001a8c: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001a90: 33 34 e3 02  	mulhu	s0, t1, a4
80001a94: 13 54 44 00  	srli	s0, s0, 4
80001a98: 33 04 f4 02  	mul	s0, s0, a5
80001a9c: 33 04 8f 40  	sub	s0, t5, s0
80001aa0: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001aa4: 33 34 ec 02  	mulhu	s0, s8, a4
80001aa8: 13 54 44 00  	srli	s0, s0, 4
80001aac: 33 04 f4 02  	mul	s0, s0, a5
80001ab0: 33 04 8c 40  	sub	s0, s8, s0
80001ab4: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001ab8: 33 b4 ec 02  	mulhu	s0, s9, a4
80001abc: 13 54 44 00  	srli	s0, s0, 4
80001ac0: 33 04 f4 02  	mul	s0, s0, a5
80001ac4: 33 84 8c 40  	sub	s0, s9, s0
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
80001b08: 33 b4 ea 02  	mulhu	s0, s5, a4
80001b0c: 13 54 44 00  	srli	s0, s0, 4
80001b10: 33 04 f4 02  	mul	s0, s0, a5
80001b14: 33 84 8a 40  	sub	s0, s5, s0
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
80001b80: 33 b4 ee 02  	mulhu	s0, t4, a4
80001b84: 13 54 44 00  	srli	s0, s0, 4
80001b88: 33 04 f4 02  	mul	s0, s0, a5
80001b8c: 33 84 8e 40  	sub	s0, t4, s0
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
80001c44: 93 8e 7e 01  	addi	t4, t4, 23
80001c48: 13 06 66 01  	addi	a2, a2, 22
80001c4c: 93 85 55 01  	addi	a1, a1, 21
80001c50: 13 05 35 01  	addi	a0, a0, 19
80001c54: 93 86 26 01  	addi	a3, a3, 18
80001c58: 93 84 14 01  	addi	s1, s1, 17
80001c5c: 93 8a 0a 01  	addi	s5, s5, 16
80001c60: 93 80 f0 00  	addi	ra, ra, 15
80001c64: 93 8d ed 00  	addi	s11, s11, 14
80001c68: 13 0d dd 00  	addi	s10, s10, 13
80001c6c: 93 8c cc 00  	addi	s9, s9, 12
80001c70: 13 0c bc 00  	addi	s8, s8, 11
80001c74: 13 0f af 00  	addi	t5, t5, 10
80001c78: 13 03 a3 00  	addi	t1, t1, 10
80001c7c: 93 8b 9b 00  	addi	s7, s7, 9
80001c80: 13 0a 8a 00  	addi	s4, s4, 8
80001c84: 93 89 79 00  	addi	s3, s3, 7
80001c88: 13 09 69 00  	addi	s2, s2, 6
80001c8c: 13 0e 5e 00  	addi	t3, t3, 5
80001c90: 93 82 52 00  	addi	t0, t0, 5
80001c94: 93 83 43 00  	addi	t2, t2, 4
80001c98: 93 88 48 00  	addi	a7, a7, 4
80001c9c: 93 8f 3f 00  	addi	t6, t6, 3
80001ca0: e3 18 68 d5  	bne	a6, s6, 0x800019f0 <.LBB0_179+0x60>
80001ca4: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001ca8: 6f 00 80 37  	j	0x80002020 <.LBB0_179+0x690>
80001cac: 13 04 00 00  	mv	s0, zero
80001cb0: 13 06 00 00  	mv	a2, zero
80001cb4: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nm; i++)
80001cb8: 93 86 87 05  	addi	a3, a5, 88
80001cbc: 13 0f 20 00  	addi	t5, zero, 2
80001cc0: b7 d5 cc cc  	lui	a1, 838861
80001cc4: 93 87 d5 cc  	addi	a5, a1, -819
80001cc8: 93 0f 40 01  	addi	t6, zero, 20
80001ccc: 87 31 05 00  	fld	ft3, 0(a0)
80001cd0: 37 85 94 3f  	lui	a0, 260424
80001cd4: 13 05 15 ae  	addi	a0, a0, -1311
80001cd8: 23 20 a1 04  	sw	a0, 64(sp)
80001cdc: 37 15 ae 47  	lui	a0, 293601
80001ce0: 13 05 b5 47  	addi	a0, a0, 1147
80001ce4: 23 2c a1 02  	sw	a0, 56(sp)
80001ce8: 13 09 20 00  	addi	s2, zero, 2
80001cec: 93 09 20 00  	addi	s3, zero, 2
80001cf0: 13 0a 20 00  	addi	s4, zero, 2
80001cf4: 93 0b 20 00  	addi	s7, zero, 2
80001cf8: 13 0c 20 00  	addi	s8, zero, 2
80001cfc: 13 05 20 00  	addi	a0, zero, 2
80001d00: 93 0c 20 00  	addi	s9, zero, 2
80001d04: 13 0d 20 00  	addi	s10, zero, 2
80001d08: 93 0d 20 00  	addi	s11, zero, 2
80001d0c: 93 00 20 00  	addi	ra, zero, 2
80001d10: 13 03 20 00  	addi	t1, zero, 2
80001d14: 93 03 20 00  	addi	t2, zero, 2
80001d18: 93 0e 20 00  	addi	t4, zero, 2
80001d1c: 93 08 20 00  	addi	a7, zero, 2
80001d20: 93 05 20 00  	addi	a1, zero, 2
80001d24: 13 0e 20 00  	addi	t3, zero, 2
80001d28: 13 0b 20 00  	addi	s6, zero, 2
80001d2c: 13 08 20 00  	addi	a6, zero, 2
80001d30: 93 02 20 00  	addi	t0, zero, 2
80001d34: 93 0a 20 00  	addi	s5, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d38: 23 24 81 04  	sw	s0, 72(sp)
80001d3c: 33 b7 fa 02  	mulhu	a4, s5, a5
80001d40: 13 57 47 00  	srli	a4, a4, 4
80001d44: 13 04 06 00  	mv	s0, a2
80001d48: 13 06 05 00  	mv	a2, a0
80001d4c: 13 05 0b 00  	mv	a0, s6
80001d50: 33 0b f7 03  	mul	s6, a4, t6
80001d54: 33 87 6a 41  	sub	a4, s5, s6
80001d58: 13 0b 05 00  	mv	s6, a0
80001d5c: 13 05 06 00  	mv	a0, a2
80001d60: 13 06 04 00  	mv	a2, s0
80001d64: 03 24 81 04  	lw	s0, 72(sp)
80001d68: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001d6c: 33 b7 f2 02  	mulhu	a4, t0, a5
80001d70: 13 57 47 00  	srli	a4, a4, 4
80001d74: 33 07 f7 03  	mul	a4, a4, t6
80001d78: 33 87 e2 40  	sub	a4, t0, a4
80001d7c: d3 02 07 d2  	fcvt.d.w	ft5, a4
80001d80: 33 b7 f4 02  	mulhu	a4, s1, a5
80001d84: 13 57 47 00  	srli	a4, a4, 4
80001d88: 33 07 f7 03  	mul	a4, a4, t6
80001d8c: 33 07 eb 40  	sub	a4, s6, a4
80001d90: 53 03 07 d2  	fcvt.d.w	ft6, a4
80001d94: 33 37 f6 02  	mulhu	a4, a2, a5
80001d98: 13 57 47 00  	srli	a4, a4, 4
80001d9c: 33 07 f7 03  	mul	a4, a4, t6
80001da0: 33 87 e5 40  	sub	a4, a1, a4
80001da4: d3 03 07 d2  	fcvt.d.w	ft7, a4
80001da8: 33 b7 fe 02  	mulhu	a4, t4, a5
80001dac: 13 57 47 00  	srli	a4, a4, 4
80001db0: 33 07 f7 03  	mul	a4, a4, t6
80001db4: 33 87 ee 40  	sub	a4, t4, a4
80001db8: 53 05 07 d2  	fcvt.d.w	fa0, a4
80001dbc: 33 b7 f3 02  	mulhu	a4, t2, a5
80001dc0: 13 57 47 00  	srli	a4, a4, 4
80001dc4: 33 07 f7 03  	mul	a4, a4, t6
80001dc8: 33 87 e3 40  	sub	a4, t2, a4
80001dcc: d3 05 07 d2  	fcvt.d.w	fa1, a4
80001dd0: 33 b7 f0 02  	mulhu	a4, ra, a5
80001dd4: 13 57 47 00  	srli	a4, a4, 4
80001dd8: 33 07 f7 03  	mul	a4, a4, t6
80001ddc: 33 87 e0 40  	sub	a4, ra, a4
80001de0: 53 06 07 d2  	fcvt.d.w	fa2, a4
80001de4: 33 37 fd 02  	mulhu	a4, s10, a5
80001de8: 13 57 47 00  	srli	a4, a4, 4
80001dec: 33 07 f7 03  	mul	a4, a4, t6
80001df0: 33 07 ed 40  	sub	a4, s10, a4
80001df4: d3 06 07 d2  	fcvt.d.w	fa3, a4
80001df8: 33 37 f4 02  	mulhu	a4, s0, a5
80001dfc: 13 57 47 00  	srli	a4, a4, 4
80001e00: 33 07 f7 03  	mul	a4, a4, t6
80001e04: 33 07 e5 40  	sub	a4, a0, a4
80001e08: 53 07 07 d2  	fcvt.d.w	fa4, a4
80001e0c: 33 b7 fb 02  	mulhu	a4, s7, a5
80001e10: 13 57 47 00  	srli	a4, a4, 4
80001e14: 33 07 f7 03  	mul	a4, a4, t6
80001e18: 33 87 eb 40  	sub	a4, s7, a4
80001e1c: d3 07 07 d2  	fcvt.d.w	fa5, a4
80001e20: 33 b7 f9 02  	mulhu	a4, s3, a5
80001e24: 13 57 47 00  	srli	a4, a4, 4
80001e28: 33 07 f7 03  	mul	a4, a4, t6
80001e2c: 33 87 e9 40  	sub	a4, s3, a4
80001e30: 53 08 07 d2  	fcvt.d.w	fa6, a4
80001e34: 33 37 ff 02  	mulhu	a4, t5, a5
80001e38: 13 57 47 00  	srli	a4, a4, 4
80001e3c: 33 07 f7 03  	mul	a4, a4, t6
80001e40: 33 07 ef 40  	sub	a4, t5, a4
80001e44: d3 08 07 d2  	fcvt.d.w	fa7, a4
80001e48: 33 37 f9 02  	mulhu	a4, s2, a5
80001e4c: 13 57 47 00  	srli	a4, a4, 4
80001e50: 33 07 f7 03  	mul	a4, a4, t6
80001e54: 33 07 e9 40  	sub	a4, s2, a4
80001e58: 53 0e 07 d2  	fcvt.d.w	ft8, a4
80001e5c: 33 37 fa 02  	mulhu	a4, s4, a5
80001e60: 13 57 47 00  	srli	a4, a4, 4
80001e64: 33 07 f7 03  	mul	a4, a4, t6
80001e68: 33 07 ea 40  	sub	a4, s4, a4
80001e6c: d3 0e 07 d2  	fcvt.d.w	ft9, a4
80001e70: 33 37 fc 02  	mulhu	a4, s8, a5
80001e74: 13 57 47 00  	srli	a4, a4, 4
80001e78: 33 07 f7 03  	mul	a4, a4, t6
80001e7c: 33 07 ec 40  	sub	a4, s8, a4
80001e80: 53 0f 07 d2  	fcvt.d.w	ft10, a4
80001e84: 33 b7 fc 02  	mulhu	a4, s9, a5
80001e88: 13 57 47 00  	srli	a4, a4, 4
80001e8c: 33 07 f7 03  	mul	a4, a4, t6
80001e90: 33 87 ec 40  	sub	a4, s9, a4
80001e94: d3 0f 07 d2  	fcvt.d.w	ft11, a4
80001e98: 33 b7 fd 02  	mulhu	a4, s11, a5
80001e9c: 13 57 47 00  	srli	a4, a4, 4
80001ea0: 33 07 f7 03  	mul	a4, a4, t6
80001ea4: 33 87 ed 40  	sub	a4, s11, a4
80001ea8: 53 04 07 d2  	fcvt.d.w	fs0, a4
80001eac: 33 37 f3 02  	mulhu	a4, t1, a5
80001eb0: 13 57 47 00  	srli	a4, a4, 4
80001eb4: 33 07 f7 03  	mul	a4, a4, t6
80001eb8: 33 07 e3 40  	sub	a4, t1, a4
80001ebc: d3 04 07 d2  	fcvt.d.w	fs1, a4
80001ec0: 33 b7 f8 02  	mulhu	a4, a7, a5
80001ec4: 13 57 47 00  	srli	a4, a4, 4
80001ec8: 33 07 f7 03  	mul	a4, a4, t6
80001ecc: 33 87 e8 40  	sub	a4, a7, a4
80001ed0: 53 09 07 d2  	fcvt.d.w	fs2, a4
80001ed4: 33 37 fe 02  	mulhu	a4, t3, a5
80001ed8: 13 57 47 00  	srli	a4, a4, 4
80001edc: 33 07 f7 03  	mul	a4, a4, t6
80001ee0: 33 07 ee 40  	sub	a4, t3, a4
80001ee4: d3 09 07 d2  	fcvt.d.w	fs3, a4
80001ee8: 33 37 f8 02  	mulhu	a4, a6, a5
80001eec: 13 57 47 00  	srli	a4, a4, 4
80001ef0: 33 07 f7 03  	mul	a4, a4, t6
80001ef4: 33 07 e8 40  	sub	a4, a6, a4
80001ef8: 53 0a 07 d2  	fcvt.d.w	fs4, a4
80001efc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001f00: 27 b4 46 fa  	fsd	ft4, -88(a3)
80001f04: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001f08: 27 b8 46 fa  	fsd	ft4, -80(a3)
80001f0c: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001f10: 27 bc 46 fa  	fsd	ft4, -72(a3)
80001f14: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80001f18: 27 b0 46 fc  	fsd	ft4, -64(a3)
80001f1c: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80001f20: 27 b4 46 fc  	fsd	ft4, -56(a3)
80001f24: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80001f28: 27 b8 46 fc  	fsd	ft4, -48(a3)
80001f2c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80001f30: 27 bc 46 fc  	fsd	ft4, -40(a3)
80001f34: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80001f38: 27 b0 46 fe  	fsd	ft4, -32(a3)
80001f3c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80001f40: 27 b4 46 fe  	fsd	ft4, -24(a3)
80001f44: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80001f48: 27 b8 46 fe  	fsd	ft4, -16(a3)
80001f4c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80001f50: 27 bc 46 fe  	fsd	ft4, -8(a3)
80001f54: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80001f58: 27 b0 46 00  	fsd	ft4, 0(a3)
80001f5c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80001f60: 27 b4 46 00  	fsd	ft4, 8(a3)
80001f64: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80001f68: 27 b8 46 00  	fsd	ft4, 16(a3)
80001f6c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80001f70: 27 bc 46 00  	fsd	ft4, 24(a3)
80001f74: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80001f78: 27 b0 46 02  	fsd	ft4, 32(a3)
80001f7c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80001f80: 27 b4 46 02  	fsd	ft4, 40(a3)
80001f84: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80001f88: 27 b8 46 02  	fsd	ft4, 48(a3)
80001f8c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80001f90: 27 b0 46 04  	fsd	ft4, 64(a3)
80001f94: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80001f98: 27 b4 46 04  	fsd	ft4, 72(a3)
80001f9c: 03 27 01 04  	lw	a4, 64(sp)
80001fa0: 23 ae e6 02  	sw	a4, 60(a3)
80001fa4: 03 27 81 03  	lw	a4, 56(sp)
80001fa8: 23 ac e6 02  	sw	a4, 56(a3)
80001fac: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001fb0: 27 b8 46 04  	fsd	ft4, 80(a3)
;   for (i = 0; i < nm; i++)
80001fb4: 93 8a 2a 00  	addi	s5, s5, 2
80001fb8: 93 82 32 00  	addi	t0, t0, 3
80001fbc: 13 08 78 01  	addi	a6, a6, 23
80001fc0: 13 0b 4b 00  	addi	s6, s6, 4
80001fc4: 93 84 44 00  	addi	s1, s1, 4
80001fc8: 13 0e 6e 01  	addi	t3, t3, 22
80001fcc: 93 85 55 00  	addi	a1, a1, 5
80001fd0: 13 06 56 00  	addi	a2, a2, 5
80001fd4: 93 88 58 01  	addi	a7, a7, 21
80001fd8: 93 8e 6e 00  	addi	t4, t4, 6
80001fdc: 93 83 73 00  	addi	t2, t2, 7
80001fe0: 13 03 33 01  	addi	t1, t1, 19
80001fe4: 93 80 80 00  	addi	ra, ra, 8
80001fe8: 93 8d 2d 01  	addi	s11, s11, 18
80001fec: 13 0d 9d 00  	addi	s10, s10, 9
80001ff0: 93 8c 1c 01  	addi	s9, s9, 17
80001ff4: 13 05 a5 00  	addi	a0, a0, 10
80001ff8: 13 04 a4 00  	addi	s0, s0, 10
80001ffc: 13 0c 0c 01  	addi	s8, s8, 16
80002000: 93 8b bb 00  	addi	s7, s7, 11
80002004: 13 0a fa 00  	addi	s4, s4, 15
80002008: 93 89 c9 00  	addi	s3, s3, 12
8000200c: 13 09 e9 00  	addi	s2, s2, 14
80002010: 93 86 06 0b  	addi	a3, a3, 176
80002014: 13 0f df 00  	addi	t5, t5, 13
80002018: 13 07 20 03  	addi	a4, zero, 50
8000201c: e3 9e ea d0  	bne	s5, a4, 0x80001d38 <.LBB0_179+0x3a8>
80002020: 37 15 00 00  	lui	a0, 1
80002024: 13 04 05 96  	addi	s0, a0, -1696
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002028: 73 25 00 b0  	csrr	a0, mcycle
8000202c: 23 20 a1 02  	sw	a0, 32(sp)
80002030: 83 20 01 03  	lw	ra, 48(sp)
;  for (i = 0; i < ni; i++)
80002034: 33 85 80 00  	add	a0, ra, s0
80002038: 33 36 15 00  	sltu	a2, a0, ra
8000203c: 93 05 85 09  	addi	a1, a0, 152
80002040: 33 b5 a5 00  	sltu	a0, a1, a0
80002044: 33 07 a6 00  	add	a4, a2, a0
80002048: 03 28 41 04  	lw	a6, 68(sp)
8000204c: b3 06 88 00  	add	a3, a6, s0
80002050: 33 b6 06 01  	sltu	a2, a3, a6
80002054: 13 85 86 1d  	addi	a0, a3, 472
80002058: b3 36 d5 00  	sltu	a3, a0, a3
8000205c: 83 23 81 02  	lw	t2, 40(sp)
80002060: b3 87 83 00  	add	a5, t2, s0
80002064: b3 b4 77 00  	sltu	s1, a5, t2
80002068: 93 88 87 f9  	addi	a7, a5, -104
8000206c: b3 b7 f8 00  	sltu	a5, a7, a5
80002070: b3 87 f4 00  	add	a5, s1, a5
80002074: 93 82 f7 ff  	addi	t0, a5, -1
80002078: 63 06 07 02  	beqz	a4, 0x800020a4 <.LBB0_179+0x714>
8000207c: 93 05 00 00  	mv	a1, zero
80002080: b3 06 d6 00  	add	a3, a2, a3
80002084: 63 96 02 02  	bnez	t0, 0x800020b0 <.LBB0_179+0x720>
80002088: 33 b6 18 00  	sltu	a2, a7, ra
;  for (i = 0; i < ni; i++)
8000208c: 63 96 06 02  	bnez	a3, 0x800020b8 <.LBB0_179+0x728>
80002090: 33 35 75 00  	sltu	a0, a0, t2
;  for (i = 0; i < ni; i++)
80002094: b3 65 b6 00  	or	a1, a2, a1
80002098: 63 96 02 02  	bnez	t0, 0x800020c4 <.LBB0_179+0x734>
8000209c: 33 b6 08 01  	sltu	a2, a7, a6
800020a0: 6f 00 80 02  	j	0x800020c8 <.LBB0_179+0x738>
800020a4: b3 b5 75 00  	sltu	a1, a1, t2
;  for (i = 0; i < ni; i++)
800020a8: b3 06 d6 00  	add	a3, a2, a3
800020ac: e3 8e 02 fc  	beqz	t0, 0x80002088 <.LBB0_179+0x6f8>
800020b0: 13 06 00 00  	mv	a2, zero
800020b4: e3 8e 06 fc  	beqz	a3, 0x80002090 <.LBB0_179+0x700>
800020b8: 13 05 00 00  	mv	a0, zero
800020bc: b3 65 b6 00  	or	a1, a2, a1
800020c0: e3 8e 02 fc  	beqz	t0, 0x8000209c <.LBB0_179+0x70c>
800020c4: 13 06 00 00  	mv	a2, zero
800020c8: 33 65 a6 00  	or	a0, a2, a0
800020cc: 33 f5 a5 00  	and	a0, a1, a0
800020d0: 83 25 41 02  	lw	a1, 36(sp)
800020d4: 33 f5 a5 00  	and	a0, a1, a0
800020d8: 83 25 81 01  	lw	a1, 24(sp)
800020dc: 33 f5 a5 00  	and	a0, a1, a0
800020e0: 23 22 81 02  	sw	s0, 36(sp)
800020e4: 23 26 11 01  	sw	a7, 12(sp)
800020e8: 23 2a 51 00  	sw	t0, 20(sp)
800020ec: 63 06 05 1c  	beqz	a0, 0x800022b8 <.LBB0_179+0x928>
800020f0: 13 05 00 00  	mv	a0, zero
800020f4: 93 05 80 00  	addi	a1, zero, 8
800020f8: 13 06 30 01  	addi	a2, zero, 19
;  for (i = 0; i < ni; i++)
800020fc: 93 06 00 04  	addi	a3, zero, 64
80002100: 13 07 00 0c  	addi	a4, zero, 192
80002104: ab 20 d6 00  	scfgw	a2, a3
80002108: ab a0 e5 00  	scfgw	a1, a4
8000210c: 93 06 80 f6  	addi	a3, zero, -152
80002110: 13 07 10 01  	addi	a4, zero, 17
80002114: 93 07 00 06  	addi	a5, zero, 96
80002118: 93 04 00 0e  	addi	s1, zero, 224
8000211c: ab 20 f7 00  	scfgw	a4, a5
80002120: ab a0 96 00  	scfgw	a3, s1
80002124: 93 06 f0 00  	addi	a3, zero, 15
80002128: 93 07 00 08  	addi	a5, zero, 128
8000212c: 93 04 00 10  	addi	s1, zero, 256
80002130: ab a0 f6 00  	scfgw	a3, a5
80002134: ab a0 95 00  	scfgw	a1, s1
80002138: 93 05 00 02  	addi	a1, zero, 32
8000213c: ab 20 b0 00  	scfgw	zero, a1
80002140: 2b a0 00 34  	scfgwi	ra, 832
80002144: 93 05 00 09  	addi	a1, zero, 144
80002148: 93 07 10 00  	addi	a5, zero, 1
8000214c: 93 84 07 04  	addi	s1, a5, 64
80002150: 13 84 07 0c  	addi	s0, a5, 192
80002154: ab 20 96 00  	scfgw	a2, s1
80002158: ab a0 85 00  	scfgw	a1, s0
8000215c: 37 f6 ff ff  	lui	a2, 1048575
80002160: 93 04 86 55  	addi	s1, a2, 1368
80002164: 13 84 07 06  	addi	s0, a5, 96
80002168: ab 20 87 00  	scfgw	a4, s0
8000216c: 13 87 07 0e  	addi	a4, a5, 224
80002170: ab a0 e4 00  	scfgw	s1, a4
80002174: 13 06 86 4c  	addi	a2, a2, 1224
80002178: 13 87 07 08  	addi	a4, a5, 128
8000217c: 93 84 07 10  	addi	s1, a5, 256
80002180: ab a0 e6 00  	scfgw	a3, a4
80002184: ab 20 96 00  	scfgw	a2, s1
80002188: 13 86 07 02  	addi	a2, a5, 32
8000218c: ab 20 c0 00  	scfgw	zero, a2
80002190: 2b 20 18 34  	scfgwi	a6, 833
80002194: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002198: 13 06 00 01  	addi	a2, zero, 16
8000219c: 93 86 03 00  	mv	a3, t2
800021a0: 13 07 00 00  	mv	a4, zero
;  E[i][j] = 0.0;
800021a4: b3 87 e6 00  	add	a5, a3, a4
800021a8: 23 a2 07 00  	sw	zero, 4(a5)
800021ac: 23 a0 07 00  	sw	zero, 0(a5)
;    E[i][j] += A[i][k] * B[k][j];
800021b0: 87 b2 07 00  	fld	ft5, 0(a5)
800021b4: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800021b8: 27 b0 37 00  	fsd	ft3, 0(a5)
800021bc: 87 b2 07 00  	fld	ft5, 0(a5)
800021c0: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800021c4: 27 b0 37 00  	fsd	ft3, 0(a5)
800021c8: 87 b2 07 00  	fld	ft5, 0(a5)
800021cc: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800021d0: 27 b0 37 00  	fsd	ft3, 0(a5)
800021d4: 87 b2 07 00  	fld	ft5, 0(a5)
800021d8: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800021dc: 27 b0 37 00  	fsd	ft3, 0(a5)
800021e0: 87 b2 07 00  	fld	ft5, 0(a5)
800021e4: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800021e8: 27 b0 37 00  	fsd	ft3, 0(a5)
800021ec: 87 b2 07 00  	fld	ft5, 0(a5)
800021f0: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800021f4: 27 b0 37 00  	fsd	ft3, 0(a5)
800021f8: 87 b2 07 00  	fld	ft5, 0(a5)
800021fc: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002200: 27 b0 37 00  	fsd	ft3, 0(a5)
80002204: 87 b2 07 00  	fld	ft5, 0(a5)
80002208: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
8000220c: 27 b0 37 00  	fsd	ft3, 0(a5)
80002210: 87 b2 07 00  	fld	ft5, 0(a5)
80002214: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002218: 27 b0 37 00  	fsd	ft3, 0(a5)
8000221c: 87 b2 07 00  	fld	ft5, 0(a5)
80002220: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002224: 27 b0 37 00  	fsd	ft3, 0(a5)
80002228: 87 b2 07 00  	fld	ft5, 0(a5)
8000222c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002230: 27 b0 37 00  	fsd	ft3, 0(a5)
80002234: 87 b2 07 00  	fld	ft5, 0(a5)
80002238: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
8000223c: 27 b0 37 00  	fsd	ft3, 0(a5)
80002240: 87 b2 07 00  	fld	ft5, 0(a5)
80002244: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002248: 27 b0 37 00  	fsd	ft3, 0(a5)
8000224c: 87 b2 07 00  	fld	ft5, 0(a5)
80002250: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002254: 27 b0 37 00  	fsd	ft3, 0(a5)
80002258: 87 b2 07 00  	fld	ft5, 0(a5)
8000225c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002260: 27 b0 37 00  	fsd	ft3, 0(a5)
80002264: 87 b2 07 00  	fld	ft5, 0(a5)
80002268: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
8000226c: 27 b0 37 00  	fsd	ft3, 0(a5)
80002270: 87 b2 07 00  	fld	ft5, 0(a5)
80002274: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002278: 27 b0 37 00  	fsd	ft3, 0(a5)
8000227c: 87 b2 07 00  	fld	ft5, 0(a5)
80002280: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002284: 27 b0 37 00  	fsd	ft3, 0(a5)
80002288: 87 b2 07 00  	fld	ft5, 0(a5)
8000228c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002290: 27 b0 37 00  	fsd	ft3, 0(a5)
80002294: 87 b2 07 00  	fld	ft5, 0(a5)
80002298: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
;     for (j = 0; j < nj; j++)
8000229c: 13 07 87 00  	addi	a4, a4, 8
;    E[i][j] += A[i][k] * B[k][j];
800022a0: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nj; j++)
800022a4: e3 10 b7 f0  	bne	a4, a1, 0x800021a4 <.LBB0_179+0x814>
;  for (i = 0; i < ni; i++)
800022a8: 13 05 15 00  	addi	a0, a0, 1
800022ac: 93 86 06 09  	addi	a3, a3, 144
800022b0: e3 18 c5 ee  	bne	a0, a2, 0x800021a0 <.LBB0_179+0x810>
800022b4: 6f 00 00 36  	j	0x80002614 <.LBB0_179+0xc84>
800022b8: 13 86 80 07  	addi	a2, ra, 120
800022bc: 33 05 86 00  	add	a0, a2, s0
800022c0: 63 76 c5 00  	bgeu	a0, a2, 0x800022cc <.LBB0_179+0x93c>
800022c4: 13 05 00 00  	mv	a0, zero
800022c8: 6f 00 80 00  	j	0x800022d0 <.LBB0_179+0x940>
800022cc: 33 35 75 00  	sltu	a0, a0, t2
;  for (i = 0; i < ni; i++)
800022d0: 93 06 08 5a  	addi	a3, a6, 1440
800022d4: 93 07 88 62  	addi	a5, a6, 1576
800022d8: 63 86 02 02  	beqz	t0, 0x80002304 <.LBB0_179+0x974>
800022dc: 93 05 00 00  	mv	a1, zero
800022e0: 13 87 80 05  	addi	a4, ra, 88
800022e4: 63 e6 d7 02  	bltu	a5, a3, 0x80002310 <.LBB0_179+0x980>
800022e8: b3 b7 77 00  	sltu	a5, a5, t2
;  for (i = 0; i < ni; i++)
800022ec: b3 04 87 00  	add	s1, a4, s0
800022f0: 63 96 02 02  	bnez	t0, 0x8000231c <.LBB0_179+0x98c>
800022f4: 33 b4 d8 00  	sltu	s0, a7, a3
;  for (i = 0; i < ni; i++)
800022f8: 63 e6 e4 02  	bltu	s1, a4, 0x80002324 <.LBB0_179+0x994>
800022fc: b3 b4 74 00  	sltu	s1, s1, t2
80002300: 6f 00 80 02  	j	0x80002328 <.LBB0_179+0x998>
80002304: b3 b5 c8 00  	sltu	a1, a7, a2
;  for (i = 0; i < ni; i++)
80002308: 13 87 80 05  	addi	a4, ra, 88
8000230c: e3 fe d7 fc  	bgeu	a5, a3, 0x800022e8 <.LBB0_179+0x958>
80002310: 93 07 00 00  	mv	a5, zero
80002314: b3 04 87 00  	add	s1, a4, s0
80002318: e3 8e 02 fc  	beqz	t0, 0x800022f4 <.LBB0_179+0x964>
8000231c: 13 04 00 00  	mv	s0, zero
80002320: e3 fe e4 fc  	bgeu	s1, a4, 0x800022fc <.LBB0_179+0x96c>
80002324: 93 04 00 00  	mv	s1, zero
80002328: 33 e5 a5 00  	or	a0, a1, a0
8000232c: b3 65 f4 00  	or	a1, s0, a5
80002330: 63 86 02 00  	beqz	t0, 0x8000233c <.LBB0_179+0x9ac>
80002334: 93 07 00 00  	mv	a5, zero
80002338: 6f 00 80 00  	j	0x80002340 <.LBB0_179+0x9b0>
8000233c: b3 b7 e8 00  	sltu	a5, a7, a4
;  for (i = 0; i < ni; i++)
80002340: b3 e7 97 00  	or	a5, a5, s1
80002344: 33 75 b5 00  	and	a0, a0, a1
80002348: 33 f5 a7 00  	and	a0, a5, a0
8000234c: 93 55 46 01  	srli	a1, a2, 20
80002350: b3 35 b0 00  	snez	a1, a1
80002354: b7 f7 11 00  	lui	a5, 287
80002358: 93 87 17 6a  	addi	a5, a5, 1697
8000235c: b3 34 f6 00  	sltu	s1, a2, a5
80002360: b3 f5 95 00  	and	a1, a1, s1
80002364: 33 f5 a5 00  	and	a0, a1, a0
80002368: 93 d5 46 01  	srli	a1, a3, 20
8000236c: b3 35 b0 00  	snez	a1, a1
80002370: b7 04 12 00  	lui	s1, 288
80002374: 93 84 94 f7  	addi	s1, s1, -135
80002378: b3 b4 96 00  	sltu	s1, a3, s1
8000237c: b3 f5 95 00  	and	a1, a1, s1
80002380: 33 f5 a5 00  	and	a0, a1, a0
80002384: 93 55 47 01  	srli	a1, a4, 20
80002388: b3 35 b0 00  	snez	a1, a1
8000238c: b3 37 f7 00  	sltu	a5, a4, a5
80002390: b3 f5 f5 00  	and	a1, a1, a5
80002394: 33 f5 a5 00  	and	a0, a1, a0
80002398: 63 02 05 28  	beqz	a0, 0x8000261c <.LBB0_179+0xc8c>
8000239c: 93 02 00 00  	mv	t0, zero
800023a0: 13 05 10 01  	addi	a0, zero, 17
;  for (i = 0; i < ni; i++)
800023a4: 93 05 00 04  	addi	a1, zero, 64
800023a8: 93 07 00 0c  	addi	a5, zero, 192
800023ac: ab 20 b5 00  	scfgw	a0, a1
800023b0: ab 20 f0 00  	scfgw	zero, a5
800023b4: 13 04 00 0a  	addi	s0, zero, 160
800023b8: 93 05 f0 00  	addi	a1, zero, 15
800023bc: 93 07 00 06  	addi	a5, zero, 96
800023c0: 93 04 00 0e  	addi	s1, zero, 224
800023c4: ab a0 f5 00  	scfgw	a1, a5
800023c8: ab 20 94 00  	scfgw	s0, s1
800023cc: 93 07 00 02  	addi	a5, zero, 32
800023d0: ab 20 f0 00  	scfgw	zero, a5
800023d4: 2b 20 06 32  	scfgwi	a2, 800
800023d8: 13 06 80 00  	addi	a2, zero, 8
800023dc: 93 07 10 00  	addi	a5, zero, 1
800023e0: 93 84 07 04  	addi	s1, a5, 64
800023e4: ab 20 95 00  	scfgw	a0, s1
800023e8: 93 84 07 0c  	addi	s1, a5, 192
800023ec: ab 20 96 00  	scfgw	a2, s1
800023f0: 13 06 80 f7  	addi	a2, zero, -136
800023f4: 93 84 07 06  	addi	s1, a5, 96
800023f8: ab a0 95 00  	scfgw	a1, s1
800023fc: 93 84 07 0e  	addi	s1, a5, 224
80002400: ab 20 96 00  	scfgw	a2, s1
80002404: 13 86 07 02  	addi	a2, a5, 32
80002408: ab 20 c0 00  	scfgw	zero, a2
8000240c: 2b a0 16 32  	scfgwi	a3, 801
80002410: 13 06 20 00  	addi	a2, zero, 2
80002414: 93 06 06 04  	addi	a3, a2, 64
80002418: 93 07 06 0c  	addi	a5, a2, 192
8000241c: ab 20 d5 00  	scfgw	a0, a3
80002420: ab 20 f0 00  	scfgw	zero, a5
80002424: 13 05 06 06  	addi	a0, a2, 96
80002428: 93 06 06 0e  	addi	a3, a2, 224
8000242c: ab a0 a5 00  	scfgw	a1, a0
80002430: ab 20 d4 00  	scfgw	s0, a3
80002434: 13 05 06 02  	addi	a0, a2, 32
80002438: ab 20 a0 00  	scfgw	zero, a0
8000243c: 2b 20 27 32  	scfgwi	a4, 802
80002440: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002444: 13 03 00 09  	addi	t1, zero, 144
80002448: 93 08 00 01  	addi	a7, zero, 16
8000244c: 13 8e 03 00  	mv	t3, t2
80002450: 03 28 41 04  	lw	a6, 68(sp)
80002454: 93 07 00 00  	mv	a5, zero
;    E[i][j] += A[i][k] * B[k][j];
80002458: 13 05 00 0a  	addi	a0, zero, 160
8000245c: 33 85 a2 02  	mul	a0, t0, a0
80002460: b3 84 a0 00  	add	s1, ra, a0
80002464: 93 83 84 00  	addi	t2, s1, 8
80002468: 93 8e 04 01  	addi	t4, s1, 16
8000246c: 13 8f 84 01  	addi	t5, s1, 24
80002470: 93 8f 04 02  	addi	t6, s1, 32
80002474: 13 89 84 02  	addi	s2, s1, 40
80002478: 93 89 04 03  	addi	s3, s1, 48
8000247c: 13 8a 84 03  	addi	s4, s1, 56
80002480: 93 8a 04 04  	addi	s5, s1, 64
80002484: 93 8b 84 04  	addi	s7, s1, 72
80002488: 13 8c 04 05  	addi	s8, s1, 80
8000248c: 93 8c 04 06  	addi	s9, s1, 96
80002490: 13 8d 84 06  	addi	s10, s1, 104
80002494: 13 8b 04 07  	addi	s6, s1, 112
80002498: 93 8d 04 08  	addi	s11, s1, 128
8000249c: 93 86 84 08  	addi	a3, s1, 136
800024a0: 13 85 04 09  	addi	a0, s1, 144
800024a4: 13 86 84 09  	addi	a2, s1, 152
;  E[i][j] = 0.0;
800024a8: 33 04 fe 00  	add	s0, t3, a5
800024ac: 23 22 04 00  	sw	zero, 4(s0)
800024b0: 23 20 04 00  	sw	zero, 0(s0)
;    E[i][j] += A[i][k] * B[k][j];
800024b4: 87 b1 04 00  	fld	ft3, 0(s1)
800024b8: 33 07 f8 00  	add	a4, a6, a5
800024bc: 07 32 07 00  	fld	ft4, 0(a4)
800024c0: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800024c4: 27 30 34 00  	fsd	ft3, 0(s0)
800024c8: 07 b2 03 00  	fld	ft4, 0(t2)
800024cc: 87 32 07 09  	fld	ft5, 144(a4)
800024d0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024d4: 27 30 34 00  	fsd	ft3, 0(s0)
800024d8: 07 b2 0e 00  	fld	ft4, 0(t4)
800024dc: 87 32 07 12  	fld	ft5, 288(a4)
800024e0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024e4: 27 30 34 00  	fsd	ft3, 0(s0)
800024e8: 07 32 0f 00  	fld	ft4, 0(t5)
800024ec: 87 32 07 1b  	fld	ft5, 432(a4)
800024f0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024f4: 27 30 34 00  	fsd	ft3, 0(s0)
800024f8: 07 b2 0f 00  	fld	ft4, 0(t6)
800024fc: 87 32 07 24  	fld	ft5, 576(a4)
80002500: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002504: 27 30 34 00  	fsd	ft3, 0(s0)
80002508: 07 32 09 00  	fld	ft4, 0(s2)
8000250c: 87 32 07 2d  	fld	ft5, 720(a4)
80002510: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002514: 27 30 34 00  	fsd	ft3, 0(s0)
80002518: 07 b2 09 00  	fld	ft4, 0(s3)
8000251c: 87 32 07 36  	fld	ft5, 864(a4)
80002520: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002524: 27 30 34 00  	fsd	ft3, 0(s0)
80002528: 07 32 0a 00  	fld	ft4, 0(s4)
8000252c: 87 32 07 3f  	fld	ft5, 1008(a4)
80002530: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002534: 27 30 34 00  	fsd	ft3, 0(s0)
80002538: 07 b2 0a 00  	fld	ft4, 0(s5)
8000253c: 87 32 07 48  	fld	ft5, 1152(a4)
80002540: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002544: 27 30 34 00  	fsd	ft3, 0(s0)
80002548: 07 b2 0b 00  	fld	ft4, 0(s7)
8000254c: 87 32 07 51  	fld	ft5, 1296(a4)
80002550: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002554: 27 30 34 00  	fsd	ft3, 0(s0)
80002558: 07 32 0c 00  	fld	ft4, 0(s8)
8000255c: c3 f1 40 1a  	fmadd.d	ft3, ft1, ft4, ft3
80002560: 27 30 34 00  	fsd	ft3, 0(s0)
80002564: 87 32 07 63  	fld	ft5, 1584(a4)
80002568: c3 f1 22 1a  	fmadd.d	ft3, ft5, ft2, ft3
8000256c: 27 30 34 00  	fsd	ft3, 0(s0)
80002570: 07 b2 0c 00  	fld	ft4, 0(s9)
80002574: 87 32 07 6c  	fld	ft5, 1728(a4)
80002578: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000257c: 27 30 34 00  	fsd	ft3, 0(s0)
80002580: 07 32 0d 00  	fld	ft4, 0(s10)
80002584: 87 32 07 75  	fld	ft5, 1872(a4)
80002588: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000258c: 27 30 34 00  	fsd	ft3, 0(s0)
80002590: 07 32 0b 00  	fld	ft4, 0(s6)
80002594: 87 32 07 7e  	fld	ft5, 2016(a4)
80002598: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000259c: 27 30 34 00  	fsd	ft3, 0(s0)
800025a0: 93 05 87 43  	addi	a1, a4, 1080
800025a4: 87 b2 85 43  	fld	ft5, 1080(a1)
800025a8: c3 f1 02 1a  	fmadd.d	ft3, ft5, ft0, ft3
800025ac: 27 30 34 00  	fsd	ft3, 0(s0)
800025b0: 07 b2 0d 00  	fld	ft4, 0(s11)
800025b4: 93 05 07 48  	addi	a1, a4, 1152
800025b8: 87 b2 05 48  	fld	ft5, 1152(a1)
800025bc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800025c0: 27 30 34 00  	fsd	ft3, 0(s0)
800025c4: 07 b2 06 00  	fld	ft4, 0(a3)
800025c8: 93 05 87 4c  	addi	a1, a4, 1224
800025cc: 87 b2 85 4c  	fld	ft5, 1224(a1)
800025d0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800025d4: 27 30 34 00  	fsd	ft3, 0(s0)
800025d8: 07 32 05 00  	fld	ft4, 0(a0)
800025dc: 93 05 07 51  	addi	a1, a4, 1296
800025e0: 87 b2 05 51  	fld	ft5, 1296(a1)
800025e4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800025e8: 27 30 34 00  	fsd	ft3, 0(s0)
800025ec: 07 32 06 00  	fld	ft4, 0(a2)
800025f0: 93 05 87 55  	addi	a1, a4, 1368
800025f4: 87 b2 85 55  	fld	ft5, 1368(a1)
800025f8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nj; j++)
800025fc: 93 87 87 00  	addi	a5, a5, 8
;    E[i][j] += A[i][k] * B[k][j];
80002600: 27 30 34 00  	fsd	ft3, 0(s0)
;     for (j = 0; j < nj; j++)
80002604: e3 92 67 ea  	bne	a5, t1, 0x800024a8 <.LBB0_179+0xb18>
;  for (i = 0; i < ni; i++)
80002608: 93 82 12 00  	addi	t0, t0, 1
8000260c: 13 0e 0e 09  	addi	t3, t3, 144
80002610: e3 92 12 e5  	bne	t0, a7, 0x80002454 <.LBB0_179+0xac4>
80002614: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002618: 6f 00 40 1f  	j	0x8000280c <.LBB0_179+0xe7c>
8000261c: 93 05 00 00  	mv	a1, zero
80002620: 13 03 00 09  	addi	t1, zero, 144
80002624: 83 22 41 04  	lw	t0, 68(sp)
80002628: 93 07 00 00  	mv	a5, zero
;    E[i][j] += A[i][k] * B[k][j];
8000262c: 13 05 00 0a  	addi	a0, zero, 160
80002630: 23 24 b1 04  	sw	a1, 72(sp)
80002634: 33 85 a5 02  	mul	a0, a1, a0
80002638: b3 84 a0 00  	add	s1, ra, a0
8000263c: 13 8e 84 00  	addi	t3, s1, 8
80002640: 93 8e 04 01  	addi	t4, s1, 16
80002644: 13 8f 84 01  	addi	t5, s1, 24
80002648: 93 8f 04 02  	addi	t6, s1, 32
8000264c: 13 89 84 02  	addi	s2, s1, 40
80002650: 93 89 04 03  	addi	s3, s1, 48
80002654: 13 8a 84 03  	addi	s4, s1, 56
80002658: 93 8a 04 04  	addi	s5, s1, 64
8000265c: 93 8b 84 04  	addi	s7, s1, 72
80002660: 13 8c 04 05  	addi	s8, s1, 80
80002664: 93 8c 84 05  	addi	s9, s1, 88
80002668: 13 8d 04 06  	addi	s10, s1, 96
8000266c: 93 8d 84 06  	addi	s11, s1, 104
80002670: 93 80 04 07  	addi	ra, s1, 112
80002674: 13 8b 84 07  	addi	s6, s1, 120
80002678: 93 88 04 08  	addi	a7, s1, 128
8000267c: 13 86 84 08  	addi	a2, s1, 136
80002680: 13 87 04 09  	addi	a4, s1, 144
80002684: 13 84 84 09  	addi	s0, s1, 152
;  E[i][j] = 0.0;
80002688: b3 85 f3 00  	add	a1, t2, a5
8000268c: 23 a2 05 00  	sw	zero, 4(a1)
80002690: 23 a0 05 00  	sw	zero, 0(a1)
;    E[i][j] += A[i][k] * B[k][j];
80002694: 87 b1 04 00  	fld	ft3, 0(s1)
80002698: b3 86 f2 00  	add	a3, t0, a5
8000269c: 07 b2 06 00  	fld	ft4, 0(a3)
800026a0: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800026a4: 27 b0 35 00  	fsd	ft3, 0(a1)
800026a8: 07 32 0e 00  	fld	ft4, 0(t3)
800026ac: 87 b2 06 09  	fld	ft5, 144(a3)
800026b0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800026b4: 27 b0 35 00  	fsd	ft3, 0(a1)
800026b8: 07 b2 0e 00  	fld	ft4, 0(t4)
800026bc: 87 b2 06 12  	fld	ft5, 288(a3)
800026c0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800026c4: 27 b0 35 00  	fsd	ft3, 0(a1)
800026c8: 07 32 0f 00  	fld	ft4, 0(t5)
800026cc: 87 b2 06 1b  	fld	ft5, 432(a3)
800026d0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800026d4: 27 b0 35 00  	fsd	ft3, 0(a1)
800026d8: 07 b2 0f 00  	fld	ft4, 0(t6)
800026dc: 87 b2 06 24  	fld	ft5, 576(a3)
800026e0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800026e4: 27 b0 35 00  	fsd	ft3, 0(a1)
800026e8: 07 32 09 00  	fld	ft4, 0(s2)
800026ec: 87 b2 06 2d  	fld	ft5, 720(a3)
800026f0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800026f4: 27 b0 35 00  	fsd	ft3, 0(a1)
800026f8: 07 b2 09 00  	fld	ft4, 0(s3)
800026fc: 87 b2 06 36  	fld	ft5, 864(a3)
80002700: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002704: 27 b0 35 00  	fsd	ft3, 0(a1)
80002708: 07 32 0a 00  	fld	ft4, 0(s4)
8000270c: 87 b2 06 3f  	fld	ft5, 1008(a3)
80002710: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002714: 27 b0 35 00  	fsd	ft3, 0(a1)
80002718: 07 b2 0a 00  	fld	ft4, 0(s5)
8000271c: 87 b2 06 48  	fld	ft5, 1152(a3)
80002720: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002724: 27 b0 35 00  	fsd	ft3, 0(a1)
80002728: 07 b2 0b 00  	fld	ft4, 0(s7)
8000272c: 87 b2 06 51  	fld	ft5, 1296(a3)
80002730: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002734: 27 b0 35 00  	fsd	ft3, 0(a1)
80002738: 07 32 0c 00  	fld	ft4, 0(s8)
8000273c: 87 b2 06 5a  	fld	ft5, 1440(a3)
80002740: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002744: 27 b0 35 00  	fsd	ft3, 0(a1)
80002748: 07 b2 0c 00  	fld	ft4, 0(s9)
8000274c: 87 b2 06 63  	fld	ft5, 1584(a3)
80002750: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002754: 27 b0 35 00  	fsd	ft3, 0(a1)
80002758: 07 32 0d 00  	fld	ft4, 0(s10)
8000275c: 87 b2 06 6c  	fld	ft5, 1728(a3)
80002760: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002764: 27 b0 35 00  	fsd	ft3, 0(a1)
80002768: 07 b2 0d 00  	fld	ft4, 0(s11)
8000276c: 87 b2 06 75  	fld	ft5, 1872(a3)
80002770: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002774: 27 b0 35 00  	fsd	ft3, 0(a1)
80002778: 07 b2 00 00  	fld	ft4, 0(ra)
8000277c: 87 b2 06 7e  	fld	ft5, 2016(a3)
80002780: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002784: 27 b0 35 00  	fsd	ft3, 0(a1)
80002788: 07 32 0b 00  	fld	ft4, 0(s6)
8000278c: 13 88 86 43  	addi	a6, a3, 1080
80002790: 87 32 88 43  	fld	ft5, 1080(a6)
80002794: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002798: 27 b0 35 00  	fsd	ft3, 0(a1)
8000279c: 07 b2 08 00  	fld	ft4, 0(a7)
800027a0: 13 85 06 48  	addi	a0, a3, 1152
800027a4: 87 32 05 48  	fld	ft5, 1152(a0)
800027a8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800027ac: 27 b0 35 00  	fsd	ft3, 0(a1)
800027b0: 07 32 06 00  	fld	ft4, 0(a2)
800027b4: 13 85 86 4c  	addi	a0, a3, 1224
800027b8: 87 32 85 4c  	fld	ft5, 1224(a0)
800027bc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800027c0: 27 b0 35 00  	fsd	ft3, 0(a1)
800027c4: 07 32 07 00  	fld	ft4, 0(a4)
800027c8: 13 85 06 51  	addi	a0, a3, 1296
800027cc: 87 32 05 51  	fld	ft5, 1296(a0)
800027d0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800027d4: 27 b0 35 00  	fsd	ft3, 0(a1)
800027d8: 07 32 04 00  	fld	ft4, 0(s0)
800027dc: 13 85 86 55  	addi	a0, a3, 1368
800027e0: 87 32 85 55  	fld	ft5, 1368(a0)
800027e4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nj; j++)
800027e8: 93 87 87 00  	addi	a5, a5, 8
;    E[i][j] += A[i][k] * B[k][j];
800027ec: 27 b0 35 00  	fsd	ft3, 0(a1)
;     for (j = 0; j < nj; j++)
800027f0: e3 9c 67 e8  	bne	a5, t1, 0x80002688 <.LBB0_179+0xcf8>
800027f4: 83 25 81 04  	lw	a1, 72(sp)
;  for (i = 0; i < ni; i++)
800027f8: 93 85 15 00  	addi	a1, a1, 1
800027fc: 93 83 03 09  	addi	t2, t2, 144
80002800: 83 20 01 03  	lw	ra, 48(sp)
80002804: 13 05 00 01  	addi	a0, zero, 16
80002808: e3 90 a5 e2  	bne	a1, a0, 0x80002628 <.LBB0_179+0xc98>
8000280c: 03 24 c1 03  	lw	s0, 60(sp)
80002810: 83 27 41 02  	lw	a5, 36(sp)
;   for (i = 0; i < nj; i++)
80002814: b3 85 87 00  	add	a1, a5, s0
80002818: 33 b6 f5 00  	sltu	a2, a1, a5
8000281c: 13 85 85 41  	addi	a0, a1, 1048
80002820: b3 35 b5 00  	sltu	a1, a0, a1
80002824: 33 06 b6 00  	add	a2, a2, a1
80002828: b7 15 00 00  	lui	a1, 1
8000282c: 93 85 85 07  	addi	a1, a1, 120
80002830: 83 2f 41 03  	lw	t6, 52(sp)
80002834: b3 86 f7 01  	add	a3, a5, t6
80002838: 33 b7 f6 00  	sltu	a4, a3, a5
8000283c: 93 82 86 2f  	addi	t0, a3, 760
80002840: b3 b6 d2 00  	sltu	a3, t0, a3
80002844: 33 03 d7 00  	add	t1, a4, a3
80002848: 63 06 06 00  	beqz	a2, 0x80002854 <.LBB0_179+0xec4>
8000284c: 13 05 00 00  	mv	a0, zero
80002850: 6f 00 80 00  	j	0x80002858 <.LBB0_179+0xec8>
80002854: 33 35 f5 01  	sltu	a0, a0, t6
80002858: 83 28 c1 04  	lw	a7, 76(sp)
;   for (i = 0; i < nj; i++)
8000285c: b3 85 b8 00  	add	a1, a7, a1
80002860: 63 00 03 02  	beqz	t1, 0x80002880 <.LBB0_179+0xef0>
80002864: 13 06 00 00  	mv	a2, zero
80002868: 63 e0 15 03  	bltu	a1, a7, 0x80002888 <.LBB0_179+0xef8>
8000286c: b3 b5 f5 01  	sltu	a1, a1, t6
;   for (i = 0; i < nj; i++)
80002870: 33 65 a6 00  	or	a0, a2, a0
80002874: 63 10 03 02  	bnez	t1, 0x80002894 <.LBB0_179+0xf04>
80002878: 33 b6 12 01  	sltu	a2, t0, a7
8000287c: 6f 00 c0 01  	j	0x80002898 <.LBB0_179+0xf08>
80002880: 33 b6 82 00  	sltu	a2, t0, s0
;   for (i = 0; i < nj; i++)
80002884: e3 f4 15 ff  	bgeu	a1, a7, 0x8000286c <.LBB0_179+0xedc>
80002888: 93 05 00 00  	mv	a1, zero
8000288c: 33 65 a6 00  	or	a0, a2, a0
80002890: e3 04 03 fe  	beqz	t1, 0x80002878 <.LBB0_179+0xee8>
80002894: 13 06 00 00  	mv	a2, zero
80002898: b3 65 b6 00  	or	a1, a2, a1
8000289c: 33 75 b5 00  	and	a0, a0, a1
800028a0: 83 25 c1 01  	lw	a1, 28(sp)
800028a4: 33 f5 a5 00  	and	a0, a1, a0
800028a8: 83 25 01 01  	lw	a1, 16(sp)
800028ac: 33 f5 a5 00  	and	a0, a1, a0
800028b0: 23 24 51 00  	sw	t0, 8(sp)
800028b4: 23 2c 61 00  	sw	t1, 24(sp)
800028b8: 63 0c 05 1e  	beqz	a0, 0x80002ab0 <.LBB0_179+0x1120>
800028bc: 13 05 00 00  	mv	a0, zero
800028c0: 93 05 80 00  	addi	a1, zero, 8
800028c4: 13 06 70 01  	addi	a2, zero, 23
;   for (i = 0; i < nj; i++)
800028c8: 93 06 00 04  	addi	a3, zero, 64
800028cc: 13 07 00 0c  	addi	a4, zero, 192
800028d0: ab 20 d6 00  	scfgw	a2, a3
800028d4: ab a0 e5 00  	scfgw	a1, a4
800028d8: 93 06 80 f4  	addi	a3, zero, -184
800028dc: 13 07 50 01  	addi	a4, zero, 21
800028e0: 93 07 00 06  	addi	a5, zero, 96
800028e4: 93 04 00 0e  	addi	s1, zero, 224
800028e8: ab 20 f7 00  	scfgw	a4, a5
800028ec: ab a0 96 00  	scfgw	a3, s1
800028f0: 93 06 10 01  	addi	a3, zero, 17
800028f4: 93 07 00 08  	addi	a5, zero, 128
800028f8: 93 04 00 10  	addi	s1, zero, 256
800028fc: ab a0 f6 00  	scfgw	a3, a5
80002900: ab a0 95 00  	scfgw	a1, s1
80002904: 93 05 00 02  	addi	a1, zero, 32
80002908: ab 20 b0 00  	scfgw	zero, a1
8000290c: 2b 20 04 34  	scfgwi	s0, 832
80002910: 93 05 00 0b  	addi	a1, zero, 176
80002914: 93 07 10 00  	addi	a5, zero, 1
80002918: 93 84 07 04  	addi	s1, a5, 64
8000291c: 13 84 07 0c  	addi	s0, a5, 192
80002920: ab 20 96 00  	scfgw	a2, s1
80002924: ab a0 85 00  	scfgw	a1, s0
80002928: 37 f6 ff ff  	lui	a2, 1048575
8000292c: 93 04 86 03  	addi	s1, a2, 56
80002930: 13 84 07 06  	addi	s0, a5, 96
80002934: ab 20 87 00  	scfgw	a4, s0
80002938: 13 87 07 0e  	addi	a4, a5, 224
8000293c: ab a0 e4 00  	scfgw	s1, a4
80002940: 13 06 86 f8  	addi	a2, a2, -120
80002944: 13 87 07 08  	addi	a4, a5, 128
80002948: 93 84 07 10  	addi	s1, a5, 256
8000294c: ab a0 e6 00  	scfgw	a3, a4
80002950: ab 20 96 00  	scfgw	a2, s1
80002954: 13 86 07 02  	addi	a2, a5, 32
80002958: ab 20 c0 00  	scfgw	zero, a2
8000295c: 2b a0 18 34  	scfgwi	a7, 833
80002960: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80002964: 13 06 20 01  	addi	a2, zero, 18
80002968: 13 07 00 00  	mv	a4, zero
;  F[i][j] = 0.0;
8000296c: b3 84 ef 00  	add	s1, t6, a4
80002970: 23 a2 04 00  	sw	zero, 4(s1)
80002974: 23 a0 04 00  	sw	zero, 0(s1)
;    F[i][j] += C[i][k] * D[k][j];
80002978: 87 b2 04 00  	fld	ft5, 0(s1)
8000297c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002980: 27 b0 34 00  	fsd	ft3, 0(s1)
80002984: 87 b2 04 00  	fld	ft5, 0(s1)
80002988: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
8000298c: 27 b0 34 00  	fsd	ft3, 0(s1)
80002990: 87 b2 04 00  	fld	ft5, 0(s1)
80002994: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002998: 27 b0 34 00  	fsd	ft3, 0(s1)
8000299c: 87 b2 04 00  	fld	ft5, 0(s1)
800029a0: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029a4: 27 b0 34 00  	fsd	ft3, 0(s1)
800029a8: 87 b2 04 00  	fld	ft5, 0(s1)
800029ac: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029b0: 27 b0 34 00  	fsd	ft3, 0(s1)
800029b4: 87 b2 04 00  	fld	ft5, 0(s1)
800029b8: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029bc: 27 b0 34 00  	fsd	ft3, 0(s1)
800029c0: 87 b2 04 00  	fld	ft5, 0(s1)
800029c4: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029c8: 27 b0 34 00  	fsd	ft3, 0(s1)
800029cc: 87 b2 04 00  	fld	ft5, 0(s1)
800029d0: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029d4: 27 b0 34 00  	fsd	ft3, 0(s1)
800029d8: 87 b2 04 00  	fld	ft5, 0(s1)
800029dc: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029e0: 27 b0 34 00  	fsd	ft3, 0(s1)
800029e4: 87 b2 04 00  	fld	ft5, 0(s1)
800029e8: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029ec: 27 b0 34 00  	fsd	ft3, 0(s1)
800029f0: 87 b2 04 00  	fld	ft5, 0(s1)
800029f4: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800029f8: 27 b0 34 00  	fsd	ft3, 0(s1)
800029fc: 87 b2 04 00  	fld	ft5, 0(s1)
80002a00: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a04: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a08: 87 b2 04 00  	fld	ft5, 0(s1)
80002a0c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a10: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a14: 87 b2 04 00  	fld	ft5, 0(s1)
80002a18: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a1c: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a20: 87 b2 04 00  	fld	ft5, 0(s1)
80002a24: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a28: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a2c: 87 b2 04 00  	fld	ft5, 0(s1)
80002a30: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a34: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a38: 87 b2 04 00  	fld	ft5, 0(s1)
80002a3c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a40: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a44: 87 b2 04 00  	fld	ft5, 0(s1)
80002a48: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a4c: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a50: 87 b2 04 00  	fld	ft5, 0(s1)
80002a54: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a58: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a5c: 87 b2 04 00  	fld	ft5, 0(s1)
80002a60: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a64: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a68: 87 b2 04 00  	fld	ft5, 0(s1)
80002a6c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a70: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a74: 87 b2 04 00  	fld	ft5, 0(s1)
80002a78: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a7c: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a80: 87 b2 04 00  	fld	ft5, 0(s1)
80002a84: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80002a88: 27 b0 34 00  	fsd	ft3, 0(s1)
80002a8c: 87 b2 04 00  	fld	ft5, 0(s1)
80002a90: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
;     for (j = 0; j < nl; j++)
80002a94: 13 07 87 00  	addi	a4, a4, 8
;    F[i][j] += C[i][k] * D[k][j];
80002a98: 27 b0 34 00  	fsd	ft3, 0(s1)
;     for (j = 0; j < nl; j++)
80002a9c: e3 18 b7 ec  	bne	a4, a1, 0x8000296c <.LBB0_179+0xfdc>
;   for (i = 0; i < nj; i++)
80002aa0: 13 05 15 00  	addi	a0, a0, 1
80002aa4: 93 8f 0f 0b  	addi	t6, t6, 176
80002aa8: e3 10 c5 ec  	bne	a0, a2, 0x80002968 <.LBB0_179+0xfd8>
80002aac: 6f 00 40 3d  	j	0x80002e80 <.LBB0_179+0x14f0>
80002ab0: 93 06 04 09  	addi	a3, s0, 144
80002ab4: 13 87 07 36  	addi	a4, a5, 864
80002ab8: b3 35 f7 00  	sltu	a1, a4, a5
80002abc: 33 85 e6 00  	add	a0, a3, a4
80002ac0: 33 36 d5 00  	sltu	a2, a0, a3
80002ac4: b3 87 c5 00  	add	a5, a1, a2
80002ac8: 93 84 08 42  	addi	s1, a7, 1056
80002acc: 13 86 48 47  	addi	a2, a7, 1140
80002ad0: 13 08 84 06  	addi	a6, s0, 104
80002ad4: 63 86 07 00  	beqz	a5, 0x80002ae0 <.LBB0_179+0x1150>
80002ad8: 13 05 00 00  	mv	a0, zero
80002adc: 6f 00 80 00  	j	0x80002ae4 <.LBB0_179+0x1154>
80002ae0: 33 35 f5 01  	sltu	a0, a0, t6
;   for (i = 0; i < nj; i++)
80002ae4: b3 07 e8 00  	add	a5, a6, a4
80002ae8: 93 83 04 42  	addi	t2, s1, 1056
80002aec: 93 04 46 47  	addi	s1, a2, 1140
80002af0: 63 06 03 02  	beqz	t1, 0x80002b1c <.LBB0_179+0x118c>
80002af4: 13 07 00 00  	mv	a4, zero
80002af8: 33 b6 07 01  	sltu	a2, a5, a6
80002afc: 63 e6 74 02  	bltu	s1, t2, 0x80002b28 <.LBB0_179+0x1198>
80002b00: b3 b4 f4 01  	sltu	s1, s1, t6
;   for (i = 0; i < nj; i++)
80002b04: b3 85 c5 00  	add	a1, a1, a2
80002b08: 63 16 03 02  	bnez	t1, 0x80002b34 <.LBB0_179+0x11a4>
80002b0c: 33 b6 72 00  	sltu	a2, t0, t2
;   for (i = 0; i < nj; i++)
80002b10: 63 96 05 02  	bnez	a1, 0x80002b3c <.LBB0_179+0x11ac>
80002b14: b3 b5 f7 01  	sltu	a1, a5, t6
80002b18: 6f 00 80 02  	j	0x80002b40 <.LBB0_179+0x11b0>
80002b1c: 33 b7 d2 00  	sltu	a4, t0, a3
;   for (i = 0; i < nj; i++)
80002b20: 33 b6 07 01  	sltu	a2, a5, a6
80002b24: e3 fe 74 fc  	bgeu	s1, t2, 0x80002b00 <.LBB0_179+0x1170>
80002b28: 93 04 00 00  	mv	s1, zero
80002b2c: b3 85 c5 00  	add	a1, a1, a2
80002b30: e3 0e 03 fc  	beqz	t1, 0x80002b0c <.LBB0_179+0x117c>
80002b34: 13 06 00 00  	mv	a2, zero
80002b38: e3 8e 05 fc  	beqz	a1, 0x80002b14 <.LBB0_179+0x1184>
80002b3c: 93 05 00 00  	mv	a1, zero
80002b40: 33 65 a7 00  	or	a0, a4, a0
80002b44: 33 67 96 00  	or	a4, a2, s1
80002b48: 63 06 03 00  	beqz	t1, 0x80002b54 <.LBB0_179+0x11c4>
80002b4c: 93 07 00 00  	mv	a5, zero
80002b50: 6f 00 80 00  	j	0x80002b58 <.LBB0_179+0x11c8>
80002b54: b3 b7 02 01  	sltu	a5, t0, a6
;   for (i = 0; i < nj; i++)
80002b58: b3 e5 b7 00  	or	a1, a5, a1
80002b5c: 33 75 e5 00  	and	a0, a0, a4
80002b60: 33 f5 a5 00  	and	a0, a1, a0
80002b64: 93 d5 46 01  	srli	a1, a3, 20
80002b68: b3 35 b0 00  	snez	a1, a1
80002b6c: 37 f7 11 00  	lui	a4, 287
80002b70: 13 07 17 34  	addi	a4, a4, 833
80002b74: b3 b7 e6 00  	sltu	a5, a3, a4
80002b78: b3 f5 f5 00  	and	a1, a1, a5
80002b7c: 33 f5 a5 00  	and	a0, a1, a0
80002b80: 93 d5 43 01  	srli	a1, t2, 20
80002b84: b3 35 b0 00  	snez	a1, a1
80002b88: b7 07 12 00  	lui	a5, 288
80002b8c: 93 87 97 f5  	addi	a5, a5, -167
80002b90: b3 b7 f3 00  	sltu	a5, t2, a5
80002b94: b3 f5 f5 00  	and	a1, a1, a5
80002b98: 33 f5 a5 00  	and	a0, a1, a0
80002b9c: 93 55 48 01  	srli	a1, a6, 20
80002ba0: b3 35 b0 00  	snez	a1, a1
80002ba4: 33 37 e8 00  	sltu	a4, a6, a4
80002ba8: b3 f5 e5 00  	and	a1, a1, a4
80002bac: 33 f5 a5 00  	and	a0, a1, a0
80002bb0: 63 0c 05 2c  	beqz	a0, 0x80002e88 <.LBB0_179+0x14f8>
80002bb4: 13 06 00 00  	mv	a2, zero
80002bb8: 13 05 50 01  	addi	a0, zero, 21
;   for (i = 0; i < nj; i++)
80002bbc: 93 05 00 04  	addi	a1, zero, 64
80002bc0: 13 07 00 0c  	addi	a4, zero, 192
80002bc4: ab 20 b5 00  	scfgw	a0, a1
80002bc8: ab 20 e0 00  	scfgw	zero, a4
80002bcc: 93 04 00 0c  	addi	s1, zero, 192
80002bd0: 93 05 10 01  	addi	a1, zero, 17
80002bd4: 13 07 00 06  	addi	a4, zero, 96
80002bd8: 93 07 00 0e  	addi	a5, zero, 224
80002bdc: ab a0 e5 00  	scfgw	a1, a4
80002be0: ab a0 f4 00  	scfgw	s1, a5
80002be4: 13 07 00 02  	addi	a4, zero, 32
80002be8: ab 20 e0 00  	scfgw	zero, a4
80002bec: 2b a0 06 32  	scfgwi	a3, 800
80002bf0: 93 06 80 00  	addi	a3, zero, 8
80002bf4: 13 07 10 00  	addi	a4, zero, 1
80002bf8: 93 07 07 04  	addi	a5, a4, 64
80002bfc: ab 20 f5 00  	scfgw	a0, a5
80002c00: 93 07 07 0c  	addi	a5, a4, 192
80002c04: ab a0 f6 00  	scfgw	a3, a5
80002c08: 93 06 80 f5  	addi	a3, zero, -168
80002c0c: 93 07 07 06  	addi	a5, a4, 96
80002c10: ab a0 f5 00  	scfgw	a1, a5
80002c14: 93 07 07 0e  	addi	a5, a4, 224
80002c18: ab a0 f6 00  	scfgw	a3, a5
80002c1c: 93 06 07 02  	addi	a3, a4, 32
80002c20: ab 20 d0 00  	scfgw	zero, a3
80002c24: 2b a0 13 32  	scfgwi	t2, 801
80002c28: 93 06 20 00  	addi	a3, zero, 2
80002c2c: 13 87 06 04  	addi	a4, a3, 64
80002c30: 93 87 06 0c  	addi	a5, a3, 192
80002c34: ab 20 e5 00  	scfgw	a0, a4
80002c38: ab 20 f0 00  	scfgw	zero, a5
80002c3c: 13 85 06 06  	addi	a0, a3, 96
80002c40: 13 87 06 0e  	addi	a4, a3, 224
80002c44: ab a0 a5 00  	scfgw	a1, a0
80002c48: ab a0 e4 00  	scfgw	s1, a4
80002c4c: 13 85 06 02  	addi	a0, a3, 32
80002c50: ab 20 a0 00  	scfgw	zero, a0
80002c54: 2b 20 28 32  	scfgwi	a6, 802
80002c58: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002c5c: 13 85 88 47  	addi	a0, a7, 1144
80002c60: 93 09 85 47  	addi	s3, a0, 1144
80002c64: 93 8a 0f 00  	mv	s5, t6
80002c68: 93 07 00 00  	mv	a5, zero
80002c6c: 23 24 c1 04  	sw	a2, 72(sp)
;    F[i][j] += C[i][k] * D[k][j];
80002c70: 13 05 00 0c  	addi	a0, zero, 192
80002c74: 33 05 a6 02  	mul	a0, a2, a0
80002c78: 33 04 a4 00  	add	s0, s0, a0
80002c7c: 13 0a 84 00  	addi	s4, s0, 8
80002c80: 13 0b 04 01  	addi	s6, s0, 16
80002c84: 93 0b 84 01  	addi	s7, s0, 24
80002c88: 13 0c 04 02  	addi	s8, s0, 32
80002c8c: 93 0c 84 02  	addi	s9, s0, 40
80002c90: 13 0d 04 03  	addi	s10, s0, 48
80002c94: 93 0d 84 03  	addi	s11, s0, 56
80002c98: 93 00 04 04  	addi	ra, s0, 64
80002c9c: 13 09 84 04  	addi	s2, s0, 72
80002ca0: 93 06 04 05  	addi	a3, s0, 80
80002ca4: 13 06 84 05  	addi	a2, s0, 88
80002ca8: 93 05 04 06  	addi	a1, s0, 96
80002cac: 13 07 04 07  	addi	a4, s0, 112
80002cb0: 93 04 84 07  	addi	s1, s0, 120
80002cb4: 93 08 04 08  	addi	a7, s0, 128
80002cb8: 93 03 84 08  	addi	t2, s0, 136
80002cbc: 13 0e 84 09  	addi	t3, s0, 152
80002cc0: 13 08 04 0a  	addi	a6, s0, 160
80002cc4: 93 02 84 0a  	addi	t0, s0, 168
80002cc8: 13 03 04 0b  	addi	t1, s0, 176
80002ccc: 93 0e 84 0b  	addi	t4, s0, 184
;  F[i][j] = 0.0;
80002cd0: 33 8f fa 00  	add	t5, s5, a5
80002cd4: 23 22 0f 00  	sw	zero, 4(t5)
80002cd8: 23 20 0f 00  	sw	zero, 0(t5)
;    F[i][j] += C[i][k] * D[k][j];
80002cdc: 87 31 04 00  	fld	ft3, 0(s0)
80002ce0: 03 25 c1 04  	lw	a0, 76(sp)
80002ce4: b3 0f f5 00  	add	t6, a0, a5
80002ce8: 07 b2 0f 00  	fld	ft4, 0(t6)
80002cec: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002cf0: 27 30 3f 00  	fsd	ft3, 0(t5)
80002cf4: 07 32 0a 00  	fld	ft4, 0(s4)
80002cf8: 87 b2 0f 0b  	fld	ft5, 176(t6)
80002cfc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d00: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d04: 07 32 0b 00  	fld	ft4, 0(s6)
80002d08: 87 b2 0f 16  	fld	ft5, 352(t6)
80002d0c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d10: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d14: 07 b2 0b 00  	fld	ft4, 0(s7)
80002d18: 87 b2 0f 21  	fld	ft5, 528(t6)
80002d1c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d20: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d24: 07 32 0c 00  	fld	ft4, 0(s8)
80002d28: 87 b2 0f 2c  	fld	ft5, 704(t6)
80002d2c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d30: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d34: 07 b2 0c 00  	fld	ft4, 0(s9)
80002d38: 87 b2 0f 37  	fld	ft5, 880(t6)
80002d3c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d40: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d44: 07 32 0d 00  	fld	ft4, 0(s10)
80002d48: 87 b2 0f 42  	fld	ft5, 1056(t6)
80002d4c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d50: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d54: 07 b2 0d 00  	fld	ft4, 0(s11)
80002d58: 87 b2 0f 4d  	fld	ft5, 1232(t6)
80002d5c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d60: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d64: 07 b2 00 00  	fld	ft4, 0(ra)
80002d68: 87 b2 0f 58  	fld	ft5, 1408(t6)
80002d6c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d70: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d74: 07 32 09 00  	fld	ft4, 0(s2)
80002d78: 87 b2 0f 63  	fld	ft5, 1584(t6)
80002d7c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d80: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d84: 07 b2 06 00  	fld	ft4, 0(a3)
80002d88: 87 b2 0f 6e  	fld	ft5, 1760(t6)
80002d8c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d90: 27 30 3f 00  	fsd	ft3, 0(t5)
80002d94: 07 32 06 00  	fld	ft4, 0(a2)
80002d98: 87 b2 0f 79  	fld	ft5, 1936(t6)
80002d9c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002da0: 27 30 3f 00  	fsd	ft3, 0(t5)
80002da4: 07 b2 05 00  	fld	ft4, 0(a1)
80002da8: c3 f1 40 1a  	fmadd.d	ft3, ft1, ft4, ft3
80002dac: 27 30 3f 00  	fsd	ft3, 0(t5)
80002db0: 33 85 f9 00  	add	a0, s3, a5
80002db4: 87 32 05 00  	fld	ft5, 0(a0)
80002db8: c3 f1 22 1a  	fmadd.d	ft3, ft5, ft2, ft3
80002dbc: 27 30 3f 00  	fsd	ft3, 0(t5)
80002dc0: 07 32 07 00  	fld	ft4, 0(a4)
80002dc4: 87 32 05 0b  	fld	ft5, 176(a0)
80002dc8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002dcc: 27 30 3f 00  	fsd	ft3, 0(t5)
80002dd0: 07 b2 04 00  	fld	ft4, 0(s1)
80002dd4: 87 32 05 16  	fld	ft5, 352(a0)
80002dd8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ddc: 27 30 3f 00  	fsd	ft3, 0(t5)
80002de0: 07 b2 08 00  	fld	ft4, 0(a7)
80002de4: 87 32 05 21  	fld	ft5, 528(a0)
80002de8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002dec: 27 30 3f 00  	fsd	ft3, 0(t5)
80002df0: 07 b2 03 00  	fld	ft4, 0(t2)
80002df4: 87 32 05 2c  	fld	ft5, 704(a0)
80002df8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002dfc: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e00: 87 32 05 37  	fld	ft5, 880(a0)
80002e04: c3 f1 02 1a  	fmadd.d	ft3, ft5, ft0, ft3
80002e08: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e0c: 07 32 0e 00  	fld	ft4, 0(t3)
80002e10: 87 32 05 42  	fld	ft5, 1056(a0)
80002e14: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e18: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e1c: 07 32 08 00  	fld	ft4, 0(a6)
80002e20: 87 32 05 4d  	fld	ft5, 1232(a0)
80002e24: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e28: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e2c: 07 b2 02 00  	fld	ft4, 0(t0)
80002e30: 87 32 05 58  	fld	ft5, 1408(a0)
80002e34: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e38: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e3c: 07 32 03 00  	fld	ft4, 0(t1)
80002e40: 87 32 05 63  	fld	ft5, 1584(a0)
80002e44: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e48: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e4c: 07 32 05 6e  	fld	ft4, 1760(a0)
80002e50: 87 b2 0e 00  	fld	ft5, 0(t4)
80002e54: c3 71 52 1a  	fmadd.d	ft3, ft4, ft5, ft3
;     for (j = 0; j < nl; j++)
80002e58: 93 87 87 00  	addi	a5, a5, 8
;    F[i][j] += C[i][k] * D[k][j];
80002e5c: 27 30 3f 00  	fsd	ft3, 0(t5)
80002e60: 13 05 00 0b  	addi	a0, zero, 176
;     for (j = 0; j < nl; j++)
80002e64: e3 96 a7 e6  	bne	a5, a0, 0x80002cd0 <.LBB0_179+0x1340>
80002e68: 03 26 81 04  	lw	a2, 72(sp)
;   for (i = 0; i < nj; i++)
80002e6c: 13 06 16 00  	addi	a2, a2, 1
80002e70: 93 8a 0a 0b  	addi	s5, s5, 176
80002e74: 03 24 c1 03  	lw	s0, 60(sp)
80002e78: 13 05 20 01  	addi	a0, zero, 18
80002e7c: e3 16 a6 de  	bne	a2, a0, 0x80002c68 <.LBB0_179+0x12d8>
80002e80: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002e84: 6f 00 40 25  	j	0x800030d8 <.LBB0_179+0x1748>
80002e88: 23 28 71 02  	sw	t2, 48(sp)
80002e8c: 13 05 00 00  	mv	a0, zero
80002e90: 83 2e c1 04  	lw	t4, 76(sp)
80002e94: 03 2f 01 03  	lw	t5, 48(sp)
80002e98: 93 07 00 00  	mv	a5, zero
80002e9c: 23 2c a1 02  	sw	a0, 56(sp)
;    F[i][j] += C[i][k] * D[k][j];
80002ea0: 93 05 00 0c  	addi	a1, zero, 192
80002ea4: 33 05 b5 02  	mul	a0, a0, a1
80002ea8: 33 04 a4 00  	add	s0, s0, a0
80002eac: 13 05 84 00  	addi	a0, s0, 8
80002eb0: 23 24 a1 04  	sw	a0, 72(sp)
80002eb4: 13 05 04 01  	addi	a0, s0, 16
80002eb8: 23 22 a1 04  	sw	a0, 68(sp)
80002ebc: 13 05 84 01  	addi	a0, s0, 24
80002ec0: 23 20 a1 04  	sw	a0, 64(sp)
80002ec4: 13 09 04 02  	addi	s2, s0, 32
80002ec8: 93 09 84 02  	addi	s3, s0, 40
80002ecc: 13 0a 04 03  	addi	s4, s0, 48
80002ed0: 93 0a 84 03  	addi	s5, s0, 56
80002ed4: 13 0b 04 04  	addi	s6, s0, 64
80002ed8: 93 0b 84 04  	addi	s7, s0, 72
80002edc: 13 0c 04 05  	addi	s8, s0, 80
80002ee0: 93 0c 84 05  	addi	s9, s0, 88
80002ee4: 13 0d 04 06  	addi	s10, s0, 96
80002ee8: 93 0d 84 06  	addi	s11, s0, 104
80002eec: 93 00 04 07  	addi	ra, s0, 112
80002ef0: 13 0e 84 07  	addi	t3, s0, 120
80002ef4: 13 06 04 08  	addi	a2, s0, 128
80002ef8: 93 04 84 08  	addi	s1, s0, 136
80002efc: 13 07 04 09  	addi	a4, s0, 144
80002f00: 93 05 84 09  	addi	a1, s0, 152
80002f04: 93 06 04 0a  	addi	a3, s0, 160
80002f08: 93 08 84 0a  	addi	a7, s0, 168
80002f0c: 93 03 04 0b  	addi	t2, s0, 176
80002f10: 13 08 84 0b  	addi	a6, s0, 184
;  F[i][j] = 0.0;
80002f14: b3 82 ff 00  	add	t0, t6, a5
80002f18: 23 a2 02 00  	sw	zero, 4(t0)
80002f1c: 23 a0 02 00  	sw	zero, 0(t0)
;    F[i][j] += C[i][k] * D[k][j];
80002f20: 87 31 04 00  	fld	ft3, 0(s0)
80002f24: 33 83 fe 00  	add	t1, t4, a5
80002f28: 07 32 03 00  	fld	ft4, 0(t1)
80002f2c: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002f30: 27 b0 32 00  	fsd	ft3, 0(t0)
80002f34: 03 25 81 04  	lw	a0, 72(sp)
80002f38: 07 32 05 00  	fld	ft4, 0(a0)
80002f3c: 87 32 03 0b  	fld	ft5, 176(t1)
80002f40: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f44: 27 b0 32 00  	fsd	ft3, 0(t0)
80002f48: 03 25 41 04  	lw	a0, 68(sp)
80002f4c: 07 32 05 00  	fld	ft4, 0(a0)
80002f50: 87 32 03 16  	fld	ft5, 352(t1)
80002f54: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f58: 27 b0 32 00  	fsd	ft3, 0(t0)
80002f5c: 03 25 01 04  	lw	a0, 64(sp)
80002f60: 07 32 05 00  	fld	ft4, 0(a0)
80002f64: 87 32 03 21  	fld	ft5, 528(t1)
80002f68: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f6c: 27 b0 32 00  	fsd	ft3, 0(t0)
80002f70: 07 32 09 00  	fld	ft4, 0(s2)
80002f74: 87 32 03 2c  	fld	ft5, 704(t1)
80002f78: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f7c: 27 b0 32 00  	fsd	ft3, 0(t0)
80002f80: 07 b2 09 00  	fld	ft4, 0(s3)
80002f84: 87 32 03 37  	fld	ft5, 880(t1)
80002f88: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f8c: 27 b0 32 00  	fsd	ft3, 0(t0)
80002f90: 07 32 0a 00  	fld	ft4, 0(s4)
80002f94: 87 32 03 42  	fld	ft5, 1056(t1)
80002f98: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002f9c: 27 b0 32 00  	fsd	ft3, 0(t0)
80002fa0: 07 b2 0a 00  	fld	ft4, 0(s5)
80002fa4: 87 32 03 4d  	fld	ft5, 1232(t1)
80002fa8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fac: 27 b0 32 00  	fsd	ft3, 0(t0)
80002fb0: 07 32 0b 00  	fld	ft4, 0(s6)
80002fb4: 87 32 03 58  	fld	ft5, 1408(t1)
80002fb8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fbc: 27 b0 32 00  	fsd	ft3, 0(t0)
80002fc0: 07 b2 0b 00  	fld	ft4, 0(s7)
80002fc4: 87 32 03 63  	fld	ft5, 1584(t1)
80002fc8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fcc: 27 b0 32 00  	fsd	ft3, 0(t0)
80002fd0: 07 32 0c 00  	fld	ft4, 0(s8)
80002fd4: 87 32 03 6e  	fld	ft5, 1760(t1)
80002fd8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fdc: 27 b0 32 00  	fsd	ft3, 0(t0)
80002fe0: 07 b2 0c 00  	fld	ft4, 0(s9)
80002fe4: 87 32 03 79  	fld	ft5, 1936(t1)
80002fe8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002fec: 27 b0 32 00  	fsd	ft3, 0(t0)
80002ff0: 07 32 0d 00  	fld	ft4, 0(s10)
80002ff4: 33 05 ff 00  	add	a0, t5, a5
80002ff8: 87 32 05 00  	fld	ft5, 0(a0)
80002ffc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003000: 27 b0 32 00  	fsd	ft3, 0(t0)
80003004: 07 b2 0d 00  	fld	ft4, 0(s11)
80003008: 87 32 05 0b  	fld	ft5, 176(a0)
8000300c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003010: 27 b0 32 00  	fsd	ft3, 0(t0)
80003014: 07 b2 00 00  	fld	ft4, 0(ra)
80003018: 87 32 05 16  	fld	ft5, 352(a0)
8000301c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003020: 27 b0 32 00  	fsd	ft3, 0(t0)
80003024: 07 32 0e 00  	fld	ft4, 0(t3)
80003028: 87 32 05 21  	fld	ft5, 528(a0)
8000302c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003030: 27 b0 32 00  	fsd	ft3, 0(t0)
80003034: 07 32 06 00  	fld	ft4, 0(a2)
80003038: 87 32 05 2c  	fld	ft5, 704(a0)
8000303c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003040: 27 b0 32 00  	fsd	ft3, 0(t0)
80003044: 07 b2 04 00  	fld	ft4, 0(s1)
80003048: 87 32 05 37  	fld	ft5, 880(a0)
8000304c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003050: 27 b0 32 00  	fsd	ft3, 0(t0)
80003054: 07 32 07 00  	fld	ft4, 0(a4)
80003058: 87 32 05 42  	fld	ft5, 1056(a0)
8000305c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003060: 27 b0 32 00  	fsd	ft3, 0(t0)
80003064: 07 b2 05 00  	fld	ft4, 0(a1)
80003068: 87 32 05 4d  	fld	ft5, 1232(a0)
8000306c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003070: 27 b0 32 00  	fsd	ft3, 0(t0)
80003074: 07 b2 06 00  	fld	ft4, 0(a3)
80003078: 87 32 05 58  	fld	ft5, 1408(a0)
8000307c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003080: 27 b0 32 00  	fsd	ft3, 0(t0)
80003084: 07 b2 08 00  	fld	ft4, 0(a7)
80003088: 87 32 05 63  	fld	ft5, 1584(a0)
8000308c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003090: 27 b0 32 00  	fsd	ft3, 0(t0)
80003094: 07 b2 03 00  	fld	ft4, 0(t2)
80003098: 87 32 05 6e  	fld	ft5, 1760(a0)
8000309c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800030a0: 27 b0 32 00  	fsd	ft3, 0(t0)
800030a4: 07 32 05 79  	fld	ft4, 1936(a0)
800030a8: 87 32 08 00  	fld	ft5, 0(a6)
800030ac: c3 71 52 1a  	fmadd.d	ft3, ft4, ft5, ft3
;     for (j = 0; j < nl; j++)
800030b0: 93 87 87 00  	addi	a5, a5, 8
;    F[i][j] += C[i][k] * D[k][j];
800030b4: 27 b0 32 00  	fsd	ft3, 0(t0)
800030b8: 13 05 00 0b  	addi	a0, zero, 176
;     for (j = 0; j < nl; j++)
800030bc: e3 9c a7 e4  	bne	a5, a0, 0x80002f14 <.LBB0_179+0x1584>
800030c0: 03 25 81 03  	lw	a0, 56(sp)
;   for (i = 0; i < nj; i++)
800030c4: 13 05 15 00  	addi	a0, a0, 1
800030c8: 93 8f 0f 0b  	addi	t6, t6, 176
800030cc: 03 24 c1 03  	lw	s0, 60(sp)
800030d0: 93 05 20 01  	addi	a1, zero, 18
800030d4: e3 12 b5 dc  	bne	a0, a1, 0x80002e98 <.LBB0_179+0x1508>
800030d8: 03 2e c1 02  	lw	t3, 44(sp)
800030dc: 83 24 41 02  	lw	s1, 36(sp)
;   for (i = 0; i < ni; i++)
800030e0: 33 85 c4 01  	add	a0, s1, t3
800030e4: b3 35 95 00  	sltu	a1, a0, s1
800030e8: 13 06 85 19  	addi	a2, a0, 408
800030ec: 33 35 a6 00  	sltu	a0, a2, a0
800030f0: 33 87 a5 00  	add	a4, a1, a0
800030f4: 03 25 41 01  	lw	a0, 20(sp)
800030f8: 63 06 05 00  	beqz	a0, 0x80003104 <.LBB0_179+0x1774>
800030fc: 13 05 00 00  	mv	a0, zero
80003100: 6f 00 c0 00  	j	0x8000310c <.LBB0_179+0x177c>
80003104: 03 25 c1 00  	lw	a0, 12(sp)
80003108: 33 35 c5 01  	sltu	a0, a0, t3
8000310c: 83 20 81 02  	lw	ra, 40(sp)
80003110: 83 25 81 01  	lw	a1, 24(sp)
;   for (i = 0; i < ni; i++)
80003114: 63 04 07 02  	beqz	a4, 0x8000313c <.LBB0_179+0x17ac>
80003118: 93 06 00 00  	mv	a3, zero
8000311c: 83 2d 41 03  	lw	s11, 52(sp)
80003120: 63 94 05 02  	bnez	a1, 0x80003148 <.LBB0_179+0x17b8>
80003124: 83 25 81 00  	lw	a1, 8(sp)
80003128: b3 b5 c5 01  	sltu	a1, a1, t3
;   for (i = 0; i < ni; i++)
8000312c: 33 65 d5 00  	or	a0, a0, a3
80003130: 63 12 07 02  	bnez	a4, 0x80003154 <.LBB0_179+0x17c4>
80003134: b3 36 b6 01  	sltu	a3, a2, s11
80003138: 6f 00 00 02  	j	0x80003158 <.LBB0_179+0x17c8>
8000313c: b3 36 16 00  	sltu	a3, a2, ra
80003140: 83 2d 41 03  	lw	s11, 52(sp)
;   for (i = 0; i < ni; i++)
80003144: e3 80 05 fe  	beqz	a1, 0x80003124 <.LBB0_179+0x1794>
80003148: 93 05 00 00  	mv	a1, zero
8000314c: 33 65 d5 00  	or	a0, a0, a3
80003150: e3 02 07 fe  	beqz	a4, 0x80003134 <.LBB0_179+0x17a4>
80003154: 93 06 00 00  	mv	a3, zero
80003158: b3 e5 d5 00  	or	a1, a1, a3
8000315c: 33 75 b5 00  	and	a0, a0, a1
80003160: 93 d5 40 01  	srli	a1, ra, 20
80003164: b3 35 b0 00  	snez	a1, a1
80003168: b7 f6 11 00  	lui	a3, 287
8000316c: 93 87 96 70  	addi	a5, a3, 1801
80003170: b3 b7 f0 00  	sltu	a5, ra, a5
80003174: b3 f5 f5 00  	and	a1, a1, a5
80003178: 33 f5 a5 00  	and	a0, a1, a0
8000317c: 93 d5 4d 01  	srli	a1, s11, 20
80003180: b3 35 b0 00  	snez	a1, a1
80003184: 93 86 96 3a  	addi	a3, a3, 937
80003188: b3 b6 dd 00  	sltu	a3, s11, a3
8000318c: b3 f5 d5 00  	and	a1, a1, a3
80003190: 33 f5 a5 00  	and	a0, a1, a0
80003194: 63 0a 05 1a  	beqz	a0, 0x80003348 <.LBB0_179+0x19b8>
80003198: 13 05 00 00  	mv	a0, zero
8000319c: 93 05 80 00  	addi	a1, zero, 8
800031a0: 13 06 10 01  	addi	a2, zero, 17
;   for (i = 0; i < ni; i++)
800031a4: 93 06 00 04  	addi	a3, zero, 64
800031a8: 13 07 00 0c  	addi	a4, zero, 192
800031ac: ab 20 d6 00  	scfgw	a2, a3
800031b0: ab a0 e5 00  	scfgw	a1, a4
800031b4: 93 06 80 f7  	addi	a3, zero, -136
800031b8: 13 07 50 01  	addi	a4, zero, 21
800031bc: 93 07 00 06  	addi	a5, zero, 96
800031c0: 93 04 00 0e  	addi	s1, zero, 224
800031c4: ab 20 f7 00  	scfgw	a4, a5
800031c8: ab a0 96 00  	scfgw	a3, s1
800031cc: 93 06 f0 00  	addi	a3, zero, 15
800031d0: 93 07 00 08  	addi	a5, zero, 128
800031d4: 93 04 00 10  	addi	s1, zero, 256
800031d8: ab a0 f6 00  	scfgw	a3, a5
800031dc: ab a0 95 00  	scfgw	a1, s1
800031e0: 93 05 00 02  	addi	a1, zero, 32
800031e4: ab 20 b0 00  	scfgw	zero, a1
800031e8: 2b a0 00 34  	scfgwi	ra, 832
800031ec: 93 05 00 0b  	addi	a1, zero, 176
800031f0: 93 07 10 00  	addi	a5, zero, 1
800031f4: 93 84 07 04  	addi	s1, a5, 64
800031f8: 13 84 07 0c  	addi	s0, a5, 192
800031fc: ab 20 96 00  	scfgw	a2, s1
80003200: ab a0 85 00  	scfgw	a1, s0
80003204: 37 f6 ff ff  	lui	a2, 1048575
80003208: 93 04 86 45  	addi	s1, a2, 1112
8000320c: 13 84 07 06  	addi	s0, a5, 96
80003210: ab 20 87 00  	scfgw	a4, s0
80003214: 13 87 07 0e  	addi	a4, a5, 224
80003218: ab a0 e4 00  	scfgw	s1, a4
8000321c: 13 06 86 3a  	addi	a2, a2, 936
80003220: 13 87 07 08  	addi	a4, a5, 128
80003224: 93 84 07 10  	addi	s1, a5, 256
80003228: ab a0 e6 00  	scfgw	a3, a4
8000322c: ab 20 96 00  	scfgw	a2, s1
80003230: 13 86 07 02  	addi	a2, a5, 32
80003234: ab 20 c0 00  	scfgw	zero, a2
80003238: 2b a0 1d 34  	scfgwi	s11, 833
8000323c: 73 e6 00 7c  	csrrsi	a2, 1984, 1
80003240: 13 06 00 01  	addi	a2, zero, 16
80003244: 93 06 0e 00  	mv	a3, t3
80003248: 13 07 00 00  	mv	a4, zero
;  G[i][j] = 0.0;
8000324c: b3 87 e6 00  	add	a5, a3, a4
80003250: 23 a2 07 00  	sw	zero, 4(a5)
80003254: 23 a0 07 00  	sw	zero, 0(a5)
;    G[i][j] += E[i][k] * F[k][j];
80003258: 87 b2 07 00  	fld	ft5, 0(a5)
8000325c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003260: 27 b0 37 00  	fsd	ft3, 0(a5)
80003264: 87 b2 07 00  	fld	ft5, 0(a5)
80003268: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
8000326c: 27 b0 37 00  	fsd	ft3, 0(a5)
80003270: 87 b2 07 00  	fld	ft5, 0(a5)
80003274: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003278: 27 b0 37 00  	fsd	ft3, 0(a5)
8000327c: 87 b2 07 00  	fld	ft5, 0(a5)
80003280: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003284: 27 b0 37 00  	fsd	ft3, 0(a5)
80003288: 87 b2 07 00  	fld	ft5, 0(a5)
8000328c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003290: 27 b0 37 00  	fsd	ft3, 0(a5)
80003294: 87 b2 07 00  	fld	ft5, 0(a5)
80003298: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
8000329c: 27 b0 37 00  	fsd	ft3, 0(a5)
800032a0: 87 b2 07 00  	fld	ft5, 0(a5)
800032a4: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032a8: 27 b0 37 00  	fsd	ft3, 0(a5)
800032ac: 87 b2 07 00  	fld	ft5, 0(a5)
800032b0: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032b4: 27 b0 37 00  	fsd	ft3, 0(a5)
800032b8: 87 b2 07 00  	fld	ft5, 0(a5)
800032bc: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032c0: 27 b0 37 00  	fsd	ft3, 0(a5)
800032c4: 87 b2 07 00  	fld	ft5, 0(a5)
800032c8: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032cc: 27 b0 37 00  	fsd	ft3, 0(a5)
800032d0: 87 b2 07 00  	fld	ft5, 0(a5)
800032d4: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032d8: 27 b0 37 00  	fsd	ft3, 0(a5)
800032dc: 87 b2 07 00  	fld	ft5, 0(a5)
800032e0: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032e4: 27 b0 37 00  	fsd	ft3, 0(a5)
800032e8: 87 b2 07 00  	fld	ft5, 0(a5)
800032ec: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032f0: 27 b0 37 00  	fsd	ft3, 0(a5)
800032f4: 87 b2 07 00  	fld	ft5, 0(a5)
800032f8: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
800032fc: 27 b0 37 00  	fsd	ft3, 0(a5)
80003300: 87 b2 07 00  	fld	ft5, 0(a5)
80003304: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003308: 27 b0 37 00  	fsd	ft3, 0(a5)
8000330c: 87 b2 07 00  	fld	ft5, 0(a5)
80003310: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003314: 27 b0 37 00  	fsd	ft3, 0(a5)
80003318: 87 b2 07 00  	fld	ft5, 0(a5)
8000331c: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
80003320: 27 b0 37 00  	fsd	ft3, 0(a5)
80003324: 87 b2 07 00  	fld	ft5, 0(a5)
80003328: c3 f1 00 2a  	fmadd.d	ft3, ft1, ft0, ft5
;     for (j = 0; j < nl; j++)
8000332c: 13 07 87 00  	addi	a4, a4, 8
;    G[i][j] += E[i][k] * F[k][j];
80003330: 27 b0 37 00  	fsd	ft3, 0(a5)
;     for (j = 0; j < nl; j++)
80003334: e3 1c b7 f0  	bne	a4, a1, 0x8000324c <.LBB0_179+0x18bc>
;   for (i = 0; i < ni; i++)
80003338: 13 05 15 00  	addi	a0, a0, 1
8000333c: 93 86 06 0b  	addi	a3, a3, 176
80003340: e3 14 c5 f0  	bne	a0, a2, 0x80003248 <.LBB0_179+0x18b8>
80003344: 6f 00 00 35  	j	0x80003694 <.LBB0_179+0x1d04>
80003348: 13 85 8d 47  	addi	a0, s11, 1144
8000334c: 13 03 85 47  	addi	t1, a0, 1144
80003350: 13 85 cd 4c  	addi	a0, s11, 1228
80003354: 13 05 c5 4c  	addi	a0, a0, 1228
80003358: 93 88 00 05  	addi	a7, ra, 80
8000335c: b3 87 14 01  	add	a5, s1, a7
80003360: 63 76 65 00  	bgeu	a0, t1, 0x8000336c <.LBB0_179+0x19dc>
80003364: 13 08 00 00  	mv	a6, zero
80003368: 6f 00 80 00  	j	0x80003370 <.LBB0_179+0x19e0>
8000336c: 33 38 c5 01  	sltu	a6, a0, t3
;   for (i = 0; i < ni; i++)
80003370: 13 84 07 f1  	addi	s0, a5, -240
80003374: 93 83 0d 63  	addi	t2, s11, 1584
80003378: 13 85 8d 6d  	addi	a0, s11, 1752
8000337c: 63 06 07 00  	beqz	a4, 0x80003388 <.LBB0_179+0x19f8>
80003380: 93 02 00 00  	mv	t0, zero
80003384: 6f 00 80 00  	j	0x8000338c <.LBB0_179+0x19fc>
80003388: b3 32 66 00  	sltu	t0, a2, t1
;   for (i = 0; i < ni; i++)
8000338c: b3 b5 97 00  	sltu	a1, a5, s1
80003390: b3 36 f4 00  	sltu	a3, s0, a5
80003394: 63 72 75 02  	bgeu	a0, t2, 0x800033b8 <.LBB0_179+0x1a28>
80003398: 93 07 00 00  	mv	a5, zero
8000339c: b3 85 d5 00  	add	a1, a1, a3
800033a0: 63 12 07 02  	bnez	a4, 0x800033c4 <.LBB0_179+0x1a34>
800033a4: 33 35 76 00  	sltu	a0, a2, t2
800033a8: 93 06 10 00  	addi	a3, zero, 1
;   for (i = 0; i < ni; i++)
800033ac: 63 92 d5 02  	bne	a1, a3, 0x800033d0 <.LBB0_179+0x1a40>
800033b0: 33 34 c4 01  	sltu	s0, s0, t3
800033b4: 6f 00 00 02  	j	0x800033d4 <.LBB0_179+0x1a44>
800033b8: b3 37 c5 01  	sltu	a5, a0, t3
;   for (i = 0; i < ni; i++)
800033bc: b3 85 d5 00  	add	a1, a1, a3
800033c0: e3 02 07 fe  	beqz	a4, 0x800033a4 <.LBB0_179+0x1a14>
800033c4: 13 05 00 00  	mv	a0, zero
800033c8: 93 06 10 00  	addi	a3, zero, 1
800033cc: e3 82 d5 fe  	beq	a1, a3, 0x800033b0 <.LBB0_179+0x1a20>
800033d0: 13 04 00 00  	mv	s0, zero
800033d4: b3 64 58 00  	or	s1, a6, t0
800033d8: 33 e5 a7 00  	or	a0, a5, a0
800033dc: 63 06 07 00  	beqz	a4, 0x800033e8 <.LBB0_179+0x1a58>
800033e0: 93 05 00 00  	mv	a1, zero
800033e4: 6f 00 80 00  	j	0x800033ec <.LBB0_179+0x1a5c>
800033e8: b3 35 16 01  	sltu	a1, a2, a7
;   for (i = 0; i < ni; i++)
800033ec: b3 65 b4 00  	or	a1, s0, a1
800033f0: 33 f5 a4 00  	and	a0, s1, a0
800033f4: 33 f5 a5 00  	and	a0, a1, a0
800033f8: 93 55 43 01  	srli	a1, t1, 20
800033fc: b3 35 b0 00  	snez	a1, a1
80003400: 37 06 12 00  	lui	a2, 288
80003404: 13 06 96 f5  	addi	a2, a2, -167
80003408: b3 36 c3 00  	sltu	a3, t1, a2
8000340c: b3 f5 d5 00  	and	a1, a1, a3
80003410: 33 f5 a5 00  	and	a0, a1, a0
80003414: 93 d5 43 01  	srli	a1, t2, 20
80003418: b3 35 b0 00  	snez	a1, a1
8000341c: 33 b6 c3 00  	sltu	a2, t2, a2
80003420: b3 f5 c5 00  	and	a1, a1, a2
80003424: 33 f5 a5 00  	and	a0, a1, a0
80003428: 93 d5 48 01  	srli	a1, a7, 20
8000342c: b3 35 b0 00  	snez	a1, a1
80003430: 37 f6 11 00  	lui	a2, 287
80003434: 13 06 16 79  	addi	a2, a2, 1937
80003438: 33 b6 c8 00  	sltu	a2, a7, a2
8000343c: b3 f5 c5 00  	and	a1, a1, a2
80003440: 93 02 00 00  	mv	t0, zero
80003444: 33 f5 a5 00  	and	a0, a1, a0
80003448: 63 0a 05 24  	beqz	a0, 0x8000369c <.LBB0_179+0x1d0c>
8000344c: 13 05 80 00  	addi	a0, zero, 8
80003450: 93 05 50 01  	addi	a1, zero, 21
;   for (i = 0; i < ni; i++)
80003454: 13 06 00 04  	addi	a2, zero, 64
80003458: 93 06 00 0c  	addi	a3, zero, 192
8000345c: ab a0 c5 00  	scfgw	a1, a2
80003460: ab 20 d5 00  	scfgw	a0, a3
80003464: 13 06 80 f5  	addi	a2, zero, -168
80003468: 93 06 f0 00  	addi	a3, zero, 15
8000346c: 13 07 00 06  	addi	a4, zero, 96
80003470: ab a0 e6 00  	scfgw	a3, a4
80003474: 13 07 00 0e  	addi	a4, zero, 224
80003478: ab 20 e6 00  	scfgw	a2, a4
8000347c: 13 07 00 02  	addi	a4, zero, 32
80003480: ab 20 e0 00  	scfgw	zero, a4
80003484: 2b 20 03 32  	scfgwi	t1, 800
80003488: 13 07 10 00  	addi	a4, zero, 1
8000348c: 93 07 07 04  	addi	a5, a4, 64
80003490: ab a0 f5 00  	scfgw	a1, a5
80003494: 93 07 07 0c  	addi	a5, a4, 192
80003498: ab 20 f5 00  	scfgw	a0, a5
8000349c: 13 05 07 06  	addi	a0, a4, 96
800034a0: 93 07 07 0e  	addi	a5, a4, 224
800034a4: ab a0 a6 00  	scfgw	a3, a0
800034a8: ab 20 f6 00  	scfgw	a2, a5
800034ac: 13 05 07 02  	addi	a0, a4, 32
800034b0: ab 20 a0 00  	scfgw	zero, a0
800034b4: 2b a0 13 32  	scfgwi	t2, 801
800034b8: 13 05 20 00  	addi	a0, zero, 2
800034bc: 13 06 05 04  	addi	a2, a0, 64
800034c0: 13 07 05 0c  	addi	a4, a0, 192
800034c4: ab a0 c5 00  	scfgw	a1, a2
800034c8: ab 20 e0 00  	scfgw	zero, a4
800034cc: 13 08 00 09  	addi	a6, zero, 144
800034d0: 93 05 05 06  	addi	a1, a0, 96
800034d4: 13 06 05 0e  	addi	a2, a0, 224
800034d8: ab a0 b6 00  	scfgw	a3, a1
800034dc: ab 20 c8 00  	scfgw	a6, a2
800034e0: 13 05 05 02  	addi	a0, a0, 32
800034e4: ab 20 a0 00  	scfgw	zero, a0
800034e8: 2b a0 28 32  	scfgwi	a7, 802
800034ec: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800034f0: 13 03 00 0b  	addi	t1, zero, 176
800034f4: 93 08 00 01  	addi	a7, zero, 16
800034f8: 93 03 0e 00  	mv	t2, t3
800034fc: 93 07 00 00  	mv	a5, zero
;    G[i][j] += E[i][k] * F[k][j];
80003500: 33 85 02 03  	mul	a0, t0, a6
80003504: b3 84 a0 00  	add	s1, ra, a0
80003508: 13 8e 84 00  	addi	t3, s1, 8
8000350c: 93 8e 04 01  	addi	t4, s1, 16
80003510: 13 8f 84 01  	addi	t5, s1, 24
80003514: 93 8f 04 02  	addi	t6, s1, 32
80003518: 13 89 84 02  	addi	s2, s1, 40
8000351c: 93 89 04 03  	addi	s3, s1, 48
80003520: 13 8a 84 03  	addi	s4, s1, 56
80003524: 93 8a 04 04  	addi	s5, s1, 64
80003528: 13 8b 84 04  	addi	s6, s1, 72
8000352c: 93 8b 84 05  	addi	s7, s1, 88
80003530: 13 8c 04 06  	addi	s8, s1, 96
80003534: 93 8c 84 06  	addi	s9, s1, 104
80003538: 13 8d 04 07  	addi	s10, s1, 112
8000353c: 93 85 84 07  	addi	a1, s1, 120
80003540: 93 86 04 08  	addi	a3, s1, 128
80003544: 13 86 84 08  	addi	a2, s1, 136
;  G[i][j] = 0.0;
80003548: 33 85 f3 00  	add	a0, t2, a5
8000354c: 23 22 05 00  	sw	zero, 4(a0)
80003550: 23 20 05 00  	sw	zero, 0(a0)
;    G[i][j] += E[i][k] * F[k][j];
80003554: 87 b1 04 00  	fld	ft3, 0(s1)
80003558: 33 87 fd 00  	add	a4, s11, a5
8000355c: 07 32 07 00  	fld	ft4, 0(a4)
80003560: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80003564: 27 30 35 00  	fsd	ft3, 0(a0)
80003568: 07 32 0e 00  	fld	ft4, 0(t3)
8000356c: 87 32 07 0b  	fld	ft5, 176(a4)
80003570: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003574: 27 30 35 00  	fsd	ft3, 0(a0)
80003578: 07 b2 0e 00  	fld	ft4, 0(t4)
8000357c: 87 32 07 16  	fld	ft5, 352(a4)
80003580: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003584: 27 30 35 00  	fsd	ft3, 0(a0)
80003588: 07 32 0f 00  	fld	ft4, 0(t5)
8000358c: 87 32 07 21  	fld	ft5, 528(a4)
80003590: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003594: 27 30 35 00  	fsd	ft3, 0(a0)
80003598: 07 b2 0f 00  	fld	ft4, 0(t6)
8000359c: 87 32 07 2c  	fld	ft5, 704(a4)
800035a0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800035a4: 27 30 35 00  	fsd	ft3, 0(a0)
800035a8: 07 32 09 00  	fld	ft4, 0(s2)
800035ac: 87 32 07 37  	fld	ft5, 880(a4)
800035b0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800035b4: 27 30 35 00  	fsd	ft3, 0(a0)
800035b8: 07 b2 09 00  	fld	ft4, 0(s3)
800035bc: 87 32 07 42  	fld	ft5, 1056(a4)
800035c0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800035c4: 27 30 35 00  	fsd	ft3, 0(a0)
800035c8: 07 32 0a 00  	fld	ft4, 0(s4)
800035cc: 87 32 07 4d  	fld	ft5, 1232(a4)
800035d0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800035d4: 27 30 35 00  	fsd	ft3, 0(a0)
800035d8: 07 b2 0a 00  	fld	ft4, 0(s5)
800035dc: 87 32 07 58  	fld	ft5, 1408(a4)
800035e0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800035e4: 27 30 35 00  	fsd	ft3, 0(a0)
800035e8: 07 32 0b 00  	fld	ft4, 0(s6)
800035ec: c3 f1 40 1a  	fmadd.d	ft3, ft1, ft4, ft3
800035f0: 27 30 35 00  	fsd	ft3, 0(a0)
800035f4: 87 32 07 6e  	fld	ft5, 1760(a4)
800035f8: c3 f1 22 1a  	fmadd.d	ft3, ft5, ft2, ft3
800035fc: 27 30 35 00  	fsd	ft3, 0(a0)
80003600: 07 b2 0b 00  	fld	ft4, 0(s7)
80003604: 87 32 07 79  	fld	ft5, 1936(a4)
80003608: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000360c: 27 30 35 00  	fsd	ft3, 0(a0)
80003610: 07 32 0c 00  	fld	ft4, 0(s8)
80003614: 13 04 07 42  	addi	s0, a4, 1056
80003618: 87 32 04 42  	fld	ft5, 1056(s0)
8000361c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003620: 27 30 35 00  	fsd	ft3, 0(a0)
80003624: 07 b2 0c 00  	fld	ft4, 0(s9)
80003628: c3 71 40 1a  	fmadd.d	ft3, ft0, ft4, ft3
8000362c: 27 30 35 00  	fsd	ft3, 0(a0)
80003630: 07 32 0d 00  	fld	ft4, 0(s10)
80003634: 13 04 07 4d  	addi	s0, a4, 1232
80003638: 87 32 04 4d  	fld	ft5, 1232(s0)
8000363c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003640: 27 30 35 00  	fsd	ft3, 0(a0)
80003644: 07 b2 05 00  	fld	ft4, 0(a1)
80003648: 13 04 87 52  	addi	s0, a4, 1320
8000364c: 87 32 84 52  	fld	ft5, 1320(s0)
80003650: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003654: 27 30 35 00  	fsd	ft3, 0(a0)
80003658: 07 b2 06 00  	fld	ft4, 0(a3)
8000365c: 13 04 07 58  	addi	s0, a4, 1408
80003660: 87 32 04 58  	fld	ft5, 1408(s0)
80003664: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003668: 27 30 35 00  	fsd	ft3, 0(a0)
8000366c: 07 32 06 00  	fld	ft4, 0(a2)
80003670: 13 07 87 5d  	addi	a4, a4, 1496
80003674: 87 32 87 5d  	fld	ft5, 1496(a4)
80003678: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++)
8000367c: 93 87 87 00  	addi	a5, a5, 8
;    G[i][j] += E[i][k] * F[k][j];
80003680: 27 30 35 00  	fsd	ft3, 0(a0)
;     for (j = 0; j < nl; j++)
80003684: e3 92 67 ec  	bne	a5, t1, 0x80003548 <.LBB0_179+0x1bb8>
;   for (i = 0; i < ni; i++)
80003688: 93 82 12 00  	addi	t0, t0, 1
8000368c: 93 83 03 0b  	addi	t2, t2, 176
80003690: e3 96 12 e7  	bne	t0, a7, 0x800034fc <.LBB0_179+0x1b6c>
80003694: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003698: 6f 00 40 1c  	j	0x8000385c <.LBB0_179+0x1ecc>
8000369c: 13 03 00 0b  	addi	t1, zero, 176
800036a0: 93 08 00 01  	addi	a7, zero, 16
800036a4: 93 03 0e 00  	mv	t2, t3
800036a8: 03 28 41 03  	lw	a6, 52(sp)
800036ac: 93 07 00 00  	mv	a5, zero
;    G[i][j] += E[i][k] * F[k][j];
800036b0: 13 05 00 09  	addi	a0, zero, 144
800036b4: 33 85 a2 02  	mul	a0, t0, a0
800036b8: b3 84 a0 00  	add	s1, ra, a0
800036bc: 13 8e 84 00  	addi	t3, s1, 8
800036c0: 93 8e 04 01  	addi	t4, s1, 16
800036c4: 13 8f 84 01  	addi	t5, s1, 24
800036c8: 93 8f 04 02  	addi	t6, s1, 32
800036cc: 13 89 84 02  	addi	s2, s1, 40
800036d0: 93 89 04 03  	addi	s3, s1, 48
800036d4: 13 8a 84 03  	addi	s4, s1, 56
800036d8: 93 8a 04 04  	addi	s5, s1, 64
800036dc: 13 8b 84 04  	addi	s6, s1, 72
800036e0: 93 8b 04 05  	addi	s7, s1, 80
800036e4: 13 8c 84 05  	addi	s8, s1, 88
800036e8: 93 8c 04 06  	addi	s9, s1, 96
800036ec: 13 8d 84 06  	addi	s10, s1, 104
800036f0: 93 8d 04 07  	addi	s11, s1, 112
800036f4: 93 86 84 07  	addi	a3, s1, 120
800036f8: 13 85 04 08  	addi	a0, s1, 128
800036fc: 13 86 84 08  	addi	a2, s1, 136
;  G[i][j] = 0.0;
80003700: 33 87 f3 00  	add	a4, t2, a5
80003704: 23 22 07 00  	sw	zero, 4(a4)
80003708: 23 20 07 00  	sw	zero, 0(a4)
;    G[i][j] += E[i][k] * F[k][j];
8000370c: 87 b1 04 00  	fld	ft3, 0(s1)
80003710: 33 04 f8 00  	add	s0, a6, a5
80003714: 07 32 04 00  	fld	ft4, 0(s0)
80003718: d3 71 32 12  	fmul.d	ft3, ft4, ft3
8000371c: 27 30 37 00  	fsd	ft3, 0(a4)
80003720: 07 32 0e 00  	fld	ft4, 0(t3)
80003724: 87 32 04 0b  	fld	ft5, 176(s0)
80003728: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000372c: 27 30 37 00  	fsd	ft3, 0(a4)
80003730: 07 b2 0e 00  	fld	ft4, 0(t4)
80003734: 87 32 04 16  	fld	ft5, 352(s0)
80003738: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000373c: 27 30 37 00  	fsd	ft3, 0(a4)
80003740: 07 32 0f 00  	fld	ft4, 0(t5)
80003744: 87 32 04 21  	fld	ft5, 528(s0)
80003748: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000374c: 27 30 37 00  	fsd	ft3, 0(a4)
80003750: 07 b2 0f 00  	fld	ft4, 0(t6)
80003754: 87 32 04 2c  	fld	ft5, 704(s0)
80003758: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000375c: 27 30 37 00  	fsd	ft3, 0(a4)
80003760: 07 32 09 00  	fld	ft4, 0(s2)
80003764: 87 32 04 37  	fld	ft5, 880(s0)
80003768: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000376c: 27 30 37 00  	fsd	ft3, 0(a4)
80003770: 07 b2 09 00  	fld	ft4, 0(s3)
80003774: 87 32 04 42  	fld	ft5, 1056(s0)
80003778: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000377c: 27 30 37 00  	fsd	ft3, 0(a4)
80003780: 07 32 0a 00  	fld	ft4, 0(s4)
80003784: 87 32 04 4d  	fld	ft5, 1232(s0)
80003788: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000378c: 27 30 37 00  	fsd	ft3, 0(a4)
80003790: 07 b2 0a 00  	fld	ft4, 0(s5)
80003794: 87 32 04 58  	fld	ft5, 1408(s0)
80003798: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000379c: 27 30 37 00  	fsd	ft3, 0(a4)
800037a0: 07 32 0b 00  	fld	ft4, 0(s6)
800037a4: 87 32 04 63  	fld	ft5, 1584(s0)
800037a8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800037ac: 27 30 37 00  	fsd	ft3, 0(a4)
800037b0: 07 b2 0b 00  	fld	ft4, 0(s7)
800037b4: 87 32 04 6e  	fld	ft5, 1760(s0)
800037b8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800037bc: 27 30 37 00  	fsd	ft3, 0(a4)
800037c0: 07 32 0c 00  	fld	ft4, 0(s8)
800037c4: 87 32 04 79  	fld	ft5, 1936(s0)
800037c8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800037cc: 27 30 37 00  	fsd	ft3, 0(a4)
800037d0: 07 b2 0c 00  	fld	ft4, 0(s9)
800037d4: 93 05 04 42  	addi	a1, s0, 1056
800037d8: 87 b2 05 42  	fld	ft5, 1056(a1)
800037dc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800037e0: 27 30 37 00  	fsd	ft3, 0(a4)
800037e4: 07 32 0d 00  	fld	ft4, 0(s10)
800037e8: 93 05 84 47  	addi	a1, s0, 1144
800037ec: 87 b2 85 47  	fld	ft5, 1144(a1)
800037f0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800037f4: 27 30 37 00  	fsd	ft3, 0(a4)
800037f8: 07 b2 0d 00  	fld	ft4, 0(s11)
800037fc: 93 05 04 4d  	addi	a1, s0, 1232
80003800: 87 b2 05 4d  	fld	ft5, 1232(a1)
80003804: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003808: 27 30 37 00  	fsd	ft3, 0(a4)
8000380c: 07 b2 06 00  	fld	ft4, 0(a3)
80003810: 93 05 84 52  	addi	a1, s0, 1320
80003814: 87 b2 85 52  	fld	ft5, 1320(a1)
80003818: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000381c: 27 30 37 00  	fsd	ft3, 0(a4)
80003820: 07 32 05 00  	fld	ft4, 0(a0)
80003824: 93 05 04 58  	addi	a1, s0, 1408
80003828: 87 b2 05 58  	fld	ft5, 1408(a1)
8000382c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003830: 27 30 37 00  	fsd	ft3, 0(a4)
80003834: 07 32 06 00  	fld	ft4, 0(a2)
80003838: 93 05 84 5d  	addi	a1, s0, 1496
8000383c: 87 b2 85 5d  	fld	ft5, 1496(a1)
80003840: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
;     for (j = 0; j < nl; j++)
80003844: 93 87 87 00  	addi	a5, a5, 8
;    G[i][j] += E[i][k] * F[k][j];
80003848: 27 30 37 00  	fsd	ft3, 0(a4)
;     for (j = 0; j < nl; j++)
8000384c: e3 9a 67 ea  	bne	a5, t1, 0x80003700 <.LBB0_179+0x1d70>
;   for (i = 0; i < ni; i++)
80003850: 93 82 12 00  	addi	t0, t0, 1
80003854: 93 83 03 0b  	addi	t2, t2, 176
80003858: e3 9a 12 e5  	bne	t0, a7, 0x800036ac <.LBB0_179+0x1d1c>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
8000385c: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80003860: 83 25 01 02  	lw	a1, 32(sp)
80003864: b3 05 b5 40  	sub	a1, a0, a1

80003868 <.LBB0_180>:
80003868: 17 25 00 00  	auipc	a0, 2
8000386c: 13 05 95 58  	addi	a0, a0, 1417
80003870: 97 00 00 00  	auipc	ra, 0
80003874: e7 80 80 23  	jalr	568(ra)
80003878: 03 27 c1 02  	lw	a4, 44(sp)
;     for (int i = 0; i < n; i++){
8000387c: 13 55 47 01  	srli	a0, a4, 20
80003880: 33 35 a0 00  	snez	a0, a0
80003884: b7 f5 11 00  	lui	a1, 287
80003888: 93 85 95 50  	addi	a1, a1, 1289
8000388c: b3 35 b7 00  	sltu	a1, a4, a1
80003890: 33 75 b5 00  	and	a0, a0, a1
80003894: 63 08 05 0a  	beqz	a0, 0x80003944 <.LBB0_180+0xdc>
80003898: 13 05 80 00  	addi	a0, zero, 8
8000389c: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
800038a0: 13 06 00 04  	addi	a2, zero, 64
800038a4: 93 06 00 0c  	addi	a3, zero, 192
800038a8: ab a0 c5 00  	scfgw	a1, a2
800038ac: ab 20 d5 00  	scfgw	a0, a3
800038b0: 93 05 f0 00  	addi	a1, zero, 15
800038b4: 13 06 00 06  	addi	a2, zero, 96
800038b8: 93 06 00 0e  	addi	a3, zero, 224
800038bc: ab a0 c5 00  	scfgw	a1, a2
800038c0: ab 20 d5 00  	scfgw	a0, a3
800038c4: 13 05 00 02  	addi	a0, zero, 32
800038c8: ab 20 a0 00  	scfgw	zero, a0
800038cc: 2b 20 07 32  	scfgwi	a4, 800
800038d0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800038d4: d3 01 00 d2  	fcvt.d.w	ft3, zero
800038d8: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
800038dc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038e0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038e4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038e8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038ec: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038f0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038f4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038f8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800038fc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003900: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003904: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003908: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000390c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003910: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003914: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003918: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000391c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003920: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003924: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003928: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000392c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003930: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80003934: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80003938: e3 12 05 fa  	bnez	a0, 0x800038dc <.LBB0_180+0x74>
8000393c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003940: 6f 00 c0 0c  	j	0x80003a0c <.LBB0_181>
;     for (int i = 0; i < n; i++){
80003944: 13 05 87 05  	addi	a0, a4, 88
80003948: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000394c: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
80003950: 07 32 85 fa  	fld	ft4, -88(a0)
80003954: 87 32 05 fb  	fld	ft5, -80(a0)
80003958: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000395c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003960: 07 32 85 fb  	fld	ft4, -72(a0)
80003964: 87 32 05 fc  	fld	ft5, -64(a0)
80003968: 07 33 85 fc  	fld	ft6, -56(a0)
8000396c: 87 33 05 fd  	fld	ft7, -48(a0)
80003970: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003974: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003978: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000397c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003980: 07 32 85 fd  	fld	ft4, -40(a0)
80003984: 87 32 05 fe  	fld	ft5, -32(a0)
80003988: 07 33 85 fe  	fld	ft6, -24(a0)
8000398c: 87 33 05 ff  	fld	ft7, -16(a0)
80003990: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003994: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003998: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000399c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800039a0: 07 32 85 ff  	fld	ft4, -8(a0)
800039a4: 87 32 05 00  	fld	ft5, 0(a0)
800039a8: 07 33 85 00  	fld	ft6, 8(a0)
800039ac: 87 33 05 01  	fld	ft7, 16(a0)
800039b0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800039b4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800039b8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800039bc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800039c0: 07 32 85 01  	fld	ft4, 24(a0)
800039c4: 87 32 05 02  	fld	ft5, 32(a0)
800039c8: 07 33 85 02  	fld	ft6, 40(a0)
800039cc: 87 33 05 03  	fld	ft7, 48(a0)
800039d0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800039d4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800039d8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800039dc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800039e0: 07 32 85 03  	fld	ft4, 56(a0)
800039e4: 87 32 05 04  	fld	ft5, 64(a0)
800039e8: 07 33 85 04  	fld	ft6, 72(a0)
800039ec: 87 33 05 05  	fld	ft7, 80(a0)
800039f0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800039f4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800039f8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800039fc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80003a00: 93 85 f5 ff  	addi	a1, a1, -1
80003a04: 13 05 05 0b  	addi	a0, a0, 176
80003a08: e3 94 05 f4  	bnez	a1, 0x80003950 <.LBB0_180+0xe8>

80003a0c <.LBB0_181>:
80003a0c: 17 25 00 00  	auipc	a0, 2
80003a10: 13 05 c5 6b  	addi	a0, a0, 1724
80003a14: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
80003a18: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
80003a1c: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
80003a20: 27 38 81 04  	fsd	fs0, 80(sp)
80003a24: 03 26 01 05  	lw	a2, 80(sp)
80003a28: 83 26 41 05  	lw	a3, 84(sp)

80003a2c <.LBB0_182>:
80003a2c: 17 25 00 00  	auipc	a0, 2
80003a30: 13 05 95 3b  	addi	a0, a0, 953
80003a34: 97 00 00 00  	auipc	ra, 0
80003a38: e7 80 40 07  	jalr	116(ra)

80003a3c <.LBB0_183>:
80003a3c: 17 25 00 00  	auipc	a0, 2
80003a40: 13 05 45 69  	addi	a0, a0, 1684
80003a44: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
80003a48: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80003a4c: 87 3b 81 05  	fld	fs7, 88(sp)
80003a50: 07 3b 01 06  	fld	fs6, 96(sp)
80003a54: 87 3a 81 06  	fld	fs5, 104(sp)
80003a58: 07 3a 01 07  	fld	fs4, 112(sp)
80003a5c: 87 39 81 07  	fld	fs3, 120(sp)
80003a60: 07 39 01 08  	fld	fs2, 128(sp)
80003a64: 87 34 81 08  	fld	fs1, 136(sp)
80003a68: 07 34 01 09  	fld	fs0, 144(sp)
80003a6c: 83 2d c1 09  	lw	s11, 156(sp)
80003a70: 03 2d 01 0a  	lw	s10, 160(sp)
80003a74: 83 2c 41 0a  	lw	s9, 164(sp)
80003a78: 03 2c 81 0a  	lw	s8, 168(sp)
80003a7c: 83 2b c1 0a  	lw	s7, 172(sp)
80003a80: 03 2b 01 0b  	lw	s6, 176(sp)
80003a84: 83 2a 41 0b  	lw	s5, 180(sp)
80003a88: 03 2a 81 0b  	lw	s4, 184(sp)
80003a8c: 83 29 c1 0b  	lw	s3, 188(sp)
80003a90: 03 29 01 0c  	lw	s2, 192(sp)
80003a94: 83 24 41 0c  	lw	s1, 196(sp)
80003a98: 03 24 81 0c  	lw	s0, 200(sp)
80003a9c: 83 20 c1 0c  	lw	ra, 204(sp)
80003aa0: 13 01 01 0d  	addi	sp, sp, 208
80003aa4: 67 80 00 00  	ret

80003aa8 <printf_>:
; {
80003aa8: 13 01 01 fd  	addi	sp, sp, -48
80003aac: 23 26 11 00  	sw	ra, 12(sp)
80003ab0: 93 02 05 00  	mv	t0, a0
80003ab4: 23 26 11 03  	sw	a7, 44(sp)
80003ab8: 23 24 01 03  	sw	a6, 40(sp)
80003abc: 23 22 f1 02  	sw	a5, 36(sp)
80003ac0: 23 20 e1 02  	sw	a4, 32(sp)
80003ac4: 23 2e d1 00  	sw	a3, 28(sp)
80003ac8: 23 2c c1 00  	sw	a2, 24(sp)
80003acc: 23 2a b1 00  	sw	a1, 20(sp)
80003ad0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80003ad4: 23 24 a1 00  	sw	a0, 8(sp)

80003ad8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80003ad8: 17 15 00 00  	auipc	a0, 1
80003adc: 13 05 45 c2  	addi	a0, a0, -988
80003ae0: 93 05 71 00  	addi	a1, sp, 7
80003ae4: 13 06 f0 ff  	addi	a2, zero, -1
80003ae8: 13 07 41 01  	addi	a4, sp, 20
80003aec: 93 86 02 00  	mv	a3, t0
80003af0: 97 00 00 00  	auipc	ra, 0
80003af4: e7 80 40 01  	jalr	20(ra)
;   return ret;
80003af8: 83 20 c1 00  	lw	ra, 12(sp)
80003afc: 13 01 01 03  	addi	sp, sp, 48
80003b00: 67 80 00 00  	ret

80003b04 <_vsnprintf.llvm.17592004524093383706>:
; {
80003b04: 13 01 01 f9  	addi	sp, sp, -112
80003b08: 23 26 11 06  	sw	ra, 108(sp)
80003b0c: 23 24 81 06  	sw	s0, 104(sp)
80003b10: 23 22 91 06  	sw	s1, 100(sp)
80003b14: 23 20 21 07  	sw	s2, 96(sp)
80003b18: 23 2e 31 05  	sw	s3, 92(sp)
80003b1c: 23 2c 41 05  	sw	s4, 88(sp)
80003b20: 23 2a 51 05  	sw	s5, 84(sp)
80003b24: 23 28 61 05  	sw	s6, 80(sp)
80003b28: 23 26 71 05  	sw	s7, 76(sp)
80003b2c: 23 24 81 05  	sw	s8, 72(sp)
80003b30: 23 22 91 05  	sw	s9, 68(sp)
80003b34: 23 20 a1 05  	sw	s10, 64(sp)
80003b38: 23 2e b1 03  	sw	s11, 60(sp)
80003b3c: 93 09 07 00  	mv	s3, a4
80003b40: 13 84 06 00  	mv	s0, a3
80003b44: 93 0a 06 00  	mv	s5, a2
80003b48: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80003b4c: 63 86 05 00  	beqz	a1, 0x80003b58 <.LBB1_183>
80003b50: 13 09 05 00  	mv	s2, a0
80003b54: 6f 00 c0 00  	j	0x80003b60 <.LBB1_183+0x8>

80003b58 <.LBB1_183>:
80003b58: 17 19 00 00  	auipc	s2, 1
80003b5c: 13 09 09 c5  	addi	s2, s2, -944
80003b60: 13 0c 00 00  	mv	s8, zero
80003b64: 13 0b 50 02  	addi	s6, zero, 37
80003b68: 93 0d 00 01  	addi	s11, zero, 16
80003b6c: 93 0b e0 02  	addi	s7, zero, 46
80003b70: 37 15 00 00  	lui	a0, 1
80003b74: 13 05 05 80  	addi	a0, a0, -2048
80003b78: 23 2c a1 00  	sw	a0, 24(sp)
80003b7c: 37 05 01 00  	lui	a0, 16
80003b80: 13 05 f5 ff  	addi	a0, a0, -1
80003b84: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003b88: 13 0d 24 00  	addi	s10, s0, 2
80003b8c: 93 0c 0c 00  	mv	s9, s8
80003b90: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003b94: 03 45 04 00  	lbu	a0, 0(s0)
80003b98: e3 04 05 30  	beqz	a0, 0x800046a0 <.LBB1_124+0x3b0>
80003b9c: 63 08 65 03  	beq	a0, s6, 0x80003bcc <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80003ba0: 93 84 1c 00  	addi	s1, s9, 1
80003ba4: 93 05 0a 00  	mv	a1, s4
80003ba8: 13 86 0c 00  	mv	a2, s9
80003bac: 93 86 0a 00  	mv	a3, s5
80003bb0: e7 00 09 00  	jalr	s2
;       format++;
80003bb4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80003bb8: 13 0d 1d 00  	addi	s10, s10, 1
80003bbc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80003bc0: 03 45 04 00  	lbu	a0, 0(s0)
80003bc4: e3 1c 05 fc  	bnez	a0, 0x80003b9c <.LBB1_183+0x44>
80003bc8: 6f 00 90 2d  	j	0x800046a0 <.LBB1_124+0x3b0>
;     flags = 0U;
80003bcc: 13 04 00 00  	mv	s0, zero
80003bd0: 6f 00 00 01  	j	0x80003be0 <.LBB1_9+0x8>

80003bd4 <.LBB1_8>:
80003bd4: 93 05 00 01  	addi	a1, zero, 16

80003bd8 <.LBB1_9>:
80003bd8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80003bdc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80003be0: 03 45 fd ff  	lbu	a0, -1(s10)
80003be4: 93 05 05 fe  	addi	a1, a0, -32
80003be8: 63 ec bd 02  	bltu	s11, a1, 0x80003c20 <.LBB1_15>
80003bec: 93 95 25 00  	slli	a1, a1, 2

80003bf0 <.LBB1_184>:
80003bf0: 17 26 00 00  	auipc	a2, 2
80003bf4: 13 06 46 21  	addi	a2, a2, 532
80003bf8: b3 85 c5 00  	add	a1, a1, a2
80003bfc: 03 a6 05 00  	lw	a2, 0(a1)
80003c00: 93 05 10 00  	addi	a1, zero, 1
80003c04: 67 00 06 00  	jr	a2

80003c08 <.LBB1_12>:
80003c08: 93 05 80 00  	addi	a1, zero, 8
80003c0c: 6f f0 df fc  	j	0x80003bd8 <.LBB1_9>

80003c10 <.LBB1_13>:
80003c10: 93 05 40 00  	addi	a1, zero, 4
80003c14: 6f f0 5f fc  	j	0x80003bd8 <.LBB1_9>

80003c18 <.LBB1_14>:
80003c18: 93 05 20 00  	addi	a1, zero, 2
80003c1c: 6f f0 df fb  	j	0x80003bd8 <.LBB1_9>

80003c20 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003c20: 93 05 05 fd  	addi	a1, a0, -48
80003c24: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003c28: 93 05 fd ff  	addi	a1, s10, -1
80003c2c: 93 06 90 00  	addi	a3, zero, 9
80003c30: 63 ee c6 06  	bltu	a3, a2, 0x80003cac <.LBB1_15+0x8c>
80003c34: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003c38: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003c3c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003c40: b3 06 8b 03  	mul	a3, s6, s8
80003c44: 93 85 15 00  	addi	a1, a1, 1
80003c48: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003c4c: 93 06 05 fd  	addi	a3, a0, -48
80003c50: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003c54: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80003c58: e3 e0 86 ff  	bltu	a3, s8, 0x80003c38 <.LBB1_15+0x18>
80003c5c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003c60: 63 16 75 0b  	bne	a0, s7, 0x80003d0c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003c64: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80003c68: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80003c6c: 93 05 05 fd  	addi	a1, a0, -48
80003c70: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003c74: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003c78: 93 06 90 00  	addi	a3, zero, 9
80003c7c: 63 e0 c6 06  	bltu	a3, a2, 0x80003cdc <.LBB1_15+0xbc>
80003c80: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003c84: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003c88: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003c8c: b3 86 8b 03  	mul	a3, s7, s8
80003c90: 93 85 15 00  	addi	a1, a1, 1
80003c94: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003c98: 93 06 05 fd  	addi	a3, a0, -48
80003c9c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003ca0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80003ca4: e3 e0 86 ff  	bltu	a3, s8, 0x80003c84 <.LBB1_15+0x64>
80003ca8: 6f 00 00 07  	j	0x80003d18 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80003cac: 13 06 a0 02  	addi	a2, zero, 42
80003cb0: 63 18 c5 04  	bne	a0, a2, 0x80003d00 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80003cb4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003cb8: 63 d4 05 00  	bgez	a1, 0x80003cc0 <.LBB1_15+0xa0>
80003cbc: 13 64 24 00  	ori	s0, s0, 2
80003cc0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80003cc4: 03 45 0d 00  	lbu	a0, 0(s10)
80003cc8: 13 d6 f5 41  	srai	a2, a1, 31
80003ccc: b3 85 c5 00  	add	a1, a1, a2
80003cd0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80003cd4: e3 08 75 f9  	beq	a0, s7, 0x80003c64 <.LBB1_15+0x44>
80003cd8: 6f 00 40 03  	j	0x80003d0c <.LBB1_15+0xec>
;       else if (*format == '*') {
80003cdc: 13 06 a0 02  	addi	a2, zero, 42
80003ce0: 63 1a c5 02  	bne	a0, a2, 0x80003d14 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80003ce4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003ce8: 63 44 70 01  	bgtz	s7, 0x80003cf0 <.LBB1_15+0xd0>
80003cec: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003cf0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80003cf4: 13 0d 2d 00  	addi	s10, s10, 2
80003cf8: 93 89 49 00  	addi	s3, s3, 4
80003cfc: 6f 00 00 02  	j	0x80003d1c <.LBB1_15+0xfc>
80003d00: 13 0b 00 00  	mv	s6, zero
80003d04: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003d08: e3 0e 75 f5  	beq	a0, s7, 0x80003c64 <.LBB1_15+0x44>
80003d0c: 93 0b 00 00  	mv	s7, zero
80003d10: 6f 00 c0 00  	j	0x80003d1c <.LBB1_15+0xfc>
80003d14: 93 0b 00 00  	mv	s7, zero
80003d18: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80003d1c: 93 05 85 f9  	addi	a1, a0, -104
80003d20: 13 d6 15 00  	srli	a2, a1, 1
80003d24: 93 95 f5 01  	slli	a1, a1, 31
80003d28: b3 e5 c5 00  	or	a1, a1, a2
80003d2c: 13 06 90 00  	addi	a2, zero, 9
80003d30: 63 62 b6 06  	bltu	a2, a1, 0x80003d94 <.LBB1_42>
80003d34: 93 95 25 00  	slli	a1, a1, 2

80003d38 <.LBB1_185>:
80003d38: 17 26 00 00  	auipc	a2, 2
80003d3c: 13 06 06 11  	addi	a2, a2, 272
80003d40: b3 85 c5 00  	add	a1, a1, a2
80003d44: 83 a6 05 00  	lw	a3, 0(a1)
80003d48: 93 05 10 00  	addi	a1, zero, 1
80003d4c: 13 06 00 10  	addi	a2, zero, 256
80003d50: 67 80 06 00  	jr	a3

80003d54 <.LBB1_36>:
;         if (*format == 'h') {
80003d54: 03 45 1d 00  	lbu	a0, 1(s10)
80003d58: 93 05 80 06  	addi	a1, zero, 104
80003d5c: 63 12 b5 12  	bne	a0, a1, 0x80003e80 <.LBB1_53+0x48>
80003d60: 93 05 20 00  	addi	a1, zero, 2
80003d64: 13 06 00 0c  	addi	a2, zero, 192
80003d68: 6f 00 00 02  	j	0x80003d88 <.LBB1_41>

80003d6c <.LBB1_38>:
80003d6c: 13 06 00 20  	addi	a2, zero, 512
80003d70: 6f 00 80 01  	j	0x80003d88 <.LBB1_41>

80003d74 <.LBB1_39>:
;         if (*format == 'l') {
80003d74: 03 45 1d 00  	lbu	a0, 1(s10)
80003d78: 93 05 c0 06  	addi	a1, zero, 108
80003d7c: 63 18 b5 10  	bne	a0, a1, 0x80003e8c <.LBB1_53+0x54>
80003d80: 93 05 20 00  	addi	a1, zero, 2
80003d84: 13 06 00 30  	addi	a2, zero, 768

80003d88 <.LBB1_41>:
80003d88: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80003d8c: 03 45 0d 00  	lbu	a0, 0(s10)
80003d90: 33 64 c4 00  	or	s0, s0, a2

80003d94 <.LBB1_42>:
;     switch (*format) {
80003d94: 93 05 b5 fd  	addi	a1, a0, -37
80003d98: 13 06 30 05  	addi	a2, zero, 83
80003d9c: 63 64 b6 10  	bltu	a2, a1, 0x80003ea4 <.LBB1_59>
80003da0: 93 95 25 00  	slli	a1, a1, 2

80003da4 <.LBB1_186>:
80003da4: 17 26 00 00  	auipc	a2, 2
80003da8: 13 06 c6 0c  	addi	a2, a2, 204
80003dac: b3 85 c5 00  	add	a1, a1, a2
80003db0: 03 a6 05 00  	lw	a2, 0(a1)
80003db4: 93 05 80 00  	addi	a1, zero, 8
80003db8: 13 0c 00 01  	addi	s8, zero, 16
80003dbc: 67 00 06 00  	jr	a2

80003dc0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003dc0: 13 74 f4 fe  	andi	s0, s0, -17
80003dc4: 13 0c a0 00  	addi	s8, zero, 10

80003dc8 <.LBB1_45>:
;         if (*format == 'X') {
80003dc8: 93 05 80 05  	addi	a1, zero, 88
80003dcc: 63 14 b5 00  	bne	a0, a1, 0x80003dd4 <.LBB1_45+0xc>
80003dd0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003dd4: 93 05 40 06  	addi	a1, zero, 100
80003dd8: 63 08 b5 0e  	beq	a0, a1, 0x80003ec8 <.LBB1_62+0x8>
80003ddc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003de0: 13 06 90 06  	addi	a2, zero, 105
80003de4: 63 02 c5 0e  	beq	a0, a2, 0x80003ec8 <.LBB1_62+0x8>
80003de8: 6f 00 80 0d  	j	0x80003ec0 <.LBB1_62>

80003dec <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80003dec: 93 05 60 04  	addi	a1, zero, 70
80003df0: 63 14 b5 00  	bne	a0, a1, 0x80003df8 <.LBB1_49+0xc>
80003df4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003df8: 13 85 79 00  	addi	a0, s3, 7
80003dfc: 13 75 85 ff  	andi	a0, a0, -8
80003e00: 07 35 05 00  	fld	fa0, 0(a0)
80003e04: 93 09 85 00  	addi	s3, a0, 8
80003e08: 13 05 09 00  	mv	a0, s2
80003e0c: 93 05 0a 00  	mv	a1, s4
80003e10: 13 86 0c 00  	mv	a2, s9
80003e14: 93 86 0a 00  	mv	a3, s5
80003e18: 13 87 0b 00  	mv	a4, s7
80003e1c: 93 07 0b 00  	mv	a5, s6
80003e20: 13 08 04 00  	mv	a6, s0
80003e24: 97 10 00 00  	auipc	ra, 1
80003e28: e7 80 80 98  	jalr	-1656(ra)
80003e2c: 6f 00 00 7c  	j	0x800045ec <.LBB1_124+0x2fc>

80003e30 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003e30: 83 25 81 01  	lw	a1, 24(sp)
80003e34: 33 64 b4 00  	or	s0, s0, a1

80003e38 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003e38: 13 65 25 00  	ori	a0, a0, 2
80003e3c: 93 05 70 04  	addi	a1, zero, 71
80003e40: 63 14 b5 00  	bne	a0, a1, 0x80003e48 <.LBB1_53+0x10>
80003e44: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003e48: 13 85 79 00  	addi	a0, s3, 7
80003e4c: 13 75 85 ff  	andi	a0, a0, -8
80003e50: 07 35 05 00  	fld	fa0, 0(a0)
80003e54: 93 09 85 00  	addi	s3, a0, 8
80003e58: 13 05 09 00  	mv	a0, s2
80003e5c: 93 05 0a 00  	mv	a1, s4
80003e60: 13 86 0c 00  	mv	a2, s9
80003e64: 93 86 0a 00  	mv	a3, s5
80003e68: 13 87 0b 00  	mv	a4, s7
80003e6c: 93 07 0b 00  	mv	a5, s6
80003e70: 13 08 04 00  	mv	a6, s0
80003e74: 97 10 00 00  	auipc	ra, 1
80003e78: e7 80 80 01  	jalr	24(ra)
80003e7c: 6f 00 00 77  	j	0x800045ec <.LBB1_124+0x2fc>
80003e80: 13 64 04 08  	ori	s0, s0, 128
80003e84: 13 0d 1d 00  	addi	s10, s10, 1
80003e88: 6f f0 df f0  	j	0x80003d94 <.LBB1_42>
80003e8c: 13 64 04 10  	ori	s0, s0, 256
80003e90: 13 0d 1d 00  	addi	s10, s10, 1
80003e94: 6f f0 1f f0  	j	0x80003d94 <.LBB1_42>

80003e98 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003e98: 13 8c 1c 00  	addi	s8, s9, 1
80003e9c: 13 05 50 02  	addi	a0, zero, 37
80003ea0: 6f 00 80 00  	j	0x80003ea8 <.LBB1_59+0x4>

80003ea4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003ea4: 13 8c 1c 00  	addi	s8, s9, 1
80003ea8: 93 05 0a 00  	mv	a1, s4
80003eac: 13 86 0c 00  	mv	a2, s9
80003eb0: 93 86 0a 00  	mv	a3, s5
80003eb4: e7 00 09 00  	jalr	s2
80003eb8: 6f 00 80 73  	j	0x800045f0 <.LBB1_124+0x300>

80003ebc <.LBB1_61>:
80003ebc: 93 05 20 00  	addi	a1, zero, 2

80003ec0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003ec0: 13 74 34 ff  	andi	s0, s0, -13
80003ec4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003ec8: 93 75 04 40  	andi	a1, s0, 1024
80003ecc: 63 84 05 00  	beqz	a1, 0x80003ed4 <.LBB1_62+0x14>
80003ed0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003ed4: 93 05 90 06  	addi	a1, zero, 105
80003ed8: 63 06 b5 00  	beq	a0, a1, 0x80003ee4 <.LBB1_62+0x24>
80003edc: 93 05 40 06  	addi	a1, zero, 100
80003ee0: 63 1c b5 12  	bne	a0, a1, 0x80004018 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003ee4: 13 75 04 20  	andi	a0, s0, 512
80003ee8: 63 16 05 02  	bnez	a0, 0x80003f14 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80003eec: 13 75 04 10  	andi	a0, s0, 256
80003ef0: 63 1c 05 14  	bnez	a0, 0x80004048 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003ef4: 13 75 04 04  	andi	a0, s0, 64
80003ef8: 63 18 05 4e  	bnez	a0, 0x800043e8 <.LBB1_124+0xf8>
80003efc: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003f00: 93 75 04 08  	andi	a1, s0, 128
80003f04: 63 84 05 4e  	beqz	a1, 0x800043ec <.LBB1_124+0xfc>
80003f08: 13 15 08 01  	slli	a0, a6, 16
80003f0c: 13 58 05 41  	srai	a6, a0, 16
80003f10: 6f 00 c0 4d  	j	0x800043ec <.LBB1_124+0xfc>
80003f14: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003f18: 13 85 79 00  	addi	a0, s3, 7
80003f1c: 13 75 85 ff  	andi	a0, a0, -8
80003f20: 83 29 05 00  	lw	s3, 0(a0)
80003f24: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003f28: 13 65 45 00  	ori	a0, a0, 4
80003f2c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003f30: 23 24 a1 00  	sw	a0, 8(sp)
80003f34: 33 e5 a9 00  	or	a0, s3, a0
80003f38: 63 14 05 00  	bnez	a0, 0x80003f40 <.LBB1_62+0x80>
80003f3c: 13 74 f4 fe  	andi	s0, s0, -17
80003f40: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f44: 93 75 04 40  	andi	a1, s0, 1024
80003f48: 93 d5 a5 00  	srli	a1, a1, 10
80003f4c: 33 75 b5 00  	and	a0, a0, a1
80003f50: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f54: 63 14 05 0a  	bnez	a0, 0x80003ffc <.LBB1_62+0x13c>
80003f58: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003f5c: 63 da 04 00  	bgez	s1, 0x80003f70 <.LBB1_62+0xb0>
80003f60: 33 35 30 01  	snez	a0, s3
80003f64: b3 09 30 41  	neg	s3, s3
80003f68: 33 85 a4 00  	add	a0, s1, a0
80003f6c: b3 04 a0 40  	neg	s1, a0
80003f70: 13 09 00 00  	mv	s2, zero
80003f74: 13 75 04 02  	andi	a0, s0, 32
80003f78: 13 45 15 06  	xori	a0, a0, 97
80003f7c: 13 05 65 0f  	addi	a0, a0, 246
80003f80: 23 2a a1 00  	sw	a0, 20(sp)
80003f84: 6f 00 40 02  	j	0x80003fa8 <.LBB1_62+0xe8>
80003f88: 13 06 10 00  	addi	a2, zero, 1
80003f8c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f90: 93 36 f9 01  	sltiu	a3, s2, 31
80003f94: 33 f6 c6 00  	and	a2, a3, a2
80003f98: 13 89 07 00  	mv	s2, a5
80003f9c: 93 09 05 00  	mv	s3, a0
80003fa0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003fa4: 63 0c 06 04  	beqz	a2, 0x80003ffc <.LBB1_62+0x13c>
;       value /= base;
80003fa8: 13 85 09 00  	mv	a0, s3
80003fac: 93 85 04 00  	mv	a1, s1
80003fb0: 13 06 0c 00  	mv	a2, s8
80003fb4: 93 06 00 00  	mv	a3, zero
80003fb8: 97 c0 ff ff  	auipc	ra, 1048572
80003fbc: e7 80 80 04  	jalr	72(ra)
80003fc0: 33 06 85 03  	mul	a2, a0, s8
80003fc4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003fc8: 13 77 e6 0f  	andi	a4, a2, 254
80003fcc: 93 06 00 03  	addi	a3, zero, 48
80003fd0: 93 07 a0 00  	addi	a5, zero, 10
80003fd4: 63 64 f7 00  	bltu	a4, a5, 0x80003fdc <.LBB1_62+0x11c>
80003fd8: 83 26 41 01  	lw	a3, 20(sp)
80003fdc: 33 86 c6 00  	add	a2, a3, a2
80003fe0: 93 06 c1 01  	addi	a3, sp, 28
80003fe4: b3 86 26 01  	add	a3, a3, s2
80003fe8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003fec: e3 9e 04 f8  	bnez	s1, 0x80003f88 <.LBB1_62+0xc8>
80003ff0: 33 b6 89 01  	sltu	a2, s3, s8
80003ff4: 13 46 16 00  	xori	a2, a2, 1
80003ff8: 6f f0 5f f9  	j	0x80003f8c <.LBB1_62+0xcc>
80003ffc: 03 25 41 00  	lw	a0, 4(sp)
80004000: 93 09 85 00  	addi	s3, a0, 8
80004004: 03 25 81 00  	lw	a0, 8(sp)
80004008: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000400c: 13 07 c1 01  	addi	a4, sp, 28
80004010: 03 29 c1 00  	lw	s2, 12(sp)
80004014: 6f 00 80 47  	j	0x8000448c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80004018: 13 75 04 20  	andi	a0, s0, 512
8000401c: 63 12 05 0c  	bnez	a0, 0x800040e0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80004020: 13 75 04 10  	andi	a0, s0, 256
80004024: 63 1e 05 46  	bnez	a0, 0x800044a0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80004028: 13 75 04 04  	andi	a0, s0, 64
8000402c: 63 10 05 50  	bnez	a0, 0x8000452c <.LBB1_124+0x23c>
80004030: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80004034: 93 75 04 08  	andi	a1, s0, 128
80004038: 63 8c 05 4e  	beqz	a1, 0x80004530 <.LBB1_124+0x240>
8000403c: 83 25 01 01  	lw	a1, 16(sp)
80004040: 33 75 b5 00  	and	a0, a0, a1
80004044: 6f 00 c0 4e  	j	0x80004530 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80004048: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000404c: 63 14 08 00  	bnez	a6, 0x80004054 <.LBB1_62+0x194>
80004050: 13 74 f4 fe  	andi	s0, s0, -17
80004054: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80004058: 13 76 04 40  	andi	a2, s0, 1024
8000405c: 13 56 a6 00  	srli	a2, a2, 10
80004060: b3 f5 c5 00  	and	a1, a1, a2
80004064: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80004068: 63 9c 05 40  	bnez	a1, 0x80004480 <.LBB1_124+0x190>
8000406c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80004070: 13 56 f8 41  	srai	a2, a6, 31
80004074: b3 06 c8 00  	add	a3, a6, a2
80004078: b3 c6 c6 00  	xor	a3, a3, a2
8000407c: 13 76 04 02  	andi	a2, s0, 32
80004080: 13 46 16 06  	xori	a2, a2, 97
80004084: 93 08 66 0f  	addi	a7, a2, 246
80004088: 6f 00 40 03  	j	0x800040bc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000408c: 33 05 f6 00  	add	a0, a2, a5
80004090: 93 87 15 00  	addi	a5, a1, 1
80004094: 13 06 c1 01  	addi	a2, sp, 28
80004098: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000409c: b3 b6 86 01  	sltu	a3, a3, s8
800040a0: 93 c6 16 00  	xori	a3, a3, 1
800040a4: 93 b5 f5 01  	sltiu	a1, a1, 31
800040a8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800040ac: 23 00 a6 00  	sb	a0, 0(a2)
800040b0: 93 85 07 00  	mv	a1, a5
800040b4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800040b8: 63 84 04 3c  	beqz	s1, 0x80004480 <.LBB1_124+0x190>
;       value /= base;
800040bc: 33 d7 86 03  	divu	a4, a3, s8
800040c0: 33 06 87 03  	mul	a2, a4, s8
800040c4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800040c8: 13 f5 e7 0f  	andi	a0, a5, 254
800040cc: 13 06 00 03  	addi	a2, zero, 48
800040d0: 93 04 a0 00  	addi	s1, zero, 10
800040d4: e3 6c 95 fa  	bltu	a0, s1, 0x8000408c <.LBB1_62+0x1cc>
800040d8: 13 86 08 00  	mv	a2, a7
800040dc: 6f f0 1f fb  	j	0x8000408c <.LBB1_62+0x1cc>
800040e0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800040e4: 13 85 79 00  	addi	a0, s3, 7
800040e8: 93 75 85 ff  	andi	a1, a0, -8
800040ec: 03 a9 05 00  	lw	s2, 0(a1)
800040f0: 13 e5 45 00  	ori	a0, a1, 4
800040f4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800040f8: 33 65 39 01  	or	a0, s2, s3
800040fc: 23 24 b1 00  	sw	a1, 8(sp)
80004100: 63 14 05 00  	bnez	a0, 0x80004108 <.LBB1_62+0x248>
80004104: 13 74 f4 fe  	andi	s0, s0, -17
80004108: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000410c: 93 75 04 40  	andi	a1, s0, 1024
80004110: 93 d5 a5 00  	srli	a1, a1, 10
80004114: 33 75 b5 00  	and	a0, a0, a1
80004118: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000411c: 63 18 05 08  	bnez	a0, 0x800041ac <.LBB1_62+0x2ec>
80004120: 93 04 00 00  	mv	s1, zero
80004124: 13 75 04 02  	andi	a0, s0, 32
80004128: 13 45 15 06  	xori	a0, a0, 97
8000412c: 13 05 65 0f  	addi	a0, a0, 246
80004130: 23 2a a1 00  	sw	a0, 20(sp)
80004134: 6f 00 40 02  	j	0x80004158 <.LBB1_62+0x298>
80004138: 13 06 10 00  	addi	a2, zero, 1
8000413c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004140: 93 b6 f4 01  	sltiu	a3, s1, 31
80004144: 33 f6 c6 00  	and	a2, a3, a2
80004148: 93 84 07 00  	mv	s1, a5
8000414c: 13 09 05 00  	mv	s2, a0
80004150: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004154: 63 0c 06 04  	beqz	a2, 0x800041ac <.LBB1_62+0x2ec>
;       value /= base;
80004158: 13 05 09 00  	mv	a0, s2
8000415c: 93 85 09 00  	mv	a1, s3
80004160: 13 06 0c 00  	mv	a2, s8
80004164: 93 06 00 00  	mv	a3, zero
80004168: 97 c0 ff ff  	auipc	ra, 1048572
8000416c: e7 80 80 e9  	jalr	-360(ra)
80004170: 33 06 85 03  	mul	a2, a0, s8
80004174: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004178: 13 77 e6 0f  	andi	a4, a2, 254
8000417c: 93 06 00 03  	addi	a3, zero, 48
80004180: 93 07 a0 00  	addi	a5, zero, 10
80004184: 63 64 f7 00  	bltu	a4, a5, 0x8000418c <.LBB1_62+0x2cc>
80004188: 83 26 41 01  	lw	a3, 20(sp)
8000418c: 33 86 c6 00  	add	a2, a3, a2
80004190: 93 06 c1 01  	addi	a3, sp, 28
80004194: b3 86 96 00  	add	a3, a3, s1
80004198: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000419c: e3 9e 09 f8  	bnez	s3, 0x80004138 <.LBB1_62+0x278>
800041a0: 33 36 89 01  	sltu	a2, s2, s8
800041a4: 13 46 16 00  	xori	a2, a2, 1
800041a8: 6f f0 5f f9  	j	0x8000413c <.LBB1_62+0x27c>
800041ac: 03 25 81 00  	lw	a0, 8(sp)
800041b0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800041b4: 13 07 c1 01  	addi	a4, sp, 28
800041b8: 03 29 c1 00  	lw	s2, 12(sp)
800041bc: 6f 00 40 40  	j	0x800045c0 <.LBB1_124+0x2d0>

800041c0 <.LBB1_108>:
800041c0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800041c4: 13 79 24 00  	andi	s2, s0, 2
800041c8: 93 04 10 00  	addi	s1, zero, 1
800041cc: 63 1e 09 02  	bnez	s2, 0x80004208 <.LBB1_108+0x48>
800041d0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800041d4: 63 6a 9b 02  	bltu	s6, s1, 0x80004208 <.LBB1_108+0x48>
800041d8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800041dc: 13 0c fb ff  	addi	s8, s6, -1
800041e0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800041e4: 33 86 8c 00  	add	a2, s9, s0
800041e8: 13 05 00 02  	addi	a0, zero, 32
800041ec: 93 05 0a 00  	mv	a1, s4
800041f0: 93 86 0a 00  	mv	a3, s5
800041f4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800041f8: 13 04 14 00  	addi	s0, s0, 1
800041fc: e3 14 8c fe  	bne	s8, s0, 0x800041e4 <.LBB1_108+0x24>
80004200: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80004204: b3 8c 8c 00  	add	s9, s9, s0
80004208: 03 c5 09 00  	lbu	a0, 0(s3)
8000420c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80004210: 93 89 49 00  	addi	s3, s3, 4
80004214: 13 8c 1c 00  	addi	s8, s9, 1
80004218: 93 05 0a 00  	mv	a1, s4
8000421c: 13 86 0c 00  	mv	a2, s9
80004220: 93 86 0a 00  	mv	a3, s5
80004224: 13 89 0b 00  	mv	s2, s7
80004228: e7 80 0b 00  	jalr	s7
8000422c: 33 b5 64 01  	sltu	a0, s1, s6
80004230: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80004234: 33 65 a4 00  	or	a0, s0, a0
80004238: 63 1c 05 3a  	bnez	a0, 0x800045f0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000423c: 33 04 9b 40  	sub	s0, s6, s1
80004240: 93 0b e0 02  	addi	s7, zero, 46
80004244: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80004248: 13 0c 1c 00  	addi	s8, s8, 1
8000424c: 13 05 00 02  	addi	a0, zero, 32
80004250: 93 05 0a 00  	mv	a1, s4
80004254: 93 86 0a 00  	mv	a3, s5
80004258: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000425c: 13 04 f4 ff  	addi	s0, s0, -1
80004260: e3 12 04 fe  	bnez	s0, 0x80004244 <.LBB1_108+0x84>
80004264: 13 0b 50 02  	addi	s6, zero, 37
80004268: 13 04 1d 00  	addi	s0, s10, 1
8000426c: 6f f0 df 91  	j	0x80003b88 <.LBB1_183+0x30>

80004270 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80004270: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80004274: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80004278: 63 14 05 00  	bnez	a0, 0x80004280 <.LBB1_117+0x10>
8000427c: 93 fe fe fe  	andi	t4, t4, -17
80004280: 93 04 a0 00  	addi	s1, zero, 10
80004284: 13 04 f0 00  	addi	s0, zero, 15
80004288: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000428c: 13 f6 0e 40  	andi	a2, t4, 1024
80004290: 13 56 a6 00  	srli	a2, a2, 10
80004294: b3 f5 c5 00  	and	a1, a1, a2
80004298: 93 07 00 00  	mv	a5, zero
8000429c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800042a0: 63 98 05 10  	bnez	a1, 0x800043b0 <.LBB1_124+0xc0>
800042a4: 93 05 00 00  	mv	a1, zero
800042a8: 6f 00 40 03  	j	0x800042dc <.LBB1_117+0x6c>
800042ac: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800042b0: 33 06 d6 00  	add	a2, a2, a3
800042b4: 93 87 15 00  	addi	a5, a1, 1
800042b8: 93 06 c1 01  	addi	a3, sp, 28
800042bc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800042c0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800042c4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800042c8: 93 b5 f5 01  	sltiu	a1, a1, 31
800042cc: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800042d0: 23 80 c6 00  	sb	a2, 0(a3)
800042d4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800042d8: 63 0c 07 0c  	beqz	a4, 0x800043b0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800042dc: 93 76 e5 00  	andi	a3, a0, 14
800042e0: 13 06 00 03  	addi	a2, zero, 48
800042e4: e3 e4 96 fc  	bltu	a3, s1, 0x800042ac <.LBB1_117+0x3c>
800042e8: 13 06 70 03  	addi	a2, zero, 55
800042ec: 6f f0 1f fc  	j	0x800042ac <.LBB1_117+0x3c>

800042f0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800042f0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800042f4: 03 c5 07 00  	lbu	a0, 0(a5)
800042f8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800042fc: 63 0c 05 02  	beqz	a0, 0x80004334 <.LBB1_124+0x44>
80004300: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80004304: 63 84 0b 00  	beqz	s7, 0x8000430c <.LBB1_124+0x1c>
80004308: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
8000430c: 93 85 f5 ff  	addi	a1, a1, -1
80004310: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80004314: 03 c7 16 00  	lbu	a4, 1(a3)
80004318: 13 86 16 00  	addi	a2, a3, 1
8000431c: b3 36 e0 00  	snez	a3, a4
80004320: 33 37 b0 00  	snez	a4, a1
80004324: 33 77 d7 00  	and	a4, a4, a3
80004328: 93 85 f5 ff  	addi	a1, a1, -1
8000432c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80004330: e3 12 07 fe  	bnez	a4, 0x80004314 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80004334: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80004338: 93 75 04 40  	andi	a1, s0, 1024
8000433c: 93 b4 15 00  	seqz	s1, a1
80004340: 23 2a c1 00  	sw	a2, 20(sp)
80004344: b3 35 76 01  	sltu	a1, a2, s7
80004348: b3 e5 b4 00  	or	a1, s1, a1
8000434c: 63 94 05 00  	bnez	a1, 0x80004354 <.LBB1_124+0x64>
80004350: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80004354: 93 75 24 00  	andi	a1, s0, 2
80004358: 23 26 b1 00  	sw	a1, 12(sp)
8000435c: 63 96 05 2a  	bnez	a1, 0x80004608 <.LBB1_124+0x318>
80004360: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80004364: 63 fe 65 29  	bgeu	a1, s6, 0x80004600 <.LBB1_124+0x310>
80004368: 23 24 f1 00  	sw	a5, 8(sp)
8000436c: 13 04 00 00  	mv	s0, zero
80004370: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80004374: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80004378: 33 86 8c 00  	add	a2, s9, s0
8000437c: 13 05 00 02  	addi	a0, zero, 32
80004380: 93 05 0a 00  	mv	a1, s4
80004384: 93 86 0a 00  	mv	a3, s5
80004388: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000438c: 13 04 14 00  	addi	s0, s0, 1
80004390: e3 14 89 fe  	bne	s2, s0, 0x80004378 <.LBB1_124+0x88>
80004394: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004398: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000439c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800043a0: 23 2a b1 00  	sw	a1, 20(sp)
800043a4: b3 8c 8c 00  	add	s9, s9, s0
800043a8: 13 09 0c 00  	mv	s2, s8
800043ac: 6f 00 c0 25  	j	0x80004608 <.LBB1_124+0x318>
800043b0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800043b4: 13 07 c1 01  	addi	a4, sp, 28
800043b8: 93 08 00 01  	addi	a7, zero, 16
800043bc: 13 0e 80 00  	addi	t3, zero, 8
800043c0: 13 05 09 00  	mv	a0, s2
800043c4: 93 05 0a 00  	mv	a1, s4
800043c8: 13 86 0c 00  	mv	a2, s9
800043cc: 93 86 0a 00  	mv	a3, s5
800043d0: 13 08 00 00  	mv	a6, zero
800043d4: 93 83 0b 00  	mv	t2, s7
800043d8: 97 10 00 00  	auipc	ra, 1
800043dc: e7 80 00 fa  	jalr	-96(ra)
800043e0: 13 0c 05 00  	mv	s8, a0
800043e4: 6f 00 00 21  	j	0x800045f4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800043e8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800043ec: 63 14 08 00  	bnez	a6, 0x800043f4 <.LBB1_124+0x104>
800043f0: 13 74 f4 fe  	andi	s0, s0, -17
800043f4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800043f8: 13 76 04 40  	andi	a2, s0, 1024
800043fc: 13 56 a6 00  	srli	a2, a2, 10
80004400: b3 f5 c5 00  	and	a1, a1, a2
80004404: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80004408: 63 9c 05 06  	bnez	a1, 0x80004480 <.LBB1_124+0x190>
8000440c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80004410: 13 56 f8 41  	srai	a2, a6, 31
80004414: b3 06 c8 00  	add	a3, a6, a2
80004418: b3 c6 c6 00  	xor	a3, a3, a2
8000441c: 13 76 04 02  	andi	a2, s0, 32
80004420: 13 46 16 06  	xori	a2, a2, 97
80004424: 93 08 66 0f  	addi	a7, a2, 246
80004428: 6f 00 40 03  	j	0x8000445c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000442c: 33 05 f6 00  	add	a0, a2, a5
80004430: 93 87 15 00  	addi	a5, a1, 1
80004434: 13 06 c1 01  	addi	a2, sp, 28
80004438: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000443c: b3 b6 86 01  	sltu	a3, a3, s8
80004440: 93 c6 16 00  	xori	a3, a3, 1
80004444: 93 b5 f5 01  	sltiu	a1, a1, 31
80004448: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000444c: 23 00 a6 00  	sb	a0, 0(a2)
80004450: 93 85 07 00  	mv	a1, a5
80004454: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004458: 63 84 04 02  	beqz	s1, 0x80004480 <.LBB1_124+0x190>
;       value /= base;
8000445c: 33 d7 86 03  	divu	a4, a3, s8
80004460: 33 06 87 03  	mul	a2, a4, s8
80004464: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004468: 13 f5 e7 0f  	andi	a0, a5, 254
8000446c: 13 06 00 03  	addi	a2, zero, 48
80004470: 93 04 a0 00  	addi	s1, zero, 10
80004474: e3 6c 95 fa  	bltu	a0, s1, 0x8000442c <.LBB1_124+0x13c>
80004478: 13 86 08 00  	mv	a2, a7
8000447c: 6f f0 1f fb  	j	0x8000442c <.LBB1_124+0x13c>
80004480: 93 89 49 00  	addi	s3, s3, 4
80004484: 13 58 f8 01  	srli	a6, a6, 31
80004488: 13 07 c1 01  	addi	a4, sp, 28
8000448c: 13 05 09 00  	mv	a0, s2
80004490: 93 05 0a 00  	mv	a1, s4
80004494: 13 86 0c 00  	mv	a2, s9
80004498: 93 86 0a 00  	mv	a3, s5
8000449c: 6f 00 80 13  	j	0x800045d4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800044a0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800044a4: 63 14 05 00  	bnez	a0, 0x800044ac <.LBB1_124+0x1bc>
800044a8: 13 74 f4 fe  	andi	s0, s0, -17
800044ac: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800044b0: 13 76 04 40  	andi	a2, s0, 1024
800044b4: 13 56 a6 00  	srli	a2, a2, 10
800044b8: b3 f5 c5 00  	and	a1, a1, a2
800044bc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800044c0: 63 9c 05 0e  	bnez	a1, 0x800045b8 <.LBB1_124+0x2c8>
800044c4: 13 06 00 00  	mv	a2, zero
800044c8: 93 75 04 02  	andi	a1, s0, 32
800044cc: 93 c5 15 06  	xori	a1, a1, 97
800044d0: 13 88 65 0f  	addi	a6, a1, 246
800044d4: 6f 00 40 03  	j	0x80004508 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800044d8: 33 87 e7 00  	add	a4, a5, a4
800044dc: 93 07 16 00  	addi	a5, a2, 1
800044e0: 93 05 c1 01  	addi	a1, sp, 28
800044e4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800044e8: 33 35 85 01  	sltu	a0, a0, s8
800044ec: 13 45 15 00  	xori	a0, a0, 1
800044f0: 13 36 f6 01  	sltiu	a2, a2, 31
800044f4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800044f8: 23 80 e4 00  	sb	a4, 0(s1)
800044fc: 13 86 07 00  	mv	a2, a5
80004500: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004504: 63 8a 05 0a  	beqz	a1, 0x800045b8 <.LBB1_124+0x2c8>
;       value /= base;
80004508: b3 56 85 03  	divu	a3, a0, s8
8000450c: 33 87 86 03  	mul	a4, a3, s8
80004510: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004514: 93 74 e7 0f  	andi	s1, a4, 254
80004518: 93 07 00 03  	addi	a5, zero, 48
8000451c: 93 05 a0 00  	addi	a1, zero, 10
80004520: e3 ec b4 fa  	bltu	s1, a1, 0x800044d8 <.LBB1_124+0x1e8>
80004524: 93 07 08 00  	mv	a5, a6
80004528: 6f f0 1f fb  	j	0x800044d8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000452c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80004530: 63 14 05 00  	bnez	a0, 0x80004538 <.LBB1_124+0x248>
80004534: 13 74 f4 fe  	andi	s0, s0, -17
80004538: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000453c: 13 76 04 40  	andi	a2, s0, 1024
80004540: 13 56 a6 00  	srli	a2, a2, 10
80004544: b3 f5 c5 00  	and	a1, a1, a2
80004548: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000454c: 63 96 05 06  	bnez	a1, 0x800045b8 <.LBB1_124+0x2c8>
80004550: 13 06 00 00  	mv	a2, zero
80004554: 93 75 04 02  	andi	a1, s0, 32
80004558: 93 c5 15 06  	xori	a1, a1, 97
8000455c: 13 88 65 0f  	addi	a6, a1, 246
80004560: 6f 00 40 03  	j	0x80004594 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004564: 33 87 e7 00  	add	a4, a5, a4
80004568: 93 07 16 00  	addi	a5, a2, 1
8000456c: 93 05 c1 01  	addi	a1, sp, 28
80004570: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004574: 33 35 85 01  	sltu	a0, a0, s8
80004578: 13 45 15 00  	xori	a0, a0, 1
8000457c: 13 36 f6 01  	sltiu	a2, a2, 31
80004580: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004584: 23 80 e4 00  	sb	a4, 0(s1)
80004588: 13 86 07 00  	mv	a2, a5
8000458c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004590: 63 84 05 02  	beqz	a1, 0x800045b8 <.LBB1_124+0x2c8>
;       value /= base;
80004594: b3 56 85 03  	divu	a3, a0, s8
80004598: 33 87 86 03  	mul	a4, a3, s8
8000459c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800045a0: 93 74 e7 0f  	andi	s1, a4, 254
800045a4: 93 07 00 03  	addi	a5, zero, 48
800045a8: 93 05 a0 00  	addi	a1, zero, 10
800045ac: e3 ec b4 fa  	bltu	s1, a1, 0x80004564 <.LBB1_124+0x274>
800045b0: 93 07 08 00  	mv	a5, a6
800045b4: 6f f0 1f fb  	j	0x80004564 <.LBB1_124+0x274>
800045b8: 93 89 49 00  	addi	s3, s3, 4
800045bc: 13 07 c1 01  	addi	a4, sp, 28
800045c0: 13 05 09 00  	mv	a0, s2
800045c4: 93 05 0a 00  	mv	a1, s4
800045c8: 13 86 0c 00  	mv	a2, s9
800045cc: 93 86 0a 00  	mv	a3, s5
800045d0: 13 08 00 00  	mv	a6, zero
800045d4: 93 08 0c 00  	mv	a7, s8
800045d8: 93 83 0b 00  	mv	t2, s7
800045dc: 13 0e 0b 00  	mv	t3, s6
800045e0: 93 0e 04 00  	mv	t4, s0
800045e4: 97 10 00 00  	auipc	ra, 1
800045e8: e7 80 40 d9  	jalr	-620(ra)
800045ec: 13 0c 05 00  	mv	s8, a0
800045f0: 13 0b 50 02  	addi	s6, zero, 37
800045f4: 93 0b e0 02  	addi	s7, zero, 46
800045f8: 13 04 1d 00  	addi	s0, s10, 1
800045fc: 6f f0 cf d8  	j	0x80003b88 <.LBB1_183+0x30>
80004600: 93 85 15 00  	addi	a1, a1, 1
80004604: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004608: 63 00 05 04  	beqz	a0, 0x80004648 <.LBB1_124+0x358>
8000460c: 13 84 17 00  	addi	s0, a5, 1
80004610: 6f 00 00 03  	j	0x80004640 <.LBB1_124+0x350>
80004614: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80004618: 13 8c 1c 00  	addi	s8, s9, 1
8000461c: 13 75 f5 0f  	andi	a0, a0, 255
80004620: 93 05 0a 00  	mv	a1, s4
80004624: 13 86 0c 00  	mv	a2, s9
80004628: 93 86 0a 00  	mv	a3, s5
8000462c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004630: 03 45 04 00  	lbu	a0, 0(s0)
80004634: 13 04 14 00  	addi	s0, s0, 1
80004638: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000463c: 63 08 05 00  	beqz	a0, 0x8000464c <.LBB1_124+0x35c>
80004640: e3 9c 04 fc  	bnez	s1, 0x80004618 <.LBB1_124+0x328>
80004644: e3 98 0b fc  	bnez	s7, 0x80004614 <.LBB1_124+0x324>
80004648: 13 8c 0c 00  	mv	s8, s9
8000464c: 03 25 c1 00  	lw	a0, 12(sp)
80004650: 13 35 15 00  	seqz	a0, a0
80004654: 03 26 41 01  	lw	a2, 20(sp)
80004658: b3 35 66 01  	sltu	a1, a2, s6
8000465c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80004660: 33 65 b5 00  	or	a0, a0, a1
80004664: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80004668: e3 14 05 f8  	bnez	a0, 0x800045f0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000466c: 33 04 cb 40  	sub	s0, s6, a2
80004670: 93 0b e0 02  	addi	s7, zero, 46
80004674: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80004678: 13 0c 1c 00  	addi	s8, s8, 1
8000467c: 13 05 00 02  	addi	a0, zero, 32
80004680: 93 05 0a 00  	mv	a1, s4
80004684: 93 86 0a 00  	mv	a3, s5
80004688: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000468c: 13 04 f4 ff  	addi	s0, s0, -1
80004690: e3 12 04 fe  	bnez	s0, 0x80004674 <.LBB1_124+0x384>
80004694: 13 0b 50 02  	addi	s6, zero, 37
80004698: 13 04 1d 00  	addi	s0, s10, 1
8000469c: 6f f0 cf ce  	j	0x80003b88 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800046a0: 13 86 0c 00  	mv	a2, s9
800046a4: 63 e4 5c 01  	bltu	s9, s5, 0x800046ac <.LBB1_124+0x3bc>
800046a8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800046ac: 13 05 00 00  	mv	a0, zero
800046b0: 93 05 0a 00  	mv	a1, s4
800046b4: 93 86 0a 00  	mv	a3, s5
800046b8: e7 00 09 00  	jalr	s2
;   return (int)idx;
800046bc: 13 85 0c 00  	mv	a0, s9
800046c0: 83 2d c1 03  	lw	s11, 60(sp)
800046c4: 03 2d 01 04  	lw	s10, 64(sp)
800046c8: 83 2c 41 04  	lw	s9, 68(sp)
800046cc: 03 2c 81 04  	lw	s8, 72(sp)
800046d0: 83 2b c1 04  	lw	s7, 76(sp)
800046d4: 03 2b 01 05  	lw	s6, 80(sp)
800046d8: 83 2a 41 05  	lw	s5, 84(sp)
800046dc: 03 2a 81 05  	lw	s4, 88(sp)
800046e0: 83 29 c1 05  	lw	s3, 92(sp)
800046e4: 03 29 01 06  	lw	s2, 96(sp)
800046e8: 83 24 41 06  	lw	s1, 100(sp)
800046ec: 03 24 81 06  	lw	s0, 104(sp)
800046f0: 83 20 c1 06  	lw	ra, 108(sp)
800046f4: 13 01 01 07  	addi	sp, sp, 112
800046f8: 67 80 00 00  	ret

800046fc <_out_char.llvm.17592004524093383706>:
;   if (character) {
800046fc: 63 04 05 0a  	beqz	a0, 0x800047a4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004700: f3 25 40 f1  	csrr	a1, mhartid
80004704: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80004708: 33 86 c5 02  	mul	a2, a1, a2

8000470c <.LBB2_6>:
8000470c: 97 26 00 00  	auipc	a3, 2
80004710: 93 86 86 a7  	addi	a3, a3, -1416
80004714: b3 05 d6 00  	add	a1, a2, a3
80004718: 03 a7 05 00  	lw	a4, 0(a1)
8000471c: 93 07 17 00  	addi	a5, a4, 1
80004720: 23 a0 f5 00  	sw	a5, 0(a1)
80004724: 33 87 e5 00  	add	a4, a1, a4
80004728: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
8000472c: 03 a7 05 00  	lw	a4, 0(a1)
80004730: 13 07 47 c0  	addi	a4, a4, -1020
80004734: 33 37 e0 00  	snez	a4, a4
80004738: 13 05 65 ff  	addi	a0, a0, -10
8000473c: 33 35 a0 00  	snez	a0, a0
80004740: 33 75 e5 00  	and	a0, a0, a4
80004744: 63 10 05 06  	bnez	a0, 0x800047a4 <.LBB2_8+0x18>
80004748: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000474c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004750: 23 26 05 00  	sw	zero, 12(a0)
80004754: 93 06 00 04  	addi	a3, zero, 64
80004758: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000475c: 23 2a 05 00  	sw	zero, 20(a0)
80004760: 93 06 10 00  	addi	a3, zero, 1
80004764: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80004768: 23 2e 05 00  	sw	zero, 28(a0)
8000476c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004770: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004774: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004778: 23 22 05 02  	sw	zero, 36(a0)
8000477c: 23 20 c5 02  	sw	a2, 32(a0)

80004780 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80004780: 17 25 00 00  	auipc	a0, 2
80004784: 13 05 05 8c  	addi	a0, a0, -1856
80004788: 23 20 d5 00  	sw	a3, 0(a0)

8000478c <.LBB2_8>:
8000478c: 17 25 00 00  	auipc	a0, 2
80004790: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80004794: 03 26 05 00  	lw	a2, 0(a0)
80004798: e3 0e 06 fe  	beqz	a2, 0x80004794 <.LBB2_8+0x8>
;         fromhost = 0;
8000479c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800047a0: 23 a0 05 00  	sw	zero, 0(a1)
; }
800047a4: 67 80 00 00  	ret

800047a8 <_out_null>:
; }
800047a8: 67 80 00 00  	ret

800047ac <_ftoa>:
; {
800047ac: 13 01 01 f9  	addi	sp, sp, -112
800047b0: 23 26 11 06  	sw	ra, 108(sp)
800047b4: 23 24 81 06  	sw	s0, 104(sp)
800047b8: 23 22 91 06  	sw	s1, 100(sp)
800047bc: 23 20 21 07  	sw	s2, 96(sp)
800047c0: 23 2e 31 05  	sw	s3, 92(sp)
800047c4: 23 2c 41 05  	sw	s4, 88(sp)
800047c8: 23 2a 51 05  	sw	s5, 84(sp)
800047cc: 23 28 61 05  	sw	s6, 80(sp)
800047d0: 23 26 71 05  	sw	s7, 76(sp)
800047d4: 23 24 81 05  	sw	s8, 72(sp)
800047d8: 23 22 91 05  	sw	s9, 68(sp)
800047dc: 23 20 a1 05  	sw	s10, 64(sp)
800047e0: 27 3c 81 02  	fsd	fs0, 56(sp)
800047e4: 27 38 91 02  	fsd	fs1, 48(sp)
800047e8: 27 34 21 03  	fsd	fs2, 40(sp)

800047ec <.LBB4_83>:
800047ec: 97 24 00 00  	auipc	s1, 2
800047f0: 93 84 c4 8e  	addi	s1, s1, -1812
800047f4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800047f8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800047fc: 93 0a 08 00  	mv	s5, a6
80004800: 13 89 07 00  	mv	s2, a5
80004804: 93 89 06 00  	mv	s3, a3
80004808: 13 0a 06 00  	mv	s4, a2
8000480c: 13 8b 05 00  	mv	s6, a1
80004810: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80004814: 63 98 04 0e  	bnez	s1, 0x80004904 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004818: 13 f5 2a 00  	andi	a0, s5, 2
8000481c: 93 f5 3a 00  	andi	a1, s5, 3
80004820: b3 35 b0 00  	snez	a1, a1
80004824: 13 36 59 00  	sltiu	a2, s2, 5
80004828: b3 65 b6 00  	or	a1, a2, a1
8000482c: 93 5c 15 00  	srli	s9, a0, 1
80004830: 13 04 0a 00  	mv	s0, s4
80004834: 63 96 05 02  	bnez	a1, 0x80004860 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80004838: 93 04 c9 ff  	addi	s1, s2, -4
8000483c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004840: 13 04 16 00  	addi	s0, a2, 1
80004844: 13 05 00 02  	addi	a0, zero, 32
80004848: 93 05 0b 00  	mv	a1, s6
8000484c: 93 86 09 00  	mv	a3, s3
80004850: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004854: 93 84 f4 ff  	addi	s1, s1, -1
80004858: 13 06 04 00  	mv	a2, s0
8000485c: e3 92 04 fe  	bnez	s1, 0x80004840 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80004860: 93 04 14 00  	addi	s1, s0, 1
80004864: 13 05 d0 02  	addi	a0, zero, 45
80004868: 93 05 0b 00  	mv	a1, s6
8000486c: 13 06 04 00  	mv	a2, s0
80004870: 93 86 09 00  	mv	a3, s3
80004874: e7 80 0b 00  	jalr	s7
80004878: 93 0a 24 00  	addi	s5, s0, 2
8000487c: 13 05 90 06  	addi	a0, zero, 105
80004880: 93 05 0b 00  	mv	a1, s6
80004884: 13 86 04 00  	mv	a2, s1
80004888: 93 86 09 00  	mv	a3, s3
8000488c: e7 80 0b 00  	jalr	s7
80004890: 13 0c 34 00  	addi	s8, s0, 3
80004894: 13 05 e0 06  	addi	a0, zero, 110
80004898: 93 05 0b 00  	mv	a1, s6
8000489c: 13 86 0a 00  	mv	a2, s5
800048a0: 93 86 09 00  	mv	a3, s3
800048a4: e7 80 0b 00  	jalr	s7
800048a8: 93 04 44 00  	addi	s1, s0, 4
800048ac: 13 05 60 06  	addi	a0, zero, 102
800048b0: 93 05 0b 00  	mv	a1, s6
800048b4: 13 06 0c 00  	mv	a2, s8
800048b8: 93 86 09 00  	mv	a3, s3
800048bc: e7 80 0b 00  	jalr	s7
800048c0: 33 85 44 41  	sub	a0, s1, s4
800048c4: 33 35 25 01  	sltu	a0, a0, s2
800048c8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800048cc: 93 c5 1c 00  	xori	a1, s9, 1
800048d0: 33 e5 a5 00  	or	a0, a1, a0
800048d4: 63 16 05 56  	bnez	a0, 0x80004e40 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800048d8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800048dc: 13 84 14 00  	addi	s0, s1, 1
800048e0: 13 05 00 02  	addi	a0, zero, 32
800048e4: 93 05 0b 00  	mv	a1, s6
800048e8: 13 86 04 00  	mv	a2, s1
800048ec: 93 86 09 00  	mv	a3, s3
800048f0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800048f4: 33 05 8a 00  	add	a0, s4, s0
800048f8: 93 04 04 00  	mv	s1, s0
800048fc: e3 60 25 ff  	bltu	a0, s2, 0x800048dc <.LBB4_83+0xf0>
80004900: 6f 00 40 54  	j	0x80004e44 <.LBB4_90+0x378>
80004904: 53 04 a5 22  	fmv.d	fs0, fa0

80004908 <.LBB4_84>:
80004908: 17 15 00 00  	auipc	a0, 1
8000490c: 13 05 85 7d  	addi	a0, a0, 2008
80004910: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80004914: 53 05 05 a2  	fle.d	a0, fa0, ft0
80004918: 63 1e 05 00  	bnez	a0, 0x80004934 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000491c: 93 f5 4a 00  	andi	a1, s5, 4
80004920: 13 b5 15 00  	seqz	a0, a1
80004924: 63 82 05 06  	beqz	a1, 0x80004988 <.LBB4_88>

80004928 <.LBB4_85>:
80004928: 17 1c 00 00  	auipc	s8, 1
8000492c: 13 0c 8c 4b  	addi	s8, s8, 1208
80004930: 6f 00 00 06  	j	0x80004990 <.LBB4_88+0x8>

80004934 <.LBB4_86>:
80004934: 17 15 00 00  	auipc	a0, 1
80004938: 13 05 45 7b  	addi	a0, a0, 1972
8000493c: 07 30 05 00  	fld	ft0, 0(a0)

80004940 <.LBB4_87>:
80004940: 17 15 00 00  	auipc	a0, 1
80004944: 13 05 05 7b  	addi	a0, a0, 1968
80004948: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000494c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80004950: d3 85 80 a2  	fle.d	a1, ft1, fs0
80004954: 33 75 b5 00  	and	a0, a0, a1
80004958: 63 1e 05 0e  	bnez	a0, 0x80004a54 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000495c: 13 85 0b 00  	mv	a0, s7
80004960: 93 05 0b 00  	mv	a1, s6
80004964: 13 06 0a 00  	mv	a2, s4
80004968: 93 86 09 00  	mv	a3, s3
8000496c: 53 05 84 22  	fmv.d	fa0, fs0
80004970: 93 07 09 00  	mv	a5, s2
80004974: 13 88 0a 00  	mv	a6, s5
80004978: 97 00 00 00  	auipc	ra, 0
8000497c: e7 80 40 51  	jalr	1300(ra)
80004980: 13 04 05 00  	mv	s0, a0
80004984: 6f 00 00 4c  	j	0x80004e44 <.LBB4_90+0x378>

80004988 <.LBB4_88>:
80004988: 17 1c 00 00  	auipc	s8, 1
8000498c: 13 0c 7c 47  	addi	s8, s8, 1143
80004990: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004994: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004998: 13 f5 3a 00  	andi	a0, s5, 3
8000499c: 33 35 a0 00  	snez	a0, a0
800049a0: b3 b5 2c 01  	sltu	a1, s9, s2
800049a4: 93 c5 15 00  	xori	a1, a1, 1
800049a8: 33 65 b5 00  	or	a0, a0, a1
800049ac: 93 fa 2a 00  	andi	s5, s5, 2
800049b0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800049b4: 63 16 05 02  	bnez	a0, 0x800049e0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800049b8: 33 04 99 41  	sub	s0, s2, s9
800049bc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800049c0: 93 04 16 00  	addi	s1, a2, 1
800049c4: 13 05 00 02  	addi	a0, zero, 32
800049c8: 93 05 0b 00  	mv	a1, s6
800049cc: 93 86 09 00  	mv	a3, s3
800049d0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800049d4: 13 04 f4 ff  	addi	s0, s0, -1
800049d8: 13 86 04 00  	mv	a2, s1
800049dc: e3 12 04 fe  	bnez	s0, 0x800049c0 <.LBB4_88+0x38>
800049e0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800049e4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800049e8: 33 05 9c 01  	add	a0, s8, s9
800049ec: 03 45 05 00  	lbu	a0, 0(a0)
800049f0: 13 86 04 00  	mv	a2, s1
800049f4: 13 84 fc ff  	addi	s0, s9, -1
800049f8: 93 84 14 00  	addi	s1, s1, 1
800049fc: 93 05 0b 00  	mv	a1, s6
80004a00: 93 86 09 00  	mv	a3, s3
80004a04: e7 80 0b 00  	jalr	s7
80004a08: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80004a0c: e3 1e 04 fc  	bnez	s0, 0x800049e8 <.LBB4_88+0x60>
80004a10: 33 85 44 41  	sub	a0, s1, s4
80004a14: 33 35 25 01  	sltu	a0, a0, s2
80004a18: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004a1c: 93 c5 1a 00  	xori	a1, s5, 1
80004a20: 33 e5 a5 00  	or	a0, a1, a0
80004a24: 63 1e 05 40  	bnez	a0, 0x80004e40 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004a28: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004a2c: 13 84 14 00  	addi	s0, s1, 1
80004a30: 13 05 00 02  	addi	a0, zero, 32
80004a34: 93 05 0b 00  	mv	a1, s6
80004a38: 13 86 04 00  	mv	a2, s1
80004a3c: 93 86 09 00  	mv	a3, s3
80004a40: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004a44: 33 05 8a 00  	add	a0, s4, s0
80004a48: 93 04 04 00  	mv	s1, s0
80004a4c: e3 60 25 ff  	bltu	a0, s2, 0x80004a2c <.LBB4_88+0xa4>
80004a50: 6f 00 40 3f  	j	0x80004e44 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80004a54: 13 f5 0a 40  	andi	a0, s5, 1024
80004a58: 13 0c 60 00  	addi	s8, zero, 6
80004a5c: 63 04 05 00  	beqz	a0, 0x80004a64 <.LBB4_88+0xdc>
80004a60: 13 0c 07 00  	mv	s8, a4
80004a64: 13 05 a0 00  	addi	a0, zero, 10
80004a68: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004a6c: 63 6c ac 02  	bltu	s8, a0, 0x80004aa4 <.LBB4_88+0x11c>
80004a70: 93 04 6c ff  	addi	s1, s8, -10
80004a74: 13 05 f0 01  	addi	a0, zero, 31
80004a78: 63 e4 a4 00  	bltu	s1, a0, 0x80004a80 <.LBB4_88+0xf8>
80004a7c: 93 04 f0 01  	addi	s1, zero, 31
80004a80: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80004a84: 13 05 81 00  	addi	a0, sp, 8
80004a88: 93 05 00 03  	addi	a1, zero, 48
80004a8c: 13 06 04 00  	mv	a2, s0
80004a90: 97 c0 ff ff  	auipc	ra, 1048572
80004a94: e7 80 80 ac  	jalr	-1336(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004a98: 13 c5 f4 ff  	not	a0, s1
80004a9c: 33 0c ac 00  	add	s8, s8, a0
80004aa0: 6f 00 80 00  	j	0x80004aa8 <.LBB4_88+0x120>
80004aa4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80004aa8: 13 15 3c 00  	slli	a0, s8, 3

80004aac <.LBB4_89>:
80004aac: 97 15 00 00  	auipc	a1, 1
80004ab0: 93 85 45 51  	addi	a1, a1, 1300
80004ab4: 33 05 b5 00  	add	a0, a0, a1
80004ab8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80004abc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80004ac0: 53 80 04 d2  	fcvt.d.w	ft0, s1
80004ac4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80004ac8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80004acc <.LBB4_90>:
80004acc: 17 15 00 00  	auipc	a0, 1
80004ad0: 13 05 c5 62  	addi	a0, a0, 1580
80004ad4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80004ad8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80004adc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80004ae0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80004ae4: d3 05 01 a2  	fle.d	a1, ft2, ft0
80004ae8: 63 90 05 02  	bnez	a1, 0x80004b08 <.LBB4_90+0x3c>
;     ++frac;
80004aec: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004af0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80004af4: d3 15 11 a2  	flt.d	a1, ft2, ft1
80004af8: 63 94 05 02  	bnez	a1, 0x80004b20 <.LBB4_90+0x54>
80004afc: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004b00: 93 84 14 00  	addi	s1, s1, 1
80004b04: 6f 00 c0 01  	j	0x80004b20 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80004b08: d3 15 01 a2  	flt.d	a1, ft2, ft0
80004b0c: 63 9a 05 00  	bnez	a1, 0x80004b20 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004b10: 93 35 15 00  	seqz	a1, a0
80004b14: 13 76 15 00  	andi	a2, a0, 1
80004b18: b3 65 b6 00  	or	a1, a2, a1
80004b1c: 33 85 a5 00  	add	a0, a1, a0
80004b20: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004b24: 63 0c 0c 0c  	beqz	s8, 0x80004bfc <.LBB4_90+0x130>
80004b28: 13 06 00 00  	mv	a2, zero
80004b2c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004b30: 33 83 85 00  	add	t1, a1, s0
80004b34: 93 02 00 02  	addi	t0, zero, 32
80004b38: 33 87 82 40  	sub	a4, t0, s0
80004b3c: b7 d5 cc cc  	lui	a1, 838861
80004b40: 93 83 d5 cc  	addi	t2, a1, -819
80004b44: 13 08 a0 00  	addi	a6, zero, 10
80004b48: 93 08 90 00  	addi	a7, zero, 9
80004b4c: 63 04 c7 0c  	beq	a4, a2, 0x80004c14 <.LBB4_90+0x148>
80004b50: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80004b54: 33 35 75 02  	mulhu	a0, a0, t2
80004b58: 13 55 35 00  	srli	a0, a0, 3
80004b5c: b3 06 05 03  	mul	a3, a0, a6
80004b60: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004b64: 93 e6 06 03  	ori	a3, a3, 48
80004b68: b3 07 c3 00  	add	a5, t1, a2
80004b6c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004b70: 13 06 16 00  	addi	a2, a2, 1
80004b74: e3 ec b8 fc  	bltu	a7, a1, 0x80004b4c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004b78: 33 05 c4 00  	add	a0, s0, a2
80004b7c: 93 05 f5 ff  	addi	a1, a0, -1
80004b80: 93 06 e0 01  	addi	a3, zero, 30
80004b84: b3 b6 b6 00  	sltu	a3, a3, a1
80004b88: 33 47 cc 00  	xor	a4, s8, a2
80004b8c: 13 37 17 00  	seqz	a4, a4
80004b90: b3 e6 e6 00  	or	a3, a3, a4
80004b94: 63 94 06 08  	bnez	a3, 0x80004c1c <.LBB4_90+0x150>
80004b98: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004b9c: 33 05 85 00  	add	a0, a0, s0
80004ba0: 93 45 f6 ff  	not	a1, a2
80004ba4: 33 8c 85 01  	add	s8, a1, s8
80004ba8: 33 04 c4 00  	add	s0, s0, a2
80004bac: 93 05 f0 01  	addi	a1, zero, 31
80004bb0: b3 86 85 40  	sub	a3, a1, s0
80004bb4: 33 05 c5 00  	add	a0, a0, a2
80004bb8: 93 05 0c 00  	mv	a1, s8
80004bbc: 63 64 dc 00  	bltu	s8, a3, 0x80004bc4 <.LBB4_90+0xf8>
80004bc0: 93 85 06 00  	mv	a1, a3
80004bc4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004bc8: 93 05 00 03  	addi	a1, zero, 48
80004bcc: 97 c0 ff ff  	auipc	ra, 1048572
80004bd0: e7 80 c0 98  	jalr	-1652(ra)
80004bd4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004bd8: b3 05 a4 00  	add	a1, s0, a0
80004bdc: 93 b5 f5 01  	sltiu	a1, a1, 31
80004be0: 33 46 ac 00  	xor	a2, s8, a0
80004be4: 33 36 c0 00  	snez	a2, a2
80004be8: 33 f6 c5 00  	and	a2, a1, a2
80004bec: 13 05 15 00  	addi	a0, a0, 1
80004bf0: e3 14 06 fe  	bnez	a2, 0x80004bd8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004bf4: 33 05 a4 00  	add	a0, s0, a0
80004bf8: 6f 00 80 02  	j	0x80004c20 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80004bfc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004c00: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004c04: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004c08: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004c0c: b3 84 a4 00  	add	s1, s1, a0
80004c10: 6f 00 c0 03  	j	0x80004c4c <.LBB4_90+0x180>
80004c14: 13 04 00 02  	addi	s0, zero, 32
80004c18: 6f 00 80 03  	j	0x80004c50 <.LBB4_90+0x184>
80004c1c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004c20: 63 8e 05 00  	beqz	a1, 0x80004c3c <.LBB4_90+0x170>
;       buf[len++] = '.';
80004c24: 13 04 15 00  	addi	s0, a0, 1
80004c28: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80004c2c: 33 85 a5 00  	add	a0, a1, a0
80004c30: 93 05 e0 02  	addi	a1, zero, 46
80004c34: 23 00 b5 00  	sb	a1, 0(a0)
80004c38: 6f 00 80 00  	j	0x80004c40 <.LBB4_90+0x174>
80004c3c: 13 04 05 00  	mv	s0, a0
80004c40: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004c44: 93 02 04 00  	mv	t0, s0
80004c48: 63 64 85 00  	bltu	a0, s0, 0x80004c50 <.LBB4_90+0x184>
80004c4c: 93 02 00 02  	addi	t0, zero, 32
80004c50: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80004c54: 37 65 66 66  	lui	a0, 419430
80004c58: 93 05 75 66  	addi	a1, a0, 1639
80004c5c: 13 08 a0 00  	addi	a6, zero, 10
80004c60: 93 06 81 00  	addi	a3, sp, 8
80004c64: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004c68: 63 80 82 04  	beq	t0, s0, 0x80004ca8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80004c6c: 33 95 b4 02  	mulh	a0, s1, a1
80004c70: 93 57 f5 01  	srli	a5, a0, 31
80004c74: 13 55 25 40  	srai	a0, a0, 2
80004c78: 33 05 f5 00  	add	a0, a0, a5
80004c7c: b3 07 05 03  	mul	a5, a0, a6
80004c80: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004c84: 93 87 07 03  	addi	a5, a5, 48
80004c88: 13 0c 14 00  	addi	s8, s0, 1
80004c8c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004c90: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004c94: 23 00 f4 00  	sb	a5, 0(s0)
80004c98: 13 04 0c 00  	mv	s0, s8
80004c9c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004ca0: e3 64 c7 fc  	bltu	a4, a2, 0x80004c68 <.LBB4_90+0x19c>
80004ca4: 6f 00 80 00  	j	0x80004cac <.LBB4_90+0x1e0>
80004ca8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004cac: 93 f4 3a 00  	andi	s1, s5, 3
80004cb0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004cb4: 63 96 a4 06  	bne	s1, a0, 0x80004d20 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004cb8: 63 0c 09 00  	beqz	s2, 0x80004cd0 <.LBB4_90+0x204>
80004cbc: 13 f5 ca 00  	andi	a0, s5, 12
80004cc0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004cc4: 33 e5 ac 00  	or	a0, s9, a0
80004cc8: 33 09 a9 40  	sub	s2, s2, a0
80004ccc: 6f 00 80 00  	j	0x80004cd4 <.LBB4_90+0x208>
80004cd0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004cd4: 33 35 2c 01  	sltu	a0, s8, s2
80004cd8: 93 45 15 00  	xori	a1, a0, 1
80004cdc: 13 05 f0 01  	addi	a0, zero, 31
80004ce0: 33 36 85 01  	sltu	a2, a0, s8
80004ce4: b3 65 b6 00  	or	a1, a2, a1
80004ce8: 63 9c 05 02  	bnez	a1, 0x80004d20 <.LBB4_90+0x254>
80004cec: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004cf0: 93 45 fc ff  	not	a1, s8
80004cf4: b3 05 b9 00  	add	a1, s2, a1
80004cf8: 33 06 85 41  	sub	a2, a0, s8
80004cfc: 33 85 86 01  	add	a0, a3, s8
80004d00: 63 e4 c5 00  	bltu	a1, a2, 0x80004d08 <.LBB4_90+0x23c>
80004d04: 93 05 06 00  	mv	a1, a2
80004d08: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80004d0c: 93 05 00 03  	addi	a1, zero, 48
80004d10: 13 06 04 00  	mv	a2, s0
80004d14: 97 c0 ff ff  	auipc	ra, 1048572
80004d18: e7 80 40 84  	jalr	-1980(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004d1c: 33 0c 84 01  	add	s8, s0, s8
80004d20: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004d24: 63 6a 85 05  	bltu	a0, s8, 0x80004d78 <.LBB4_90+0x2ac>
;     if (negative) {
80004d28: 63 8c 0c 00  	beqz	s9, 0x80004d40 <.LBB4_90+0x274>
80004d2c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004d30: 33 05 85 01  	add	a0, a0, s8
80004d34: 13 0c 1c 00  	addi	s8, s8, 1
80004d38: 93 05 d0 02  	addi	a1, zero, 45
80004d3c: 6f 00 80 03  	j	0x80004d74 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80004d40: 13 f5 4a 00  	andi	a0, s5, 4
80004d44: 63 10 05 02  	bnez	a0, 0x80004d64 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80004d48: 13 f5 8a 00  	andi	a0, s5, 8
80004d4c: 63 06 05 02  	beqz	a0, 0x80004d78 <.LBB4_90+0x2ac>
80004d50: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80004d54: 33 05 85 01  	add	a0, a0, s8
80004d58: 13 0c 1c 00  	addi	s8, s8, 1
80004d5c: 93 05 00 02  	addi	a1, zero, 32
80004d60: 6f 00 40 01  	j	0x80004d74 <.LBB4_90+0x2a8>
80004d64: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004d68: 33 05 85 01  	add	a0, a0, s8
80004d6c: 13 0c 1c 00  	addi	s8, s8, 1
80004d70: 93 05 b0 02  	addi	a1, zero, 43
80004d74: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004d78: 33 35 90 00  	snez	a0, s1
80004d7c: b3 35 2c 01  	sltu	a1, s8, s2
80004d80: 93 c5 15 00  	xori	a1, a1, 1
80004d84: 33 65 b5 00  	or	a0, a0, a1
80004d88: 93 fa 2a 00  	andi	s5, s5, 2
80004d8c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004d90: 63 16 05 02  	bnez	a0, 0x80004dbc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004d94: b3 04 89 41  	sub	s1, s2, s8
80004d98: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004d9c: 13 04 16 00  	addi	s0, a2, 1
80004da0: 13 05 00 02  	addi	a0, zero, 32
80004da4: 93 05 0b 00  	mv	a1, s6
80004da8: 93 86 09 00  	mv	a3, s3
80004dac: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004db0: 93 84 f4 ff  	addi	s1, s1, -1
80004db4: 13 06 04 00  	mv	a2, s0
80004db8: e3 92 04 fe  	bnez	s1, 0x80004d9c <.LBB4_90+0x2d0>
80004dbc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004dc0: 63 0c 0c 02  	beqz	s8, 0x80004df8 <.LBB4_90+0x32c>
80004dc4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004dc8: 33 85 8c 01  	add	a0, s9, s8
80004dcc: 03 45 05 00  	lbu	a0, 0(a0)
80004dd0: 13 0d fc ff  	addi	s10, s8, -1
80004dd4: 93 04 14 00  	addi	s1, s0, 1
80004dd8: 93 05 0b 00  	mv	a1, s6
80004ddc: 13 06 04 00  	mv	a2, s0
80004de0: 93 86 09 00  	mv	a3, s3
80004de4: e7 80 0b 00  	jalr	s7
80004de8: 13 84 04 00  	mv	s0, s1
80004dec: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004df0: e3 1c 0d fc  	bnez	s10, 0x80004dc8 <.LBB4_90+0x2fc>
80004df4: 6f 00 80 00  	j	0x80004dfc <.LBB4_90+0x330>
80004df8: 93 04 04 00  	mv	s1, s0
80004dfc: 33 85 44 41  	sub	a0, s1, s4
80004e00: 33 35 25 01  	sltu	a0, a0, s2
80004e04: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004e08: 93 c5 1a 00  	xori	a1, s5, 1
80004e0c: 33 e5 a5 00  	or	a0, a1, a0
80004e10: 63 18 05 02  	bnez	a0, 0x80004e40 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004e14: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004e18: 13 84 14 00  	addi	s0, s1, 1
80004e1c: 13 05 00 02  	addi	a0, zero, 32
80004e20: 93 05 0b 00  	mv	a1, s6
80004e24: 13 86 04 00  	mv	a2, s1
80004e28: 93 86 09 00  	mv	a3, s3
80004e2c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004e30: 33 05 8a 00  	add	a0, s4, s0
80004e34: 93 04 04 00  	mv	s1, s0
80004e38: e3 60 25 ff  	bltu	a0, s2, 0x80004e18 <.LBB4_90+0x34c>
80004e3c: 6f 00 80 00  	j	0x80004e44 <.LBB4_90+0x378>
80004e40: 13 84 04 00  	mv	s0, s1
; }
80004e44: 13 05 04 00  	mv	a0, s0
80004e48: 07 39 81 02  	fld	fs2, 40(sp)
80004e4c: 87 34 01 03  	fld	fs1, 48(sp)
80004e50: 07 34 81 03  	fld	fs0, 56(sp)
80004e54: 03 2d 01 04  	lw	s10, 64(sp)
80004e58: 83 2c 41 04  	lw	s9, 68(sp)
80004e5c: 03 2c 81 04  	lw	s8, 72(sp)
80004e60: 83 2b c1 04  	lw	s7, 76(sp)
80004e64: 03 2b 01 05  	lw	s6, 80(sp)
80004e68: 83 2a 41 05  	lw	s5, 84(sp)
80004e6c: 03 2a 81 05  	lw	s4, 88(sp)
80004e70: 83 29 c1 05  	lw	s3, 92(sp)
80004e74: 03 29 01 06  	lw	s2, 96(sp)
80004e78: 83 24 41 06  	lw	s1, 100(sp)
80004e7c: 03 24 81 06  	lw	s0, 104(sp)
80004e80: 83 20 c1 06  	lw	ra, 108(sp)
80004e84: 13 01 01 07  	addi	sp, sp, 112
80004e88: 67 80 00 00  	ret

80004e8c <_etoa>:
; {
80004e8c: 13 01 01 f8  	addi	sp, sp, -128
80004e90: 23 2e 11 06  	sw	ra, 124(sp)
80004e94: 23 2c 81 06  	sw	s0, 120(sp)
80004e98: 23 2a 91 06  	sw	s1, 116(sp)
80004e9c: 23 28 21 07  	sw	s2, 112(sp)
80004ea0: 23 26 31 07  	sw	s3, 108(sp)
80004ea4: 23 24 41 07  	sw	s4, 104(sp)
80004ea8: 23 22 51 07  	sw	s5, 100(sp)
80004eac: 23 20 61 07  	sw	s6, 96(sp)
80004eb0: 23 2e 71 05  	sw	s7, 92(sp)
80004eb4: 23 2c 81 05  	sw	s8, 88(sp)
80004eb8: 23 2a 91 05  	sw	s9, 84(sp)
80004ebc: 23 28 a1 05  	sw	s10, 80(sp)
80004ec0: 23 26 b1 05  	sw	s11, 76(sp)

80004ec4 <.LBB5_43>:
80004ec4: 97 14 00 00  	auipc	s1, 1
80004ec8: 93 84 c4 23  	addi	s1, s1, 572
80004ecc: 87 b0 04 00  	fld	ft1, 0(s1)

80004ed0 <.LBB5_44>:
80004ed0: 97 14 00 00  	auipc	s1, 1
80004ed4: 93 84 84 23  	addi	s1, s1, 568
80004ed8: 07 b1 04 00  	fld	ft2, 0(s1)
80004edc: 53 00 a5 22  	fmv.d	ft0, fa0
80004ee0: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004ee4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004ee8: b3 f4 84 00  	and	s1, s1, s0
80004eec: 93 0a 08 00  	mv	s5, a6
80004ef0: 13 89 07 00  	mv	s2, a5
80004ef4: 93 07 07 00  	mv	a5, a4
80004ef8: 93 89 06 00  	mv	s3, a3
80004efc: 13 0a 06 00  	mv	s4, a2
80004f00: 13 8b 05 00  	mv	s6, a1
80004f04: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004f08: 63 92 04 06  	bnez	s1, 0x80004f6c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004f0c: 13 85 0b 00  	mv	a0, s7
80004f10: 93 05 0b 00  	mv	a1, s6
80004f14: 13 06 0a 00  	mv	a2, s4
80004f18: 93 86 09 00  	mv	a3, s3
80004f1c: 53 05 00 22  	fmv.d	fa0, ft0
80004f20: 13 87 07 00  	mv	a4, a5
80004f24: 93 07 09 00  	mv	a5, s2
80004f28: 13 88 0a 00  	mv	a6, s5
80004f2c: 83 2d c1 04  	lw	s11, 76(sp)
80004f30: 03 2d 01 05  	lw	s10, 80(sp)
80004f34: 83 2c 41 05  	lw	s9, 84(sp)
80004f38: 03 2c 81 05  	lw	s8, 88(sp)
80004f3c: 83 2b c1 05  	lw	s7, 92(sp)
80004f40: 03 2b 01 06  	lw	s6, 96(sp)
80004f44: 83 2a 41 06  	lw	s5, 100(sp)
80004f48: 03 2a 81 06  	lw	s4, 104(sp)
80004f4c: 83 29 c1 06  	lw	s3, 108(sp)
80004f50: 03 29 01 07  	lw	s2, 112(sp)
80004f54: 83 24 41 07  	lw	s1, 116(sp)
80004f58: 03 24 81 07  	lw	s0, 120(sp)
80004f5c: 83 20 c1 07  	lw	ra, 124(sp)
80004f60: 13 01 01 08  	addi	sp, sp, 128
80004f64: 17 03 00 00  	auipc	t1, 0
80004f68: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004f6c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004f70: 13 f5 0a 40  	andi	a0, s5, 1024
80004f74: 13 07 60 00  	addi	a4, zero, 6
80004f78: 63 04 05 00  	beqz	a0, 0x80004f80 <.LBB5_44+0xb0>
80004f7c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004f80: 27 30 a1 02  	fsd	fa0, 32(sp)
80004f84: 83 25 41 02  	lw	a1, 36(sp)
80004f88: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004f8c: 93 d6 45 01  	srli	a3, a1, 20
80004f90: b7 07 10 00  	lui	a5, 256
80004f94: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004f98: b3 f5 f5 00  	and	a1, a1, a5
80004f9c: 23 2c c1 00  	sw	a2, 24(sp)
80004fa0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004fa4: b3 e5 c5 00  	or	a1, a1, a2
80004fa8: 23 2e b1 00  	sw	a1, 28(sp)
80004fac: 87 30 81 01  	fld	ft1, 24(sp)

80004fb0 <.LBB5_45>:
80004fb0: 97 15 00 00  	auipc	a1, 1
80004fb4: 93 85 05 16  	addi	a1, a1, 352
80004fb8: 07 b1 05 00  	fld	ft2, 0(a1)

80004fbc <.LBB5_46>:
80004fbc: 97 15 00 00  	auipc	a1, 1
80004fc0: 93 85 c5 15  	addi	a1, a1, 348
80004fc4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004fc8: 93 f5 f6 7f  	andi	a1, a3, 2047
80004fcc: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004fd0: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004fd4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004fd8 <.LBB5_47>:
80004fd8: 97 15 00 00  	auipc	a1, 1
80004fdc: 93 85 85 14  	addi	a1, a1, 328
80004fe0: 07 b1 05 00  	fld	ft2, 0(a1)

80004fe4 <.LBB5_48>:
80004fe4: 97 15 00 00  	auipc	a1, 1
80004fe8: 93 85 45 14  	addi	a1, a1, 324
80004fec: 87 b1 05 00  	fld	ft3, 0(a1)

80004ff0 <.LBB5_49>:
80004ff0: 97 15 00 00  	auipc	a1, 1
80004ff4: 93 85 05 14  	addi	a1, a1, 320
80004ff8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004ffc: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80005000: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80005004: d3 80 05 d2  	fcvt.d.w	ft1, a1
80005008: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

8000500c <.LBB5_50>:
8000500c: 17 16 00 00  	auipc	a2, 1
80005010: 13 06 c6 12  	addi	a2, a2, 300
80005014: 87 31 06 00  	fld	ft3, 0(a2)

80005018 <.LBB5_51>:
80005018: 17 16 00 00  	auipc	a2, 1
8000501c: 13 06 86 12  	addi	a2, a2, 296
80005020: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80005024: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80005028: 53 01 06 d2  	fcvt.d.w	ft2, a2
8000502c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80005030: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80005034: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80005038: 13 06 f6 3f  	addi	a2, a2, 1023
8000503c: 23 28 01 00  	sw	zero, 16(sp)
80005040: 13 16 46 01  	slli	a2, a2, 20
80005044: 23 2a c1 00  	sw	a2, 20(sp)

80005048 <.LBB5_52>:
80005048: 17 16 00 00  	auipc	a2, 1
8000504c: 13 06 86 10  	addi	a2, a2, 264
80005050: 87 31 06 00  	fld	ft3, 0(a2)

80005054 <.LBB5_53>:
80005054: 17 16 00 00  	auipc	a2, 1
80005058: 13 06 46 10  	addi	a2, a2, 260
8000505c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80005060: 87 32 01 01  	fld	ft5, 16(sp)

80005064 <.LBB5_54>:
80005064: 17 16 00 00  	auipc	a2, 1
80005068: 13 06 46 0e  	addi	a2, a2, 228
8000506c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80005070: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80005074 <.LBB5_55>:
80005074: 17 16 00 00  	auipc	a2, 1
80005078: 13 06 c6 0e  	addi	a2, a2, 236
8000507c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80005080: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80005084: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80005088: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000508c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80005090: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80005094: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80005098: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000509c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800050a0: 53 16 15 a2  	flt.d	a2, fa0, ft1
800050a4: 63 0a 06 00  	beqz	a2, 0x800050b8 <.LBB5_56+0x10>

800050a8 <.LBB5_56>:
800050a8: 97 16 00 00  	auipc	a3, 1
800050ac: 93 86 06 0c  	addi	a3, a3, 192
800050b0: 07 b1 06 00  	fld	ft2, 0(a3)
800050b4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800050b8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800050bc: 93 05 34 06  	addi	a1, s0, 99
800050c0: 93 b5 75 0c  	sltiu	a1, a1, 199
800050c4: 13 06 50 00  	addi	a2, zero, 5
800050c8: b7 16 00 00  	lui	a3, 1
800050cc: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800050d0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800050d4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800050d8: 63 84 06 06  	beqz	a3, 0x80005140 <.LBB5_58+0x58>

800050dc <.LBB5_57>:
800050dc: 97 15 00 00  	auipc	a1, 1
800050e0: 93 85 45 09  	addi	a1, a1, 148
800050e4: 07 b1 05 00  	fld	ft2, 0(a1)

800050e8 <.LBB5_58>:
800050e8: 97 15 00 00  	auipc	a1, 1
800050ec: 93 85 05 09  	addi	a1, a1, 144
800050f0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800050f4: d3 15 25 a2  	flt.d	a1, fa0, ft2
800050f8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800050fc: b3 e5 c5 00  	or	a1, a1, a2
80005100: 63 98 05 00  	bnez	a1, 0x80005110 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80005104: 63 40 e4 02  	blt	s0, a4, 0x80005124 <.LBB5_58+0x3c>
80005108: 13 07 00 00  	mv	a4, zero
8000510c: 6f 00 00 02  	j	0x8000512c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80005110: 63 06 07 02  	beqz	a4, 0x8000513c <.LBB5_58+0x54>
80005114: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80005118: 13 45 15 00  	xori	a0, a0, 1
8000511c: 33 07 a7 40  	sub	a4, a4, a0
80005120: 6f 00 00 02  	j	0x80005140 <.LBB5_58+0x58>
80005124: 13 45 f4 ff  	not	a0, s0
80005128: 33 07 a7 00  	add	a4, a4, a0
8000512c: 13 04 00 00  	mv	s0, zero
80005130: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80005134: 93 ea 0a 40  	ori	s5, s5, 1024
80005138: 6f 00 80 00  	j	0x80005140 <.LBB5_58+0x58>
8000513c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80005140: b3 05 99 41  	sub	a1, s2, s9
80005144: 33 36 b9 00  	sltu	a2, s2, a1
80005148: 13 05 00 00  	mv	a0, zero
8000514c: 63 14 06 00  	bnez	a2, 0x80005154 <.LBB5_58+0x6c>
80005150: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80005154: 93 07 00 00  	mv	a5, zero
80005158: 93 d5 1a 00  	srli	a1, s5, 1
8000515c: 93 f4 15 00  	andi	s1, a1, 1
80005160: b3 35 90 01  	snez	a1, s9
80005164: b3 f5 b4 00  	and	a1, s1, a1
80005168: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000516c: 63 94 05 00  	bnez	a1, 0x80005174 <.LBB5_58+0x8c>
80005170: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80005174: 93 35 14 00  	seqz	a1, s0
80005178: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000517c: 63 94 05 00  	bnez	a1, 0x80005184 <.LBB5_58+0x9c>
80005180: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80005184: 63 04 05 00  	beqz	a0, 0x8000518c <.LBB5_58+0xa4>
80005188: 53 15 a5 22  	fneg.d	fa0, fa0
8000518c: 37 f5 ff ff  	lui	a0, 1048575
80005190: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80005194: 33 f8 aa 00  	and	a6, s5, a0
80005198: 13 85 0b 00  	mv	a0, s7
8000519c: 93 05 0b 00  	mv	a1, s6
800051a0: 13 06 0a 00  	mv	a2, s4
800051a4: 93 86 09 00  	mv	a3, s3
800051a8: 97 f0 ff ff  	auipc	ra, 1048575
800051ac: e7 80 40 60  	jalr	1540(ra)
800051b0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800051b4: 63 82 0c 18  	beqz	s9, 0x80005338 <.LBB5_58+0x250>
800051b8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800051bc: 13 f5 0a 02  	andi	a0, s5, 32
800051c0: 13 45 55 06  	xori	a0, a0, 101
800051c4: 93 05 0b 00  	mv	a1, s6
800051c8: 13 06 0d 00  	mv	a2, s10
800051cc: 93 86 09 00  	mv	a3, s3
800051d0: e7 80 0b 00  	jalr	s7
800051d4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800051d8: 93 5a f4 01  	srli	s5, s0, 31
800051dc: 13 55 f4 41  	srai	a0, s0, 31
800051e0: b3 05 a4 00  	add	a1, s0, a0
800051e4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800051e8: 93 8d dc ff  	addi	s11, s9, -3
800051ec: 13 04 f0 01  	addi	s0, zero, 31
800051f0: 37 d5 cc cc  	lui	a0, 838861
800051f4: 13 05 d5 cc  	addi	a0, a0, -819
800051f8: 13 08 a0 00  	addi	a6, zero, 10
800051fc: 93 08 c1 02  	addi	a7, sp, 44
80005200: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80005204: b3 37 a7 02  	mulhu	a5, a4, a0
80005208: 93 d5 37 00  	srli	a1, a5, 3
8000520c: b3 87 05 03  	mul	a5, a1, a6
80005210: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005214: 13 e6 07 03  	ori	a2, a5, 48
80005218: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000521c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005220: 13 0c 1c 00  	addi	s8, s8, 1
80005224: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005228: 33 b6 e2 00  	sltu	a2, t0, a4
8000522c: 33 f6 c7 00  	and	a2, a5, a2
80005230: 93 8d fd ff  	addi	s11, s11, -1
80005234: 13 04 f4 ff  	addi	s0, s0, -1
80005238: 13 87 05 00  	mv	a4, a1
8000523c: e3 14 06 fc  	bnez	a2, 0x80005204 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80005240: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005244: 33 35 ac 00  	sltu	a0, s8, a0
80005248: 13 45 15 00  	xori	a0, a0, 1
8000524c: 93 c5 17 00  	xori	a1, a5, 1
80005250: 33 e5 a5 00  	or	a0, a1, a0
80005254: 63 12 05 04  	bnez	a0, 0x80005298 <.LBB5_58+0x1b0>
80005258: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000525c: b3 85 8c 41  	sub	a1, s9, s8
80005260: 93 85 d5 ff  	addi	a1, a1, -3
80005264: 13 06 f0 01  	addi	a2, zero, 31
80005268: 33 06 86 41  	sub	a2, a2, s8
8000526c: 33 05 85 01  	add	a0, a0, s8
80005270: 63 e4 c5 00  	bltu	a1, a2, 0x80005278 <.LBB5_58+0x190>
80005274: 93 05 06 00  	mv	a1, a2
80005278: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000527c: 93 05 00 03  	addi	a1, zero, 48
80005280: 97 b0 ff ff  	auipc	ra, 1048571
80005284: e7 80 80 2d  	jalr	728(ra)
;   if (flags & FLAGS_HASH) {
80005288: 63 e4 8d 00  	bltu	s11, s0, 0x80005290 <.LBB5_58+0x1a8>
8000528c: 93 0d 04 00  	mv	s11, s0
80005290: 33 85 8d 01  	add	a0, s11, s8
80005294: 13 0c 15 00  	addi	s8, a0, 1
80005298: 83 2c c1 00  	lw	s9, 12(sp)
8000529c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800052a0: 63 60 85 03  	bltu	a0, s8, 0x800052c0 <.LBB5_58+0x1d8>
800052a4: 13 05 c1 02  	addi	a0, sp, 44
800052a8: 33 05 85 01  	add	a0, a0, s8
800052ac: 93 05 d0 02  	addi	a1, zero, 45
800052b0: 63 94 0a 00  	bnez	s5, 0x800052b8 <.LBB5_58+0x1d0>
800052b4: 93 05 b0 02  	addi	a1, zero, 43
800052b8: 13 0c 1c 00  	addi	s8, s8, 1
800052bc: 23 00 b5 00  	sb	a1, 0(a0)
800052c0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800052c4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800052c8: 33 85 8a 01  	add	a0, s5, s8
800052cc: 03 45 05 00  	lbu	a0, 0(a0)
800052d0: 13 06 04 00  	mv	a2, s0
800052d4: 93 04 fc ff  	addi	s1, s8, -1
800052d8: 13 04 14 00  	addi	s0, s0, 1
800052dc: 93 05 0b 00  	mv	a1, s6
800052e0: 93 86 09 00  	mv	a3, s3
800052e4: e7 80 0b 00  	jalr	s7
800052e8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800052ec: e3 9e 04 fc  	bnez	s1, 0x800052c8 <.LBB5_58+0x1e0>
800052f0: 33 05 44 41  	sub	a0, s0, s4
800052f4: 33 35 25 01  	sltu	a0, a0, s2
800052f8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800052fc: 93 c5 1c 00  	xori	a1, s9, 1
80005300: 33 e5 a5 00  	or	a0, a1, a0
80005304: 63 18 05 02  	bnez	a0, 0x80005334 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80005308: b3 04 40 41  	neg	s1, s4
8000530c: 13 0d 14 00  	addi	s10, s0, 1
80005310: 13 05 00 02  	addi	a0, zero, 32
80005314: 93 05 0b 00  	mv	a1, s6
80005318: 13 06 04 00  	mv	a2, s0
8000531c: 93 86 09 00  	mv	a3, s3
80005320: e7 80 0b 00  	jalr	s7
80005324: 33 85 a4 01  	add	a0, s1, s10
80005328: 13 04 0d 00  	mv	s0, s10
8000532c: e3 60 25 ff  	bltu	a0, s2, 0x8000530c <.LBB5_58+0x224>
80005330: 6f 00 80 00  	j	0x80005338 <.LBB5_58+0x250>
80005334: 13 0d 04 00  	mv	s10, s0
; }
80005338: 13 05 0d 00  	mv	a0, s10
8000533c: 83 2d c1 04  	lw	s11, 76(sp)
80005340: 03 2d 01 05  	lw	s10, 80(sp)
80005344: 83 2c 41 05  	lw	s9, 84(sp)
80005348: 03 2c 81 05  	lw	s8, 88(sp)
8000534c: 83 2b c1 05  	lw	s7, 92(sp)
80005350: 03 2b 01 06  	lw	s6, 96(sp)
80005354: 83 2a 41 06  	lw	s5, 100(sp)
80005358: 03 2a 81 06  	lw	s4, 104(sp)
8000535c: 83 29 c1 06  	lw	s3, 108(sp)
80005360: 03 29 01 07  	lw	s2, 112(sp)
80005364: 83 24 41 07  	lw	s1, 116(sp)
80005368: 03 24 81 07  	lw	s0, 120(sp)
8000536c: 83 20 c1 07  	lw	ra, 124(sp)
80005370: 13 01 01 08  	addi	sp, sp, 128
80005374: 67 80 00 00  	ret

80005378 <_ntoa_format>:
; {
80005378: 13 01 01 fc  	addi	sp, sp, -64
8000537c: 23 2e 11 02  	sw	ra, 60(sp)
80005380: 23 2c 81 02  	sw	s0, 56(sp)
80005384: 23 2a 91 02  	sw	s1, 52(sp)
80005388: 23 28 21 03  	sw	s2, 48(sp)
8000538c: 23 26 31 03  	sw	s3, 44(sp)
80005390: 23 24 41 03  	sw	s4, 40(sp)
80005394: 23 22 51 03  	sw	s5, 36(sp)
80005398: 23 20 61 03  	sw	s6, 32(sp)
8000539c: 23 2e 71 01  	sw	s7, 28(sp)
800053a0: 23 2c 81 01  	sw	s8, 24(sp)
800053a4: 23 2a 91 01  	sw	s9, 20(sp)
800053a8: 23 28 a1 01  	sw	s10, 16(sp)
800053ac: 23 26 b1 01  	sw	s11, 12(sp)
800053b0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800053b4: 93 fa 2e 00  	andi	s5, t4, 2
800053b8: 13 09 0e 00  	mv	s2, t3
800053bc: 13 8d 03 00  	mv	s10, t2
800053c0: 93 8c 08 00  	mv	s9, a7
800053c4: 13 8c 07 00  	mv	s8, a5
800053c8: 93 89 06 00  	mv	s3, a3
800053cc: 13 0a 06 00  	mv	s4, a2
800053d0: 13 8b 05 00  	mv	s6, a1
800053d4: 93 0d 05 00  	mv	s11, a0
800053d8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800053dc: 63 9e 0a 0c  	bnez	s5, 0x800054b8 <_ntoa_format+0x140>
800053e0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800053e4: 63 0e 09 00  	beqz	s2, 0x80005400 <_ntoa_format+0x88>
800053e8: 63 0e 04 00  	beqz	s0, 0x80005404 <_ntoa_format+0x8c>
800053ec: 13 f5 cb 00  	andi	a0, s7, 12
800053f0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800053f4: 33 65 05 01  	or	a0, a0, a6
800053f8: 33 09 a9 40  	sub	s2, s2, a0
800053fc: 6f 00 80 00  	j	0x80005404 <_ntoa_format+0x8c>
80005400: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005404: 33 35 ac 01  	sltu	a0, s8, s10
80005408: 93 45 15 00  	xori	a1, a0, 1
8000540c: 13 05 f0 01  	addi	a0, zero, 31
80005410: 33 36 85 01  	sltu	a2, a0, s8
80005414: b3 65 b6 00  	or	a1, a2, a1
80005418: 63 94 05 04  	bnez	a1, 0x80005460 <_ntoa_format+0xe8>
8000541c: 23 22 51 01  	sw	s5, 4(sp)
80005420: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005424: 93 45 fc ff  	not	a1, s8
80005428: b3 85 a5 01  	add	a1, a1, s10
8000542c: 33 06 85 41  	sub	a2, a0, s8
80005430: 33 05 87 01  	add	a0, a4, s8
80005434: 63 e4 c5 00  	bltu	a1, a2, 0x8000543c <_ntoa_format+0xc4>
80005438: 93 05 06 00  	mv	a1, a2
8000543c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80005440: 93 05 00 03  	addi	a1, zero, 48
80005444: 13 86 04 00  	mv	a2, s1
80005448: 97 b0 ff ff  	auipc	ra, 1048571
8000544c: e7 80 00 11  	jalr	272(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005450: 33 8c 84 01  	add	s8, s1, s8
80005454: 03 27 81 00  	lw	a4, 8(sp)
80005458: 13 88 0a 00  	mv	a6, s5
8000545c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005460: 63 0c 04 04  	beqz	s0, 0x800054b8 <_ntoa_format+0x140>
80005464: 33 35 2c 01  	sltu	a0, s8, s2
80005468: 93 45 15 00  	xori	a1, a0, 1
8000546c: 13 05 f0 01  	addi	a0, zero, 31
80005470: 33 36 85 01  	sltu	a2, a0, s8
80005474: b3 e5 c5 00  	or	a1, a1, a2
80005478: 63 90 05 04  	bnez	a1, 0x800054b8 <_ntoa_format+0x140>
8000547c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005480: 93 45 fc ff  	not	a1, s8
80005484: b3 05 b9 00  	add	a1, s2, a1
80005488: 33 06 85 41  	sub	a2, a0, s8
8000548c: 33 05 87 01  	add	a0, a4, s8
80005490: 63 e4 c5 00  	bltu	a1, a2, 0x80005498 <_ntoa_format+0x120>
80005494: 93 05 06 00  	mv	a1, a2
80005498: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000549c: 93 05 00 03  	addi	a1, zero, 48
800054a0: 13 86 04 00  	mv	a2, s1
800054a4: 97 b0 ff ff  	auipc	ra, 1048571
800054a8: e7 80 40 0b  	jalr	180(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800054ac: 33 8c 84 01  	add	s8, s1, s8
800054b0: 03 27 81 00  	lw	a4, 8(sp)
800054b4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800054b8: 13 f5 0b 01  	andi	a0, s7, 16
800054bc: 63 02 05 0e  	beqz	a0, 0x800055a0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800054c0: 13 f5 0b 40  	andi	a0, s7, 1024
800054c4: 13 55 a5 00  	srli	a0, a0, 10
800054c8: 93 35 1c 00  	seqz	a1, s8
800054cc: 33 65 b5 00  	or	a0, a0, a1
800054d0: 63 1e 05 02  	bnez	a0, 0x8000550c <_ntoa_format+0x194>
800054d4: 33 45 ac 01  	xor	a0, s8, s10
800054d8: 33 35 a0 00  	snez	a0, a0
800054dc: b3 45 2c 01  	xor	a1, s8, s2
800054e0: b3 35 b0 00  	snez	a1, a1
800054e4: 33 75 b5 00  	and	a0, a0, a1
800054e8: 63 12 05 02  	bnez	a0, 0x8000550c <_ntoa_format+0x194>
;       len--;
800054ec: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800054f0: b3 35 a0 00  	snez	a1, a0
800054f4: 13 86 0c ff  	addi	a2, s9, -16
800054f8: 13 36 16 00  	seqz	a2, a2
800054fc: b3 75 b6 00  	and	a1, a2, a1
80005500: 63 84 05 00  	beqz	a1, 0x80005508 <_ntoa_format+0x190>
80005504: 13 05 ec ff  	addi	a0, s8, -2
80005508: 13 0c 05 00  	mv	s8, a0
8000550c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005510: 63 96 ac 02  	bne	s9, a0, 0x8000553c <_ntoa_format+0x1c4>
80005514: 13 f5 0b 02  	andi	a0, s7, 32
80005518: 93 55 55 00  	srli	a1, a0, 5
8000551c: 13 06 f0 01  	addi	a2, zero, 31
80005520: 33 36 86 01  	sltu	a2, a2, s8
80005524: b3 e5 c5 00  	or	a1, a1, a2
80005528: 63 9e 05 02  	bnez	a1, 0x80005564 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
8000552c: 33 05 87 01  	add	a0, a4, s8
80005530: 13 0c 1c 00  	addi	s8, s8, 1
80005534: 93 05 80 07  	addi	a1, zero, 120
80005538: 6f 00 c0 04  	j	0x80005584 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000553c: 13 85 ec ff  	addi	a0, s9, -2
80005540: 33 35 a0 00  	snez	a0, a0
80005544: 93 05 f0 01  	addi	a1, zero, 31
80005548: b3 b5 85 01  	sltu	a1, a1, s8
8000554c: 33 65 b5 00  	or	a0, a0, a1
80005550: 63 1c 05 02  	bnez	a0, 0x80005588 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80005554: 33 05 87 01  	add	a0, a4, s8
80005558: 13 0c 1c 00  	addi	s8, s8, 1
8000555c: 93 05 20 06  	addi	a1, zero, 98
80005560: 6f 00 40 02  	j	0x80005584 <_ntoa_format+0x20c>
80005564: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005568: 13 35 15 00  	seqz	a0, a0
8000556c: 93 c5 15 00  	xori	a1, a1, 1
80005570: 33 65 b5 00  	or	a0, a0, a1
80005574: 63 1a 05 00  	bnez	a0, 0x80005588 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80005578: 33 05 87 01  	add	a0, a4, s8
8000557c: 13 0c 1c 00  	addi	s8, s8, 1
80005580: 93 05 80 05  	addi	a1, zero, 88
80005584: 23 00 b5 00  	sb	a1, 0(a0)
80005588: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000558c: 63 60 85 07  	bltu	a0, s8, 0x800055ec <_ntoa_format+0x274>
;       buf[len++] = '0';
80005590: 33 05 87 01  	add	a0, a4, s8
80005594: 13 0c 1c 00  	addi	s8, s8, 1
80005598: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000559c: 23 00 b5 00  	sb	a1, 0(a0)
800055a0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800055a4: 63 64 85 05  	bltu	a0, s8, 0x800055ec <_ntoa_format+0x274>
;     if (negative) {
800055a8: 63 0a 08 00  	beqz	a6, 0x800055bc <_ntoa_format+0x244>
;       buf[len++] = '-';
800055ac: 33 05 87 01  	add	a0, a4, s8
800055b0: 13 0c 1c 00  	addi	s8, s8, 1
800055b4: 93 05 d0 02  	addi	a1, zero, 45
800055b8: 6f 00 00 03  	j	0x800055e8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800055bc: 13 f5 4b 00  	andi	a0, s7, 4
800055c0: 63 1e 05 00  	bnez	a0, 0x800055dc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800055c4: 13 f5 8b 00  	andi	a0, s7, 8
800055c8: 63 02 05 02  	beqz	a0, 0x800055ec <_ntoa_format+0x274>
;       buf[len++] = ' ';
800055cc: 33 05 87 01  	add	a0, a4, s8
800055d0: 13 0c 1c 00  	addi	s8, s8, 1
800055d4: 93 05 00 02  	addi	a1, zero, 32
800055d8: 6f 00 00 01  	j	0x800055e8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800055dc: 33 05 87 01  	add	a0, a4, s8
800055e0: 13 0c 1c 00  	addi	s8, s8, 1
800055e4: 93 05 b0 02  	addi	a1, zero, 43
800055e8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800055ec: 13 f5 3b 00  	andi	a0, s7, 3
800055f0: 33 35 a0 00  	snez	a0, a0
800055f4: b3 35 2c 01  	sltu	a1, s8, s2
800055f8: 93 c5 15 00  	xori	a1, a1, 1
800055fc: 33 65 b5 00  	or	a0, a0, a1
80005600: 13 04 0a 00  	mv	s0, s4
80005604: 63 16 05 02  	bnez	a0, 0x80005630 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80005608: b3 04 89 41  	sub	s1, s2, s8
8000560c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005610: 13 04 16 00  	addi	s0, a2, 1
80005614: 13 05 00 02  	addi	a0, zero, 32
80005618: 93 05 0b 00  	mv	a1, s6
8000561c: 93 86 09 00  	mv	a3, s3
80005620: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80005624: 93 84 f4 ff  	addi	s1, s1, -1
80005628: 13 06 04 00  	mv	a2, s0
8000562c: e3 92 04 fe  	bnez	s1, 0x80005610 <_ntoa_format+0x298>
80005630: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80005634: 63 0e 0c 02  	beqz	s8, 0x80005670 <_ntoa_format+0x2f8>
80005638: 03 25 81 00  	lw	a0, 8(sp)
8000563c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80005640: 33 85 8b 01  	add	a0, s7, s8
80005644: 03 45 05 00  	lbu	a0, 0(a0)
80005648: 93 0c fc ff  	addi	s9, s8, -1
8000564c: 93 04 14 00  	addi	s1, s0, 1
80005650: 93 05 0b 00  	mv	a1, s6
80005654: 13 06 04 00  	mv	a2, s0
80005658: 93 86 09 00  	mv	a3, s3
8000565c: e7 80 0d 00  	jalr	s11
80005660: 13 84 04 00  	mv	s0, s1
80005664: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80005668: e3 9c 0c fc  	bnez	s9, 0x80005640 <_ntoa_format+0x2c8>
8000566c: 6f 00 80 00  	j	0x80005674 <_ntoa_format+0x2fc>
80005670: 93 04 04 00  	mv	s1, s0
80005674: 33 85 44 41  	sub	a0, s1, s4
80005678: 33 35 25 01  	sltu	a0, a0, s2
8000567c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005680: 93 c5 1a 00  	xori	a1, s5, 1
80005684: 33 e5 a5 00  	or	a0, a1, a0
80005688: 63 18 05 02  	bnez	a0, 0x800056b8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000568c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005690: 13 84 14 00  	addi	s0, s1, 1
80005694: 13 05 00 02  	addi	a0, zero, 32
80005698: 93 05 0b 00  	mv	a1, s6
8000569c: 13 86 04 00  	mv	a2, s1
800056a0: 93 86 09 00  	mv	a3, s3
800056a4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800056a8: 33 05 8a 00  	add	a0, s4, s0
800056ac: 93 04 04 00  	mv	s1, s0
800056b0: e3 60 25 ff  	bltu	a0, s2, 0x80005690 <_ntoa_format+0x318>
800056b4: 6f 00 80 00  	j	0x800056bc <_ntoa_format+0x344>
800056b8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800056bc: 13 05 04 00  	mv	a0, s0
800056c0: 83 2d c1 00  	lw	s11, 12(sp)
800056c4: 03 2d 01 01  	lw	s10, 16(sp)
800056c8: 83 2c 41 01  	lw	s9, 20(sp)
800056cc: 03 2c 81 01  	lw	s8, 24(sp)
800056d0: 83 2b c1 01  	lw	s7, 28(sp)
800056d4: 03 2b 01 02  	lw	s6, 32(sp)
800056d8: 83 2a 41 02  	lw	s5, 36(sp)
800056dc: 03 2a 81 02  	lw	s4, 40(sp)
800056e0: 83 29 c1 02  	lw	s3, 44(sp)
800056e4: 03 29 01 03  	lw	s2, 48(sp)
800056e8: 83 24 41 03  	lw	s1, 52(sp)
800056ec: 03 24 81 03  	lw	s0, 56(sp)
800056f0: 83 20 c1 03  	lw	ra, 60(sp)
800056f4: 13 01 01 04  	addi	sp, sp, 64
800056f8: 67 80 00 00  	ret

800056fc <_snrt_init_team>:
;     team->base.root = team;
800056fc: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80005700: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80005704: 03 23 87 00  	lw	t1, 8(a4)
80005708: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000570c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80005710: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80005714: 83 22 47 00  	lw	t0, 4(a4)
80005718: 33 88 08 03  	mul	a6, a7, a6
8000571c: 33 05 58 02  	mul	a0, a6, t0
80005720: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80005724: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80005728: 33 85 68 40  	sub	a0, a7, t1
8000572c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80005730: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80005734: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80005738: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000573c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80005740: 03 25 87 01  	lw	a0, 24(a4)
80005744: b7 05 00 10  	lui	a1, 65536
80005748: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000574c: 23 a2 07 02  	sw	zero, 36(a5)
80005750: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80005754: 03 25 07 02  	lw	a0, 32(a4)
80005758: 83 25 47 02  	lw	a1, 36(a4)
8000575c: 23 a4 a7 02  	sw	a0, 40(a5)
80005760: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80005764: 23 a8 c7 02  	sw	a2, 48(a5)
80005768: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
8000576c: 23 ac d7 02  	sw	a3, 56(a5)
80005770: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80005774: 03 25 07 01  	lw	a0, 16(a4)
80005778: 33 08 a6 00  	add	a6, a2, a0
8000577c: 93 05 08 19  	addi	a1, a6, 400
80005780: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80005784: b3 32 a8 00  	sltu	t0, a6, a0
80005788: 93 55 15 00  	srli	a1, a0, 1
8000578c: 33 03 b8 00  	add	t1, a6, a1
80005790: b3 35 03 01  	sltu	a1, t1, a6
80005794: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80005798: 23 a0 67 04  	sw	t1, 64(a5)
8000579c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800057a0: 13 15 15 00  	slli	a0, a0, 1
800057a4: b3 05 c5 00  	add	a1, a0, a2
800057a8: 33 b5 a5 00  	sltu	a0, a1, a0
800057ac: 23 a4 b7 04  	sw	a1, 72(a5)
800057b0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800057b4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800057b8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800057bc: 37 05 00 00  	lui	a0, 0
800057c0: 33 05 45 00  	add	a0, a0, tp
800057c4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800057c8: 03 a5 07 00  	lw	a0, 0(a5)
800057cc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800057d0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800057d4: b3 85 b8 40  	sub	a1, a7, a1
800057d8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800057dc: b7 05 00 00  	lui	a1, 0
800057e0: b3 85 45 00  	add	a1, a1, tp
800057e4: 23 a2 a5 00  	sw	a0, 4(a1)
800057e8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800057ec: 33 85 a8 02  	mul	a0, a7, a0

800057f0 <.LBB0_1>:
800057f0: 97 15 00 00  	auipc	a1, 1
800057f4: 93 85 45 99  	addi	a1, a1, -1644
800057f8: 33 05 b5 00  	add	a0, a0, a1
800057fc: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80005800: 83 28 07 03  	lw	a7, 48(a4)
80005804: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80005808: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000580c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80005810: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80005814: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80005818: 13 05 76 00  	addi	a0, a2, 7
8000581c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80005820: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80005824: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80005828: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000582c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80005830: 03 a5 05 00  	lw	a0, 0(a1)
80005834: 13 05 f5 44  	addi	a0, a0, 1103
80005838: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000583c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80005840: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80005844: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80005848: 37 05 00 00  	lui	a0, 0
8000584c: 33 05 45 00  	add	a0, a0, tp
80005850: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80005854: 37 05 00 00  	lui	a0, 0
80005858: 33 05 45 00  	add	a0, a0, tp
8000585c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80005860: 67 80 00 00  	ret

80005864 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005864: 37 05 00 00  	lui	a0, 0
80005868: 33 05 45 00  	add	a0, a0, tp
8000586c: 03 25 05 00  	lw	a0, 0(a0)
80005870: 03 25 05 00  	lw	a0, 0(a0)
80005874: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80005878: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000587c: 33 85 a5 40  	sub	a0, a1, a0
80005880: 67 80 00 00  	ret

80005884 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80005884: 37 05 00 00  	lui	a0, 0
80005888: 33 05 45 00  	add	a0, a0, tp
8000588c: 03 25 05 00  	lw	a0, 0(a0)
80005890: 03 25 05 00  	lw	a0, 0(a0)
80005894: 03 25 05 07  	lw	a0, 112(a0)
80005898: 67 80 00 00  	ret

8000589c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000589c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800058a0: 63 44 05 00  	bltz	a0, 0x800058a8 <__snrt_isr+0xc>
;         while (1)
800058a4: 6f 00 00 00  	j	0x800058a4 <__snrt_isr+0x8>
800058a8: b7 05 00 80  	lui	a1, 524288
800058ac: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800058b0: 33 75 b5 00  	and	a0, a0, a1
800058b4: 13 05 d5 ff  	addi	a0, a0, -3
800058b8: 93 55 25 00  	srli	a1, a0, 2
800058bc: 13 15 e5 01  	slli	a0, a0, 30
800058c0: 33 65 b5 00  	or	a0, a0, a1
800058c4: 93 05 40 00  	addi	a1, zero, 4
800058c8: 63 0a b5 06  	beq	a0, a1, 0x8000593c <.LBB1_7+0x58>
800058cc: 63 1a 05 08  	bnez	a0, 0x80005960 <.LBB1_7+0x7c>
800058d0: 37 05 00 00  	lui	a0, 0
800058d4: 33 05 45 00  	add	a0, a0, tp
800058d8: 03 25 05 00  	lw	a0, 0(a0)
800058dc: 03 25 05 00  	lw	a0, 0(a0)
800058e0: f3 25 40 f1  	csrr	a1, mhartid

800058e4 <.LBB1_7>:
;     asm volatile(
800058e4: 17 16 00 00  	auipc	a2, 1
800058e8: 13 06 c6 89  	addi	a2, a2, -1892
800058ec: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800058f0: 93 06 06 00  	mv	a3, a2
800058f4: 93 02 10 00  	addi	t0, zero, 1
800058f8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800058fc: e3 9e 02 fe  	bnez	t0, 0x800058f8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80005900: b7 06 00 00  	lui	a3, 0
80005904: b3 86 46 00  	add	a3, a3, tp
80005908: 83 a6 86 00  	lw	a3, 8(a3)
8000590c: 33 85 a5 40  	sub	a0, a1, a0
80005910: 93 55 35 00  	srli	a1, a0, 3
80005914: 93 f5 c5 ff  	andi	a1, a1, -4
80005918: b3 85 b6 00  	add	a1, a3, a1
8000591c: 83 a6 05 00  	lw	a3, 0(a1)
80005920: 13 07 10 00  	addi	a4, zero, 1
80005924: 33 15 a7 00  	sll	a0, a4, a0
80005928: 13 45 f5 ff  	not	a0, a0
8000592c: 33 f5 a6 00  	and	a0, a3, a0
80005930: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80005934: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80005938: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000593c: 37 05 00 00  	lui	a0, 0
80005940: 33 05 45 00  	add	a0, a0, tp
80005944: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80005948: b7 05 00 00  	lui	a1, 0
8000594c: b3 85 45 00  	add	a1, a1, tp
80005950: 83 a5 c5 00  	lw	a1, 12(a1)
80005954: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80005958: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000595c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80005960: 67 80 00 00  	ret

Disassembly of section .init:

80005970 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80005970: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80005974: 93 81 81 f1  	addi	gp, gp, -232

80005978 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80005978: 97 00 00 00  	auipc	ra, 0
8000597c: e7 80 40 3c  	jalr	964(ra)

80005980 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005980: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005984: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005988: 97 00 00 00  	auipc	ra, 0
8000598c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80005990: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80005994: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80005998: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000599c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800059a0: 63 92 02 02  	bnez	t0, 0x800059c4 <snrt.crt0.init_registers>

800059a4 <.Lpcrel_hi0>:
;     la        t0, _edata
800059a4: 97 02 00 00  	auipc	t0, 0
800059a8: 93 82 c2 7d  	addi	t0, t0, 2012

800059ac <.Lpcrel_hi1>:
;     la        t1, _end
800059ac: 17 03 00 00  	auipc	t1, 0
800059b0: 13 03 83 7d  	addi	t1, t1, 2008
;     bge       t0, t1, 2f
800059b4: 63 d8 62 00  	bge	t0, t1, 0x800059c4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800059b8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800059bc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800059c0: e3 cc 62 fe  	blt	t0, t1, 0x800059b8 <.Lpcrel_hi1+0xc>

800059c4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800059c4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800059c8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800059cc: 63 82 02 08  	beqz	t0, 0x80005a50 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800059d0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800059d4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800059d8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800059dc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800059e0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800059e4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800059e8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800059ec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800059f0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800059f4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800059f8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800059fc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80005a00: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80005a04: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80005a08: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80005a0c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80005a10: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80005a14: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80005a18: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80005a1c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80005a20: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80005a24: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80005a28: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80005a2c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80005a30: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80005a34: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80005a38: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80005a3c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80005a40: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80005a44: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80005a48: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80005a4c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80005a50 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80005a50: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80005a54: 23 a0 06 00  	sw	zero, 0(a3)

80005a58 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80005a58: 97 02 00 00  	auipc	t0, 0
80005a5c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80005a60: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80005a64: 93 87 06 00  	mv	a5, a3

80005a68 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80005a68: 97 03 00 00  	auipc	t2, 0
80005a6c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80005a70: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80005a74: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80005a78: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80005a7c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005a80: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005a84: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005a88: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80005a8c: b3 86 66 40  	sub	a3, a3, t1

80005a90 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80005a90: 97 02 00 00  	auipc	t0, 0
80005a94: 93 82 82 5f  	addi	t0, t0, 1528

80005a98 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80005a98: 17 03 00 00  	auipc	t1, 0
80005a9c: 13 03 03 5f  	addi	t1, t1, 1520

80005aa0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80005aa0: 97 03 00 00  	auipc	t2, 0
80005aa4: 93 83 83 5e  	addi	t2, t2, 1512

80005aa8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80005aa8: 17 0e 00 00  	auipc	t3, 0
80005aac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005ab0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005ab4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005ab8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80005abc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80005ac0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80005ac4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80005ac8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80005acc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80005ad0: 63 dc 62 00  	bge	t0, t1, 0x80005ae8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80005ad4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80005ad8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80005adc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005ae0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80005ae4: e3 c8 62 fe  	blt	t0, t1, 0x80005ad4 <.Lpcrel_hi7+0x2c>

80005ae8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80005ae8: 97 02 00 00  	auipc	t0, 0
80005aec: 93 82 02 5a  	addi	t0, t0, 1440

80005af0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005af0: 17 03 00 00  	auipc	t1, 0
80005af4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80005af8: 63 da 62 00  	bge	t0, t1, 0x80005b0c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80005afc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005b00: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005b04: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005b08: e3 ca 72 fe  	blt	t0, t2, 0x80005afc <.Lpcrel_hi9+0xc>

80005b0c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80005b0c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005b10: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005b14: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005b18: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80005b1c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005b20: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005b24: 97 00 00 00  	auipc	ra, 0
80005b28: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80005b2c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005b30: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005b34: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005b38: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80005b3c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005b40: 13 01 41 01  	addi	sp, sp, 20

80005b44 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005b44: 97 02 00 00  	auipc	t0, 0
80005b48: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80005b4c: 73 90 52 30  	csrw	mtvec, t0

80005b50 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80005b50: 97 00 00 00  	auipc	ra, 0
80005b54: e7 80 00 22  	jalr	544(ra)

80005b58 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80005b58: 97 b0 ff ff  	auipc	ra, 1048571
80005b5c: e7 80 c0 ad  	jalr	-1316(ra)
;     mv        s0, a0 # store return value in s0
80005b60: 13 04 05 00  	mv	s0, a0

80005b64 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005b64: 97 00 00 00  	auipc	ra, 0
80005b68: e7 80 c0 20  	jalr	524(ra)

80005b6c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80005b6c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005b70: 97 00 00 00  	auipc	ra, 0
80005b74: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005b78: 73 00 50 10  	wfi	
;     j       1b
80005b7c: 6f f0 df ff  	j	0x80005b78 <snrt.crt0.end+0xc>

80005b80 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005b80: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005b84: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005b88: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80005b8c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005b90: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005b94: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005b98: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80005b9c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005ba0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005ba4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005ba8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80005bac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005bb0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005bb4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005bb8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80005bbc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005bc0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005bc4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005bc8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005bcc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005bd0: 63 84 02 08  	beqz	t0, 0x80005c58 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005bd4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005bd8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80005bdc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005be0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005be4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005be8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80005bec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005bf0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005bf4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005bf8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80005bfc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005c00: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005c04: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005c08: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80005c0c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005c10: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005c14: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005c18: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80005c1c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005c20: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005c24: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005c28: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80005c2c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005c30: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005c34: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005c38: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80005c3c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005c40: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005c44: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005c48: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80005c4c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80005c50: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80005c54: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80005c58: 97 00 00 00  	auipc	ra, 0
80005c5c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80005c60: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005c64: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005c68: 63 84 02 08  	beqz	t0, 0x80005cf0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80005c6c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005c70: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005c74: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005c78: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80005c7c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005c80: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005c84: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005c88: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80005c8c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005c90: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005c94: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005c98: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80005c9c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005ca0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005ca4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005ca8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80005cac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005cb0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005cb4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005cb8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80005cbc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005cc0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005cc4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005cc8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80005ccc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005cd0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005cd4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005cd8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80005cdc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005ce0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005ce4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005ce8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80005cec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005cf0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005cf4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005cf8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80005cfc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005d00: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005d04: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005d08: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80005d0c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005d10: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005d14: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005d18: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80005d1c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005d20: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005d24: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005d28: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80005d2c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005d30: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005d34: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005d38: 73 00 20 30  	mret	

80005d3c <_snrt_init_core_info>:
;     mv        a4, a1
80005d3c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005d40: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005d44: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005d48: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80005d4c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80005d50: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80005d54: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80005d58: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80005d5c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005d60: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005d64: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005d68: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80005d6c: 67 80 00 00  	ret

80005d70 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005d70: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005d74: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005d78: 97 00 00 00  	auipc	ra, 0
80005d7c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005d80: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005d84: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005d88: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80005d8c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005d90: 67 80 00 00  	ret

80005d94 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005d94: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005d98: 67 80 00 00  	ret

80005d9c <_snrt_exit>:
;     addi      sp, sp, -8
80005d9c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005da0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005da4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005da8: 97 00 00 00  	auipc	ra, 0
80005dac: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80005db0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005db4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005db8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80005dbc: 63 1c 05 00  	bnez	a0, 0x80005dd4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005dc0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005dc4: 93 e2 12 00  	ori	t0, t0, 1

80005dc8 <.Lpcrel_hi11>:
;     la        t1, tohost
80005dc8: 17 03 00 00  	auipc	t1, 0
80005dcc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
80005dd0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005dd4: 67 80 00 00  	ret
