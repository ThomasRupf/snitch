
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-mini-3mm-ssrfriendly:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000055fc 80000000 TEXT
  2 .init             00000468 80005600 TEXT
  3 .rodata           00000238 80005a68 DATA
  4 .htif             00000048 80005cc0 DATA
  5 .tdata            00000000 80005d08 DATA
  6 .tbss             00000010 80005d08 BSS
  7 .tbssend          00000000 80005d18 DATA
  8 .sdata            000000e8 80005d18 DATA
  9 .data             00000000 80005e00 DATA
 10 .sbss             00000004 80005e00 BSS
 11 .bss              00000000 80005e04 BSS
 12 .dram             00000000 80005e04 DATA
 13 .debug_info       0000382a 00000000 
 14 .debug_abbrev     00000bff 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000397c 00000000 
 17 .debug_loc        00003f99 00000000 
 18 .debug_ranges     00000410 00000000 
 19 .debug_str        00000b0f 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c0 00000000 
 23 .symtab           000033d0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000960 00000000 


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
800006a0: 6f 30 40 04  	j	0x800036e4 <.LBB0_190+0x10>
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
800006f4: 93 0c 00 00  	mv	s9, zero
800006f8: 6f 00 00 01  	j	0x80000708 <main+0xd4>
;     void *ret = (void *)alloc->next;
800006fc: 93 8c 07 00  	mv	s9, a5
;     alloc->next += size;
80000700: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000704: 93 87 06 00  	mv	a5, a3
80000708: b3 06 f6 00  	add	a3, a2, a5
8000070c: 93 86 06 24  	addi	a3, a3, 576
80000710: 63 f6 d5 00  	bgeu	a1, a3, 0x8000071c <main+0xe8>
80000714: 23 2c 01 02  	sw	zero, 56(sp)
80000718: 6f 00 00 01  	j	0x80000728 <main+0xf4>
;     void *ret = (void *)alloc->next;
8000071c: 23 2c f1 02  	sw	a5, 56(sp)
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
;   for (i = 0; i < ni; i++)
800007a8: 13 d5 4c 01  	srli	a0, s9, 20
800007ac: 33 35 a0 00  	snez	a0, a0
800007b0: b7 f5 11 00  	lui	a1, 287
800007b4: 93 85 95 60  	addi	a1, a1, 1545
800007b8: b3 b5 bc 00  	sltu	a1, s9, a1
800007bc: 33 75 b5 00  	and	a0, a0, a1

800007c0 <.LBB0_181>:
800007c0: 97 55 00 00  	auipc	a1, 5
800007c4: 93 85 85 55  	addi	a1, a1, 1368
800007c8: 23 2e e1 02  	sw	a4, 60(sp)
800007cc: 23 22 a1 02  	sw	a0, 36(sp)
800007d0: 13 08 00 00  	mv	a6, zero
800007d4: 63 04 05 22  	beqz	a0, 0x800009fc <.LBB0_181+0x23c>
800007d8: 93 02 00 00  	mv	t0, zero
800007dc: 13 03 00 00  	mv	t1, zero
800007e0: 93 03 00 00  	mv	t2, zero
800007e4: 13 0e 00 00  	mv	t3, zero
800007e8: 93 0e 00 00  	mv	t4, zero
800007ec: 13 0f 00 00  	mv	t5, zero
800007f0: 93 0f 00 00  	mv	t6, zero
800007f4: 13 05 80 00  	addi	a0, zero, 8
800007f8: 13 06 30 01  	addi	a2, zero, 19
;   for (i = 0; i < ni; i++)
800007fc: 93 06 00 04  	addi	a3, zero, 64
80000800: 13 07 00 0c  	addi	a4, zero, 192
80000804: ab 20 d6 00  	scfgw	a2, a3
80000808: ab 20 e5 00  	scfgw	a0, a4
8000080c: 13 06 f0 00  	addi	a2, zero, 15
80000810: 93 06 00 06  	addi	a3, zero, 96
80000814: 13 07 00 0e  	addi	a4, zero, 224
80000818: ab 20 d6 00  	scfgw	a2, a3
8000081c: ab 20 e5 00  	scfgw	a0, a4
80000820: 13 05 00 02  	addi	a0, zero, 32
80000824: ab 20 a0 00  	scfgw	zero, a0
80000828: 2b a0 0c 3a  	scfgwi	s9, 928
8000082c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80000830: 13 09 10 00  	addi	s2, zero, 1
80000834: 87 b1 05 00  	fld	ft3, 0(a1)
80000838: 93 08 10 13  	addi	a7, zero, 305
8000083c: 93 09 10 00  	addi	s3, zero, 1
80000840: 13 0a 10 00  	addi	s4, zero, 1
80000844: 93 06 10 00  	addi	a3, zero, 1
80000848: 13 07 10 00  	addi	a4, zero, 1
8000084c: 93 07 10 00  	addi	a5, zero, 1
80000850: 93 04 10 00  	addi	s1, zero, 1
80000854: 13 04 10 00  	addi	s0, zero, 1
80000858: 13 05 10 00  	addi	a0, zero, 1
8000085c: 93 05 10 00  	addi	a1, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000860: 53 80 31 22  	fmv.d	ft0, ft3
80000864: 13 76 f9 00  	andi	a2, s2, 15
80000868: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000086c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000870: 53 00 42 22  	fmv.d	ft0, ft4
80000874: 13 76 e8 00  	andi	a2, a6, 14
80000878: 13 66 16 00  	ori	a2, a2, 1
8000087c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000880: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000884: 53 00 42 22  	fmv.d	ft0, ft4
80000888: 13 f6 f9 00  	andi	a2, s3, 15
8000088c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000890: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000894: 53 00 42 22  	fmv.d	ft0, ft4
80000898: 13 f6 c2 00  	andi	a2, t0, 12
8000089c: 13 66 16 00  	ori	a2, a2, 1
800008a0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008a4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a8: 53 00 42 22  	fmv.d	ft0, ft4
800008ac: 13 76 fa 00  	andi	a2, s4, 15
800008b0: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008b8: 53 00 42 22  	fmv.d	ft0, ft4
800008bc: 13 76 e3 00  	andi	a2, t1, 14
800008c0: 13 66 16 00  	ori	a2, a2, 1
800008c4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008c8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008cc: 53 00 42 22  	fmv.d	ft0, ft4
800008d0: 13 f6 f6 00  	andi	a2, a3, 15
800008d4: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008dc: 53 00 42 22  	fmv.d	ft0, ft4
800008e0: 13 f6 83 00  	andi	a2, t2, 8
800008e4: 13 66 16 00  	ori	a2, a2, 1
800008e8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008ec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008f0: 53 00 42 22  	fmv.d	ft0, ft4
800008f4: 13 76 f7 00  	andi	a2, a4, 15
800008f8: 53 02 06 d2  	fcvt.d.w	ft4, a2
800008fc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000900: 53 00 42 22  	fmv.d	ft0, ft4
80000904: 13 76 ee 00  	andi	a2, t3, 14
80000908: 13 66 16 00  	ori	a2, a2, 1
8000090c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000910: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000914: 53 00 42 22  	fmv.d	ft0, ft4
80000918: 13 f6 f7 00  	andi	a2, a5, 15
8000091c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000920: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000924: 53 00 42 22  	fmv.d	ft0, ft4
80000928: 13 f6 ce 00  	andi	a2, t4, 12
8000092c: 13 66 16 00  	ori	a2, a2, 1
80000930: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000934: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000938: 53 00 42 22  	fmv.d	ft0, ft4
8000093c: 13 f6 f4 00  	andi	a2, s1, 15
80000940: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000944: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000948: 53 00 42 22  	fmv.d	ft0, ft4
8000094c: 13 76 ef 00  	andi	a2, t5, 14
80000950: 13 66 16 00  	ori	a2, a2, 1
80000954: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000958: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000095c: 53 00 42 22  	fmv.d	ft0, ft4
80000960: 13 76 f4 00  	andi	a2, s0, 15
80000964: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000968: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000096c: 53 00 42 22  	fmv.d	ft0, ft4
80000970: 53 80 31 22  	fmv.d	ft0, ft3
80000974: 13 76 f5 00  	andi	a2, a0, 15
80000978: 53 02 06 d2  	fcvt.d.w	ft4, a2
8000097c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000980: 53 00 42 22  	fmv.d	ft0, ft4
80000984: 13 f6 ef 00  	andi	a2, t6, 14
80000988: 13 66 16 00  	ori	a2, a2, 1
8000098c: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000990: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000994: 53 00 42 22  	fmv.d	ft0, ft4
80000998: 13 f6 f5 00  	andi	a2, a1, 15
8000099c: 53 02 06 d2  	fcvt.d.w	ft4, a2
800009a0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800009a4: 53 00 42 22  	fmv.d	ft0, ft4
;   for (i = 0; i < ni; i++)
800009a8: 93 85 35 01  	addi	a1, a1, 19
800009ac: 93 8f 2f 01  	addi	t6, t6, 18
800009b0: 13 05 15 01  	addi	a0, a0, 17
800009b4: 13 04 f4 00  	addi	s0, s0, 15
800009b8: 13 0f ef 00  	addi	t5, t5, 14
800009bc: 93 84 d4 00  	addi	s1, s1, 13
800009c0: 93 8e ce 00  	addi	t4, t4, 12
800009c4: 93 87 b7 00  	addi	a5, a5, 11
800009c8: 13 0e ae 00  	addi	t3, t3, 10
800009cc: 13 07 97 00  	addi	a4, a4, 9
800009d0: 93 83 83 00  	addi	t2, t2, 8
800009d4: 93 86 76 00  	addi	a3, a3, 7
800009d8: 13 03 63 00  	addi	t1, t1, 6
800009dc: 13 0a 5a 00  	addi	s4, s4, 5
800009e0: 93 82 42 00  	addi	t0, t0, 4
800009e4: 93 89 39 00  	addi	s3, s3, 3
800009e8: 13 08 28 00  	addi	a6, a6, 2
800009ec: 13 09 19 00  	addi	s2, s2, 1
800009f0: e3 98 15 e7  	bne	a1, a7, 0x80000860 <.LBB0_181+0xa0>
800009f4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800009f8: 6f 00 40 20  	j	0x80000bfc <.LBB0_181+0x43c>
800009fc: 93 08 00 00  	mv	a7, zero
80000a00: 13 0e 00 00  	mv	t3, zero
80000a04: 93 0e 00 00  	mv	t4, zero
80000a08: 13 0f 00 00  	mv	t5, zero
80000a0c: 93 0f 00 00  	mv	t6, zero
80000a10: 13 09 00 00  	mv	s2, zero
80000a14: 93 09 00 00  	mv	s3, zero
;   for (i = 0; i < ni; i++)
80000a18: 13 85 0c 05  	addi	a0, s9, 80
80000a1c: 13 0a 10 00  	addi	s4, zero, 1
80000a20: 37 a6 89 3f  	lui	a2, 260250
80000a24: 93 02 96 99  	addi	t0, a2, -1639
80000a28: 37 a6 99 99  	lui	a2, 629146
80000a2c: 13 03 a6 99  	addi	t1, a2, -1638
80000a30: 87 b1 05 00  	fld	ft3, 0(a1)
80000a34: 93 03 10 13  	addi	t2, zero, 305
80000a38: 93 0a 10 00  	addi	s5, zero, 1
80000a3c: 13 0b 10 00  	addi	s6, zero, 1
80000a40: 93 0b 10 00  	addi	s7, zero, 1
80000a44: 93 07 10 00  	addi	a5, zero, 1
80000a48: 93 04 10 00  	addi	s1, zero, 1
80000a4c: 13 04 10 00  	addi	s0, zero, 1
80000a50: 93 05 10 00  	addi	a1, zero, 1
80000a54: 13 06 10 00  	addi	a2, zero, 1
80000a58: 93 06 10 00  	addi	a3, zero, 1
;       A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
80000a5c: 23 2a 55 fa  	sw	t0, -76(a0)
80000a60: 23 28 65 fa  	sw	t1, -80(a0)
80000a64: 13 f7 f6 00  	andi	a4, a3, 15
80000a68: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a6c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a70: 27 3c 45 fa  	fsd	ft4, -72(a0)
80000a74: 13 77 e9 00  	andi	a4, s2, 14
80000a78: 13 67 17 00  	ori	a4, a4, 1
80000a7c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a80: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a84: 27 30 45 fc  	fsd	ft4, -64(a0)
80000a88: 13 77 f4 00  	andi	a4, s0, 15
80000a8c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000a90: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000a94: 27 34 45 fc  	fsd	ft4, -56(a0)
80000a98: 13 f7 cf 00  	andi	a4, t6, 12
80000a9c: 13 67 17 00  	ori	a4, a4, 1
80000aa0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aa4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000aa8: 27 38 45 fc  	fsd	ft4, -48(a0)
80000aac: 13 f7 f7 00  	andi	a4, a5, 15
80000ab0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ab4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ab8: 27 3c 45 fc  	fsd	ft4, -40(a0)
80000abc: 13 f7 ee 00  	andi	a4, t4, 14
80000ac0: 13 67 17 00  	ori	a4, a4, 1
80000ac4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ac8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000acc: 27 30 45 fe  	fsd	ft4, -32(a0)
80000ad0: 13 77 fb 00  	andi	a4, s6, 15
80000ad4: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ad8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000adc: 27 34 45 fe  	fsd	ft4, -24(a0)
80000ae0: 13 f7 88 00  	andi	a4, a7, 8
80000ae4: 13 67 17 00  	ori	a4, a4, 1
80000ae8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000aec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000af0: 27 38 45 fe  	fsd	ft4, -16(a0)
80000af4: 13 77 fa 00  	andi	a4, s4, 15
80000af8: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000afc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b00: 27 3c 45 fe  	fsd	ft4, -8(a0)
80000b04: 13 77 e8 00  	andi	a4, a6, 14
80000b08: 13 67 17 00  	ori	a4, a4, 1
80000b0c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b10: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b14: 27 30 45 00  	fsd	ft4, 0(a0)
80000b18: 13 f7 fa 00  	andi	a4, s5, 15
80000b1c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b20: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b24: 27 34 45 00  	fsd	ft4, 8(a0)
80000b28: 13 77 ce 00  	andi	a4, t3, 12
80000b2c: 13 67 17 00  	ori	a4, a4, 1
80000b30: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b34: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b38: 27 38 45 00  	fsd	ft4, 16(a0)
80000b3c: 13 f7 fb 00  	andi	a4, s7, 15
80000b40: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b44: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b48: 27 3c 45 00  	fsd	ft4, 24(a0)
80000b4c: 13 77 ef 00  	andi	a4, t5, 14
80000b50: 13 67 17 00  	ori	a4, a4, 1
80000b54: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b58: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b5c: 27 30 45 02  	fsd	ft4, 32(a0)
80000b60: 13 f7 f4 00  	andi	a4, s1, 15
80000b64: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b68: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b6c: 27 34 45 02  	fsd	ft4, 40(a0)
80000b70: 23 2a 55 02  	sw	t0, 52(a0)
80000b74: 23 28 65 02  	sw	t1, 48(a0)
80000b78: 13 f7 f5 00  	andi	a4, a1, 15
80000b7c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b80: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b84: 27 3c 45 02  	fsd	ft4, 56(a0)
80000b88: 13 f7 e9 00  	andi	a4, s3, 14
80000b8c: 13 67 17 00  	ori	a4, a4, 1
80000b90: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000b94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000b98: 27 30 45 04  	fsd	ft4, 64(a0)
80000b9c: 13 77 f6 00  	andi	a4, a2, 15
80000ba0: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000ba4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000ba8: 27 34 45 04  	fsd	ft4, 72(a0)
;   for (i = 0; i < ni; i++)
80000bac: 93 86 16 00  	addi	a3, a3, 1
80000bb0: 13 06 36 01  	addi	a2, a2, 19
80000bb4: 93 89 29 01  	addi	s3, s3, 18
80000bb8: 13 09 29 00  	addi	s2, s2, 2
80000bbc: 93 85 15 01  	addi	a1, a1, 17
80000bc0: 13 04 34 00  	addi	s0, s0, 3
80000bc4: 93 8f 4f 00  	addi	t6, t6, 4
80000bc8: 93 84 f4 00  	addi	s1, s1, 15
80000bcc: 93 87 57 00  	addi	a5, a5, 5
80000bd0: 13 0f ef 00  	addi	t5, t5, 14
80000bd4: 93 8e 6e 00  	addi	t4, t4, 6
80000bd8: 93 8b db 00  	addi	s7, s7, 13
80000bdc: 13 0b 7b 00  	addi	s6, s6, 7
80000be0: 13 0e ce 00  	addi	t3, t3, 12
80000be4: 93 88 88 00  	addi	a7, a7, 8
80000be8: 93 8a ba 00  	addi	s5, s5, 11
80000bec: 13 05 05 0a  	addi	a0, a0, 160
80000bf0: 13 08 a8 00  	addi	a6, a6, 10
80000bf4: 13 0a 9a 00  	addi	s4, s4, 9
80000bf8: e3 12 76 e6  	bne	a2, t2, 0x80000a5c <.LBB0_181+0x29c>
80000bfc: 83 27 81 03  	lw	a5, 56(sp)
;   for (i = 0; i < nk; i++)
80000c00: 13 d5 47 01  	srli	a0, a5, 20
80000c04: 33 35 a0 00  	snez	a0, a0
80000c08: b7 f5 11 00  	lui	a1, 287
80000c0c: 93 85 95 4c  	addi	a1, a1, 1225
80000c10: b3 b5 b7 00  	sltu	a1, a5, a1
80000c14: b3 75 b5 00  	and	a1, a0, a1

80000c18 <.LBB0_182>:
80000c18: 17 55 00 00  	auipc	a0, 5
80000c1c: 13 05 85 10  	addi	a0, a0, 264
80000c20: 23 2a 81 03  	sw	s8, 52(sp)
80000c24: 23 28 91 03  	sw	s9, 48(sp)
80000c28: 23 2c b1 00  	sw	a1, 24(sp)
80000c2c: 63 86 05 2e  	beqz	a1, 0x80000f18 <.LBB0_183+0x28c>
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
80000c70: 2b a0 07 3a  	scfgwi	a5, 928
80000c74: f3 e5 00 7c  	csrrsi	a1, 1984, 1
80000c78: 13 0f 20 00  	addi	t5, zero, 2
80000c7c: b7 95 e3 38  	lui	a1, 233017
80000c80: 13 87 95 e3  	addi	a4, a1, -455
80000c84: 93 07 20 01  	addi	a5, zero, 18
80000c88: 87 31 05 00  	fld	ft3, 0(a0)

80000c8c <.LBB0_183>:
80000c8c: 17 55 00 00  	auipc	a0, 5
80000c90: 13 05 c5 09  	addi	a0, a0, 156
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
80000cbc: 13 0b 20 00  	addi	s6, zero, 2
80000cc0: 13 0c 20 00  	addi	s8, zero, 2
80000cc4: 93 0b 20 00  	addi	s7, zero, 2
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
80000da4: 33 35 eb 02  	mulhu	a0, s6, a4
80000da8: 13 55 25 00  	srli	a0, a0, 2
80000dac: 33 05 f5 02  	mul	a0, a0, a5
80000db0: 33 05 ab 40  	sub	a0, s6, a0
80000db4: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000db8: 33 35 ec 02  	mulhu	a0, s8, a4
80000dbc: 13 55 25 00  	srli	a0, a0, 2
80000dc0: 33 05 f5 02  	mul	a0, a0, a5
80000dc4: 33 05 ac 40  	sub	a0, s8, a0
80000dc8: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000dcc: 33 b5 eb 02  	mulhu	a0, s7, a4
80000dd0: 13 55 25 00  	srli	a0, a0, 2
80000dd4: 33 05 f5 02  	mul	a0, a0, a5
80000dd8: 33 85 ab 40  	sub	a0, s7, a0
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
80000ed0: 93 8b db 00  	addi	s7, s7, 13
80000ed4: 13 0c cc 00  	addi	s8, s8, 12
80000ed8: 13 0b bb 00  	addi	s6, s6, 11
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
80000f0c: e3 98 04 dd  	bne	s1, a6, 0x80000cdc <.LBB0_183+0x50>
80000f10: 73 f5 00 7c  	csrrci	a0, 1984, 1
80000f14: 6f 00 80 2b  	j	0x800011cc <.LBB0_183+0x540>
80000f18: 13 03 00 00  	mv	t1, zero
80000f1c: 93 03 00 00  	mv	t2, zero
80000f20: 13 0e 00 00  	mv	t3, zero
;   for (i = 0; i < nk; i++)
80000f24: 93 86 87 04  	addi	a3, a5, 72
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
80000f64: 13 0b 20 00  	addi	s6, zero, 2
80000f68: 13 0c 20 00  	addi	s8, zero, 2
80000f6c: 13 09 20 00  	addi	s2, zero, 2
80000f70: 13 0d 20 00  	addi	s10, zero, 2
80000f74: 93 0d 20 00  	addi	s11, zero, 2
80000f78: 93 0b 20 00  	addi	s7, zero, 2
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
80001008: 33 35 fb 02  	mulhu	a0, s6, a5
8000100c: 13 55 25 00  	srli	a0, a0, 2
80001010: 33 05 95 02  	mul	a0, a0, s1
80001014: 33 05 ab 40  	sub	a0, s6, a0
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
800010bc: 33 b5 fb 02  	mulhu	a0, s7, a5
800010c0: 13 55 25 00  	srli	a0, a0, 2
800010c4: 33 05 95 02  	mul	a0, a0, s1
800010c8: 33 85 ab 40  	sub	a0, s7, a0
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
8000118c: 93 8b 0b 01  	addi	s7, s7, 16
80001190: 93 8d 5d 00  	addi	s11, s11, 5
80001194: 13 0d fd 00  	addi	s10, s10, 15
80001198: 13 09 69 00  	addi	s2, s2, 6
8000119c: 93 83 63 00  	addi	t2, t2, 6
800011a0: 13 0c ec 00  	addi	s8, s8, 14
800011a4: 13 0b 7b 00  	addi	s6, s6, 7
800011a8: 93 8a da 00  	addi	s5, s5, 13
800011ac: 13 0a 8a 00  	addi	s4, s4, 8
800011b0: 93 89 c9 00  	addi	s3, s3, 12
800011b4: 93 8e 9e 00  	addi	t4, t4, 9
800011b8: 13 03 93 00  	addi	t1, t1, 9
800011bc: 93 8f bf 00  	addi	t6, t6, 11
800011c0: 93 86 06 09  	addi	a3, a3, 144
800011c4: 13 0f af 00  	addi	t5, t5, 10
800011c8: e3 14 16 dd  	bne	a2, a7, 0x80000f90 <.LBB0_183+0x304>
800011cc: 23 24 11 02  	sw	ra, 40(sp)
800011d0: 83 2b c1 03  	lw	s7, 60(sp)
;   for (i = 0; i < nj; i++)
800011d4: 13 d5 4b 01  	srli	a0, s7, 20
800011d8: 33 35 a0 00  	snez	a0, a0
800011dc: b7 f5 11 00  	lui	a1, 287
800011e0: 93 85 95 28  	addi	a1, a1, 649
800011e4: b3 b5 bb 00  	sltu	a1, s7, a1
800011e8: 33 75 b5 00  	and	a0, a0, a1

800011ec <.LBB0_184>:
800011ec: 97 5a 00 00  	auipc	s5, 5
800011f0: 93 8a 4a b4  	addi	s5, s5, -1212
800011f4: 23 20 a1 02  	sw	a0, 32(sp)
800011f8: 63 04 05 3a  	beqz	a0, 0x800015a0 <.LBB0_184+0x3b4>
800011fc: 93 02 00 00  	mv	t0, zero
80001200: 93 03 00 00  	mv	t2, zero
80001204: 13 0e 00 00  	mv	t3, zero
80001208: 93 0e 00 00  	mv	t4, zero
8000120c: 13 0f 00 00  	mv	t5, zero
80001210: 13 0c 00 00  	mv	s8, zero
80001214: 93 0c 00 00  	mv	s9, zero
80001218: 13 0d 00 00  	mv	s10, zero
8000121c: 93 0d 00 00  	mv	s11, zero
80001220: 93 00 00 00  	mv	ra, zero
80001224: 13 0b 00 00  	mv	s6, zero
80001228: 13 06 00 00  	mv	a2, zero
8000122c: 13 07 00 00  	mv	a4, zero
80001230: 93 05 00 00  	mv	a1, zero
80001234: 93 06 00 00  	mv	a3, zero
80001238: 93 07 00 00  	mv	a5, zero
8000123c: 93 04 00 00  	mv	s1, zero
80001240: 13 04 00 00  	mv	s0, zero
80001244: 13 08 00 00  	mv	a6, zero
80001248: 93 08 00 00  	mv	a7, zero
8000124c: 13 03 00 00  	mv	t1, zero
80001250: 13 09 00 00  	mv	s2, zero
80001254: 93 0f 00 00  	mv	t6, zero
80001258: 93 09 80 00  	addi	s3, zero, 8
8000125c: 13 0a 70 01  	addi	s4, zero, 23
;   for (i = 0; i < nj; i++)
80001260: 13 05 00 04  	addi	a0, zero, 64
80001264: ab 20 aa 00  	scfgw	s4, a0
80001268: 13 05 00 0c  	addi	a0, zero, 192
8000126c: ab a0 a9 00  	scfgw	s3, a0
80001270: 13 0a 10 01  	addi	s4, zero, 17
80001274: 13 05 00 06  	addi	a0, zero, 96
80001278: ab 20 aa 00  	scfgw	s4, a0
8000127c: 13 05 00 0e  	addi	a0, zero, 224
80001280: ab a0 a9 00  	scfgw	s3, a0
80001284: 13 05 00 02  	addi	a0, zero, 32
80001288: ab 20 a0 00  	scfgw	zero, a0
8000128c: 2b a0 0b 3a  	scfgwi	s7, 928
80001290: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001294: 37 95 2e ba  	lui	a0, 762601
80001298: 93 09 35 ba  	addi	s3, a0, -1117
8000129c: 93 0b a0 fe  	addi	s7, zero, -22
800012a0: 87 b1 0a 00  	fld	ft3, 0(s5)
800012a4: 13 0a 60 01  	addi	s4, zero, 22
800012a8: 53 02 00 d2  	fcvt.d.w	ft4, zero
800012ac: 93 0a 40 1d  	addi	s5, zero, 468
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
800012b0: 33 b5 32 03  	mulhu	a0, t0, s3
800012b4: 13 55 45 00  	srli	a0, a0, 4
800012b8: 33 05 45 03  	mul	a0, a0, s4
800012bc: 33 85 a2 40  	sub	a0, t0, a0
800012c0: d3 02 05 d2  	fcvt.d.w	ft5, a0
800012c4: 33 b5 33 03  	mulhu	a0, t2, s3
800012c8: 13 55 45 00  	srli	a0, a0, 4
800012cc: 33 05 45 03  	mul	a0, a0, s4
800012d0: 33 85 a3 40  	sub	a0, t2, a0
800012d4: 53 03 05 d2  	fcvt.d.w	ft6, a0
800012d8: 33 35 3e 03  	mulhu	a0, t3, s3
800012dc: 13 55 45 00  	srli	a0, a0, 4
800012e0: 33 05 45 03  	mul	a0, a0, s4
800012e4: 33 05 ae 40  	sub	a0, t3, a0
800012e8: d3 03 05 d2  	fcvt.d.w	ft7, a0
800012ec: 33 b5 3e 03  	mulhu	a0, t4, s3
800012f0: 13 55 45 00  	srli	a0, a0, 4
800012f4: 33 05 45 03  	mul	a0, a0, s4
800012f8: 33 85 ae 40  	sub	a0, t4, a0
800012fc: 53 05 05 d2  	fcvt.d.w	fa0, a0
80001300: 33 35 3f 03  	mulhu	a0, t5, s3
80001304: 13 55 45 00  	srli	a0, a0, 4
80001308: 33 05 45 03  	mul	a0, a0, s4
8000130c: 33 05 af 40  	sub	a0, t5, a0
80001310: d3 05 05 d2  	fcvt.d.w	fa1, a0
80001314: 33 35 3c 03  	mulhu	a0, s8, s3
80001318: 13 55 45 00  	srli	a0, a0, 4
8000131c: 33 05 45 03  	mul	a0, a0, s4
80001320: 33 05 ac 40  	sub	a0, s8, a0
80001324: 53 06 05 d2  	fcvt.d.w	fa2, a0
80001328: 33 b5 3c 03  	mulhu	a0, s9, s3
8000132c: 13 55 45 00  	srli	a0, a0, 4
80001330: 33 05 45 03  	mul	a0, a0, s4
80001334: 33 85 ac 40  	sub	a0, s9, a0
80001338: d3 06 05 d2  	fcvt.d.w	fa3, a0
8000133c: 33 35 3d 03  	mulhu	a0, s10, s3
80001340: 13 55 45 00  	srli	a0, a0, 4
80001344: 33 05 45 03  	mul	a0, a0, s4
80001348: 33 05 ad 40  	sub	a0, s10, a0
8000134c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001350: 33 b5 3d 03  	mulhu	a0, s11, s3
80001354: 13 55 45 00  	srli	a0, a0, 4
80001358: 33 05 45 03  	mul	a0, a0, s4
8000135c: 33 85 ad 40  	sub	a0, s11, a0
80001360: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001364: 33 b5 30 03  	mulhu	a0, ra, s3
80001368: 13 55 45 00  	srli	a0, a0, 4
8000136c: 33 05 45 03  	mul	a0, a0, s4
80001370: 33 85 a0 40  	sub	a0, ra, a0
80001374: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001378: 33 35 3b 03  	mulhu	a0, s6, s3
8000137c: 13 55 45 00  	srli	a0, a0, 4
80001380: 33 05 45 03  	mul	a0, a0, s4
80001384: 33 05 ab 40  	sub	a0, s6, a0
80001388: d3 08 05 d2  	fcvt.d.w	fa7, a0
8000138c: 33 35 36 03  	mulhu	a0, a2, s3
80001390: 13 55 45 00  	srli	a0, a0, 4
80001394: 33 05 45 03  	mul	a0, a0, s4
80001398: 33 05 a6 40  	sub	a0, a2, a0
8000139c: 53 0e 05 d2  	fcvt.d.w	ft8, a0
800013a0: 33 35 37 03  	mulhu	a0, a4, s3
800013a4: 13 55 45 00  	srli	a0, a0, 4
800013a8: 33 05 45 03  	mul	a0, a0, s4
800013ac: 33 05 a7 40  	sub	a0, a4, a0
800013b0: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800013b4: 33 b5 35 03  	mulhu	a0, a1, s3
800013b8: 13 55 45 00  	srli	a0, a0, 4
800013bc: 33 05 45 03  	mul	a0, a0, s4
800013c0: 33 85 a5 40  	sub	a0, a1, a0
800013c4: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800013c8: 33 b5 36 03  	mulhu	a0, a3, s3
800013cc: 13 55 45 00  	srli	a0, a0, 4
800013d0: 33 05 45 03  	mul	a0, a0, s4
800013d4: 33 85 a6 40  	sub	a0, a3, a0
800013d8: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800013dc: 33 b5 37 03  	mulhu	a0, a5, s3
800013e0: 13 55 45 00  	srli	a0, a0, 4
800013e4: 33 05 45 03  	mul	a0, a0, s4
800013e8: 33 85 a7 40  	sub	a0, a5, a0
800013ec: 53 04 05 d2  	fcvt.d.w	fs0, a0
800013f0: 33 b5 34 03  	mulhu	a0, s1, s3
800013f4: 13 55 45 00  	srli	a0, a0, 4
800013f8: 33 05 45 03  	mul	a0, a0, s4
800013fc: 33 85 a4 40  	sub	a0, s1, a0
80001400: d3 04 05 d2  	fcvt.d.w	fs1, a0
80001404: 33 35 34 03  	mulhu	a0, s0, s3
80001408: 13 55 45 00  	srli	a0, a0, 4
8000140c: 33 05 45 03  	mul	a0, a0, s4
80001410: 33 05 a4 40  	sub	a0, s0, a0
80001414: 53 09 05 d2  	fcvt.d.w	fs2, a0
80001418: 33 35 38 03  	mulhu	a0, a6, s3
8000141c: 13 55 45 00  	srli	a0, a0, 4
80001420: 33 05 45 03  	mul	a0, a0, s4
80001424: 33 05 a8 40  	sub	a0, a6, a0
80001428: d3 09 05 d2  	fcvt.d.w	fs3, a0
8000142c: 33 b5 38 03  	mulhu	a0, a7, s3
80001430: 13 55 45 00  	srli	a0, a0, 4
80001434: 33 05 45 03  	mul	a0, a0, s4
80001438: 33 85 a8 40  	sub	a0, a7, a0
8000143c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80001440: 33 35 33 03  	mulhu	a0, t1, s3
80001444: 13 55 45 00  	srli	a0, a0, 4
80001448: 33 05 45 03  	mul	a0, a0, s4
8000144c: 33 05 a3 40  	sub	a0, t1, a0
80001450: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80001454: 33 35 39 03  	mulhu	a0, s2, s3
80001458: 13 55 45 00  	srli	a0, a0, 4
8000145c: 33 05 45 03  	mul	a0, a0, s4
80001460: 33 05 a9 40  	sub	a0, s2, a0
80001464: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001468: 33 b5 3f 03  	mulhu	a0, t6, s3
8000146c: 13 55 45 00  	srli	a0, a0, 4
80001470: 33 05 75 03  	mul	a0, a0, s7
80001474: 33 85 af 00  	add	a0, t6, a0
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
80001538: 93 8f af 01  	addi	t6, t6, 26
8000153c: 13 09 99 01  	addi	s2, s2, 25
80001540: 13 03 83 01  	addi	t1, t1, 24
80001544: 93 88 78 01  	addi	a7, a7, 23
80001548: 13 08 58 01  	addi	a6, a6, 21
8000154c: 13 04 44 01  	addi	s0, s0, 20
80001550: 93 84 34 01  	addi	s1, s1, 19
80001554: 93 87 27 01  	addi	a5, a5, 18
80001558: 93 86 16 01  	addi	a3, a3, 17
8000155c: 93 85 05 01  	addi	a1, a1, 16
80001560: 13 07 f7 00  	addi	a4, a4, 15
80001564: 13 06 e6 00  	addi	a2, a2, 14
80001568: 13 0b db 00  	addi	s6, s6, 13
8000156c: 93 80 c0 00  	addi	ra, ra, 12
80001570: 93 8d bd 00  	addi	s11, s11, 11
80001574: 13 0d ad 00  	addi	s10, s10, 10
80001578: 93 8c 9c 00  	addi	s9, s9, 9
8000157c: 13 0c 8c 00  	addi	s8, s8, 8
80001580: 13 0f 7f 00  	addi	t5, t5, 7
80001584: 93 8e 6e 00  	addi	t4, t4, 6
80001588: 13 0e 5e 00  	addi	t3, t3, 5
8000158c: 93 83 43 00  	addi	t2, t2, 4
80001590: 93 82 32 00  	addi	t0, t0, 3
80001594: e3 9e 5f d1  	bne	t6, s5, 0x800012b0 <.LBB0_184+0xc4>
80001598: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000159c: 6f 00 c0 36  	j	0x80001908 <.LBB0_184+0x71c>
800015a0: 13 08 00 00  	mv	a6, zero
800015a4: 93 08 00 00  	mv	a7, zero
800015a8: 93 02 00 00  	mv	t0, zero
800015ac: 13 03 00 00  	mv	t1, zero
800015b0: 93 03 00 00  	mv	t2, zero
800015b4: 13 0e 00 00  	mv	t3, zero
800015b8: 93 0e 00 00  	mv	t4, zero
800015bc: 13 0f 00 00  	mv	t5, zero
800015c0: 93 0f 00 00  	mv	t6, zero
800015c4: 13 09 00 00  	mv	s2, zero
800015c8: 93 09 00 00  	mv	s3, zero
800015cc: 13 0a 00 00  	mv	s4, zero
800015d0: 13 0c 00 00  	mv	s8, zero
800015d4: 93 0c 00 00  	mv	s9, zero
800015d8: 13 0d 00 00  	mv	s10, zero
800015dc: 93 0d 00 00  	mv	s11, zero
800015e0: 93 00 00 00  	mv	ra, zero
800015e4: 13 0b 00 00  	mv	s6, zero
800015e8: 13 06 00 00  	mv	a2, zero
800015ec: 93 06 00 00  	mv	a3, zero
800015f0: 13 07 00 00  	mv	a4, zero
800015f4: 93 07 00 00  	mv	a5, zero
800015f8: 93 04 00 00  	mv	s1, zero
;   for (i = 0; i < nj; i++)
800015fc: 13 84 0b 06  	addi	s0, s7, 96
80001600: 37 95 2e ba  	lui	a0, 762601
80001604: 13 05 35 ba  	addi	a0, a0, -1117
80001608: 87 b1 0a 00  	fld	ft3, 0(s5)
8000160c: 93 0a 60 01  	addi	s5, zero, 22
80001610: 93 0b a0 fe  	addi	s7, zero, -22
;       C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
80001614: b3 b5 a7 02  	mulhu	a1, a5, a0
80001618: 93 d5 45 00  	srli	a1, a1, 4
8000161c: b3 85 55 03  	mul	a1, a1, s5
80001620: b3 85 b7 40  	sub	a1, a5, a1
80001624: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001628: b3 35 a7 02  	mulhu	a1, a4, a0
8000162c: 93 d5 45 00  	srli	a1, a1, 4
80001630: b3 85 55 03  	mul	a1, a1, s5
80001634: b3 05 b7 40  	sub	a1, a4, a1
80001638: d3 82 05 d2  	fcvt.d.w	ft5, a1
8000163c: b3 35 a6 02  	mulhu	a1, a2, a0
80001640: 93 d5 45 00  	srli	a1, a1, 4
80001644: b3 85 55 03  	mul	a1, a1, s5
80001648: b3 05 b6 40  	sub	a1, a2, a1
8000164c: 53 83 05 d2  	fcvt.d.w	ft6, a1
80001650: b3 b5 a0 02  	mulhu	a1, ra, a0
80001654: 93 d5 45 00  	srli	a1, a1, 4
80001658: b3 85 55 03  	mul	a1, a1, s5
8000165c: b3 85 b0 40  	sub	a1, ra, a1
80001660: d3 83 05 d2  	fcvt.d.w	ft7, a1
80001664: b3 35 ad 02  	mulhu	a1, s10, a0
80001668: 93 d5 45 00  	srli	a1, a1, 4
8000166c: b3 85 55 03  	mul	a1, a1, s5
80001670: b3 05 bd 40  	sub	a1, s10, a1
80001674: 53 85 05 d2  	fcvt.d.w	fa0, a1
80001678: b3 b5 ac 02  	mulhu	a1, s9, a0
8000167c: 93 d5 45 00  	srli	a1, a1, 4
80001680: b3 85 55 03  	mul	a1, a1, s5
80001684: b3 85 bc 40  	sub	a1, s9, a1
80001688: d3 85 05 d2  	fcvt.d.w	fa1, a1
8000168c: b3 35 aa 02  	mulhu	a1, s4, a0
80001690: 93 d5 45 00  	srli	a1, a1, 4
80001694: b3 85 55 03  	mul	a1, a1, s5
80001698: b3 05 ba 40  	sub	a1, s4, a1
8000169c: 53 86 05 d2  	fcvt.d.w	fa2, a1
800016a0: b3 35 a9 02  	mulhu	a1, s2, a0
800016a4: 93 d5 45 00  	srli	a1, a1, 4
800016a8: b3 85 55 03  	mul	a1, a1, s5
800016ac: b3 05 b9 40  	sub	a1, s2, a1
800016b0: d3 86 05 d2  	fcvt.d.w	fa3, a1
800016b4: b3 35 af 02  	mulhu	a1, t5, a0
800016b8: 93 d5 45 00  	srli	a1, a1, 4
800016bc: b3 85 55 03  	mul	a1, a1, s5
800016c0: b3 05 bf 40  	sub	a1, t5, a1
800016c4: 53 87 05 d2  	fcvt.d.w	fa4, a1
800016c8: b3 35 ae 02  	mulhu	a1, t3, a0
800016cc: 93 d5 45 00  	srli	a1, a1, 4
800016d0: b3 85 55 03  	mul	a1, a1, s5
800016d4: b3 05 be 40  	sub	a1, t3, a1
800016d8: d3 87 05 d2  	fcvt.d.w	fa5, a1
800016dc: b3 35 a3 02  	mulhu	a1, t1, a0
800016e0: 93 d5 45 00  	srli	a1, a1, 4
800016e4: b3 85 55 03  	mul	a1, a1, s5
800016e8: b3 05 b3 40  	sub	a1, t1, a1
800016ec: 53 88 05 d2  	fcvt.d.w	fa6, a1
800016f0: b3 35 a8 02  	mulhu	a1, a6, a0
800016f4: 93 d5 45 00  	srli	a1, a1, 4
800016f8: b3 85 55 03  	mul	a1, a1, s5
800016fc: b3 05 b8 40  	sub	a1, a6, a1
80001700: d3 88 05 d2  	fcvt.d.w	fa7, a1
80001704: b3 b5 a8 02  	mulhu	a1, a7, a0
80001708: 93 d5 45 00  	srli	a1, a1, 4
8000170c: b3 85 55 03  	mul	a1, a1, s5
80001710: b3 85 b8 40  	sub	a1, a7, a1
80001714: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80001718: b3 b5 a2 02  	mulhu	a1, t0, a0
8000171c: 93 d5 45 00  	srli	a1, a1, 4
80001720: b3 85 55 03  	mul	a1, a1, s5
80001724: b3 85 b2 40  	sub	a1, t0, a1
80001728: d3 8e 05 d2  	fcvt.d.w	ft9, a1
8000172c: b3 b5 a3 02  	mulhu	a1, t2, a0
80001730: 93 d5 45 00  	srli	a1, a1, 4
80001734: b3 85 55 03  	mul	a1, a1, s5
80001738: b3 85 b3 40  	sub	a1, t2, a1
8000173c: 53 8f 05 d2  	fcvt.d.w	ft10, a1
80001740: b3 b5 ae 02  	mulhu	a1, t4, a0
80001744: 93 d5 45 00  	srli	a1, a1, 4
80001748: b3 85 55 03  	mul	a1, a1, s5
8000174c: b3 85 be 40  	sub	a1, t4, a1
80001750: d3 8f 05 d2  	fcvt.d.w	ft11, a1
80001754: b3 b5 af 02  	mulhu	a1, t6, a0
80001758: 93 d5 45 00  	srli	a1, a1, 4
8000175c: b3 85 55 03  	mul	a1, a1, s5
80001760: b3 85 bf 40  	sub	a1, t6, a1
80001764: 53 84 05 d2  	fcvt.d.w	fs0, a1
80001768: b3 b5 a9 02  	mulhu	a1, s3, a0
8000176c: 93 d5 45 00  	srli	a1, a1, 4
80001770: b3 85 55 03  	mul	a1, a1, s5
80001774: b3 85 b9 40  	sub	a1, s3, a1
80001778: d3 84 05 d2  	fcvt.d.w	fs1, a1
8000177c: b3 35 ac 02  	mulhu	a1, s8, a0
80001780: 93 d5 45 00  	srli	a1, a1, 4
80001784: b3 85 55 03  	mul	a1, a1, s5
80001788: b3 05 bc 40  	sub	a1, s8, a1
8000178c: 53 89 05 d2  	fcvt.d.w	fs2, a1
80001790: b3 b5 ad 02  	mulhu	a1, s11, a0
80001794: 93 d5 45 00  	srli	a1, a1, 4
80001798: b3 85 55 03  	mul	a1, a1, s5
8000179c: b3 85 bd 40  	sub	a1, s11, a1
800017a0: d3 89 05 d2  	fcvt.d.w	fs3, a1
800017a4: b3 35 ab 02  	mulhu	a1, s6, a0
800017a8: 93 d5 45 00  	srli	a1, a1, 4
800017ac: b3 85 55 03  	mul	a1, a1, s5
800017b0: b3 05 bb 40  	sub	a1, s6, a1
800017b4: 53 8a 05 d2  	fcvt.d.w	fs4, a1
800017b8: b3 b5 a6 02  	mulhu	a1, a3, a0
800017bc: 93 d5 45 00  	srli	a1, a1, 4
800017c0: b3 85 55 03  	mul	a1, a1, s5
800017c4: b3 85 b6 40  	sub	a1, a3, a1
800017c8: d3 8a 05 d2  	fcvt.d.w	fs5, a1
800017cc: b3 b5 a4 02  	mulhu	a1, s1, a0
800017d0: 93 d5 45 00  	srli	a1, a1, 4
800017d4: b3 85 75 03  	mul	a1, a1, s7
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
800018b4: 13 0b 8b 01  	addi	s6, s6, 24
800018b8: 93 80 60 00  	addi	ra, ra, 6
800018bc: 93 8d 7d 01  	addi	s11, s11, 23
800018c0: 13 0d 7d 00  	addi	s10, s10, 7
800018c4: 93 8c 8c 00  	addi	s9, s9, 8
800018c8: 13 0c 5c 01  	addi	s8, s8, 21
800018cc: 13 0a 9a 00  	addi	s4, s4, 9
800018d0: 93 89 49 01  	addi	s3, s3, 20
800018d4: 13 09 a9 00  	addi	s2, s2, 10
800018d8: 93 8f 3f 01  	addi	t6, t6, 19
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
80001904: e3 98 b4 d0  	bne	s1, a1, 0x80001614 <.LBB0_184+0x428>
80001908: 83 27 c1 04  	lw	a5, 76(sp)
;   for (i = 0; i < nm; i++)
8000190c: 13 d5 47 01  	srli	a0, a5, 20
80001910: 33 35 a0 00  	snez	a0, a0
80001914: b7 f5 11 00  	lui	a1, 287
80001918: 93 85 95 f8  	addi	a1, a1, -119
8000191c: b3 b5 b7 00  	sltu	a1, a5, a1
80001920: b3 75 b5 00  	and	a1, a0, a1

80001924 <.LBB0_185>:
80001924: 17 45 00 00  	auipc	a0, 4
80001928: 13 05 45 41  	addi	a0, a0, 1044
8000192c: 23 28 b1 00  	sw	a1, 16(sp)
80001930: 63 8e 05 36  	beqz	a1, 0x80001cac <.LBB0_186+0x31c>
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

80001990 <.LBB0_186>:
80001990: 17 45 00 00  	auipc	a0, 4
80001994: 13 05 05 3b  	addi	a0, a0, 944
80001998: 07 32 05 00  	fld	ft4, 0(a0)
8000199c: 93 0b 20 03  	addi	s7, zero, 50
800019a0: 93 03 20 00  	addi	t2, zero, 2
800019a4: 13 0e 20 00  	addi	t3, zero, 2
800019a8: 13 09 20 00  	addi	s2, zero, 2
800019ac: 93 09 20 00  	addi	s3, zero, 2
800019b0: 13 0a 20 00  	addi	s4, zero, 2
800019b4: 93 0a 20 00  	addi	s5, zero, 2
800019b8: 13 0f 20 00  	addi	t5, zero, 2
800019bc: 13 0c 20 00  	addi	s8, zero, 2
800019c0: 93 0c 20 00  	addi	s9, zero, 2
800019c4: 13 0d 20 00  	addi	s10, zero, 2
800019c8: 93 0d 20 00  	addi	s11, zero, 2
800019cc: 93 00 20 00  	addi	ra, zero, 2
800019d0: 13 0b 20 00  	addi	s6, zero, 2
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
80001a7c: 33 b4 ea 02  	mulhu	s0, s5, a4
80001a80: 13 54 44 00  	srli	s0, s0, 4
80001a84: 33 04 f4 02  	mul	s0, s0, a5
80001a88: 33 84 8a 40  	sub	s0, s5, s0
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
80001b08: 33 34 eb 02  	mulhu	s0, s6, a4
80001b0c: 13 54 44 00  	srli	s0, s0, 4
80001b10: 33 04 f4 02  	mul	s0, s0, a5
80001b14: 33 04 8b 40  	sub	s0, s6, s0
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
80001c5c: 13 0b 0b 01  	addi	s6, s6, 16
80001c60: 93 80 f0 00  	addi	ra, ra, 15
80001c64: 93 8d ed 00  	addi	s11, s11, 14
80001c68: 13 0d dd 00  	addi	s10, s10, 13
80001c6c: 93 8c cc 00  	addi	s9, s9, 12
80001c70: 13 0c bc 00  	addi	s8, s8, 11
80001c74: 13 0f af 00  	addi	t5, t5, 10
80001c78: 13 03 a3 00  	addi	t1, t1, 10
80001c7c: 93 8a 9a 00  	addi	s5, s5, 9
80001c80: 13 0a 8a 00  	addi	s4, s4, 8
80001c84: 93 89 79 00  	addi	s3, s3, 7
80001c88: 13 09 69 00  	addi	s2, s2, 6
80001c8c: 13 0e 5e 00  	addi	t3, t3, 5
80001c90: 93 82 52 00  	addi	t0, t0, 5
80001c94: 93 83 43 00  	addi	t2, t2, 4
80001c98: 93 88 48 00  	addi	a7, a7, 4
80001c9c: 93 8f 3f 00  	addi	t6, t6, 3
80001ca0: e3 18 78 d5  	bne	a6, s7, 0x800019f0 <.LBB0_186+0x60>
80001ca4: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001ca8: 6f 00 80 37  	j	0x80002020 <.LBB0_186+0x690>
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
80001cd8: 23 22 a1 04  	sw	a0, 68(sp)
80001cdc: 37 15 ae 47  	lui	a0, 293601
80001ce0: 13 05 b5 47  	addi	a0, a0, 1147
80001ce4: 23 20 a1 04  	sw	a0, 64(sp)
80001ce8: 13 09 20 00  	addi	s2, zero, 2
80001cec: 93 09 20 00  	addi	s3, zero, 2
80001cf0: 13 0a 20 00  	addi	s4, zero, 2
80001cf4: 93 0a 20 00  	addi	s5, zero, 2
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
80001d28: 93 0b 20 00  	addi	s7, zero, 2
80001d2c: 13 08 20 00  	addi	a6, zero, 2
80001d30: 93 02 20 00  	addi	t0, zero, 2
80001d34: 13 0b 20 00  	addi	s6, zero, 2
;       D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
80001d38: 23 24 81 04  	sw	s0, 72(sp)
80001d3c: 33 37 fb 02  	mulhu	a4, s6, a5
80001d40: 13 57 47 00  	srli	a4, a4, 4
80001d44: 13 04 06 00  	mv	s0, a2
80001d48: 13 06 05 00  	mv	a2, a0
80001d4c: 13 85 0b 00  	mv	a0, s7
80001d50: b3 0b f7 03  	mul	s7, a4, t6
80001d54: 33 07 7b 41  	sub	a4, s6, s7
80001d58: 93 0b 05 00  	mv	s7, a0
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
80001d8c: 33 87 eb 40  	sub	a4, s7, a4
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
80001e0c: 33 b7 fa 02  	mulhu	a4, s5, a5
80001e10: 13 57 47 00  	srli	a4, a4, 4
80001e14: 33 07 f7 03  	mul	a4, a4, t6
80001e18: 33 87 ea 40  	sub	a4, s5, a4
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
80001f9c: 03 27 41 04  	lw	a4, 68(sp)
80001fa0: 23 ae e6 02  	sw	a4, 60(a3)
80001fa4: 03 27 01 04  	lw	a4, 64(sp)
80001fa8: 23 ac e6 02  	sw	a4, 56(a3)
80001fac: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80001fb0: 27 b8 46 04  	fsd	ft4, 80(a3)
;   for (i = 0; i < nm; i++)
80001fb4: 13 0b 2b 00  	addi	s6, s6, 2
80001fb8: 93 82 32 00  	addi	t0, t0, 3
80001fbc: 13 08 78 01  	addi	a6, a6, 23
80001fc0: 93 8b 4b 00  	addi	s7, s7, 4
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
80002000: 93 8a ba 00  	addi	s5, s5, 11
80002004: 13 0a fa 00  	addi	s4, s4, 15
80002008: 93 89 c9 00  	addi	s3, s3, 12
8000200c: 13 09 e9 00  	addi	s2, s2, 14
80002010: 93 86 06 0b  	addi	a3, a3, 176
80002014: 13 0f df 00  	addi	t5, t5, 13
80002018: 13 07 20 03  	addi	a4, zero, 50
8000201c: e3 1e eb d0  	bne	s6, a4, 0x80001d38 <.LBB0_186+0x3a8>
80002020: 37 15 00 00  	lui	a0, 1
80002024: 93 04 05 96  	addi	s1, a0, -1696
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002028: 73 25 00 b0  	csrr	a0, mcycle
8000202c: 23 2e a1 00  	sw	a0, 28(sp)
80002030: 83 23 81 02  	lw	t2, 40(sp)
;  for (i = 0; i < ni; i++)
80002034: 33 85 93 00  	add	a0, t2, s1
80002038: b3 35 75 00  	sltu	a1, a0, t2
8000203c: 13 04 85 f9  	addi	s0, a0, -104
80002040: 33 35 a4 00  	sltu	a0, s0, a0
80002044: 33 85 a5 00  	add	a0, a1, a0
80002048: 13 08 f5 ff  	addi	a6, a0, -1
8000204c: 83 2d 01 03  	lw	s11, 48(sp)
80002050: 33 85 9d 00  	add	a0, s11, s1
80002054: b3 35 b5 01  	sltu	a1, a0, s11
80002058: 13 06 85 09  	addi	a2, a0, 152
8000205c: 33 35 a6 00  	sltu	a0, a2, a0
80002060: b3 86 a5 00  	add	a3, a1, a0
80002064: 83 20 81 03  	lw	ra, 56(sp)
80002068: 33 87 90 00  	add	a4, ra, s1
8000206c: 13 05 87 1d  	addi	a0, a4, 472
80002070: 63 06 08 00  	beqz	a6, 0x8000207c <.LBB0_186+0x6ec>
80002074: 93 05 00 00  	mv	a1, zero
80002078: 6f 00 80 00  	j	0x80002080 <.LBB0_186+0x6f0>
8000207c: b3 35 b4 01  	sltu	a1, s0, s11
;  for (i = 0; i < ni; i++)
80002080: b3 37 17 00  	sltu	a5, a4, ra
80002084: 33 37 e5 00  	sltu	a4, a0, a4
80002088: 63 82 06 02  	beqz	a3, 0x800020ac <.LBB0_186+0x71c>
8000208c: 13 06 00 00  	mv	a2, zero
80002090: 33 87 e7 00  	add	a4, a5, a4
80002094: 63 12 08 02  	bnez	a6, 0x800020b8 <.LBB0_186+0x728>
80002098: b3 36 14 00  	sltu	a3, s0, ra
;  for (i = 0; i < ni; i++)
8000209c: b3 e5 c5 00  	or	a1, a1, a2
800020a0: 63 12 07 02  	bnez	a4, 0x800020c4 <.LBB0_186+0x734>
800020a4: 33 35 75 00  	sltu	a0, a0, t2
800020a8: 6f 00 00 02  	j	0x800020c8 <.LBB0_186+0x738>
800020ac: 33 36 76 00  	sltu	a2, a2, t2
;  for (i = 0; i < ni; i++)
800020b0: 33 87 e7 00  	add	a4, a5, a4
800020b4: e3 02 08 fe  	beqz	a6, 0x80002098 <.LBB0_186+0x708>
800020b8: 93 06 00 00  	mv	a3, zero
800020bc: b3 e5 c5 00  	or	a1, a1, a2
800020c0: e3 02 07 fe  	beqz	a4, 0x800020a4 <.LBB0_186+0x714>
800020c4: 13 05 00 00  	mv	a0, zero
800020c8: 33 e5 a6 00  	or	a0, a3, a0
800020cc: 33 f5 a5 00  	and	a0, a1, a0
800020d0: 93 d5 43 01  	srli	a1, t2, 20
800020d4: b3 35 b0 00  	snez	a1, a1
800020d8: 37 f6 11 00  	lui	a2, 287
800020dc: 13 06 96 70  	addi	a2, a2, 1801
800020e0: 33 b6 c3 00  	sltu	a2, t2, a2
800020e4: b3 f5 c5 00  	and	a1, a1, a2
800020e8: 23 26 b1 00  	sw	a1, 12(sp)
800020ec: 33 f5 a5 00  	and	a0, a1, a0
800020f0: 83 25 41 02  	lw	a1, 36(sp)
800020f4: 33 f5 a5 00  	and	a0, a1, a0
800020f8: 83 25 81 01  	lw	a1, 24(sp)
800020fc: 33 f5 a5 00  	and	a0, a1, a0
80002100: 23 22 91 02  	sw	s1, 36(sp)
80002104: 23 22 81 00  	sw	s0, 4(sp)
80002108: 23 2a 01 01  	sw	a6, 20(sp)
8000210c: 63 08 05 14  	beqz	a0, 0x8000225c <.LBB0_186+0x8cc>
80002110: 13 05 00 00  	mv	a0, zero
80002114: 93 05 80 00  	addi	a1, zero, 8
80002118: 13 06 10 01  	addi	a2, zero, 17
;  for (i = 0; i < ni; i++)
8000211c: 93 06 00 04  	addi	a3, zero, 64
80002120: 13 07 00 0c  	addi	a4, zero, 192
80002124: ab 20 d6 00  	scfgw	a2, a3
80002128: ab a0 e5 00  	scfgw	a1, a4
8000212c: 93 06 f0 00  	addi	a3, zero, 15
80002130: 13 07 00 06  	addi	a4, zero, 96
80002134: 93 07 00 0e  	addi	a5, zero, 224
80002138: ab a0 e6 00  	scfgw	a3, a4
8000213c: ab a0 f5 00  	scfgw	a1, a5
80002140: 13 07 00 02  	addi	a4, zero, 32
80002144: ab 20 e0 00  	scfgw	zero, a4
80002148: 2b a0 03 3a  	scfgwi	t2, 928
8000214c: 13 07 30 01  	addi	a4, zero, 19
80002150: 93 07 10 00  	addi	a5, zero, 1
80002154: 93 84 07 04  	addi	s1, a5, 64
80002158: 13 84 07 0c  	addi	s0, a5, 192
8000215c: ab 20 97 00  	scfgw	a4, s1
80002160: ab a0 85 00  	scfgw	a1, s0
80002164: 93 04 80 f6  	addi	s1, zero, -152
80002168: 13 84 07 06  	addi	s0, a5, 96
8000216c: ab 20 86 00  	scfgw	a2, s0
80002170: 13 84 07 0e  	addi	s0, a5, 224
80002174: ab a0 84 00  	scfgw	s1, s0
80002178: 93 84 07 08  	addi	s1, a5, 128
8000217c: 13 84 07 10  	addi	s0, a5, 256
80002180: ab a0 96 00  	scfgw	a3, s1
80002184: ab a0 85 00  	scfgw	a1, s0
80002188: 93 85 07 02  	addi	a1, a5, 32
8000218c: ab 20 b0 00  	scfgw	zero, a1
80002190: 2b a0 1d 34  	scfgwi	s11, 833
80002194: 93 05 00 09  	addi	a1, zero, 144
80002198: 93 07 20 00  	addi	a5, zero, 2
8000219c: 93 84 07 04  	addi	s1, a5, 64
800021a0: 13 84 07 0c  	addi	s0, a5, 192
800021a4: ab 20 97 00  	scfgw	a4, s1
800021a8: ab a0 85 00  	scfgw	a1, s0
800021ac: b7 f5 ff ff  	lui	a1, 1048575
800021b0: 13 87 85 55  	addi	a4, a1, 1368
800021b4: 93 84 07 06  	addi	s1, a5, 96
800021b8: 13 84 07 0e  	addi	s0, a5, 224
800021bc: ab 20 96 00  	scfgw	a2, s1
800021c0: ab 20 87 00  	scfgw	a4, s0
800021c4: 93 85 85 4c  	addi	a1, a1, 1224
800021c8: 13 86 07 08  	addi	a2, a5, 128
800021cc: 13 87 07 10  	addi	a4, a5, 256
800021d0: ab a0 c6 00  	scfgw	a3, a2
800021d4: ab a0 e5 00  	scfgw	a1, a4
800021d8: 93 85 07 02  	addi	a1, a5, 32
800021dc: ab 20 b0 00  	scfgw	zero, a1
800021e0: 2b a0 20 34  	scfgwi	ra, 834
800021e4: f3 e5 00 7c  	csrrsi	a1, 1984, 1
800021e8: 93 05 00 01  	addi	a1, zero, 16
800021ec: 13 06 20 01  	addi	a2, zero, 18
;         x += A[i][k] * B[k][j];
800021f0: d3 81 10 22  	fmv.d	ft3, ft1
800021f4: d3 71 31 12  	fmul.d	ft3, ft2, ft3
800021f8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800021fc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002200: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002204: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002208: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000220c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002210: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002214: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002218: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000221c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002220: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002224: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002228: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000222c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002230: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002234: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002238: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000223c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002240: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       E[i][j] = x;
80002244: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nj; j++)
80002248: 13 06 f6 ff  	addi	a2, a2, -1
8000224c: e3 12 06 fa  	bnez	a2, 0x800021f0 <.LBB0_186+0x860>
;  for (i = 0; i < ni; i++)
80002250: 13 05 15 00  	addi	a0, a0, 1
80002254: e3 1c b5 f8  	bne	a0, a1, 0x800021ec <.LBB0_186+0x85c>
80002258: 6f 00 00 30  	j	0x80002558 <.LBB0_186+0xbc8>
;  for (i = 0; i < ni; i++)
8000225c: 13 85 8d 07  	addi	a0, s11, 120
80002260: b3 05 95 00  	add	a1, a0, s1
80002264: 63 f6 a5 00  	bgeu	a1, a0, 0x80002270 <.LBB0_186+0x8e0>
80002268: 93 06 00 00  	mv	a3, zero
8000226c: 6f 00 80 00  	j	0x80002274 <.LBB0_186+0x8e4>
80002270: b3 b6 75 00  	sltu	a3, a1, t2
;  for (i = 0; i < ni; i++)
80002274: 93 88 00 5a  	addi	a7, ra, 1440
80002278: 93 87 80 62  	addi	a5, ra, 1576
8000227c: 63 06 08 02  	beqz	a6, 0x800022a8 <.LBB0_186+0x918>
80002280: 13 07 00 00  	mv	a4, zero
80002284: 13 86 8d 05  	addi	a2, s11, 88
80002288: 63 e6 17 03  	bltu	a5, a7, 0x800022b4 <.LBB0_186+0x924>
8000228c: b3 b7 77 00  	sltu	a5, a5, t2
;  for (i = 0; i < ni; i++)
80002290: b3 04 96 00  	add	s1, a2, s1
80002294: 63 16 08 02  	bnez	a6, 0x800022c0 <.LBB0_186+0x930>
80002298: b3 35 14 01  	sltu	a1, s0, a7
;  for (i = 0; i < ni; i++)
8000229c: 63 e6 c4 02  	bltu	s1, a2, 0x800022c8 <.LBB0_186+0x938>
800022a0: b3 b4 74 00  	sltu	s1, s1, t2
800022a4: 6f 00 80 02  	j	0x800022cc <.LBB0_186+0x93c>
800022a8: 33 37 a4 00  	sltu	a4, s0, a0
;  for (i = 0; i < ni; i++)
800022ac: 13 86 8d 05  	addi	a2, s11, 88
800022b0: e3 fe 17 fd  	bgeu	a5, a7, 0x8000228c <.LBB0_186+0x8fc>
800022b4: 93 07 00 00  	mv	a5, zero
800022b8: b3 04 96 00  	add	s1, a2, s1
800022bc: e3 0e 08 fc  	beqz	a6, 0x80002298 <.LBB0_186+0x908>
800022c0: 93 05 00 00  	mv	a1, zero
800022c4: e3 fe c4 fc  	bgeu	s1, a2, 0x800022a0 <.LBB0_186+0x910>
800022c8: 93 04 00 00  	mv	s1, zero
800022cc: b3 66 d7 00  	or	a3, a4, a3
800022d0: 33 e7 f5 00  	or	a4, a1, a5
800022d4: 63 06 08 00  	beqz	a6, 0x800022e0 <.LBB0_186+0x950>
800022d8: 93 07 00 00  	mv	a5, zero
800022dc: 6f 00 80 00  	j	0x800022e4 <.LBB0_186+0x954>
800022e0: b3 37 c4 00  	sltu	a5, s0, a2
;  for (i = 0; i < ni; i++)
800022e4: b3 e7 97 00  	or	a5, a5, s1
800022e8: b3 f6 e6 00  	and	a3, a3, a4
800022ec: b3 f6 d7 00  	and	a3, a5, a3
800022f0: 13 57 45 01  	srli	a4, a0, 20
800022f4: 33 37 e0 00  	snez	a4, a4
800022f8: b7 f7 11 00  	lui	a5, 287
800022fc: 93 87 17 6a  	addi	a5, a5, 1697
80002300: b3 34 f5 00  	sltu	s1, a0, a5
80002304: 33 77 97 00  	and	a4, a4, s1
80002308: b3 76 d7 00  	and	a3, a4, a3
8000230c: 13 d7 48 01  	srli	a4, a7, 20
80002310: 33 37 e0 00  	snez	a4, a4
80002314: b7 04 12 00  	lui	s1, 288
80002318: 93 84 94 f7  	addi	s1, s1, -135
8000231c: b3 b4 98 00  	sltu	s1, a7, s1
80002320: 33 77 97 00  	and	a4, a4, s1
80002324: b3 76 d7 00  	and	a3, a4, a3
80002328: 13 57 46 01  	srli	a4, a2, 20
8000232c: 33 37 e0 00  	snez	a4, a4
80002330: b3 37 f6 00  	sltu	a5, a2, a5
80002334: 33 77 f7 00  	and	a4, a4, a5
80002338: 93 02 00 00  	mv	t0, zero
8000233c: b3 76 d7 00  	and	a3, a4, a3
80002340: 63 80 06 22  	beqz	a3, 0x80002560 <.LBB0_186+0xbd0>
80002344: 93 06 10 01  	addi	a3, zero, 17
;  for (i = 0; i < ni; i++)
80002348: 13 07 00 04  	addi	a4, zero, 64
8000234c: 93 07 00 0c  	addi	a5, zero, 192
80002350: ab a0 e6 00  	scfgw	a3, a4
80002354: ab 20 f0 00  	scfgw	zero, a5
80002358: 13 08 00 0a  	addi	a6, zero, 160
8000235c: 13 07 f0 00  	addi	a4, zero, 15
80002360: 93 07 00 06  	addi	a5, zero, 96
80002364: 93 04 00 0e  	addi	s1, zero, 224
80002368: ab 20 f7 00  	scfgw	a4, a5
8000236c: ab 20 98 00  	scfgw	a6, s1
80002370: 93 07 00 02  	addi	a5, zero, 32
80002374: ab 20 f0 00  	scfgw	zero, a5
80002378: 2b 20 05 32  	scfgwi	a0, 800
8000237c: 13 05 80 00  	addi	a0, zero, 8
80002380: 93 07 10 00  	addi	a5, zero, 1
80002384: 93 84 07 04  	addi	s1, a5, 64
80002388: ab a0 96 00  	scfgw	a3, s1
8000238c: 93 84 07 0c  	addi	s1, a5, 192
80002390: ab 20 95 00  	scfgw	a0, s1
80002394: 13 05 80 f7  	addi	a0, zero, -136
80002398: 93 84 07 06  	addi	s1, a5, 96
8000239c: ab 20 97 00  	scfgw	a4, s1
800023a0: 93 84 07 0e  	addi	s1, a5, 224
800023a4: ab 20 95 00  	scfgw	a0, s1
800023a8: 13 85 07 02  	addi	a0, a5, 32
800023ac: ab 20 a0 00  	scfgw	zero, a0
800023b0: 2b a0 18 32  	scfgwi	a7, 801
800023b4: 13 05 20 00  	addi	a0, zero, 2
800023b8: 93 05 05 04  	addi	a1, a0, 64
800023bc: 93 07 05 0c  	addi	a5, a0, 192
800023c0: ab a0 b6 00  	scfgw	a3, a1
800023c4: ab 20 f0 00  	scfgw	zero, a5
800023c8: 93 05 05 06  	addi	a1, a0, 96
800023cc: 93 06 05 0e  	addi	a3, a0, 224
800023d0: ab 20 b7 00  	scfgw	a4, a1
800023d4: ab 20 d8 00  	scfgw	a6, a3
800023d8: 13 05 05 02  	addi	a0, a0, 32
800023dc: ab 20 a0 00  	scfgw	zero, a0
800023e0: 2b 20 26 32  	scfgwi	a2, 802
800023e4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800023e8: 13 03 00 09  	addi	t1, zero, 144
800023ec: 93 08 00 01  	addi	a7, zero, 16
800023f0: 93 07 00 00  	mv	a5, zero
;         x += A[i][k] * B[k][j];
800023f4: 33 85 02 03  	mul	a0, t0, a6
800023f8: b3 84 ad 00  	add	s1, s11, a0
800023fc: 13 8e 84 00  	addi	t3, s1, 8
80002400: 93 8e 04 01  	addi	t4, s1, 16
80002404: 13 8f 84 01  	addi	t5, s1, 24
80002408: 93 8f 04 02  	addi	t6, s1, 32
8000240c: 13 89 84 02  	addi	s2, s1, 40
80002410: 93 89 04 03  	addi	s3, s1, 48
80002414: 13 8a 84 03  	addi	s4, s1, 56
80002418: 93 8a 04 04  	addi	s5, s1, 64
8000241c: 13 8b 84 04  	addi	s6, s1, 72
80002420: 93 8b 04 05  	addi	s7, s1, 80
80002424: 13 8c 04 06  	addi	s8, s1, 96
80002428: 93 8c 84 06  	addi	s9, s1, 104
8000242c: 13 8d 04 07  	addi	s10, s1, 112
80002430: 13 87 04 08  	addi	a4, s1, 128
80002434: 93 85 84 08  	addi	a1, s1, 136
80002438: 93 86 04 09  	addi	a3, s1, 144
8000243c: 13 85 84 09  	addi	a0, s1, 152
80002440: 87 b1 04 00  	fld	ft3, 0(s1)
80002444: 33 86 f0 00  	add	a2, ra, a5
80002448: 07 32 06 00  	fld	ft4, 0(a2)
8000244c: 87 32 0e 00  	fld	ft5, 0(t3)
80002450: 07 33 06 09  	fld	ft6, 144(a2)
80002454: 87 b3 0e 00  	fld	ft7, 0(t4)
80002458: 07 35 06 12  	fld	fa0, 288(a2)
8000245c: 87 35 0f 00  	fld	fa1, 0(t5)
80002460: 07 36 06 1b  	fld	fa2, 432(a2)
80002464: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002468: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
8000246c: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002470: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
80002474: 07 b2 0f 00  	fld	ft4, 0(t6)
80002478: 87 32 06 24  	fld	ft5, 576(a2)
8000247c: 07 33 09 00  	fld	ft6, 0(s2)
80002480: 87 33 06 2d  	fld	ft7, 720(a2)
80002484: 07 b5 09 00  	fld	fa0, 0(s3)
80002488: 87 35 06 36  	fld	fa1, 864(a2)
8000248c: 07 36 0a 00  	fld	fa2, 0(s4)
80002490: 87 36 06 3f  	fld	fa3, 1008(a2)
80002494: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002498: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
8000249c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800024a0: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
800024a4: 07 b2 0a 00  	fld	ft4, 0(s5)
800024a8: 87 32 06 48  	fld	ft5, 1152(a2)
800024ac: 07 33 0b 00  	fld	ft6, 0(s6)
800024b0: 87 33 06 51  	fld	ft7, 1296(a2)
800024b4: 07 b5 0b 00  	fld	fa0, 0(s7)
800024b8: 87 36 06 63  	fld	fa3, 1584(a2)
800024bc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024c0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800024c4: c3 f1 a0 1a  	fmadd.d	ft3, ft1, fa0, ft3
800024c8: c3 f1 26 1a  	fmadd.d	ft3, fa3, ft2, ft3
800024cc: 07 32 0c 00  	fld	ft4, 0(s8)
800024d0: 87 32 06 6c  	fld	ft5, 1728(a2)
800024d4: 07 b3 0c 00  	fld	ft6, 0(s9)
800024d8: 87 33 06 75  	fld	ft7, 1872(a2)
800024dc: 07 35 0d 00  	fld	fa0, 0(s10)
800024e0: 87 35 06 7e  	fld	fa1, 2016(a2)
800024e4: 13 04 86 43  	addi	s0, a2, 1080
800024e8: 87 36 84 43  	fld	fa3, 1080(s0)
800024ec: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800024f0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800024f4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800024f8: c3 f1 06 1a  	fmadd.d	ft3, fa3, ft0, ft3
800024fc: 07 32 07 00  	fld	ft4, 0(a4)
80002500: 13 04 06 48  	addi	s0, a2, 1152
80002504: 87 32 04 48  	fld	ft5, 1152(s0)
80002508: 07 b3 05 00  	fld	ft6, 0(a1)
8000250c: 13 04 86 4c  	addi	s0, a2, 1224
80002510: 87 33 84 4c  	fld	ft7, 1224(s0)
80002514: 07 b5 06 00  	fld	fa0, 0(a3)
80002518: 13 04 06 51  	addi	s0, a2, 1296
8000251c: 87 35 04 51  	fld	fa1, 1296(s0)
80002520: 07 36 05 00  	fld	fa2, 0(a0)
80002524: 13 06 86 55  	addi	a2, a2, 1368
80002528: 87 36 86 55  	fld	fa3, 1368(a2)
8000252c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002530: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002534: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002538: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       E[i][j] = x;
8000253c: 33 86 f3 00  	add	a2, t2, a5
;     for (j = 0; j < nj; j++)
80002540: 93 87 87 00  	addi	a5, a5, 8
;       E[i][j] = x;
80002544: 27 30 36 00  	fsd	ft3, 0(a2)
;     for (j = 0; j < nj; j++)
80002548: e3 9c 67 ee  	bne	a5, t1, 0x80002440 <.LBB0_186+0xab0>
;  for (i = 0; i < ni; i++)
8000254c: 93 82 12 00  	addi	t0, t0, 1
80002550: 93 83 03 09  	addi	t2, t2, 144
80002554: e3 9e 12 e9  	bne	t0, a7, 0x800023f0 <.LBB0_186+0xa60>
80002558: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000255c: 6f 00 40 19  	j	0x800026f0 <.LBB0_186+0xd60>
80002560: 13 03 00 09  	addi	t1, zero, 144
80002564: 93 08 00 01  	addi	a7, zero, 16
80002568: 03 28 81 03  	lw	a6, 56(sp)
8000256c: 93 07 00 00  	mv	a5, zero
;         x += A[i][k] * B[k][j];
80002570: 13 05 00 0a  	addi	a0, zero, 160
80002574: 33 85 a2 02  	mul	a0, t0, a0
80002578: b3 84 ad 00  	add	s1, s11, a0
8000257c: 13 8e 84 00  	addi	t3, s1, 8
80002580: 93 8e 04 01  	addi	t4, s1, 16
80002584: 13 8f 84 01  	addi	t5, s1, 24
80002588: 93 8f 04 02  	addi	t6, s1, 32
8000258c: 13 89 84 02  	addi	s2, s1, 40
80002590: 93 89 04 03  	addi	s3, s1, 48
80002594: 13 8a 84 03  	addi	s4, s1, 56
80002598: 93 8a 04 04  	addi	s5, s1, 64
8000259c: 13 8b 84 04  	addi	s6, s1, 72
800025a0: 93 8b 04 05  	addi	s7, s1, 80
800025a4: 13 8c 84 05  	addi	s8, s1, 88
800025a8: 93 8c 04 06  	addi	s9, s1, 96
800025ac: 13 8d 84 06  	addi	s10, s1, 104
800025b0: 93 8d 04 07  	addi	s11, s1, 112
800025b4: 93 80 84 07  	addi	ra, s1, 120
800025b8: 13 85 04 08  	addi	a0, s1, 128
800025bc: 13 86 84 08  	addi	a2, s1, 136
800025c0: 13 87 04 09  	addi	a4, s1, 144
800025c4: 13 84 84 09  	addi	s0, s1, 152
800025c8: 87 b1 04 00  	fld	ft3, 0(s1)
800025cc: b3 05 f8 00  	add	a1, a6, a5
800025d0: 07 b2 05 00  	fld	ft4, 0(a1)
800025d4: 87 32 0e 00  	fld	ft5, 0(t3)
800025d8: 07 b3 05 09  	fld	ft6, 144(a1)
800025dc: 87 b3 0e 00  	fld	ft7, 0(t4)
800025e0: 07 b5 05 12  	fld	fa0, 288(a1)
800025e4: 87 35 0f 00  	fld	fa1, 0(t5)
800025e8: 07 b6 05 1b  	fld	fa2, 432(a1)
800025ec: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800025f0: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
800025f4: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
800025f8: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
800025fc: 07 b2 0f 00  	fld	ft4, 0(t6)
80002600: 87 b2 05 24  	fld	ft5, 576(a1)
80002604: 07 33 09 00  	fld	ft6, 0(s2)
80002608: 87 b3 05 2d  	fld	ft7, 720(a1)
8000260c: 07 b5 09 00  	fld	fa0, 0(s3)
80002610: 87 b5 05 36  	fld	fa1, 864(a1)
80002614: 07 36 0a 00  	fld	fa2, 0(s4)
80002618: 87 b6 05 3f  	fld	fa3, 1008(a1)
8000261c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002620: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002624: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002628: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
8000262c: 07 b2 0a 00  	fld	ft4, 0(s5)
80002630: 87 b2 05 48  	fld	ft5, 1152(a1)
80002634: 07 33 0b 00  	fld	ft6, 0(s6)
80002638: 87 b3 05 51  	fld	ft7, 1296(a1)
8000263c: 07 b5 0b 00  	fld	fa0, 0(s7)
80002640: 87 b5 05 5a  	fld	fa1, 1440(a1)
80002644: 07 36 0c 00  	fld	fa2, 0(s8)
80002648: 87 b6 05 63  	fld	fa3, 1584(a1)
8000264c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002650: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002654: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002658: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
8000265c: 07 b2 0c 00  	fld	ft4, 0(s9)
80002660: 87 b2 05 6c  	fld	ft5, 1728(a1)
80002664: 07 33 0d 00  	fld	ft6, 0(s10)
80002668: 87 b3 05 75  	fld	ft7, 1872(a1)
8000266c: 07 b5 0d 00  	fld	fa0, 0(s11)
80002670: 87 b5 05 7e  	fld	fa1, 2016(a1)
80002674: 07 b6 00 00  	fld	fa2, 0(ra)
80002678: 93 86 85 43  	addi	a3, a1, 1080
8000267c: 87 b6 86 43  	fld	fa3, 1080(a3)
80002680: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002684: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002688: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000268c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002690: 07 32 05 00  	fld	ft4, 0(a0)
80002694: 93 86 05 48  	addi	a3, a1, 1152
80002698: 87 b2 06 48  	fld	ft5, 1152(a3)
8000269c: 07 33 06 00  	fld	ft6, 0(a2)
800026a0: 93 86 85 4c  	addi	a3, a1, 1224
800026a4: 87 b3 86 4c  	fld	ft7, 1224(a3)
800026a8: 07 35 07 00  	fld	fa0, 0(a4)
800026ac: 93 86 05 51  	addi	a3, a1, 1296
800026b0: 87 b5 06 51  	fld	fa1, 1296(a3)
800026b4: 07 36 04 00  	fld	fa2, 0(s0)
800026b8: 93 85 85 55  	addi	a1, a1, 1368
800026bc: 87 b6 85 55  	fld	fa3, 1368(a1)
800026c0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800026c4: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800026c8: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800026cc: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       E[i][j] = x;
800026d0: b3 85 f3 00  	add	a1, t2, a5
;     for (j = 0; j < nj; j++)
800026d4: 93 87 87 00  	addi	a5, a5, 8
;       E[i][j] = x;
800026d8: 27 b0 35 00  	fsd	ft3, 0(a1)
;     for (j = 0; j < nj; j++)
800026dc: e3 96 67 ee  	bne	a5, t1, 0x800025c8 <.LBB0_186+0xc38>
;  for (i = 0; i < ni; i++)
800026e0: 93 82 12 00  	addi	t0, t0, 1
800026e4: 93 83 03 09  	addi	t2, t2, 144
800026e8: 83 2d 01 03  	lw	s11, 48(sp)
800026ec: e3 90 12 e9  	bne	t0, a7, 0x8000256c <.LBB0_186+0xbdc>
800026f0: 03 2e 41 03  	lw	t3, 52(sp)
800026f4: 83 27 41 02  	lw	a5, 36(sp)
;   for (i = 0; i < nj; i++)
800026f8: 33 85 c7 01  	add	a0, a5, t3
800026fc: b3 35 f5 00  	sltu	a1, a0, a5
80002700: 93 03 85 2f  	addi	t2, a0, 760
80002704: 33 b5 a3 00  	sltu	a0, t2, a0
80002708: 33 84 a5 00  	add	s0, a1, a0
8000270c: 83 24 c1 03  	lw	s1, 60(sp)
80002710: 33 85 97 00  	add	a0, a5, s1
80002714: 33 36 f5 00  	sltu	a2, a0, a5
80002718: 93 05 85 41  	addi	a1, a0, 1048
8000271c: 33 b5 a5 00  	sltu	a0, a1, a0
80002720: 33 06 a6 00  	add	a2, a2, a0
80002724: b7 16 00 00  	lui	a3, 1
80002728: 63 06 04 00  	beqz	s0, 0x80002734 <.LBB0_186+0xda4>
8000272c: 13 05 00 00  	mv	a0, zero
80002730: 6f 00 80 00  	j	0x80002738 <.LBB0_186+0xda8>
80002734: 33 b5 93 00  	sltu	a0, t2, s1
80002738: 83 28 c1 04  	lw	a7, 76(sp)
8000273c: 93 86 86 07  	addi	a3, a3, 120
;   for (i = 0; i < nj; i++)
80002740: 63 02 06 02  	beqz	a2, 0x80002764 <.LBB0_186+0xdd4>
80002744: 93 05 00 00  	mv	a1, zero
80002748: b3 86 d8 00  	add	a3, a7, a3
8000274c: 63 12 04 02  	bnez	s0, 0x80002770 <.LBB0_186+0xde0>
80002750: 33 b6 13 01  	sltu	a2, t2, a7
;   for (i = 0; i < nj; i++)
80002754: 33 65 b5 00  	or	a0, a0, a1
80002758: 63 e2 16 03  	bltu	a3, a7, 0x8000277c <.LBB0_186+0xdec>
8000275c: b3 b5 c6 01  	sltu	a1, a3, t3
80002760: 6f 00 00 02  	j	0x80002780 <.LBB0_186+0xdf0>
80002764: b3 b5 c5 01  	sltu	a1, a1, t3
;   for (i = 0; i < nj; i++)
80002768: b3 86 d8 00  	add	a3, a7, a3
8000276c: e3 02 04 fe  	beqz	s0, 0x80002750 <.LBB0_186+0xdc0>
80002770: 13 06 00 00  	mv	a2, zero
80002774: 33 65 b5 00  	or	a0, a0, a1
80002778: e3 f2 16 ff  	bgeu	a3, a7, 0x8000275c <.LBB0_186+0xdcc>
8000277c: 93 05 00 00  	mv	a1, zero
80002780: b3 65 b6 00  	or	a1, a2, a1
80002784: 33 75 b5 00  	and	a0, a0, a1
80002788: 93 55 4e 01  	srli	a1, t3, 20
8000278c: b3 35 b0 00  	snez	a1, a1
80002790: 37 f6 11 00  	lui	a2, 287
80002794: 13 06 96 3a  	addi	a2, a2, 937
80002798: 33 36 ce 00  	sltu	a2, t3, a2
8000279c: b3 f5 c5 00  	and	a1, a1, a2
800027a0: 23 24 b1 00  	sw	a1, 8(sp)
800027a4: 33 f5 a5 00  	and	a0, a1, a0
800027a8: 83 25 01 02  	lw	a1, 32(sp)
800027ac: 33 f5 a5 00  	and	a0, a1, a0
800027b0: 83 25 01 01  	lw	a1, 16(sp)
800027b4: 33 f5 a5 00  	and	a0, a1, a0
800027b8: 23 20 71 00  	sw	t2, 0(sp)
800027bc: 23 2c 81 00  	sw	s0, 24(sp)
800027c0: 63 00 05 16  	beqz	a0, 0x80002920 <.LBB0_186+0xf90>
800027c4: 13 05 00 00  	mv	a0, zero
800027c8: 93 05 80 00  	addi	a1, zero, 8
800027cc: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < nj; i++)
800027d0: 93 06 00 04  	addi	a3, zero, 64
800027d4: 13 07 00 0c  	addi	a4, zero, 192
800027d8: ab 20 d6 00  	scfgw	a2, a3
800027dc: ab a0 e5 00  	scfgw	a1, a4
800027e0: 93 06 10 01  	addi	a3, zero, 17
800027e4: 13 07 00 06  	addi	a4, zero, 96
800027e8: 93 07 00 0e  	addi	a5, zero, 224
800027ec: ab a0 e6 00  	scfgw	a3, a4
800027f0: ab a0 f5 00  	scfgw	a1, a5
800027f4: 13 07 00 02  	addi	a4, zero, 32
800027f8: ab 20 e0 00  	scfgw	zero, a4
800027fc: 2b 20 0e 3a  	scfgwi	t3, 928
80002800: 13 08 70 01  	addi	a6, zero, 23
80002804: 93 07 10 00  	addi	a5, zero, 1
80002808: 13 87 07 04  	addi	a4, a5, 64
8000280c: 13 84 07 0c  	addi	s0, a5, 192
80002810: ab 20 e8 00  	scfgw	a6, a4
80002814: ab a0 85 00  	scfgw	a1, s0
80002818: 13 07 80 f4  	addi	a4, zero, -184
8000281c: 13 84 07 06  	addi	s0, a5, 96
80002820: ab 20 86 00  	scfgw	a2, s0
80002824: 13 84 07 0e  	addi	s0, a5, 224
80002828: ab 20 87 00  	scfgw	a4, s0
8000282c: 13 87 07 08  	addi	a4, a5, 128
80002830: 13 84 07 10  	addi	s0, a5, 256
80002834: ab a0 e6 00  	scfgw	a3, a4
80002838: ab a0 85 00  	scfgw	a1, s0
8000283c: 93 85 07 02  	addi	a1, a5, 32
80002840: ab 20 b0 00  	scfgw	zero, a1
80002844: 2b a0 14 34  	scfgwi	s1, 833
80002848: 93 05 00 0b  	addi	a1, zero, 176
8000284c: 93 07 20 00  	addi	a5, zero, 2
80002850: 93 84 07 04  	addi	s1, a5, 64
80002854: 13 84 07 0c  	addi	s0, a5, 192
80002858: ab 20 98 00  	scfgw	a6, s1
8000285c: ab a0 85 00  	scfgw	a1, s0
80002860: b7 f5 ff ff  	lui	a1, 1048575
80002864: 13 87 85 03  	addi	a4, a1, 56
80002868: 93 84 07 06  	addi	s1, a5, 96
8000286c: 13 84 07 0e  	addi	s0, a5, 224
80002870: ab 20 96 00  	scfgw	a2, s1
80002874: ab 20 87 00  	scfgw	a4, s0
80002878: 93 85 85 f8  	addi	a1, a1, -120
8000287c: 13 86 07 08  	addi	a2, a5, 128
80002880: 13 87 07 10  	addi	a4, a5, 256
80002884: ab a0 c6 00  	scfgw	a3, a2
80002888: ab a0 e5 00  	scfgw	a1, a4
8000288c: 93 85 07 02  	addi	a1, a5, 32
80002890: ab 20 b0 00  	scfgw	zero, a1
80002894: 2b a0 28 34  	scfgwi	a7, 834
80002898: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000289c: 93 05 20 01  	addi	a1, zero, 18
800028a0: 13 06 60 01  	addi	a2, zero, 22
;         x += C[i][k] * D[k][j];
800028a4: d3 81 10 22  	fmv.d	ft3, ft1
800028a8: d3 71 31 12  	fmul.d	ft3, ft2, ft3
800028ac: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028b0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028b4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028b8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028bc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028c0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028c4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028c8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028cc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028d0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028d4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028d8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028dc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028e0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028e4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028e8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028ec: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028f0: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028f4: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028f8: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
800028fc: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002900: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80002904: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       F[i][j] = x;
80002908: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
8000290c: 13 06 f6 ff  	addi	a2, a2, -1
80002910: e3 1a 06 f8  	bnez	a2, 0x800028a4 <.LBB0_186+0xf14>
;   for (i = 0; i < nj; i++)
80002914: 13 05 15 00  	addi	a0, a0, 1
80002918: e3 14 b5 f8  	bne	a0, a1, 0x800028a0 <.LBB0_186+0xf10>
8000291c: 6f 00 00 37  	j	0x80002c8c <.LBB0_186+0x12fc>
;   for (i = 0; i < nj; i++)
80002920: 13 83 04 09  	addi	t1, s1, 144
80002924: 13 87 07 36  	addi	a4, a5, 864
80002928: b3 36 f7 00  	sltu	a3, a4, a5
8000292c: 33 05 e3 00  	add	a0, t1, a4
80002930: b3 35 65 00  	sltu	a1, a0, t1
80002934: b3 87 b6 00  	add	a5, a3, a1
80002938: 93 85 08 42  	addi	a1, a7, 1056
8000293c: 13 86 48 47  	addi	a2, a7, 1140
80002940: 13 88 84 06  	addi	a6, s1, 104
80002944: 63 86 07 00  	beqz	a5, 0x80002950 <.LBB0_186+0xfc0>
80002948: 93 02 00 00  	mv	t0, zero
8000294c: 6f 00 80 00  	j	0x80002954 <.LBB0_186+0xfc4>
80002950: b3 32 c5 01  	sltu	t0, a0, t3
;   for (i = 0; i < nj; i++)
80002954: b3 07 e8 00  	add	a5, a6, a4
80002958: 93 8e 05 42  	addi	t4, a1, 1056
8000295c: 93 05 46 47  	addi	a1, a2, 1140
80002960: 63 06 04 02  	beqz	s0, 0x8000298c <.LBB0_186+0xffc>
80002964: 13 05 00 00  	mv	a0, zero
80002968: 33 b6 07 01  	sltu	a2, a5, a6
8000296c: 63 e6 d5 03  	bltu	a1, t4, 0x80002998 <.LBB0_186+0x1008>
80002970: b3 b5 c5 01  	sltu	a1, a1, t3
;   for (i = 0; i < nj; i++)
80002974: b3 86 c6 00  	add	a3, a3, a2
80002978: 63 16 04 02  	bnez	s0, 0x800029a4 <.LBB0_186+0x1014>
8000297c: 33 b7 d3 01  	sltu	a4, t2, t4
;   for (i = 0; i < nj; i++)
80002980: 63 96 06 02  	bnez	a3, 0x800029ac <.LBB0_186+0x101c>
80002984: b3 b6 c7 01  	sltu	a3, a5, t3
80002988: 6f 00 80 02  	j	0x800029b0 <.LBB0_186+0x1020>
8000298c: 33 b5 63 00  	sltu	a0, t2, t1
;   for (i = 0; i < nj; i++)
80002990: 33 b6 07 01  	sltu	a2, a5, a6
80002994: e3 fe d5 fd  	bgeu	a1, t4, 0x80002970 <.LBB0_186+0xfe0>
80002998: 93 05 00 00  	mv	a1, zero
8000299c: b3 86 c6 00  	add	a3, a3, a2
800029a0: e3 0e 04 fc  	beqz	s0, 0x8000297c <.LBB0_186+0xfec>
800029a4: 13 07 00 00  	mv	a4, zero
800029a8: e3 8e 06 fc  	beqz	a3, 0x80002984 <.LBB0_186+0xff4>
800029ac: 93 06 00 00  	mv	a3, zero
800029b0: 33 65 55 00  	or	a0, a0, t0
800029b4: 33 67 b7 00  	or	a4, a4, a1
800029b8: 63 06 04 00  	beqz	s0, 0x800029c4 <.LBB0_186+0x1034>
800029bc: 93 07 00 00  	mv	a5, zero
800029c0: 6f 00 80 00  	j	0x800029c8 <.LBB0_186+0x1038>
800029c4: b3 b7 03 01  	sltu	a5, t2, a6
;   for (i = 0; i < nj; i++)
800029c8: b3 e6 d7 00  	or	a3, a5, a3
800029cc: 33 75 e5 00  	and	a0, a0, a4
800029d0: 33 f5 a6 00  	and	a0, a3, a0
800029d4: 93 56 43 01  	srli	a3, t1, 20
800029d8: b3 36 d0 00  	snez	a3, a3
800029dc: 37 f7 11 00  	lui	a4, 287
800029e0: 13 07 17 34  	addi	a4, a4, 833
800029e4: b3 37 e3 00  	sltu	a5, t1, a4
800029e8: b3 f6 f6 00  	and	a3, a3, a5
800029ec: 33 f5 a6 00  	and	a0, a3, a0
800029f0: 93 d6 4e 01  	srli	a3, t4, 20
800029f4: b3 36 d0 00  	snez	a3, a3
800029f8: b7 07 12 00  	lui	a5, 288
800029fc: 93 87 97 f5  	addi	a5, a5, -167
80002a00: b3 b7 fe 00  	sltu	a5, t4, a5
80002a04: b3 f6 f6 00  	and	a3, a3, a5
80002a08: 33 f5 a6 00  	and	a0, a3, a0
80002a0c: 93 56 48 01  	srli	a3, a6, 20
80002a10: b3 36 d0 00  	snez	a3, a3
80002a14: 33 37 e8 00  	sltu	a4, a6, a4
80002a18: b3 f6 e6 00  	and	a3, a3, a4
80002a1c: 33 f5 a6 00  	and	a0, a3, a0
80002a20: 63 0a 05 26  	beqz	a0, 0x80002c94 <.LBB0_186+0x1304>
80002a24: 93 05 00 00  	mv	a1, zero
80002a28: 13 05 50 01  	addi	a0, zero, 21
;   for (i = 0; i < nj; i++)
80002a2c: 93 06 00 04  	addi	a3, zero, 64
80002a30: 13 07 00 0c  	addi	a4, zero, 192
80002a34: ab 20 d5 00  	scfgw	a0, a3
80002a38: ab 20 e0 00  	scfgw	zero, a4
80002a3c: 13 04 00 0c  	addi	s0, zero, 192
80002a40: 93 06 10 01  	addi	a3, zero, 17
80002a44: 13 07 00 06  	addi	a4, zero, 96
80002a48: 93 07 00 0e  	addi	a5, zero, 224
80002a4c: ab a0 e6 00  	scfgw	a3, a4
80002a50: ab 20 f4 00  	scfgw	s0, a5
80002a54: 13 07 00 02  	addi	a4, zero, 32
80002a58: ab 20 e0 00  	scfgw	zero, a4
80002a5c: 2b 20 03 32  	scfgwi	t1, 800
80002a60: 13 06 80 00  	addi	a2, zero, 8
80002a64: 13 07 10 00  	addi	a4, zero, 1
80002a68: 93 07 07 04  	addi	a5, a4, 64
80002a6c: ab 20 f5 00  	scfgw	a0, a5
80002a70: 93 07 07 0c  	addi	a5, a4, 192
80002a74: ab 20 f6 00  	scfgw	a2, a5
80002a78: 13 06 80 f5  	addi	a2, zero, -168
80002a7c: 93 07 07 06  	addi	a5, a4, 96
80002a80: ab a0 f6 00  	scfgw	a3, a5
80002a84: 93 07 07 0e  	addi	a5, a4, 224
80002a88: ab 20 f6 00  	scfgw	a2, a5
80002a8c: 13 06 07 02  	addi	a2, a4, 32
80002a90: ab 20 c0 00  	scfgw	zero, a2
80002a94: 2b a0 1e 32  	scfgwi	t4, 801
80002a98: 13 06 20 00  	addi	a2, zero, 2
80002a9c: 13 07 06 04  	addi	a4, a2, 64
80002aa0: 93 07 06 0c  	addi	a5, a2, 192
80002aa4: ab 20 e5 00  	scfgw	a0, a4
80002aa8: ab 20 f0 00  	scfgw	zero, a5
80002aac: 13 05 06 06  	addi	a0, a2, 96
80002ab0: 13 07 06 0e  	addi	a4, a2, 224
80002ab4: ab a0 a6 00  	scfgw	a3, a0
80002ab8: ab 20 e4 00  	scfgw	s0, a4
80002abc: 13 05 06 02  	addi	a0, a2, 32
80002ac0: ab 20 a0 00  	scfgw	zero, a0
80002ac4: 2b 20 28 32  	scfgwi	a6, 802
80002ac8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80002acc: 13 85 88 47  	addi	a0, a7, 1144
80002ad0: 93 0a 85 47  	addi	s5, a0, 1144
80002ad4: 13 0a 00 0b  	addi	s4, zero, 176
80002ad8: 13 0b 0e 00  	mv	s6, t3
80002adc: 93 07 00 00  	mv	a5, zero
80002ae0: 23 24 b1 04  	sw	a1, 72(sp)
;         x += C[i][k] * D[k][j];
80002ae4: 13 05 00 0c  	addi	a0, zero, 192
80002ae8: 33 85 a5 02  	mul	a0, a1, a0
80002aec: 33 84 a4 00  	add	s0, s1, a0
80002af0: 93 0b 84 00  	addi	s7, s0, 8
80002af4: 13 0c 04 01  	addi	s8, s0, 16
80002af8: 93 0c 84 01  	addi	s9, s0, 24
80002afc: 13 0d 04 02  	addi	s10, s0, 32
80002b00: 93 0d 84 02  	addi	s11, s0, 40
80002b04: 93 00 04 03  	addi	ra, s0, 48
80002b08: 93 09 84 03  	addi	s3, s0, 56
80002b0c: 13 06 04 04  	addi	a2, s0, 64
80002b10: 93 06 84 04  	addi	a3, s0, 72
80002b14: 93 05 04 05  	addi	a1, s0, 80
80002b18: 13 05 84 05  	addi	a0, s0, 88
80002b1c: 13 07 04 06  	addi	a4, s0, 96
80002b20: 93 02 04 07  	addi	t0, s0, 112
80002b24: 13 0f 84 07  	addi	t5, s0, 120
80002b28: 93 03 04 08  	addi	t2, s0, 128
80002b2c: 13 0e 84 08  	addi	t3, s0, 136
80002b30: 13 08 84 09  	addi	a6, s0, 152
80002b34: 93 08 04 0a  	addi	a7, s0, 160
80002b38: 13 03 84 0a  	addi	t1, s0, 168
80002b3c: 93 0e 04 0b  	addi	t4, s0, 176
80002b40: 93 0f 84 0b  	addi	t6, s0, 184
80002b44: 87 31 04 00  	fld	ft3, 0(s0)
80002b48: 83 24 c1 04  	lw	s1, 76(sp)
80002b4c: 33 89 f4 00  	add	s2, s1, a5
80002b50: 07 32 09 00  	fld	ft4, 0(s2)
80002b54: 87 b2 0b 00  	fld	ft5, 0(s7)
80002b58: 07 33 09 0b  	fld	ft6, 176(s2)
80002b5c: 87 33 0c 00  	fld	ft7, 0(s8)
80002b60: 07 35 09 16  	fld	fa0, 352(s2)
80002b64: 87 b5 0c 00  	fld	fa1, 0(s9)
80002b68: 07 36 09 21  	fld	fa2, 528(s2)
80002b6c: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002b70: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002b74: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002b78: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
80002b7c: 07 32 0d 00  	fld	ft4, 0(s10)
80002b80: 87 32 09 2c  	fld	ft5, 704(s2)
80002b84: 07 b3 0d 00  	fld	ft6, 0(s11)
80002b88: 87 33 09 37  	fld	ft7, 880(s2)
80002b8c: 07 b5 00 00  	fld	fa0, 0(ra)
80002b90: 87 35 09 42  	fld	fa1, 1056(s2)
80002b94: 07 b6 09 00  	fld	fa2, 0(s3)
80002b98: 87 36 09 4d  	fld	fa3, 1232(s2)
80002b9c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002ba0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002ba4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002ba8: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002bac: 07 32 06 00  	fld	ft4, 0(a2)
80002bb0: 87 32 09 58  	fld	ft5, 1408(s2)
80002bb4: 07 b3 06 00  	fld	ft6, 0(a3)
80002bb8: 87 33 09 63  	fld	ft7, 1584(s2)
80002bbc: 07 b5 05 00  	fld	fa0, 0(a1)
80002bc0: 87 35 09 6e  	fld	fa1, 1760(s2)
80002bc4: 07 36 05 00  	fld	fa2, 0(a0)
80002bc8: 87 36 09 79  	fld	fa3, 1936(s2)
80002bcc: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002bd0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002bd4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002bd8: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002bdc: 07 32 07 00  	fld	ft4, 0(a4)
80002be0: b3 84 fa 00  	add	s1, s5, a5
80002be4: 87 b3 04 00  	fld	ft7, 0(s1)
80002be8: 07 b5 02 00  	fld	fa0, 0(t0)
80002bec: 87 b5 04 0b  	fld	fa1, 176(s1)
80002bf0: 07 36 0f 00  	fld	fa2, 0(t5)
80002bf4: 87 b6 04 16  	fld	fa3, 352(s1)
80002bf8: c3 f1 40 1a  	fmadd.d	ft3, ft1, ft4, ft3
80002bfc: c3 f1 23 1a  	fmadd.d	ft3, ft7, ft2, ft3
80002c00: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002c04: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002c08: 07 b2 03 00  	fld	ft4, 0(t2)
80002c0c: 87 b2 04 21  	fld	ft5, 528(s1)
80002c10: 07 33 0e 00  	fld	ft6, 0(t3)
80002c14: 87 b3 04 2c  	fld	ft7, 704(s1)
80002c18: 87 b5 04 37  	fld	fa1, 880(s1)
80002c1c: 07 36 08 00  	fld	fa2, 0(a6)
80002c20: 87 b6 04 42  	fld	fa3, 1056(s1)
80002c24: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002c28: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002c2c: c3 f1 05 1a  	fmadd.d	ft3, fa1, ft0, ft3
80002c30: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002c34: 07 b2 08 00  	fld	ft4, 0(a7)
80002c38: 87 b2 04 4d  	fld	ft5, 1232(s1)
80002c3c: 07 33 03 00  	fld	ft6, 0(t1)
80002c40: 87 b3 04 58  	fld	ft7, 1408(s1)
80002c44: 07 b5 0e 00  	fld	fa0, 0(t4)
80002c48: 87 b5 04 63  	fld	fa1, 1584(s1)
80002c4c: 07 b6 0f 00  	fld	fa2, 0(t6)
80002c50: 87 b6 04 6e  	fld	fa3, 1760(s1)
80002c54: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002c58: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002c5c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002c60: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       F[i][j] = x;
80002c64: b3 04 fb 00  	add	s1, s6, a5
;     for (j = 0; j < nl; j++)
80002c68: 93 87 87 00  	addi	a5, a5, 8
;       F[i][j] = x;
80002c6c: 27 b0 34 00  	fsd	ft3, 0(s1)
;     for (j = 0; j < nl; j++)
80002c70: e3 9a 47 ed  	bne	a5, s4, 0x80002b44 <.LBB0_186+0x11b4>
80002c74: 83 25 81 04  	lw	a1, 72(sp)
;   for (i = 0; i < nj; i++)
80002c78: 93 85 15 00  	addi	a1, a1, 1
80002c7c: 13 0b 0b 0b  	addi	s6, s6, 176
80002c80: 83 24 c1 03  	lw	s1, 60(sp)
80002c84: 13 05 20 01  	addi	a0, zero, 18
80002c88: e3 9a a5 e4  	bne	a1, a0, 0x80002adc <.LBB0_186+0x114c>
80002c8c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002c90: 6f 00 40 1f  	j	0x80002e84 <.LBB0_186+0x14f4>
80002c94: 23 28 d1 03  	sw	t4, 48(sp)
80002c98: 13 05 00 00  	mv	a0, zero
80002c9c: 93 06 0e 00  	mv	a3, t3
80002ca0: 03 2e c1 04  	lw	t3, 76(sp)
80002ca4: 83 2e 01 03  	lw	t4, 48(sp)
80002ca8: 93 07 00 00  	mv	a5, zero
80002cac: 23 2c a1 02  	sw	a0, 56(sp)
;         x += C[i][k] * D[k][j];
80002cb0: 93 05 00 0c  	addi	a1, zero, 192
80002cb4: 33 05 b5 02  	mul	a0, a0, a1
80002cb8: 33 84 a4 00  	add	s0, s1, a0
80002cbc: 13 05 84 00  	addi	a0, s0, 8
80002cc0: 23 24 a1 04  	sw	a0, 72(sp)
80002cc4: 13 05 04 01  	addi	a0, s0, 16
80002cc8: 23 22 a1 04  	sw	a0, 68(sp)
80002ccc: 13 05 84 01  	addi	a0, s0, 24
80002cd0: 23 20 a1 04  	sw	a0, 64(sp)
80002cd4: 13 09 04 02  	addi	s2, s0, 32
80002cd8: 93 09 84 02  	addi	s3, s0, 40
80002cdc: 13 0a 04 03  	addi	s4, s0, 48
80002ce0: 93 0a 84 03  	addi	s5, s0, 56
80002ce4: 13 0b 04 04  	addi	s6, s0, 64
80002ce8: 93 0b 84 04  	addi	s7, s0, 72
80002cec: 13 0c 04 05  	addi	s8, s0, 80
80002cf0: 93 0c 84 05  	addi	s9, s0, 88
80002cf4: 13 0d 04 06  	addi	s10, s0, 96
80002cf8: 93 0d 84 06  	addi	s11, s0, 104
80002cfc: 93 00 04 07  	addi	ra, s0, 112
80002d00: 93 03 84 07  	addi	t2, s0, 120
80002d04: 13 0f 04 08  	addi	t5, s0, 128
80002d08: 93 0f 84 08  	addi	t6, s0, 136
80002d0c: 93 04 04 09  	addi	s1, s0, 144
80002d10: 13 06 84 09  	addi	a2, s0, 152
80002d14: 13 07 04 0a  	addi	a4, s0, 160
80002d18: 13 08 84 0a  	addi	a6, s0, 168
80002d1c: 93 08 04 0b  	addi	a7, s0, 176
80002d20: 93 02 84 0b  	addi	t0, s0, 184
80002d24: 87 31 04 00  	fld	ft3, 0(s0)
80002d28: 33 03 fe 00  	add	t1, t3, a5
80002d2c: 07 32 03 00  	fld	ft4, 0(t1)
80002d30: 03 25 81 04  	lw	a0, 72(sp)
80002d34: 87 32 05 00  	fld	ft5, 0(a0)
80002d38: 07 33 03 0b  	fld	ft6, 176(t1)
80002d3c: 03 25 41 04  	lw	a0, 68(sp)
80002d40: 87 33 05 00  	fld	ft7, 0(a0)
80002d44: 07 35 03 16  	fld	fa0, 352(t1)
80002d48: 03 25 01 04  	lw	a0, 64(sp)
80002d4c: 87 35 05 00  	fld	fa1, 0(a0)
80002d50: 07 36 03 21  	fld	fa2, 528(t1)
80002d54: d3 71 32 12  	fmul.d	ft3, ft4, ft3
80002d58: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80002d5c: c3 71 75 1a  	fmadd.d	ft3, fa0, ft7, ft3
80002d60: c3 71 b6 1a  	fmadd.d	ft3, fa2, fa1, ft3
80002d64: 07 32 09 00  	fld	ft4, 0(s2)
80002d68: 87 32 03 2c  	fld	ft5, 704(t1)
80002d6c: 07 b3 09 00  	fld	ft6, 0(s3)
80002d70: 87 33 03 37  	fld	ft7, 880(t1)
80002d74: 07 35 0a 00  	fld	fa0, 0(s4)
80002d78: 87 35 03 42  	fld	fa1, 1056(t1)
80002d7c: 07 b6 0a 00  	fld	fa2, 0(s5)
80002d80: 87 36 03 4d  	fld	fa3, 1232(t1)
80002d84: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002d88: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002d8c: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002d90: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002d94: 07 32 0b 00  	fld	ft4, 0(s6)
80002d98: 87 32 03 58  	fld	ft5, 1408(t1)
80002d9c: 07 b3 0b 00  	fld	ft6, 0(s7)
80002da0: 87 33 03 63  	fld	ft7, 1584(t1)
80002da4: 07 35 0c 00  	fld	fa0, 0(s8)
80002da8: 87 35 03 6e  	fld	fa1, 1760(t1)
80002dac: 07 b6 0c 00  	fld	fa2, 0(s9)
80002db0: 87 36 03 79  	fld	fa3, 1936(t1)
80002db4: 13 05 00 0b  	addi	a0, zero, 176
80002db8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002dbc: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002dc0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002dc4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002dc8: 07 32 0d 00  	fld	ft4, 0(s10)
80002dcc: b3 85 fe 00  	add	a1, t4, a5
80002dd0: 87 b2 05 00  	fld	ft5, 0(a1)
80002dd4: 07 b3 0d 00  	fld	ft6, 0(s11)
80002dd8: 87 b3 05 0b  	fld	ft7, 176(a1)
80002ddc: 07 b5 00 00  	fld	fa0, 0(ra)
80002de0: 87 b5 05 16  	fld	fa1, 352(a1)
80002de4: 07 b6 03 00  	fld	fa2, 0(t2)
80002de8: 87 b6 05 21  	fld	fa3, 528(a1)
80002dec: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002df0: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002df4: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002df8: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002dfc: 07 32 0f 00  	fld	ft4, 0(t5)
80002e00: 87 b2 05 2c  	fld	ft5, 704(a1)
80002e04: 07 b3 0f 00  	fld	ft6, 0(t6)
80002e08: 87 b3 05 37  	fld	ft7, 880(a1)
80002e0c: 07 b5 04 00  	fld	fa0, 0(s1)
80002e10: 87 b5 05 42  	fld	fa1, 1056(a1)
80002e14: 07 36 06 00  	fld	fa2, 0(a2)
80002e18: 87 b6 05 4d  	fld	fa3, 1232(a1)
80002e1c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e20: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002e24: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002e28: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80002e2c: 07 32 07 00  	fld	ft4, 0(a4)
80002e30: 87 b2 05 58  	fld	ft5, 1408(a1)
80002e34: 07 33 08 00  	fld	ft6, 0(a6)
80002e38: 87 b3 05 63  	fld	ft7, 1584(a1)
80002e3c: 07 b5 08 00  	fld	fa0, 0(a7)
80002e40: 87 b5 05 6e  	fld	fa1, 1760(a1)
80002e44: 07 b6 02 00  	fld	fa2, 0(t0)
80002e48: 87 b6 05 79  	fld	fa3, 1936(a1)
80002e4c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80002e50: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80002e54: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80002e58: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       F[i][j] = x;
80002e5c: b3 85 f6 00  	add	a1, a3, a5
;     for (j = 0; j < nl; j++)
80002e60: 93 87 87 00  	addi	a5, a5, 8
;       F[i][j] = x;
80002e64: 27 b0 35 00  	fsd	ft3, 0(a1)
;     for (j = 0; j < nl; j++)
80002e68: e3 9e a7 ea  	bne	a5, a0, 0x80002d24 <.LBB0_186+0x1394>
80002e6c: 03 25 81 03  	lw	a0, 56(sp)
;   for (i = 0; i < nj; i++)
80002e70: 13 05 15 00  	addi	a0, a0, 1
80002e74: 93 86 06 0b  	addi	a3, a3, 176
80002e78: 83 24 c1 03  	lw	s1, 60(sp)
80002e7c: 93 05 20 01  	addi	a1, zero, 18
80002e80: e3 14 b5 e2  	bne	a0, a1, 0x80002ca8 <.LBB0_186+0x1318>
80002e84: 03 2e c1 02  	lw	t3, 44(sp)
80002e88: 83 24 41 02  	lw	s1, 36(sp)
;   for (i = 0; i < ni; i++)
80002e8c: 33 85 c4 01  	add	a0, s1, t3
80002e90: b3 35 95 00  	sltu	a1, a0, s1
80002e94: 93 06 85 19  	addi	a3, a0, 408
80002e98: 33 b5 a6 00  	sltu	a0, a3, a0
80002e9c: 33 87 a5 00  	add	a4, a1, a0
80002ea0: 63 0a 07 00  	beqz	a4, 0x80002eb4 <.LBB0_186+0x1524>
80002ea4: 13 05 00 00  	mv	a0, zero
80002ea8: 83 20 81 02  	lw	ra, 40(sp)
80002eac: 83 2d 41 03  	lw	s11, 52(sp)
80002eb0: 6f 00 00 01  	j	0x80002ec0 <.LBB0_186+0x1530>
80002eb4: 83 2d 41 03  	lw	s11, 52(sp)
80002eb8: 33 b5 b6 01  	sltu	a0, a3, s11
80002ebc: 83 20 81 02  	lw	ra, 40(sp)
80002ec0: 83 27 41 01  	lw	a5, 20(sp)
80002ec4: 83 25 81 01  	lw	a1, 24(sp)
;   for (i = 0; i < ni; i++)
80002ec8: 63 82 05 02  	beqz	a1, 0x80002eec <.LBB0_186+0x155c>
80002ecc: 13 06 00 00  	mv	a2, zero
80002ed0: 63 14 07 02  	bnez	a4, 0x80002ef8 <.LBB0_186+0x1568>
80002ed4: b3 b5 16 00  	sltu	a1, a3, ra
;   for (i = 0; i < ni; i++)
80002ed8: 33 65 a6 00  	or	a0, a2, a0
80002edc: 63 94 07 02  	bnez	a5, 0x80002f04 <.LBB0_186+0x1574>
80002ee0: 03 26 41 00  	lw	a2, 4(sp)
80002ee4: 33 36 c6 01  	sltu	a2, a2, t3
80002ee8: 6f 00 00 02  	j	0x80002f08 <.LBB0_186+0x1578>
80002eec: 83 25 01 00  	lw	a1, 0(sp)
80002ef0: 33 b6 c5 01  	sltu	a2, a1, t3
;   for (i = 0; i < ni; i++)
80002ef4: e3 00 07 fe  	beqz	a4, 0x80002ed4 <.LBB0_186+0x1544>
80002ef8: 93 05 00 00  	mv	a1, zero
80002efc: 33 65 a6 00  	or	a0, a2, a0
80002f00: e3 80 07 fe  	beqz	a5, 0x80002ee0 <.LBB0_186+0x1550>
80002f04: 13 06 00 00  	mv	a2, zero
80002f08: b3 65 b6 00  	or	a1, a2, a1
80002f0c: 33 75 b5 00  	and	a0, a0, a1
80002f10: 93 55 4e 01  	srli	a1, t3, 20
80002f14: b3 35 b0 00  	snez	a1, a1
80002f18: 37 f6 11 00  	lui	a2, 287
80002f1c: 13 06 96 50  	addi	a2, a2, 1289
80002f20: 33 36 ce 00  	sltu	a2, t3, a2
80002f24: b3 f5 c5 00  	and	a1, a1, a2
80002f28: 23 26 b1 04  	sw	a1, 76(sp)
80002f2c: 33 f5 a5 00  	and	a0, a1, a0
80002f30: 83 25 c1 00  	lw	a1, 12(sp)
80002f34: 33 f5 a5 00  	and	a0, a1, a0
80002f38: 83 25 81 00  	lw	a1, 8(sp)
80002f3c: 33 f5 a5 00  	and	a0, a1, a0
80002f40: 63 04 05 14  	beqz	a0, 0x80003088 <.LBB0_186+0x16f8>
80002f44: 13 05 00 00  	mv	a0, zero
80002f48: 93 05 80 00  	addi	a1, zero, 8
80002f4c: 13 06 50 01  	addi	a2, zero, 21
;   for (i = 0; i < ni; i++)
80002f50: 93 06 00 04  	addi	a3, zero, 64
80002f54: 13 07 00 0c  	addi	a4, zero, 192
80002f58: ab 20 d6 00  	scfgw	a2, a3
80002f5c: ab a0 e5 00  	scfgw	a1, a4
80002f60: 93 06 f0 00  	addi	a3, zero, 15
80002f64: 13 07 00 06  	addi	a4, zero, 96
80002f68: 93 07 00 0e  	addi	a5, zero, 224
80002f6c: ab a0 e6 00  	scfgw	a3, a4
80002f70: ab a0 f5 00  	scfgw	a1, a5
80002f74: 13 07 00 02  	addi	a4, zero, 32
80002f78: ab 20 e0 00  	scfgw	zero, a4
80002f7c: 2b 20 0e 3a  	scfgwi	t3, 928
80002f80: 13 07 10 01  	addi	a4, zero, 17
80002f84: 93 07 10 00  	addi	a5, zero, 1
80002f88: 93 84 07 04  	addi	s1, a5, 64
80002f8c: 13 84 07 0c  	addi	s0, a5, 192
80002f90: ab 20 97 00  	scfgw	a4, s1
80002f94: ab a0 85 00  	scfgw	a1, s0
80002f98: 93 04 80 f7  	addi	s1, zero, -136
80002f9c: 13 84 07 06  	addi	s0, a5, 96
80002fa0: ab 20 86 00  	scfgw	a2, s0
80002fa4: 13 84 07 0e  	addi	s0, a5, 224
80002fa8: ab a0 84 00  	scfgw	s1, s0
80002fac: 93 84 07 08  	addi	s1, a5, 128
80002fb0: 13 84 07 10  	addi	s0, a5, 256
80002fb4: ab a0 96 00  	scfgw	a3, s1
80002fb8: ab a0 85 00  	scfgw	a1, s0
80002fbc: 93 85 07 02  	addi	a1, a5, 32
80002fc0: ab 20 b0 00  	scfgw	zero, a1
80002fc4: 2b a0 10 34  	scfgwi	ra, 833
80002fc8: 93 05 00 0b  	addi	a1, zero, 176
80002fcc: 93 07 20 00  	addi	a5, zero, 2
80002fd0: 93 84 07 04  	addi	s1, a5, 64
80002fd4: 13 84 07 0c  	addi	s0, a5, 192
80002fd8: ab 20 97 00  	scfgw	a4, s1
80002fdc: ab a0 85 00  	scfgw	a1, s0
80002fe0: b7 f5 ff ff  	lui	a1, 1048575
80002fe4: 13 87 85 45  	addi	a4, a1, 1112
80002fe8: 93 84 07 06  	addi	s1, a5, 96
80002fec: 13 84 07 0e  	addi	s0, a5, 224
80002ff0: ab 20 96 00  	scfgw	a2, s1
80002ff4: ab 20 87 00  	scfgw	a4, s0
80002ff8: 93 85 85 3a  	addi	a1, a1, 936
80002ffc: 13 86 07 08  	addi	a2, a5, 128
80003000: 13 87 07 10  	addi	a4, a5, 256
80003004: ab a0 c6 00  	scfgw	a3, a2
80003008: ab a0 e5 00  	scfgw	a1, a4
8000300c: 93 85 07 02  	addi	a1, a5, 32
80003010: ab 20 b0 00  	scfgw	zero, a1
80003014: 2b a0 2d 34  	scfgwi	s11, 834
80003018: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000301c: 93 05 00 01  	addi	a1, zero, 16
80003020: 13 06 60 01  	addi	a2, zero, 22
;         x += E[i][k] * F[k][j];
80003024: d3 81 10 22  	fmv.d	ft3, ft1
80003028: d3 71 31 12  	fmul.d	ft3, ft2, ft3
8000302c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003030: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003034: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003038: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000303c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003040: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003044: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003048: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000304c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003050: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003054: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003058: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000305c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003060: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003064: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
80003068: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
8000306c: c3 71 11 1a  	fmadd.d	ft3, ft2, ft1, ft3
;       G[i][j] = x;
80003070: 53 80 31 22  	fmv.d	ft0, ft3
;     for (j = 0; j < nl; j++)
80003074: 13 06 f6 ff  	addi	a2, a2, -1
80003078: e3 16 06 fa  	bnez	a2, 0x80003024 <.LBB0_186+0x1694>
;   for (i = 0; i < ni; i++)
8000307c: 13 05 15 00  	addi	a0, a0, 1
80003080: e3 10 b5 fa  	bne	a0, a1, 0x80003020 <.LBB0_186+0x1690>
80003084: 6f 00 40 30  	j	0x80003388 <.LBB0_186+0x19f8>
;   for (i = 0; i < ni; i++)
80003088: 13 85 8d 47  	addi	a0, s11, 1144
8000308c: 13 03 85 47  	addi	t1, a0, 1144
80003090: 13 85 cd 4c  	addi	a0, s11, 1228
80003094: 13 05 c5 4c  	addi	a0, a0, 1228
80003098: 93 88 00 05  	addi	a7, ra, 80
8000309c: b3 87 14 01  	add	a5, s1, a7
800030a0: 63 76 65 00  	bgeu	a0, t1, 0x800030ac <.LBB0_186+0x171c>
800030a4: 13 08 00 00  	mv	a6, zero
800030a8: 6f 00 80 00  	j	0x800030b0 <.LBB0_186+0x1720>
800030ac: 33 38 c5 01  	sltu	a6, a0, t3
;   for (i = 0; i < ni; i++)
800030b0: 13 84 07 f1  	addi	s0, a5, -240
800030b4: 93 83 0d 63  	addi	t2, s11, 1584
800030b8: 13 85 8d 6d  	addi	a0, s11, 1752
800030bc: 63 06 07 00  	beqz	a4, 0x800030c8 <.LBB0_186+0x1738>
800030c0: 93 02 00 00  	mv	t0, zero
800030c4: 6f 00 80 00  	j	0x800030cc <.LBB0_186+0x173c>
800030c8: b3 b2 66 00  	sltu	t0, a3, t1
;   for (i = 0; i < ni; i++)
800030cc: b3 b5 97 00  	sltu	a1, a5, s1
800030d0: 33 36 f4 00  	sltu	a2, s0, a5
800030d4: 63 72 75 02  	bgeu	a0, t2, 0x800030f8 <.LBB0_186+0x1768>
800030d8: 93 07 00 00  	mv	a5, zero
800030dc: b3 85 c5 00  	add	a1, a1, a2
800030e0: 63 12 07 02  	bnez	a4, 0x80003104 <.LBB0_186+0x1774>
800030e4: 33 b5 76 00  	sltu	a0, a3, t2
800030e8: 13 06 10 00  	addi	a2, zero, 1
;   for (i = 0; i < ni; i++)
800030ec: 63 92 c5 02  	bne	a1, a2, 0x80003110 <.LBB0_186+0x1780>
800030f0: 33 34 c4 01  	sltu	s0, s0, t3
800030f4: 6f 00 00 02  	j	0x80003114 <.LBB0_186+0x1784>
800030f8: b3 37 c5 01  	sltu	a5, a0, t3
;   for (i = 0; i < ni; i++)
800030fc: b3 85 c5 00  	add	a1, a1, a2
80003100: e3 02 07 fe  	beqz	a4, 0x800030e4 <.LBB0_186+0x1754>
80003104: 13 05 00 00  	mv	a0, zero
80003108: 13 06 10 00  	addi	a2, zero, 1
8000310c: e3 82 c5 fe  	beq	a1, a2, 0x800030f0 <.LBB0_186+0x1760>
80003110: 13 04 00 00  	mv	s0, zero
80003114: b3 64 58 00  	or	s1, a6, t0
80003118: 33 e5 a7 00  	or	a0, a5, a0
8000311c: 63 06 07 00  	beqz	a4, 0x80003128 <.LBB0_186+0x1798>
80003120: 93 05 00 00  	mv	a1, zero
80003124: 6f 00 80 00  	j	0x8000312c <.LBB0_186+0x179c>
80003128: b3 b5 16 01  	sltu	a1, a3, a7
;   for (i = 0; i < ni; i++)
8000312c: b3 65 b4 00  	or	a1, s0, a1
80003130: 33 f5 a4 00  	and	a0, s1, a0
80003134: 33 f5 a5 00  	and	a0, a1, a0
80003138: 93 55 43 01  	srli	a1, t1, 20
8000313c: b3 35 b0 00  	snez	a1, a1
80003140: 37 06 12 00  	lui	a2, 288
80003144: 13 06 96 f5  	addi	a2, a2, -167
80003148: b3 36 c3 00  	sltu	a3, t1, a2
8000314c: b3 f5 d5 00  	and	a1, a1, a3
80003150: 33 f5 a5 00  	and	a0, a1, a0
80003154: 93 d5 43 01  	srli	a1, t2, 20
80003158: b3 35 b0 00  	snez	a1, a1
8000315c: 33 b6 c3 00  	sltu	a2, t2, a2
80003160: b3 f5 c5 00  	and	a1, a1, a2
80003164: 33 f5 a5 00  	and	a0, a1, a0
80003168: 93 d5 48 01  	srli	a1, a7, 20
8000316c: b3 35 b0 00  	snez	a1, a1
80003170: 37 f6 11 00  	lui	a2, 287
80003174: 13 06 16 79  	addi	a2, a2, 1937
80003178: 33 b6 c8 00  	sltu	a2, a7, a2
8000317c: b3 f5 c5 00  	and	a1, a1, a2
80003180: 93 02 00 00  	mv	t0, zero
80003184: 33 f5 a5 00  	and	a0, a1, a0
80003188: 63 04 05 20  	beqz	a0, 0x80003390 <.LBB0_186+0x1a00>
8000318c: 13 05 80 00  	addi	a0, zero, 8
80003190: 93 05 50 01  	addi	a1, zero, 21
;   for (i = 0; i < ni; i++)
80003194: 13 06 00 04  	addi	a2, zero, 64
80003198: 93 06 00 0c  	addi	a3, zero, 192
8000319c: ab a0 c5 00  	scfgw	a1, a2
800031a0: ab 20 d5 00  	scfgw	a0, a3
800031a4: 13 06 80 f5  	addi	a2, zero, -168
800031a8: 93 06 f0 00  	addi	a3, zero, 15
800031ac: 13 07 00 06  	addi	a4, zero, 96
800031b0: ab a0 e6 00  	scfgw	a3, a4
800031b4: 13 07 00 0e  	addi	a4, zero, 224
800031b8: ab 20 e6 00  	scfgw	a2, a4
800031bc: 13 07 00 02  	addi	a4, zero, 32
800031c0: ab 20 e0 00  	scfgw	zero, a4
800031c4: 2b 20 03 32  	scfgwi	t1, 800
800031c8: 13 07 10 00  	addi	a4, zero, 1
800031cc: 93 07 07 04  	addi	a5, a4, 64
800031d0: ab a0 f5 00  	scfgw	a1, a5
800031d4: 93 07 07 0c  	addi	a5, a4, 192
800031d8: ab 20 f5 00  	scfgw	a0, a5
800031dc: 13 05 07 06  	addi	a0, a4, 96
800031e0: 93 07 07 0e  	addi	a5, a4, 224
800031e4: ab a0 a6 00  	scfgw	a3, a0
800031e8: ab 20 f6 00  	scfgw	a2, a5
800031ec: 13 05 07 02  	addi	a0, a4, 32
800031f0: ab 20 a0 00  	scfgw	zero, a0
800031f4: 2b a0 13 32  	scfgwi	t2, 801
800031f8: 13 05 20 00  	addi	a0, zero, 2
800031fc: 13 06 05 04  	addi	a2, a0, 64
80003200: 13 07 05 0c  	addi	a4, a0, 192
80003204: ab a0 c5 00  	scfgw	a1, a2
80003208: ab 20 e0 00  	scfgw	zero, a4
8000320c: 13 08 00 09  	addi	a6, zero, 144
80003210: 93 05 05 06  	addi	a1, a0, 96
80003214: 13 06 05 0e  	addi	a2, a0, 224
80003218: ab a0 b6 00  	scfgw	a3, a1
8000321c: ab 20 c8 00  	scfgw	a6, a2
80003220: 13 05 05 02  	addi	a0, a0, 32
80003224: ab 20 a0 00  	scfgw	zero, a0
80003228: 2b a0 28 32  	scfgwi	a7, 802
8000322c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003230: 13 03 00 0b  	addi	t1, zero, 176
80003234: 93 08 00 01  	addi	a7, zero, 16
80003238: 93 03 0e 00  	mv	t2, t3
8000323c: 93 07 00 00  	mv	a5, zero
;         x += E[i][k] * F[k][j];
80003240: 33 85 02 03  	mul	a0, t0, a6
80003244: 33 84 a0 00  	add	s0, ra, a0
80003248: 13 0e 84 00  	addi	t3, s0, 8
8000324c: 93 0e 04 01  	addi	t4, s0, 16
80003250: 13 0f 84 01  	addi	t5, s0, 24
80003254: 93 0f 04 02  	addi	t6, s0, 32
80003258: 93 09 84 02  	addi	s3, s0, 40
8000325c: 13 0a 04 03  	addi	s4, s0, 48
80003260: 93 0a 84 03  	addi	s5, s0, 56
80003264: 13 0b 04 04  	addi	s6, s0, 64
80003268: 93 0b 84 04  	addi	s7, s0, 72
8000326c: 13 0c 84 05  	addi	s8, s0, 88
80003270: 93 0c 04 06  	addi	s9, s0, 96
80003274: 13 0d 84 06  	addi	s10, s0, 104
80003278: 93 04 04 07  	addi	s1, s0, 112
8000327c: 93 05 84 07  	addi	a1, s0, 120
80003280: 13 06 04 08  	addi	a2, s0, 128
80003284: 93 06 84 08  	addi	a3, s0, 136
80003288: 87 31 04 00  	fld	ft3, 0(s0)
8000328c: 33 85 fd 00  	add	a0, s11, a5
80003290: 07 32 05 00  	fld	ft4, 0(a0)
80003294: 87 32 0e 00  	fld	ft5, 0(t3)
80003298: 07 33 05 0b  	fld	ft6, 176(a0)
8000329c: d3 71 32 12  	fmul.d	ft3, ft4, ft3
800032a0: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
800032a4: 07 b2 0e 00  	fld	ft4, 0(t4)
800032a8: 87 32 05 16  	fld	ft5, 352(a0)
800032ac: 07 33 0f 00  	fld	ft6, 0(t5)
800032b0: 87 33 05 21  	fld	ft7, 528(a0)
800032b4: 07 b5 0f 00  	fld	fa0, 0(t6)
800032b8: 87 35 05 2c  	fld	fa1, 704(a0)
800032bc: 07 b6 09 00  	fld	fa2, 0(s3)
800032c0: 87 36 05 37  	fld	fa3, 880(a0)
800032c4: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800032c8: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800032cc: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800032d0: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
800032d4: 07 32 0a 00  	fld	ft4, 0(s4)
800032d8: 87 32 05 42  	fld	ft5, 1056(a0)
800032dc: 07 b3 0a 00  	fld	ft6, 0(s5)
800032e0: 87 33 05 4d  	fld	ft7, 1232(a0)
800032e4: 07 35 0b 00  	fld	fa0, 0(s6)
800032e8: 87 35 05 58  	fld	fa1, 1408(a0)
800032ec: 07 b6 0b 00  	fld	fa2, 0(s7)
800032f0: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800032f4: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800032f8: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800032fc: c3 f1 c0 1a  	fmadd.d	ft3, ft1, fa2, ft3
80003300: 87 32 05 6e  	fld	ft5, 1760(a0)
80003304: 07 33 0c 00  	fld	ft6, 0(s8)
80003308: 87 33 05 79  	fld	ft7, 1936(a0)
8000330c: 07 b5 0c 00  	fld	fa0, 0(s9)
80003310: 13 07 05 42  	addi	a4, a0, 1056
80003314: 87 35 07 42  	fld	fa1, 1056(a4)
80003318: 07 36 0d 00  	fld	fa2, 0(s10)
8000331c: c3 f1 22 1a  	fmadd.d	ft3, ft5, ft2, ft3
80003320: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003324: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80003328: c3 71 c0 1a  	fmadd.d	ft3, ft0, fa2, ft3
8000332c: 07 b2 04 00  	fld	ft4, 0(s1)
80003330: 13 07 05 4d  	addi	a4, a0, 1232
80003334: 87 32 07 4d  	fld	ft5, 1232(a4)
80003338: 07 b3 05 00  	fld	ft6, 0(a1)
8000333c: 13 07 85 52  	addi	a4, a0, 1320
80003340: 87 33 87 52  	fld	ft7, 1320(a4)
80003344: 07 35 06 00  	fld	fa0, 0(a2)
80003348: 13 07 05 58  	addi	a4, a0, 1408
8000334c: 87 35 07 58  	fld	fa1, 1408(a4)
80003350: 07 b6 06 00  	fld	fa2, 0(a3)
80003354: 13 05 85 5d  	addi	a0, a0, 1496
80003358: 87 36 85 5d  	fld	fa3, 1496(a0)
8000335c: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003360: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003364: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
80003368: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       G[i][j] = x;
8000336c: 33 85 f3 00  	add	a0, t2, a5
;     for (j = 0; j < nl; j++)
80003370: 93 87 87 00  	addi	a5, a5, 8
;       G[i][j] = x;
80003374: 27 30 35 00  	fsd	ft3, 0(a0)
;     for (j = 0; j < nl; j++)
80003378: e3 98 67 f0  	bne	a5, t1, 0x80003288 <.LBB0_186+0x18f8>
;   for (i = 0; i < ni; i++)
8000337c: 93 82 12 00  	addi	t0, t0, 1
80003380: 93 83 03 0b  	addi	t2, t2, 176
80003384: e3 9c 12 eb  	bne	t0, a7, 0x8000323c <.LBB0_186+0x18ac>
80003388: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000338c: 6f 00 80 17  	j	0x80003504 <.LBB0_186+0x1b74>
80003390: 13 08 00 09  	addi	a6, zero, 144
80003394: 13 03 00 0b  	addi	t1, zero, 176
80003398: 93 08 00 01  	addi	a7, zero, 16
8000339c: 93 03 0e 00  	mv	t2, t3
800033a0: 03 29 41 03  	lw	s2, 52(sp)
800033a4: 93 07 00 00  	mv	a5, zero
;         x += E[i][k] * F[k][j];
800033a8: 33 85 02 03  	mul	a0, t0, a6
800033ac: b3 84 a0 00  	add	s1, ra, a0
800033b0: 13 8e 84 00  	addi	t3, s1, 8
800033b4: 93 8e 04 01  	addi	t4, s1, 16
800033b8: 13 8f 84 01  	addi	t5, s1, 24
800033bc: 93 8f 04 02  	addi	t6, s1, 32
800033c0: 93 89 84 02  	addi	s3, s1, 40
800033c4: 13 8a 04 03  	addi	s4, s1, 48
800033c8: 93 8a 84 03  	addi	s5, s1, 56
800033cc: 13 8b 04 04  	addi	s6, s1, 64
800033d0: 93 8b 84 04  	addi	s7, s1, 72
800033d4: 13 8c 04 05  	addi	s8, s1, 80
800033d8: 93 8c 84 05  	addi	s9, s1, 88
800033dc: 13 8d 04 06  	addi	s10, s1, 96
800033e0: 93 8d 84 06  	addi	s11, s1, 104
800033e4: 93 85 04 07  	addi	a1, s1, 112
800033e8: 93 86 84 07  	addi	a3, s1, 120
800033ec: 13 85 04 08  	addi	a0, s1, 128
800033f0: 13 86 84 08  	addi	a2, s1, 136
800033f4: 87 b1 04 00  	fld	ft3, 0(s1)
800033f8: 33 07 f9 00  	add	a4, s2, a5
800033fc: 07 32 07 00  	fld	ft4, 0(a4)
80003400: 87 32 0e 00  	fld	ft5, 0(t3)
80003404: 07 33 07 0b  	fld	ft6, 176(a4)
80003408: d3 71 32 12  	fmul.d	ft3, ft4, ft3
8000340c: c3 71 53 1a  	fmadd.d	ft3, ft6, ft5, ft3
80003410: 07 b2 0e 00  	fld	ft4, 0(t4)
80003414: 87 32 07 16  	fld	ft5, 352(a4)
80003418: 07 33 0f 00  	fld	ft6, 0(t5)
8000341c: 87 33 07 21  	fld	ft7, 528(a4)
80003420: 07 b5 0f 00  	fld	fa0, 0(t6)
80003424: 87 35 07 2c  	fld	fa1, 704(a4)
80003428: 07 b6 09 00  	fld	fa2, 0(s3)
8000342c: 87 36 07 37  	fld	fa3, 880(a4)
80003430: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003434: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003438: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000343c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80003440: 07 32 0a 00  	fld	ft4, 0(s4)
80003444: 87 32 07 42  	fld	ft5, 1056(a4)
80003448: 07 b3 0a 00  	fld	ft6, 0(s5)
8000344c: 87 33 07 4d  	fld	ft7, 1232(a4)
80003450: 07 35 0b 00  	fld	fa0, 0(s6)
80003454: 87 35 07 58  	fld	fa1, 1408(a4)
80003458: 07 b6 0b 00  	fld	fa2, 0(s7)
8000345c: 87 36 07 63  	fld	fa3, 1584(a4)
80003460: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
80003464: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
80003468: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
8000346c: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
80003470: 07 32 0c 00  	fld	ft4, 0(s8)
80003474: 87 32 07 6e  	fld	ft5, 1760(a4)
80003478: 07 b3 0c 00  	fld	ft6, 0(s9)
8000347c: 87 33 07 79  	fld	ft7, 1936(a4)
80003480: 07 35 0d 00  	fld	fa0, 0(s10)
80003484: 13 04 07 42  	addi	s0, a4, 1056
80003488: 87 35 04 42  	fld	fa1, 1056(s0)
8000348c: 07 b6 0d 00  	fld	fa2, 0(s11)
80003490: 13 04 87 47  	addi	s0, a4, 1144
80003494: 87 36 84 47  	fld	fa3, 1144(s0)
80003498: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
8000349c: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800034a0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800034a4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
800034a8: 07 b2 05 00  	fld	ft4, 0(a1)
800034ac: 13 04 07 4d  	addi	s0, a4, 1232
800034b0: 87 32 04 4d  	fld	ft5, 1232(s0)
800034b4: 07 b3 06 00  	fld	ft6, 0(a3)
800034b8: 13 04 87 52  	addi	s0, a4, 1320
800034bc: 87 33 84 52  	fld	ft7, 1320(s0)
800034c0: 07 35 05 00  	fld	fa0, 0(a0)
800034c4: 13 04 07 58  	addi	s0, a4, 1408
800034c8: 87 35 04 58  	fld	fa1, 1408(s0)
800034cc: 07 36 06 00  	fld	fa2, 0(a2)
800034d0: 13 07 87 5d  	addi	a4, a4, 1496
800034d4: 87 36 87 5d  	fld	fa3, 1496(a4)
800034d8: c3 f1 42 1a  	fmadd.d	ft3, ft5, ft4, ft3
800034dc: c3 f1 63 1a  	fmadd.d	ft3, ft7, ft6, ft3
800034e0: c3 f1 a5 1a  	fmadd.d	ft3, fa1, fa0, ft3
800034e4: c3 f1 c6 1a  	fmadd.d	ft3, fa3, fa2, ft3
;       G[i][j] = x;
800034e8: 33 87 f3 00  	add	a4, t2, a5
;     for (j = 0; j < nl; j++)
800034ec: 93 87 87 00  	addi	a5, a5, 8
;       G[i][j] = x;
800034f0: 27 30 37 00  	fsd	ft3, 0(a4)
;     for (j = 0; j < nl; j++)
800034f4: e3 90 67 f0  	bne	a5, t1, 0x800033f4 <.LBB0_186+0x1a64>
;   for (i = 0; i < ni; i++)
800034f8: 93 82 12 00  	addi	t0, t0, 1
800034fc: 93 83 03 0b  	addi	t2, t2, 176
80003500: e3 92 12 eb  	bne	t0, a7, 0x800033a4 <.LBB0_186+0x1a14>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80003504: 73 25 00 b0  	csrr	a0, mcycle
;   printf("cycles = %lu\n", end - start);
80003508: 83 25 c1 01  	lw	a1, 28(sp)
8000350c: b3 05 b5 40  	sub	a1, a0, a1

80003510 <.LBB0_187>:
80003510: 17 25 00 00  	auipc	a0, 2
80003514: 13 05 15 57  	addi	a0, a0, 1393
80003518: 97 00 00 00  	auipc	ra, 0
8000351c: e7 80 80 22  	jalr	552(ra)
80003520: 03 25 c1 04  	lw	a0, 76(sp)
80003524: 63 0a 05 0a  	beqz	a0, 0x800035d8 <.LBB0_187+0xc8>
80003528: 13 05 80 00  	addi	a0, zero, 8
8000352c: 93 05 50 01  	addi	a1, zero, 21
;     for (int i = 0; i < n; i++){
80003530: 13 06 00 04  	addi	a2, zero, 64
80003534: 93 06 00 0c  	addi	a3, zero, 192
80003538: ab a0 c5 00  	scfgw	a1, a2
8000353c: ab 20 d5 00  	scfgw	a0, a3
80003540: 93 05 f0 00  	addi	a1, zero, 15
80003544: 13 06 00 06  	addi	a2, zero, 96
80003548: 93 06 00 0e  	addi	a3, zero, 224
8000354c: ab a0 c5 00  	scfgw	a1, a2
80003550: ab 20 d5 00  	scfgw	a0, a3
80003554: 13 05 00 02  	addi	a0, zero, 32
80003558: ab 20 a0 00  	scfgw	zero, a0
8000355c: 03 25 c1 02  	lw	a0, 44(sp)
80003560: 2b 20 05 32  	scfgwi	a0, 800
80003564: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003568: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000356c: 13 05 00 01  	addi	a0, zero, 16
;             r += A[i * m + j];
80003570: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003574: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003578: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000357c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003580: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003584: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003588: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000358c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003590: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003594: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80003598: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000359c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035a4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035a8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035ac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035b0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035b4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035b8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035bc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800035c0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800035c4: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800035c8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800035cc: e3 12 05 fa  	bnez	a0, 0x80003570 <.LBB0_187+0x60>
800035d0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800035d4: 6f 00 00 0d  	j	0x800036a4 <.LBB0_188>
;     for (int i = 0; i < n; i++){
800035d8: 03 25 c1 02  	lw	a0, 44(sp)
800035dc: 13 05 85 05  	addi	a0, a0, 88
800035e0: d3 01 00 d2  	fcvt.d.w	ft3, zero
800035e4: 93 05 00 01  	addi	a1, zero, 16
;             r += A[i * m + j];
800035e8: 07 32 85 fa  	fld	ft4, -88(a0)
800035ec: 87 32 05 fb  	fld	ft5, -80(a0)
800035f0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800035f4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800035f8: 07 32 85 fb  	fld	ft4, -72(a0)
800035fc: 87 32 05 fc  	fld	ft5, -64(a0)
80003600: 07 33 85 fc  	fld	ft6, -56(a0)
80003604: 87 33 05 fd  	fld	ft7, -48(a0)
80003608: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000360c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003610: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003614: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003618: 07 32 85 fd  	fld	ft4, -40(a0)
8000361c: 87 32 05 fe  	fld	ft5, -32(a0)
80003620: 07 33 85 fe  	fld	ft6, -24(a0)
80003624: 87 33 05 ff  	fld	ft7, -16(a0)
80003628: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000362c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003630: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003634: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003638: 07 32 85 ff  	fld	ft4, -8(a0)
8000363c: 87 32 05 00  	fld	ft5, 0(a0)
80003640: 07 33 85 00  	fld	ft6, 8(a0)
80003644: 87 33 05 01  	fld	ft7, 16(a0)
80003648: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000364c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003650: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003654: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003658: 07 32 85 01  	fld	ft4, 24(a0)
8000365c: 87 32 05 02  	fld	ft5, 32(a0)
80003660: 07 33 85 02  	fld	ft6, 40(a0)
80003664: 87 33 05 03  	fld	ft7, 48(a0)
80003668: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000366c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003670: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003674: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80003678: 07 32 85 03  	fld	ft4, 56(a0)
8000367c: 87 32 05 04  	fld	ft5, 64(a0)
80003680: 07 33 85 04  	fld	ft6, 72(a0)
80003684: 87 33 05 05  	fld	ft7, 80(a0)
80003688: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000368c: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80003690: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80003694: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80003698: 93 85 f5 ff  	addi	a1, a1, -1
8000369c: 13 05 05 0b  	addi	a0, a0, 176
800036a0: e3 94 05 f4  	bnez	a1, 0x800035e8 <.LBB0_187+0xd8>

800036a4 <.LBB0_188>:
800036a4: 17 25 00 00  	auipc	a0, 2
800036a8: 13 05 45 6a  	addi	a0, a0, 1700
800036ac: 07 32 05 00  	fld	ft4, 0(a0)
;   double error = r - r_true;
800036b0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;   error = error < 0.0 ? -error : error;
800036b4: 53 a4 31 22  	fabs.d	fs0, ft3
;   printf("error = %f\n", error);
800036b8: 27 38 81 04  	fsd	fs0, 80(sp)
800036bc: 03 26 01 05  	lw	a2, 80(sp)
800036c0: 83 26 41 05  	lw	a3, 84(sp)

800036c4 <.LBB0_189>:
800036c4: 17 25 00 00  	auipc	a0, 2
800036c8: 13 05 15 3b  	addi	a0, a0, 945
800036cc: 97 00 00 00  	auipc	ra, 0
800036d0: e7 80 40 07  	jalr	116(ra)

800036d4 <.LBB0_190>:
800036d4: 17 25 00 00  	auipc	a0, 2
800036d8: 13 05 c5 67  	addi	a0, a0, 1660
800036dc: 87 31 05 00  	fld	ft3, 0(a0)
;   return error > 0.0001;
800036e0: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
800036e4: 87 3b 81 05  	fld	fs7, 88(sp)
800036e8: 07 3b 01 06  	fld	fs6, 96(sp)
800036ec: 87 3a 81 06  	fld	fs5, 104(sp)
800036f0: 07 3a 01 07  	fld	fs4, 112(sp)
800036f4: 87 39 81 07  	fld	fs3, 120(sp)
800036f8: 07 39 01 08  	fld	fs2, 128(sp)
800036fc: 87 34 81 08  	fld	fs1, 136(sp)
80003700: 07 34 01 09  	fld	fs0, 144(sp)
80003704: 83 2d c1 09  	lw	s11, 156(sp)
80003708: 03 2d 01 0a  	lw	s10, 160(sp)
8000370c: 83 2c 41 0a  	lw	s9, 164(sp)
80003710: 03 2c 81 0a  	lw	s8, 168(sp)
80003714: 83 2b c1 0a  	lw	s7, 172(sp)
80003718: 03 2b 01 0b  	lw	s6, 176(sp)
8000371c: 83 2a 41 0b  	lw	s5, 180(sp)
80003720: 03 2a 81 0b  	lw	s4, 184(sp)
80003724: 83 29 c1 0b  	lw	s3, 188(sp)
80003728: 03 29 01 0c  	lw	s2, 192(sp)
8000372c: 83 24 41 0c  	lw	s1, 196(sp)
80003730: 03 24 81 0c  	lw	s0, 200(sp)
80003734: 83 20 c1 0c  	lw	ra, 204(sp)
80003738: 13 01 01 0d  	addi	sp, sp, 208
8000373c: 67 80 00 00  	ret

80003740 <printf_>:
; {
80003740: 13 01 01 fd  	addi	sp, sp, -48
80003744: 23 26 11 00  	sw	ra, 12(sp)
80003748: 93 02 05 00  	mv	t0, a0
8000374c: 23 26 11 03  	sw	a7, 44(sp)
80003750: 23 24 01 03  	sw	a6, 40(sp)
80003754: 23 22 f1 02  	sw	a5, 36(sp)
80003758: 23 20 e1 02  	sw	a4, 32(sp)
8000375c: 23 2e d1 00  	sw	a3, 28(sp)
80003760: 23 2c c1 00  	sw	a2, 24(sp)
80003764: 23 2a b1 00  	sw	a1, 20(sp)
80003768: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
8000376c: 23 24 a1 00  	sw	a0, 8(sp)

80003770 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80003770: 17 15 00 00  	auipc	a0, 1
80003774: 13 05 45 c2  	addi	a0, a0, -988
80003778: 93 05 71 00  	addi	a1, sp, 7
8000377c: 13 06 f0 ff  	addi	a2, zero, -1
80003780: 13 07 41 01  	addi	a4, sp, 20
80003784: 93 86 02 00  	mv	a3, t0
80003788: 97 00 00 00  	auipc	ra, 0
8000378c: e7 80 40 01  	jalr	20(ra)
;   return ret;
80003790: 83 20 c1 00  	lw	ra, 12(sp)
80003794: 13 01 01 03  	addi	sp, sp, 48
80003798: 67 80 00 00  	ret

8000379c <_vsnprintf.llvm.1805434900161566649>:
; {
8000379c: 13 01 01 f9  	addi	sp, sp, -112
800037a0: 23 26 11 06  	sw	ra, 108(sp)
800037a4: 23 24 81 06  	sw	s0, 104(sp)
800037a8: 23 22 91 06  	sw	s1, 100(sp)
800037ac: 23 20 21 07  	sw	s2, 96(sp)
800037b0: 23 2e 31 05  	sw	s3, 92(sp)
800037b4: 23 2c 41 05  	sw	s4, 88(sp)
800037b8: 23 2a 51 05  	sw	s5, 84(sp)
800037bc: 23 28 61 05  	sw	s6, 80(sp)
800037c0: 23 26 71 05  	sw	s7, 76(sp)
800037c4: 23 24 81 05  	sw	s8, 72(sp)
800037c8: 23 22 91 05  	sw	s9, 68(sp)
800037cc: 23 20 a1 05  	sw	s10, 64(sp)
800037d0: 23 2e b1 03  	sw	s11, 60(sp)
800037d4: 93 09 07 00  	mv	s3, a4
800037d8: 13 84 06 00  	mv	s0, a3
800037dc: 93 0a 06 00  	mv	s5, a2
800037e0: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800037e4: 63 86 05 00  	beqz	a1, 0x800037f0 <.LBB1_183>
800037e8: 13 09 05 00  	mv	s2, a0
800037ec: 6f 00 c0 00  	j	0x800037f8 <.LBB1_183+0x8>

800037f0 <.LBB1_183>:
800037f0: 17 19 00 00  	auipc	s2, 1
800037f4: 13 09 09 c5  	addi	s2, s2, -944
800037f8: 13 0c 00 00  	mv	s8, zero
800037fc: 13 0b 50 02  	addi	s6, zero, 37
80003800: 93 0d 00 01  	addi	s11, zero, 16
80003804: 93 0b e0 02  	addi	s7, zero, 46
80003808: 37 15 00 00  	lui	a0, 1
8000380c: 13 05 05 80  	addi	a0, a0, -2048
80003810: 23 2c a1 00  	sw	a0, 24(sp)
80003814: 37 05 01 00  	lui	a0, 16
80003818: 13 05 f5 ff  	addi	a0, a0, -1
8000381c: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003820: 13 0d 24 00  	addi	s10, s0, 2
80003824: 93 0c 0c 00  	mv	s9, s8
80003828: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
8000382c: 03 45 04 00  	lbu	a0, 0(s0)
80003830: e3 04 05 30  	beqz	a0, 0x80004338 <.LBB1_124+0x3b0>
80003834: 63 08 65 03  	beq	a0, s6, 0x80003864 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80003838: 93 84 1c 00  	addi	s1, s9, 1
8000383c: 93 05 0a 00  	mv	a1, s4
80003840: 13 86 0c 00  	mv	a2, s9
80003844: 93 86 0a 00  	mv	a3, s5
80003848: e7 00 09 00  	jalr	s2
;       format++;
8000384c: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80003850: 13 0d 1d 00  	addi	s10, s10, 1
80003854: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80003858: 03 45 04 00  	lbu	a0, 0(s0)
8000385c: e3 1c 05 fc  	bnez	a0, 0x80003834 <.LBB1_183+0x44>
80003860: 6f 00 90 2d  	j	0x80004338 <.LBB1_124+0x3b0>
;     flags = 0U;
80003864: 13 04 00 00  	mv	s0, zero
80003868: 6f 00 00 01  	j	0x80003878 <.LBB1_9+0x8>

8000386c <.LBB1_8>:
8000386c: 93 05 00 01  	addi	a1, zero, 16

80003870 <.LBB1_9>:
80003870: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80003874: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80003878: 03 45 fd ff  	lbu	a0, -1(s10)
8000387c: 93 05 05 fe  	addi	a1, a0, -32
80003880: 63 ec bd 02  	bltu	s11, a1, 0x800038b8 <.LBB1_15>
80003884: 93 95 25 00  	slli	a1, a1, 2

80003888 <.LBB1_184>:
80003888: 17 26 00 00  	auipc	a2, 2
8000388c: 13 06 c6 20  	addi	a2, a2, 524
80003890: b3 85 c5 00  	add	a1, a1, a2
80003894: 03 a6 05 00  	lw	a2, 0(a1)
80003898: 93 05 10 00  	addi	a1, zero, 1
8000389c: 67 00 06 00  	jr	a2

800038a0 <.LBB1_12>:
800038a0: 93 05 80 00  	addi	a1, zero, 8
800038a4: 6f f0 df fc  	j	0x80003870 <.LBB1_9>

800038a8 <.LBB1_13>:
800038a8: 93 05 40 00  	addi	a1, zero, 4
800038ac: 6f f0 5f fc  	j	0x80003870 <.LBB1_9>

800038b0 <.LBB1_14>:
800038b0: 93 05 20 00  	addi	a1, zero, 2
800038b4: 6f f0 df fb  	j	0x80003870 <.LBB1_9>

800038b8 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800038b8: 93 05 05 fd  	addi	a1, a0, -48
800038bc: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800038c0: 93 05 fd ff  	addi	a1, s10, -1
800038c4: 93 06 90 00  	addi	a3, zero, 9
800038c8: 63 ee c6 06  	bltu	a3, a2, 0x80003944 <.LBB1_15+0x8c>
800038cc: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800038d0: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800038d4: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800038d8: b3 06 8b 03  	mul	a3, s6, s8
800038dc: 93 85 15 00  	addi	a1, a1, 1
800038e0: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800038e4: 93 06 05 fd  	addi	a3, a0, -48
800038e8: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800038ec: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800038f0: e3 e0 86 ff  	bltu	a3, s8, 0x800038d0 <.LBB1_15+0x18>
800038f4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800038f8: 63 16 75 0b  	bne	a0, s7, 0x800039a4 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800038fc: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80003900: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80003904: 93 05 05 fd  	addi	a1, a0, -48
80003908: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
8000390c: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003910: 93 06 90 00  	addi	a3, zero, 9
80003914: 63 e0 c6 06  	bltu	a3, a2, 0x80003974 <.LBB1_15+0xbc>
80003918: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000391c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003920: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003924: b3 86 8b 03  	mul	a3, s7, s8
80003928: 93 85 15 00  	addi	a1, a1, 1
8000392c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003930: 93 06 05 fd  	addi	a3, a0, -48
80003934: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003938: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
8000393c: e3 e0 86 ff  	bltu	a3, s8, 0x8000391c <.LBB1_15+0x64>
80003940: 6f 00 00 07  	j	0x800039b0 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80003944: 13 06 a0 02  	addi	a2, zero, 42
80003948: 63 18 c5 04  	bne	a0, a2, 0x80003998 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
8000394c: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80003950: 63 d4 05 00  	bgez	a1, 0x80003958 <.LBB1_15+0xa0>
80003954: 13 64 24 00  	ori	s0, s0, 2
80003958: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
8000395c: 03 45 0d 00  	lbu	a0, 0(s10)
80003960: 13 d6 f5 41  	srai	a2, a1, 31
80003964: b3 85 c5 00  	add	a1, a1, a2
80003968: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
8000396c: e3 08 75 f9  	beq	a0, s7, 0x800038fc <.LBB1_15+0x44>
80003970: 6f 00 40 03  	j	0x800039a4 <.LBB1_15+0xec>
;       else if (*format == '*') {
80003974: 13 06 a0 02  	addi	a2, zero, 42
80003978: 63 1a c5 02  	bne	a0, a2, 0x800039ac <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
8000397c: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80003980: 63 44 70 01  	bgtz	s7, 0x80003988 <.LBB1_15+0xd0>
80003984: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80003988: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
8000398c: 13 0d 2d 00  	addi	s10, s10, 2
80003990: 93 89 49 00  	addi	s3, s3, 4
80003994: 6f 00 00 02  	j	0x800039b4 <.LBB1_15+0xfc>
80003998: 13 0b 00 00  	mv	s6, zero
8000399c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800039a0: e3 0e 75 f5  	beq	a0, s7, 0x800038fc <.LBB1_15+0x44>
800039a4: 93 0b 00 00  	mv	s7, zero
800039a8: 6f 00 c0 00  	j	0x800039b4 <.LBB1_15+0xfc>
800039ac: 93 0b 00 00  	mv	s7, zero
800039b0: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800039b4: 93 05 85 f9  	addi	a1, a0, -104
800039b8: 13 d6 15 00  	srli	a2, a1, 1
800039bc: 93 95 f5 01  	slli	a1, a1, 31
800039c0: b3 e5 c5 00  	or	a1, a1, a2
800039c4: 13 06 90 00  	addi	a2, zero, 9
800039c8: 63 62 b6 06  	bltu	a2, a1, 0x80003a2c <.LBB1_42>
800039cc: 93 95 25 00  	slli	a1, a1, 2

800039d0 <.LBB1_185>:
800039d0: 17 26 00 00  	auipc	a2, 2
800039d4: 13 06 86 10  	addi	a2, a2, 264
800039d8: b3 85 c5 00  	add	a1, a1, a2
800039dc: 83 a6 05 00  	lw	a3, 0(a1)
800039e0: 93 05 10 00  	addi	a1, zero, 1
800039e4: 13 06 00 10  	addi	a2, zero, 256
800039e8: 67 80 06 00  	jr	a3

800039ec <.LBB1_36>:
;         if (*format == 'h') {
800039ec: 03 45 1d 00  	lbu	a0, 1(s10)
800039f0: 93 05 80 06  	addi	a1, zero, 104
800039f4: 63 12 b5 12  	bne	a0, a1, 0x80003b18 <.LBB1_53+0x48>
800039f8: 93 05 20 00  	addi	a1, zero, 2
800039fc: 13 06 00 0c  	addi	a2, zero, 192
80003a00: 6f 00 00 02  	j	0x80003a20 <.LBB1_41>

80003a04 <.LBB1_38>:
80003a04: 13 06 00 20  	addi	a2, zero, 512
80003a08: 6f 00 80 01  	j	0x80003a20 <.LBB1_41>

80003a0c <.LBB1_39>:
;         if (*format == 'l') {
80003a0c: 03 45 1d 00  	lbu	a0, 1(s10)
80003a10: 93 05 c0 06  	addi	a1, zero, 108
80003a14: 63 18 b5 10  	bne	a0, a1, 0x80003b24 <.LBB1_53+0x54>
80003a18: 93 05 20 00  	addi	a1, zero, 2
80003a1c: 13 06 00 30  	addi	a2, zero, 768

80003a20 <.LBB1_41>:
80003a20: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80003a24: 03 45 0d 00  	lbu	a0, 0(s10)
80003a28: 33 64 c4 00  	or	s0, s0, a2

80003a2c <.LBB1_42>:
;     switch (*format) {
80003a2c: 93 05 b5 fd  	addi	a1, a0, -37
80003a30: 13 06 30 05  	addi	a2, zero, 83
80003a34: 63 64 b6 10  	bltu	a2, a1, 0x80003b3c <.LBB1_59>
80003a38: 93 95 25 00  	slli	a1, a1, 2

80003a3c <.LBB1_186>:
80003a3c: 17 26 00 00  	auipc	a2, 2
80003a40: 13 06 46 0c  	addi	a2, a2, 196
80003a44: b3 85 c5 00  	add	a1, a1, a2
80003a48: 03 a6 05 00  	lw	a2, 0(a1)
80003a4c: 93 05 80 00  	addi	a1, zero, 8
80003a50: 13 0c 00 01  	addi	s8, zero, 16
80003a54: 67 00 06 00  	jr	a2

80003a58 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80003a58: 13 74 f4 fe  	andi	s0, s0, -17
80003a5c: 13 0c a0 00  	addi	s8, zero, 10

80003a60 <.LBB1_45>:
;         if (*format == 'X') {
80003a60: 93 05 80 05  	addi	a1, zero, 88
80003a64: 63 14 b5 00  	bne	a0, a1, 0x80003a6c <.LBB1_45+0xc>
80003a68: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80003a6c: 93 05 40 06  	addi	a1, zero, 100
80003a70: 63 08 b5 0e  	beq	a0, a1, 0x80003b60 <.LBB1_62+0x8>
80003a74: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80003a78: 13 06 90 06  	addi	a2, zero, 105
80003a7c: 63 02 c5 0e  	beq	a0, a2, 0x80003b60 <.LBB1_62+0x8>
80003a80: 6f 00 80 0d  	j	0x80003b58 <.LBB1_62>

80003a84 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80003a84: 93 05 60 04  	addi	a1, zero, 70
80003a88: 63 14 b5 00  	bne	a0, a1, 0x80003a90 <.LBB1_49+0xc>
80003a8c: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003a90: 13 85 79 00  	addi	a0, s3, 7
80003a94: 13 75 85 ff  	andi	a0, a0, -8
80003a98: 07 35 05 00  	fld	fa0, 0(a0)
80003a9c: 93 09 85 00  	addi	s3, a0, 8
80003aa0: 13 05 09 00  	mv	a0, s2
80003aa4: 93 05 0a 00  	mv	a1, s4
80003aa8: 13 86 0c 00  	mv	a2, s9
80003aac: 93 86 0a 00  	mv	a3, s5
80003ab0: 13 87 0b 00  	mv	a4, s7
80003ab4: 93 07 0b 00  	mv	a5, s6
80003ab8: 13 08 04 00  	mv	a6, s0
80003abc: 97 10 00 00  	auipc	ra, 1
80003ac0: e7 80 80 98  	jalr	-1656(ra)
80003ac4: 6f 00 00 7c  	j	0x80004284 <.LBB1_124+0x2fc>

80003ac8 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003ac8: 83 25 81 01  	lw	a1, 24(sp)
80003acc: 33 64 b4 00  	or	s0, s0, a1

80003ad0 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003ad0: 13 65 25 00  	ori	a0, a0, 2
80003ad4: 93 05 70 04  	addi	a1, zero, 71
80003ad8: 63 14 b5 00  	bne	a0, a1, 0x80003ae0 <.LBB1_53+0x10>
80003adc: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003ae0: 13 85 79 00  	addi	a0, s3, 7
80003ae4: 13 75 85 ff  	andi	a0, a0, -8
80003ae8: 07 35 05 00  	fld	fa0, 0(a0)
80003aec: 93 09 85 00  	addi	s3, a0, 8
80003af0: 13 05 09 00  	mv	a0, s2
80003af4: 93 05 0a 00  	mv	a1, s4
80003af8: 13 86 0c 00  	mv	a2, s9
80003afc: 93 86 0a 00  	mv	a3, s5
80003b00: 13 87 0b 00  	mv	a4, s7
80003b04: 93 07 0b 00  	mv	a5, s6
80003b08: 13 08 04 00  	mv	a6, s0
80003b0c: 97 10 00 00  	auipc	ra, 1
80003b10: e7 80 80 01  	jalr	24(ra)
80003b14: 6f 00 00 77  	j	0x80004284 <.LBB1_124+0x2fc>
80003b18: 13 64 04 08  	ori	s0, s0, 128
80003b1c: 13 0d 1d 00  	addi	s10, s10, 1
80003b20: 6f f0 df f0  	j	0x80003a2c <.LBB1_42>
80003b24: 13 64 04 10  	ori	s0, s0, 256
80003b28: 13 0d 1d 00  	addi	s10, s10, 1
80003b2c: 6f f0 1f f0  	j	0x80003a2c <.LBB1_42>

80003b30 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003b30: 13 8c 1c 00  	addi	s8, s9, 1
80003b34: 13 05 50 02  	addi	a0, zero, 37
80003b38: 6f 00 80 00  	j	0x80003b40 <.LBB1_59+0x4>

80003b3c <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80003b3c: 13 8c 1c 00  	addi	s8, s9, 1
80003b40: 93 05 0a 00  	mv	a1, s4
80003b44: 13 86 0c 00  	mv	a2, s9
80003b48: 93 86 0a 00  	mv	a3, s5
80003b4c: e7 00 09 00  	jalr	s2
80003b50: 6f 00 80 73  	j	0x80004288 <.LBB1_124+0x300>

80003b54 <.LBB1_61>:
80003b54: 93 05 20 00  	addi	a1, zero, 2

80003b58 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80003b58: 13 74 34 ff  	andi	s0, s0, -13
80003b5c: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80003b60: 93 75 04 40  	andi	a1, s0, 1024
80003b64: 63 84 05 00  	beqz	a1, 0x80003b6c <.LBB1_62+0x14>
80003b68: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80003b6c: 93 05 90 06  	addi	a1, zero, 105
80003b70: 63 06 b5 00  	beq	a0, a1, 0x80003b7c <.LBB1_62+0x24>
80003b74: 93 05 40 06  	addi	a1, zero, 100
80003b78: 63 1c b5 12  	bne	a0, a1, 0x80003cb0 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80003b7c: 13 75 04 20  	andi	a0, s0, 512
80003b80: 63 16 05 02  	bnez	a0, 0x80003bac <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80003b84: 13 75 04 10  	andi	a0, s0, 256
80003b88: 63 1c 05 14  	bnez	a0, 0x80003ce0 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003b8c: 13 75 04 04  	andi	a0, s0, 64
80003b90: 63 18 05 4e  	bnez	a0, 0x80004080 <.LBB1_124+0xf8>
80003b94: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003b98: 93 75 04 08  	andi	a1, s0, 128
80003b9c: 63 84 05 4e  	beqz	a1, 0x80004084 <.LBB1_124+0xfc>
80003ba0: 13 15 08 01  	slli	a0, a6, 16
80003ba4: 13 58 05 41  	srai	a6, a0, 16
80003ba8: 6f 00 c0 4d  	j	0x80004084 <.LBB1_124+0xfc>
80003bac: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003bb0: 13 85 79 00  	addi	a0, s3, 7
80003bb4: 13 75 85 ff  	andi	a0, a0, -8
80003bb8: 83 29 05 00  	lw	s3, 0(a0)
80003bbc: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003bc0: 13 65 45 00  	ori	a0, a0, 4
80003bc4: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003bc8: 23 24 a1 00  	sw	a0, 8(sp)
80003bcc: 33 e5 a9 00  	or	a0, s3, a0
80003bd0: 63 14 05 00  	bnez	a0, 0x80003bd8 <.LBB1_62+0x80>
80003bd4: 13 74 f4 fe  	andi	s0, s0, -17
80003bd8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003bdc: 93 75 04 40  	andi	a1, s0, 1024
80003be0: 93 d5 a5 00  	srli	a1, a1, 10
80003be4: 33 75 b5 00  	and	a0, a0, a1
80003be8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003bec: 63 14 05 0a  	bnez	a0, 0x80003c94 <.LBB1_62+0x13c>
80003bf0: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003bf4: 63 da 04 00  	bgez	s1, 0x80003c08 <.LBB1_62+0xb0>
80003bf8: 33 35 30 01  	snez	a0, s3
80003bfc: b3 09 30 41  	neg	s3, s3
80003c00: 33 85 a4 00  	add	a0, s1, a0
80003c04: b3 04 a0 40  	neg	s1, a0
80003c08: 13 09 00 00  	mv	s2, zero
80003c0c: 13 75 04 02  	andi	a0, s0, 32
80003c10: 13 45 15 06  	xori	a0, a0, 97
80003c14: 13 05 65 0f  	addi	a0, a0, 246
80003c18: 23 2a a1 00  	sw	a0, 20(sp)
80003c1c: 6f 00 40 02  	j	0x80003c40 <.LBB1_62+0xe8>
80003c20: 13 06 10 00  	addi	a2, zero, 1
80003c24: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c28: 93 36 f9 01  	sltiu	a3, s2, 31
80003c2c: 33 f6 c6 00  	and	a2, a3, a2
80003c30: 13 89 07 00  	mv	s2, a5
80003c34: 93 09 05 00  	mv	s3, a0
80003c38: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c3c: 63 0c 06 04  	beqz	a2, 0x80003c94 <.LBB1_62+0x13c>
;       value /= base;
80003c40: 13 85 09 00  	mv	a0, s3
80003c44: 93 85 04 00  	mv	a1, s1
80003c48: 13 06 0c 00  	mv	a2, s8
80003c4c: 93 06 00 00  	mv	a3, zero
80003c50: 97 c0 ff ff  	auipc	ra, 1048572
80003c54: e7 80 00 3b  	jalr	944(ra)
80003c58: 33 06 85 03  	mul	a2, a0, s8
80003c5c: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003c60: 13 77 e6 0f  	andi	a4, a2, 254
80003c64: 93 06 00 03  	addi	a3, zero, 48
80003c68: 93 07 a0 00  	addi	a5, zero, 10
80003c6c: 63 64 f7 00  	bltu	a4, a5, 0x80003c74 <.LBB1_62+0x11c>
80003c70: 83 26 41 01  	lw	a3, 20(sp)
80003c74: 33 86 c6 00  	add	a2, a3, a2
80003c78: 93 06 c1 01  	addi	a3, sp, 28
80003c7c: b3 86 26 01  	add	a3, a3, s2
80003c80: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003c84: e3 9e 04 f8  	bnez	s1, 0x80003c20 <.LBB1_62+0xc8>
80003c88: 33 b6 89 01  	sltu	a2, s3, s8
80003c8c: 13 46 16 00  	xori	a2, a2, 1
80003c90: 6f f0 5f f9  	j	0x80003c24 <.LBB1_62+0xcc>
80003c94: 03 25 41 00  	lw	a0, 4(sp)
80003c98: 93 09 85 00  	addi	s3, a0, 8
80003c9c: 03 25 81 00  	lw	a0, 8(sp)
80003ca0: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003ca4: 13 07 c1 01  	addi	a4, sp, 28
80003ca8: 03 29 c1 00  	lw	s2, 12(sp)
80003cac: 6f 00 80 47  	j	0x80004124 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003cb0: 13 75 04 20  	andi	a0, s0, 512
80003cb4: 63 12 05 0c  	bnez	a0, 0x80003d78 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003cb8: 13 75 04 10  	andi	a0, s0, 256
80003cbc: 63 1e 05 46  	bnez	a0, 0x80004138 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003cc0: 13 75 04 04  	andi	a0, s0, 64
80003cc4: 63 10 05 50  	bnez	a0, 0x800041c4 <.LBB1_124+0x23c>
80003cc8: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003ccc: 93 75 04 08  	andi	a1, s0, 128
80003cd0: 63 8c 05 4e  	beqz	a1, 0x800041c8 <.LBB1_124+0x240>
80003cd4: 83 25 01 01  	lw	a1, 16(sp)
80003cd8: 33 75 b5 00  	and	a0, a0, a1
80003cdc: 6f 00 c0 4e  	j	0x800041c8 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003ce0: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003ce4: 63 14 08 00  	bnez	a6, 0x80003cec <.LBB1_62+0x194>
80003ce8: 13 74 f4 fe  	andi	s0, s0, -17
80003cec: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003cf0: 13 76 04 40  	andi	a2, s0, 1024
80003cf4: 13 56 a6 00  	srli	a2, a2, 10
80003cf8: b3 f5 c5 00  	and	a1, a1, a2
80003cfc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003d00: 63 9c 05 40  	bnez	a1, 0x80004118 <.LBB1_124+0x190>
80003d04: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003d08: 13 56 f8 41  	srai	a2, a6, 31
80003d0c: b3 06 c8 00  	add	a3, a6, a2
80003d10: b3 c6 c6 00  	xor	a3, a3, a2
80003d14: 13 76 04 02  	andi	a2, s0, 32
80003d18: 13 46 16 06  	xori	a2, a2, 97
80003d1c: 93 08 66 0f  	addi	a7, a2, 246
80003d20: 6f 00 40 03  	j	0x80003d54 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d24: 33 05 f6 00  	add	a0, a2, a5
80003d28: 93 87 15 00  	addi	a5, a1, 1
80003d2c: 13 06 c1 01  	addi	a2, sp, 28
80003d30: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d34: b3 b6 86 01  	sltu	a3, a3, s8
80003d38: 93 c6 16 00  	xori	a3, a3, 1
80003d3c: 93 b5 f5 01  	sltiu	a1, a1, 31
80003d40: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d44: 23 00 a6 00  	sb	a0, 0(a2)
80003d48: 93 85 07 00  	mv	a1, a5
80003d4c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003d50: 63 84 04 3c  	beqz	s1, 0x80004118 <.LBB1_124+0x190>
;       value /= base;
80003d54: 33 d7 86 03  	divu	a4, a3, s8
80003d58: 33 06 87 03  	mul	a2, a4, s8
80003d5c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003d60: 13 f5 e7 0f  	andi	a0, a5, 254
80003d64: 13 06 00 03  	addi	a2, zero, 48
80003d68: 93 04 a0 00  	addi	s1, zero, 10
80003d6c: e3 6c 95 fa  	bltu	a0, s1, 0x80003d24 <.LBB1_62+0x1cc>
80003d70: 13 86 08 00  	mv	a2, a7
80003d74: 6f f0 1f fb  	j	0x80003d24 <.LBB1_62+0x1cc>
80003d78: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003d7c: 13 85 79 00  	addi	a0, s3, 7
80003d80: 93 75 85 ff  	andi	a1, a0, -8
80003d84: 03 a9 05 00  	lw	s2, 0(a1)
80003d88: 13 e5 45 00  	ori	a0, a1, 4
80003d8c: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003d90: 33 65 39 01  	or	a0, s2, s3
80003d94: 23 24 b1 00  	sw	a1, 8(sp)
80003d98: 63 14 05 00  	bnez	a0, 0x80003da0 <.LBB1_62+0x248>
80003d9c: 13 74 f4 fe  	andi	s0, s0, -17
80003da0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003da4: 93 75 04 40  	andi	a1, s0, 1024
80003da8: 93 d5 a5 00  	srli	a1, a1, 10
80003dac: 33 75 b5 00  	and	a0, a0, a1
80003db0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003db4: 63 18 05 08  	bnez	a0, 0x80003e44 <.LBB1_62+0x2ec>
80003db8: 93 04 00 00  	mv	s1, zero
80003dbc: 13 75 04 02  	andi	a0, s0, 32
80003dc0: 13 45 15 06  	xori	a0, a0, 97
80003dc4: 13 05 65 0f  	addi	a0, a0, 246
80003dc8: 23 2a a1 00  	sw	a0, 20(sp)
80003dcc: 6f 00 40 02  	j	0x80003df0 <.LBB1_62+0x298>
80003dd0: 13 06 10 00  	addi	a2, zero, 1
80003dd4: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003dd8: 93 b6 f4 01  	sltiu	a3, s1, 31
80003ddc: 33 f6 c6 00  	and	a2, a3, a2
80003de0: 93 84 07 00  	mv	s1, a5
80003de4: 13 09 05 00  	mv	s2, a0
80003de8: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003dec: 63 0c 06 04  	beqz	a2, 0x80003e44 <.LBB1_62+0x2ec>
;       value /= base;
80003df0: 13 05 09 00  	mv	a0, s2
80003df4: 93 85 09 00  	mv	a1, s3
80003df8: 13 06 0c 00  	mv	a2, s8
80003dfc: 93 06 00 00  	mv	a3, zero
80003e00: 97 c0 ff ff  	auipc	ra, 1048572
80003e04: e7 80 00 20  	jalr	512(ra)
80003e08: 33 06 85 03  	mul	a2, a0, s8
80003e0c: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e10: 13 77 e6 0f  	andi	a4, a2, 254
80003e14: 93 06 00 03  	addi	a3, zero, 48
80003e18: 93 07 a0 00  	addi	a5, zero, 10
80003e1c: 63 64 f7 00  	bltu	a4, a5, 0x80003e24 <.LBB1_62+0x2cc>
80003e20: 83 26 41 01  	lw	a3, 20(sp)
80003e24: 33 86 c6 00  	add	a2, a3, a2
80003e28: 93 06 c1 01  	addi	a3, sp, 28
80003e2c: b3 86 96 00  	add	a3, a3, s1
80003e30: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003e34: e3 9e 09 f8  	bnez	s3, 0x80003dd0 <.LBB1_62+0x278>
80003e38: 33 36 89 01  	sltu	a2, s2, s8
80003e3c: 13 46 16 00  	xori	a2, a2, 1
80003e40: 6f f0 5f f9  	j	0x80003dd4 <.LBB1_62+0x27c>
80003e44: 03 25 81 00  	lw	a0, 8(sp)
80003e48: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003e4c: 13 07 c1 01  	addi	a4, sp, 28
80003e50: 03 29 c1 00  	lw	s2, 12(sp)
80003e54: 6f 00 40 40  	j	0x80004258 <.LBB1_124+0x2d0>

80003e58 <.LBB1_108>:
80003e58: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003e5c: 13 79 24 00  	andi	s2, s0, 2
80003e60: 93 04 10 00  	addi	s1, zero, 1
80003e64: 63 1e 09 02  	bnez	s2, 0x80003ea0 <.LBB1_108+0x48>
80003e68: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003e6c: 63 6a 9b 02  	bltu	s6, s1, 0x80003ea0 <.LBB1_108+0x48>
80003e70: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003e74: 13 0c fb ff  	addi	s8, s6, -1
80003e78: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003e7c: 33 86 8c 00  	add	a2, s9, s0
80003e80: 13 05 00 02  	addi	a0, zero, 32
80003e84: 93 05 0a 00  	mv	a1, s4
80003e88: 93 86 0a 00  	mv	a3, s5
80003e8c: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003e90: 13 04 14 00  	addi	s0, s0, 1
80003e94: e3 14 8c fe  	bne	s8, s0, 0x80003e7c <.LBB1_108+0x24>
80003e98: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003e9c: b3 8c 8c 00  	add	s9, s9, s0
80003ea0: 03 c5 09 00  	lbu	a0, 0(s3)
80003ea4: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003ea8: 93 89 49 00  	addi	s3, s3, 4
80003eac: 13 8c 1c 00  	addi	s8, s9, 1
80003eb0: 93 05 0a 00  	mv	a1, s4
80003eb4: 13 86 0c 00  	mv	a2, s9
80003eb8: 93 86 0a 00  	mv	a3, s5
80003ebc: 13 89 0b 00  	mv	s2, s7
80003ec0: e7 80 0b 00  	jalr	s7
80003ec4: 33 b5 64 01  	sltu	a0, s1, s6
80003ec8: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003ecc: 33 65 a4 00  	or	a0, s0, a0
80003ed0: 63 1c 05 3a  	bnez	a0, 0x80004288 <.LBB1_124+0x300>
;           while (l++ < width) {
80003ed4: 33 04 9b 40  	sub	s0, s6, s1
80003ed8: 93 0b e0 02  	addi	s7, zero, 46
80003edc: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003ee0: 13 0c 1c 00  	addi	s8, s8, 1
80003ee4: 13 05 00 02  	addi	a0, zero, 32
80003ee8: 93 05 0a 00  	mv	a1, s4
80003eec: 93 86 0a 00  	mv	a3, s5
80003ef0: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003ef4: 13 04 f4 ff  	addi	s0, s0, -1
80003ef8: e3 12 04 fe  	bnez	s0, 0x80003edc <.LBB1_108+0x84>
80003efc: 13 0b 50 02  	addi	s6, zero, 37
80003f00: 13 04 1d 00  	addi	s0, s10, 1
80003f04: 6f f0 df 91  	j	0x80003820 <.LBB1_183+0x30>

80003f08 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003f08: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003f0c: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003f10: 63 14 05 00  	bnez	a0, 0x80003f18 <.LBB1_117+0x10>
80003f14: 93 fe fe fe  	andi	t4, t4, -17
80003f18: 93 04 a0 00  	addi	s1, zero, 10
80003f1c: 13 04 f0 00  	addi	s0, zero, 15
80003f20: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f24: 13 f6 0e 40  	andi	a2, t4, 1024
80003f28: 13 56 a6 00  	srli	a2, a2, 10
80003f2c: b3 f5 c5 00  	and	a1, a1, a2
80003f30: 93 07 00 00  	mv	a5, zero
80003f34: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f38: 63 98 05 10  	bnez	a1, 0x80004048 <.LBB1_124+0xc0>
80003f3c: 93 05 00 00  	mv	a1, zero
80003f40: 6f 00 40 03  	j	0x80003f74 <.LBB1_117+0x6c>
80003f44: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f48: 33 06 d6 00  	add	a2, a2, a3
80003f4c: 93 87 15 00  	addi	a5, a1, 1
80003f50: 93 06 c1 01  	addi	a3, sp, 28
80003f54: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f58: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003f5c: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f60: 93 b5 f5 01  	sltiu	a1, a1, 31
80003f64: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f68: 23 80 c6 00  	sb	a2, 0(a3)
80003f6c: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f70: 63 0c 07 0c  	beqz	a4, 0x80004048 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f74: 93 76 e5 00  	andi	a3, a0, 14
80003f78: 13 06 00 03  	addi	a2, zero, 48
80003f7c: e3 e4 96 fc  	bltu	a3, s1, 0x80003f44 <.LBB1_117+0x3c>
80003f80: 13 06 70 03  	addi	a2, zero, 55
80003f84: 6f f0 1f fc  	j	0x80003f44 <.LBB1_117+0x3c>

80003f88 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003f88: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003f8c: 03 c5 07 00  	lbu	a0, 0(a5)
80003f90: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003f94: 63 0c 05 02  	beqz	a0, 0x80003fcc <.LBB1_124+0x44>
80003f98: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003f9c: 63 84 0b 00  	beqz	s7, 0x80003fa4 <.LBB1_124+0x1c>
80003fa0: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003fa4: 93 85 f5 ff  	addi	a1, a1, -1
80003fa8: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003fac: 03 c7 16 00  	lbu	a4, 1(a3)
80003fb0: 13 86 16 00  	addi	a2, a3, 1
80003fb4: b3 36 e0 00  	snez	a3, a4
80003fb8: 33 37 b0 00  	snez	a4, a1
80003fbc: 33 77 d7 00  	and	a4, a4, a3
80003fc0: 93 85 f5 ff  	addi	a1, a1, -1
80003fc4: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003fc8: e3 12 07 fe  	bnez	a4, 0x80003fac <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003fcc: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003fd0: 93 75 04 40  	andi	a1, s0, 1024
80003fd4: 93 b4 15 00  	seqz	s1, a1
80003fd8: 23 2a c1 00  	sw	a2, 20(sp)
80003fdc: b3 35 76 01  	sltu	a1, a2, s7
80003fe0: b3 e5 b4 00  	or	a1, s1, a1
80003fe4: 63 94 05 00  	bnez	a1, 0x80003fec <.LBB1_124+0x64>
80003fe8: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003fec: 93 75 24 00  	andi	a1, s0, 2
80003ff0: 23 26 b1 00  	sw	a1, 12(sp)
80003ff4: 63 96 05 2a  	bnez	a1, 0x800042a0 <.LBB1_124+0x318>
80003ff8: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003ffc: 63 fe 65 29  	bgeu	a1, s6, 0x80004298 <.LBB1_124+0x310>
80004000: 23 24 f1 00  	sw	a5, 8(sp)
80004004: 13 04 00 00  	mv	s0, zero
80004008: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
8000400c: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80004010: 33 86 8c 00  	add	a2, s9, s0
80004014: 13 05 00 02  	addi	a0, zero, 32
80004018: 93 05 0a 00  	mv	a1, s4
8000401c: 93 86 0a 00  	mv	a3, s5
80004020: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80004024: 13 04 14 00  	addi	s0, s0, 1
80004028: e3 14 89 fe  	bne	s2, s0, 0x80004010 <.LBB1_124+0x88>
8000402c: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004030: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80004034: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004038: 23 2a b1 00  	sw	a1, 20(sp)
8000403c: b3 8c 8c 00  	add	s9, s9, s0
80004040: 13 09 0c 00  	mv	s2, s8
80004044: 6f 00 c0 25  	j	0x800042a0 <.LBB1_124+0x318>
80004048: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000404c: 13 07 c1 01  	addi	a4, sp, 28
80004050: 93 08 00 01  	addi	a7, zero, 16
80004054: 13 0e 80 00  	addi	t3, zero, 8
80004058: 13 05 09 00  	mv	a0, s2
8000405c: 93 05 0a 00  	mv	a1, s4
80004060: 13 86 0c 00  	mv	a2, s9
80004064: 93 86 0a 00  	mv	a3, s5
80004068: 13 08 00 00  	mv	a6, zero
8000406c: 93 83 0b 00  	mv	t2, s7
80004070: 97 10 00 00  	auipc	ra, 1
80004074: e7 80 00 fa  	jalr	-96(ra)
80004078: 13 0c 05 00  	mv	s8, a0
8000407c: 6f 00 00 21  	j	0x8000428c <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80004080: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80004084: 63 14 08 00  	bnez	a6, 0x8000408c <.LBB1_124+0x104>
80004088: 13 74 f4 fe  	andi	s0, s0, -17
8000408c: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80004090: 13 76 04 40  	andi	a2, s0, 1024
80004094: 13 56 a6 00  	srli	a2, a2, 10
80004098: b3 f5 c5 00  	and	a1, a1, a2
8000409c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800040a0: 63 9c 05 06  	bnez	a1, 0x80004118 <.LBB1_124+0x190>
800040a4: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800040a8: 13 56 f8 41  	srai	a2, a6, 31
800040ac: b3 06 c8 00  	add	a3, a6, a2
800040b0: b3 c6 c6 00  	xor	a3, a3, a2
800040b4: 13 76 04 02  	andi	a2, s0, 32
800040b8: 13 46 16 06  	xori	a2, a2, 97
800040bc: 93 08 66 0f  	addi	a7, a2, 246
800040c0: 6f 00 40 03  	j	0x800040f4 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800040c4: 33 05 f6 00  	add	a0, a2, a5
800040c8: 93 87 15 00  	addi	a5, a1, 1
800040cc: 13 06 c1 01  	addi	a2, sp, 28
800040d0: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800040d4: b3 b6 86 01  	sltu	a3, a3, s8
800040d8: 93 c6 16 00  	xori	a3, a3, 1
800040dc: 93 b5 f5 01  	sltiu	a1, a1, 31
800040e0: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800040e4: 23 00 a6 00  	sb	a0, 0(a2)
800040e8: 93 85 07 00  	mv	a1, a5
800040ec: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800040f0: 63 84 04 02  	beqz	s1, 0x80004118 <.LBB1_124+0x190>
;       value /= base;
800040f4: 33 d7 86 03  	divu	a4, a3, s8
800040f8: 33 06 87 03  	mul	a2, a4, s8
800040fc: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004100: 13 f5 e7 0f  	andi	a0, a5, 254
80004104: 13 06 00 03  	addi	a2, zero, 48
80004108: 93 04 a0 00  	addi	s1, zero, 10
8000410c: e3 6c 95 fa  	bltu	a0, s1, 0x800040c4 <.LBB1_124+0x13c>
80004110: 13 86 08 00  	mv	a2, a7
80004114: 6f f0 1f fb  	j	0x800040c4 <.LBB1_124+0x13c>
80004118: 93 89 49 00  	addi	s3, s3, 4
8000411c: 13 58 f8 01  	srli	a6, a6, 31
80004120: 13 07 c1 01  	addi	a4, sp, 28
80004124: 13 05 09 00  	mv	a0, s2
80004128: 93 05 0a 00  	mv	a1, s4
8000412c: 13 86 0c 00  	mv	a2, s9
80004130: 93 86 0a 00  	mv	a3, s5
80004134: 6f 00 80 13  	j	0x8000426c <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80004138: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
8000413c: 63 14 05 00  	bnez	a0, 0x80004144 <.LBB1_124+0x1bc>
80004140: 13 74 f4 fe  	andi	s0, s0, -17
80004144: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80004148: 13 76 04 40  	andi	a2, s0, 1024
8000414c: 13 56 a6 00  	srli	a2, a2, 10
80004150: b3 f5 c5 00  	and	a1, a1, a2
80004154: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80004158: 63 9c 05 0e  	bnez	a1, 0x80004250 <.LBB1_124+0x2c8>
8000415c: 13 06 00 00  	mv	a2, zero
80004160: 93 75 04 02  	andi	a1, s0, 32
80004164: 93 c5 15 06  	xori	a1, a1, 97
80004168: 13 88 65 0f  	addi	a6, a1, 246
8000416c: 6f 00 40 03  	j	0x800041a0 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004170: 33 87 e7 00  	add	a4, a5, a4
80004174: 93 07 16 00  	addi	a5, a2, 1
80004178: 93 05 c1 01  	addi	a1, sp, 28
8000417c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004180: 33 35 85 01  	sltu	a0, a0, s8
80004184: 13 45 15 00  	xori	a0, a0, 1
80004188: 13 36 f6 01  	sltiu	a2, a2, 31
8000418c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004190: 23 80 e4 00  	sb	a4, 0(s1)
80004194: 13 86 07 00  	mv	a2, a5
80004198: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000419c: 63 8a 05 0a  	beqz	a1, 0x80004250 <.LBB1_124+0x2c8>
;       value /= base;
800041a0: b3 56 85 03  	divu	a3, a0, s8
800041a4: 33 87 86 03  	mul	a4, a3, s8
800041a8: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800041ac: 93 74 e7 0f  	andi	s1, a4, 254
800041b0: 93 07 00 03  	addi	a5, zero, 48
800041b4: 93 05 a0 00  	addi	a1, zero, 10
800041b8: e3 ec b4 fa  	bltu	s1, a1, 0x80004170 <.LBB1_124+0x1e8>
800041bc: 93 07 08 00  	mv	a5, a6
800041c0: 6f f0 1f fb  	j	0x80004170 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800041c4: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800041c8: 63 14 05 00  	bnez	a0, 0x800041d0 <.LBB1_124+0x248>
800041cc: 13 74 f4 fe  	andi	s0, s0, -17
800041d0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800041d4: 13 76 04 40  	andi	a2, s0, 1024
800041d8: 13 56 a6 00  	srli	a2, a2, 10
800041dc: b3 f5 c5 00  	and	a1, a1, a2
800041e0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800041e4: 63 96 05 06  	bnez	a1, 0x80004250 <.LBB1_124+0x2c8>
800041e8: 13 06 00 00  	mv	a2, zero
800041ec: 93 75 04 02  	andi	a1, s0, 32
800041f0: 93 c5 15 06  	xori	a1, a1, 97
800041f4: 13 88 65 0f  	addi	a6, a1, 246
800041f8: 6f 00 40 03  	j	0x8000422c <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800041fc: 33 87 e7 00  	add	a4, a5, a4
80004200: 93 07 16 00  	addi	a5, a2, 1
80004204: 93 05 c1 01  	addi	a1, sp, 28
80004208: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000420c: 33 35 85 01  	sltu	a0, a0, s8
80004210: 13 45 15 00  	xori	a0, a0, 1
80004214: 13 36 f6 01  	sltiu	a2, a2, 31
80004218: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000421c: 23 80 e4 00  	sb	a4, 0(s1)
80004220: 13 86 07 00  	mv	a2, a5
80004224: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004228: 63 84 05 02  	beqz	a1, 0x80004250 <.LBB1_124+0x2c8>
;       value /= base;
8000422c: b3 56 85 03  	divu	a3, a0, s8
80004230: 33 87 86 03  	mul	a4, a3, s8
80004234: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004238: 93 74 e7 0f  	andi	s1, a4, 254
8000423c: 93 07 00 03  	addi	a5, zero, 48
80004240: 93 05 a0 00  	addi	a1, zero, 10
80004244: e3 ec b4 fa  	bltu	s1, a1, 0x800041fc <.LBB1_124+0x274>
80004248: 93 07 08 00  	mv	a5, a6
8000424c: 6f f0 1f fb  	j	0x800041fc <.LBB1_124+0x274>
80004250: 93 89 49 00  	addi	s3, s3, 4
80004254: 13 07 c1 01  	addi	a4, sp, 28
80004258: 13 05 09 00  	mv	a0, s2
8000425c: 93 05 0a 00  	mv	a1, s4
80004260: 13 86 0c 00  	mv	a2, s9
80004264: 93 86 0a 00  	mv	a3, s5
80004268: 13 08 00 00  	mv	a6, zero
8000426c: 93 08 0c 00  	mv	a7, s8
80004270: 93 83 0b 00  	mv	t2, s7
80004274: 13 0e 0b 00  	mv	t3, s6
80004278: 93 0e 04 00  	mv	t4, s0
8000427c: 97 10 00 00  	auipc	ra, 1
80004280: e7 80 40 d9  	jalr	-620(ra)
80004284: 13 0c 05 00  	mv	s8, a0
80004288: 13 0b 50 02  	addi	s6, zero, 37
8000428c: 93 0b e0 02  	addi	s7, zero, 46
80004290: 13 04 1d 00  	addi	s0, s10, 1
80004294: 6f f0 cf d8  	j	0x80003820 <.LBB1_183+0x30>
80004298: 93 85 15 00  	addi	a1, a1, 1
8000429c: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800042a0: 63 00 05 04  	beqz	a0, 0x800042e0 <.LBB1_124+0x358>
800042a4: 13 84 17 00  	addi	s0, a5, 1
800042a8: 6f 00 00 03  	j	0x800042d8 <.LBB1_124+0x350>
800042ac: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800042b0: 13 8c 1c 00  	addi	s8, s9, 1
800042b4: 13 75 f5 0f  	andi	a0, a0, 255
800042b8: 93 05 0a 00  	mv	a1, s4
800042bc: 13 86 0c 00  	mv	a2, s9
800042c0: 93 86 0a 00  	mv	a3, s5
800042c4: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800042c8: 03 45 04 00  	lbu	a0, 0(s0)
800042cc: 13 04 14 00  	addi	s0, s0, 1
800042d0: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800042d4: 63 08 05 00  	beqz	a0, 0x800042e4 <.LBB1_124+0x35c>
800042d8: e3 9c 04 fc  	bnez	s1, 0x800042b0 <.LBB1_124+0x328>
800042dc: e3 98 0b fc  	bnez	s7, 0x800042ac <.LBB1_124+0x324>
800042e0: 13 8c 0c 00  	mv	s8, s9
800042e4: 03 25 c1 00  	lw	a0, 12(sp)
800042e8: 13 35 15 00  	seqz	a0, a0
800042ec: 03 26 41 01  	lw	a2, 20(sp)
800042f0: b3 35 66 01  	sltu	a1, a2, s6
800042f4: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800042f8: 33 65 b5 00  	or	a0, a0, a1
800042fc: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80004300: e3 14 05 f8  	bnez	a0, 0x80004288 <.LBB1_124+0x300>
;           while (l++ < width) {
80004304: 33 04 cb 40  	sub	s0, s6, a2
80004308: 93 0b e0 02  	addi	s7, zero, 46
8000430c: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80004310: 13 0c 1c 00  	addi	s8, s8, 1
80004314: 13 05 00 02  	addi	a0, zero, 32
80004318: 93 05 0a 00  	mv	a1, s4
8000431c: 93 86 0a 00  	mv	a3, s5
80004320: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80004324: 13 04 f4 ff  	addi	s0, s0, -1
80004328: e3 12 04 fe  	bnez	s0, 0x8000430c <.LBB1_124+0x384>
8000432c: 13 0b 50 02  	addi	s6, zero, 37
80004330: 13 04 1d 00  	addi	s0, s10, 1
80004334: 6f f0 cf ce  	j	0x80003820 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80004338: 13 86 0c 00  	mv	a2, s9
8000433c: 63 e4 5c 01  	bltu	s9, s5, 0x80004344 <.LBB1_124+0x3bc>
80004340: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80004344: 13 05 00 00  	mv	a0, zero
80004348: 93 05 0a 00  	mv	a1, s4
8000434c: 93 86 0a 00  	mv	a3, s5
80004350: e7 00 09 00  	jalr	s2
;   return (int)idx;
80004354: 13 85 0c 00  	mv	a0, s9
80004358: 83 2d c1 03  	lw	s11, 60(sp)
8000435c: 03 2d 01 04  	lw	s10, 64(sp)
80004360: 83 2c 41 04  	lw	s9, 68(sp)
80004364: 03 2c 81 04  	lw	s8, 72(sp)
80004368: 83 2b c1 04  	lw	s7, 76(sp)
8000436c: 03 2b 01 05  	lw	s6, 80(sp)
80004370: 83 2a 41 05  	lw	s5, 84(sp)
80004374: 03 2a 81 05  	lw	s4, 88(sp)
80004378: 83 29 c1 05  	lw	s3, 92(sp)
8000437c: 03 29 01 06  	lw	s2, 96(sp)
80004380: 83 24 41 06  	lw	s1, 100(sp)
80004384: 03 24 81 06  	lw	s0, 104(sp)
80004388: 83 20 c1 06  	lw	ra, 108(sp)
8000438c: 13 01 01 07  	addi	sp, sp, 112
80004390: 67 80 00 00  	ret

80004394 <_out_char.llvm.1805434900161566649>:
;   if (character) {
80004394: 63 04 05 0a  	beqz	a0, 0x8000443c <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004398: f3 25 40 f1  	csrr	a1, mhartid
8000439c: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800043a0: 33 86 c5 02  	mul	a2, a1, a2

800043a4 <.LBB2_6>:
800043a4: 97 26 00 00  	auipc	a3, 2
800043a8: 93 86 06 a6  	addi	a3, a3, -1440
800043ac: b3 05 d6 00  	add	a1, a2, a3
800043b0: 03 a7 05 00  	lw	a4, 0(a1)
800043b4: 93 07 17 00  	addi	a5, a4, 1
800043b8: 23 a0 f5 00  	sw	a5, 0(a1)
800043bc: 33 87 e5 00  	add	a4, a1, a4
800043c0: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800043c4: 03 a7 05 00  	lw	a4, 0(a1)
800043c8: 13 07 47 c0  	addi	a4, a4, -1020
800043cc: 33 37 e0 00  	snez	a4, a4
800043d0: 13 05 65 ff  	addi	a0, a0, -10
800043d4: 33 35 a0 00  	snez	a0, a0
800043d8: 33 75 e5 00  	and	a0, a0, a4
800043dc: 63 10 05 06  	bnez	a0, 0x8000443c <.LBB2_8+0x18>
800043e0: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
800043e4: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
800043e8: 23 26 05 00  	sw	zero, 12(a0)
800043ec: 93 06 00 04  	addi	a3, zero, 64
800043f0: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
800043f4: 23 2a 05 00  	sw	zero, 20(a0)
800043f8: 93 06 10 00  	addi	a3, zero, 1
800043fc: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80004400: 23 2e 05 00  	sw	zero, 28(a0)
80004404: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004408: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
8000440c: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004410: 23 22 05 02  	sw	zero, 36(a0)
80004414: 23 20 c5 02  	sw	a2, 32(a0)

80004418 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80004418: 17 25 00 00  	auipc	a0, 2
8000441c: 13 05 85 8a  	addi	a0, a0, -1880
80004420: 23 20 d5 00  	sw	a3, 0(a0)

80004424 <.LBB2_8>:
80004424: 17 25 00 00  	auipc	a0, 2
80004428: 13 05 c5 8d  	addi	a0, a0, -1828
;         while (fromhost == 0)
8000442c: 03 26 05 00  	lw	a2, 0(a0)
80004430: e3 0e 06 fe  	beqz	a2, 0x8000442c <.LBB2_8+0x8>
;         fromhost = 0;
80004434: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80004438: 23 a0 05 00  	sw	zero, 0(a1)
; }
8000443c: 67 80 00 00  	ret

80004440 <_out_null>:
; }
80004440: 67 80 00 00  	ret

80004444 <_ftoa>:
; {
80004444: 13 01 01 f9  	addi	sp, sp, -112
80004448: 23 26 11 06  	sw	ra, 108(sp)
8000444c: 23 24 81 06  	sw	s0, 104(sp)
80004450: 23 22 91 06  	sw	s1, 100(sp)
80004454: 23 20 21 07  	sw	s2, 96(sp)
80004458: 23 2e 31 05  	sw	s3, 92(sp)
8000445c: 23 2c 41 05  	sw	s4, 88(sp)
80004460: 23 2a 51 05  	sw	s5, 84(sp)
80004464: 23 28 61 05  	sw	s6, 80(sp)
80004468: 23 26 71 05  	sw	s7, 76(sp)
8000446c: 23 24 81 05  	sw	s8, 72(sp)
80004470: 23 22 91 05  	sw	s9, 68(sp)
80004474: 23 20 a1 05  	sw	s10, 64(sp)
80004478: 27 3c 81 02  	fsd	fs0, 56(sp)
8000447c: 27 38 91 02  	fsd	fs1, 48(sp)
80004480: 27 34 21 03  	fsd	fs2, 40(sp)

80004484 <.LBB4_83>:
80004484: 97 24 00 00  	auipc	s1, 2
80004488: 93 84 44 8d  	addi	s1, s1, -1836
8000448c: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80004490: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80004494: 93 0a 08 00  	mv	s5, a6
80004498: 13 89 07 00  	mv	s2, a5
8000449c: 93 89 06 00  	mv	s3, a3
800044a0: 13 0a 06 00  	mv	s4, a2
800044a4: 13 8b 05 00  	mv	s6, a1
800044a8: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800044ac: 63 98 04 0e  	bnez	s1, 0x8000459c <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800044b0: 13 f5 2a 00  	andi	a0, s5, 2
800044b4: 93 f5 3a 00  	andi	a1, s5, 3
800044b8: b3 35 b0 00  	snez	a1, a1
800044bc: 13 36 59 00  	sltiu	a2, s2, 5
800044c0: b3 65 b6 00  	or	a1, a2, a1
800044c4: 93 5c 15 00  	srli	s9, a0, 1
800044c8: 13 04 0a 00  	mv	s0, s4
800044cc: 63 96 05 02  	bnez	a1, 0x800044f8 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
800044d0: 93 04 c9 ff  	addi	s1, s2, -4
800044d4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800044d8: 13 04 16 00  	addi	s0, a2, 1
800044dc: 13 05 00 02  	addi	a0, zero, 32
800044e0: 93 05 0b 00  	mv	a1, s6
800044e4: 93 86 09 00  	mv	a3, s3
800044e8: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800044ec: 93 84 f4 ff  	addi	s1, s1, -1
800044f0: 13 06 04 00  	mv	a2, s0
800044f4: e3 92 04 fe  	bnez	s1, 0x800044d8 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
800044f8: 93 04 14 00  	addi	s1, s0, 1
800044fc: 13 05 d0 02  	addi	a0, zero, 45
80004500: 93 05 0b 00  	mv	a1, s6
80004504: 13 06 04 00  	mv	a2, s0
80004508: 93 86 09 00  	mv	a3, s3
8000450c: e7 80 0b 00  	jalr	s7
80004510: 93 0a 24 00  	addi	s5, s0, 2
80004514: 13 05 90 06  	addi	a0, zero, 105
80004518: 93 05 0b 00  	mv	a1, s6
8000451c: 13 86 04 00  	mv	a2, s1
80004520: 93 86 09 00  	mv	a3, s3
80004524: e7 80 0b 00  	jalr	s7
80004528: 13 0c 34 00  	addi	s8, s0, 3
8000452c: 13 05 e0 06  	addi	a0, zero, 110
80004530: 93 05 0b 00  	mv	a1, s6
80004534: 13 86 0a 00  	mv	a2, s5
80004538: 93 86 09 00  	mv	a3, s3
8000453c: e7 80 0b 00  	jalr	s7
80004540: 93 04 44 00  	addi	s1, s0, 4
80004544: 13 05 60 06  	addi	a0, zero, 102
80004548: 93 05 0b 00  	mv	a1, s6
8000454c: 13 06 0c 00  	mv	a2, s8
80004550: 93 86 09 00  	mv	a3, s3
80004554: e7 80 0b 00  	jalr	s7
80004558: 33 85 44 41  	sub	a0, s1, s4
8000455c: 33 35 25 01  	sltu	a0, a0, s2
80004560: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004564: 93 c5 1c 00  	xori	a1, s9, 1
80004568: 33 e5 a5 00  	or	a0, a1, a0
8000456c: 63 16 05 56  	bnez	a0, 0x80004ad8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004570: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004574: 13 84 14 00  	addi	s0, s1, 1
80004578: 13 05 00 02  	addi	a0, zero, 32
8000457c: 93 05 0b 00  	mv	a1, s6
80004580: 13 86 04 00  	mv	a2, s1
80004584: 93 86 09 00  	mv	a3, s3
80004588: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
8000458c: 33 05 8a 00  	add	a0, s4, s0
80004590: 93 04 04 00  	mv	s1, s0
80004594: e3 60 25 ff  	bltu	a0, s2, 0x80004574 <.LBB4_83+0xf0>
80004598: 6f 00 40 54  	j	0x80004adc <.LBB4_90+0x378>
8000459c: 53 04 a5 22  	fmv.d	fs0, fa0

800045a0 <.LBB4_84>:
800045a0: 17 15 00 00  	auipc	a0, 1
800045a4: 13 05 05 7c  	addi	a0, a0, 1984
800045a8: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800045ac: 53 05 05 a2  	fle.d	a0, fa0, ft0
800045b0: 63 1e 05 00  	bnez	a0, 0x800045cc <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800045b4: 93 f5 4a 00  	andi	a1, s5, 4
800045b8: 13 b5 15 00  	seqz	a0, a1
800045bc: 63 82 05 06  	beqz	a1, 0x80004620 <.LBB4_88>

800045c0 <.LBB4_85>:
800045c0: 17 1c 00 00  	auipc	s8, 1
800045c4: 13 0c 0c 4b  	addi	s8, s8, 1200
800045c8: 6f 00 00 06  	j	0x80004628 <.LBB4_88+0x8>

800045cc <.LBB4_86>:
800045cc: 17 15 00 00  	auipc	a0, 1
800045d0: 13 05 c5 79  	addi	a0, a0, 1948
800045d4: 07 30 05 00  	fld	ft0, 0(a0)

800045d8 <.LBB4_87>:
800045d8: 17 15 00 00  	auipc	a0, 1
800045dc: 13 05 85 79  	addi	a0, a0, 1944
800045e0: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
800045e4: 53 05 04 a2  	fle.d	a0, fs0, ft0
800045e8: d3 85 80 a2  	fle.d	a1, ft1, fs0
800045ec: 33 75 b5 00  	and	a0, a0, a1
800045f0: 63 1e 05 0e  	bnez	a0, 0x800046ec <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
800045f4: 13 85 0b 00  	mv	a0, s7
800045f8: 93 05 0b 00  	mv	a1, s6
800045fc: 13 06 0a 00  	mv	a2, s4
80004600: 93 86 09 00  	mv	a3, s3
80004604: 53 05 84 22  	fmv.d	fa0, fs0
80004608: 93 07 09 00  	mv	a5, s2
8000460c: 13 88 0a 00  	mv	a6, s5
80004610: 97 00 00 00  	auipc	ra, 0
80004614: e7 80 40 51  	jalr	1300(ra)
80004618: 13 04 05 00  	mv	s0, a0
8000461c: 6f 00 00 4c  	j	0x80004adc <.LBB4_90+0x378>

80004620 <.LBB4_88>:
80004620: 17 1c 00 00  	auipc	s8, 1
80004624: 13 0c fc 46  	addi	s8, s8, 1135
80004628: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000462c: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004630: 13 f5 3a 00  	andi	a0, s5, 3
80004634: 33 35 a0 00  	snez	a0, a0
80004638: b3 b5 2c 01  	sltu	a1, s9, s2
8000463c: 93 c5 15 00  	xori	a1, a1, 1
80004640: 33 65 b5 00  	or	a0, a0, a1
80004644: 93 fa 2a 00  	andi	s5, s5, 2
80004648: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000464c: 63 16 05 02  	bnez	a0, 0x80004678 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80004650: 33 04 99 41  	sub	s0, s2, s9
80004654: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004658: 93 04 16 00  	addi	s1, a2, 1
8000465c: 13 05 00 02  	addi	a0, zero, 32
80004660: 93 05 0b 00  	mv	a1, s6
80004664: 93 86 09 00  	mv	a3, s3
80004668: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000466c: 13 04 f4 ff  	addi	s0, s0, -1
80004670: 13 86 04 00  	mv	a2, s1
80004674: e3 12 04 fe  	bnez	s0, 0x80004658 <.LBB4_88+0x38>
80004678: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
8000467c: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80004680: 33 05 9c 01  	add	a0, s8, s9
80004684: 03 45 05 00  	lbu	a0, 0(a0)
80004688: 13 86 04 00  	mv	a2, s1
8000468c: 13 84 fc ff  	addi	s0, s9, -1
80004690: 93 84 14 00  	addi	s1, s1, 1
80004694: 93 05 0b 00  	mv	a1, s6
80004698: 93 86 09 00  	mv	a3, s3
8000469c: e7 80 0b 00  	jalr	s7
800046a0: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800046a4: e3 1e 04 fc  	bnez	s0, 0x80004680 <.LBB4_88+0x60>
800046a8: 33 85 44 41  	sub	a0, s1, s4
800046ac: 33 35 25 01  	sltu	a0, a0, s2
800046b0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800046b4: 93 c5 1a 00  	xori	a1, s5, 1
800046b8: 33 e5 a5 00  	or	a0, a1, a0
800046bc: 63 1e 05 40  	bnez	a0, 0x80004ad8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800046c0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800046c4: 13 84 14 00  	addi	s0, s1, 1
800046c8: 13 05 00 02  	addi	a0, zero, 32
800046cc: 93 05 0b 00  	mv	a1, s6
800046d0: 13 86 04 00  	mv	a2, s1
800046d4: 93 86 09 00  	mv	a3, s3
800046d8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800046dc: 33 05 8a 00  	add	a0, s4, s0
800046e0: 93 04 04 00  	mv	s1, s0
800046e4: e3 60 25 ff  	bltu	a0, s2, 0x800046c4 <.LBB4_88+0xa4>
800046e8: 6f 00 40 3f  	j	0x80004adc <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
800046ec: 13 f5 0a 40  	andi	a0, s5, 1024
800046f0: 13 0c 60 00  	addi	s8, zero, 6
800046f4: 63 04 05 00  	beqz	a0, 0x800046fc <.LBB4_88+0xdc>
800046f8: 13 0c 07 00  	mv	s8, a4
800046fc: 13 05 a0 00  	addi	a0, zero, 10
80004700: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004704: 63 6c ac 02  	bltu	s8, a0, 0x8000473c <.LBB4_88+0x11c>
80004708: 93 04 6c ff  	addi	s1, s8, -10
8000470c: 13 05 f0 01  	addi	a0, zero, 31
80004710: 63 e4 a4 00  	bltu	s1, a0, 0x80004718 <.LBB4_88+0xf8>
80004714: 93 04 f0 01  	addi	s1, zero, 31
80004718: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
8000471c: 13 05 81 00  	addi	a0, sp, 8
80004720: 93 05 00 03  	addi	a1, zero, 48
80004724: 13 06 04 00  	mv	a2, s0
80004728: 97 c0 ff ff  	auipc	ra, 1048572
8000472c: e7 80 00 e3  	jalr	-464(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004730: 13 c5 f4 ff  	not	a0, s1
80004734: 33 0c ac 00  	add	s8, s8, a0
80004738: 6f 00 80 00  	j	0x80004740 <.LBB4_88+0x120>
8000473c: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80004740: 13 15 3c 00  	slli	a0, s8, 3

80004744 <.LBB4_89>:
80004744: 97 15 00 00  	auipc	a1, 1
80004748: 93 85 c5 50  	addi	a1, a1, 1292
8000474c: 33 05 b5 00  	add	a0, a0, a1
80004750: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80004754: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80004758: 53 80 04 d2  	fcvt.d.w	ft0, s1
8000475c: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80004760: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80004764 <.LBB4_90>:
80004764: 17 15 00 00  	auipc	a0, 1
80004768: 13 05 45 61  	addi	a0, a0, 1556
8000476c: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80004770: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80004774: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80004778: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
8000477c: d3 05 01 a2  	fle.d	a1, ft2, ft0
80004780: 63 90 05 02  	bnez	a1, 0x800047a0 <.LBB4_90+0x3c>
;     ++frac;
80004784: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80004788: 53 01 15 d2  	fcvt.d.wu	ft2, a0
8000478c: d3 15 11 a2  	flt.d	a1, ft2, ft1
80004790: 63 94 05 02  	bnez	a1, 0x800047b8 <.LBB4_90+0x54>
80004794: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004798: 93 84 14 00  	addi	s1, s1, 1
8000479c: 6f 00 c0 01  	j	0x800047b8 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
800047a0: d3 15 01 a2  	flt.d	a1, ft2, ft0
800047a4: 63 9a 05 00  	bnez	a1, 0x800047b8 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
800047a8: 93 35 15 00  	seqz	a1, a0
800047ac: 13 76 15 00  	andi	a2, a0, 1
800047b0: b3 65 b6 00  	or	a1, a2, a1
800047b4: 33 85 a5 00  	add	a0, a1, a0
800047b8: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
800047bc: 63 0c 0c 0c  	beqz	s8, 0x80004894 <.LBB4_90+0x130>
800047c0: 13 06 00 00  	mv	a2, zero
800047c4: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
800047c8: 33 83 85 00  	add	t1, a1, s0
800047cc: 93 02 00 02  	addi	t0, zero, 32
800047d0: 33 87 82 40  	sub	a4, t0, s0
800047d4: b7 d5 cc cc  	lui	a1, 838861
800047d8: 93 83 d5 cc  	addi	t2, a1, -819
800047dc: 13 08 a0 00  	addi	a6, zero, 10
800047e0: 93 08 90 00  	addi	a7, zero, 9
800047e4: 63 04 c7 0c  	beq	a4, a2, 0x800048ac <.LBB4_90+0x148>
800047e8: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
800047ec: 33 35 75 02  	mulhu	a0, a0, t2
800047f0: 13 55 35 00  	srli	a0, a0, 3
800047f4: b3 06 05 03  	mul	a3, a0, a6
800047f8: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
800047fc: 93 e6 06 03  	ori	a3, a3, 48
80004800: b3 07 c3 00  	add	a5, t1, a2
80004804: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004808: 13 06 16 00  	addi	a2, a2, 1
8000480c: e3 ec b8 fc  	bltu	a7, a1, 0x800047e4 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004810: 33 05 c4 00  	add	a0, s0, a2
80004814: 93 05 f5 ff  	addi	a1, a0, -1
80004818: 93 06 e0 01  	addi	a3, zero, 30
8000481c: b3 b6 b6 00  	sltu	a3, a3, a1
80004820: 33 47 cc 00  	xor	a4, s8, a2
80004824: 13 37 17 00  	seqz	a4, a4
80004828: b3 e6 e6 00  	or	a3, a3, a4
8000482c: 63 94 06 08  	bnez	a3, 0x800048b4 <.LBB4_90+0x150>
80004830: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004834: 33 05 85 00  	add	a0, a0, s0
80004838: 93 45 f6 ff  	not	a1, a2
8000483c: 33 8c 85 01  	add	s8, a1, s8
80004840: 33 04 c4 00  	add	s0, s0, a2
80004844: 93 05 f0 01  	addi	a1, zero, 31
80004848: b3 86 85 40  	sub	a3, a1, s0
8000484c: 33 05 c5 00  	add	a0, a0, a2
80004850: 93 05 0c 00  	mv	a1, s8
80004854: 63 64 dc 00  	bltu	s8, a3, 0x8000485c <.LBB4_90+0xf8>
80004858: 93 85 06 00  	mv	a1, a3
8000485c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004860: 93 05 00 03  	addi	a1, zero, 48
80004864: 97 c0 ff ff  	auipc	ra, 1048572
80004868: e7 80 40 cf  	jalr	-780(ra)
8000486c: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004870: b3 05 a4 00  	add	a1, s0, a0
80004874: 93 b5 f5 01  	sltiu	a1, a1, 31
80004878: 33 46 ac 00  	xor	a2, s8, a0
8000487c: 33 36 c0 00  	snez	a2, a2
80004880: 33 f6 c5 00  	and	a2, a1, a2
80004884: 13 05 15 00  	addi	a0, a0, 1
80004888: e3 14 06 fe  	bnez	a2, 0x80004870 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
8000488c: 33 05 a4 00  	add	a0, s0, a0
80004890: 6f 00 80 02  	j	0x800048b8 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80004894: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004898: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000489c: 53 05 10 a2  	fle.d	a0, ft0, ft1
800048a0: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
800048a4: b3 84 a4 00  	add	s1, s1, a0
800048a8: 6f 00 c0 03  	j	0x800048e4 <.LBB4_90+0x180>
800048ac: 13 04 00 02  	addi	s0, zero, 32
800048b0: 6f 00 80 03  	j	0x800048e8 <.LBB4_90+0x184>
800048b4: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800048b8: 63 8e 05 00  	beqz	a1, 0x800048d4 <.LBB4_90+0x170>
;       buf[len++] = '.';
800048bc: 13 04 15 00  	addi	s0, a0, 1
800048c0: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
800048c4: 33 85 a5 00  	add	a0, a1, a0
800048c8: 93 05 e0 02  	addi	a1, zero, 46
800048cc: 23 00 b5 00  	sb	a1, 0(a0)
800048d0: 6f 00 80 00  	j	0x800048d8 <.LBB4_90+0x174>
800048d4: 13 04 05 00  	mv	s0, a0
800048d8: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
800048dc: 93 02 04 00  	mv	t0, s0
800048e0: 63 64 85 00  	bltu	a0, s0, 0x800048e8 <.LBB4_90+0x184>
800048e4: 93 02 00 02  	addi	t0, zero, 32
800048e8: d3 1c 94 a2  	flt.d	s9, fs0, fs1
800048ec: 37 65 66 66  	lui	a0, 419430
800048f0: 93 05 75 66  	addi	a1, a0, 1639
800048f4: 13 08 a0 00  	addi	a6, zero, 10
800048f8: 93 06 81 00  	addi	a3, sp, 8
800048fc: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004900: 63 80 82 04  	beq	t0, s0, 0x80004940 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80004904: 33 95 b4 02  	mulh	a0, s1, a1
80004908: 93 57 f5 01  	srli	a5, a0, 31
8000490c: 13 55 25 40  	srai	a0, a0, 2
80004910: 33 05 f5 00  	add	a0, a0, a5
80004914: b3 07 05 03  	mul	a5, a0, a6
80004918: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
8000491c: 93 87 07 03  	addi	a5, a5, 48
80004920: 13 0c 14 00  	addi	s8, s0, 1
80004924: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004928: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
8000492c: 23 00 f4 00  	sb	a5, 0(s0)
80004930: 13 04 0c 00  	mv	s0, s8
80004934: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80004938: e3 64 c7 fc  	bltu	a4, a2, 0x80004900 <.LBB4_90+0x19c>
8000493c: 6f 00 80 00  	j	0x80004944 <.LBB4_90+0x1e0>
80004940: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80004944: 93 f4 3a 00  	andi	s1, s5, 3
80004948: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000494c: 63 96 a4 06  	bne	s1, a0, 0x800049b8 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004950: 63 0c 09 00  	beqz	s2, 0x80004968 <.LBB4_90+0x204>
80004954: 13 f5 ca 00  	andi	a0, s5, 12
80004958: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000495c: 33 e5 ac 00  	or	a0, s9, a0
80004960: 33 09 a9 40  	sub	s2, s2, a0
80004964: 6f 00 80 00  	j	0x8000496c <.LBB4_90+0x208>
80004968: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000496c: 33 35 2c 01  	sltu	a0, s8, s2
80004970: 93 45 15 00  	xori	a1, a0, 1
80004974: 13 05 f0 01  	addi	a0, zero, 31
80004978: 33 36 85 01  	sltu	a2, a0, s8
8000497c: b3 65 b6 00  	or	a1, a2, a1
80004980: 63 9c 05 02  	bnez	a1, 0x800049b8 <.LBB4_90+0x254>
80004984: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80004988: 93 45 fc ff  	not	a1, s8
8000498c: b3 05 b9 00  	add	a1, s2, a1
80004990: 33 06 85 41  	sub	a2, a0, s8
80004994: 33 85 86 01  	add	a0, a3, s8
80004998: 63 e4 c5 00  	bltu	a1, a2, 0x800049a0 <.LBB4_90+0x23c>
8000499c: 93 05 06 00  	mv	a1, a2
800049a0: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
800049a4: 93 05 00 03  	addi	a1, zero, 48
800049a8: 13 06 04 00  	mv	a2, s0
800049ac: 97 c0 ff ff  	auipc	ra, 1048572
800049b0: e7 80 c0 ba  	jalr	-1108(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800049b4: 33 0c 84 01  	add	s8, s0, s8
800049b8: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
800049bc: 63 6a 85 05  	bltu	a0, s8, 0x80004a10 <.LBB4_90+0x2ac>
;     if (negative) {
800049c0: 63 8c 0c 00  	beqz	s9, 0x800049d8 <.LBB4_90+0x274>
800049c4: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
800049c8: 33 05 85 01  	add	a0, a0, s8
800049cc: 13 0c 1c 00  	addi	s8, s8, 1
800049d0: 93 05 d0 02  	addi	a1, zero, 45
800049d4: 6f 00 80 03  	j	0x80004a0c <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800049d8: 13 f5 4a 00  	andi	a0, s5, 4
800049dc: 63 10 05 02  	bnez	a0, 0x800049fc <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800049e0: 13 f5 8a 00  	andi	a0, s5, 8
800049e4: 63 06 05 02  	beqz	a0, 0x80004a10 <.LBB4_90+0x2ac>
800049e8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800049ec: 33 05 85 01  	add	a0, a0, s8
800049f0: 13 0c 1c 00  	addi	s8, s8, 1
800049f4: 93 05 00 02  	addi	a1, zero, 32
800049f8: 6f 00 40 01  	j	0x80004a0c <.LBB4_90+0x2a8>
800049fc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004a00: 33 05 85 01  	add	a0, a0, s8
80004a04: 13 0c 1c 00  	addi	s8, s8, 1
80004a08: 93 05 b0 02  	addi	a1, zero, 43
80004a0c: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004a10: 33 35 90 00  	snez	a0, s1
80004a14: b3 35 2c 01  	sltu	a1, s8, s2
80004a18: 93 c5 15 00  	xori	a1, a1, 1
80004a1c: 33 65 b5 00  	or	a0, a0, a1
80004a20: 93 fa 2a 00  	andi	s5, s5, 2
80004a24: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004a28: 63 16 05 02  	bnez	a0, 0x80004a54 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004a2c: b3 04 89 41  	sub	s1, s2, s8
80004a30: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004a34: 13 04 16 00  	addi	s0, a2, 1
80004a38: 13 05 00 02  	addi	a0, zero, 32
80004a3c: 93 05 0b 00  	mv	a1, s6
80004a40: 93 86 09 00  	mv	a3, s3
80004a44: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004a48: 93 84 f4 ff  	addi	s1, s1, -1
80004a4c: 13 06 04 00  	mv	a2, s0
80004a50: e3 92 04 fe  	bnez	s1, 0x80004a34 <.LBB4_90+0x2d0>
80004a54: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80004a58: 63 0c 0c 02  	beqz	s8, 0x80004a90 <.LBB4_90+0x32c>
80004a5c: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80004a60: 33 85 8c 01  	add	a0, s9, s8
80004a64: 03 45 05 00  	lbu	a0, 0(a0)
80004a68: 13 0d fc ff  	addi	s10, s8, -1
80004a6c: 93 04 14 00  	addi	s1, s0, 1
80004a70: 93 05 0b 00  	mv	a1, s6
80004a74: 13 06 04 00  	mv	a2, s0
80004a78: 93 86 09 00  	mv	a3, s3
80004a7c: e7 80 0b 00  	jalr	s7
80004a80: 13 84 04 00  	mv	s0, s1
80004a84: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80004a88: e3 1c 0d fc  	bnez	s10, 0x80004a60 <.LBB4_90+0x2fc>
80004a8c: 6f 00 80 00  	j	0x80004a94 <.LBB4_90+0x330>
80004a90: 93 04 04 00  	mv	s1, s0
80004a94: 33 85 44 41  	sub	a0, s1, s4
80004a98: 33 35 25 01  	sltu	a0, a0, s2
80004a9c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004aa0: 93 c5 1a 00  	xori	a1, s5, 1
80004aa4: 33 e5 a5 00  	or	a0, a1, a0
80004aa8: 63 18 05 02  	bnez	a0, 0x80004ad8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004aac: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004ab0: 13 84 14 00  	addi	s0, s1, 1
80004ab4: 13 05 00 02  	addi	a0, zero, 32
80004ab8: 93 05 0b 00  	mv	a1, s6
80004abc: 13 86 04 00  	mv	a2, s1
80004ac0: 93 86 09 00  	mv	a3, s3
80004ac4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004ac8: 33 05 8a 00  	add	a0, s4, s0
80004acc: 93 04 04 00  	mv	s1, s0
80004ad0: e3 60 25 ff  	bltu	a0, s2, 0x80004ab0 <.LBB4_90+0x34c>
80004ad4: 6f 00 80 00  	j	0x80004adc <.LBB4_90+0x378>
80004ad8: 13 84 04 00  	mv	s0, s1
; }
80004adc: 13 05 04 00  	mv	a0, s0
80004ae0: 07 39 81 02  	fld	fs2, 40(sp)
80004ae4: 87 34 01 03  	fld	fs1, 48(sp)
80004ae8: 07 34 81 03  	fld	fs0, 56(sp)
80004aec: 03 2d 01 04  	lw	s10, 64(sp)
80004af0: 83 2c 41 04  	lw	s9, 68(sp)
80004af4: 03 2c 81 04  	lw	s8, 72(sp)
80004af8: 83 2b c1 04  	lw	s7, 76(sp)
80004afc: 03 2b 01 05  	lw	s6, 80(sp)
80004b00: 83 2a 41 05  	lw	s5, 84(sp)
80004b04: 03 2a 81 05  	lw	s4, 88(sp)
80004b08: 83 29 c1 05  	lw	s3, 92(sp)
80004b0c: 03 29 01 06  	lw	s2, 96(sp)
80004b10: 83 24 41 06  	lw	s1, 100(sp)
80004b14: 03 24 81 06  	lw	s0, 104(sp)
80004b18: 83 20 c1 06  	lw	ra, 108(sp)
80004b1c: 13 01 01 07  	addi	sp, sp, 112
80004b20: 67 80 00 00  	ret

80004b24 <_etoa>:
; {
80004b24: 13 01 01 f8  	addi	sp, sp, -128
80004b28: 23 2e 11 06  	sw	ra, 124(sp)
80004b2c: 23 2c 81 06  	sw	s0, 120(sp)
80004b30: 23 2a 91 06  	sw	s1, 116(sp)
80004b34: 23 28 21 07  	sw	s2, 112(sp)
80004b38: 23 26 31 07  	sw	s3, 108(sp)
80004b3c: 23 24 41 07  	sw	s4, 104(sp)
80004b40: 23 22 51 07  	sw	s5, 100(sp)
80004b44: 23 20 61 07  	sw	s6, 96(sp)
80004b48: 23 2e 71 05  	sw	s7, 92(sp)
80004b4c: 23 2c 81 05  	sw	s8, 88(sp)
80004b50: 23 2a 91 05  	sw	s9, 84(sp)
80004b54: 23 28 a1 05  	sw	s10, 80(sp)
80004b58: 23 26 b1 05  	sw	s11, 76(sp)

80004b5c <.LBB5_43>:
80004b5c: 97 14 00 00  	auipc	s1, 1
80004b60: 93 84 44 22  	addi	s1, s1, 548
80004b64: 87 b0 04 00  	fld	ft1, 0(s1)

80004b68 <.LBB5_44>:
80004b68: 97 14 00 00  	auipc	s1, 1
80004b6c: 93 84 04 22  	addi	s1, s1, 544
80004b70: 07 b1 04 00  	fld	ft2, 0(s1)
80004b74: 53 00 a5 22  	fmv.d	ft0, fa0
80004b78: d3 04 15 a2  	fle.d	s1, fa0, ft1
80004b7c: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004b80: b3 f4 84 00  	and	s1, s1, s0
80004b84: 93 0a 08 00  	mv	s5, a6
80004b88: 13 89 07 00  	mv	s2, a5
80004b8c: 93 07 07 00  	mv	a5, a4
80004b90: 93 89 06 00  	mv	s3, a3
80004b94: 13 0a 06 00  	mv	s4, a2
80004b98: 13 8b 05 00  	mv	s6, a1
80004b9c: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004ba0: 63 92 04 06  	bnez	s1, 0x80004c04 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80004ba4: 13 85 0b 00  	mv	a0, s7
80004ba8: 93 05 0b 00  	mv	a1, s6
80004bac: 13 06 0a 00  	mv	a2, s4
80004bb0: 93 86 09 00  	mv	a3, s3
80004bb4: 53 05 00 22  	fmv.d	fa0, ft0
80004bb8: 13 87 07 00  	mv	a4, a5
80004bbc: 93 07 09 00  	mv	a5, s2
80004bc0: 13 88 0a 00  	mv	a6, s5
80004bc4: 83 2d c1 04  	lw	s11, 76(sp)
80004bc8: 03 2d 01 05  	lw	s10, 80(sp)
80004bcc: 83 2c 41 05  	lw	s9, 84(sp)
80004bd0: 03 2c 81 05  	lw	s8, 88(sp)
80004bd4: 83 2b c1 05  	lw	s7, 92(sp)
80004bd8: 03 2b 01 06  	lw	s6, 96(sp)
80004bdc: 83 2a 41 06  	lw	s5, 100(sp)
80004be0: 03 2a 81 06  	lw	s4, 104(sp)
80004be4: 83 29 c1 06  	lw	s3, 108(sp)
80004be8: 03 29 01 07  	lw	s2, 112(sp)
80004bec: 83 24 41 07  	lw	s1, 116(sp)
80004bf0: 03 24 81 07  	lw	s0, 120(sp)
80004bf4: 83 20 c1 07  	lw	ra, 124(sp)
80004bf8: 13 01 01 08  	addi	sp, sp, 128
80004bfc: 17 03 00 00  	auipc	t1, 0
80004c00: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80004c04: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004c08: 13 f5 0a 40  	andi	a0, s5, 1024
80004c0c: 13 07 60 00  	addi	a4, zero, 6
80004c10: 63 04 05 00  	beqz	a0, 0x80004c18 <.LBB5_44+0xb0>
80004c14: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004c18: 27 30 a1 02  	fsd	fa0, 32(sp)
80004c1c: 83 25 41 02  	lw	a1, 36(sp)
80004c20: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004c24: 93 d6 45 01  	srli	a3, a1, 20
80004c28: b7 07 10 00  	lui	a5, 256
80004c2c: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004c30: b3 f5 f5 00  	and	a1, a1, a5
80004c34: 23 2c c1 00  	sw	a2, 24(sp)
80004c38: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004c3c: b3 e5 c5 00  	or	a1, a1, a2
80004c40: 23 2e b1 00  	sw	a1, 28(sp)
80004c44: 87 30 81 01  	fld	ft1, 24(sp)

80004c48 <.LBB5_45>:
80004c48: 97 15 00 00  	auipc	a1, 1
80004c4c: 93 85 85 14  	addi	a1, a1, 328
80004c50: 07 b1 05 00  	fld	ft2, 0(a1)

80004c54 <.LBB5_46>:
80004c54: 97 15 00 00  	auipc	a1, 1
80004c58: 93 85 45 14  	addi	a1, a1, 324
80004c5c: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80004c60: 93 f5 f6 7f  	andi	a1, a3, 2047
80004c64: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004c68: 53 82 05 d2  	fcvt.d.w	ft4, a1
80004c6c: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80004c70 <.LBB5_47>:
80004c70: 97 15 00 00  	auipc	a1, 1
80004c74: 93 85 05 13  	addi	a1, a1, 304
80004c78: 07 b1 05 00  	fld	ft2, 0(a1)

80004c7c <.LBB5_48>:
80004c7c: 97 15 00 00  	auipc	a1, 1
80004c80: 93 85 c5 12  	addi	a1, a1, 300
80004c84: 87 b1 05 00  	fld	ft3, 0(a1)

80004c88 <.LBB5_49>:
80004c88: 97 15 00 00  	auipc	a1, 1
80004c8c: 93 85 85 12  	addi	a1, a1, 296
80004c90: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80004c94: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004c98: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004c9c: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004ca0: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004ca4 <.LBB5_50>:
80004ca4: 17 16 00 00  	auipc	a2, 1
80004ca8: 13 06 46 11  	addi	a2, a2, 276
80004cac: 87 31 06 00  	fld	ft3, 0(a2)

80004cb0 <.LBB5_51>:
80004cb0: 17 16 00 00  	auipc	a2, 1
80004cb4: 13 06 06 11  	addi	a2, a2, 272
80004cb8: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004cbc: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004cc0: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004cc4: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004cc8: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004ccc: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004cd0: 13 06 f6 3f  	addi	a2, a2, 1023
80004cd4: 23 28 01 00  	sw	zero, 16(sp)
80004cd8: 13 16 46 01  	slli	a2, a2, 20
80004cdc: 23 2a c1 00  	sw	a2, 20(sp)

80004ce0 <.LBB5_52>:
80004ce0: 17 16 00 00  	auipc	a2, 1
80004ce4: 13 06 06 0f  	addi	a2, a2, 240
80004ce8: 87 31 06 00  	fld	ft3, 0(a2)

80004cec <.LBB5_53>:
80004cec: 17 16 00 00  	auipc	a2, 1
80004cf0: 13 06 c6 0e  	addi	a2, a2, 236
80004cf4: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004cf8: 87 32 01 01  	fld	ft5, 16(sp)

80004cfc <.LBB5_54>:
80004cfc: 17 16 00 00  	auipc	a2, 1
80004d00: 13 06 c6 0c  	addi	a2, a2, 204
80004d04: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004d08: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004d0c <.LBB5_55>:
80004d0c: 17 16 00 00  	auipc	a2, 1
80004d10: 13 06 46 0d  	addi	a2, a2, 212
80004d14: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004d18: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004d1c: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004d20: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004d24: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004d28: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004d2c: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004d30: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004d34: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004d38: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004d3c: 63 0a 06 00  	beqz	a2, 0x80004d50 <.LBB5_56+0x10>

80004d40 <.LBB5_56>:
80004d40: 97 16 00 00  	auipc	a3, 1
80004d44: 93 86 86 0a  	addi	a3, a3, 168
80004d48: 07 b1 06 00  	fld	ft2, 0(a3)
80004d4c: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004d50: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004d54: 93 05 34 06  	addi	a1, s0, 99
80004d58: 93 b5 75 0c  	sltiu	a1, a1, 199
80004d5c: 13 06 50 00  	addi	a2, zero, 5
80004d60: b7 16 00 00  	lui	a3, 1
80004d64: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004d68: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004d6c: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004d70: 63 84 06 06  	beqz	a3, 0x80004dd8 <.LBB5_58+0x58>

80004d74 <.LBB5_57>:
80004d74: 97 15 00 00  	auipc	a1, 1
80004d78: 93 85 c5 07  	addi	a1, a1, 124
80004d7c: 07 b1 05 00  	fld	ft2, 0(a1)

80004d80 <.LBB5_58>:
80004d80: 97 15 00 00  	auipc	a1, 1
80004d84: 93 85 85 07  	addi	a1, a1, 120
80004d88: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004d8c: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004d90: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004d94: b3 e5 c5 00  	or	a1, a1, a2
80004d98: 63 98 05 00  	bnez	a1, 0x80004da8 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004d9c: 63 40 e4 02  	blt	s0, a4, 0x80004dbc <.LBB5_58+0x3c>
80004da0: 13 07 00 00  	mv	a4, zero
80004da4: 6f 00 00 02  	j	0x80004dc4 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004da8: 63 06 07 02  	beqz	a4, 0x80004dd4 <.LBB5_58+0x54>
80004dac: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004db0: 13 45 15 00  	xori	a0, a0, 1
80004db4: 33 07 a7 40  	sub	a4, a4, a0
80004db8: 6f 00 00 02  	j	0x80004dd8 <.LBB5_58+0x58>
80004dbc: 13 45 f4 ff  	not	a0, s0
80004dc0: 33 07 a7 00  	add	a4, a4, a0
80004dc4: 13 04 00 00  	mv	s0, zero
80004dc8: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004dcc: 93 ea 0a 40  	ori	s5, s5, 1024
80004dd0: 6f 00 80 00  	j	0x80004dd8 <.LBB5_58+0x58>
80004dd4: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004dd8: b3 05 99 41  	sub	a1, s2, s9
80004ddc: 33 36 b9 00  	sltu	a2, s2, a1
80004de0: 13 05 00 00  	mv	a0, zero
80004de4: 63 14 06 00  	bnez	a2, 0x80004dec <.LBB5_58+0x6c>
80004de8: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004dec: 93 07 00 00  	mv	a5, zero
80004df0: 93 d5 1a 00  	srli	a1, s5, 1
80004df4: 93 f4 15 00  	andi	s1, a1, 1
80004df8: b3 35 90 01  	snez	a1, s9
80004dfc: b3 f5 b4 00  	and	a1, s1, a1
80004e00: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004e04: 63 94 05 00  	bnez	a1, 0x80004e0c <.LBB5_58+0x8c>
80004e08: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004e0c: 93 35 14 00  	seqz	a1, s0
80004e10: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004e14: 63 94 05 00  	bnez	a1, 0x80004e1c <.LBB5_58+0x9c>
80004e18: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004e1c: 63 04 05 00  	beqz	a0, 0x80004e24 <.LBB5_58+0xa4>
80004e20: 53 15 a5 22  	fneg.d	fa0, fa0
80004e24: 37 f5 ff ff  	lui	a0, 1048575
80004e28: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004e2c: 33 f8 aa 00  	and	a6, s5, a0
80004e30: 13 85 0b 00  	mv	a0, s7
80004e34: 93 05 0b 00  	mv	a1, s6
80004e38: 13 06 0a 00  	mv	a2, s4
80004e3c: 93 86 09 00  	mv	a3, s3
80004e40: 97 f0 ff ff  	auipc	ra, 1048575
80004e44: e7 80 40 60  	jalr	1540(ra)
80004e48: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004e4c: 63 82 0c 18  	beqz	s9, 0x80004fd0 <.LBB5_58+0x250>
80004e50: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004e54: 13 f5 0a 02  	andi	a0, s5, 32
80004e58: 13 45 55 06  	xori	a0, a0, 101
80004e5c: 93 05 0b 00  	mv	a1, s6
80004e60: 13 06 0d 00  	mv	a2, s10
80004e64: 93 86 09 00  	mv	a3, s3
80004e68: e7 80 0b 00  	jalr	s7
80004e6c: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004e70: 93 5a f4 01  	srli	s5, s0, 31
80004e74: 13 55 f4 41  	srai	a0, s0, 31
80004e78: b3 05 a4 00  	add	a1, s0, a0
80004e7c: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004e80: 93 8d dc ff  	addi	s11, s9, -3
80004e84: 13 04 f0 01  	addi	s0, zero, 31
80004e88: 37 d5 cc cc  	lui	a0, 838861
80004e8c: 13 05 d5 cc  	addi	a0, a0, -819
80004e90: 13 08 a0 00  	addi	a6, zero, 10
80004e94: 93 08 c1 02  	addi	a7, sp, 44
80004e98: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004e9c: b3 37 a7 02  	mulhu	a5, a4, a0
80004ea0: 93 d5 37 00  	srli	a1, a5, 3
80004ea4: b3 87 05 03  	mul	a5, a1, a6
80004ea8: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004eac: 13 e6 07 03  	ori	a2, a5, 48
80004eb0: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004eb4: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004eb8: 13 0c 1c 00  	addi	s8, s8, 1
80004ebc: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004ec0: 33 b6 e2 00  	sltu	a2, t0, a4
80004ec4: 33 f6 c7 00  	and	a2, a5, a2
80004ec8: 93 8d fd ff  	addi	s11, s11, -1
80004ecc: 13 04 f4 ff  	addi	s0, s0, -1
80004ed0: 13 87 05 00  	mv	a4, a1
80004ed4: e3 14 06 fc  	bnez	a2, 0x80004e9c <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004ed8: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004edc: 33 35 ac 00  	sltu	a0, s8, a0
80004ee0: 13 45 15 00  	xori	a0, a0, 1
80004ee4: 93 c5 17 00  	xori	a1, a5, 1
80004ee8: 33 e5 a5 00  	or	a0, a1, a0
80004eec: 63 12 05 04  	bnez	a0, 0x80004f30 <.LBB5_58+0x1b0>
80004ef0: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004ef4: b3 85 8c 41  	sub	a1, s9, s8
80004ef8: 93 85 d5 ff  	addi	a1, a1, -3
80004efc: 13 06 f0 01  	addi	a2, zero, 31
80004f00: 33 06 86 41  	sub	a2, a2, s8
80004f04: 33 05 85 01  	add	a0, a0, s8
80004f08: 63 e4 c5 00  	bltu	a1, a2, 0x80004f10 <.LBB5_58+0x190>
80004f0c: 93 05 06 00  	mv	a1, a2
80004f10: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004f14: 93 05 00 03  	addi	a1, zero, 48
80004f18: 97 b0 ff ff  	auipc	ra, 1048571
80004f1c: e7 80 00 64  	jalr	1600(ra)
;   if (flags & FLAGS_HASH) {
80004f20: 63 e4 8d 00  	bltu	s11, s0, 0x80004f28 <.LBB5_58+0x1a8>
80004f24: 93 0d 04 00  	mv	s11, s0
80004f28: 33 85 8d 01  	add	a0, s11, s8
80004f2c: 13 0c 15 00  	addi	s8, a0, 1
80004f30: 83 2c c1 00  	lw	s9, 12(sp)
80004f34: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004f38: 63 60 85 03  	bltu	a0, s8, 0x80004f58 <.LBB5_58+0x1d8>
80004f3c: 13 05 c1 02  	addi	a0, sp, 44
80004f40: 33 05 85 01  	add	a0, a0, s8
80004f44: 93 05 d0 02  	addi	a1, zero, 45
80004f48: 63 94 0a 00  	bnez	s5, 0x80004f50 <.LBB5_58+0x1d0>
80004f4c: 93 05 b0 02  	addi	a1, zero, 43
80004f50: 13 0c 1c 00  	addi	s8, s8, 1
80004f54: 23 00 b5 00  	sb	a1, 0(a0)
80004f58: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004f5c: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004f60: 33 85 8a 01  	add	a0, s5, s8
80004f64: 03 45 05 00  	lbu	a0, 0(a0)
80004f68: 13 06 04 00  	mv	a2, s0
80004f6c: 93 04 fc ff  	addi	s1, s8, -1
80004f70: 13 04 14 00  	addi	s0, s0, 1
80004f74: 93 05 0b 00  	mv	a1, s6
80004f78: 93 86 09 00  	mv	a3, s3
80004f7c: e7 80 0b 00  	jalr	s7
80004f80: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004f84: e3 9e 04 fc  	bnez	s1, 0x80004f60 <.LBB5_58+0x1e0>
80004f88: 33 05 44 41  	sub	a0, s0, s4
80004f8c: 33 35 25 01  	sltu	a0, a0, s2
80004f90: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004f94: 93 c5 1c 00  	xori	a1, s9, 1
80004f98: 33 e5 a5 00  	or	a0, a1, a0
80004f9c: 63 18 05 02  	bnez	a0, 0x80004fcc <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004fa0: b3 04 40 41  	neg	s1, s4
80004fa4: 13 0d 14 00  	addi	s10, s0, 1
80004fa8: 13 05 00 02  	addi	a0, zero, 32
80004fac: 93 05 0b 00  	mv	a1, s6
80004fb0: 13 06 04 00  	mv	a2, s0
80004fb4: 93 86 09 00  	mv	a3, s3
80004fb8: e7 80 0b 00  	jalr	s7
80004fbc: 33 85 a4 01  	add	a0, s1, s10
80004fc0: 13 04 0d 00  	mv	s0, s10
80004fc4: e3 60 25 ff  	bltu	a0, s2, 0x80004fa4 <.LBB5_58+0x224>
80004fc8: 6f 00 80 00  	j	0x80004fd0 <.LBB5_58+0x250>
80004fcc: 13 0d 04 00  	mv	s10, s0
; }
80004fd0: 13 05 0d 00  	mv	a0, s10
80004fd4: 83 2d c1 04  	lw	s11, 76(sp)
80004fd8: 03 2d 01 05  	lw	s10, 80(sp)
80004fdc: 83 2c 41 05  	lw	s9, 84(sp)
80004fe0: 03 2c 81 05  	lw	s8, 88(sp)
80004fe4: 83 2b c1 05  	lw	s7, 92(sp)
80004fe8: 03 2b 01 06  	lw	s6, 96(sp)
80004fec: 83 2a 41 06  	lw	s5, 100(sp)
80004ff0: 03 2a 81 06  	lw	s4, 104(sp)
80004ff4: 83 29 c1 06  	lw	s3, 108(sp)
80004ff8: 03 29 01 07  	lw	s2, 112(sp)
80004ffc: 83 24 41 07  	lw	s1, 116(sp)
80005000: 03 24 81 07  	lw	s0, 120(sp)
80005004: 83 20 c1 07  	lw	ra, 124(sp)
80005008: 13 01 01 08  	addi	sp, sp, 128
8000500c: 67 80 00 00  	ret

80005010 <_ntoa_format>:
; {
80005010: 13 01 01 fc  	addi	sp, sp, -64
80005014: 23 2e 11 02  	sw	ra, 60(sp)
80005018: 23 2c 81 02  	sw	s0, 56(sp)
8000501c: 23 2a 91 02  	sw	s1, 52(sp)
80005020: 23 28 21 03  	sw	s2, 48(sp)
80005024: 23 26 31 03  	sw	s3, 44(sp)
80005028: 23 24 41 03  	sw	s4, 40(sp)
8000502c: 23 22 51 03  	sw	s5, 36(sp)
80005030: 23 20 61 03  	sw	s6, 32(sp)
80005034: 23 2e 71 01  	sw	s7, 28(sp)
80005038: 23 2c 81 01  	sw	s8, 24(sp)
8000503c: 23 2a 91 01  	sw	s9, 20(sp)
80005040: 23 28 a1 01  	sw	s10, 16(sp)
80005044: 23 26 b1 01  	sw	s11, 12(sp)
80005048: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
8000504c: 93 fa 2e 00  	andi	s5, t4, 2
80005050: 13 09 0e 00  	mv	s2, t3
80005054: 13 8d 03 00  	mv	s10, t2
80005058: 93 8c 08 00  	mv	s9, a7
8000505c: 13 8c 07 00  	mv	s8, a5
80005060: 93 89 06 00  	mv	s3, a3
80005064: 13 0a 06 00  	mv	s4, a2
80005068: 13 8b 05 00  	mv	s6, a1
8000506c: 93 0d 05 00  	mv	s11, a0
80005070: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80005074: 63 9e 0a 0c  	bnez	s5, 0x80005150 <_ntoa_format+0x140>
80005078: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000507c: 63 0e 09 00  	beqz	s2, 0x80005098 <_ntoa_format+0x88>
80005080: 63 0e 04 00  	beqz	s0, 0x8000509c <_ntoa_format+0x8c>
80005084: 13 f5 cb 00  	andi	a0, s7, 12
80005088: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000508c: 33 65 05 01  	or	a0, a0, a6
80005090: 33 09 a9 40  	sub	s2, s2, a0
80005094: 6f 00 80 00  	j	0x8000509c <_ntoa_format+0x8c>
80005098: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000509c: 33 35 ac 01  	sltu	a0, s8, s10
800050a0: 93 45 15 00  	xori	a1, a0, 1
800050a4: 13 05 f0 01  	addi	a0, zero, 31
800050a8: 33 36 85 01  	sltu	a2, a0, s8
800050ac: b3 65 b6 00  	or	a1, a2, a1
800050b0: 63 94 05 04  	bnez	a1, 0x800050f8 <_ntoa_format+0xe8>
800050b4: 23 22 51 01  	sw	s5, 4(sp)
800050b8: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800050bc: 93 45 fc ff  	not	a1, s8
800050c0: b3 85 a5 01  	add	a1, a1, s10
800050c4: 33 06 85 41  	sub	a2, a0, s8
800050c8: 33 05 87 01  	add	a0, a4, s8
800050cc: 63 e4 c5 00  	bltu	a1, a2, 0x800050d4 <_ntoa_format+0xc4>
800050d0: 93 05 06 00  	mv	a1, a2
800050d4: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800050d8: 93 05 00 03  	addi	a1, zero, 48
800050dc: 13 86 04 00  	mv	a2, s1
800050e0: 97 b0 ff ff  	auipc	ra, 1048571
800050e4: e7 80 80 47  	jalr	1144(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800050e8: 33 8c 84 01  	add	s8, s1, s8
800050ec: 03 27 81 00  	lw	a4, 8(sp)
800050f0: 13 88 0a 00  	mv	a6, s5
800050f4: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800050f8: 63 0c 04 04  	beqz	s0, 0x80005150 <_ntoa_format+0x140>
800050fc: 33 35 2c 01  	sltu	a0, s8, s2
80005100: 93 45 15 00  	xori	a1, a0, 1
80005104: 13 05 f0 01  	addi	a0, zero, 31
80005108: 33 36 85 01  	sltu	a2, a0, s8
8000510c: b3 e5 c5 00  	or	a1, a1, a2
80005110: 63 90 05 04  	bnez	a1, 0x80005150 <_ntoa_format+0x140>
80005114: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005118: 93 45 fc ff  	not	a1, s8
8000511c: b3 05 b9 00  	add	a1, s2, a1
80005120: 33 06 85 41  	sub	a2, a0, s8
80005124: 33 05 87 01  	add	a0, a4, s8
80005128: 63 e4 c5 00  	bltu	a1, a2, 0x80005130 <_ntoa_format+0x120>
8000512c: 93 05 06 00  	mv	a1, a2
80005130: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80005134: 93 05 00 03  	addi	a1, zero, 48
80005138: 13 86 04 00  	mv	a2, s1
8000513c: 97 b0 ff ff  	auipc	ra, 1048571
80005140: e7 80 c0 41  	jalr	1052(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005144: 33 8c 84 01  	add	s8, s1, s8
80005148: 03 27 81 00  	lw	a4, 8(sp)
8000514c: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80005150: 13 f5 0b 01  	andi	a0, s7, 16
80005154: 63 02 05 0e  	beqz	a0, 0x80005238 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80005158: 13 f5 0b 40  	andi	a0, s7, 1024
8000515c: 13 55 a5 00  	srli	a0, a0, 10
80005160: 93 35 1c 00  	seqz	a1, s8
80005164: 33 65 b5 00  	or	a0, a0, a1
80005168: 63 1e 05 02  	bnez	a0, 0x800051a4 <_ntoa_format+0x194>
8000516c: 33 45 ac 01  	xor	a0, s8, s10
80005170: 33 35 a0 00  	snez	a0, a0
80005174: b3 45 2c 01  	xor	a1, s8, s2
80005178: b3 35 b0 00  	snez	a1, a1
8000517c: 33 75 b5 00  	and	a0, a0, a1
80005180: 63 12 05 02  	bnez	a0, 0x800051a4 <_ntoa_format+0x194>
;       len--;
80005184: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80005188: b3 35 a0 00  	snez	a1, a0
8000518c: 13 86 0c ff  	addi	a2, s9, -16
80005190: 13 36 16 00  	seqz	a2, a2
80005194: b3 75 b6 00  	and	a1, a2, a1
80005198: 63 84 05 00  	beqz	a1, 0x800051a0 <_ntoa_format+0x190>
8000519c: 13 05 ec ff  	addi	a0, s8, -2
800051a0: 13 0c 05 00  	mv	s8, a0
800051a4: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800051a8: 63 96 ac 02  	bne	s9, a0, 0x800051d4 <_ntoa_format+0x1c4>
800051ac: 13 f5 0b 02  	andi	a0, s7, 32
800051b0: 93 55 55 00  	srli	a1, a0, 5
800051b4: 13 06 f0 01  	addi	a2, zero, 31
800051b8: 33 36 86 01  	sltu	a2, a2, s8
800051bc: b3 e5 c5 00  	or	a1, a1, a2
800051c0: 63 9e 05 02  	bnez	a1, 0x800051fc <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800051c4: 33 05 87 01  	add	a0, a4, s8
800051c8: 13 0c 1c 00  	addi	s8, s8, 1
800051cc: 93 05 80 07  	addi	a1, zero, 120
800051d0: 6f 00 c0 04  	j	0x8000521c <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800051d4: 13 85 ec ff  	addi	a0, s9, -2
800051d8: 33 35 a0 00  	snez	a0, a0
800051dc: 93 05 f0 01  	addi	a1, zero, 31
800051e0: b3 b5 85 01  	sltu	a1, a1, s8
800051e4: 33 65 b5 00  	or	a0, a0, a1
800051e8: 63 1c 05 02  	bnez	a0, 0x80005220 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800051ec: 33 05 87 01  	add	a0, a4, s8
800051f0: 13 0c 1c 00  	addi	s8, s8, 1
800051f4: 93 05 20 06  	addi	a1, zero, 98
800051f8: 6f 00 40 02  	j	0x8000521c <_ntoa_format+0x20c>
800051fc: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80005200: 13 35 15 00  	seqz	a0, a0
80005204: 93 c5 15 00  	xori	a1, a1, 1
80005208: 33 65 b5 00  	or	a0, a0, a1
8000520c: 63 1a 05 00  	bnez	a0, 0x80005220 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80005210: 33 05 87 01  	add	a0, a4, s8
80005214: 13 0c 1c 00  	addi	s8, s8, 1
80005218: 93 05 80 05  	addi	a1, zero, 88
8000521c: 23 00 b5 00  	sb	a1, 0(a0)
80005220: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80005224: 63 60 85 07  	bltu	a0, s8, 0x80005284 <_ntoa_format+0x274>
;       buf[len++] = '0';
80005228: 33 05 87 01  	add	a0, a4, s8
8000522c: 13 0c 1c 00  	addi	s8, s8, 1
80005230: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80005234: 23 00 b5 00  	sb	a1, 0(a0)
80005238: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000523c: 63 64 85 05  	bltu	a0, s8, 0x80005284 <_ntoa_format+0x274>
;     if (negative) {
80005240: 63 0a 08 00  	beqz	a6, 0x80005254 <_ntoa_format+0x244>
;       buf[len++] = '-';
80005244: 33 05 87 01  	add	a0, a4, s8
80005248: 13 0c 1c 00  	addi	s8, s8, 1
8000524c: 93 05 d0 02  	addi	a1, zero, 45
80005250: 6f 00 00 03  	j	0x80005280 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80005254: 13 f5 4b 00  	andi	a0, s7, 4
80005258: 63 1e 05 00  	bnez	a0, 0x80005274 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
8000525c: 13 f5 8b 00  	andi	a0, s7, 8
80005260: 63 02 05 02  	beqz	a0, 0x80005284 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80005264: 33 05 87 01  	add	a0, a4, s8
80005268: 13 0c 1c 00  	addi	s8, s8, 1
8000526c: 93 05 00 02  	addi	a1, zero, 32
80005270: 6f 00 00 01  	j	0x80005280 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80005274: 33 05 87 01  	add	a0, a4, s8
80005278: 13 0c 1c 00  	addi	s8, s8, 1
8000527c: 93 05 b0 02  	addi	a1, zero, 43
80005280: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005284: 13 f5 3b 00  	andi	a0, s7, 3
80005288: 33 35 a0 00  	snez	a0, a0
8000528c: b3 35 2c 01  	sltu	a1, s8, s2
80005290: 93 c5 15 00  	xori	a1, a1, 1
80005294: 33 65 b5 00  	or	a0, a0, a1
80005298: 13 04 0a 00  	mv	s0, s4
8000529c: 63 16 05 02  	bnez	a0, 0x800052c8 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800052a0: b3 04 89 41  	sub	s1, s2, s8
800052a4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800052a8: 13 04 16 00  	addi	s0, a2, 1
800052ac: 13 05 00 02  	addi	a0, zero, 32
800052b0: 93 05 0b 00  	mv	a1, s6
800052b4: 93 86 09 00  	mv	a3, s3
800052b8: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800052bc: 93 84 f4 ff  	addi	s1, s1, -1
800052c0: 13 06 04 00  	mv	a2, s0
800052c4: e3 92 04 fe  	bnez	s1, 0x800052a8 <_ntoa_format+0x298>
800052c8: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800052cc: 63 0e 0c 02  	beqz	s8, 0x80005308 <_ntoa_format+0x2f8>
800052d0: 03 25 81 00  	lw	a0, 8(sp)
800052d4: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800052d8: 33 85 8b 01  	add	a0, s7, s8
800052dc: 03 45 05 00  	lbu	a0, 0(a0)
800052e0: 93 0c fc ff  	addi	s9, s8, -1
800052e4: 93 04 14 00  	addi	s1, s0, 1
800052e8: 93 05 0b 00  	mv	a1, s6
800052ec: 13 06 04 00  	mv	a2, s0
800052f0: 93 86 09 00  	mv	a3, s3
800052f4: e7 80 0d 00  	jalr	s11
800052f8: 13 84 04 00  	mv	s0, s1
800052fc: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80005300: e3 9c 0c fc  	bnez	s9, 0x800052d8 <_ntoa_format+0x2c8>
80005304: 6f 00 80 00  	j	0x8000530c <_ntoa_format+0x2fc>
80005308: 93 04 04 00  	mv	s1, s0
8000530c: 33 85 44 41  	sub	a0, s1, s4
80005310: 33 35 25 01  	sltu	a0, a0, s2
80005314: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005318: 93 c5 1a 00  	xori	a1, s5, 1
8000531c: 33 e5 a5 00  	or	a0, a1, a0
80005320: 63 18 05 02  	bnez	a0, 0x80005350 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80005324: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005328: 13 84 14 00  	addi	s0, s1, 1
8000532c: 13 05 00 02  	addi	a0, zero, 32
80005330: 93 05 0b 00  	mv	a1, s6
80005334: 13 86 04 00  	mv	a2, s1
80005338: 93 86 09 00  	mv	a3, s3
8000533c: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80005340: 33 05 8a 00  	add	a0, s4, s0
80005344: 93 04 04 00  	mv	s1, s0
80005348: e3 60 25 ff  	bltu	a0, s2, 0x80005328 <_ntoa_format+0x318>
8000534c: 6f 00 80 00  	j	0x80005354 <_ntoa_format+0x344>
80005350: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80005354: 13 05 04 00  	mv	a0, s0
80005358: 83 2d c1 00  	lw	s11, 12(sp)
8000535c: 03 2d 01 01  	lw	s10, 16(sp)
80005360: 83 2c 41 01  	lw	s9, 20(sp)
80005364: 03 2c 81 01  	lw	s8, 24(sp)
80005368: 83 2b c1 01  	lw	s7, 28(sp)
8000536c: 03 2b 01 02  	lw	s6, 32(sp)
80005370: 83 2a 41 02  	lw	s5, 36(sp)
80005374: 03 2a 81 02  	lw	s4, 40(sp)
80005378: 83 29 c1 02  	lw	s3, 44(sp)
8000537c: 03 29 01 03  	lw	s2, 48(sp)
80005380: 83 24 41 03  	lw	s1, 52(sp)
80005384: 03 24 81 03  	lw	s0, 56(sp)
80005388: 83 20 c1 03  	lw	ra, 60(sp)
8000538c: 13 01 01 04  	addi	sp, sp, 64
80005390: 67 80 00 00  	ret

80005394 <_snrt_init_team>:
;     team->base.root = team;
80005394: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80005398: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
8000539c: 03 23 87 00  	lw	t1, 8(a4)
800053a0: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800053a4: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800053a8: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800053ac: 83 22 47 00  	lw	t0, 4(a4)
800053b0: 33 88 08 03  	mul	a6, a7, a6
800053b4: 33 05 58 02  	mul	a0, a6, t0
800053b8: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800053bc: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800053c0: 33 85 68 40  	sub	a0, a7, t1
800053c4: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800053c8: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800053cc: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800053d0: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800053d4: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800053d8: 03 25 87 01  	lw	a0, 24(a4)
800053dc: b7 05 00 10  	lui	a1, 65536
800053e0: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800053e4: 23 a2 07 02  	sw	zero, 36(a5)
800053e8: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800053ec: 03 25 07 02  	lw	a0, 32(a4)
800053f0: 83 25 47 02  	lw	a1, 36(a4)
800053f4: 23 a4 a7 02  	sw	a0, 40(a5)
800053f8: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800053fc: 23 a8 c7 02  	sw	a2, 48(a5)
80005400: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80005404: 23 ac d7 02  	sw	a3, 56(a5)
80005408: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
8000540c: 03 25 07 01  	lw	a0, 16(a4)
80005410: 33 08 a6 00  	add	a6, a2, a0
80005414: 93 05 08 19  	addi	a1, a6, 400
80005418: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
8000541c: b3 32 a8 00  	sltu	t0, a6, a0
80005420: 93 55 15 00  	srli	a1, a0, 1
80005424: 33 03 b8 00  	add	t1, a6, a1
80005428: b3 35 03 01  	sltu	a1, t1, a6
8000542c: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80005430: 23 a0 67 04  	sw	t1, 64(a5)
80005434: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80005438: 13 15 15 00  	slli	a0, a0, 1
8000543c: b3 05 c5 00  	add	a1, a0, a2
80005440: 33 b5 a5 00  	sltu	a0, a1, a0
80005444: 23 a4 b7 04  	sw	a1, 72(a5)
80005448: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
8000544c: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80005450: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80005454: 37 05 00 00  	lui	a0, 0
80005458: 33 05 45 00  	add	a0, a0, tp
8000545c: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80005460: 03 a5 07 00  	lw	a0, 0(a5)
80005464: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80005468: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000546c: b3 85 b8 40  	sub	a1, a7, a1
80005470: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80005474: b7 05 00 00  	lui	a1, 0
80005478: b3 85 45 00  	add	a1, a1, tp
8000547c: 23 a2 a5 00  	sw	a0, 4(a1)
80005480: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80005484: 33 85 a8 02  	mul	a0, a7, a0

80005488 <.LBB0_1>:
80005488: 97 15 00 00  	auipc	a1, 1
8000548c: 93 85 c5 97  	addi	a1, a1, -1668
80005490: 33 05 b5 00  	add	a0, a0, a1
80005494: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80005498: 83 28 07 03  	lw	a7, 48(a4)
8000549c: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800054a0: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800054a4: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800054a8: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800054ac: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800054b0: 13 05 76 00  	addi	a0, a2, 7
800054b4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800054b8: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800054bc: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800054c0: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800054c4: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800054c8: 03 a5 05 00  	lw	a0, 0(a1)
800054cc: 13 05 f5 44  	addi	a0, a0, 1103
800054d0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800054d4: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800054d8: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800054dc: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800054e0: 37 05 00 00  	lui	a0, 0
800054e4: 33 05 45 00  	add	a0, a0, tp
800054e8: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800054ec: 37 05 00 00  	lui	a0, 0
800054f0: 33 05 45 00  	add	a0, a0, tp
800054f4: 23 26 e5 00  	sw	a4, 12(a0)
; }
800054f8: 67 80 00 00  	ret

800054fc <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800054fc: 37 05 00 00  	lui	a0, 0
80005500: 33 05 45 00  	add	a0, a0, tp
80005504: 03 25 05 00  	lw	a0, 0(a0)
80005508: 03 25 05 00  	lw	a0, 0(a0)
8000550c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80005510: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005514: 33 85 a5 40  	sub	a0, a1, a0
80005518: 67 80 00 00  	ret

8000551c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
8000551c: 37 05 00 00  	lui	a0, 0
80005520: 33 05 45 00  	add	a0, a0, tp
80005524: 03 25 05 00  	lw	a0, 0(a0)
80005528: 03 25 05 00  	lw	a0, 0(a0)
8000552c: 03 25 05 07  	lw	a0, 112(a0)
80005530: 67 80 00 00  	ret

80005534 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80005534: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80005538: 63 44 05 00  	bltz	a0, 0x80005540 <__snrt_isr+0xc>
;         while (1)
8000553c: 6f 00 00 00  	j	0x8000553c <__snrt_isr+0x8>
80005540: b7 05 00 80  	lui	a1, 524288
80005544: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80005548: 33 75 b5 00  	and	a0, a0, a1
8000554c: 13 05 d5 ff  	addi	a0, a0, -3
80005550: 93 55 25 00  	srli	a1, a0, 2
80005554: 13 15 e5 01  	slli	a0, a0, 30
80005558: 33 65 b5 00  	or	a0, a0, a1
8000555c: 93 05 40 00  	addi	a1, zero, 4
80005560: 63 0a b5 06  	beq	a0, a1, 0x800055d4 <.LBB1_7+0x58>
80005564: 63 1a 05 08  	bnez	a0, 0x800055f8 <.LBB1_7+0x7c>
80005568: 37 05 00 00  	lui	a0, 0
8000556c: 33 05 45 00  	add	a0, a0, tp
80005570: 03 25 05 00  	lw	a0, 0(a0)
80005574: 03 25 05 00  	lw	a0, 0(a0)
80005578: f3 25 40 f1  	csrr	a1, mhartid

8000557c <.LBB1_7>:
;     asm volatile(
8000557c: 17 16 00 00  	auipc	a2, 1
80005580: 13 06 46 88  	addi	a2, a2, -1916
80005584: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80005588: 93 06 06 00  	mv	a3, a2
8000558c: 93 02 10 00  	addi	t0, zero, 1
80005590: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80005594: e3 9e 02 fe  	bnez	t0, 0x80005590 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80005598: b7 06 00 00  	lui	a3, 0
8000559c: b3 86 46 00  	add	a3, a3, tp
800055a0: 83 a6 86 00  	lw	a3, 8(a3)
800055a4: 33 85 a5 40  	sub	a0, a1, a0
800055a8: 93 55 35 00  	srli	a1, a0, 3
800055ac: 93 f5 c5 ff  	andi	a1, a1, -4
800055b0: b3 85 b6 00  	add	a1, a3, a1
800055b4: 83 a6 05 00  	lw	a3, 0(a1)
800055b8: 13 07 10 00  	addi	a4, zero, 1
800055bc: 33 15 a7 00  	sll	a0, a4, a0
800055c0: 13 45 f5 ff  	not	a0, a0
800055c4: 33 f5 a6 00  	and	a0, a3, a0
800055c8: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800055cc: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800055d0: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800055d4: 37 05 00 00  	lui	a0, 0
800055d8: 33 05 45 00  	add	a0, a0, tp
800055dc: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800055e0: b7 05 00 00  	lui	a1, 0
800055e4: b3 85 45 00  	add	a1, a1, tp
800055e8: 83 a5 c5 00  	lw	a1, 12(a1)
800055ec: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800055f0: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800055f4: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800055f8: 67 80 00 00  	ret

Disassembly of section .init:

80005600 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80005600: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80005604: 93 81 81 f0  	addi	gp, gp, -248

80005608 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80005608: 97 00 00 00  	auipc	ra, 0
8000560c: e7 80 40 3c  	jalr	964(ra)

80005610 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005610: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005614: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005618: 97 00 00 00  	auipc	ra, 0
8000561c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80005620: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80005624: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80005628: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000562c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80005630: 63 92 02 02  	bnez	t0, 0x80005654 <snrt.crt0.init_registers>

80005634 <.Lpcrel_hi0>:
;     la        t0, _edata
80005634: 97 02 00 00  	auipc	t0, 0
80005638: 93 82 c2 7c  	addi	t0, t0, 1996

8000563c <.Lpcrel_hi1>:
;     la        t1, _end
8000563c: 17 03 00 00  	auipc	t1, 0
80005640: 13 03 83 7c  	addi	t1, t1, 1992
;     bge       t0, t1, 2f
80005644: 63 d8 62 00  	bge	t0, t1, 0x80005654 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80005648: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000564c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80005650: e3 cc 62 fe  	blt	t0, t1, 0x80005648 <.Lpcrel_hi1+0xc>

80005654 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80005654: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80005658: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000565c: 63 82 02 08  	beqz	t0, 0x800056e0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80005660: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80005664: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80005668: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000566c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80005670: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80005674: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80005678: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000567c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80005680: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80005684: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80005688: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000568c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80005690: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80005694: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80005698: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000569c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800056a0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800056a4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800056a8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800056ac: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800056b0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800056b4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800056b8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800056bc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800056c0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800056c4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800056c8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800056cc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800056d0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800056d4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800056d8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800056dc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800056e0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800056e0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800056e4: 23 a0 06 00  	sw	zero, 0(a3)

800056e8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800056e8: 97 02 00 00  	auipc	t0, 0
800056ec: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800056f0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800056f4: 93 87 06 00  	mv	a5, a3

800056f8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800056f8: 97 03 00 00  	auipc	t2, 0
800056fc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80005700: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80005704: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80005708: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000570c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005710: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005714: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005718: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000571c: b3 86 66 40  	sub	a3, a3, t1

80005720 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80005720: 97 02 00 00  	auipc	t0, 0
80005724: 93 82 82 5e  	addi	t0, t0, 1512

80005728 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80005728: 17 03 00 00  	auipc	t1, 0
8000572c: 13 03 03 5e  	addi	t1, t1, 1504

80005730 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80005730: 97 03 00 00  	auipc	t2, 0
80005734: 93 83 83 5d  	addi	t2, t2, 1496

80005738 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80005738: 17 0e 00 00  	auipc	t3, 0
8000573c: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80005740: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80005744: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80005748: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000574c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80005750: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80005754: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80005758: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000575c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80005760: 63 dc 62 00  	bge	t0, t1, 0x80005778 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80005764: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80005768: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000576c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005770: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80005774: e3 c8 62 fe  	blt	t0, t1, 0x80005764 <.Lpcrel_hi7+0x2c>

80005778 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80005778: 97 02 00 00  	auipc	t0, 0
8000577c: 93 82 02 59  	addi	t0, t0, 1424

80005780 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80005780: 17 03 00 00  	auipc	t1, 0
80005784: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80005788: 63 da 62 00  	bge	t0, t1, 0x8000579c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000578c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005790: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005794: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005798: e3 ca 72 fe  	blt	t0, t2, 0x8000578c <.Lpcrel_hi9+0xc>

8000579c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000579c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800057a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800057a4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800057a8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800057ac: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800057b0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800057b4: 97 00 00 00  	auipc	ra, 0
800057b8: e7 80 00 be  	jalr	-1056(ra)
;     lw        a0, 0(sp)
800057bc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800057c0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800057c4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800057c8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800057cc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800057d0: 13 01 41 01  	addi	sp, sp, 20

800057d4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800057d4: 97 02 00 00  	auipc	t0, 0
800057d8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800057dc: 73 90 52 30  	csrw	mtvec, t0

800057e0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800057e0: 97 00 00 00  	auipc	ra, 0
800057e4: e7 80 00 22  	jalr	544(ra)

800057e8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800057e8: 97 b0 ff ff  	auipc	ra, 1048571
800057ec: e7 80 c0 e4  	jalr	-436(ra)
;     mv        s0, a0 # store return value in s0
800057f0: 13 04 05 00  	mv	s0, a0

800057f4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800057f4: 97 00 00 00  	auipc	ra, 0
800057f8: e7 80 c0 20  	jalr	524(ra)

800057fc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800057fc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005800: 97 00 00 00  	auipc	ra, 0
80005804: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005808: 73 00 50 10  	wfi	
;     j       1b
8000580c: 6f f0 df ff  	j	0x80005808 <snrt.crt0.end+0xc>

80005810 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005810: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005814: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005818: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000581c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005820: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005824: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005828: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000582c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80005830: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80005834: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80005838: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000583c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80005840: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80005844: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80005848: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000584c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80005850: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80005854: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80005858: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000585c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005860: 63 84 02 08  	beqz	t0, 0x800058e8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80005864: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80005868: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000586c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80005870: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80005874: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80005878: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000587c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80005880: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80005884: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80005888: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000588c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005890: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005894: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005898: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000589c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800058a0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800058a4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800058a8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800058ac: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800058b0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800058b4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800058b8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800058bc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800058c0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800058c4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800058c8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800058cc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800058d0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800058d4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800058d8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800058dc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800058e0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800058e4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800058e8: 97 00 00 00  	auipc	ra, 0
800058ec: e7 80 c0 c4  	jalr	-948(ra)
;     csrr    t0, misa
800058f0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800058f4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800058f8: 63 84 02 08  	beqz	t0, 0x80005980 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800058fc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005900: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005904: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005908: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000590c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005910: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005914: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005918: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000591c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005920: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005924: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005928: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000592c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80005930: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80005934: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80005938: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000593c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80005940: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80005944: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80005948: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000594c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80005950: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80005954: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80005958: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000595c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80005960: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80005964: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80005968: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000596c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80005970: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80005974: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80005978: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000597c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80005980: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80005984: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80005988: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000598c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005990: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005994: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005998: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000599c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800059a0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800059a4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800059a8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800059ac: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800059b0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800059b4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800059b8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800059bc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800059c0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800059c4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800059c8: 73 00 20 30  	mret	

800059cc <_snrt_init_core_info>:
;     mv        a4, a1
800059cc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800059d0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800059d4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800059d8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800059dc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800059e0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800059e4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800059e8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800059ec: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800059f0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800059f4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800059f8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800059fc: 67 80 00 00  	ret

80005a00 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005a00: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005a04: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005a08: 97 00 00 00  	auipc	ra, 0
80005a0c: e7 80 40 b1  	jalr	-1260(ra)
;     lw        a0, 0(a0)
80005a10: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005a14: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005a18: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80005a1c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005a20: 67 80 00 00  	ret

80005a24 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005a24: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005a28: 67 80 00 00  	ret

80005a2c <_snrt_exit>:
;     addi      sp, sp, -8
80005a2c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80005a30: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80005a34: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80005a38: 97 00 00 00  	auipc	ra, 0
80005a3c: e7 80 40 ac  	jalr	-1340(ra)
;     lw        t0, 0(sp)
80005a40: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80005a44: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80005a48: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80005a4c: 63 1c 05 00  	bnez	a0, 0x80005a64 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80005a50: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80005a54: 93 e2 12 00  	ori	t0, t0, 1

80005a58 <.Lpcrel_hi11>:
;     la        t1, tohost
80005a58: 17 03 00 00  	auipc	t1, 0
80005a5c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
80005a60: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80005a64: 67 80 00 00  	ret
