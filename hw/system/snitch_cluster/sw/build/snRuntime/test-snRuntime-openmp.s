
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-openmp:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00004448 80000000 TEXT
  2 .init             00000468 80004450 TEXT
  3 .rodata           00000534 800048b8 DATA
  4 .htif             00000048 80004e00 DATA
  5 .tdata            00000000 80004e48 DATA
  6 .tbss             00000018 80004e48 BSS
  7 .tbssend          00000000 80004e60 DATA
  8 .sdata            000000c0 80004e60 DATA
  9 .data             00010014 80004f20 DATA
 10 .sbss             00000040 80014f38 BSS
 11 .bss              00000000 80014f78 BSS
 12 .dram             00000000 80014f78 DATA
 13 .debug_info       0000755c 00000000 
 14 .debug_abbrev     00001aaf 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00005dd8 00000000 
 17 .debug_loc        000049ca 00000000 
 18 .debug_ranges     00000cc0 00000000 
 19 .debug_str        000016e7 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000005b4 00000000 
 23 .symtab           00006310 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000e32 00000000 


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

80000634 <static_schedule>:
; unsigned __attribute__((noinline)) static_schedule(void) {
80000634: 13 01 01 ff  	addi	sp, sp, -16
;     return _snrt_team_current->root;
80000638: 23 26 11 00  	sw	ra, 12(sp)
8000063c: 23 24 81 00  	sw	s0, 8(sp)
80000640: 27 30 81 00  	fsd	fs0, 0(sp)
80000644: 37 05 00 00  	lui	a0, 0
80000648: 33 05 45 00  	add	a0, a0, tp
8000064c: 03 25 05 00  	lw	a0, 0(a0)
80000650: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000654: 03 27 85 05  	lw	a4, 88(a0)
80000658: 83 25 05 05  	lw	a1, 80(a0)
8000065c: 03 26 45 05  	lw	a2, 84(a0)
80000660: 93 07 07 20  	addi	a5, a4, 512
80000664: b3 05 b6 00  	add	a1, a2, a1
80000668: 63 f8 f5 00  	bgeu	a1, a5, 0x80000678 <static_schedule+0x44>
8000066c: 93 06 00 00  	mv	a3, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80000670: 13 86 07 00  	mv	a2, a5
80000674: 6f 00 40 01  	j	0x80000688 <.LBB0_13>
;     void *ret = (void *)alloc->next;
80000678: 93 06 07 00  	mv	a3, a4
;     alloc->next += size;
8000067c: 23 2c f5 04  	sw	a5, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000680: 13 06 07 40  	addi	a2, a4, 1024
80000684: 13 87 07 00  	mv	a4, a5

80000688 <.LBB0_13>:
;     data_x = snrt_l1alloc(sizeof(double) * AXPY_N);
80000688: 97 57 01 00  	auipc	a5, 21
8000068c: 93 87 07 8b  	addi	a5, a5, -1872
80000690: 23 a0 d7 00  	sw	a3, 0(a5)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000694: 63 f6 c5 00  	bgeu	a1, a2, 0x800006a0 <.LBB0_13+0x18>
80000698: 13 07 00 00  	mv	a4, zero
8000069c: 6f 00 80 00  	j	0x800006a4 <.LBB0_13+0x1c>
;     alloc->next += size;
800006a0: 23 2c c5 04  	sw	a2, 88(a0)
800006a4: 13 05 00 00  	mv	a0, zero

800006a8 <.LBB0_14>:
;     data_y = snrt_l1alloc(sizeof(double) * AXPY_N);
800006a8: 17 54 01 00  	auipc	s0, 21
800006ac: 13 04 44 89  	addi	s0, s0, -1900
800006b0: 23 20 e4 00  	sw	a4, 0(s0)

800006b4 <.LBB0_15>:
800006b4: 97 55 01 00  	auipc	a1, 21
800006b8: 93 85 c5 88  	addi	a1, a1, -1908
800006bc: 37 06 24 40  	lui	a2, 262720
;     data_a = 10.0;
800006c0: 23 a2 c5 00  	sw	a2, 4(a1)
800006c4: 23 a0 05 00  	sw	zero, 0(a1)

800006c8 <.LBB0_16>:
800006c8: 97 45 00 00  	auipc	a1, 4
800006cc: 93 85 85 79  	addi	a1, a1, 1944
800006d0: 07 b4 05 00  	fld	fs0, 0(a1)
800006d4: 53 00 00 d2  	fcvt.d.w	ft0, zero
800006d8: 93 05 10 00  	addi	a1, zero, 1
800006dc: 13 06 00 20  	addi	a2, zero, 512
;         data_x[i] = (double)(i);
800006e0: b3 87 a6 00  	add	a5, a3, a0
800006e4: 27 b0 07 00  	fsd	ft0, 0(a5)
800006e8: 53 70 80 02  	fadd.d	ft0, ft0, fs0
;         data_y[i] = (double)(i + 1);
800006ec: d3 80 15 d2  	fcvt.d.wu	ft1, a1
800006f0: b3 07 a7 00  	add	a5, a4, a0
800006f4: 27 b0 17 00  	fsd	ft1, 0(a5)
;     for (unsigned i = 0; i < AXPY_N; i++) {
800006f8: 13 05 85 00  	addi	a0, a0, 8
800006fc: 93 85 15 00  	addi	a1, a1, 1
80000700: e3 10 c5 fe  	bne	a0, a2, 0x800006e0 <.LBB0_16+0x18>

80000704 <.LBB0_17>:
; #pragma omp parallel firstprivate(data_a, data_x, data_y)
80000704: 17 45 00 00  	auipc	a0, 4
80000708: 13 05 45 43  	addi	a0, a0, 1076

8000070c <.LBB0_18>:
8000070c: 17 06 00 00  	auipc	a2, 0
80000710: 13 06 c6 0a  	addi	a2, a2, 172

80000714 <.LBB0_19>:
80000714: 97 57 01 00  	auipc	a5, 21
80000718: 93 87 c7 82  	addi	a5, a5, -2004
8000071c: 93 05 30 00  	addi	a1, zero, 3
80000720: 97 30 00 00  	auipc	ra, 3
80000724: e7 80 00 64  	jalr	1600(ra)
80000728: 93 05 00 00  	mv	a1, zero
8000072c: 03 25 04 00  	lw	a0, 0(s0)

80000730 <.LBB0_20>:
80000730: 17 46 00 00  	auipc	a2, 4
80000734: 13 06 86 73  	addi	a2, a2, 1848
80000738: 07 30 06 00  	fld	ft0, 0(a2)

8000073c <.LBB0_21>:
8000073c: 17 46 00 00  	auipc	a2, 4
80000740: 13 06 46 73  	addi	a2, a2, 1844
80000744: 87 30 06 00  	fld	ft1, 0(a2)
80000748: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000074c: 13 06 10 00  	addi	a2, zero, 1
80000750: 93 06 10 04  	addi	a3, zero, 65
;         if ((gold - data_y[i]) * (gold - data_y[i]) > 0.01) errs++;
80000754: 87 31 05 00  	fld	ft3, 0(a0)
;         gold = 10.0 * (double)(i) + (double)(i + 1);
80000758: 53 02 16 d2  	fcvt.d.wu	ft4, a2
8000075c: 43 72 01 22  	fmadd.d	ft4, ft2, ft0, ft4
80000760: 53 71 81 02  	fadd.d	ft2, ft2, fs0
;         if ((gold - data_y[i]) * (gold - data_y[i]) > 0.01) errs++;
80000764: d3 71 32 0a  	fsub.d	ft3, ft4, ft3
80000768: d3 f1 31 12  	fmul.d	ft3, ft3, ft3
8000076c: 53 97 30 a2  	flt.d	a4, ft1, ft3
80000770: b3 85 e5 00  	add	a1, a1, a4
;     for (unsigned i = 0; i < AXPY_N; i++) {
80000774: 13 06 16 00  	addi	a2, a2, 1
80000778: 13 05 85 00  	addi	a0, a0, 8
8000077c: e3 1c d6 fc  	bne	a2, a3, 0x80000754 <.LBB0_21+0x18>
;     if (errs) tprintf("Error [static_schedule]: %d mismatches\n", errs);
80000780: 13 b4 15 00  	seqz	s0, a1
80000784: 63 8a 05 00  	beqz	a1, 0x80000798 <.LBB0_22+0x10>

80000788 <.LBB0_22>:
80000788: 17 45 00 00  	auipc	a0, 4
8000078c: 13 05 85 30  	addi	a0, a0, 776
80000790: 97 10 00 00  	auipc	ra, 1
80000794: e7 80 40 4c  	jalr	1220(ra)
;     return errs ? 1 : 0;
80000798: 13 45 14 00  	xori	a0, s0, 1
8000079c: 07 34 01 00  	fld	fs0, 0(sp)
800007a0: 03 24 81 00  	lw	s0, 8(sp)
800007a4: 83 20 c1 00  	lw	ra, 12(sp)
800007a8: 13 01 01 01  	addi	sp, sp, 16
800007ac: 67 80 00 00  	ret

800007b0 <omp_get_thread_num>:
;     return snrt_cluster_core_idx();
800007b0: 17 33 00 00  	auipc	t1, 3
800007b4: 67 00 83 11  	jr	280(t1)

800007b8 <.omp_outlined.>:
; #pragma omp parallel firstprivate(data_a, data_x, data_y)
800007b8: 13 01 01 ff  	addi	sp, sp, -16
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800007bc: 23 26 11 00  	sw	ra, 12(sp)
800007c0: 27 30 81 00  	fsd	fs0, 0(sp)
800007c4: 37 05 00 00  	lui	a0, 0
800007c8: 33 05 45 00  	add	a0, a0, tp
800007cc: 83 25 45 00  	lw	a1, 4(a0)
; #pragma omp parallel firstprivate(data_a, data_x, data_y)
800007d0: 07 34 07 00  	fld	fs0, 0(a4)
;                                  &data_x[AXPY_N / 8 * omp_get_thread_num()]);
800007d4: 93 95 65 00  	slli	a1, a1, 6
800007d8: b3 05 b6 00  	add	a1, a2, a1
800007dc: 13 06 80 00  	addi	a2, zero, 8
800007e0: 13 07 70 00  	addi	a4, zero, 7
;         __builtin_ssr_setup_1d_r(0, 0, AXPY_N / NUMTHREADS - 1, sizeof(double),
800007e4: 2b 20 00 02  	scfgwi	zero, 32
800007e8: 2b 20 07 04  	scfgwi	a4, 64
800007ec: 2b 20 06 0c  	scfgwi	a2, 192
800007f0: 2b a0 05 30  	scfgwi	a1, 768
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800007f4: 83 25 45 00  	lw	a1, 4(a0)
;                                  &data_y[AXPY_N / 8 * omp_get_thread_num()]);
800007f8: 93 95 65 00  	slli	a1, a1, 6
800007fc: b3 85 b6 00  	add	a1, a3, a1
;         __builtin_ssr_setup_1d_r(1, 0, AXPY_N / NUMTHREADS - 1, sizeof(double),
80000800: 2b 20 10 02  	scfgwi	zero, 33
80000804: 2b 20 17 04  	scfgwi	a4, 65
80000808: 2b 20 16 0c  	scfgwi	a2, 193
8000080c: 2b a0 15 30  	scfgwi	a1, 769
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000810: 03 25 45 00  	lw	a0, 4(a0)
;                                  &data_y[AXPY_N / 8 * omp_get_thread_num()]);
80000814: 13 15 65 00  	slli	a0, a0, 6
80000818: 33 85 a6 00  	add	a0, a3, a0
;         __builtin_ssr_setup_1d_w(2, 0, AXPY_N / NUMTHREADS - 1, sizeof(double),
8000081c: 2b 20 20 02  	scfgwi	zero, 34
80000820: 2b 20 27 04  	scfgwi	a4, 66
80000824: 2b 20 26 0c  	scfgwi	a2, 194
80000828: 2b 20 25 38  	scfgwi	a0, 898
;         __builtin_ssr_enable();
8000082c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;     unsigned threadNum = omp_get_thread_num();
80000830: 97 40 00 00  	auipc	ra, 4
80000834: e7 80 40 98  	jalr	-1660(ra)

80000838 <.LBB2_11>:
;         chunk = loopSize / team->nbThreads;
80000838: 97 45 01 00  	auipc	a1, 20
8000083c: 93 85 85 6e  	addi	a1, a1, 1768
80000840: 83 c6 05 00  	lbu	a3, 0(a1)
80000844: 13 07 00 04  	addi	a4, zero, 64
80000848: 33 56 d7 02  	divu	a2, a4, a3
;         int leftOver = loopSize - chunk * team->nbThreads;
8000084c: b3 06 d6 02  	mul	a3, a2, a3
80000850: b3 06 d7 40  	sub	a3, a4, a3
;         if ((int)threadNum < leftOver) {
80000854: 63 48 d5 00  	blt	a0, a3, 0x80000864 <.LBB2_11+0x2c>
80000858: 33 05 c5 02  	mul	a0, a0, a2
8000085c: 33 85 a6 00  	add	a0, a3, a0
80000860: 6f 00 c0 00  	j	0x8000086c <.LBB2_11+0x34>
80000864: 13 06 16 00  	addi	a2, a2, 1
80000868: 33 05 a6 02  	mul	a0, a2, a0
;         *pupper = *plower + chunk * incr - incr;
8000086c: 33 06 c5 00  	add	a2, a0, a2
80000870: 13 06 f6 ff  	addi	a2, a2, -1
80000874: 93 06 f0 03  	addi	a3, zero, 63
;         for (unsigned i = 0; i < AXPY_N; i++) {
80000878: 63 64 d6 00  	bltu	a2, a3, 0x80000880 <.LBB2_11+0x48>
8000087c: 13 06 f0 03  	addi	a2, zero, 63
; #pragma omp for schedule(static)
80000880: 63 6c a6 00  	bltu	a2, a0, 0x80000898 <.LBB2_11+0x60>
80000884: 93 06 05 00  	mv	a3, a0
;                 2, data_a * __builtin_ssr_pop(0) + __builtin_ssr_pop(1));
80000888: c3 71 80 0a  	fmadd.d	ft3, ft0, fs0, ft1
;             __builtin_ssr_push(
8000088c: 53 81 31 22  	fmv.d	ft2, ft3
;         for (unsigned i = 0; i < AXPY_N; i++) {
80000890: 13 05 15 00  	addi	a0, a0, 1
; #pragma omp for schedule(static)
80000894: e3 98 c6 fe  	bne	a3, a2, 0x80000884 <.LBB2_11+0x4c>
;     snrt_barrier(_this->kmpc_barrier, (uint32_t)_this->numThreads);
80000898: 03 a5 c5 00  	lw	a0, 12(a1)
8000089c: 83 a6 45 00  	lw	a3, 4(a1)
;     uint32_t prev_it = barr->barrier_iteration;
800008a0: 83 25 45 00  	lw	a1, 4(a0)
800008a4: 13 06 10 00  	addi	a2, zero, 1
;     uint32_t barrier = __atomic_add_fetch(&barr->barrier, 1, __ATOMIC_RELAXED);
800008a8: 2f 27 c5 00  	amoadd.w	a4, a2, (a0)
800008ac: 13 07 17 00  	addi	a4, a4, 1
;     if (barrier == n) {
800008b0: 63 1a d7 00  	bne	a4, a3, 0x800008c4 <.LBB2_11+0x8c>
;         barr->barrier = 0;
800008b4: 23 20 05 00  	sw	zero, 0(a0)
;         __atomic_add_fetch(&barr->barrier_iteration, 1, __ATOMIC_RELAXED);
800008b8: 13 05 45 00  	addi	a0, a0, 4
800008bc: 2f 25 c5 00  	amoadd.w	a0, a2, (a0)
800008c0: 6f 00 c0 00  	j	0x800008cc <.LBB2_11+0x94>
;         while (prev_it == barr->barrier_iteration)
800008c4: 03 26 45 00  	lw	a2, 4(a0)
800008c8: e3 8e c5 fe  	beq	a1, a2, 0x800008c4 <.LBB2_11+0x8c>
;         __builtin_ssr_disable();
800008cc: 73 f5 00 7c  	csrrci	a0, 1984, 1
; #pragma omp parallel firstprivate(data_a, data_x, data_y)
800008d0: 07 34 01 00  	fld	fs0, 0(sp)
800008d4: 83 20 c1 00  	lw	ra, 12(sp)
800008d8: 13 01 01 01  	addi	sp, sp, 16
800008dc: 67 80 00 00  	ret

800008e0 <paralell_section>:
; unsigned __attribute__((noinline)) paralell_section(void) {
800008e0: 13 01 01 ff  	addi	sp, sp, -16
;     unsigned tx = read_csr(minstret);
800008e4: 23 26 11 00  	sw	ra, 12(sp)
800008e8: 73 25 20 b0  	csrr	a0, minstret
800008ec: 23 24 a1 00  	sw	a0, 8(sp)

800008f0 <.LBB3_1>:
; #pragma omp parallel
800008f0: 17 45 00 00  	auipc	a0, 4
800008f4: 13 05 05 26  	addi	a0, a0, 608

800008f8 <.LBB3_2>:
800008f8: 17 06 00 00  	auipc	a2, 0
800008fc: 13 06 86 03  	addi	a2, a2, 56
80000900: 93 05 10 00  	addi	a1, zero, 1
80000904: 93 06 81 00  	addi	a3, sp, 8
80000908: 97 30 00 00  	auipc	ra, 3
8000090c: e7 80 80 45  	jalr	1112(ra)

80000910 <.LBB3_3>:
;     return sum != 8 * 10;
80000910: 17 45 01 00  	auipc	a0, 20
80000914: 13 05 85 63  	addi	a0, a0, 1592
80000918: 03 25 05 00  	lw	a0, 0(a0)
8000091c: 13 05 05 fb  	addi	a0, a0, -80
80000920: 33 35 a0 00  	snez	a0, a0
80000924: 83 20 c1 00  	lw	ra, 12(sp)
80000928: 13 01 01 01  	addi	sp, sp, 16
8000092c: 67 80 00 00  	ret

80000930 <.omp_outlined..2>:
;         tx = read_csr(minstret) - tx;
80000930: 73 25 20 b0  	csrr	a0, minstret
80000934: 83 25 06 00  	lw	a1, 0(a2)
80000938: 33 05 b5 40  	sub	a0, a0, a1
8000093c: 23 20 a6 00  	sw	a0, 0(a2)

80000940 <.LBB4_1>:
;         __atomic_add_fetch(&sum, 10, __ATOMIC_RELAXED);
80000940: 17 45 01 00  	auipc	a0, 20
80000944: 13 05 85 60  	addi	a0, a0, 1544
80000948: 93 05 a0 00  	addi	a1, zero, 10
8000094c: 2f 25 b5 00  	amoadd.w	a0, a1, (a0)
; #pragma omp parallel
80000950: 67 80 00 00  	ret

80000954 <double_buffering>:
;     return _snrt_team_current->root;
80000954: 37 05 00 00  	lui	a0, 0
80000958: 33 05 45 00  	add	a0, a0, tp
8000095c: 03 25 05 00  	lw	a0, 0(a0)
80000960: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000964: 83 27 85 05  	lw	a5, 88(a0)
80000968: 83 25 05 05  	lw	a1, 80(a0)
8000096c: 03 26 45 05  	lw	a2, 84(a0)
80000970: b7 46 00 00  	lui	a3, 4
80000974: 33 87 d7 00  	add	a4, a5, a3
80000978: b3 05 b6 00  	add	a1, a2, a1
8000097c: 63 f8 e5 00  	bgeu	a1, a4, 0x8000098c <double_buffering+0x38>
80000980: 93 06 00 00  	mv	a3, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80000984: 13 06 07 00  	mv	a2, a4
80000988: 6f 00 80 01  	j	0x800009a0 <.LBB5_7>
;     void *ret = (void *)alloc->next;
8000098c: 93 86 07 00  	mv	a3, a5
;     alloc->next += size;
80000990: 23 2c e5 04  	sw	a4, 88(a0)
80000994: 37 86 00 00  	lui	a2, 8
;     if (alloc->next + size > alloc->base + alloc->size) {
80000998: 33 86 c7 00  	add	a2, a5, a2
8000099c: 93 07 07 00  	mv	a5, a4

800009a0 <.LBB5_7>:
;     bufx = snrt_l1alloc(sizeof(double) * 2 * TILESIZE);
800009a0: 17 47 01 00  	auipc	a4, 20
800009a4: 13 07 c7 5a  	addi	a4, a4, 1452
800009a8: 23 20 d7 00  	sw	a3, 0(a4)
;     if (alloc->next + size > alloc->base + alloc->size) {
800009ac: 63 f6 c5 00  	bgeu	a1, a2, 0x800009b8 <.LBB5_7+0x18>
800009b0: 93 07 00 00  	mv	a5, zero
800009b4: 6f 00 80 00  	j	0x800009bc <.LBB5_8>
;     alloc->next += size;
800009b8: 23 2c c5 04  	sw	a2, 88(a0)

800009bc <.LBB5_8>:
;     bufy = snrt_l1alloc(sizeof(double) * 2 * TILESIZE);
800009bc: 17 45 01 00  	auipc	a0, 20
800009c0: 13 05 45 59  	addi	a0, a0, 1428
800009c4: 23 20 f5 00  	sw	a5, 0(a0)

800009c8 <.LBB5_9>:
800009c8: 97 48 01 00  	auipc	a7, 20
800009cc: 93 88 08 59  	addi	a7, a7, 1424
800009d0: 37 05 00 40  	lui	a0, 262144
;     a = axpy_4096_a;
800009d4: 23 a2 a8 00  	sw	a0, 4(a7)

800009d8 <.LBB5_10>:
; #pragma omp parallel firstprivate(bufx, bufy, x, y, a)
800009d8: 17 45 00 00  	auipc	a0, 4
800009dc: 13 05 05 1c  	addi	a0, a0, 448

800009e0 <.LBB5_11>:
800009e0: 17 06 00 00  	auipc	a2, 0
800009e4: 13 06 86 02  	addi	a2, a2, 40

800009e8 <.LBB5_12>:
800009e8: 17 47 00 00  	auipc	a4, 4
800009ec: 13 07 87 53  	addi	a4, a4, 1336

800009f0 <.LBB5_13>:
800009f0: 17 c8 00 00  	auipc	a6, 12
800009f4: 13 08 08 53  	addi	a6, a6, 1328
800009f8: 93 05 50 00  	addi	a1, zero, 5
;     a = axpy_4096_a;
800009fc: 23 a0 08 00  	sw	zero, 0(a7)
; #pragma omp parallel firstprivate(bufx, bufy, x, y, a)
80000a00: 17 33 00 00  	auipc	t1, 3
80000a04: 67 00 03 36  	jr	864(t1)

80000a08 <.omp_outlined..4>:
80000a08: 13 01 01 fc  	addi	sp, sp, -64
80000a0c: 23 2e 11 02  	sw	ra, 60(sp)
80000a10: 23 2c 81 02  	sw	s0, 56(sp)
80000a14: 23 2a 91 02  	sw	s1, 52(sp)
80000a18: 23 28 21 03  	sw	s2, 48(sp)
80000a1c: 23 26 31 03  	sw	s3, 44(sp)
80000a20: 23 24 41 03  	sw	s4, 40(sp)
80000a24: 23 22 51 03  	sw	s5, 36(sp)
80000a28: 23 20 61 03  	sw	s6, 32(sp)
80000a2c: 23 2e 71 01  	sw	s7, 28(sp)
80000a30: 23 2c 81 01  	sw	s8, 24(sp)
80000a34: 23 2a 91 01  	sw	s9, 20(sp)
80000a38: 23 28 a1 01  	sw	s10, 16(sp)
80000a3c: 23 26 b1 01  	sw	s11, 12(sp)
80000a40: 27 30 81 00  	fsd	fs0, 0(sp)
80000a44: 07 34 08 00  	fld	fs0, 0(a6)
80000a48: 93 89 07 00  	mv	s3, a5
80000a4c: 93 0a 07 00  	mv	s5, a4
80000a50: 13 89 06 00  	mv	s2, a3
80000a54: 13 0a 06 00  	mv	s4, a2
80000a58: 93 04 05 00  	mv	s1, a0
;         int thread_id = omp_get_thread_num();
80000a5c: 97 00 00 00  	auipc	ra, 0
80000a60: e7 80 40 d5  	jalr	-684(ra)
80000a64: 13 04 05 00  	mv	s0, a0
;         if (thread_id == 0) {
80000a68: 13 3b 15 00  	seqz	s6, a0
80000a6c: 63 14 05 1c  	bnez	a0, 0x80000c34 <.omp_outlined..4+0x22c>
80000a70: 37 05 00 00  	lui	a0, 0
80000a74: 33 05 45 00  	add	a0, a0, tp
80000a78: 03 25 45 01  	lw	a0, 20(a0)
80000a7c: 93 05 30 00  	addi	a1, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000a80: 03 26 85 0a  	lw	a2, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80000a84: e3 ee c5 fe  	bltu	a1, a2, 0x80000a80 <.omp_outlined..4+0x78>
;     _dm_mtx_lock();
80000a88: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80000a8c: 93 02 10 00  	addi	t0, zero, 1
80000a90: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000a94: e3 9e 02 fe  	bnez	t0, 0x80000a90 <.omp_outlined..4+0x88>
;     t = &dm_p->queue[dm_p->queue_front];
80000a98: 37 05 00 00  	lui	a0, 0
80000a9c: 33 05 45 00  	add	a0, a0, tp
80000aa0: 83 25 45 01  	lw	a1, 20(a0)
80000aa4: 03 a6 45 0a  	lw	a2, 164(a1)
80000aa8: 93 06 80 02  	addi	a3, zero, 40
;     t->src = (uint64_t)src;
80000aac: 33 06 d6 02  	mul	a2, a2, a3
80000ab0: 33 86 c5 00  	add	a2, a1, a2
80000ab4: 23 22 06 00  	sw	zero, 4(a2)
80000ab8: 23 20 26 01  	sw	s2, 0(a2)
;     t->dst = (uint64_t)dest;
80000abc: 23 26 06 00  	sw	zero, 12(a2)
80000ac0: 23 24 46 01  	sw	s4, 8(a2)
80000ac4: b7 26 00 00  	lui	a3, 2
;     t->size = (uint32_t)n;
80000ac8: 23 28 d6 00  	sw	a3, 16(a2)
;     t->twod = 0;
80000acc: 23 22 06 02  	sw	zero, 36(a2)
;     t->cfg = 0;
80000ad0: 23 20 06 02  	sw	zero, 32(a2)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000ad4: 13 86 85 0a  	addi	a2, a1, 168
80000ad8: 93 06 10 00  	addi	a3, zero, 1
80000adc: 2f 26 d6 00  	amoadd.w	a2, a3, (a2)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000ae0: 03 a6 45 0a  	lw	a2, 164(a1)
80000ae4: 13 06 16 00  	addi	a2, a2, 1
80000ae8: 13 76 36 00  	andi	a2, a2, 3
80000aec: 23 a2 c5 0a  	sw	a2, 164(a1)
;     _dm_mtx_release();
80000af0: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000af4: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
80000af8: 03 25 45 01  	lw	a0, 20(a0)
80000afc: 93 05 30 00  	addi	a1, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000b00: 03 26 85 0a  	lw	a2, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80000b04: e3 ee c5 fe  	bltu	a1, a2, 0x80000b00 <.omp_outlined..4+0xf8>
;     _dm_mtx_lock();
80000b08: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80000b0c: 93 02 10 00  	addi	t0, zero, 1
80000b10: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000b14: e3 9e 02 fe  	bnez	t0, 0x80000b10 <.omp_outlined..4+0x108>
;     t = &dm_p->queue[dm_p->queue_front];
80000b18: 37 05 00 00  	lui	a0, 0
80000b1c: 33 05 45 00  	add	a0, a0, tp
80000b20: 83 25 45 01  	lw	a1, 20(a0)
80000b24: 03 a6 45 0a  	lw	a2, 164(a1)
80000b28: 93 06 80 02  	addi	a3, zero, 40
;     t->src = (uint64_t)src;
80000b2c: 33 06 d6 02  	mul	a2, a2, a3
80000b30: 33 86 c5 00  	add	a2, a1, a2
80000b34: 23 22 06 00  	sw	zero, 4(a2)
80000b38: 23 20 36 01  	sw	s3, 0(a2)
;     t->dst = (uint64_t)dest;
80000b3c: 23 26 06 00  	sw	zero, 12(a2)
80000b40: 23 24 56 01  	sw	s5, 8(a2)
80000b44: b7 26 00 00  	lui	a3, 2
;     t->size = (uint32_t)n;
80000b48: 23 28 d6 00  	sw	a3, 16(a2)
;     t->twod = 0;
80000b4c: 23 22 06 02  	sw	zero, 36(a2)
;     t->cfg = 0;
80000b50: 23 20 06 02  	sw	zero, 32(a2)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000b54: 13 86 85 0a  	addi	a2, a1, 168
80000b58: 93 06 10 00  	addi	a3, zero, 1
80000b5c: 2f 26 d6 00  	amoadd.w	a2, a3, (a2)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000b60: 03 a6 45 0a  	lw	a2, 164(a1)
80000b64: 13 06 16 00  	addi	a2, a2, 1
80000b68: 13 76 36 00  	andi	a2, a2, 3
80000b6c: 23 a2 c5 0a  	sw	a2, 164(a1)
;     _dm_mtx_release();
80000b70: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000b74: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
80000b78: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000b7c: 83 25 c5 0b  	lw	a1, 188(a0)
80000b80: e3 8e 05 fe  	beqz	a1, 0x80000b7c <.omp_outlined..4+0x174>
;     return _snrt_team_current->root->cluster_core_num;
80000b84: b7 05 00 00  	lui	a1, 0
80000b88: b3 85 45 00  	add	a1, a1, tp
80000b8c: 83 a5 05 00  	lw	a1, 0(a1)
80000b90: 83 a5 05 00  	lw	a1, 0(a1)
80000b94: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000b98: 37 06 00 00  	lui	a2, 0
80000b9c: 33 06 46 00  	add	a2, a2, tp
80000ba0: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80000ba4: 93 85 f5 ff  	addi	a1, a1, -1
80000ba8: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000bac: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000bb0: 23 20 b6 00  	sw	a1, 0(a2)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000bb4: 83 25 85 0a  	lw	a1, 168(a0)
;     } while (s != 0);
80000bb8: e3 9e 05 fe  	bnez	a1, 0x80000bb4 <.omp_outlined..4+0x1ac>
;     while (dm_p->stat_q)
80000bbc: 83 25 05 0b  	lw	a1, 176(a0)
80000bc0: e3 9e 05 fe  	bnez	a1, 0x80000bbc <.omp_outlined..4+0x1b4>
;     _dm_mtx_lock();
80000bc4: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80000bc8: 93 02 10 00  	addi	t0, zero, 1
80000bcc: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000bd0: e3 9e 02 fe  	bnez	t0, 0x80000bcc <.omp_outlined..4+0x1c4>
;     dm_p->stat_pvalid = 0;
80000bd4: 37 05 00 00  	lui	a0, 0
80000bd8: 33 05 45 00  	add	a0, a0, tp
80000bdc: 03 25 45 01  	lw	a0, 20(a0)
80000be0: 23 2c 05 0a  	sw	zero, 184(a0)
80000be4: 93 05 10 00  	addi	a1, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
80000be8: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000bec: 83 25 c5 0b  	lw	a1, 188(a0)
80000bf0: e3 8e 05 fe  	beqz	a1, 0x80000bec <.omp_outlined..4+0x1e4>
;     return _snrt_team_current->root->cluster_core_num;
80000bf4: b7 05 00 00  	lui	a1, 0
80000bf8: b3 85 45 00  	add	a1, a1, tp
80000bfc: 83 a5 05 00  	lw	a1, 0(a1)
80000c00: 83 a5 05 00  	lw	a1, 0(a1)
80000c04: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000c08: 37 06 00 00  	lui	a2, 0
80000c0c: 33 06 46 00  	add	a2, a2, tp
80000c10: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80000c14: 93 85 f5 ff  	addi	a1, a1, -1
80000c18: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000c1c: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000c20: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
80000c24: 83 25 85 0b  	lw	a1, 184(a0)
80000c28: e3 8e 05 fe  	beqz	a1, 0x80000c24 <.omp_outlined..4+0x21c>
;     _dm_mtx_release();
80000c2c: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000c30: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
; #pragma omp barrier
80000c34: 03 ac 04 00  	lw	s8, 0(s1)

80000c38 <.LBB6_114>:
80000c38: 17 45 00 00  	auipc	a0, 4
80000c3c: 13 05 05 f3  	addi	a0, a0, -208
80000c40: 93 05 0c 00  	mv	a1, s8
80000c44: 97 30 00 00  	auipc	ra, 3
80000c48: e7 80 c0 0d  	jalr	220(ra)
80000c4c: 93 14 74 00  	slli	s1, s0, 7
;             if (thread_id == 0) {
80000c50: 63 0e 0b 14  	beqz	s6, 0x80000dac <.LBB6_114+0x174>
80000c54: 37 05 00 00  	lui	a0, 0
80000c58: 33 05 45 00  	add	a0, a0, tp
80000c5c: 83 25 45 01  	lw	a1, 20(a0)
80000c60: 37 25 00 00  	lui	a0, 2
;                         (void *)&bufx[TILESIZE * ((tile / TILESIZE + 1) % 2)],
80000c64: 33 05 aa 00  	add	a0, s4, a0
80000c68: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000c6c: 83 a6 85 0a  	lw	a3, 168(a1)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80000c70: e3 6e d6 fe  	bltu	a2, a3, 0x80000c6c <.LBB6_114+0x34>
;     _dm_mtx_lock();
80000c74: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile(
80000c78: 93 02 10 00  	addi	t0, zero, 1
80000c7c: af a2 55 0c  	amoswap.w.aq	t0, t0, (a1)
80000c80: e3 9e 02 fe  	bnez	t0, 0x80000c7c <.LBB6_114+0x44>
;     t = &dm_p->queue[dm_p->queue_front];
80000c84: b7 05 00 00  	lui	a1, 0
80000c88: b3 85 45 00  	add	a1, a1, tp
80000c8c: 03 a6 45 01  	lw	a2, 20(a1)
80000c90: 83 26 46 0a  	lw	a3, 164(a2)
80000c94: 37 27 00 00  	lui	a4, 2
;                         (void *)&x[tile + TILESIZE], sizeof(double) * TILESIZE);
80000c98: b3 07 e9 00  	add	a5, s2, a4
80000c9c: 13 04 80 02  	addi	s0, zero, 40
;     t->src = (uint64_t)src;
80000ca0: b3 86 86 02  	mul	a3, a3, s0
80000ca4: b3 06 d6 00  	add	a3, a2, a3
80000ca8: 23 a2 06 00  	sw	zero, 4(a3)
80000cac: 23 a0 f6 00  	sw	a5, 0(a3)
;     t->dst = (uint64_t)dest;
80000cb0: 23 a6 06 00  	sw	zero, 12(a3)
80000cb4: 23 a4 a6 00  	sw	a0, 8(a3)
;     t->size = (uint32_t)n;
80000cb8: 23 a8 e6 00  	sw	a4, 16(a3)
;     t->twod = 0;
80000cbc: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
80000cc0: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000cc4: 13 05 86 0a  	addi	a0, a2, 168
80000cc8: 93 06 10 00  	addi	a3, zero, 1
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000ccc: 2f 25 d5 00  	amoadd.w	a0, a3, (a0)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000cd0: 03 25 46 0a  	lw	a0, 164(a2)
80000cd4: 13 05 15 00  	addi	a0, a0, 1
80000cd8: 13 75 35 00  	andi	a0, a0, 3
80000cdc: 23 22 a6 0a  	sw	a0, 164(a2)
;     _dm_mtx_release();
80000ce0: 13 05 c6 0a  	addi	a0, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000ce4: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
80000ce8: 83 a5 45 01  	lw	a1, 20(a1)
;                         (void *)&bufy[TILESIZE * ((tile / TILESIZE + 1) % 2)],
80000cec: 33 85 ea 00  	add	a0, s5, a4
80000cf0: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000cf4: 83 a6 85 0a  	lw	a3, 168(a1)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80000cf8: e3 6e d6 fe  	bltu	a2, a3, 0x80000cf4 <.LBB6_114+0xbc>
;     _dm_mtx_lock();
80000cfc: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile(
80000d00: 93 02 10 00  	addi	t0, zero, 1
80000d04: af a2 55 0c  	amoswap.w.aq	t0, t0, (a1)
80000d08: e3 9e 02 fe  	bnez	t0, 0x80000d04 <.LBB6_114+0xcc>
;     t = &dm_p->queue[dm_p->queue_front];
80000d0c: b7 05 00 00  	lui	a1, 0
80000d10: b3 85 45 00  	add	a1, a1, tp
80000d14: 03 a6 45 01  	lw	a2, 20(a1)
80000d18: 83 26 46 0a  	lw	a3, 164(a2)
80000d1c: 37 27 00 00  	lui	a4, 2
;                         (void *)&y[tile + TILESIZE], sizeof(double) * TILESIZE);
80000d20: b3 87 e9 00  	add	a5, s3, a4
80000d24: 13 04 80 02  	addi	s0, zero, 40
;     t->src = (uint64_t)src;
80000d28: b3 86 86 02  	mul	a3, a3, s0
80000d2c: b3 06 d6 00  	add	a3, a2, a3
80000d30: 23 a2 06 00  	sw	zero, 4(a3)
80000d34: 23 a0 f6 00  	sw	a5, 0(a3)
;     t->dst = (uint64_t)dest;
80000d38: 23 a6 06 00  	sw	zero, 12(a3)
80000d3c: 23 a4 a6 00  	sw	a0, 8(a3)
;     t->size = (uint32_t)n;
80000d40: 23 a8 e6 00  	sw	a4, 16(a3)
;     t->twod = 0;
80000d44: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
80000d48: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000d4c: 13 05 86 0a  	addi	a0, a2, 168
80000d50: 93 06 10 00  	addi	a3, zero, 1
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000d54: 2f 25 d5 00  	amoadd.w	a0, a3, (a0)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000d58: 03 25 46 0a  	lw	a0, 164(a2)
80000d5c: 13 05 15 00  	addi	a0, a0, 1
80000d60: 13 75 35 00  	andi	a0, a0, 3
80000d64: 23 22 a6 0a  	sw	a0, 164(a2)
;     _dm_mtx_release();
80000d68: 13 05 c6 0a  	addi	a0, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000d6c: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
80000d70: 03 a5 45 01  	lw	a0, 20(a1)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000d74: 83 25 c5 0b  	lw	a1, 188(a0)
80000d78: e3 8e 05 fe  	beqz	a1, 0x80000d74 <.LBB6_114+0x13c>
;     return _snrt_team_current->root->cluster_core_num;
80000d7c: 37 05 00 00  	lui	a0, 0
80000d80: 33 05 45 00  	add	a0, a0, tp
80000d84: 03 25 05 00  	lw	a0, 0(a0)
80000d88: 03 25 05 00  	lw	a0, 0(a0)
80000d8c: 03 25 c5 01  	lw	a0, 28(a0)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000d90: b7 05 00 00  	lui	a1, 0
80000d94: b3 85 45 00  	add	a1, a1, tp
80000d98: 83 a5 c5 00  	lw	a1, 12(a1)
;     return snrt_cluster_core_num() - 1;
80000d9c: 13 05 f5 ff  	addi	a0, a0, -1
80000da0: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000da4: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000da8: 23 a0 a5 00  	sw	a0, 0(a1)
;                                      &bufx[TILESIZE * ((tile / TILESIZE) % 2) +
80000dac: 13 95 34 00  	slli	a0, s1, 3
80000db0: 33 0d aa 00  	add	s10, s4, a0
80000db4: 93 05 80 00  	addi	a1, zero, 8
80000db8: 13 06 f0 07  	addi	a2, zero, 127
;             __builtin_ssr_setup_1d_r(0, 0, TILESIZE / NTHREADS - 1,
80000dbc: 2b 20 00 02  	scfgwi	zero, 32
80000dc0: 2b 20 06 04  	scfgwi	a2, 64
80000dc4: 2b a0 05 0c  	scfgwi	a1, 192
80000dc8: 2b 20 0d 30  	scfgwi	s10, 768
;                                      &bufy[TILESIZE * ((tile / TILESIZE) % 2) +
80000dcc: b3 8b aa 00  	add	s7, s5, a0
;             __builtin_ssr_setup_1d_r(1, 0, TILESIZE / NTHREADS - 1,
80000dd0: 2b 20 10 02  	scfgwi	zero, 33
80000dd4: 2b 20 16 04  	scfgwi	a2, 65
80000dd8: 2b a0 15 0c  	scfgwi	a1, 193
80000ddc: 2b a0 1b 30  	scfgwi	s7, 769
;             __builtin_ssr_setup_1d_w(2, 0, TILESIZE / NTHREADS - 1,
80000de0: 2b 20 20 02  	scfgwi	zero, 34
80000de4: 2b 20 26 04  	scfgwi	a2, 66
80000de8: 2b a0 25 0c  	scfgwi	a1, 194
80000dec: 2b 20 2d 38  	scfgwi	s10, 898
;             __builtin_ssr_enable();
80000df0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             asm volatile(
80000df4: 8b 00 06 00  	frep.o	a2, 1, 0, 0
80000df8: 43 71 04 0a  	fmadd.d	ft2, fs0, ft0, ft1
;             __builtin_ssr_barrier(2);
80000dfc: 2b 15 20 00  	scfgri	a0, 2
80000e00: 13 55 f5 01  	srli	a0, a0, 31
80000e04: e3 0c 05 fe  	beqz	a0, 0x80000dfc <.LBB6_114+0x1c4>
;             __builtin_ssr_disable();
80000e08: 73 f5 00 7c  	csrrci	a0, 1984, 1
;             if (thread_id == 0) dm_wait();
80000e0c: 63 1e 0b 00  	bnez	s6, 0x80000e28 <.LBB6_115+0x18>

80000e10 <.LBB6_115>:
; #pragma omp barrier
80000e10: 17 45 00 00  	auipc	a0, 4
80000e14: 13 05 05 d7  	addi	a0, a0, -656
80000e18: 93 05 0c 00  	mv	a1, s8
80000e1c: 97 30 00 00  	auipc	ra, 3
80000e20: e7 80 40 f0  	jalr	-252(ra)
80000e24: 6f 00 00 2b  	j	0x800010d4 <.LBB6_116+0x1e8>
80000e28: 37 05 00 00  	lui	a0, 0
80000e2c: 33 05 45 00  	add	a0, a0, tp
80000e30: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000e34: 83 25 c5 0b  	lw	a1, 188(a0)
80000e38: e3 8e 05 fe  	beqz	a1, 0x80000e34 <.LBB6_115+0x24>
;     return _snrt_team_current->root->cluster_core_num;
80000e3c: b7 05 00 00  	lui	a1, 0
80000e40: b3 85 45 00  	add	a1, a1, tp
80000e44: 83 a5 05 00  	lw	a1, 0(a1)
80000e48: 83 a5 05 00  	lw	a1, 0(a1)
80000e4c: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000e50: 37 06 00 00  	lui	a2, 0
80000e54: 33 06 46 00  	add	a2, a2, tp
80000e58: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80000e5c: 93 85 f5 ff  	addi	a1, a1, -1
80000e60: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000e64: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000e68: 23 20 b6 00  	sw	a1, 0(a2)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000e6c: 83 25 85 0a  	lw	a1, 168(a0)
;     } while (s != 0);
80000e70: e3 9e 05 fe  	bnez	a1, 0x80000e6c <.LBB6_115+0x5c>
;     while (dm_p->stat_q)
80000e74: 83 25 05 0b  	lw	a1, 176(a0)
80000e78: e3 9e 05 fe  	bnez	a1, 0x80000e74 <.LBB6_115+0x64>
;     _dm_mtx_lock();
80000e7c: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80000e80: 93 02 10 00  	addi	t0, zero, 1
80000e84: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000e88: e3 9e 02 fe  	bnez	t0, 0x80000e84 <.LBB6_115+0x74>
;     dm_p->stat_pvalid = 0;
80000e8c: 37 05 00 00  	lui	a0, 0
80000e90: 33 05 45 00  	add	a0, a0, tp
80000e94: 03 25 45 01  	lw	a0, 20(a0)
80000e98: 23 2c 05 0a  	sw	zero, 184(a0)
80000e9c: 93 05 10 00  	addi	a1, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
80000ea0: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000ea4: 83 25 c5 0b  	lw	a1, 188(a0)
80000ea8: e3 8e 05 fe  	beqz	a1, 0x80000ea4 <.LBB6_115+0x94>
;     return _snrt_team_current->root->cluster_core_num;
80000eac: b7 05 00 00  	lui	a1, 0
80000eb0: b3 85 45 00  	add	a1, a1, tp
80000eb4: 83 a5 05 00  	lw	a1, 0(a1)
80000eb8: 83 a5 05 00  	lw	a1, 0(a1)
80000ebc: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000ec0: 37 06 00 00  	lui	a2, 0
80000ec4: 33 06 46 00  	add	a2, a2, tp
80000ec8: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80000ecc: 93 85 f5 ff  	addi	a1, a1, -1
80000ed0: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000ed4: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000ed8: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
80000edc: 83 25 85 0b  	lw	a1, 184(a0)
80000ee0: e3 8e 05 fe  	beqz	a1, 0x80000edc <.LBB6_115+0xcc>
;     _dm_mtx_release();
80000ee4: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000ee8: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)

80000eec <.LBB6_116>:
; #pragma omp barrier
80000eec: 17 45 00 00  	auipc	a0, 4
80000ef0: 13 05 45 c9  	addi	a0, a0, -876
80000ef4: 93 05 0c 00  	mv	a1, s8
80000ef8: 97 30 00 00  	auipc	ra, 3
80000efc: e7 80 80 e2  	jalr	-472(ra)
80000f00: 37 05 00 00  	lui	a0, 0
80000f04: 33 05 45 00  	add	a0, a0, tp
80000f08: 03 25 45 01  	lw	a0, 20(a0)
80000f0c: 93 05 30 00  	addi	a1, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000f10: 03 26 85 0a  	lw	a2, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80000f14: e3 ee c5 fe  	bltu	a1, a2, 0x80000f10 <.LBB6_116+0x24>
;     _dm_mtx_lock();
80000f18: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80000f1c: 93 02 10 00  	addi	t0, zero, 1
80000f20: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000f24: e3 9e 02 fe  	bnez	t0, 0x80000f20 <.LBB6_116+0x34>
;     t = &dm_p->queue[dm_p->queue_front];
80000f28: 37 05 00 00  	lui	a0, 0
80000f2c: 33 05 45 00  	add	a0, a0, tp
80000f30: 83 25 45 01  	lw	a1, 20(a0)
80000f34: 03 a6 45 0a  	lw	a2, 164(a1)
80000f38: 93 06 80 02  	addi	a3, zero, 40
;     t->src = (uint64_t)src;
80000f3c: 33 06 d6 02  	mul	a2, a2, a3
80000f40: 33 86 c5 00  	add	a2, a1, a2
80000f44: 23 22 06 00  	sw	zero, 4(a2)
80000f48: 23 20 46 01  	sw	s4, 0(a2)
;     t->dst = (uint64_t)dest;
80000f4c: 23 26 06 00  	sw	zero, 12(a2)
80000f50: 23 24 26 01  	sw	s2, 8(a2)
80000f54: b7 26 00 00  	lui	a3, 2
;     t->size = (uint32_t)n;
80000f58: 23 28 d6 00  	sw	a3, 16(a2)
;     t->twod = 0;
80000f5c: 23 22 06 02  	sw	zero, 36(a2)
;     t->cfg = 0;
80000f60: 23 20 06 02  	sw	zero, 32(a2)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000f64: 13 86 85 0a  	addi	a2, a1, 168
80000f68: 93 06 10 00  	addi	a3, zero, 1
80000f6c: 2f 26 d6 00  	amoadd.w	a2, a3, (a2)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000f70: 03 a6 45 0a  	lw	a2, 164(a1)
80000f74: 13 06 16 00  	addi	a2, a2, 1
80000f78: 13 76 36 00  	andi	a2, a2, 3
80000f7c: 23 a2 c5 0a  	sw	a2, 164(a1)
;     _dm_mtx_release();
80000f80: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000f84: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
80000f88: 03 25 45 01  	lw	a0, 20(a0)
80000f8c: 93 05 30 00  	addi	a1, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000f90: 03 26 85 0a  	lw	a2, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80000f94: e3 ee c5 fe  	bltu	a1, a2, 0x80000f90 <.LBB6_116+0xa4>
;     _dm_mtx_lock();
80000f98: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80000f9c: 93 02 10 00  	addi	t0, zero, 1
80000fa0: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000fa4: e3 9e 02 fe  	bnez	t0, 0x80000fa0 <.LBB6_116+0xb4>
;     t = &dm_p->queue[dm_p->queue_front];
80000fa8: 37 05 00 00  	lui	a0, 0
80000fac: 33 05 45 00  	add	a0, a0, tp
80000fb0: 83 25 45 01  	lw	a1, 20(a0)
80000fb4: 03 a6 45 0a  	lw	a2, 164(a1)
80000fb8: b7 46 00 00  	lui	a3, 4
;                         (void *)&x[tile + TILESIZE], sizeof(double) * TILESIZE);
80000fbc: b3 06 d9 00  	add	a3, s2, a3
80000fc0: 13 07 80 02  	addi	a4, zero, 40
;     t->src = (uint64_t)src;
80000fc4: 33 06 e6 02  	mul	a2, a2, a4
80000fc8: 33 86 c5 00  	add	a2, a1, a2
80000fcc: 23 22 06 00  	sw	zero, 4(a2)
80000fd0: 23 20 d6 00  	sw	a3, 0(a2)
;     t->dst = (uint64_t)dest;
80000fd4: 23 26 06 00  	sw	zero, 12(a2)
80000fd8: 23 24 46 01  	sw	s4, 8(a2)
80000fdc: b7 26 00 00  	lui	a3, 2
;     t->size = (uint32_t)n;
80000fe0: 23 28 d6 00  	sw	a3, 16(a2)
;     t->twod = 0;
80000fe4: 23 22 06 02  	sw	zero, 36(a2)
;     t->cfg = 0;
80000fe8: 23 20 06 02  	sw	zero, 32(a2)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000fec: 13 86 85 0a  	addi	a2, a1, 168
80000ff0: 93 06 10 00  	addi	a3, zero, 1
80000ff4: 2f 26 d6 00  	amoadd.w	a2, a3, (a2)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000ff8: 03 a6 45 0a  	lw	a2, 164(a1)
80000ffc: 13 06 16 00  	addi	a2, a2, 1
80001000: 13 76 36 00  	andi	a2, a2, 3
80001004: 23 a2 c5 0a  	sw	a2, 164(a1)
;     _dm_mtx_release();
80001008: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000100c: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
80001010: 03 25 45 01  	lw	a0, 20(a0)
80001014: 93 05 30 00  	addi	a1, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80001018: 03 26 85 0a  	lw	a2, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
8000101c: e3 ee c5 fe  	bltu	a1, a2, 0x80001018 <.LBB6_116+0x12c>
;     _dm_mtx_lock();
80001020: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80001024: 93 02 10 00  	addi	t0, zero, 1
80001028: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
8000102c: e3 9e 02 fe  	bnez	t0, 0x80001028 <.LBB6_116+0x13c>
;     t = &dm_p->queue[dm_p->queue_front];
80001030: 37 05 00 00  	lui	a0, 0
80001034: 33 05 45 00  	add	a0, a0, tp
80001038: 83 25 45 01  	lw	a1, 20(a0)
8000103c: 03 a6 45 0a  	lw	a2, 164(a1)
80001040: b7 46 00 00  	lui	a3, 4
;                         (void *)&y[tile + TILESIZE], sizeof(double) * TILESIZE);
80001044: b3 86 d9 00  	add	a3, s3, a3
80001048: 13 07 80 02  	addi	a4, zero, 40
;     t->src = (uint64_t)src;
8000104c: 33 06 e6 02  	mul	a2, a2, a4
80001050: 33 86 c5 00  	add	a2, a1, a2
80001054: 23 22 06 00  	sw	zero, 4(a2)
80001058: 23 20 d6 00  	sw	a3, 0(a2)
;     t->dst = (uint64_t)dest;
8000105c: 23 26 06 00  	sw	zero, 12(a2)
80001060: 23 24 56 01  	sw	s5, 8(a2)
80001064: b7 26 00 00  	lui	a3, 2
;     t->size = (uint32_t)n;
80001068: 23 28 d6 00  	sw	a3, 16(a2)
;     t->twod = 0;
8000106c: 23 22 06 02  	sw	zero, 36(a2)
;     t->cfg = 0;
80001070: 23 20 06 02  	sw	zero, 32(a2)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80001074: 13 86 85 0a  	addi	a2, a1, 168
80001078: 93 06 10 00  	addi	a3, zero, 1
8000107c: 2f 26 d6 00  	amoadd.w	a2, a3, (a2)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80001080: 03 a6 45 0a  	lw	a2, 164(a1)
80001084: 13 06 16 00  	addi	a2, a2, 1
80001088: 13 76 36 00  	andi	a2, a2, 3
8000108c: 23 a2 c5 0a  	sw	a2, 164(a1)
;     _dm_mtx_release();
80001090: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001094: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
80001098: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
8000109c: 83 25 c5 0b  	lw	a1, 188(a0)
800010a0: e3 8e 05 fe  	beqz	a1, 0x8000109c <.LBB6_116+0x1b0>
;     return _snrt_team_current->root->cluster_core_num;
800010a4: 37 05 00 00  	lui	a0, 0
800010a8: 33 05 45 00  	add	a0, a0, tp
800010ac: 03 25 05 00  	lw	a0, 0(a0)
800010b0: 03 25 05 00  	lw	a0, 0(a0)
800010b4: 03 25 c5 01  	lw	a0, 28(a0)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800010b8: b7 05 00 00  	lui	a1, 0
800010bc: b3 85 45 00  	add	a1, a1, tp
800010c0: 83 a5 c5 00  	lw	a1, 12(a1)
;     return snrt_cluster_core_num() - 1;
800010c4: 13 05 f5 ff  	addi	a0, a0, -1
800010c8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800010cc: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800010d0: 23 a0 a5 00  	sw	a0, 0(a1)
;                                      &bufx[TILESIZE * ((tile / TILESIZE) % 2) +
800010d4: 13 85 04 40  	addi	a0, s1, 1024
800010d8: 13 15 35 00  	slli	a0, a0, 3
800010dc: b3 0d aa 00  	add	s11, s4, a0
800010e0: 93 04 80 00  	addi	s1, zero, 8
800010e4: 13 04 f0 07  	addi	s0, zero, 127
;             __builtin_ssr_setup_1d_r(0, 0, TILESIZE / NTHREADS - 1,
800010e8: 2b 20 00 02  	scfgwi	zero, 32
800010ec: 2b 20 04 04  	scfgwi	s0, 64
800010f0: 2b a0 04 0c  	scfgwi	s1, 192
800010f4: 2b a0 0d 30  	scfgwi	s11, 768
;                                      &bufy[TILESIZE * ((tile / TILESIZE) % 2) +
800010f8: b3 8c aa 00  	add	s9, s5, a0
;             __builtin_ssr_setup_1d_r(1, 0, TILESIZE / NTHREADS - 1,
800010fc: 2b 20 10 02  	scfgwi	zero, 33
80001100: 2b 20 14 04  	scfgwi	s0, 65
80001104: 2b a0 14 0c  	scfgwi	s1, 193
80001108: 2b a0 1c 30  	scfgwi	s9, 769
;             __builtin_ssr_setup_1d_w(2, 0, TILESIZE / NTHREADS - 1,
8000110c: 2b 20 20 02  	scfgwi	zero, 34
80001110: 2b 20 24 04  	scfgwi	s0, 66
80001114: 2b a0 24 0c  	scfgwi	s1, 194
80001118: 2b a0 2d 38  	scfgwi	s11, 898
;             __builtin_ssr_enable();
8000111c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             asm volatile(
80001120: 8b 00 04 00  	frep.o	s0, 1, 0, 0
80001124: 43 71 04 0a  	fmadd.d	ft2, fs0, ft0, ft1
;             __builtin_ssr_barrier(2);
80001128: 2b 15 20 00  	scfgri	a0, 2
8000112c: 13 55 f5 01  	srli	a0, a0, 31
80001130: e3 0c 05 fe  	beqz	a0, 0x80001128 <.LBB6_116+0x23c>
;             __builtin_ssr_disable();
80001134: 73 f5 00 7c  	csrrci	a0, 1984, 1
;             if (thread_id == 0) dm_wait();
80001138: 63 14 0b 06  	bnez	s6, 0x800011a0 <.LBB6_117+0x64>

8000113c <.LBB6_117>:
; #pragma omp barrier
8000113c: 17 45 00 00  	auipc	a0, 4
80001140: 13 05 45 a4  	addi	a0, a0, -1468
80001144: 93 05 0c 00  	mv	a1, s8
80001148: 97 30 00 00  	auipc	ra, 3
8000114c: e7 80 80 bd  	jalr	-1064(ra)
;             __builtin_ssr_setup_1d_r(0, 0, TILESIZE / NTHREADS - 1,
80001150: 2b 20 00 02  	scfgwi	zero, 32
80001154: 2b 20 04 04  	scfgwi	s0, 64
80001158: 2b a0 04 0c  	scfgwi	s1, 192
8000115c: 2b 20 0d 30  	scfgwi	s10, 768
;             __builtin_ssr_setup_1d_r(1, 0, TILESIZE / NTHREADS - 1,
80001160: 2b 20 10 02  	scfgwi	zero, 33
80001164: 2b 20 14 04  	scfgwi	s0, 65
80001168: 2b a0 14 0c  	scfgwi	s1, 193
8000116c: 2b a0 1b 30  	scfgwi	s7, 769
;             __builtin_ssr_setup_1d_w(2, 0, TILESIZE / NTHREADS - 1,
80001170: 2b 20 20 02  	scfgwi	zero, 34
80001174: 2b 20 24 04  	scfgwi	s0, 66
80001178: 2b a0 24 0c  	scfgwi	s1, 194
8000117c: 2b 20 2d 38  	scfgwi	s10, 898
;             __builtin_ssr_enable();
80001180: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             asm volatile(
80001184: 8b 00 04 00  	frep.o	s0, 1, 0, 0
80001188: 43 71 04 0a  	fmadd.d	ft2, fs0, ft0, ft1
;             __builtin_ssr_barrier(2);
8000118c: 2b 15 20 00  	scfgri	a0, 2
80001190: 13 55 f5 01  	srli	a0, a0, 31
80001194: e3 0c 05 fe  	beqz	a0, 0x8000118c <.LBB6_117+0x50>
;             __builtin_ssr_disable();
80001198: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000119c: 6f 00 80 3d  	j	0x80001574 <.LBB6_119>
800011a0: 37 05 00 00  	lui	a0, 0
800011a4: 33 05 45 00  	add	a0, a0, tp
800011a8: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800011ac: 83 25 c5 0b  	lw	a1, 188(a0)
800011b0: e3 8e 05 fe  	beqz	a1, 0x800011ac <.LBB6_117+0x70>
;     return _snrt_team_current->root->cluster_core_num;
800011b4: b7 05 00 00  	lui	a1, 0
800011b8: b3 85 45 00  	add	a1, a1, tp
800011bc: 83 a5 05 00  	lw	a1, 0(a1)
800011c0: 83 a5 05 00  	lw	a1, 0(a1)
800011c4: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800011c8: 37 06 00 00  	lui	a2, 0
800011cc: 33 06 46 00  	add	a2, a2, tp
800011d0: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
800011d4: 93 85 f5 ff  	addi	a1, a1, -1
800011d8: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800011dc: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800011e0: 23 20 b6 00  	sw	a1, 0(a2)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800011e4: 83 25 85 0a  	lw	a1, 168(a0)
;     } while (s != 0);
800011e8: e3 9e 05 fe  	bnez	a1, 0x800011e4 <.LBB6_117+0xa8>
;     while (dm_p->stat_q)
800011ec: 83 25 05 0b  	lw	a1, 176(a0)
800011f0: e3 9e 05 fe  	bnez	a1, 0x800011ec <.LBB6_117+0xb0>
;     _dm_mtx_lock();
800011f4: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
800011f8: 93 02 10 00  	addi	t0, zero, 1
800011fc: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80001200: e3 9e 02 fe  	bnez	t0, 0x800011fc <.LBB6_117+0xc0>
;     dm_p->stat_pvalid = 0;
80001204: 37 05 00 00  	lui	a0, 0
80001208: 33 05 45 00  	add	a0, a0, tp
8000120c: 03 25 45 01  	lw	a0, 20(a0)
80001210: 23 2c 05 0a  	sw	zero, 184(a0)
80001214: 93 05 10 00  	addi	a1, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
80001218: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
8000121c: 83 25 c5 0b  	lw	a1, 188(a0)
80001220: e3 8e 05 fe  	beqz	a1, 0x8000121c <.LBB6_117+0xe0>
;     return _snrt_team_current->root->cluster_core_num;
80001224: b7 05 00 00  	lui	a1, 0
80001228: b3 85 45 00  	add	a1, a1, tp
8000122c: 83 a5 05 00  	lw	a1, 0(a1)
80001230: 83 a5 05 00  	lw	a1, 0(a1)
80001234: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001238: 37 06 00 00  	lui	a2, 0
8000123c: 33 06 46 00  	add	a2, a2, tp
80001240: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80001244: 93 85 f5 ff  	addi	a1, a1, -1
80001248: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
8000124c: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001250: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
80001254: 83 25 85 0b  	lw	a1, 184(a0)
80001258: e3 8e 05 fe  	beqz	a1, 0x80001254 <.LBB6_117+0x118>
;     _dm_mtx_release();
8000125c: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001260: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)

80001264 <.LBB6_118>:
; #pragma omp barrier
80001264: 17 45 00 00  	auipc	a0, 4
80001268: 13 05 c5 91  	addi	a0, a0, -1764
8000126c: 93 05 0c 00  	mv	a1, s8
80001270: 97 30 00 00  	auipc	ra, 3
80001274: e7 80 00 ab  	jalr	-1360(ra)
80001278: 37 05 00 00  	lui	a0, 0
8000127c: 33 05 45 00  	add	a0, a0, tp
80001280: 03 25 45 01  	lw	a0, 20(a0)
80001284: b7 25 00 00  	lui	a1, 2
;                         (void *)&x[tile - TILESIZE],
80001288: b3 05 b9 00  	add	a1, s2, a1
8000128c: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80001290: 83 26 85 0a  	lw	a3, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80001294: e3 6e d6 fe  	bltu	a2, a3, 0x80001290 <.LBB6_118+0x2c>
;     _dm_mtx_lock();
80001298: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
8000129c: 93 02 10 00  	addi	t0, zero, 1
800012a0: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
800012a4: e3 9e 02 fe  	bnez	t0, 0x800012a0 <.LBB6_118+0x3c>
;     t = &dm_p->queue[dm_p->queue_front];
800012a8: 37 05 00 00  	lui	a0, 0
800012ac: 33 06 45 00  	add	a2, a0, tp
800012b0: 83 26 46 01  	lw	a3, 20(a2)
800012b4: 03 a7 46 0a  	lw	a4, 164(a3)
800012b8: b7 27 00 00  	lui	a5, 2
;                         (void *)&bufx[TILESIZE * ((tile / TILESIZE + 1) % 2)],
800012bc: 33 05 fa 00  	add	a0, s4, a5
800012c0: 93 04 80 02  	addi	s1, zero, 40
;     t->src = (uint64_t)src;
800012c4: 33 07 97 02  	mul	a4, a4, s1
800012c8: 33 87 e6 00  	add	a4, a3, a4
800012cc: 23 22 07 00  	sw	zero, 4(a4)
800012d0: 23 20 a7 00  	sw	a0, 0(a4)
;     t->dst = (uint64_t)dest;
800012d4: 23 26 07 00  	sw	zero, 12(a4)
800012d8: 23 24 b7 00  	sw	a1, 8(a4)
;     t->size = (uint32_t)n;
800012dc: 23 28 f7 00  	sw	a5, 16(a4)
;     t->twod = 0;
800012e0: 23 22 07 02  	sw	zero, 36(a4)
;     t->cfg = 0;
800012e4: 23 20 07 02  	sw	zero, 32(a4)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
800012e8: 93 85 86 0a  	addi	a1, a3, 168
800012ec: 13 07 10 00  	addi	a4, zero, 1
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
800012f0: af a5 e5 00  	amoadd.w	a1, a4, (a1)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
800012f4: 83 a5 46 0a  	lw	a1, 164(a3)
800012f8: 93 85 15 00  	addi	a1, a1, 1
800012fc: 93 f5 35 00  	andi	a1, a1, 3
80001300: 23 a2 b6 0a  	sw	a1, 164(a3)
;     _dm_mtx_release();
80001304: 93 85 c6 0a  	addi	a1, a3, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001308: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
8000130c: 83 25 46 01  	lw	a1, 20(a2)
80001310: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80001314: 83 a6 85 0a  	lw	a3, 168(a1)
;     } while (s >= DM_TASK_QUEUE_SIZE);
80001318: e3 6e d6 fe  	bltu	a2, a3, 0x80001314 <.LBB6_118+0xb0>
;     _dm_mtx_lock();
8000131c: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile(
80001320: 93 02 10 00  	addi	t0, zero, 1
80001324: af a2 55 0c  	amoswap.w.aq	t0, t0, (a1)
80001328: e3 9e 02 fe  	bnez	t0, 0x80001324 <.LBB6_118+0xc0>
;     t = &dm_p->queue[dm_p->queue_front];
8000132c: b7 05 00 00  	lui	a1, 0
80001330: b3 85 45 00  	add	a1, a1, tp
80001334: 03 a6 45 01  	lw	a2, 20(a1)
80001338: 83 26 46 0a  	lw	a3, 164(a2)
8000133c: 37 67 00 00  	lui	a4, 6
;                         (void *)&x[tile + TILESIZE], sizeof(double) * TILESIZE);
80001340: 33 07 e9 00  	add	a4, s2, a4
80001344: 93 07 80 02  	addi	a5, zero, 40
;     t->src = (uint64_t)src;
80001348: b3 86 f6 02  	mul	a3, a3, a5
8000134c: b3 06 d6 00  	add	a3, a2, a3
80001350: 23 a2 06 00  	sw	zero, 4(a3)
80001354: 23 a0 e6 00  	sw	a4, 0(a3)
;     t->dst = (uint64_t)dest;
80001358: 23 a6 06 00  	sw	zero, 12(a3)
8000135c: 23 a4 a6 00  	sw	a0, 8(a3)
80001360: 37 25 00 00  	lui	a0, 2
;     t->size = (uint32_t)n;
80001364: 23 a8 a6 00  	sw	a0, 16(a3)
;     t->twod = 0;
80001368: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
8000136c: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80001370: 93 06 86 0a  	addi	a3, a2, 168
80001374: 13 07 10 00  	addi	a4, zero, 1
80001378: af a6 e6 00  	amoadd.w	a3, a4, (a3)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
8000137c: 83 26 46 0a  	lw	a3, 164(a2)
80001380: 93 86 16 00  	addi	a3, a3, 1
80001384: 93 f6 36 00  	andi	a3, a3, 3
80001388: 23 22 d6 0a  	sw	a3, 164(a2)
;     _dm_mtx_release();
8000138c: 13 06 c6 0a  	addi	a2, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001390: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
80001394: 83 a5 45 01  	lw	a1, 20(a1)
;                         (void *)&bufy[TILESIZE * ((tile / TILESIZE + 1) % 2)],
80001398: 33 85 aa 00  	add	a0, s5, a0
8000139c: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800013a0: 83 a6 85 0a  	lw	a3, 168(a1)
;     } while (s >= DM_TASK_QUEUE_SIZE);
800013a4: e3 6e d6 fe  	bltu	a2, a3, 0x800013a0 <.LBB6_118+0x13c>
;     _dm_mtx_lock();
800013a8: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile(
800013ac: 93 02 10 00  	addi	t0, zero, 1
800013b0: af a2 55 0c  	amoswap.w.aq	t0, t0, (a1)
800013b4: e3 9e 02 fe  	bnez	t0, 0x800013b0 <.LBB6_118+0x14c>
;     t = &dm_p->queue[dm_p->queue_front];
800013b8: b7 05 00 00  	lui	a1, 0
800013bc: b3 85 45 00  	add	a1, a1, tp
800013c0: 03 a6 45 01  	lw	a2, 20(a1)
800013c4: 83 26 46 0a  	lw	a3, 164(a2)
800013c8: 37 67 00 00  	lui	a4, 6
;                         (void *)&y[tile + TILESIZE], sizeof(double) * TILESIZE);
800013cc: 33 87 e9 00  	add	a4, s3, a4
800013d0: 93 07 80 02  	addi	a5, zero, 40
;     t->src = (uint64_t)src;
800013d4: b3 86 f6 02  	mul	a3, a3, a5
800013d8: b3 06 d6 00  	add	a3, a2, a3
800013dc: 23 a2 06 00  	sw	zero, 4(a3)
800013e0: 23 a0 e6 00  	sw	a4, 0(a3)
;     t->dst = (uint64_t)dest;
800013e4: 23 a6 06 00  	sw	zero, 12(a3)
800013e8: 23 a4 a6 00  	sw	a0, 8(a3)
800013ec: 37 25 00 00  	lui	a0, 2
;     t->size = (uint32_t)n;
800013f0: 23 a8 a6 00  	sw	a0, 16(a3)
;     t->twod = 0;
800013f4: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
800013f8: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
800013fc: 13 05 86 0a  	addi	a0, a2, 168
80001400: 93 06 10 00  	addi	a3, zero, 1
80001404: 2f 25 d5 00  	amoadd.w	a0, a3, (a0)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80001408: 03 25 46 0a  	lw	a0, 164(a2)
8000140c: 13 05 15 00  	addi	a0, a0, 1
80001410: 13 75 35 00  	andi	a0, a0, 3
80001414: 23 22 a6 0a  	sw	a0, 164(a2)
;     _dm_mtx_release();
80001418: 13 05 c6 0a  	addi	a0, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000141c: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
80001420: 03 a5 45 01  	lw	a0, 20(a1)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80001424: 83 25 c5 0b  	lw	a1, 188(a0)
80001428: e3 8e 05 fe  	beqz	a1, 0x80001424 <.LBB6_118+0x1c0>
;     return _snrt_team_current->root->cluster_core_num;
8000142c: 37 05 00 00  	lui	a0, 0
80001430: 33 05 45 00  	add	a0, a0, tp
80001434: 03 25 05 00  	lw	a0, 0(a0)
80001438: 03 25 05 00  	lw	a0, 0(a0)
8000143c: 03 25 c5 01  	lw	a0, 28(a0)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001440: b7 05 00 00  	lui	a1, 0
80001444: b3 85 45 00  	add	a1, a1, tp
80001448: 83 a5 c5 00  	lw	a1, 12(a1)
;     return snrt_cluster_core_num() - 1;
8000144c: 13 05 f5 ff  	addi	a0, a0, -1
80001450: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80001454: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001458: 23 a0 a5 00  	sw	a0, 0(a1)
8000145c: 13 05 80 00  	addi	a0, zero, 8
80001460: 93 05 f0 07  	addi	a1, zero, 127
;             __builtin_ssr_setup_1d_r(0, 0, TILESIZE / NTHREADS - 1,
80001464: 2b 20 00 02  	scfgwi	zero, 32
80001468: 2b a0 05 04  	scfgwi	a1, 64
8000146c: 2b 20 05 0c  	scfgwi	a0, 192
80001470: 2b 20 0d 30  	scfgwi	s10, 768
;             __builtin_ssr_setup_1d_r(1, 0, TILESIZE / NTHREADS - 1,
80001474: 2b 20 10 02  	scfgwi	zero, 33
80001478: 2b a0 15 04  	scfgwi	a1, 65
8000147c: 2b 20 15 0c  	scfgwi	a0, 193
80001480: 2b a0 1b 30  	scfgwi	s7, 769
;             __builtin_ssr_setup_1d_w(2, 0, TILESIZE / NTHREADS - 1,
80001484: 2b 20 20 02  	scfgwi	zero, 34
80001488: 2b a0 25 04  	scfgwi	a1, 66
8000148c: 2b 20 25 0c  	scfgwi	a0, 194
80001490: 2b 20 2d 38  	scfgwi	s10, 898
;             __builtin_ssr_enable();
80001494: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             asm volatile(
80001498: 8b 80 05 00  	frep.o	a1, 1, 0, 0
8000149c: 43 71 04 0a  	fmadd.d	ft2, fs0, ft0, ft1
;             __builtin_ssr_barrier(2);
800014a0: 2b 15 20 00  	scfgri	a0, 2
800014a4: 13 55 f5 01  	srli	a0, a0, 31
800014a8: e3 0c 05 fe  	beqz	a0, 0x800014a0 <.LBB6_118+0x23c>
;             __builtin_ssr_disable();
800014ac: 73 f5 00 7c  	csrrci	a0, 1984, 1
800014b0: 37 05 00 00  	lui	a0, 0
800014b4: 33 05 45 00  	add	a0, a0, tp
800014b8: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800014bc: 83 25 c5 0b  	lw	a1, 188(a0)
800014c0: e3 8e 05 fe  	beqz	a1, 0x800014bc <.LBB6_118+0x258>
;     return _snrt_team_current->root->cluster_core_num;
800014c4: b7 05 00 00  	lui	a1, 0
800014c8: b3 85 45 00  	add	a1, a1, tp
800014cc: 83 a5 05 00  	lw	a1, 0(a1)
800014d0: 83 a5 05 00  	lw	a1, 0(a1)
800014d4: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800014d8: 37 06 00 00  	lui	a2, 0
800014dc: 33 06 46 00  	add	a2, a2, tp
800014e0: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
800014e4: 93 85 f5 ff  	addi	a1, a1, -1
800014e8: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800014ec: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800014f0: 23 20 b6 00  	sw	a1, 0(a2)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800014f4: 83 25 85 0a  	lw	a1, 168(a0)
;     } while (s != 0);
800014f8: e3 9e 05 fe  	bnez	a1, 0x800014f4 <.LBB6_118+0x290>
;     while (dm_p->stat_q)
800014fc: 83 25 05 0b  	lw	a1, 176(a0)
80001500: e3 9e 05 fe  	bnez	a1, 0x800014fc <.LBB6_118+0x298>
;     _dm_mtx_lock();
80001504: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80001508: 93 02 10 00  	addi	t0, zero, 1
8000150c: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80001510: e3 9e 02 fe  	bnez	t0, 0x8000150c <.LBB6_118+0x2a8>
;     dm_p->stat_pvalid = 0;
80001514: 37 05 00 00  	lui	a0, 0
80001518: 33 05 45 00  	add	a0, a0, tp
8000151c: 03 25 45 01  	lw	a0, 20(a0)
80001520: 23 2c 05 0a  	sw	zero, 184(a0)
80001524: 93 05 10 00  	addi	a1, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
80001528: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
8000152c: 83 25 c5 0b  	lw	a1, 188(a0)
80001530: e3 8e 05 fe  	beqz	a1, 0x8000152c <.LBB6_118+0x2c8>
;     return _snrt_team_current->root->cluster_core_num;
80001534: b7 05 00 00  	lui	a1, 0
80001538: b3 85 45 00  	add	a1, a1, tp
8000153c: 83 a5 05 00  	lw	a1, 0(a1)
80001540: 83 a5 05 00  	lw	a1, 0(a1)
80001544: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001548: 37 06 00 00  	lui	a2, 0
8000154c: 33 06 46 00  	add	a2, a2, tp
80001550: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80001554: 93 85 f5 ff  	addi	a1, a1, -1
80001558: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
8000155c: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001560: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
80001564: 83 25 85 0b  	lw	a1, 184(a0)
80001568: e3 8e 05 fe  	beqz	a1, 0x80001564 <.LBB6_118+0x300>
;     _dm_mtx_release();
8000156c: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001570: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)

80001574 <.LBB6_119>:
; #pragma omp barrier
80001574: 17 35 00 00  	auipc	a0, 3
80001578: 13 05 c5 60  	addi	a0, a0, 1548
8000157c: 93 05 0c 00  	mv	a1, s8
80001580: 97 20 00 00  	auipc	ra, 2
80001584: e7 80 00 7a  	jalr	1952(ra)
;             if (thread_id == 0) {
80001588: 63 1e 0b 04  	bnez	s6, 0x800015e4 <.LBB6_119+0x70>
8000158c: 13 05 80 00  	addi	a0, zero, 8
80001590: 93 05 f0 07  	addi	a1, zero, 127
;             __builtin_ssr_setup_1d_r(0, 0, TILESIZE / NTHREADS - 1,
80001594: 2b 20 00 02  	scfgwi	zero, 32
80001598: 2b a0 05 04  	scfgwi	a1, 64
8000159c: 2b 20 05 0c  	scfgwi	a0, 192
800015a0: 2b a0 0d 30  	scfgwi	s11, 768
;             __builtin_ssr_setup_1d_r(1, 0, TILESIZE / NTHREADS - 1,
800015a4: 2b 20 10 02  	scfgwi	zero, 33
800015a8: 2b a0 15 04  	scfgwi	a1, 65
800015ac: 2b 20 15 0c  	scfgwi	a0, 193
800015b0: 2b a0 1c 30  	scfgwi	s9, 769
;             __builtin_ssr_setup_1d_w(2, 0, TILESIZE / NTHREADS - 1,
800015b4: 2b 20 20 02  	scfgwi	zero, 34
800015b8: 2b a0 25 04  	scfgwi	a1, 66
800015bc: 2b 20 25 0c  	scfgwi	a0, 194
800015c0: 2b a0 2d 38  	scfgwi	s11, 898
;             __builtin_ssr_enable();
800015c4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             asm volatile(
800015c8: 8b 80 05 00  	frep.o	a1, 1, 0, 0
800015cc: 43 71 04 0a  	fmadd.d	ft2, fs0, ft0, ft1
;             __builtin_ssr_barrier(2);
800015d0: 2b 15 20 00  	scfgri	a0, 2
800015d4: 13 55 f5 01  	srli	a0, a0, 31
800015d8: e3 0c 05 fe  	beqz	a0, 0x800015d0 <.LBB6_119+0x5c>
;             __builtin_ssr_disable();
800015dc: 73 f5 00 7c  	csrrci	a0, 1984, 1
800015e0: 6f 00 80 1e  	j	0x800017c8 <.LBB6_120>
800015e4: 37 05 00 00  	lui	a0, 0
800015e8: 33 05 45 00  	add	a0, a0, tp
800015ec: 03 25 45 01  	lw	a0, 20(a0)
800015f0: 93 05 30 00  	addi	a1, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800015f4: 03 26 85 0a  	lw	a2, 168(a0)
;     } while (s >= DM_TASK_QUEUE_SIZE);
800015f8: e3 ee c5 fe  	bltu	a1, a2, 0x800015f4 <.LBB6_119+0x80>
;     _dm_mtx_lock();
800015fc: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
80001600: 93 02 10 00  	addi	t0, zero, 1
80001604: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80001608: e3 9e 02 fe  	bnez	t0, 0x80001604 <.LBB6_119+0x90>
;     t = &dm_p->queue[dm_p->queue_front];
8000160c: 37 05 00 00  	lui	a0, 0
80001610: 33 05 45 00  	add	a0, a0, tp
80001614: 83 25 45 01  	lw	a1, 20(a0)
80001618: 03 a6 45 0a  	lw	a2, 164(a1)
8000161c: b7 46 00 00  	lui	a3, 4
;                         (void *)&x[tile - TILESIZE],
80001620: b3 06 d9 00  	add	a3, s2, a3
80001624: 13 07 80 02  	addi	a4, zero, 40
;     t->src = (uint64_t)src;
80001628: 33 06 e6 02  	mul	a2, a2, a4
8000162c: 33 86 c5 00  	add	a2, a1, a2
80001630: 23 22 06 00  	sw	zero, 4(a2)
80001634: 23 20 46 01  	sw	s4, 0(a2)
;     t->dst = (uint64_t)dest;
80001638: 23 26 06 00  	sw	zero, 12(a2)
8000163c: 23 24 d6 00  	sw	a3, 8(a2)
80001640: b7 26 00 00  	lui	a3, 2
;     t->size = (uint32_t)n;
80001644: 23 28 d6 00  	sw	a3, 16(a2)
;     t->twod = 0;
80001648: 23 22 06 02  	sw	zero, 36(a2)
;     t->cfg = 0;
8000164c: 23 20 06 02  	sw	zero, 32(a2)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80001650: 13 86 85 0a  	addi	a2, a1, 168
80001654: 93 06 10 00  	addi	a3, zero, 1
80001658: 2f 26 d6 00  	amoadd.w	a2, a3, (a2)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
8000165c: 03 a6 45 0a  	lw	a2, 164(a1)
80001660: 13 06 16 00  	addi	a2, a2, 1
80001664: 13 76 36 00  	andi	a2, a2, 3
80001668: 23 a2 c5 0a  	sw	a2, 164(a1)
;     _dm_mtx_release();
8000166c: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001670: 2f a0 05 0a  	amoswap.w.rl	zero, zero, (a1)
80001674: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80001678: 83 25 c5 0b  	lw	a1, 188(a0)
8000167c: e3 8e 05 fe  	beqz	a1, 0x80001678 <.LBB6_119+0x104>
;     return _snrt_team_current->root->cluster_core_num;
80001680: 37 05 00 00  	lui	a0, 0
80001684: 33 05 45 00  	add	a0, a0, tp
80001688: 03 25 05 00  	lw	a0, 0(a0)
8000168c: 03 25 05 00  	lw	a0, 0(a0)
80001690: 03 25 c5 01  	lw	a0, 28(a0)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001694: b7 05 00 00  	lui	a1, 0
80001698: b3 85 45 00  	add	a1, a1, tp
8000169c: 83 a5 c5 00  	lw	a1, 12(a1)
;     return snrt_cluster_core_num() - 1;
800016a0: 13 05 f5 ff  	addi	a0, a0, -1
800016a4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800016a8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800016ac: 23 a0 a5 00  	sw	a0, 0(a1)
800016b0: 13 05 80 00  	addi	a0, zero, 8
800016b4: 93 05 f0 07  	addi	a1, zero, 127
;             __builtin_ssr_setup_1d_r(0, 0, TILESIZE / NTHREADS - 1,
800016b8: 2b 20 00 02  	scfgwi	zero, 32
800016bc: 2b a0 05 04  	scfgwi	a1, 64
800016c0: 2b 20 05 0c  	scfgwi	a0, 192
800016c4: 2b a0 0d 30  	scfgwi	s11, 768
;             __builtin_ssr_setup_1d_r(1, 0, TILESIZE / NTHREADS - 1,
800016c8: 2b 20 10 02  	scfgwi	zero, 33
800016cc: 2b a0 15 04  	scfgwi	a1, 65
800016d0: 2b 20 15 0c  	scfgwi	a0, 193
800016d4: 2b a0 1c 30  	scfgwi	s9, 769
;             __builtin_ssr_setup_1d_w(2, 0, TILESIZE / NTHREADS - 1,
800016d8: 2b 20 20 02  	scfgwi	zero, 34
800016dc: 2b a0 25 04  	scfgwi	a1, 66
800016e0: 2b 20 25 0c  	scfgwi	a0, 194
800016e4: 2b a0 2d 38  	scfgwi	s11, 898
;             __builtin_ssr_enable();
800016e8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             asm volatile(
800016ec: 8b 80 05 00  	frep.o	a1, 1, 0, 0
800016f0: 43 71 04 0a  	fmadd.d	ft2, fs0, ft0, ft1
;             __builtin_ssr_barrier(2);
800016f4: 2b 15 20 00  	scfgri	a0, 2
800016f8: 13 55 f5 01  	srli	a0, a0, 31
800016fc: e3 0c 05 fe  	beqz	a0, 0x800016f4 <.LBB6_119+0x180>
;             __builtin_ssr_disable();
80001700: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001704: 37 05 00 00  	lui	a0, 0
80001708: 33 05 45 00  	add	a0, a0, tp
8000170c: 03 25 45 01  	lw	a0, 20(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80001710: 83 25 c5 0b  	lw	a1, 188(a0)
80001714: e3 8e 05 fe  	beqz	a1, 0x80001710 <.LBB6_119+0x19c>
;     return _snrt_team_current->root->cluster_core_num;
80001718: b7 05 00 00  	lui	a1, 0
8000171c: b3 85 45 00  	add	a1, a1, tp
80001720: 83 a5 05 00  	lw	a1, 0(a1)
80001724: 83 a5 05 00  	lw	a1, 0(a1)
80001728: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000172c: 37 06 00 00  	lui	a2, 0
80001730: 33 06 46 00  	add	a2, a2, tp
80001734: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80001738: 93 85 f5 ff  	addi	a1, a1, -1
8000173c: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80001740: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001744: 23 20 b6 00  	sw	a1, 0(a2)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80001748: 83 25 85 0a  	lw	a1, 168(a0)
;     } while (s != 0);
8000174c: e3 9e 05 fe  	bnez	a1, 0x80001748 <.LBB6_119+0x1d4>
;     while (dm_p->stat_q)
80001750: 83 25 05 0b  	lw	a1, 176(a0)
80001754: e3 9e 05 fe  	bnez	a1, 0x80001750 <.LBB6_119+0x1dc>
;     _dm_mtx_lock();
80001758: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
8000175c: 93 02 10 00  	addi	t0, zero, 1
80001760: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80001764: e3 9e 02 fe  	bnez	t0, 0x80001760 <.LBB6_119+0x1ec>
;     dm_p->stat_pvalid = 0;
80001768: 37 05 00 00  	lui	a0, 0
8000176c: 33 05 45 00  	add	a0, a0, tp
80001770: 03 25 45 01  	lw	a0, 20(a0)
80001774: 23 2c 05 0a  	sw	zero, 184(a0)
80001778: 93 05 10 00  	addi	a1, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
8000177c: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80001780: 83 25 c5 0b  	lw	a1, 188(a0)
80001784: e3 8e 05 fe  	beqz	a1, 0x80001780 <.LBB6_119+0x20c>
;     return _snrt_team_current->root->cluster_core_num;
80001788: b7 05 00 00  	lui	a1, 0
8000178c: b3 85 45 00  	add	a1, a1, tp
80001790: 83 a5 05 00  	lw	a1, 0(a1)
80001794: 83 a5 05 00  	lw	a1, 0(a1)
80001798: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000179c: 37 06 00 00  	lui	a2, 0
800017a0: 33 06 46 00  	add	a2, a2, tp
800017a4: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
800017a8: 93 85 f5 ff  	addi	a1, a1, -1
800017ac: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800017b0: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800017b4: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
800017b8: 83 25 85 0b  	lw	a1, 184(a0)
800017bc: e3 8e 05 fe  	beqz	a1, 0x800017b8 <.LBB6_119+0x244>
;     _dm_mtx_release();
800017c0: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800017c4: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)

800017c8 <.LBB6_120>:
; #pragma omp barrier
800017c8: 17 35 00 00  	auipc	a0, 3
800017cc: 13 05 85 3b  	addi	a0, a0, 952
800017d0: 93 05 0c 00  	mv	a1, s8
800017d4: 97 20 00 00  	auipc	ra, 2
800017d8: e7 80 c0 54  	jalr	1356(ra)
;         if (thread_id == 0) {
800017dc: 63 0a 0b 14  	beqz	s6, 0x80001930 <.LBB6_120+0x168>
800017e0: 37 05 00 00  	lui	a0, 0
800017e4: 33 05 45 00  	add	a0, a0, tp
800017e8: 83 25 45 01  	lw	a1, 20(a0)
800017ec: 37 65 00 00  	lui	a0, 6
;                 (void *)&x[tile - TILESIZE],
800017f0: 33 05 a9 00  	add	a0, s2, a0
800017f4: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800017f8: 83 a6 85 0a  	lw	a3, 168(a1)
;     } while (s >= DM_TASK_QUEUE_SIZE);
800017fc: e3 6e d6 fe  	bltu	a2, a3, 0x800017f8 <.LBB6_120+0x30>
;     _dm_mtx_lock();
80001800: 93 85 c5 0a  	addi	a1, a1, 172
;     asm volatile(
80001804: 93 02 10 00  	addi	t0, zero, 1
80001808: af a2 55 0c  	amoswap.w.aq	t0, t0, (a1)
8000180c: e3 9e 02 fe  	bnez	t0, 0x80001808 <.LBB6_120+0x40>
;     t = &dm_p->queue[dm_p->queue_front];
80001810: b7 05 00 00  	lui	a1, 0
80001814: b3 85 45 00  	add	a1, a1, tp
80001818: 03 a6 45 01  	lw	a2, 20(a1)
8000181c: 83 26 46 0a  	lw	a3, 164(a2)
80001820: 37 27 00 00  	lui	a4, 2
;                 (void *)&bufx[TILESIZE * ((tile / TILESIZE + 1) % 2)],
80001824: b3 07 ea 00  	add	a5, s4, a4
80001828: 93 04 80 02  	addi	s1, zero, 40
;     t->src = (uint64_t)src;
8000182c: b3 86 96 02  	mul	a3, a3, s1
80001830: b3 06 d6 00  	add	a3, a2, a3
80001834: 23 a2 06 00  	sw	zero, 4(a3)
80001838: 23 a0 f6 00  	sw	a5, 0(a3)
;     t->dst = (uint64_t)dest;
8000183c: 23 a6 06 00  	sw	zero, 12(a3)
80001840: 23 a4 a6 00  	sw	a0, 8(a3)
;     t->size = (uint32_t)n;
80001844: 23 a8 e6 00  	sw	a4, 16(a3)
;     t->twod = 0;
80001848: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
8000184c: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80001850: 13 05 86 0a  	addi	a0, a2, 168
80001854: 93 06 10 00  	addi	a3, zero, 1
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80001858: 2f 25 d5 00  	amoadd.w	a0, a3, (a0)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
8000185c: 03 25 46 0a  	lw	a0, 164(a2)
80001860: 13 05 15 00  	addi	a0, a0, 1
80001864: 13 75 35 00  	andi	a0, a0, 3
80001868: 23 22 a6 0a  	sw	a0, 164(a2)
;     _dm_mtx_release();
8000186c: 13 05 c6 0a  	addi	a0, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80001870: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
80001874: 03 a5 45 01  	lw	a0, 20(a1)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80001878: 83 25 c5 0b  	lw	a1, 188(a0)
8000187c: e3 8e 05 fe  	beqz	a1, 0x80001878 <.LBB6_120+0xb0>
;     return _snrt_team_current->root->cluster_core_num;
80001880: b7 05 00 00  	lui	a1, 0
80001884: b3 85 45 00  	add	a1, a1, tp
80001888: 83 a5 05 00  	lw	a1, 0(a1)
8000188c: 83 a5 05 00  	lw	a1, 0(a1)
80001890: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001894: 37 06 00 00  	lui	a2, 0
80001898: 33 06 46 00  	add	a2, a2, tp
8000189c: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
800018a0: 93 85 f5 ff  	addi	a1, a1, -1
800018a4: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800018a8: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800018ac: 23 20 b6 00  	sw	a1, 0(a2)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800018b0: 83 25 85 0a  	lw	a1, 168(a0)
;     } while (s != 0);
800018b4: e3 9e 05 fe  	bnez	a1, 0x800018b0 <.LBB6_120+0xe8>
;     while (dm_p->stat_q)
800018b8: 83 25 05 0b  	lw	a1, 176(a0)
800018bc: e3 9e 05 fe  	bnez	a1, 0x800018b8 <.LBB6_120+0xf0>
;     _dm_mtx_lock();
800018c0: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
800018c4: 93 02 10 00  	addi	t0, zero, 1
800018c8: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
800018cc: e3 9e 02 fe  	bnez	t0, 0x800018c8 <.LBB6_120+0x100>
;     dm_p->stat_pvalid = 0;
800018d0: 37 05 00 00  	lui	a0, 0
800018d4: 33 05 45 00  	add	a0, a0, tp
800018d8: 03 25 45 01  	lw	a0, 20(a0)
800018dc: 23 2c 05 0a  	sw	zero, 184(a0)
800018e0: 93 05 10 00  	addi	a1, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
800018e4: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800018e8: 83 25 c5 0b  	lw	a1, 188(a0)
800018ec: e3 8e 05 fe  	beqz	a1, 0x800018e8 <.LBB6_120+0x120>
;     return _snrt_team_current->root->cluster_core_num;
800018f0: b7 05 00 00  	lui	a1, 0
800018f4: b3 85 45 00  	add	a1, a1, tp
800018f8: 83 a5 05 00  	lw	a1, 0(a1)
800018fc: 83 a5 05 00  	lw	a1, 0(a1)
80001900: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001904: 37 06 00 00  	lui	a2, 0
80001908: 33 06 46 00  	add	a2, a2, tp
8000190c: 03 26 c6 00  	lw	a2, 12(a2)
;     return snrt_cluster_core_num() - 1;
80001910: 93 85 f5 ff  	addi	a1, a1, -1
80001914: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80001918: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000191c: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
80001920: 83 25 85 0b  	lw	a1, 184(a0)
80001924: e3 8e 05 fe  	beqz	a1, 0x80001920 <.LBB6_120+0x158>
;     _dm_mtx_release();
80001928: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000192c: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
; #pragma omp parallel firstprivate(bufx, bufy, x, y, a)
80001930: 07 34 01 00  	fld	fs0, 0(sp)
80001934: 83 2d c1 00  	lw	s11, 12(sp)
80001938: 03 2d 01 01  	lw	s10, 16(sp)
8000193c: 83 2c 41 01  	lw	s9, 20(sp)
80001940: 03 2c 81 01  	lw	s8, 24(sp)
80001944: 83 2b c1 01  	lw	s7, 28(sp)
80001948: 03 2b 01 02  	lw	s6, 32(sp)
8000194c: 83 2a 41 02  	lw	s5, 36(sp)
80001950: 03 2a 81 02  	lw	s4, 40(sp)
80001954: 83 29 c1 02  	lw	s3, 44(sp)
80001958: 03 29 01 03  	lw	s2, 48(sp)
8000195c: 83 24 41 03  	lw	s1, 52(sp)
80001960: 03 24 81 03  	lw	s0, 56(sp)
80001964: 83 20 c1 03  	lw	ra, 60(sp)
80001968: 13 01 01 04  	addi	sp, sp, 64
8000196c: 67 80 00 00  	ret

80001970 <main>:
; int main() {
80001970: 13 01 01 fe  	addi	sp, sp, -32
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80001974: 23 2e 11 00  	sw	ra, 28(sp)
80001978: 23 2c 81 00  	sw	s0, 24(sp)
8000197c: 23 2a 91 00  	sw	s1, 20(sp)
80001980: 23 28 21 01  	sw	s2, 16(sp)
80001984: 23 26 31 01  	sw	s3, 12(sp)
80001988: 23 24 41 01  	sw	s4, 8(sp)
8000198c: 23 22 51 01  	sw	s5, 4(sp)
80001990: 37 05 00 00  	lui	a0, 0
80001994: 33 05 45 00  	add	a0, a0, tp
80001998: 03 24 45 00  	lw	s0, 4(a0)
;     __snrt_omp_bootstrap(core_idx);
8000199c: 13 05 04 00  	mv	a0, s0
800019a0: 97 20 00 00  	auipc	ra, 2
800019a4: e7 80 80 01  	jalr	24(ra)
800019a8: 93 04 00 00  	mv	s1, zero
;     __snrt_omp_bootstrap(core_idx);
800019ac: 63 18 05 10  	bnez	a0, 0x80001abc <.LBB7_10+0x8c>

800019b0 <.LBB7_5>:
;     tprintf("Static schedule test\n");
800019b0: 17 35 00 00  	auipc	a0, 3
800019b4: 13 05 05 f1  	addi	a0, a0, -240
800019b8: 97 00 00 00  	auipc	ra, 0
800019bc: e7 80 c0 29  	jalr	668(ra)
;     err |= static_schedule() << 0;
800019c0: 97 f0 ff ff  	auipc	ra, 1048575
800019c4: e7 80 40 c7  	jalr	-908(ra)

800019c8 <.LBB7_6>:
;     printf("%-20s %d\n", "fork_oh", omp_prof->fork_oh);
800019c8: 97 3a 01 00  	auipc	s5, 19
800019cc: 93 8a ca 59  	addi	s5, s5, 1436
800019d0: 83 a5 0a 00  	lw	a1, 0(s5)
800019d4: 03 a6 05 00  	lw	a2, 0(a1)
;     err |= static_schedule() << 0;
800019d8: 13 09 05 00  	mv	s2, a0

800019dc <.LBB7_7>:
;     printf("%-20s %d\n", "fork_oh", omp_prof->fork_oh);
800019dc: 97 34 00 00  	auipc	s1, 3
800019e0: 93 84 e4 f5  	addi	s1, s1, -162

800019e4 <.LBB7_8>:
800019e4: 97 39 00 00  	auipc	s3, 3
800019e8: 93 89 79 fc  	addi	s3, s3, -57
800019ec: 13 85 04 00  	mv	a0, s1
800019f0: 93 85 09 00  	mv	a1, s3
800019f4: 97 00 00 00  	auipc	ra, 0
800019f8: e7 80 00 26  	jalr	608(ra)

800019fc <.LBB7_9>:
;     tprintf("Launch overhead test\n");
800019fc: 17 35 00 00  	auipc	a0, 3
80001a00: 13 05 45 12  	addi	a0, a0, 292
80001a04: 97 00 00 00  	auipc	ra, 0
80001a08: e7 80 00 25  	jalr	592(ra)
;     err |= paralell_section() << 1;
80001a0c: 97 f0 ff ff  	auipc	ra, 1048575
80001a10: e7 80 40 ed  	jalr	-300(ra)
;     printf("%-20s %d\n", "fork_oh", omp_prof->fork_oh);
80001a14: 83 a5 0a 00  	lw	a1, 0(s5)
80001a18: 03 a6 05 00  	lw	a2, 0(a1)
;     err |= paralell_section() << 1;
80001a1c: 13 1a 15 00  	slli	s4, a0, 1
;     printf("%-20s %d\n", "fork_oh", omp_prof->fork_oh);
80001a20: 13 85 04 00  	mv	a0, s1
80001a24: 93 85 09 00  	mv	a1, s3
80001a28: 97 00 00 00  	auipc	ra, 0
80001a2c: e7 80 c0 22  	jalr	556(ra)

80001a30 <.LBB7_10>:
;     tprintf("Double buffering test\n");
80001a30: 17 35 00 00  	auipc	a0, 3
80001a34: 13 05 65 fe  	addi	a0, a0, -26
80001a38: 97 00 00 00  	auipc	ra, 0
80001a3c: e7 80 c0 21  	jalr	540(ra)
;     err |= double_buffering() << 2;
80001a40: 97 f0 ff ff  	auipc	ra, 1048575
80001a44: e7 80 40 f1  	jalr	-236(ra)
;     printf("%-20s %d\n", "fork_oh", omp_prof->fork_oh);
80001a48: 03 a5 0a 00  	lw	a0, 0(s5)
80001a4c: 03 26 05 00  	lw	a2, 0(a0)
80001a50: 13 85 04 00  	mv	a0, s1
80001a54: 93 85 09 00  	mv	a1, s3
80001a58: 97 00 00 00  	auipc	ra, 0
80001a5c: e7 80 c0 1f  	jalr	508(ra)
;     __snrt_omp_destroy(core_idx);
80001a60: 13 05 04 00  	mv	a0, s0
80001a64: 97 20 00 00  	auipc	ra, 2
80001a68: e7 80 80 75  	jalr	1880(ra)
;     dm_p->stat_q = STAT_EXIT;
80001a6c: 37 05 00 00  	lui	a0, 0
80001a70: 33 05 45 00  	add	a0, a0, tp
80001a74: 03 25 45 01  	lw	a0, 20(a0)
80001a78: 93 05 20 00  	addi	a1, zero, 2
80001a7c: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80001a80: 83 25 c5 0b  	lw	a1, 188(a0)
80001a84: e3 8e 05 fe  	beqz	a1, 0x80001a80 <.LBB7_10+0x50>
;     return _snrt_team_current->root->cluster_core_num;
80001a88: 37 05 00 00  	lui	a0, 0
80001a8c: 33 05 45 00  	add	a0, a0, tp
80001a90: 03 25 05 00  	lw	a0, 0(a0)
80001a94: 03 25 05 00  	lw	a0, 0(a0)
;     err |= paralell_section() << 1;
80001a98: b3 64 2a 01  	or	s1, s4, s2
;     return _snrt_team_current->root->cluster_core_num;
80001a9c: 03 25 c5 01  	lw	a0, 28(a0)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001aa0: b7 05 00 00  	lui	a1, 0
80001aa4: b3 85 45 00  	add	a1, a1, tp
80001aa8: 83 a5 c5 00  	lw	a1, 12(a1)
;     return snrt_cluster_core_num() - 1;
80001aac: 13 05 f5 ff  	addi	a0, a0, -1
80001ab0: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80001ab4: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80001ab8: 23 a0 a5 00  	sw	a0, 0(a1)
80001abc: 97 30 00 00  	auipc	ra, 3
80001ac0: e7 80 40 d9  	jalr	-620(ra)
; }
80001ac4: 13 85 04 00  	mv	a0, s1
80001ac8: 83 2a 41 00  	lw	s5, 4(sp)
80001acc: 03 2a 81 00  	lw	s4, 8(sp)
80001ad0: 83 29 c1 00  	lw	s3, 12(sp)
80001ad4: 03 29 01 01  	lw	s2, 16(sp)
80001ad8: 83 24 41 01  	lw	s1, 20(sp)
80001adc: 03 24 81 01  	lw	s0, 24(sp)
80001ae0: 83 20 c1 01  	lw	ra, 28(sp)
80001ae4: 13 01 01 02  	addi	sp, sp, 32
80001ae8: 67 80 00 00  	ret

80001aec <_snrt_init_team>:
;     team->base.root = team;
80001aec: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80001af0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80001af4: 03 23 87 00  	lw	t1, 8(a4)
80001af8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80001afc: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80001b00: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80001b04: 83 22 47 00  	lw	t0, 4(a4)
80001b08: 33 88 08 03  	mul	a6, a7, a6
80001b0c: 33 05 58 02  	mul	a0, a6, t0
80001b10: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001b14: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80001b18: 33 85 68 40  	sub	a0, a7, t1
80001b1c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80001b20: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80001b24: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80001b28: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80001b2c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80001b30: 03 25 87 01  	lw	a0, 24(a4)
80001b34: b7 05 00 10  	lui	a1, 65536
80001b38: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80001b3c: 23 a2 07 02  	sw	zero, 36(a5)
80001b40: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80001b44: 03 25 07 02  	lw	a0, 32(a4)
80001b48: 83 25 47 02  	lw	a1, 36(a4)
80001b4c: 23 a4 a7 02  	sw	a0, 40(a5)
80001b50: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80001b54: 23 a8 c7 02  	sw	a2, 48(a5)
80001b58: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80001b5c: 23 ac d7 02  	sw	a3, 56(a5)
80001b60: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80001b64: 03 25 07 01  	lw	a0, 16(a4)
80001b68: 33 08 a6 00  	add	a6, a2, a0
80001b6c: 93 05 08 19  	addi	a1, a6, 400
80001b70: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80001b74: b3 32 a8 00  	sltu	t0, a6, a0
80001b78: 93 55 15 00  	srli	a1, a0, 1
80001b7c: 33 03 b8 00  	add	t1, a6, a1
80001b80: b3 35 03 01  	sltu	a1, t1, a6
80001b84: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80001b88: 23 a0 67 04  	sw	t1, 64(a5)
80001b8c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80001b90: 13 15 15 00  	slli	a0, a0, 1
80001b94: b3 05 c5 00  	add	a1, a0, a2
80001b98: 33 b5 a5 00  	sltu	a0, a1, a0
80001b9c: 23 a4 b7 04  	sw	a1, 72(a5)
80001ba0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80001ba4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80001ba8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80001bac: 37 05 00 00  	lui	a0, 0
80001bb0: 33 05 45 00  	add	a0, a0, tp
80001bb4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80001bb8: 03 a5 07 00  	lw	a0, 0(a5)
80001bbc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80001bc0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80001bc4: b3 85 b8 40  	sub	a1, a7, a1
80001bc8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80001bcc: b7 05 00 00  	lui	a1, 0
80001bd0: b3 85 45 00  	add	a1, a1, tp
80001bd4: 23 a2 a5 00  	sw	a0, 4(a1)
80001bd8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80001bdc: 33 85 a8 02  	mul	a0, a7, a0

80001be0 <.LBB0_1>:
80001be0: 97 35 01 00  	auipc	a1, 19
80001be4: 93 85 85 39  	addi	a1, a1, 920
80001be8: 33 05 b5 00  	add	a0, a0, a1
80001bec: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80001bf0: 83 28 07 03  	lw	a7, 48(a4)
80001bf4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80001bf8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80001bfc: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80001c00: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80001c04: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80001c08: 13 05 76 00  	addi	a0, a2, 7
80001c0c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80001c10: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80001c14: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80001c18: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80001c1c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80001c20: 03 a5 05 00  	lw	a0, 0(a1)
80001c24: 13 05 f5 44  	addi	a0, a0, 1103
80001c28: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80001c2c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80001c30: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80001c34: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80001c38: 37 05 00 00  	lui	a0, 0
80001c3c: 33 05 45 00  	add	a0, a0, tp
80001c40: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80001c44: 37 05 00 00  	lui	a0, 0
80001c48: 33 05 45 00  	add	a0, a0, tp
80001c4c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80001c50: 67 80 00 00  	ret

80001c54 <printf_>:
; {
80001c54: 13 01 01 fd  	addi	sp, sp, -48
80001c58: 23 26 11 00  	sw	ra, 12(sp)
80001c5c: 93 02 05 00  	mv	t0, a0
80001c60: 23 26 11 03  	sw	a7, 44(sp)
80001c64: 23 24 01 03  	sw	a6, 40(sp)
80001c68: 23 22 f1 02  	sw	a5, 36(sp)
80001c6c: 23 20 e1 02  	sw	a4, 32(sp)
80001c70: 23 2e d1 00  	sw	a3, 28(sp)
80001c74: 23 2c c1 00  	sw	a2, 24(sp)
80001c78: 23 2a b1 00  	sw	a1, 20(sp)
80001c7c: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80001c80: 23 24 a1 00  	sw	a0, 8(sp)

80001c84 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80001c84: 17 15 00 00  	auipc	a0, 1
80001c88: 13 05 45 c2  	addi	a0, a0, -988
80001c8c: 93 05 71 00  	addi	a1, sp, 7
80001c90: 13 06 f0 ff  	addi	a2, zero, -1
80001c94: 13 07 41 01  	addi	a4, sp, 20
80001c98: 93 86 02 00  	mv	a3, t0
80001c9c: 97 00 00 00  	auipc	ra, 0
80001ca0: e7 80 40 01  	jalr	20(ra)
;   return ret;
80001ca4: 83 20 c1 00  	lw	ra, 12(sp)
80001ca8: 13 01 01 03  	addi	sp, sp, 48
80001cac: 67 80 00 00  	ret

80001cb0 <_vsnprintf.llvm.17592004524093383706>:
; {
80001cb0: 13 01 01 f9  	addi	sp, sp, -112
80001cb4: 23 26 11 06  	sw	ra, 108(sp)
80001cb8: 23 24 81 06  	sw	s0, 104(sp)
80001cbc: 23 22 91 06  	sw	s1, 100(sp)
80001cc0: 23 20 21 07  	sw	s2, 96(sp)
80001cc4: 23 2e 31 05  	sw	s3, 92(sp)
80001cc8: 23 2c 41 05  	sw	s4, 88(sp)
80001ccc: 23 2a 51 05  	sw	s5, 84(sp)
80001cd0: 23 28 61 05  	sw	s6, 80(sp)
80001cd4: 23 26 71 05  	sw	s7, 76(sp)
80001cd8: 23 24 81 05  	sw	s8, 72(sp)
80001cdc: 23 22 91 05  	sw	s9, 68(sp)
80001ce0: 23 20 a1 05  	sw	s10, 64(sp)
80001ce4: 23 2e b1 03  	sw	s11, 60(sp)
80001ce8: 93 09 07 00  	mv	s3, a4
80001cec: 13 84 06 00  	mv	s0, a3
80001cf0: 93 0a 06 00  	mv	s5, a2
80001cf4: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80001cf8: 63 86 05 00  	beqz	a1, 0x80001d04 <.LBB1_183>
80001cfc: 13 09 05 00  	mv	s2, a0
80001d00: 6f 00 c0 00  	j	0x80001d0c <.LBB1_183+0x8>

80001d04 <.LBB1_183>:
80001d04: 17 19 00 00  	auipc	s2, 1
80001d08: 13 09 09 c5  	addi	s2, s2, -944
80001d0c: 13 0c 00 00  	mv	s8, zero
80001d10: 13 0b 50 02  	addi	s6, zero, 37
80001d14: 93 0d 00 01  	addi	s11, zero, 16
80001d18: 93 0b e0 02  	addi	s7, zero, 46
80001d1c: 37 15 00 00  	lui	a0, 1
80001d20: 13 05 05 80  	addi	a0, a0, -2048
80001d24: 23 2c a1 00  	sw	a0, 24(sp)
80001d28: 37 05 01 00  	lui	a0, 16
80001d2c: 13 05 f5 ff  	addi	a0, a0, -1
80001d30: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80001d34: 13 0d 24 00  	addi	s10, s0, 2
80001d38: 93 0c 0c 00  	mv	s9, s8
80001d3c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80001d40: 03 45 04 00  	lbu	a0, 0(s0)
80001d44: e3 04 05 30  	beqz	a0, 0x8000284c <.LBB1_124+0x3b0>
80001d48: 63 08 65 03  	beq	a0, s6, 0x80001d78 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80001d4c: 93 84 1c 00  	addi	s1, s9, 1
80001d50: 93 05 0a 00  	mv	a1, s4
80001d54: 13 86 0c 00  	mv	a2, s9
80001d58: 93 86 0a 00  	mv	a3, s5
80001d5c: e7 00 09 00  	jalr	s2
;       format++;
80001d60: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80001d64: 13 0d 1d 00  	addi	s10, s10, 1
80001d68: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80001d6c: 03 45 04 00  	lbu	a0, 0(s0)
80001d70: e3 1c 05 fc  	bnez	a0, 0x80001d48 <.LBB1_183+0x44>
80001d74: 6f 00 90 2d  	j	0x8000284c <.LBB1_124+0x3b0>
;     flags = 0U;
80001d78: 13 04 00 00  	mv	s0, zero
80001d7c: 6f 00 00 01  	j	0x80001d8c <.LBB1_9+0x8>

80001d80 <.LBB1_8>:
80001d80: 93 05 00 01  	addi	a1, zero, 16

80001d84 <.LBB1_9>:
80001d84: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80001d88: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80001d8c: 03 45 fd ff  	lbu	a0, -1(s10)
80001d90: 93 05 05 fe  	addi	a1, a0, -32
80001d94: 63 ec bd 02  	bltu	s11, a1, 0x80001dcc <.LBB1_15>
80001d98: 93 95 25 00  	slli	a1, a1, 2

80001d9c <.LBB1_184>:
80001d9c: 17 36 00 00  	auipc	a2, 3
80001da0: 13 06 06 e1  	addi	a2, a2, -496
80001da4: b3 85 c5 00  	add	a1, a1, a2
80001da8: 03 a6 05 00  	lw	a2, 0(a1)
80001dac: 93 05 10 00  	addi	a1, zero, 1
80001db0: 67 00 06 00  	jr	a2

80001db4 <.LBB1_12>:
80001db4: 93 05 80 00  	addi	a1, zero, 8
80001db8: 6f f0 df fc  	j	0x80001d84 <.LBB1_9>

80001dbc <.LBB1_13>:
80001dbc: 93 05 40 00  	addi	a1, zero, 4
80001dc0: 6f f0 5f fc  	j	0x80001d84 <.LBB1_9>

80001dc4 <.LBB1_14>:
80001dc4: 93 05 20 00  	addi	a1, zero, 2
80001dc8: 6f f0 df fb  	j	0x80001d84 <.LBB1_9>

80001dcc <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001dcc: 93 05 05 fd  	addi	a1, a0, -48
80001dd0: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80001dd4: 93 05 fd ff  	addi	a1, s10, -1
80001dd8: 93 06 90 00  	addi	a3, zero, 9
80001ddc: 63 ee c6 06  	bltu	a3, a2, 0x80001e58 <.LBB1_15+0x8c>
80001de0: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001de4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001de8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001dec: b3 06 8b 03  	mul	a3, s6, s8
80001df0: 93 85 15 00  	addi	a1, a1, 1
80001df4: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001df8: 93 06 05 fd  	addi	a3, a0, -48
80001dfc: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001e00: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80001e04: e3 e0 86 ff  	bltu	a3, s8, 0x80001de4 <.LBB1_15+0x18>
80001e08: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001e0c: 63 16 75 0b  	bne	a0, s7, 0x80001eb8 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001e10: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80001e14: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001e18: 93 05 05 fd  	addi	a1, a0, -48
80001e1c: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001e20: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80001e24: 93 06 90 00  	addi	a3, zero, 9
80001e28: 63 e0 c6 06  	bltu	a3, a2, 0x80001e88 <.LBB1_15+0xbc>
80001e2c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001e30: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001e34: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001e38: b3 86 8b 03  	mul	a3, s7, s8
80001e3c: 93 85 15 00  	addi	a1, a1, 1
80001e40: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001e44: 93 06 05 fd  	addi	a3, a0, -48
80001e48: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001e4c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80001e50: e3 e0 86 ff  	bltu	a3, s8, 0x80001e30 <.LBB1_15+0x64>
80001e54: 6f 00 00 07  	j	0x80001ec4 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001e58: 13 06 a0 02  	addi	a2, zero, 42
80001e5c: 63 18 c5 04  	bne	a0, a2, 0x80001eac <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80001e60: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001e64: 63 d4 05 00  	bgez	a1, 0x80001e6c <.LBB1_15+0xa0>
80001e68: 13 64 24 00  	ori	s0, s0, 2
80001e6c: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80001e70: 03 45 0d 00  	lbu	a0, 0(s10)
80001e74: 13 d6 f5 41  	srai	a2, a1, 31
80001e78: b3 85 c5 00  	add	a1, a1, a2
80001e7c: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80001e80: e3 08 75 f9  	beq	a0, s7, 0x80001e10 <.LBB1_15+0x44>
80001e84: 6f 00 40 03  	j	0x80001eb8 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001e88: 13 06 a0 02  	addi	a2, zero, 42
80001e8c: 63 1a c5 02  	bne	a0, a2, 0x80001ec0 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80001e90: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001e94: 63 44 70 01  	bgtz	s7, 0x80001e9c <.LBB1_15+0xd0>
80001e98: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001e9c: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80001ea0: 13 0d 2d 00  	addi	s10, s10, 2
80001ea4: 93 89 49 00  	addi	s3, s3, 4
80001ea8: 6f 00 00 02  	j	0x80001ec8 <.LBB1_15+0xfc>
80001eac: 13 0b 00 00  	mv	s6, zero
80001eb0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001eb4: e3 0e 75 f5  	beq	a0, s7, 0x80001e10 <.LBB1_15+0x44>
80001eb8: 93 0b 00 00  	mv	s7, zero
80001ebc: 6f 00 c0 00  	j	0x80001ec8 <.LBB1_15+0xfc>
80001ec0: 93 0b 00 00  	mv	s7, zero
80001ec4: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001ec8: 93 05 85 f9  	addi	a1, a0, -104
80001ecc: 13 d6 15 00  	srli	a2, a1, 1
80001ed0: 93 95 f5 01  	slli	a1, a1, 31
80001ed4: b3 e5 c5 00  	or	a1, a1, a2
80001ed8: 13 06 90 00  	addi	a2, zero, 9
80001edc: 63 62 b6 06  	bltu	a2, a1, 0x80001f40 <.LBB1_42>
80001ee0: 93 95 25 00  	slli	a1, a1, 2

80001ee4 <.LBB1_185>:
80001ee4: 17 36 00 00  	auipc	a2, 3
80001ee8: 13 06 c6 d0  	addi	a2, a2, -756
80001eec: b3 85 c5 00  	add	a1, a1, a2
80001ef0: 83 a6 05 00  	lw	a3, 0(a1)
80001ef4: 93 05 10 00  	addi	a1, zero, 1
80001ef8: 13 06 00 10  	addi	a2, zero, 256
80001efc: 67 80 06 00  	jr	a3

80001f00 <.LBB1_36>:
;         if (*format == 'h') {
80001f00: 03 45 1d 00  	lbu	a0, 1(s10)
80001f04: 93 05 80 06  	addi	a1, zero, 104
80001f08: 63 12 b5 12  	bne	a0, a1, 0x8000202c <.LBB1_53+0x48>
80001f0c: 93 05 20 00  	addi	a1, zero, 2
80001f10: 13 06 00 0c  	addi	a2, zero, 192
80001f14: 6f 00 00 02  	j	0x80001f34 <.LBB1_41>

80001f18 <.LBB1_38>:
80001f18: 13 06 00 20  	addi	a2, zero, 512
80001f1c: 6f 00 80 01  	j	0x80001f34 <.LBB1_41>

80001f20 <.LBB1_39>:
;         if (*format == 'l') {
80001f20: 03 45 1d 00  	lbu	a0, 1(s10)
80001f24: 93 05 c0 06  	addi	a1, zero, 108
80001f28: 63 18 b5 10  	bne	a0, a1, 0x80002038 <.LBB1_53+0x54>
80001f2c: 93 05 20 00  	addi	a1, zero, 2
80001f30: 13 06 00 30  	addi	a2, zero, 768

80001f34 <.LBB1_41>:
80001f34: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001f38: 03 45 0d 00  	lbu	a0, 0(s10)
80001f3c: 33 64 c4 00  	or	s0, s0, a2

80001f40 <.LBB1_42>:
;     switch (*format) {
80001f40: 93 05 b5 fd  	addi	a1, a0, -37
80001f44: 13 06 30 05  	addi	a2, zero, 83
80001f48: 63 64 b6 10  	bltu	a2, a1, 0x80002050 <.LBB1_59>
80001f4c: 93 95 25 00  	slli	a1, a1, 2

80001f50 <.LBB1_186>:
80001f50: 17 36 00 00  	auipc	a2, 3
80001f54: 13 06 86 cc  	addi	a2, a2, -824
80001f58: b3 85 c5 00  	add	a1, a1, a2
80001f5c: 03 a6 05 00  	lw	a2, 0(a1)
80001f60: 93 05 80 00  	addi	a1, zero, 8
80001f64: 13 0c 00 01  	addi	s8, zero, 16
80001f68: 67 00 06 00  	jr	a2

80001f6c <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001f6c: 13 74 f4 fe  	andi	s0, s0, -17
80001f70: 13 0c a0 00  	addi	s8, zero, 10

80001f74 <.LBB1_45>:
;         if (*format == 'X') {
80001f74: 93 05 80 05  	addi	a1, zero, 88
80001f78: 63 14 b5 00  	bne	a0, a1, 0x80001f80 <.LBB1_45+0xc>
80001f7c: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80001f80: 93 05 40 06  	addi	a1, zero, 100
80001f84: 63 08 b5 0e  	beq	a0, a1, 0x80002074 <.LBB1_62+0x8>
80001f88: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001f8c: 13 06 90 06  	addi	a2, zero, 105
80001f90: 63 02 c5 0e  	beq	a0, a2, 0x80002074 <.LBB1_62+0x8>
80001f94: 6f 00 80 0d  	j	0x8000206c <.LBB1_62>

80001f98 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001f98: 93 05 60 04  	addi	a1, zero, 70
80001f9c: 63 14 b5 00  	bne	a0, a1, 0x80001fa4 <.LBB1_49+0xc>
80001fa0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001fa4: 13 85 79 00  	addi	a0, s3, 7
80001fa8: 13 75 85 ff  	andi	a0, a0, -8
80001fac: 07 35 05 00  	fld	fa0, 0(a0)
80001fb0: 93 09 85 00  	addi	s3, a0, 8
80001fb4: 13 05 09 00  	mv	a0, s2
80001fb8: 93 05 0a 00  	mv	a1, s4
80001fbc: 13 86 0c 00  	mv	a2, s9
80001fc0: 93 86 0a 00  	mv	a3, s5
80001fc4: 13 87 0b 00  	mv	a4, s7
80001fc8: 93 07 0b 00  	mv	a5, s6
80001fcc: 13 08 04 00  	mv	a6, s0
80001fd0: 97 10 00 00  	auipc	ra, 1
80001fd4: e7 80 80 98  	jalr	-1656(ra)
80001fd8: 6f 00 00 7c  	j	0x80002798 <.LBB1_124+0x2fc>

80001fdc <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001fdc: 83 25 81 01  	lw	a1, 24(sp)
80001fe0: 33 64 b4 00  	or	s0, s0, a1

80001fe4 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80001fe4: 13 65 25 00  	ori	a0, a0, 2
80001fe8: 93 05 70 04  	addi	a1, zero, 71
80001fec: 63 14 b5 00  	bne	a0, a1, 0x80001ff4 <.LBB1_53+0x10>
80001ff0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001ff4: 13 85 79 00  	addi	a0, s3, 7
80001ff8: 13 75 85 ff  	andi	a0, a0, -8
80001ffc: 07 35 05 00  	fld	fa0, 0(a0)
80002000: 93 09 85 00  	addi	s3, a0, 8
80002004: 13 05 09 00  	mv	a0, s2
80002008: 93 05 0a 00  	mv	a1, s4
8000200c: 13 86 0c 00  	mv	a2, s9
80002010: 93 86 0a 00  	mv	a3, s5
80002014: 13 87 0b 00  	mv	a4, s7
80002018: 93 07 0b 00  	mv	a5, s6
8000201c: 13 08 04 00  	mv	a6, s0
80002020: 97 10 00 00  	auipc	ra, 1
80002024: e7 80 80 01  	jalr	24(ra)
80002028: 6f 00 00 77  	j	0x80002798 <.LBB1_124+0x2fc>
8000202c: 13 64 04 08  	ori	s0, s0, 128
80002030: 13 0d 1d 00  	addi	s10, s10, 1
80002034: 6f f0 df f0  	j	0x80001f40 <.LBB1_42>
80002038: 13 64 04 10  	ori	s0, s0, 256
8000203c: 13 0d 1d 00  	addi	s10, s10, 1
80002040: 6f f0 1f f0  	j	0x80001f40 <.LBB1_42>

80002044 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80002044: 13 8c 1c 00  	addi	s8, s9, 1
80002048: 13 05 50 02  	addi	a0, zero, 37
8000204c: 6f 00 80 00  	j	0x80002054 <.LBB1_59+0x4>

80002050 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80002050: 13 8c 1c 00  	addi	s8, s9, 1
80002054: 93 05 0a 00  	mv	a1, s4
80002058: 13 86 0c 00  	mv	a2, s9
8000205c: 93 86 0a 00  	mv	a3, s5
80002060: e7 00 09 00  	jalr	s2
80002064: 6f 00 80 73  	j	0x8000279c <.LBB1_124+0x300>

80002068 <.LBB1_61>:
80002068: 93 05 20 00  	addi	a1, zero, 2

8000206c <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
8000206c: 13 74 34 ff  	andi	s0, s0, -13
80002070: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80002074: 93 75 04 40  	andi	a1, s0, 1024
80002078: 63 84 05 00  	beqz	a1, 0x80002080 <.LBB1_62+0x14>
8000207c: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80002080: 93 05 90 06  	addi	a1, zero, 105
80002084: 63 06 b5 00  	beq	a0, a1, 0x80002090 <.LBB1_62+0x24>
80002088: 93 05 40 06  	addi	a1, zero, 100
8000208c: 63 1c b5 12  	bne	a0, a1, 0x800021c4 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80002090: 13 75 04 20  	andi	a0, s0, 512
80002094: 63 16 05 02  	bnez	a0, 0x800020c0 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80002098: 13 75 04 10  	andi	a0, s0, 256
8000209c: 63 1c 05 14  	bnez	a0, 0x800021f4 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800020a0: 13 75 04 04  	andi	a0, s0, 64
800020a4: 63 18 05 4e  	bnez	a0, 0x80002594 <.LBB1_124+0xf8>
800020a8: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800020ac: 93 75 04 08  	andi	a1, s0, 128
800020b0: 63 84 05 4e  	beqz	a1, 0x80002598 <.LBB1_124+0xfc>
800020b4: 13 15 08 01  	slli	a0, a6, 16
800020b8: 13 58 05 41  	srai	a6, a0, 16
800020bc: 6f 00 c0 4d  	j	0x80002598 <.LBB1_124+0xfc>
800020c0: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800020c4: 13 85 79 00  	addi	a0, s3, 7
800020c8: 13 75 85 ff  	andi	a0, a0, -8
800020cc: 83 29 05 00  	lw	s3, 0(a0)
800020d0: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800020d4: 13 65 45 00  	ori	a0, a0, 4
800020d8: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800020dc: 23 24 a1 00  	sw	a0, 8(sp)
800020e0: 33 e5 a9 00  	or	a0, s3, a0
800020e4: 63 14 05 00  	bnez	a0, 0x800020ec <.LBB1_62+0x80>
800020e8: 13 74 f4 fe  	andi	s0, s0, -17
800020ec: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800020f0: 93 75 04 40  	andi	a1, s0, 1024
800020f4: 93 d5 a5 00  	srli	a1, a1, 10
800020f8: 33 75 b5 00  	and	a0, a0, a1
800020fc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002100: 63 14 05 0a  	bnez	a0, 0x800021a8 <.LBB1_62+0x13c>
80002104: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80002108: 63 da 04 00  	bgez	s1, 0x8000211c <.LBB1_62+0xb0>
8000210c: 33 35 30 01  	snez	a0, s3
80002110: b3 09 30 41  	neg	s3, s3
80002114: 33 85 a4 00  	add	a0, s1, a0
80002118: b3 04 a0 40  	neg	s1, a0
8000211c: 13 09 00 00  	mv	s2, zero
80002120: 13 75 04 02  	andi	a0, s0, 32
80002124: 13 45 15 06  	xori	a0, a0, 97
80002128: 13 05 65 0f  	addi	a0, a0, 246
8000212c: 23 2a a1 00  	sw	a0, 20(sp)
80002130: 6f 00 40 02  	j	0x80002154 <.LBB1_62+0xe8>
80002134: 13 06 10 00  	addi	a2, zero, 1
80002138: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000213c: 93 36 f9 01  	sltiu	a3, s2, 31
80002140: 33 f6 c6 00  	and	a2, a3, a2
80002144: 13 89 07 00  	mv	s2, a5
80002148: 93 09 05 00  	mv	s3, a0
8000214c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002150: 63 0c 06 04  	beqz	a2, 0x800021a8 <.LBB1_62+0x13c>
;       value /= base;
80002154: 13 85 09 00  	mv	a0, s3
80002158: 93 85 04 00  	mv	a1, s1
8000215c: 13 06 0c 00  	mv	a2, s8
80002160: 93 06 00 00  	mv	a3, zero
80002164: 97 e0 ff ff  	auipc	ra, 1048574
80002168: e7 80 c0 e9  	jalr	-356(ra)
8000216c: 33 06 85 03  	mul	a2, a0, s8
80002170: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002174: 13 77 e6 0f  	andi	a4, a2, 254
80002178: 93 06 00 03  	addi	a3, zero, 48
8000217c: 93 07 a0 00  	addi	a5, zero, 10
80002180: 63 64 f7 00  	bltu	a4, a5, 0x80002188 <.LBB1_62+0x11c>
80002184: 83 26 41 01  	lw	a3, 20(sp)
80002188: 33 86 c6 00  	add	a2, a3, a2
8000218c: 93 06 c1 01  	addi	a3, sp, 28
80002190: b3 86 26 01  	add	a3, a3, s2
80002194: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002198: e3 9e 04 f8  	bnez	s1, 0x80002134 <.LBB1_62+0xc8>
8000219c: 33 b6 89 01  	sltu	a2, s3, s8
800021a0: 13 46 16 00  	xori	a2, a2, 1
800021a4: 6f f0 5f f9  	j	0x80002138 <.LBB1_62+0xcc>
800021a8: 03 25 41 00  	lw	a0, 4(sp)
800021ac: 93 09 85 00  	addi	s3, a0, 8
800021b0: 03 25 81 00  	lw	a0, 8(sp)
800021b4: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800021b8: 13 07 c1 01  	addi	a4, sp, 28
800021bc: 03 29 c1 00  	lw	s2, 12(sp)
800021c0: 6f 00 80 47  	j	0x80002638 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800021c4: 13 75 04 20  	andi	a0, s0, 512
800021c8: 63 12 05 0c  	bnez	a0, 0x8000228c <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800021cc: 13 75 04 10  	andi	a0, s0, 256
800021d0: 63 1e 05 46  	bnez	a0, 0x8000264c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800021d4: 13 75 04 04  	andi	a0, s0, 64
800021d8: 63 10 05 50  	bnez	a0, 0x800026d8 <.LBB1_124+0x23c>
800021dc: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800021e0: 93 75 04 08  	andi	a1, s0, 128
800021e4: 63 8c 05 4e  	beqz	a1, 0x800026dc <.LBB1_124+0x240>
800021e8: 83 25 01 01  	lw	a1, 16(sp)
800021ec: 33 75 b5 00  	and	a0, a0, a1
800021f0: 6f 00 c0 4e  	j	0x800026dc <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800021f4: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800021f8: 63 14 08 00  	bnez	a6, 0x80002200 <.LBB1_62+0x194>
800021fc: 13 74 f4 fe  	andi	s0, s0, -17
80002200: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80002204: 13 76 04 40  	andi	a2, s0, 1024
80002208: 13 56 a6 00  	srli	a2, a2, 10
8000220c: b3 f5 c5 00  	and	a1, a1, a2
80002210: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80002214: 63 9c 05 40  	bnez	a1, 0x8000262c <.LBB1_124+0x190>
80002218: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000221c: 13 56 f8 41  	srai	a2, a6, 31
80002220: b3 06 c8 00  	add	a3, a6, a2
80002224: b3 c6 c6 00  	xor	a3, a3, a2
80002228: 13 76 04 02  	andi	a2, s0, 32
8000222c: 13 46 16 06  	xori	a2, a2, 97
80002230: 93 08 66 0f  	addi	a7, a2, 246
80002234: 6f 00 40 03  	j	0x80002268 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002238: 33 05 f6 00  	add	a0, a2, a5
8000223c: 93 87 15 00  	addi	a5, a1, 1
80002240: 13 06 c1 01  	addi	a2, sp, 28
80002244: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002248: b3 b6 86 01  	sltu	a3, a3, s8
8000224c: 93 c6 16 00  	xori	a3, a3, 1
80002250: 93 b5 f5 01  	sltiu	a1, a1, 31
80002254: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002258: 23 00 a6 00  	sb	a0, 0(a2)
8000225c: 93 85 07 00  	mv	a1, a5
80002260: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002264: 63 84 04 3c  	beqz	s1, 0x8000262c <.LBB1_124+0x190>
;       value /= base;
80002268: 33 d7 86 03  	divu	a4, a3, s8
8000226c: 33 06 87 03  	mul	a2, a4, s8
80002270: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002274: 13 f5 e7 0f  	andi	a0, a5, 254
80002278: 13 06 00 03  	addi	a2, zero, 48
8000227c: 93 04 a0 00  	addi	s1, zero, 10
80002280: e3 6c 95 fa  	bltu	a0, s1, 0x80002238 <.LBB1_62+0x1cc>
80002284: 13 86 08 00  	mv	a2, a7
80002288: 6f f0 1f fb  	j	0x80002238 <.LBB1_62+0x1cc>
8000228c: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80002290: 13 85 79 00  	addi	a0, s3, 7
80002294: 93 75 85 ff  	andi	a1, a0, -8
80002298: 03 a9 05 00  	lw	s2, 0(a1)
8000229c: 13 e5 45 00  	ori	a0, a1, 4
800022a0: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800022a4: 33 65 39 01  	or	a0, s2, s3
800022a8: 23 24 b1 00  	sw	a1, 8(sp)
800022ac: 63 14 05 00  	bnez	a0, 0x800022b4 <.LBB1_62+0x248>
800022b0: 13 74 f4 fe  	andi	s0, s0, -17
800022b4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800022b8: 93 75 04 40  	andi	a1, s0, 1024
800022bc: 93 d5 a5 00  	srli	a1, a1, 10
800022c0: 33 75 b5 00  	and	a0, a0, a1
800022c4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800022c8: 63 18 05 08  	bnez	a0, 0x80002358 <.LBB1_62+0x2ec>
800022cc: 93 04 00 00  	mv	s1, zero
800022d0: 13 75 04 02  	andi	a0, s0, 32
800022d4: 13 45 15 06  	xori	a0, a0, 97
800022d8: 13 05 65 0f  	addi	a0, a0, 246
800022dc: 23 2a a1 00  	sw	a0, 20(sp)
800022e0: 6f 00 40 02  	j	0x80002304 <.LBB1_62+0x298>
800022e4: 13 06 10 00  	addi	a2, zero, 1
800022e8: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800022ec: 93 b6 f4 01  	sltiu	a3, s1, 31
800022f0: 33 f6 c6 00  	and	a2, a3, a2
800022f4: 93 84 07 00  	mv	s1, a5
800022f8: 13 09 05 00  	mv	s2, a0
800022fc: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002300: 63 0c 06 04  	beqz	a2, 0x80002358 <.LBB1_62+0x2ec>
;       value /= base;
80002304: 13 05 09 00  	mv	a0, s2
80002308: 93 85 09 00  	mv	a1, s3
8000230c: 13 06 0c 00  	mv	a2, s8
80002310: 93 06 00 00  	mv	a3, zero
80002314: 97 e0 ff ff  	auipc	ra, 1048574
80002318: e7 80 c0 ce  	jalr	-788(ra)
8000231c: 33 06 85 03  	mul	a2, a0, s8
80002320: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002324: 13 77 e6 0f  	andi	a4, a2, 254
80002328: 93 06 00 03  	addi	a3, zero, 48
8000232c: 93 07 a0 00  	addi	a5, zero, 10
80002330: 63 64 f7 00  	bltu	a4, a5, 0x80002338 <.LBB1_62+0x2cc>
80002334: 83 26 41 01  	lw	a3, 20(sp)
80002338: 33 86 c6 00  	add	a2, a3, a2
8000233c: 93 06 c1 01  	addi	a3, sp, 28
80002340: b3 86 96 00  	add	a3, a3, s1
80002344: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002348: e3 9e 09 f8  	bnez	s3, 0x800022e4 <.LBB1_62+0x278>
8000234c: 33 36 89 01  	sltu	a2, s2, s8
80002350: 13 46 16 00  	xori	a2, a2, 1
80002354: 6f f0 5f f9  	j	0x800022e8 <.LBB1_62+0x27c>
80002358: 03 25 81 00  	lw	a0, 8(sp)
8000235c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002360: 13 07 c1 01  	addi	a4, sp, 28
80002364: 03 29 c1 00  	lw	s2, 12(sp)
80002368: 6f 00 40 40  	j	0x8000276c <.LBB1_124+0x2d0>

8000236c <.LBB1_108>:
8000236c: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80002370: 13 79 24 00  	andi	s2, s0, 2
80002374: 93 04 10 00  	addi	s1, zero, 1
80002378: 63 1e 09 02  	bnez	s2, 0x800023b4 <.LBB1_108+0x48>
8000237c: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80002380: 63 6a 9b 02  	bltu	s6, s1, 0x800023b4 <.LBB1_108+0x48>
80002384: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80002388: 13 0c fb ff  	addi	s8, s6, -1
8000238c: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80002390: 33 86 8c 00  	add	a2, s9, s0
80002394: 13 05 00 02  	addi	a0, zero, 32
80002398: 93 05 0a 00  	mv	a1, s4
8000239c: 93 86 0a 00  	mv	a3, s5
800023a0: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800023a4: 13 04 14 00  	addi	s0, s0, 1
800023a8: e3 14 8c fe  	bne	s8, s0, 0x80002390 <.LBB1_108+0x24>
800023ac: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800023b0: b3 8c 8c 00  	add	s9, s9, s0
800023b4: 03 c5 09 00  	lbu	a0, 0(s3)
800023b8: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800023bc: 93 89 49 00  	addi	s3, s3, 4
800023c0: 13 8c 1c 00  	addi	s8, s9, 1
800023c4: 93 05 0a 00  	mv	a1, s4
800023c8: 13 86 0c 00  	mv	a2, s9
800023cc: 93 86 0a 00  	mv	a3, s5
800023d0: 13 89 0b 00  	mv	s2, s7
800023d4: e7 80 0b 00  	jalr	s7
800023d8: 33 b5 64 01  	sltu	a0, s1, s6
800023dc: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800023e0: 33 65 a4 00  	or	a0, s0, a0
800023e4: 63 1c 05 3a  	bnez	a0, 0x8000279c <.LBB1_124+0x300>
;           while (l++ < width) {
800023e8: 33 04 9b 40  	sub	s0, s6, s1
800023ec: 93 0b e0 02  	addi	s7, zero, 46
800023f0: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800023f4: 13 0c 1c 00  	addi	s8, s8, 1
800023f8: 13 05 00 02  	addi	a0, zero, 32
800023fc: 93 05 0a 00  	mv	a1, s4
80002400: 93 86 0a 00  	mv	a3, s5
80002404: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002408: 13 04 f4 ff  	addi	s0, s0, -1
8000240c: e3 12 04 fe  	bnez	s0, 0x800023f0 <.LBB1_108+0x84>
80002410: 13 0b 50 02  	addi	s6, zero, 37
80002414: 13 04 1d 00  	addi	s0, s10, 1
80002418: 6f f0 df 91  	j	0x80001d34 <.LBB1_183+0x30>

8000241c <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
8000241c: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80002420: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80002424: 63 14 05 00  	bnez	a0, 0x8000242c <.LBB1_117+0x10>
80002428: 93 fe fe fe  	andi	t4, t4, -17
8000242c: 93 04 a0 00  	addi	s1, zero, 10
80002430: 13 04 f0 00  	addi	s0, zero, 15
80002434: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80002438: 13 f6 0e 40  	andi	a2, t4, 1024
8000243c: 13 56 a6 00  	srli	a2, a2, 10
80002440: b3 f5 c5 00  	and	a1, a1, a2
80002444: 93 07 00 00  	mv	a5, zero
80002448: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
8000244c: 63 98 05 10  	bnez	a1, 0x8000255c <.LBB1_124+0xc0>
80002450: 93 05 00 00  	mv	a1, zero
80002454: 6f 00 40 03  	j	0x80002488 <.LBB1_117+0x6c>
80002458: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000245c: 33 06 d6 00  	add	a2, a2, a3
80002460: 93 87 15 00  	addi	a5, a1, 1
80002464: 93 06 c1 01  	addi	a3, sp, 28
80002468: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000246c: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80002470: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002474: 93 b5 f5 01  	sltiu	a1, a1, 31
80002478: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000247c: 23 80 c6 00  	sb	a2, 0(a3)
80002480: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002484: 63 0c 07 0c  	beqz	a4, 0x8000255c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002488: 93 76 e5 00  	andi	a3, a0, 14
8000248c: 13 06 00 03  	addi	a2, zero, 48
80002490: e3 e4 96 fc  	bltu	a3, s1, 0x80002458 <.LBB1_117+0x3c>
80002494: 13 06 70 03  	addi	a2, zero, 55
80002498: 6f f0 1f fc  	j	0x80002458 <.LBB1_117+0x3c>

8000249c <.LBB1_124>:
;         const char* p = va_arg(va, char*);
8000249c: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800024a0: 03 c5 07 00  	lbu	a0, 0(a5)
800024a4: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800024a8: 63 0c 05 02  	beqz	a0, 0x800024e0 <.LBB1_124+0x44>
800024ac: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800024b0: 63 84 0b 00  	beqz	s7, 0x800024b8 <.LBB1_124+0x1c>
800024b4: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800024b8: 93 85 f5 ff  	addi	a1, a1, -1
800024bc: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800024c0: 03 c7 16 00  	lbu	a4, 1(a3)
800024c4: 13 86 16 00  	addi	a2, a3, 1
800024c8: b3 36 e0 00  	snez	a3, a4
800024cc: 33 37 b0 00  	snez	a4, a1
800024d0: 33 77 d7 00  	and	a4, a4, a3
800024d4: 93 85 f5 ff  	addi	a1, a1, -1
800024d8: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800024dc: e3 12 07 fe  	bnez	a4, 0x800024c0 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800024e0: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800024e4: 93 75 04 40  	andi	a1, s0, 1024
800024e8: 93 b4 15 00  	seqz	s1, a1
800024ec: 23 2a c1 00  	sw	a2, 20(sp)
800024f0: b3 35 76 01  	sltu	a1, a2, s7
800024f4: b3 e5 b4 00  	or	a1, s1, a1
800024f8: 63 94 05 00  	bnez	a1, 0x80002500 <.LBB1_124+0x64>
800024fc: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80002500: 93 75 24 00  	andi	a1, s0, 2
80002504: 23 26 b1 00  	sw	a1, 12(sp)
80002508: 63 96 05 2a  	bnez	a1, 0x800027b4 <.LBB1_124+0x318>
8000250c: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80002510: 63 fe 65 29  	bgeu	a1, s6, 0x800027ac <.LBB1_124+0x310>
80002514: 23 24 f1 00  	sw	a5, 8(sp)
80002518: 13 04 00 00  	mv	s0, zero
8000251c: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80002520: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80002524: 33 86 8c 00  	add	a2, s9, s0
80002528: 13 05 00 02  	addi	a0, zero, 32
8000252c: 93 05 0a 00  	mv	a1, s4
80002530: 93 86 0a 00  	mv	a3, s5
80002534: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80002538: 13 04 14 00  	addi	s0, s0, 1
8000253c: e3 14 89 fe  	bne	s2, s0, 0x80002524 <.LBB1_124+0x88>
80002540: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80002544: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80002548: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000254c: 23 2a b1 00  	sw	a1, 20(sp)
80002550: b3 8c 8c 00  	add	s9, s9, s0
80002554: 13 09 0c 00  	mv	s2, s8
80002558: 6f 00 c0 25  	j	0x800027b4 <.LBB1_124+0x318>
8000255c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80002560: 13 07 c1 01  	addi	a4, sp, 28
80002564: 93 08 00 01  	addi	a7, zero, 16
80002568: 13 0e 80 00  	addi	t3, zero, 8
8000256c: 13 05 09 00  	mv	a0, s2
80002570: 93 05 0a 00  	mv	a1, s4
80002574: 13 86 0c 00  	mv	a2, s9
80002578: 93 86 0a 00  	mv	a3, s5
8000257c: 13 08 00 00  	mv	a6, zero
80002580: 93 83 0b 00  	mv	t2, s7
80002584: 97 10 00 00  	auipc	ra, 1
80002588: e7 80 00 fa  	jalr	-96(ra)
8000258c: 13 0c 05 00  	mv	s8, a0
80002590: 6f 00 00 21  	j	0x800027a0 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80002594: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80002598: 63 14 08 00  	bnez	a6, 0x800025a0 <.LBB1_124+0x104>
8000259c: 13 74 f4 fe  	andi	s0, s0, -17
800025a0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800025a4: 13 76 04 40  	andi	a2, s0, 1024
800025a8: 13 56 a6 00  	srli	a2, a2, 10
800025ac: b3 f5 c5 00  	and	a1, a1, a2
800025b0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800025b4: 63 9c 05 06  	bnez	a1, 0x8000262c <.LBB1_124+0x190>
800025b8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800025bc: 13 56 f8 41  	srai	a2, a6, 31
800025c0: b3 06 c8 00  	add	a3, a6, a2
800025c4: b3 c6 c6 00  	xor	a3, a3, a2
800025c8: 13 76 04 02  	andi	a2, s0, 32
800025cc: 13 46 16 06  	xori	a2, a2, 97
800025d0: 93 08 66 0f  	addi	a7, a2, 246
800025d4: 6f 00 40 03  	j	0x80002608 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025d8: 33 05 f6 00  	add	a0, a2, a5
800025dc: 93 87 15 00  	addi	a5, a1, 1
800025e0: 13 06 c1 01  	addi	a2, sp, 28
800025e4: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800025e8: b3 b6 86 01  	sltu	a3, a3, s8
800025ec: 93 c6 16 00  	xori	a3, a3, 1
800025f0: 93 b5 f5 01  	sltiu	a1, a1, 31
800025f4: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800025f8: 23 00 a6 00  	sb	a0, 0(a2)
800025fc: 93 85 07 00  	mv	a1, a5
80002600: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002604: 63 84 04 02  	beqz	s1, 0x8000262c <.LBB1_124+0x190>
;       value /= base;
80002608: 33 d7 86 03  	divu	a4, a3, s8
8000260c: 33 06 87 03  	mul	a2, a4, s8
80002610: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002614: 13 f5 e7 0f  	andi	a0, a5, 254
80002618: 13 06 00 03  	addi	a2, zero, 48
8000261c: 93 04 a0 00  	addi	s1, zero, 10
80002620: e3 6c 95 fa  	bltu	a0, s1, 0x800025d8 <.LBB1_124+0x13c>
80002624: 13 86 08 00  	mv	a2, a7
80002628: 6f f0 1f fb  	j	0x800025d8 <.LBB1_124+0x13c>
8000262c: 93 89 49 00  	addi	s3, s3, 4
80002630: 13 58 f8 01  	srli	a6, a6, 31
80002634: 13 07 c1 01  	addi	a4, sp, 28
80002638: 13 05 09 00  	mv	a0, s2
8000263c: 93 05 0a 00  	mv	a1, s4
80002640: 13 86 0c 00  	mv	a2, s9
80002644: 93 86 0a 00  	mv	a3, s5
80002648: 6f 00 80 13  	j	0x80002780 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
8000264c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80002650: 63 14 05 00  	bnez	a0, 0x80002658 <.LBB1_124+0x1bc>
80002654: 13 74 f4 fe  	andi	s0, s0, -17
80002658: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000265c: 13 76 04 40  	andi	a2, s0, 1024
80002660: 13 56 a6 00  	srli	a2, a2, 10
80002664: b3 f5 c5 00  	and	a1, a1, a2
80002668: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000266c: 63 9c 05 0e  	bnez	a1, 0x80002764 <.LBB1_124+0x2c8>
80002670: 13 06 00 00  	mv	a2, zero
80002674: 93 75 04 02  	andi	a1, s0, 32
80002678: 93 c5 15 06  	xori	a1, a1, 97
8000267c: 13 88 65 0f  	addi	a6, a1, 246
80002680: 6f 00 40 03  	j	0x800026b4 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002684: 33 87 e7 00  	add	a4, a5, a4
80002688: 93 07 16 00  	addi	a5, a2, 1
8000268c: 93 05 c1 01  	addi	a1, sp, 28
80002690: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002694: 33 35 85 01  	sltu	a0, a0, s8
80002698: 13 45 15 00  	xori	a0, a0, 1
8000269c: 13 36 f6 01  	sltiu	a2, a2, 31
800026a0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800026a4: 23 80 e4 00  	sb	a4, 0(s1)
800026a8: 13 86 07 00  	mv	a2, a5
800026ac: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800026b0: 63 8a 05 0a  	beqz	a1, 0x80002764 <.LBB1_124+0x2c8>
;       value /= base;
800026b4: b3 56 85 03  	divu	a3, a0, s8
800026b8: 33 87 86 03  	mul	a4, a3, s8
800026bc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800026c0: 93 74 e7 0f  	andi	s1, a4, 254
800026c4: 93 07 00 03  	addi	a5, zero, 48
800026c8: 93 05 a0 00  	addi	a1, zero, 10
800026cc: e3 ec b4 fa  	bltu	s1, a1, 0x80002684 <.LBB1_124+0x1e8>
800026d0: 93 07 08 00  	mv	a5, a6
800026d4: 6f f0 1f fb  	j	0x80002684 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800026d8: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800026dc: 63 14 05 00  	bnez	a0, 0x800026e4 <.LBB1_124+0x248>
800026e0: 13 74 f4 fe  	andi	s0, s0, -17
800026e4: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800026e8: 13 76 04 40  	andi	a2, s0, 1024
800026ec: 13 56 a6 00  	srli	a2, a2, 10
800026f0: b3 f5 c5 00  	and	a1, a1, a2
800026f4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800026f8: 63 96 05 06  	bnez	a1, 0x80002764 <.LBB1_124+0x2c8>
800026fc: 13 06 00 00  	mv	a2, zero
80002700: 93 75 04 02  	andi	a1, s0, 32
80002704: 93 c5 15 06  	xori	a1, a1, 97
80002708: 13 88 65 0f  	addi	a6, a1, 246
8000270c: 6f 00 40 03  	j	0x80002740 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002710: 33 87 e7 00  	add	a4, a5, a4
80002714: 93 07 16 00  	addi	a5, a2, 1
80002718: 93 05 c1 01  	addi	a1, sp, 28
8000271c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002720: 33 35 85 01  	sltu	a0, a0, s8
80002724: 13 45 15 00  	xori	a0, a0, 1
80002728: 13 36 f6 01  	sltiu	a2, a2, 31
8000272c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002730: 23 80 e4 00  	sb	a4, 0(s1)
80002734: 13 86 07 00  	mv	a2, a5
80002738: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000273c: 63 84 05 02  	beqz	a1, 0x80002764 <.LBB1_124+0x2c8>
;       value /= base;
80002740: b3 56 85 03  	divu	a3, a0, s8
80002744: 33 87 86 03  	mul	a4, a3, s8
80002748: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000274c: 93 74 e7 0f  	andi	s1, a4, 254
80002750: 93 07 00 03  	addi	a5, zero, 48
80002754: 93 05 a0 00  	addi	a1, zero, 10
80002758: e3 ec b4 fa  	bltu	s1, a1, 0x80002710 <.LBB1_124+0x274>
8000275c: 93 07 08 00  	mv	a5, a6
80002760: 6f f0 1f fb  	j	0x80002710 <.LBB1_124+0x274>
80002764: 93 89 49 00  	addi	s3, s3, 4
80002768: 13 07 c1 01  	addi	a4, sp, 28
8000276c: 13 05 09 00  	mv	a0, s2
80002770: 93 05 0a 00  	mv	a1, s4
80002774: 13 86 0c 00  	mv	a2, s9
80002778: 93 86 0a 00  	mv	a3, s5
8000277c: 13 08 00 00  	mv	a6, zero
80002780: 93 08 0c 00  	mv	a7, s8
80002784: 93 83 0b 00  	mv	t2, s7
80002788: 13 0e 0b 00  	mv	t3, s6
8000278c: 93 0e 04 00  	mv	t4, s0
80002790: 97 10 00 00  	auipc	ra, 1
80002794: e7 80 40 d9  	jalr	-620(ra)
80002798: 13 0c 05 00  	mv	s8, a0
8000279c: 13 0b 50 02  	addi	s6, zero, 37
800027a0: 93 0b e0 02  	addi	s7, zero, 46
800027a4: 13 04 1d 00  	addi	s0, s10, 1
800027a8: 6f f0 cf d8  	j	0x80001d34 <.LBB1_183+0x30>
800027ac: 93 85 15 00  	addi	a1, a1, 1
800027b0: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800027b4: 63 00 05 04  	beqz	a0, 0x800027f4 <.LBB1_124+0x358>
800027b8: 13 84 17 00  	addi	s0, a5, 1
800027bc: 6f 00 00 03  	j	0x800027ec <.LBB1_124+0x350>
800027c0: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800027c4: 13 8c 1c 00  	addi	s8, s9, 1
800027c8: 13 75 f5 0f  	andi	a0, a0, 255
800027cc: 93 05 0a 00  	mv	a1, s4
800027d0: 13 86 0c 00  	mv	a2, s9
800027d4: 93 86 0a 00  	mv	a3, s5
800027d8: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800027dc: 03 45 04 00  	lbu	a0, 0(s0)
800027e0: 13 04 14 00  	addi	s0, s0, 1
800027e4: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800027e8: 63 08 05 00  	beqz	a0, 0x800027f8 <.LBB1_124+0x35c>
800027ec: e3 9c 04 fc  	bnez	s1, 0x800027c4 <.LBB1_124+0x328>
800027f0: e3 98 0b fc  	bnez	s7, 0x800027c0 <.LBB1_124+0x324>
800027f4: 13 8c 0c 00  	mv	s8, s9
800027f8: 03 25 c1 00  	lw	a0, 12(sp)
800027fc: 13 35 15 00  	seqz	a0, a0
80002800: 03 26 41 01  	lw	a2, 20(sp)
80002804: b3 35 66 01  	sltu	a1, a2, s6
80002808: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
8000280c: 33 65 b5 00  	or	a0, a0, a1
80002810: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80002814: e3 14 05 f8  	bnez	a0, 0x8000279c <.LBB1_124+0x300>
;           while (l++ < width) {
80002818: 33 04 cb 40  	sub	s0, s6, a2
8000281c: 93 0b e0 02  	addi	s7, zero, 46
80002820: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80002824: 13 0c 1c 00  	addi	s8, s8, 1
80002828: 13 05 00 02  	addi	a0, zero, 32
8000282c: 93 05 0a 00  	mv	a1, s4
80002830: 93 86 0a 00  	mv	a3, s5
80002834: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80002838: 13 04 f4 ff  	addi	s0, s0, -1
8000283c: e3 12 04 fe  	bnez	s0, 0x80002820 <.LBB1_124+0x384>
80002840: 13 0b 50 02  	addi	s6, zero, 37
80002844: 13 04 1d 00  	addi	s0, s10, 1
80002848: 6f f0 cf ce  	j	0x80001d34 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000284c: 13 86 0c 00  	mv	a2, s9
80002850: 63 e4 5c 01  	bltu	s9, s5, 0x80002858 <.LBB1_124+0x3bc>
80002854: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80002858: 13 05 00 00  	mv	a0, zero
8000285c: 93 05 0a 00  	mv	a1, s4
80002860: 93 86 0a 00  	mv	a3, s5
80002864: e7 00 09 00  	jalr	s2
;   return (int)idx;
80002868: 13 85 0c 00  	mv	a0, s9
8000286c: 83 2d c1 03  	lw	s11, 60(sp)
80002870: 03 2d 01 04  	lw	s10, 64(sp)
80002874: 83 2c 41 04  	lw	s9, 68(sp)
80002878: 03 2c 81 04  	lw	s8, 72(sp)
8000287c: 83 2b c1 04  	lw	s7, 76(sp)
80002880: 03 2b 01 05  	lw	s6, 80(sp)
80002884: 83 2a 41 05  	lw	s5, 84(sp)
80002888: 03 2a 81 05  	lw	s4, 88(sp)
8000288c: 83 29 c1 05  	lw	s3, 92(sp)
80002890: 03 29 01 06  	lw	s2, 96(sp)
80002894: 83 24 41 06  	lw	s1, 100(sp)
80002898: 03 24 81 06  	lw	s0, 104(sp)
8000289c: 83 20 c1 06  	lw	ra, 108(sp)
800028a0: 13 01 01 07  	addi	sp, sp, 112
800028a4: 67 80 00 00  	ret

800028a8 <_out_char.llvm.17592004524093383706>:
;   if (character) {
800028a8: 63 04 05 0a  	beqz	a0, 0x80002950 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800028ac: f3 25 40 f1  	csrr	a1, mhartid
800028b0: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800028b4: 33 86 c5 02  	mul	a2, a1, a2

800028b8 <.LBB2_6>:
800028b8: 97 26 01 00  	auipc	a3, 18
800028bc: 93 86 06 6c  	addi	a3, a3, 1728
800028c0: b3 05 d6 00  	add	a1, a2, a3
800028c4: 03 a7 05 00  	lw	a4, 0(a1)
800028c8: 93 07 17 00  	addi	a5, a4, 1
800028cc: 23 a0 f5 00  	sw	a5, 0(a1)
800028d0: 33 87 e5 00  	add	a4, a1, a4
800028d4: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800028d8: 03 a7 05 00  	lw	a4, 0(a1)
800028dc: 13 07 47 c0  	addi	a4, a4, -1020
800028e0: 33 37 e0 00  	snez	a4, a4
800028e4: 13 05 65 ff  	addi	a0, a0, -10
800028e8: 33 35 a0 00  	snez	a0, a0
800028ec: 33 75 e5 00  	and	a0, a0, a4
800028f0: 63 10 05 06  	bnez	a0, 0x80002950 <.LBB2_8+0x18>
800028f4: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800028f8: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800028fc: 23 26 05 00  	sw	zero, 12(a0)
80002900: 93 06 00 04  	addi	a3, zero, 64
80002904: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80002908: 23 2a 05 00  	sw	zero, 20(a0)
8000290c: 93 06 10 00  	addi	a3, zero, 1
80002910: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80002914: 23 2e 05 00  	sw	zero, 28(a0)
80002918: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
8000291c: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80002920: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80002924: 23 22 05 02  	sw	zero, 36(a0)
80002928: 23 20 c5 02  	sw	a2, 32(a0)

8000292c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
8000292c: 17 25 00 00  	auipc	a0, 2
80002930: 13 05 45 4d  	addi	a0, a0, 1236
80002934: 23 20 d5 00  	sw	a3, 0(a0)

80002938 <.LBB2_8>:
80002938: 17 25 00 00  	auipc	a0, 2
8000293c: 13 05 85 50  	addi	a0, a0, 1288
;         while (fromhost == 0)
80002940: 03 26 05 00  	lw	a2, 0(a0)
80002944: e3 0e 06 fe  	beqz	a2, 0x80002940 <.LBB2_8+0x8>
;         fromhost = 0;
80002948: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
8000294c: 23 a0 05 00  	sw	zero, 0(a1)
; }
80002950: 67 80 00 00  	ret

80002954 <_out_null>:
; }
80002954: 67 80 00 00  	ret

80002958 <_ftoa>:
; {
80002958: 13 01 01 f9  	addi	sp, sp, -112
8000295c: 23 26 11 06  	sw	ra, 108(sp)
80002960: 23 24 81 06  	sw	s0, 104(sp)
80002964: 23 22 91 06  	sw	s1, 100(sp)
80002968: 23 20 21 07  	sw	s2, 96(sp)
8000296c: 23 2e 31 05  	sw	s3, 92(sp)
80002970: 23 2c 41 05  	sw	s4, 88(sp)
80002974: 23 2a 51 05  	sw	s5, 84(sp)
80002978: 23 28 61 05  	sw	s6, 80(sp)
8000297c: 23 26 71 05  	sw	s7, 76(sp)
80002980: 23 24 81 05  	sw	s8, 72(sp)
80002984: 23 22 91 05  	sw	s9, 68(sp)
80002988: 23 20 a1 05  	sw	s10, 64(sp)
8000298c: 27 3c 81 02  	fsd	fs0, 56(sp)
80002990: 27 38 91 02  	fsd	fs1, 48(sp)
80002994: 27 34 21 03  	fsd	fs2, 40(sp)

80002998 <.LBB4_83>:
80002998: 97 24 00 00  	auipc	s1, 2
8000299c: 93 84 04 4e  	addi	s1, s1, 1248
800029a0: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800029a4: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800029a8: 93 0a 08 00  	mv	s5, a6
800029ac: 13 89 07 00  	mv	s2, a5
800029b0: 93 89 06 00  	mv	s3, a3
800029b4: 13 0a 06 00  	mv	s4, a2
800029b8: 13 8b 05 00  	mv	s6, a1
800029bc: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800029c0: 63 98 04 0e  	bnez	s1, 0x80002ab0 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800029c4: 13 f5 2a 00  	andi	a0, s5, 2
800029c8: 93 f5 3a 00  	andi	a1, s5, 3
800029cc: b3 35 b0 00  	snez	a1, a1
800029d0: 13 36 59 00  	sltiu	a2, s2, 5
800029d4: b3 65 b6 00  	or	a1, a2, a1
800029d8: 93 5c 15 00  	srli	s9, a0, 1
800029dc: 13 04 0a 00  	mv	s0, s4
800029e0: 63 96 05 02  	bnez	a1, 0x80002a0c <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800029e4: 93 04 c9 ff  	addi	s1, s2, -4
800029e8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800029ec: 13 04 16 00  	addi	s0, a2, 1
800029f0: 13 05 00 02  	addi	a0, zero, 32
800029f4: 93 05 0b 00  	mv	a1, s6
800029f8: 93 86 09 00  	mv	a3, s3
800029fc: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002a00: 93 84 f4 ff  	addi	s1, s1, -1
80002a04: 13 06 04 00  	mv	a2, s0
80002a08: e3 92 04 fe  	bnez	s1, 0x800029ec <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80002a0c: 93 04 14 00  	addi	s1, s0, 1
80002a10: 13 05 d0 02  	addi	a0, zero, 45
80002a14: 93 05 0b 00  	mv	a1, s6
80002a18: 13 06 04 00  	mv	a2, s0
80002a1c: 93 86 09 00  	mv	a3, s3
80002a20: e7 80 0b 00  	jalr	s7
80002a24: 93 0a 24 00  	addi	s5, s0, 2
80002a28: 13 05 90 06  	addi	a0, zero, 105
80002a2c: 93 05 0b 00  	mv	a1, s6
80002a30: 13 86 04 00  	mv	a2, s1
80002a34: 93 86 09 00  	mv	a3, s3
80002a38: e7 80 0b 00  	jalr	s7
80002a3c: 13 0c 34 00  	addi	s8, s0, 3
80002a40: 13 05 e0 06  	addi	a0, zero, 110
80002a44: 93 05 0b 00  	mv	a1, s6
80002a48: 13 86 0a 00  	mv	a2, s5
80002a4c: 93 86 09 00  	mv	a3, s3
80002a50: e7 80 0b 00  	jalr	s7
80002a54: 93 04 44 00  	addi	s1, s0, 4
80002a58: 13 05 60 06  	addi	a0, zero, 102
80002a5c: 93 05 0b 00  	mv	a1, s6
80002a60: 13 06 0c 00  	mv	a2, s8
80002a64: 93 86 09 00  	mv	a3, s3
80002a68: e7 80 0b 00  	jalr	s7
80002a6c: 33 85 44 41  	sub	a0, s1, s4
80002a70: 33 35 25 01  	sltu	a0, a0, s2
80002a74: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002a78: 93 c5 1c 00  	xori	a1, s9, 1
80002a7c: 33 e5 a5 00  	or	a0, a1, a0
80002a80: 63 16 05 56  	bnez	a0, 0x80002fec <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002a84: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002a88: 13 84 14 00  	addi	s0, s1, 1
80002a8c: 13 05 00 02  	addi	a0, zero, 32
80002a90: 93 05 0b 00  	mv	a1, s6
80002a94: 13 86 04 00  	mv	a2, s1
80002a98: 93 86 09 00  	mv	a3, s3
80002a9c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002aa0: 33 05 8a 00  	add	a0, s4, s0
80002aa4: 93 04 04 00  	mv	s1, s0
80002aa8: e3 60 25 ff  	bltu	a0, s2, 0x80002a88 <.LBB4_83+0xf0>
80002aac: 6f 00 40 54  	j	0x80002ff0 <.LBB4_90+0x378>
80002ab0: 53 04 a5 22  	fmv.d	fs0, fa0

80002ab4 <.LBB4_84>:
80002ab4: 17 25 00 00  	auipc	a0, 2
80002ab8: 13 05 c5 3c  	addi	a0, a0, 972
80002abc: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80002ac0: 53 05 05 a2  	fle.d	a0, fa0, ft0
80002ac4: 63 1e 05 00  	bnez	a0, 0x80002ae0 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002ac8: 93 f5 4a 00  	andi	a1, s5, 4
80002acc: 13 b5 15 00  	seqz	a0, a1
80002ad0: 63 82 05 06  	beqz	a1, 0x80002b34 <.LBB4_88>

80002ad4 <.LBB4_85>:
80002ad4: 17 2c 00 00  	auipc	s8, 2
80002ad8: 13 0c 2c ed  	addi	s8, s8, -302
80002adc: 6f 00 00 06  	j	0x80002b3c <.LBB4_88+0x8>

80002ae0 <.LBB4_86>:
80002ae0: 17 25 00 00  	auipc	a0, 2
80002ae4: 13 05 85 3a  	addi	a0, a0, 936
80002ae8: 07 30 05 00  	fld	ft0, 0(a0)

80002aec <.LBB4_87>:
80002aec: 17 25 00 00  	auipc	a0, 2
80002af0: 13 05 45 3a  	addi	a0, a0, 932
80002af4: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80002af8: 53 05 04 a2  	fle.d	a0, fs0, ft0
80002afc: d3 85 80 a2  	fle.d	a1, ft1, fs0
80002b00: 33 75 b5 00  	and	a0, a0, a1
80002b04: 63 1e 05 0e  	bnez	a0, 0x80002c00 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002b08: 13 85 0b 00  	mv	a0, s7
80002b0c: 93 05 0b 00  	mv	a1, s6
80002b10: 13 06 0a 00  	mv	a2, s4
80002b14: 93 86 09 00  	mv	a3, s3
80002b18: 53 05 84 22  	fmv.d	fa0, fs0
80002b1c: 93 07 09 00  	mv	a5, s2
80002b20: 13 88 0a 00  	mv	a6, s5
80002b24: 97 00 00 00  	auipc	ra, 0
80002b28: e7 80 40 51  	jalr	1300(ra)
80002b2c: 13 04 05 00  	mv	s0, a0
80002b30: 6f 00 00 4c  	j	0x80002ff0 <.LBB4_90+0x378>

80002b34 <.LBB4_88>:
80002b34: 17 2c 00 00  	auipc	s8, 2
80002b38: 13 0c 8c fe  	addi	s8, s8, -24
80002b3c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80002b40: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002b44: 13 f5 3a 00  	andi	a0, s5, 3
80002b48: 33 35 a0 00  	snez	a0, a0
80002b4c: b3 b5 2c 01  	sltu	a1, s9, s2
80002b50: 93 c5 15 00  	xori	a1, a1, 1
80002b54: 33 65 b5 00  	or	a0, a0, a1
80002b58: 93 fa 2a 00  	andi	s5, s5, 2
80002b5c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002b60: 63 16 05 02  	bnez	a0, 0x80002b8c <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80002b64: 33 04 99 41  	sub	s0, s2, s9
80002b68: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002b6c: 93 04 16 00  	addi	s1, a2, 1
80002b70: 13 05 00 02  	addi	a0, zero, 32
80002b74: 93 05 0b 00  	mv	a1, s6
80002b78: 93 86 09 00  	mv	a3, s3
80002b7c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002b80: 13 04 f4 ff  	addi	s0, s0, -1
80002b84: 13 86 04 00  	mv	a2, s1
80002b88: e3 12 04 fe  	bnez	s0, 0x80002b6c <.LBB4_88+0x38>
80002b8c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002b90: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002b94: 33 05 9c 01  	add	a0, s8, s9
80002b98: 03 45 05 00  	lbu	a0, 0(a0)
80002b9c: 13 86 04 00  	mv	a2, s1
80002ba0: 13 84 fc ff  	addi	s0, s9, -1
80002ba4: 93 84 14 00  	addi	s1, s1, 1
80002ba8: 93 05 0b 00  	mv	a1, s6
80002bac: 93 86 09 00  	mv	a3, s3
80002bb0: e7 80 0b 00  	jalr	s7
80002bb4: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80002bb8: e3 1e 04 fc  	bnez	s0, 0x80002b94 <.LBB4_88+0x60>
80002bbc: 33 85 44 41  	sub	a0, s1, s4
80002bc0: 33 35 25 01  	sltu	a0, a0, s2
80002bc4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002bc8: 93 c5 1a 00  	xori	a1, s5, 1
80002bcc: 33 e5 a5 00  	or	a0, a1, a0
80002bd0: 63 1e 05 40  	bnez	a0, 0x80002fec <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002bd4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002bd8: 13 84 14 00  	addi	s0, s1, 1
80002bdc: 13 05 00 02  	addi	a0, zero, 32
80002be0: 93 05 0b 00  	mv	a1, s6
80002be4: 13 86 04 00  	mv	a2, s1
80002be8: 93 86 09 00  	mv	a3, s3
80002bec: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002bf0: 33 05 8a 00  	add	a0, s4, s0
80002bf4: 93 04 04 00  	mv	s1, s0
80002bf8: e3 60 25 ff  	bltu	a0, s2, 0x80002bd8 <.LBB4_88+0xa4>
80002bfc: 6f 00 40 3f  	j	0x80002ff0 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80002c00: 13 f5 0a 40  	andi	a0, s5, 1024
80002c04: 13 0c 60 00  	addi	s8, zero, 6
80002c08: 63 04 05 00  	beqz	a0, 0x80002c10 <.LBB4_88+0xdc>
80002c0c: 13 0c 07 00  	mv	s8, a4
80002c10: 13 05 a0 00  	addi	a0, zero, 10
80002c14: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002c18: 63 6c ac 02  	bltu	s8, a0, 0x80002c50 <.LBB4_88+0x11c>
80002c1c: 93 04 6c ff  	addi	s1, s8, -10
80002c20: 13 05 f0 01  	addi	a0, zero, 31
80002c24: 63 e4 a4 00  	bltu	s1, a0, 0x80002c2c <.LBB4_88+0xf8>
80002c28: 93 04 f0 01  	addi	s1, zero, 31
80002c2c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80002c30: 13 05 81 00  	addi	a0, sp, 8
80002c34: 93 05 00 03  	addi	a1, zero, 48
80002c38: 13 06 04 00  	mv	a2, s0
80002c3c: 97 e0 ff ff  	auipc	ra, 1048574
80002c40: e7 80 c0 91  	jalr	-1764(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80002c44: 13 c5 f4 ff  	not	a0, s1
80002c48: 33 0c ac 00  	add	s8, s8, a0
80002c4c: 6f 00 80 00  	j	0x80002c54 <.LBB4_88+0x120>
80002c50: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80002c54: 13 15 3c 00  	slli	a0, s8, 3

80002c58 <.LBB4_89>:
80002c58: 97 25 00 00  	auipc	a1, 2
80002c5c: 93 85 05 11  	addi	a1, a1, 272
80002c60: 33 05 b5 00  	add	a0, a0, a1
80002c64: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80002c68: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80002c6c: 53 80 04 d2  	fcvt.d.w	ft0, s1
80002c70: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80002c74: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80002c78 <.LBB4_90>:
80002c78: 17 25 00 00  	auipc	a0, 2
80002c7c: 13 05 05 22  	addi	a0, a0, 544
80002c80: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80002c84: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80002c88: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80002c8c: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80002c90: d3 05 01 a2  	fle.d	a1, ft2, ft0
80002c94: 63 90 05 02  	bnez	a1, 0x80002cb4 <.LBB4_90+0x3c>
;     ++frac;
80002c98: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80002c9c: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80002ca0: d3 15 11 a2  	flt.d	a1, ft2, ft1
80002ca4: 63 94 05 02  	bnez	a1, 0x80002ccc <.LBB4_90+0x54>
80002ca8: 13 05 00 00  	mv	a0, zero
;       ++whole;
80002cac: 93 84 14 00  	addi	s1, s1, 1
80002cb0: 6f 00 c0 01  	j	0x80002ccc <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80002cb4: d3 15 01 a2  	flt.d	a1, ft2, ft0
80002cb8: 63 9a 05 00  	bnez	a1, 0x80002ccc <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80002cbc: 93 35 15 00  	seqz	a1, a0
80002cc0: 13 76 15 00  	andi	a2, a0, 1
80002cc4: b3 65 b6 00  	or	a1, a2, a1
80002cc8: 33 85 a5 00  	add	a0, a1, a0
80002ccc: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80002cd0: 63 0c 0c 0c  	beqz	s8, 0x80002da8 <.LBB4_90+0x130>
80002cd4: 13 06 00 00  	mv	a2, zero
80002cd8: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002cdc: 33 83 85 00  	add	t1, a1, s0
80002ce0: 93 02 00 02  	addi	t0, zero, 32
80002ce4: 33 87 82 40  	sub	a4, t0, s0
80002ce8: b7 d5 cc cc  	lui	a1, 838861
80002cec: 93 83 d5 cc  	addi	t2, a1, -819
80002cf0: 13 08 a0 00  	addi	a6, zero, 10
80002cf4: 93 08 90 00  	addi	a7, zero, 9
80002cf8: 63 04 c7 0c  	beq	a4, a2, 0x80002dc0 <.LBB4_90+0x148>
80002cfc: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80002d00: 33 35 75 02  	mulhu	a0, a0, t2
80002d04: 13 55 35 00  	srli	a0, a0, 3
80002d08: b3 06 05 03  	mul	a3, a0, a6
80002d0c: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80002d10: 93 e6 06 03  	ori	a3, a3, 48
80002d14: b3 07 c3 00  	add	a5, t1, a2
80002d18: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80002d1c: 13 06 16 00  	addi	a2, a2, 1
80002d20: e3 ec b8 fc  	bltu	a7, a1, 0x80002cf8 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002d24: 33 05 c4 00  	add	a0, s0, a2
80002d28: 93 05 f5 ff  	addi	a1, a0, -1
80002d2c: 93 06 e0 01  	addi	a3, zero, 30
80002d30: b3 b6 b6 00  	sltu	a3, a3, a1
80002d34: 33 47 cc 00  	xor	a4, s8, a2
80002d38: 13 37 17 00  	seqz	a4, a4
80002d3c: b3 e6 e6 00  	or	a3, a3, a4
80002d40: 63 94 06 08  	bnez	a3, 0x80002dc8 <.LBB4_90+0x150>
80002d44: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002d48: 33 05 85 00  	add	a0, a0, s0
80002d4c: 93 45 f6 ff  	not	a1, a2
80002d50: 33 8c 85 01  	add	s8, a1, s8
80002d54: 33 04 c4 00  	add	s0, s0, a2
80002d58: 93 05 f0 01  	addi	a1, zero, 31
80002d5c: b3 86 85 40  	sub	a3, a1, s0
80002d60: 33 05 c5 00  	add	a0, a0, a2
80002d64: 93 05 0c 00  	mv	a1, s8
80002d68: 63 64 dc 00  	bltu	s8, a3, 0x80002d70 <.LBB4_90+0xf8>
80002d6c: 93 85 06 00  	mv	a1, a3
80002d70: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002d74: 93 05 00 03  	addi	a1, zero, 48
80002d78: 97 d0 ff ff  	auipc	ra, 1048573
80002d7c: e7 80 00 7e  	jalr	2016(ra)
80002d80: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80002d84: b3 05 a4 00  	add	a1, s0, a0
80002d88: 93 b5 f5 01  	sltiu	a1, a1, 31
80002d8c: 33 46 ac 00  	xor	a2, s8, a0
80002d90: 33 36 c0 00  	snez	a2, a2
80002d94: 33 f6 c5 00  	and	a2, a1, a2
80002d98: 13 05 15 00  	addi	a0, a0, 1
80002d9c: e3 14 06 fe  	bnez	a2, 0x80002d84 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002da0: 33 05 a4 00  	add	a0, s0, a0
80002da4: 6f 00 80 02  	j	0x80002dcc <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002da8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002dac: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002db0: 53 05 10 a2  	fle.d	a0, ft0, ft1
80002db4: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002db8: b3 84 a4 00  	add	s1, s1, a0
80002dbc: 6f 00 c0 03  	j	0x80002df8 <.LBB4_90+0x180>
80002dc0: 13 04 00 02  	addi	s0, zero, 32
80002dc4: 6f 00 80 03  	j	0x80002dfc <.LBB4_90+0x184>
80002dc8: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002dcc: 63 8e 05 00  	beqz	a1, 0x80002de8 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002dd0: 13 04 15 00  	addi	s0, a0, 1
80002dd4: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002dd8: 33 85 a5 00  	add	a0, a1, a0
80002ddc: 93 05 e0 02  	addi	a1, zero, 46
80002de0: 23 00 b5 00  	sb	a1, 0(a0)
80002de4: 6f 00 80 00  	j	0x80002dec <.LBB4_90+0x174>
80002de8: 13 04 05 00  	mv	s0, a0
80002dec: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002df0: 93 02 04 00  	mv	t0, s0
80002df4: 63 64 85 00  	bltu	a0, s0, 0x80002dfc <.LBB4_90+0x184>
80002df8: 93 02 00 02  	addi	t0, zero, 32
80002dfc: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002e00: 37 65 66 66  	lui	a0, 419430
80002e04: 93 05 75 66  	addi	a1, a0, 1639
80002e08: 13 08 a0 00  	addi	a6, zero, 10
80002e0c: 93 06 81 00  	addi	a3, sp, 8
80002e10: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002e14: 63 80 82 04  	beq	t0, s0, 0x80002e54 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002e18: 33 95 b4 02  	mulh	a0, s1, a1
80002e1c: 93 57 f5 01  	srli	a5, a0, 31
80002e20: 13 55 25 40  	srai	a0, a0, 2
80002e24: 33 05 f5 00  	add	a0, a0, a5
80002e28: b3 07 05 03  	mul	a5, a0, a6
80002e2c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002e30: 93 87 07 03  	addi	a5, a5, 48
80002e34: 13 0c 14 00  	addi	s8, s0, 1
80002e38: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002e3c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002e40: 23 00 f4 00  	sb	a5, 0(s0)
80002e44: 13 04 0c 00  	mv	s0, s8
80002e48: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002e4c: e3 64 c7 fc  	bltu	a4, a2, 0x80002e14 <.LBB4_90+0x19c>
80002e50: 6f 00 80 00  	j	0x80002e58 <.LBB4_90+0x1e0>
80002e54: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002e58: 93 f4 3a 00  	andi	s1, s5, 3
80002e5c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002e60: 63 96 a4 06  	bne	s1, a0, 0x80002ecc <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002e64: 63 0c 09 00  	beqz	s2, 0x80002e7c <.LBB4_90+0x204>
80002e68: 13 f5 ca 00  	andi	a0, s5, 12
80002e6c: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002e70: 33 e5 ac 00  	or	a0, s9, a0
80002e74: 33 09 a9 40  	sub	s2, s2, a0
80002e78: 6f 00 80 00  	j	0x80002e80 <.LBB4_90+0x208>
80002e7c: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002e80: 33 35 2c 01  	sltu	a0, s8, s2
80002e84: 93 45 15 00  	xori	a1, a0, 1
80002e88: 13 05 f0 01  	addi	a0, zero, 31
80002e8c: 33 36 85 01  	sltu	a2, a0, s8
80002e90: b3 65 b6 00  	or	a1, a2, a1
80002e94: 63 9c 05 02  	bnez	a1, 0x80002ecc <.LBB4_90+0x254>
80002e98: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002e9c: 93 45 fc ff  	not	a1, s8
80002ea0: b3 05 b9 00  	add	a1, s2, a1
80002ea4: 33 06 85 41  	sub	a2, a0, s8
80002ea8: 33 85 86 01  	add	a0, a3, s8
80002eac: 63 e4 c5 00  	bltu	a1, a2, 0x80002eb4 <.LBB4_90+0x23c>
80002eb0: 93 05 06 00  	mv	a1, a2
80002eb4: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002eb8: 93 05 00 03  	addi	a1, zero, 48
80002ebc: 13 06 04 00  	mv	a2, s0
80002ec0: 97 d0 ff ff  	auipc	ra, 1048573
80002ec4: e7 80 80 69  	jalr	1688(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002ec8: 33 0c 84 01  	add	s8, s0, s8
80002ecc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002ed0: 63 6a 85 05  	bltu	a0, s8, 0x80002f24 <.LBB4_90+0x2ac>
;     if (negative) {
80002ed4: 63 8c 0c 00  	beqz	s9, 0x80002eec <.LBB4_90+0x274>
80002ed8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002edc: 33 05 85 01  	add	a0, a0, s8
80002ee0: 13 0c 1c 00  	addi	s8, s8, 1
80002ee4: 93 05 d0 02  	addi	a1, zero, 45
80002ee8: 6f 00 80 03  	j	0x80002f20 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002eec: 13 f5 4a 00  	andi	a0, s5, 4
80002ef0: 63 10 05 02  	bnez	a0, 0x80002f10 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80002ef4: 13 f5 8a 00  	andi	a0, s5, 8
80002ef8: 63 06 05 02  	beqz	a0, 0x80002f24 <.LBB4_90+0x2ac>
80002efc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002f00: 33 05 85 01  	add	a0, a0, s8
80002f04: 13 0c 1c 00  	addi	s8, s8, 1
80002f08: 93 05 00 02  	addi	a1, zero, 32
80002f0c: 6f 00 40 01  	j	0x80002f20 <.LBB4_90+0x2a8>
80002f10: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002f14: 33 05 85 01  	add	a0, a0, s8
80002f18: 13 0c 1c 00  	addi	s8, s8, 1
80002f1c: 93 05 b0 02  	addi	a1, zero, 43
80002f20: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002f24: 33 35 90 00  	snez	a0, s1
80002f28: b3 35 2c 01  	sltu	a1, s8, s2
80002f2c: 93 c5 15 00  	xori	a1, a1, 1
80002f30: 33 65 b5 00  	or	a0, a0, a1
80002f34: 93 fa 2a 00  	andi	s5, s5, 2
80002f38: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002f3c: 63 16 05 02  	bnez	a0, 0x80002f68 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002f40: b3 04 89 41  	sub	s1, s2, s8
80002f44: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002f48: 13 04 16 00  	addi	s0, a2, 1
80002f4c: 13 05 00 02  	addi	a0, zero, 32
80002f50: 93 05 0b 00  	mv	a1, s6
80002f54: 93 86 09 00  	mv	a3, s3
80002f58: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002f5c: 93 84 f4 ff  	addi	s1, s1, -1
80002f60: 13 06 04 00  	mv	a2, s0
80002f64: e3 92 04 fe  	bnez	s1, 0x80002f48 <.LBB4_90+0x2d0>
80002f68: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002f6c: 63 0c 0c 02  	beqz	s8, 0x80002fa4 <.LBB4_90+0x32c>
80002f70: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002f74: 33 85 8c 01  	add	a0, s9, s8
80002f78: 03 45 05 00  	lbu	a0, 0(a0)
80002f7c: 13 0d fc ff  	addi	s10, s8, -1
80002f80: 93 04 14 00  	addi	s1, s0, 1
80002f84: 93 05 0b 00  	mv	a1, s6
80002f88: 13 06 04 00  	mv	a2, s0
80002f8c: 93 86 09 00  	mv	a3, s3
80002f90: e7 80 0b 00  	jalr	s7
80002f94: 13 84 04 00  	mv	s0, s1
80002f98: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002f9c: e3 1c 0d fc  	bnez	s10, 0x80002f74 <.LBB4_90+0x2fc>
80002fa0: 6f 00 80 00  	j	0x80002fa8 <.LBB4_90+0x330>
80002fa4: 93 04 04 00  	mv	s1, s0
80002fa8: 33 85 44 41  	sub	a0, s1, s4
80002fac: 33 35 25 01  	sltu	a0, a0, s2
80002fb0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002fb4: 93 c5 1a 00  	xori	a1, s5, 1
80002fb8: 33 e5 a5 00  	or	a0, a1, a0
80002fbc: 63 18 05 02  	bnez	a0, 0x80002fec <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002fc0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002fc4: 13 84 14 00  	addi	s0, s1, 1
80002fc8: 13 05 00 02  	addi	a0, zero, 32
80002fcc: 93 05 0b 00  	mv	a1, s6
80002fd0: 13 86 04 00  	mv	a2, s1
80002fd4: 93 86 09 00  	mv	a3, s3
80002fd8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002fdc: 33 05 8a 00  	add	a0, s4, s0
80002fe0: 93 04 04 00  	mv	s1, s0
80002fe4: e3 60 25 ff  	bltu	a0, s2, 0x80002fc4 <.LBB4_90+0x34c>
80002fe8: 6f 00 80 00  	j	0x80002ff0 <.LBB4_90+0x378>
80002fec: 13 84 04 00  	mv	s0, s1
; }
80002ff0: 13 05 04 00  	mv	a0, s0
80002ff4: 07 39 81 02  	fld	fs2, 40(sp)
80002ff8: 87 34 01 03  	fld	fs1, 48(sp)
80002ffc: 07 34 81 03  	fld	fs0, 56(sp)
80003000: 03 2d 01 04  	lw	s10, 64(sp)
80003004: 83 2c 41 04  	lw	s9, 68(sp)
80003008: 03 2c 81 04  	lw	s8, 72(sp)
8000300c: 83 2b c1 04  	lw	s7, 76(sp)
80003010: 03 2b 01 05  	lw	s6, 80(sp)
80003014: 83 2a 41 05  	lw	s5, 84(sp)
80003018: 03 2a 81 05  	lw	s4, 88(sp)
8000301c: 83 29 c1 05  	lw	s3, 92(sp)
80003020: 03 29 01 06  	lw	s2, 96(sp)
80003024: 83 24 41 06  	lw	s1, 100(sp)
80003028: 03 24 81 06  	lw	s0, 104(sp)
8000302c: 83 20 c1 06  	lw	ra, 108(sp)
80003030: 13 01 01 07  	addi	sp, sp, 112
80003034: 67 80 00 00  	ret

80003038 <_etoa>:
; {
80003038: 13 01 01 f8  	addi	sp, sp, -128
8000303c: 23 2e 11 06  	sw	ra, 124(sp)
80003040: 23 2c 81 06  	sw	s0, 120(sp)
80003044: 23 2a 91 06  	sw	s1, 116(sp)
80003048: 23 28 21 07  	sw	s2, 112(sp)
8000304c: 23 26 31 07  	sw	s3, 108(sp)
80003050: 23 24 41 07  	sw	s4, 104(sp)
80003054: 23 22 51 07  	sw	s5, 100(sp)
80003058: 23 20 61 07  	sw	s6, 96(sp)
8000305c: 23 2e 71 05  	sw	s7, 92(sp)
80003060: 23 2c 81 05  	sw	s8, 88(sp)
80003064: 23 2a 91 05  	sw	s9, 84(sp)
80003068: 23 28 a1 05  	sw	s10, 80(sp)
8000306c: 23 26 b1 05  	sw	s11, 76(sp)

80003070 <.LBB5_43>:
80003070: 97 24 00 00  	auipc	s1, 2
80003074: 93 84 04 e3  	addi	s1, s1, -464
80003078: 87 b0 04 00  	fld	ft1, 0(s1)

8000307c <.LBB5_44>:
8000307c: 97 24 00 00  	auipc	s1, 2
80003080: 93 84 c4 e2  	addi	s1, s1, -468
80003084: 07 b1 04 00  	fld	ft2, 0(s1)
80003088: 53 00 a5 22  	fmv.d	ft0, fa0
8000308c: d3 04 15 a2  	fle.d	s1, fa0, ft1
80003090: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80003094: b3 f4 84 00  	and	s1, s1, s0
80003098: 93 0a 08 00  	mv	s5, a6
8000309c: 13 89 07 00  	mv	s2, a5
800030a0: 93 07 07 00  	mv	a5, a4
800030a4: 93 89 06 00  	mv	s3, a3
800030a8: 13 0a 06 00  	mv	s4, a2
800030ac: 13 8b 05 00  	mv	s6, a1
800030b0: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800030b4: 63 92 04 06  	bnez	s1, 0x80003118 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800030b8: 13 85 0b 00  	mv	a0, s7
800030bc: 93 05 0b 00  	mv	a1, s6
800030c0: 13 06 0a 00  	mv	a2, s4
800030c4: 93 86 09 00  	mv	a3, s3
800030c8: 53 05 00 22  	fmv.d	fa0, ft0
800030cc: 13 87 07 00  	mv	a4, a5
800030d0: 93 07 09 00  	mv	a5, s2
800030d4: 13 88 0a 00  	mv	a6, s5
800030d8: 83 2d c1 04  	lw	s11, 76(sp)
800030dc: 03 2d 01 05  	lw	s10, 80(sp)
800030e0: 83 2c 41 05  	lw	s9, 84(sp)
800030e4: 03 2c 81 05  	lw	s8, 88(sp)
800030e8: 83 2b c1 05  	lw	s7, 92(sp)
800030ec: 03 2b 01 06  	lw	s6, 96(sp)
800030f0: 83 2a 41 06  	lw	s5, 100(sp)
800030f4: 03 2a 81 06  	lw	s4, 104(sp)
800030f8: 83 29 c1 06  	lw	s3, 108(sp)
800030fc: 03 29 01 07  	lw	s2, 112(sp)
80003100: 83 24 41 07  	lw	s1, 116(sp)
80003104: 03 24 81 07  	lw	s0, 120(sp)
80003108: 83 20 c1 07  	lw	ra, 124(sp)
8000310c: 13 01 01 08  	addi	sp, sp, 128
80003110: 17 03 00 00  	auipc	t1, 0
80003114: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80003118: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
8000311c: 13 f5 0a 40  	andi	a0, s5, 1024
80003120: 13 07 60 00  	addi	a4, zero, 6
80003124: 63 04 05 00  	beqz	a0, 0x8000312c <.LBB5_44+0xb0>
80003128: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
8000312c: 27 30 a1 02  	fsd	fa0, 32(sp)
80003130: 83 25 41 02  	lw	a1, 36(sp)
80003134: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80003138: 93 d6 45 01  	srli	a3, a1, 20
8000313c: b7 07 10 00  	lui	a5, 256
80003140: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80003144: b3 f5 f5 00  	and	a1, a1, a5
80003148: 23 2c c1 00  	sw	a2, 24(sp)
8000314c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80003150: b3 e5 c5 00  	or	a1, a1, a2
80003154: 23 2e b1 00  	sw	a1, 28(sp)
80003158: 87 30 81 01  	fld	ft1, 24(sp)

8000315c <.LBB5_45>:
8000315c: 97 25 00 00  	auipc	a1, 2
80003160: 93 85 45 d5  	addi	a1, a1, -684
80003164: 07 b1 05 00  	fld	ft2, 0(a1)

80003168 <.LBB5_46>:
80003168: 97 25 00 00  	auipc	a1, 2
8000316c: 93 85 05 d5  	addi	a1, a1, -688
80003170: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80003174: 93 f5 f6 7f  	andi	a1, a3, 2047
80003178: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000317c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80003180: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80003184 <.LBB5_47>:
80003184: 97 25 00 00  	auipc	a1, 2
80003188: 93 85 c5 d3  	addi	a1, a1, -708
8000318c: 07 b1 05 00  	fld	ft2, 0(a1)

80003190 <.LBB5_48>:
80003190: 97 25 00 00  	auipc	a1, 2
80003194: 93 85 85 d3  	addi	a1, a1, -712
80003198: 87 b1 05 00  	fld	ft3, 0(a1)

8000319c <.LBB5_49>:
8000319c: 97 25 00 00  	auipc	a1, 2
800031a0: 93 85 45 d3  	addi	a1, a1, -716
800031a4: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800031a8: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800031ac: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800031b0: d3 80 05 d2  	fcvt.d.w	ft1, a1
800031b4: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800031b8 <.LBB5_50>:
800031b8: 17 26 00 00  	auipc	a2, 2
800031bc: 13 06 06 d2  	addi	a2, a2, -736
800031c0: 87 31 06 00  	fld	ft3, 0(a2)

800031c4 <.LBB5_51>:
800031c4: 17 26 00 00  	auipc	a2, 2
800031c8: 13 06 c6 d1  	addi	a2, a2, -740
800031cc: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800031d0: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800031d4: 53 01 06 d2  	fcvt.d.w	ft2, a2
800031d8: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800031dc: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800031e0: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800031e4: 13 06 f6 3f  	addi	a2, a2, 1023
800031e8: 23 28 01 00  	sw	zero, 16(sp)
800031ec: 13 16 46 01  	slli	a2, a2, 20
800031f0: 23 2a c1 00  	sw	a2, 20(sp)

800031f4 <.LBB5_52>:
800031f4: 17 26 00 00  	auipc	a2, 2
800031f8: 13 06 c6 cf  	addi	a2, a2, -772
800031fc: 87 31 06 00  	fld	ft3, 0(a2)

80003200 <.LBB5_53>:
80003200: 17 26 00 00  	auipc	a2, 2
80003204: 13 06 86 cf  	addi	a2, a2, -776
80003208: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000320c: 87 32 01 01  	fld	ft5, 16(sp)

80003210 <.LBB5_54>:
80003210: 17 26 00 00  	auipc	a2, 2
80003214: 13 06 86 cd  	addi	a2, a2, -808
80003218: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000321c: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80003220 <.LBB5_55>:
80003220: 17 26 00 00  	auipc	a2, 2
80003224: 13 06 06 ce  	addi	a2, a2, -800
80003228: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000322c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80003230: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80003234: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80003238: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
8000323c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80003240: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80003244: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80003248: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
8000324c: 53 16 15 a2  	flt.d	a2, fa0, ft1
80003250: 63 0a 06 00  	beqz	a2, 0x80003264 <.LBB5_56+0x10>

80003254 <.LBB5_56>:
80003254: 97 26 00 00  	auipc	a3, 2
80003258: 93 86 46 cb  	addi	a3, a3, -844
8000325c: 07 b1 06 00  	fld	ft2, 0(a3)
80003260: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80003264: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80003268: 93 05 34 06  	addi	a1, s0, 99
8000326c: 93 b5 75 0c  	sltiu	a1, a1, 199
80003270: 13 06 50 00  	addi	a2, zero, 5
80003274: b7 16 00 00  	lui	a3, 1
80003278: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
8000327c: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80003280: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80003284: 63 84 06 06  	beqz	a3, 0x800032ec <.LBB5_58+0x58>

80003288 <.LBB5_57>:
80003288: 97 25 00 00  	auipc	a1, 2
8000328c: 93 85 85 c8  	addi	a1, a1, -888
80003290: 07 b1 05 00  	fld	ft2, 0(a1)

80003294 <.LBB5_58>:
80003294: 97 25 00 00  	auipc	a1, 2
80003298: 93 85 45 c8  	addi	a1, a1, -892
8000329c: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800032a0: d3 15 25 a2  	flt.d	a1, fa0, ft2
800032a4: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800032a8: b3 e5 c5 00  	or	a1, a1, a2
800032ac: 63 98 05 00  	bnez	a1, 0x800032bc <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800032b0: 63 40 e4 02  	blt	s0, a4, 0x800032d0 <.LBB5_58+0x3c>
800032b4: 13 07 00 00  	mv	a4, zero
800032b8: 6f 00 00 02  	j	0x800032d8 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800032bc: 63 06 07 02  	beqz	a4, 0x800032e8 <.LBB5_58+0x54>
800032c0: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800032c4: 13 45 15 00  	xori	a0, a0, 1
800032c8: 33 07 a7 40  	sub	a4, a4, a0
800032cc: 6f 00 00 02  	j	0x800032ec <.LBB5_58+0x58>
800032d0: 13 45 f4 ff  	not	a0, s0
800032d4: 33 07 a7 00  	add	a4, a4, a0
800032d8: 13 04 00 00  	mv	s0, zero
800032dc: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800032e0: 93 ea 0a 40  	ori	s5, s5, 1024
800032e4: 6f 00 80 00  	j	0x800032ec <.LBB5_58+0x58>
800032e8: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800032ec: b3 05 99 41  	sub	a1, s2, s9
800032f0: 33 36 b9 00  	sltu	a2, s2, a1
800032f4: 13 05 00 00  	mv	a0, zero
800032f8: 63 14 06 00  	bnez	a2, 0x80003300 <.LBB5_58+0x6c>
800032fc: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80003300: 93 07 00 00  	mv	a5, zero
80003304: 93 d5 1a 00  	srli	a1, s5, 1
80003308: 93 f4 15 00  	andi	s1, a1, 1
8000330c: b3 35 90 01  	snez	a1, s9
80003310: b3 f5 b4 00  	and	a1, s1, a1
80003314: 53 01 00 d2  	fcvt.d.w	ft2, zero
80003318: 63 94 05 00  	bnez	a1, 0x80003320 <.LBB5_58+0x8c>
8000331c: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80003320: 93 35 14 00  	seqz	a1, s0
80003324: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80003328: 63 94 05 00  	bnez	a1, 0x80003330 <.LBB5_58+0x9c>
8000332c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80003330: 63 04 05 00  	beqz	a0, 0x80003338 <.LBB5_58+0xa4>
80003334: 53 15 a5 22  	fneg.d	fa0, fa0
80003338: 37 f5 ff ff  	lui	a0, 1048575
8000333c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80003340: 33 f8 aa 00  	and	a6, s5, a0
80003344: 13 85 0b 00  	mv	a0, s7
80003348: 93 05 0b 00  	mv	a1, s6
8000334c: 13 06 0a 00  	mv	a2, s4
80003350: 93 86 09 00  	mv	a3, s3
80003354: 97 f0 ff ff  	auipc	ra, 1048575
80003358: e7 80 40 60  	jalr	1540(ra)
8000335c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80003360: 63 82 0c 18  	beqz	s9, 0x800034e4 <.LBB5_58+0x250>
80003364: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80003368: 13 f5 0a 02  	andi	a0, s5, 32
8000336c: 13 45 55 06  	xori	a0, a0, 101
80003370: 93 05 0b 00  	mv	a1, s6
80003374: 13 06 0d 00  	mv	a2, s10
80003378: 93 86 09 00  	mv	a3, s3
8000337c: e7 80 0b 00  	jalr	s7
80003380: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80003384: 93 5a f4 01  	srli	s5, s0, 31
80003388: 13 55 f4 41  	srai	a0, s0, 31
8000338c: b3 05 a4 00  	add	a1, s0, a0
80003390: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80003394: 93 8d dc ff  	addi	s11, s9, -3
80003398: 13 04 f0 01  	addi	s0, zero, 31
8000339c: 37 d5 cc cc  	lui	a0, 838861
800033a0: 13 05 d5 cc  	addi	a0, a0, -819
800033a4: 13 08 a0 00  	addi	a6, zero, 10
800033a8: 93 08 c1 02  	addi	a7, sp, 44
800033ac: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800033b0: b3 37 a7 02  	mulhu	a5, a4, a0
800033b4: 93 d5 37 00  	srli	a1, a5, 3
800033b8: b3 87 05 03  	mul	a5, a1, a6
800033bc: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800033c0: 13 e6 07 03  	ori	a2, a5, 48
800033c4: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033c8: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800033cc: 13 0c 1c 00  	addi	s8, s8, 1
800033d0: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800033d4: 33 b6 e2 00  	sltu	a2, t0, a4
800033d8: 33 f6 c7 00  	and	a2, a5, a2
800033dc: 93 8d fd ff  	addi	s11, s11, -1
800033e0: 13 04 f4 ff  	addi	s0, s0, -1
800033e4: 13 87 05 00  	mv	a4, a1
800033e8: e3 14 06 fc  	bnez	a2, 0x800033b0 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800033ec: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800033f0: 33 35 ac 00  	sltu	a0, s8, a0
800033f4: 13 45 15 00  	xori	a0, a0, 1
800033f8: 93 c5 17 00  	xori	a1, a5, 1
800033fc: 33 e5 a5 00  	or	a0, a1, a0
80003400: 63 12 05 04  	bnez	a0, 0x80003444 <.LBB5_58+0x1b0>
80003404: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003408: b3 85 8c 41  	sub	a1, s9, s8
8000340c: 93 85 d5 ff  	addi	a1, a1, -3
80003410: 13 06 f0 01  	addi	a2, zero, 31
80003414: 33 06 86 41  	sub	a2, a2, s8
80003418: 33 05 85 01  	add	a0, a0, s8
8000341c: 63 e4 c5 00  	bltu	a1, a2, 0x80003424 <.LBB5_58+0x190>
80003420: 93 05 06 00  	mv	a1, a2
80003424: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80003428: 93 05 00 03  	addi	a1, zero, 48
8000342c: 97 d0 ff ff  	auipc	ra, 1048573
80003430: e7 80 c0 12  	jalr	300(ra)
;   if (flags & FLAGS_HASH) {
80003434: 63 e4 8d 00  	bltu	s11, s0, 0x8000343c <.LBB5_58+0x1a8>
80003438: 93 0d 04 00  	mv	s11, s0
8000343c: 33 85 8d 01  	add	a0, s11, s8
80003440: 13 0c 15 00  	addi	s8, a0, 1
80003444: 83 2c c1 00  	lw	s9, 12(sp)
80003448: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000344c: 63 60 85 03  	bltu	a0, s8, 0x8000346c <.LBB5_58+0x1d8>
80003450: 13 05 c1 02  	addi	a0, sp, 44
80003454: 33 05 85 01  	add	a0, a0, s8
80003458: 93 05 d0 02  	addi	a1, zero, 45
8000345c: 63 94 0a 00  	bnez	s5, 0x80003464 <.LBB5_58+0x1d0>
80003460: 93 05 b0 02  	addi	a1, zero, 43
80003464: 13 0c 1c 00  	addi	s8, s8, 1
80003468: 23 00 b5 00  	sb	a1, 0(a0)
8000346c: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80003470: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80003474: 33 85 8a 01  	add	a0, s5, s8
80003478: 03 45 05 00  	lbu	a0, 0(a0)
8000347c: 13 06 04 00  	mv	a2, s0
80003480: 93 04 fc ff  	addi	s1, s8, -1
80003484: 13 04 14 00  	addi	s0, s0, 1
80003488: 93 05 0b 00  	mv	a1, s6
8000348c: 93 86 09 00  	mv	a3, s3
80003490: e7 80 0b 00  	jalr	s7
80003494: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80003498: e3 9e 04 fc  	bnez	s1, 0x80003474 <.LBB5_58+0x1e0>
8000349c: 33 05 44 41  	sub	a0, s0, s4
800034a0: 33 35 25 01  	sltu	a0, a0, s2
800034a4: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800034a8: 93 c5 1c 00  	xori	a1, s9, 1
800034ac: 33 e5 a5 00  	or	a0, a1, a0
800034b0: 63 18 05 02  	bnez	a0, 0x800034e0 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800034b4: b3 04 40 41  	neg	s1, s4
800034b8: 13 0d 14 00  	addi	s10, s0, 1
800034bc: 13 05 00 02  	addi	a0, zero, 32
800034c0: 93 05 0b 00  	mv	a1, s6
800034c4: 13 06 04 00  	mv	a2, s0
800034c8: 93 86 09 00  	mv	a3, s3
800034cc: e7 80 0b 00  	jalr	s7
800034d0: 33 85 a4 01  	add	a0, s1, s10
800034d4: 13 04 0d 00  	mv	s0, s10
800034d8: e3 60 25 ff  	bltu	a0, s2, 0x800034b8 <.LBB5_58+0x224>
800034dc: 6f 00 80 00  	j	0x800034e4 <.LBB5_58+0x250>
800034e0: 13 0d 04 00  	mv	s10, s0
; }
800034e4: 13 05 0d 00  	mv	a0, s10
800034e8: 83 2d c1 04  	lw	s11, 76(sp)
800034ec: 03 2d 01 05  	lw	s10, 80(sp)
800034f0: 83 2c 41 05  	lw	s9, 84(sp)
800034f4: 03 2c 81 05  	lw	s8, 88(sp)
800034f8: 83 2b c1 05  	lw	s7, 92(sp)
800034fc: 03 2b 01 06  	lw	s6, 96(sp)
80003500: 83 2a 41 06  	lw	s5, 100(sp)
80003504: 03 2a 81 06  	lw	s4, 104(sp)
80003508: 83 29 c1 06  	lw	s3, 108(sp)
8000350c: 03 29 01 07  	lw	s2, 112(sp)
80003510: 83 24 41 07  	lw	s1, 116(sp)
80003514: 03 24 81 07  	lw	s0, 120(sp)
80003518: 83 20 c1 07  	lw	ra, 124(sp)
8000351c: 13 01 01 08  	addi	sp, sp, 128
80003520: 67 80 00 00  	ret

80003524 <_ntoa_format>:
; {
80003524: 13 01 01 fc  	addi	sp, sp, -64
80003528: 23 2e 11 02  	sw	ra, 60(sp)
8000352c: 23 2c 81 02  	sw	s0, 56(sp)
80003530: 23 2a 91 02  	sw	s1, 52(sp)
80003534: 23 28 21 03  	sw	s2, 48(sp)
80003538: 23 26 31 03  	sw	s3, 44(sp)
8000353c: 23 24 41 03  	sw	s4, 40(sp)
80003540: 23 22 51 03  	sw	s5, 36(sp)
80003544: 23 20 61 03  	sw	s6, 32(sp)
80003548: 23 2e 71 01  	sw	s7, 28(sp)
8000354c: 23 2c 81 01  	sw	s8, 24(sp)
80003550: 23 2a 91 01  	sw	s9, 20(sp)
80003554: 23 28 a1 01  	sw	s10, 16(sp)
80003558: 23 26 b1 01  	sw	s11, 12(sp)
8000355c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80003560: 93 fa 2e 00  	andi	s5, t4, 2
80003564: 13 09 0e 00  	mv	s2, t3
80003568: 13 8d 03 00  	mv	s10, t2
8000356c: 93 8c 08 00  	mv	s9, a7
80003570: 13 8c 07 00  	mv	s8, a5
80003574: 93 89 06 00  	mv	s3, a3
80003578: 13 0a 06 00  	mv	s4, a2
8000357c: 13 8b 05 00  	mv	s6, a1
80003580: 93 0d 05 00  	mv	s11, a0
80003584: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80003588: 63 9e 0a 0c  	bnez	s5, 0x80003664 <_ntoa_format+0x140>
8000358c: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80003590: 63 0e 09 00  	beqz	s2, 0x800035ac <_ntoa_format+0x88>
80003594: 63 0e 04 00  	beqz	s0, 0x800035b0 <_ntoa_format+0x8c>
80003598: 13 f5 cb 00  	andi	a0, s7, 12
8000359c: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800035a0: 33 65 05 01  	or	a0, a0, a6
800035a4: 33 09 a9 40  	sub	s2, s2, a0
800035a8: 6f 00 80 00  	j	0x800035b0 <_ntoa_format+0x8c>
800035ac: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800035b0: 33 35 ac 01  	sltu	a0, s8, s10
800035b4: 93 45 15 00  	xori	a1, a0, 1
800035b8: 13 05 f0 01  	addi	a0, zero, 31
800035bc: 33 36 85 01  	sltu	a2, a0, s8
800035c0: b3 65 b6 00  	or	a1, a2, a1
800035c4: 63 94 05 04  	bnez	a1, 0x8000360c <_ntoa_format+0xe8>
800035c8: 23 22 51 01  	sw	s5, 4(sp)
800035cc: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800035d0: 93 45 fc ff  	not	a1, s8
800035d4: b3 85 a5 01  	add	a1, a1, s10
800035d8: 33 06 85 41  	sub	a2, a0, s8
800035dc: 33 05 87 01  	add	a0, a4, s8
800035e0: 63 e4 c5 00  	bltu	a1, a2, 0x800035e8 <_ntoa_format+0xc4>
800035e4: 93 05 06 00  	mv	a1, a2
800035e8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800035ec: 93 05 00 03  	addi	a1, zero, 48
800035f0: 13 86 04 00  	mv	a2, s1
800035f4: 97 d0 ff ff  	auipc	ra, 1048573
800035f8: e7 80 40 f6  	jalr	-156(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800035fc: 33 8c 84 01  	add	s8, s1, s8
80003600: 03 27 81 00  	lw	a4, 8(sp)
80003604: 13 88 0a 00  	mv	a6, s5
80003608: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000360c: 63 0c 04 04  	beqz	s0, 0x80003664 <_ntoa_format+0x140>
80003610: 33 35 2c 01  	sltu	a0, s8, s2
80003614: 93 45 15 00  	xori	a1, a0, 1
80003618: 13 05 f0 01  	addi	a0, zero, 31
8000361c: 33 36 85 01  	sltu	a2, a0, s8
80003620: b3 e5 c5 00  	or	a1, a1, a2
80003624: 63 90 05 04  	bnez	a1, 0x80003664 <_ntoa_format+0x140>
80003628: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000362c: 93 45 fc ff  	not	a1, s8
80003630: b3 05 b9 00  	add	a1, s2, a1
80003634: 33 06 85 41  	sub	a2, a0, s8
80003638: 33 05 87 01  	add	a0, a4, s8
8000363c: 63 e4 c5 00  	bltu	a1, a2, 0x80003644 <_ntoa_format+0x120>
80003640: 93 05 06 00  	mv	a1, a2
80003644: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80003648: 93 05 00 03  	addi	a1, zero, 48
8000364c: 13 86 04 00  	mv	a2, s1
80003650: 97 d0 ff ff  	auipc	ra, 1048573
80003654: e7 80 80 f0  	jalr	-248(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003658: 33 8c 84 01  	add	s8, s1, s8
8000365c: 03 27 81 00  	lw	a4, 8(sp)
80003660: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80003664: 13 f5 0b 01  	andi	a0, s7, 16
80003668: 63 02 05 0e  	beqz	a0, 0x8000374c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
8000366c: 13 f5 0b 40  	andi	a0, s7, 1024
80003670: 13 55 a5 00  	srli	a0, a0, 10
80003674: 93 35 1c 00  	seqz	a1, s8
80003678: 33 65 b5 00  	or	a0, a0, a1
8000367c: 63 1e 05 02  	bnez	a0, 0x800036b8 <_ntoa_format+0x194>
80003680: 33 45 ac 01  	xor	a0, s8, s10
80003684: 33 35 a0 00  	snez	a0, a0
80003688: b3 45 2c 01  	xor	a1, s8, s2
8000368c: b3 35 b0 00  	snez	a1, a1
80003690: 33 75 b5 00  	and	a0, a0, a1
80003694: 63 12 05 02  	bnez	a0, 0x800036b8 <_ntoa_format+0x194>
;       len--;
80003698: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
8000369c: b3 35 a0 00  	snez	a1, a0
800036a0: 13 86 0c ff  	addi	a2, s9, -16
800036a4: 13 36 16 00  	seqz	a2, a2
800036a8: b3 75 b6 00  	and	a1, a2, a1
800036ac: 63 84 05 00  	beqz	a1, 0x800036b4 <_ntoa_format+0x190>
800036b0: 13 05 ec ff  	addi	a0, s8, -2
800036b4: 13 0c 05 00  	mv	s8, a0
800036b8: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800036bc: 63 96 ac 02  	bne	s9, a0, 0x800036e8 <_ntoa_format+0x1c4>
800036c0: 13 f5 0b 02  	andi	a0, s7, 32
800036c4: 93 55 55 00  	srli	a1, a0, 5
800036c8: 13 06 f0 01  	addi	a2, zero, 31
800036cc: 33 36 86 01  	sltu	a2, a2, s8
800036d0: b3 e5 c5 00  	or	a1, a1, a2
800036d4: 63 9e 05 02  	bnez	a1, 0x80003710 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800036d8: 33 05 87 01  	add	a0, a4, s8
800036dc: 13 0c 1c 00  	addi	s8, s8, 1
800036e0: 93 05 80 07  	addi	a1, zero, 120
800036e4: 6f 00 c0 04  	j	0x80003730 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800036e8: 13 85 ec ff  	addi	a0, s9, -2
800036ec: 33 35 a0 00  	snez	a0, a0
800036f0: 93 05 f0 01  	addi	a1, zero, 31
800036f4: b3 b5 85 01  	sltu	a1, a1, s8
800036f8: 33 65 b5 00  	or	a0, a0, a1
800036fc: 63 1c 05 02  	bnez	a0, 0x80003734 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80003700: 33 05 87 01  	add	a0, a4, s8
80003704: 13 0c 1c 00  	addi	s8, s8, 1
80003708: 93 05 20 06  	addi	a1, zero, 98
8000370c: 6f 00 40 02  	j	0x80003730 <_ntoa_format+0x20c>
80003710: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80003714: 13 35 15 00  	seqz	a0, a0
80003718: 93 c5 15 00  	xori	a1, a1, 1
8000371c: 33 65 b5 00  	or	a0, a0, a1
80003720: 63 1a 05 00  	bnez	a0, 0x80003734 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80003724: 33 05 87 01  	add	a0, a4, s8
80003728: 13 0c 1c 00  	addi	s8, s8, 1
8000372c: 93 05 80 05  	addi	a1, zero, 88
80003730: 23 00 b5 00  	sb	a1, 0(a0)
80003734: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003738: 63 60 85 07  	bltu	a0, s8, 0x80003798 <_ntoa_format+0x274>
;       buf[len++] = '0';
8000373c: 33 05 87 01  	add	a0, a4, s8
80003740: 13 0c 1c 00  	addi	s8, s8, 1
80003744: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80003748: 23 00 b5 00  	sb	a1, 0(a0)
8000374c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80003750: 63 64 85 05  	bltu	a0, s8, 0x80003798 <_ntoa_format+0x274>
;     if (negative) {
80003754: 63 0a 08 00  	beqz	a6, 0x80003768 <_ntoa_format+0x244>
;       buf[len++] = '-';
80003758: 33 05 87 01  	add	a0, a4, s8
8000375c: 13 0c 1c 00  	addi	s8, s8, 1
80003760: 93 05 d0 02  	addi	a1, zero, 45
80003764: 6f 00 00 03  	j	0x80003794 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80003768: 13 f5 4b 00  	andi	a0, s7, 4
8000376c: 63 1e 05 00  	bnez	a0, 0x80003788 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80003770: 13 f5 8b 00  	andi	a0, s7, 8
80003774: 63 02 05 02  	beqz	a0, 0x80003798 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80003778: 33 05 87 01  	add	a0, a4, s8
8000377c: 13 0c 1c 00  	addi	s8, s8, 1
80003780: 93 05 00 02  	addi	a1, zero, 32
80003784: 6f 00 00 01  	j	0x80003794 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80003788: 33 05 87 01  	add	a0, a4, s8
8000378c: 13 0c 1c 00  	addi	s8, s8, 1
80003790: 93 05 b0 02  	addi	a1, zero, 43
80003794: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80003798: 13 f5 3b 00  	andi	a0, s7, 3
8000379c: 33 35 a0 00  	snez	a0, a0
800037a0: b3 35 2c 01  	sltu	a1, s8, s2
800037a4: 93 c5 15 00  	xori	a1, a1, 1
800037a8: 33 65 b5 00  	or	a0, a0, a1
800037ac: 13 04 0a 00  	mv	s0, s4
800037b0: 63 16 05 02  	bnez	a0, 0x800037dc <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800037b4: b3 04 89 41  	sub	s1, s2, s8
800037b8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800037bc: 13 04 16 00  	addi	s0, a2, 1
800037c0: 13 05 00 02  	addi	a0, zero, 32
800037c4: 93 05 0b 00  	mv	a1, s6
800037c8: 93 86 09 00  	mv	a3, s3
800037cc: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800037d0: 93 84 f4 ff  	addi	s1, s1, -1
800037d4: 13 06 04 00  	mv	a2, s0
800037d8: e3 92 04 fe  	bnez	s1, 0x800037bc <_ntoa_format+0x298>
800037dc: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800037e0: 63 0e 0c 02  	beqz	s8, 0x8000381c <_ntoa_format+0x2f8>
800037e4: 03 25 81 00  	lw	a0, 8(sp)
800037e8: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800037ec: 33 85 8b 01  	add	a0, s7, s8
800037f0: 03 45 05 00  	lbu	a0, 0(a0)
800037f4: 93 0c fc ff  	addi	s9, s8, -1
800037f8: 93 04 14 00  	addi	s1, s0, 1
800037fc: 93 05 0b 00  	mv	a1, s6
80003800: 13 06 04 00  	mv	a2, s0
80003804: 93 86 09 00  	mv	a3, s3
80003808: e7 80 0d 00  	jalr	s11
8000380c: 13 84 04 00  	mv	s0, s1
80003810: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80003814: e3 9c 0c fc  	bnez	s9, 0x800037ec <_ntoa_format+0x2c8>
80003818: 6f 00 80 00  	j	0x80003820 <_ntoa_format+0x2fc>
8000381c: 93 04 04 00  	mv	s1, s0
80003820: 33 85 44 41  	sub	a0, s1, s4
80003824: 33 35 25 01  	sltu	a0, a0, s2
80003828: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000382c: 93 c5 1a 00  	xori	a1, s5, 1
80003830: 33 e5 a5 00  	or	a0, a1, a0
80003834: 63 18 05 02  	bnez	a0, 0x80003864 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80003838: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000383c: 13 84 14 00  	addi	s0, s1, 1
80003840: 13 05 00 02  	addi	a0, zero, 32
80003844: 93 05 0b 00  	mv	a1, s6
80003848: 13 86 04 00  	mv	a2, s1
8000384c: 93 86 09 00  	mv	a3, s3
80003850: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80003854: 33 05 8a 00  	add	a0, s4, s0
80003858: 93 04 04 00  	mv	s1, s0
8000385c: e3 60 25 ff  	bltu	a0, s2, 0x8000383c <_ntoa_format+0x318>
80003860: 6f 00 80 00  	j	0x80003868 <_ntoa_format+0x344>
80003864: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80003868: 13 05 04 00  	mv	a0, s0
8000386c: 83 2d c1 00  	lw	s11, 12(sp)
80003870: 03 2d 01 01  	lw	s10, 16(sp)
80003874: 83 2c 41 01  	lw	s9, 20(sp)
80003878: 03 2c 81 01  	lw	s8, 24(sp)
8000387c: 83 2b c1 01  	lw	s7, 28(sp)
80003880: 03 2b 01 02  	lw	s6, 32(sp)
80003884: 83 2a 41 02  	lw	s5, 36(sp)
80003888: 03 2a 81 02  	lw	s4, 40(sp)
8000388c: 83 29 c1 02  	lw	s3, 44(sp)
80003890: 03 29 01 03  	lw	s2, 48(sp)
80003894: 83 24 41 03  	lw	s1, 52(sp)
80003898: 03 24 81 03  	lw	s0, 56(sp)
8000389c: 83 20 c1 03  	lw	ra, 60(sp)
800038a0: 13 01 01 04  	addi	sp, sp, 64
800038a4: 67 80 00 00  	ret

800038a8 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800038a8: 37 05 00 00  	lui	a0, 0
800038ac: 33 05 45 00  	add	a0, a0, tp
800038b0: 03 25 05 00  	lw	a0, 0(a0)
800038b4: 03 25 05 00  	lw	a0, 0(a0)
800038b8: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800038bc: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800038c0: 33 85 a5 40  	sub	a0, a1, a0
800038c4: 67 80 00 00  	ret

800038c8 <snrt_cluster_core_idx>:
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800038c8: 37 05 00 00  	lui	a0, 0
800038cc: 33 05 45 00  	add	a0, a0, tp
800038d0: 03 25 45 00  	lw	a0, 4(a0)
800038d4: 67 80 00 00  	ret

800038d8 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800038d8: 37 05 00 00  	lui	a0, 0
800038dc: 33 05 45 00  	add	a0, a0, tp
800038e0: 03 25 05 00  	lw	a0, 0(a0)
800038e4: 03 25 05 00  	lw	a0, 0(a0)
800038e8: 03 25 05 07  	lw	a0, 112(a0)
800038ec: 67 80 00 00  	ret

800038f0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800038f0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800038f4: 63 44 05 00  	bltz	a0, 0x800038fc <__snrt_isr+0xc>
;         while (1)
800038f8: 6f 00 00 00  	j	0x800038f8 <__snrt_isr+0x8>
800038fc: b7 05 00 80  	lui	a1, 524288
80003900: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80003904: 33 75 b5 00  	and	a0, a0, a1
80003908: 13 05 d5 ff  	addi	a0, a0, -3
8000390c: 93 55 25 00  	srli	a1, a0, 2
80003910: 13 15 e5 01  	slli	a0, a0, 30
80003914: 33 65 b5 00  	or	a0, a0, a1
80003918: 93 05 40 00  	addi	a1, zero, 4
8000391c: 63 0a b5 06  	beq	a0, a1, 0x80003990 <.LBB2_7+0x58>
80003920: 63 1a 05 08  	bnez	a0, 0x800039b4 <.LBB2_7+0x7c>
80003924: 37 05 00 00  	lui	a0, 0
80003928: 33 05 45 00  	add	a0, a0, tp
8000392c: 03 25 05 00  	lw	a0, 0(a0)
80003930: 03 25 05 00  	lw	a0, 0(a0)
80003934: f3 25 40 f1  	csrr	a1, mhartid

80003938 <.LBB2_7>:
;     asm volatile(
80003938: 17 16 01 00  	auipc	a2, 17
8000393c: 13 06 86 62  	addi	a2, a2, 1576
80003940: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80003944: 93 06 06 00  	mv	a3, a2
80003948: 93 02 10 00  	addi	t0, zero, 1
8000394c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80003950: e3 9e 02 fe  	bnez	t0, 0x8000394c <.LBB2_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80003954: b7 06 00 00  	lui	a3, 0
80003958: b3 86 46 00  	add	a3, a3, tp
8000395c: 83 a6 86 00  	lw	a3, 8(a3)
80003960: 33 85 a5 40  	sub	a0, a1, a0
80003964: 93 55 35 00  	srli	a1, a0, 3
80003968: 93 f5 c5 ff  	andi	a1, a1, -4
8000396c: b3 85 b6 00  	add	a1, a3, a1
80003970: 83 a6 05 00  	lw	a3, 0(a1)
80003974: 13 07 10 00  	addi	a4, zero, 1
80003978: 33 15 a7 00  	sll	a0, a4, a0
8000397c: 13 45 f5 ff  	not	a0, a0
80003980: 33 f5 a6 00  	and	a0, a3, a0
80003984: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80003988: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
8000398c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003990: 37 05 00 00  	lui	a0, 0
80003994: 33 05 45 00  	add	a0, a0, tp
80003998: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000399c: b7 05 00 00  	lui	a1, 0
800039a0: b3 85 45 00  	add	a1, a1, tp
800039a4: 83 a5 c5 00  	lw	a1, 12(a1)
800039a8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800039ac: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800039b0: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800039b4: 67 80 00 00  	ret

800039b8 <snrt_omp_bootstrap>:
; unsigned __attribute__((noinline)) snrt_omp_bootstrap(uint32_t core_idx) {
800039b8: 13 01 01 fd  	addi	sp, sp, -48
;     return _snrt_team_current->root->cluster_core_num;
800039bc: 23 26 11 02  	sw	ra, 44(sp)
800039c0: 23 24 81 02  	sw	s0, 40(sp)
800039c4: 23 22 91 02  	sw	s1, 36(sp)
800039c8: 23 20 21 03  	sw	s2, 32(sp)
800039cc: 23 2e 31 01  	sw	s3, 28(sp)
800039d0: 23 2c 41 01  	sw	s4, 24(sp)
800039d4: 23 2a 51 01  	sw	s5, 20(sp)
800039d8: 23 28 61 01  	sw	s6, 16(sp)
800039dc: 23 26 71 01  	sw	s7, 12(sp)
800039e0: b7 05 00 00  	lui	a1, 0
800039e4: b3 85 45 00  	add	a1, a1, tp
800039e8: 03 a4 05 00  	lw	s0, 0(a1)
800039ec: 03 26 04 00  	lw	a2, 0(s0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800039f0: b7 06 00 00  	lui	a3, 0
800039f4: b3 86 46 00  	add	a3, a3, tp
;     return _snrt_team_current->root->cluster_core_num;
800039f8: 03 26 c6 01  	lw	a2, 28(a2)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800039fc: 83 a9 46 00  	lw	s3, 4(a3)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80003a00: 13 06 f6 ff  	addi	a2, a2, -1
80003a04: 13 09 05 00  	mv	s2, a0
;     if (snrt_is_dm_core()) {
80003a08: 63 f2 c9 0a  	bgeu	s3, a2, 0x80003aac <.LBB1_38+0x5c>

80003a0c <.LBB1_36>:
80003a0c: 17 15 01 00  	auipc	a0, 17
80003a10: 13 05 85 56  	addi	a0, a0, 1384
;         while (!dm_p_global)
80003a14: 83 25 05 00  	lw	a1, 0(a0)
80003a18: e3 8e 05 fe  	beqz	a1, 0x80003a14 <.LBB1_36+0x8>
;         dm_p = dm_p_global;
80003a1c: 03 25 05 00  	lw	a0, 0(a0)
80003a20: b7 05 00 00  	lui	a1, 0
80003a24: b3 85 45 00  	add	a1, a1, tp
80003a28: 23 aa a5 00  	sw	a0, 20(a1)
;     if (snrt_cluster_core_idx() == 0) {
80003a2c: 63 80 09 10  	beqz	s3, 0x80003b2c <.LBB1_39+0x1c>

80003a30 <.LBB1_37>:
80003a30: 17 15 01 00  	auipc	a0, 17
80003a34: 13 05 05 54  	addi	a0, a0, 1344
;         while (!eu_p_global)
80003a38: 83 25 05 00  	lw	a1, 0(a0)
80003a3c: e3 8e 05 fe  	beqz	a1, 0x80003a38 <.LBB1_37+0x8>
;         eu_p = eu_p_global;
80003a40: 03 25 05 00  	lw	a0, 0(a0)
80003a44: b7 05 00 00  	lui	a1, 0
80003a48: b3 85 45 00  	add	a1, a1, tp
80003a4c: 23 a8 a5 00  	sw	a0, 16(a1)

80003a50 <.LBB1_38>:
80003a50: 17 15 01 00  	auipc	a0, 17
80003a54: 13 05 85 51  	addi	a0, a0, 1304
;         while (!omp_p_global)
80003a58: 83 25 05 00  	lw	a1, 0(a0)
80003a5c: e3 8e 05 fe  	beqz	a1, 0x80003a58 <.LBB1_38+0x8>
;     if (core_idx == 0) {
80003a60: 63 06 09 1e  	beqz	s2, 0x80003c4c <.LBB1_44+0x10>
;     return _snrt_team_current->root->cluster_core_num;
80003a64: 03 25 04 00  	lw	a0, 0(s0)
80003a68: 03 25 c5 01  	lw	a0, 28(a0)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80003a6c: 13 04 f5 ff  	addi	s0, a0, -1
80003a70: 97 10 00 00  	auipc	ra, 1
80003a74: e7 80 00 de  	jalr	-544(ra)
;     } else if (snrt_is_dm_core()) {
80003a78: 63 f2 89 06  	bgeu	s3, s0, 0x80003adc <.LBB1_38+0x8c>
;     __atomic_add_fetch(&eu_p->workers_in_loop, 1, __ATOMIC_RELAXED);
80003a7c: 37 05 00 00  	lui	a0, 0
80003a80: 33 04 45 00  	add	s0, a0, tp
80003a84: 03 25 04 01  	lw	a0, 16(s0)
80003a88: 13 0a 10 00  	addi	s4, zero, 1
80003a8c: 2f 25 45 01  	amoadd.w	a0, s4, (a0)
80003a90: b7 09 08 00  	lui	s3, 128
;     set_csr(mie, 1 << irq);
80003a94: 73 a5 49 30  	csrrs	a0, mie, s3
;         if (eu_p->exit_flag) {
80003a98: 83 25 04 01  	lw	a1, 16(s0)
80003a9c: 03 a5 45 00  	lw	a0, 4(a1)
80003aa0: 63 0a 05 20  	beqz	a0, 0x80003cb4 <.LBB1_44+0x78>
;     set_csr(mie, 1 << irq);
80003aa4: 73 a5 49 30  	csrrs	a0, mie, s3
80003aa8: 6f 00 c0 1d  	j	0x80003c84 <.LBB1_44+0x48>
80003aac: 37 05 08 00  	lui	a0, 128
;     set_csr(mie, 1 << irq);
80003ab0: 73 25 45 30  	csrrs	a0, mie, a0
;     return _snrt_team_current->root;
80003ab4: 03 a4 05 00  	lw	s0, 0(a1)
80003ab8: 03 25 04 00  	lw	a0, 0(s0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80003abc: 83 24 85 05  	lw	s1, 88(a0)
80003ac0: 03 26 05 05  	lw	a2, 80(a0)
80003ac4: 83 26 45 05  	lw	a3, 84(a0)
80003ac8: 93 85 04 0c  	addi	a1, s1, 192
80003acc: 33 86 c6 00  	add	a2, a3, a2
80003ad0: 63 7e b6 00  	bgeu	a2, a1, 0x80003aec <.LBB1_38+0x9c>
80003ad4: 93 04 00 00  	mv	s1, zero
80003ad8: 6f 00 80 01  	j	0x80003af0 <.LBB1_38+0xa0>
;         dm_main();
80003adc: 97 10 00 00  	auipc	ra, 1
80003ae0: e7 80 00 80  	jalr	-2048(ra)
80003ae4: 13 0a 10 00  	addi	s4, zero, 1
80003ae8: 6f 00 c0 19  	j	0x80003c84 <.LBB1_44+0x48>
;     alloc->next += size;
80003aec: 23 2c b5 04  	sw	a1, 88(a0)
;         dm_p = (dm_t *)snrt_l1alloc(sizeof(dm_t));
80003af0: 37 05 00 00  	lui	a0, 0
80003af4: 33 05 45 00  	add	a0, a0, tp
80003af8: 23 2a 95 00  	sw	s1, 20(a0)
;         *((uint8_t *)ptr + i) = (unsigned char)value;
80003afc: 13 06 00 0c  	addi	a2, zero, 192
80003b00: 13 85 04 00  	mv	a0, s1
80003b04: 93 05 00 00  	mv	a1, zero
80003b08: 97 d0 ff ff  	auipc	ra, 1048573
80003b0c: e7 80 00 a5  	jalr	-1456(ra)

80003b10 <.LBB1_39>:
;         dm_p_global = dm_p;
80003b10: 17 15 01 00  	auipc	a0, 17
80003b14: 13 05 45 46  	addi	a0, a0, 1124
80003b18: 23 20 95 00  	sw	s1, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003b1c: 37 05 00 00  	lui	a0, 0
80003b20: 33 05 45 00  	add	a0, a0, tp
80003b24: 83 29 45 00  	lw	s3, 4(a0)
;     if (snrt_cluster_core_idx() == 0) {
80003b28: e3 94 09 f0  	bnez	s3, 0x80003a30 <.LBB1_37>
;     return _snrt_team_current->root;
80003b2c: 03 25 04 00  	lw	a0, 0(s0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80003b30: 83 24 85 05  	lw	s1, 88(a0)
80003b34: 03 26 05 05  	lw	a2, 80(a0)
80003b38: 83 26 45 05  	lw	a3, 84(a0)
80003b3c: 93 85 84 02  	addi	a1, s1, 40
80003b40: 33 86 c6 00  	add	a2, a3, a2
80003b44: 63 76 b6 00  	bgeu	a2, a1, 0x80003b50 <.LBB1_39+0x40>
80003b48: 93 04 00 00  	mv	s1, zero
80003b4c: 6f 00 80 00  	j	0x80003b54 <.LBB1_39+0x44>
;     alloc->next += size;
80003b50: 23 2c b5 04  	sw	a1, 88(a0)
;         eu_p = snrt_l1alloc(sizeof(eu_t));
80003b54: 37 05 00 00  	lui	a0, 0
80003b58: 33 05 45 00  	add	a0, a0, tp
80003b5c: 23 28 95 00  	sw	s1, 16(a0)
;         *((uint8_t *)ptr + i) = (unsigned char)value;
80003b60: 13 06 40 02  	addi	a2, zero, 36
80003b64: 13 85 04 00  	mv	a0, s1
80003b68: 93 05 00 00  	mv	a1, zero
80003b6c: 97 d0 ff ff  	auipc	ra, 1048573
80003b70: e7 80 c0 9e  	jalr	-1556(ra)

80003b74 <.LBB1_40>:
;         eu_p_global = eu_p;
80003b74: 17 15 01 00  	auipc	a0, 17
80003b78: 13 05 c5 3f  	addi	a0, a0, 1020
80003b7c: 23 20 95 00  	sw	s1, 0(a0)
;     return _snrt_team_current->root;
80003b80: 03 25 04 00  	lw	a0, 0(s0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80003b84: 83 25 85 05  	lw	a1, 88(a0)
80003b88: 83 26 05 05  	lw	a3, 80(a0)
80003b8c: 03 27 45 05  	lw	a4, 84(a0)
80003b90: 13 86 05 03  	addi	a2, a1, 48
80003b94: 33 07 d7 00  	add	a4, a4, a3
80003b98: 93 06 00 00  	mv	a3, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80003b9c: 63 66 c7 00  	bltu	a4, a2, 0x80003ba8 <.LBB1_41>
;     alloc->next += size;
80003ba0: 23 2c c5 04  	sw	a2, 88(a0)
80003ba4: 93 86 05 00  	mv	a3, a1

80003ba8 <.LBB1_41>:
;         kmpc_args =
80003ba8: 17 15 01 00  	auipc	a0, 17
80003bac: 13 05 45 3c  	addi	a0, a0, 964
80003bb0: 23 20 d5 00  	sw	a3, 0(a0)
;     return _snrt_team_current->root;
80003bb4: 83 25 04 00  	lw	a1, 0(s0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80003bb8: 03 a5 85 05  	lw	a0, 88(a1)
80003bbc: 83 a6 05 05  	lw	a3, 80(a1)
80003bc0: 03 a7 45 05  	lw	a4, 84(a1)
80003bc4: 13 06 85 00  	addi	a2, a0, 8
80003bc8: b3 06 d7 00  	add	a3, a4, a3
80003bcc: 63 f6 c6 00  	bgeu	a3, a2, 0x80003bd8 <.LBB1_41+0x30>
80003bd0: 13 05 00 00  	mv	a0, zero
80003bd4: 6f 00 80 00  	j	0x80003bdc <.LBB1_42>
;     alloc->next += size;
80003bd8: 23 ac c5 04  	sw	a2, 88(a1)

80003bdc <.LBB1_42>:
80003bdc: 97 15 01 00  	auipc	a1, 17
80003be0: 93 85 45 34  	addi	a1, a1, 836
;         omp_p.kmpc_barrier =
80003be4: 23 a6 a5 00  	sw	a0, 12(a1)
;         *((uint8_t *)ptr + i) = (unsigned char)value;
80003be8: a3 03 05 00  	sb	zero, 7(a0)
80003bec: 23 03 05 00  	sb	zero, 6(a0)
80003bf0: a3 02 05 00  	sb	zero, 5(a0)
80003bf4: 23 02 05 00  	sb	zero, 4(a0)
80003bf8: a3 01 05 00  	sb	zero, 3(a0)
80003bfc: 23 01 05 00  	sb	zero, 2(a0)
80003c00: a3 00 05 00  	sb	zero, 1(a0)
80003c04: 23 00 05 00  	sb	zero, 0(a0)

80003c08 <.LBB1_43>:
;         omp_p_global = &omp_p;
80003c08: 17 15 01 00  	auipc	a0, 17
80003c0c: 13 05 05 36  	addi	a0, a0, 864
80003c10: 23 20 b5 00  	sw	a1, 0(a0)
;     return _snrt_team_current->root;
80003c14: 03 25 04 00  	lw	a0, 0(s0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80003c18: 83 25 85 05  	lw	a1, 88(a0)
80003c1c: 83 26 05 05  	lw	a3, 80(a0)
80003c20: 03 27 45 05  	lw	a4, 84(a0)
80003c24: 13 86 85 00  	addi	a2, a1, 8
80003c28: 33 07 d7 00  	add	a4, a4, a3
80003c2c: 93 06 00 00  	mv	a3, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80003c30: 63 66 c7 00  	bltu	a4, a2, 0x80003c3c <.LBB1_44>
;     alloc->next += size;
80003c34: 23 2c c5 04  	sw	a2, 88(a0)
80003c38: 93 86 05 00  	mv	a3, a1

80003c3c <.LBB1_44>:
;         omp_prof = (omp_prof_t *)snrt_l1alloc(sizeof(omp_prof_t));
80003c3c: 17 15 01 00  	auipc	a0, 17
80003c40: 13 05 85 32  	addi	a0, a0, 808
80003c44: 23 20 d5 00  	sw	a3, 0(a0)
;     if (core_idx == 0) {
80003c48: e3 1e 09 e0  	bnez	s2, 0x80003a64 <.LBB1_38+0x14>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80003c4c: 97 10 00 00  	auipc	ra, 1
80003c50: e7 80 40 c0  	jalr	-1020(ra)
80003c54: 37 05 00 00  	lui	a0, 0
80003c58: 33 05 45 00  	add	a0, a0, tp
80003c5c: 03 25 05 00  	lw	a0, 0(a0)
80003c60: 03 25 05 00  	lw	a0, 0(a0)
80003c64: b7 05 00 00  	lui	a1, 0
80003c68: b3 85 45 00  	add	a1, a1, tp
80003c6c: 03 26 c5 01  	lw	a2, 28(a0)
80003c70: 03 a5 05 01  	lw	a0, 16(a1)
80003c74: 93 05 e6 ff  	addi	a1, a2, -2
;     return __atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED);
80003c78: 03 26 c5 00  	lw	a2, 12(a0)
;         while (eu_get_workers_in_wfi() != (snrt_cluster_compute_core_num() - 1))
80003c7c: e3 1e b6 fe  	bne	a2, a1, 0x80003c78 <.LBB1_44+0x3c>
80003c80: 13 0a 00 00  	mv	s4, zero
; }
80003c84: 13 05 0a 00  	mv	a0, s4
80003c88: 83 2b c1 00  	lw	s7, 12(sp)
80003c8c: 03 2b 01 01  	lw	s6, 16(sp)
80003c90: 83 2a 41 01  	lw	s5, 20(sp)
80003c94: 03 2a 81 01  	lw	s4, 24(sp)
80003c98: 83 29 c1 01  	lw	s3, 28(sp)
80003c9c: 03 29 01 02  	lw	s2, 32(sp)
80003ca0: 83 24 41 02  	lw	s1, 36(sp)
80003ca4: 03 24 81 02  	lw	s0, 40(sp)
80003ca8: 83 20 c1 02  	lw	ra, 44(sp)
80003cac: 13 01 01 03  	addi	sp, sp, 48
80003cb0: 67 80 00 00  	ret
80003cb4: 93 0a 10 00  	addi	s5, zero, 1
80003cb8: 33 9b 2a 01  	sll	s6, s5, s2
80003cbc: 37 05 00 00  	lui	a0, 0
80003cc0: b3 04 45 00  	add	s1, a0, tp
80003cc4: 93 0b f0 ff  	addi	s7, zero, -1
80003cc8: 6f 00 40 03  	j	0x80003cfc <.LBB1_44+0xc0>
;         __atomic_add_fetch(&eu_p->e.fini_count, 1, __ATOMIC_RELAXED);
80003ccc: 13 85 05 02  	addi	a0, a1, 32
80003cd0: 2f 25 55 01  	amoadd.w	a0, s5, (a0)
;     __atomic_add_fetch(&eu_p->workers_wfi, 1, __ATOMIC_RELAXED);
80003cd4: 13 85 c5 00  	addi	a0, a1, 12
80003cd8: 2f 25 55 01  	amoadd.w	a0, s5, (a0)
; static inline void snrt_wfi() { asm volatile("wfi"); }
80003cdc: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80003ce0: 03 a5 c4 00  	lw	a0, 12(s1)
80003ce4: 23 24 65 01  	sw	s6, 8(a0)
;     __atomic_add_fetch(&eu_p->workers_wfi, -1, __ATOMIC_RELAXED);
80003ce8: 83 25 04 01  	lw	a1, 16(s0)
80003cec: 13 85 c5 00  	addi	a0, a1, 12
80003cf0: 2f 25 75 01  	amoadd.w	a0, s7, (a0)
;         if (eu_p->exit_flag) {
80003cf4: 03 a5 45 00  	lw	a0, 4(a1)
80003cf8: e3 16 05 da  	bnez	a0, 0x80003aa4 <.LBB1_38+0x54>
;         if (cluster_core_idx < eu_p->e.nthreads) {
80003cfc: 03 a5 c5 01  	lw	a0, 28(a1)
80003d00: e3 76 a9 fc  	bgeu	s2, a0, 0x80003ccc <.LBB1_44+0x90>
;             nthds = eu_p->e.nthreads;
80003d04: 03 a5 c5 01  	lw	a0, 28(a1)
;             eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
80003d08: 03 a6 05 01  	lw	a2, 16(a1)
80003d0c: 03 a5 45 01  	lw	a0, 20(a1)
80003d10: 83 a5 85 01  	lw	a1, 24(a1)
80003d14: e7 00 06 00  	jalr	a2
;         __atomic_add_fetch(&eu_p->e.fini_count, 1, __ATOMIC_RELAXED);
80003d18: 83 25 04 01  	lw	a1, 16(s0)
80003d1c: 6f f0 1f fb  	j	0x80003ccc <.LBB1_44+0x90>

80003d20 <__kmpc_barrier>:
; void __kmpc_barrier(ident_t *loc, kmp_int32 tid) {
80003d20: 97 15 01 00  	auipc	a1, 17
80003d24: 93 85 05 20  	addi	a1, a1, 512
;     snrt_barrier(_this->kmpc_barrier, (uint32_t)_this->numThreads);
80003d28: 03 a5 c5 00  	lw	a0, 12(a1)
80003d2c: 83 a6 45 00  	lw	a3, 4(a1)
;     uint32_t prev_it = barr->barrier_iteration;
80003d30: 83 25 45 00  	lw	a1, 4(a0)
80003d34: 13 06 10 00  	addi	a2, zero, 1
;     uint32_t barrier = __atomic_add_fetch(&barr->barrier, 1, __ATOMIC_RELAXED);
80003d38: 2f 27 c5 00  	amoadd.w	a4, a2, (a0)
80003d3c: 13 07 17 00  	addi	a4, a4, 1
;     if (barrier == n) {
80003d40: 63 1a d7 00  	bne	a4, a3, 0x80003d54 <__kmpc_barrier+0x34>
;         barr->barrier = 0;
80003d44: 23 20 05 00  	sw	zero, 0(a0)
;         __atomic_add_fetch(&barr->barrier_iteration, 1, __ATOMIC_RELAXED);
80003d48: 13 05 45 00  	addi	a0, a0, 4
80003d4c: 2f 25 c5 00  	amoadd.w	a0, a2, (a0)
; }
80003d50: 67 80 00 00  	ret
;         while (prev_it == barr->barrier_iteration)
80003d54: 03 26 45 00  	lw	a2, 4(a0)
80003d58: e3 8e c5 fe  	beq	a1, a2, 0x80003d54 <__kmpc_barrier+0x34>
; }
80003d5c: 67 80 00 00  	ret

80003d60 <__kmpc_fork_call>:
; void __kmpc_fork_call(ident_t *loc, kmp_int32 argc, kmpc_micro microtask, ...) {
80003d60: 13 01 01 fd  	addi	sp, sp, -48
80003d64: 23 2a 11 00  	sw	ra, 20(sp)
80003d68: 23 28 81 00  	sw	s0, 16(sp)
80003d6c: 23 26 11 03  	sw	a7, 44(sp)
80003d70: 23 24 01 03  	sw	a6, 40(sp)
80003d74: 23 22 f1 02  	sw	a5, 36(sp)
80003d78: 23 20 e1 02  	sw	a4, 32(sp)
80003d7c: 23 2e d1 00  	sw	a3, 28(sp)
;     OMP_PROF(omp_prof->fork_oh = read_csr(mcycle));
80003d80: 73 25 00 b0  	csrr	a0, mcycle

80003d84 <.LBB1_19>:
80003d84: 97 16 01 00  	auipc	a3, 17
80003d88: 93 86 06 1e  	addi	a3, a3, 480
80003d8c: 83 a6 06 00  	lw	a3, 0(a3)
80003d90: 23 a0 a6 00  	sw	a0, 0(a3)

80003d94 <.LBB1_20>:
;     kmpc_args[0] = (_kmp_ptr32)microtask;
80003d94: 17 15 01 00  	auipc	a0, 17
80003d98: 13 05 85 1d  	addi	a0, a0, 472
80003d9c: 83 26 05 00  	lw	a3, 0(a0)
80003da0: 23 a0 c6 00  	sw	a2, 0(a3)
80003da4: 13 06 c1 01  	addi	a2, sp, 28
80003da8: 93 06 10 00  	addi	a3, zero, 1
;     va_start(vl, microtask);
80003dac: 23 26 c1 00  	sw	a2, 12(sp)
;     for (int i = 1; i <= argc; ++i) {
80003db0: 63 c8 d5 02  	blt	a1, a3, 0x80003de0 <.LBB1_20+0x4c>
80003db4: 03 26 05 00  	lw	a2, 0(a0)
;     for (int i = 1; i <= argc; ++i) {
80003db8: 13 06 46 00  	addi	a2, a2, 4
80003dbc: 93 86 05 00  	mv	a3, a1
;         kmpc_args[i] = (_kmp_ptr32)va_arg(vl, _kmp_ptr32);
80003dc0: 03 27 c1 00  	lw	a4, 12(sp)
80003dc4: 93 07 47 00  	addi	a5, a4, 4
80003dc8: 23 26 f1 00  	sw	a5, 12(sp)
80003dcc: 03 27 07 00  	lw	a4, 0(a4)
80003dd0: 23 20 e6 00  	sw	a4, 0(a2)
;     for (int i = 1; i <= argc; ++i) {
80003dd4: 93 86 f6 ff  	addi	a3, a3, -1
80003dd8: 13 06 46 00  	addi	a2, a2, 4
80003ddc: e3 92 06 fe  	bnez	a3, 0x80003dc0 <.LBB1_20+0x2c>
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003de0: 37 06 00 00  	lui	a2, 0
80003de4: 33 06 46 00  	add	a2, a2, tp
80003de8: 03 26 46 00  	lw	a2, 4(a2)
;     if (snrt_cluster_core_idx() != 0) {
80003dec: 63 04 06 00  	beqz	a2, 0x80003df4 <.LBB1_20+0x60>
;     while (1)
80003df0: 6f 00 00 00  	j	0x80003df0 <.LBB1_20+0x5c>
;     uint32_t scratch = eu_p->workers_in_loop;
80003df4: 37 06 00 00  	lui	a2, 0
80003df8: 33 06 46 00  	add	a2, a2, tp
80003dfc: 03 26 06 01  	lw	a2, 16(a2)
;         parallelRegion(argc, kmpc_args, __microtask_wrapper, omp->numThreads);
80003e00: 83 26 05 00  	lw	a3, 0(a0)

80003e04 <.LBB1_21>:
80003e04: 17 15 01 00  	auipc	a0, 17
80003e08: 13 05 c5 11  	addi	a0, a0, 284
;         parallelRegion(argc, kmpc_args, __microtask_wrapper, omp->numThreads);
80003e0c: 03 25 45 00  	lw	a0, 4(a0)
;     uint32_t scratch = eu_p->workers_in_loop;
80003e10: 03 27 06 00  	lw	a4, 0(a2)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
80003e14: 83 27 c6 00  	lw	a5, 12(a2)
80003e18: e3 9e e7 fe  	bne	a5, a4, 0x80003e14 <.LBB1_21+0x10>

80003e1c <.LBB1_22>:
;     eu_p->e.fn = fn;
80003e1c: 17 07 00 00  	auipc	a4, 0
80003e20: 13 07 07 0c  	addi	a4, a4, 192
80003e24: 23 28 e6 00  	sw	a4, 16(a2)
;     eu_p->e.data = data;
80003e28: 23 2a d6 00  	sw	a3, 20(a2)
;     eu_p->e.argc = argc;
80003e2c: 23 2c b6 00  	sw	a1, 24(a2)
;     eu_p->e.nthreads = nthreads;
80003e30: 23 2e a6 00  	sw	a0, 28(a2)
;     scratch = eu_p->e.nthreads;
80003e34: 83 25 c6 01  	lw	a1, 28(a2)
;     if (!scratch) return;
80003e38: 63 8a 05 08  	beqz	a1, 0x80003ecc <.LBB1_22+0xb0>
;     eu_p->e.fini_count = 0;
80003e3c: 23 20 06 02  	sw	zero, 32(a2)
80003e40: 93 06 10 00  	addi	a3, zero, 1
;     if (scratch > 1) wake_workers();
80003e44: 13 85 f5 ff  	addi	a0, a1, -1
80003e48: 63 84 d5 04  	beq	a1, a3, 0x80003e90 <.LBB1_22+0x74>
;     uint32_t scratch = eu_p->workers_in_loop;
80003e4c: 83 25 06 00  	lw	a1, 0(a2)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
80003e50: 83 26 c6 00  	lw	a3, 12(a2)
80003e54: e3 9e b6 fe  	bne	a3, a1, 0x80003e50 <.LBB1_22+0x34>
;     return _snrt_team_current->root->cluster_core_num;
80003e58: b7 05 00 00  	lui	a1, 0
80003e5c: b3 85 45 00  	add	a1, a1, tp
80003e60: 83 a5 05 00  	lw	a1, 0(a1)
80003e64: 83 a5 05 00  	lw	a1, 0(a1)
80003e68: 83 a5 c5 01  	lw	a1, 28(a1)
;     return snrt_cluster_core_num() - 1;
80003e6c: 93 85 f5 ff  	addi	a1, a1, -1
80003e70: 93 06 f0 ff  	addi	a3, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80003e74: 37 07 00 00  	lui	a4, 0
80003e78: 33 07 47 00  	add	a4, a4, tp
80003e7c: 03 27 c7 00  	lw	a4, 12(a4)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
80003e80: b3 95 b6 00  	sll	a1, a3, a1
80003e84: 93 c5 f5 ff  	not	a1, a1
80003e88: 93 f5 e5 ff  	andi	a1, a1, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80003e8c: 23 20 b7 00  	sw	a1, 0(a4)
;     if (core_idx < eu_p->e.nthreads) {
80003e90: 83 25 c6 01  	lw	a1, 28(a2)
80003e94: 13 34 15 00  	seqz	s0, a0
;     if (core_idx < eu_p->e.nthreads) {
80003e98: 63 8a 05 00  	beqz	a1, 0x80003eac <.LBB1_22+0x90>
;         eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
80003e9c: 83 26 06 01  	lw	a3, 16(a2)
80003ea0: 03 25 46 01  	lw	a0, 20(a2)
80003ea4: 83 25 86 01  	lw	a1, 24(a2)
80003ea8: e7 80 06 00  	jalr	a3
80003eac: 37 05 00 00  	lui	a0, 0
80003eb0: 33 05 45 00  	add	a0, a0, tp
80003eb4: 03 25 05 01  	lw	a0, 16(a0)
;     if (scratch > 1) {
80003eb8: 63 18 04 00  	bnez	s0, 0x80003ec8 <.LBB1_22+0xac>
;     return __atomic_load_n(&eu_p->workers_in_loop, __ATOMIC_RELAXED);
80003ebc: 83 25 05 00  	lw	a1, 0(a0)
;         while (__atomic_load_n(&eu_p->e.fini_count, __ATOMIC_RELAXED) !=
80003ec0: 03 26 05 02  	lw	a2, 32(a0)
80003ec4: e3 1e b6 fe  	bne	a2, a1, 0x80003ec0 <.LBB1_22+0xa4>
;     eu_p->e.nthreads = 0;
80003ec8: 23 2e 05 00  	sw	zero, 28(a0)
; }
80003ecc: 03 24 01 01  	lw	s0, 16(sp)
80003ed0: 83 20 41 01  	lw	ra, 20(sp)
80003ed4: 13 01 01 03  	addi	sp, sp, 48
80003ed8: 67 80 00 00  	ret

80003edc <__microtask_wrapper.llvm.1564610972365895457>:
; static void __microtask_wrapper(void *arg, uint32_t argc) {
80003edc: 13 01 01 fd  	addi	sp, sp, -48
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80003ee0: 23 26 11 02  	sw	ra, 44(sp)
80003ee4: 23 24 81 02  	sw	s0, 40(sp)
80003ee8: 23 22 91 02  	sw	s1, 36(sp)
80003eec: 23 20 21 03  	sw	s2, 32(sp)
80003ef0: 37 06 00 00  	lui	a2, 0
80003ef4: 33 06 46 00  	add	a2, a2, tp
80003ef8: 03 26 46 00  	lw	a2, 4(a2)
80003efc: 13 04 05 00  	mv	s0, a0
;     kmp_int32 id = omp_get_thread_num();
80003f00: 23 2e c1 00  	sw	a2, 28(sp)
;     kmpc_micro fn = (kmpc_micro)((_kmp_ptr32 *)arg)[0];
80003f04: 03 29 05 00  	lw	s2, 0(a0)
;     kmp_int32 gtid = id;
80003f08: 23 2c c1 00  	sw	a2, 24(sp)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80003f0c: 73 26 40 f1  	csrr	a2, mhartid
80003f10: 93 06 10 00  	addi	a3, zero, 1
;     uint32_t cycle = read_csr(mcycle);
80003f14: 73 25 00 b0  	csrr	a0, mcycle
;     OMP_PROF(if (snrt_hartid() == 1) omp_prof->fork_oh =
80003f18: 63 1e d6 00  	bne	a2, a3, 0x80003f34 <.LBB2_20+0x18>

80003f1c <.LBB2_20>:
80003f1c: 17 16 01 00  	auipc	a2, 17
80003f20: 13 06 86 04  	addi	a2, a2, 72
80003f24: 03 26 06 00  	lw	a2, 0(a2)
80003f28: 83 26 06 00  	lw	a3, 0(a2)
80003f2c: 33 05 d5 40  	sub	a0, a0, a3
80003f30: 23 20 a6 00  	sw	a0, 0(a2)
80003f34: 13 05 c0 00  	addi	a0, zero, 12
;     switch (argc) {
80003f38: 63 66 b5 02  	bltu	a0, a1, 0x80003f64 <.LBB2_4+0x10>
80003f3c: 13 95 25 00  	slli	a0, a1, 2

80003f40 <.LBB2_21>:
80003f40: 97 15 00 00  	auipc	a1, 1
80003f44: 93 85 85 e7  	addi	a1, a1, -392
80003f48: 33 05 b5 00  	add	a0, a0, a1
80003f4c: 03 25 05 00  	lw	a0, 0(a0)
80003f50: 67 00 05 00  	jr	a0

80003f54 <.LBB2_4>:
;             fn(&gtid, id_addr);
80003f54: 13 05 81 01  	addi	a0, sp, 24
80003f58: 93 05 c1 01  	addi	a1, sp, 28
80003f5c: e7 00 09 00  	jalr	s2
80003f60: 6f 00 80 23  	j	0x80004198 <.LBB2_17+0x54>
;     while (1)
80003f64: 6f 00 00 00  	j	0x80003f64 <.LBB2_4+0x10>

80003f68 <.LBB2_6>:
;             fn(&gtid, id_addr, p_argv[0]);
80003f68: 03 26 44 00  	lw	a2, 4(s0)
80003f6c: 13 05 81 01  	addi	a0, sp, 24
80003f70: 93 05 c1 01  	addi	a1, sp, 28
80003f74: e7 00 09 00  	jalr	s2
80003f78: 6f 00 00 22  	j	0x80004198 <.LBB2_17+0x54>

80003f7c <.LBB2_7>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1]);
80003f7c: 03 26 44 00  	lw	a2, 4(s0)
80003f80: 83 26 84 00  	lw	a3, 8(s0)
80003f84: 13 05 81 01  	addi	a0, sp, 24
80003f88: 93 05 c1 01  	addi	a1, sp, 28
80003f8c: e7 00 09 00  	jalr	s2
80003f90: 6f 00 80 20  	j	0x80004198 <.LBB2_17+0x54>

80003f94 <.LBB2_8>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2]);
80003f94: 03 26 44 00  	lw	a2, 4(s0)
80003f98: 83 26 84 00  	lw	a3, 8(s0)
80003f9c: 03 27 c4 00  	lw	a4, 12(s0)
80003fa0: 13 05 81 01  	addi	a0, sp, 24
80003fa4: 93 05 c1 01  	addi	a1, sp, 28
80003fa8: e7 00 09 00  	jalr	s2
80003fac: 6f 00 c0 1e  	j	0x80004198 <.LBB2_17+0x54>

80003fb0 <.LBB2_9>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3]);
80003fb0: 03 26 44 00  	lw	a2, 4(s0)
80003fb4: 83 26 84 00  	lw	a3, 8(s0)
80003fb8: 03 27 c4 00  	lw	a4, 12(s0)
80003fbc: 83 27 04 01  	lw	a5, 16(s0)
80003fc0: 13 05 81 01  	addi	a0, sp, 24
80003fc4: 93 05 c1 01  	addi	a1, sp, 28
80003fc8: e7 00 09 00  	jalr	s2
80003fcc: 6f 00 c0 1c  	j	0x80004198 <.LBB2_17+0x54>

80003fd0 <.LBB2_10>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80003fd0: 03 26 44 00  	lw	a2, 4(s0)
80003fd4: 83 26 84 00  	lw	a3, 8(s0)
80003fd8: 03 27 c4 00  	lw	a4, 12(s0)
80003fdc: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4]);
80003fe0: 03 28 44 01  	lw	a6, 20(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80003fe4: 13 05 81 01  	addi	a0, sp, 24
80003fe8: 93 05 c1 01  	addi	a1, sp, 28
80003fec: e7 00 09 00  	jalr	s2
80003ff0: 6f 00 80 1a  	j	0x80004198 <.LBB2_17+0x54>

80003ff4 <.LBB2_11>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80003ff4: 03 26 44 00  	lw	a2, 4(s0)
80003ff8: 83 26 84 00  	lw	a3, 8(s0)
80003ffc: 03 27 c4 00  	lw	a4, 12(s0)
80004000: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5]);
80004004: 03 28 44 01  	lw	a6, 20(s0)
80004008: 83 28 84 01  	lw	a7, 24(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
8000400c: 13 05 81 01  	addi	a0, sp, 24
80004010: 93 05 c1 01  	addi	a1, sp, 28
80004014: 6f 00 00 18  	j	0x80004194 <.LBB2_17+0x50>

80004018 <.LBB2_12>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004018: 03 26 44 00  	lw	a2, 4(s0)
8000401c: 83 26 84 00  	lw	a3, 8(s0)
80004020: 03 27 c4 00  	lw	a4, 12(s0)
80004024: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5], p_argv[6]);
80004028: 03 28 44 01  	lw	a6, 20(s0)
8000402c: 83 28 84 01  	lw	a7, 24(s0)
80004030: 03 24 c4 01  	lw	s0, 28(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004034: 13 05 81 01  	addi	a0, sp, 24
80004038: 93 05 c1 01  	addi	a1, sp, 28
8000403c: 23 20 81 00  	sw	s0, 0(sp)
80004040: 6f 00 40 15  	j	0x80004194 <.LBB2_17+0x50>

80004044 <.LBB2_13>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004044: 03 26 44 00  	lw	a2, 4(s0)
80004048: 83 26 84 00  	lw	a3, 8(s0)
8000404c: 03 27 c4 00  	lw	a4, 12(s0)
80004050: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5], p_argv[6], p_argv[7]);
80004054: 03 28 44 01  	lw	a6, 20(s0)
80004058: 83 28 84 01  	lw	a7, 24(s0)
8000405c: 83 22 c4 01  	lw	t0, 28(s0)
80004060: 03 25 04 02  	lw	a0, 32(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004064: 23 22 a1 00  	sw	a0, 4(sp)
80004068: 13 05 81 01  	addi	a0, sp, 24
8000406c: 93 05 c1 01  	addi	a1, sp, 28
80004070: 23 20 51 00  	sw	t0, 0(sp)
80004074: e7 00 09 00  	jalr	s2

80004078 <.LBB2_14>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004078: 03 26 44 00  	lw	a2, 4(s0)
8000407c: 83 26 84 00  	lw	a3, 8(s0)
80004080: 03 27 c4 00  	lw	a4, 12(s0)
80004084: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5], p_argv[6], p_argv[7], p_argv[8]);
80004088: 03 28 44 01  	lw	a6, 20(s0)
8000408c: 83 28 84 01  	lw	a7, 24(s0)
80004090: 83 22 c4 01  	lw	t0, 28(s0)
80004094: 03 25 04 02  	lw	a0, 32(s0)
80004098: 83 25 44 02  	lw	a1, 36(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
8000409c: 23 24 b1 00  	sw	a1, 8(sp)
800040a0: 23 22 a1 00  	sw	a0, 4(sp)
800040a4: 13 05 81 01  	addi	a0, sp, 24
800040a8: 93 05 c1 01  	addi	a1, sp, 28
800040ac: 23 20 51 00  	sw	t0, 0(sp)
800040b0: e7 00 09 00  	jalr	s2

800040b4 <.LBB2_15>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
800040b4: 03 26 44 00  	lw	a2, 4(s0)
800040b8: 83 26 84 00  	lw	a3, 8(s0)
800040bc: 03 27 c4 00  	lw	a4, 12(s0)
800040c0: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5], p_argv[6], p_argv[7], p_argv[8],
800040c4: 03 28 44 01  	lw	a6, 20(s0)
800040c8: 83 28 84 01  	lw	a7, 24(s0)
800040cc: 83 22 c4 01  	lw	t0, 28(s0)
800040d0: 03 25 04 02  	lw	a0, 32(s0)
800040d4: 83 25 44 02  	lw	a1, 36(s0)
;                p_argv[9]);
800040d8: 83 24 84 02  	lw	s1, 40(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
800040dc: 23 26 91 00  	sw	s1, 12(sp)
800040e0: 23 24 b1 00  	sw	a1, 8(sp)
800040e4: 23 22 a1 00  	sw	a0, 4(sp)
800040e8: 13 05 81 01  	addi	a0, sp, 24
800040ec: 93 05 c1 01  	addi	a1, sp, 28
800040f0: 23 20 51 00  	sw	t0, 0(sp)
800040f4: e7 00 09 00  	jalr	s2

800040f8 <.LBB2_16>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
800040f8: 03 26 44 00  	lw	a2, 4(s0)
800040fc: 83 26 84 00  	lw	a3, 8(s0)
80004100: 03 27 c4 00  	lw	a4, 12(s0)
80004104: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5], p_argv[6], p_argv[7], p_argv[8], p_argv[9],
80004108: 03 28 44 01  	lw	a6, 20(s0)
8000410c: 83 28 84 01  	lw	a7, 24(s0)
80004110: 83 22 c4 01  	lw	t0, 28(s0)
80004114: 03 23 04 02  	lw	t1, 32(s0)
80004118: 83 25 44 02  	lw	a1, 36(s0)
8000411c: 83 24 84 02  	lw	s1, 40(s0)
;                p_argv[10]);
80004120: 03 25 c4 02  	lw	a0, 44(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004124: 23 28 a1 00  	sw	a0, 16(sp)
80004128: 23 26 91 00  	sw	s1, 12(sp)
8000412c: 23 24 b1 00  	sw	a1, 8(sp)
80004130: 23 22 61 00  	sw	t1, 4(sp)
80004134: 13 05 81 01  	addi	a0, sp, 24
80004138: 93 05 c1 01  	addi	a1, sp, 28
8000413c: 23 20 51 00  	sw	t0, 0(sp)
80004140: e7 00 09 00  	jalr	s2

80004144 <.LBB2_17>:
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004144: 03 26 44 00  	lw	a2, 4(s0)
80004148: 83 26 84 00  	lw	a3, 8(s0)
8000414c: 03 27 c4 00  	lw	a4, 12(s0)
80004150: 83 27 04 01  	lw	a5, 16(s0)
;                p_argv[4], p_argv[5], p_argv[6], p_argv[7], p_argv[8], p_argv[9],
80004154: 03 28 44 01  	lw	a6, 20(s0)
80004158: 83 28 84 01  	lw	a7, 24(s0)
8000415c: 83 22 c4 01  	lw	t0, 28(s0)
80004160: 03 23 04 02  	lw	t1, 32(s0)
80004164: 83 25 44 02  	lw	a1, 36(s0)
80004168: 83 24 84 02  	lw	s1, 40(s0)
;                p_argv[10], p_argv[11]);
8000416c: 03 25 c4 02  	lw	a0, 44(s0)
80004170: 03 24 04 03  	lw	s0, 48(s0)
;             fn(&gtid, id_addr, p_argv[0], p_argv[1], p_argv[2], p_argv[3],
80004174: 23 2a 81 00  	sw	s0, 20(sp)
80004178: 23 28 a1 00  	sw	a0, 16(sp)
8000417c: 23 26 91 00  	sw	s1, 12(sp)
80004180: 23 24 b1 00  	sw	a1, 8(sp)
80004184: 23 22 61 00  	sw	t1, 4(sp)
80004188: 13 05 81 01  	addi	a0, sp, 24
8000418c: 93 05 c1 01  	addi	a1, sp, 28
80004190: 23 20 51 00  	sw	t0, 0(sp)
80004194: e7 00 09 00  	jalr	s2
;     cycle = read_csr(mcycle);
80004198: 73 25 00 b0  	csrr	a0, mcycle
; }
8000419c: 03 29 01 02  	lw	s2, 32(sp)
800041a0: 83 24 41 02  	lw	s1, 36(sp)
800041a4: 03 24 81 02  	lw	s0, 40(sp)
800041a8: 83 20 c1 02  	lw	ra, 44(sp)
800041ac: 13 01 01 03  	addi	sp, sp, 48
800041b0: 67 80 00 00  	ret

800041b4 <omp_get_thread_num.llvm.1564610972365895457>:
;     return snrt_cluster_core_idx();
800041b4: 17 f3 ff ff  	auipc	t1, 1048575
800041b8: 67 00 43 71  	jr	1812(t1)

800041bc <eu_exit>:
; void eu_exit(uint32_t core_idx) {
800041bc: 13 01 01 ff  	addi	sp, sp, -16
;     if (!eu_p->e.nthreads) eu_run_empty(core_idx);
800041c0: 23 26 11 00  	sw	ra, 12(sp)
800041c4: 23 24 81 00  	sw	s0, 8(sp)
800041c8: b7 05 00 00  	lui	a1, 0
800041cc: b3 85 45 00  	add	a1, a1, tp
800041d0: 83 a5 05 01  	lw	a1, 16(a1)
800041d4: 03 a6 c5 01  	lw	a2, 28(a1)
800041d8: 63 1e 06 08  	bnez	a2, 0x80004274 <eu_exit+0xb8>
;     scratch = eu_p->e.nthreads;
800041dc: 83 a6 c5 01  	lw	a3, 28(a1)
;     if (!scratch) return;
800041e0: 63 8a 06 08  	beqz	a3, 0x80004274 <eu_exit+0xb8>
;     eu_p->e.fini_count = 0;
800041e4: 23 a0 05 02  	sw	zero, 32(a1)
800041e8: 13 07 10 00  	addi	a4, zero, 1
;     if (scratch > 1) wake_workers();
800041ec: 13 86 f6 ff  	addi	a2, a3, -1
800041f0: 63 84 e6 04  	beq	a3, a4, 0x80004238 <eu_exit+0x7c>
;     uint32_t scratch = eu_p->workers_in_loop;
800041f4: 83 a6 05 00  	lw	a3, 0(a1)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
800041f8: 03 a7 c5 00  	lw	a4, 12(a1)
800041fc: e3 1e d7 fe  	bne	a4, a3, 0x800041f8 <eu_exit+0x3c>
;     return _snrt_team_current->root->cluster_core_num;
80004200: b7 06 00 00  	lui	a3, 0
80004204: b3 86 46 00  	add	a3, a3, tp
80004208: 83 a6 06 00  	lw	a3, 0(a3)
8000420c: 83 a6 06 00  	lw	a3, 0(a3)
80004210: 83 a6 c6 01  	lw	a3, 28(a3)
;     return snrt_cluster_core_num() - 1;
80004214: 93 86 f6 ff  	addi	a3, a3, -1
80004218: 13 07 f0 ff  	addi	a4, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000421c: b7 07 00 00  	lui	a5, 0
80004220: b3 87 47 00  	add	a5, a5, tp
80004224: 83 a7 c7 00  	lw	a5, 12(a5)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
80004228: b3 16 d7 00  	sll	a3, a4, a3
8000422c: 93 c6 f6 ff  	not	a3, a3
80004230: 93 f6 e6 ff  	andi	a3, a3, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80004234: 23 a0 d7 00  	sw	a3, 0(a5)
;     if (core_idx < eu_p->e.nthreads) {
80004238: 83 a6 c5 01  	lw	a3, 28(a1)
8000423c: 13 34 16 00  	seqz	s0, a2
;     if (core_idx < eu_p->e.nthreads) {
80004240: 63 7a d5 00  	bgeu	a0, a3, 0x80004254 <eu_exit+0x98>
;         eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
80004244: 03 a6 05 01  	lw	a2, 16(a1)
80004248: 03 a5 45 01  	lw	a0, 20(a1)
8000424c: 83 a5 85 01  	lw	a1, 24(a1)
80004250: e7 00 06 00  	jalr	a2
80004254: 37 05 00 00  	lui	a0, 0
80004258: 33 05 45 00  	add	a0, a0, tp
8000425c: 83 25 05 01  	lw	a1, 16(a0)
;     if (scratch > 1) {
80004260: 63 18 04 00  	bnez	s0, 0x80004270 <eu_exit+0xb4>
;     return __atomic_load_n(&eu_p->workers_in_loop, __ATOMIC_RELAXED);
80004264: 03 a5 05 00  	lw	a0, 0(a1)
;         while (__atomic_load_n(&eu_p->e.fini_count, __ATOMIC_RELAXED) !=
80004268: 03 a6 05 02  	lw	a2, 32(a1)
8000426c: e3 1e a6 fe  	bne	a2, a0, 0x80004268 <eu_exit+0xac>
;     eu_p->e.nthreads = 0;
80004270: 23 ae 05 00  	sw	zero, 28(a1)
;     uint32_t scratch = eu_p->workers_in_loop;
80004274: 03 a5 05 00  	lw	a0, 0(a1)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
80004278: 03 a6 c5 00  	lw	a2, 12(a1)
8000427c: e3 1e a6 fe  	bne	a2, a0, 0x80004278 <eu_exit+0xbc>
80004280: 13 05 10 00  	addi	a0, zero, 1
;     eu_p->exit_flag = 1;
80004284: 23 a2 a5 00  	sw	a0, 4(a1)
;     uint32_t scratch = eu_p->workers_in_loop;
80004288: 03 a5 05 00  	lw	a0, 0(a1)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
8000428c: 03 a6 c5 00  	lw	a2, 12(a1)
80004290: e3 1e a6 fe  	bne	a2, a0, 0x8000428c <eu_exit+0xd0>
;     return _snrt_team_current->root->cluster_core_num;
80004294: 37 05 00 00  	lui	a0, 0
80004298: 33 05 45 00  	add	a0, a0, tp
8000429c: 03 25 05 00  	lw	a0, 0(a0)
800042a0: 03 25 05 00  	lw	a0, 0(a0)
800042a4: 03 25 c5 01  	lw	a0, 28(a0)
;     return snrt_cluster_core_num() - 1;
800042a8: 13 05 f5 ff  	addi	a0, a0, -1
800042ac: 93 05 f0 ff  	addi	a1, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800042b0: 37 06 00 00  	lui	a2, 0
800042b4: 33 06 46 00  	add	a2, a2, tp
800042b8: 03 26 c6 00  	lw	a2, 12(a2)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
800042bc: 33 95 a5 00  	sll	a0, a1, a0
800042c0: 13 45 f5 ff  	not	a0, a0
800042c4: 13 75 e5 ff  	andi	a0, a0, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800042c8: 23 20 a6 00  	sw	a0, 0(a2)
; }
800042cc: 03 24 81 00  	lw	s0, 8(sp)
800042d0: 83 20 c1 00  	lw	ra, 12(sp)
800042d4: 13 01 01 01  	addi	sp, sp, 16
800042d8: 67 80 00 00  	ret

800042dc <dm_main>:
; void dm_main(void) {
800042dc: 13 01 01 ff  	addi	sp, sp, -16
800042e0: 23 26 81 00  	sw	s0, 12(sp)
800042e4: 23 24 91 00  	sw	s1, 8(sp)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800042e8: 37 05 00 00  	lui	a0, 0
800042ec: 33 05 45 00  	add	a0, a0, tp
800042f0: 03 25 45 00  	lw	a0, 4(a0)
800042f4: 93 02 10 00  	addi	t0, zero, 1
800042f8: 33 98 a2 00  	sll	a6, t0, a0
;         if (dm_p->queue_fill) {
800042fc: 37 05 00 00  	lui	a0, 0
80004300: b3 0e 45 00  	add	t4, a0, tp
80004304: 03 a5 4e 01  	lw	a0, 20(t4)
80004308: b7 05 00 00  	lui	a1, 0
8000430c: b3 88 45 00  	add	a7, a1, tp
80004310: 13 0e f0 ff  	addi	t3, zero, -1
80004314: 93 07 30 00  	addi	a5, zero, 3
80004318: 13 03 20 00  	addi	t1, zero, 2
8000431c: 93 03 80 02  	addi	t2, zero, 40
80004320: 6f 00 c0 01  	j	0x8000433c <dm_main+0x60>
80004324: 93 05 10 00  	addi	a1, zero, 1
80004328: 23 2c b5 0a  	sw	a1, 184(a0)
8000432c: 23 28 05 0a  	sw	zero, 176(a0)
;         if (!dm_p->queue_fill && !dm_p->stat_q) {
80004330: 03 26 85 0a  	lw	a2, 168(a0)
80004334: 63 06 06 06  	beqz	a2, 0x800043a0 <dm_main+0xc4>
;     while (!do_exit) {
80004338: 63 8c 05 0e  	beqz	a1, 0x80004430 <dm_main+0x154>
;         if (dm_p->queue_fill) {
8000433c: 83 25 85 0a  	lw	a1, 168(a0)
80004340: 63 8e 05 0a  	beqz	a1, 0x800043fc <dm_main+0x120>
;             while (__builtin_sdma_stat(DM_STATUS_WOULD_BLOCK))
80004344: 2b 05 f0 0a  	dmstat	a0, a5
80004348: e3 1e 05 fe  	bnez	a0, 0x80004344 <dm_main+0x68>
;             t = &dm_p->queue[dm_p->queue_back];
8000434c: 03 a5 4e 01  	lw	a0, 20(t4)
80004350: 83 25 05 0a  	lw	a1, 160(a0)
;             if (t->twod) {
80004354: b3 85 75 02  	mul	a1, a1, t2
80004358: 33 05 b5 00  	add	a0, a0, a1
8000435c: 83 25 45 02  	lw	a1, 36(a0)
80004360: 83 2f 45 00  	lw	t6, 4(a0)
80004364: 03 27 05 00  	lw	a4, 0(a0)
80004368: 83 26 c5 00  	lw	a3, 12(a0)
8000436c: 03 26 85 00  	lw	a2, 8(a0)
80004370: 03 2f 05 01  	lw	t5, 16(a0)
;             if (t->twod) {
80004374: 63 8c 05 04  	beqz	a1, 0x800043cc <dm_main+0xf0>
;                 __builtin_sdma_start_twod(t->src, t->dst, t->size, t->sstrd,
80004378: 83 25 45 01  	lw	a1, 20(a0)
;                                           t->dstrd, t->nreps, t->cfg);
8000437c: 03 24 85 01  	lw	s0, 24(a0)
80004380: 83 24 c5 01  	lw	s1, 28(a0)
80004384: 03 25 05 02  	lw	a0, 32(a0)
;                 __builtin_sdma_start_twod(t->src, t->dst, t->size, t->sstrd,
80004388: 13 65 25 00  	ori	a0, a0, 2
8000438c: 2b 00 f7 01  	dmsrc	a4, t6
80004390: 2b 00 d6 02  	dmdst	a2, a3
80004394: 2b 80 85 0c  	dmstr	a1, s0
80004398: 2b 80 04 0e  	dmrep	s1
8000439c: 6f 00 00 04  	j	0x800043dc <dm_main+0x100>
;         if (!dm_p->queue_fill && !dm_p->stat_q) {
800043a0: 03 26 05 0b  	lw	a2, 176(a0)
800043a4: e3 1a 06 f8  	bnez	a2, 0x80004338 <dm_main+0x5c>
;     __atomic_add_fetch(&dm_p->dm_wfi, 1, __ATOMIC_RELAXED);
800043a8: 13 05 c5 0b  	addi	a0, a0, 188
800043ac: 2f 25 55 00  	amoadd.w	a0, t0, (a0)
; static inline void snrt_wfi() { asm volatile("wfi"); }
800043b0: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800043b4: 03 a5 c8 00  	lw	a0, 12(a7)
800043b8: 23 24 05 01  	sw	a6, 8(a0)
;     __atomic_add_fetch(&dm_p->dm_wfi, -1, __ATOMIC_RELAXED);
800043bc: 03 a5 4e 01  	lw	a0, 20(t4)
800043c0: 13 06 c5 0b  	addi	a2, a0, 188
800043c4: 2f 26 c6 01  	amoadd.w	a2, t3, (a2)
800043c8: 6f f0 1f f7  	j	0x80004338 <dm_main+0x5c>
;                 __builtin_sdma_start_oned(t->src, t->dst, t->size, t->cfg);
800043cc: 03 25 05 02  	lw	a0, 32(a0)
800043d0: 13 75 d5 ff  	andi	a0, a0, -3
800043d4: 2b 00 f7 01  	dmsrc	a4, t6
800043d8: 2b 00 d6 02  	dmdst	a2, a3
800043dc: 2b 05 af 06  	dmcpy	a0, t5, a0
;             dm_p->queue_back = (dm_p->queue_back + 1) % DM_TASK_QUEUE_SIZE;
800043e0: 03 a5 4e 01  	lw	a0, 20(t4)
800043e4: 83 25 05 0a  	lw	a1, 160(a0)
800043e8: 93 85 15 00  	addi	a1, a1, 1
800043ec: 93 f5 35 00  	andi	a1, a1, 3
800043f0: 23 20 b5 0a  	sw	a1, 160(a0)
;             __atomic_add_fetch(&dm_p->queue_fill, -1, __ATOMIC_RELAXED);
800043f4: 93 05 85 0a  	addi	a1, a0, 168
800043f8: af a5 c5 01  	amoadd.w	a1, t3, (a1)
;         if (dm_p->stat_q) {
800043fc: 03 26 05 0b  	lw	a2, 176(a0)
80004400: 93 05 10 00  	addi	a1, zero, 1
80004404: e3 06 06 f2  	beqz	a2, 0x80004330 <dm_main+0x54>
;             switch (dm_p->stat_q) {
80004408: 03 26 05 0b  	lw	a2, 176(a0)
8000440c: e3 0c f6 f0  	beq	a2, a5, 0x80004324 <dm_main+0x48>
80004410: 63 0c 66 00  	beq	a2, t1, 0x80004428 <dm_main+0x14c>
80004414: e3 1e 56 f0  	bne	a2, t0, 0x80004330 <dm_main+0x54>
;                     if (__builtin_sdma_stat(DM_STATUS_BUSY) == 0) {
80004418: 2b 06 60 0a  	dmstat	a2, t1
8000441c: 03 a5 4e 01  	lw	a0, 20(t4)
80004420: e3 18 06 f0  	bnez	a2, 0x80004330 <dm_main+0x54>
80004424: 6f f0 1f f0  	j	0x80004324 <dm_main+0x48>
80004428: 93 05 00 00  	mv	a1, zero
8000442c: 6f f0 5f f0  	j	0x80004330 <dm_main+0x54>
80004430: 37 05 08 00  	lui	a0, 128
;     clear_csr(mie, 1 << irq);
80004434: 73 35 45 30  	csrrc	a0, mie, a0
; }
80004438: 83 24 81 00  	lw	s1, 8(sp)
8000443c: 03 24 c1 00  	lw	s0, 12(sp)
80004440: 13 01 01 01  	addi	sp, sp, 16
80004444: 67 80 00 00  	ret

Disassembly of section .init:

80004450 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80004450: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80004454: 93 81 01 20  	addi	gp, gp, 512

80004458 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80004458: 97 00 00 00  	auipc	ra, 0
8000445c: e7 80 40 3c  	jalr	964(ra)

80004460 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80004460: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80004464: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80004468: 97 00 00 00  	auipc	ra, 0
8000446c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80004470: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80004474: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80004478: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000447c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80004480: 63 92 02 02  	bnez	t0, 0x800044a4 <snrt.crt0.init_registers>

80004484 <.Lpcrel_hi0>:
;     la        t0, _edata
80004484: 97 12 01 00  	auipc	t0, 17
80004488: 93 82 02 ab  	addi	t0, t0, -1360

8000448c <.Lpcrel_hi1>:
;     la        t1, _end
8000448c: 17 13 01 00  	auipc	t1, 17
80004490: 13 03 c3 ae  	addi	t1, t1, -1300
;     bge       t0, t1, 2f
80004494: 63 d8 62 00  	bge	t0, t1, 0x800044a4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80004498: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000449c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800044a0: e3 cc 62 fe  	blt	t0, t1, 0x80004498 <.Lpcrel_hi1+0xc>

800044a4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800044a4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800044a8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800044ac: 63 82 02 08  	beqz	t0, 0x80004530 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800044b0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800044b4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800044b8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800044bc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800044c0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800044c4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800044c8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800044cc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800044d0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800044d4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800044d8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800044dc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800044e0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800044e4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800044e8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800044ec: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800044f0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800044f4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800044f8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800044fc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80004500: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80004504: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80004508: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000450c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80004510: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80004514: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80004518: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000451c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80004520: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80004524: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80004528: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000452c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80004530 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80004530: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80004534: 23 a0 06 00  	sw	zero, 0(a3)

80004538 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80004538: 97 02 00 00  	auipc	t0, 0
8000453c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80004540: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80004544: 93 87 06 00  	mv	a5, a3

80004548 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80004548: 97 03 00 00  	auipc	t2, 0
8000454c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80004550: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80004554: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80004558: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000455c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80004560: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80004564: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80004568: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000456c: b3 86 66 40  	sub	a3, a3, t1

80004570 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80004570: 97 12 00 00  	auipc	t0, 1
80004574: 93 82 82 8d  	addi	t0, t0, -1832

80004578 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80004578: 17 13 00 00  	auipc	t1, 1
8000457c: 13 03 03 8d  	addi	t1, t1, -1840

80004580 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80004580: 97 13 00 00  	auipc	t2, 1
80004584: 93 83 83 8c  	addi	t2, t2, -1848

80004588 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80004588: 17 1e 00 00  	auipc	t3, 1
8000458c: 13 0e 8e 8d  	addi	t3, t3, -1832
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80004590: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80004594: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80004598: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000459c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800045a0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800045a4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800045a8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800045ac: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800045b0: 63 dc 62 00  	bge	t0, t1, 0x800045c8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800045b4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800045b8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800045bc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800045c0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800045c4: e3 c8 62 fe  	blt	t0, t1, 0x800045b4 <.Lpcrel_hi7+0x2c>

800045c8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800045c8: 97 12 00 00  	auipc	t0, 1
800045cc: 93 82 02 88  	addi	t0, t0, -1920

800045d0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800045d0: 17 13 00 00  	auipc	t1, 1
800045d4: 13 03 03 89  	addi	t1, t1, -1904
;     bge       t0, t1, 2f
800045d8: 63 da 62 00  	bge	t0, t1, 0x800045ec <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800045dc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800045e0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800045e4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800045e8: e3 ca 72 fe  	blt	t0, t2, 0x800045dc <.Lpcrel_hi9+0xc>

800045ec <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800045ec: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800045f0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800045f4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800045f8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800045fc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80004600: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80004604: 97 d0 ff ff  	auipc	ra, 1048573
80004608: e7 80 80 4e  	jalr	1256(ra)
;     lw        a0, 0(sp)
8000460c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80004610: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80004614: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80004618: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000461c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80004620: 13 01 41 01  	addi	sp, sp, 20

80004624 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80004624: 97 02 00 00  	auipc	t0, 0
80004628: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000462c: 73 90 52 30  	csrw	mtvec, t0

80004630 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80004630: 97 00 00 00  	auipc	ra, 0
80004634: e7 80 00 22  	jalr	544(ra)

80004638 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80004638: 97 d0 ff ff  	auipc	ra, 1048573
8000463c: e7 80 80 33  	jalr	824(ra)
;     mv        s0, a0 # store return value in s0
80004640: 13 04 05 00  	mv	s0, a0

80004644 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80004644: 97 00 00 00  	auipc	ra, 0
80004648: e7 80 c0 20  	jalr	524(ra)

8000464c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000464c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80004650: 97 00 00 00  	auipc	ra, 0
80004654: e7 80 c0 22  	jalr	556(ra)
;     wfi
80004658: 73 00 50 10  	wfi	
;     j       1b
8000465c: 6f f0 df ff  	j	0x80004658 <snrt.crt0.end+0xc>

80004660 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80004660: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80004664: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80004668: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000466c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80004670: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80004674: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80004678: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000467c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80004680: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80004684: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80004688: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000468c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80004690: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80004694: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80004698: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000469c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800046a0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800046a4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800046a8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800046ac: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800046b0: 63 84 02 08  	beqz	t0, 0x80004738 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800046b4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800046b8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800046bc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800046c0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800046c4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800046c8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800046cc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800046d0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800046d4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800046d8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800046dc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800046e0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800046e4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800046e8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800046ec: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800046f0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800046f4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800046f8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800046fc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80004700: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80004704: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80004708: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000470c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80004710: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80004714: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80004718: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000471c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80004720: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80004724: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80004728: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000472c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80004730: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80004734: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80004738: 97 f0 ff ff  	auipc	ra, 1048575
8000473c: e7 80 80 1b  	jalr	440(ra)
;     csrr    t0, misa
80004740: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80004744: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80004748: 63 84 02 08  	beqz	t0, 0x800047d0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000474c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80004750: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80004754: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80004758: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000475c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80004760: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80004764: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80004768: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000476c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80004770: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80004774: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80004778: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000477c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80004780: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80004784: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80004788: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000478c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80004790: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80004794: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80004798: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000479c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800047a0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800047a4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800047a8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800047ac: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800047b0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800047b4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800047b8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800047bc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800047c0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800047c4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800047c8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800047cc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800047d0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800047d4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800047d8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800047dc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800047e0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800047e4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800047e8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800047ec: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800047f0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800047f4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800047f8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800047fc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80004800: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80004804: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80004808: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000480c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80004810: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80004814: 13 01 01 05  	addi	sp, sp, 80
;     mret
80004818: 73 00 20 30  	mret	

8000481c <_snrt_init_core_info>:
;     mv        a4, a1
8000481c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80004820: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80004824: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80004828: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000482c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80004830: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80004834: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80004838: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000483c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80004840: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80004844: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80004848: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000484c: 67 80 00 00  	ret

80004850 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80004850: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80004854: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80004858: 97 f0 ff ff  	auipc	ra, 1048575
8000485c: e7 80 00 08  	jalr	128(ra)
;     lw        a0, 0(a0)
80004860: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80004864: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80004868: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000486c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80004870: 67 80 00 00  	ret

80004874 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80004874: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80004878: 67 80 00 00  	ret

8000487c <_snrt_exit>:
;     addi      sp, sp, -8
8000487c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80004880: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80004884: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80004888: 97 f0 ff ff  	auipc	ra, 1048575
8000488c: e7 80 00 02  	jalr	32(ra)
;     lw        t0, 0(sp)
80004890: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80004894: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80004898: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000489c: 63 1c 05 00  	bnez	a0, 0x800048b4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800048a0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800048a4: 93 e2 12 00  	ori	t0, t0, 1

800048a8 <.Lpcrel_hi11>:
;     la        t1, tohost
800048a8: 17 03 00 00  	auipc	t1, 0
800048ac: 13 03 83 55  	addi	t1, t1, 1368
;     sw        t0, 0(t1)
800048b0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800048b4: 67 80 00 00  	ret
