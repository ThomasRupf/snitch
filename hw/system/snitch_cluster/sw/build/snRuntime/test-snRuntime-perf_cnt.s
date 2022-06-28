
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-perf_cnt:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002b64 80000000 TEXT
  2 .init             00000468 80002b70 TEXT
  3 .rodata           00000320 80002fd8 DATA
  4 .htif             00000048 80003300 DATA
  5 .tdata            00000000 80003348 DATA
  6 .tbss             00000010 80003348 BSS
  7 .tbssend          00000000 80003358 DATA
  8 .sdata            000000a8 80003358 DATA
  9 .data             00000000 80003400 DATA
 10 .sbss             00000004 80003400 BSS
 11 .bss              00000000 80003404 BSS
 12 .dram             00000000 80003404 DATA
 13 .debug_info       00003e00 00000000 
 14 .debug_abbrev     00000d7f 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002ed1 00000000 
 17 .debug_loc        00003563 00000000 
 18 .debug_ranges     000003b8 00000000 
 19 .debug_str        00001127 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000324 00000000 
 23 .symtab           00003360 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000903 00000000 


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
80000634: 13 01 01 fe  	addi	sp, sp, -32
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 00  	sw	ra, 28(sp)
8000063c: 23 2c 81 00  	sw	s0, 24(sp)
80000640: 23 2a 91 00  	sw	s1, 20(sp)
80000644: 23 28 21 01  	sw	s2, 16(sp)
80000648: 23 26 31 01  	sw	s3, 12(sp)
8000064c: 37 05 00 00  	lui	a0, 0
80000650: b3 09 45 00  	add	s3, a0, tp
80000654: 83 a4 49 00  	lw	s1, 4(s3)
;     if (core_idx == 0) {
80000658: 63 98 04 22  	bnez	s1, 0x80000888 <.LBB0_11+0x28>

8000065c <.LBB0_9>:
;         printf("Measuring cycles\n");
8000065c: 17 35 00 00  	auipc	a0, 3
80000660: 13 05 15 9b  	addi	a0, a0, -1615
80000664: 97 00 00 00  	auipc	ra, 0
80000668: e7 80 c0 7a  	jalr	1964(ra)
;     return &_snrt_team_current->root->peripherals;
8000066c: 37 05 00 00  	lui	a0, 0
80000670: 33 09 45 00  	add	s2, a0, tp
80000674: 03 25 09 00  	lw	a0, 0(s2)
80000678: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
8000067c: 03 25 c5 07  	lw	a0, 124(a0)
;     return (uint32_t)perf_reg->perf_counter[perf_cnt].value;
80000680: 83 25 05 10  	lw	a1, 256(a0)

80000684 <.LBB0_10>:
;         printf("Start: %d cycles\n", counter);
80000684: 17 35 00 00  	auipc	a0, 3
80000688: 13 05 75 97  	addi	a0, a0, -1673
8000068c: 97 00 00 00  	auipc	ra, 0
80000690: e7 80 40 78  	jalr	1924(ra)
;     return &_snrt_team_current->root->peripherals;
80000694: 03 25 09 00  	lw	a0, 0(s2)
80000698: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
8000069c: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->hart_select[perf_cnt].value |= hart_id;
800006a0: 83 25 05 08  	lw	a1, 128(a0)
800006a4: 23 20 b5 08  	sw	a1, 128(a0)
800006a8: 93 05 10 00  	addi	a1, zero, 1
;     perf_reg->enable[perf_cnt].value = (0x1 << perf_cnt_type);
800006ac: 23 20 b5 00  	sw	a1, 0(a0)
;             asm volatile("nop");
800006b0: 13 00 00 00  	nop
800006b4: 13 00 00 00  	nop
800006b8: 13 00 00 00  	nop
800006bc: 13 00 00 00  	nop
800006c0: 13 00 00 00  	nop
800006c4: 13 00 00 00  	nop
800006c8: 13 00 00 00  	nop
800006cc: 13 00 00 00  	nop
800006d0: 13 00 00 00  	nop
800006d4: 13 00 00 00  	nop
800006d8: 13 00 00 00  	nop
800006dc: 13 00 00 00  	nop
800006e0: 13 00 00 00  	nop
800006e4: 13 00 00 00  	nop
800006e8: 13 00 00 00  	nop
800006ec: 13 00 00 00  	nop
800006f0: 13 00 00 00  	nop
800006f4: 13 00 00 00  	nop
800006f8: 13 00 00 00  	nop
800006fc: 13 00 00 00  	nop
80000700: 13 00 00 00  	nop
80000704: 13 00 00 00  	nop
80000708: 13 00 00 00  	nop
8000070c: 13 00 00 00  	nop
80000710: 13 00 00 00  	nop
80000714: 13 00 00 00  	nop
80000718: 13 00 00 00  	nop
8000071c: 13 00 00 00  	nop
80000720: 13 00 00 00  	nop
80000724: 13 00 00 00  	nop
80000728: 13 00 00 00  	nop
8000072c: 13 00 00 00  	nop
80000730: 13 00 00 00  	nop
80000734: 13 00 00 00  	nop
80000738: 13 00 00 00  	nop
8000073c: 13 00 00 00  	nop
80000740: 13 00 00 00  	nop
80000744: 13 00 00 00  	nop
80000748: 13 00 00 00  	nop
8000074c: 13 00 00 00  	nop
80000750: 13 00 00 00  	nop
80000754: 13 00 00 00  	nop
80000758: 13 00 00 00  	nop
8000075c: 13 00 00 00  	nop
80000760: 13 00 00 00  	nop
80000764: 13 00 00 00  	nop
80000768: 13 00 00 00  	nop
8000076c: 13 00 00 00  	nop
80000770: 13 00 00 00  	nop
80000774: 13 00 00 00  	nop
80000778: 13 00 00 00  	nop
8000077c: 13 00 00 00  	nop
80000780: 13 00 00 00  	nop
80000784: 13 00 00 00  	nop
80000788: 13 00 00 00  	nop
8000078c: 13 00 00 00  	nop
80000790: 13 00 00 00  	nop
80000794: 13 00 00 00  	nop
80000798: 13 00 00 00  	nop
8000079c: 13 00 00 00  	nop
800007a0: 13 00 00 00  	nop
800007a4: 13 00 00 00  	nop
800007a8: 13 00 00 00  	nop
800007ac: 13 00 00 00  	nop
800007b0: 13 00 00 00  	nop
800007b4: 13 00 00 00  	nop
800007b8: 13 00 00 00  	nop
800007bc: 13 00 00 00  	nop
800007c0: 13 00 00 00  	nop
800007c4: 13 00 00 00  	nop
800007c8: 13 00 00 00  	nop
800007cc: 13 00 00 00  	nop
800007d0: 13 00 00 00  	nop
800007d4: 13 00 00 00  	nop
800007d8: 13 00 00 00  	nop
800007dc: 13 00 00 00  	nop
800007e0: 13 00 00 00  	nop
800007e4: 13 00 00 00  	nop
800007e8: 13 00 00 00  	nop
800007ec: 13 00 00 00  	nop
800007f0: 13 00 00 00  	nop
800007f4: 13 00 00 00  	nop
800007f8: 13 00 00 00  	nop
800007fc: 13 00 00 00  	nop
80000800: 13 00 00 00  	nop
80000804: 13 00 00 00  	nop
80000808: 13 00 00 00  	nop
8000080c: 13 00 00 00  	nop
80000810: 13 00 00 00  	nop
80000814: 13 00 00 00  	nop
80000818: 13 00 00 00  	nop
8000081c: 13 00 00 00  	nop
80000820: 13 00 00 00  	nop
80000824: 13 00 00 00  	nop
80000828: 13 00 00 00  	nop
8000082c: 13 00 00 00  	nop
80000830: 13 00 00 00  	nop
80000834: 13 00 00 00  	nop
80000838: 13 00 00 00  	nop
8000083c: 13 00 00 00  	nop
;     return &_snrt_team_current->root->peripherals;
80000840: 03 25 09 00  	lw	a0, 0(s2)
80000844: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000848: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->enable[perf_cnt].value = 0x0;
8000084c: 23 20 05 00  	sw	zero, 0(a0)
;     return &_snrt_team_current->root->peripherals;
80000850: 03 25 09 00  	lw	a0, 0(s2)
80000854: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000858: 03 25 c5 07  	lw	a0, 124(a0)
;     return (uint32_t)perf_reg->perf_counter[perf_cnt].value;
8000085c: 83 25 05 10  	lw	a1, 256(a0)

80000860 <.LBB0_11>:
;         printf("End: %d cycles\n", counter);
80000860: 17 35 00 00  	auipc	a0, 3
80000864: 13 05 95 85  	addi	a0, a0, -1959
80000868: 97 00 00 00  	auipc	ra, 0
8000086c: e7 80 80 5a  	jalr	1448(ra)
;     return &_snrt_team_current->root->peripherals;
80000870: 03 25 09 00  	lw	a0, 0(s2)
80000874: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000878: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->enable[perf_cnt].value = 0x0;
8000087c: 23 20 05 00  	sw	zero, 0(a0)
;     perf_reg->hart_select[perf_cnt].value = 0x0;
80000880: 23 20 05 08  	sw	zero, 128(a0)
;     perf_reg->perf_counter[perf_cnt].value = 0x0;
80000884: 23 20 05 10  	sw	zero, 256(a0)
80000888: 13 b9 14 00  	seqz	s2, s1
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000088c: 97 20 00 00  	auipc	ra, 2
80000890: e7 80 40 6e  	jalr	1764(ra)
;     return _snrt_team_current->root->cluster_core_num;
80000894: 37 05 00 00  	lui	a0, 0
80000898: 33 04 45 00  	add	s0, a0, tp
8000089c: 03 25 04 00  	lw	a0, 0(s0)
800008a0: 03 25 05 00  	lw	a0, 0(a0)
800008a4: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800008a8: 83 a5 49 00  	lw	a1, 4(s3)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
800008ac: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_dm_core()) {
800008b0: 63 e0 a5 16  	bltu	a1, a0, 0x80000a10 <.LBB0_15+0x40>

800008b4 <.LBB0_12>:
;         printf("Measuring DMA perf\n");
800008b4: 17 25 00 00  	auipc	a0, 2
800008b8: 13 05 b5 78  	addi	a0, a0, 1931
800008bc: 97 00 00 00  	auipc	ra, 0
800008c0: e7 80 40 55  	jalr	1364(ra)
;     return &_snrt_team_current->root->peripherals;
800008c4: 03 25 04 00  	lw	a0, 0(s0)
800008c8: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
800008cc: 03 25 c5 07  	lw	a0, 124(a0)
;     return (uint32_t)perf_reg->perf_counter[perf_cnt].value;
800008d0: 83 25 05 10  	lw	a1, 256(a0)
800008d4: 03 26 85 10  	lw	a2, 264(a0)

800008d8 <.LBB0_13>:
;         printf("Start: %d/%d bytes read, written\n", read_bytes, write_bytes);
800008d8: 17 25 00 00  	auipc	a0, 2
800008dc: 13 05 15 7f  	addi	a0, a0, 2033
800008e0: 97 00 00 00  	auipc	ra, 0
800008e4: e7 80 00 53  	jalr	1328(ra)
;     return &_snrt_team_current->root->peripherals;
800008e8: 03 25 04 00  	lw	a0, 0(s0)
800008ec: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
800008f0: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->hart_select[perf_cnt].value |= hart_id;
800008f4: 83 25 05 08  	lw	a1, 128(a0)
800008f8: 23 20 b5 08  	sw	a1, 128(a0)
800008fc: b7 05 08 00  	lui	a1, 128
;     perf_reg->enable[perf_cnt].value = (0x1 << perf_cnt_type);
80000900: 23 20 b5 00  	sw	a1, 0(a0)
;     return &_snrt_team_current->root->peripherals;
80000904: 03 25 04 00  	lw	a0, 0(s0)
80000908: 83 25 05 00  	lw	a1, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
8000090c: 83 a5 c5 07  	lw	a1, 124(a1)
;     perf_reg->hart_select[perf_cnt].value |= hart_id;
80000910: 03 a6 85 08  	lw	a2, 136(a1)
80000914: 23 a4 c5 08  	sw	a2, 136(a1)
80000918: 37 06 02 00  	lui	a2, 32
;     perf_reg->enable[perf_cnt].value = (0x1 << perf_cnt_type);
8000091c: 23 a4 c5 00  	sw	a2, 8(a1)
;     return _snrt_team_current->root->cluster_mem;
80000920: 03 25 05 00  	lw	a0, 0(a0)
;     return _snrt_team_current->root->global_mem;
80000924: 83 25 05 02  	lw	a1, 32(a0)
;     return _snrt_team_current->root->cluster_mem;
80000928: 83 29 05 03  	lw	s3, 48(a0)
;         uint32_t *src = (void *)snrt_global_memory().start +
8000092c: 93 84 45 00  	addi	s1, a1, 4

80000930 <.LBB0_14>:
;         printf("Transfering from %p to %p\n", src, dst);
80000930: 17 25 00 00  	auipc	a0, 2
80000934: 13 05 05 6b  	addi	a0, a0, 1712
80000938: 93 85 04 00  	mv	a1, s1
8000093c: 13 86 09 00  	mv	a2, s3
80000940: 97 00 00 00  	auipc	ra, 0
80000944: e7 80 00 4d  	jalr	1232(ra)
;     asm volatile(
80000948: 93 06 00 00  	mv	a3, zero
8000094c: 13 86 04 00  	mv	a2, s1
80000950: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
80000954: 93 05 00 00  	mv	a1, zero
80000958: 13 85 09 00  	mv	a0, s3
8000095c: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
80000960: 13 07 00 08  	addi	a4, zero, 128
80000964: 2b 05 07 04  	dmcpyi	a0, a4, 0
;     asm volatile(
80000968: 93 06 00 00  	mv	a3, zero
8000096c: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
80000970: 93 05 00 00  	mv	a1, zero
80000974: 13 85 09 00  	mv	a0, s3
80000978: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
8000097c: 93 07 00 08  	addi	a5, zero, 128
80000980: 13 08 00 00  	mv	a6, zero
80000984: 2b 00 f8 0c  	dmstr	a6, a5
;     asm volatile(
80000988: 93 08 40 00  	addi	a7, zero, 4
8000098c: 2b 80 08 0e  	dmrep	a7
;     asm volatile(
80000990: 13 07 00 08  	addi	a4, zero, 128
80000994: 2b 05 27 04  	dmcpyi	a0, a4, 2
;     asm volatile(
80000998: ab 02 20 08  	dmstati	t0, 2
8000099c: e3 9e 02 fe  	bnez	t0, 0x80000998 <.LBB0_14+0x68>
;     return &_snrt_team_current->root->peripherals;
800009a0: 03 25 04 00  	lw	a0, 0(s0)
800009a4: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
800009a8: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->enable[perf_cnt].value = 0x0;
800009ac: 23 20 05 00  	sw	zero, 0(a0)
;     return &_snrt_team_current->root->peripherals;
800009b0: 03 25 04 00  	lw	a0, 0(s0)
800009b4: 83 25 05 00  	lw	a1, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
800009b8: 83 a5 c5 07  	lw	a1, 124(a1)
;     perf_reg->enable[perf_cnt].value = 0x0;
800009bc: 23 a4 05 00  	sw	zero, 8(a1)
;     return &_snrt_team_current->root->peripherals;
800009c0: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
800009c4: 03 25 c5 07  	lw	a0, 124(a0)
;     return (uint32_t)perf_reg->perf_counter[perf_cnt].value;
800009c8: 83 25 05 10  	lw	a1, 256(a0)
800009cc: 03 26 85 10  	lw	a2, 264(a0)

800009d0 <.LBB0_15>:
;         printf("End: %d/%d bytes read, written\n", read_bytes, write_bytes);
800009d0: 17 25 00 00  	auipc	a0, 2
800009d4: 13 05 f5 64  	addi	a0, a0, 1615
800009d8: 97 00 00 00  	auipc	ra, 0
800009dc: e7 80 80 43  	jalr	1080(ra)
;     return &_snrt_team_current->root->peripherals;
800009e0: 03 25 04 00  	lw	a0, 0(s0)
800009e4: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
800009e8: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->enable[perf_cnt].value = 0x0;
800009ec: 23 20 05 00  	sw	zero, 0(a0)
;     perf_reg->hart_select[perf_cnt].value = 0x0;
800009f0: 23 20 05 08  	sw	zero, 128(a0)
;     perf_reg->perf_counter[perf_cnt].value = 0x0;
800009f4: 23 20 05 10  	sw	zero, 256(a0)
;     return &_snrt_team_current->root->peripherals;
800009f8: 03 25 04 00  	lw	a0, 0(s0)
800009fc: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000a00: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->enable[perf_cnt].value = 0x0;
80000a04: 23 24 05 00  	sw	zero, 8(a0)
;     perf_reg->hart_select[perf_cnt].value = 0x0;
80000a08: 23 24 05 08  	sw	zero, 136(a0)
;     perf_reg->perf_counter[perf_cnt].value = 0x0;
80000a0c: 23 24 05 10  	sw	zero, 264(a0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000a10: 97 20 00 00  	auipc	ra, 2
80000a14: e7 80 00 56  	jalr	1376(ra)
;     if (core_idx == 0) {
80000a18: 63 0c 09 06  	beqz	s2, 0x80000a90 <.LBB0_17+0x48>

80000a1c <.LBB0_16>:
;         printf("Measuring TCDM congestion\n");
80000a1c: 17 25 00 00  	auipc	a0, 2
80000a20: 13 05 c5 63  	addi	a0, a0, 1596
80000a24: 97 00 00 00  	auipc	ra, 0
80000a28: e7 80 c0 3e  	jalr	1004(ra)
;     return &_snrt_team_current->root->peripherals;
80000a2c: 37 05 00 00  	lui	a0, 0
80000a30: 33 04 45 00  	add	s0, a0, tp
80000a34: 03 25 04 00  	lw	a0, 0(s0)
80000a38: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000a3c: 03 25 c5 07  	lw	a0, 124(a0)
;     return (uint32_t)perf_reg->perf_counter[perf_cnt].value;
80000a40: 03 26 05 10  	lw	a2, 256(a0)
80000a44: 83 25 85 10  	lw	a1, 264(a0)

80000a48 <.LBB0_17>:
;         printf("Start: %d/%d Congestion/Accesses\n", tcdm_congestion,
80000a48: 17 25 00 00  	auipc	a0, 2
80000a4c: 13 05 b5 62  	addi	a0, a0, 1579
80000a50: 97 00 00 00  	auipc	ra, 0
80000a54: e7 80 00 3c  	jalr	960(ra)
;     return &_snrt_team_current->root->peripherals;
80000a58: 03 25 04 00  	lw	a0, 0(s0)
80000a5c: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000a60: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->hart_select[perf_cnt].value |= hart_id;
80000a64: 83 25 05 08  	lw	a1, 128(a0)
80000a68: 23 20 b5 08  	sw	a1, 128(a0)
80000a6c: 93 05 20 00  	addi	a1, zero, 2
;     perf_reg->enable[perf_cnt].value = (0x1 << perf_cnt_type);
80000a70: 23 20 b5 00  	sw	a1, 0(a0)
;     return &_snrt_team_current->root->peripherals;
80000a74: 03 25 04 00  	lw	a0, 0(s0)
80000a78: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000a7c: 03 25 c5 07  	lw	a0, 124(a0)
;     perf_reg->hart_select[perf_cnt].value |= hart_id;
80000a80: 83 25 85 08  	lw	a1, 136(a0)
80000a84: 23 24 b5 08  	sw	a1, 136(a0)
80000a88: 93 05 40 00  	addi	a1, zero, 4
;     perf_reg->enable[perf_cnt].value = (0x1 << perf_cnt_type);
80000a8c: 23 24 b5 00  	sw	a1, 8(a0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000a90: 97 20 00 00  	auipc	ra, 2
80000a94: e7 80 00 4e  	jalr	1248(ra)
;     return _snrt_team_current->root->cluster_mem;
80000a98: 37 05 00 00  	lui	a0, 0
80000a9c: 33 05 45 00  	add	a0, a0, tp
80000aa0: 83 25 05 00  	lw	a1, 0(a0)
80000aa4: 83 a5 05 00  	lw	a1, 0(a1)
80000aa8: 83 a5 05 03  	lw	a1, 48(a1)
80000aac: 37 c6 ad de  	lui	a2, 912092
80000ab0: 13 06 f6 ee  	addi	a2, a2, -273
;         *ptr = 0xdeadbeef;
80000ab4: 23 a0 c5 00  	sw	a2, 0(a1)
80000ab8: 23 a0 c5 00  	sw	a2, 0(a1)
80000abc: 23 a0 c5 00  	sw	a2, 0(a1)
80000ac0: 23 a0 c5 00  	sw	a2, 0(a1)
80000ac4: 23 a0 c5 00  	sw	a2, 0(a1)
80000ac8: 23 a0 c5 00  	sw	a2, 0(a1)
80000acc: 23 a0 c5 00  	sw	a2, 0(a1)
80000ad0: 23 a0 c5 00  	sw	a2, 0(a1)
80000ad4: 23 a0 c5 00  	sw	a2, 0(a1)
80000ad8: 23 a0 c5 00  	sw	a2, 0(a1)
80000adc: 23 a0 c5 00  	sw	a2, 0(a1)
80000ae0: 23 a0 c5 00  	sw	a2, 0(a1)
80000ae4: 23 a0 c5 00  	sw	a2, 0(a1)
80000ae8: 23 a0 c5 00  	sw	a2, 0(a1)
80000aec: 23 a0 c5 00  	sw	a2, 0(a1)
80000af0: 23 a0 c5 00  	sw	a2, 0(a1)
80000af4: 23 a0 c5 00  	sw	a2, 0(a1)
80000af8: 23 a0 c5 00  	sw	a2, 0(a1)
80000afc: 23 a0 c5 00  	sw	a2, 0(a1)
80000b00: 23 a0 c5 00  	sw	a2, 0(a1)
80000b04: 23 a0 c5 00  	sw	a2, 0(a1)
80000b08: 23 a0 c5 00  	sw	a2, 0(a1)
80000b0c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b10: 23 a0 c5 00  	sw	a2, 0(a1)
80000b14: 23 a0 c5 00  	sw	a2, 0(a1)
80000b18: 23 a0 c5 00  	sw	a2, 0(a1)
80000b1c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b20: 23 a0 c5 00  	sw	a2, 0(a1)
80000b24: 23 a0 c5 00  	sw	a2, 0(a1)
80000b28: 23 a0 c5 00  	sw	a2, 0(a1)
80000b2c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b30: 23 a0 c5 00  	sw	a2, 0(a1)
80000b34: 23 a0 c5 00  	sw	a2, 0(a1)
80000b38: 23 a0 c5 00  	sw	a2, 0(a1)
80000b3c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b40: 23 a0 c5 00  	sw	a2, 0(a1)
80000b44: 23 a0 c5 00  	sw	a2, 0(a1)
80000b48: 23 a0 c5 00  	sw	a2, 0(a1)
80000b4c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b50: 23 a0 c5 00  	sw	a2, 0(a1)
80000b54: 23 a0 c5 00  	sw	a2, 0(a1)
80000b58: 23 a0 c5 00  	sw	a2, 0(a1)
80000b5c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b60: 23 a0 c5 00  	sw	a2, 0(a1)
80000b64: 23 a0 c5 00  	sw	a2, 0(a1)
80000b68: 23 a0 c5 00  	sw	a2, 0(a1)
80000b6c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b70: 23 a0 c5 00  	sw	a2, 0(a1)
80000b74: 23 a0 c5 00  	sw	a2, 0(a1)
80000b78: 23 a0 c5 00  	sw	a2, 0(a1)
80000b7c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b80: 23 a0 c5 00  	sw	a2, 0(a1)
80000b84: 23 a0 c5 00  	sw	a2, 0(a1)
80000b88: 23 a0 c5 00  	sw	a2, 0(a1)
80000b8c: 23 a0 c5 00  	sw	a2, 0(a1)
80000b90: 23 a0 c5 00  	sw	a2, 0(a1)
80000b94: 23 a0 c5 00  	sw	a2, 0(a1)
80000b98: 23 a0 c5 00  	sw	a2, 0(a1)
80000b9c: 23 a0 c5 00  	sw	a2, 0(a1)
80000ba0: 23 a0 c5 00  	sw	a2, 0(a1)
80000ba4: 23 a0 c5 00  	sw	a2, 0(a1)
80000ba8: 23 a0 c5 00  	sw	a2, 0(a1)
80000bac: 23 a0 c5 00  	sw	a2, 0(a1)
80000bb0: 23 a0 c5 00  	sw	a2, 0(a1)
80000bb4: 23 a0 c5 00  	sw	a2, 0(a1)
80000bb8: 23 a0 c5 00  	sw	a2, 0(a1)
80000bbc: 23 a0 c5 00  	sw	a2, 0(a1)
80000bc0: 23 a0 c5 00  	sw	a2, 0(a1)
80000bc4: 23 a0 c5 00  	sw	a2, 0(a1)
80000bc8: 23 a0 c5 00  	sw	a2, 0(a1)
80000bcc: 23 a0 c5 00  	sw	a2, 0(a1)
80000bd0: 23 a0 c5 00  	sw	a2, 0(a1)
80000bd4: 23 a0 c5 00  	sw	a2, 0(a1)
80000bd8: 23 a0 c5 00  	sw	a2, 0(a1)
80000bdc: 23 a0 c5 00  	sw	a2, 0(a1)
80000be0: 23 a0 c5 00  	sw	a2, 0(a1)
80000be4: 23 a0 c5 00  	sw	a2, 0(a1)
80000be8: 23 a0 c5 00  	sw	a2, 0(a1)
80000bec: 23 a0 c5 00  	sw	a2, 0(a1)
80000bf0: 23 a0 c5 00  	sw	a2, 0(a1)
80000bf4: 23 a0 c5 00  	sw	a2, 0(a1)
80000bf8: 23 a0 c5 00  	sw	a2, 0(a1)
80000bfc: 23 a0 c5 00  	sw	a2, 0(a1)
80000c00: 23 a0 c5 00  	sw	a2, 0(a1)
80000c04: 23 a0 c5 00  	sw	a2, 0(a1)
80000c08: 23 a0 c5 00  	sw	a2, 0(a1)
80000c0c: 23 a0 c5 00  	sw	a2, 0(a1)
80000c10: 23 a0 c5 00  	sw	a2, 0(a1)
80000c14: 23 a0 c5 00  	sw	a2, 0(a1)
80000c18: 23 a0 c5 00  	sw	a2, 0(a1)
80000c1c: 23 a0 c5 00  	sw	a2, 0(a1)
80000c20: 23 a0 c5 00  	sw	a2, 0(a1)
80000c24: 23 a0 c5 00  	sw	a2, 0(a1)
80000c28: 23 a0 c5 00  	sw	a2, 0(a1)
80000c2c: 23 a0 c5 00  	sw	a2, 0(a1)
80000c30: 23 a0 c5 00  	sw	a2, 0(a1)
80000c34: 23 a0 c5 00  	sw	a2, 0(a1)
80000c38: 23 a0 c5 00  	sw	a2, 0(a1)
80000c3c: 23 a0 c5 00  	sw	a2, 0(a1)
80000c40: 23 a0 c5 00  	sw	a2, 0(a1)
;     if (core_idx == 0) {
80000c44: 63 02 09 04  	beqz	s2, 0x80000c88 <.LBB0_18+0x10>
;     return &_snrt_team_current->root->peripherals;
80000c48: 83 25 05 00  	lw	a1, 0(a0)
80000c4c: 83 a5 05 00  	lw	a1, 0(a1)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000c50: 83 a5 c5 07  	lw	a1, 124(a1)
;     perf_reg->enable[perf_cnt].value = 0x0;
80000c54: 23 a0 05 00  	sw	zero, 0(a1)
;     return &_snrt_team_current->root->peripherals;
80000c58: 03 25 05 00  	lw	a0, 0(a0)
80000c5c: 83 25 05 00  	lw	a1, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000c60: 83 a5 c5 07  	lw	a1, 124(a1)
;     perf_reg->enable[perf_cnt].value = 0x0;
80000c64: 23 a4 05 00  	sw	zero, 8(a1)
;     return &_snrt_team_current->root->peripherals;
80000c68: 03 25 05 00  	lw	a0, 0(a0)
;     perf_reg_t *perf_reg = (void *)snrt_peripherals()->perf_counters;
80000c6c: 03 25 c5 07  	lw	a0, 124(a0)
;     return (uint32_t)perf_reg->perf_counter[perf_cnt].value;
80000c70: 03 26 05 10  	lw	a2, 256(a0)
80000c74: 83 25 85 10  	lw	a1, 264(a0)

80000c78 <.LBB0_18>:
;         printf("End: %d/%d Congestion/Accesses\n", tcdm_congestion,
80000c78: 17 25 00 00  	auipc	a0, 2
80000c7c: 13 05 d5 41  	addi	a0, a0, 1053
80000c80: 97 00 00 00  	auipc	ra, 0
80000c84: e7 80 00 19  	jalr	400(ra)
;     return 0;
80000c88: 13 05 00 00  	mv	a0, zero
80000c8c: 83 29 c1 00  	lw	s3, 12(sp)
80000c90: 03 29 01 01  	lw	s2, 16(sp)
80000c94: 83 24 41 01  	lw	s1, 20(sp)
80000c98: 03 24 81 01  	lw	s0, 24(sp)
80000c9c: 83 20 c1 01  	lw	ra, 28(sp)
80000ca0: 13 01 01 02  	addi	sp, sp, 32
80000ca4: 67 80 00 00  	ret

80000ca8 <_snrt_init_team>:
;     team->base.root = team;
80000ca8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000cac: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000cb0: 03 23 87 00  	lw	t1, 8(a4)
80000cb4: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000cb8: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80000cbc: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000cc0: 83 22 47 00  	lw	t0, 4(a4)
80000cc4: 33 88 08 03  	mul	a6, a7, a6
80000cc8: 33 05 58 02  	mul	a0, a6, t0
80000ccc: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000cd0: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000cd4: 33 85 68 40  	sub	a0, a7, t1
80000cd8: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80000cdc: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000ce0: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000ce4: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80000ce8: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80000cec: 03 25 87 01  	lw	a0, 24(a4)
80000cf0: b7 05 00 10  	lui	a1, 65536
80000cf4: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000cf8: 23 a2 07 02  	sw	zero, 36(a5)
80000cfc: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80000d00: 03 25 07 02  	lw	a0, 32(a4)
80000d04: 83 25 47 02  	lw	a1, 36(a4)
80000d08: 23 a4 a7 02  	sw	a0, 40(a5)
80000d0c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80000d10: 23 a8 c7 02  	sw	a2, 48(a5)
80000d14: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000d18: 23 ac d7 02  	sw	a3, 56(a5)
80000d1c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000d20: 03 25 07 01  	lw	a0, 16(a4)
80000d24: 33 08 a6 00  	add	a6, a2, a0
80000d28: 93 05 08 19  	addi	a1, a6, 400
80000d2c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000d30: b3 32 a8 00  	sltu	t0, a6, a0
80000d34: 93 55 15 00  	srli	a1, a0, 1
80000d38: 33 03 b8 00  	add	t1, a6, a1
80000d3c: b3 35 03 01  	sltu	a1, t1, a6
80000d40: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000d44: 23 a0 67 04  	sw	t1, 64(a5)
80000d48: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000d4c: 13 15 15 00  	slli	a0, a0, 1
80000d50: b3 05 c5 00  	add	a1, a0, a2
80000d54: 33 b5 a5 00  	sltu	a0, a1, a0
80000d58: 23 a4 b7 04  	sw	a1, 72(a5)
80000d5c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000d60: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000d64: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80000d68: 37 05 00 00  	lui	a0, 0
80000d6c: 33 05 45 00  	add	a0, a0, tp
80000d70: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000d74: 03 a5 07 00  	lw	a0, 0(a5)
80000d78: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000d7c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000d80: b3 85 b8 40  	sub	a1, a7, a1
80000d84: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80000d88: b7 05 00 00  	lui	a1, 0
80000d8c: b3 85 45 00  	add	a1, a1, tp
80000d90: 23 a2 a5 00  	sw	a0, 4(a1)
80000d94: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000d98: 33 85 a8 02  	mul	a0, a7, a0

80000d9c <.LBB0_1>:
80000d9c: 97 25 00 00  	auipc	a1, 2
80000da0: 93 85 85 66  	addi	a1, a1, 1640
80000da4: 33 05 b5 00  	add	a0, a0, a1
80000da8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000dac: 83 28 07 03  	lw	a7, 48(a4)
80000db0: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000db4: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80000db8: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80000dbc: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000dc0: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000dc4: 13 05 76 00  	addi	a0, a2, 7
80000dc8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80000dcc: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000dd0: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000dd4: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80000dd8: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80000ddc: 03 a5 05 00  	lw	a0, 0(a1)
80000de0: 13 05 f5 44  	addi	a0, a0, 1103
80000de4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80000de8: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80000dec: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80000df0: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000df4: 37 05 00 00  	lui	a0, 0
80000df8: 33 05 45 00  	add	a0, a0, tp
80000dfc: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80000e00: 37 05 00 00  	lui	a0, 0
80000e04: 33 05 45 00  	add	a0, a0, tp
80000e08: 23 26 e5 00  	sw	a4, 12(a0)
; }
80000e0c: 67 80 00 00  	ret

80000e10 <printf_>:
; {
80000e10: 13 01 01 fd  	addi	sp, sp, -48
80000e14: 23 26 11 00  	sw	ra, 12(sp)
80000e18: 93 02 05 00  	mv	t0, a0
80000e1c: 23 26 11 03  	sw	a7, 44(sp)
80000e20: 23 24 01 03  	sw	a6, 40(sp)
80000e24: 23 22 f1 02  	sw	a5, 36(sp)
80000e28: 23 20 e1 02  	sw	a4, 32(sp)
80000e2c: 23 2e d1 00  	sw	a3, 28(sp)
80000e30: 23 2c c1 00  	sw	a2, 24(sp)
80000e34: 23 2a b1 00  	sw	a1, 20(sp)
80000e38: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000e3c: 23 24 a1 00  	sw	a0, 8(sp)

80000e40 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000e40: 17 15 00 00  	auipc	a0, 1
80000e44: 13 05 45 c2  	addi	a0, a0, -988
80000e48: 93 05 71 00  	addi	a1, sp, 7
80000e4c: 13 06 f0 ff  	addi	a2, zero, -1
80000e50: 13 07 41 01  	addi	a4, sp, 20
80000e54: 93 86 02 00  	mv	a3, t0
80000e58: 97 00 00 00  	auipc	ra, 0
80000e5c: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000e60: 83 20 c1 00  	lw	ra, 12(sp)
80000e64: 13 01 01 03  	addi	sp, sp, 48
80000e68: 67 80 00 00  	ret

80000e6c <_vsnprintf.llvm.17592004524093383706>:
; {
80000e6c: 13 01 01 f9  	addi	sp, sp, -112
80000e70: 23 26 11 06  	sw	ra, 108(sp)
80000e74: 23 24 81 06  	sw	s0, 104(sp)
80000e78: 23 22 91 06  	sw	s1, 100(sp)
80000e7c: 23 20 21 07  	sw	s2, 96(sp)
80000e80: 23 2e 31 05  	sw	s3, 92(sp)
80000e84: 23 2c 41 05  	sw	s4, 88(sp)
80000e88: 23 2a 51 05  	sw	s5, 84(sp)
80000e8c: 23 28 61 05  	sw	s6, 80(sp)
80000e90: 23 26 71 05  	sw	s7, 76(sp)
80000e94: 23 24 81 05  	sw	s8, 72(sp)
80000e98: 23 22 91 05  	sw	s9, 68(sp)
80000e9c: 23 20 a1 05  	sw	s10, 64(sp)
80000ea0: 23 2e b1 03  	sw	s11, 60(sp)
80000ea4: 93 09 07 00  	mv	s3, a4
80000ea8: 13 84 06 00  	mv	s0, a3
80000eac: 93 0a 06 00  	mv	s5, a2
80000eb0: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000eb4: 63 86 05 00  	beqz	a1, 0x80000ec0 <.LBB1_183>
80000eb8: 13 09 05 00  	mv	s2, a0
80000ebc: 6f 00 c0 00  	j	0x80000ec8 <.LBB1_183+0x8>

80000ec0 <.LBB1_183>:
80000ec0: 17 19 00 00  	auipc	s2, 1
80000ec4: 13 09 09 c5  	addi	s2, s2, -944
80000ec8: 13 0c 00 00  	mv	s8, zero
80000ecc: 13 0b 50 02  	addi	s6, zero, 37
80000ed0: 93 0d 00 01  	addi	s11, zero, 16
80000ed4: 93 0b e0 02  	addi	s7, zero, 46
80000ed8: 37 15 00 00  	lui	a0, 1
80000edc: 13 05 05 80  	addi	a0, a0, -2048
80000ee0: 23 2c a1 00  	sw	a0, 24(sp)
80000ee4: 37 05 01 00  	lui	a0, 16
80000ee8: 13 05 f5 ff  	addi	a0, a0, -1
80000eec: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000ef0: 13 0d 24 00  	addi	s10, s0, 2
80000ef4: 93 0c 0c 00  	mv	s9, s8
80000ef8: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000efc: 03 45 04 00  	lbu	a0, 0(s0)
80000f00: e3 04 05 30  	beqz	a0, 0x80001a08 <.LBB1_124+0x3b0>
80000f04: 63 08 65 03  	beq	a0, s6, 0x80000f34 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000f08: 93 84 1c 00  	addi	s1, s9, 1
80000f0c: 93 05 0a 00  	mv	a1, s4
80000f10: 13 86 0c 00  	mv	a2, s9
80000f14: 93 86 0a 00  	mv	a3, s5
80000f18: e7 00 09 00  	jalr	s2
;       format++;
80000f1c: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000f20: 13 0d 1d 00  	addi	s10, s10, 1
80000f24: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000f28: 03 45 04 00  	lbu	a0, 0(s0)
80000f2c: e3 1c 05 fc  	bnez	a0, 0x80000f04 <.LBB1_183+0x44>
80000f30: 6f 00 90 2d  	j	0x80001a08 <.LBB1_124+0x3b0>
;     flags = 0U;
80000f34: 13 04 00 00  	mv	s0, zero
80000f38: 6f 00 00 01  	j	0x80000f48 <.LBB1_9+0x8>

80000f3c <.LBB1_8>:
80000f3c: 93 05 00 01  	addi	a1, zero, 16

80000f40 <.LBB1_9>:
80000f40: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000f44: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000f48: 03 45 fd ff  	lbu	a0, -1(s10)
80000f4c: 93 05 05 fe  	addi	a1, a0, -32
80000f50: 63 ec bd 02  	bltu	s11, a1, 0x80000f88 <.LBB1_15>
80000f54: 93 95 25 00  	slli	a1, a1, 2

80000f58 <.LBB1_184>:
80000f58: 17 26 00 00  	auipc	a2, 2
80000f5c: 13 06 46 19  	addi	a2, a2, 404
80000f60: b3 85 c5 00  	add	a1, a1, a2
80000f64: 03 a6 05 00  	lw	a2, 0(a1)
80000f68: 93 05 10 00  	addi	a1, zero, 1
80000f6c: 67 00 06 00  	jr	a2

80000f70 <.LBB1_12>:
80000f70: 93 05 80 00  	addi	a1, zero, 8
80000f74: 6f f0 df fc  	j	0x80000f40 <.LBB1_9>

80000f78 <.LBB1_13>:
80000f78: 93 05 40 00  	addi	a1, zero, 4
80000f7c: 6f f0 5f fc  	j	0x80000f40 <.LBB1_9>

80000f80 <.LBB1_14>:
80000f80: 93 05 20 00  	addi	a1, zero, 2
80000f84: 6f f0 df fb  	j	0x80000f40 <.LBB1_9>

80000f88 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80000f88: 93 05 05 fd  	addi	a1, a0, -48
80000f8c: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80000f90: 93 05 fd ff  	addi	a1, s10, -1
80000f94: 93 06 90 00  	addi	a3, zero, 9
80000f98: 63 ee c6 06  	bltu	a3, a2, 0x80001014 <.LBB1_15+0x8c>
80000f9c: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000fa0: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000fa4: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000fa8: b3 06 8b 03  	mul	a3, s6, s8
80000fac: 93 85 15 00  	addi	a1, a1, 1
80000fb0: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000fb4: 93 06 05 fd  	addi	a3, a0, -48
80000fb8: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000fbc: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80000fc0: e3 e0 86 ff  	bltu	a3, s8, 0x80000fa0 <.LBB1_15+0x18>
80000fc4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80000fc8: 63 16 75 0b  	bne	a0, s7, 0x80001074 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80000fcc: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000fd0: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80000fd4: 93 05 05 fd  	addi	a1, a0, -48
80000fd8: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80000fdc: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000fe0: 93 06 90 00  	addi	a3, zero, 9
80000fe4: 63 e0 c6 06  	bltu	a3, a2, 0x80001044 <.LBB1_15+0xbc>
80000fe8: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000fec: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000ff0: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000ff4: b3 86 8b 03  	mul	a3, s7, s8
80000ff8: 93 85 15 00  	addi	a1, a1, 1
80000ffc: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001000: 93 06 05 fd  	addi	a3, a0, -48
80001004: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001008: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
8000100c: e3 e0 86 ff  	bltu	a3, s8, 0x80000fec <.LBB1_15+0x64>
80001010: 6f 00 00 07  	j	0x80001080 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80001014: 13 06 a0 02  	addi	a2, zero, 42
80001018: 63 18 c5 04  	bne	a0, a2, 0x80001068 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
8000101c: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80001020: 63 d4 05 00  	bgez	a1, 0x80001028 <.LBB1_15+0xa0>
80001024: 13 64 24 00  	ori	s0, s0, 2
80001028: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
8000102c: 03 45 0d 00  	lbu	a0, 0(s10)
80001030: 13 d6 f5 41  	srai	a2, a1, 31
80001034: b3 85 c5 00  	add	a1, a1, a2
80001038: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
8000103c: e3 08 75 f9  	beq	a0, s7, 0x80000fcc <.LBB1_15+0x44>
80001040: 6f 00 40 03  	j	0x80001074 <.LBB1_15+0xec>
;       else if (*format == '*') {
80001044: 13 06 a0 02  	addi	a2, zero, 42
80001048: 63 1a c5 02  	bne	a0, a2, 0x8000107c <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
8000104c: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80001050: 63 44 70 01  	bgtz	s7, 0x80001058 <.LBB1_15+0xd0>
80001054: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80001058: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
8000105c: 13 0d 2d 00  	addi	s10, s10, 2
80001060: 93 89 49 00  	addi	s3, s3, 4
80001064: 6f 00 00 02  	j	0x80001084 <.LBB1_15+0xfc>
80001068: 13 0b 00 00  	mv	s6, zero
8000106c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001070: e3 0e 75 f5  	beq	a0, s7, 0x80000fcc <.LBB1_15+0x44>
80001074: 93 0b 00 00  	mv	s7, zero
80001078: 6f 00 c0 00  	j	0x80001084 <.LBB1_15+0xfc>
8000107c: 93 0b 00 00  	mv	s7, zero
80001080: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001084: 93 05 85 f9  	addi	a1, a0, -104
80001088: 13 d6 15 00  	srli	a2, a1, 1
8000108c: 93 95 f5 01  	slli	a1, a1, 31
80001090: b3 e5 c5 00  	or	a1, a1, a2
80001094: 13 06 90 00  	addi	a2, zero, 9
80001098: 63 62 b6 06  	bltu	a2, a1, 0x800010fc <.LBB1_42>
8000109c: 93 95 25 00  	slli	a1, a1, 2

800010a0 <.LBB1_185>:
800010a0: 17 26 00 00  	auipc	a2, 2
800010a4: 13 06 06 09  	addi	a2, a2, 144
800010a8: b3 85 c5 00  	add	a1, a1, a2
800010ac: 83 a6 05 00  	lw	a3, 0(a1)
800010b0: 93 05 10 00  	addi	a1, zero, 1
800010b4: 13 06 00 10  	addi	a2, zero, 256
800010b8: 67 80 06 00  	jr	a3

800010bc <.LBB1_36>:
;         if (*format == 'h') {
800010bc: 03 45 1d 00  	lbu	a0, 1(s10)
800010c0: 93 05 80 06  	addi	a1, zero, 104
800010c4: 63 12 b5 12  	bne	a0, a1, 0x800011e8 <.LBB1_53+0x48>
800010c8: 93 05 20 00  	addi	a1, zero, 2
800010cc: 13 06 00 0c  	addi	a2, zero, 192
800010d0: 6f 00 00 02  	j	0x800010f0 <.LBB1_41>

800010d4 <.LBB1_38>:
800010d4: 13 06 00 20  	addi	a2, zero, 512
800010d8: 6f 00 80 01  	j	0x800010f0 <.LBB1_41>

800010dc <.LBB1_39>:
;         if (*format == 'l') {
800010dc: 03 45 1d 00  	lbu	a0, 1(s10)
800010e0: 93 05 c0 06  	addi	a1, zero, 108
800010e4: 63 18 b5 10  	bne	a0, a1, 0x800011f4 <.LBB1_53+0x54>
800010e8: 93 05 20 00  	addi	a1, zero, 2
800010ec: 13 06 00 30  	addi	a2, zero, 768

800010f0 <.LBB1_41>:
800010f0: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
800010f4: 03 45 0d 00  	lbu	a0, 0(s10)
800010f8: 33 64 c4 00  	or	s0, s0, a2

800010fc <.LBB1_42>:
;     switch (*format) {
800010fc: 93 05 b5 fd  	addi	a1, a0, -37
80001100: 13 06 30 05  	addi	a2, zero, 83
80001104: 63 64 b6 10  	bltu	a2, a1, 0x8000120c <.LBB1_59>
80001108: 93 95 25 00  	slli	a1, a1, 2

8000110c <.LBB1_186>:
8000110c: 17 26 00 00  	auipc	a2, 2
80001110: 13 06 c6 04  	addi	a2, a2, 76
80001114: b3 85 c5 00  	add	a1, a1, a2
80001118: 03 a6 05 00  	lw	a2, 0(a1)
8000111c: 93 05 80 00  	addi	a1, zero, 8
80001120: 13 0c 00 01  	addi	s8, zero, 16
80001124: 67 00 06 00  	jr	a2

80001128 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80001128: 13 74 f4 fe  	andi	s0, s0, -17
8000112c: 13 0c a0 00  	addi	s8, zero, 10

80001130 <.LBB1_45>:
;         if (*format == 'X') {
80001130: 93 05 80 05  	addi	a1, zero, 88
80001134: 63 14 b5 00  	bne	a0, a1, 0x8000113c <.LBB1_45+0xc>
80001138: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
8000113c: 93 05 40 06  	addi	a1, zero, 100
80001140: 63 08 b5 0e  	beq	a0, a1, 0x80001230 <.LBB1_62+0x8>
80001144: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80001148: 13 06 90 06  	addi	a2, zero, 105
8000114c: 63 02 c5 0e  	beq	a0, a2, 0x80001230 <.LBB1_62+0x8>
80001150: 6f 00 80 0d  	j	0x80001228 <.LBB1_62>

80001154 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80001154: 93 05 60 04  	addi	a1, zero, 70
80001158: 63 14 b5 00  	bne	a0, a1, 0x80001160 <.LBB1_49+0xc>
8000115c: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80001160: 13 85 79 00  	addi	a0, s3, 7
80001164: 13 75 85 ff  	andi	a0, a0, -8
80001168: 07 35 05 00  	fld	fa0, 0(a0)
8000116c: 93 09 85 00  	addi	s3, a0, 8
80001170: 13 05 09 00  	mv	a0, s2
80001174: 93 05 0a 00  	mv	a1, s4
80001178: 13 86 0c 00  	mv	a2, s9
8000117c: 93 86 0a 00  	mv	a3, s5
80001180: 13 87 0b 00  	mv	a4, s7
80001184: 93 07 0b 00  	mv	a5, s6
80001188: 13 08 04 00  	mv	a6, s0
8000118c: 97 10 00 00  	auipc	ra, 1
80001190: e7 80 80 98  	jalr	-1656(ra)
80001194: 6f 00 00 7c  	j	0x80001954 <.LBB1_124+0x2fc>

80001198 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001198: 83 25 81 01  	lw	a1, 24(sp)
8000119c: 33 64 b4 00  	or	s0, s0, a1

800011a0 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800011a0: 13 65 25 00  	ori	a0, a0, 2
800011a4: 93 05 70 04  	addi	a1, zero, 71
800011a8: 63 14 b5 00  	bne	a0, a1, 0x800011b0 <.LBB1_53+0x10>
800011ac: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800011b0: 13 85 79 00  	addi	a0, s3, 7
800011b4: 13 75 85 ff  	andi	a0, a0, -8
800011b8: 07 35 05 00  	fld	fa0, 0(a0)
800011bc: 93 09 85 00  	addi	s3, a0, 8
800011c0: 13 05 09 00  	mv	a0, s2
800011c4: 93 05 0a 00  	mv	a1, s4
800011c8: 13 86 0c 00  	mv	a2, s9
800011cc: 93 86 0a 00  	mv	a3, s5
800011d0: 13 87 0b 00  	mv	a4, s7
800011d4: 93 07 0b 00  	mv	a5, s6
800011d8: 13 08 04 00  	mv	a6, s0
800011dc: 97 10 00 00  	auipc	ra, 1
800011e0: e7 80 80 01  	jalr	24(ra)
800011e4: 6f 00 00 77  	j	0x80001954 <.LBB1_124+0x2fc>
800011e8: 13 64 04 08  	ori	s0, s0, 128
800011ec: 13 0d 1d 00  	addi	s10, s10, 1
800011f0: 6f f0 df f0  	j	0x800010fc <.LBB1_42>
800011f4: 13 64 04 10  	ori	s0, s0, 256
800011f8: 13 0d 1d 00  	addi	s10, s10, 1
800011fc: 6f f0 1f f0  	j	0x800010fc <.LBB1_42>

80001200 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80001200: 13 8c 1c 00  	addi	s8, s9, 1
80001204: 13 05 50 02  	addi	a0, zero, 37
80001208: 6f 00 80 00  	j	0x80001210 <.LBB1_59+0x4>

8000120c <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
8000120c: 13 8c 1c 00  	addi	s8, s9, 1
80001210: 93 05 0a 00  	mv	a1, s4
80001214: 13 86 0c 00  	mv	a2, s9
80001218: 93 86 0a 00  	mv	a3, s5
8000121c: e7 00 09 00  	jalr	s2
80001220: 6f 00 80 73  	j	0x80001958 <.LBB1_124+0x300>

80001224 <.LBB1_61>:
80001224: 93 05 20 00  	addi	a1, zero, 2

80001228 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80001228: 13 74 34 ff  	andi	s0, s0, -13
8000122c: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80001230: 93 75 04 40  	andi	a1, s0, 1024
80001234: 63 84 05 00  	beqz	a1, 0x8000123c <.LBB1_62+0x14>
80001238: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
8000123c: 93 05 90 06  	addi	a1, zero, 105
80001240: 63 06 b5 00  	beq	a0, a1, 0x8000124c <.LBB1_62+0x24>
80001244: 93 05 40 06  	addi	a1, zero, 100
80001248: 63 1c b5 12  	bne	a0, a1, 0x80001380 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
8000124c: 13 75 04 20  	andi	a0, s0, 512
80001250: 63 16 05 02  	bnez	a0, 0x8000127c <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80001254: 13 75 04 10  	andi	a0, s0, 256
80001258: 63 1c 05 14  	bnez	a0, 0x800013b0 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
8000125c: 13 75 04 04  	andi	a0, s0, 64
80001260: 63 18 05 4e  	bnez	a0, 0x80001750 <.LBB1_124+0xf8>
80001264: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001268: 93 75 04 08  	andi	a1, s0, 128
8000126c: 63 84 05 4e  	beqz	a1, 0x80001754 <.LBB1_124+0xfc>
80001270: 13 15 08 01  	slli	a0, a6, 16
80001274: 13 58 05 41  	srai	a6, a0, 16
80001278: 6f 00 c0 4d  	j	0x80001754 <.LBB1_124+0xfc>
8000127c: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80001280: 13 85 79 00  	addi	a0, s3, 7
80001284: 13 75 85 ff  	andi	a0, a0, -8
80001288: 83 29 05 00  	lw	s3, 0(a0)
8000128c: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80001290: 13 65 45 00  	ori	a0, a0, 4
80001294: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001298: 23 24 a1 00  	sw	a0, 8(sp)
8000129c: 33 e5 a9 00  	or	a0, s3, a0
800012a0: 63 14 05 00  	bnez	a0, 0x800012a8 <.LBB1_62+0x80>
800012a4: 13 74 f4 fe  	andi	s0, s0, -17
800012a8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800012ac: 93 75 04 40  	andi	a1, s0, 1024
800012b0: 93 d5 a5 00  	srli	a1, a1, 10
800012b4: 33 75 b5 00  	and	a0, a0, a1
800012b8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800012bc: 63 14 05 0a  	bnez	a0, 0x80001364 <.LBB1_62+0x13c>
800012c0: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800012c4: 63 da 04 00  	bgez	s1, 0x800012d8 <.LBB1_62+0xb0>
800012c8: 33 35 30 01  	snez	a0, s3
800012cc: b3 09 30 41  	neg	s3, s3
800012d0: 33 85 a4 00  	add	a0, s1, a0
800012d4: b3 04 a0 40  	neg	s1, a0
800012d8: 13 09 00 00  	mv	s2, zero
800012dc: 13 75 04 02  	andi	a0, s0, 32
800012e0: 13 45 15 06  	xori	a0, a0, 97
800012e4: 13 05 65 0f  	addi	a0, a0, 246
800012e8: 23 2a a1 00  	sw	a0, 20(sp)
800012ec: 6f 00 40 02  	j	0x80001310 <.LBB1_62+0xe8>
800012f0: 13 06 10 00  	addi	a2, zero, 1
800012f4: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800012f8: 93 36 f9 01  	sltiu	a3, s2, 31
800012fc: 33 f6 c6 00  	and	a2, a3, a2
80001300: 13 89 07 00  	mv	s2, a5
80001304: 93 09 05 00  	mv	s3, a0
80001308: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000130c: 63 0c 06 04  	beqz	a2, 0x80001364 <.LBB1_62+0x13c>
;       value /= base;
80001310: 13 85 09 00  	mv	a0, s3
80001314: 93 85 04 00  	mv	a1, s1
80001318: 13 06 0c 00  	mv	a2, s8
8000131c: 93 06 00 00  	mv	a3, zero
80001320: 97 f0 ff ff  	auipc	ra, 1048575
80001324: e7 80 00 ce  	jalr	-800(ra)
80001328: 33 06 85 03  	mul	a2, a0, s8
8000132c: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001330: 13 77 e6 0f  	andi	a4, a2, 254
80001334: 93 06 00 03  	addi	a3, zero, 48
80001338: 93 07 a0 00  	addi	a5, zero, 10
8000133c: 63 64 f7 00  	bltu	a4, a5, 0x80001344 <.LBB1_62+0x11c>
80001340: 83 26 41 01  	lw	a3, 20(sp)
80001344: 33 86 c6 00  	add	a2, a3, a2
80001348: 93 06 c1 01  	addi	a3, sp, 28
8000134c: b3 86 26 01  	add	a3, a3, s2
80001350: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001354: e3 9e 04 f8  	bnez	s1, 0x800012f0 <.LBB1_62+0xc8>
80001358: 33 b6 89 01  	sltu	a2, s3, s8
8000135c: 13 46 16 00  	xori	a2, a2, 1
80001360: 6f f0 5f f9  	j	0x800012f4 <.LBB1_62+0xcc>
80001364: 03 25 41 00  	lw	a0, 4(sp)
80001368: 93 09 85 00  	addi	s3, a0, 8
8000136c: 03 25 81 00  	lw	a0, 8(sp)
80001370: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001374: 13 07 c1 01  	addi	a4, sp, 28
80001378: 03 29 c1 00  	lw	s2, 12(sp)
8000137c: 6f 00 80 47  	j	0x800017f4 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80001380: 13 75 04 20  	andi	a0, s0, 512
80001384: 63 12 05 0c  	bnez	a0, 0x80001448 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001388: 13 75 04 10  	andi	a0, s0, 256
8000138c: 63 1e 05 46  	bnez	a0, 0x80001808 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001390: 13 75 04 04  	andi	a0, s0, 64
80001394: 63 10 05 50  	bnez	a0, 0x80001894 <.LBB1_124+0x23c>
80001398: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000139c: 93 75 04 08  	andi	a1, s0, 128
800013a0: 63 8c 05 4e  	beqz	a1, 0x80001898 <.LBB1_124+0x240>
800013a4: 83 25 01 01  	lw	a1, 16(sp)
800013a8: 33 75 b5 00  	and	a0, a0, a1
800013ac: 6f 00 c0 4e  	j	0x80001898 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
800013b0: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
800013b4: 63 14 08 00  	bnez	a6, 0x800013bc <.LBB1_62+0x194>
800013b8: 13 74 f4 fe  	andi	s0, s0, -17
800013bc: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800013c0: 13 76 04 40  	andi	a2, s0, 1024
800013c4: 13 56 a6 00  	srli	a2, a2, 10
800013c8: b3 f5 c5 00  	and	a1, a1, a2
800013cc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800013d0: 63 9c 05 40  	bnez	a1, 0x800017e8 <.LBB1_124+0x190>
800013d4: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800013d8: 13 56 f8 41  	srai	a2, a6, 31
800013dc: b3 06 c8 00  	add	a3, a6, a2
800013e0: b3 c6 c6 00  	xor	a3, a3, a2
800013e4: 13 76 04 02  	andi	a2, s0, 32
800013e8: 13 46 16 06  	xori	a2, a2, 97
800013ec: 93 08 66 0f  	addi	a7, a2, 246
800013f0: 6f 00 40 03  	j	0x80001424 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013f4: 33 05 f6 00  	add	a0, a2, a5
800013f8: 93 87 15 00  	addi	a5, a1, 1
800013fc: 13 06 c1 01  	addi	a2, sp, 28
80001400: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001404: b3 b6 86 01  	sltu	a3, a3, s8
80001408: 93 c6 16 00  	xori	a3, a3, 1
8000140c: 93 b5 f5 01  	sltiu	a1, a1, 31
80001410: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001414: 23 00 a6 00  	sb	a0, 0(a2)
80001418: 93 85 07 00  	mv	a1, a5
8000141c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001420: 63 84 04 3c  	beqz	s1, 0x800017e8 <.LBB1_124+0x190>
;       value /= base;
80001424: 33 d7 86 03  	divu	a4, a3, s8
80001428: 33 06 87 03  	mul	a2, a4, s8
8000142c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001430: 13 f5 e7 0f  	andi	a0, a5, 254
80001434: 13 06 00 03  	addi	a2, zero, 48
80001438: 93 04 a0 00  	addi	s1, zero, 10
8000143c: e3 6c 95 fa  	bltu	a0, s1, 0x800013f4 <.LBB1_62+0x1cc>
80001440: 13 86 08 00  	mv	a2, a7
80001444: 6f f0 1f fb  	j	0x800013f4 <.LBB1_62+0x1cc>
80001448: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
8000144c: 13 85 79 00  	addi	a0, s3, 7
80001450: 93 75 85 ff  	andi	a1, a0, -8
80001454: 03 a9 05 00  	lw	s2, 0(a1)
80001458: 13 e5 45 00  	ori	a0, a1, 4
8000145c: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80001460: 33 65 39 01  	or	a0, s2, s3
80001464: 23 24 b1 00  	sw	a1, 8(sp)
80001468: 63 14 05 00  	bnez	a0, 0x80001470 <.LBB1_62+0x248>
8000146c: 13 74 f4 fe  	andi	s0, s0, -17
80001470: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001474: 93 75 04 40  	andi	a1, s0, 1024
80001478: 93 d5 a5 00  	srli	a1, a1, 10
8000147c: 33 75 b5 00  	and	a0, a0, a1
80001480: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001484: 63 18 05 08  	bnez	a0, 0x80001514 <.LBB1_62+0x2ec>
80001488: 93 04 00 00  	mv	s1, zero
8000148c: 13 75 04 02  	andi	a0, s0, 32
80001490: 13 45 15 06  	xori	a0, a0, 97
80001494: 13 05 65 0f  	addi	a0, a0, 246
80001498: 23 2a a1 00  	sw	a0, 20(sp)
8000149c: 6f 00 40 02  	j	0x800014c0 <.LBB1_62+0x298>
800014a0: 13 06 10 00  	addi	a2, zero, 1
800014a4: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014a8: 93 b6 f4 01  	sltiu	a3, s1, 31
800014ac: 33 f6 c6 00  	and	a2, a3, a2
800014b0: 93 84 07 00  	mv	s1, a5
800014b4: 13 09 05 00  	mv	s2, a0
800014b8: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014bc: 63 0c 06 04  	beqz	a2, 0x80001514 <.LBB1_62+0x2ec>
;       value /= base;
800014c0: 13 05 09 00  	mv	a0, s2
800014c4: 93 85 09 00  	mv	a1, s3
800014c8: 13 06 0c 00  	mv	a2, s8
800014cc: 93 06 00 00  	mv	a3, zero
800014d0: 97 f0 ff ff  	auipc	ra, 1048575
800014d4: e7 80 00 b3  	jalr	-1232(ra)
800014d8: 33 06 85 03  	mul	a2, a0, s8
800014dc: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014e0: 13 77 e6 0f  	andi	a4, a2, 254
800014e4: 93 06 00 03  	addi	a3, zero, 48
800014e8: 93 07 a0 00  	addi	a5, zero, 10
800014ec: 63 64 f7 00  	bltu	a4, a5, 0x800014f4 <.LBB1_62+0x2cc>
800014f0: 83 26 41 01  	lw	a3, 20(sp)
800014f4: 33 86 c6 00  	add	a2, a3, a2
800014f8: 93 06 c1 01  	addi	a3, sp, 28
800014fc: b3 86 96 00  	add	a3, a3, s1
80001500: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001504: e3 9e 09 f8  	bnez	s3, 0x800014a0 <.LBB1_62+0x278>
80001508: 33 36 89 01  	sltu	a2, s2, s8
8000150c: 13 46 16 00  	xori	a2, a2, 1
80001510: 6f f0 5f f9  	j	0x800014a4 <.LBB1_62+0x27c>
80001514: 03 25 81 00  	lw	a0, 8(sp)
80001518: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000151c: 13 07 c1 01  	addi	a4, sp, 28
80001520: 03 29 c1 00  	lw	s2, 12(sp)
80001524: 6f 00 40 40  	j	0x80001928 <.LBB1_124+0x2d0>

80001528 <.LBB1_108>:
80001528: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
8000152c: 13 79 24 00  	andi	s2, s0, 2
80001530: 93 04 10 00  	addi	s1, zero, 1
80001534: 63 1e 09 02  	bnez	s2, 0x80001570 <.LBB1_108+0x48>
80001538: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
8000153c: 63 6a 9b 02  	bltu	s6, s1, 0x80001570 <.LBB1_108+0x48>
80001540: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80001544: 13 0c fb ff  	addi	s8, s6, -1
80001548: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
8000154c: 33 86 8c 00  	add	a2, s9, s0
80001550: 13 05 00 02  	addi	a0, zero, 32
80001554: 93 05 0a 00  	mv	a1, s4
80001558: 93 86 0a 00  	mv	a3, s5
8000155c: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80001560: 13 04 14 00  	addi	s0, s0, 1
80001564: e3 14 8c fe  	bne	s8, s0, 0x8000154c <.LBB1_108+0x24>
80001568: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
8000156c: b3 8c 8c 00  	add	s9, s9, s0
80001570: 03 c5 09 00  	lbu	a0, 0(s3)
80001574: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001578: 93 89 49 00  	addi	s3, s3, 4
8000157c: 13 8c 1c 00  	addi	s8, s9, 1
80001580: 93 05 0a 00  	mv	a1, s4
80001584: 13 86 0c 00  	mv	a2, s9
80001588: 93 86 0a 00  	mv	a3, s5
8000158c: 13 89 0b 00  	mv	s2, s7
80001590: e7 80 0b 00  	jalr	s7
80001594: 33 b5 64 01  	sltu	a0, s1, s6
80001598: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
8000159c: 33 65 a4 00  	or	a0, s0, a0
800015a0: 63 1c 05 3a  	bnez	a0, 0x80001958 <.LBB1_124+0x300>
;           while (l++ < width) {
800015a4: 33 04 9b 40  	sub	s0, s6, s1
800015a8: 93 0b e0 02  	addi	s7, zero, 46
800015ac: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800015b0: 13 0c 1c 00  	addi	s8, s8, 1
800015b4: 13 05 00 02  	addi	a0, zero, 32
800015b8: 93 05 0a 00  	mv	a1, s4
800015bc: 93 86 0a 00  	mv	a3, s5
800015c0: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800015c4: 13 04 f4 ff  	addi	s0, s0, -1
800015c8: e3 12 04 fe  	bnez	s0, 0x800015ac <.LBB1_108+0x84>
800015cc: 13 0b 50 02  	addi	s6, zero, 37
800015d0: 13 04 1d 00  	addi	s0, s10, 1
800015d4: 6f f0 df 91  	j	0x80000ef0 <.LBB1_183+0x30>

800015d8 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
800015d8: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
800015dc: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
800015e0: 63 14 05 00  	bnez	a0, 0x800015e8 <.LBB1_117+0x10>
800015e4: 93 fe fe fe  	andi	t4, t4, -17
800015e8: 93 04 a0 00  	addi	s1, zero, 10
800015ec: 13 04 f0 00  	addi	s0, zero, 15
800015f0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800015f4: 13 f6 0e 40  	andi	a2, t4, 1024
800015f8: 13 56 a6 00  	srli	a2, a2, 10
800015fc: b3 f5 c5 00  	and	a1, a1, a2
80001600: 93 07 00 00  	mv	a5, zero
80001604: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80001608: 63 98 05 10  	bnez	a1, 0x80001718 <.LBB1_124+0xc0>
8000160c: 93 05 00 00  	mv	a1, zero
80001610: 6f 00 40 03  	j	0x80001644 <.LBB1_117+0x6c>
80001614: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001618: 33 06 d6 00  	add	a2, a2, a3
8000161c: 93 87 15 00  	addi	a5, a1, 1
80001620: 93 06 c1 01  	addi	a3, sp, 28
80001624: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001628: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
8000162c: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001630: 93 b5 f5 01  	sltiu	a1, a1, 31
80001634: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001638: 23 80 c6 00  	sb	a2, 0(a3)
8000163c: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001640: 63 0c 07 0c  	beqz	a4, 0x80001718 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001644: 93 76 e5 00  	andi	a3, a0, 14
80001648: 13 06 00 03  	addi	a2, zero, 48
8000164c: e3 e4 96 fc  	bltu	a3, s1, 0x80001614 <.LBB1_117+0x3c>
80001650: 13 06 70 03  	addi	a2, zero, 55
80001654: 6f f0 1f fc  	j	0x80001614 <.LBB1_117+0x3c>

80001658 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80001658: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
8000165c: 03 c5 07 00  	lbu	a0, 0(a5)
80001660: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001664: 63 0c 05 02  	beqz	a0, 0x8000169c <.LBB1_124+0x44>
80001668: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
8000166c: 63 84 0b 00  	beqz	s7, 0x80001674 <.LBB1_124+0x1c>
80001670: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001674: 93 85 f5 ff  	addi	a1, a1, -1
80001678: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
8000167c: 03 c7 16 00  	lbu	a4, 1(a3)
80001680: 13 86 16 00  	addi	a2, a3, 1
80001684: b3 36 e0 00  	snez	a3, a4
80001688: 33 37 b0 00  	snez	a4, a1
8000168c: 33 77 d7 00  	and	a4, a4, a3
80001690: 93 85 f5 ff  	addi	a1, a1, -1
80001694: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001698: e3 12 07 fe  	bnez	a4, 0x8000167c <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
8000169c: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800016a0: 93 75 04 40  	andi	a1, s0, 1024
800016a4: 93 b4 15 00  	seqz	s1, a1
800016a8: 23 2a c1 00  	sw	a2, 20(sp)
800016ac: b3 35 76 01  	sltu	a1, a2, s7
800016b0: b3 e5 b4 00  	or	a1, s1, a1
800016b4: 63 94 05 00  	bnez	a1, 0x800016bc <.LBB1_124+0x64>
800016b8: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
800016bc: 93 75 24 00  	andi	a1, s0, 2
800016c0: 23 26 b1 00  	sw	a1, 12(sp)
800016c4: 63 96 05 2a  	bnez	a1, 0x80001970 <.LBB1_124+0x318>
800016c8: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
800016cc: 63 fe 65 29  	bgeu	a1, s6, 0x80001968 <.LBB1_124+0x310>
800016d0: 23 24 f1 00  	sw	a5, 8(sp)
800016d4: 13 04 00 00  	mv	s0, zero
800016d8: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
800016dc: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
800016e0: 33 86 8c 00  	add	a2, s9, s0
800016e4: 13 05 00 02  	addi	a0, zero, 32
800016e8: 93 05 0a 00  	mv	a1, s4
800016ec: 93 86 0a 00  	mv	a3, s5
800016f0: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
800016f4: 13 04 14 00  	addi	s0, s0, 1
800016f8: e3 14 89 fe  	bne	s2, s0, 0x800016e0 <.LBB1_124+0x88>
800016fc: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001700: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80001704: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001708: 23 2a b1 00  	sw	a1, 20(sp)
8000170c: b3 8c 8c 00  	add	s9, s9, s0
80001710: 13 09 0c 00  	mv	s2, s8
80001714: 6f 00 c0 25  	j	0x80001970 <.LBB1_124+0x318>
80001718: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
8000171c: 13 07 c1 01  	addi	a4, sp, 28
80001720: 93 08 00 01  	addi	a7, zero, 16
80001724: 13 0e 80 00  	addi	t3, zero, 8
80001728: 13 05 09 00  	mv	a0, s2
8000172c: 93 05 0a 00  	mv	a1, s4
80001730: 13 86 0c 00  	mv	a2, s9
80001734: 93 86 0a 00  	mv	a3, s5
80001738: 13 08 00 00  	mv	a6, zero
8000173c: 93 83 0b 00  	mv	t2, s7
80001740: 97 10 00 00  	auipc	ra, 1
80001744: e7 80 00 fa  	jalr	-96(ra)
80001748: 13 0c 05 00  	mv	s8, a0
8000174c: 6f 00 00 21  	j	0x8000195c <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001750: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80001754: 63 14 08 00  	bnez	a6, 0x8000175c <.LBB1_124+0x104>
80001758: 13 74 f4 fe  	andi	s0, s0, -17
8000175c: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80001760: 13 76 04 40  	andi	a2, s0, 1024
80001764: 13 56 a6 00  	srli	a2, a2, 10
80001768: b3 f5 c5 00  	and	a1, a1, a2
8000176c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001770: 63 9c 05 06  	bnez	a1, 0x800017e8 <.LBB1_124+0x190>
80001774: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001778: 13 56 f8 41  	srai	a2, a6, 31
8000177c: b3 06 c8 00  	add	a3, a6, a2
80001780: b3 c6 c6 00  	xor	a3, a3, a2
80001784: 13 76 04 02  	andi	a2, s0, 32
80001788: 13 46 16 06  	xori	a2, a2, 97
8000178c: 93 08 66 0f  	addi	a7, a2, 246
80001790: 6f 00 40 03  	j	0x800017c4 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001794: 33 05 f6 00  	add	a0, a2, a5
80001798: 93 87 15 00  	addi	a5, a1, 1
8000179c: 13 06 c1 01  	addi	a2, sp, 28
800017a0: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017a4: b3 b6 86 01  	sltu	a3, a3, s8
800017a8: 93 c6 16 00  	xori	a3, a3, 1
800017ac: 93 b5 f5 01  	sltiu	a1, a1, 31
800017b0: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017b4: 23 00 a6 00  	sb	a0, 0(a2)
800017b8: 93 85 07 00  	mv	a1, a5
800017bc: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800017c0: 63 84 04 02  	beqz	s1, 0x800017e8 <.LBB1_124+0x190>
;       value /= base;
800017c4: 33 d7 86 03  	divu	a4, a3, s8
800017c8: 33 06 87 03  	mul	a2, a4, s8
800017cc: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800017d0: 13 f5 e7 0f  	andi	a0, a5, 254
800017d4: 13 06 00 03  	addi	a2, zero, 48
800017d8: 93 04 a0 00  	addi	s1, zero, 10
800017dc: e3 6c 95 fa  	bltu	a0, s1, 0x80001794 <.LBB1_124+0x13c>
800017e0: 13 86 08 00  	mv	a2, a7
800017e4: 6f f0 1f fb  	j	0x80001794 <.LBB1_124+0x13c>
800017e8: 93 89 49 00  	addi	s3, s3, 4
800017ec: 13 58 f8 01  	srli	a6, a6, 31
800017f0: 13 07 c1 01  	addi	a4, sp, 28
800017f4: 13 05 09 00  	mv	a0, s2
800017f8: 93 05 0a 00  	mv	a1, s4
800017fc: 13 86 0c 00  	mv	a2, s9
80001800: 93 86 0a 00  	mv	a3, s5
80001804: 6f 00 80 13  	j	0x8000193c <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001808: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
8000180c: 63 14 05 00  	bnez	a0, 0x80001814 <.LBB1_124+0x1bc>
80001810: 13 74 f4 fe  	andi	s0, s0, -17
80001814: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001818: 13 76 04 40  	andi	a2, s0, 1024
8000181c: 13 56 a6 00  	srli	a2, a2, 10
80001820: b3 f5 c5 00  	and	a1, a1, a2
80001824: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001828: 63 9c 05 0e  	bnez	a1, 0x80001920 <.LBB1_124+0x2c8>
8000182c: 13 06 00 00  	mv	a2, zero
80001830: 93 75 04 02  	andi	a1, s0, 32
80001834: 93 c5 15 06  	xori	a1, a1, 97
80001838: 13 88 65 0f  	addi	a6, a1, 246
8000183c: 6f 00 40 03  	j	0x80001870 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001840: 33 87 e7 00  	add	a4, a5, a4
80001844: 93 07 16 00  	addi	a5, a2, 1
80001848: 93 05 c1 01  	addi	a1, sp, 28
8000184c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001850: 33 35 85 01  	sltu	a0, a0, s8
80001854: 13 45 15 00  	xori	a0, a0, 1
80001858: 13 36 f6 01  	sltiu	a2, a2, 31
8000185c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001860: 23 80 e4 00  	sb	a4, 0(s1)
80001864: 13 86 07 00  	mv	a2, a5
80001868: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000186c: 63 8a 05 0a  	beqz	a1, 0x80001920 <.LBB1_124+0x2c8>
;       value /= base;
80001870: b3 56 85 03  	divu	a3, a0, s8
80001874: 33 87 86 03  	mul	a4, a3, s8
80001878: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000187c: 93 74 e7 0f  	andi	s1, a4, 254
80001880: 93 07 00 03  	addi	a5, zero, 48
80001884: 93 05 a0 00  	addi	a1, zero, 10
80001888: e3 ec b4 fa  	bltu	s1, a1, 0x80001840 <.LBB1_124+0x1e8>
8000188c: 93 07 08 00  	mv	a5, a6
80001890: 6f f0 1f fb  	j	0x80001840 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001894: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001898: 63 14 05 00  	bnez	a0, 0x800018a0 <.LBB1_124+0x248>
8000189c: 13 74 f4 fe  	andi	s0, s0, -17
800018a0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800018a4: 13 76 04 40  	andi	a2, s0, 1024
800018a8: 13 56 a6 00  	srli	a2, a2, 10
800018ac: b3 f5 c5 00  	and	a1, a1, a2
800018b0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800018b4: 63 96 05 06  	bnez	a1, 0x80001920 <.LBB1_124+0x2c8>
800018b8: 13 06 00 00  	mv	a2, zero
800018bc: 93 75 04 02  	andi	a1, s0, 32
800018c0: 93 c5 15 06  	xori	a1, a1, 97
800018c4: 13 88 65 0f  	addi	a6, a1, 246
800018c8: 6f 00 40 03  	j	0x800018fc <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018cc: 33 87 e7 00  	add	a4, a5, a4
800018d0: 93 07 16 00  	addi	a5, a2, 1
800018d4: 93 05 c1 01  	addi	a1, sp, 28
800018d8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018dc: 33 35 85 01  	sltu	a0, a0, s8
800018e0: 13 45 15 00  	xori	a0, a0, 1
800018e4: 13 36 f6 01  	sltiu	a2, a2, 31
800018e8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018ec: 23 80 e4 00  	sb	a4, 0(s1)
800018f0: 13 86 07 00  	mv	a2, a5
800018f4: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018f8: 63 84 05 02  	beqz	a1, 0x80001920 <.LBB1_124+0x2c8>
;       value /= base;
800018fc: b3 56 85 03  	divu	a3, a0, s8
80001900: 33 87 86 03  	mul	a4, a3, s8
80001904: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001908: 93 74 e7 0f  	andi	s1, a4, 254
8000190c: 93 07 00 03  	addi	a5, zero, 48
80001910: 93 05 a0 00  	addi	a1, zero, 10
80001914: e3 ec b4 fa  	bltu	s1, a1, 0x800018cc <.LBB1_124+0x274>
80001918: 93 07 08 00  	mv	a5, a6
8000191c: 6f f0 1f fb  	j	0x800018cc <.LBB1_124+0x274>
80001920: 93 89 49 00  	addi	s3, s3, 4
80001924: 13 07 c1 01  	addi	a4, sp, 28
80001928: 13 05 09 00  	mv	a0, s2
8000192c: 93 05 0a 00  	mv	a1, s4
80001930: 13 86 0c 00  	mv	a2, s9
80001934: 93 86 0a 00  	mv	a3, s5
80001938: 13 08 00 00  	mv	a6, zero
8000193c: 93 08 0c 00  	mv	a7, s8
80001940: 93 83 0b 00  	mv	t2, s7
80001944: 13 0e 0b 00  	mv	t3, s6
80001948: 93 0e 04 00  	mv	t4, s0
8000194c: 97 10 00 00  	auipc	ra, 1
80001950: e7 80 40 d9  	jalr	-620(ra)
80001954: 13 0c 05 00  	mv	s8, a0
80001958: 13 0b 50 02  	addi	s6, zero, 37
8000195c: 93 0b e0 02  	addi	s7, zero, 46
80001960: 13 04 1d 00  	addi	s0, s10, 1
80001964: 6f f0 cf d8  	j	0x80000ef0 <.LBB1_183+0x30>
80001968: 93 85 15 00  	addi	a1, a1, 1
8000196c: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001970: 63 00 05 04  	beqz	a0, 0x800019b0 <.LBB1_124+0x358>
80001974: 13 84 17 00  	addi	s0, a5, 1
80001978: 6f 00 00 03  	j	0x800019a8 <.LBB1_124+0x350>
8000197c: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001980: 13 8c 1c 00  	addi	s8, s9, 1
80001984: 13 75 f5 0f  	andi	a0, a0, 255
80001988: 93 05 0a 00  	mv	a1, s4
8000198c: 13 86 0c 00  	mv	a2, s9
80001990: 93 86 0a 00  	mv	a3, s5
80001994: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001998: 03 45 04 00  	lbu	a0, 0(s0)
8000199c: 13 04 14 00  	addi	s0, s0, 1
800019a0: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800019a4: 63 08 05 00  	beqz	a0, 0x800019b4 <.LBB1_124+0x35c>
800019a8: e3 9c 04 fc  	bnez	s1, 0x80001980 <.LBB1_124+0x328>
800019ac: e3 98 0b fc  	bnez	s7, 0x8000197c <.LBB1_124+0x324>
800019b0: 13 8c 0c 00  	mv	s8, s9
800019b4: 03 25 c1 00  	lw	a0, 12(sp)
800019b8: 13 35 15 00  	seqz	a0, a0
800019bc: 03 26 41 01  	lw	a2, 20(sp)
800019c0: b3 35 66 01  	sltu	a1, a2, s6
800019c4: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
800019c8: 33 65 b5 00  	or	a0, a0, a1
800019cc: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
800019d0: e3 14 05 f8  	bnez	a0, 0x80001958 <.LBB1_124+0x300>
;           while (l++ < width) {
800019d4: 33 04 cb 40  	sub	s0, s6, a2
800019d8: 93 0b e0 02  	addi	s7, zero, 46
800019dc: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
800019e0: 13 0c 1c 00  	addi	s8, s8, 1
800019e4: 13 05 00 02  	addi	a0, zero, 32
800019e8: 93 05 0a 00  	mv	a1, s4
800019ec: 93 86 0a 00  	mv	a3, s5
800019f0: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
800019f4: 13 04 f4 ff  	addi	s0, s0, -1
800019f8: e3 12 04 fe  	bnez	s0, 0x800019dc <.LBB1_124+0x384>
800019fc: 13 0b 50 02  	addi	s6, zero, 37
80001a00: 13 04 1d 00  	addi	s0, s10, 1
80001a04: 6f f0 cf ce  	j	0x80000ef0 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001a08: 13 86 0c 00  	mv	a2, s9
80001a0c: 63 e4 5c 01  	bltu	s9, s5, 0x80001a14 <.LBB1_124+0x3bc>
80001a10: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001a14: 13 05 00 00  	mv	a0, zero
80001a18: 93 05 0a 00  	mv	a1, s4
80001a1c: 93 86 0a 00  	mv	a3, s5
80001a20: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001a24: 13 85 0c 00  	mv	a0, s9
80001a28: 83 2d c1 03  	lw	s11, 60(sp)
80001a2c: 03 2d 01 04  	lw	s10, 64(sp)
80001a30: 83 2c 41 04  	lw	s9, 68(sp)
80001a34: 03 2c 81 04  	lw	s8, 72(sp)
80001a38: 83 2b c1 04  	lw	s7, 76(sp)
80001a3c: 03 2b 01 05  	lw	s6, 80(sp)
80001a40: 83 2a 41 05  	lw	s5, 84(sp)
80001a44: 03 2a 81 05  	lw	s4, 88(sp)
80001a48: 83 29 c1 05  	lw	s3, 92(sp)
80001a4c: 03 29 01 06  	lw	s2, 96(sp)
80001a50: 83 24 41 06  	lw	s1, 100(sp)
80001a54: 03 24 81 06  	lw	s0, 104(sp)
80001a58: 83 20 c1 06  	lw	ra, 108(sp)
80001a5c: 13 01 01 07  	addi	sp, sp, 112
80001a60: 67 80 00 00  	ret

80001a64 <_out_char.llvm.17592004524093383706>:
;   if (character) {
80001a64: 63 04 05 0a  	beqz	a0, 0x80001b0c <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001a68: f3 25 40 f1  	csrr	a1, mhartid
80001a6c: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001a70: 33 86 c5 02  	mul	a2, a1, a2

80001a74 <.LBB2_6>:
80001a74: 97 26 00 00  	auipc	a3, 2
80001a78: 93 86 06 99  	addi	a3, a3, -1648
80001a7c: b3 05 d6 00  	add	a1, a2, a3
80001a80: 03 a7 05 00  	lw	a4, 0(a1)
80001a84: 93 07 17 00  	addi	a5, a4, 1
80001a88: 23 a0 f5 00  	sw	a5, 0(a1)
80001a8c: 33 87 e5 00  	add	a4, a1, a4
80001a90: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001a94: 03 a7 05 00  	lw	a4, 0(a1)
80001a98: 13 07 47 c0  	addi	a4, a4, -1020
80001a9c: 33 37 e0 00  	snez	a4, a4
80001aa0: 13 05 65 ff  	addi	a0, a0, -10
80001aa4: 33 35 a0 00  	snez	a0, a0
80001aa8: 33 75 e5 00  	and	a0, a0, a4
80001aac: 63 10 05 06  	bnez	a0, 0x80001b0c <.LBB2_8+0x18>
80001ab0: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001ab4: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001ab8: 23 26 05 00  	sw	zero, 12(a0)
80001abc: 93 06 00 04  	addi	a3, zero, 64
80001ac0: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001ac4: 23 2a 05 00  	sw	zero, 20(a0)
80001ac8: 93 06 10 00  	addi	a3, zero, 1
80001acc: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001ad0: 23 2e 05 00  	sw	zero, 28(a0)
80001ad4: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001ad8: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001adc: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001ae0: 23 22 05 02  	sw	zero, 36(a0)
80001ae4: 23 20 c5 02  	sw	a2, 32(a0)

80001ae8 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001ae8: 17 25 00 00  	auipc	a0, 2
80001aec: 13 05 85 81  	addi	a0, a0, -2024
80001af0: 23 20 d5 00  	sw	a3, 0(a0)

80001af4 <.LBB2_8>:
80001af4: 17 25 00 00  	auipc	a0, 2
80001af8: 13 05 c5 84  	addi	a0, a0, -1972
;         while (fromhost == 0)
80001afc: 03 26 05 00  	lw	a2, 0(a0)
80001b00: e3 0e 06 fe  	beqz	a2, 0x80001afc <.LBB2_8+0x8>
;         fromhost = 0;
80001b04: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001b08: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001b0c: 67 80 00 00  	ret

80001b10 <_out_null>:
; }
80001b10: 67 80 00 00  	ret

80001b14 <_ftoa>:
; {
80001b14: 13 01 01 f9  	addi	sp, sp, -112
80001b18: 23 26 11 06  	sw	ra, 108(sp)
80001b1c: 23 24 81 06  	sw	s0, 104(sp)
80001b20: 23 22 91 06  	sw	s1, 100(sp)
80001b24: 23 20 21 07  	sw	s2, 96(sp)
80001b28: 23 2e 31 05  	sw	s3, 92(sp)
80001b2c: 23 2c 41 05  	sw	s4, 88(sp)
80001b30: 23 2a 51 05  	sw	s5, 84(sp)
80001b34: 23 28 61 05  	sw	s6, 80(sp)
80001b38: 23 26 71 05  	sw	s7, 76(sp)
80001b3c: 23 24 81 05  	sw	s8, 72(sp)
80001b40: 23 22 91 05  	sw	s9, 68(sp)
80001b44: 23 20 a1 05  	sw	s10, 64(sp)
80001b48: 27 3c 81 02  	fsd	fs0, 56(sp)
80001b4c: 27 38 91 02  	fsd	fs1, 48(sp)
80001b50: 27 34 21 03  	fsd	fs2, 40(sp)

80001b54 <.LBB4_83>:
80001b54: 97 24 00 00  	auipc	s1, 2
80001b58: 93 84 44 80  	addi	s1, s1, -2044
80001b5c: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001b60: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001b64: 93 0a 08 00  	mv	s5, a6
80001b68: 13 89 07 00  	mv	s2, a5
80001b6c: 93 89 06 00  	mv	s3, a3
80001b70: 13 0a 06 00  	mv	s4, a2
80001b74: 13 8b 05 00  	mv	s6, a1
80001b78: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001b7c: 63 98 04 0e  	bnez	s1, 0x80001c6c <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001b80: 13 f5 2a 00  	andi	a0, s5, 2
80001b84: 93 f5 3a 00  	andi	a1, s5, 3
80001b88: b3 35 b0 00  	snez	a1, a1
80001b8c: 13 36 59 00  	sltiu	a2, s2, 5
80001b90: b3 65 b6 00  	or	a1, a2, a1
80001b94: 93 5c 15 00  	srli	s9, a0, 1
80001b98: 13 04 0a 00  	mv	s0, s4
80001b9c: 63 96 05 02  	bnez	a1, 0x80001bc8 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001ba0: 93 04 c9 ff  	addi	s1, s2, -4
80001ba4: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001ba8: 13 04 16 00  	addi	s0, a2, 1
80001bac: 13 05 00 02  	addi	a0, zero, 32
80001bb0: 93 05 0b 00  	mv	a1, s6
80001bb4: 93 86 09 00  	mv	a3, s3
80001bb8: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001bbc: 93 84 f4 ff  	addi	s1, s1, -1
80001bc0: 13 06 04 00  	mv	a2, s0
80001bc4: e3 92 04 fe  	bnez	s1, 0x80001ba8 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001bc8: 93 04 14 00  	addi	s1, s0, 1
80001bcc: 13 05 d0 02  	addi	a0, zero, 45
80001bd0: 93 05 0b 00  	mv	a1, s6
80001bd4: 13 06 04 00  	mv	a2, s0
80001bd8: 93 86 09 00  	mv	a3, s3
80001bdc: e7 80 0b 00  	jalr	s7
80001be0: 93 0a 24 00  	addi	s5, s0, 2
80001be4: 13 05 90 06  	addi	a0, zero, 105
80001be8: 93 05 0b 00  	mv	a1, s6
80001bec: 13 86 04 00  	mv	a2, s1
80001bf0: 93 86 09 00  	mv	a3, s3
80001bf4: e7 80 0b 00  	jalr	s7
80001bf8: 13 0c 34 00  	addi	s8, s0, 3
80001bfc: 13 05 e0 06  	addi	a0, zero, 110
80001c00: 93 05 0b 00  	mv	a1, s6
80001c04: 13 86 0a 00  	mv	a2, s5
80001c08: 93 86 09 00  	mv	a3, s3
80001c0c: e7 80 0b 00  	jalr	s7
80001c10: 93 04 44 00  	addi	s1, s0, 4
80001c14: 13 05 60 06  	addi	a0, zero, 102
80001c18: 93 05 0b 00  	mv	a1, s6
80001c1c: 13 06 0c 00  	mv	a2, s8
80001c20: 93 86 09 00  	mv	a3, s3
80001c24: e7 80 0b 00  	jalr	s7
80001c28: 33 85 44 41  	sub	a0, s1, s4
80001c2c: 33 35 25 01  	sltu	a0, a0, s2
80001c30: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001c34: 93 c5 1c 00  	xori	a1, s9, 1
80001c38: 33 e5 a5 00  	or	a0, a1, a0
80001c3c: 63 16 05 56  	bnez	a0, 0x800021a8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001c40: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001c44: 13 84 14 00  	addi	s0, s1, 1
80001c48: 13 05 00 02  	addi	a0, zero, 32
80001c4c: 93 05 0b 00  	mv	a1, s6
80001c50: 13 86 04 00  	mv	a2, s1
80001c54: 93 86 09 00  	mv	a3, s3
80001c58: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001c5c: 33 05 8a 00  	add	a0, s4, s0
80001c60: 93 04 04 00  	mv	s1, s0
80001c64: e3 60 25 ff  	bltu	a0, s2, 0x80001c44 <.LBB4_83+0xf0>
80001c68: 6f 00 40 54  	j	0x800021ac <.LBB4_90+0x378>
80001c6c: 53 04 a5 22  	fmv.d	fs0, fa0

80001c70 <.LBB4_84>:
80001c70: 17 15 00 00  	auipc	a0, 1
80001c74: 13 05 05 6f  	addi	a0, a0, 1776
80001c78: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001c7c: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001c80: 63 1e 05 00  	bnez	a0, 0x80001c9c <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001c84: 93 f5 4a 00  	andi	a1, s5, 4
80001c88: 13 b5 15 00  	seqz	a0, a1
80001c8c: 63 82 05 06  	beqz	a1, 0x80001cf0 <.LBB4_88>

80001c90 <.LBB4_85>:
80001c90: 17 1c 00 00  	auipc	s8, 1
80001c94: 13 0c 3c 3c  	addi	s8, s8, 963
80001c98: 6f 00 00 06  	j	0x80001cf8 <.LBB4_88+0x8>

80001c9c <.LBB4_86>:
80001c9c: 17 15 00 00  	auipc	a0, 1
80001ca0: 13 05 c5 6c  	addi	a0, a0, 1740
80001ca4: 07 30 05 00  	fld	ft0, 0(a0)

80001ca8 <.LBB4_87>:
80001ca8: 17 15 00 00  	auipc	a0, 1
80001cac: 13 05 85 6c  	addi	a0, a0, 1736
80001cb0: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001cb4: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001cb8: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001cbc: 33 75 b5 00  	and	a0, a0, a1
80001cc0: 63 1e 05 0e  	bnez	a0, 0x80001dbc <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001cc4: 13 85 0b 00  	mv	a0, s7
80001cc8: 93 05 0b 00  	mv	a1, s6
80001ccc: 13 06 0a 00  	mv	a2, s4
80001cd0: 93 86 09 00  	mv	a3, s3
80001cd4: 53 05 84 22  	fmv.d	fa0, fs0
80001cd8: 93 07 09 00  	mv	a5, s2
80001cdc: 13 88 0a 00  	mv	a6, s5
80001ce0: 97 00 00 00  	auipc	ra, 0
80001ce4: e7 80 40 51  	jalr	1300(ra)
80001ce8: 13 04 05 00  	mv	s0, a0
80001cec: 6f 00 00 4c  	j	0x800021ac <.LBB4_90+0x378>

80001cf0 <.LBB4_88>:
80001cf0: 17 1c 00 00  	auipc	s8, 1
80001cf4: 13 0c 5c 3c  	addi	s8, s8, 965
80001cf8: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001cfc: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d00: 13 f5 3a 00  	andi	a0, s5, 3
80001d04: 33 35 a0 00  	snez	a0, a0
80001d08: b3 b5 2c 01  	sltu	a1, s9, s2
80001d0c: 93 c5 15 00  	xori	a1, a1, 1
80001d10: 33 65 b5 00  	or	a0, a0, a1
80001d14: 93 fa 2a 00  	andi	s5, s5, 2
80001d18: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d1c: 63 16 05 02  	bnez	a0, 0x80001d48 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001d20: 33 04 99 41  	sub	s0, s2, s9
80001d24: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001d28: 93 04 16 00  	addi	s1, a2, 1
80001d2c: 13 05 00 02  	addi	a0, zero, 32
80001d30: 93 05 0b 00  	mv	a1, s6
80001d34: 93 86 09 00  	mv	a3, s3
80001d38: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001d3c: 13 04 f4 ff  	addi	s0, s0, -1
80001d40: 13 86 04 00  	mv	a2, s1
80001d44: e3 12 04 fe  	bnez	s0, 0x80001d28 <.LBB4_88+0x38>
80001d48: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001d4c: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001d50: 33 05 9c 01  	add	a0, s8, s9
80001d54: 03 45 05 00  	lbu	a0, 0(a0)
80001d58: 13 86 04 00  	mv	a2, s1
80001d5c: 13 84 fc ff  	addi	s0, s9, -1
80001d60: 93 84 14 00  	addi	s1, s1, 1
80001d64: 93 05 0b 00  	mv	a1, s6
80001d68: 93 86 09 00  	mv	a3, s3
80001d6c: e7 80 0b 00  	jalr	s7
80001d70: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001d74: e3 1e 04 fc  	bnez	s0, 0x80001d50 <.LBB4_88+0x60>
80001d78: 33 85 44 41  	sub	a0, s1, s4
80001d7c: 33 35 25 01  	sltu	a0, a0, s2
80001d80: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001d84: 93 c5 1a 00  	xori	a1, s5, 1
80001d88: 33 e5 a5 00  	or	a0, a1, a0
80001d8c: 63 1e 05 40  	bnez	a0, 0x800021a8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001d90: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001d94: 13 84 14 00  	addi	s0, s1, 1
80001d98: 13 05 00 02  	addi	a0, zero, 32
80001d9c: 93 05 0b 00  	mv	a1, s6
80001da0: 13 86 04 00  	mv	a2, s1
80001da4: 93 86 09 00  	mv	a3, s3
80001da8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001dac: 33 05 8a 00  	add	a0, s4, s0
80001db0: 93 04 04 00  	mv	s1, s0
80001db4: e3 60 25 ff  	bltu	a0, s2, 0x80001d94 <.LBB4_88+0xa4>
80001db8: 6f 00 40 3f  	j	0x800021ac <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001dbc: 13 f5 0a 40  	andi	a0, s5, 1024
80001dc0: 13 0c 60 00  	addi	s8, zero, 6
80001dc4: 63 04 05 00  	beqz	a0, 0x80001dcc <.LBB4_88+0xdc>
80001dc8: 13 0c 07 00  	mv	s8, a4
80001dcc: 13 05 a0 00  	addi	a0, zero, 10
80001dd0: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001dd4: 63 6c ac 02  	bltu	s8, a0, 0x80001e0c <.LBB4_88+0x11c>
80001dd8: 93 04 6c ff  	addi	s1, s8, -10
80001ddc: 13 05 f0 01  	addi	a0, zero, 31
80001de0: 63 e4 a4 00  	bltu	s1, a0, 0x80001de8 <.LBB4_88+0xf8>
80001de4: 93 04 f0 01  	addi	s1, zero, 31
80001de8: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001dec: 13 05 81 00  	addi	a0, sp, 8
80001df0: 93 05 00 03  	addi	a1, zero, 48
80001df4: 13 06 04 00  	mv	a2, s0
80001df8: 97 e0 ff ff  	auipc	ra, 1048574
80001dfc: e7 80 00 76  	jalr	1888(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e00: 13 c5 f4 ff  	not	a0, s1
80001e04: 33 0c ac 00  	add	s8, s8, a0
80001e08: 6f 00 80 00  	j	0x80001e10 <.LBB4_88+0x120>
80001e0c: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001e10: 13 15 3c 00  	slli	a0, s8, 3

80001e14 <.LBB4_89>:
80001e14: 97 15 00 00  	auipc	a1, 1
80001e18: 93 85 45 49  	addi	a1, a1, 1172
80001e1c: 33 05 b5 00  	add	a0, a0, a1
80001e20: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001e24: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001e28: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001e2c: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001e30: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001e34 <.LBB4_90>:
80001e34: 17 15 00 00  	auipc	a0, 1
80001e38: 13 05 45 54  	addi	a0, a0, 1348
80001e3c: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001e40: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001e44: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001e48: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001e4c: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001e50: 63 90 05 02  	bnez	a1, 0x80001e70 <.LBB4_90+0x3c>
;     ++frac;
80001e54: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001e58: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001e5c: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001e60: 63 94 05 02  	bnez	a1, 0x80001e88 <.LBB4_90+0x54>
80001e64: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001e68: 93 84 14 00  	addi	s1, s1, 1
80001e6c: 6f 00 c0 01  	j	0x80001e88 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001e70: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001e74: 63 9a 05 00  	bnez	a1, 0x80001e88 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001e78: 93 35 15 00  	seqz	a1, a0
80001e7c: 13 76 15 00  	andi	a2, a0, 1
80001e80: b3 65 b6 00  	or	a1, a2, a1
80001e84: 33 85 a5 00  	add	a0, a1, a0
80001e88: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001e8c: 63 0c 0c 0c  	beqz	s8, 0x80001f64 <.LBB4_90+0x130>
80001e90: 13 06 00 00  	mv	a2, zero
80001e94: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001e98: 33 83 85 00  	add	t1, a1, s0
80001e9c: 93 02 00 02  	addi	t0, zero, 32
80001ea0: 33 87 82 40  	sub	a4, t0, s0
80001ea4: b7 d5 cc cc  	lui	a1, 838861
80001ea8: 93 83 d5 cc  	addi	t2, a1, -819
80001eac: 13 08 a0 00  	addi	a6, zero, 10
80001eb0: 93 08 90 00  	addi	a7, zero, 9
80001eb4: 63 04 c7 0c  	beq	a4, a2, 0x80001f7c <.LBB4_90+0x148>
80001eb8: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001ebc: 33 35 75 02  	mulhu	a0, a0, t2
80001ec0: 13 55 35 00  	srli	a0, a0, 3
80001ec4: b3 06 05 03  	mul	a3, a0, a6
80001ec8: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001ecc: 93 e6 06 03  	ori	a3, a3, 48
80001ed0: b3 07 c3 00  	add	a5, t1, a2
80001ed4: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001ed8: 13 06 16 00  	addi	a2, a2, 1
80001edc: e3 ec b8 fc  	bltu	a7, a1, 0x80001eb4 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001ee0: 33 05 c4 00  	add	a0, s0, a2
80001ee4: 93 05 f5 ff  	addi	a1, a0, -1
80001ee8: 93 06 e0 01  	addi	a3, zero, 30
80001eec: b3 b6 b6 00  	sltu	a3, a3, a1
80001ef0: 33 47 cc 00  	xor	a4, s8, a2
80001ef4: 13 37 17 00  	seqz	a4, a4
80001ef8: b3 e6 e6 00  	or	a3, a3, a4
80001efc: 63 94 06 08  	bnez	a3, 0x80001f84 <.LBB4_90+0x150>
80001f00: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f04: 33 05 85 00  	add	a0, a0, s0
80001f08: 93 45 f6 ff  	not	a1, a2
80001f0c: 33 8c 85 01  	add	s8, a1, s8
80001f10: 33 04 c4 00  	add	s0, s0, a2
80001f14: 93 05 f0 01  	addi	a1, zero, 31
80001f18: b3 86 85 40  	sub	a3, a1, s0
80001f1c: 33 05 c5 00  	add	a0, a0, a2
80001f20: 93 05 0c 00  	mv	a1, s8
80001f24: 63 64 dc 00  	bltu	s8, a3, 0x80001f2c <.LBB4_90+0xf8>
80001f28: 93 85 06 00  	mv	a1, a3
80001f2c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001f30: 93 05 00 03  	addi	a1, zero, 48
80001f34: 97 e0 ff ff  	auipc	ra, 1048574
80001f38: e7 80 40 62  	jalr	1572(ra)
80001f3c: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f40: b3 05 a4 00  	add	a1, s0, a0
80001f44: 93 b5 f5 01  	sltiu	a1, a1, 31
80001f48: 33 46 ac 00  	xor	a2, s8, a0
80001f4c: 33 36 c0 00  	snez	a2, a2
80001f50: 33 f6 c5 00  	and	a2, a1, a2
80001f54: 13 05 15 00  	addi	a0, a0, 1
80001f58: e3 14 06 fe  	bnez	a2, 0x80001f40 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f5c: 33 05 a4 00  	add	a0, s0, a0
80001f60: 6f 00 80 02  	j	0x80001f88 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001f64: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001f68: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001f6c: 53 05 10 a2  	fle.d	a0, ft0, ft1
80001f70: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001f74: b3 84 a4 00  	add	s1, s1, a0
80001f78: 6f 00 c0 03  	j	0x80001fb4 <.LBB4_90+0x180>
80001f7c: 13 04 00 02  	addi	s0, zero, 32
80001f80: 6f 00 80 03  	j	0x80001fb8 <.LBB4_90+0x184>
80001f84: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f88: 63 8e 05 00  	beqz	a1, 0x80001fa4 <.LBB4_90+0x170>
;       buf[len++] = '.';
80001f8c: 13 04 15 00  	addi	s0, a0, 1
80001f90: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001f94: 33 85 a5 00  	add	a0, a1, a0
80001f98: 93 05 e0 02  	addi	a1, zero, 46
80001f9c: 23 00 b5 00  	sb	a1, 0(a0)
80001fa0: 6f 00 80 00  	j	0x80001fa8 <.LBB4_90+0x174>
80001fa4: 13 04 05 00  	mv	s0, a0
80001fa8: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001fac: 93 02 04 00  	mv	t0, s0
80001fb0: 63 64 85 00  	bltu	a0, s0, 0x80001fb8 <.LBB4_90+0x184>
80001fb4: 93 02 00 02  	addi	t0, zero, 32
80001fb8: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001fbc: 37 65 66 66  	lui	a0, 419430
80001fc0: 93 05 75 66  	addi	a1, a0, 1639
80001fc4: 13 08 a0 00  	addi	a6, zero, 10
80001fc8: 93 06 81 00  	addi	a3, sp, 8
80001fcc: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001fd0: 63 80 82 04  	beq	t0, s0, 0x80002010 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80001fd4: 33 95 b4 02  	mulh	a0, s1, a1
80001fd8: 93 57 f5 01  	srli	a5, a0, 31
80001fdc: 13 55 25 40  	srai	a0, a0, 2
80001fe0: 33 05 f5 00  	add	a0, a0, a5
80001fe4: b3 07 05 03  	mul	a5, a0, a6
80001fe8: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80001fec: 93 87 07 03  	addi	a5, a5, 48
80001ff0: 13 0c 14 00  	addi	s8, s0, 1
80001ff4: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80001ff8: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80001ffc: 23 00 f4 00  	sb	a5, 0(s0)
80002000: 13 04 0c 00  	mv	s0, s8
80002004: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80002008: e3 64 c7 fc  	bltu	a4, a2, 0x80001fd0 <.LBB4_90+0x19c>
8000200c: 6f 00 80 00  	j	0x80002014 <.LBB4_90+0x1e0>
80002010: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80002014: 93 f4 3a 00  	andi	s1, s5, 3
80002018: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
8000201c: 63 96 a4 06  	bne	s1, a0, 0x80002088 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002020: 63 0c 09 00  	beqz	s2, 0x80002038 <.LBB4_90+0x204>
80002024: 13 f5 ca 00  	andi	a0, s5, 12
80002028: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000202c: 33 e5 ac 00  	or	a0, s9, a0
80002030: 33 09 a9 40  	sub	s2, s2, a0
80002034: 6f 00 80 00  	j	0x8000203c <.LBB4_90+0x208>
80002038: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000203c: 33 35 2c 01  	sltu	a0, s8, s2
80002040: 93 45 15 00  	xori	a1, a0, 1
80002044: 13 05 f0 01  	addi	a0, zero, 31
80002048: 33 36 85 01  	sltu	a2, a0, s8
8000204c: b3 65 b6 00  	or	a1, a2, a1
80002050: 63 9c 05 02  	bnez	a1, 0x80002088 <.LBB4_90+0x254>
80002054: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002058: 93 45 fc ff  	not	a1, s8
8000205c: b3 05 b9 00  	add	a1, s2, a1
80002060: 33 06 85 41  	sub	a2, a0, s8
80002064: 33 85 86 01  	add	a0, a3, s8
80002068: 63 e4 c5 00  	bltu	a1, a2, 0x80002070 <.LBB4_90+0x23c>
8000206c: 93 05 06 00  	mv	a1, a2
80002070: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002074: 93 05 00 03  	addi	a1, zero, 48
80002078: 13 06 04 00  	mv	a2, s0
8000207c: 97 e0 ff ff  	auipc	ra, 1048574
80002080: e7 80 c0 4d  	jalr	1244(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002084: 33 0c 84 01  	add	s8, s0, s8
80002088: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
8000208c: 63 6a 85 05  	bltu	a0, s8, 0x800020e0 <.LBB4_90+0x2ac>
;     if (negative) {
80002090: 63 8c 0c 00  	beqz	s9, 0x800020a8 <.LBB4_90+0x274>
80002094: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002098: 33 05 85 01  	add	a0, a0, s8
8000209c: 13 0c 1c 00  	addi	s8, s8, 1
800020a0: 93 05 d0 02  	addi	a1, zero, 45
800020a4: 6f 00 80 03  	j	0x800020dc <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
800020a8: 13 f5 4a 00  	andi	a0, s5, 4
800020ac: 63 10 05 02  	bnez	a0, 0x800020cc <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
800020b0: 13 f5 8a 00  	andi	a0, s5, 8
800020b4: 63 06 05 02  	beqz	a0, 0x800020e0 <.LBB4_90+0x2ac>
800020b8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
800020bc: 33 05 85 01  	add	a0, a0, s8
800020c0: 13 0c 1c 00  	addi	s8, s8, 1
800020c4: 93 05 00 02  	addi	a1, zero, 32
800020c8: 6f 00 40 01  	j	0x800020dc <.LBB4_90+0x2a8>
800020cc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
800020d0: 33 05 85 01  	add	a0, a0, s8
800020d4: 13 0c 1c 00  	addi	s8, s8, 1
800020d8: 93 05 b0 02  	addi	a1, zero, 43
800020dc: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800020e0: 33 35 90 00  	snez	a0, s1
800020e4: b3 35 2c 01  	sltu	a1, s8, s2
800020e8: 93 c5 15 00  	xori	a1, a1, 1
800020ec: 33 65 b5 00  	or	a0, a0, a1
800020f0: 93 fa 2a 00  	andi	s5, s5, 2
800020f4: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800020f8: 63 16 05 02  	bnez	a0, 0x80002124 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
800020fc: b3 04 89 41  	sub	s1, s2, s8
80002100: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002104: 13 04 16 00  	addi	s0, a2, 1
80002108: 13 05 00 02  	addi	a0, zero, 32
8000210c: 93 05 0b 00  	mv	a1, s6
80002110: 93 86 09 00  	mv	a3, s3
80002114: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80002118: 93 84 f4 ff  	addi	s1, s1, -1
8000211c: 13 06 04 00  	mv	a2, s0
80002120: e3 92 04 fe  	bnez	s1, 0x80002104 <.LBB4_90+0x2d0>
80002124: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80002128: 63 0c 0c 02  	beqz	s8, 0x80002160 <.LBB4_90+0x32c>
8000212c: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80002130: 33 85 8c 01  	add	a0, s9, s8
80002134: 03 45 05 00  	lbu	a0, 0(a0)
80002138: 13 0d fc ff  	addi	s10, s8, -1
8000213c: 93 04 14 00  	addi	s1, s0, 1
80002140: 93 05 0b 00  	mv	a1, s6
80002144: 13 06 04 00  	mv	a2, s0
80002148: 93 86 09 00  	mv	a3, s3
8000214c: e7 80 0b 00  	jalr	s7
80002150: 13 84 04 00  	mv	s0, s1
80002154: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80002158: e3 1c 0d fc  	bnez	s10, 0x80002130 <.LBB4_90+0x2fc>
8000215c: 6f 00 80 00  	j	0x80002164 <.LBB4_90+0x330>
80002160: 93 04 04 00  	mv	s1, s0
80002164: 33 85 44 41  	sub	a0, s1, s4
80002168: 33 35 25 01  	sltu	a0, a0, s2
8000216c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002170: 93 c5 1a 00  	xori	a1, s5, 1
80002174: 33 e5 a5 00  	or	a0, a1, a0
80002178: 63 18 05 02  	bnez	a0, 0x800021a8 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000217c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002180: 13 84 14 00  	addi	s0, s1, 1
80002184: 13 05 00 02  	addi	a0, zero, 32
80002188: 93 05 0b 00  	mv	a1, s6
8000218c: 13 86 04 00  	mv	a2, s1
80002190: 93 86 09 00  	mv	a3, s3
80002194: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002198: 33 05 8a 00  	add	a0, s4, s0
8000219c: 93 04 04 00  	mv	s1, s0
800021a0: e3 60 25 ff  	bltu	a0, s2, 0x80002180 <.LBB4_90+0x34c>
800021a4: 6f 00 80 00  	j	0x800021ac <.LBB4_90+0x378>
800021a8: 13 84 04 00  	mv	s0, s1
; }
800021ac: 13 05 04 00  	mv	a0, s0
800021b0: 07 39 81 02  	fld	fs2, 40(sp)
800021b4: 87 34 01 03  	fld	fs1, 48(sp)
800021b8: 07 34 81 03  	fld	fs0, 56(sp)
800021bc: 03 2d 01 04  	lw	s10, 64(sp)
800021c0: 83 2c 41 04  	lw	s9, 68(sp)
800021c4: 03 2c 81 04  	lw	s8, 72(sp)
800021c8: 83 2b c1 04  	lw	s7, 76(sp)
800021cc: 03 2b 01 05  	lw	s6, 80(sp)
800021d0: 83 2a 41 05  	lw	s5, 84(sp)
800021d4: 03 2a 81 05  	lw	s4, 88(sp)
800021d8: 83 29 c1 05  	lw	s3, 92(sp)
800021dc: 03 29 01 06  	lw	s2, 96(sp)
800021e0: 83 24 41 06  	lw	s1, 100(sp)
800021e4: 03 24 81 06  	lw	s0, 104(sp)
800021e8: 83 20 c1 06  	lw	ra, 108(sp)
800021ec: 13 01 01 07  	addi	sp, sp, 112
800021f0: 67 80 00 00  	ret

800021f4 <_etoa>:
; {
800021f4: 13 01 01 f8  	addi	sp, sp, -128
800021f8: 23 2e 11 06  	sw	ra, 124(sp)
800021fc: 23 2c 81 06  	sw	s0, 120(sp)
80002200: 23 2a 91 06  	sw	s1, 116(sp)
80002204: 23 28 21 07  	sw	s2, 112(sp)
80002208: 23 26 31 07  	sw	s3, 108(sp)
8000220c: 23 24 41 07  	sw	s4, 104(sp)
80002210: 23 22 51 07  	sw	s5, 100(sp)
80002214: 23 20 61 07  	sw	s6, 96(sp)
80002218: 23 2e 71 05  	sw	s7, 92(sp)
8000221c: 23 2c 81 05  	sw	s8, 88(sp)
80002220: 23 2a 91 05  	sw	s9, 84(sp)
80002224: 23 28 a1 05  	sw	s10, 80(sp)
80002228: 23 26 b1 05  	sw	s11, 76(sp)

8000222c <.LBB5_43>:
8000222c: 97 14 00 00  	auipc	s1, 1
80002230: 93 84 44 15  	addi	s1, s1, 340
80002234: 87 b0 04 00  	fld	ft1, 0(s1)

80002238 <.LBB5_44>:
80002238: 97 14 00 00  	auipc	s1, 1
8000223c: 93 84 04 15  	addi	s1, s1, 336
80002240: 07 b1 04 00  	fld	ft2, 0(s1)
80002244: 53 00 a5 22  	fmv.d	ft0, fa0
80002248: d3 04 15 a2  	fle.d	s1, fa0, ft1
8000224c: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002250: b3 f4 84 00  	and	s1, s1, s0
80002254: 93 0a 08 00  	mv	s5, a6
80002258: 13 89 07 00  	mv	s2, a5
8000225c: 93 07 07 00  	mv	a5, a4
80002260: 93 89 06 00  	mv	s3, a3
80002264: 13 0a 06 00  	mv	s4, a2
80002268: 13 8b 05 00  	mv	s6, a1
8000226c: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80002270: 63 92 04 06  	bnez	s1, 0x800022d4 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002274: 13 85 0b 00  	mv	a0, s7
80002278: 93 05 0b 00  	mv	a1, s6
8000227c: 13 06 0a 00  	mv	a2, s4
80002280: 93 86 09 00  	mv	a3, s3
80002284: 53 05 00 22  	fmv.d	fa0, ft0
80002288: 13 87 07 00  	mv	a4, a5
8000228c: 93 07 09 00  	mv	a5, s2
80002290: 13 88 0a 00  	mv	a6, s5
80002294: 83 2d c1 04  	lw	s11, 76(sp)
80002298: 03 2d 01 05  	lw	s10, 80(sp)
8000229c: 83 2c 41 05  	lw	s9, 84(sp)
800022a0: 03 2c 81 05  	lw	s8, 88(sp)
800022a4: 83 2b c1 05  	lw	s7, 92(sp)
800022a8: 03 2b 01 06  	lw	s6, 96(sp)
800022ac: 83 2a 41 06  	lw	s5, 100(sp)
800022b0: 03 2a 81 06  	lw	s4, 104(sp)
800022b4: 83 29 c1 06  	lw	s3, 108(sp)
800022b8: 03 29 01 07  	lw	s2, 112(sp)
800022bc: 83 24 41 07  	lw	s1, 116(sp)
800022c0: 03 24 81 07  	lw	s0, 120(sp)
800022c4: 83 20 c1 07  	lw	ra, 124(sp)
800022c8: 13 01 01 08  	addi	sp, sp, 128
800022cc: 17 03 00 00  	auipc	t1, 0
800022d0: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
800022d4: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
800022d8: 13 f5 0a 40  	andi	a0, s5, 1024
800022dc: 13 07 60 00  	addi	a4, zero, 6
800022e0: 63 04 05 00  	beqz	a0, 0x800022e8 <.LBB5_44+0xb0>
800022e4: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
800022e8: 27 30 a1 02  	fsd	fa0, 32(sp)
800022ec: 83 25 41 02  	lw	a1, 36(sp)
800022f0: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800022f4: 93 d6 45 01  	srli	a3, a1, 20
800022f8: b7 07 10 00  	lui	a5, 256
800022fc: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80002300: b3 f5 f5 00  	and	a1, a1, a5
80002304: 23 2c c1 00  	sw	a2, 24(sp)
80002308: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000230c: b3 e5 c5 00  	or	a1, a1, a2
80002310: 23 2e b1 00  	sw	a1, 28(sp)
80002314: 87 30 81 01  	fld	ft1, 24(sp)

80002318 <.LBB5_45>:
80002318: 97 15 00 00  	auipc	a1, 1
8000231c: 93 85 85 07  	addi	a1, a1, 120
80002320: 07 b1 05 00  	fld	ft2, 0(a1)

80002324 <.LBB5_46>:
80002324: 97 15 00 00  	auipc	a1, 1
80002328: 93 85 45 07  	addi	a1, a1, 116
8000232c: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002330: 93 f5 f6 7f  	andi	a1, a3, 2047
80002334: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002338: 53 82 05 d2  	fcvt.d.w	ft4, a1
8000233c: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80002340 <.LBB5_47>:
80002340: 97 15 00 00  	auipc	a1, 1
80002344: 93 85 05 06  	addi	a1, a1, 96
80002348: 07 b1 05 00  	fld	ft2, 0(a1)

8000234c <.LBB5_48>:
8000234c: 97 15 00 00  	auipc	a1, 1
80002350: 93 85 c5 05  	addi	a1, a1, 92
80002354: 87 b1 05 00  	fld	ft3, 0(a1)

80002358 <.LBB5_49>:
80002358: 97 15 00 00  	auipc	a1, 1
8000235c: 93 85 85 05  	addi	a1, a1, 88
80002360: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002364: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002368: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
8000236c: d3 80 05 d2  	fcvt.d.w	ft1, a1
80002370: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002374 <.LBB5_50>:
80002374: 17 16 00 00  	auipc	a2, 1
80002378: 13 06 46 04  	addi	a2, a2, 68
8000237c: 87 31 06 00  	fld	ft3, 0(a2)

80002380 <.LBB5_51>:
80002380: 17 16 00 00  	auipc	a2, 1
80002384: 13 06 06 04  	addi	a2, a2, 64
80002388: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
8000238c: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80002390: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002394: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002398: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
8000239c: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800023a0: 13 06 f6 3f  	addi	a2, a2, 1023
800023a4: 23 28 01 00  	sw	zero, 16(sp)
800023a8: 13 16 46 01  	slli	a2, a2, 20
800023ac: 23 2a c1 00  	sw	a2, 20(sp)

800023b0 <.LBB5_52>:
800023b0: 17 16 00 00  	auipc	a2, 1
800023b4: 13 06 06 02  	addi	a2, a2, 32
800023b8: 87 31 06 00  	fld	ft3, 0(a2)

800023bc <.LBB5_53>:
800023bc: 17 16 00 00  	auipc	a2, 1
800023c0: 13 06 c6 01  	addi	a2, a2, 28
800023c4: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800023c8: 87 32 01 01  	fld	ft5, 16(sp)

800023cc <.LBB5_54>:
800023cc: 17 16 00 00  	auipc	a2, 1
800023d0: 13 06 c6 ff  	addi	a2, a2, -4
800023d4: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800023d8: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

800023dc <.LBB5_55>:
800023dc: 17 16 00 00  	auipc	a2, 1
800023e0: 13 06 46 00  	addi	a2, a2, 4
800023e4: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
800023e8: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
800023ec: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
800023f0: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
800023f4: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
800023f8: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
800023fc: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80002400: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80002404: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80002408: 53 16 15 a2  	flt.d	a2, fa0, ft1
8000240c: 63 0a 06 00  	beqz	a2, 0x80002420 <.LBB5_56+0x10>

80002410 <.LBB5_56>:
80002410: 97 16 00 00  	auipc	a3, 1
80002414: 93 86 86 fd  	addi	a3, a3, -40
80002418: 07 b1 06 00  	fld	ft2, 0(a3)
8000241c: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80002420: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80002424: 93 05 34 06  	addi	a1, s0, 99
80002428: 93 b5 75 0c  	sltiu	a1, a1, 199
8000242c: 13 06 50 00  	addi	a2, zero, 5
80002430: b7 16 00 00  	lui	a3, 1
80002434: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80002438: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000243c: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80002440: 63 84 06 06  	beqz	a3, 0x800024a8 <.LBB5_58+0x58>

80002444 <.LBB5_57>:
80002444: 97 15 00 00  	auipc	a1, 1
80002448: 93 85 c5 fa  	addi	a1, a1, -84
8000244c: 07 b1 05 00  	fld	ft2, 0(a1)

80002450 <.LBB5_58>:
80002450: 97 15 00 00  	auipc	a1, 1
80002454: 93 85 85 fa  	addi	a1, a1, -88
80002458: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
8000245c: d3 15 25 a2  	flt.d	a1, fa0, ft2
80002460: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002464: b3 e5 c5 00  	or	a1, a1, a2
80002468: 63 98 05 00  	bnez	a1, 0x80002478 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
8000246c: 63 40 e4 02  	blt	s0, a4, 0x8000248c <.LBB5_58+0x3c>
80002470: 13 07 00 00  	mv	a4, zero
80002474: 6f 00 00 02  	j	0x80002494 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002478: 63 06 07 02  	beqz	a4, 0x800024a4 <.LBB5_58+0x54>
8000247c: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002480: 13 45 15 00  	xori	a0, a0, 1
80002484: 33 07 a7 40  	sub	a4, a4, a0
80002488: 6f 00 00 02  	j	0x800024a8 <.LBB5_58+0x58>
8000248c: 13 45 f4 ff  	not	a0, s0
80002490: 33 07 a7 00  	add	a4, a4, a0
80002494: 13 04 00 00  	mv	s0, zero
80002498: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
8000249c: 93 ea 0a 40  	ori	s5, s5, 1024
800024a0: 6f 00 80 00  	j	0x800024a8 <.LBB5_58+0x58>
800024a4: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800024a8: b3 05 99 41  	sub	a1, s2, s9
800024ac: 33 36 b9 00  	sltu	a2, s2, a1
800024b0: 13 05 00 00  	mv	a0, zero
800024b4: 63 14 06 00  	bnez	a2, 0x800024bc <.LBB5_58+0x6c>
800024b8: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
800024bc: 93 07 00 00  	mv	a5, zero
800024c0: 93 d5 1a 00  	srli	a1, s5, 1
800024c4: 93 f4 15 00  	andi	s1, a1, 1
800024c8: b3 35 90 01  	snez	a1, s9
800024cc: b3 f5 b4 00  	and	a1, s1, a1
800024d0: 53 01 00 d2  	fcvt.d.w	ft2, zero
800024d4: 63 94 05 00  	bnez	a1, 0x800024dc <.LBB5_58+0x8c>
800024d8: 93 07 05 00  	mv	a5, a0
;   if (expval) {
800024dc: 93 35 14 00  	seqz	a1, s0
800024e0: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
800024e4: 63 94 05 00  	bnez	a1, 0x800024ec <.LBB5_58+0x9c>
800024e8: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800024ec: 63 04 05 00  	beqz	a0, 0x800024f4 <.LBB5_58+0xa4>
800024f0: 53 15 a5 22  	fneg.d	fa0, fa0
800024f4: 37 f5 ff ff  	lui	a0, 1048575
800024f8: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
800024fc: 33 f8 aa 00  	and	a6, s5, a0
80002500: 13 85 0b 00  	mv	a0, s7
80002504: 93 05 0b 00  	mv	a1, s6
80002508: 13 06 0a 00  	mv	a2, s4
8000250c: 93 86 09 00  	mv	a3, s3
80002510: 97 f0 ff ff  	auipc	ra, 1048575
80002514: e7 80 40 60  	jalr	1540(ra)
80002518: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
8000251c: 63 82 0c 18  	beqz	s9, 0x800026a0 <.LBB5_58+0x250>
80002520: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80002524: 13 f5 0a 02  	andi	a0, s5, 32
80002528: 13 45 55 06  	xori	a0, a0, 101
8000252c: 93 05 0b 00  	mv	a1, s6
80002530: 13 06 0d 00  	mv	a2, s10
80002534: 93 86 09 00  	mv	a3, s3
80002538: e7 80 0b 00  	jalr	s7
8000253c: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80002540: 93 5a f4 01  	srli	s5, s0, 31
80002544: 13 55 f4 41  	srai	a0, s0, 31
80002548: b3 05 a4 00  	add	a1, s0, a0
8000254c: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80002550: 93 8d dc ff  	addi	s11, s9, -3
80002554: 13 04 f0 01  	addi	s0, zero, 31
80002558: 37 d5 cc cc  	lui	a0, 838861
8000255c: 13 05 d5 cc  	addi	a0, a0, -819
80002560: 13 08 a0 00  	addi	a6, zero, 10
80002564: 93 08 c1 02  	addi	a7, sp, 44
80002568: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
8000256c: b3 37 a7 02  	mulhu	a5, a4, a0
80002570: 93 d5 37 00  	srli	a1, a5, 3
80002574: b3 87 05 03  	mul	a5, a1, a6
80002578: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000257c: 13 e6 07 03  	ori	a2, a5, 48
80002580: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002584: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002588: 13 0c 1c 00  	addi	s8, s8, 1
8000258c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002590: 33 b6 e2 00  	sltu	a2, t0, a4
80002594: 33 f6 c7 00  	and	a2, a5, a2
80002598: 93 8d fd ff  	addi	s11, s11, -1
8000259c: 13 04 f4 ff  	addi	s0, s0, -1
800025a0: 13 87 05 00  	mv	a4, a1
800025a4: e3 14 06 fc  	bnez	a2, 0x8000256c <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800025a8: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800025ac: 33 35 ac 00  	sltu	a0, s8, a0
800025b0: 13 45 15 00  	xori	a0, a0, 1
800025b4: 93 c5 17 00  	xori	a1, a5, 1
800025b8: 33 e5 a5 00  	or	a0, a1, a0
800025bc: 63 12 05 04  	bnez	a0, 0x80002600 <.LBB5_58+0x1b0>
800025c0: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800025c4: b3 85 8c 41  	sub	a1, s9, s8
800025c8: 93 85 d5 ff  	addi	a1, a1, -3
800025cc: 13 06 f0 01  	addi	a2, zero, 31
800025d0: 33 06 86 41  	sub	a2, a2, s8
800025d4: 33 05 85 01  	add	a0, a0, s8
800025d8: 63 e4 c5 00  	bltu	a1, a2, 0x800025e0 <.LBB5_58+0x190>
800025dc: 93 05 06 00  	mv	a1, a2
800025e0: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800025e4: 93 05 00 03  	addi	a1, zero, 48
800025e8: 97 e0 ff ff  	auipc	ra, 1048574
800025ec: e7 80 00 f7  	jalr	-144(ra)
;   if (flags & FLAGS_HASH) {
800025f0: 63 e4 8d 00  	bltu	s11, s0, 0x800025f8 <.LBB5_58+0x1a8>
800025f4: 93 0d 04 00  	mv	s11, s0
800025f8: 33 85 8d 01  	add	a0, s11, s8
800025fc: 13 0c 15 00  	addi	s8, a0, 1
80002600: 83 2c c1 00  	lw	s9, 12(sp)
80002604: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002608: 63 60 85 03  	bltu	a0, s8, 0x80002628 <.LBB5_58+0x1d8>
8000260c: 13 05 c1 02  	addi	a0, sp, 44
80002610: 33 05 85 01  	add	a0, a0, s8
80002614: 93 05 d0 02  	addi	a1, zero, 45
80002618: 63 94 0a 00  	bnez	s5, 0x80002620 <.LBB5_58+0x1d0>
8000261c: 93 05 b0 02  	addi	a1, zero, 43
80002620: 13 0c 1c 00  	addi	s8, s8, 1
80002624: 23 00 b5 00  	sb	a1, 0(a0)
80002628: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
8000262c: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80002630: 33 85 8a 01  	add	a0, s5, s8
80002634: 03 45 05 00  	lbu	a0, 0(a0)
80002638: 13 06 04 00  	mv	a2, s0
8000263c: 93 04 fc ff  	addi	s1, s8, -1
80002640: 13 04 14 00  	addi	s0, s0, 1
80002644: 93 05 0b 00  	mv	a1, s6
80002648: 93 86 09 00  	mv	a3, s3
8000264c: e7 80 0b 00  	jalr	s7
80002650: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80002654: e3 9e 04 fc  	bnez	s1, 0x80002630 <.LBB5_58+0x1e0>
80002658: 33 05 44 41  	sub	a0, s0, s4
8000265c: 33 35 25 01  	sltu	a0, a0, s2
80002660: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002664: 93 c5 1c 00  	xori	a1, s9, 1
80002668: 33 e5 a5 00  	or	a0, a1, a0
8000266c: 63 18 05 02  	bnez	a0, 0x8000269c <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80002670: b3 04 40 41  	neg	s1, s4
80002674: 13 0d 14 00  	addi	s10, s0, 1
80002678: 13 05 00 02  	addi	a0, zero, 32
8000267c: 93 05 0b 00  	mv	a1, s6
80002680: 13 06 04 00  	mv	a2, s0
80002684: 93 86 09 00  	mv	a3, s3
80002688: e7 80 0b 00  	jalr	s7
8000268c: 33 85 a4 01  	add	a0, s1, s10
80002690: 13 04 0d 00  	mv	s0, s10
80002694: e3 60 25 ff  	bltu	a0, s2, 0x80002674 <.LBB5_58+0x224>
80002698: 6f 00 80 00  	j	0x800026a0 <.LBB5_58+0x250>
8000269c: 13 0d 04 00  	mv	s10, s0
; }
800026a0: 13 05 0d 00  	mv	a0, s10
800026a4: 83 2d c1 04  	lw	s11, 76(sp)
800026a8: 03 2d 01 05  	lw	s10, 80(sp)
800026ac: 83 2c 41 05  	lw	s9, 84(sp)
800026b0: 03 2c 81 05  	lw	s8, 88(sp)
800026b4: 83 2b c1 05  	lw	s7, 92(sp)
800026b8: 03 2b 01 06  	lw	s6, 96(sp)
800026bc: 83 2a 41 06  	lw	s5, 100(sp)
800026c0: 03 2a 81 06  	lw	s4, 104(sp)
800026c4: 83 29 c1 06  	lw	s3, 108(sp)
800026c8: 03 29 01 07  	lw	s2, 112(sp)
800026cc: 83 24 41 07  	lw	s1, 116(sp)
800026d0: 03 24 81 07  	lw	s0, 120(sp)
800026d4: 83 20 c1 07  	lw	ra, 124(sp)
800026d8: 13 01 01 08  	addi	sp, sp, 128
800026dc: 67 80 00 00  	ret

800026e0 <_ntoa_format>:
; {
800026e0: 13 01 01 fc  	addi	sp, sp, -64
800026e4: 23 2e 11 02  	sw	ra, 60(sp)
800026e8: 23 2c 81 02  	sw	s0, 56(sp)
800026ec: 23 2a 91 02  	sw	s1, 52(sp)
800026f0: 23 28 21 03  	sw	s2, 48(sp)
800026f4: 23 26 31 03  	sw	s3, 44(sp)
800026f8: 23 24 41 03  	sw	s4, 40(sp)
800026fc: 23 22 51 03  	sw	s5, 36(sp)
80002700: 23 20 61 03  	sw	s6, 32(sp)
80002704: 23 2e 71 01  	sw	s7, 28(sp)
80002708: 23 2c 81 01  	sw	s8, 24(sp)
8000270c: 23 2a 91 01  	sw	s9, 20(sp)
80002710: 23 28 a1 01  	sw	s10, 16(sp)
80002714: 23 26 b1 01  	sw	s11, 12(sp)
80002718: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
8000271c: 93 fa 2e 00  	andi	s5, t4, 2
80002720: 13 09 0e 00  	mv	s2, t3
80002724: 13 8d 03 00  	mv	s10, t2
80002728: 93 8c 08 00  	mv	s9, a7
8000272c: 13 8c 07 00  	mv	s8, a5
80002730: 93 89 06 00  	mv	s3, a3
80002734: 13 0a 06 00  	mv	s4, a2
80002738: 13 8b 05 00  	mv	s6, a1
8000273c: 93 0d 05 00  	mv	s11, a0
80002740: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80002744: 63 9e 0a 0c  	bnez	s5, 0x80002820 <_ntoa_format+0x140>
80002748: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000274c: 63 0e 09 00  	beqz	s2, 0x80002768 <_ntoa_format+0x88>
80002750: 63 0e 04 00  	beqz	s0, 0x8000276c <_ntoa_format+0x8c>
80002754: 13 f5 cb 00  	andi	a0, s7, 12
80002758: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
8000275c: 33 65 05 01  	or	a0, a0, a6
80002760: 33 09 a9 40  	sub	s2, s2, a0
80002764: 6f 00 80 00  	j	0x8000276c <_ntoa_format+0x8c>
80002768: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000276c: 33 35 ac 01  	sltu	a0, s8, s10
80002770: 93 45 15 00  	xori	a1, a0, 1
80002774: 13 05 f0 01  	addi	a0, zero, 31
80002778: 33 36 85 01  	sltu	a2, a0, s8
8000277c: b3 65 b6 00  	or	a1, a2, a1
80002780: 63 94 05 04  	bnez	a1, 0x800027c8 <_ntoa_format+0xe8>
80002784: 23 22 51 01  	sw	s5, 4(sp)
80002788: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000278c: 93 45 fc ff  	not	a1, s8
80002790: b3 85 a5 01  	add	a1, a1, s10
80002794: 33 06 85 41  	sub	a2, a0, s8
80002798: 33 05 87 01  	add	a0, a4, s8
8000279c: 63 e4 c5 00  	bltu	a1, a2, 0x800027a4 <_ntoa_format+0xc4>
800027a0: 93 05 06 00  	mv	a1, a2
800027a4: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800027a8: 93 05 00 03  	addi	a1, zero, 48
800027ac: 13 86 04 00  	mv	a2, s1
800027b0: 97 e0 ff ff  	auipc	ra, 1048574
800027b4: e7 80 80 da  	jalr	-600(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027b8: 33 8c 84 01  	add	s8, s1, s8
800027bc: 03 27 81 00  	lw	a4, 8(sp)
800027c0: 13 88 0a 00  	mv	a6, s5
800027c4: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027c8: 63 0c 04 04  	beqz	s0, 0x80002820 <_ntoa_format+0x140>
800027cc: 33 35 2c 01  	sltu	a0, s8, s2
800027d0: 93 45 15 00  	xori	a1, a0, 1
800027d4: 13 05 f0 01  	addi	a0, zero, 31
800027d8: 33 36 85 01  	sltu	a2, a0, s8
800027dc: b3 e5 c5 00  	or	a1, a1, a2
800027e0: 63 90 05 04  	bnez	a1, 0x80002820 <_ntoa_format+0x140>
800027e4: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800027e8: 93 45 fc ff  	not	a1, s8
800027ec: b3 05 b9 00  	add	a1, s2, a1
800027f0: 33 06 85 41  	sub	a2, a0, s8
800027f4: 33 05 87 01  	add	a0, a4, s8
800027f8: 63 e4 c5 00  	bltu	a1, a2, 0x80002800 <_ntoa_format+0x120>
800027fc: 93 05 06 00  	mv	a1, a2
80002800: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002804: 93 05 00 03  	addi	a1, zero, 48
80002808: 13 86 04 00  	mv	a2, s1
8000280c: 97 e0 ff ff  	auipc	ra, 1048574
80002810: e7 80 c0 d4  	jalr	-692(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002814: 33 8c 84 01  	add	s8, s1, s8
80002818: 03 27 81 00  	lw	a4, 8(sp)
8000281c: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80002820: 13 f5 0b 01  	andi	a0, s7, 16
80002824: 63 02 05 0e  	beqz	a0, 0x80002908 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80002828: 13 f5 0b 40  	andi	a0, s7, 1024
8000282c: 13 55 a5 00  	srli	a0, a0, 10
80002830: 93 35 1c 00  	seqz	a1, s8
80002834: 33 65 b5 00  	or	a0, a0, a1
80002838: 63 1e 05 02  	bnez	a0, 0x80002874 <_ntoa_format+0x194>
8000283c: 33 45 ac 01  	xor	a0, s8, s10
80002840: 33 35 a0 00  	snez	a0, a0
80002844: b3 45 2c 01  	xor	a1, s8, s2
80002848: b3 35 b0 00  	snez	a1, a1
8000284c: 33 75 b5 00  	and	a0, a0, a1
80002850: 63 12 05 02  	bnez	a0, 0x80002874 <_ntoa_format+0x194>
;       len--;
80002854: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002858: b3 35 a0 00  	snez	a1, a0
8000285c: 13 86 0c ff  	addi	a2, s9, -16
80002860: 13 36 16 00  	seqz	a2, a2
80002864: b3 75 b6 00  	and	a1, a2, a1
80002868: 63 84 05 00  	beqz	a1, 0x80002870 <_ntoa_format+0x190>
8000286c: 13 05 ec ff  	addi	a0, s8, -2
80002870: 13 0c 05 00  	mv	s8, a0
80002874: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002878: 63 96 ac 02  	bne	s9, a0, 0x800028a4 <_ntoa_format+0x1c4>
8000287c: 13 f5 0b 02  	andi	a0, s7, 32
80002880: 93 55 55 00  	srli	a1, a0, 5
80002884: 13 06 f0 01  	addi	a2, zero, 31
80002888: 33 36 86 01  	sltu	a2, a2, s8
8000288c: b3 e5 c5 00  	or	a1, a1, a2
80002890: 63 9e 05 02  	bnez	a1, 0x800028cc <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002894: 33 05 87 01  	add	a0, a4, s8
80002898: 13 0c 1c 00  	addi	s8, s8, 1
8000289c: 93 05 80 07  	addi	a1, zero, 120
800028a0: 6f 00 c0 04  	j	0x800028ec <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800028a4: 13 85 ec ff  	addi	a0, s9, -2
800028a8: 33 35 a0 00  	snez	a0, a0
800028ac: 93 05 f0 01  	addi	a1, zero, 31
800028b0: b3 b5 85 01  	sltu	a1, a1, s8
800028b4: 33 65 b5 00  	or	a0, a0, a1
800028b8: 63 1c 05 02  	bnez	a0, 0x800028f0 <_ntoa_format+0x210>
;       buf[len++] = 'b';
800028bc: 33 05 87 01  	add	a0, a4, s8
800028c0: 13 0c 1c 00  	addi	s8, s8, 1
800028c4: 93 05 20 06  	addi	a1, zero, 98
800028c8: 6f 00 40 02  	j	0x800028ec <_ntoa_format+0x20c>
800028cc: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800028d0: 13 35 15 00  	seqz	a0, a0
800028d4: 93 c5 15 00  	xori	a1, a1, 1
800028d8: 33 65 b5 00  	or	a0, a0, a1
800028dc: 63 1a 05 00  	bnez	a0, 0x800028f0 <_ntoa_format+0x210>
;       buf[len++] = 'X';
800028e0: 33 05 87 01  	add	a0, a4, s8
800028e4: 13 0c 1c 00  	addi	s8, s8, 1
800028e8: 93 05 80 05  	addi	a1, zero, 88
800028ec: 23 00 b5 00  	sb	a1, 0(a0)
800028f0: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800028f4: 63 60 85 07  	bltu	a0, s8, 0x80002954 <_ntoa_format+0x274>
;       buf[len++] = '0';
800028f8: 33 05 87 01  	add	a0, a4, s8
800028fc: 13 0c 1c 00  	addi	s8, s8, 1
80002900: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80002904: 23 00 b5 00  	sb	a1, 0(a0)
80002908: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000290c: 63 64 85 05  	bltu	a0, s8, 0x80002954 <_ntoa_format+0x274>
;     if (negative) {
80002910: 63 0a 08 00  	beqz	a6, 0x80002924 <_ntoa_format+0x244>
;       buf[len++] = '-';
80002914: 33 05 87 01  	add	a0, a4, s8
80002918: 13 0c 1c 00  	addi	s8, s8, 1
8000291c: 93 05 d0 02  	addi	a1, zero, 45
80002920: 6f 00 00 03  	j	0x80002950 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80002924: 13 f5 4b 00  	andi	a0, s7, 4
80002928: 63 1e 05 00  	bnez	a0, 0x80002944 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
8000292c: 13 f5 8b 00  	andi	a0, s7, 8
80002930: 63 02 05 02  	beqz	a0, 0x80002954 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80002934: 33 05 87 01  	add	a0, a4, s8
80002938: 13 0c 1c 00  	addi	s8, s8, 1
8000293c: 93 05 00 02  	addi	a1, zero, 32
80002940: 6f 00 00 01  	j	0x80002950 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002944: 33 05 87 01  	add	a0, a4, s8
80002948: 13 0c 1c 00  	addi	s8, s8, 1
8000294c: 93 05 b0 02  	addi	a1, zero, 43
80002950: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002954: 13 f5 3b 00  	andi	a0, s7, 3
80002958: 33 35 a0 00  	snez	a0, a0
8000295c: b3 35 2c 01  	sltu	a1, s8, s2
80002960: 93 c5 15 00  	xori	a1, a1, 1
80002964: 33 65 b5 00  	or	a0, a0, a1
80002968: 13 04 0a 00  	mv	s0, s4
8000296c: 63 16 05 02  	bnez	a0, 0x80002998 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002970: b3 04 89 41  	sub	s1, s2, s8
80002974: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002978: 13 04 16 00  	addi	s0, a2, 1
8000297c: 13 05 00 02  	addi	a0, zero, 32
80002980: 93 05 0b 00  	mv	a1, s6
80002984: 93 86 09 00  	mv	a3, s3
80002988: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
8000298c: 93 84 f4 ff  	addi	s1, s1, -1
80002990: 13 06 04 00  	mv	a2, s0
80002994: e3 92 04 fe  	bnez	s1, 0x80002978 <_ntoa_format+0x298>
80002998: b3 3a 50 01  	snez	s5, s5
;   while (len) {
8000299c: 63 0e 0c 02  	beqz	s8, 0x800029d8 <_ntoa_format+0x2f8>
800029a0: 03 25 81 00  	lw	a0, 8(sp)
800029a4: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800029a8: 33 85 8b 01  	add	a0, s7, s8
800029ac: 03 45 05 00  	lbu	a0, 0(a0)
800029b0: 93 0c fc ff  	addi	s9, s8, -1
800029b4: 93 04 14 00  	addi	s1, s0, 1
800029b8: 93 05 0b 00  	mv	a1, s6
800029bc: 13 06 04 00  	mv	a2, s0
800029c0: 93 86 09 00  	mv	a3, s3
800029c4: e7 80 0d 00  	jalr	s11
800029c8: 13 84 04 00  	mv	s0, s1
800029cc: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800029d0: e3 9c 0c fc  	bnez	s9, 0x800029a8 <_ntoa_format+0x2c8>
800029d4: 6f 00 80 00  	j	0x800029dc <_ntoa_format+0x2fc>
800029d8: 93 04 04 00  	mv	s1, s0
800029dc: 33 85 44 41  	sub	a0, s1, s4
800029e0: 33 35 25 01  	sltu	a0, a0, s2
800029e4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800029e8: 93 c5 1a 00  	xori	a1, s5, 1
800029ec: 33 e5 a5 00  	or	a0, a1, a0
800029f0: 63 18 05 02  	bnez	a0, 0x80002a20 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
800029f4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800029f8: 13 84 14 00  	addi	s0, s1, 1
800029fc: 13 05 00 02  	addi	a0, zero, 32
80002a00: 93 05 0b 00  	mv	a1, s6
80002a04: 13 86 04 00  	mv	a2, s1
80002a08: 93 86 09 00  	mv	a3, s3
80002a0c: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002a10: 33 05 8a 00  	add	a0, s4, s0
80002a14: 93 04 04 00  	mv	s1, s0
80002a18: e3 60 25 ff  	bltu	a0, s2, 0x800029f8 <_ntoa_format+0x318>
80002a1c: 6f 00 80 00  	j	0x80002a24 <_ntoa_format+0x344>
80002a20: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002a24: 13 05 04 00  	mv	a0, s0
80002a28: 83 2d c1 00  	lw	s11, 12(sp)
80002a2c: 03 2d 01 01  	lw	s10, 16(sp)
80002a30: 83 2c 41 01  	lw	s9, 20(sp)
80002a34: 03 2c 81 01  	lw	s8, 24(sp)
80002a38: 83 2b c1 01  	lw	s7, 28(sp)
80002a3c: 03 2b 01 02  	lw	s6, 32(sp)
80002a40: 83 2a 41 02  	lw	s5, 36(sp)
80002a44: 03 2a 81 02  	lw	s4, 40(sp)
80002a48: 83 29 c1 02  	lw	s3, 44(sp)
80002a4c: 03 29 01 03  	lw	s2, 48(sp)
80002a50: 83 24 41 03  	lw	s1, 52(sp)
80002a54: 03 24 81 03  	lw	s0, 56(sp)
80002a58: 83 20 c1 03  	lw	ra, 60(sp)
80002a5c: 13 01 01 04  	addi	sp, sp, 64
80002a60: 67 80 00 00  	ret

80002a64 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002a64: 37 05 00 00  	lui	a0, 0
80002a68: 33 05 45 00  	add	a0, a0, tp
80002a6c: 03 25 05 00  	lw	a0, 0(a0)
80002a70: 03 25 05 00  	lw	a0, 0(a0)
80002a74: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002a78: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002a7c: 33 85 a5 40  	sub	a0, a1, a0
80002a80: 67 80 00 00  	ret

80002a84 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002a84: 37 05 00 00  	lui	a0, 0
80002a88: 33 05 45 00  	add	a0, a0, tp
80002a8c: 03 25 05 00  	lw	a0, 0(a0)
80002a90: 03 25 05 00  	lw	a0, 0(a0)
80002a94: 03 25 05 07  	lw	a0, 112(a0)
80002a98: 67 80 00 00  	ret

80002a9c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002a9c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002aa0: 63 44 05 00  	bltz	a0, 0x80002aa8 <__snrt_isr+0xc>
;         while (1)
80002aa4: 6f 00 00 00  	j	0x80002aa4 <__snrt_isr+0x8>
80002aa8: b7 05 00 80  	lui	a1, 524288
80002aac: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002ab0: 33 75 b5 00  	and	a0, a0, a1
80002ab4: 13 05 d5 ff  	addi	a0, a0, -3
80002ab8: 93 55 25 00  	srli	a1, a0, 2
80002abc: 13 15 e5 01  	slli	a0, a0, 30
80002ac0: 33 65 b5 00  	or	a0, a0, a1
80002ac4: 93 05 40 00  	addi	a1, zero, 4
80002ac8: 63 0a b5 06  	beq	a0, a1, 0x80002b3c <.LBB1_7+0x58>
80002acc: 63 1a 05 08  	bnez	a0, 0x80002b60 <.LBB1_7+0x7c>
80002ad0: 37 05 00 00  	lui	a0, 0
80002ad4: 33 05 45 00  	add	a0, a0, tp
80002ad8: 03 25 05 00  	lw	a0, 0(a0)
80002adc: 03 25 05 00  	lw	a0, 0(a0)
80002ae0: f3 25 40 f1  	csrr	a1, mhartid

80002ae4 <.LBB1_7>:
;     asm volatile(
80002ae4: 17 16 00 00  	auipc	a2, 1
80002ae8: 13 06 c6 91  	addi	a2, a2, -1764
80002aec: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002af0: 93 06 06 00  	mv	a3, a2
80002af4: 93 02 10 00  	addi	t0, zero, 1
80002af8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002afc: e3 9e 02 fe  	bnez	t0, 0x80002af8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002b00: b7 06 00 00  	lui	a3, 0
80002b04: b3 86 46 00  	add	a3, a3, tp
80002b08: 83 a6 86 00  	lw	a3, 8(a3)
80002b0c: 33 85 a5 40  	sub	a0, a1, a0
80002b10: 93 55 35 00  	srli	a1, a0, 3
80002b14: 93 f5 c5 ff  	andi	a1, a1, -4
80002b18: b3 85 b6 00  	add	a1, a3, a1
80002b1c: 83 a6 05 00  	lw	a3, 0(a1)
80002b20: 13 07 10 00  	addi	a4, zero, 1
80002b24: 33 15 a7 00  	sll	a0, a4, a0
80002b28: 13 45 f5 ff  	not	a0, a0
80002b2c: 33 f5 a6 00  	and	a0, a3, a0
80002b30: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002b34: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002b38: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002b3c: 37 05 00 00  	lui	a0, 0
80002b40: 33 05 45 00  	add	a0, a0, tp
80002b44: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002b48: b7 05 00 00  	lui	a1, 0
80002b4c: b3 85 45 00  	add	a1, a1, tp
80002b50: 83 a5 c5 00  	lw	a1, 12(a1)
80002b54: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002b58: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002b5c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002b60: 67 80 00 00  	ret

Disassembly of section .init:

80002b70 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002b70: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002b74: 93 81 81 fd  	addi	gp, gp, -40

80002b78 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002b78: 97 00 00 00  	auipc	ra, 0
80002b7c: e7 80 40 3c  	jalr	964(ra)

80002b80 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002b80: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002b84: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002b88: 97 00 00 00  	auipc	ra, 0
80002b8c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002b90: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002b94: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002b98: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002b9c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002ba0: 63 92 02 02  	bnez	t0, 0x80002bc4 <snrt.crt0.init_registers>

80002ba4 <.Lpcrel_hi0>:
;     la        t0, _edata
80002ba4: 97 12 00 00  	auipc	t0, 1
80002ba8: 93 82 c2 85  	addi	t0, t0, -1956

80002bac <.Lpcrel_hi1>:
;     la        t1, _end
80002bac: 17 13 00 00  	auipc	t1, 1
80002bb0: 13 03 83 85  	addi	t1, t1, -1960
;     bge       t0, t1, 2f
80002bb4: 63 d8 62 00  	bge	t0, t1, 0x80002bc4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002bb8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002bbc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002bc0: e3 cc 62 fe  	blt	t0, t1, 0x80002bb8 <.Lpcrel_hi1+0xc>

80002bc4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002bc4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002bc8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002bcc: 63 82 02 08  	beqz	t0, 0x80002c50 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002bd0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002bd4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002bd8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002bdc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002be0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002be4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002be8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002bec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002bf0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002bf4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002bf8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002bfc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002c00: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002c04: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002c08: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002c0c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002c10: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002c14: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002c18: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002c1c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002c20: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002c24: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002c28: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002c2c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002c30: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002c34: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002c38: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002c3c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002c40: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002c44: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002c48: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002c4c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002c50 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002c50: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002c54: 23 a0 06 00  	sw	zero, 0(a3)

80002c58 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002c58: 97 02 00 00  	auipc	t0, 0
80002c5c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80002c60: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002c64: 93 87 06 00  	mv	a5, a3

80002c68 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002c68: 97 03 00 00  	auipc	t2, 0
80002c6c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80002c70: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002c74: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002c78: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002c7c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002c80: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002c84: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002c88: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002c8c: b3 86 66 40  	sub	a3, a3, t1

80002c90 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002c90: 97 02 00 00  	auipc	t0, 0
80002c94: 93 82 82 6b  	addi	t0, t0, 1720

80002c98 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002c98: 17 03 00 00  	auipc	t1, 0
80002c9c: 13 03 03 6b  	addi	t1, t1, 1712

80002ca0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002ca0: 97 03 00 00  	auipc	t2, 0
80002ca4: 93 83 83 6a  	addi	t2, t2, 1704

80002ca8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002ca8: 17 0e 00 00  	auipc	t3, 0
80002cac: 13 0e 0e 6b  	addi	t3, t3, 1712
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002cb0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002cb4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002cb8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002cbc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002cc0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002cc4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002cc8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002ccc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002cd0: 63 dc 62 00  	bge	t0, t1, 0x80002ce8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002cd4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002cd8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002cdc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002ce0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002ce4: e3 c8 62 fe  	blt	t0, t1, 0x80002cd4 <.Lpcrel_hi7+0x2c>

80002ce8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002ce8: 97 02 00 00  	auipc	t0, 0
80002cec: 93 82 02 66  	addi	t0, t0, 1632

80002cf0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002cf0: 17 03 00 00  	auipc	t1, 0
80002cf4: 13 03 83 66  	addi	t1, t1, 1640
;     bge       t0, t1, 2f
80002cf8: 63 da 62 00  	bge	t0, t1, 0x80002d0c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002cfc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002d00: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002d04: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002d08: e3 ca 72 fe  	blt	t0, t2, 0x80002cfc <.Lpcrel_hi9+0xc>

80002d0c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002d0c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002d10: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002d14: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002d18: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002d1c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002d20: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002d24: 97 e0 ff ff  	auipc	ra, 1048574
80002d28: e7 80 40 f8  	jalr	-124(ra)
;     lw        a0, 0(sp)
80002d2c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002d30: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002d34: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002d38: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002d3c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002d40: 13 01 41 01  	addi	sp, sp, 20

80002d44 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002d44: 97 02 00 00  	auipc	t0, 0
80002d48: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002d4c: 73 90 52 30  	csrw	mtvec, t0

80002d50 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002d50: 97 00 00 00  	auipc	ra, 0
80002d54: e7 80 00 22  	jalr	544(ra)

80002d58 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002d58: 97 e0 ff ff  	auipc	ra, 1048574
80002d5c: e7 80 c0 8d  	jalr	-1828(ra)
;     mv        s0, a0 # store return value in s0
80002d60: 13 04 05 00  	mv	s0, a0

80002d64 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002d64: 97 00 00 00  	auipc	ra, 0
80002d68: e7 80 c0 20  	jalr	524(ra)

80002d6c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002d6c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002d70: 97 00 00 00  	auipc	ra, 0
80002d74: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002d78: 73 00 50 10  	wfi	
;     j       1b
80002d7c: 6f f0 df ff  	j	0x80002d78 <snrt.crt0.end+0xc>

80002d80 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002d80: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002d84: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002d88: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002d8c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002d90: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002d94: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002d98: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002d9c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002da0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002da4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002da8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002dac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002db0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002db4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002db8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002dbc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002dc0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002dc4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002dc8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002dcc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002dd0: 63 84 02 08  	beqz	t0, 0x80002e58 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002dd4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002dd8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002ddc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002de0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002de4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002de8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002dec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002df0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002df4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002df8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002dfc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002e00: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002e04: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002e08: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002e0c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002e10: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002e14: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002e18: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002e1c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002e20: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002e24: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002e28: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002e2c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002e30: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002e34: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002e38: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002e3c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002e40: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002e44: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002e48: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002e4c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002e50: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002e54: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002e58: 97 00 00 00  	auipc	ra, 0
80002e5c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80002e60: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002e64: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002e68: 63 84 02 08  	beqz	t0, 0x80002ef0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002e6c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002e70: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002e74: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002e78: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002e7c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002e80: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002e84: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002e88: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002e8c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002e90: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002e94: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002e98: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002e9c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002ea0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002ea4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002ea8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002eac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80002eb0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80002eb4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80002eb8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80002ebc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80002ec0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80002ec4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80002ec8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80002ecc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80002ed0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80002ed4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80002ed8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80002edc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80002ee0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80002ee4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80002ee8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80002eec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80002ef0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80002ef4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80002ef8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80002efc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80002f00: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80002f04: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80002f08: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80002f0c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80002f10: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80002f14: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80002f18: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80002f1c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80002f20: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80002f24: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80002f28: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80002f2c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80002f30: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80002f34: 13 01 01 05  	addi	sp, sp, 80
;     mret
80002f38: 73 00 20 30  	mret	

80002f3c <_snrt_init_core_info>:
;     mv        a4, a1
80002f3c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80002f40: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80002f44: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80002f48: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80002f4c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80002f50: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80002f54: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80002f58: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80002f5c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80002f60: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80002f64: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80002f68: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80002f6c: 67 80 00 00  	ret

80002f70 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80002f70: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80002f74: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80002f78: 97 00 00 00  	auipc	ra, 0
80002f7c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80002f80: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80002f84: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80002f88: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80002f8c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80002f90: 67 80 00 00  	ret

80002f94 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80002f94: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80002f98: 67 80 00 00  	ret

80002f9c <_snrt_exit>:
;     addi      sp, sp, -8
80002f9c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80002fa0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80002fa4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80002fa8: 97 00 00 00  	auipc	ra, 0
80002fac: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80002fb0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80002fb4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80002fb8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80002fbc: 63 1c 05 00  	bnez	a0, 0x80002fd4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80002fc0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80002fc4: 93 e2 12 00  	ori	t0, t0, 1

80002fc8 <.Lpcrel_hi11>:
;     la        t1, tohost
80002fc8: 17 03 00 00  	auipc	t1, 0
80002fcc: 13 03 83 33  	addi	t1, t1, 824
;     sw        t0, 0(t1)
80002fd0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80002fd4: 67 80 00 00  	ret
