
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-MINI_DATASET-IS_RESTRICTED-gemm-ssr:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00006934 80000000 TEXT
  2 .init             00000468 80006940 TEXT
  3 .rodata           00000240 80006da8 DATA
  4 .htif             00000048 80007000 DATA
  5 .tdata            00000000 80007048 DATA
  6 .tbss             00000010 80007048 BSS
  7 .tbssend          00000000 80007058 DATA
  8 .sdata            000001c8 80007058 DATA
  9 .data             00000000 80007220 DATA
 10 .sbss             00000004 80007220 BSS
 11 .bss              00000000 80007224 BSS
 12 .dram             00000000 80007224 DATA
 13 .debug_info       0000358a 00000000 
 14 .debug_abbrev     00000c13 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003746 00000000 
 17 .debug_loc        000042de 00000000 
 18 .debug_ranges     00000398 00000000 
 19 .debug_str        00000b18 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c8 00000000 
 23 .symtab           000035c0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000bb7 00000000 


Disassembly of section .text:

80000000 <memset>:
;   li t1, 15
80000000: 13 03 f0 00  	addi	t1, zero, 15
;   move a4, a0
80000004: 13 07 05 00  	mv	a4, a0
;   bleu a2, t1, .Ltiny
80000008: 63 7e c3 02  	bgeu	t1, a2, 0x80000044 <.Ltiny>
;   and a5, a4, 15
8000000c: 93 77 f7 00  	andi	a5, a4, 15
;   bnez a5, .Lmisaligned
80000010: 63 90 07 0a  	bnez	a5, 0x800000b0 <.Lmisaligned>

80000014 <.Laligned>:
;   bnez a1, .Lwordify
80000014: 63 92 05 08  	bnez	a1, 0x80000098 <.Lwordify>

80000018 <.Lwordified>:
;   and a3, a2, ~15
80000018: 93 76 06 ff  	andi	a3, a2, -16
;   and a2, a2, 15
8000001c: 13 76 f6 00  	andi	a2, a2, 15
;   add a3, a3, a4
80000020: b3 86 e6 00  	add	a3, a3, a4

80000024 <.Ltmp0>:
; 1:sw a1, 0(a4)
80000024: 23 20 b7 00  	sw	a1, 0(a4)
;   sw a1, 4(a4)
80000028: 23 22 b7 00  	sw	a1, 4(a4)
;   sw a1, 8(a4)
8000002c: 23 24 b7 00  	sw	a1, 8(a4)
;   sw a1, 12(a4)
80000030: 23 26 b7 00  	sw	a1, 12(a4)
;   add a4, a4, 16
80000034: 13 07 07 01  	addi	a4, a4, 16
;   bltu a4, a3, 1b
80000038: e3 66 d7 fe  	bltu	a4, a3, 0x80000024 <.Ltmp0>
;   bnez a2, .Ltiny
8000003c: 63 14 06 00  	bnez	a2, 0x80000044 <.Ltiny>
;   ret
80000040: 67 80 00 00  	ret

80000044 <.Ltiny>:
;   sub a3, t1, a2
80000044: b3 06 c3 40  	sub	a3, t1, a2
;   sll a3, a3, 2
80000048: 93 96 26 00  	slli	a3, a3, 2

8000004c <.Ltmp1>:
; 1:auipc t0, %pcrel_hi(.Ltable)
8000004c: 97 02 00 00  	auipc	t0, 0
;   add a3, a3, t0
80000050: b3 86 56 00  	add	a3, a3, t0

80000054 <.Ltable_misaligned>:
;   jr a3, %pcrel_lo(1b)
80000054: 67 80 c6 00  	jr	12(a3)

80000058 <.Ltable>:
;   sb a1,14(a4)
80000058: 23 07 b7 00  	sb	a1, 14(a4)
;   sb a1,13(a4)
8000005c: a3 06 b7 00  	sb	a1, 13(a4)
;   sb a1,12(a4)
80000060: 23 06 b7 00  	sb	a1, 12(a4)
;   sb a1,11(a4)
80000064: a3 05 b7 00  	sb	a1, 11(a4)
;   sb a1,10(a4)
80000068: 23 05 b7 00  	sb	a1, 10(a4)
;   sb a1, 9(a4)
8000006c: a3 04 b7 00  	sb	a1, 9(a4)
;   sb a1, 8(a4)
80000070: 23 04 b7 00  	sb	a1, 8(a4)
;   sb a1, 7(a4)
80000074: a3 03 b7 00  	sb	a1, 7(a4)
;   sb a1, 6(a4)
80000078: 23 03 b7 00  	sb	a1, 6(a4)
;   sb a1, 5(a4)
8000007c: a3 02 b7 00  	sb	a1, 5(a4)
;   sb a1, 4(a4)
80000080: 23 02 b7 00  	sb	a1, 4(a4)
;   sb a1, 3(a4)
80000084: a3 01 b7 00  	sb	a1, 3(a4)
;   sb a1, 2(a4)
80000088: 23 01 b7 00  	sb	a1, 2(a4)
;   sb a1, 1(a4)
8000008c: a3 00 b7 00  	sb	a1, 1(a4)
;   sb a1, 0(a4)
80000090: 23 00 b7 00  	sb	a1, 0(a4)
;   ret
80000094: 67 80 00 00  	ret

80000098 <.Lwordify>:
;   and a1, a1, 0xFF
80000098: 93 f5 f5 0f  	andi	a1, a1, 255
;   sll a3, a1, 8
8000009c: 93 96 85 00  	slli	a3, a1, 8
;   or  a1, a1, a3
800000a0: b3 e5 d5 00  	or	a1, a1, a3
;   sll a3, a1, 16
800000a4: 93 96 05 01  	slli	a3, a1, 16
;   or  a1, a1, a3
800000a8: b3 e5 d5 00  	or	a1, a1, a3
;   j .Lwordified
800000ac: 6f f0 df f6  	j	0x80000018 <.Lwordified>

800000b0 <.Lmisaligned>:
;   sll a3, a5, 2
800000b0: 93 96 27 00  	slli	a3, a5, 2

800000b4 <.Ltmp2>:
; 1:auipc t0, %pcrel_hi(.Ltable_misaligned)
800000b4: 97 02 00 00  	auipc	t0, 0
;   add a3, a3, t0
800000b8: b3 86 56 00  	add	a3, a3, t0
;   mv t0, ra
800000bc: 93 82 00 00  	mv	t0, ra
;   jalr a3, %pcrel_lo(1b)
800000c0: e7 80 06 fa  	jalr	-96(a3)
;   mv ra, t0
800000c4: 93 80 02 00  	mv	ra, t0
;   add a5, a5, -16
800000c8: 93 87 07 ff  	addi	a5, a5, -16
;   sub a4, a4, a5
800000cc: 33 07 f7 40  	sub	a4, a4, a5
;   add a2, a2, a5
800000d0: 33 06 f6 00  	add	a2, a2, a5
;   bleu a2, t1, .Ltiny
800000d4: e3 78 c3 f6  	bgeu	t1, a2, 0x80000044 <.Ltiny>
;   j .Laligned
800000d8: 6f f0 df f3  	j	0x80000014 <.Laligned>

800000dc <__udivdi3>:
800000dc: 13 01 01 fe  	addi	sp, sp, -32
800000e0: 23 2e 11 00  	sw	ra, 28(sp)
800000e4: 23 2a b1 00  	sw	a1, 20(sp)
800000e8: 23 28 a1 00  	sw	a0, 16(sp)
800000ec: 23 26 d1 00  	sw	a3, 12(sp)
800000f0: 23 24 c1 00  	sw	a2, 8(sp)
800000f4: 83 25 41 01  	lw	a1, 20(sp)
800000f8: 03 25 01 01  	lw	a0, 16(sp)
800000fc: 83 26 c1 00  	lw	a3, 12(sp)
80000100: 03 26 81 00  	lw	a2, 8(sp)
80000104: 97 00 00 00  	auipc	ra, 0
80000108: e7 80 40 01  	jalr	20(ra)
8000010c: 83 20 c1 01  	lw	ra, 28(sp)
80000110: 13 01 01 02  	addi	sp, sp, 32
80000114: 67 80 00 00  	ret

80000118 <__udivXi3>:
80000118: 13 01 01 f8  	addi	sp, sp, -128
8000011c: 23 2a b1 06  	sw	a1, 116(sp)
80000120: 23 28 a1 06  	sw	a0, 112(sp)
80000124: 23 26 d1 06  	sw	a3, 108(sp)
80000128: 23 24 c1 06  	sw	a2, 104(sp)
8000012c: 13 05 00 04  	addi	a0, zero, 64
80000130: 23 22 a1 06  	sw	a0, 100(sp)
80000134: 83 25 c1 06  	lw	a1, 108(sp)
80000138: 03 25 81 06  	lw	a0, 104(sp)
8000013c: 33 65 b5 00  	or	a0, a0, a1
80000140: 93 05 00 00  	mv	a1, zero
80000144: 63 08 b5 10  	beq	a0, a1, 0x80000254 <.LBB1_4>
80000148: 6f 00 40 00  	j	0x8000014c <.LBB1_1>

8000014c <.LBB1_1>:
8000014c: 83 25 81 06  	lw	a1, 104(sp)
80000150: 03 25 c1 06  	lw	a0, 108(sp)
80000154: 13 56 15 00  	srli	a2, a0, 1
80000158: 33 66 c5 00  	or	a2, a0, a2
8000015c: 93 56 26 00  	srli	a3, a2, 2
80000160: 33 66 d6 00  	or	a2, a2, a3
80000164: 93 56 46 00  	srli	a3, a2, 4
80000168: 33 66 d6 00  	or	a2, a2, a3
8000016c: 93 56 86 00  	srli	a3, a2, 8
80000170: 33 66 d6 00  	or	a2, a2, a3
80000174: 93 56 06 01  	srli	a3, a2, 16
80000178: 33 66 d6 00  	or	a2, a2, a3
8000017c: 13 46 f6 ff  	not	a2, a2
80000180: 93 56 16 00  	srli	a3, a2, 1
80000184: 37 57 55 55  	lui	a4, 349525
80000188: 93 08 57 55  	addi	a7, a4, 1365
8000018c: b3 f6 16 01  	and	a3, a3, a7
80000190: b3 06 d6 40  	sub	a3, a2, a3
80000194: 37 36 33 33  	lui	a2, 209715
80000198: 13 08 36 33  	addi	a6, a2, 819
8000019c: 33 f6 06 01  	and	a2, a3, a6
800001a0: 93 d6 26 00  	srli	a3, a3, 2
800001a4: b3 f6 06 01  	and	a3, a3, a6
800001a8: 33 06 d6 00  	add	a2, a2, a3
800001ac: 93 56 46 00  	srli	a3, a2, 4
800001b0: 33 06 d6 00  	add	a2, a2, a3
800001b4: b7 16 0f 0f  	lui	a3, 61681
800001b8: 13 87 f6 f0  	addi	a4, a3, -241
800001bc: 33 76 e6 00  	and	a2, a2, a4
800001c0: b7 06 01 01  	lui	a3, 4112
800001c4: 93 86 16 10  	addi	a3, a3, 257
800001c8: 33 06 d6 02  	mul	a2, a2, a3
800001cc: 13 56 86 01  	srli	a2, a2, 24
800001d0: 93 d7 15 00  	srli	a5, a1, 1
800001d4: b3 e5 f5 00  	or	a1, a1, a5
800001d8: 93 d7 25 00  	srli	a5, a1, 2
800001dc: b3 e5 f5 00  	or	a1, a1, a5
800001e0: 93 d7 45 00  	srli	a5, a1, 4
800001e4: b3 e5 f5 00  	or	a1, a1, a5
800001e8: 93 d7 85 00  	srli	a5, a1, 8
800001ec: b3 e5 f5 00  	or	a1, a1, a5
800001f0: 93 d7 05 01  	srli	a5, a1, 16
800001f4: b3 e5 f5 00  	or	a1, a1, a5
800001f8: 93 c5 f5 ff  	not	a1, a1
800001fc: 93 d7 15 00  	srli	a5, a1, 1
80000200: b3 f7 17 01  	and	a5, a5, a7
80000204: b3 87 f5 40  	sub	a5, a1, a5
80000208: b3 f5 07 01  	and	a1, a5, a6
8000020c: 93 d7 27 00  	srli	a5, a5, 2
80000210: b3 f7 07 01  	and	a5, a5, a6
80000214: b3 85 f5 00  	add	a1, a1, a5
80000218: 93 d7 45 00  	srli	a5, a1, 4
8000021c: b3 85 f5 00  	add	a1, a1, a5
80000220: b3 f5 e5 00  	and	a1, a1, a4
80000224: b3 85 d5 02  	mul	a1, a1, a3
80000228: 93 d5 85 01  	srli	a1, a1, 24
8000022c: 93 85 05 02  	addi	a1, a1, 32
80000230: 23 20 b1 04  	sw	a1, 64(sp)
80000234: 93 05 00 00  	mv	a1, zero
80000238: 23 22 c1 04  	sw	a2, 68(sp)
8000023c: 63 16 b5 00  	bne	a0, a1, 0x80000248 <.LBB1_3>
80000240: 03 25 01 04  	lw	a0, 64(sp)
80000244: 23 22 a1 04  	sw	a0, 68(sp)

80000248 <.LBB1_3>:
80000248: 03 25 41 04  	lw	a0, 68(sp)
8000024c: 23 2e a1 02  	sw	a0, 60(sp)
80000250: 6f 00 00 01  	j	0x80000260 <.LBB1_5>

80000254 <.LBB1_4>:
80000254: 13 05 00 04  	addi	a0, zero, 64
80000258: 23 2e a1 02  	sw	a0, 60(sp)
8000025c: 6f 00 40 00  	j	0x80000260 <.LBB1_5>

80000260 <.LBB1_5>:
80000260: 03 25 c1 03  	lw	a0, 60(sp)
80000264: 23 2c a1 02  	sw	a0, 56(sp)
80000268: 83 25 41 07  	lw	a1, 116(sp)
8000026c: 03 25 01 07  	lw	a0, 112(sp)
80000270: 33 65 b5 00  	or	a0, a0, a1
80000274: 93 05 00 00  	mv	a1, zero
80000278: 63 08 b5 10  	beq	a0, a1, 0x80000388 <.LBB1_9>
8000027c: 6f 00 40 00  	j	0x80000280 <.LBB1_6>

80000280 <.LBB1_6>:
80000280: 83 25 01 07  	lw	a1, 112(sp)
80000284: 03 25 41 07  	lw	a0, 116(sp)
80000288: 13 56 15 00  	srli	a2, a0, 1
8000028c: 33 66 c5 00  	or	a2, a0, a2
80000290: 93 56 26 00  	srli	a3, a2, 2
80000294: 33 66 d6 00  	or	a2, a2, a3
80000298: 93 56 46 00  	srli	a3, a2, 4
8000029c: 33 66 d6 00  	or	a2, a2, a3
800002a0: 93 56 86 00  	srli	a3, a2, 8
800002a4: 33 66 d6 00  	or	a2, a2, a3
800002a8: 93 56 06 01  	srli	a3, a2, 16
800002ac: 33 66 d6 00  	or	a2, a2, a3
800002b0: 13 46 f6 ff  	not	a2, a2
800002b4: 93 56 16 00  	srli	a3, a2, 1
800002b8: 37 57 55 55  	lui	a4, 349525
800002bc: 93 08 57 55  	addi	a7, a4, 1365
800002c0: b3 f6 16 01  	and	a3, a3, a7
800002c4: b3 06 d6 40  	sub	a3, a2, a3
800002c8: 37 36 33 33  	lui	a2, 209715
800002cc: 13 08 36 33  	addi	a6, a2, 819
800002d0: 33 f6 06 01  	and	a2, a3, a6
800002d4: 93 d6 26 00  	srli	a3, a3, 2
800002d8: b3 f6 06 01  	and	a3, a3, a6
800002dc: 33 06 d6 00  	add	a2, a2, a3
800002e0: 93 56 46 00  	srli	a3, a2, 4
800002e4: 33 06 d6 00  	add	a2, a2, a3
800002e8: b7 16 0f 0f  	lui	a3, 61681
800002ec: 13 87 f6 f0  	addi	a4, a3, -241
800002f0: 33 76 e6 00  	and	a2, a2, a4
800002f4: b7 06 01 01  	lui	a3, 4112
800002f8: 93 86 16 10  	addi	a3, a3, 257
800002fc: 33 06 d6 02  	mul	a2, a2, a3
80000300: 13 56 86 01  	srli	a2, a2, 24
80000304: 93 d7 15 00  	srli	a5, a1, 1
80000308: b3 e5 f5 00  	or	a1, a1, a5
8000030c: 93 d7 25 00  	srli	a5, a1, 2
80000310: b3 e5 f5 00  	or	a1, a1, a5
80000314: 93 d7 45 00  	srli	a5, a1, 4
80000318: b3 e5 f5 00  	or	a1, a1, a5
8000031c: 93 d7 85 00  	srli	a5, a1, 8
80000320: b3 e5 f5 00  	or	a1, a1, a5
80000324: 93 d7 05 01  	srli	a5, a1, 16
80000328: b3 e5 f5 00  	or	a1, a1, a5
8000032c: 93 c5 f5 ff  	not	a1, a1
80000330: 93 d7 15 00  	srli	a5, a1, 1
80000334: b3 f7 17 01  	and	a5, a5, a7
80000338: b3 87 f5 40  	sub	a5, a1, a5
8000033c: b3 f5 07 01  	and	a1, a5, a6
80000340: 93 d7 27 00  	srli	a5, a5, 2
80000344: b3 f7 07 01  	and	a5, a5, a6
80000348: b3 85 f5 00  	add	a1, a1, a5
8000034c: 93 d7 45 00  	srli	a5, a1, 4
80000350: b3 85 f5 00  	add	a1, a1, a5
80000354: b3 f5 e5 00  	and	a1, a1, a4
80000358: b3 85 d5 02  	mul	a1, a1, a3
8000035c: 93 d5 85 01  	srli	a1, a1, 24
80000360: 93 85 05 02  	addi	a1, a1, 32
80000364: 23 28 b1 02  	sw	a1, 48(sp)
80000368: 93 05 00 00  	mv	a1, zero
8000036c: 23 2a c1 02  	sw	a2, 52(sp)
80000370: 63 16 b5 00  	bne	a0, a1, 0x8000037c <.LBB1_8>
80000374: 03 25 01 03  	lw	a0, 48(sp)
80000378: 23 2a a1 02  	sw	a0, 52(sp)

8000037c <.LBB1_8>:
8000037c: 03 25 41 03  	lw	a0, 52(sp)
80000380: 23 26 a1 02  	sw	a0, 44(sp)
80000384: 6f 00 00 01  	j	0x80000394 <.LBB1_10>

80000388 <.LBB1_9>:
80000388: 13 05 00 04  	addi	a0, zero, 64
8000038c: 23 26 a1 02  	sw	a0, 44(sp)
80000390: 6f 00 40 00  	j	0x80000394 <.LBB1_10>

80000394 <.LBB1_10>:
80000394: 03 25 81 03  	lw	a0, 56(sp)
80000398: 83 25 c1 02  	lw	a1, 44(sp)
8000039c: 33 05 b5 40  	sub	a0, a0, a1
800003a0: 23 20 a1 06  	sw	a0, 96(sp)
800003a4: 03 25 01 06  	lw	a0, 96(sp)
800003a8: 93 05 00 04  	addi	a1, zero, 64
800003ac: 63 6c b5 00  	bltu	a0, a1, 0x800003c4 <.LBB1_12>
800003b0: 6f 00 40 00  	j	0x800003b4 <.LBB1_11>

800003b4 <.LBB1_11>:
800003b4: 13 05 00 00  	mv	a0, zero
800003b8: 23 2e a1 06  	sw	a0, 124(sp)
800003bc: 23 2c a1 06  	sw	a0, 120(sp)
800003c0: 6f 00 40 26  	j	0x80000624 <.LBB1_23>

800003c4 <.LBB1_12>:
800003c4: 03 25 01 06  	lw	a0, 96(sp)
800003c8: 93 05 f0 03  	addi	a1, zero, 63
800003cc: 63 1e b5 00  	bne	a0, a1, 0x800003e8 <.LBB1_14>
800003d0: 6f 00 40 00  	j	0x800003d4 <.LBB1_13>

800003d4 <.LBB1_13>:
800003d4: 03 25 01 07  	lw	a0, 112(sp)
800003d8: 83 25 41 07  	lw	a1, 116(sp)
800003dc: 23 2e b1 06  	sw	a1, 124(sp)
800003e0: 23 2c a1 06  	sw	a0, 120(sp)
800003e4: 6f 00 00 24  	j	0x80000624 <.LBB1_23>

800003e8 <.LBB1_14>:
800003e8: 03 25 01 06  	lw	a0, 96(sp)
800003ec: 13 05 15 00  	addi	a0, a0, 1
800003f0: 23 20 a1 06  	sw	a0, 96(sp)
800003f4: 03 26 41 07  	lw	a2, 116(sp)
800003f8: 03 25 01 07  	lw	a0, 112(sp)
800003fc: 03 27 01 06  	lw	a4, 96(sp)
80000400: 33 55 e5 00  	srl	a0, a0, a4
80000404: 93 05 f0 01  	addi	a1, zero, 31
80000408: 23 2c b1 00  	sw	a1, 24(sp)
8000040c: b3 86 e5 40  	sub	a3, a1, a4
80000410: 93 15 16 00  	slli	a1, a2, 1
80000414: b3 95 d5 00  	sll	a1, a1, a3
80000418: b3 66 b5 00  	or	a3, a0, a1
8000041c: 13 05 07 fe  	addi	a0, a4, -32
80000420: b3 55 a6 00  	srl	a1, a2, a0
80000424: 23 2e b1 00  	sw	a1, 28(sp)
80000428: 93 05 00 00  	mv	a1, zero
8000042c: 23 20 b1 02  	sw	a1, 32(sp)
80000430: 33 56 e6 00  	srl	a2, a2, a4
80000434: 23 22 d1 02  	sw	a3, 36(sp)
80000438: 23 24 c1 02  	sw	a2, 40(sp)
8000043c: 63 4a b5 00  	blt	a0, a1, 0x80000450 <.LBB1_16>
80000440: 03 25 01 02  	lw	a0, 32(sp)
80000444: 83 25 c1 01  	lw	a1, 28(sp)
80000448: 23 22 b1 02  	sw	a1, 36(sp)
8000044c: 23 24 a1 02  	sw	a0, 40(sp)

80000450 <.LBB1_16>:
80000450: 83 25 01 02  	lw	a1, 32(sp)
80000454: 83 26 81 01  	lw	a3, 24(sp)
80000458: 03 25 41 02  	lw	a0, 36(sp)
8000045c: 03 26 81 02  	lw	a2, 40(sp)
80000460: 23 2e c1 04  	sw	a2, 92(sp)
80000464: 23 2c a1 04  	sw	a0, 88(sp)
80000468: 83 27 01 06  	lw	a5, 96(sp)
8000046c: 13 05 00 04  	addi	a0, zero, 64
80000470: 33 07 f5 40  	sub	a4, a0, a5
80000474: 03 26 01 07  	lw	a2, 112(sp)
80000478: 03 25 41 07  	lw	a0, 116(sp)
8000047c: 33 15 e5 00  	sll	a0, a0, a4
80000480: 33 88 e6 40  	sub	a6, a3, a4
80000484: 93 56 16 00  	srli	a3, a2, 1
80000488: b3 d6 06 01  	srl	a3, a3, a6
8000048c: b3 66 d5 00  	or	a3, a0, a3
80000490: 13 05 00 02  	addi	a0, zero, 32
80000494: 33 05 f5 40  	sub	a0, a0, a5
80000498: b3 17 a6 00  	sll	a5, a2, a0
8000049c: 23 26 f1 00  	sw	a5, 12(sp)
800004a0: 33 16 e6 00  	sll	a2, a2, a4
800004a4: 23 28 d1 00  	sw	a3, 16(sp)
800004a8: 23 2a c1 00  	sw	a2, 20(sp)
800004ac: 63 4a b5 00  	blt	a0, a1, 0x800004c0 <.LBB1_18>
800004b0: 03 25 01 02  	lw	a0, 32(sp)
800004b4: 83 25 c1 00  	lw	a1, 12(sp)
800004b8: 23 28 b1 00  	sw	a1, 16(sp)
800004bc: 23 2a a1 00  	sw	a0, 20(sp)

800004c0 <.LBB1_18>:
800004c0: 03 25 01 02  	lw	a0, 32(sp)
800004c4: 83 25 01 01  	lw	a1, 16(sp)
800004c8: 03 26 41 01  	lw	a2, 20(sp)
800004cc: 23 28 c1 06  	sw	a2, 112(sp)
800004d0: 23 2a b1 06  	sw	a1, 116(sp)
800004d4: 23 2a a1 04  	sw	a0, 84(sp)
800004d8: 23 28 a1 04  	sw	a0, 80(sp)
800004dc: 6f 00 40 00  	j	0x800004e0 <.LBB1_19>

800004e0 <.LBB1_19>:
800004e0: 03 25 01 06  	lw	a0, 96(sp)
800004e4: 93 05 00 00  	mv	a1, zero
800004e8: 63 0c b5 0e  	beq	a0, a1, 0x800005e0 <.LBB1_22>
800004ec: 6f 00 40 00  	j	0x800004f0 <.LBB1_20>

800004f0 <.LBB1_20>:
800004f0: 83 25 c1 05  	lw	a1, 92(sp)
800004f4: 03 25 81 05  	lw	a0, 88(sp)
800004f8: 13 56 f5 01  	srli	a2, a0, 31
800004fc: 93 95 15 00  	slli	a1, a1, 1
80000500: b3 e5 c5 00  	or	a1, a1, a2
80000504: 13 15 15 00  	slli	a0, a0, 1
80000508: 03 26 41 07  	lw	a2, 116(sp)
8000050c: 13 56 f6 01  	srli	a2, a2, 31
80000510: 33 65 c5 00  	or	a0, a0, a2
80000514: 23 2e b1 04  	sw	a1, 92(sp)
80000518: 23 2c a1 04  	sw	a0, 88(sp)
8000051c: 03 25 41 07  	lw	a0, 116(sp)
80000520: 83 25 01 07  	lw	a1, 112(sp)
80000524: 13 d6 f5 01  	srli	a2, a1, 31
80000528: 13 15 15 00  	slli	a0, a0, 1
8000052c: 33 65 c5 00  	or	a0, a0, a2
80000530: 93 95 15 00  	slli	a1, a1, 1
80000534: 03 26 01 05  	lw	a2, 80(sp)
80000538: 83 26 41 05  	lw	a3, 84(sp)
8000053c: 33 65 d5 00  	or	a0, a0, a3
80000540: b3 e5 c5 00  	or	a1, a1, a2
80000544: 23 28 b1 06  	sw	a1, 112(sp)
80000548: 23 2a a1 06  	sw	a0, 116(sp)
8000054c: 83 25 81 06  	lw	a1, 104(sp)
80000550: 83 26 c1 06  	lw	a3, 108(sp)
80000554: 03 26 81 05  	lw	a2, 88(sp)
80000558: 03 25 c1 05  	lw	a0, 92(sp)
8000055c: 13 45 f5 ff  	not	a0, a0
80000560: 33 05 d5 00  	add	a0, a0, a3
80000564: 13 46 f6 ff  	not	a2, a2
80000568: b3 05 b6 00  	add	a1, a2, a1
8000056c: b3 b5 c5 00  	sltu	a1, a1, a2
80000570: 33 05 b5 00  	add	a0, a0, a1
80000574: 13 55 f5 41  	srai	a0, a0, 31
80000578: 23 26 a1 04  	sw	a0, 76(sp)
8000057c: 23 24 a1 04  	sw	a0, 72(sp)
80000580: 03 25 81 04  	lw	a0, 72(sp)
80000584: 13 75 15 00  	andi	a0, a0, 1
80000588: 93 05 00 00  	mv	a1, zero
8000058c: 23 2a b1 04  	sw	a1, 84(sp)
80000590: 23 28 a1 04  	sw	a0, 80(sp)
80000594: 03 25 81 06  	lw	a0, 104(sp)
80000598: 03 26 c1 06  	lw	a2, 108(sp)
8000059c: 83 25 81 04  	lw	a1, 72(sp)
800005a0: 83 26 c1 04  	lw	a3, 76(sp)
800005a4: 33 77 d6 00  	and	a4, a2, a3
800005a8: 33 76 b5 00  	and	a2, a0, a1
800005ac: 03 25 c1 05  	lw	a0, 92(sp)
800005b0: 83 25 81 05  	lw	a1, 88(sp)
800005b4: b3 b6 c5 00  	sltu	a3, a1, a2
800005b8: 33 05 e5 40  	sub	a0, a0, a4
800005bc: 33 05 d5 40  	sub	a0, a0, a3
800005c0: b3 85 c5 40  	sub	a1, a1, a2
800005c4: 23 2c b1 04  	sw	a1, 88(sp)
800005c8: 23 2e a1 04  	sw	a0, 92(sp)
800005cc: 6f 00 40 00  	j	0x800005d0 <.LBB1_21>

800005d0 <.LBB1_21>:
800005d0: 03 25 01 06  	lw	a0, 96(sp)
800005d4: 13 05 f5 ff  	addi	a0, a0, -1
800005d8: 23 20 a1 06  	sw	a0, 96(sp)
800005dc: 6f f0 5f f0  	j	0x800004e0 <.LBB1_19>

800005e0 <.LBB1_22>:
800005e0: 03 25 41 07  	lw	a0, 116(sp)
800005e4: 83 25 01 07  	lw	a1, 112(sp)
800005e8: 13 d6 f5 01  	srli	a2, a1, 31
800005ec: 13 15 15 00  	slli	a0, a0, 1
800005f0: 33 65 c5 00  	or	a0, a0, a2
800005f4: 93 95 15 00  	slli	a1, a1, 1
800005f8: 03 26 01 05  	lw	a2, 80(sp)
800005fc: 83 26 41 05  	lw	a3, 84(sp)
80000600: 33 65 d5 00  	or	a0, a0, a3
80000604: b3 e5 c5 00  	or	a1, a1, a2
80000608: 23 28 b1 06  	sw	a1, 112(sp)
8000060c: 23 2a a1 06  	sw	a0, 116(sp)
80000610: 03 25 01 07  	lw	a0, 112(sp)
80000614: 83 25 41 07  	lw	a1, 116(sp)
80000618: 23 2e b1 06  	sw	a1, 124(sp)
8000061c: 23 2c a1 06  	sw	a0, 120(sp)
80000620: 6f 00 40 00  	j	0x80000624 <.LBB1_23>

80000624 <.LBB1_23>:
80000624: 03 25 81 07  	lw	a0, 120(sp)
80000628: 83 25 c1 07  	lw	a1, 124(sp)
8000062c: 13 01 01 08  	addi	sp, sp, 128
80000630: 67 80 00 00  	ret

80000634 <main>:
; int main(){
80000634: 13 01 01 ea  	addi	sp, sp, -352
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 14  	sw	ra, 348(sp)
8000063c: 23 2c 81 14  	sw	s0, 344(sp)
80000640: 23 2a 91 14  	sw	s1, 340(sp)
80000644: 23 28 21 15  	sw	s2, 336(sp)
80000648: 23 26 31 15  	sw	s3, 332(sp)
8000064c: 23 24 41 15  	sw	s4, 328(sp)
80000650: 23 22 51 15  	sw	s5, 324(sp)
80000654: 23 20 61 15  	sw	s6, 320(sp)
80000658: 23 2e 71 13  	sw	s7, 316(sp)
8000065c: 23 2c 81 13  	sw	s8, 312(sp)
80000660: 23 2a 91 13  	sw	s9, 308(sp)
80000664: 23 28 a1 13  	sw	s10, 304(sp)
80000668: 23 26 b1 13  	sw	s11, 300(sp)
8000066c: 27 30 81 12  	fsd	fs0, 288(sp)
80000670: 27 3c 91 10  	fsd	fs1, 280(sp)
80000674: 27 38 21 11  	fsd	fs2, 272(sp)
80000678: 27 34 31 11  	fsd	fs3, 264(sp)
8000067c: 27 30 41 11  	fsd	fs4, 256(sp)
80000680: 27 3c 51 0f  	fsd	fs5, 248(sp)
80000684: 27 38 61 0f  	fsd	fs6, 240(sp)
80000688: 27 34 71 0f  	fsd	fs7, 232(sp)
8000068c: 27 30 81 0f  	fsd	fs8, 224(sp)
80000690: 27 3c 91 0d  	fsd	fs9, 216(sp)
80000694: 27 38 a1 0d  	fsd	fs10, 208(sp)
80000698: 27 34 b1 0d  	fsd	fs11, 200(sp)
8000069c: 37 05 00 00  	lui	a0, 0
800006a0: 33 05 45 00  	add	a0, a0, tp
800006a4: 83 25 45 00  	lw	a1, 4(a0)
800006a8: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006ac: 63 84 05 00  	beqz	a1, 0x800006b4 <main+0x80>
800006b0: 6f 40 c0 35  	j	0x80004a0c <.LBB0_167+0x10>
;     return _snrt_team_current->root;
800006b4: 37 05 00 00  	lui	a0, 0
800006b8: 33 05 45 00  	add	a0, a0, tp
800006bc: 03 25 05 00  	lw	a0, 0(a0)
800006c0: 03 25 05 00  	lw	a0, 0(a0)
800006c4: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c8: 83 27 85 05  	lw	a5, 88(a0)
800006cc: 83 26 05 05  	lw	a3, 80(a0)
800006d0: 03 27 45 05  	lw	a4, 84(a0)
800006d4: 93 84 85 6a  	addi	s1, a1, 1704
800006d8: b3 85 97 00  	add	a1, a5, s1
800006dc: 13 86 85 8f  	addi	a2, a1, -1800
800006e0: b3 05 d7 00  	add	a1, a4, a3
800006e4: 63 f6 c5 00  	bgeu	a1, a2, 0x800006f0 <main+0xbc>
800006e8: 13 07 00 00  	mv	a4, zero
800006ec: 6f 00 00 01  	j	0x800006fc <main+0xc8>
;     void *ret = (void *)alloc->next;
800006f0: 13 87 07 00  	mv	a4, a5
;     alloc->next += size;
800006f4: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f8: 93 07 06 00  	mv	a5, a2
800006fc: 33 86 f4 00  	add	a2, s1, a5
80000700: 13 06 86 c1  	addi	a2, a2, -1000
80000704: 63 f6 c5 00  	bgeu	a1, a2, 0x80000710 <main+0xdc>
80000708: 93 06 00 00  	mv	a3, zero
8000070c: 6f 00 00 01  	j	0x8000071c <main+0xe8>
;     void *ret = (void *)alloc->next;
80000710: 93 86 07 00  	mv	a3, a5
;     alloc->next += size;
80000714: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000718: 93 07 06 00  	mv	a5, a2
8000071c: 23 28 d1 00  	sw	a3, 16(sp)
80000720: 37 16 00 00  	lui	a2, 1
80000724: 13 06 86 76  	addi	a2, a2, 1896
80000728: 23 20 c1 00  	sw	a2, 0(sp)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000072c: 33 86 c7 00  	add	a2, a5, a2
80000730: 13 06 86 00  	addi	a2, a2, 8
80000734: 63 f6 c5 00  	bgeu	a1, a2, 0x80000740 <main+0x10c>
80000738: 93 07 00 00  	mv	a5, zero
8000073c: 6f 00 80 00  	j	0x80000744 <main+0x110>
;     alloc->next += size;
80000740: 23 2c c5 04  	sw	a2, 88(a0)
80000744: 23 26 f1 00  	sw	a5, 12(sp)
80000748: 23 24 91 00  	sw	s1, 8(sp)
;     for (i = 0; i < ni; i++)
8000074c: 33 85 e4 00  	add	a0, s1, a4
80000750: 13 05 05 8f  	addi	a0, a0, -1808
80000754: 93 55 47 01  	srli	a1, a4, 20
80000758: b3 35 b0 00  	snez	a1, a1
8000075c: 37 06 12 00  	lui	a2, 288
80000760: 13 06 16 00  	addi	a2, a2, 1
80000764: 33 35 c5 00  	sltu	a0, a0, a2
80000768: 33 f5 a5 00  	and	a0, a1, a0

8000076c <.LBB0_125>:
8000076c: 97 7f 00 00  	auipc	t6, 7
80000770: 93 8f cf 8e  	addi	t6, t6, -1812
80000774: 23 28 e1 08  	sw	a4, 144(sp)
80000778: 23 22 a1 00  	sw	a0, 4(sp)
8000077c: 63 00 05 50  	beqz	a0, 0x80000c7c <.LBB0_125+0x510>
80000780: 93 02 00 00  	mv	t0, zero
80000784: 93 0c 00 00  	mv	s9, zero
80000788: 13 0d 00 00  	mv	s10, zero
8000078c: 93 0d 00 00  	mv	s11, zero
80000790: 13 05 80 00  	addi	a0, zero, 8
80000794: 93 05 80 01  	addi	a1, zero, 24
;     for (i = 0; i < ni; i++)
80000798: 13 06 00 04  	addi	a2, zero, 64
8000079c: 93 07 00 0c  	addi	a5, zero, 192
800007a0: ab a0 c5 00  	scfgw	a1, a2
800007a4: ab 20 f5 00  	scfgw	a0, a5
800007a8: 93 05 30 01  	addi	a1, zero, 19
800007ac: 13 06 00 06  	addi	a2, zero, 96
800007b0: 93 07 00 0e  	addi	a5, zero, 224
800007b4: ab a0 c5 00  	scfgw	a1, a2
800007b8: ab 20 f5 00  	scfgw	a0, a5
800007bc: 13 05 00 02  	addi	a0, zero, 32
800007c0: ab 20 a0 00  	scfgw	zero, a0
800007c4: 2b 20 07 3a  	scfgwi	a4, 928
800007c8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800007cc: 13 05 10 00  	addi	a0, zero, 1
800007d0: 23 2c a1 0a  	sw	a0, 184(sp)
800007d4: 37 d5 cc cc  	lui	a0, 838861
800007d8: 93 04 d5 cc  	addi	s1, a0, -819
800007dc: 93 00 40 01  	addi	ra, zero, 20
800007e0: 87 b1 0f 00  	fld	ft3, 0(t6)
800007e4: 13 05 10 00  	addi	a0, zero, 1
800007e8: 23 28 a1 0a  	sw	a0, 176(sp)
800007ec: 13 05 10 00  	addi	a0, zero, 1
800007f0: 23 26 a1 0a  	sw	a0, 172(sp)
800007f4: 13 04 10 00  	addi	s0, zero, 1
800007f8: 13 0e 10 00  	addi	t3, zero, 1
800007fc: 13 05 10 00  	addi	a0, zero, 1
80000800: 23 20 a1 0a  	sw	a0, 160(sp)
80000804: 13 0f 10 00  	addi	t5, zero, 1
80000808: 13 08 10 00  	addi	a6, zero, 1
8000080c: 93 08 10 00  	addi	a7, zero, 1
80000810: 13 03 10 00  	addi	t1, zero, 1
80000814: 93 09 10 00  	addi	s3, zero, 1
80000818: 93 07 10 00  	addi	a5, zero, 1
8000081c: 93 03 10 00  	addi	t2, zero, 1
80000820: 13 0b 10 00  	addi	s6, zero, 1
80000824: 13 0c 10 00  	addi	s8, zero, 1
80000828: 93 0f 10 00  	addi	t6, zero, 1
8000082c: 93 06 10 00  	addi	a3, zero, 1
80000830: 13 05 10 00  	addi	a0, zero, 1
80000834: 93 0e 10 00  	addi	t4, zero, 1
80000838: 93 0a 10 00  	addi	s5, zero, 1
8000083c: 13 09 10 00  	addi	s2, zero, 1
80000840: 93 05 10 00  	addi	a1, zero, 1
80000844: 23 2a b1 0a  	sw	a1, 180(sp)
80000848: 13 06 10 00  	addi	a2, zero, 1
8000084c: 6f 00 80 22  	j	0x80000a74 <.LBB0_125+0x308>
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000850: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000854: d3 82 0b d2  	fcvt.d.w	ft5, s7
80000858: 53 03 0b d2  	fcvt.d.w	ft6, s6
8000085c: d3 83 0a d2  	fcvt.d.w	ft7, s5
80000860: 53 05 0a d2  	fcvt.d.w	fa0, s4
80000864: d3 85 09 d2  	fcvt.d.w	fa1, s3
80000868: 53 06 09 d2  	fcvt.d.w	fa2, s2
8000086c: d3 06 03 d2  	fcvt.d.w	fa3, t1
80000870: 53 87 03 d2  	fcvt.d.w	fa4, t2
80000874: d3 07 05 d2  	fcvt.d.w	fa5, a0
80000878: 53 88 06 d2  	fcvt.d.w	fa6, a3
8000087c: 03 25 01 03  	lw	a0, 48(sp)
80000880: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000884: 03 25 81 02  	lw	a0, 40(sp)
80000888: 53 0e 05 d2  	fcvt.d.w	ft8, a0
8000088c: 03 25 01 02  	lw	a0, 32(sp)
80000890: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000894: 03 25 c1 03  	lw	a0, 60(sp)
80000898: 53 0f 05 d2  	fcvt.d.w	ft10, a0
8000089c: 03 25 01 04  	lw	a0, 64(sp)
800008a0: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800008a4: 03 25 41 04  	lw	a0, 68(sp)
800008a8: 53 04 05 d2  	fcvt.d.w	fs0, a0
800008ac: 03 25 81 04  	lw	a0, 72(sp)
800008b0: d3 04 05 d2  	fcvt.d.w	fs1, a0
800008b4: 03 25 c1 04  	lw	a0, 76(sp)
800008b8: 53 09 05 d2  	fcvt.d.w	fs2, a0
800008bc: 03 25 01 05  	lw	a0, 80(sp)
800008c0: d3 09 05 d2  	fcvt.d.w	fs3, a0
800008c4: 03 25 41 05  	lw	a0, 84(sp)
800008c8: 53 0a 05 d2  	fcvt.d.w	fs4, a0
800008cc: 03 25 81 05  	lw	a0, 88(sp)
800008d0: d3 0a 05 d2  	fcvt.d.w	fs5, a0
800008d4: 03 25 c1 05  	lw	a0, 92(sp)
800008d8: 53 0b 05 d2  	fcvt.d.w	fs6, a0
800008dc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008e0: 53 00 42 22  	fmv.d	ft0, ft4
800008e4: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800008e8: 53 00 42 22  	fmv.d	ft0, ft4
800008ec: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800008f0: 53 00 42 22  	fmv.d	ft0, ft4
800008f4: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800008f8: 53 00 42 22  	fmv.d	ft0, ft4
800008fc: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80000900: 53 00 42 22  	fmv.d	ft0, ft4
80000904: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80000908: 53 00 42 22  	fmv.d	ft0, ft4
8000090c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80000910: 53 00 42 22  	fmv.d	ft0, ft4
80000914: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80000918: 53 00 42 22  	fmv.d	ft0, ft4
8000091c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80000920: 53 00 42 22  	fmv.d	ft0, ft4
80000924: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80000928: 53 00 42 22  	fmv.d	ft0, ft4
8000092c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80000930: 53 00 42 22  	fmv.d	ft0, ft4
80000934: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80000938: 53 00 42 22  	fmv.d	ft0, ft4
8000093c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80000940: 53 00 42 22  	fmv.d	ft0, ft4
80000944: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80000948: 53 00 42 22  	fmv.d	ft0, ft4
8000094c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80000950: 53 00 42 22  	fmv.d	ft0, ft4
80000954: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80000958: 53 00 42 22  	fmv.d	ft0, ft4
8000095c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80000960: 53 00 42 22  	fmv.d	ft0, ft4
80000964: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80000968: 53 00 42 22  	fmv.d	ft0, ft4
8000096c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80000970: 53 00 42 22  	fmv.d	ft0, ft4
80000974: 53 80 31 22  	fmv.d	ft0, ft3
80000978: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
8000097c: 53 00 42 22  	fmv.d	ft0, ft4
80000980: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80000984: 53 00 42 22  	fmv.d	ft0, ft4
80000988: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
8000098c: 53 00 42 22  	fmv.d	ft0, ft4
80000990: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80000994: 53 00 42 22  	fmv.d	ft0, ft4
80000998: 03 26 c1 08  	lw	a2, 140(sp)
8000099c: 13 06 86 01  	addi	a2, a2, 24
800009a0: 83 25 41 0b  	lw	a1, 180(sp)
800009a4: 93 85 75 01  	addi	a1, a1, 23
800009a8: 23 2a b1 0a  	sw	a1, 180(sp)
800009ac: 03 29 01 06  	lw	s2, 96(sp)
800009b0: 13 09 69 01  	addi	s2, s2, 22
800009b4: 93 0a 5e 01  	addi	s5, t3, 21
800009b8: 93 8e 3e 01  	addi	t4, t4, 19
800009bc: 03 25 41 08  	lw	a0, 132(sp)
800009c0: 13 05 25 01  	addi	a0, a0, 18
800009c4: 83 26 81 08  	lw	a3, 136(sp)
800009c8: 93 86 16 01  	addi	a3, a3, 17
800009cc: 03 2a 01 08  	lw	s4, 128(sp)
800009d0: 13 0a 0a 01  	addi	s4, s4, 16
800009d4: 83 2b c1 07  	lw	s7, 124(sp)
800009d8: 93 8b fb 00  	addi	s7, s7, 15
800009dc: 03 2b 01 07  	lw	s6, 112(sp)
800009e0: 13 0b eb 00  	addi	s6, s6, 14
800009e4: 83 23 81 07  	lw	t2, 120(sp)
800009e8: 93 83 d3 00  	addi	t2, t2, 13
800009ec: 93 87 c7 00  	addi	a5, a5, 12
800009f0: 83 29 41 06  	lw	s3, 100(sp)
800009f4: 93 89 b9 00  	addi	s3, s3, 11
800009f8: 03 23 c1 06  	lw	t1, 108(sp)
800009fc: 13 03 a3 00  	addi	t1, t1, 10
80000a00: 03 27 41 07  	lw	a4, 116(sp)
80000a04: 13 07 a7 00  	addi	a4, a4, 10
80000a08: 83 28 81 06  	lw	a7, 104(sp)
80000a0c: 93 88 98 00  	addi	a7, a7, 9
80000a10: 13 08 88 00  	addi	a6, a6, 8
80000a14: 13 0f 7f 00  	addi	t5, t5, 7
80000a18: 93 8f 6f 00  	addi	t6, t6, 6
80000a1c: 23 20 f1 0b  	sw	t6, 160(sp)
80000a20: 03 2e 81 09  	lw	t3, 152(sp)
80000a24: 13 0e 5e 00  	addi	t3, t3, 5
80000a28: 93 8d 5d 00  	addi	s11, s11, 5
80000a2c: 03 24 41 09  	lw	s0, 148(sp)
80000a30: 13 04 44 00  	addi	s0, s0, 4
80000a34: 13 0d 4d 00  	addi	s10, s10, 4
80000a38: 13 0c 3c 00  	addi	s8, s8, 3
80000a3c: 23 26 81 0b  	sw	s8, 172(sp)
80000a40: 93 82 22 00  	addi	t0, t0, 2
80000a44: 23 28 51 0a  	sw	t0, 176(sp)
80000a48: 83 25 81 0b  	lw	a1, 184(sp)
80000a4c: 93 85 15 00  	addi	a1, a1, 1
80000a50: 93 82 2c 00  	addi	t0, s9, 2
80000a54: 93 0c 0d 00  	mv	s9, s10
80000a58: 13 8d 0d 00  	mv	s10, s11
80000a5c: 93 0d 07 00  	mv	s11, a4
;     for (i = 0; i < ni; i++)
80000a60: 13 07 50 01  	addi	a4, zero, 21
80000a64: 23 2c b1 0a  	sw	a1, 184(sp)
80000a68: 13 8c 0b 00  	mv	s8, s7
80000a6c: 93 0f 0a 00  	mv	t6, s4
80000a70: 63 84 e5 72  	beq	a1, a4, 0x80001198 <.LBB0_125+0xa2c>
80000a74: 23 20 21 07  	sw	s2, 96(sp)
80000a78: 23 22 31 07  	sw	s3, 100(sp)
80000a7c: 23 24 11 07  	sw	a7, 104(sp)
80000a80: 23 26 61 06  	sw	t1, 108(sp)
80000a84: 23 28 61 07  	sw	s6, 112(sp)
80000a88: 23 2c 71 06  	sw	t2, 120(sp)
80000a8c: 23 2e 81 07  	sw	s8, 124(sp)
80000a90: 23 20 f1 09  	sw	t6, 128(sp)
80000a94: 23 22 a1 08  	sw	a0, 132(sp)
80000a98: 23 24 d1 08  	sw	a3, 136(sp)
80000a9c: 93 05 06 00  	mv	a1, a2
80000aa0: 23 2a b1 07  	sw	s11, 116(sp)
80000aa4: 13 06 00 00  	mv	a2, zero
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000aa8: 33 b7 95 02  	mulhu	a4, a1, s1
80000aac: 13 57 47 00  	srli	a4, a4, 4
80000ab0: 33 07 17 02  	mul	a4, a4, ra
80000ab4: 23 26 b1 08  	sw	a1, 140(sp)
80000ab8: b3 85 e5 40  	sub	a1, a1, a4
80000abc: 23 2e b1 04  	sw	a1, 92(sp)
80000ac0: 83 25 41 0b  	lw	a1, 180(sp)
80000ac4: 33 b7 95 02  	mulhu	a4, a1, s1
80000ac8: 13 57 47 00  	srli	a4, a4, 4
80000acc: 33 07 17 02  	mul	a4, a4, ra
80000ad0: b3 85 e5 40  	sub	a1, a1, a4
80000ad4: 23 2c b1 04  	sw	a1, 88(sp)
80000ad8: 33 37 99 02  	mulhu	a4, s2, s1
80000adc: 13 57 47 00  	srli	a4, a4, 4
80000ae0: 33 07 17 02  	mul	a4, a4, ra
80000ae4: b3 05 e9 40  	sub	a1, s2, a4
80000ae8: 23 2a b1 04  	sw	a1, 84(sp)
80000aec: 33 b7 9a 02  	mulhu	a4, s5, s1
80000af0: 13 57 47 00  	srli	a4, a4, 4
80000af4: 33 07 17 02  	mul	a4, a4, ra
80000af8: b3 85 ea 40  	sub	a1, s5, a4
80000afc: 23 28 b1 04  	sw	a1, 80(sp)
80000b00: 33 b7 9e 02  	mulhu	a4, t4, s1
80000b04: 13 57 47 00  	srli	a4, a4, 4
80000b08: 33 07 17 02  	mul	a4, a4, ra
80000b0c: b3 85 ee 40  	sub	a1, t4, a4
80000b10: 23 26 b1 04  	sw	a1, 76(sp)
80000b14: 33 37 95 02  	mulhu	a4, a0, s1
80000b18: 13 57 47 00  	srli	a4, a4, 4
80000b1c: 33 07 17 02  	mul	a4, a4, ra
80000b20: 33 05 e5 40  	sub	a0, a0, a4
80000b24: 23 24 a1 04  	sw	a0, 72(sp)
80000b28: 33 b7 96 02  	mulhu	a4, a3, s1
80000b2c: 13 57 47 00  	srli	a4, a4, 4
80000b30: 33 07 17 02  	mul	a4, a4, ra
80000b34: 33 85 e6 40  	sub	a0, a3, a4
80000b38: 23 22 a1 04  	sw	a0, 68(sp)
80000b3c: 33 b7 9f 02  	mulhu	a4, t6, s1
80000b40: 13 57 47 00  	srli	a4, a4, 4
80000b44: 33 07 17 02  	mul	a4, a4, ra
80000b48: 33 85 ef 40  	sub	a0, t6, a4
80000b4c: 23 20 a1 04  	sw	a0, 64(sp)
80000b50: 33 37 9c 02  	mulhu	a4, s8, s1
80000b54: 13 57 47 00  	srli	a4, a4, 4
80000b58: 33 07 17 02  	mul	a4, a4, ra
80000b5c: 33 05 ec 40  	sub	a0, s8, a4
80000b60: 23 2e a1 02  	sw	a0, 60(sp)
80000b64: 33 37 9b 02  	mulhu	a4, s6, s1
80000b68: 13 57 47 00  	srli	a4, a4, 4
80000b6c: 33 07 17 02  	mul	a4, a4, ra
80000b70: 33 05 eb 40  	sub	a0, s6, a4
80000b74: 23 20 a1 02  	sw	a0, 32(sp)
80000b78: 33 b7 93 02  	mulhu	a4, t2, s1
80000b7c: 13 57 47 00  	srli	a4, a4, 4
80000b80: 33 07 17 02  	mul	a4, a4, ra
80000b84: 33 85 e3 40  	sub	a0, t2, a4
80000b88: 23 24 a1 02  	sw	a0, 40(sp)
80000b8c: 33 b7 97 02  	mulhu	a4, a5, s1
80000b90: 13 57 47 00  	srli	a4, a4, 4
80000b94: 33 07 17 02  	mul	a4, a4, ra
80000b98: 33 85 e7 40  	sub	a0, a5, a4
80000b9c: 23 28 a1 02  	sw	a0, 48(sp)
80000ba0: 33 b7 99 02  	mulhu	a4, s3, s1
80000ba4: 13 57 47 00  	srli	a4, a4, 4
80000ba8: 33 07 17 02  	mul	a4, a4, ra
80000bac: b3 86 e9 40  	sub	a3, s3, a4
80000bb0: 33 b7 9d 02  	mulhu	a4, s11, s1
80000bb4: 13 57 47 00  	srli	a4, a4, 4
80000bb8: 33 07 17 02  	mul	a4, a4, ra
80000bbc: 33 05 e3 40  	sub	a0, t1, a4
80000bc0: 33 b7 98 02  	mulhu	a4, a7, s1
80000bc4: 13 57 47 00  	srli	a4, a4, 4
80000bc8: 33 07 17 02  	mul	a4, a4, ra
80000bcc: b3 83 e8 40  	sub	t2, a7, a4
80000bd0: 33 37 98 02  	mulhu	a4, a6, s1
80000bd4: 13 57 47 00  	srli	a4, a4, 4
80000bd8: 33 07 17 02  	mul	a4, a4, ra
80000bdc: 33 03 e8 40  	sub	t1, a6, a4
80000be0: 33 37 9f 02  	mulhu	a4, t5, s1
80000be4: 13 57 47 00  	srli	a4, a4, 4
80000be8: 33 07 17 02  	mul	a4, a4, ra
80000bec: 33 09 ef 40  	sub	s2, t5, a4
80000bf0: 83 2f 01 0a  	lw	t6, 160(sp)
80000bf4: 33 b7 9f 02  	mulhu	a4, t6, s1
80000bf8: 13 57 47 00  	srli	a4, a4, 4
80000bfc: 33 07 17 02  	mul	a4, a4, ra
80000c00: b3 89 ef 40  	sub	s3, t6, a4
80000c04: 33 37 9d 02  	mulhu	a4, s10, s1
80000c08: 13 57 47 00  	srli	a4, a4, 4
80000c0c: 33 07 17 02  	mul	a4, a4, ra
80000c10: 93 0d 0d 00  	mv	s11, s10
80000c14: 23 2c c1 09  	sw	t3, 152(sp)
80000c18: 33 0a ee 40  	sub	s4, t3, a4
80000c1c: 33 b7 9c 02  	mulhu	a4, s9, s1
80000c20: 13 57 47 00  	srli	a4, a4, 4
80000c24: 33 07 17 02  	mul	a4, a4, ra
80000c28: 13 8e 0a 00  	mv	t3, s5
80000c2c: 13 8d 0c 00  	mv	s10, s9
80000c30: 23 2a 81 08  	sw	s0, 148(sp)
80000c34: b3 0a e4 40  	sub	s5, s0, a4
80000c38: 03 2c c1 0a  	lw	s8, 172(sp)
80000c3c: 33 37 9c 02  	mulhu	a4, s8, s1
80000c40: 13 57 47 00  	srli	a4, a4, 4
80000c44: 33 07 17 02  	mul	a4, a4, ra
80000c48: 33 0b ec 40  	sub	s6, s8, a4
80000c4c: 33 b7 92 02  	mulhu	a4, t0, s1
80000c50: 13 57 47 00  	srli	a4, a4, 4
80000c54: 33 07 17 02  	mul	a4, a4, ra
80000c58: 53 80 31 22  	fmv.d	ft0, ft3
80000c5c: 93 8c 02 00  	mv	s9, t0
80000c60: 83 25 01 0b  	lw	a1, 176(sp)
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000c64: b3 8b e5 40  	sub	s7, a1, a4
80000c68: 93 82 05 00  	mv	t0, a1
80000c6c: 83 28 81 0b  	lw	a7, 184(sp)
80000c70: e3 80 18 be  	beq	a7, ra, 0x80000850 <.LBB0_125+0xe4>
80000c74: 03 26 81 0b  	lw	a2, 184(sp)
80000c78: 6f f0 9f bd  	j	0x80000850 <.LBB0_125+0xe4>
80000c7c: 23 26 01 08  	sw	zero, 140(sp)
80000c80: 13 04 00 00  	mv	s0, zero
80000c84: 93 09 00 00  	mv	s3, zero
80000c88: 93 0a 00 00  	mv	s5, zero
;     for (i = 0; i < ni; i++)
80000c8c: 93 07 07 06  	addi	a5, a4, 96
80000c90: 13 08 10 00  	addi	a6, zero, 1
80000c94: 37 d5 cc cc  	lui	a0, 838861
80000c98: 93 0e d5 cc  	addi	t4, a0, -819
80000c9c: 13 0f 40 01  	addi	t5, zero, 20
80000ca0: b7 a5 a9 3f  	lui	a1, 260762
80000ca4: 13 89 95 99  	addi	s2, a1, -1639
80000ca8: b7 a5 99 99  	lui	a1, 629146
80000cac: 13 8e a5 99  	addi	t3, a1, -1638
80000cb0: 93 00 10 00  	addi	ra, zero, 1
80000cb4: 13 03 10 00  	addi	t1, zero, 1
80000cb8: 13 05 10 00  	addi	a0, zero, 1
80000cbc: 23 24 a1 08  	sw	a0, 136(sp)
80000cc0: 13 0d 10 00  	addi	s10, zero, 1
80000cc4: 93 03 10 00  	addi	t2, zero, 1
80000cc8: 93 0b 10 00  	addi	s7, zero, 1
80000ccc: 93 05 10 00  	addi	a1, zero, 1
80000cd0: 93 0d 10 00  	addi	s11, zero, 1
80000cd4: 93 08 10 00  	addi	a7, zero, 1
80000cd8: 13 07 10 00  	addi	a4, zero, 1
80000cdc: 23 28 e1 0a  	sw	a4, 176(sp)
80000ce0: 13 07 10 00  	addi	a4, zero, 1
80000ce4: 23 26 e1 0a  	sw	a4, 172(sp)
80000ce8: 13 07 10 00  	addi	a4, zero, 1
80000cec: 23 2a e1 0a  	sw	a4, 180(sp)
80000cf0: 13 07 10 00  	addi	a4, zero, 1
80000cf4: 23 20 e1 0a  	sw	a4, 160(sp)
80000cf8: 13 0b 10 00  	addi	s6, zero, 1
80000cfc: 13 07 10 00  	addi	a4, zero, 1
80000d00: 23 2c e1 08  	sw	a4, 152(sp)
80000d04: 93 0c 10 00  	addi	s9, zero, 1
80000d08: 93 02 10 00  	addi	t0, zero, 1
80000d0c: 13 07 10 00  	addi	a4, zero, 1
80000d10: 23 2a e1 08  	sw	a4, 148(sp)
80000d14: 13 05 10 00  	addi	a0, zero, 1
80000d18: 93 04 10 00  	addi	s1, zero, 1
80000d1c: 13 0a 10 00  	addi	s4, zero, 1
80000d20: 13 07 10 00  	addi	a4, zero, 1
;     for (i = 0; i < ni; i++)
80000d24: 23 2c e1 0a  	sw	a4, 184(sp)
80000d28: 23 2c f1 01  	sw	t6, 24(sp)
80000d2c: 23 2a c1 01  	sw	t3, 20(sp)
80000d30: 6f 00 00 26  	j	0x80000f90 <.LBB0_125+0x824>
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000d34: d3 81 0f d2  	fcvt.d.w	ft3, t6
80000d38: 03 27 01 03  	lw	a4, 48(sp)
80000d3c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000d40: 03 27 01 02  	lw	a4, 32(sp)
80000d44: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000d48: 53 83 0c d2  	fcvt.d.w	ft6, s9
80000d4c: d3 03 09 d2  	fcvt.d.w	ft7, s2
80000d50: 53 85 09 d2  	fcvt.d.w	fa0, s3
80000d54: d3 85 0a d2  	fcvt.d.w	fa1, s5
80000d58: 53 06 0b d2  	fcvt.d.w	fa2, s6
80000d5c: d3 86 0b d2  	fcvt.d.w	fa3, s7
80000d60: 53 07 0d d2  	fcvt.d.w	fa4, s10
80000d64: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000d68: 53 88 00 d2  	fcvt.d.w	fa6, ra
80000d6c: d3 08 0c d2  	fcvt.d.w	fa7, s8
80000d70: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80000d74: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000d78: 53 8f 08 d2  	fcvt.d.w	ft10, a7
80000d7c: 03 25 81 02  	lw	a0, 40(sp)
80000d80: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000d84: 03 25 01 04  	lw	a0, 64(sp)
80000d88: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000d8c: 03 25 c1 03  	lw	a0, 60(sp)
80000d90: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000d94: 03 25 41 04  	lw	a0, 68(sp)
80000d98: 53 09 05 d2  	fcvt.d.w	fs2, a0
80000d9c: 83 2f 81 01  	lw	t6, 24(sp)
80000da0: 87 b9 0f 00  	fld	fs3, 0(t6)
80000da4: 03 25 81 04  	lw	a0, 72(sp)
80000da8: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80000dac: 03 25 c1 04  	lw	a0, 76(sp)
80000db0: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80000db4: 03 25 01 05  	lw	a0, 80(sp)
80000db8: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80000dbc: d3 f1 31 13  	fmul.d	ft3, ft3, fs3
80000dc0: 27 b4 37 fa  	fsd	ft3, -88(a5)
80000dc4: d3 71 32 13  	fmul.d	ft3, ft4, fs3
80000dc8: 27 b8 37 fa  	fsd	ft3, -80(a5)
80000dcc: d3 f1 32 13  	fmul.d	ft3, ft5, fs3
80000dd0: 27 bc 37 fa  	fsd	ft3, -72(a5)
80000dd4: d3 71 33 13  	fmul.d	ft3, ft6, fs3
80000dd8: 27 b0 37 fc  	fsd	ft3, -64(a5)
80000ddc: d3 f1 33 13  	fmul.d	ft3, ft7, fs3
80000de0: 27 b4 37 fc  	fsd	ft3, -56(a5)
80000de4: d3 71 35 13  	fmul.d	ft3, fa0, fs3
80000de8: 27 b8 37 fc  	fsd	ft3, -48(a5)
80000dec: d3 f1 35 13  	fmul.d	ft3, fa1, fs3
80000df0: 27 bc 37 fc  	fsd	ft3, -40(a5)
80000df4: d3 71 36 13  	fmul.d	ft3, fa2, fs3
80000df8: 27 b0 37 fe  	fsd	ft3, -32(a5)
80000dfc: d3 f1 36 13  	fmul.d	ft3, fa3, fs3
80000e00: 27 b4 37 fe  	fsd	ft3, -24(a5)
80000e04: d3 71 37 13  	fmul.d	ft3, fa4, fs3
80000e08: 27 b8 37 fe  	fsd	ft3, -16(a5)
80000e0c: d3 f1 37 13  	fmul.d	ft3, fa5, fs3
80000e10: 27 bc 37 fe  	fsd	ft3, -8(a5)
80000e14: d3 71 38 13  	fmul.d	ft3, fa6, fs3
80000e18: 27 b0 37 00  	fsd	ft3, 0(a5)
80000e1c: d3 f1 38 13  	fmul.d	ft3, fa7, fs3
80000e20: 27 b4 37 00  	fsd	ft3, 8(a5)
80000e24: d3 71 3e 13  	fmul.d	ft3, ft8, fs3
80000e28: 27 b8 37 00  	fsd	ft3, 16(a5)
80000e2c: d3 f1 3e 13  	fmul.d	ft3, ft9, fs3
80000e30: 27 bc 37 00  	fsd	ft3, 24(a5)
80000e34: d3 71 3f 13  	fmul.d	ft3, ft10, fs3
80000e38: 27 b0 37 02  	fsd	ft3, 32(a5)
80000e3c: d3 f1 3f 13  	fmul.d	ft3, ft11, fs3
80000e40: 27 b4 37 02  	fsd	ft3, 40(a5)
80000e44: d3 71 34 13  	fmul.d	ft3, fs0, fs3
80000e48: 27 b8 37 02  	fsd	ft3, 48(a5)
80000e4c: d3 f1 34 13  	fmul.d	ft3, fs1, fs3
80000e50: 27 bc 37 02  	fsd	ft3, 56(a5)
80000e54: d3 71 39 13  	fmul.d	ft3, fs2, fs3
80000e58: 27 b4 37 04  	fsd	ft3, 72(a5)
80000e5c: d3 71 3a 13  	fmul.d	ft3, fs4, fs3
80000e60: 27 b8 37 04  	fsd	ft3, 80(a5)
80000e64: d3 f1 3a 13  	fmul.d	ft3, fs5, fs3
80000e68: 27 bc 37 04  	fsd	ft3, 88(a5)
80000e6c: 23 a2 97 04  	sw	s1, 68(a5)
80000e70: 03 2e 41 01  	lw	t3, 20(sp)
80000e74: 23 a0 c7 05  	sw	t3, 64(a5)
80000e78: d3 71 3b 13  	fmul.d	ft3, fs6, fs3
80000e7c: 27 b0 37 06  	fsd	ft3, 96(a5)
80000e80: 03 2c 81 0b  	lw	s8, 184(sp)
80000e84: 13 0c 1c 00  	addi	s8, s8, 1
80000e88: 93 0b 86 01  	addi	s7, a2, 24
80000e8c: 13 8d 04 00  	mv	s10, s1
80000e90: 83 24 41 08  	lw	s1, 132(sp)
80000e94: 93 84 74 01  	addi	s1, s1, 23
80000e98: 03 25 01 08  	lw	a0, 128(sp)
80000e9c: 13 05 65 01  	addi	a0, a0, 22
80000ea0: 03 27 41 09  	lw	a4, 148(sp)
80000ea4: 13 07 27 00  	addi	a4, a4, 2
80000ea8: 23 2a e1 08  	sw	a4, 148(sp)
80000eac: 03 29 c1 07  	lw	s2, 124(sp)
80000eb0: 93 0a 29 00  	addi	s5, s2, 2
80000eb4: 93 00 54 01  	addi	ra, s0, 21
80000eb8: 83 2c 41 05  	lw	s9, 84(sp)
80000ebc: 93 8c 3c 00  	addi	s9, s9, 3
80000ec0: 03 27 81 09  	lw	a4, 152(sp)
80000ec4: 13 07 47 00  	addi	a4, a4, 4
80000ec8: 23 2c e1 08  	sw	a4, 152(sp)
80000ecc: 83 29 81 07  	lw	s3, 120(sp)
80000ed0: 93 89 49 00  	addi	s3, s3, 4
80000ed4: 03 2b 41 07  	lw	s6, 116(sp)
80000ed8: 13 0b 3b 01  	addi	s6, s6, 19
80000edc: 03 27 01 0a  	lw	a4, 160(sp)
80000ee0: 13 07 57 00  	addi	a4, a4, 5
80000ee4: 23 20 e1 0a  	sw	a4, 160(sp)
80000ee8: 03 24 c1 06  	lw	s0, 108(sp)
80000eec: 13 04 54 00  	addi	s0, s0, 5
80000ef0: 03 27 41 0b  	lw	a4, 180(sp)
80000ef4: 13 07 27 01  	addi	a4, a4, 18
80000ef8: 23 2a e1 0a  	sw	a4, 180(sp)
80000efc: 03 27 c1 0a  	lw	a4, 172(sp)
80000f00: 13 07 67 00  	addi	a4, a4, 6
80000f04: 23 26 e1 0a  	sw	a4, 172(sp)
80000f08: 03 27 01 0b  	lw	a4, 176(sp)
80000f0c: 13 07 17 01  	addi	a4, a4, 17
80000f10: 23 28 e1 0a  	sw	a4, 176(sp)
80000f14: 83 28 c1 05  	lw	a7, 92(sp)
80000f18: 93 88 78 00  	addi	a7, a7, 7
80000f1c: 83 2d 81 05  	lw	s11, 88(sp)
80000f20: 93 8d 0d 01  	addi	s11, s11, 16
80000f24: 83 25 41 06  	lw	a1, 100(sp)
80000f28: 93 85 85 00  	addi	a1, a1, 8
80000f2c: 83 26 01 07  	lw	a3, 112(sp)
80000f30: 93 86 f6 00  	addi	a3, a3, 15
80000f34: 93 83 93 00  	addi	t2, t2, 9
80000f38: 03 26 81 06  	lw	a2, 104(sp)
80000f3c: 13 06 e6 00  	addi	a2, a2, 14
80000f40: 13 0a aa 00  	addi	s4, s4, 10
80000f44: 23 24 41 09  	sw	s4, 136(sp)
80000f48: 93 82 a2 00  	addi	t0, t0, 10
80000f4c: 23 26 51 08  	sw	t0, 140(sp)
80000f50: 03 2a 01 06  	lw	s4, 96(sp)
80000f54: 13 0a da 00  	addi	s4, s4, 13
80000f58: 93 87 87 0c  	addi	a5, a5, 200
80000f5c: 13 03 c3 00  	addi	t1, t1, 12
80000f60: 13 08 b8 00  	addi	a6, a6, 11
80000f64: 13 09 0d 00  	mv	s2, s10
;     for (i = 0; i < ni; i++)
80000f68: 13 07 50 01  	addi	a4, zero, 21
80000f6c: 13 0d 03 00  	mv	s10, t1
80000f70: 13 03 0a 00  	mv	t1, s4
80000f74: 93 82 00 00  	mv	t0, ra
80000f78: 93 00 0d 00  	mv	ra, s10
80000f7c: 13 8a 0b 00  	mv	s4, s7
80000f80: 13 0d 06 00  	mv	s10, a2
80000f84: 93 8b 06 00  	mv	s7, a3
80000f88: 23 2c 81 0b  	sw	s8, 184(sp)
80000f8c: 63 08 ec 20  	beq	s8, a4, 0x8000119c <.LBB0_125+0xa30>
80000f90: 23 20 61 06  	sw	t1, 96(sp)
80000f94: 23 22 b1 06  	sw	a1, 100(sp)
80000f98: 23 24 a1 07  	sw	s10, 104(sp)
80000f9c: 23 26 81 06  	sw	s0, 108(sp)
80000fa0: 23 28 71 07  	sw	s7, 112(sp)
80000fa4: 23 2a 61 07  	sw	s6, 116(sp)
80000fa8: 23 2c 31 07  	sw	s3, 120(sp)
80000fac: 23 2e 51 07  	sw	s5, 124(sp)
80000fb0: 23 20 a1 08  	sw	a0, 128(sp)
80000fb4: 23 22 91 08  	sw	s1, 132(sp)
80000fb8: 93 0f 00 00  	mv	t6, zero
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000fbc: b3 36 da 03  	mulhu	a3, s4, t4
80000fc0: 93 d6 46 00  	srli	a3, a3, 4
80000fc4: b3 86 e6 03  	mul	a3, a3, t5
80000fc8: 33 06 da 40  	sub	a2, s4, a3
80000fcc: 23 28 c1 04  	sw	a2, 80(sp)
80000fd0: b3 b6 d4 03  	mulhu	a3, s1, t4
80000fd4: 93 d6 46 00  	srli	a3, a3, 4
80000fd8: b3 86 e6 03  	mul	a3, a3, t5
80000fdc: 33 86 d4 40  	sub	a2, s1, a3
80000fe0: 23 26 c1 04  	sw	a2, 76(sp)
80000fe4: b3 36 d5 03  	mulhu	a3, a0, t4
80000fe8: 93 d6 46 00  	srli	a3, a3, 4
80000fec: b3 86 e6 03  	mul	a3, a3, t5
80000ff0: 33 05 d5 40  	sub	a0, a0, a3
80000ff4: 23 24 a1 04  	sw	a0, 72(sp)
80000ff8: b3 b6 da 03  	mulhu	a3, s5, t4
80000ffc: 93 d6 46 00  	srli	a3, a3, 4
80001000: b3 86 e6 03  	mul	a3, a3, t5
80001004: 03 27 41 09  	lw	a4, 148(sp)
80001008: 33 05 d7 40  	sub	a0, a4, a3
8000100c: 23 28 a1 02  	sw	a0, 48(sp)
80001010: b3 b6 d2 03  	mulhu	a3, t0, t4
80001014: 93 d6 46 00  	srli	a3, a3, 4
80001018: b3 86 e6 03  	mul	a3, a3, t5
8000101c: 33 85 d2 40  	sub	a0, t0, a3
80001020: 23 22 a1 04  	sw	a0, 68(sp)
80001024: b3 b6 dc 03  	mulhu	a3, s9, t4
80001028: 93 d6 46 00  	srli	a3, a3, 4
8000102c: b3 86 e6 03  	mul	a3, a3, t5
80001030: 23 2a 91 05  	sw	s9, 84(sp)
80001034: 33 85 dc 40  	sub	a0, s9, a3
80001038: 23 20 a1 02  	sw	a0, 32(sp)
8000103c: b3 b6 d9 03  	mulhu	a3, s3, t4
80001040: 93 d6 46 00  	srli	a3, a3, 4
80001044: b3 86 e6 03  	mul	a3, a3, t5
80001048: 13 05 09 00  	mv	a0, s2
8000104c: 03 27 81 09  	lw	a4, 152(sp)
80001050: b3 0c d7 40  	sub	s9, a4, a3
80001054: b3 36 db 03  	mulhu	a3, s6, t4
80001058: 93 d6 46 00  	srli	a3, a3, 4
8000105c: b3 86 e6 03  	mul	a3, a3, t5
80001060: 33 06 db 40  	sub	a2, s6, a3
80001064: 23 2e c1 02  	sw	a2, 60(sp)
80001068: b3 36 d4 03  	mulhu	a3, s0, t4
8000106c: 93 d6 46 00  	srli	a3, a3, 4
80001070: b3 86 e6 03  	mul	a3, a3, t5
80001074: 83 24 01 0a  	lw	s1, 160(sp)
80001078: 33 89 d4 40  	sub	s2, s1, a3
8000107c: 83 24 41 0b  	lw	s1, 180(sp)
80001080: b3 b6 d4 03  	mulhu	a3, s1, t4
80001084: 93 d6 46 00  	srli	a3, a3, 4
80001088: b3 86 e6 03  	mul	a3, a3, t5
8000108c: 33 86 d4 40  	sub	a2, s1, a3
80001090: 23 20 c1 04  	sw	a2, 64(sp)
80001094: 83 24 c1 0a  	lw	s1, 172(sp)
80001098: b3 b6 d4 03  	mulhu	a3, s1, t4
8000109c: 93 d6 46 00  	srli	a3, a3, 4
800010a0: b3 86 e6 03  	mul	a3, a3, t5
800010a4: b3 89 d4 40  	sub	s3, s1, a3
800010a8: 83 24 01 0b  	lw	s1, 176(sp)
800010ac: b3 b6 d4 03  	mulhu	a3, s1, t4
800010b0: 93 d6 46 00  	srli	a3, a3, 4
800010b4: b3 86 e6 03  	mul	a3, a3, t5
800010b8: 33 86 d4 40  	sub	a2, s1, a3
800010bc: 23 24 c1 02  	sw	a2, 40(sp)
800010c0: 93 04 05 00  	mv	s1, a0
800010c4: b3 b6 d8 03  	mulhu	a3, a7, t4
800010c8: 93 d6 46 00  	srli	a3, a3, 4
800010cc: b3 86 e6 03  	mul	a3, a3, t5
800010d0: 23 2e 11 05  	sw	a7, 92(sp)
800010d4: b3 8a d8 40  	sub	s5, a7, a3
800010d8: b3 b6 dd 03  	mulhu	a3, s11, t4
800010dc: 93 d6 46 00  	srli	a3, a3, 4
800010e0: b3 86 e6 03  	mul	a3, a3, t5
800010e4: 23 2c b1 05  	sw	s11, 88(sp)
800010e8: b3 88 dd 40  	sub	a7, s11, a3
800010ec: b3 b6 d5 03  	mulhu	a3, a1, t4
800010f0: 93 d6 46 00  	srli	a3, a3, 4
800010f4: b3 86 e6 03  	mul	a3, a3, t5
800010f8: 33 8b d5 40  	sub	s6, a1, a3
800010fc: b3 b6 db 03  	mulhu	a3, s7, t4
80001100: 93 d6 46 00  	srli	a3, a3, 4
80001104: b3 86 e6 03  	mul	a3, a3, t5
80001108: 33 85 db 40  	sub	a0, s7, a3
8000110c: b3 b6 d3 03  	mulhu	a3, t2, t4
80001110: 93 d6 46 00  	srli	a3, a3, 4
80001114: b3 86 e6 03  	mul	a3, a3, t5
80001118: b3 8b d3 40  	sub	s7, t2, a3
8000111c: b3 36 dd 03  	mulhu	a3, s10, t4
80001120: 93 d6 46 00  	srli	a3, a3, 4
80001124: b3 86 e6 03  	mul	a3, a3, t5
80001128: 13 84 02 00  	mv	s0, t0
8000112c: 13 06 0a 00  	mv	a2, s4
80001130: b3 05 dd 40  	sub	a1, s10, a3
80001134: 83 22 c1 08  	lw	t0, 140(sp)
80001138: b3 b6 d2 03  	mulhu	a3, t0, t4
8000113c: 93 d6 46 00  	srli	a3, a3, 4
80001140: b3 86 e6 03  	mul	a3, a3, t5
80001144: 03 2a 81 08  	lw	s4, 136(sp)
80001148: 33 0d da 40  	sub	s10, s4, a3
8000114c: b3 36 d3 03  	mulhu	a3, t1, t4
80001150: 93 d6 46 00  	srli	a3, a3, 4
80001154: b3 86 e6 03  	mul	a3, a3, t5
80001158: 33 0c d3 40  	sub	s8, t1, a3
8000115c: b3 b6 d0 03  	mulhu	a3, ra, t4
80001160: 93 d6 46 00  	srli	a3, a3, 4
80001164: b3 86 e6 03  	mul	a3, a3, t5
80001168: 13 83 00 00  	mv	t1, ra
8000116c: b3 80 d0 40  	sub	ra, ra, a3
80001170: b3 36 d8 03  	mulhu	a3, a6, t4
80001174: 93 d6 46 00  	srli	a3, a3, 4
80001178: b3 86 e6 03  	mul	a3, a3, t5
8000117c: b3 06 d8 40  	sub	a3, a6, a3
80001180: 23 a2 97 fa  	sw	s1, -92(a5)
80001184: 23 a0 c7 fb  	sw	t3, -96(a5)
80001188: 03 27 81 0b  	lw	a4, 184(sp)
8000118c: e3 04 e7 bb  	beq	a4, t5, 0x80000d34 <.LBB0_125+0x5c8>
80001190: 83 2f 81 0b  	lw	t6, 184(sp)
80001194: 6f f0 1f ba  	j	0x80000d34 <.LBB0_125+0x5c8>
80001198: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000119c: 03 25 01 01  	lw	a0, 16(sp)
;     for (i = 0; i < ni; i++)
800011a0: 83 25 81 00  	lw	a1, 8(sp)
800011a4: b3 85 a5 00  	add	a1, a1, a0
800011a8: 93 86 05 c1  	addi	a3, a1, -1008
800011ac: 93 55 45 01  	srli	a1, a0, 20
800011b0: b3 35 b0 00  	snez	a1, a1
800011b4: 37 06 12 00  	lui	a2, 288
800011b8: 13 09 16 00  	addi	s2, a2, 1
800011bc: 33 b6 26 01  	sltu	a2, a3, s2
800011c0: b3 f5 c5 00  	and	a1, a1, a2

800011c4 <.LBB0_126>:
800011c4: 17 6c 00 00  	auipc	s8, 6
800011c8: 13 0c cc e9  	addi	s8, s8, -356
800011cc: 23 2a b1 00  	sw	a1, 20(sp)
800011d0: 63 8e 05 56  	beqz	a1, 0x8000174c <.LBB0_127+0x4cc>
800011d4: 23 2c 01 0a  	sw	zero, 184(sp)
800011d8: 23 2a 01 0a  	sw	zero, 180(sp)
800011dc: 93 05 00 00  	mv	a1, zero
800011e0: 13 06 00 00  	mv	a2, zero
800011e4: 23 28 01 0a  	sw	zero, 176(sp)
800011e8: 23 26 01 0a  	sw	zero, 172(sp)
800011ec: 23 20 01 0a  	sw	zero, 160(sp)
800011f0: 23 2c 01 08  	sw	zero, 152(sp)
800011f4: 23 2a 01 08  	sw	zero, 148(sp)
800011f8: 23 26 01 08  	sw	zero, 140(sp)
800011fc: 23 24 01 08  	sw	zero, 136(sp)
80001200: 93 08 0c 00  	mv	a7, s8
80001204: 23 22 01 08  	sw	zero, 132(sp)
80001208: 23 20 01 08  	sw	zero, 128(sp)
8000120c: 23 2e 01 06  	sw	zero, 124(sp)
80001210: 23 2c 01 06  	sw	zero, 120(sp)
80001214: 23 2a 01 06  	sw	zero, 116(sp)
80001218: 23 28 01 06  	sw	zero, 112(sp)
8000121c: 23 26 01 06  	sw	zero, 108(sp)
80001220: 23 24 01 06  	sw	zero, 104(sp)
80001224: 23 22 01 06  	sw	zero, 100(sp)
80001228: 23 20 01 06  	sw	zero, 96(sp)
8000122c: 23 2e 01 04  	sw	zero, 92(sp)
80001230: 23 2c 01 04  	sw	zero, 88(sp)
80001234: 23 2a 01 04  	sw	zero, 84(sp)
80001238: 23 28 01 04  	sw	zero, 80(sp)
8000123c: 23 26 01 04  	sw	zero, 76(sp)
80001240: 23 24 01 04  	sw	zero, 72(sp)
80001244: 23 22 01 04  	sw	zero, 68(sp)
80001248: 13 08 d0 01  	addi	a6, zero, 29
;     for (i = 0; i < ni; i++)
8000124c: 13 04 00 04  	addi	s0, zero, 64
80001250: ab 20 88 00  	scfgw	a6, s0
80001254: 13 08 80 00  	addi	a6, zero, 8
80001258: 13 04 00 0c  	addi	s0, zero, 192
8000125c: ab 20 88 00  	scfgw	a6, s0
80001260: 93 06 30 01  	addi	a3, zero, 19
80001264: 13 04 00 06  	addi	s0, zero, 96
80001268: ab a0 86 00  	scfgw	a3, s0
8000126c: 13 04 00 0e  	addi	s0, zero, 224
80001270: ab 20 88 00  	scfgw	a6, s0
80001274: 13 04 00 02  	addi	s0, zero, 32
80001278: ab 20 80 00  	scfgw	zero, s0
8000127c: 87 31 0c 00  	fld	ft3, 0(s8)

80001280 <.LBB0_127>:
80001280: 17 64 00 00  	auipc	s0, 6
80001284: 13 04 84 ec  	addi	s0, s0, -312
80001288: 07 32 04 00  	fld	ft4, 0(s0)
;     for (i = 0; i < ni; i++)
8000128c: 27 30 41 02  	fsd	ft4, 32(sp)
80001290: 2b 20 05 3a  	scfgwi	a0, 928
80001294: 73 e4 00 7c  	csrrsi	s0, 1984, 1
80001298: d3 03 00 d2  	fcvt.d.w	ft7, zero
8000129c: 37 94 88 88  	lui	s0, 559241
800012a0: 13 08 94 88  	addi	a6, s0, -1911
800012a4: 27 3c 71 00  	fsd	ft7, 24(sp)
800012a8: 93 03 e0 01  	addi	t2, zero, 30
800012ac: 13 03 20 fe  	addi	t1, zero, -30
800012b0: 23 2e c1 02  	sw	a2, 60(sp)
800012b4: 23 20 b1 04  	sw	a1, 64(sp)
800012b8: 03 25 81 0b  	lw	a0, 184(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800012bc: 33 34 05 03  	mulhu	s0, a0, a6
800012c0: 13 54 44 00  	srli	s0, s0, 4
800012c4: 33 04 74 02  	mul	s0, s0, t2
800012c8: 33 04 85 40  	sub	s0, a0, s0
800012cc: 53 02 04 d2  	fcvt.d.w	ft4, s0
800012d0: 27 38 41 02  	fsd	ft4, 48(sp)
800012d4: 03 25 41 0b  	lw	a0, 180(sp)
800012d8: 33 34 05 03  	mulhu	s0, a0, a6
800012dc: 13 54 44 00  	srli	s0, s0, 4
800012e0: 33 04 74 02  	mul	s0, s0, t2
800012e4: 33 04 85 40  	sub	s0, a0, s0
800012e8: 53 02 04 d2  	fcvt.d.w	ft4, s0
800012ec: 27 34 41 02  	fsd	ft4, 40(sp)
800012f0: 33 b4 05 03  	mulhu	s0, a1, a6
800012f4: 13 54 44 00  	srli	s0, s0, 4
800012f8: 33 04 74 02  	mul	s0, s0, t2
800012fc: 33 84 85 40  	sub	s0, a1, s0
80001300: d3 05 04 d2  	fcvt.d.w	fa1, s0
80001304: 33 34 06 03  	mulhu	s0, a2, a6
80001308: 13 54 44 00  	srli	s0, s0, 4
8000130c: 33 04 74 02  	mul	s0, s0, t2
80001310: 33 04 86 40  	sub	s0, a2, s0
80001314: 53 06 04 d2  	fcvt.d.w	fa2, s0
80001318: 03 2e 01 0b  	lw	t3, 176(sp)
8000131c: 33 34 0e 03  	mulhu	s0, t3, a6
80001320: 13 54 44 00  	srli	s0, s0, 4
80001324: 33 04 74 02  	mul	s0, s0, t2
80001328: 33 04 8e 40  	sub	s0, t3, s0
8000132c: d3 06 04 d2  	fcvt.d.w	fa3, s0
80001330: 83 2e c1 0a  	lw	t4, 172(sp)
80001334: 33 b4 0e 03  	mulhu	s0, t4, a6
80001338: 13 54 44 00  	srli	s0, s0, 4
8000133c: 33 04 74 02  	mul	s0, s0, t2
80001340: 33 84 8e 40  	sub	s0, t4, s0
80001344: 53 07 04 d2  	fcvt.d.w	fa4, s0
80001348: 03 2f 01 0a  	lw	t5, 160(sp)
8000134c: 33 34 0f 03  	mulhu	s0, t5, a6
80001350: 13 54 44 00  	srli	s0, s0, 4
80001354: 33 04 74 02  	mul	s0, s0, t2
80001358: 33 04 8f 40  	sub	s0, t5, s0
8000135c: d3 07 04 d2  	fcvt.d.w	fa5, s0
80001360: 83 2f 81 09  	lw	t6, 152(sp)
80001364: 33 b4 0f 03  	mulhu	s0, t6, a6
80001368: 13 54 44 00  	srli	s0, s0, 4
8000136c: 33 04 74 02  	mul	s0, s0, t2
80001370: 33 84 8f 40  	sub	s0, t6, s0
80001374: 53 08 04 d2  	fcvt.d.w	fa6, s0
80001378: 03 29 41 09  	lw	s2, 148(sp)
8000137c: 33 34 09 03  	mulhu	s0, s2, a6
80001380: 13 54 44 00  	srli	s0, s0, 4
80001384: 33 04 74 02  	mul	s0, s0, t2
80001388: 33 04 89 40  	sub	s0, s2, s0
8000138c: d3 08 04 d2  	fcvt.d.w	fa7, s0
80001390: 83 2a c1 08  	lw	s5, 140(sp)
80001394: 33 b4 0a 03  	mulhu	s0, s5, a6
80001398: 13 54 44 00  	srli	s0, s0, 4
8000139c: 33 04 74 02  	mul	s0, s0, t2
800013a0: 33 84 8a 40  	sub	s0, s5, s0
800013a4: 53 0e 04 d2  	fcvt.d.w	ft8, s0
800013a8: 03 2c 81 08  	lw	s8, 136(sp)
800013ac: 33 34 0c 03  	mulhu	s0, s8, a6
800013b0: 13 54 44 00  	srli	s0, s0, 4
800013b4: 33 04 74 02  	mul	s0, s0, t2
800013b8: 33 04 8c 40  	sub	s0, s8, s0
800013bc: d3 0e 04 d2  	fcvt.d.w	ft9, s0
800013c0: 83 2c 41 08  	lw	s9, 132(sp)
800013c4: 33 b4 0c 03  	mulhu	s0, s9, a6
800013c8: 13 54 44 00  	srli	s0, s0, 4
800013cc: 33 04 74 02  	mul	s0, s0, t2
800013d0: 33 84 8c 40  	sub	s0, s9, s0
800013d4: 53 0f 04 d2  	fcvt.d.w	ft10, s0
800013d8: 03 2d 01 08  	lw	s10, 128(sp)
800013dc: 33 34 0d 03  	mulhu	s0, s10, a6
800013e0: 13 54 44 00  	srli	s0, s0, 4
800013e4: 33 04 74 02  	mul	s0, s0, t2
800013e8: 33 04 8d 40  	sub	s0, s10, s0
800013ec: d3 0f 04 d2  	fcvt.d.w	ft11, s0
800013f0: 83 20 c1 07  	lw	ra, 124(sp)
800013f4: 33 b4 00 03  	mulhu	s0, ra, a6
800013f8: 13 54 44 00  	srli	s0, s0, 4
800013fc: 33 04 74 02  	mul	s0, s0, t2
80001400: 33 84 80 40  	sub	s0, ra, s0
80001404: 53 04 04 d2  	fcvt.d.w	fs0, s0
80001408: 83 22 81 07  	lw	t0, 120(sp)
8000140c: 33 b4 02 03  	mulhu	s0, t0, a6
80001410: 13 54 44 00  	srli	s0, s0, 4
80001414: 33 04 74 02  	mul	s0, s0, t2
80001418: 33 84 82 40  	sub	s0, t0, s0
8000141c: d3 04 04 d2  	fcvt.d.w	fs1, s0
80001420: 03 25 41 07  	lw	a0, 116(sp)
80001424: 33 34 05 03  	mulhu	s0, a0, a6
80001428: 13 54 44 00  	srli	s0, s0, 4
8000142c: 33 04 74 02  	mul	s0, s0, t2
80001430: 33 04 85 40  	sub	s0, a0, s0
80001434: 53 09 04 d2  	fcvt.d.w	fs2, s0
80001438: 83 25 01 07  	lw	a1, 112(sp)
8000143c: 33 b4 05 03  	mulhu	s0, a1, a6
80001440: 13 54 44 00  	srli	s0, s0, 4
80001444: 33 04 74 02  	mul	s0, s0, t2
80001448: 33 84 85 40  	sub	s0, a1, s0
8000144c: d3 09 04 d2  	fcvt.d.w	fs3, s0
80001450: 03 26 c1 06  	lw	a2, 108(sp)
80001454: 33 34 06 03  	mulhu	s0, a2, a6
80001458: 13 54 44 00  	srli	s0, s0, 4
8000145c: 33 04 74 02  	mul	s0, s0, t2
80001460: 33 04 86 40  	sub	s0, a2, s0
80001464: 53 0a 04 d2  	fcvt.d.w	fs4, s0
80001468: 83 26 81 06  	lw	a3, 104(sp)
8000146c: 33 b4 06 03  	mulhu	s0, a3, a6
80001470: 13 54 44 00  	srli	s0, s0, 4
80001474: 33 04 74 02  	mul	s0, s0, t2
80001478: 33 84 86 40  	sub	s0, a3, s0
8000147c: d3 0a 04 d2  	fcvt.d.w	fs5, s0
80001480: 03 27 41 06  	lw	a4, 100(sp)
80001484: 33 34 07 03  	mulhu	s0, a4, a6
80001488: 13 54 44 00  	srli	s0, s0, 4
8000148c: 33 04 74 02  	mul	s0, s0, t2
80001490: 33 04 87 40  	sub	s0, a4, s0
80001494: 53 0b 04 d2  	fcvt.d.w	fs6, s0
80001498: 83 27 01 06  	lw	a5, 96(sp)
8000149c: 33 b4 07 03  	mulhu	s0, a5, a6
800014a0: 13 54 44 00  	srli	s0, s0, 4
800014a4: 33 04 74 02  	mul	s0, s0, t2
800014a8: 33 84 87 40  	sub	s0, a5, s0
800014ac: d3 0b 04 d2  	fcvt.d.w	fs7, s0
800014b0: 83 24 c1 05  	lw	s1, 92(sp)
800014b4: 33 b4 04 03  	mulhu	s0, s1, a6
800014b8: 13 54 44 00  	srli	s0, s0, 4
800014bc: 33 04 74 02  	mul	s0, s0, t2
800014c0: 33 84 84 40  	sub	s0, s1, s0
800014c4: 53 0c 04 d2  	fcvt.d.w	fs8, s0
800014c8: 03 2a 81 05  	lw	s4, 88(sp)
800014cc: 33 34 0a 03  	mulhu	s0, s4, a6
800014d0: 13 54 44 00  	srli	s0, s0, 4
800014d4: 33 04 74 02  	mul	s0, s0, t2
800014d8: 33 04 8a 40  	sub	s0, s4, s0
800014dc: d3 0c 04 d2  	fcvt.d.w	fs9, s0
800014e0: 03 2b 41 05  	lw	s6, 84(sp)
800014e4: 33 34 0b 03  	mulhu	s0, s6, a6
800014e8: 13 54 44 00  	srli	s0, s0, 4
800014ec: 33 04 74 02  	mul	s0, s0, t2
800014f0: 33 04 8b 40  	sub	s0, s6, s0
800014f4: 53 0d 04 d2  	fcvt.d.w	fs10, s0
800014f8: 83 2b 01 05  	lw	s7, 80(sp)
800014fc: 33 b4 0b 03  	mulhu	s0, s7, a6
80001500: 13 54 44 00  	srli	s0, s0, 4
80001504: 33 04 74 02  	mul	s0, s0, t2
80001508: 33 84 8b 40  	sub	s0, s7, s0
8000150c: d3 0d 04 d2  	fcvt.d.w	fs11, s0
80001510: 83 29 c1 04  	lw	s3, 76(sp)
80001514: 33 b4 09 03  	mulhu	s0, s3, a6
80001518: 13 54 44 00  	srli	s0, s0, 4
8000151c: 33 04 74 02  	mul	s0, s0, t2
80001520: 33 84 89 40  	sub	s0, s3, s0
80001524: 53 02 04 d2  	fcvt.d.w	ft4, s0
80001528: 83 2d 81 04  	lw	s11, 72(sp)
8000152c: 33 b4 0d 03  	mulhu	s0, s11, a6
80001530: 13 54 44 00  	srli	s0, s0, 4
80001534: 33 04 74 02  	mul	s0, s0, t2
80001538: 33 84 8d 40  	sub	s0, s11, s0
8000153c: d3 02 04 d2  	fcvt.d.w	ft5, s0
80001540: 83 28 41 04  	lw	a7, 68(sp)
80001544: 33 b4 08 03  	mulhu	s0, a7, a6
80001548: 13 54 44 00  	srli	s0, s0, 4
8000154c: 33 04 64 02  	mul	s0, s0, t1
80001550: 33 84 88 00  	add	s0, a7, s0
80001554: 53 03 04 d2  	fcvt.d.w	ft6, s0
80001558: 53 f5 33 12  	fmul.d	fa0, ft7, ft3
8000155c: 53 00 a5 22  	fmv.d	ft0, fa0
80001560: 07 35 01 03  	fld	fa0, 48(sp)
80001564: 53 75 35 12  	fmul.d	fa0, fa0, ft3
80001568: 53 00 a5 22  	fmv.d	ft0, fa0
8000156c: 07 35 81 02  	fld	fa0, 40(sp)
80001570: 53 75 35 12  	fmul.d	fa0, fa0, ft3
80001574: 53 00 a5 22  	fmv.d	ft0, fa0
80001578: 53 f5 35 12  	fmul.d	fa0, fa1, ft3
8000157c: 53 00 a5 22  	fmv.d	ft0, fa0
80001580: 53 75 36 12  	fmul.d	fa0, fa2, ft3
80001584: 53 00 a5 22  	fmv.d	ft0, fa0
80001588: 53 f5 36 12  	fmul.d	fa0, fa3, ft3
8000158c: 53 00 a5 22  	fmv.d	ft0, fa0
80001590: 53 75 37 12  	fmul.d	fa0, fa4, ft3
80001594: 53 00 a5 22  	fmv.d	ft0, fa0
80001598: 53 f5 37 12  	fmul.d	fa0, fa5, ft3
8000159c: 53 00 a5 22  	fmv.d	ft0, fa0
800015a0: 53 75 38 12  	fmul.d	fa0, fa6, ft3
800015a4: 53 00 a5 22  	fmv.d	ft0, fa0
800015a8: 53 f5 38 12  	fmul.d	fa0, fa7, ft3
800015ac: 53 00 a5 22  	fmv.d	ft0, fa0
800015b0: 53 75 3e 12  	fmul.d	fa0, ft8, ft3
800015b4: 53 00 a5 22  	fmv.d	ft0, fa0
800015b8: 53 f5 3e 12  	fmul.d	fa0, ft9, ft3
800015bc: 53 00 a5 22  	fmv.d	ft0, fa0
800015c0: 53 75 3f 12  	fmul.d	fa0, ft10, ft3
800015c4: 53 00 a5 22  	fmv.d	ft0, fa0
800015c8: 53 f5 3f 12  	fmul.d	fa0, ft11, ft3
800015cc: 53 00 a5 22  	fmv.d	ft0, fa0
800015d0: 53 75 34 12  	fmul.d	fa0, fs0, ft3
800015d4: 53 00 a5 22  	fmv.d	ft0, fa0
800015d8: 53 f5 34 12  	fmul.d	fa0, fs1, ft3
800015dc: 53 00 a5 22  	fmv.d	ft0, fa0
800015e0: 53 75 39 12  	fmul.d	fa0, fs2, ft3
800015e4: 53 00 a5 22  	fmv.d	ft0, fa0
800015e8: 53 f5 39 12  	fmul.d	fa0, fs3, ft3
800015ec: 53 00 a5 22  	fmv.d	ft0, fa0
800015f0: 53 75 3a 12  	fmul.d	fa0, fs4, ft3
800015f4: 53 00 a5 22  	fmv.d	ft0, fa0
800015f8: 53 f5 3a 12  	fmul.d	fa0, fs5, ft3
800015fc: 53 00 a5 22  	fmv.d	ft0, fa0
80001600: 53 75 3b 12  	fmul.d	fa0, fs6, ft3
80001604: 53 00 a5 22  	fmv.d	ft0, fa0
80001608: 53 f5 3b 12  	fmul.d	fa0, fs7, ft3
8000160c: 53 00 a5 22  	fmv.d	ft0, fa0
80001610: 53 75 3c 12  	fmul.d	fa0, fs8, ft3
80001614: 53 00 a5 22  	fmv.d	ft0, fa0
80001618: 53 f5 3c 12  	fmul.d	fa0, fs9, ft3
8000161c: 53 00 a5 22  	fmv.d	ft0, fa0
80001620: 53 75 3d 12  	fmul.d	fa0, fs10, ft3
80001624: 53 00 a5 22  	fmv.d	ft0, fa0
80001628: 53 f5 3d 12  	fmul.d	fa0, fs11, ft3
8000162c: 53 00 a5 22  	fmv.d	ft0, fa0
80001630: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001634: 53 00 42 22  	fmv.d	ft0, ft4
80001638: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
8000163c: 53 00 42 22  	fmv.d	ft0, ft4
80001640: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80001644: 53 00 42 22  	fmv.d	ft0, ft4
80001648: 07 32 81 01  	fld	ft4, 24(sp)
8000164c: 53 00 42 22  	fmv.d	ft0, ft4
80001650: 07 32 01 02  	fld	ft4, 32(sp)
80001654: d3 f3 43 02  	fadd.d	ft7, ft7, ft4
;     for (i = 0; i < ni; i++)
80001658: 93 88 d8 01  	addi	a7, a7, 29
8000165c: 93 8d cd 01  	addi	s11, s11, 28
80001660: 23 24 b1 05  	sw	s11, 72(sp)
80001664: 93 89 b9 01  	addi	s3, s3, 27
80001668: 23 26 31 05  	sw	s3, 76(sp)
8000166c: 93 8b ab 01  	addi	s7, s7, 26
80001670: 23 28 71 05  	sw	s7, 80(sp)
80001674: 13 0b 9b 01  	addi	s6, s6, 25
80001678: 23 2a 61 05  	sw	s6, 84(sp)
8000167c: 13 0a 8a 01  	addi	s4, s4, 24
80001680: 23 2c 41 05  	sw	s4, 88(sp)
80001684: 93 84 74 01  	addi	s1, s1, 23
80001688: 23 2e 91 04  	sw	s1, 92(sp)
8000168c: 93 87 67 01  	addi	a5, a5, 22
80001690: 23 20 f1 06  	sw	a5, 96(sp)
80001694: 13 07 57 01  	addi	a4, a4, 21
80001698: 23 22 e1 06  	sw	a4, 100(sp)
8000169c: 93 86 46 01  	addi	a3, a3, 20
800016a0: 23 24 d1 06  	sw	a3, 104(sp)
800016a4: 13 06 36 01  	addi	a2, a2, 19
800016a8: 23 26 c1 06  	sw	a2, 108(sp)
800016ac: 03 26 c1 03  	lw	a2, 60(sp)
800016b0: 93 85 25 01  	addi	a1, a1, 18
800016b4: 23 28 b1 06  	sw	a1, 112(sp)
800016b8: 83 25 01 04  	lw	a1, 64(sp)
800016bc: 13 05 15 01  	addi	a0, a0, 17
800016c0: 23 2a a1 06  	sw	a0, 116(sp)
800016c4: 93 82 02 01  	addi	t0, t0, 16
800016c8: 23 2c 51 06  	sw	t0, 120(sp)
800016cc: 93 80 f0 00  	addi	ra, ra, 15
800016d0: 23 2e 11 06  	sw	ra, 124(sp)
800016d4: 13 0d ed 00  	addi	s10, s10, 14
800016d8: 23 20 a1 09  	sw	s10, 128(sp)
800016dc: 93 8c dc 00  	addi	s9, s9, 13
800016e0: 23 22 91 09  	sw	s9, 132(sp)
800016e4: 13 0c cc 00  	addi	s8, s8, 12
800016e8: 23 24 81 09  	sw	s8, 136(sp)
800016ec: 93 8a ba 00  	addi	s5, s5, 11
800016f0: 23 26 51 09  	sw	s5, 140(sp)
800016f4: 13 09 a9 00  	addi	s2, s2, 10
800016f8: 23 2a 21 09  	sw	s2, 148(sp)
800016fc: 93 8f 9f 00  	addi	t6, t6, 9
80001700: 23 2c f1 09  	sw	t6, 152(sp)
80001704: 13 0f 8f 00  	addi	t5, t5, 8
80001708: 23 20 e1 0b  	sw	t5, 160(sp)
8000170c: 93 8e 7e 00  	addi	t4, t4, 7
80001710: 23 26 d1 0b  	sw	t4, 172(sp)
80001714: 13 0e 6e 00  	addi	t3, t3, 6
80001718: 23 28 c1 0b  	sw	t3, 176(sp)
8000171c: 13 06 56 00  	addi	a2, a2, 5
80001720: 93 85 45 00  	addi	a1, a1, 4
80001724: 03 25 41 0b  	lw	a0, 180(sp)
80001728: 13 05 35 00  	addi	a0, a0, 3
8000172c: 23 2a a1 0a  	sw	a0, 180(sp)
80001730: 03 25 81 0b  	lw	a0, 184(sp)
80001734: 13 05 25 00  	addi	a0, a0, 2
80001738: 23 2c a1 0a  	sw	a0, 184(sp)
8000173c: 23 22 11 05  	sw	a7, 68(sp)
80001740: 13 05 40 24  	addi	a0, zero, 580
80001744: e3 96 a8 b6  	bne	a7, a0, 0x800012b0 <.LBB0_127+0x30>
80001748: 6f 10 d0 4c  	j	0x80003414 <.LBB0_155+0x12f0>
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000174c: 13 06 00 0f  	addi	a2, zero, 240
80001750: 93 0a 00 0f  	addi	s5, zero, 240
80001754: 93 05 00 00  	mv	a1, zero
80001758: 13 04 05 00  	mv	s0, a0
8000175c: 97 f0 ff ff  	auipc	ra, 1048575
80001760: e7 80 40 8a  	jalr	-1884(ra)
80001764: 37 15 a1 3f  	lui	a0, 260625
80001768: 13 05 15 11  	addi	a0, a0, 273
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000176c: 23 2a a4 0e  	sw	a0, 244(s0)
80001770: 37 15 11 11  	lui	a0, 69905
80001774: 13 06 15 11  	addi	a2, a0, 273
80001778: 23 28 c4 0e  	sw	a2, 240(s0)
8000177c: 37 15 b1 3f  	lui	a0, 260881
80001780: 13 05 15 11  	addi	a0, a0, 273
80001784: 23 2e a4 0e  	sw	a0, 252(s0)
80001788: 23 2c c4 0e  	sw	a2, 248(s0)
8000178c: 37 a5 b9 3f  	lui	a0, 261018
80001790: 13 05 95 99  	addi	a0, a0, -1639
80001794: 23 22 a4 10  	sw	a0, 260(s0)
80001798: 37 a5 99 99  	lui	a0, 629146
8000179c: 13 05 a5 99  	addi	a0, a0, -1638
800017a0: 23 20 a4 10  	sw	a0, 256(s0)
800017a4: b7 15 c1 3f  	lui	a1, 261137
800017a8: 93 85 15 11  	addi	a1, a1, 273
800017ac: 23 26 b4 10  	sw	a1, 268(s0)
800017b0: 23 24 c4 10  	sw	a2, 264(s0)
800017b4: b7 55 c5 3f  	lui	a1, 261205
800017b8: 93 85 55 55  	addi	a1, a1, 1365
800017bc: 23 2a b4 10  	sw	a1, 276(s0)
800017c0: b7 55 55 55  	lui	a1, 349525
800017c4: 93 86 55 55  	addi	a3, a1, 1365
800017c8: 23 28 d4 10  	sw	a3, 272(s0)
800017cc: b7 a5 c9 3f  	lui	a1, 261274
800017d0: 93 85 95 99  	addi	a1, a1, -1639
800017d4: 23 2e b4 10  	sw	a1, 284(s0)
800017d8: 23 2c a4 10  	sw	a0, 280(s0)
800017dc: b7 e5 cd 3f  	lui	a1, 261342
800017e0: 93 85 d5 dd  	addi	a1, a1, -547
800017e4: 23 22 b4 12  	sw	a1, 292(s0)
800017e8: b7 e5 dd dd  	lui	a1, 908766
800017ec: 13 88 e5 dd  	addi	a6, a1, -546
800017f0: 23 20 04 13  	sw	a6, 288(s0)
800017f4: 37 17 d1 3f  	lui	a4, 261393
800017f8: 13 07 17 11  	addi	a4, a4, 273
800017fc: 23 26 e4 12  	sw	a4, 300(s0)
80001800: 23 24 c4 12  	sw	a2, 296(s0)
80001804: 37 37 d3 3f  	lui	a4, 261427
80001808: 13 07 37 33  	addi	a4, a4, 819
8000180c: 23 2a e4 12  	sw	a4, 308(s0)
80001810: 37 37 33 33  	lui	a4, 209715
80001814: 13 07 37 33  	addi	a4, a4, 819
80001818: 23 28 e4 12  	sw	a4, 304(s0)
8000181c: b7 57 d5 3f  	lui	a5, 261461
80001820: 93 87 57 55  	addi	a5, a5, 1365
80001824: 23 2e f4 12  	sw	a5, 316(s0)
80001828: 23 2c d4 12  	sw	a3, 312(s0)
8000182c: b7 77 d7 3f  	lui	a5, 261495
80001830: 93 87 77 77  	addi	a5, a5, 1911
80001834: 23 22 f4 14  	sw	a5, 324(s0)
80001838: b7 77 77 77  	lui	a5, 489335
8000183c: 93 87 77 77  	addi	a5, a5, 1911
80001840: 23 20 f4 14  	sw	a5, 320(s0)
80001844: b7 a4 d9 3f  	lui	s1, 261530
80001848: 93 84 94 99  	addi	s1, s1, -1639
8000184c: 23 26 94 14  	sw	s1, 332(s0)
80001850: 23 24 a4 14  	sw	a0, 328(s0)
80001854: b7 c4 db 3f  	lui	s1, 261564
80001858: 93 84 b4 bb  	addi	s1, s1, -1093
8000185c: 23 2a 94 14  	sw	s1, 340(s0)
80001860: b7 c4 bb bb  	lui	s1, 768956
80001864: 93 84 c4 bb  	addi	s1, s1, -1092
80001868: 23 28 94 14  	sw	s1, 336(s0)
8000186c: b7 e5 dd 3f  	lui	a1, 261598
80001870: 93 85 d5 dd  	addi	a1, a1, -547
80001874: 23 2e b4 14  	sw	a1, 348(s0)
80001878: 23 2c 04 15  	sw	a6, 344(s0)
8000187c: b7 05 e0 3f  	lui	a1, 261632
80001880: 23 22 b4 16  	sw	a1, 356(s0)
80001884: 23 20 04 16  	sw	zero, 352(s0)
80001888: b7 15 e1 3f  	lui	a1, 261649
8000188c: 93 85 15 11  	addi	a1, a1, 273
80001890: 23 26 b4 16  	sw	a1, 364(s0)
80001894: 23 24 c4 16  	sw	a2, 360(s0)
80001898: b7 25 e2 3f  	lui	a1, 261666
8000189c: 93 85 25 22  	addi	a1, a1, 546
800018a0: 23 2a b4 16  	sw	a1, 372(s0)
800018a4: b7 25 22 22  	lui	a1, 139810
800018a8: 93 85 25 22  	addi	a1, a1, 546
800018ac: 23 28 b4 16  	sw	a1, 368(s0)
800018b0: b7 35 e3 3f  	lui	a1, 261683
800018b4: 93 85 35 33  	addi	a1, a1, 819
800018b8: 23 2e b4 16  	sw	a1, 380(s0)
800018bc: 23 2c e4 16  	sw	a4, 376(s0)
800018c0: b7 45 e4 3f  	lui	a1, 261700
800018c4: 93 85 45 44  	addi	a1, a1, 1092
800018c8: 23 22 b4 18  	sw	a1, 388(s0)
800018cc: b7 45 44 44  	lui	a1, 279620
800018d0: 93 85 45 44  	addi	a1, a1, 1092
800018d4: 23 20 b4 18  	sw	a1, 384(s0)
800018d8: b7 55 e5 3f  	lui	a1, 261717
800018dc: 93 85 55 55  	addi	a1, a1, 1365
800018e0: 23 26 b4 18  	sw	a1, 396(s0)
800018e4: 23 24 d4 18  	sw	a3, 392(s0)
800018e8: b7 65 e6 3f  	lui	a1, 261734
800018ec: 93 85 65 66  	addi	a1, a1, 1638
800018f0: 23 2a b4 18  	sw	a1, 404(s0)
800018f4: b7 65 66 66  	lui	a1, 419430
800018f8: 93 85 65 66  	addi	a1, a1, 1638
800018fc: 23 28 b4 18  	sw	a1, 400(s0)
80001900: b7 75 e7 3f  	lui	a1, 261751
80001904: 93 85 75 77  	addi	a1, a1, 1911
80001908: 23 2e b4 18  	sw	a1, 412(s0)
8000190c: 23 2c f4 18  	sw	a5, 408(s0)
80001910: b7 95 e8 3f  	lui	a1, 261769
80001914: 93 85 85 88  	addi	a1, a1, -1912
80001918: 23 22 b4 1a  	sw	a1, 420(s0)
8000191c: b7 97 88 88  	lui	a5, 559241
80001920: 93 85 87 88  	addi	a1, a5, -1912
80001924: 23 20 b4 1a  	sw	a1, 416(s0)
80001928: b7 a5 e9 3f  	lui	a1, 261786
8000192c: 93 85 95 99  	addi	a1, a1, -1639
80001930: 23 26 b4 1a  	sw	a1, 428(s0)
80001934: 23 24 a4 1a  	sw	a0, 424(s0)
80001938: 37 b5 ea 3f  	lui	a0, 261803
8000193c: 13 05 a5 aa  	addi	a0, a0, -1366
80001940: 23 2a a4 1a  	sw	a0, 436(s0)
80001944: 37 b5 aa aa  	lui	a0, 699051
80001948: 13 05 b5 aa  	addi	a0, a0, -1365
8000194c: 23 28 a4 1a  	sw	a0, 432(s0)
80001950: 37 c5 eb 3f  	lui	a0, 261820
80001954: 13 05 b5 bb  	addi	a0, a0, -1093
80001958: 23 2e a4 1a  	sw	a0, 444(s0)
8000195c: 23 2c 94 1a  	sw	s1, 440(s0)
80001960: 37 d5 ec 3f  	lui	a0, 261837
80001964: 13 05 c5 cc  	addi	a0, a0, -820
80001968: 23 22 a4 1c  	sw	a0, 452(s0)
8000196c: 37 d5 cc cc  	lui	a0, 838861
80001970: 13 05 d5 cc  	addi	a0, a0, -819
80001974: 23 20 a4 1c  	sw	a0, 448(s0)
80001978: 37 e5 ed 3f  	lui	a0, 261854
8000197c: 13 05 d5 dd  	addi	a0, a0, -547
80001980: 23 26 a4 1c  	sw	a0, 460(s0)
80001984: 23 24 04 1d  	sw	a6, 456(s0)
80001988: 37 f5 ee 3f  	lui	a0, 261871
8000198c: 13 05 e5 ee  	addi	a0, a0, -274
80001990: 23 2a a4 1c  	sw	a0, 468(s0)
80001994: 37 f5 ee ee  	lui	a0, 978671
80001998: 13 05 f5 ee  	addi	a0, a0, -273
8000199c: 23 28 a4 1c  	sw	a0, 464(s0)
800019a0: 23 2e 04 1c  	sw	zero, 476(s0)
800019a4: 23 2c 04 1c  	sw	zero, 472(s0)
;         for (j = 0; j < nk; j++)
800019a8: 93 05 04 1e  	addi	a1, s0, 480
800019ac: 13 05 84 2c  	addi	a0, s0, 712
800019b0: 13 d6 45 01  	srli	a2, a1, 20
800019b4: 33 36 c0 00  	snez	a2, a2
800019b8: 33 35 25 01  	sltu	a0, a0, s2
800019bc: 33 75 a6 00  	and	a0, a2, a0

800019c0 <.LBB0_128>:
800019c0: 17 57 00 00  	auipc	a4, 5
800019c4: 13 07 87 6a  	addi	a4, a4, 1704

800019c8 <.LBB0_129>:
800019c8: 17 54 00 00  	auipc	s0, 5
800019cc: 13 04 84 6a  	addi	s0, s0, 1704

800019d0 <.LBB0_130>:
800019d0: 97 5e 00 00  	auipc	t4, 5
800019d4: 93 8e 8e 6a  	addi	t4, t4, 1704

800019d8 <.LBB0_131>:
800019d8: 97 5c 00 00  	auipc	s9, 5
800019dc: 93 8c 8c 6a  	addi	s9, s9, 1704

800019e0 <.LBB0_132>:
800019e0: 97 59 00 00  	auipc	s3, 5
800019e4: 93 89 89 6a  	addi	s3, s3, 1704

800019e8 <.LBB0_133>:
800019e8: 17 5a 00 00  	auipc	s4, 5
800019ec: 13 0a 8a 6a  	addi	s4, s4, 1704

800019f0 <.LBB0_134>:
800019f0: 17 56 00 00  	auipc	a2, 5
800019f4: 13 06 86 6a  	addi	a2, a2, 1704

800019f8 <.LBB0_135>:
800019f8: 17 5f 00 00  	auipc	t5, 5
800019fc: 13 0f 8f 6a  	addi	t5, t5, 1704

80001a00 <.LBB0_136>:
80001a00: 17 5b 00 00  	auipc	s6, 5
80001a04: 13 0b 8b 6a  	addi	s6, s6, 1704

80001a08 <.LBB0_137>:
80001a08: 97 5f 00 00  	auipc	t6, 5
80001a0c: 93 8f 8f 6a  	addi	t6, t6, 1704

80001a10 <.LBB0_138>:
80001a10: 97 56 00 00  	auipc	a3, 5
80001a14: 93 86 86 6a  	addi	a3, a3, 1704

80001a18 <.LBB0_139>:
80001a18: 17 58 00 00  	auipc	a6, 5
80001a1c: 13 08 88 6a  	addi	a6, a6, 1704

80001a20 <.LBB0_140>:
80001a20: 17 5e 00 00  	auipc	t3, 5
80001a24: 13 0e 8e 6a  	addi	t3, t3, 1704

80001a28 <.LBB0_141>:
80001a28: 17 53 00 00  	auipc	t1, 5
80001a2c: 13 03 83 6a  	addi	t1, t1, 1704
80001a30: 23 26 e1 0a  	sw	a4, 172(sp)
80001a34: 23 26 81 08  	sw	s0, 140(sp)
80001a38: 63 08 05 0e  	beqz	a0, 0x80001b28 <.LBB0_141+0x100>
80001a3c: 93 08 80 00  	addi	a7, zero, 8
80001a40: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80001a44: 93 07 00 04  	addi	a5, zero, 64
80001a48: 93 04 00 0c  	addi	s1, zero, 192
80001a4c: ab 20 f5 00  	scfgw	a0, a5
80001a50: ab a0 98 00  	scfgw	a7, s1
80001a54: 13 05 00 02  	addi	a0, zero, 32
80001a58: ab 20 a0 00  	scfgw	zero, a0
80001a5c: 87 31 07 00  	fld	ft3, 0(a4)
80001a60: 07 32 04 00  	fld	ft4, 0(s0)
80001a64: 2b a0 05 38  	scfgwi	a1, 896
80001a68: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001a6c: 53 80 31 22  	fmv.d	ft0, ft3
80001a70: 53 00 42 22  	fmv.d	ft0, ft4
80001a74: 87 b2 0e 00  	fld	ft5, 0(t4)
80001a78: 07 b3 0c 00  	fld	ft6, 0(s9)
80001a7c: 87 b3 09 00  	fld	ft7, 0(s3)
80001a80: 07 35 0a 00  	fld	fa0, 0(s4)
80001a84: 53 80 52 22  	fmv.d	ft0, ft5
80001a88: 53 00 63 22  	fmv.d	ft0, ft6
80001a8c: 53 80 73 22  	fmv.d	ft0, ft7
80001a90: 53 00 a5 22  	fmv.d	ft0, fa0
80001a94: 93 02 06 00  	mv	t0, a2
80001a98: 87 35 06 00  	fld	fa1, 0(a2)
80001a9c: 07 36 0f 00  	fld	fa2, 0(t5)
80001aa0: 87 36 0b 00  	fld	fa3, 0(s6)
80001aa4: 07 b7 0f 00  	fld	fa4, 0(t6)
80001aa8: 53 80 b5 22  	fmv.d	ft0, fa1
80001aac: 53 00 c6 22  	fmv.d	ft0, fa2
80001ab0: 53 80 d6 22  	fmv.d	ft0, fa3
80001ab4: 53 00 e7 22  	fmv.d	ft0, fa4
80001ab8: 93 88 06 00  	mv	a7, a3
80001abc: 87 b7 06 00  	fld	fa5, 0(a3)
80001ac0: 07 38 08 00  	fld	fa6, 0(a6)
80001ac4: 87 38 0e 00  	fld	fa7, 0(t3)
80001ac8: 07 3e 03 00  	fld	ft8, 0(t1)
80001acc: 53 80 f7 22  	fmv.d	ft0, fa5
80001ad0: 53 00 08 23  	fmv.d	ft0, fa6
80001ad4: 53 80 18 23  	fmv.d	ft0, fa7
80001ad8: 53 00 ce 23  	fmv.d	ft0, ft8
80001adc: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80001ae0: 53 80 de 23  	fmv.d	ft0, ft9
80001ae4: 53 80 31 22  	fmv.d	ft0, ft3
80001ae8: 53 00 42 22  	fmv.d	ft0, ft4
80001aec: 53 80 52 22  	fmv.d	ft0, ft5
80001af0: 53 00 63 22  	fmv.d	ft0, ft6
80001af4: 53 80 73 22  	fmv.d	ft0, ft7
80001af8: 53 00 a5 22  	fmv.d	ft0, fa0
80001afc: 53 80 b5 22  	fmv.d	ft0, fa1
80001b00: 53 00 c6 22  	fmv.d	ft0, fa2
80001b04: 53 80 d6 22  	fmv.d	ft0, fa3
80001b08: 53 00 e7 22  	fmv.d	ft0, fa4
80001b0c: 53 80 f7 22  	fmv.d	ft0, fa5
80001b10: 53 00 08 23  	fmv.d	ft0, fa6
80001b14: 53 80 18 23  	fmv.d	ft0, fa7
80001b18: 53 00 ce 23  	fmv.d	ft0, ft8
80001b1c: 53 80 de 23  	fmv.d	ft0, ft9
80001b20: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001b24: 6f 00 c0 04  	j	0x80001b70 <.LBB0_141+0x148>
80001b28: 93 88 06 00  	mv	a7, a3
80001b2c: 93 02 06 00  	mv	t0, a2
80001b30: 93 04 00 00  	mv	s1, zero
80001b34: 87 31 0c 00  	fld	ft3, 0(s8)
80001b38: 13 05 20 00  	addi	a0, zero, 2
80001b3c: 93 87 97 88  	addi	a5, a5, -1911
80001b40: 13 07 e0 01  	addi	a4, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001b44: b3 36 f5 02  	mulhu	a3, a0, a5
80001b48: 93 d6 46 00  	srli	a3, a3, 4
80001b4c: b3 86 e6 02  	mul	a3, a3, a4
80001b50: b3 06 d5 40  	sub	a3, a0, a3
80001b54: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001b58: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001b5c: b3 86 95 00  	add	a3, a1, s1
80001b60: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001b64: 93 84 84 00  	addi	s1, s1, 8
80001b68: 13 05 25 00  	addi	a0, a0, 2
80001b6c: e3 9c 54 fd  	bne	s1, s5, 0x80001b44 <.LBB0_141+0x11c>
80001b70: 03 25 01 01  	lw	a0, 16(sp)
;         for (j = 0; j < nk; j++)
80001b74: 93 05 05 2d  	addi	a1, a0, 720
80001b78: 13 05 85 3b  	addi	a0, a0, 952
80001b7c: 93 d6 45 01  	srli	a3, a1, 20
80001b80: b3 36 d0 00  	snez	a3, a3
80001b84: 37 07 12 00  	lui	a4, 288
80001b88: 13 07 17 00  	addi	a4, a4, 1
80001b8c: 33 35 e5 00  	sltu	a0, a0, a4
80001b90: 33 f5 a6 00  	and	a0, a3, a0

80001b94 <.LBB0_142>:
80001b94: 97 50 00 00  	auipc	ra, 5
80001b98: 93 80 40 54  	addi	ra, ra, 1348

80001b9c <.LBB0_143>:
80001b9c: 97 5a 00 00  	auipc	s5, 5
80001ba0: 93 8a 4a 54  	addi	s5, s5, 1348

80001ba4 <.LBB0_144>:
80001ba4: 17 56 00 00  	auipc	a2, 5
80001ba8: 13 06 46 54  	addi	a2, a2, 1348

80001bac <.LBB0_145>:
80001bac: 97 5b 00 00  	auipc	s7, 5
80001bb0: 93 8b 4b 54  	addi	s7, s7, 1348

80001bb4 <.LBB0_146>:
80001bb4: 17 5d 00 00  	auipc	s10, 5
80001bb8: 13 0d 4d 54  	addi	s10, s10, 1348
80001bbc: 63 0a 05 0c  	beqz	a0, 0x80001c90 <.LBB0_146+0xdc>
80001bc0: 13 05 80 00  	addi	a0, zero, 8
80001bc4: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
80001bc8: 13 07 00 04  	addi	a4, zero, 64
80001bcc: 93 07 00 0c  	addi	a5, zero, 192
80001bd0: ab a0 e6 00  	scfgw	a3, a4
80001bd4: ab 20 f5 00  	scfgw	a0, a5
80001bd8: 13 05 00 02  	addi	a0, zero, 32
80001bdc: 87 b1 00 00  	fld	ft3, 0(ra)
80001be0: ab 20 a0 00  	scfgw	zero, a0
80001be4: 2b a0 05 38  	scfgwi	a1, 896
80001be8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001bec: 53 80 31 22  	fmv.d	ft0, ft3
80001bf0: 07 b2 0e 00  	fld	ft4, 0(t4)
80001bf4: 87 b2 0a 00  	fld	ft5, 0(s5)
80001bf8: 07 33 0a 00  	fld	ft6, 0(s4)
80001bfc: 87 33 06 00  	fld	ft7, 0(a2)
80001c00: 53 00 42 22  	fmv.d	ft0, ft4
80001c04: 53 80 52 22  	fmv.d	ft0, ft5
80001c08: 53 00 63 22  	fmv.d	ft0, ft6
80001c0c: 53 80 73 22  	fmv.d	ft0, ft7
80001c10: 07 35 0b 00  	fld	fa0, 0(s6)
80001c14: 87 b5 0b 00  	fld	fa1, 0(s7)
80001c18: 07 36 08 00  	fld	fa2, 0(a6)
80001c1c: 87 36 0d 00  	fld	fa3, 0(s10)
80001c20: 53 00 a5 22  	fmv.d	ft0, fa0
80001c24: 53 80 b5 22  	fmv.d	ft0, fa1
80001c28: 53 00 c6 22  	fmv.d	ft0, fa2
80001c2c: 53 80 d6 22  	fmv.d	ft0, fa3
80001c30: 53 07 00 d2  	fcvt.d.w	fa4, zero
80001c34: 53 00 e7 22  	fmv.d	ft0, fa4
80001c38: 53 80 31 22  	fmv.d	ft0, ft3
80001c3c: 53 00 42 22  	fmv.d	ft0, ft4
80001c40: 53 80 52 22  	fmv.d	ft0, ft5
80001c44: 53 00 63 22  	fmv.d	ft0, ft6
80001c48: 53 80 73 22  	fmv.d	ft0, ft7
80001c4c: 53 00 a5 22  	fmv.d	ft0, fa0
80001c50: 53 80 b5 22  	fmv.d	ft0, fa1
80001c54: 53 00 c6 22  	fmv.d	ft0, fa2
80001c58: 53 80 d6 22  	fmv.d	ft0, fa3
80001c5c: 53 00 e7 22  	fmv.d	ft0, fa4
80001c60: 53 80 31 22  	fmv.d	ft0, ft3
80001c64: 53 00 42 22  	fmv.d	ft0, ft4
80001c68: 53 80 52 22  	fmv.d	ft0, ft5
80001c6c: 53 00 63 22  	fmv.d	ft0, ft6
80001c70: 53 80 73 22  	fmv.d	ft0, ft7
80001c74: 53 00 a5 22  	fmv.d	ft0, fa0
80001c78: 53 80 b5 22  	fmv.d	ft0, fa1
80001c7c: 53 00 c6 22  	fmv.d	ft0, fa2
80001c80: 53 80 d6 22  	fmv.d	ft0, fa3
80001c84: 53 00 e7 22  	fmv.d	ft0, fa4
80001c88: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001c8c: 6f 00 c0 04  	j	0x80001cd8 <.LBB0_146+0x124>
80001c90: 93 07 00 00  	mv	a5, zero
80001c94: 13 04 30 00  	addi	s0, zero, 3
80001c98: 37 95 88 88  	lui	a0, 559241
80001c9c: 87 31 0c 00  	fld	ft3, 0(s8)
80001ca0: 93 04 95 88  	addi	s1, a0, -1911
80001ca4: 13 05 e0 01  	addi	a0, zero, 30
80001ca8: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001cac: b3 36 94 02  	mulhu	a3, s0, s1
80001cb0: 93 d6 46 00  	srli	a3, a3, 4
80001cb4: b3 86 a6 02  	mul	a3, a3, a0
80001cb8: b3 06 d4 40  	sub	a3, s0, a3
80001cbc: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001cc0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001cc4: b3 86 f5 00  	add	a3, a1, a5
80001cc8: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001ccc: 93 87 87 00  	addi	a5, a5, 8
80001cd0: 13 04 34 00  	addi	s0, s0, 3
80001cd4: e3 9c e7 fc  	bne	a5, a4, 0x80001cac <.LBB0_146+0xf8>
80001cd8: 23 2c 11 0a  	sw	ra, 184(sp)
80001cdc: 03 25 01 01  	lw	a0, 16(sp)
;         for (j = 0; j < nk; j++)
80001ce0: 93 05 05 3c  	addi	a1, a0, 960
80001ce4: 13 05 85 4a  	addi	a0, a0, 1192
80001ce8: 93 d6 45 01  	srli	a3, a1, 20
80001cec: b3 36 d0 00  	snez	a3, a3
80001cf0: 37 07 12 00  	lui	a4, 288
80001cf4: 13 07 17 00  	addi	a4, a4, 1
80001cf8: 33 35 e5 00  	sltu	a0, a0, a4
80001cfc: 33 f5 a6 00  	and	a0, a3, a0
80001d00: 63 0a 05 0e  	beqz	a0, 0x80001df4 <.LBB0_146+0x240>
80001d04: 13 09 0c 00  	mv	s2, s8
80001d08: 13 05 80 00  	addi	a0, zero, 8
80001d0c: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
80001d10: 13 07 00 04  	addi	a4, zero, 64
80001d14: 93 07 00 0c  	addi	a5, zero, 192
80001d18: ab a0 e6 00  	scfgw	a3, a4
80001d1c: ab 20 f5 00  	scfgw	a0, a5
80001d20: 13 05 00 02  	addi	a0, zero, 32
80001d24: ab 20 a0 00  	scfgw	zero, a0
80001d28: 03 25 c1 08  	lw	a0, 140(sp)
80001d2c: 87 31 05 00  	fld	ft3, 0(a0)
80001d30: 07 b2 0c 00  	fld	ft4, 0(s9)
;         for (j = 0; j < nk; j++)
80001d34: 2b a0 05 38  	scfgwi	a1, 896
80001d38: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001d3c: 53 80 31 22  	fmv.d	ft0, ft3
80001d40: 53 00 42 22  	fmv.d	ft0, ft4
80001d44: 87 32 0a 00  	fld	ft5, 0(s4)
80001d48: 07 33 0f 00  	fld	ft6, 0(t5)
80001d4c: 87 b3 0f 00  	fld	ft7, 0(t6)
80001d50: 07 35 08 00  	fld	fa0, 0(a6)
80001d54: 53 80 52 22  	fmv.d	ft0, ft5
80001d58: 53 00 63 22  	fmv.d	ft0, ft6
80001d5c: 53 80 73 22  	fmv.d	ft0, ft7
80001d60: 53 00 a5 22  	fmv.d	ft0, fa0
80001d64: 87 35 03 00  	fld	fa1, 0(t1)
80001d68: 03 25 c1 0a  	lw	a0, 172(sp)
80001d6c: 07 36 05 00  	fld	fa2, 0(a0)
80001d70: 87 b6 0e 00  	fld	fa3, 0(t4)
80001d74: 07 b7 09 00  	fld	fa4, 0(s3)
80001d78: 53 80 b5 22  	fmv.d	ft0, fa1
80001d7c: 53 00 c6 22  	fmv.d	ft0, fa2
80001d80: 53 80 d6 22  	fmv.d	ft0, fa3
80001d84: 53 00 e7 22  	fmv.d	ft0, fa4
80001d88: 87 b7 02 00  	fld	fa5, 0(t0)
80001d8c: 07 38 0b 00  	fld	fa6, 0(s6)
80001d90: 87 b8 08 00  	fld	fa7, 0(a7)
80001d94: 07 3e 0e 00  	fld	ft8, 0(t3)
80001d98: 53 80 f7 22  	fmv.d	ft0, fa5
80001d9c: 53 00 08 23  	fmv.d	ft0, fa6
80001da0: 53 80 18 23  	fmv.d	ft0, fa7
80001da4: 53 00 ce 23  	fmv.d	ft0, ft8
80001da8: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80001dac: 53 80 de 23  	fmv.d	ft0, ft9
80001db0: 53 80 31 22  	fmv.d	ft0, ft3
80001db4: 53 00 42 22  	fmv.d	ft0, ft4
80001db8: 53 80 52 22  	fmv.d	ft0, ft5
80001dbc: 53 00 63 22  	fmv.d	ft0, ft6
80001dc0: 53 80 73 22  	fmv.d	ft0, ft7
80001dc4: 53 00 a5 22  	fmv.d	ft0, fa0
80001dc8: 53 80 b5 22  	fmv.d	ft0, fa1
80001dcc: 53 00 c6 22  	fmv.d	ft0, fa2
80001dd0: 53 80 d6 22  	fmv.d	ft0, fa3
80001dd4: 53 00 e7 22  	fmv.d	ft0, fa4
80001dd8: 53 80 f7 22  	fmv.d	ft0, fa5
80001ddc: 53 00 08 23  	fmv.d	ft0, fa6
80001de0: 53 80 18 23  	fmv.d	ft0, fa7
80001de4: 53 00 ce 23  	fmv.d	ft0, ft8
80001de8: 53 80 de 23  	fmv.d	ft0, ft9
80001dec: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001df0: 6f 00 00 05  	j	0x80001e40 <.LBB0_146+0x28c>
80001df4: 93 07 00 00  	mv	a5, zero
80001df8: 13 04 40 00  	addi	s0, zero, 4
80001dfc: 37 95 88 88  	lui	a0, 559241
80001e00: 13 09 0c 00  	mv	s2, s8
80001e04: 87 31 0c 00  	fld	ft3, 0(s8)
80001e08: 93 04 95 88  	addi	s1, a0, -1911
80001e0c: 13 05 e0 01  	addi	a0, zero, 30
80001e10: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001e14: b3 36 94 02  	mulhu	a3, s0, s1
80001e18: 93 d6 46 00  	srli	a3, a3, 4
80001e1c: b3 86 a6 02  	mul	a3, a3, a0
80001e20: b3 06 d4 40  	sub	a3, s0, a3
80001e24: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001e28: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001e2c: b3 86 f5 00  	add	a3, a1, a5
80001e30: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001e34: 93 87 87 00  	addi	a5, a5, 8
80001e38: 13 04 44 00  	addi	s0, s0, 4
80001e3c: e3 9c e7 fc  	bne	a5, a4, 0x80001e14 <.LBB0_146+0x260>
80001e40: 03 25 01 01  	lw	a0, 16(sp)
;         for (j = 0; j < nk; j++)
80001e44: 13 0c 05 4b  	addi	s8, a0, 1200
80001e48: 13 05 85 59  	addi	a0, a0, 1432
80001e4c: 93 55 4c 01  	srli	a1, s8, 20
80001e50: b3 35 b0 00  	snez	a1, a1
80001e54: b7 06 12 00  	lui	a3, 288
80001e58: 93 86 16 00  	addi	a3, a3, 1
80001e5c: 33 35 d5 00  	sltu	a0, a0, a3
80001e60: 33 f5 a5 00  	and	a0, a1, a0

80001e64 <.LBB0_147>:
80001e64: 97 57 00 00  	auipc	a5, 5
80001e68: 93 87 c7 29  	addi	a5, a5, 668

80001e6c <.LBB0_148>:
80001e6c: 17 54 00 00  	auipc	s0, 5
80001e70: 13 04 c4 29  	addi	s0, s0, 668
80001e74: 23 20 a1 0b  	sw	s10, 160(sp)
80001e78: 23 2c f1 08  	sw	a5, 152(sp)
80001e7c: 23 2a 71 09  	sw	s7, 148(sp)
80001e80: 63 08 05 0c  	beqz	a0, 0x80001f50 <.LBB0_148+0xe4>
80001e84: 13 05 80 00  	addi	a0, zero, 8
80001e88: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001e8c: 93 06 00 04  	addi	a3, zero, 64
80001e90: 13 07 00 0c  	addi	a4, zero, 192
80001e94: ab a0 d5 00  	scfgw	a1, a3
80001e98: ab 20 e5 00  	scfgw	a0, a4
80001e9c: 13 05 00 02  	addi	a0, zero, 32
80001ea0: 87 b1 07 00  	fld	ft3, 0(a5)
80001ea4: ab 20 a0 00  	scfgw	zero, a0
80001ea8: 2b 20 0c 38  	scfgwi	s8, 896
80001eac: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001eb0: 53 80 31 22  	fmv.d	ft0, ft3
80001eb4: 93 8d 09 00  	mv	s11, s3
80001eb8: 07 b2 09 00  	fld	ft4, 0(s3)
80001ebc: 93 09 06 00  	mv	s3, a2
80001ec0: 87 32 06 00  	fld	ft5, 0(a2)
80001ec4: 93 8b 0f 00  	mv	s7, t6
80001ec8: 07 b3 0f 00  	fld	ft6, 0(t6)
80001ecc: 87 33 04 00  	fld	ft7, 0(s0)
80001ed0: 53 00 42 22  	fmv.d	ft0, ft4
80001ed4: 53 80 52 22  	fmv.d	ft0, ft5
80001ed8: 53 00 63 22  	fmv.d	ft0, ft6
80001edc: 53 80 73 22  	fmv.d	ft0, ft7
80001ee0: 53 05 00 d2  	fcvt.d.w	fa0, zero
80001ee4: 53 00 a5 22  	fmv.d	ft0, fa0
80001ee8: 53 80 31 22  	fmv.d	ft0, ft3
80001eec: 53 00 42 22  	fmv.d	ft0, ft4
80001ef0: 53 80 52 22  	fmv.d	ft0, ft5
80001ef4: 53 00 63 22  	fmv.d	ft0, ft6
80001ef8: 53 80 73 22  	fmv.d	ft0, ft7
80001efc: 53 00 a5 22  	fmv.d	ft0, fa0
80001f00: 53 80 31 22  	fmv.d	ft0, ft3
80001f04: 53 00 42 22  	fmv.d	ft0, ft4
80001f08: 53 80 52 22  	fmv.d	ft0, ft5
80001f0c: 53 00 63 22  	fmv.d	ft0, ft6
80001f10: 53 80 73 22  	fmv.d	ft0, ft7
80001f14: 53 00 a5 22  	fmv.d	ft0, fa0
80001f18: 53 80 31 22  	fmv.d	ft0, ft3
80001f1c: 53 00 42 22  	fmv.d	ft0, ft4
80001f20: 53 80 52 22  	fmv.d	ft0, ft5
80001f24: 53 00 63 22  	fmv.d	ft0, ft6
80001f28: 53 80 73 22  	fmv.d	ft0, ft7
80001f2c: 53 00 a5 22  	fmv.d	ft0, fa0
80001f30: 53 80 31 22  	fmv.d	ft0, ft3
80001f34: 53 00 42 22  	fmv.d	ft0, ft4
80001f38: 53 80 52 22  	fmv.d	ft0, ft5
80001f3c: 53 00 63 22  	fmv.d	ft0, ft6
80001f40: 53 80 73 22  	fmv.d	ft0, ft7
80001f44: 53 00 a5 22  	fmv.d	ft0, fa0
80001f48: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001f4c: 6f 00 80 05  	j	0x80001fa4 <.LBB0_148+0x138>
80001f50: 93 8d 09 00  	mv	s11, s3
80001f54: 93 8b 0f 00  	mv	s7, t6
80001f58: 93 09 06 00  	mv	s3, a2
80001f5c: 93 05 00 00  	mv	a1, zero
80001f60: 93 07 50 00  	addi	a5, zero, 5
80001f64: 37 95 88 88  	lui	a0, 559241
80001f68: 87 31 09 00  	fld	ft3, 0(s2)
80001f6c: 93 04 95 88  	addi	s1, a0, -1911
80001f70: 13 05 e0 01  	addi	a0, zero, 30
80001f74: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001f78: b3 b6 97 02  	mulhu	a3, a5, s1
80001f7c: 93 d6 46 00  	srli	a3, a3, 4
80001f80: b3 86 a6 02  	mul	a3, a3, a0
80001f84: b3 86 d7 40  	sub	a3, a5, a3
80001f88: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001f8c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001f90: b3 06 bc 00  	add	a3, s8, a1
80001f94: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001f98: 93 85 85 00  	addi	a1, a1, 8
80001f9c: 93 87 57 00  	addi	a5, a5, 5
80001fa0: e3 9c e5 fc  	bne	a1, a4, 0x80001f78 <.LBB0_148+0x10c>
80001fa4: 03 25 01 01  	lw	a0, 16(sp)
;         for (j = 0; j < nk; j++)
80001fa8: 13 0d 05 5a  	addi	s10, a0, 1440
80001fac: 13 05 85 68  	addi	a0, a0, 1672
80001fb0: 93 55 4d 01  	srli	a1, s10, 20
80001fb4: b3 35 b0 00  	snez	a1, a1
80001fb8: b7 06 12 00  	lui	a3, 288
80001fbc: 93 86 16 00  	addi	a3, a3, 1
80001fc0: 33 35 d5 00  	sltu	a0, a0, a3
80001fc4: 33 f5 a5 00  	and	a0, a1, a0
80001fc8: 63 00 05 0c  	beqz	a0, 0x80002088 <.LBB0_148+0x21c>
80001fcc: 13 05 80 00  	addi	a0, zero, 8
80001fd0: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001fd4: 93 06 00 04  	addi	a3, zero, 64
80001fd8: 13 07 00 0c  	addi	a4, zero, 192
80001fdc: ab a0 d5 00  	scfgw	a1, a3
80001fe0: ab 20 e5 00  	scfgw	a0, a4
80001fe4: 13 05 00 02  	addi	a0, zero, 32
80001fe8: ab 20 a0 00  	scfgw	zero, a0
80001fec: 2b 20 0d 38  	scfgwi	s10, 896
80001ff0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001ff4: 87 b1 0e 00  	fld	ft3, 0(t4)
80001ff8: 07 32 0a 00  	fld	ft4, 0(s4)
80001ffc: 87 32 0b 00  	fld	ft5, 0(s6)
80002000: 07 33 08 00  	fld	ft6, 0(a6)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002004: 53 80 31 22  	fmv.d	ft0, ft3
80002008: 53 00 42 22  	fmv.d	ft0, ft4
8000200c: 53 80 52 22  	fmv.d	ft0, ft5
80002010: 53 00 63 22  	fmv.d	ft0, ft6
80002014: d3 03 00 d2  	fcvt.d.w	ft7, zero
80002018: 53 80 73 22  	fmv.d	ft0, ft7
8000201c: 53 80 31 22  	fmv.d	ft0, ft3
80002020: 53 00 42 22  	fmv.d	ft0, ft4
80002024: 53 80 52 22  	fmv.d	ft0, ft5
80002028: 53 00 63 22  	fmv.d	ft0, ft6
8000202c: 53 80 73 22  	fmv.d	ft0, ft7
80002030: 53 80 31 22  	fmv.d	ft0, ft3
80002034: 53 00 42 22  	fmv.d	ft0, ft4
80002038: 53 80 52 22  	fmv.d	ft0, ft5
8000203c: 53 00 63 22  	fmv.d	ft0, ft6
80002040: 53 80 73 22  	fmv.d	ft0, ft7
80002044: 53 80 31 22  	fmv.d	ft0, ft3
80002048: 53 00 42 22  	fmv.d	ft0, ft4
8000204c: 53 80 52 22  	fmv.d	ft0, ft5
80002050: 53 00 63 22  	fmv.d	ft0, ft6
80002054: 53 80 73 22  	fmv.d	ft0, ft7
80002058: 53 80 31 22  	fmv.d	ft0, ft3
8000205c: 53 00 42 22  	fmv.d	ft0, ft4
80002060: 53 80 52 22  	fmv.d	ft0, ft5
80002064: 53 00 63 22  	fmv.d	ft0, ft6
80002068: 53 80 73 22  	fmv.d	ft0, ft7
8000206c: 53 80 31 22  	fmv.d	ft0, ft3
80002070: 53 00 42 22  	fmv.d	ft0, ft4
80002074: 53 80 52 22  	fmv.d	ft0, ft5
80002078: 53 00 63 22  	fmv.d	ft0, ft6
8000207c: 53 80 73 22  	fmv.d	ft0, ft7
80002080: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002084: 6f 00 c0 04  	j	0x800020d0 <.LBB0_148+0x264>
80002088: 93 05 00 00  	mv	a1, zero
8000208c: 93 07 60 00  	addi	a5, zero, 6
80002090: 37 95 88 88  	lui	a0, 559241
80002094: 87 31 09 00  	fld	ft3, 0(s2)
80002098: 93 04 95 88  	addi	s1, a0, -1911
8000209c: 13 05 e0 01  	addi	a0, zero, 30
800020a0: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800020a4: b3 b6 97 02  	mulhu	a3, a5, s1
800020a8: 93 d6 46 00  	srli	a3, a3, 4
800020ac: b3 86 a6 02  	mul	a3, a3, a0
800020b0: b3 86 d7 40  	sub	a3, a5, a3
800020b4: 53 82 06 d2  	fcvt.d.w	ft4, a3
800020b8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800020bc: b3 06 bd 00  	add	a3, s10, a1
800020c0: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
800020c4: 93 85 85 00  	addi	a1, a1, 8
800020c8: 93 87 67 00  	addi	a5, a5, 6
800020cc: e3 9c e5 fc  	bne	a1, a4, 0x800020a4 <.LBB0_148+0x238>
800020d0: 03 25 01 01  	lw	a0, 16(sp)
;         for (j = 0; j < nk; j++)
800020d4: 93 0f 05 69  	addi	t6, a0, 1680
800020d8: 13 05 85 77  	addi	a0, a0, 1912
800020dc: 93 d5 4f 01  	srli	a1, t6, 20
800020e0: b3 35 b0 00  	snez	a1, a1
800020e4: b7 06 12 00  	lui	a3, 288
800020e8: 93 86 16 00  	addi	a3, a3, 1
800020ec: 33 35 d5 00  	sltu	a0, a0, a3
800020f0: 33 f5 a5 00  	and	a0, a1, a0

800020f4 <.LBB0_149>:
800020f4: 97 57 00 00  	auipc	a5, 5
800020f8: 93 87 c7 01  	addi	a5, a5, 28

800020fc <.LBB0_150>:
800020fc: 97 53 00 00  	auipc	t2, 5
80002100: 93 83 c3 01  	addi	t2, t2, 28

80002104 <.LBB0_151>:
80002104: 97 56 00 00  	auipc	a3, 5
80002108: 93 86 c6 01  	addi	a3, a3, 28

8000210c <.LBB0_152>:
8000210c: 97 54 00 00  	auipc	s1, 5
80002110: 93 84 c4 01  	addi	s1, s1, 28

80002114 <.LBB0_153>:
80002114: 97 50 00 00  	auipc	ra, 5
80002118: 93 80 c0 01  	addi	ra, ra, 28

8000211c <.LBB0_154>:
8000211c: 17 56 00 00  	auipc	a2, 5
80002120: 13 06 c6 01  	addi	a2, a2, 28

80002124 <.LBB0_155>:
80002124: 17 57 00 00  	auipc	a4, 5
80002128: 13 07 c7 01  	addi	a4, a4, 28
8000212c: 23 28 51 0b  	sw	s5, 176(sp)
80002130: 23 24 81 08  	sw	s0, 136(sp)
80002134: 23 20 e1 08  	sw	a4, 128(sp)
80002138: 23 2e f1 06  	sw	a5, 124(sp)
8000213c: 23 2c 91 06  	sw	s1, 120(sp)
80002140: 23 2a 11 06  	sw	ra, 116(sp)
80002144: 23 28 71 06  	sw	t2, 112(sp)
80002148: 63 0e 05 12  	beqz	a0, 0x80002284 <.LBB0_155+0x160>
8000214c: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80002150: 93 05 00 04  	addi	a1, zero, 64
80002154: ab 20 b5 00  	scfgw	a0, a1
80002158: 13 05 80 00  	addi	a0, zero, 8
8000215c: 93 05 00 0c  	addi	a1, zero, 192
80002160: ab 20 b5 00  	scfgw	a0, a1
80002164: 13 05 00 02  	addi	a0, zero, 32
80002168: 87 b1 07 00  	fld	ft3, 0(a5)
8000216c: ab 20 a0 00  	scfgw	zero, a0
80002170: 2b a0 0f 38  	scfgwi	t6, 896
80002174: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002178: 53 80 31 22  	fmv.d	ft0, ft3
8000217c: 87 b1 02 00  	fld	ft3, 0(t0)
80002180: 03 25 41 09  	lw	a0, 148(sp)
80002184: 07 32 05 00  	fld	ft4, 0(a0)
80002188: 87 32 03 00  	fld	ft5, 0(t1)
8000218c: 03 25 81 09  	lw	a0, 152(sp)
80002190: 07 33 05 00  	fld	ft6, 0(a0)
80002194: 53 80 31 22  	fmv.d	ft0, ft3
80002198: 53 00 42 22  	fmv.d	ft0, ft4
8000219c: 53 80 52 22  	fmv.d	ft0, ft5
800021a0: 53 00 63 22  	fmv.d	ft0, ft6
800021a4: 87 31 0a 00  	fld	ft3, 0(s4)
800021a8: 07 b2 03 00  	fld	ft4, 0(t2)
800021ac: 87 32 0e 00  	fld	ft5, 0(t3)
800021b0: 03 25 81 0b  	lw	a0, 184(sp)
800021b4: 07 33 05 00  	fld	ft6, 0(a0)
800021b8: 53 80 31 22  	fmv.d	ft0, ft3
800021bc: 53 00 42 22  	fmv.d	ft0, ft4
800021c0: 53 80 52 22  	fmv.d	ft0, ft5
800021c4: 53 00 63 22  	fmv.d	ft0, ft6
800021c8: 87 b1 0d 00  	fld	ft3, 0(s11)
800021cc: 07 b2 06 00  	fld	ft4, 0(a3)
800021d0: 87 32 08 00  	fld	ft5, 0(a6)
800021d4: 07 33 09 00  	fld	ft6, 0(s2)
800021d8: 53 80 31 22  	fmv.d	ft0, ft3
800021dc: 53 00 42 22  	fmv.d	ft0, ft4
800021e0: 53 80 52 22  	fmv.d	ft0, ft5
800021e4: 53 00 63 22  	fmv.d	ft0, ft6
800021e8: 87 b1 0c 00  	fld	ft3, 0(s9)
800021ec: 07 b2 09 00  	fld	ft4, 0(s3)
800021f0: 87 b2 08 00  	fld	ft5, 0(a7)
800021f4: 07 b3 04 00  	fld	ft6, 0(s1)
800021f8: 53 80 31 22  	fmv.d	ft0, ft3
800021fc: 53 00 42 22  	fmv.d	ft0, ft4
80002200: 53 80 52 22  	fmv.d	ft0, ft5
80002204: 53 00 63 22  	fmv.d	ft0, ft6
80002208: 87 b1 0e 00  	fld	ft3, 0(t4)
8000220c: 07 b2 00 00  	fld	ft4, 0(ra)
80002210: 87 b2 0b 00  	fld	ft5, 0(s7)
80002214: 03 25 01 0a  	lw	a0, 160(sp)
80002218: 07 33 05 00  	fld	ft6, 0(a0)
8000221c: 53 80 31 22  	fmv.d	ft0, ft3
80002220: 53 00 42 22  	fmv.d	ft0, ft4
80002224: 53 80 52 22  	fmv.d	ft0, ft5
80002228: 53 00 63 22  	fmv.d	ft0, ft6
8000222c: 03 25 c1 08  	lw	a0, 140(sp)
80002230: 87 31 05 00  	fld	ft3, 0(a0)
80002234: 07 32 06 00  	fld	ft4, 0(a2)
80002238: 87 32 0b 00  	fld	ft5, 0(s6)
8000223c: 07 33 04 00  	fld	ft6, 0(s0)
80002240: 53 80 31 22  	fmv.d	ft0, ft3
80002244: 53 00 42 22  	fmv.d	ft0, ft4
80002248: 53 80 52 22  	fmv.d	ft0, ft5
8000224c: 53 00 63 22  	fmv.d	ft0, ft6
80002250: 03 25 c1 0a  	lw	a0, 172(sp)
80002254: 87 31 05 00  	fld	ft3, 0(a0)
80002258: 07 b2 0a 00  	fld	ft4, 0(s5)
8000225c: 87 32 0f 00  	fld	ft5, 0(t5)
80002260: 07 33 07 00  	fld	ft6, 0(a4)
80002264: 53 80 31 22  	fmv.d	ft0, ft3
80002268: 53 00 42 22  	fmv.d	ft0, ft4
8000226c: 53 80 52 22  	fmv.d	ft0, ft5
80002270: 53 00 63 22  	fmv.d	ft0, ft6
80002274: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002278: 53 80 31 22  	fmv.d	ft0, ft3
8000227c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002280: 6f 00 c0 04  	j	0x800022cc <.LBB0_155+0x1a8>
80002284: 93 05 00 00  	mv	a1, zero
80002288: 93 07 70 00  	addi	a5, zero, 7
8000228c: 37 95 88 88  	lui	a0, 559241
80002290: 87 31 09 00  	fld	ft3, 0(s2)
80002294: 13 04 95 88  	addi	s0, a0, -1911
80002298: 13 05 e0 01  	addi	a0, zero, 30
8000229c: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800022a0: b3 b4 87 02  	mulhu	s1, a5, s0
800022a4: 93 d4 44 00  	srli	s1, s1, 4
800022a8: b3 84 a4 02  	mul	s1, s1, a0
800022ac: b3 84 97 40  	sub	s1, a5, s1
800022b0: 53 82 04 d2  	fcvt.d.w	ft4, s1
800022b4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800022b8: b3 84 bf 00  	add	s1, t6, a1
800022bc: 27 b0 44 00  	fsd	ft4, 0(s1)
;         for (j = 0; j < nk; j++)
800022c0: 93 85 85 00  	addi	a1, a1, 8
800022c4: 93 87 77 00  	addi	a5, a5, 7
800022c8: e3 9c e5 fc  	bne	a1, a4, 0x800022a0 <.LBB0_155+0x17c>
800022cc: 03 25 01 01  	lw	a0, 16(sp)
;         for (j = 0; j < nk; j++)
800022d0: 93 0a 05 78  	addi	s5, a0, 1920
800022d4: 13 05 45 43  	addi	a0, a0, 1076
800022d8: 13 05 45 43  	addi	a0, a0, 1076
800022dc: 93 d5 4a 01  	srli	a1, s5, 20
800022e0: b3 35 b0 00  	snez	a1, a1
800022e4: 37 07 12 00  	lui	a4, 288
800022e8: 13 07 17 00  	addi	a4, a4, 1
800022ec: 33 35 e5 00  	sltu	a0, a0, a4
800022f0: 33 f5 a5 00  	and	a0, a1, a0
800022f4: 23 22 d1 08  	sw	a3, 132(sp)
800022f8: 23 2a 11 0b  	sw	a7, 180(sp)
800022fc: 63 08 05 0e  	beqz	a0, 0x800023ec <.LBB0_155+0x2c8>
80002300: 13 05 80 00  	addi	a0, zero, 8
80002304: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80002308: 13 07 00 04  	addi	a4, zero, 64
8000230c: 93 07 00 0c  	addi	a5, zero, 192
80002310: ab a0 e5 00  	scfgw	a1, a4
80002314: ab 20 f5 00  	scfgw	a0, a5
80002318: 13 05 00 02  	addi	a0, zero, 32
8000231c: ab 20 a0 00  	scfgw	zero, a0
80002320: 87 b1 0c 00  	fld	ft3, 0(s9)
80002324: 07 32 0f 00  	fld	ft4, 0(t5)
;         for (j = 0; j < nk; j++)
80002328: 2b a0 0a 38  	scfgwi	s5, 896
8000232c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002330: 53 80 31 22  	fmv.d	ft0, ft3
80002334: 53 00 42 22  	fmv.d	ft0, ft4
80002338: 87 32 08 00  	fld	ft5, 0(a6)
8000233c: 03 25 c1 0a  	lw	a0, 172(sp)
80002340: 07 33 05 00  	fld	ft6, 0(a0)
80002344: 87 b3 0d 00  	fld	ft7, 0(s11)
80002348: 07 35 0b 00  	fld	fa0, 0(s6)
8000234c: 53 80 52 22  	fmv.d	ft0, ft5
80002350: 53 00 63 22  	fmv.d	ft0, ft6
80002354: 53 80 73 22  	fmv.d	ft0, ft7
80002358: 53 00 a5 22  	fmv.d	ft0, fa0
8000235c: 87 35 0e 00  	fld	fa1, 0(t3)
80002360: 03 25 c1 08  	lw	a0, 140(sp)
80002364: 07 36 05 00  	fld	fa2, 0(a0)
80002368: 87 36 0a 00  	fld	fa3, 0(s4)
8000236c: 07 b7 0b 00  	fld	fa4, 0(s7)
80002370: 53 80 b5 22  	fmv.d	ft0, fa1
80002374: 53 00 c6 22  	fmv.d	ft0, fa2
80002378: 53 80 d6 22  	fmv.d	ft0, fa3
8000237c: 53 00 e7 22  	fmv.d	ft0, fa4
80002380: 87 37 03 00  	fld	fa5, 0(t1)
80002384: 07 b8 0e 00  	fld	fa6, 0(t4)
80002388: 87 b8 02 00  	fld	fa7, 0(t0)
8000238c: 07 be 08 00  	fld	ft8, 0(a7)
80002390: 53 80 f7 22  	fmv.d	ft0, fa5
80002394: 53 00 08 23  	fmv.d	ft0, fa6
80002398: 53 80 18 23  	fmv.d	ft0, fa7
8000239c: 53 00 ce 23  	fmv.d	ft0, ft8
800023a0: d3 0e 00 d2  	fcvt.d.w	ft9, zero
800023a4: 53 80 de 23  	fmv.d	ft0, ft9
800023a8: 53 80 31 22  	fmv.d	ft0, ft3
800023ac: 53 00 42 22  	fmv.d	ft0, ft4
800023b0: 53 80 52 22  	fmv.d	ft0, ft5
800023b4: 53 00 63 22  	fmv.d	ft0, ft6
800023b8: 53 80 73 22  	fmv.d	ft0, ft7
800023bc: 53 00 a5 22  	fmv.d	ft0, fa0
800023c0: 53 80 b5 22  	fmv.d	ft0, fa1
800023c4: 53 00 c6 22  	fmv.d	ft0, fa2
800023c8: 53 80 d6 22  	fmv.d	ft0, fa3
800023cc: 53 00 e7 22  	fmv.d	ft0, fa4
800023d0: 53 80 f7 22  	fmv.d	ft0, fa5
800023d4: 53 00 08 23  	fmv.d	ft0, fa6
800023d8: 53 80 18 23  	fmv.d	ft0, fa7
800023dc: 53 00 ce 23  	fmv.d	ft0, ft8
800023e0: 53 80 de 23  	fmv.d	ft0, ft9
800023e4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800023e8: 6f 00 00 05  	j	0x80002438 <.LBB0_155+0x314>
800023ec: 93 05 00 00  	mv	a1, zero
800023f0: 93 07 80 00  	addi	a5, zero, 8
800023f4: 37 95 88 88  	lui	a0, 559241
800023f8: 87 31 09 00  	fld	ft3, 0(s2)
800023fc: 13 04 95 88  	addi	s0, a0, -1911
80002400: 93 04 e0 01  	addi	s1, zero, 30
80002404: 13 05 00 0f  	addi	a0, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002408: 33 b7 87 02  	mulhu	a4, a5, s0
8000240c: 13 57 47 00  	srli	a4, a4, 4
80002410: 33 07 97 02  	mul	a4, a4, s1
80002414: 33 87 e5 40  	sub	a4, a1, a4
80002418: 13 07 87 00  	addi	a4, a4, 8
8000241c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80002420: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002424: 33 87 ba 00  	add	a4, s5, a1
80002428: 27 30 47 00  	fsd	ft4, 0(a4)
;         for (j = 0; j < nk; j++)
8000242c: 93 85 85 00  	addi	a1, a1, 8
80002430: 93 87 87 00  	addi	a5, a5, 8
80002434: e3 9a a5 fc  	bne	a1, a0, 0x80002408 <.LBB0_155+0x2e4>
80002438: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
8000243c: 13 85 86 43  	addi	a0, a3, 1080
80002440: 93 05 85 43  	addi	a1, a0, 1080
80002444: 13 85 c6 4a  	addi	a0, a3, 1196
80002448: 13 05 c5 4a  	addi	a0, a0, 1196
8000244c: 13 d7 45 01  	srli	a4, a1, 20
80002450: 33 37 e0 00  	snez	a4, a4
80002454: b7 07 12 00  	lui	a5, 288
80002458: 93 87 17 00  	addi	a5, a5, 1
8000245c: 33 35 f5 00  	sltu	a0, a0, a5
80002460: 33 75 a7 00  	and	a0, a4, a0
80002464: 63 08 05 0e  	beqz	a0, 0x80002554 <.LBB0_155+0x430>
80002468: 13 05 80 00  	addi	a0, zero, 8
8000246c: 13 07 d0 01  	addi	a4, zero, 29
;         for (j = 0; j < nk; j++)
80002470: 93 07 00 04  	addi	a5, zero, 64
80002474: 13 04 00 0c  	addi	s0, zero, 192
80002478: ab 20 f7 00  	scfgw	a4, a5
8000247c: ab 20 85 00  	scfgw	a0, s0
80002480: 13 05 00 02  	addi	a0, zero, 32
80002484: 93 06 06 00  	mv	a3, a2
80002488: 03 26 01 0b  	lw	a2, 176(sp)
8000248c: 87 31 06 00  	fld	ft3, 0(a2)
80002490: 13 86 06 00  	mv	a2, a3
;         for (j = 0; j < nk; j++)
80002494: ab 20 a0 00  	scfgw	zero, a0
80002498: 2b a0 05 38  	scfgwi	a1, 896
8000249c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800024a0: 53 80 31 22  	fmv.d	ft0, ft3
800024a4: 07 32 0b 00  	fld	ft4, 0(s6)
800024a8: 03 25 01 0a  	lw	a0, 160(sp)
800024ac: 87 32 05 00  	fld	ft5, 0(a0)
800024b0: 07 b3 0e 00  	fld	ft6, 0(t4)
800024b4: 87 b3 09 00  	fld	ft7, 0(s3)
800024b8: 53 00 42 22  	fmv.d	ft0, ft4
800024bc: 53 80 52 22  	fmv.d	ft0, ft5
800024c0: 53 00 63 22  	fmv.d	ft0, ft6
800024c4: 53 80 73 22  	fmv.d	ft0, ft7
800024c8: 07 35 08 00  	fld	fa0, 0(a6)
800024cc: 03 25 81 0b  	lw	a0, 184(sp)
800024d0: 87 35 05 00  	fld	fa1, 0(a0)
800024d4: 07 36 0a 00  	fld	fa2, 0(s4)
800024d8: 03 25 41 09  	lw	a0, 148(sp)
800024dc: 87 36 05 00  	fld	fa3, 0(a0)
800024e0: 53 00 a5 22  	fmv.d	ft0, fa0
800024e4: 53 80 b5 22  	fmv.d	ft0, fa1
800024e8: 53 00 c6 22  	fmv.d	ft0, fa2
800024ec: 53 80 d6 22  	fmv.d	ft0, fa3
800024f0: 53 07 00 d2  	fcvt.d.w	fa4, zero
800024f4: 53 00 e7 22  	fmv.d	ft0, fa4
800024f8: 53 80 31 22  	fmv.d	ft0, ft3
800024fc: 53 00 42 22  	fmv.d	ft0, ft4
80002500: 53 80 52 22  	fmv.d	ft0, ft5
80002504: 53 00 63 22  	fmv.d	ft0, ft6
80002508: 53 80 73 22  	fmv.d	ft0, ft7
8000250c: 53 00 a5 22  	fmv.d	ft0, fa0
80002510: 53 80 b5 22  	fmv.d	ft0, fa1
80002514: 53 00 c6 22  	fmv.d	ft0, fa2
80002518: 53 80 d6 22  	fmv.d	ft0, fa3
8000251c: 53 00 e7 22  	fmv.d	ft0, fa4
80002520: 53 80 31 22  	fmv.d	ft0, ft3
80002524: 53 00 42 22  	fmv.d	ft0, ft4
80002528: 53 80 52 22  	fmv.d	ft0, ft5
8000252c: 53 00 63 22  	fmv.d	ft0, ft6
80002530: 53 80 73 22  	fmv.d	ft0, ft7
80002534: 53 00 a5 22  	fmv.d	ft0, fa0
80002538: 53 80 b5 22  	fmv.d	ft0, fa1
8000253c: 53 00 c6 22  	fmv.d	ft0, fa2
80002540: 53 80 d6 22  	fmv.d	ft0, fa3
80002544: 53 00 e7 22  	fmv.d	ft0, fa4
80002548: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000254c: 83 23 c1 08  	lw	t2, 140(sp)
80002550: 6f 00 00 05  	j	0x800025a0 <.LBB0_155+0x47c>
80002554: 93 07 00 00  	mv	a5, zero
80002558: 13 04 90 00  	addi	s0, zero, 9
8000255c: 37 95 88 88  	lui	a0, 559241
80002560: 87 31 09 00  	fld	ft3, 0(s2)
80002564: 13 05 95 88  	addi	a0, a0, -1911
80002568: 93 04 e0 01  	addi	s1, zero, 30
8000256c: 13 07 00 0f  	addi	a4, zero, 240
80002570: 83 23 c1 08  	lw	t2, 140(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002574: b3 36 a4 02  	mulhu	a3, s0, a0
80002578: 93 d6 46 00  	srli	a3, a3, 4
8000257c: b3 86 96 02  	mul	a3, a3, s1
80002580: b3 06 d4 40  	sub	a3, s0, a3
80002584: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002588: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000258c: b3 86 f5 00  	add	a3, a1, a5
80002590: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002594: 93 87 87 00  	addi	a5, a5, 8
80002598: 13 04 94 00  	addi	s0, s0, 9
8000259c: e3 9c e7 fc  	bne	a5, a4, 0x80002574 <.LBB0_155+0x450>
800025a0: 93 05 0c 4b  	addi	a1, s8, 1200
800025a4: 03 25 01 01  	lw	a0, 16(sp)
800025a8: 13 05 45 52  	addi	a0, a0, 1316
800025ac: 13 05 45 52  	addi	a0, a0, 1316
800025b0: 93 d6 45 01  	srli	a3, a1, 20
800025b4: b3 36 d0 00  	snez	a3, a3
800025b8: 37 07 12 00  	lui	a4, 288
800025bc: 13 07 17 00  	addi	a4, a4, 1
800025c0: 33 35 e5 00  	sltu	a0, a0, a4
800025c4: 33 f5 a6 00  	and	a0, a3, a0
800025c8: 83 28 c1 0a  	lw	a7, 172(sp)
800025cc: 63 0e 05 0a  	beqz	a0, 0x80002688 <.LBB0_155+0x564>
800025d0: 13 05 80 00  	addi	a0, zero, 8
800025d4: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
800025d8: 13 07 00 04  	addi	a4, zero, 64
800025dc: 93 07 00 0c  	addi	a5, zero, 192
800025e0: ab a0 e6 00  	scfgw	a3, a4
800025e4: ab 20 f5 00  	scfgw	a0, a5
800025e8: 13 05 00 02  	addi	a0, zero, 32
800025ec: ab 20 a0 00  	scfgw	zero, a0
800025f0: 87 b1 0d 00  	fld	ft3, 0(s11)
800025f4: 07 b2 0b 00  	fld	ft4, 0(s7)
;         for (j = 0; j < nk; j++)
800025f8: 2b a0 05 38  	scfgwi	a1, 896
800025fc: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002600: 53 80 31 22  	fmv.d	ft0, ft3
80002604: 53 00 42 22  	fmv.d	ft0, ft4
80002608: d3 02 00 d2  	fcvt.d.w	ft5, zero
8000260c: 53 80 52 22  	fmv.d	ft0, ft5
80002610: 53 80 31 22  	fmv.d	ft0, ft3
80002614: 53 00 42 22  	fmv.d	ft0, ft4
80002618: 53 80 52 22  	fmv.d	ft0, ft5
8000261c: 53 80 31 22  	fmv.d	ft0, ft3
80002620: 53 00 42 22  	fmv.d	ft0, ft4
80002624: 53 80 52 22  	fmv.d	ft0, ft5
80002628: 53 80 31 22  	fmv.d	ft0, ft3
8000262c: 53 00 42 22  	fmv.d	ft0, ft4
80002630: 53 80 52 22  	fmv.d	ft0, ft5
80002634: 53 80 31 22  	fmv.d	ft0, ft3
80002638: 53 00 42 22  	fmv.d	ft0, ft4
8000263c: 53 80 52 22  	fmv.d	ft0, ft5
80002640: 53 80 31 22  	fmv.d	ft0, ft3
80002644: 53 00 42 22  	fmv.d	ft0, ft4
80002648: 53 80 52 22  	fmv.d	ft0, ft5
8000264c: 53 80 31 22  	fmv.d	ft0, ft3
80002650: 53 00 42 22  	fmv.d	ft0, ft4
80002654: 53 80 52 22  	fmv.d	ft0, ft5
80002658: 53 80 31 22  	fmv.d	ft0, ft3
8000265c: 53 00 42 22  	fmv.d	ft0, ft4
80002660: 53 80 52 22  	fmv.d	ft0, ft5
80002664: 53 80 31 22  	fmv.d	ft0, ft3
80002668: 53 00 42 22  	fmv.d	ft0, ft4
8000266c: 53 80 52 22  	fmv.d	ft0, ft5
80002670: 53 80 31 22  	fmv.d	ft0, ft3
80002674: 53 00 42 22  	fmv.d	ft0, ft4
80002678: 53 80 52 22  	fmv.d	ft0, ft5
8000267c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002680: 13 0c 09 00  	mv	s8, s2
80002684: 6f 00 00 05  	j	0x800026d4 <.LBB0_155+0x5b0>
80002688: 93 07 00 00  	mv	a5, zero
8000268c: 13 04 a0 00  	addi	s0, zero, 10
80002690: 37 95 88 88  	lui	a0, 559241
80002694: 13 0c 09 00  	mv	s8, s2
80002698: 87 31 09 00  	fld	ft3, 0(s2)
8000269c: 13 05 95 88  	addi	a0, a0, -1911
800026a0: 93 04 e0 01  	addi	s1, zero, 30
800026a4: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800026a8: b3 36 a4 02  	mulhu	a3, s0, a0
800026ac: 93 d6 46 00  	srli	a3, a3, 4
800026b0: b3 86 96 02  	mul	a3, a3, s1
800026b4: b3 06 d4 40  	sub	a3, s0, a3
800026b8: 53 82 06 d2  	fcvt.d.w	ft4, a3
800026bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800026c0: b3 86 f5 00  	add	a3, a1, a5
800026c4: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
800026c8: 93 87 87 00  	addi	a5, a5, 8
800026cc: 13 04 a4 00  	addi	s0, s0, 10
800026d0: e3 9c e7 fc  	bne	a5, a4, 0x800026a8 <.LBB0_155+0x584>
800026d4: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
800026d8: 13 85 86 52  	addi	a0, a3, 1320
800026dc: 93 05 85 52  	addi	a1, a0, 1320
800026e0: 13 85 c6 59  	addi	a0, a3, 1436
800026e4: 13 05 c5 59  	addi	a0, a0, 1436
800026e8: 93 d6 45 01  	srli	a3, a1, 20
800026ec: b3 36 d0 00  	snez	a3, a3
800026f0: 37 07 12 00  	lui	a4, 288
800026f4: 13 07 17 00  	addi	a4, a4, 1
800026f8: 33 35 e5 00  	sltu	a0, a0, a4
800026fc: 33 f5 a6 00  	and	a0, a3, a0
80002700: 03 27 81 0b  	lw	a4, 184(sp)
80002704: 63 0a 05 14  	beqz	a0, 0x80002858 <.LBB0_155+0x734>
80002708: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
8000270c: 93 06 00 04  	addi	a3, zero, 64
80002710: ab 20 d5 00  	scfgw	a0, a3
80002714: 13 05 80 00  	addi	a0, zero, 8
80002718: 93 06 00 0c  	addi	a3, zero, 192
8000271c: ab 20 d5 00  	scfgw	a0, a3
80002720: 13 05 00 02  	addi	a0, zero, 32
80002724: 87 31 06 00  	fld	ft3, 0(a2)
80002728: ab 20 a0 00  	scfgw	zero, a0
8000272c: 2b a0 05 38  	scfgwi	a1, 896
80002730: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002734: 53 80 31 22  	fmv.d	ft0, ft3
80002738: 03 25 41 0b  	lw	a0, 180(sp)
8000273c: 87 31 05 00  	fld	ft3, 0(a0)
80002740: 07 32 07 00  	fld	ft4, 0(a4)
80002744: 87 b2 02 00  	fld	ft5, 0(t0)
80002748: 03 25 81 08  	lw	a0, 136(sp)
8000274c: 07 33 05 00  	fld	ft6, 0(a0)
80002750: 53 80 31 22  	fmv.d	ft0, ft3
80002754: 53 00 42 22  	fmv.d	ft0, ft4
80002758: 53 80 52 22  	fmv.d	ft0, ft5
8000275c: 53 00 63 22  	fmv.d	ft0, ft6
80002760: 87 b1 0e 00  	fld	ft3, 0(t4)
80002764: 03 25 41 08  	lw	a0, 132(sp)
80002768: 07 32 05 00  	fld	ft4, 0(a0)
8000276c: 87 32 03 00  	fld	ft5, 0(t1)
80002770: 03 25 01 0b  	lw	a0, 176(sp)
80002774: 07 33 05 00  	fld	ft6, 0(a0)
80002778: 53 80 31 22  	fmv.d	ft0, ft3
8000277c: 53 00 42 22  	fmv.d	ft0, ft4
80002780: 53 80 52 22  	fmv.d	ft0, ft5
80002784: 53 00 63 22  	fmv.d	ft0, ft6
80002788: 87 b1 0b 00  	fld	ft3, 0(s7)
8000278c: 07 32 0c 00  	fld	ft4, 0(s8)
80002790: 87 32 0a 00  	fld	ft5, 0(s4)
80002794: 03 25 01 08  	lw	a0, 128(sp)
80002798: 07 33 05 00  	fld	ft6, 0(a0)
8000279c: 53 80 31 22  	fmv.d	ft0, ft3
800027a0: 53 00 42 22  	fmv.d	ft0, ft4
800027a4: 53 80 52 22  	fmv.d	ft0, ft5
800027a8: 53 00 63 22  	fmv.d	ft0, ft6
800027ac: 87 b1 03 00  	fld	ft3, 0(t2)
800027b0: 07 b2 09 00  	fld	ft4, 0(s3)
800027b4: 87 32 0e 00  	fld	ft5, 0(t3)
800027b8: 03 25 c1 07  	lw	a0, 124(sp)
800027bc: 07 33 05 00  	fld	ft6, 0(a0)
800027c0: 53 80 31 22  	fmv.d	ft0, ft3
800027c4: 53 00 42 22  	fmv.d	ft0, ft4
800027c8: 53 80 52 22  	fmv.d	ft0, ft5
800027cc: 53 00 63 22  	fmv.d	ft0, ft6
800027d0: 87 31 0b 00  	fld	ft3, 0(s6)
800027d4: 03 25 81 07  	lw	a0, 120(sp)
800027d8: 07 32 05 00  	fld	ft4, 0(a0)
800027dc: 87 b2 0d 00  	fld	ft5, 0(s11)
800027e0: 03 25 41 09  	lw	a0, 148(sp)
800027e4: 07 33 05 00  	fld	ft6, 0(a0)
800027e8: 53 80 31 22  	fmv.d	ft0, ft3
800027ec: 53 00 42 22  	fmv.d	ft0, ft4
800027f0: 53 80 52 22  	fmv.d	ft0, ft5
800027f4: 53 00 63 22  	fmv.d	ft0, ft6
800027f8: 87 b1 08 00  	fld	ft3, 0(a7)
800027fc: 03 25 41 07  	lw	a0, 116(sp)
80002800: 07 32 05 00  	fld	ft4, 0(a0)
80002804: 87 32 08 00  	fld	ft5, 0(a6)
80002808: 03 25 81 09  	lw	a0, 152(sp)
8000280c: 07 33 05 00  	fld	ft6, 0(a0)
80002810: 53 80 31 22  	fmv.d	ft0, ft3
80002814: 53 00 42 22  	fmv.d	ft0, ft4
80002818: 53 80 52 22  	fmv.d	ft0, ft5
8000281c: 53 00 63 22  	fmv.d	ft0, ft6
80002820: 87 31 0f 00  	fld	ft3, 0(t5)
80002824: 03 25 01 0a  	lw	a0, 160(sp)
80002828: 07 32 05 00  	fld	ft4, 0(a0)
8000282c: 87 b2 0c 00  	fld	ft5, 0(s9)
80002830: 03 25 01 07  	lw	a0, 112(sp)
80002834: 07 33 05 00  	fld	ft6, 0(a0)
80002838: 53 80 31 22  	fmv.d	ft0, ft3
8000283c: 53 00 42 22  	fmv.d	ft0, ft4
80002840: 53 80 52 22  	fmv.d	ft0, ft5
80002844: 53 00 63 22  	fmv.d	ft0, ft6
80002848: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000284c: 53 80 31 22  	fmv.d	ft0, ft3
80002850: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002854: 6f 00 c0 04  	j	0x800028a0 <.LBB0_155+0x77c>
80002858: 93 07 00 00  	mv	a5, zero
8000285c: 13 04 b0 00  	addi	s0, zero, 11
80002860: 37 95 88 88  	lui	a0, 559241
80002864: 87 31 0c 00  	fld	ft3, 0(s8)
80002868: 13 05 95 88  	addi	a0, a0, -1911
8000286c: 93 04 e0 01  	addi	s1, zero, 30
80002870: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002874: b3 36 a4 02  	mulhu	a3, s0, a0
80002878: 93 d6 46 00  	srli	a3, a3, 4
8000287c: b3 86 96 02  	mul	a3, a3, s1
80002880: b3 06 d4 40  	sub	a3, s0, a3
80002884: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002888: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000288c: b3 86 f5 00  	add	a3, a1, a5
80002890: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002894: 93 87 87 00  	addi	a5, a5, 8
80002898: 13 04 b4 00  	addi	s0, s0, 11
8000289c: e3 9c e7 fc  	bne	a5, a4, 0x80002874 <.LBB0_155+0x750>
800028a0: 23 26 c1 06  	sw	a2, 108(sp)
;         for (j = 0; j < nk; j++)
800028a4: 93 05 0d 5a  	addi	a1, s10, 1440
800028a8: 03 25 01 01  	lw	a0, 16(sp)
800028ac: 13 05 45 61  	addi	a0, a0, 1556
800028b0: 13 05 45 61  	addi	a0, a0, 1556
800028b4: 93 d6 45 01  	srli	a3, a1, 20
800028b8: b3 36 d0 00  	snez	a3, a3
800028bc: 37 07 12 00  	lui	a4, 288
800028c0: 13 07 17 00  	addi	a4, a4, 1
800028c4: 33 35 e5 00  	sltu	a0, a0, a4
800028c8: 33 f5 a6 00  	and	a0, a3, a0
800028cc: 63 06 05 0c  	beqz	a0, 0x80002998 <.LBB0_155+0x874>
800028d0: 13 05 80 00  	addi	a0, zero, 8
800028d4: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
800028d8: 13 07 00 04  	addi	a4, zero, 64
800028dc: 93 07 00 0c  	addi	a5, zero, 192
800028e0: ab a0 e6 00  	scfgw	a3, a4
800028e4: ab 20 f5 00  	scfgw	a0, a5
800028e8: 13 05 00 02  	addi	a0, zero, 32
800028ec: ab 20 a0 00  	scfgw	zero, a0
800028f0: 2b a0 05 38  	scfgwi	a1, 896
800028f4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800028f8: 87 31 0a 00  	fld	ft3, 0(s4)
800028fc: 07 32 08 00  	fld	ft4, 0(a6)
80002900: 87 b2 0e 00  	fld	ft5, 0(t4)
80002904: 07 33 0b 00  	fld	ft6, 0(s6)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002908: 53 80 31 22  	fmv.d	ft0, ft3
8000290c: 53 00 42 22  	fmv.d	ft0, ft4
80002910: 53 80 52 22  	fmv.d	ft0, ft5
80002914: 53 00 63 22  	fmv.d	ft0, ft6
80002918: d3 03 00 d2  	fcvt.d.w	ft7, zero
8000291c: 53 80 73 22  	fmv.d	ft0, ft7
80002920: 53 80 31 22  	fmv.d	ft0, ft3
80002924: 53 00 42 22  	fmv.d	ft0, ft4
80002928: 53 80 52 22  	fmv.d	ft0, ft5
8000292c: 53 00 63 22  	fmv.d	ft0, ft6
80002930: 53 80 73 22  	fmv.d	ft0, ft7
80002934: 53 80 31 22  	fmv.d	ft0, ft3
80002938: 53 00 42 22  	fmv.d	ft0, ft4
8000293c: 53 80 52 22  	fmv.d	ft0, ft5
80002940: 53 00 63 22  	fmv.d	ft0, ft6
80002944: 53 80 73 22  	fmv.d	ft0, ft7
80002948: 53 80 31 22  	fmv.d	ft0, ft3
8000294c: 53 00 42 22  	fmv.d	ft0, ft4
80002950: 53 80 52 22  	fmv.d	ft0, ft5
80002954: 53 00 63 22  	fmv.d	ft0, ft6
80002958: 53 80 73 22  	fmv.d	ft0, ft7
8000295c: 53 80 31 22  	fmv.d	ft0, ft3
80002960: 53 00 42 22  	fmv.d	ft0, ft4
80002964: 53 80 52 22  	fmv.d	ft0, ft5
80002968: 53 00 63 22  	fmv.d	ft0, ft6
8000296c: 53 80 73 22  	fmv.d	ft0, ft7
80002970: 53 80 31 22  	fmv.d	ft0, ft3
80002974: 53 00 42 22  	fmv.d	ft0, ft4
80002978: 53 80 52 22  	fmv.d	ft0, ft5
8000297c: 53 00 63 22  	fmv.d	ft0, ft6
80002980: 53 80 73 22  	fmv.d	ft0, ft7
80002984: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002988: 13 89 0c 00  	mv	s2, s9
8000298c: 83 20 41 09  	lw	ra, 148(sp)
80002990: 03 2d 01 0a  	lw	s10, 160(sp)
80002994: 6f 00 80 05  	j	0x800029ec <.LBB0_155+0x8c8>
80002998: 93 07 00 00  	mv	a5, zero
8000299c: 13 04 c0 00  	addi	s0, zero, 12
800029a0: 37 95 88 88  	lui	a0, 559241
800029a4: 87 31 0c 00  	fld	ft3, 0(s8)
800029a8: 13 05 95 88  	addi	a0, a0, -1911
800029ac: 93 04 e0 01  	addi	s1, zero, 30
800029b0: 13 07 00 0f  	addi	a4, zero, 240
800029b4: 13 89 0c 00  	mv	s2, s9
800029b8: 83 20 41 09  	lw	ra, 148(sp)
800029bc: 03 2d 01 0a  	lw	s10, 160(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800029c0: b3 36 a4 02  	mulhu	a3, s0, a0
800029c4: 93 d6 46 00  	srli	a3, a3, 4
800029c8: b3 86 96 02  	mul	a3, a3, s1
800029cc: b3 06 d4 40  	sub	a3, s0, a3
800029d0: 53 82 06 d2  	fcvt.d.w	ft4, a3
800029d4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029d8: b3 86 f5 00  	add	a3, a1, a5
800029dc: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
800029e0: 93 87 87 00  	addi	a5, a5, 8
800029e4: 13 04 c4 00  	addi	s0, s0, 12
800029e8: e3 9c e7 fc  	bne	a5, a4, 0x800029c0 <.LBB0_155+0x89c>
800029ec: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
800029f0: 13 85 86 61  	addi	a0, a3, 1560
800029f4: 93 05 85 61  	addi	a1, a0, 1560
800029f8: 13 85 c6 68  	addi	a0, a3, 1676
800029fc: 13 05 c5 68  	addi	a0, a0, 1676
80002a00: 93 d6 45 01  	srli	a3, a1, 20
80002a04: b3 36 d0 00  	snez	a3, a3
80002a08: 37 07 12 00  	lui	a4, 288
80002a0c: 13 07 17 00  	addi	a4, a4, 1
80002a10: 33 35 e5 00  	sltu	a0, a0, a4
80002a14: 33 f5 a6 00  	and	a0, a3, a0
80002a18: 63 0a 05 14  	beqz	a0, 0x80002b6c <.LBB0_155+0xa48>
80002a1c: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80002a20: 93 06 00 04  	addi	a3, zero, 64
80002a24: ab 20 d5 00  	scfgw	a0, a3
80002a28: 13 05 80 00  	addi	a0, zero, 8
80002a2c: 93 06 00 0c  	addi	a3, zero, 192
80002a30: ab 20 d5 00  	scfgw	a0, a3
80002a34: 13 05 00 02  	addi	a0, zero, 32
80002a38: 83 26 41 07  	lw	a3, 116(sp)
80002a3c: 87 b1 06 00  	fld	ft3, 0(a3)
80002a40: ab 20 a0 00  	scfgw	zero, a0
80002a44: 2b a0 05 38  	scfgwi	a1, 896
80002a48: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002a4c: 53 80 31 22  	fmv.d	ft0, ft3
80002a50: 87 31 0e 00  	fld	ft3, 0(t3)
80002a54: 03 25 01 0b  	lw	a0, 176(sp)
80002a58: 07 32 05 00  	fld	ft4, 0(a0)
80002a5c: 03 25 41 0b  	lw	a0, 180(sp)
80002a60: 87 32 05 00  	fld	ft5, 0(a0)
80002a64: 03 25 81 09  	lw	a0, 152(sp)
80002a68: 07 33 05 00  	fld	ft6, 0(a0)
80002a6c: 53 80 31 22  	fmv.d	ft0, ft3
80002a70: 53 00 42 22  	fmv.d	ft0, ft4
80002a74: 53 80 52 22  	fmv.d	ft0, ft5
80002a78: 53 00 63 22  	fmv.d	ft0, ft6
80002a7c: 87 31 0b 00  	fld	ft3, 0(s6)
80002a80: 07 32 0c 00  	fld	ft4, 0(s8)
80002a84: 87 b2 02 00  	fld	ft5, 0(t0)
80002a88: 07 33 0d 00  	fld	ft6, 0(s10)
80002a8c: 53 80 31 22  	fmv.d	ft0, ft3
80002a90: 53 00 42 22  	fmv.d	ft0, ft4
80002a94: 53 80 52 22  	fmv.d	ft0, ft5
80002a98: 53 00 63 22  	fmv.d	ft0, ft6
80002a9c: 87 b1 0d 00  	fld	ft3, 0(s11)
80002aa0: 03 25 01 08  	lw	a0, 128(sp)
80002aa4: 07 32 05 00  	fld	ft4, 0(a0)
80002aa8: 87 b2 0e 00  	fld	ft5, 0(t4)
80002aac: 03 25 01 07  	lw	a0, 112(sp)
80002ab0: 07 33 05 00  	fld	ft6, 0(a0)
80002ab4: 53 80 31 22  	fmv.d	ft0, ft3
80002ab8: 53 00 42 22  	fmv.d	ft0, ft4
80002abc: 53 80 52 22  	fmv.d	ft0, ft5
80002ac0: 53 00 63 22  	fmv.d	ft0, ft6
80002ac4: 87 b1 08 00  	fld	ft3, 0(a7)
80002ac8: 07 b2 09 00  	fld	ft4, 0(s3)
80002acc: 87 32 03 00  	fld	ft5, 0(t1)
80002ad0: 03 25 c1 06  	lw	a0, 108(sp)
80002ad4: 07 33 05 00  	fld	ft6, 0(a0)
80002ad8: 53 80 31 22  	fmv.d	ft0, ft3
80002adc: 53 00 42 22  	fmv.d	ft0, ft4
80002ae0: 53 80 52 22  	fmv.d	ft0, ft5
80002ae4: 53 00 63 22  	fmv.d	ft0, ft6
80002ae8: 87 31 08 00  	fld	ft3, 0(a6)
80002aec: 03 25 c1 07  	lw	a0, 124(sp)
80002af0: 07 32 05 00  	fld	ft4, 0(a0)
80002af4: 87 b2 0b 00  	fld	ft5, 0(s7)
80002af8: 03 25 81 0b  	lw	a0, 184(sp)
80002afc: 07 33 05 00  	fld	ft6, 0(a0)
80002b00: 53 80 31 22  	fmv.d	ft0, ft3
80002b04: 53 00 42 22  	fmv.d	ft0, ft4
80002b08: 53 80 52 22  	fmv.d	ft0, ft5
80002b0c: 53 00 63 22  	fmv.d	ft0, ft6
80002b10: 87 31 0f 00  	fld	ft3, 0(t5)
80002b14: 03 25 81 07  	lw	a0, 120(sp)
80002b18: 07 32 05 00  	fld	ft4, 0(a0)
80002b1c: 87 32 0a 00  	fld	ft5, 0(s4)
80002b20: 03 25 81 08  	lw	a0, 136(sp)
80002b24: 07 33 05 00  	fld	ft6, 0(a0)
80002b28: 53 80 31 22  	fmv.d	ft0, ft3
80002b2c: 53 00 42 22  	fmv.d	ft0, ft4
80002b30: 53 80 52 22  	fmv.d	ft0, ft5
80002b34: 53 00 63 22  	fmv.d	ft0, ft6
80002b38: 87 31 09 00  	fld	ft3, 0(s2)
80002b3c: 07 b2 00 00  	fld	ft4, 0(ra)
80002b40: 87 b2 03 00  	fld	ft5, 0(t2)
80002b44: 03 25 41 08  	lw	a0, 132(sp)
80002b48: 07 33 05 00  	fld	ft6, 0(a0)
80002b4c: 53 80 31 22  	fmv.d	ft0, ft3
80002b50: 53 00 42 22  	fmv.d	ft0, ft4
80002b54: 53 80 52 22  	fmv.d	ft0, ft5
80002b58: 53 00 63 22  	fmv.d	ft0, ft6
80002b5c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002b60: 53 80 31 22  	fmv.d	ft0, ft3
80002b64: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002b68: 6f 00 c0 04  	j	0x80002bb4 <.LBB0_155+0xa90>
80002b6c: 93 07 00 00  	mv	a5, zero
80002b70: 13 04 d0 00  	addi	s0, zero, 13
80002b74: 37 95 88 88  	lui	a0, 559241
80002b78: 87 31 0c 00  	fld	ft3, 0(s8)
80002b7c: 13 05 95 88  	addi	a0, a0, -1911
80002b80: 93 04 e0 01  	addi	s1, zero, 30
80002b84: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002b88: b3 36 a4 02  	mulhu	a3, s0, a0
80002b8c: 93 d6 46 00  	srli	a3, a3, 4
80002b90: b3 86 96 02  	mul	a3, a3, s1
80002b94: b3 06 d4 40  	sub	a3, s0, a3
80002b98: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002b9c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002ba0: b3 86 f5 00  	add	a3, a1, a5
80002ba4: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002ba8: 93 87 87 00  	addi	a5, a5, 8
80002bac: 13 04 d4 00  	addi	s0, s0, 13
80002bb0: e3 9c e7 fc  	bne	a5, a4, 0x80002b88 <.LBB0_155+0xa64>
80002bb4: 93 85 0f 69  	addi	a1, t6, 1680
80002bb8: 03 25 01 01  	lw	a0, 16(sp)
80002bbc: 13 05 45 70  	addi	a0, a0, 1796
80002bc0: 13 05 45 70  	addi	a0, a0, 1796
80002bc4: 93 d6 45 01  	srli	a3, a1, 20
80002bc8: b3 36 d0 00  	snez	a3, a3
80002bcc: 37 07 12 00  	lui	a4, 288
80002bd0: 13 07 17 00  	addi	a4, a4, 1
80002bd4: 33 35 e5 00  	sltu	a0, a0, a4
80002bd8: 33 f5 a6 00  	and	a0, a3, a0
80002bdc: 63 08 05 0e  	beqz	a0, 0x80002ccc <.LBB0_155+0xba8>
80002be0: 13 05 80 00  	addi	a0, zero, 8
80002be4: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
80002be8: 13 07 00 04  	addi	a4, zero, 64
80002bec: 93 07 00 0c  	addi	a5, zero, 192
80002bf0: ab a0 e6 00  	scfgw	a3, a4
80002bf4: ab 20 f5 00  	scfgw	a0, a5
80002bf8: 13 05 00 02  	addi	a0, zero, 32
80002bfc: ab 20 a0 00  	scfgw	zero, a0
80002c00: 87 b1 02 00  	fld	ft3, 0(t0)
80002c04: 07 32 03 00  	fld	ft4, 0(t1)
;         for (j = 0; j < nk; j++)
80002c08: 2b a0 05 38  	scfgwi	a1, 896
80002c0c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002c10: 53 80 31 22  	fmv.d	ft0, ft3
80002c14: 53 00 42 22  	fmv.d	ft0, ft4
80002c18: 87 32 0a 00  	fld	ft5, 0(s4)
80002c1c: 07 33 0e 00  	fld	ft6, 0(t3)
80002c20: 87 b3 0d 00  	fld	ft7, 0(s11)
80002c24: 07 35 08 00  	fld	fa0, 0(a6)
80002c28: 53 80 52 22  	fmv.d	ft0, ft5
80002c2c: 53 00 63 22  	fmv.d	ft0, ft6
80002c30: 53 80 73 22  	fmv.d	ft0, ft7
80002c34: 53 00 a5 22  	fmv.d	ft0, fa0
80002c38: 87 35 09 00  	fld	fa1, 0(s2)
80002c3c: 03 25 41 0b  	lw	a0, 180(sp)
80002c40: 07 36 05 00  	fld	fa2, 0(a0)
80002c44: 87 b6 0e 00  	fld	fa3, 0(t4)
80002c48: 07 b7 0b 00  	fld	fa4, 0(s7)
80002c4c: 53 80 b5 22  	fmv.d	ft0, fa1
80002c50: 53 00 c6 22  	fmv.d	ft0, fa2
80002c54: 53 80 d6 22  	fmv.d	ft0, fa3
80002c58: 53 00 e7 22  	fmv.d	ft0, fa4
80002c5c: 87 b7 03 00  	fld	fa5, 0(t2)
80002c60: 07 38 0b 00  	fld	fa6, 0(s6)
80002c64: 87 b8 08 00  	fld	fa7, 0(a7)
80002c68: 07 3e 0f 00  	fld	ft8, 0(t5)
80002c6c: 53 80 f7 22  	fmv.d	ft0, fa5
80002c70: 53 00 08 23  	fmv.d	ft0, fa6
80002c74: 53 80 18 23  	fmv.d	ft0, fa7
80002c78: 53 00 ce 23  	fmv.d	ft0, ft8
80002c7c: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80002c80: 53 80 de 23  	fmv.d	ft0, ft9
80002c84: 53 80 31 22  	fmv.d	ft0, ft3
80002c88: 53 00 42 22  	fmv.d	ft0, ft4
80002c8c: 53 80 52 22  	fmv.d	ft0, ft5
80002c90: 53 00 63 22  	fmv.d	ft0, ft6
80002c94: 53 80 73 22  	fmv.d	ft0, ft7
80002c98: 53 00 a5 22  	fmv.d	ft0, fa0
80002c9c: 53 80 b5 22  	fmv.d	ft0, fa1
80002ca0: 53 00 c6 22  	fmv.d	ft0, fa2
80002ca4: 53 80 d6 22  	fmv.d	ft0, fa3
80002ca8: 53 00 e7 22  	fmv.d	ft0, fa4
80002cac: 53 80 f7 22  	fmv.d	ft0, fa5
80002cb0: 53 00 08 23  	fmv.d	ft0, fa6
80002cb4: 53 80 18 23  	fmv.d	ft0, fa7
80002cb8: 53 00 ce 23  	fmv.d	ft0, ft8
80002cbc: 53 80 de 23  	fmv.d	ft0, ft9
80002cc0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002cc4: 83 2f 41 07  	lw	t6, 116(sp)
80002cc8: 6f 00 00 05  	j	0x80002d18 <.LBB0_155+0xbf4>
80002ccc: 93 07 00 00  	mv	a5, zero
80002cd0: 13 04 e0 00  	addi	s0, zero, 14
80002cd4: 37 95 88 88  	lui	a0, 559241
80002cd8: 87 31 0c 00  	fld	ft3, 0(s8)
80002cdc: 13 05 95 88  	addi	a0, a0, -1911
80002ce0: 93 04 e0 01  	addi	s1, zero, 30
80002ce4: 13 07 00 0f  	addi	a4, zero, 240
80002ce8: 83 2f 41 07  	lw	t6, 116(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002cec: b3 36 a4 02  	mulhu	a3, s0, a0
80002cf0: 93 d6 46 00  	srli	a3, a3, 4
80002cf4: b3 86 96 02  	mul	a3, a3, s1
80002cf8: b3 06 d4 40  	sub	a3, s0, a3
80002cfc: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002d00: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002d04: b3 86 f5 00  	add	a3, a1, a5
80002d08: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002d0c: 93 87 87 00  	addi	a5, a5, 8
80002d10: 13 04 e4 00  	addi	s0, s0, 14
80002d14: e3 9c e7 fc  	bne	a5, a4, 0x80002cec <.LBB0_155+0xbc8>
80002d18: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
80002d1c: 13 85 86 70  	addi	a0, a3, 1800
80002d20: 93 05 85 70  	addi	a1, a0, 1800
80002d24: 13 85 c6 77  	addi	a0, a3, 1916
80002d28: 13 05 c5 77  	addi	a0, a0, 1916
80002d2c: 93 d6 45 01  	srli	a3, a1, 20
80002d30: b3 36 d0 00  	snez	a3, a3
80002d34: 37 07 12 00  	lui	a4, 288
80002d38: 13 07 17 00  	addi	a4, a4, 1
80002d3c: 33 35 e5 00  	sltu	a0, a0, a4
80002d40: 33 f5 a6 00  	and	a0, a3, a0
80002d44: 63 0a 05 0a  	beqz	a0, 0x80002df8 <.LBB0_155+0xcd4>
80002d48: 13 05 80 00  	addi	a0, zero, 8
80002d4c: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
80002d50: 13 07 00 04  	addi	a4, zero, 64
80002d54: 93 07 00 0c  	addi	a5, zero, 192
80002d58: ab a0 e6 00  	scfgw	a3, a4
80002d5c: ab 20 f5 00  	scfgw	a0, a5
80002d60: 13 05 00 02  	addi	a0, zero, 32
80002d64: 87 b1 09 00  	fld	ft3, 0(s3)
80002d68: ab 20 a0 00  	scfgw	zero, a0
80002d6c: 2b a0 05 38  	scfgwi	a1, 896
80002d70: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002d74: 53 80 31 22  	fmv.d	ft0, ft3
80002d78: 53 02 00 d2  	fcvt.d.w	ft4, zero
80002d7c: 53 00 42 22  	fmv.d	ft0, ft4
80002d80: 53 80 31 22  	fmv.d	ft0, ft3
80002d84: 53 00 42 22  	fmv.d	ft0, ft4
80002d88: 53 80 31 22  	fmv.d	ft0, ft3
80002d8c: 53 00 42 22  	fmv.d	ft0, ft4
80002d90: 53 80 31 22  	fmv.d	ft0, ft3
80002d94: 53 00 42 22  	fmv.d	ft0, ft4
80002d98: 53 80 31 22  	fmv.d	ft0, ft3
80002d9c: 53 00 42 22  	fmv.d	ft0, ft4
80002da0: 53 80 31 22  	fmv.d	ft0, ft3
80002da4: 53 00 42 22  	fmv.d	ft0, ft4
80002da8: 53 80 31 22  	fmv.d	ft0, ft3
80002dac: 53 00 42 22  	fmv.d	ft0, ft4
80002db0: 53 80 31 22  	fmv.d	ft0, ft3
80002db4: 53 00 42 22  	fmv.d	ft0, ft4
80002db8: 53 80 31 22  	fmv.d	ft0, ft3
80002dbc: 53 00 42 22  	fmv.d	ft0, ft4
80002dc0: 53 80 31 22  	fmv.d	ft0, ft3
80002dc4: 53 00 42 22  	fmv.d	ft0, ft4
80002dc8: 53 80 31 22  	fmv.d	ft0, ft3
80002dcc: 53 00 42 22  	fmv.d	ft0, ft4
80002dd0: 53 80 31 22  	fmv.d	ft0, ft3
80002dd4: 53 00 42 22  	fmv.d	ft0, ft4
80002dd8: 53 80 31 22  	fmv.d	ft0, ft3
80002ddc: 53 00 42 22  	fmv.d	ft0, ft4
80002de0: 53 80 31 22  	fmv.d	ft0, ft3
80002de4: 53 00 42 22  	fmv.d	ft0, ft4
80002de8: 53 80 31 22  	fmv.d	ft0, ft3
80002dec: 53 00 42 22  	fmv.d	ft0, ft4
80002df0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002df4: 6f 00 c0 04  	j	0x80002e40 <.LBB0_155+0xd1c>
80002df8: 93 07 00 00  	mv	a5, zero
80002dfc: 13 04 f0 00  	addi	s0, zero, 15
80002e00: 37 95 88 88  	lui	a0, 559241
80002e04: 87 31 0c 00  	fld	ft3, 0(s8)
80002e08: 13 05 95 88  	addi	a0, a0, -1911
80002e0c: 93 04 e0 01  	addi	s1, zero, 30
80002e10: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002e14: b3 36 a4 02  	mulhu	a3, s0, a0
80002e18: 93 d6 46 00  	srli	a3, a3, 4
80002e1c: b3 86 96 02  	mul	a3, a3, s1
80002e20: b3 06 d4 40  	sub	a3, s0, a3
80002e24: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002e28: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002e2c: b3 86 f5 00  	add	a3, a1, a5
80002e30: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002e34: 93 87 87 00  	addi	a5, a5, 8
80002e38: 13 04 f4 00  	addi	s0, s0, 15
80002e3c: e3 9c e7 fc  	bne	a5, a4, 0x80002e14 <.LBB0_155+0xcf0>
80002e40: 93 85 0a 78  	addi	a1, s5, 1920
80002e44: 03 25 01 01  	lw	a0, 16(sp)
80002e48: 13 05 45 7f  	addi	a0, a0, 2036
80002e4c: 13 05 45 7f  	addi	a0, a0, 2036
80002e50: 93 d6 45 01  	srli	a3, a1, 20
80002e54: b3 36 d0 00  	snez	a3, a3
80002e58: 37 07 12 00  	lui	a4, 288
80002e5c: 13 07 17 00  	addi	a4, a4, 1
80002e60: 33 35 e5 00  	sltu	a0, a0, a4
80002e64: 33 f5 a6 00  	and	a0, a3, a0
80002e68: 63 0a 05 0e  	beqz	a0, 0x80002f5c <.LBB0_155+0xe38>
80002e6c: 13 05 80 00  	addi	a0, zero, 8
80002e70: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
80002e74: 13 07 00 04  	addi	a4, zero, 64
80002e78: 93 07 00 0c  	addi	a5, zero, 192
80002e7c: ab a0 e6 00  	scfgw	a3, a4
80002e80: ab 20 f5 00  	scfgw	a0, a5
80002e84: 13 05 00 02  	addi	a0, zero, 32
80002e88: ab 20 a0 00  	scfgw	zero, a0
80002e8c: 87 31 0f 00  	fld	ft3, 0(t5)
80002e90: 07 b2 08 00  	fld	ft4, 0(a7)
;         for (j = 0; j < nk; j++)
80002e94: 2b a0 05 38  	scfgwi	a1, 896
80002e98: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002e9c: 53 80 31 22  	fmv.d	ft0, ft3
80002ea0: 53 00 42 22  	fmv.d	ft0, ft4
80002ea4: 87 32 0b 00  	fld	ft5, 0(s6)
80002ea8: 07 b3 03 00  	fld	ft6, 0(t2)
80002eac: 87 b3 0b 00  	fld	ft7, 0(s7)
80002eb0: 07 b5 0e 00  	fld	fa0, 0(t4)
80002eb4: 53 80 52 22  	fmv.d	ft0, ft5
80002eb8: 53 00 63 22  	fmv.d	ft0, ft6
80002ebc: 53 80 73 22  	fmv.d	ft0, ft7
80002ec0: 53 00 a5 22  	fmv.d	ft0, fa0
80002ec4: 03 25 41 0b  	lw	a0, 180(sp)
80002ec8: 87 35 05 00  	fld	fa1, 0(a0)
80002ecc: 07 36 09 00  	fld	fa2, 0(s2)
80002ed0: 87 36 08 00  	fld	fa3, 0(a6)
80002ed4: 07 b7 0d 00  	fld	fa4, 0(s11)
80002ed8: 53 80 b5 22  	fmv.d	ft0, fa1
80002edc: 53 00 c6 22  	fmv.d	ft0, fa2
80002ee0: 53 80 d6 22  	fmv.d	ft0, fa3
80002ee4: 53 00 e7 22  	fmv.d	ft0, fa4
80002ee8: 87 37 0e 00  	fld	fa5, 0(t3)
80002eec: 07 38 0a 00  	fld	fa6, 0(s4)
80002ef0: 87 38 03 00  	fld	fa7, 0(t1)
80002ef4: 07 be 02 00  	fld	ft8, 0(t0)
80002ef8: 53 80 f7 22  	fmv.d	ft0, fa5
80002efc: 53 00 08 23  	fmv.d	ft0, fa6
80002f00: 53 80 18 23  	fmv.d	ft0, fa7
80002f04: 53 00 ce 23  	fmv.d	ft0, ft8
80002f08: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80002f0c: 53 80 de 23  	fmv.d	ft0, ft9
80002f10: 53 80 31 22  	fmv.d	ft0, ft3
80002f14: 53 00 42 22  	fmv.d	ft0, ft4
80002f18: 53 80 52 22  	fmv.d	ft0, ft5
80002f1c: 53 00 63 22  	fmv.d	ft0, ft6
80002f20: 53 80 73 22  	fmv.d	ft0, ft7
80002f24: 53 00 a5 22  	fmv.d	ft0, fa0
80002f28: 53 80 b5 22  	fmv.d	ft0, fa1
80002f2c: 53 00 c6 22  	fmv.d	ft0, fa2
80002f30: 53 80 d6 22  	fmv.d	ft0, fa3
80002f34: 53 00 e7 22  	fmv.d	ft0, fa4
80002f38: 53 80 f7 22  	fmv.d	ft0, fa5
80002f3c: 53 00 08 23  	fmv.d	ft0, fa6
80002f40: 53 80 18 23  	fmv.d	ft0, fa7
80002f44: 53 00 ce 23  	fmv.d	ft0, ft8
80002f48: 53 80 de 23  	fmv.d	ft0, ft9
80002f4c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002f50: 83 2c 01 0b  	lw	s9, 176(sp)
80002f54: 03 26 01 07  	lw	a2, 112(sp)
80002f58: 6f 00 40 05  	j	0x80002fac <.LBB0_155+0xe88>
80002f5c: 93 07 00 00  	mv	a5, zero
80002f60: 13 04 00 01  	addi	s0, zero, 16
80002f64: 37 95 88 88  	lui	a0, 559241
80002f68: 87 31 0c 00  	fld	ft3, 0(s8)
80002f6c: 13 05 95 88  	addi	a0, a0, -1911
80002f70: 93 04 e0 01  	addi	s1, zero, 30
80002f74: 13 07 00 0f  	addi	a4, zero, 240
80002f78: 83 2c 01 0b  	lw	s9, 176(sp)
80002f7c: 03 26 01 07  	lw	a2, 112(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002f80: b3 36 a4 02  	mulhu	a3, s0, a0
80002f84: 93 d6 46 00  	srli	a3, a3, 4
80002f88: b3 86 96 02  	mul	a3, a3, s1
80002f8c: b3 06 d4 40  	sub	a3, s0, a3
80002f90: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002f94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002f98: b3 86 f5 00  	add	a3, a1, a5
80002f9c: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002fa0: 93 87 87 00  	addi	a5, a5, 8
80002fa4: 13 04 04 01  	addi	s0, s0, 16
80002fa8: e3 9c e7 fc  	bne	a5, a4, 0x80002f80 <.LBB0_155+0xe5c>
80002fac: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
80002fb0: 13 85 86 7f  	addi	a0, a3, 2040
80002fb4: 93 05 85 7f  	addi	a1, a0, 2040
80002fb8: 37 15 00 00  	lui	a0, 1
80002fbc: 13 05 85 0d  	addi	a0, a0, 216
80002fc0: 33 85 a6 00  	add	a0, a3, a0
80002fc4: 93 d6 45 01  	srli	a3, a1, 20
80002fc8: b3 36 d0 00  	snez	a3, a3
80002fcc: 37 07 12 00  	lui	a4, 288
80002fd0: 13 07 17 00  	addi	a4, a4, 1
80002fd4: 33 35 e5 00  	sltu	a0, a0, a4
80002fd8: 33 f5 a6 00  	and	a0, a3, a0
80002fdc: 63 04 05 14  	beqz	a0, 0x80003124 <.LBB0_155+0x1000>
80002fe0: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80002fe4: 93 06 00 04  	addi	a3, zero, 64
80002fe8: ab 20 d5 00  	scfgw	a0, a3
80002fec: 13 05 80 00  	addi	a0, zero, 8
80002ff0: 93 06 00 0c  	addi	a3, zero, 192
80002ff4: ab 20 d5 00  	scfgw	a0, a3
80002ff8: 13 05 00 02  	addi	a0, zero, 32
80002ffc: 83 26 41 08  	lw	a3, 132(sp)
80003000: 87 b1 06 00  	fld	ft3, 0(a3)
80003004: ab 20 a0 00  	scfgw	zero, a0
80003008: 2b a0 05 38  	scfgwi	a1, 896
8000300c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003010: 53 80 31 22  	fmv.d	ft0, ft3
80003014: 87 b1 03 00  	fld	ft3, 0(t2)
80003018: 07 b2 00 00  	fld	ft4, 0(ra)
8000301c: 87 32 09 00  	fld	ft5, 0(s2)
80003020: 03 25 81 08  	lw	a0, 136(sp)
80003024: 07 33 05 00  	fld	ft6, 0(a0)
80003028: 53 80 31 22  	fmv.d	ft0, ft3
8000302c: 53 00 42 22  	fmv.d	ft0, ft4
80003030: 53 80 52 22  	fmv.d	ft0, ft5
80003034: 53 00 63 22  	fmv.d	ft0, ft6
80003038: 87 31 0a 00  	fld	ft3, 0(s4)
8000303c: 03 25 81 07  	lw	a0, 120(sp)
80003040: 07 32 05 00  	fld	ft4, 0(a0)
80003044: 87 32 0f 00  	fld	ft5, 0(t5)
80003048: 03 25 81 0b  	lw	a0, 184(sp)
8000304c: 07 33 05 00  	fld	ft6, 0(a0)
80003050: 53 80 31 22  	fmv.d	ft0, ft3
80003054: 53 00 42 22  	fmv.d	ft0, ft4
80003058: 53 80 52 22  	fmv.d	ft0, ft5
8000305c: 53 00 63 22  	fmv.d	ft0, ft6
80003060: 87 b1 0b 00  	fld	ft3, 0(s7)
80003064: 03 25 c1 07  	lw	a0, 124(sp)
80003068: 07 32 05 00  	fld	ft4, 0(a0)
8000306c: 87 32 08 00  	fld	ft5, 0(a6)
80003070: 03 25 c1 06  	lw	a0, 108(sp)
80003074: 07 33 05 00  	fld	ft6, 0(a0)
80003078: 53 80 31 22  	fmv.d	ft0, ft3
8000307c: 53 00 42 22  	fmv.d	ft0, ft4
80003080: 53 80 52 22  	fmv.d	ft0, ft5
80003084: 53 00 63 22  	fmv.d	ft0, ft6
80003088: 87 31 03 00  	fld	ft3, 0(t1)
8000308c: 07 b2 09 00  	fld	ft4, 0(s3)
80003090: 87 b2 08 00  	fld	ft5, 0(a7)
80003094: 07 33 06 00  	fld	ft6, 0(a2)
80003098: 53 80 31 22  	fmv.d	ft0, ft3
8000309c: 53 00 42 22  	fmv.d	ft0, ft4
800030a0: 53 80 52 22  	fmv.d	ft0, ft5
800030a4: 53 00 63 22  	fmv.d	ft0, ft6
800030a8: 87 b1 0e 00  	fld	ft3, 0(t4)
800030ac: 03 25 01 08  	lw	a0, 128(sp)
800030b0: 07 32 05 00  	fld	ft4, 0(a0)
800030b4: 87 b2 0d 00  	fld	ft5, 0(s11)
800030b8: 07 33 0d 00  	fld	ft6, 0(s10)
800030bc: 53 80 31 22  	fmv.d	ft0, ft3
800030c0: 53 00 42 22  	fmv.d	ft0, ft4
800030c4: 53 80 52 22  	fmv.d	ft0, ft5
800030c8: 53 00 63 22  	fmv.d	ft0, ft6
800030cc: 87 b1 02 00  	fld	ft3, 0(t0)
800030d0: 07 32 0c 00  	fld	ft4, 0(s8)
800030d4: 87 32 0b 00  	fld	ft5, 0(s6)
800030d8: 03 25 81 09  	lw	a0, 152(sp)
800030dc: 07 33 05 00  	fld	ft6, 0(a0)
800030e0: 53 80 31 22  	fmv.d	ft0, ft3
800030e4: 53 00 42 22  	fmv.d	ft0, ft4
800030e8: 53 80 52 22  	fmv.d	ft0, ft5
800030ec: 53 00 63 22  	fmv.d	ft0, ft6
800030f0: 03 25 41 0b  	lw	a0, 180(sp)
800030f4: 87 31 05 00  	fld	ft3, 0(a0)
800030f8: 07 b2 0c 00  	fld	ft4, 0(s9)
800030fc: 87 32 0e 00  	fld	ft5, 0(t3)
80003100: 07 b3 0f 00  	fld	ft6, 0(t6)
80003104: 53 80 31 22  	fmv.d	ft0, ft3
80003108: 53 00 42 22  	fmv.d	ft0, ft4
8000310c: 53 80 52 22  	fmv.d	ft0, ft5
80003110: 53 00 63 22  	fmv.d	ft0, ft6
80003114: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003118: 53 80 31 22  	fmv.d	ft0, ft3
8000311c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003120: 6f 00 c0 04  	j	0x8000316c <.LBB0_155+0x1048>
80003124: 93 07 00 00  	mv	a5, zero
80003128: 13 04 10 01  	addi	s0, zero, 17
8000312c: 37 95 88 88  	lui	a0, 559241
80003130: 87 31 0c 00  	fld	ft3, 0(s8)
80003134: 13 05 95 88  	addi	a0, a0, -1911
80003138: 93 04 e0 01  	addi	s1, zero, 30
8000313c: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003140: b3 36 a4 02  	mulhu	a3, s0, a0
80003144: 93 d6 46 00  	srli	a3, a3, 4
80003148: b3 86 96 02  	mul	a3, a3, s1
8000314c: b3 06 d4 40  	sub	a3, s0, a3
80003150: 53 82 06 d2  	fcvt.d.w	ft4, a3
80003154: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003158: b3 86 f5 00  	add	a3, a1, a5
8000315c: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80003160: 93 87 87 00  	addi	a5, a5, 8
80003164: 13 04 14 01  	addi	s0, s0, 17
80003168: e3 9c e7 fc  	bne	a5, a4, 0x80003140 <.LBB0_155+0x101c>
8000316c: 37 15 00 00  	lui	a0, 1
80003170: 93 05 05 0e  	addi	a1, a0, 224
80003174: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
80003178: b3 85 b6 00  	add	a1, a3, a1
8000317c: 13 05 85 1c  	addi	a0, a0, 456
80003180: 33 85 a6 00  	add	a0, a3, a0
80003184: 93 d6 45 01  	srli	a3, a1, 20
80003188: b3 36 d0 00  	snez	a3, a3
8000318c: 37 07 12 00  	lui	a4, 288
80003190: 13 07 17 00  	addi	a4, a4, 1
80003194: 33 35 e5 00  	sltu	a0, a0, a4
80003198: 33 f5 a6 00  	and	a0, a3, a0
8000319c: 63 00 05 0c  	beqz	a0, 0x8000325c <.LBB0_155+0x1138>
800031a0: 13 05 80 00  	addi	a0, zero, 8
800031a4: 93 06 d0 01  	addi	a3, zero, 29
;         for (j = 0; j < nk; j++)
800031a8: 13 07 00 04  	addi	a4, zero, 64
800031ac: 93 07 00 0c  	addi	a5, zero, 192
800031b0: ab a0 e6 00  	scfgw	a3, a4
800031b4: ab 20 f5 00  	scfgw	a0, a5
800031b8: 13 05 00 02  	addi	a0, zero, 32
800031bc: ab 20 a0 00  	scfgw	zero, a0
800031c0: 2b a0 05 38  	scfgwi	a1, 896
800031c4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800031c8: 87 31 0b 00  	fld	ft3, 0(s6)
800031cc: 07 b2 0e 00  	fld	ft4, 0(t4)
800031d0: 87 32 08 00  	fld	ft5, 0(a6)
800031d4: 07 33 0a 00  	fld	ft6, 0(s4)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800031d8: 53 80 31 22  	fmv.d	ft0, ft3
800031dc: 53 00 42 22  	fmv.d	ft0, ft4
800031e0: 53 80 52 22  	fmv.d	ft0, ft5
800031e4: 53 00 63 22  	fmv.d	ft0, ft6
800031e8: d3 03 00 d2  	fcvt.d.w	ft7, zero
800031ec: 53 80 73 22  	fmv.d	ft0, ft7
800031f0: 53 80 31 22  	fmv.d	ft0, ft3
800031f4: 53 00 42 22  	fmv.d	ft0, ft4
800031f8: 53 80 52 22  	fmv.d	ft0, ft5
800031fc: 53 00 63 22  	fmv.d	ft0, ft6
80003200: 53 80 73 22  	fmv.d	ft0, ft7
80003204: 53 80 31 22  	fmv.d	ft0, ft3
80003208: 53 00 42 22  	fmv.d	ft0, ft4
8000320c: 53 80 52 22  	fmv.d	ft0, ft5
80003210: 53 00 63 22  	fmv.d	ft0, ft6
80003214: 53 80 73 22  	fmv.d	ft0, ft7
80003218: 53 80 31 22  	fmv.d	ft0, ft3
8000321c: 53 00 42 22  	fmv.d	ft0, ft4
80003220: 53 80 52 22  	fmv.d	ft0, ft5
80003224: 53 00 63 22  	fmv.d	ft0, ft6
80003228: 53 80 73 22  	fmv.d	ft0, ft7
8000322c: 53 80 31 22  	fmv.d	ft0, ft3
80003230: 53 00 42 22  	fmv.d	ft0, ft4
80003234: 53 80 52 22  	fmv.d	ft0, ft5
80003238: 53 00 63 22  	fmv.d	ft0, ft6
8000323c: 53 80 73 22  	fmv.d	ft0, ft7
80003240: 53 80 31 22  	fmv.d	ft0, ft3
80003244: 53 00 42 22  	fmv.d	ft0, ft4
80003248: 53 80 52 22  	fmv.d	ft0, ft5
8000324c: 53 00 63 22  	fmv.d	ft0, ft6
80003250: 53 80 73 22  	fmv.d	ft0, ft7
80003254: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003258: 6f 00 c0 04  	j	0x800032a4 <.LBB0_155+0x1180>
8000325c: 93 07 00 00  	mv	a5, zero
80003260: 13 04 20 01  	addi	s0, zero, 18
80003264: 37 95 88 88  	lui	a0, 559241
80003268: 87 31 0c 00  	fld	ft3, 0(s8)
8000326c: 13 05 95 88  	addi	a0, a0, -1911
80003270: 93 04 e0 01  	addi	s1, zero, 30
80003274: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003278: b3 36 a4 02  	mulhu	a3, s0, a0
8000327c: 93 d6 46 00  	srli	a3, a3, 4
80003280: b3 86 96 02  	mul	a3, a3, s1
80003284: b3 06 d4 40  	sub	a3, s0, a3
80003288: 53 82 06 d2  	fcvt.d.w	ft4, a3
8000328c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003290: b3 86 f5 00  	add	a3, a1, a5
80003294: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80003298: 93 87 87 00  	addi	a5, a5, 8
8000329c: 13 04 24 01  	addi	s0, s0, 18
800032a0: e3 9c e7 fc  	bne	a5, a4, 0x80003278 <.LBB0_155+0x1154>
800032a4: 37 15 00 00  	lui	a0, 1
800032a8: 93 05 05 1d  	addi	a1, a0, 464
800032ac: 83 26 01 01  	lw	a3, 16(sp)
;         for (j = 0; j < nk; j++)
800032b0: b3 85 b6 00  	add	a1, a3, a1
800032b4: 13 05 85 2b  	addi	a0, a0, 696
800032b8: 33 85 a6 00  	add	a0, a3, a0
800032bc: 93 d6 45 01  	srli	a3, a1, 20
800032c0: b3 36 d0 00  	snez	a3, a3
800032c4: 37 07 12 00  	lui	a4, 288
800032c8: 13 07 17 00  	addi	a4, a4, 1
800032cc: 33 35 e5 00  	sltu	a0, a0, a4
800032d0: 33 f5 a6 00  	and	a0, a3, a0
800032d4: 63 04 05 14  	beqz	a0, 0x8000341c <.LBB0_155+0x12f8>
800032d8: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
800032dc: 93 06 00 04  	addi	a3, zero, 64
800032e0: ab 20 d5 00  	scfgw	a0, a3
800032e4: 13 05 80 00  	addi	a0, zero, 8
800032e8: 93 06 00 0c  	addi	a3, zero, 192
800032ec: ab 20 d5 00  	scfgw	a0, a3
800032f0: 13 05 00 02  	addi	a0, zero, 32
800032f4: ab 20 a0 00  	scfgw	zero, a0
800032f8: 2b a0 05 38  	scfgwi	a1, 896
800032fc: 87 31 06 00  	fld	ft3, 0(a2)
80003300: 07 32 09 00  	fld	ft4, 0(s2)
80003304: 87 32 0d 00  	fld	ft5, 0(s10)
80003308: 07 33 0f 00  	fld	ft6, 0(t5)
8000330c: 03 25 81 09  	lw	a0, 152(sp)
80003310: 87 33 05 00  	fld	ft7, 0(a0)
80003314: 07 35 08 00  	fld	fa0, 0(a6)
80003318: 87 b5 0f 00  	fld	fa1, 0(t6)
8000331c: 07 b6 08 00  	fld	fa2, 0(a7)
80003320: 87 b6 00 00  	fld	fa3, 0(ra)
80003324: 07 b7 0d 00  	fld	fa4, 0(s11)
80003328: 03 25 81 07  	lw	a0, 120(sp)
8000332c: 87 37 05 00  	fld	fa5, 0(a0)
80003330: 07 38 0b 00  	fld	fa6, 0(s6)
80003334: 03 25 c1 07  	lw	a0, 124(sp)
80003338: 87 38 05 00  	fld	fa7, 0(a0)
8000333c: 07 3e 0e 00  	fld	ft8, 0(t3)
80003340: 87 be 09 00  	fld	ft9, 0(s3)
80003344: 07 bf 03 00  	fld	ft10, 0(t2)
80003348: 03 25 01 08  	lw	a0, 128(sp)
8000334c: 87 3f 05 00  	fld	ft11, 0(a0)
80003350: 07 34 0a 00  	fld	fs0, 0(s4)
80003354: 87 34 0c 00  	fld	fs1, 0(s8)
80003358: 07 b9 0b 00  	fld	fs2, 0(s7)
8000335c: 87 b9 0c 00  	fld	fs3, 0(s9)
80003360: 07 3a 03 00  	fld	fs4, 0(t1)
80003364: 03 25 41 08  	lw	a0, 132(sp)
80003368: 87 3a 05 00  	fld	fs5, 0(a0)
8000336c: 07 bb 0e 00  	fld	fs6, 0(t4)
80003370: 03 25 81 08  	lw	a0, 136(sp)
80003374: 87 3b 05 00  	fld	fs7, 0(a0)
80003378: 07 bc 02 00  	fld	fs8, 0(t0)
8000337c: 03 25 81 0b  	lw	a0, 184(sp)
80003380: 87 3c 05 00  	fld	fs9, 0(a0)
80003384: 03 25 41 0b  	lw	a0, 180(sp)
80003388: 07 3d 05 00  	fld	fs10, 0(a0)
;         for (j = 0; j < nk; j++)
8000338c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003390: 53 80 31 22  	fmv.d	ft0, ft3
80003394: 53 00 42 22  	fmv.d	ft0, ft4
80003398: 53 80 52 22  	fmv.d	ft0, ft5
8000339c: 53 00 63 22  	fmv.d	ft0, ft6
800033a0: 53 80 73 22  	fmv.d	ft0, ft7
800033a4: 53 00 a5 22  	fmv.d	ft0, fa0
800033a8: 53 80 b5 22  	fmv.d	ft0, fa1
800033ac: 53 00 c6 22  	fmv.d	ft0, fa2
800033b0: 53 80 d6 22  	fmv.d	ft0, fa3
800033b4: 53 00 e7 22  	fmv.d	ft0, fa4
800033b8: 53 80 f7 22  	fmv.d	ft0, fa5
800033bc: 53 00 08 23  	fmv.d	ft0, fa6
800033c0: 53 80 18 23  	fmv.d	ft0, fa7
800033c4: 53 00 ce 23  	fmv.d	ft0, ft8
800033c8: 53 80 de 23  	fmv.d	ft0, ft9
800033cc: 53 00 ef 23  	fmv.d	ft0, ft10
800033d0: 53 80 ff 23  	fmv.d	ft0, ft11
800033d4: 53 00 84 22  	fmv.d	ft0, fs0
800033d8: 53 80 94 22  	fmv.d	ft0, fs1
800033dc: 53 00 29 23  	fmv.d	ft0, fs2
800033e0: 53 80 39 23  	fmv.d	ft0, fs3
800033e4: 53 00 4a 23  	fmv.d	ft0, fs4
800033e8: 53 80 5a 23  	fmv.d	ft0, fs5
800033ec: 53 00 6b 23  	fmv.d	ft0, fs6
800033f0: 53 80 7b 23  	fmv.d	ft0, fs7
800033f4: 03 25 c1 06  	lw	a0, 108(sp)
800033f8: 87 31 05 00  	fld	ft3, 0(a0)
800033fc: 53 00 8c 23  	fmv.d	ft0, fs8
80003400: 53 80 9c 23  	fmv.d	ft0, fs9
80003404: 53 00 ad 23  	fmv.d	ft0, fs10
80003408: 53 80 31 22  	fmv.d	ft0, ft3
8000340c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003410: 53 80 31 22  	fmv.d	ft0, ft3
80003414: 73 f5 00 7c  	csrrci	a0, 1984, 1
80003418: 6f 00 c0 04  	j	0x80003464 <.LBB0_155+0x1340>
8000341c: 13 05 00 00  	mv	a0, zero
80003420: 13 06 30 01  	addi	a2, zero, 19
80003424: b7 96 88 88  	lui	a3, 559241
80003428: 87 31 0c 00  	fld	ft3, 0(s8)
8000342c: 93 86 96 88  	addi	a3, a3, -1911
80003430: 13 07 e0 01  	addi	a4, zero, 30
80003434: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003438: b3 34 d6 02  	mulhu	s1, a2, a3
8000343c: 93 d4 44 00  	srli	s1, s1, 4
80003440: b3 84 e4 02  	mul	s1, s1, a4
80003444: b3 04 96 40  	sub	s1, a2, s1
80003448: 53 82 04 d2  	fcvt.d.w	ft4, s1
8000344c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003450: b3 84 a5 00  	add	s1, a1, a0
80003454: 27 b0 44 00  	fsd	ft4, 0(s1)
;         for (j = 0; j < nk; j++)
80003458: 13 05 85 00  	addi	a0, a0, 8
8000345c: 13 06 36 01  	addi	a2, a2, 19
80003460: e3 1c f5 fc  	bne	a0, a5, 0x80003438 <.LBB0_155+0x1314>
80003464: 83 26 c1 00  	lw	a3, 12(sp)
;     for (i = 0; i < nk; i++)
80003468: 03 25 01 00  	lw	a0, 0(sp)
8000346c: 33 85 a6 00  	add	a0, a3, a0
80003470: 93 d5 46 01  	srli	a1, a3, 20
80003474: b3 35 b0 00  	snez	a1, a1
80003478: 37 06 12 00  	lui	a2, 288
8000347c: 13 06 16 00  	addi	a2, a2, 1
80003480: 33 35 c5 00  	sltu	a0, a0, a2
80003484: 33 f5 a5 00  	and	a0, a1, a0
80003488: 23 28 a1 0a  	sw	a0, 176(sp)
8000348c: 13 07 00 00  	mv	a4, zero
80003490: 93 07 00 00  	mv	a5, zero
80003494: 93 04 00 00  	mv	s1, zero
80003498: 13 04 00 00  	mv	s0, zero
8000349c: 63 0a 05 3e  	beqz	a0, 0x80003890 <.LBB0_156+0x35c>
800034a0: 13 05 00 00  	mv	a0, zero
800034a4: 23 2c 01 0a  	sw	zero, 184(sp)
800034a8: 13 0f 00 00  	mv	t5, zero
800034ac: 93 0f 00 00  	mv	t6, zero
800034b0: 13 09 00 00  	mv	s2, zero
800034b4: 93 09 00 00  	mv	s3, zero
800034b8: 13 0a 00 00  	mv	s4, zero
800034bc: 93 0a 00 00  	mv	s5, zero
800034c0: 13 0b 00 00  	mv	s6, zero
800034c4: 93 0b 00 00  	mv	s7, zero
800034c8: 13 0c 00 00  	mv	s8, zero
800034cc: 93 0c 00 00  	mv	s9, zero
800034d0: 13 0d 00 00  	mv	s10, zero
800034d4: 93 00 00 00  	mv	ra, zero
800034d8: 13 08 00 00  	mv	a6, zero
800034dc: 93 08 00 00  	mv	a7, zero
800034e0: 93 02 00 00  	mv	t0, zero
800034e4: 13 03 00 00  	mv	t1, zero
800034e8: 93 03 00 00  	mv	t2, zero
800034ec: 13 0e 00 00  	mv	t3, zero
800034f0: 93 05 80 00  	addi	a1, zero, 8
800034f4: 93 0e 80 01  	addi	t4, zero, 24
;     for (i = 0; i < nk; i++)
800034f8: 13 06 00 04  	addi	a2, zero, 64
800034fc: 93 0d 00 0c  	addi	s11, zero, 192
80003500: ab a0 ce 00  	scfgw	t4, a2
80003504: ab a0 b5 01  	scfgw	a1, s11
80003508: 93 0e d0 01  	addi	t4, zero, 29
8000350c: 13 06 00 06  	addi	a2, zero, 96
80003510: 93 0d 00 0e  	addi	s11, zero, 224
80003514: ab a0 ce 00  	scfgw	t4, a2
80003518: ab a0 b5 01  	scfgw	a1, s11
8000351c: 93 05 00 02  	addi	a1, zero, 32
80003520: ab 20 b0 00  	scfgw	zero, a1
80003524: 2b a0 06 3a  	scfgwi	a3, 928
80003528: f3 e5 00 7c  	csrrsi	a1, 1984, 1
8000352c: b7 85 eb 51  	lui	a1, 335544
80003530: 93 85 f5 51  	addi	a1, a1, 1311

80003534 <.LBB0_156>:
80003534: 17 46 00 00  	auipc	a2, 4
80003538: 13 06 c6 c1  	addi	a2, a2, -996
8000353c: 87 31 06 00  	fld	ft3, 0(a2)
80003540: 93 0e 90 01  	addi	t4, zero, 25
80003544: 53 02 00 d2  	fcvt.d.w	ft4, zero
;             B[i][j] = (double) (i*(j+2) % nj) / nj;
80003548: b3 3d b7 02  	mulhu	s11, a4, a1
8000354c: 93 d6 3d 00  	srli	a3, s11, 3
80003550: b3 86 d6 03  	mul	a3, a3, t4
80003554: b3 06 d7 40  	sub	a3, a4, a3
80003558: d3 82 06 d2  	fcvt.d.w	ft5, a3
8000355c: b3 b6 b7 02  	mulhu	a3, a5, a1
80003560: 93 d6 36 00  	srli	a3, a3, 3
80003564: b3 86 d6 03  	mul	a3, a3, t4
80003568: b3 86 d7 40  	sub	a3, a5, a3
8000356c: 53 83 06 d2  	fcvt.d.w	ft6, a3
80003570: b3 b6 b4 02  	mulhu	a3, s1, a1
80003574: 93 d6 36 00  	srli	a3, a3, 3
80003578: b3 86 d6 03  	mul	a3, a3, t4
8000357c: b3 86 d4 40  	sub	a3, s1, a3
80003580: d3 83 06 d2  	fcvt.d.w	ft7, a3
80003584: b3 36 b4 02  	mulhu	a3, s0, a1
80003588: 93 d6 36 00  	srli	a3, a3, 3
8000358c: b3 86 d6 03  	mul	a3, a3, t4
80003590: b3 06 d4 40  	sub	a3, s0, a3
80003594: 53 85 06 d2  	fcvt.d.w	fa0, a3
80003598: b3 36 b5 02  	mulhu	a3, a0, a1
8000359c: 93 d6 36 00  	srli	a3, a3, 3
800035a0: b3 86 d6 03  	mul	a3, a3, t4
800035a4: b3 06 d5 40  	sub	a3, a0, a3
800035a8: d3 85 06 d2  	fcvt.d.w	fa1, a3
800035ac: 83 2d 81 0b  	lw	s11, 184(sp)
800035b0: b3 b6 bd 02  	mulhu	a3, s11, a1
800035b4: 93 d6 36 00  	srli	a3, a3, 3
800035b8: b3 86 d6 03  	mul	a3, a3, t4
800035bc: b3 86 dd 40  	sub	a3, s11, a3
800035c0: 53 86 06 d2  	fcvt.d.w	fa2, a3
800035c4: b3 36 bf 02  	mulhu	a3, t5, a1
800035c8: 93 d6 36 00  	srli	a3, a3, 3
800035cc: b3 86 d6 03  	mul	a3, a3, t4
800035d0: b3 06 df 40  	sub	a3, t5, a3
800035d4: d3 86 06 d2  	fcvt.d.w	fa3, a3
800035d8: b3 b6 bf 02  	mulhu	a3, t6, a1
800035dc: 93 d6 36 00  	srli	a3, a3, 3
800035e0: b3 86 d6 03  	mul	a3, a3, t4
800035e4: b3 86 df 40  	sub	a3, t6, a3
800035e8: 53 87 06 d2  	fcvt.d.w	fa4, a3
800035ec: b3 36 b9 02  	mulhu	a3, s2, a1
800035f0: 93 d6 36 00  	srli	a3, a3, 3
800035f4: b3 86 d6 03  	mul	a3, a3, t4
800035f8: b3 06 d9 40  	sub	a3, s2, a3
800035fc: d3 87 06 d2  	fcvt.d.w	fa5, a3
80003600: b3 b6 b9 02  	mulhu	a3, s3, a1
80003604: 93 d6 36 00  	srli	a3, a3, 3
80003608: b3 86 d6 03  	mul	a3, a3, t4
8000360c: b3 86 d9 40  	sub	a3, s3, a3
80003610: 53 88 06 d2  	fcvt.d.w	fa6, a3
80003614: b3 36 ba 02  	mulhu	a3, s4, a1
80003618: 93 d6 36 00  	srli	a3, a3, 3
8000361c: b3 86 d6 03  	mul	a3, a3, t4
80003620: b3 06 da 40  	sub	a3, s4, a3
80003624: d3 88 06 d2  	fcvt.d.w	fa7, a3
80003628: b3 b6 ba 02  	mulhu	a3, s5, a1
8000362c: 93 d6 36 00  	srli	a3, a3, 3
80003630: b3 86 d6 03  	mul	a3, a3, t4
80003634: b3 86 da 40  	sub	a3, s5, a3
80003638: 53 8e 06 d2  	fcvt.d.w	ft8, a3
8000363c: b3 36 bb 02  	mulhu	a3, s6, a1
80003640: 93 d6 36 00  	srli	a3, a3, 3
80003644: b3 86 d6 03  	mul	a3, a3, t4
80003648: b3 06 db 40  	sub	a3, s6, a3
8000364c: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80003650: b3 b6 bb 02  	mulhu	a3, s7, a1
80003654: 93 d6 36 00  	srli	a3, a3, 3
80003658: b3 86 d6 03  	mul	a3, a3, t4
8000365c: b3 86 db 40  	sub	a3, s7, a3
80003660: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80003664: b3 36 bc 02  	mulhu	a3, s8, a1
80003668: 93 d6 36 00  	srli	a3, a3, 3
8000366c: b3 86 d6 03  	mul	a3, a3, t4
80003670: b3 06 dc 40  	sub	a3, s8, a3
80003674: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80003678: b3 b6 bc 02  	mulhu	a3, s9, a1
8000367c: 93 d6 36 00  	srli	a3, a3, 3
80003680: b3 86 d6 03  	mul	a3, a3, t4
80003684: b3 86 dc 40  	sub	a3, s9, a3
80003688: 53 84 06 d2  	fcvt.d.w	fs0, a3
8000368c: b3 36 bd 02  	mulhu	a3, s10, a1
80003690: 93 d6 36 00  	srli	a3, a3, 3
80003694: b3 86 d6 03  	mul	a3, a3, t4
80003698: b3 06 dd 40  	sub	a3, s10, a3
8000369c: d3 84 06 d2  	fcvt.d.w	fs1, a3
800036a0: b3 b6 b0 02  	mulhu	a3, ra, a1
800036a4: 93 d6 36 00  	srli	a3, a3, 3
800036a8: b3 86 d6 03  	mul	a3, a3, t4
800036ac: b3 86 d0 40  	sub	a3, ra, a3
800036b0: 53 89 06 d2  	fcvt.d.w	fs2, a3
800036b4: b3 36 b8 02  	mulhu	a3, a6, a1
800036b8: 93 d6 36 00  	srli	a3, a3, 3
800036bc: b3 86 d6 03  	mul	a3, a3, t4
800036c0: b3 06 d8 40  	sub	a3, a6, a3
800036c4: d3 89 06 d2  	fcvt.d.w	fs3, a3
800036c8: b3 b6 b8 02  	mulhu	a3, a7, a1
800036cc: 93 d6 36 00  	srli	a3, a3, 3
800036d0: b3 86 d6 03  	mul	a3, a3, t4
800036d4: b3 86 d8 40  	sub	a3, a7, a3
800036d8: 53 8a 06 d2  	fcvt.d.w	fs4, a3
800036dc: b3 b6 b2 02  	mulhu	a3, t0, a1
800036e0: 93 d6 36 00  	srli	a3, a3, 3
800036e4: b3 86 d6 03  	mul	a3, a3, t4
800036e8: b3 86 d2 40  	sub	a3, t0, a3
800036ec: d3 8a 06 d2  	fcvt.d.w	fs5, a3
800036f0: b3 36 b3 02  	mulhu	a3, t1, a1
800036f4: 93 d6 36 00  	srli	a3, a3, 3
800036f8: b3 86 d6 03  	mul	a3, a3, t4
800036fc: b3 06 d3 40  	sub	a3, t1, a3
80003700: 53 8b 06 d2  	fcvt.d.w	fs6, a3
80003704: b3 b6 b3 02  	mulhu	a3, t2, a1
80003708: 93 d6 36 00  	srli	a3, a3, 3
8000370c: b3 86 d6 03  	mul	a3, a3, t4
80003710: b3 86 d3 40  	sub	a3, t2, a3
80003714: d3 8b 06 d2  	fcvt.d.w	fs7, a3
80003718: b3 36 be 02  	mulhu	a3, t3, a1
8000371c: 93 d6 36 00  	srli	a3, a3, 3
80003720: 13 06 05 00  	mv	a2, a0
80003724: 13 05 04 00  	mv	a0, s0
80003728: 13 84 04 00  	mv	s0, s1
8000372c: 93 84 07 00  	mv	s1, a5
80003730: 93 07 07 00  	mv	a5, a4
80003734: 13 07 70 fe  	addi	a4, zero, -25
80003738: b3 86 e6 02  	mul	a3, a3, a4
8000373c: 13 87 07 00  	mv	a4, a5
80003740: 93 87 04 00  	mv	a5, s1
80003744: 93 04 04 00  	mv	s1, s0
80003748: 13 04 05 00  	mv	s0, a0
8000374c: 13 05 06 00  	mv	a0, a2
80003750: b3 06 de 00  	add	a3, t3, a3
80003754: 53 8c 06 d2  	fcvt.d.w	fs8, a3
80003758: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000375c: 53 80 52 22  	fmv.d	ft0, ft5
80003760: d3 72 33 12  	fmul.d	ft5, ft6, ft3
80003764: 53 80 52 22  	fmv.d	ft0, ft5
80003768: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
8000376c: 53 80 52 22  	fmv.d	ft0, ft5
80003770: d3 72 35 12  	fmul.d	ft5, fa0, ft3
80003774: 53 80 52 22  	fmv.d	ft0, ft5
80003778: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
8000377c: 53 80 52 22  	fmv.d	ft0, ft5
80003780: d3 72 36 12  	fmul.d	ft5, fa2, ft3
80003784: 53 80 52 22  	fmv.d	ft0, ft5
80003788: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
8000378c: 53 80 52 22  	fmv.d	ft0, ft5
80003790: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80003794: 53 80 52 22  	fmv.d	ft0, ft5
80003798: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
8000379c: 53 80 52 22  	fmv.d	ft0, ft5
800037a0: d3 72 38 12  	fmul.d	ft5, fa6, ft3
800037a4: 53 80 52 22  	fmv.d	ft0, ft5
800037a8: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
800037ac: 53 80 52 22  	fmv.d	ft0, ft5
800037b0: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
800037b4: 53 80 52 22  	fmv.d	ft0, ft5
800037b8: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
800037bc: 53 80 52 22  	fmv.d	ft0, ft5
800037c0: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
800037c4: 53 80 52 22  	fmv.d	ft0, ft5
800037c8: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
800037cc: 53 80 52 22  	fmv.d	ft0, ft5
800037d0: d3 72 34 12  	fmul.d	ft5, fs0, ft3
800037d4: 53 80 52 22  	fmv.d	ft0, ft5
800037d8: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
800037dc: 53 80 52 22  	fmv.d	ft0, ft5
800037e0: d3 72 39 12  	fmul.d	ft5, fs2, ft3
800037e4: 53 80 52 22  	fmv.d	ft0, ft5
800037e8: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
800037ec: 53 80 52 22  	fmv.d	ft0, ft5
800037f0: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
800037f4: 53 80 52 22  	fmv.d	ft0, ft5
800037f8: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
800037fc: 53 80 52 22  	fmv.d	ft0, ft5
80003800: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80003804: 53 80 52 22  	fmv.d	ft0, ft5
80003808: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
8000380c: 53 80 52 22  	fmv.d	ft0, ft5
80003810: 53 00 42 22  	fmv.d	ft0, ft4
80003814: d3 72 3c 12  	fmul.d	ft5, fs8, ft3
80003818: 53 80 52 22  	fmv.d	ft0, ft5
;     for (i = 0; i < nk; i++)
8000381c: 13 0e ae 01  	addi	t3, t3, 26
80003820: 93 83 83 01  	addi	t2, t2, 24
80003824: 13 03 73 01  	addi	t1, t1, 23
80003828: 93 82 62 01  	addi	t0, t0, 22
8000382c: 93 88 58 01  	addi	a7, a7, 21
80003830: 13 08 48 01  	addi	a6, a6, 20
80003834: 93 80 30 01  	addi	ra, ra, 19
80003838: 13 0d 2d 01  	addi	s10, s10, 18
8000383c: 93 8c 1c 01  	addi	s9, s9, 17
80003840: 13 0c 0c 01  	addi	s8, s8, 16
80003844: 93 8b fb 00  	addi	s7, s7, 15
80003848: 13 0b eb 00  	addi	s6, s6, 14
8000384c: 93 8a da 00  	addi	s5, s5, 13
80003850: 13 0a ca 00  	addi	s4, s4, 12
80003854: 93 89 b9 00  	addi	s3, s3, 11
80003858: 13 09 a9 00  	addi	s2, s2, 10
8000385c: 93 8f 9f 00  	addi	t6, t6, 9
80003860: 13 0f 8f 00  	addi	t5, t5, 8
80003864: 93 8d 7d 00  	addi	s11, s11, 7
80003868: 23 2c b1 0b  	sw	s11, 184(sp)
8000386c: 13 05 66 00  	addi	a0, a2, 6
80003870: 13 04 54 00  	addi	s0, s0, 5
80003874: 93 84 44 00  	addi	s1, s1, 4
80003878: 93 87 37 00  	addi	a5, a5, 3
8000387c: 13 07 27 00  	addi	a4, a4, 2
80003880: 13 06 c0 30  	addi	a2, zero, 780
80003884: e3 12 ce cc  	bne	t3, a2, 0x80003548 <.LBB0_156+0x14>
80003888: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000388c: 6f 00 00 43  	j	0x80003cbc <.LBB0_157+0x3d0>
80003890: 93 00 00 00  	mv	ra, zero
80003894: 93 0e 00 00  	mv	t4, zero
80003898: 13 0f 00 00  	mv	t5, zero
8000389c: 93 0f 00 00  	mv	t6, zero
800038a0: 13 09 00 00  	mv	s2, zero
800038a4: 93 09 00 00  	mv	s3, zero
800038a8: 13 0a 00 00  	mv	s4, zero
800038ac: 93 0a 00 00  	mv	s5, zero
800038b0: 13 0b 00 00  	mv	s6, zero
800038b4: 13 08 00 00  	mv	a6, zero
800038b8: 93 0b 00 00  	mv	s7, zero
800038bc: 13 0c 00 00  	mv	s8, zero
800038c0: 93 0c 00 00  	mv	s9, zero
800038c4: 13 0d 00 00  	mv	s10, zero
800038c8: 93 0d 00 00  	mv	s11, zero
800038cc: 93 08 00 00  	mv	a7, zero
800038d0: 93 02 00 00  	mv	t0, zero
800038d4: 13 03 00 00  	mv	t1, zero
800038d8: 93 03 00 00  	mv	t2, zero
800038dc: 13 0e 00 00  	mv	t3, zero
;     for (i = 0; i < nk; i++)
800038e0: 13 85 06 06  	addi	a0, a3, 96
800038e4: b7 85 eb 51  	lui	a1, 335544
800038e8: 93 85 f5 51  	addi	a1, a1, 1311

800038ec <.LBB0_157>:
800038ec: 17 46 00 00  	auipc	a2, 4
800038f0: 13 06 46 86  	addi	a2, a2, -1948
800038f4: 87 31 06 00  	fld	ft3, 0(a2)
800038f8: 13 06 90 01  	addi	a2, zero, 25
;             B[i][j] = (double) (i*(j+2) % nj) / nj;
800038fc: 23 2a c1 0b  	sw	t3, 180(sp)
80003900: 23 2c e1 0a  	sw	a4, 184(sp)
80003904: b3 b6 b3 02  	mulhu	a3, t2, a1
80003908: 93 d6 36 00  	srli	a3, a3, 3
8000390c: b3 86 c6 02  	mul	a3, a3, a2
80003910: 13 87 00 00  	mv	a4, ra
80003914: b3 80 d3 40  	sub	ra, t2, a3
80003918: 53 82 00 d2  	fcvt.d.w	ft4, ra
8000391c: 93 00 07 00  	mv	ra, a4
80003920: 03 27 81 0b  	lw	a4, 184(sp)
80003924: b3 36 b3 02  	mulhu	a3, t1, a1
80003928: 93 d6 36 00  	srli	a3, a3, 3
8000392c: b3 86 c6 02  	mul	a3, a3, a2
80003930: b3 06 d3 40  	sub	a3, t1, a3
80003934: d3 82 06 d2  	fcvt.d.w	ft5, a3
80003938: b3 b6 b2 02  	mulhu	a3, t0, a1
8000393c: 93 d6 36 00  	srli	a3, a3, 3
80003940: b3 86 c6 02  	mul	a3, a3, a2
80003944: b3 86 d2 40  	sub	a3, t0, a3
80003948: 53 83 06 d2  	fcvt.d.w	ft6, a3
8000394c: b3 b6 bd 02  	mulhu	a3, s11, a1
80003950: 93 d6 36 00  	srli	a3, a3, 3
80003954: b3 86 c6 02  	mul	a3, a3, a2
80003958: b3 86 dd 40  	sub	a3, s11, a3
8000395c: d3 83 06 d2  	fcvt.d.w	ft7, a3
80003960: b3 b6 bc 02  	mulhu	a3, s9, a1
80003964: 93 d6 36 00  	srli	a3, a3, 3
80003968: b3 86 c6 02  	mul	a3, a3, a2
8000396c: b3 86 dc 40  	sub	a3, s9, a3
80003970: 53 85 06 d2  	fcvt.d.w	fa0, a3
80003974: b3 b6 bb 02  	mulhu	a3, s7, a1
80003978: 93 d6 36 00  	srli	a3, a3, 3
8000397c: b3 86 c6 02  	mul	a3, a3, a2
80003980: b3 86 db 40  	sub	a3, s7, a3
80003984: d3 85 06 d2  	fcvt.d.w	fa1, a3
80003988: b3 36 bb 02  	mulhu	a3, s6, a1
8000398c: 93 d6 36 00  	srli	a3, a3, 3
80003990: b3 86 c6 02  	mul	a3, a3, a2
80003994: b3 06 db 40  	sub	a3, s6, a3
80003998: 53 86 06 d2  	fcvt.d.w	fa2, a3
8000399c: b3 36 ba 02  	mulhu	a3, s4, a1
800039a0: 93 d6 36 00  	srli	a3, a3, 3
800039a4: b3 86 c6 02  	mul	a3, a3, a2
800039a8: b3 06 da 40  	sub	a3, s4, a3
800039ac: d3 86 06 d2  	fcvt.d.w	fa3, a3
800039b0: b3 36 b9 02  	mulhu	a3, s2, a1
800039b4: 93 d6 36 00  	srli	a3, a3, 3
800039b8: b3 86 c6 02  	mul	a3, a3, a2
800039bc: b3 06 d9 40  	sub	a3, s2, a3
800039c0: 53 87 06 d2  	fcvt.d.w	fa4, a3
800039c4: b3 36 bf 02  	mulhu	a3, t5, a1
800039c8: 93 d6 36 00  	srli	a3, a3, 3
800039cc: b3 86 c6 02  	mul	a3, a3, a2
800039d0: b3 06 df 40  	sub	a3, t5, a3
800039d4: d3 87 06 d2  	fcvt.d.w	fa5, a3
800039d8: b3 b6 b0 02  	mulhu	a3, ra, a1
800039dc: 93 d6 36 00  	srli	a3, a3, 3
800039e0: b3 86 c6 02  	mul	a3, a3, a2
800039e4: b3 86 d0 40  	sub	a3, ra, a3
800039e8: 53 88 06 d2  	fcvt.d.w	fa6, a3
800039ec: b3 b6 b4 02  	mulhu	a3, s1, a1
800039f0: 93 d6 36 00  	srli	a3, a3, 3
800039f4: b3 86 c6 02  	mul	a3, a3, a2
800039f8: b3 86 d4 40  	sub	a3, s1, a3
800039fc: d3 88 06 d2  	fcvt.d.w	fa7, a3
80003a00: b3 36 b7 02  	mulhu	a3, a4, a1
80003a04: 93 d6 36 00  	srli	a3, a3, 3
80003a08: b3 86 c6 02  	mul	a3, a3, a2
80003a0c: b3 06 d7 40  	sub	a3, a4, a3
80003a10: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80003a14: b3 b6 b7 02  	mulhu	a3, a5, a1
80003a18: 93 d6 36 00  	srli	a3, a3, 3
80003a1c: b3 86 c6 02  	mul	a3, a3, a2
80003a20: b3 86 d7 40  	sub	a3, a5, a3
80003a24: d3 8e 06 d2  	fcvt.d.w	ft9, a3
80003a28: b3 36 b4 02  	mulhu	a3, s0, a1
80003a2c: 93 d6 36 00  	srli	a3, a3, 3
80003a30: b3 86 c6 02  	mul	a3, a3, a2
80003a34: b3 06 d4 40  	sub	a3, s0, a3
80003a38: 53 8f 06 d2  	fcvt.d.w	ft10, a3
80003a3c: b3 b6 be 02  	mulhu	a3, t4, a1
80003a40: 93 d6 36 00  	srli	a3, a3, 3
80003a44: b3 86 c6 02  	mul	a3, a3, a2
80003a48: b3 86 de 40  	sub	a3, t4, a3
80003a4c: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80003a50: b3 b6 bf 02  	mulhu	a3, t6, a1
80003a54: 93 d6 36 00  	srli	a3, a3, 3
80003a58: b3 86 c6 02  	mul	a3, a3, a2
80003a5c: b3 86 df 40  	sub	a3, t6, a3
80003a60: 53 84 06 d2  	fcvt.d.w	fs0, a3
80003a64: b3 b6 b9 02  	mulhu	a3, s3, a1
80003a68: 93 d6 36 00  	srli	a3, a3, 3
80003a6c: b3 86 c6 02  	mul	a3, a3, a2
80003a70: b3 86 d9 40  	sub	a3, s3, a3
80003a74: d3 84 06 d2  	fcvt.d.w	fs1, a3
80003a78: b3 b6 ba 02  	mulhu	a3, s5, a1
80003a7c: 93 d6 36 00  	srli	a3, a3, 3
80003a80: b3 86 c6 02  	mul	a3, a3, a2
80003a84: b3 86 da 40  	sub	a3, s5, a3
80003a88: 53 89 06 d2  	fcvt.d.w	fs2, a3
80003a8c: b3 36 b8 02  	mulhu	a3, a6, a1
80003a90: 93 d6 36 00  	srli	a3, a3, 3
80003a94: b3 86 c6 02  	mul	a3, a3, a2
80003a98: b3 06 d8 40  	sub	a3, a6, a3
80003a9c: d3 89 06 d2  	fcvt.d.w	fs3, a3
80003aa0: b3 36 bc 02  	mulhu	a3, s8, a1
80003aa4: 93 d6 36 00  	srli	a3, a3, 3
80003aa8: b3 86 c6 02  	mul	a3, a3, a2
80003aac: b3 06 dc 40  	sub	a3, s8, a3
80003ab0: 53 8a 06 d2  	fcvt.d.w	fs4, a3
80003ab4: b3 36 bd 02  	mulhu	a3, s10, a1
80003ab8: 93 d6 36 00  	srli	a3, a3, 3
80003abc: b3 86 c6 02  	mul	a3, a3, a2
80003ac0: b3 06 dd 40  	sub	a3, s10, a3
80003ac4: d3 8a 06 d2  	fcvt.d.w	fs5, a3
80003ac8: b3 b6 b8 02  	mulhu	a3, a7, a1
80003acc: 93 d6 36 00  	srli	a3, a3, 3
80003ad0: b3 86 c6 02  	mul	a3, a3, a2
80003ad4: b3 86 d8 40  	sub	a3, a7, a3
80003ad8: 53 8b 06 d2  	fcvt.d.w	fs6, a3
80003adc: b3 36 be 02  	mulhu	a3, t3, a1
80003ae0: 93 d6 36 00  	srli	a3, a3, 3
80003ae4: 13 8e 03 00  	mv	t3, t2
80003ae8: 93 03 03 00  	mv	t2, t1
80003aec: 13 83 02 00  	mv	t1, t0
80003af0: 93 82 08 00  	mv	t0, a7
80003af4: 93 88 0d 00  	mv	a7, s11
80003af8: 93 0d 0d 00  	mv	s11, s10
80003afc: 13 8d 0c 00  	mv	s10, s9
80003b00: 93 0c 0c 00  	mv	s9, s8
80003b04: 13 8c 0b 00  	mv	s8, s7
80003b08: 93 0b 08 00  	mv	s7, a6
80003b0c: 13 08 0b 00  	mv	a6, s6
80003b10: 13 8b 0a 00  	mv	s6, s5
80003b14: 93 0a 0a 00  	mv	s5, s4
80003b18: 13 8a 09 00  	mv	s4, s3
80003b1c: 93 09 09 00  	mv	s3, s2
80003b20: 13 89 0f 00  	mv	s2, t6
80003b24: 93 0f 0f 00  	mv	t6, t5
80003b28: 13 8f 0e 00  	mv	t5, t4
80003b2c: 93 0e 70 fe  	addi	t4, zero, -25
80003b30: b3 86 d6 03  	mul	a3, a3, t4
80003b34: 93 0e 0f 00  	mv	t4, t5
80003b38: 13 8f 0f 00  	mv	t5, t6
80003b3c: 93 0f 09 00  	mv	t6, s2
80003b40: 13 89 09 00  	mv	s2, s3
80003b44: 93 09 0a 00  	mv	s3, s4
80003b48: 13 8a 0a 00  	mv	s4, s5
80003b4c: 93 0a 0b 00  	mv	s5, s6
80003b50: 13 0b 08 00  	mv	s6, a6
80003b54: 13 88 0b 00  	mv	a6, s7
80003b58: 93 0b 0c 00  	mv	s7, s8
80003b5c: 13 8c 0c 00  	mv	s8, s9
80003b60: 93 0c 0d 00  	mv	s9, s10
80003b64: 13 8d 0d 00  	mv	s10, s11
80003b68: 93 8d 08 00  	mv	s11, a7
80003b6c: 93 88 02 00  	mv	a7, t0
80003b70: 93 02 03 00  	mv	t0, t1
80003b74: 13 83 03 00  	mv	t1, t2
80003b78: 93 03 0e 00  	mv	t2, t3
80003b7c: 03 2e 41 0b  	lw	t3, 180(sp)
80003b80: b3 06 de 00  	add	a3, t3, a3
80003b84: d3 8b 06 d2  	fcvt.d.w	fs7, a3
80003b88: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003b8c: 27 30 45 fa  	fsd	ft4, -96(a0)
80003b90: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80003b94: 27 34 45 fa  	fsd	ft4, -88(a0)
80003b98: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80003b9c: 27 38 45 fa  	fsd	ft4, -80(a0)
80003ba0: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80003ba4: 27 3c 45 fa  	fsd	ft4, -72(a0)
80003ba8: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80003bac: 27 30 45 fc  	fsd	ft4, -64(a0)
80003bb0: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80003bb4: 27 34 45 fc  	fsd	ft4, -56(a0)
80003bb8: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80003bbc: 27 38 45 fc  	fsd	ft4, -48(a0)
80003bc0: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80003bc4: 27 3c 45 fc  	fsd	ft4, -40(a0)
80003bc8: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80003bcc: 27 30 45 fe  	fsd	ft4, -32(a0)
80003bd0: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80003bd4: 27 34 45 fe  	fsd	ft4, -24(a0)
80003bd8: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80003bdc: 27 38 45 fe  	fsd	ft4, -16(a0)
80003be0: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80003be4: 27 3c 45 fe  	fsd	ft4, -8(a0)
80003be8: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80003bec: 27 30 45 00  	fsd	ft4, 0(a0)
80003bf0: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80003bf4: 27 34 45 00  	fsd	ft4, 8(a0)
80003bf8: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80003bfc: 27 38 45 00  	fsd	ft4, 16(a0)
80003c00: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80003c04: 27 3c 45 00  	fsd	ft4, 24(a0)
80003c08: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80003c0c: 27 30 45 02  	fsd	ft4, 32(a0)
80003c10: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80003c14: 27 34 45 02  	fsd	ft4, 40(a0)
80003c18: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80003c1c: 27 38 45 02  	fsd	ft4, 48(a0)
80003c20: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80003c24: 27 3c 45 02  	fsd	ft4, 56(a0)
80003c28: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80003c2c: 27 30 45 04  	fsd	ft4, 64(a0)
80003c30: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80003c34: 27 34 45 04  	fsd	ft4, 72(a0)
80003c38: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80003c3c: 27 38 45 04  	fsd	ft4, 80(a0)
80003c40: 23 2e 05 04  	sw	zero, 92(a0)
80003c44: 23 2c 05 04  	sw	zero, 88(a0)
80003c48: 53 f2 3b 12  	fmul.d	ft4, fs7, ft3
80003c4c: 27 30 45 06  	fsd	ft4, 96(a0)
;     for (i = 0; i < nk; i++)
80003c50: 13 0e ae 01  	addi	t3, t3, 26
80003c54: 93 83 23 00  	addi	t2, t2, 2
80003c58: 13 03 33 00  	addi	t1, t1, 3
80003c5c: 93 82 42 00  	addi	t0, t0, 4
80003c60: 93 88 88 01  	addi	a7, a7, 24
80003c64: 93 8d 5d 00  	addi	s11, s11, 5
80003c68: 13 0d 7d 01  	addi	s10, s10, 23
80003c6c: 93 8c 6c 00  	addi	s9, s9, 6
80003c70: 13 0c 6c 01  	addi	s8, s8, 22
80003c74: 93 8b 7b 00  	addi	s7, s7, 7
80003c78: 13 08 58 01  	addi	a6, a6, 21
80003c7c: 13 0b 8b 00  	addi	s6, s6, 8
80003c80: 93 8a 4a 01  	addi	s5, s5, 20
80003c84: 13 0a 9a 00  	addi	s4, s4, 9
80003c88: 93 89 39 01  	addi	s3, s3, 19
80003c8c: 13 09 a9 00  	addi	s2, s2, 10
80003c90: 93 8f 2f 01  	addi	t6, t6, 18
80003c94: 13 0f bf 00  	addi	t5, t5, 11
80003c98: 93 8e 1e 01  	addi	t4, t4, 17
80003c9c: 93 80 c0 00  	addi	ra, ra, 12
80003ca0: 13 04 04 01  	addi	s0, s0, 16
80003ca4: 93 84 d4 00  	addi	s1, s1, 13
80003ca8: 93 87 f7 00  	addi	a5, a5, 15
80003cac: 13 05 85 0c  	addi	a0, a0, 200
80003cb0: 13 07 e7 00  	addi	a4, a4, 14
80003cb4: 93 06 c0 30  	addi	a3, zero, 780
80003cb8: e3 12 de c4  	bne	t3, a3, 0x800038fc <.LBB0_157+0x10>
;     for (i = 0; i < ni; i++) {
80003cbc: 03 25 41 01  	lw	a0, 20(sp)
80003cc0: 83 25 01 0b  	lw	a1, 176(sp)
80003cc4: 33 75 b5 00  	and	a0, a0, a1
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80003cc8: f3 25 00 b0  	csrr	a1, mcycle
80003ccc: 23 2a b1 08  	sw	a1, 148(sp)
80003cd0: 63 0e 05 38  	beqz	a0, 0x8000406c <.LBB0_159+0x2f4>
80003cd4: 93 02 00 00  	mv	t0, zero
80003cd8: 13 05 80 00  	addi	a0, zero, 8
80003cdc: 93 05 d0 01  	addi	a1, zero, 29
;     for (i = 0; i < ni; i++) {
80003ce0: 13 06 00 04  	addi	a2, zero, 64
80003ce4: 93 06 00 0c  	addi	a3, zero, 192
80003ce8: ab a0 c5 00  	scfgw	a1, a2
80003cec: ab 20 d5 00  	scfgw	a0, a3
80003cf0: 13 06 30 01  	addi	a2, zero, 19
80003cf4: 93 06 00 06  	addi	a3, zero, 96
80003cf8: 13 07 00 0e  	addi	a4, zero, 224
80003cfc: ab 20 d6 00  	scfgw	a2, a3
80003d00: ab 20 e5 00  	scfgw	a0, a4
80003d04: 93 06 00 02  	addi	a3, zero, 32
80003d08: ab 20 d0 00  	scfgw	zero, a3
80003d0c: 83 26 01 01  	lw	a3, 16(sp)
80003d10: 2b a0 06 32  	scfgwi	a3, 800
80003d14: 93 06 80 01  	addi	a3, zero, 24
80003d18: 13 07 10 00  	addi	a4, zero, 1
80003d1c: 93 07 07 04  	addi	a5, a4, 64
80003d20: ab a0 f6 00  	scfgw	a3, a5
80003d24: 93 06 07 0c  	addi	a3, a4, 192
80003d28: ab 20 d5 00  	scfgw	a0, a3
80003d2c: 93 06 07 06  	addi	a3, a4, 96
80003d30: 93 07 07 0e  	addi	a5, a4, 224
80003d34: ab a0 d5 00  	scfgw	a1, a3
80003d38: ab 20 f5 00  	scfgw	a0, a5
80003d3c: 37 f5 ff ff  	lui	a0, 1048575
80003d40: 13 05 85 89  	addi	a0, a0, -1896
80003d44: 93 05 07 08  	addi	a1, a4, 128
80003d48: 93 06 07 10  	addi	a3, a4, 256
80003d4c: ab 20 b6 00  	scfgw	a2, a1
80003d50: ab 20 d5 00  	scfgw	a0, a3
80003d54: 13 05 07 02  	addi	a0, a4, 32
80003d58: ab 20 a0 00  	scfgw	zero, a0
80003d5c: 03 25 c1 00  	lw	a0, 12(sp)
80003d60: 2b 20 15 34  	scfgwi	a0, 833

80003d64 <.LBB0_158>:
80003d64: 17 35 00 00  	auipc	a0, 3
80003d68: 13 05 45 3f  	addi	a0, a0, 1012
80003d6c: 87 31 05 00  	fld	ft3, 0(a0)
;     for (i = 0; i < ni; i++) {
80003d70: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003d74: 03 24 01 09  	lw	s0, 144(sp)

80003d78 <.LBB0_159>:
80003d78: 97 38 00 00  	auipc	a7, 3
80003d7c: 93 88 88 3e  	addi	a7, a7, 1000
;             C[i][j] *= beta;
80003d80: 13 05 80 0c  	addi	a0, zero, 200
80003d84: 33 85 a2 02  	mul	a0, t0, a0
80003d88: 33 07 a4 00  	add	a4, s0, a0
80003d8c: 07 32 07 00  	fld	ft4, 0(a4)
80003d90: 87 32 87 00  	fld	ft5, 8(a4)
80003d94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003d98: 27 30 47 00  	fsd	ft4, 0(a4)
80003d9c: 07 32 07 01  	fld	ft4, 16(a4)
80003da0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003da4: 27 34 57 00  	fsd	ft5, 8(a4)
80003da8: 87 32 87 01  	fld	ft5, 24(a4)
80003dac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003db0: 27 38 47 00  	fsd	ft4, 16(a4)
80003db4: 07 32 07 02  	fld	ft4, 32(a4)
80003db8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003dbc: 27 3c 57 00  	fsd	ft5, 24(a4)
80003dc0: 87 32 87 02  	fld	ft5, 40(a4)
80003dc4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003dc8: 27 30 47 02  	fsd	ft4, 32(a4)
80003dcc: 07 32 07 03  	fld	ft4, 48(a4)
80003dd0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003dd4: 27 34 57 02  	fsd	ft5, 40(a4)
80003dd8: 87 32 87 03  	fld	ft5, 56(a4)
80003ddc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003de0: 27 38 47 02  	fsd	ft4, 48(a4)
80003de4: 07 32 07 04  	fld	ft4, 64(a4)
80003de8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003dec: 27 3c 57 02  	fsd	ft5, 56(a4)
80003df0: 87 32 87 04  	fld	ft5, 72(a4)
80003df4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003df8: 27 30 47 04  	fsd	ft4, 64(a4)
80003dfc: 07 32 07 05  	fld	ft4, 80(a4)
80003e00: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e04: 27 34 57 04  	fsd	ft5, 72(a4)
80003e08: 87 32 87 05  	fld	ft5, 88(a4)
80003e0c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e10: 27 38 47 04  	fsd	ft4, 80(a4)
80003e14: 07 32 07 06  	fld	ft4, 96(a4)
80003e18: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e1c: 27 3c 57 04  	fsd	ft5, 88(a4)
80003e20: 87 32 87 06  	fld	ft5, 104(a4)
80003e24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e28: 27 30 47 06  	fsd	ft4, 96(a4)
80003e2c: 07 32 07 07  	fld	ft4, 112(a4)
80003e30: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e34: 27 34 57 06  	fsd	ft5, 104(a4)
80003e38: 87 32 87 07  	fld	ft5, 120(a4)
80003e3c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e40: 07 33 07 08  	fld	ft6, 128(a4)
80003e44: 27 38 47 06  	fsd	ft4, 112(a4)
80003e48: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80003e4c: 27 3c 47 06  	fsd	ft4, 120(a4)
80003e50: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80003e54: 27 30 47 08  	fsd	ft4, 128(a4)
80003e58: 07 32 87 08  	fld	ft4, 136(a4)
80003e5c: 13 03 87 00  	addi	t1, a4, 8
80003e60: 93 03 07 01  	addi	t2, a4, 16
80003e64: 13 0e 87 01  	addi	t3, a4, 24
80003e68: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e6c: 27 34 47 08  	fsd	ft4, 136(a4)
80003e70: 07 32 07 09  	fld	ft4, 144(a4)
80003e74: 93 0e 07 02  	addi	t4, a4, 32
80003e78: 13 0f 87 02  	addi	t5, a4, 40
80003e7c: 93 0f 07 03  	addi	t6, a4, 48
80003e80: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e84: 27 38 47 08  	fsd	ft4, 144(a4)
80003e88: 07 32 87 09  	fld	ft4, 152(a4)
80003e8c: 13 09 87 03  	addi	s2, a4, 56
80003e90: 93 09 07 04  	addi	s3, a4, 64
80003e94: 13 0a 87 04  	addi	s4, a4, 72
80003e98: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e9c: 27 3c 47 08  	fsd	ft4, 152(a4)
80003ea0: 07 32 07 0a  	fld	ft4, 160(a4)
80003ea4: 93 0a 07 05  	addi	s5, a4, 80
80003ea8: 13 0b 87 05  	addi	s6, a4, 88
80003eac: 93 0b 07 06  	addi	s7, a4, 96
80003eb0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003eb4: 27 30 47 0a  	fsd	ft4, 160(a4)
80003eb8: 07 32 87 0a  	fld	ft4, 168(a4)
80003ebc: 13 0c 87 06  	addi	s8, a4, 104
80003ec0: 93 0c 07 07  	addi	s9, a4, 112
80003ec4: 13 0d 87 07  	addi	s10, a4, 120
80003ec8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003ecc: 27 34 47 0a  	fsd	ft4, 168(a4)
80003ed0: 07 32 07 0b  	fld	ft4, 176(a4)
80003ed4: 93 0d 07 08  	addi	s11, a4, 128
80003ed8: 93 00 87 08  	addi	ra, a4, 136
80003edc: 13 04 07 09  	addi	s0, a4, 144
80003ee0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003ee4: 27 38 47 0a  	fsd	ft4, 176(a4)
80003ee8: 07 32 87 0b  	fld	ft4, 184(a4)
80003eec: 13 06 87 09  	addi	a2, a4, 152
80003ef0: 93 06 07 0a  	addi	a3, a4, 160
80003ef4: 93 05 87 0a  	addi	a1, a4, 168
80003ef8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003efc: 27 3c 47 0a  	fsd	ft4, 184(a4)
80003f00: 07 32 07 0c  	fld	ft4, 192(a4)
80003f04: 13 05 07 0b  	addi	a0, a4, 176
80003f08: 93 07 87 0b  	addi	a5, a4, 184
80003f0c: 93 04 07 0c  	addi	s1, a4, 192
80003f10: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003f14: 27 30 47 0c  	fsd	ft4, 192(a4)
80003f18: 13 08 e0 01  	addi	a6, zero, 30
80003f1c: 87 b2 08 00  	fld	ft5, 0(a7)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80003f20: 87 33 07 00  	fld	ft7, 0(a4)
80003f24: 53 72 50 12  	fmul.d	ft4, ft0, ft5
80003f28: c3 72 12 3a  	fmadd.d	ft5, ft4, ft1, ft7
80003f2c: 27 30 57 00  	fsd	ft5, 0(a4)
80003f30: 07 33 03 00  	fld	ft6, 0(t1)
80003f34: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f38: 27 30 53 00  	fsd	ft5, 0(t1)
80003f3c: 07 b3 03 00  	fld	ft6, 0(t2)
80003f40: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f44: 27 b0 53 00  	fsd	ft5, 0(t2)
80003f48: 07 33 0e 00  	fld	ft6, 0(t3)
80003f4c: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f50: 27 30 5e 00  	fsd	ft5, 0(t3)
80003f54: 07 b3 0e 00  	fld	ft6, 0(t4)
80003f58: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f5c: 27 b0 5e 00  	fsd	ft5, 0(t4)
80003f60: 07 33 0f 00  	fld	ft6, 0(t5)
80003f64: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f68: 27 30 5f 00  	fsd	ft5, 0(t5)
80003f6c: 07 b3 0f 00  	fld	ft6, 0(t6)
80003f70: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f74: 27 b0 5f 00  	fsd	ft5, 0(t6)
80003f78: 07 33 09 00  	fld	ft6, 0(s2)
80003f7c: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f80: 27 30 59 00  	fsd	ft5, 0(s2)
80003f84: 07 b3 09 00  	fld	ft6, 0(s3)
80003f88: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f8c: 27 b0 59 00  	fsd	ft5, 0(s3)
80003f90: 07 33 0a 00  	fld	ft6, 0(s4)
80003f94: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003f98: 27 30 5a 00  	fsd	ft5, 0(s4)
80003f9c: 07 b3 0a 00  	fld	ft6, 0(s5)
80003fa0: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fa4: 27 b0 5a 00  	fsd	ft5, 0(s5)
80003fa8: 07 33 0b 00  	fld	ft6, 0(s6)
80003fac: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fb0: 27 30 5b 00  	fsd	ft5, 0(s6)
80003fb4: 07 b3 0b 00  	fld	ft6, 0(s7)
80003fb8: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fbc: 27 b0 5b 00  	fsd	ft5, 0(s7)
80003fc0: 07 33 0c 00  	fld	ft6, 0(s8)
80003fc4: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fc8: 27 30 5c 00  	fsd	ft5, 0(s8)
80003fcc: 07 b3 0c 00  	fld	ft6, 0(s9)
80003fd0: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fd4: 27 b0 5c 00  	fsd	ft5, 0(s9)
80003fd8: 07 33 0d 00  	fld	ft6, 0(s10)
80003fdc: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fe0: 27 30 5d 00  	fsd	ft5, 0(s10)
80003fe4: 07 b3 0d 00  	fld	ft6, 0(s11)
80003fe8: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003fec: 27 b0 5d 00  	fsd	ft5, 0(s11)
80003ff0: 07 b3 00 00  	fld	ft6, 0(ra)
80003ff4: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80003ff8: 27 b0 50 00  	fsd	ft5, 0(ra)
80003ffc: 07 33 04 00  	fld	ft6, 0(s0)
80004000: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80004004: 27 30 54 00  	fsd	ft5, 0(s0)
80004008: 07 33 06 00  	fld	ft6, 0(a2)
8000400c: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80004010: 27 30 56 00  	fsd	ft5, 0(a2)
80004014: 07 b3 06 00  	fld	ft6, 0(a3)
80004018: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
8000401c: 27 b0 56 00  	fsd	ft5, 0(a3)
80004020: 07 b3 05 00  	fld	ft6, 0(a1)
80004024: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80004028: 27 b0 55 00  	fsd	ft5, 0(a1)
8000402c: 07 33 05 00  	fld	ft6, 0(a0)
80004030: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80004034: 27 30 55 00  	fsd	ft5, 0(a0)
80004038: 07 b3 07 00  	fld	ft6, 0(a5)
8000403c: c3 f2 40 32  	fmadd.d	ft5, ft1, ft4, ft6
80004040: 27 b0 57 00  	fsd	ft5, 0(a5)
80004044: 07 b3 04 00  	fld	ft6, 0(s1)
80004048: 43 f2 40 32  	fmadd.d	ft4, ft1, ft4, ft6
;         for (k = 0; k < nk; k++) {
8000404c: 13 08 f8 ff  	addi	a6, a6, -1
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004050: 27 b0 44 00  	fsd	ft4, 0(s1)
;         for (k = 0; k < nk; k++) {
80004054: e3 14 08 ec  	bnez	a6, 0x80003f1c <.LBB0_159+0x1a4>
;     for (i = 0; i < ni; i++) {
80004058: 93 82 12 00  	addi	t0, t0, 1
8000405c: 03 24 01 09  	lw	s0, 144(sp)
;     for (i = 0; i < ni; i++) {
80004060: 13 05 40 01  	addi	a0, zero, 20
80004064: e3 9e a2 d0  	bne	t0, a0, 0x80003d80 <.LBB0_159+0x8>
80004068: 6f 00 c0 44  	j	0x800044b4 <.LBB0_161+0x168>
8000406c: 03 24 01 09  	lw	s0, 144(sp)
;     for (i = 0; i < ni; i++) {
80004070: 93 05 04 0c  	addi	a1, s0, 192
80004074: 03 27 81 00  	lw	a4, 8(sp)
80004078: 33 05 b7 00  	add	a0, a4, a1
8000407c: 13 06 05 83  	addi	a2, a0, -2000
80004080: 83 28 c1 00  	lw	a7, 12(sp)
80004084: 93 83 08 06  	addi	t2, a7, 96
80004088: b3 86 e3 00  	add	a3, t2, a4
8000408c: 13 85 08 0c  	addi	a0, a7, 192
80004090: 33 07 e5 00  	add	a4, a0, a4
80004094: 93 d7 45 01  	srli	a5, a1, 20
80004098: b3 37 f0 00  	snez	a5, a5
8000409c: b7 04 12 00  	lui	s1, 288
800040a0: 93 84 14 00  	addi	s1, s1, 1
800040a4: 33 36 96 00  	sltu	a2, a2, s1
800040a8: 33 f6 c7 00  	and	a2, a5, a2
800040ac: 93 d7 43 01  	srli	a5, t2, 20
800040b0: b3 37 f0 00  	snez	a5, a5
800040b4: b3 b6 96 00  	sltu	a3, a3, s1
800040b8: b3 f6 d7 00  	and	a3, a5, a3
800040bc: 33 76 d6 00  	and	a2, a2, a3
800040c0: 93 56 45 01  	srli	a3, a0, 20
800040c4: b3 36 d0 00  	snez	a3, a3
800040c8: 33 37 97 00  	sltu	a4, a4, s1
800040cc: b3 f6 e6 00  	and	a3, a3, a4
800040d0: 33 f6 c6 00  	and	a2, a3, a2
800040d4: 03 2e 01 01  	lw	t3, 16(sp)
800040d8: 63 02 06 3e  	beqz	a2, 0x800044bc <.LBB0_161+0x170>
800040dc: 13 06 00 00  	mv	a2, zero
800040e0: 93 06 80 0c  	addi	a3, zero, 200
800040e4: 93 02 30 01  	addi	t0, zero, 19
;     for (i = 0; i < ni; i++) {
800040e8: 13 07 00 04  	addi	a4, zero, 64
800040ec: 93 07 00 0c  	addi	a5, zero, 192
800040f0: ab a0 e2 00  	scfgw	t0, a4
800040f4: ab a0 f6 00  	scfgw	a3, a5
800040f8: 13 07 00 02  	addi	a4, zero, 32
800040fc: ab 20 e0 00  	scfgw	zero, a4
80004100: 2b a0 05 30  	scfgwi	a1, 768
80004104: 13 08 d0 01  	addi	a6, zero, 29
80004108: 13 07 10 00  	addi	a4, zero, 1
8000410c: 93 07 07 04  	addi	a5, a4, 64
80004110: 93 04 07 0c  	addi	s1, a4, 192
80004114: ab 20 f8 00  	scfgw	a6, a5
80004118: ab a0 96 00  	scfgw	a3, s1
8000411c: b7 f7 ff ff  	lui	a5, 1048575
80004120: 93 87 87 95  	addi	a5, a5, -1704
80004124: 93 04 07 06  	addi	s1, a4, 96
80004128: ab a0 92 00  	scfgw	t0, s1
8000412c: 93 04 07 0e  	addi	s1, a4, 224
80004130: ab a0 97 00  	scfgw	a5, s1
80004134: 13 07 07 02  	addi	a4, a4, 32
80004138: ab 20 e0 00  	scfgw	zero, a4
8000413c: 2b a0 13 32  	scfgwi	t2, 801
80004140: 13 07 20 00  	addi	a4, zero, 2
80004144: 93 04 07 04  	addi	s1, a4, 64
80004148: 93 05 07 0c  	addi	a1, a4, 192
8000414c: ab 20 98 00  	scfgw	a6, s1
80004150: ab a0 b6 00  	scfgw	a3, a1
80004154: 93 05 07 06  	addi	a1, a4, 96
80004158: 93 04 07 0e  	addi	s1, a4, 224
8000415c: ab a0 b2 00  	scfgw	t0, a1
80004160: ab a0 97 00  	scfgw	a5, s1
80004164: 93 05 07 02  	addi	a1, a4, 32
80004168: ab 20 b0 00  	scfgw	zero, a1
8000416c: 2b 20 25 32  	scfgwi	a0, 802
80004170: 73 e5 00 7c  	csrrsi	a0, 1984, 1

80004174 <.LBB0_160>:
80004174: 17 35 00 00  	auipc	a0, 3
80004178: 13 05 45 fe  	addi	a0, a0, -28
8000417c: 87 31 05 00  	fld	ft3, 0(a0)
;     for (i = 0; i < ni; i++) {
80004180: 27 30 31 0a  	fsd	ft3, 160(sp)
80004184: 13 85 88 06  	addi	a0, a7, 104
80004188: 23 2c a1 08  	sw	a0, 152(sp)
8000418c: 13 07 00 0f  	addi	a4, zero, 240
;             C[i][j] *= beta;
80004190: 13 05 80 0c  	addi	a0, zero, 200
80004194: 33 05 a6 02  	mul	a0, a2, a0
80004198: b3 04 a4 00  	add	s1, s0, a0
8000419c: 07 b2 04 00  	fld	ft4, 0(s1)
800041a0: 13 05 00 00  	mv	a0, zero
800041a4: 87 31 01 0a  	fld	ft3, 160(sp)
;             C[i][j] *= beta;
800041a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800041ac: 87 b2 84 00  	fld	ft5, 8(s1)
800041b0: 27 b0 44 00  	fsd	ft4, 0(s1)
800041b4: 93 85 84 00  	addi	a1, s1, 8
800041b8: 23 2a b1 0a  	sw	a1, 180(sp)
800041bc: 07 b3 04 01  	fld	ft6, 16(s1)
800041c0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800041c4: 27 b4 54 00  	fsd	ft5, 8(s1)
800041c8: 93 85 04 01  	addi	a1, s1, 16
800041cc: 23 28 b1 0a  	sw	a1, 176(sp)
800041d0: 53 73 33 12  	fmul.d	ft6, ft6, ft3
800041d4: 87 b3 84 01  	fld	ft7, 24(s1)
800041d8: 27 b8 64 00  	fsd	ft6, 16(s1)
800041dc: 93 85 84 01  	addi	a1, s1, 24
800041e0: 23 26 b1 0a  	sw	a1, 172(sp)
800041e4: 07 b5 04 02  	fld	fa0, 32(s1)
800041e8: d3 f3 33 12  	fmul.d	ft7, ft7, ft3
800041ec: 27 bc 74 00  	fsd	ft7, 24(s1)
800041f0: 13 8f 04 02  	addi	t5, s1, 32
800041f4: 53 75 35 12  	fmul.d	fa0, fa0, ft3
800041f8: 87 b5 84 02  	fld	fa1, 40(s1)
800041fc: 27 b0 a4 02  	fsd	fa0, 32(s1)
80004200: 93 8f 84 02  	addi	t6, s1, 40
80004204: 07 b6 04 03  	fld	fa2, 48(s1)
80004208: d3 f5 35 12  	fmul.d	fa1, fa1, ft3
8000420c: 27 b4 b4 02  	fsd	fa1, 40(s1)
80004210: 13 89 04 03  	addi	s2, s1, 48
80004214: 53 76 36 12  	fmul.d	fa2, fa2, ft3
80004218: 87 b6 84 03  	fld	fa3, 56(s1)
8000421c: 27 b8 c4 02  	fsd	fa2, 48(s1)
80004220: 93 89 84 03  	addi	s3, s1, 56
80004224: 07 b7 04 04  	fld	fa4, 64(s1)
80004228: d3 f6 36 12  	fmul.d	fa3, fa3, ft3
8000422c: 27 bc d4 02  	fsd	fa3, 56(s1)
80004230: 13 8a 04 04  	addi	s4, s1, 64
80004234: 53 77 37 12  	fmul.d	fa4, fa4, ft3
80004238: 87 b7 84 04  	fld	fa5, 72(s1)
8000423c: 27 b0 e4 04  	fsd	fa4, 64(s1)
80004240: 93 8a 84 04  	addi	s5, s1, 72
80004244: 07 b8 04 05  	fld	fa6, 80(s1)
80004248: d3 f7 37 12  	fmul.d	fa5, fa5, ft3
8000424c: 27 b4 f4 04  	fsd	fa5, 72(s1)
80004250: 13 8b 04 05  	addi	s6, s1, 80
80004254: 53 78 38 12  	fmul.d	fa6, fa6, ft3
80004258: 87 b8 84 05  	fld	fa7, 88(s1)
8000425c: 27 b8 04 05  	fsd	fa6, 80(s1)
80004260: 93 8b 84 05  	addi	s7, s1, 88
80004264: 07 be 04 06  	fld	ft8, 96(s1)
80004268: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
8000426c: 27 bc 14 05  	fsd	fa7, 88(s1)
80004270: 13 8c 04 06  	addi	s8, s1, 96
80004274: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004278: 87 be 84 06  	fld	ft9, 104(s1)
8000427c: 27 b0 c4 07  	fsd	ft8, 96(s1)
80004280: 93 8c 84 06  	addi	s9, s1, 104
80004284: 07 bf 04 07  	fld	ft10, 112(s1)
80004288: d3 fe 3e 12  	fmul.d	ft9, ft9, ft3
8000428c: 27 b4 d4 07  	fsd	ft9, 104(s1)
80004290: 13 8d 04 07  	addi	s10, s1, 112
80004294: 53 7f 3f 12  	fmul.d	ft10, ft10, ft3
80004298: 87 bf 84 07  	fld	ft11, 120(s1)
8000429c: 27 b8 e4 07  	fsd	ft10, 112(s1)
800042a0: 93 8d 84 07  	addi	s11, s1, 120
800042a4: 07 b4 04 08  	fld	fs0, 128(s1)
800042a8: d3 ff 3f 12  	fmul.d	ft11, ft11, ft3
800042ac: 27 bc f4 07  	fsd	ft11, 120(s1)
800042b0: 93 80 04 08  	addi	ra, s1, 128
800042b4: 53 74 34 12  	fmul.d	fs0, fs0, ft3
800042b8: 87 b4 84 08  	fld	fs1, 136(s1)
800042bc: 27 b0 84 08  	fsd	fs0, 128(s1)
800042c0: 93 8e 84 08  	addi	t4, s1, 136
800042c4: 07 b9 04 09  	fld	fs2, 144(s1)
800042c8: d3 f4 34 12  	fmul.d	fs1, fs1, ft3
800042cc: 27 b4 94 08  	fsd	fs1, 136(s1)
800042d0: 93 87 04 09  	addi	a5, s1, 144
800042d4: 53 79 39 12  	fmul.d	fs2, fs2, ft3
800042d8: 87 b9 84 09  	fld	fs3, 152(s1)
800042dc: 27 b8 24 09  	fsd	fs2, 144(s1)
800042e0: 93 86 84 09  	addi	a3, s1, 152
800042e4: 07 ba 04 0a  	fld	fs4, 160(s1)
800042e8: d3 f9 39 12  	fmul.d	fs3, fs3, ft3
800042ec: 27 bc 34 09  	fsd	fs3, 152(s1)
800042f0: 93 85 04 0a  	addi	a1, s1, 160
800042f4: 53 7a 3a 12  	fmul.d	fs4, fs4, ft3
800042f8: 87 ba 84 0a  	fld	fs5, 168(s1)
800042fc: 27 b0 44 0b  	fsd	fs4, 160(s1)
80004300: 13 88 84 0a  	addi	a6, s1, 168
80004304: 07 bb 04 0b  	fld	fs6, 176(s1)
80004308: d3 fa 3a 12  	fmul.d	fs5, fs5, ft3
8000430c: 07 bc 84 0b  	fld	fs8, 184(s1)
80004310: 27 b4 54 0b  	fsd	fs5, 168(s1)
80004314: d3 7b 3b 12  	fmul.d	fs7, fs6, ft3
80004318: 27 b8 74 0b  	fsd	fs7, 176(s1)
8000431c: 53 7b 3c 12  	fmul.d	fs6, fs8, ft3
80004320: 27 bc 64 0b  	fsd	fs6, 184(s1)
80004324: 13 83 04 0b  	addi	t1, s1, 176
80004328: 93 82 84 0b  	addi	t0, s1, 184
8000432c: 93 88 04 0c  	addi	a7, s1, 192
80004330: 53 7c 30 12  	fmul.d	fs8, ft0, ft3
80004334: 27 b0 84 0d  	fsd	fs8, 192(s1)
80004338: 83 23 81 09  	lw	t2, 152(sp)
8000433c: 13 04 0e 00  	mv	s0, t3
80004340: 33 0e ae 00  	add	t3, t3, a0
80004344: 87 3c 0e 00  	fld	fs9, 0(t3)
80004348: 13 0e 04 00  	mv	t3, s0

8000434c <.LBB0_161>:
8000434c: 17 34 00 00  	auipc	s0, 3
80004350: 13 04 44 e1  	addi	s0, s0, -492
80004354: 07 3d 04 00  	fld	fs10, 0(s0)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004358: 87 bd 83 f9  	fld	fs11, -104(t2)
8000435c: d3 fc ac 13  	fmul.d	fs9, fs9, fs10
80004360: 43 f2 bc 23  	fmadd.d	ft4, fs9, fs11, ft4
80004364: 27 3c 41 0a  	fsd	ft4, 184(sp)
80004368: 07 bd 03 fa  	fld	fs10, -96(t2)
8000436c: 87 bd 83 fa  	fld	fs11, -88(t2)
80004370: 87 b1 03 fb  	fld	ft3, -80(t2)
80004374: 07 b2 83 fb  	fld	ft4, -72(t2)
80004378: c3 72 9d 2b  	fmadd.d	ft5, fs10, fs9, ft5
8000437c: 43 f3 9d 33  	fmadd.d	ft6, fs11, fs9, ft6
80004380: c3 f3 91 3b  	fmadd.d	ft7, ft3, fs9, ft7
80004384: 43 75 92 53  	fmadd.d	fa0, ft4, fs9, fa0
80004388: 87 b1 03 fc  	fld	ft3, -64(t2)
8000438c: 07 b2 83 fc  	fld	ft4, -56(t2)
80004390: 07 bd 03 fd  	fld	fs10, -48(t2)
80004394: 87 bd 83 fd  	fld	fs11, -40(t2)
80004398: c3 f5 91 5b  	fmadd.d	fa1, ft3, fs9, fa1
8000439c: 43 76 92 63  	fmadd.d	fa2, ft4, fs9, fa2
800043a0: c3 76 9d 6b  	fmadd.d	fa3, fs10, fs9, fa3
800043a4: 43 f7 9d 73  	fmadd.d	fa4, fs11, fs9, fa4
800043a8: 87 b1 03 fe  	fld	ft3, -32(t2)
800043ac: 07 b2 83 fe  	fld	ft4, -24(t2)
800043b0: 07 bd 03 ff  	fld	fs10, -16(t2)
800043b4: c3 f7 91 7b  	fmadd.d	fa5, ft3, fs9, fa5
800043b8: 43 78 92 83  	fmadd.d	fa6, ft4, fs9, fa6
800043bc: c3 78 9d 8b  	fmadd.d	fa7, fs10, fs9, fa7
800043c0: 43 fe 90 e3  	fmadd.d	ft8, ft1, fs9, ft8
800043c4: 87 b1 03 00  	fld	ft3, 0(t2)
800043c8: 07 b2 83 00  	fld	ft4, 8(t2)
800043cc: 07 bd 03 01  	fld	fs10, 16(t2)
800043d0: 87 bd 83 01  	fld	fs11, 24(t2)
800043d4: c3 fe 91 eb  	fmadd.d	ft9, ft3, fs9, ft9
800043d8: 43 7f 92 f3  	fmadd.d	ft10, ft4, fs9, ft10
800043dc: c3 7f 9d fb  	fmadd.d	ft11, fs10, fs9, ft11
800043e0: 43 f4 9d 43  	fmadd.d	fs0, fs11, fs9, fs0
800043e4: 87 b1 03 02  	fld	ft3, 32(t2)
800043e8: 07 b2 83 02  	fld	ft4, 40(t2)
800043ec: 07 bd 03 03  	fld	fs10, 48(t2)
800043f0: 87 bd 83 03  	fld	fs11, 56(t2)
800043f4: c3 f4 91 4b  	fmadd.d	fs1, ft3, fs9, fs1
800043f8: 43 79 92 93  	fmadd.d	fs2, ft4, fs9, fs2
800043fc: c3 79 9d 9b  	fmadd.d	fs3, fs10, fs9, fs3
80004400: 43 fa 9d a3  	fmadd.d	fs4, fs11, fs9, fs4
80004404: 87 b1 03 04  	fld	ft3, 64(t2)
80004408: 07 b2 83 04  	fld	ft4, 72(t2)
8000440c: 07 bd 03 05  	fld	fs10, 80(t2)
80004410: c3 fa 91 ab  	fmadd.d	fs5, ft3, fs9, fs5
80004414: c3 7b 92 bb  	fmadd.d	fs7, ft4, fs9, fs7
80004418: 07 32 81 0b  	fld	ft4, 184(sp)
8000441c: 43 7b 9d b3  	fmadd.d	fs6, fs10, fs9, fs6
80004420: 43 7c 91 c3  	fmadd.d	fs8, ft2, fs9, fs8
;         for (k = 0; k < nk; k++) {
80004424: 13 05 85 00  	addi	a0, a0, 8
80004428: 93 83 83 0c  	addi	t2, t2, 200
8000442c: e3 18 e5 f0  	bne	a0, a4, 0x8000433c <.LBB0_160+0x1c8>
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004430: 27 b0 44 00  	fsd	ft4, 0(s1)
80004434: 03 25 41 0b  	lw	a0, 180(sp)
80004438: 27 30 55 00  	fsd	ft5, 0(a0)
8000443c: 03 25 01 0b  	lw	a0, 176(sp)
80004440: 27 30 65 00  	fsd	ft6, 0(a0)
80004444: 03 25 c1 0a  	lw	a0, 172(sp)
80004448: 27 30 75 00  	fsd	ft7, 0(a0)
8000444c: 27 30 af 00  	fsd	fa0, 0(t5)
80004450: 27 b0 bf 00  	fsd	fa1, 0(t6)
80004454: 27 30 c9 00  	fsd	fa2, 0(s2)
80004458: 27 b0 d9 00  	fsd	fa3, 0(s3)
8000445c: 27 30 ea 00  	fsd	fa4, 0(s4)
80004460: 27 b0 fa 00  	fsd	fa5, 0(s5)
80004464: 27 30 0b 01  	fsd	fa6, 0(s6)
80004468: 27 b0 1b 01  	fsd	fa7, 0(s7)
8000446c: 27 30 cc 01  	fsd	ft8, 0(s8)
80004470: 27 b0 dc 01  	fsd	ft9, 0(s9)
80004474: 27 30 ed 01  	fsd	ft10, 0(s10)
80004478: 27 b0 fd 01  	fsd	ft11, 0(s11)
8000447c: 27 b0 80 00  	fsd	fs0, 0(ra)
80004480: 27 b0 9e 00  	fsd	fs1, 0(t4)
80004484: 27 b0 27 01  	fsd	fs2, 0(a5)
80004488: 27 b0 36 01  	fsd	fs3, 0(a3)
8000448c: 27 b0 45 01  	fsd	fs4, 0(a1)
80004490: 27 30 58 01  	fsd	fs5, 0(a6)
80004494: 27 30 73 01  	fsd	fs7, 0(t1)
80004498: 27 b0 62 01  	fsd	fs6, 0(t0)
8000449c: 27 b0 88 01  	fsd	fs8, 0(a7)
;     for (i = 0; i < ni; i++) {
800044a0: 13 06 16 00  	addi	a2, a2, 1
800044a4: 13 0e 0e 0f  	addi	t3, t3, 240
800044a8: 03 24 01 09  	lw	s0, 144(sp)
800044ac: 13 05 40 01  	addi	a0, zero, 20
800044b0: e3 10 a6 ce  	bne	a2, a0, 0x80004190 <.LBB0_160+0x1c>
800044b4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800044b8: 6f 00 80 35  	j	0x80004810 <.LBB0_163+0x178>
800044bc: 13 06 00 00  	mv	a2, zero

800044c0 <.LBB0_162>:
800044c0: 17 35 00 00  	auipc	a0, 3
800044c4: 13 05 85 c9  	addi	a0, a0, -872
800044c8: 87 31 05 00  	fld	ft3, 0(a0)
800044cc: 27 3c 31 08  	fsd	ft3, 152(sp)
800044d0: 13 07 00 0f  	addi	a4, zero, 240
;             C[i][j] *= beta;
800044d4: 13 05 80 0c  	addi	a0, zero, 200
800044d8: 33 05 a6 02  	mul	a0, a2, a0
800044dc: b3 04 a4 00  	add	s1, s0, a0
800044e0: 07 b2 04 00  	fld	ft4, 0(s1)
800044e4: 13 04 00 00  	mv	s0, zero
800044e8: 87 31 81 09  	fld	ft3, 152(sp)
;             C[i][j] *= beta;
800044ec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800044f0: 87 b2 84 00  	fld	ft5, 8(s1)
800044f4: 27 b0 44 00  	fsd	ft4, 0(s1)
800044f8: 13 85 84 00  	addi	a0, s1, 8
800044fc: 23 2a a1 0a  	sw	a0, 180(sp)
80004500: 07 b3 04 01  	fld	ft6, 16(s1)
80004504: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80004508: 27 b4 54 00  	fsd	ft5, 8(s1)
8000450c: 13 85 04 01  	addi	a0, s1, 16
80004510: 23 28 a1 0a  	sw	a0, 176(sp)
80004514: 53 73 33 12  	fmul.d	ft6, ft6, ft3
80004518: 87 b3 84 01  	fld	ft7, 24(s1)
8000451c: 27 b8 64 00  	fsd	ft6, 16(s1)
80004520: 13 85 84 01  	addi	a0, s1, 24
80004524: 23 26 a1 0a  	sw	a0, 172(sp)
80004528: 07 b5 04 02  	fld	fa0, 32(s1)
8000452c: d3 f3 33 12  	fmul.d	ft7, ft7, ft3
80004530: 27 bc 74 00  	fsd	ft7, 24(s1)
80004534: 13 85 04 02  	addi	a0, s1, 32
80004538: 23 20 a1 0a  	sw	a0, 160(sp)
8000453c: 53 75 35 12  	fmul.d	fa0, fa0, ft3
80004540: 87 b5 84 02  	fld	fa1, 40(s1)
80004544: 27 b0 a4 02  	fsd	fa0, 32(s1)
80004548: 93 8f 84 02  	addi	t6, s1, 40
8000454c: 07 b6 04 03  	fld	fa2, 48(s1)
80004550: d3 f5 35 12  	fmul.d	fa1, fa1, ft3
80004554: 27 b4 b4 02  	fsd	fa1, 40(s1)
80004558: 13 89 04 03  	addi	s2, s1, 48
8000455c: 53 76 36 12  	fmul.d	fa2, fa2, ft3
80004560: 87 b6 84 03  	fld	fa3, 56(s1)
80004564: 27 b8 c4 02  	fsd	fa2, 48(s1)
80004568: 13 88 84 03  	addi	a6, s1, 56
8000456c: 07 b7 04 04  	fld	fa4, 64(s1)
80004570: d3 f6 36 12  	fmul.d	fa3, fa3, ft3
80004574: 27 bc d4 02  	fsd	fa3, 56(s1)
80004578: 93 89 04 04  	addi	s3, s1, 64
8000457c: 53 77 37 12  	fmul.d	fa4, fa4, ft3
80004580: 87 b7 84 04  	fld	fa5, 72(s1)
80004584: 27 b0 e4 04  	fsd	fa4, 64(s1)
80004588: 13 8a 84 04  	addi	s4, s1, 72
8000458c: 07 b8 04 05  	fld	fa6, 80(s1)
80004590: d3 f7 37 12  	fmul.d	fa5, fa5, ft3
80004594: 27 b4 f4 04  	fsd	fa5, 72(s1)
80004598: 93 8a 04 05  	addi	s5, s1, 80
8000459c: 53 78 38 12  	fmul.d	fa6, fa6, ft3
800045a0: 87 b8 84 05  	fld	fa7, 88(s1)
800045a4: 27 b8 04 05  	fsd	fa6, 80(s1)
800045a8: 13 8b 84 05  	addi	s6, s1, 88
800045ac: 07 be 04 06  	fld	ft8, 96(s1)
800045b0: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800045b4: 27 bc 14 05  	fsd	fa7, 88(s1)
800045b8: 93 8b 04 06  	addi	s7, s1, 96
800045bc: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800045c0: 87 be 84 06  	fld	ft9, 104(s1)
800045c4: 27 b0 c4 07  	fsd	ft8, 96(s1)
800045c8: 13 8c 84 06  	addi	s8, s1, 104
800045cc: 07 bf 04 07  	fld	ft10, 112(s1)
800045d0: d3 fe 3e 12  	fmul.d	ft9, ft9, ft3
800045d4: 27 b4 d4 07  	fsd	ft9, 104(s1)
800045d8: 93 8c 04 07  	addi	s9, s1, 112
800045dc: 53 7f 3f 12  	fmul.d	ft10, ft10, ft3
800045e0: 87 bf 84 07  	fld	ft11, 120(s1)
800045e4: 27 b8 e4 07  	fsd	ft10, 112(s1)
800045e8: 13 8d 84 07  	addi	s10, s1, 120
800045ec: 07 b4 04 08  	fld	fs0, 128(s1)
800045f0: d3 ff 3f 12  	fmul.d	ft11, ft11, ft3
800045f4: 27 bc f4 07  	fsd	ft11, 120(s1)
800045f8: 93 8d 04 08  	addi	s11, s1, 128
800045fc: 53 74 34 12  	fmul.d	fs0, fs0, ft3
80004600: 87 b4 84 08  	fld	fs1, 136(s1)
80004604: 27 b0 84 08  	fsd	fs0, 128(s1)
80004608: 93 80 84 08  	addi	ra, s1, 136
8000460c: 07 b9 04 09  	fld	fs2, 144(s1)
80004610: d3 f4 34 12  	fmul.d	fs1, fs1, ft3
80004614: 27 b4 94 08  	fsd	fs1, 136(s1)
80004618: 93 8e 04 09  	addi	t4, s1, 144
8000461c: 53 79 39 12  	fmul.d	fs2, fs2, ft3
80004620: 87 b9 84 09  	fld	fs3, 152(s1)
80004624: 27 b8 24 09  	fsd	fs2, 144(s1)
80004628: 93 87 84 09  	addi	a5, s1, 152
8000462c: 07 ba 04 0a  	fld	fs4, 160(s1)
80004630: d3 f9 39 12  	fmul.d	fs3, fs3, ft3
80004634: 27 bc 34 09  	fsd	fs3, 152(s1)
80004638: 93 85 04 0a  	addi	a1, s1, 160
8000463c: 53 7a 3a 12  	fmul.d	fs4, fs4, ft3
80004640: 87 ba 84 0a  	fld	fs5, 168(s1)
80004644: 27 b0 44 0b  	fsd	fs4, 160(s1)
80004648: 13 85 84 0a  	addi	a0, s1, 168
8000464c: 07 bb 04 0b  	fld	fs6, 176(s1)
80004650: d3 fa 3a 12  	fmul.d	fs5, fs5, ft3
80004654: 27 b4 54 0b  	fsd	fs5, 168(s1)
80004658: 93 88 04 0b  	addi	a7, s1, 176
8000465c: 53 7b 3b 12  	fmul.d	fs6, fs6, ft3
80004660: 87 bb 84 0b  	fld	fs7, 184(s1)
80004664: 27 b8 64 0b  	fsd	fs6, 176(s1)
80004668: 93 82 84 0b  	addi	t0, s1, 184
8000466c: 07 bc 04 0c  	fld	fs8, 192(s1)
80004670: d3 fb 3b 12  	fmul.d	fs7, fs7, ft3
80004674: 27 bc 74 0b  	fsd	fs7, 184(s1)
80004678: 13 83 04 0c  	addi	t1, s1, 192
8000467c: 53 7c 3c 12  	fmul.d	fs8, fs8, ft3
80004680: 27 b0 84 0d  	fsd	fs8, 192(s1)
80004684: 13 8f 03 00  	mv	t5, t2
80004688: 93 06 0e 00  	mv	a3, t3
8000468c: 33 0e 8e 00  	add	t3, t3, s0
80004690: 87 3c 0e 00  	fld	fs9, 0(t3)
80004694: 13 8e 06 00  	mv	t3, a3

80004698 <.LBB0_163>:
80004698: 97 36 00 00  	auipc	a3, 3
8000469c: 93 86 86 ac  	addi	a3, a3, -1336
800046a0: 07 bd 06 00  	fld	fs10, 0(a3)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
800046a4: 87 bd 03 fa  	fld	fs11, -96(t2)
800046a8: d3 fc ac 13  	fmul.d	fs9, fs9, fs10
800046ac: 43 f2 bc 23  	fmadd.d	ft4, fs9, fs11, ft4
800046b0: 27 3c 41 0a  	fsd	ft4, 184(sp)
800046b4: 07 bd 83 fa  	fld	fs10, -88(t2)
800046b8: 87 bd 03 fb  	fld	fs11, -80(t2)
800046bc: 87 b1 83 fb  	fld	ft3, -72(t2)
800046c0: 07 b2 03 fc  	fld	ft4, -64(t2)
800046c4: c3 72 9d 2b  	fmadd.d	ft5, fs10, fs9, ft5
800046c8: 43 f3 9d 33  	fmadd.d	ft6, fs11, fs9, ft6
800046cc: c3 f3 91 3b  	fmadd.d	ft7, ft3, fs9, ft7
800046d0: 43 75 92 53  	fmadd.d	fa0, ft4, fs9, fa0
800046d4: 87 b1 83 fc  	fld	ft3, -56(t2)
800046d8: 07 b2 03 fd  	fld	ft4, -48(t2)
800046dc: 07 bd 83 fd  	fld	fs10, -40(t2)
800046e0: 87 bd 03 fe  	fld	fs11, -32(t2)
800046e4: c3 f5 91 5b  	fmadd.d	fa1, ft3, fs9, fa1
800046e8: 43 76 92 63  	fmadd.d	fa2, ft4, fs9, fa2
800046ec: c3 76 9d 6b  	fmadd.d	fa3, fs10, fs9, fa3
800046f0: 43 f7 9d 73  	fmadd.d	fa4, fs11, fs9, fa4
800046f4: 87 b1 83 fe  	fld	ft3, -24(t2)
800046f8: 07 b2 03 ff  	fld	ft4, -16(t2)
800046fc: 07 bd 83 ff  	fld	fs10, -8(t2)
80004700: 87 bd 03 00  	fld	fs11, 0(t2)
80004704: c3 f7 91 7b  	fmadd.d	fa5, ft3, fs9, fa5
80004708: 43 78 92 83  	fmadd.d	fa6, ft4, fs9, fa6
8000470c: c3 78 9d 8b  	fmadd.d	fa7, fs10, fs9, fa7
80004710: 43 fe 9d e3  	fmadd.d	ft8, fs11, fs9, ft8
80004714: 87 b1 83 00  	fld	ft3, 8(t2)
80004718: 07 b2 03 01  	fld	ft4, 16(t2)
8000471c: 07 bd 83 01  	fld	fs10, 24(t2)
80004720: 87 bd 03 02  	fld	fs11, 32(t2)
80004724: c3 fe 91 eb  	fmadd.d	ft9, ft3, fs9, ft9
80004728: 43 7f 92 f3  	fmadd.d	ft10, ft4, fs9, ft10
8000472c: c3 7f 9d fb  	fmadd.d	ft11, fs10, fs9, ft11
80004730: 43 f4 9d 43  	fmadd.d	fs0, fs11, fs9, fs0
80004734: 87 b1 83 02  	fld	ft3, 40(t2)
80004738: 07 b2 03 03  	fld	ft4, 48(t2)
8000473c: 07 bd 83 03  	fld	fs10, 56(t2)
80004740: 87 bd 03 04  	fld	fs11, 64(t2)
80004744: c3 f4 91 4b  	fmadd.d	fs1, ft3, fs9, fs1
80004748: 43 79 92 93  	fmadd.d	fs2, ft4, fs9, fs2
8000474c: c3 79 9d 9b  	fmadd.d	fs3, fs10, fs9, fs3
80004750: 43 fa 9d a3  	fmadd.d	fs4, fs11, fs9, fs4
80004754: 87 b1 83 04  	fld	ft3, 72(t2)
80004758: 07 b2 03 05  	fld	ft4, 80(t2)
8000475c: 07 bd 83 05  	fld	fs10, 88(t2)
80004760: 87 bd 03 06  	fld	fs11, 96(t2)
80004764: c3 fa 91 ab  	fmadd.d	fs5, ft3, fs9, fs5
80004768: 43 7b 92 b3  	fmadd.d	fs6, ft4, fs9, fs6
8000476c: 07 32 81 0b  	fld	ft4, 184(sp)
80004770: c3 7b 9d bb  	fmadd.d	fs7, fs10, fs9, fs7
80004774: 43 fc 9d c3  	fmadd.d	fs8, fs11, fs9, fs8
;         for (k = 0; k < nk; k++) {
80004778: 13 04 84 00  	addi	s0, s0, 8
8000477c: 93 83 83 0c  	addi	t2, t2, 200
80004780: e3 14 e4 f0  	bne	s0, a4, 0x80004688 <.LBB0_162+0x1c8>
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004784: 27 b0 44 00  	fsd	ft4, 0(s1)
80004788: 83 26 41 0b  	lw	a3, 180(sp)
8000478c: 27 b0 56 00  	fsd	ft5, 0(a3)
80004790: 83 26 01 0b  	lw	a3, 176(sp)
80004794: 27 b0 66 00  	fsd	ft6, 0(a3)
80004798: 83 26 c1 0a  	lw	a3, 172(sp)
8000479c: 27 b0 76 00  	fsd	ft7, 0(a3)
800047a0: 83 26 01 0a  	lw	a3, 160(sp)
800047a4: 27 b0 a6 00  	fsd	fa0, 0(a3)
800047a8: 27 b0 bf 00  	fsd	fa1, 0(t6)
800047ac: 27 30 c9 00  	fsd	fa2, 0(s2)
800047b0: 27 30 d8 00  	fsd	fa3, 0(a6)
800047b4: 27 b0 e9 00  	fsd	fa4, 0(s3)
800047b8: 27 30 fa 00  	fsd	fa5, 0(s4)
800047bc: 27 b0 0a 01  	fsd	fa6, 0(s5)
800047c0: 27 30 1b 01  	fsd	fa7, 0(s6)
800047c4: 27 b0 cb 01  	fsd	ft8, 0(s7)
800047c8: 27 30 dc 01  	fsd	ft9, 0(s8)
800047cc: 27 b0 ec 01  	fsd	ft10, 0(s9)
800047d0: 27 30 fd 01  	fsd	ft11, 0(s10)
800047d4: 27 b0 8d 00  	fsd	fs0, 0(s11)
800047d8: 27 b0 90 00  	fsd	fs1, 0(ra)
800047dc: 27 b0 2e 01  	fsd	fs2, 0(t4)
800047e0: 27 b0 37 01  	fsd	fs3, 0(a5)
800047e4: 27 b0 45 01  	fsd	fs4, 0(a1)
800047e8: 27 30 55 01  	fsd	fs5, 0(a0)
800047ec: 27 b0 68 01  	fsd	fs6, 0(a7)
800047f0: 27 b0 72 01  	fsd	fs7, 0(t0)
800047f4: 27 30 83 01  	fsd	fs8, 0(t1)
;     for (i = 0; i < ni; i++) {
800047f8: 13 06 16 00  	addi	a2, a2, 1
800047fc: 13 0e 0e 0f  	addi	t3, t3, 240
80004800: 03 24 01 09  	lw	s0, 144(sp)
80004804: 93 03 0f 00  	mv	t2, t5
80004808: 13 05 40 01  	addi	a0, zero, 20
8000480c: e3 14 a6 cc  	bne	a2, a0, 0x800044d4 <.LBB0_162+0x14>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80004810: 73 25 00 b0  	csrr	a0, mcycle
;     printf("cycles needed: %lu\n", cycle_end - cycle_start);
80004814: 83 25 41 09  	lw	a1, 148(sp)
80004818: b3 05 b5 40  	sub	a1, a0, a1

8000481c <.LBB0_164>:
8000481c: 17 25 00 00  	auipc	a0, 2
80004820: 13 05 45 59  	addi	a0, a0, 1428
80004824: 97 00 00 00  	auipc	ra, 0
80004828: e7 80 40 25  	jalr	596(ra)
8000482c: 03 25 41 00  	lw	a0, 4(sp)
80004830: 63 0e 05 0a  	beqz	a0, 0x800048ec <.LBB0_164+0xd0>
80004834: 13 05 80 00  	addi	a0, zero, 8
80004838: 93 05 80 01  	addi	a1, zero, 24
;     for (int i = 0; i < n; i++){
8000483c: 13 06 00 04  	addi	a2, zero, 64
80004840: 93 06 00 0c  	addi	a3, zero, 192
80004844: ab a0 c5 00  	scfgw	a1, a2
80004848: ab 20 d5 00  	scfgw	a0, a3
8000484c: 93 05 30 01  	addi	a1, zero, 19
80004850: 13 06 00 06  	addi	a2, zero, 96
80004854: 93 06 00 0e  	addi	a3, zero, 224
80004858: ab a0 c5 00  	scfgw	a1, a2
8000485c: ab 20 d5 00  	scfgw	a0, a3
80004860: 13 05 00 02  	addi	a0, zero, 32
80004864: ab 20 a0 00  	scfgw	zero, a0
80004868: 2b 20 04 32  	scfgwi	s0, 800
8000486c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80004870: d3 01 00 d2  	fcvt.d.w	ft3, zero
80004874: 13 05 40 01  	addi	a0, zero, 20
;             r += A[i * m + j];
80004878: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000487c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004880: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004884: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004888: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000488c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004890: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004894: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004898: d3 71 30 02  	fadd.d	ft3, ft0, ft3
8000489c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048a0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048a4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048a8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048ac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048b0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048b4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048b8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048bc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048c0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048c4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048c8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048cc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048d0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
800048d4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800048d8: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800048dc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
800048e0: e3 1c 05 f8  	bnez	a0, 0x80004878 <.LBB0_164+0x5c>
800048e4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800048e8: 6f 00 40 0e  	j	0x800049cc <.LBB0_165>
;     for (int i = 0; i < n; i++){
800048ec: 13 05 04 06  	addi	a0, s0, 96
800048f0: d3 01 00 d2  	fcvt.d.w	ft3, zero
800048f4: 93 05 40 01  	addi	a1, zero, 20
;             r += A[i * m + j];
800048f8: 07 32 05 fa  	fld	ft4, -96(a0)
800048fc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004900: 07 32 85 fa  	fld	ft4, -88(a0)
80004904: 87 32 05 fb  	fld	ft5, -80(a0)
80004908: 07 33 85 fb  	fld	ft6, -72(a0)
8000490c: 87 33 05 fc  	fld	ft7, -64(a0)
80004910: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004914: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004918: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000491c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004920: 07 32 85 fc  	fld	ft4, -56(a0)
80004924: 87 32 05 fd  	fld	ft5, -48(a0)
80004928: 07 33 85 fd  	fld	ft6, -40(a0)
8000492c: 87 33 05 fe  	fld	ft7, -32(a0)
80004930: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004934: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004938: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000493c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004940: 07 32 85 fe  	fld	ft4, -24(a0)
80004944: 87 32 05 ff  	fld	ft5, -16(a0)
80004948: 07 33 85 ff  	fld	ft6, -8(a0)
8000494c: 87 33 05 00  	fld	ft7, 0(a0)
80004950: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004954: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004958: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000495c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004960: 07 32 85 00  	fld	ft4, 8(a0)
80004964: 87 32 05 01  	fld	ft5, 16(a0)
80004968: 07 33 85 01  	fld	ft6, 24(a0)
8000496c: 87 33 05 02  	fld	ft7, 32(a0)
80004970: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004974: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004978: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000497c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004980: 07 32 85 02  	fld	ft4, 40(a0)
80004984: 87 32 05 03  	fld	ft5, 48(a0)
80004988: 07 33 85 03  	fld	ft6, 56(a0)
8000498c: 87 33 05 04  	fld	ft7, 64(a0)
80004990: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004994: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004998: d3 71 33 02  	fadd.d	ft3, ft6, ft3
8000499c: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
800049a0: 07 32 85 04  	fld	ft4, 72(a0)
800049a4: 87 32 05 05  	fld	ft5, 80(a0)
800049a8: 07 33 85 05  	fld	ft6, 88(a0)
800049ac: 87 33 05 06  	fld	ft7, 96(a0)
800049b0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800049b4: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
800049b8: d3 71 33 02  	fadd.d	ft3, ft6, ft3
800049bc: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
800049c0: 93 85 f5 ff  	addi	a1, a1, -1
800049c4: 13 05 85 0c  	addi	a0, a0, 200
800049c8: e3 98 05 f2  	bnez	a1, 0x800048f8 <.LBB0_164+0xdc>

800049cc <.LBB0_165>:
800049cc: 17 25 00 00  	auipc	a0, 2
800049d0: 13 05 c5 79  	addi	a0, a0, 1948
800049d4: 07 32 05 00  	fld	ft4, 0(a0)
;     double error = s - s_true;
800049d8: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;     error = error < 0.0 ? -error : error;
800049dc: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
800049e0: 27 30 81 0c  	fsd	fs0, 192(sp)
800049e4: 03 26 01 0c  	lw	a2, 192(sp)
800049e8: 83 26 41 0c  	lw	a3, 196(sp)

800049ec <.LBB0_166>:
800049ec: 17 25 00 00  	auipc	a0, 2
800049f0: 13 05 d5 3d  	addi	a0, a0, 989
800049f4: 97 00 00 00  	auipc	ra, 0
800049f8: e7 80 40 08  	jalr	132(ra)

800049fc <.LBB0_167>:
800049fc: 17 25 00 00  	auipc	a0, 2
80004a00: 13 05 45 77  	addi	a0, a0, 1908
80004a04: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001; //prevents dce
80004a08: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80004a0c: 87 3d 81 0c  	fld	fs11, 200(sp)
80004a10: 07 3d 01 0d  	fld	fs10, 208(sp)
80004a14: 87 3c 81 0d  	fld	fs9, 216(sp)
80004a18: 07 3c 01 0e  	fld	fs8, 224(sp)
80004a1c: 87 3b 81 0e  	fld	fs7, 232(sp)
80004a20: 07 3b 01 0f  	fld	fs6, 240(sp)
80004a24: 87 3a 81 0f  	fld	fs5, 248(sp)
80004a28: 07 3a 01 10  	fld	fs4, 256(sp)
80004a2c: 87 39 81 10  	fld	fs3, 264(sp)
80004a30: 07 39 01 11  	fld	fs2, 272(sp)
80004a34: 87 34 81 11  	fld	fs1, 280(sp)
80004a38: 07 34 01 12  	fld	fs0, 288(sp)
80004a3c: 83 2d c1 12  	lw	s11, 300(sp)
80004a40: 03 2d 01 13  	lw	s10, 304(sp)
80004a44: 83 2c 41 13  	lw	s9, 308(sp)
80004a48: 03 2c 81 13  	lw	s8, 312(sp)
80004a4c: 83 2b c1 13  	lw	s7, 316(sp)
80004a50: 03 2b 01 14  	lw	s6, 320(sp)
80004a54: 83 2a 41 14  	lw	s5, 324(sp)
80004a58: 03 2a 81 14  	lw	s4, 328(sp)
80004a5c: 83 29 c1 14  	lw	s3, 332(sp)
80004a60: 03 29 01 15  	lw	s2, 336(sp)
80004a64: 83 24 41 15  	lw	s1, 340(sp)
80004a68: 03 24 81 15  	lw	s0, 344(sp)
80004a6c: 83 20 c1 15  	lw	ra, 348(sp)
80004a70: 13 01 01 16  	addi	sp, sp, 352
80004a74: 67 80 00 00  	ret

80004a78 <printf_>:
; {
80004a78: 13 01 01 fd  	addi	sp, sp, -48
80004a7c: 23 26 11 00  	sw	ra, 12(sp)
80004a80: 93 02 05 00  	mv	t0, a0
80004a84: 23 26 11 03  	sw	a7, 44(sp)
80004a88: 23 24 01 03  	sw	a6, 40(sp)
80004a8c: 23 22 f1 02  	sw	a5, 36(sp)
80004a90: 23 20 e1 02  	sw	a4, 32(sp)
80004a94: 23 2e d1 00  	sw	a3, 28(sp)
80004a98: 23 2c c1 00  	sw	a2, 24(sp)
80004a9c: 23 2a b1 00  	sw	a1, 20(sp)
80004aa0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80004aa4: 23 24 a1 00  	sw	a0, 8(sp)

80004aa8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80004aa8: 17 15 00 00  	auipc	a0, 1
80004aac: 13 05 45 c2  	addi	a0, a0, -988
80004ab0: 93 05 71 00  	addi	a1, sp, 7
80004ab4: 13 06 f0 ff  	addi	a2, zero, -1
80004ab8: 13 07 41 01  	addi	a4, sp, 20
80004abc: 93 86 02 00  	mv	a3, t0
80004ac0: 97 00 00 00  	auipc	ra, 0
80004ac4: e7 80 40 01  	jalr	20(ra)
;   return ret;
80004ac8: 83 20 c1 00  	lw	ra, 12(sp)
80004acc: 13 01 01 03  	addi	sp, sp, 48
80004ad0: 67 80 00 00  	ret

80004ad4 <_vsnprintf.llvm.11632292163828655644>:
; {
80004ad4: 13 01 01 f9  	addi	sp, sp, -112
80004ad8: 23 26 11 06  	sw	ra, 108(sp)
80004adc: 23 24 81 06  	sw	s0, 104(sp)
80004ae0: 23 22 91 06  	sw	s1, 100(sp)
80004ae4: 23 20 21 07  	sw	s2, 96(sp)
80004ae8: 23 2e 31 05  	sw	s3, 92(sp)
80004aec: 23 2c 41 05  	sw	s4, 88(sp)
80004af0: 23 2a 51 05  	sw	s5, 84(sp)
80004af4: 23 28 61 05  	sw	s6, 80(sp)
80004af8: 23 26 71 05  	sw	s7, 76(sp)
80004afc: 23 24 81 05  	sw	s8, 72(sp)
80004b00: 23 22 91 05  	sw	s9, 68(sp)
80004b04: 23 20 a1 05  	sw	s10, 64(sp)
80004b08: 23 2e b1 03  	sw	s11, 60(sp)
80004b0c: 93 09 07 00  	mv	s3, a4
80004b10: 13 84 06 00  	mv	s0, a3
80004b14: 93 0a 06 00  	mv	s5, a2
80004b18: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80004b1c: 63 86 05 00  	beqz	a1, 0x80004b28 <.LBB1_183>
80004b20: 13 09 05 00  	mv	s2, a0
80004b24: 6f 00 c0 00  	j	0x80004b30 <.LBB1_183+0x8>

80004b28 <.LBB1_183>:
80004b28: 17 19 00 00  	auipc	s2, 1
80004b2c: 13 09 09 c5  	addi	s2, s2, -944
80004b30: 13 0c 00 00  	mv	s8, zero
80004b34: 13 0b 50 02  	addi	s6, zero, 37
80004b38: 93 0d 00 01  	addi	s11, zero, 16
80004b3c: 93 0b e0 02  	addi	s7, zero, 46
80004b40: 37 15 00 00  	lui	a0, 1
80004b44: 13 05 05 80  	addi	a0, a0, -2048
80004b48: 23 2c a1 00  	sw	a0, 24(sp)
80004b4c: 37 05 01 00  	lui	a0, 16
80004b50: 13 05 f5 ff  	addi	a0, a0, -1
80004b54: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80004b58: 13 0d 24 00  	addi	s10, s0, 2
80004b5c: 93 0c 0c 00  	mv	s9, s8
80004b60: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80004b64: 03 45 04 00  	lbu	a0, 0(s0)
80004b68: e3 04 05 30  	beqz	a0, 0x80005670 <.LBB1_124+0x3b0>
80004b6c: 63 08 65 03  	beq	a0, s6, 0x80004b9c <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80004b70: 93 84 1c 00  	addi	s1, s9, 1
80004b74: 93 05 0a 00  	mv	a1, s4
80004b78: 13 86 0c 00  	mv	a2, s9
80004b7c: 93 86 0a 00  	mv	a3, s5
80004b80: e7 00 09 00  	jalr	s2
;       format++;
80004b84: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80004b88: 13 0d 1d 00  	addi	s10, s10, 1
80004b8c: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80004b90: 03 45 04 00  	lbu	a0, 0(s0)
80004b94: e3 1c 05 fc  	bnez	a0, 0x80004b6c <.LBB1_183+0x44>
80004b98: 6f 00 90 2d  	j	0x80005670 <.LBB1_124+0x3b0>
;     flags = 0U;
80004b9c: 13 04 00 00  	mv	s0, zero
80004ba0: 6f 00 00 01  	j	0x80004bb0 <.LBB1_9+0x8>

80004ba4 <.LBB1_8>:
80004ba4: 93 05 00 01  	addi	a1, zero, 16

80004ba8 <.LBB1_9>:
80004ba8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80004bac: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80004bb0: 03 45 fd ff  	lbu	a0, -1(s10)
80004bb4: 93 05 05 fe  	addi	a1, a0, -32
80004bb8: 63 ec bd 02  	bltu	s11, a1, 0x80004bf0 <.LBB1_15>
80004bbc: 93 95 25 00  	slli	a1, a1, 2

80004bc0 <.LBB1_184>:
80004bc0: 17 26 00 00  	auipc	a2, 2
80004bc4: 13 06 c6 21  	addi	a2, a2, 540
80004bc8: b3 85 c5 00  	add	a1, a1, a2
80004bcc: 03 a6 05 00  	lw	a2, 0(a1)
80004bd0: 93 05 10 00  	addi	a1, zero, 1
80004bd4: 67 00 06 00  	jr	a2

80004bd8 <.LBB1_12>:
80004bd8: 93 05 80 00  	addi	a1, zero, 8
80004bdc: 6f f0 df fc  	j	0x80004ba8 <.LBB1_9>

80004be0 <.LBB1_13>:
80004be0: 93 05 40 00  	addi	a1, zero, 4
80004be4: 6f f0 5f fc  	j	0x80004ba8 <.LBB1_9>

80004be8 <.LBB1_14>:
80004be8: 93 05 20 00  	addi	a1, zero, 2
80004bec: 6f f0 df fb  	j	0x80004ba8 <.LBB1_9>

80004bf0 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80004bf0: 93 05 05 fd  	addi	a1, a0, -48
80004bf4: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80004bf8: 93 05 fd ff  	addi	a1, s10, -1
80004bfc: 93 06 90 00  	addi	a3, zero, 9
80004c00: 63 ee c6 06  	bltu	a3, a2, 0x80004c7c <.LBB1_15+0x8c>
80004c04: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004c08: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80004c0c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004c10: b3 06 8b 03  	mul	a3, s6, s8
80004c14: 93 85 15 00  	addi	a1, a1, 1
80004c18: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80004c1c: 93 06 05 fd  	addi	a3, a0, -48
80004c20: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004c24: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80004c28: e3 e0 86 ff  	bltu	a3, s8, 0x80004c08 <.LBB1_15+0x18>
80004c2c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80004c30: 63 16 75 0b  	bne	a0, s7, 0x80004cdc <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80004c34: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80004c38: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80004c3c: 93 05 05 fd  	addi	a1, a0, -48
80004c40: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80004c44: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80004c48: 93 06 90 00  	addi	a3, zero, 9
80004c4c: 63 e0 c6 06  	bltu	a3, a2, 0x80004cac <.LBB1_15+0xbc>
80004c50: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004c54: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80004c58: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004c5c: b3 86 8b 03  	mul	a3, s7, s8
80004c60: 93 85 15 00  	addi	a1, a1, 1
80004c64: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80004c68: 93 06 05 fd  	addi	a3, a0, -48
80004c6c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004c70: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80004c74: e3 e0 86 ff  	bltu	a3, s8, 0x80004c54 <.LBB1_15+0x64>
80004c78: 6f 00 00 07  	j	0x80004ce8 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80004c7c: 13 06 a0 02  	addi	a2, zero, 42
80004c80: 63 18 c5 04  	bne	a0, a2, 0x80004cd0 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80004c84: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80004c88: 63 d4 05 00  	bgez	a1, 0x80004c90 <.LBB1_15+0xa0>
80004c8c: 13 64 24 00  	ori	s0, s0, 2
80004c90: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80004c94: 03 45 0d 00  	lbu	a0, 0(s10)
80004c98: 13 d6 f5 41  	srai	a2, a1, 31
80004c9c: b3 85 c5 00  	add	a1, a1, a2
80004ca0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80004ca4: e3 08 75 f9  	beq	a0, s7, 0x80004c34 <.LBB1_15+0x44>
80004ca8: 6f 00 40 03  	j	0x80004cdc <.LBB1_15+0xec>
;       else if (*format == '*') {
80004cac: 13 06 a0 02  	addi	a2, zero, 42
80004cb0: 63 1a c5 02  	bne	a0, a2, 0x80004ce4 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80004cb4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80004cb8: 63 44 70 01  	bgtz	s7, 0x80004cc0 <.LBB1_15+0xd0>
80004cbc: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80004cc0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80004cc4: 13 0d 2d 00  	addi	s10, s10, 2
80004cc8: 93 89 49 00  	addi	s3, s3, 4
80004ccc: 6f 00 00 02  	j	0x80004cec <.LBB1_15+0xfc>
80004cd0: 13 0b 00 00  	mv	s6, zero
80004cd4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80004cd8: e3 0e 75 f5  	beq	a0, s7, 0x80004c34 <.LBB1_15+0x44>
80004cdc: 93 0b 00 00  	mv	s7, zero
80004ce0: 6f 00 c0 00  	j	0x80004cec <.LBB1_15+0xfc>
80004ce4: 93 0b 00 00  	mv	s7, zero
80004ce8: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80004cec: 93 05 85 f9  	addi	a1, a0, -104
80004cf0: 13 d6 15 00  	srli	a2, a1, 1
80004cf4: 93 95 f5 01  	slli	a1, a1, 31
80004cf8: b3 e5 c5 00  	or	a1, a1, a2
80004cfc: 13 06 90 00  	addi	a2, zero, 9
80004d00: 63 62 b6 06  	bltu	a2, a1, 0x80004d64 <.LBB1_42>
80004d04: 93 95 25 00  	slli	a1, a1, 2

80004d08 <.LBB1_185>:
80004d08: 17 26 00 00  	auipc	a2, 2
80004d0c: 13 06 86 11  	addi	a2, a2, 280
80004d10: b3 85 c5 00  	add	a1, a1, a2
80004d14: 83 a6 05 00  	lw	a3, 0(a1)
80004d18: 93 05 10 00  	addi	a1, zero, 1
80004d1c: 13 06 00 10  	addi	a2, zero, 256
80004d20: 67 80 06 00  	jr	a3

80004d24 <.LBB1_36>:
;         if (*format == 'h') {
80004d24: 03 45 1d 00  	lbu	a0, 1(s10)
80004d28: 93 05 80 06  	addi	a1, zero, 104
80004d2c: 63 12 b5 12  	bne	a0, a1, 0x80004e50 <.LBB1_53+0x48>
80004d30: 93 05 20 00  	addi	a1, zero, 2
80004d34: 13 06 00 0c  	addi	a2, zero, 192
80004d38: 6f 00 00 02  	j	0x80004d58 <.LBB1_41>

80004d3c <.LBB1_38>:
80004d3c: 13 06 00 20  	addi	a2, zero, 512
80004d40: 6f 00 80 01  	j	0x80004d58 <.LBB1_41>

80004d44 <.LBB1_39>:
;         if (*format == 'l') {
80004d44: 03 45 1d 00  	lbu	a0, 1(s10)
80004d48: 93 05 c0 06  	addi	a1, zero, 108
80004d4c: 63 18 b5 10  	bne	a0, a1, 0x80004e5c <.LBB1_53+0x54>
80004d50: 93 05 20 00  	addi	a1, zero, 2
80004d54: 13 06 00 30  	addi	a2, zero, 768

80004d58 <.LBB1_41>:
80004d58: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80004d5c: 03 45 0d 00  	lbu	a0, 0(s10)
80004d60: 33 64 c4 00  	or	s0, s0, a2

80004d64 <.LBB1_42>:
;     switch (*format) {
80004d64: 93 05 b5 fd  	addi	a1, a0, -37
80004d68: 13 06 30 05  	addi	a2, zero, 83
80004d6c: 63 64 b6 10  	bltu	a2, a1, 0x80004e74 <.LBB1_59>
80004d70: 93 95 25 00  	slli	a1, a1, 2

80004d74 <.LBB1_186>:
80004d74: 17 26 00 00  	auipc	a2, 2
80004d78: 13 06 46 0d  	addi	a2, a2, 212
80004d7c: b3 85 c5 00  	add	a1, a1, a2
80004d80: 03 a6 05 00  	lw	a2, 0(a1)
80004d84: 93 05 80 00  	addi	a1, zero, 8
80004d88: 13 0c 00 01  	addi	s8, zero, 16
80004d8c: 67 00 06 00  	jr	a2

80004d90 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80004d90: 13 74 f4 fe  	andi	s0, s0, -17
80004d94: 13 0c a0 00  	addi	s8, zero, 10

80004d98 <.LBB1_45>:
;         if (*format == 'X') {
80004d98: 93 05 80 05  	addi	a1, zero, 88
80004d9c: 63 14 b5 00  	bne	a0, a1, 0x80004da4 <.LBB1_45+0xc>
80004da0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80004da4: 93 05 40 06  	addi	a1, zero, 100
80004da8: 63 08 b5 0e  	beq	a0, a1, 0x80004e98 <.LBB1_62+0x8>
80004dac: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80004db0: 13 06 90 06  	addi	a2, zero, 105
80004db4: 63 02 c5 0e  	beq	a0, a2, 0x80004e98 <.LBB1_62+0x8>
80004db8: 6f 00 80 0d  	j	0x80004e90 <.LBB1_62>

80004dbc <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80004dbc: 93 05 60 04  	addi	a1, zero, 70
80004dc0: 63 14 b5 00  	bne	a0, a1, 0x80004dc8 <.LBB1_49+0xc>
80004dc4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80004dc8: 13 85 79 00  	addi	a0, s3, 7
80004dcc: 13 75 85 ff  	andi	a0, a0, -8
80004dd0: 07 35 05 00  	fld	fa0, 0(a0)
80004dd4: 93 09 85 00  	addi	s3, a0, 8
80004dd8: 13 05 09 00  	mv	a0, s2
80004ddc: 93 05 0a 00  	mv	a1, s4
80004de0: 13 86 0c 00  	mv	a2, s9
80004de4: 93 86 0a 00  	mv	a3, s5
80004de8: 13 87 0b 00  	mv	a4, s7
80004dec: 93 07 0b 00  	mv	a5, s6
80004df0: 13 08 04 00  	mv	a6, s0
80004df4: 97 10 00 00  	auipc	ra, 1
80004df8: e7 80 80 98  	jalr	-1656(ra)
80004dfc: 6f 00 00 7c  	j	0x800055bc <.LBB1_124+0x2fc>

80004e00 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80004e00: 83 25 81 01  	lw	a1, 24(sp)
80004e04: 33 64 b4 00  	or	s0, s0, a1

80004e08 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80004e08: 13 65 25 00  	ori	a0, a0, 2
80004e0c: 93 05 70 04  	addi	a1, zero, 71
80004e10: 63 14 b5 00  	bne	a0, a1, 0x80004e18 <.LBB1_53+0x10>
80004e14: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80004e18: 13 85 79 00  	addi	a0, s3, 7
80004e1c: 13 75 85 ff  	andi	a0, a0, -8
80004e20: 07 35 05 00  	fld	fa0, 0(a0)
80004e24: 93 09 85 00  	addi	s3, a0, 8
80004e28: 13 05 09 00  	mv	a0, s2
80004e2c: 93 05 0a 00  	mv	a1, s4
80004e30: 13 86 0c 00  	mv	a2, s9
80004e34: 93 86 0a 00  	mv	a3, s5
80004e38: 13 87 0b 00  	mv	a4, s7
80004e3c: 93 07 0b 00  	mv	a5, s6
80004e40: 13 08 04 00  	mv	a6, s0
80004e44: 97 10 00 00  	auipc	ra, 1
80004e48: e7 80 80 01  	jalr	24(ra)
80004e4c: 6f 00 00 77  	j	0x800055bc <.LBB1_124+0x2fc>
80004e50: 13 64 04 08  	ori	s0, s0, 128
80004e54: 13 0d 1d 00  	addi	s10, s10, 1
80004e58: 6f f0 df f0  	j	0x80004d64 <.LBB1_42>
80004e5c: 13 64 04 10  	ori	s0, s0, 256
80004e60: 13 0d 1d 00  	addi	s10, s10, 1
80004e64: 6f f0 1f f0  	j	0x80004d64 <.LBB1_42>

80004e68 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80004e68: 13 8c 1c 00  	addi	s8, s9, 1
80004e6c: 13 05 50 02  	addi	a0, zero, 37
80004e70: 6f 00 80 00  	j	0x80004e78 <.LBB1_59+0x4>

80004e74 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80004e74: 13 8c 1c 00  	addi	s8, s9, 1
80004e78: 93 05 0a 00  	mv	a1, s4
80004e7c: 13 86 0c 00  	mv	a2, s9
80004e80: 93 86 0a 00  	mv	a3, s5
80004e84: e7 00 09 00  	jalr	s2
80004e88: 6f 00 80 73  	j	0x800055c0 <.LBB1_124+0x300>

80004e8c <.LBB1_61>:
80004e8c: 93 05 20 00  	addi	a1, zero, 2

80004e90 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80004e90: 13 74 34 ff  	andi	s0, s0, -13
80004e94: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80004e98: 93 75 04 40  	andi	a1, s0, 1024
80004e9c: 63 84 05 00  	beqz	a1, 0x80004ea4 <.LBB1_62+0x14>
80004ea0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80004ea4: 93 05 90 06  	addi	a1, zero, 105
80004ea8: 63 06 b5 00  	beq	a0, a1, 0x80004eb4 <.LBB1_62+0x24>
80004eac: 93 05 40 06  	addi	a1, zero, 100
80004eb0: 63 1c b5 12  	bne	a0, a1, 0x80004fe8 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80004eb4: 13 75 04 20  	andi	a0, s0, 512
80004eb8: 63 16 05 02  	bnez	a0, 0x80004ee4 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80004ebc: 13 75 04 10  	andi	a0, s0, 256
80004ec0: 63 1c 05 14  	bnez	a0, 0x80005018 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80004ec4: 13 75 04 04  	andi	a0, s0, 64
80004ec8: 63 18 05 4e  	bnez	a0, 0x800053b8 <.LBB1_124+0xf8>
80004ecc: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80004ed0: 93 75 04 08  	andi	a1, s0, 128
80004ed4: 63 84 05 4e  	beqz	a1, 0x800053bc <.LBB1_124+0xfc>
80004ed8: 13 15 08 01  	slli	a0, a6, 16
80004edc: 13 58 05 41  	srai	a6, a0, 16
80004ee0: 6f 00 c0 4d  	j	0x800053bc <.LBB1_124+0xfc>
80004ee4: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80004ee8: 13 85 79 00  	addi	a0, s3, 7
80004eec: 13 75 85 ff  	andi	a0, a0, -8
80004ef0: 83 29 05 00  	lw	s3, 0(a0)
80004ef4: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80004ef8: 13 65 45 00  	ori	a0, a0, 4
80004efc: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80004f00: 23 24 a1 00  	sw	a0, 8(sp)
80004f04: 33 e5 a9 00  	or	a0, s3, a0
80004f08: 63 14 05 00  	bnez	a0, 0x80004f10 <.LBB1_62+0x80>
80004f0c: 13 74 f4 fe  	andi	s0, s0, -17
80004f10: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80004f14: 93 75 04 40  	andi	a1, s0, 1024
80004f18: 93 d5 a5 00  	srli	a1, a1, 10
80004f1c: 33 75 b5 00  	and	a0, a0, a1
80004f20: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80004f24: 63 14 05 0a  	bnez	a0, 0x80004fcc <.LBB1_62+0x13c>
80004f28: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80004f2c: 63 da 04 00  	bgez	s1, 0x80004f40 <.LBB1_62+0xb0>
80004f30: 33 35 30 01  	snez	a0, s3
80004f34: b3 09 30 41  	neg	s3, s3
80004f38: 33 85 a4 00  	add	a0, s1, a0
80004f3c: b3 04 a0 40  	neg	s1, a0
80004f40: 13 09 00 00  	mv	s2, zero
80004f44: 13 75 04 02  	andi	a0, s0, 32
80004f48: 13 45 15 06  	xori	a0, a0, 97
80004f4c: 13 05 65 0f  	addi	a0, a0, 246
80004f50: 23 2a a1 00  	sw	a0, 20(sp)
80004f54: 6f 00 40 02  	j	0x80004f78 <.LBB1_62+0xe8>
80004f58: 13 06 10 00  	addi	a2, zero, 1
80004f5c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004f60: 93 36 f9 01  	sltiu	a3, s2, 31
80004f64: 33 f6 c6 00  	and	a2, a3, a2
80004f68: 13 89 07 00  	mv	s2, a5
80004f6c: 93 09 05 00  	mv	s3, a0
80004f70: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004f74: 63 0c 06 04  	beqz	a2, 0x80004fcc <.LBB1_62+0x13c>
;       value /= base;
80004f78: 13 85 09 00  	mv	a0, s3
80004f7c: 93 85 04 00  	mv	a1, s1
80004f80: 13 06 0c 00  	mv	a2, s8
80004f84: 93 06 00 00  	mv	a3, zero
80004f88: 97 b0 ff ff  	auipc	ra, 1048571
80004f8c: e7 80 40 15  	jalr	340(ra)
80004f90: 33 06 85 03  	mul	a2, a0, s8
80004f94: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004f98: 13 77 e6 0f  	andi	a4, a2, 254
80004f9c: 93 06 00 03  	addi	a3, zero, 48
80004fa0: 93 07 a0 00  	addi	a5, zero, 10
80004fa4: 63 64 f7 00  	bltu	a4, a5, 0x80004fac <.LBB1_62+0x11c>
80004fa8: 83 26 41 01  	lw	a3, 20(sp)
80004fac: 33 86 c6 00  	add	a2, a3, a2
80004fb0: 93 06 c1 01  	addi	a3, sp, 28
80004fb4: b3 86 26 01  	add	a3, a3, s2
80004fb8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004fbc: e3 9e 04 f8  	bnez	s1, 0x80004f58 <.LBB1_62+0xc8>
80004fc0: 33 b6 89 01  	sltu	a2, s3, s8
80004fc4: 13 46 16 00  	xori	a2, a2, 1
80004fc8: 6f f0 5f f9  	j	0x80004f5c <.LBB1_62+0xcc>
80004fcc: 03 25 41 00  	lw	a0, 4(sp)
80004fd0: 93 09 85 00  	addi	s3, a0, 8
80004fd4: 03 25 81 00  	lw	a0, 8(sp)
80004fd8: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80004fdc: 13 07 c1 01  	addi	a4, sp, 28
80004fe0: 03 29 c1 00  	lw	s2, 12(sp)
80004fe4: 6f 00 80 47  	j	0x8000545c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80004fe8: 13 75 04 20  	andi	a0, s0, 512
80004fec: 63 12 05 0c  	bnez	a0, 0x800050b0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80004ff0: 13 75 04 10  	andi	a0, s0, 256
80004ff4: 63 1e 05 46  	bnez	a0, 0x80005470 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80004ff8: 13 75 04 04  	andi	a0, s0, 64
80004ffc: 63 10 05 50  	bnez	a0, 0x800054fc <.LBB1_124+0x23c>
80005000: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80005004: 93 75 04 08  	andi	a1, s0, 128
80005008: 63 8c 05 4e  	beqz	a1, 0x80005500 <.LBB1_124+0x240>
8000500c: 83 25 01 01  	lw	a1, 16(sp)
80005010: 33 75 b5 00  	and	a0, a0, a1
80005014: 6f 00 c0 4e  	j	0x80005500 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80005018: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
8000501c: 63 14 08 00  	bnez	a6, 0x80005024 <.LBB1_62+0x194>
80005020: 13 74 f4 fe  	andi	s0, s0, -17
80005024: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80005028: 13 76 04 40  	andi	a2, s0, 1024
8000502c: 13 56 a6 00  	srli	a2, a2, 10
80005030: b3 f5 c5 00  	and	a1, a1, a2
80005034: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80005038: 63 9c 05 40  	bnez	a1, 0x80005450 <.LBB1_124+0x190>
8000503c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80005040: 13 56 f8 41  	srai	a2, a6, 31
80005044: b3 06 c8 00  	add	a3, a6, a2
80005048: b3 c6 c6 00  	xor	a3, a3, a2
8000504c: 13 76 04 02  	andi	a2, s0, 32
80005050: 13 46 16 06  	xori	a2, a2, 97
80005054: 93 08 66 0f  	addi	a7, a2, 246
80005058: 6f 00 40 03  	j	0x8000508c <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000505c: 33 05 f6 00  	add	a0, a2, a5
80005060: 93 87 15 00  	addi	a5, a1, 1
80005064: 13 06 c1 01  	addi	a2, sp, 28
80005068: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000506c: b3 b6 86 01  	sltu	a3, a3, s8
80005070: 93 c6 16 00  	xori	a3, a3, 1
80005074: 93 b5 f5 01  	sltiu	a1, a1, 31
80005078: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000507c: 23 00 a6 00  	sb	a0, 0(a2)
80005080: 93 85 07 00  	mv	a1, a5
80005084: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005088: 63 84 04 3c  	beqz	s1, 0x80005450 <.LBB1_124+0x190>
;       value /= base;
8000508c: 33 d7 86 03  	divu	a4, a3, s8
80005090: 33 06 87 03  	mul	a2, a4, s8
80005094: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005098: 13 f5 e7 0f  	andi	a0, a5, 254
8000509c: 13 06 00 03  	addi	a2, zero, 48
800050a0: 93 04 a0 00  	addi	s1, zero, 10
800050a4: e3 6c 95 fa  	bltu	a0, s1, 0x8000505c <.LBB1_62+0x1cc>
800050a8: 13 86 08 00  	mv	a2, a7
800050ac: 6f f0 1f fb  	j	0x8000505c <.LBB1_62+0x1cc>
800050b0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800050b4: 13 85 79 00  	addi	a0, s3, 7
800050b8: 93 75 85 ff  	andi	a1, a0, -8
800050bc: 03 a9 05 00  	lw	s2, 0(a1)
800050c0: 13 e5 45 00  	ori	a0, a1, 4
800050c4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800050c8: 33 65 39 01  	or	a0, s2, s3
800050cc: 23 24 b1 00  	sw	a1, 8(sp)
800050d0: 63 14 05 00  	bnez	a0, 0x800050d8 <.LBB1_62+0x248>
800050d4: 13 74 f4 fe  	andi	s0, s0, -17
800050d8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800050dc: 93 75 04 40  	andi	a1, s0, 1024
800050e0: 93 d5 a5 00  	srli	a1, a1, 10
800050e4: 33 75 b5 00  	and	a0, a0, a1
800050e8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800050ec: 63 18 05 08  	bnez	a0, 0x8000517c <.LBB1_62+0x2ec>
800050f0: 93 04 00 00  	mv	s1, zero
800050f4: 13 75 04 02  	andi	a0, s0, 32
800050f8: 13 45 15 06  	xori	a0, a0, 97
800050fc: 13 05 65 0f  	addi	a0, a0, 246
80005100: 23 2a a1 00  	sw	a0, 20(sp)
80005104: 6f 00 40 02  	j	0x80005128 <.LBB1_62+0x298>
80005108: 13 06 10 00  	addi	a2, zero, 1
8000510c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005110: 93 b6 f4 01  	sltiu	a3, s1, 31
80005114: 33 f6 c6 00  	and	a2, a3, a2
80005118: 93 84 07 00  	mv	s1, a5
8000511c: 13 09 05 00  	mv	s2, a0
80005120: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005124: 63 0c 06 04  	beqz	a2, 0x8000517c <.LBB1_62+0x2ec>
;       value /= base;
80005128: 13 05 09 00  	mv	a0, s2
8000512c: 93 85 09 00  	mv	a1, s3
80005130: 13 06 0c 00  	mv	a2, s8
80005134: 93 06 00 00  	mv	a3, zero
80005138: 97 b0 ff ff  	auipc	ra, 1048571
8000513c: e7 80 40 fa  	jalr	-92(ra)
80005140: 33 06 85 03  	mul	a2, a0, s8
80005144: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005148: 13 77 e6 0f  	andi	a4, a2, 254
8000514c: 93 06 00 03  	addi	a3, zero, 48
80005150: 93 07 a0 00  	addi	a5, zero, 10
80005154: 63 64 f7 00  	bltu	a4, a5, 0x8000515c <.LBB1_62+0x2cc>
80005158: 83 26 41 01  	lw	a3, 20(sp)
8000515c: 33 86 c6 00  	add	a2, a3, a2
80005160: 93 06 c1 01  	addi	a3, sp, 28
80005164: b3 86 96 00  	add	a3, a3, s1
80005168: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000516c: e3 9e 09 f8  	bnez	s3, 0x80005108 <.LBB1_62+0x278>
80005170: 33 36 89 01  	sltu	a2, s2, s8
80005174: 13 46 16 00  	xori	a2, a2, 1
80005178: 6f f0 5f f9  	j	0x8000510c <.LBB1_62+0x27c>
8000517c: 03 25 81 00  	lw	a0, 8(sp)
80005180: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80005184: 13 07 c1 01  	addi	a4, sp, 28
80005188: 03 29 c1 00  	lw	s2, 12(sp)
8000518c: 6f 00 40 40  	j	0x80005590 <.LBB1_124+0x2d0>

80005190 <.LBB1_108>:
80005190: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80005194: 13 79 24 00  	andi	s2, s0, 2
80005198: 93 04 10 00  	addi	s1, zero, 1
8000519c: 63 1e 09 02  	bnez	s2, 0x800051d8 <.LBB1_108+0x48>
800051a0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800051a4: 63 6a 9b 02  	bltu	s6, s1, 0x800051d8 <.LBB1_108+0x48>
800051a8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800051ac: 13 0c fb ff  	addi	s8, s6, -1
800051b0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800051b4: 33 86 8c 00  	add	a2, s9, s0
800051b8: 13 05 00 02  	addi	a0, zero, 32
800051bc: 93 05 0a 00  	mv	a1, s4
800051c0: 93 86 0a 00  	mv	a3, s5
800051c4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800051c8: 13 04 14 00  	addi	s0, s0, 1
800051cc: e3 14 8c fe  	bne	s8, s0, 0x800051b4 <.LBB1_108+0x24>
800051d0: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800051d4: b3 8c 8c 00  	add	s9, s9, s0
800051d8: 03 c5 09 00  	lbu	a0, 0(s3)
800051dc: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800051e0: 93 89 49 00  	addi	s3, s3, 4
800051e4: 13 8c 1c 00  	addi	s8, s9, 1
800051e8: 93 05 0a 00  	mv	a1, s4
800051ec: 13 86 0c 00  	mv	a2, s9
800051f0: 93 86 0a 00  	mv	a3, s5
800051f4: 13 89 0b 00  	mv	s2, s7
800051f8: e7 80 0b 00  	jalr	s7
800051fc: 33 b5 64 01  	sltu	a0, s1, s6
80005200: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80005204: 33 65 a4 00  	or	a0, s0, a0
80005208: 63 1c 05 3a  	bnez	a0, 0x800055c0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000520c: 33 04 9b 40  	sub	s0, s6, s1
80005210: 93 0b e0 02  	addi	s7, zero, 46
80005214: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80005218: 13 0c 1c 00  	addi	s8, s8, 1
8000521c: 13 05 00 02  	addi	a0, zero, 32
80005220: 93 05 0a 00  	mv	a1, s4
80005224: 93 86 0a 00  	mv	a3, s5
80005228: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000522c: 13 04 f4 ff  	addi	s0, s0, -1
80005230: e3 12 04 fe  	bnez	s0, 0x80005214 <.LBB1_108+0x84>
80005234: 13 0b 50 02  	addi	s6, zero, 37
80005238: 13 04 1d 00  	addi	s0, s10, 1
8000523c: 6f f0 df 91  	j	0x80004b58 <.LBB1_183+0x30>

80005240 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80005240: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80005244: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80005248: 63 14 05 00  	bnez	a0, 0x80005250 <.LBB1_117+0x10>
8000524c: 93 fe fe fe  	andi	t4, t4, -17
80005250: 93 04 a0 00  	addi	s1, zero, 10
80005254: 13 04 f0 00  	addi	s0, zero, 15
80005258: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000525c: 13 f6 0e 40  	andi	a2, t4, 1024
80005260: 13 56 a6 00  	srli	a2, a2, 10
80005264: b3 f5 c5 00  	and	a1, a1, a2
80005268: 93 07 00 00  	mv	a5, zero
8000526c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80005270: 63 98 05 10  	bnez	a1, 0x80005380 <.LBB1_124+0xc0>
80005274: 93 05 00 00  	mv	a1, zero
80005278: 6f 00 40 03  	j	0x800052ac <.LBB1_117+0x6c>
8000527c: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005280: 33 06 d6 00  	add	a2, a2, a3
80005284: 93 87 15 00  	addi	a5, a1, 1
80005288: 93 06 c1 01  	addi	a3, sp, 28
8000528c: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005290: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80005294: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005298: 93 b5 f5 01  	sltiu	a1, a1, 31
8000529c: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800052a0: 23 80 c6 00  	sb	a2, 0(a3)
800052a4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800052a8: 63 0c 07 0c  	beqz	a4, 0x80005380 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800052ac: 93 76 e5 00  	andi	a3, a0, 14
800052b0: 13 06 00 03  	addi	a2, zero, 48
800052b4: e3 e4 96 fc  	bltu	a3, s1, 0x8000527c <.LBB1_117+0x3c>
800052b8: 13 06 70 03  	addi	a2, zero, 55
800052bc: 6f f0 1f fc  	j	0x8000527c <.LBB1_117+0x3c>

800052c0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800052c0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800052c4: 03 c5 07 00  	lbu	a0, 0(a5)
800052c8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800052cc: 63 0c 05 02  	beqz	a0, 0x80005304 <.LBB1_124+0x44>
800052d0: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800052d4: 63 84 0b 00  	beqz	s7, 0x800052dc <.LBB1_124+0x1c>
800052d8: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800052dc: 93 85 f5 ff  	addi	a1, a1, -1
800052e0: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800052e4: 03 c7 16 00  	lbu	a4, 1(a3)
800052e8: 13 86 16 00  	addi	a2, a3, 1
800052ec: b3 36 e0 00  	snez	a3, a4
800052f0: 33 37 b0 00  	snez	a4, a1
800052f4: 33 77 d7 00  	and	a4, a4, a3
800052f8: 93 85 f5 ff  	addi	a1, a1, -1
800052fc: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80005300: e3 12 07 fe  	bnez	a4, 0x800052e4 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80005304: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80005308: 93 75 04 40  	andi	a1, s0, 1024
8000530c: 93 b4 15 00  	seqz	s1, a1
80005310: 23 2a c1 00  	sw	a2, 20(sp)
80005314: b3 35 76 01  	sltu	a1, a2, s7
80005318: b3 e5 b4 00  	or	a1, s1, a1
8000531c: 63 94 05 00  	bnez	a1, 0x80005324 <.LBB1_124+0x64>
80005320: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80005324: 93 75 24 00  	andi	a1, s0, 2
80005328: 23 26 b1 00  	sw	a1, 12(sp)
8000532c: 63 96 05 2a  	bnez	a1, 0x800055d8 <.LBB1_124+0x318>
80005330: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80005334: 63 fe 65 29  	bgeu	a1, s6, 0x800055d0 <.LBB1_124+0x310>
80005338: 23 24 f1 00  	sw	a5, 8(sp)
8000533c: 13 04 00 00  	mv	s0, zero
80005340: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80005344: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80005348: 33 86 8c 00  	add	a2, s9, s0
8000534c: 13 05 00 02  	addi	a0, zero, 32
80005350: 93 05 0a 00  	mv	a1, s4
80005354: 93 86 0a 00  	mv	a3, s5
80005358: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000535c: 13 04 14 00  	addi	s0, s0, 1
80005360: e3 14 89 fe  	bne	s2, s0, 0x80005348 <.LBB1_124+0x88>
80005364: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80005368: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
8000536c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80005370: 23 2a b1 00  	sw	a1, 20(sp)
80005374: b3 8c 8c 00  	add	s9, s9, s0
80005378: 13 09 0c 00  	mv	s2, s8
8000537c: 6f 00 c0 25  	j	0x800055d8 <.LBB1_124+0x318>
80005380: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80005384: 13 07 c1 01  	addi	a4, sp, 28
80005388: 93 08 00 01  	addi	a7, zero, 16
8000538c: 13 0e 80 00  	addi	t3, zero, 8
80005390: 13 05 09 00  	mv	a0, s2
80005394: 93 05 0a 00  	mv	a1, s4
80005398: 13 86 0c 00  	mv	a2, s9
8000539c: 93 86 0a 00  	mv	a3, s5
800053a0: 13 08 00 00  	mv	a6, zero
800053a4: 93 83 0b 00  	mv	t2, s7
800053a8: 97 10 00 00  	auipc	ra, 1
800053ac: e7 80 00 fa  	jalr	-96(ra)
800053b0: 13 0c 05 00  	mv	s8, a0
800053b4: 6f 00 00 21  	j	0x800055c4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800053b8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800053bc: 63 14 08 00  	bnez	a6, 0x800053c4 <.LBB1_124+0x104>
800053c0: 13 74 f4 fe  	andi	s0, s0, -17
800053c4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800053c8: 13 76 04 40  	andi	a2, s0, 1024
800053cc: 13 56 a6 00  	srli	a2, a2, 10
800053d0: b3 f5 c5 00  	and	a1, a1, a2
800053d4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800053d8: 63 9c 05 06  	bnez	a1, 0x80005450 <.LBB1_124+0x190>
800053dc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800053e0: 13 56 f8 41  	srai	a2, a6, 31
800053e4: b3 06 c8 00  	add	a3, a6, a2
800053e8: b3 c6 c6 00  	xor	a3, a3, a2
800053ec: 13 76 04 02  	andi	a2, s0, 32
800053f0: 13 46 16 06  	xori	a2, a2, 97
800053f4: 93 08 66 0f  	addi	a7, a2, 246
800053f8: 6f 00 40 03  	j	0x8000542c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800053fc: 33 05 f6 00  	add	a0, a2, a5
80005400: 93 87 15 00  	addi	a5, a1, 1
80005404: 13 06 c1 01  	addi	a2, sp, 28
80005408: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000540c: b3 b6 86 01  	sltu	a3, a3, s8
80005410: 93 c6 16 00  	xori	a3, a3, 1
80005414: 93 b5 f5 01  	sltiu	a1, a1, 31
80005418: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000541c: 23 00 a6 00  	sb	a0, 0(a2)
80005420: 93 85 07 00  	mv	a1, a5
80005424: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005428: 63 84 04 02  	beqz	s1, 0x80005450 <.LBB1_124+0x190>
;       value /= base;
8000542c: 33 d7 86 03  	divu	a4, a3, s8
80005430: 33 06 87 03  	mul	a2, a4, s8
80005434: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005438: 13 f5 e7 0f  	andi	a0, a5, 254
8000543c: 13 06 00 03  	addi	a2, zero, 48
80005440: 93 04 a0 00  	addi	s1, zero, 10
80005444: e3 6c 95 fa  	bltu	a0, s1, 0x800053fc <.LBB1_124+0x13c>
80005448: 13 86 08 00  	mv	a2, a7
8000544c: 6f f0 1f fb  	j	0x800053fc <.LBB1_124+0x13c>
80005450: 93 89 49 00  	addi	s3, s3, 4
80005454: 13 58 f8 01  	srli	a6, a6, 31
80005458: 13 07 c1 01  	addi	a4, sp, 28
8000545c: 13 05 09 00  	mv	a0, s2
80005460: 93 05 0a 00  	mv	a1, s4
80005464: 13 86 0c 00  	mv	a2, s9
80005468: 93 86 0a 00  	mv	a3, s5
8000546c: 6f 00 80 13  	j	0x800055a4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80005470: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80005474: 63 14 05 00  	bnez	a0, 0x8000547c <.LBB1_124+0x1bc>
80005478: 13 74 f4 fe  	andi	s0, s0, -17
8000547c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80005480: 13 76 04 40  	andi	a2, s0, 1024
80005484: 13 56 a6 00  	srli	a2, a2, 10
80005488: b3 f5 c5 00  	and	a1, a1, a2
8000548c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80005490: 63 9c 05 0e  	bnez	a1, 0x80005588 <.LBB1_124+0x2c8>
80005494: 13 06 00 00  	mv	a2, zero
80005498: 93 75 04 02  	andi	a1, s0, 32
8000549c: 93 c5 15 06  	xori	a1, a1, 97
800054a0: 13 88 65 0f  	addi	a6, a1, 246
800054a4: 6f 00 40 03  	j	0x800054d8 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800054a8: 33 87 e7 00  	add	a4, a5, a4
800054ac: 93 07 16 00  	addi	a5, a2, 1
800054b0: 93 05 c1 01  	addi	a1, sp, 28
800054b4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800054b8: 33 35 85 01  	sltu	a0, a0, s8
800054bc: 13 45 15 00  	xori	a0, a0, 1
800054c0: 13 36 f6 01  	sltiu	a2, a2, 31
800054c4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800054c8: 23 80 e4 00  	sb	a4, 0(s1)
800054cc: 13 86 07 00  	mv	a2, a5
800054d0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800054d4: 63 8a 05 0a  	beqz	a1, 0x80005588 <.LBB1_124+0x2c8>
;       value /= base;
800054d8: b3 56 85 03  	divu	a3, a0, s8
800054dc: 33 87 86 03  	mul	a4, a3, s8
800054e0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800054e4: 93 74 e7 0f  	andi	s1, a4, 254
800054e8: 93 07 00 03  	addi	a5, zero, 48
800054ec: 93 05 a0 00  	addi	a1, zero, 10
800054f0: e3 ec b4 fa  	bltu	s1, a1, 0x800054a8 <.LBB1_124+0x1e8>
800054f4: 93 07 08 00  	mv	a5, a6
800054f8: 6f f0 1f fb  	j	0x800054a8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800054fc: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80005500: 63 14 05 00  	bnez	a0, 0x80005508 <.LBB1_124+0x248>
80005504: 13 74 f4 fe  	andi	s0, s0, -17
80005508: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000550c: 13 76 04 40  	andi	a2, s0, 1024
80005510: 13 56 a6 00  	srli	a2, a2, 10
80005514: b3 f5 c5 00  	and	a1, a1, a2
80005518: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000551c: 63 96 05 06  	bnez	a1, 0x80005588 <.LBB1_124+0x2c8>
80005520: 13 06 00 00  	mv	a2, zero
80005524: 93 75 04 02  	andi	a1, s0, 32
80005528: 93 c5 15 06  	xori	a1, a1, 97
8000552c: 13 88 65 0f  	addi	a6, a1, 246
80005530: 6f 00 40 03  	j	0x80005564 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005534: 33 87 e7 00  	add	a4, a5, a4
80005538: 93 07 16 00  	addi	a5, a2, 1
8000553c: 93 05 c1 01  	addi	a1, sp, 28
80005540: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005544: 33 35 85 01  	sltu	a0, a0, s8
80005548: 13 45 15 00  	xori	a0, a0, 1
8000554c: 13 36 f6 01  	sltiu	a2, a2, 31
80005550: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005554: 23 80 e4 00  	sb	a4, 0(s1)
80005558: 13 86 07 00  	mv	a2, a5
8000555c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005560: 63 84 05 02  	beqz	a1, 0x80005588 <.LBB1_124+0x2c8>
;       value /= base;
80005564: b3 56 85 03  	divu	a3, a0, s8
80005568: 33 87 86 03  	mul	a4, a3, s8
8000556c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005570: 93 74 e7 0f  	andi	s1, a4, 254
80005574: 93 07 00 03  	addi	a5, zero, 48
80005578: 93 05 a0 00  	addi	a1, zero, 10
8000557c: e3 ec b4 fa  	bltu	s1, a1, 0x80005534 <.LBB1_124+0x274>
80005580: 93 07 08 00  	mv	a5, a6
80005584: 6f f0 1f fb  	j	0x80005534 <.LBB1_124+0x274>
80005588: 93 89 49 00  	addi	s3, s3, 4
8000558c: 13 07 c1 01  	addi	a4, sp, 28
80005590: 13 05 09 00  	mv	a0, s2
80005594: 93 05 0a 00  	mv	a1, s4
80005598: 13 86 0c 00  	mv	a2, s9
8000559c: 93 86 0a 00  	mv	a3, s5
800055a0: 13 08 00 00  	mv	a6, zero
800055a4: 93 08 0c 00  	mv	a7, s8
800055a8: 93 83 0b 00  	mv	t2, s7
800055ac: 13 0e 0b 00  	mv	t3, s6
800055b0: 93 0e 04 00  	mv	t4, s0
800055b4: 97 10 00 00  	auipc	ra, 1
800055b8: e7 80 40 d9  	jalr	-620(ra)
800055bc: 13 0c 05 00  	mv	s8, a0
800055c0: 13 0b 50 02  	addi	s6, zero, 37
800055c4: 93 0b e0 02  	addi	s7, zero, 46
800055c8: 13 04 1d 00  	addi	s0, s10, 1
800055cc: 6f f0 cf d8  	j	0x80004b58 <.LBB1_183+0x30>
800055d0: 93 85 15 00  	addi	a1, a1, 1
800055d4: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800055d8: 63 00 05 04  	beqz	a0, 0x80005618 <.LBB1_124+0x358>
800055dc: 13 84 17 00  	addi	s0, a5, 1
800055e0: 6f 00 00 03  	j	0x80005610 <.LBB1_124+0x350>
800055e4: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800055e8: 13 8c 1c 00  	addi	s8, s9, 1
800055ec: 13 75 f5 0f  	andi	a0, a0, 255
800055f0: 93 05 0a 00  	mv	a1, s4
800055f4: 13 86 0c 00  	mv	a2, s9
800055f8: 93 86 0a 00  	mv	a3, s5
800055fc: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80005600: 03 45 04 00  	lbu	a0, 0(s0)
80005604: 13 04 14 00  	addi	s0, s0, 1
80005608: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000560c: 63 08 05 00  	beqz	a0, 0x8000561c <.LBB1_124+0x35c>
80005610: e3 9c 04 fc  	bnez	s1, 0x800055e8 <.LBB1_124+0x328>
80005614: e3 98 0b fc  	bnez	s7, 0x800055e4 <.LBB1_124+0x324>
80005618: 13 8c 0c 00  	mv	s8, s9
8000561c: 03 25 c1 00  	lw	a0, 12(sp)
80005620: 13 35 15 00  	seqz	a0, a0
80005624: 03 26 41 01  	lw	a2, 20(sp)
80005628: b3 35 66 01  	sltu	a1, a2, s6
8000562c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80005630: 33 65 b5 00  	or	a0, a0, a1
80005634: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80005638: e3 14 05 f8  	bnez	a0, 0x800055c0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000563c: 33 04 cb 40  	sub	s0, s6, a2
80005640: 93 0b e0 02  	addi	s7, zero, 46
80005644: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80005648: 13 0c 1c 00  	addi	s8, s8, 1
8000564c: 13 05 00 02  	addi	a0, zero, 32
80005650: 93 05 0a 00  	mv	a1, s4
80005654: 93 86 0a 00  	mv	a3, s5
80005658: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000565c: 13 04 f4 ff  	addi	s0, s0, -1
80005660: e3 12 04 fe  	bnez	s0, 0x80005644 <.LBB1_124+0x384>
80005664: 13 0b 50 02  	addi	s6, zero, 37
80005668: 13 04 1d 00  	addi	s0, s10, 1
8000566c: 6f f0 cf ce  	j	0x80004b58 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80005670: 13 86 0c 00  	mv	a2, s9
80005674: 63 e4 5c 01  	bltu	s9, s5, 0x8000567c <.LBB1_124+0x3bc>
80005678: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000567c: 13 05 00 00  	mv	a0, zero
80005680: 93 05 0a 00  	mv	a1, s4
80005684: 93 86 0a 00  	mv	a3, s5
80005688: e7 00 09 00  	jalr	s2
;   return (int)idx;
8000568c: 13 85 0c 00  	mv	a0, s9
80005690: 83 2d c1 03  	lw	s11, 60(sp)
80005694: 03 2d 01 04  	lw	s10, 64(sp)
80005698: 83 2c 41 04  	lw	s9, 68(sp)
8000569c: 03 2c 81 04  	lw	s8, 72(sp)
800056a0: 83 2b c1 04  	lw	s7, 76(sp)
800056a4: 03 2b 01 05  	lw	s6, 80(sp)
800056a8: 83 2a 41 05  	lw	s5, 84(sp)
800056ac: 03 2a 81 05  	lw	s4, 88(sp)
800056b0: 83 29 c1 05  	lw	s3, 92(sp)
800056b4: 03 29 01 06  	lw	s2, 96(sp)
800056b8: 83 24 41 06  	lw	s1, 100(sp)
800056bc: 03 24 81 06  	lw	s0, 104(sp)
800056c0: 83 20 c1 06  	lw	ra, 108(sp)
800056c4: 13 01 01 07  	addi	sp, sp, 112
800056c8: 67 80 00 00  	ret

800056cc <_out_char.llvm.11632292163828655644>:
;   if (character) {
800056cc: 63 04 05 0a  	beqz	a0, 0x80005774 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800056d0: f3 25 40 f1  	csrr	a1, mhartid
800056d4: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800056d8: 33 86 c5 02  	mul	a2, a1, a2

800056dc <.LBB2_6>:
800056dc: 97 26 00 00  	auipc	a3, 2
800056e0: 93 86 86 b4  	addi	a3, a3, -1208
800056e4: b3 05 d6 00  	add	a1, a2, a3
800056e8: 03 a7 05 00  	lw	a4, 0(a1)
800056ec: 93 07 17 00  	addi	a5, a4, 1
800056f0: 23 a0 f5 00  	sw	a5, 0(a1)
800056f4: 33 87 e5 00  	add	a4, a1, a4
800056f8: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800056fc: 03 a7 05 00  	lw	a4, 0(a1)
80005700: 13 07 47 c0  	addi	a4, a4, -1020
80005704: 33 37 e0 00  	snez	a4, a4
80005708: 13 05 65 ff  	addi	a0, a0, -10
8000570c: 33 35 a0 00  	snez	a0, a0
80005710: 33 75 e5 00  	and	a0, a0, a4
80005714: 63 10 05 06  	bnez	a0, 0x80005774 <.LBB2_8+0x18>
80005718: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000571c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80005720: 23 26 05 00  	sw	zero, 12(a0)
80005724: 93 06 00 04  	addi	a3, zero, 64
80005728: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000572c: 23 2a 05 00  	sw	zero, 20(a0)
80005730: 93 06 10 00  	addi	a3, zero, 1
80005734: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80005738: 23 2e 05 00  	sw	zero, 28(a0)
8000573c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80005740: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80005744: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80005748: 23 22 05 02  	sw	zero, 36(a0)
8000574c: 23 20 c5 02  	sw	a2, 32(a0)

80005750 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80005750: 17 25 00 00  	auipc	a0, 2
80005754: 13 05 05 8b  	addi	a0, a0, -1872
80005758: 23 20 d5 00  	sw	a3, 0(a0)

8000575c <.LBB2_8>:
8000575c: 17 25 00 00  	auipc	a0, 2
80005760: 13 05 45 8e  	addi	a0, a0, -1820
;         while (fromhost == 0)
80005764: 03 26 05 00  	lw	a2, 0(a0)
80005768: e3 0e 06 fe  	beqz	a2, 0x80005764 <.LBB2_8+0x8>
;         fromhost = 0;
8000576c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80005770: 23 a0 05 00  	sw	zero, 0(a1)
; }
80005774: 67 80 00 00  	ret

80005778 <_out_null>:
; }
80005778: 67 80 00 00  	ret

8000577c <_ftoa>:
; {
8000577c: 13 01 01 f9  	addi	sp, sp, -112
80005780: 23 26 11 06  	sw	ra, 108(sp)
80005784: 23 24 81 06  	sw	s0, 104(sp)
80005788: 23 22 91 06  	sw	s1, 100(sp)
8000578c: 23 20 21 07  	sw	s2, 96(sp)
80005790: 23 2e 31 05  	sw	s3, 92(sp)
80005794: 23 2c 41 05  	sw	s4, 88(sp)
80005798: 23 2a 51 05  	sw	s5, 84(sp)
8000579c: 23 28 61 05  	sw	s6, 80(sp)
800057a0: 23 26 71 05  	sw	s7, 76(sp)
800057a4: 23 24 81 05  	sw	s8, 72(sp)
800057a8: 23 22 91 05  	sw	s9, 68(sp)
800057ac: 23 20 a1 05  	sw	s10, 64(sp)
800057b0: 27 3c 81 02  	fsd	fs0, 56(sp)
800057b4: 27 38 91 02  	fsd	fs1, 48(sp)
800057b8: 27 34 21 03  	fsd	fs2, 40(sp)

800057bc <.LBB4_83>:
800057bc: 97 24 00 00  	auipc	s1, 2
800057c0: 93 84 c4 9b  	addi	s1, s1, -1604
800057c4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800057c8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800057cc: 93 0a 08 00  	mv	s5, a6
800057d0: 13 89 07 00  	mv	s2, a5
800057d4: 93 89 06 00  	mv	s3, a3
800057d8: 13 0a 06 00  	mv	s4, a2
800057dc: 13 8b 05 00  	mv	s6, a1
800057e0: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
800057e4: 63 98 04 0e  	bnez	s1, 0x800058d4 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800057e8: 13 f5 2a 00  	andi	a0, s5, 2
800057ec: 93 f5 3a 00  	andi	a1, s5, 3
800057f0: b3 35 b0 00  	snez	a1, a1
800057f4: 13 36 59 00  	sltiu	a2, s2, 5
800057f8: b3 65 b6 00  	or	a1, a2, a1
800057fc: 93 5c 15 00  	srli	s9, a0, 1
80005800: 13 04 0a 00  	mv	s0, s4
80005804: 63 96 05 02  	bnez	a1, 0x80005830 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80005808: 93 04 c9 ff  	addi	s1, s2, -4
8000580c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005810: 13 04 16 00  	addi	s0, a2, 1
80005814: 13 05 00 02  	addi	a0, zero, 32
80005818: 93 05 0b 00  	mv	a1, s6
8000581c: 93 86 09 00  	mv	a3, s3
80005820: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80005824: 93 84 f4 ff  	addi	s1, s1, -1
80005828: 13 06 04 00  	mv	a2, s0
8000582c: e3 92 04 fe  	bnez	s1, 0x80005810 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80005830: 93 04 14 00  	addi	s1, s0, 1
80005834: 13 05 d0 02  	addi	a0, zero, 45
80005838: 93 05 0b 00  	mv	a1, s6
8000583c: 13 06 04 00  	mv	a2, s0
80005840: 93 86 09 00  	mv	a3, s3
80005844: e7 80 0b 00  	jalr	s7
80005848: 93 0a 24 00  	addi	s5, s0, 2
8000584c: 13 05 90 06  	addi	a0, zero, 105
80005850: 93 05 0b 00  	mv	a1, s6
80005854: 13 86 04 00  	mv	a2, s1
80005858: 93 86 09 00  	mv	a3, s3
8000585c: e7 80 0b 00  	jalr	s7
80005860: 13 0c 34 00  	addi	s8, s0, 3
80005864: 13 05 e0 06  	addi	a0, zero, 110
80005868: 93 05 0b 00  	mv	a1, s6
8000586c: 13 86 0a 00  	mv	a2, s5
80005870: 93 86 09 00  	mv	a3, s3
80005874: e7 80 0b 00  	jalr	s7
80005878: 93 04 44 00  	addi	s1, s0, 4
8000587c: 13 05 60 06  	addi	a0, zero, 102
80005880: 93 05 0b 00  	mv	a1, s6
80005884: 13 06 0c 00  	mv	a2, s8
80005888: 93 86 09 00  	mv	a3, s3
8000588c: e7 80 0b 00  	jalr	s7
80005890: 33 85 44 41  	sub	a0, s1, s4
80005894: 33 35 25 01  	sltu	a0, a0, s2
80005898: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000589c: 93 c5 1c 00  	xori	a1, s9, 1
800058a0: 33 e5 a5 00  	or	a0, a1, a0
800058a4: 63 16 05 56  	bnez	a0, 0x80005e10 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800058a8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800058ac: 13 84 14 00  	addi	s0, s1, 1
800058b0: 13 05 00 02  	addi	a0, zero, 32
800058b4: 93 05 0b 00  	mv	a1, s6
800058b8: 13 86 04 00  	mv	a2, s1
800058bc: 93 86 09 00  	mv	a3, s3
800058c0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800058c4: 33 05 8a 00  	add	a0, s4, s0
800058c8: 93 04 04 00  	mv	s1, s0
800058cc: e3 60 25 ff  	bltu	a0, s2, 0x800058ac <.LBB4_83+0xf0>
800058d0: 6f 00 40 54  	j	0x80005e14 <.LBB4_90+0x378>
800058d4: 53 04 a5 22  	fmv.d	fs0, fa0

800058d8 <.LBB4_84>:
800058d8: 17 25 00 00  	auipc	a0, 2
800058dc: 13 05 85 8a  	addi	a0, a0, -1880
800058e0: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
800058e4: 53 05 05 a2  	fle.d	a0, fa0, ft0
800058e8: 63 1e 05 00  	bnez	a0, 0x80005904 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800058ec: 93 f5 4a 00  	andi	a1, s5, 4
800058f0: 13 b5 15 00  	seqz	a0, a1
800058f4: 63 82 05 06  	beqz	a1, 0x80005958 <.LBB4_88>

800058f8 <.LBB4_85>:
800058f8: 17 1c 00 00  	auipc	s8, 1
800058fc: 13 0c cc 4c  	addi	s8, s8, 1228
80005900: 6f 00 00 06  	j	0x80005960 <.LBB4_88+0x8>

80005904 <.LBB4_86>:
80005904: 17 25 00 00  	auipc	a0, 2
80005908: 13 05 45 88  	addi	a0, a0, -1916
8000590c: 07 30 05 00  	fld	ft0, 0(a0)

80005910 <.LBB4_87>:
80005910: 17 25 00 00  	auipc	a0, 2
80005914: 13 05 05 88  	addi	a0, a0, -1920
80005918: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000591c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80005920: d3 85 80 a2  	fle.d	a1, ft1, fs0
80005924: 33 75 b5 00  	and	a0, a0, a1
80005928: 63 1e 05 0e  	bnez	a0, 0x80005a24 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000592c: 13 85 0b 00  	mv	a0, s7
80005930: 93 05 0b 00  	mv	a1, s6
80005934: 13 06 0a 00  	mv	a2, s4
80005938: 93 86 09 00  	mv	a3, s3
8000593c: 53 05 84 22  	fmv.d	fa0, fs0
80005940: 93 07 09 00  	mv	a5, s2
80005944: 13 88 0a 00  	mv	a6, s5
80005948: 97 00 00 00  	auipc	ra, 0
8000594c: e7 80 40 51  	jalr	1300(ra)
80005950: 13 04 05 00  	mv	s0, a0
80005954: 6f 00 00 4c  	j	0x80005e14 <.LBB4_90+0x378>

80005958 <.LBB4_88>:
80005958: 17 1c 00 00  	auipc	s8, 1
8000595c: 13 0c dc 47  	addi	s8, s8, 1149
80005960: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80005964: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005968: 13 f5 3a 00  	andi	a0, s5, 3
8000596c: 33 35 a0 00  	snez	a0, a0
80005970: b3 b5 2c 01  	sltu	a1, s9, s2
80005974: 93 c5 15 00  	xori	a1, a1, 1
80005978: 33 65 b5 00  	or	a0, a0, a1
8000597c: 93 fa 2a 00  	andi	s5, s5, 2
80005980: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005984: 63 16 05 02  	bnez	a0, 0x800059b0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80005988: 33 04 99 41  	sub	s0, s2, s9
8000598c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005990: 93 04 16 00  	addi	s1, a2, 1
80005994: 13 05 00 02  	addi	a0, zero, 32
80005998: 93 05 0b 00  	mv	a1, s6
8000599c: 93 86 09 00  	mv	a3, s3
800059a0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800059a4: 13 04 f4 ff  	addi	s0, s0, -1
800059a8: 13 86 04 00  	mv	a2, s1
800059ac: e3 12 04 fe  	bnez	s0, 0x80005990 <.LBB4_88+0x38>
800059b0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800059b4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800059b8: 33 05 9c 01  	add	a0, s8, s9
800059bc: 03 45 05 00  	lbu	a0, 0(a0)
800059c0: 13 86 04 00  	mv	a2, s1
800059c4: 13 84 fc ff  	addi	s0, s9, -1
800059c8: 93 84 14 00  	addi	s1, s1, 1
800059cc: 93 05 0b 00  	mv	a1, s6
800059d0: 93 86 09 00  	mv	a3, s3
800059d4: e7 80 0b 00  	jalr	s7
800059d8: 93 0c 04 00  	mv	s9, s0
;   while (len) {
800059dc: e3 1e 04 fc  	bnez	s0, 0x800059b8 <.LBB4_88+0x60>
800059e0: 33 85 44 41  	sub	a0, s1, s4
800059e4: 33 35 25 01  	sltu	a0, a0, s2
800059e8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800059ec: 93 c5 1a 00  	xori	a1, s5, 1
800059f0: 33 e5 a5 00  	or	a0, a1, a0
800059f4: 63 1e 05 40  	bnez	a0, 0x80005e10 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800059f8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800059fc: 13 84 14 00  	addi	s0, s1, 1
80005a00: 13 05 00 02  	addi	a0, zero, 32
80005a04: 93 05 0b 00  	mv	a1, s6
80005a08: 13 86 04 00  	mv	a2, s1
80005a0c: 93 86 09 00  	mv	a3, s3
80005a10: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80005a14: 33 05 8a 00  	add	a0, s4, s0
80005a18: 93 04 04 00  	mv	s1, s0
80005a1c: e3 60 25 ff  	bltu	a0, s2, 0x800059fc <.LBB4_88+0xa4>
80005a20: 6f 00 40 3f  	j	0x80005e14 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80005a24: 13 f5 0a 40  	andi	a0, s5, 1024
80005a28: 13 0c 60 00  	addi	s8, zero, 6
80005a2c: 63 04 05 00  	beqz	a0, 0x80005a34 <.LBB4_88+0xdc>
80005a30: 13 0c 07 00  	mv	s8, a4
80005a34: 13 05 a0 00  	addi	a0, zero, 10
80005a38: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80005a3c: 63 6c ac 02  	bltu	s8, a0, 0x80005a74 <.LBB4_88+0x11c>
80005a40: 93 04 6c ff  	addi	s1, s8, -10
80005a44: 13 05 f0 01  	addi	a0, zero, 31
80005a48: 63 e4 a4 00  	bltu	s1, a0, 0x80005a50 <.LBB4_88+0xf8>
80005a4c: 93 04 f0 01  	addi	s1, zero, 31
80005a50: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80005a54: 13 05 81 00  	addi	a0, sp, 8
80005a58: 93 05 00 03  	addi	a1, zero, 48
80005a5c: 13 06 04 00  	mv	a2, s0
80005a60: 97 a0 ff ff  	auipc	ra, 1048570
80005a64: e7 80 00 5a  	jalr	1440(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80005a68: 13 c5 f4 ff  	not	a0, s1
80005a6c: 33 0c ac 00  	add	s8, s8, a0
80005a70: 6f 00 80 00  	j	0x80005a78 <.LBB4_88+0x120>
80005a74: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80005a78: 13 15 3c 00  	slli	a0, s8, 3

80005a7c <.LBB4_89>:
80005a7c: 97 15 00 00  	auipc	a1, 1
80005a80: 93 85 c5 51  	addi	a1, a1, 1308
80005a84: 33 05 b5 00  	add	a0, a0, a1
80005a88: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80005a8c: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80005a90: 53 80 04 d2  	fcvt.d.w	ft0, s1
80005a94: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80005a98: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80005a9c <.LBB4_90>:
80005a9c: 17 15 00 00  	auipc	a0, 1
80005aa0: 13 05 c5 6f  	addi	a0, a0, 1788
80005aa4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80005aa8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80005aac: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80005ab0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80005ab4: d3 05 01 a2  	fle.d	a1, ft2, ft0
80005ab8: 63 90 05 02  	bnez	a1, 0x80005ad8 <.LBB4_90+0x3c>
;     ++frac;
80005abc: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80005ac0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80005ac4: d3 15 11 a2  	flt.d	a1, ft2, ft1
80005ac8: 63 94 05 02  	bnez	a1, 0x80005af0 <.LBB4_90+0x54>
80005acc: 13 05 00 00  	mv	a0, zero
;       ++whole;
80005ad0: 93 84 14 00  	addi	s1, s1, 1
80005ad4: 6f 00 c0 01  	j	0x80005af0 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80005ad8: d3 15 01 a2  	flt.d	a1, ft2, ft0
80005adc: 63 9a 05 00  	bnez	a1, 0x80005af0 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80005ae0: 93 35 15 00  	seqz	a1, a0
80005ae4: 13 76 15 00  	andi	a2, a0, 1
80005ae8: b3 65 b6 00  	or	a1, a2, a1
80005aec: 33 85 a5 00  	add	a0, a1, a0
80005af0: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80005af4: 63 0c 0c 0c  	beqz	s8, 0x80005bcc <.LBB4_90+0x130>
80005af8: 13 06 00 00  	mv	a2, zero
80005afc: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80005b00: 33 83 85 00  	add	t1, a1, s0
80005b04: 93 02 00 02  	addi	t0, zero, 32
80005b08: 33 87 82 40  	sub	a4, t0, s0
80005b0c: b7 d5 cc cc  	lui	a1, 838861
80005b10: 93 83 d5 cc  	addi	t2, a1, -819
80005b14: 13 08 a0 00  	addi	a6, zero, 10
80005b18: 93 08 90 00  	addi	a7, zero, 9
80005b1c: 63 04 c7 0c  	beq	a4, a2, 0x80005be4 <.LBB4_90+0x148>
80005b20: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80005b24: 33 35 75 02  	mulhu	a0, a0, t2
80005b28: 13 55 35 00  	srli	a0, a0, 3
80005b2c: b3 06 05 03  	mul	a3, a0, a6
80005b30: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80005b34: 93 e6 06 03  	ori	a3, a3, 48
80005b38: b3 07 c3 00  	add	a5, t1, a2
80005b3c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80005b40: 13 06 16 00  	addi	a2, a2, 1
80005b44: e3 ec b8 fc  	bltu	a7, a1, 0x80005b1c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80005b48: 33 05 c4 00  	add	a0, s0, a2
80005b4c: 93 05 f5 ff  	addi	a1, a0, -1
80005b50: 93 06 e0 01  	addi	a3, zero, 30
80005b54: b3 b6 b6 00  	sltu	a3, a3, a1
80005b58: 33 47 cc 00  	xor	a4, s8, a2
80005b5c: 13 37 17 00  	seqz	a4, a4
80005b60: b3 e6 e6 00  	or	a3, a3, a4
80005b64: 63 94 06 08  	bnez	a3, 0x80005bec <.LBB4_90+0x150>
80005b68: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80005b6c: 33 05 85 00  	add	a0, a0, s0
80005b70: 93 45 f6 ff  	not	a1, a2
80005b74: 33 8c 85 01  	add	s8, a1, s8
80005b78: 33 04 c4 00  	add	s0, s0, a2
80005b7c: 93 05 f0 01  	addi	a1, zero, 31
80005b80: b3 86 85 40  	sub	a3, a1, s0
80005b84: 33 05 c5 00  	add	a0, a0, a2
80005b88: 93 05 0c 00  	mv	a1, s8
80005b8c: 63 64 dc 00  	bltu	s8, a3, 0x80005b94 <.LBB4_90+0xf8>
80005b90: 93 85 06 00  	mv	a1, a3
80005b94: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80005b98: 93 05 00 03  	addi	a1, zero, 48
80005b9c: 97 a0 ff ff  	auipc	ra, 1048570
80005ba0: e7 80 40 46  	jalr	1124(ra)
80005ba4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80005ba8: b3 05 a4 00  	add	a1, s0, a0
80005bac: 93 b5 f5 01  	sltiu	a1, a1, 31
80005bb0: 33 46 ac 00  	xor	a2, s8, a0
80005bb4: 33 36 c0 00  	snez	a2, a2
80005bb8: 33 f6 c5 00  	and	a2, a1, a2
80005bbc: 13 05 15 00  	addi	a0, a0, 1
80005bc0: e3 14 06 fe  	bnez	a2, 0x80005ba8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80005bc4: 33 05 a4 00  	add	a0, s0, a0
80005bc8: 6f 00 80 02  	j	0x80005bf0 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80005bcc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80005bd0: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80005bd4: 53 05 10 a2  	fle.d	a0, ft0, ft1
80005bd8: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80005bdc: b3 84 a4 00  	add	s1, s1, a0
80005be0: 6f 00 c0 03  	j	0x80005c1c <.LBB4_90+0x180>
80005be4: 13 04 00 02  	addi	s0, zero, 32
80005be8: 6f 00 80 03  	j	0x80005c20 <.LBB4_90+0x184>
80005bec: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80005bf0: 63 8e 05 00  	beqz	a1, 0x80005c0c <.LBB4_90+0x170>
;       buf[len++] = '.';
80005bf4: 13 04 15 00  	addi	s0, a0, 1
80005bf8: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80005bfc: 33 85 a5 00  	add	a0, a1, a0
80005c00: 93 05 e0 02  	addi	a1, zero, 46
80005c04: 23 00 b5 00  	sb	a1, 0(a0)
80005c08: 6f 00 80 00  	j	0x80005c10 <.LBB4_90+0x174>
80005c0c: 13 04 05 00  	mv	s0, a0
80005c10: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80005c14: 93 02 04 00  	mv	t0, s0
80005c18: 63 64 85 00  	bltu	a0, s0, 0x80005c20 <.LBB4_90+0x184>
80005c1c: 93 02 00 02  	addi	t0, zero, 32
80005c20: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80005c24: 37 65 66 66  	lui	a0, 419430
80005c28: 93 05 75 66  	addi	a1, a0, 1639
80005c2c: 13 08 a0 00  	addi	a6, zero, 10
80005c30: 93 06 81 00  	addi	a3, sp, 8
80005c34: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80005c38: 63 80 82 04  	beq	t0, s0, 0x80005c78 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80005c3c: 33 95 b4 02  	mulh	a0, s1, a1
80005c40: 93 57 f5 01  	srli	a5, a0, 31
80005c44: 13 55 25 40  	srai	a0, a0, 2
80005c48: 33 05 f5 00  	add	a0, a0, a5
80005c4c: b3 07 05 03  	mul	a5, a0, a6
80005c50: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80005c54: 93 87 07 03  	addi	a5, a5, 48
80005c58: 13 0c 14 00  	addi	s8, s0, 1
80005c5c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80005c60: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80005c64: 23 00 f4 00  	sb	a5, 0(s0)
80005c68: 13 04 0c 00  	mv	s0, s8
80005c6c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80005c70: e3 64 c7 fc  	bltu	a4, a2, 0x80005c38 <.LBB4_90+0x19c>
80005c74: 6f 00 80 00  	j	0x80005c7c <.LBB4_90+0x1e0>
80005c78: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80005c7c: 93 f4 3a 00  	andi	s1, s5, 3
80005c80: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80005c84: 63 96 a4 06  	bne	s1, a0, 0x80005cf0 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80005c88: 63 0c 09 00  	beqz	s2, 0x80005ca0 <.LBB4_90+0x204>
80005c8c: 13 f5 ca 00  	andi	a0, s5, 12
80005c90: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80005c94: 33 e5 ac 00  	or	a0, s9, a0
80005c98: 33 09 a9 40  	sub	s2, s2, a0
80005c9c: 6f 00 80 00  	j	0x80005ca4 <.LBB4_90+0x208>
80005ca0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80005ca4: 33 35 2c 01  	sltu	a0, s8, s2
80005ca8: 93 45 15 00  	xori	a1, a0, 1
80005cac: 13 05 f0 01  	addi	a0, zero, 31
80005cb0: 33 36 85 01  	sltu	a2, a0, s8
80005cb4: b3 65 b6 00  	or	a1, a2, a1
80005cb8: 63 9c 05 02  	bnez	a1, 0x80005cf0 <.LBB4_90+0x254>
80005cbc: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80005cc0: 93 45 fc ff  	not	a1, s8
80005cc4: b3 05 b9 00  	add	a1, s2, a1
80005cc8: 33 06 85 41  	sub	a2, a0, s8
80005ccc: 33 85 86 01  	add	a0, a3, s8
80005cd0: 63 e4 c5 00  	bltu	a1, a2, 0x80005cd8 <.LBB4_90+0x23c>
80005cd4: 93 05 06 00  	mv	a1, a2
80005cd8: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80005cdc: 93 05 00 03  	addi	a1, zero, 48
80005ce0: 13 06 04 00  	mv	a2, s0
80005ce4: 97 a0 ff ff  	auipc	ra, 1048570
80005ce8: e7 80 c0 31  	jalr	796(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80005cec: 33 0c 84 01  	add	s8, s0, s8
80005cf0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80005cf4: 63 6a 85 05  	bltu	a0, s8, 0x80005d48 <.LBB4_90+0x2ac>
;     if (negative) {
80005cf8: 63 8c 0c 00  	beqz	s9, 0x80005d10 <.LBB4_90+0x274>
80005cfc: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80005d00: 33 05 85 01  	add	a0, a0, s8
80005d04: 13 0c 1c 00  	addi	s8, s8, 1
80005d08: 93 05 d0 02  	addi	a1, zero, 45
80005d0c: 6f 00 80 03  	j	0x80005d44 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80005d10: 13 f5 4a 00  	andi	a0, s5, 4
80005d14: 63 10 05 02  	bnez	a0, 0x80005d34 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80005d18: 13 f5 8a 00  	andi	a0, s5, 8
80005d1c: 63 06 05 02  	beqz	a0, 0x80005d48 <.LBB4_90+0x2ac>
80005d20: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80005d24: 33 05 85 01  	add	a0, a0, s8
80005d28: 13 0c 1c 00  	addi	s8, s8, 1
80005d2c: 93 05 00 02  	addi	a1, zero, 32
80005d30: 6f 00 40 01  	j	0x80005d44 <.LBB4_90+0x2a8>
80005d34: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80005d38: 33 05 85 01  	add	a0, a0, s8
80005d3c: 13 0c 1c 00  	addi	s8, s8, 1
80005d40: 93 05 b0 02  	addi	a1, zero, 43
80005d44: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005d48: 33 35 90 00  	snez	a0, s1
80005d4c: b3 35 2c 01  	sltu	a1, s8, s2
80005d50: 93 c5 15 00  	xori	a1, a1, 1
80005d54: 33 65 b5 00  	or	a0, a0, a1
80005d58: 93 fa 2a 00  	andi	s5, s5, 2
80005d5c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005d60: 63 16 05 02  	bnez	a0, 0x80005d8c <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80005d64: b3 04 89 41  	sub	s1, s2, s8
80005d68: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005d6c: 13 04 16 00  	addi	s0, a2, 1
80005d70: 13 05 00 02  	addi	a0, zero, 32
80005d74: 93 05 0b 00  	mv	a1, s6
80005d78: 93 86 09 00  	mv	a3, s3
80005d7c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80005d80: 93 84 f4 ff  	addi	s1, s1, -1
80005d84: 13 06 04 00  	mv	a2, s0
80005d88: e3 92 04 fe  	bnez	s1, 0x80005d6c <.LBB4_90+0x2d0>
80005d8c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80005d90: 63 0c 0c 02  	beqz	s8, 0x80005dc8 <.LBB4_90+0x32c>
80005d94: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80005d98: 33 85 8c 01  	add	a0, s9, s8
80005d9c: 03 45 05 00  	lbu	a0, 0(a0)
80005da0: 13 0d fc ff  	addi	s10, s8, -1
80005da4: 93 04 14 00  	addi	s1, s0, 1
80005da8: 93 05 0b 00  	mv	a1, s6
80005dac: 13 06 04 00  	mv	a2, s0
80005db0: 93 86 09 00  	mv	a3, s3
80005db4: e7 80 0b 00  	jalr	s7
80005db8: 13 84 04 00  	mv	s0, s1
80005dbc: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80005dc0: e3 1c 0d fc  	bnez	s10, 0x80005d98 <.LBB4_90+0x2fc>
80005dc4: 6f 00 80 00  	j	0x80005dcc <.LBB4_90+0x330>
80005dc8: 93 04 04 00  	mv	s1, s0
80005dcc: 33 85 44 41  	sub	a0, s1, s4
80005dd0: 33 35 25 01  	sltu	a0, a0, s2
80005dd4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005dd8: 93 c5 1a 00  	xori	a1, s5, 1
80005ddc: 33 e5 a5 00  	or	a0, a1, a0
80005de0: 63 18 05 02  	bnez	a0, 0x80005e10 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80005de4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005de8: 13 84 14 00  	addi	s0, s1, 1
80005dec: 13 05 00 02  	addi	a0, zero, 32
80005df0: 93 05 0b 00  	mv	a1, s6
80005df4: 13 86 04 00  	mv	a2, s1
80005df8: 93 86 09 00  	mv	a3, s3
80005dfc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80005e00: 33 05 8a 00  	add	a0, s4, s0
80005e04: 93 04 04 00  	mv	s1, s0
80005e08: e3 60 25 ff  	bltu	a0, s2, 0x80005de8 <.LBB4_90+0x34c>
80005e0c: 6f 00 80 00  	j	0x80005e14 <.LBB4_90+0x378>
80005e10: 13 84 04 00  	mv	s0, s1
; }
80005e14: 13 05 04 00  	mv	a0, s0
80005e18: 07 39 81 02  	fld	fs2, 40(sp)
80005e1c: 87 34 01 03  	fld	fs1, 48(sp)
80005e20: 07 34 81 03  	fld	fs0, 56(sp)
80005e24: 03 2d 01 04  	lw	s10, 64(sp)
80005e28: 83 2c 41 04  	lw	s9, 68(sp)
80005e2c: 03 2c 81 04  	lw	s8, 72(sp)
80005e30: 83 2b c1 04  	lw	s7, 76(sp)
80005e34: 03 2b 01 05  	lw	s6, 80(sp)
80005e38: 83 2a 41 05  	lw	s5, 84(sp)
80005e3c: 03 2a 81 05  	lw	s4, 88(sp)
80005e40: 83 29 c1 05  	lw	s3, 92(sp)
80005e44: 03 29 01 06  	lw	s2, 96(sp)
80005e48: 83 24 41 06  	lw	s1, 100(sp)
80005e4c: 03 24 81 06  	lw	s0, 104(sp)
80005e50: 83 20 c1 06  	lw	ra, 108(sp)
80005e54: 13 01 01 07  	addi	sp, sp, 112
80005e58: 67 80 00 00  	ret

80005e5c <_etoa>:
; {
80005e5c: 13 01 01 f8  	addi	sp, sp, -128
80005e60: 23 2e 11 06  	sw	ra, 124(sp)
80005e64: 23 2c 81 06  	sw	s0, 120(sp)
80005e68: 23 2a 91 06  	sw	s1, 116(sp)
80005e6c: 23 28 21 07  	sw	s2, 112(sp)
80005e70: 23 26 31 07  	sw	s3, 108(sp)
80005e74: 23 24 41 07  	sw	s4, 104(sp)
80005e78: 23 22 51 07  	sw	s5, 100(sp)
80005e7c: 23 20 61 07  	sw	s6, 96(sp)
80005e80: 23 2e 71 05  	sw	s7, 92(sp)
80005e84: 23 2c 81 05  	sw	s8, 88(sp)
80005e88: 23 2a 91 05  	sw	s9, 84(sp)
80005e8c: 23 28 a1 05  	sw	s10, 80(sp)
80005e90: 23 26 b1 05  	sw	s11, 76(sp)

80005e94 <.LBB5_43>:
80005e94: 97 14 00 00  	auipc	s1, 1
80005e98: 93 84 c4 30  	addi	s1, s1, 780
80005e9c: 87 b0 04 00  	fld	ft1, 0(s1)

80005ea0 <.LBB5_44>:
80005ea0: 97 14 00 00  	auipc	s1, 1
80005ea4: 93 84 84 30  	addi	s1, s1, 776
80005ea8: 07 b1 04 00  	fld	ft2, 0(s1)
80005eac: 53 00 a5 22  	fmv.d	ft0, fa0
80005eb0: d3 04 15 a2  	fle.d	s1, fa0, ft1
80005eb4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80005eb8: b3 f4 84 00  	and	s1, s1, s0
80005ebc: 93 0a 08 00  	mv	s5, a6
80005ec0: 13 89 07 00  	mv	s2, a5
80005ec4: 93 07 07 00  	mv	a5, a4
80005ec8: 93 89 06 00  	mv	s3, a3
80005ecc: 13 0a 06 00  	mv	s4, a2
80005ed0: 13 8b 05 00  	mv	s6, a1
80005ed4: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80005ed8: 63 92 04 06  	bnez	s1, 0x80005f3c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80005edc: 13 85 0b 00  	mv	a0, s7
80005ee0: 93 05 0b 00  	mv	a1, s6
80005ee4: 13 06 0a 00  	mv	a2, s4
80005ee8: 93 86 09 00  	mv	a3, s3
80005eec: 53 05 00 22  	fmv.d	fa0, ft0
80005ef0: 13 87 07 00  	mv	a4, a5
80005ef4: 93 07 09 00  	mv	a5, s2
80005ef8: 13 88 0a 00  	mv	a6, s5
80005efc: 83 2d c1 04  	lw	s11, 76(sp)
80005f00: 03 2d 01 05  	lw	s10, 80(sp)
80005f04: 83 2c 41 05  	lw	s9, 84(sp)
80005f08: 03 2c 81 05  	lw	s8, 88(sp)
80005f0c: 83 2b c1 05  	lw	s7, 92(sp)
80005f10: 03 2b 01 06  	lw	s6, 96(sp)
80005f14: 83 2a 41 06  	lw	s5, 100(sp)
80005f18: 03 2a 81 06  	lw	s4, 104(sp)
80005f1c: 83 29 c1 06  	lw	s3, 108(sp)
80005f20: 03 29 01 07  	lw	s2, 112(sp)
80005f24: 83 24 41 07  	lw	s1, 116(sp)
80005f28: 03 24 81 07  	lw	s0, 120(sp)
80005f2c: 83 20 c1 07  	lw	ra, 124(sp)
80005f30: 13 01 01 08  	addi	sp, sp, 128
80005f34: 17 03 00 00  	auipc	t1, 0
80005f38: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80005f3c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80005f40: 13 f5 0a 40  	andi	a0, s5, 1024
80005f44: 13 07 60 00  	addi	a4, zero, 6
80005f48: 63 04 05 00  	beqz	a0, 0x80005f50 <.LBB5_44+0xb0>
80005f4c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80005f50: 27 30 a1 02  	fsd	fa0, 32(sp)
80005f54: 83 25 41 02  	lw	a1, 36(sp)
80005f58: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80005f5c: 93 d6 45 01  	srli	a3, a1, 20
80005f60: b7 07 10 00  	lui	a5, 256
80005f64: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80005f68: b3 f5 f5 00  	and	a1, a1, a5
80005f6c: 23 2c c1 00  	sw	a2, 24(sp)
80005f70: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80005f74: b3 e5 c5 00  	or	a1, a1, a2
80005f78: 23 2e b1 00  	sw	a1, 28(sp)
80005f7c: 87 30 81 01  	fld	ft1, 24(sp)

80005f80 <.LBB5_45>:
80005f80: 97 15 00 00  	auipc	a1, 1
80005f84: 93 85 05 23  	addi	a1, a1, 560
80005f88: 07 b1 05 00  	fld	ft2, 0(a1)

80005f8c <.LBB5_46>:
80005f8c: 97 15 00 00  	auipc	a1, 1
80005f90: 93 85 c5 22  	addi	a1, a1, 556
80005f94: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80005f98: 93 f5 f6 7f  	andi	a1, a3, 2047
80005f9c: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80005fa0: 53 82 05 d2  	fcvt.d.w	ft4, a1
80005fa4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80005fa8 <.LBB5_47>:
80005fa8: 97 15 00 00  	auipc	a1, 1
80005fac: 93 85 85 21  	addi	a1, a1, 536
80005fb0: 07 b1 05 00  	fld	ft2, 0(a1)

80005fb4 <.LBB5_48>:
80005fb4: 97 15 00 00  	auipc	a1, 1
80005fb8: 93 85 45 21  	addi	a1, a1, 532
80005fbc: 87 b1 05 00  	fld	ft3, 0(a1)

80005fc0 <.LBB5_49>:
80005fc0: 97 15 00 00  	auipc	a1, 1
80005fc4: 93 85 05 21  	addi	a1, a1, 528
80005fc8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80005fcc: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80005fd0: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80005fd4: d3 80 05 d2  	fcvt.d.w	ft1, a1
80005fd8: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80005fdc <.LBB5_50>:
80005fdc: 17 16 00 00  	auipc	a2, 1
80005fe0: 13 06 c6 1f  	addi	a2, a2, 508
80005fe4: 87 31 06 00  	fld	ft3, 0(a2)

80005fe8 <.LBB5_51>:
80005fe8: 17 16 00 00  	auipc	a2, 1
80005fec: 13 06 86 1f  	addi	a2, a2, 504
80005ff0: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80005ff4: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80005ff8: 53 01 06 d2  	fcvt.d.w	ft2, a2
80005ffc: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80006000: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80006004: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80006008: 13 06 f6 3f  	addi	a2, a2, 1023
8000600c: 23 28 01 00  	sw	zero, 16(sp)
80006010: 13 16 46 01  	slli	a2, a2, 20
80006014: 23 2a c1 00  	sw	a2, 20(sp)

80006018 <.LBB5_52>:
80006018: 17 16 00 00  	auipc	a2, 1
8000601c: 13 06 86 1d  	addi	a2, a2, 472
80006020: 87 31 06 00  	fld	ft3, 0(a2)

80006024 <.LBB5_53>:
80006024: 17 16 00 00  	auipc	a2, 1
80006028: 13 06 46 1d  	addi	a2, a2, 468
8000602c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80006030: 87 32 01 01  	fld	ft5, 16(sp)

80006034 <.LBB5_54>:
80006034: 17 16 00 00  	auipc	a2, 1
80006038: 13 06 46 1b  	addi	a2, a2, 436
8000603c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80006040: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80006044 <.LBB5_55>:
80006044: 17 16 00 00  	auipc	a2, 1
80006048: 13 06 c6 1b  	addi	a2, a2, 444
8000604c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80006050: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80006054: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80006058: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
8000605c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80006060: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80006064: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80006068: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
8000606c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80006070: 53 16 15 a2  	flt.d	a2, fa0, ft1
80006074: 63 0a 06 00  	beqz	a2, 0x80006088 <.LBB5_56+0x10>

80006078 <.LBB5_56>:
80006078: 97 16 00 00  	auipc	a3, 1
8000607c: 93 86 06 19  	addi	a3, a3, 400
80006080: 07 b1 06 00  	fld	ft2, 0(a3)
80006084: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80006088: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
8000608c: 93 05 34 06  	addi	a1, s0, 99
80006090: 93 b5 75 0c  	sltiu	a1, a1, 199
80006094: 13 06 50 00  	addi	a2, zero, 5
80006098: b7 16 00 00  	lui	a3, 1
8000609c: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800060a0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800060a4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800060a8: 63 84 06 06  	beqz	a3, 0x80006110 <.LBB5_58+0x58>

800060ac <.LBB5_57>:
800060ac: 97 15 00 00  	auipc	a1, 1
800060b0: 93 85 45 16  	addi	a1, a1, 356
800060b4: 07 b1 05 00  	fld	ft2, 0(a1)

800060b8 <.LBB5_58>:
800060b8: 97 15 00 00  	auipc	a1, 1
800060bc: 93 85 05 16  	addi	a1, a1, 352
800060c0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800060c4: d3 15 25 a2  	flt.d	a1, fa0, ft2
800060c8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800060cc: b3 e5 c5 00  	or	a1, a1, a2
800060d0: 63 98 05 00  	bnez	a1, 0x800060e0 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800060d4: 63 40 e4 02  	blt	s0, a4, 0x800060f4 <.LBB5_58+0x3c>
800060d8: 13 07 00 00  	mv	a4, zero
800060dc: 6f 00 00 02  	j	0x800060fc <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800060e0: 63 06 07 02  	beqz	a4, 0x8000610c <.LBB5_58+0x54>
800060e4: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800060e8: 13 45 15 00  	xori	a0, a0, 1
800060ec: 33 07 a7 40  	sub	a4, a4, a0
800060f0: 6f 00 00 02  	j	0x80006110 <.LBB5_58+0x58>
800060f4: 13 45 f4 ff  	not	a0, s0
800060f8: 33 07 a7 00  	add	a4, a4, a0
800060fc: 13 04 00 00  	mv	s0, zero
80006100: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80006104: 93 ea 0a 40  	ori	s5, s5, 1024
80006108: 6f 00 80 00  	j	0x80006110 <.LBB5_58+0x58>
8000610c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80006110: b3 05 99 41  	sub	a1, s2, s9
80006114: 33 36 b9 00  	sltu	a2, s2, a1
80006118: 13 05 00 00  	mv	a0, zero
8000611c: 63 14 06 00  	bnez	a2, 0x80006124 <.LBB5_58+0x6c>
80006120: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80006124: 93 07 00 00  	mv	a5, zero
80006128: 93 d5 1a 00  	srli	a1, s5, 1
8000612c: 93 f4 15 00  	andi	s1, a1, 1
80006130: b3 35 90 01  	snez	a1, s9
80006134: b3 f5 b4 00  	and	a1, s1, a1
80006138: 53 01 00 d2  	fcvt.d.w	ft2, zero
8000613c: 63 94 05 00  	bnez	a1, 0x80006144 <.LBB5_58+0x8c>
80006140: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80006144: 93 35 14 00  	seqz	a1, s0
80006148: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
8000614c: 63 94 05 00  	bnez	a1, 0x80006154 <.LBB5_58+0x9c>
80006150: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80006154: 63 04 05 00  	beqz	a0, 0x8000615c <.LBB5_58+0xa4>
80006158: 53 15 a5 22  	fneg.d	fa0, fa0
8000615c: 37 f5 ff ff  	lui	a0, 1048575
80006160: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80006164: 33 f8 aa 00  	and	a6, s5, a0
80006168: 13 85 0b 00  	mv	a0, s7
8000616c: 93 05 0b 00  	mv	a1, s6
80006170: 13 06 0a 00  	mv	a2, s4
80006174: 93 86 09 00  	mv	a3, s3
80006178: 97 f0 ff ff  	auipc	ra, 1048575
8000617c: e7 80 40 60  	jalr	1540(ra)
80006180: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80006184: 63 82 0c 18  	beqz	s9, 0x80006308 <.LBB5_58+0x250>
80006188: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
8000618c: 13 f5 0a 02  	andi	a0, s5, 32
80006190: 13 45 55 06  	xori	a0, a0, 101
80006194: 93 05 0b 00  	mv	a1, s6
80006198: 13 06 0d 00  	mv	a2, s10
8000619c: 93 86 09 00  	mv	a3, s3
800061a0: e7 80 0b 00  	jalr	s7
800061a4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800061a8: 93 5a f4 01  	srli	s5, s0, 31
800061ac: 13 55 f4 41  	srai	a0, s0, 31
800061b0: b3 05 a4 00  	add	a1, s0, a0
800061b4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800061b8: 93 8d dc ff  	addi	s11, s9, -3
800061bc: 13 04 f0 01  	addi	s0, zero, 31
800061c0: 37 d5 cc cc  	lui	a0, 838861
800061c4: 13 05 d5 cc  	addi	a0, a0, -819
800061c8: 13 08 a0 00  	addi	a6, zero, 10
800061cc: 93 08 c1 02  	addi	a7, sp, 44
800061d0: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800061d4: b3 37 a7 02  	mulhu	a5, a4, a0
800061d8: 93 d5 37 00  	srli	a1, a5, 3
800061dc: b3 87 05 03  	mul	a5, a1, a6
800061e0: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800061e4: 13 e6 07 03  	ori	a2, a5, 48
800061e8: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800061ec: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800061f0: 13 0c 1c 00  	addi	s8, s8, 1
800061f4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800061f8: 33 b6 e2 00  	sltu	a2, t0, a4
800061fc: 33 f6 c7 00  	and	a2, a5, a2
80006200: 93 8d fd ff  	addi	s11, s11, -1
80006204: 13 04 f4 ff  	addi	s0, s0, -1
80006208: 13 87 05 00  	mv	a4, a1
8000620c: e3 14 06 fc  	bnez	a2, 0x800061d4 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80006210: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006214: 33 35 ac 00  	sltu	a0, s8, a0
80006218: 13 45 15 00  	xori	a0, a0, 1
8000621c: 93 c5 17 00  	xori	a1, a5, 1
80006220: 33 e5 a5 00  	or	a0, a1, a0
80006224: 63 12 05 04  	bnez	a0, 0x80006268 <.LBB5_58+0x1b0>
80006228: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000622c: b3 85 8c 41  	sub	a1, s9, s8
80006230: 93 85 d5 ff  	addi	a1, a1, -3
80006234: 13 06 f0 01  	addi	a2, zero, 31
80006238: 33 06 86 41  	sub	a2, a2, s8
8000623c: 33 05 85 01  	add	a0, a0, s8
80006240: 63 e4 c5 00  	bltu	a1, a2, 0x80006248 <.LBB5_58+0x190>
80006244: 93 05 06 00  	mv	a1, a2
80006248: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
8000624c: 93 05 00 03  	addi	a1, zero, 48
80006250: 97 a0 ff ff  	auipc	ra, 1048570
80006254: e7 80 00 db  	jalr	-592(ra)
;   if (flags & FLAGS_HASH) {
80006258: 63 e4 8d 00  	bltu	s11, s0, 0x80006260 <.LBB5_58+0x1a8>
8000625c: 93 0d 04 00  	mv	s11, s0
80006260: 33 85 8d 01  	add	a0, s11, s8
80006264: 13 0c 15 00  	addi	s8, a0, 1
80006268: 83 2c c1 00  	lw	s9, 12(sp)
8000626c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80006270: 63 60 85 03  	bltu	a0, s8, 0x80006290 <.LBB5_58+0x1d8>
80006274: 13 05 c1 02  	addi	a0, sp, 44
80006278: 33 05 85 01  	add	a0, a0, s8
8000627c: 93 05 d0 02  	addi	a1, zero, 45
80006280: 63 94 0a 00  	bnez	s5, 0x80006288 <.LBB5_58+0x1d0>
80006284: 93 05 b0 02  	addi	a1, zero, 43
80006288: 13 0c 1c 00  	addi	s8, s8, 1
8000628c: 23 00 b5 00  	sb	a1, 0(a0)
80006290: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80006294: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80006298: 33 85 8a 01  	add	a0, s5, s8
8000629c: 03 45 05 00  	lbu	a0, 0(a0)
800062a0: 13 06 04 00  	mv	a2, s0
800062a4: 93 04 fc ff  	addi	s1, s8, -1
800062a8: 13 04 14 00  	addi	s0, s0, 1
800062ac: 93 05 0b 00  	mv	a1, s6
800062b0: 93 86 09 00  	mv	a3, s3
800062b4: e7 80 0b 00  	jalr	s7
800062b8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800062bc: e3 9e 04 fc  	bnez	s1, 0x80006298 <.LBB5_58+0x1e0>
800062c0: 33 05 44 41  	sub	a0, s0, s4
800062c4: 33 35 25 01  	sltu	a0, a0, s2
800062c8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800062cc: 93 c5 1c 00  	xori	a1, s9, 1
800062d0: 33 e5 a5 00  	or	a0, a1, a0
800062d4: 63 18 05 02  	bnez	a0, 0x80006304 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800062d8: b3 04 40 41  	neg	s1, s4
800062dc: 13 0d 14 00  	addi	s10, s0, 1
800062e0: 13 05 00 02  	addi	a0, zero, 32
800062e4: 93 05 0b 00  	mv	a1, s6
800062e8: 13 06 04 00  	mv	a2, s0
800062ec: 93 86 09 00  	mv	a3, s3
800062f0: e7 80 0b 00  	jalr	s7
800062f4: 33 85 a4 01  	add	a0, s1, s10
800062f8: 13 04 0d 00  	mv	s0, s10
800062fc: e3 60 25 ff  	bltu	a0, s2, 0x800062dc <.LBB5_58+0x224>
80006300: 6f 00 80 00  	j	0x80006308 <.LBB5_58+0x250>
80006304: 13 0d 04 00  	mv	s10, s0
; }
80006308: 13 05 0d 00  	mv	a0, s10
8000630c: 83 2d c1 04  	lw	s11, 76(sp)
80006310: 03 2d 01 05  	lw	s10, 80(sp)
80006314: 83 2c 41 05  	lw	s9, 84(sp)
80006318: 03 2c 81 05  	lw	s8, 88(sp)
8000631c: 83 2b c1 05  	lw	s7, 92(sp)
80006320: 03 2b 01 06  	lw	s6, 96(sp)
80006324: 83 2a 41 06  	lw	s5, 100(sp)
80006328: 03 2a 81 06  	lw	s4, 104(sp)
8000632c: 83 29 c1 06  	lw	s3, 108(sp)
80006330: 03 29 01 07  	lw	s2, 112(sp)
80006334: 83 24 41 07  	lw	s1, 116(sp)
80006338: 03 24 81 07  	lw	s0, 120(sp)
8000633c: 83 20 c1 07  	lw	ra, 124(sp)
80006340: 13 01 01 08  	addi	sp, sp, 128
80006344: 67 80 00 00  	ret

80006348 <_ntoa_format>:
; {
80006348: 13 01 01 fc  	addi	sp, sp, -64
8000634c: 23 2e 11 02  	sw	ra, 60(sp)
80006350: 23 2c 81 02  	sw	s0, 56(sp)
80006354: 23 2a 91 02  	sw	s1, 52(sp)
80006358: 23 28 21 03  	sw	s2, 48(sp)
8000635c: 23 26 31 03  	sw	s3, 44(sp)
80006360: 23 24 41 03  	sw	s4, 40(sp)
80006364: 23 22 51 03  	sw	s5, 36(sp)
80006368: 23 20 61 03  	sw	s6, 32(sp)
8000636c: 23 2e 71 01  	sw	s7, 28(sp)
80006370: 23 2c 81 01  	sw	s8, 24(sp)
80006374: 23 2a 91 01  	sw	s9, 20(sp)
80006378: 23 28 a1 01  	sw	s10, 16(sp)
8000637c: 23 26 b1 01  	sw	s11, 12(sp)
80006380: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80006384: 93 fa 2e 00  	andi	s5, t4, 2
80006388: 13 09 0e 00  	mv	s2, t3
8000638c: 13 8d 03 00  	mv	s10, t2
80006390: 93 8c 08 00  	mv	s9, a7
80006394: 13 8c 07 00  	mv	s8, a5
80006398: 93 89 06 00  	mv	s3, a3
8000639c: 13 0a 06 00  	mv	s4, a2
800063a0: 13 8b 05 00  	mv	s6, a1
800063a4: 93 0d 05 00  	mv	s11, a0
800063a8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800063ac: 63 9e 0a 0c  	bnez	s5, 0x80006488 <_ntoa_format+0x140>
800063b0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800063b4: 63 0e 09 00  	beqz	s2, 0x800063d0 <_ntoa_format+0x88>
800063b8: 63 0e 04 00  	beqz	s0, 0x800063d4 <_ntoa_format+0x8c>
800063bc: 13 f5 cb 00  	andi	a0, s7, 12
800063c0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800063c4: 33 65 05 01  	or	a0, a0, a6
800063c8: 33 09 a9 40  	sub	s2, s2, a0
800063cc: 6f 00 80 00  	j	0x800063d4 <_ntoa_format+0x8c>
800063d0: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800063d4: 33 35 ac 01  	sltu	a0, s8, s10
800063d8: 93 45 15 00  	xori	a1, a0, 1
800063dc: 13 05 f0 01  	addi	a0, zero, 31
800063e0: 33 36 85 01  	sltu	a2, a0, s8
800063e4: b3 65 b6 00  	or	a1, a2, a1
800063e8: 63 94 05 04  	bnez	a1, 0x80006430 <_ntoa_format+0xe8>
800063ec: 23 22 51 01  	sw	s5, 4(sp)
800063f0: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800063f4: 93 45 fc ff  	not	a1, s8
800063f8: b3 85 a5 01  	add	a1, a1, s10
800063fc: 33 06 85 41  	sub	a2, a0, s8
80006400: 33 05 87 01  	add	a0, a4, s8
80006404: 63 e4 c5 00  	bltu	a1, a2, 0x8000640c <_ntoa_format+0xc4>
80006408: 93 05 06 00  	mv	a1, a2
8000640c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80006410: 93 05 00 03  	addi	a1, zero, 48
80006414: 13 86 04 00  	mv	a2, s1
80006418: 97 a0 ff ff  	auipc	ra, 1048570
8000641c: e7 80 80 be  	jalr	-1048(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006420: 33 8c 84 01  	add	s8, s1, s8
80006424: 03 27 81 00  	lw	a4, 8(sp)
80006428: 13 88 0a 00  	mv	a6, s5
8000642c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006430: 63 0c 04 04  	beqz	s0, 0x80006488 <_ntoa_format+0x140>
80006434: 33 35 2c 01  	sltu	a0, s8, s2
80006438: 93 45 15 00  	xori	a1, a0, 1
8000643c: 13 05 f0 01  	addi	a0, zero, 31
80006440: 33 36 85 01  	sltu	a2, a0, s8
80006444: b3 e5 c5 00  	or	a1, a1, a2
80006448: 63 90 05 04  	bnez	a1, 0x80006488 <_ntoa_format+0x140>
8000644c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006450: 93 45 fc ff  	not	a1, s8
80006454: b3 05 b9 00  	add	a1, s2, a1
80006458: 33 06 85 41  	sub	a2, a0, s8
8000645c: 33 05 87 01  	add	a0, a4, s8
80006460: 63 e4 c5 00  	bltu	a1, a2, 0x80006468 <_ntoa_format+0x120>
80006464: 93 05 06 00  	mv	a1, a2
80006468: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
8000646c: 93 05 00 03  	addi	a1, zero, 48
80006470: 13 86 04 00  	mv	a2, s1
80006474: 97 a0 ff ff  	auipc	ra, 1048570
80006478: e7 80 c0 b8  	jalr	-1140(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000647c: 33 8c 84 01  	add	s8, s1, s8
80006480: 03 27 81 00  	lw	a4, 8(sp)
80006484: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80006488: 13 f5 0b 01  	andi	a0, s7, 16
8000648c: 63 02 05 0e  	beqz	a0, 0x80006570 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80006490: 13 f5 0b 40  	andi	a0, s7, 1024
80006494: 13 55 a5 00  	srli	a0, a0, 10
80006498: 93 35 1c 00  	seqz	a1, s8
8000649c: 33 65 b5 00  	or	a0, a0, a1
800064a0: 63 1e 05 02  	bnez	a0, 0x800064dc <_ntoa_format+0x194>
800064a4: 33 45 ac 01  	xor	a0, s8, s10
800064a8: 33 35 a0 00  	snez	a0, a0
800064ac: b3 45 2c 01  	xor	a1, s8, s2
800064b0: b3 35 b0 00  	snez	a1, a1
800064b4: 33 75 b5 00  	and	a0, a0, a1
800064b8: 63 12 05 02  	bnez	a0, 0x800064dc <_ntoa_format+0x194>
;       len--;
800064bc: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800064c0: b3 35 a0 00  	snez	a1, a0
800064c4: 13 86 0c ff  	addi	a2, s9, -16
800064c8: 13 36 16 00  	seqz	a2, a2
800064cc: b3 75 b6 00  	and	a1, a2, a1
800064d0: 63 84 05 00  	beqz	a1, 0x800064d8 <_ntoa_format+0x190>
800064d4: 13 05 ec ff  	addi	a0, s8, -2
800064d8: 13 0c 05 00  	mv	s8, a0
800064dc: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800064e0: 63 96 ac 02  	bne	s9, a0, 0x8000650c <_ntoa_format+0x1c4>
800064e4: 13 f5 0b 02  	andi	a0, s7, 32
800064e8: 93 55 55 00  	srli	a1, a0, 5
800064ec: 13 06 f0 01  	addi	a2, zero, 31
800064f0: 33 36 86 01  	sltu	a2, a2, s8
800064f4: b3 e5 c5 00  	or	a1, a1, a2
800064f8: 63 9e 05 02  	bnez	a1, 0x80006534 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800064fc: 33 05 87 01  	add	a0, a4, s8
80006500: 13 0c 1c 00  	addi	s8, s8, 1
80006504: 93 05 80 07  	addi	a1, zero, 120
80006508: 6f 00 c0 04  	j	0x80006554 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000650c: 13 85 ec ff  	addi	a0, s9, -2
80006510: 33 35 a0 00  	snez	a0, a0
80006514: 93 05 f0 01  	addi	a1, zero, 31
80006518: b3 b5 85 01  	sltu	a1, a1, s8
8000651c: 33 65 b5 00  	or	a0, a0, a1
80006520: 63 1c 05 02  	bnez	a0, 0x80006558 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80006524: 33 05 87 01  	add	a0, a4, s8
80006528: 13 0c 1c 00  	addi	s8, s8, 1
8000652c: 93 05 20 06  	addi	a1, zero, 98
80006530: 6f 00 40 02  	j	0x80006554 <_ntoa_format+0x20c>
80006534: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006538: 13 35 15 00  	seqz	a0, a0
8000653c: 93 c5 15 00  	xori	a1, a1, 1
80006540: 33 65 b5 00  	or	a0, a0, a1
80006544: 63 1a 05 00  	bnez	a0, 0x80006558 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80006548: 33 05 87 01  	add	a0, a4, s8
8000654c: 13 0c 1c 00  	addi	s8, s8, 1
80006550: 93 05 80 05  	addi	a1, zero, 88
80006554: 23 00 b5 00  	sb	a1, 0(a0)
80006558: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000655c: 63 60 85 07  	bltu	a0, s8, 0x800065bc <_ntoa_format+0x274>
;       buf[len++] = '0';
80006560: 33 05 87 01  	add	a0, a4, s8
80006564: 13 0c 1c 00  	addi	s8, s8, 1
80006568: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
8000656c: 23 00 b5 00  	sb	a1, 0(a0)
80006570: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80006574: 63 64 85 05  	bltu	a0, s8, 0x800065bc <_ntoa_format+0x274>
;     if (negative) {
80006578: 63 0a 08 00  	beqz	a6, 0x8000658c <_ntoa_format+0x244>
;       buf[len++] = '-';
8000657c: 33 05 87 01  	add	a0, a4, s8
80006580: 13 0c 1c 00  	addi	s8, s8, 1
80006584: 93 05 d0 02  	addi	a1, zero, 45
80006588: 6f 00 00 03  	j	0x800065b8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
8000658c: 13 f5 4b 00  	andi	a0, s7, 4
80006590: 63 1e 05 00  	bnez	a0, 0x800065ac <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80006594: 13 f5 8b 00  	andi	a0, s7, 8
80006598: 63 02 05 02  	beqz	a0, 0x800065bc <_ntoa_format+0x274>
;       buf[len++] = ' ';
8000659c: 33 05 87 01  	add	a0, a4, s8
800065a0: 13 0c 1c 00  	addi	s8, s8, 1
800065a4: 93 05 00 02  	addi	a1, zero, 32
800065a8: 6f 00 00 01  	j	0x800065b8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800065ac: 33 05 87 01  	add	a0, a4, s8
800065b0: 13 0c 1c 00  	addi	s8, s8, 1
800065b4: 93 05 b0 02  	addi	a1, zero, 43
800065b8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800065bc: 13 f5 3b 00  	andi	a0, s7, 3
800065c0: 33 35 a0 00  	snez	a0, a0
800065c4: b3 35 2c 01  	sltu	a1, s8, s2
800065c8: 93 c5 15 00  	xori	a1, a1, 1
800065cc: 33 65 b5 00  	or	a0, a0, a1
800065d0: 13 04 0a 00  	mv	s0, s4
800065d4: 63 16 05 02  	bnez	a0, 0x80006600 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800065d8: b3 04 89 41  	sub	s1, s2, s8
800065dc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800065e0: 13 04 16 00  	addi	s0, a2, 1
800065e4: 13 05 00 02  	addi	a0, zero, 32
800065e8: 93 05 0b 00  	mv	a1, s6
800065ec: 93 86 09 00  	mv	a3, s3
800065f0: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800065f4: 93 84 f4 ff  	addi	s1, s1, -1
800065f8: 13 06 04 00  	mv	a2, s0
800065fc: e3 92 04 fe  	bnez	s1, 0x800065e0 <_ntoa_format+0x298>
80006600: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80006604: 63 0e 0c 02  	beqz	s8, 0x80006640 <_ntoa_format+0x2f8>
80006608: 03 25 81 00  	lw	a0, 8(sp)
8000660c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80006610: 33 85 8b 01  	add	a0, s7, s8
80006614: 03 45 05 00  	lbu	a0, 0(a0)
80006618: 93 0c fc ff  	addi	s9, s8, -1
8000661c: 93 04 14 00  	addi	s1, s0, 1
80006620: 93 05 0b 00  	mv	a1, s6
80006624: 13 06 04 00  	mv	a2, s0
80006628: 93 86 09 00  	mv	a3, s3
8000662c: e7 80 0d 00  	jalr	s11
80006630: 13 84 04 00  	mv	s0, s1
80006634: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80006638: e3 9c 0c fc  	bnez	s9, 0x80006610 <_ntoa_format+0x2c8>
8000663c: 6f 00 80 00  	j	0x80006644 <_ntoa_format+0x2fc>
80006640: 93 04 04 00  	mv	s1, s0
80006644: 33 85 44 41  	sub	a0, s1, s4
80006648: 33 35 25 01  	sltu	a0, a0, s2
8000664c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80006650: 93 c5 1a 00  	xori	a1, s5, 1
80006654: 33 e5 a5 00  	or	a0, a1, a0
80006658: 63 18 05 02  	bnez	a0, 0x80006688 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000665c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80006660: 13 84 14 00  	addi	s0, s1, 1
80006664: 13 05 00 02  	addi	a0, zero, 32
80006668: 93 05 0b 00  	mv	a1, s6
8000666c: 13 86 04 00  	mv	a2, s1
80006670: 93 86 09 00  	mv	a3, s3
80006674: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80006678: 33 05 8a 00  	add	a0, s4, s0
8000667c: 93 04 04 00  	mv	s1, s0
80006680: e3 60 25 ff  	bltu	a0, s2, 0x80006660 <_ntoa_format+0x318>
80006684: 6f 00 80 00  	j	0x8000668c <_ntoa_format+0x344>
80006688: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
8000668c: 13 05 04 00  	mv	a0, s0
80006690: 83 2d c1 00  	lw	s11, 12(sp)
80006694: 03 2d 01 01  	lw	s10, 16(sp)
80006698: 83 2c 41 01  	lw	s9, 20(sp)
8000669c: 03 2c 81 01  	lw	s8, 24(sp)
800066a0: 83 2b c1 01  	lw	s7, 28(sp)
800066a4: 03 2b 01 02  	lw	s6, 32(sp)
800066a8: 83 2a 41 02  	lw	s5, 36(sp)
800066ac: 03 2a 81 02  	lw	s4, 40(sp)
800066b0: 83 29 c1 02  	lw	s3, 44(sp)
800066b4: 03 29 01 03  	lw	s2, 48(sp)
800066b8: 83 24 41 03  	lw	s1, 52(sp)
800066bc: 03 24 81 03  	lw	s0, 56(sp)
800066c0: 83 20 c1 03  	lw	ra, 60(sp)
800066c4: 13 01 01 04  	addi	sp, sp, 64
800066c8: 67 80 00 00  	ret

800066cc <_snrt_init_team>:
;     team->base.root = team;
800066cc: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800066d0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800066d4: 03 23 87 00  	lw	t1, 8(a4)
800066d8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800066dc: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800066e0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800066e4: 83 22 47 00  	lw	t0, 4(a4)
800066e8: 33 88 08 03  	mul	a6, a7, a6
800066ec: 33 05 58 02  	mul	a0, a6, t0
800066f0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800066f4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800066f8: 33 85 68 40  	sub	a0, a7, t1
800066fc: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80006700: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80006704: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80006708: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000670c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80006710: 03 25 87 01  	lw	a0, 24(a4)
80006714: b7 05 00 10  	lui	a1, 65536
80006718: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000671c: 23 a2 07 02  	sw	zero, 36(a5)
80006720: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80006724: 03 25 07 02  	lw	a0, 32(a4)
80006728: 83 25 47 02  	lw	a1, 36(a4)
8000672c: 23 a4 a7 02  	sw	a0, 40(a5)
80006730: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80006734: 23 a8 c7 02  	sw	a2, 48(a5)
80006738: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
8000673c: 23 ac d7 02  	sw	a3, 56(a5)
80006740: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80006744: 03 25 07 01  	lw	a0, 16(a4)
80006748: 33 08 a6 00  	add	a6, a2, a0
8000674c: 93 05 08 19  	addi	a1, a6, 400
80006750: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80006754: b3 32 a8 00  	sltu	t0, a6, a0
80006758: 93 55 15 00  	srli	a1, a0, 1
8000675c: 33 03 b8 00  	add	t1, a6, a1
80006760: b3 35 03 01  	sltu	a1, t1, a6
80006764: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80006768: 23 a0 67 04  	sw	t1, 64(a5)
8000676c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80006770: 13 15 15 00  	slli	a0, a0, 1
80006774: b3 05 c5 00  	add	a1, a0, a2
80006778: 33 b5 a5 00  	sltu	a0, a1, a0
8000677c: 23 a4 b7 04  	sw	a1, 72(a5)
80006780: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80006784: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80006788: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000678c: 37 05 00 00  	lui	a0, 0
80006790: 33 05 45 00  	add	a0, a0, tp
80006794: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80006798: 03 a5 07 00  	lw	a0, 0(a5)
8000679c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800067a0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800067a4: b3 85 b8 40  	sub	a1, a7, a1
800067a8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800067ac: b7 05 00 00  	lui	a1, 0
800067b0: b3 85 45 00  	add	a1, a1, tp
800067b4: 23 a2 a5 00  	sw	a0, 4(a1)
800067b8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800067bc: 33 85 a8 02  	mul	a0, a7, a0

800067c0 <.LBB0_1>:
800067c0: 97 15 00 00  	auipc	a1, 1
800067c4: 93 85 45 a6  	addi	a1, a1, -1436
800067c8: 33 05 b5 00  	add	a0, a0, a1
800067cc: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800067d0: 83 28 07 03  	lw	a7, 48(a4)
800067d4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800067d8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800067dc: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800067e0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800067e4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800067e8: 13 05 76 00  	addi	a0, a2, 7
800067ec: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800067f0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800067f4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800067f8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800067fc: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80006800: 03 a5 05 00  	lw	a0, 0(a1)
80006804: 13 05 f5 44  	addi	a0, a0, 1103
80006808: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000680c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80006810: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80006814: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80006818: 37 05 00 00  	lui	a0, 0
8000681c: 33 05 45 00  	add	a0, a0, tp
80006820: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80006824: 37 05 00 00  	lui	a0, 0
80006828: 33 05 45 00  	add	a0, a0, tp
8000682c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80006830: 67 80 00 00  	ret

80006834 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80006834: 37 05 00 00  	lui	a0, 0
80006838: 33 05 45 00  	add	a0, a0, tp
8000683c: 03 25 05 00  	lw	a0, 0(a0)
80006840: 03 25 05 00  	lw	a0, 0(a0)
80006844: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80006848: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000684c: 33 85 a5 40  	sub	a0, a1, a0
80006850: 67 80 00 00  	ret

80006854 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80006854: 37 05 00 00  	lui	a0, 0
80006858: 33 05 45 00  	add	a0, a0, tp
8000685c: 03 25 05 00  	lw	a0, 0(a0)
80006860: 03 25 05 00  	lw	a0, 0(a0)
80006864: 03 25 05 07  	lw	a0, 112(a0)
80006868: 67 80 00 00  	ret

8000686c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000686c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80006870: 63 44 05 00  	bltz	a0, 0x80006878 <__snrt_isr+0xc>
;         while (1)
80006874: 6f 00 00 00  	j	0x80006874 <__snrt_isr+0x8>
80006878: b7 05 00 80  	lui	a1, 524288
8000687c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80006880: 33 75 b5 00  	and	a0, a0, a1
80006884: 13 05 d5 ff  	addi	a0, a0, -3
80006888: 93 55 25 00  	srli	a1, a0, 2
8000688c: 13 15 e5 01  	slli	a0, a0, 30
80006890: 33 65 b5 00  	or	a0, a0, a1
80006894: 93 05 40 00  	addi	a1, zero, 4
80006898: 63 0a b5 06  	beq	a0, a1, 0x8000690c <.LBB1_7+0x58>
8000689c: 63 1a 05 08  	bnez	a0, 0x80006930 <.LBB1_7+0x7c>
800068a0: 37 05 00 00  	lui	a0, 0
800068a4: 33 05 45 00  	add	a0, a0, tp
800068a8: 03 25 05 00  	lw	a0, 0(a0)
800068ac: 03 25 05 00  	lw	a0, 0(a0)
800068b0: f3 25 40 f1  	csrr	a1, mhartid

800068b4 <.LBB1_7>:
;     asm volatile(
800068b4: 17 16 00 00  	auipc	a2, 1
800068b8: 13 06 c6 96  	addi	a2, a2, -1684
800068bc: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800068c0: 93 06 06 00  	mv	a3, a2
800068c4: 93 02 10 00  	addi	t0, zero, 1
800068c8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800068cc: e3 9e 02 fe  	bnez	t0, 0x800068c8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800068d0: b7 06 00 00  	lui	a3, 0
800068d4: b3 86 46 00  	add	a3, a3, tp
800068d8: 83 a6 86 00  	lw	a3, 8(a3)
800068dc: 33 85 a5 40  	sub	a0, a1, a0
800068e0: 93 55 35 00  	srli	a1, a0, 3
800068e4: 93 f5 c5 ff  	andi	a1, a1, -4
800068e8: b3 85 b6 00  	add	a1, a3, a1
800068ec: 83 a6 05 00  	lw	a3, 0(a1)
800068f0: 13 07 10 00  	addi	a4, zero, 1
800068f4: 33 15 a7 00  	sll	a0, a4, a0
800068f8: 13 45 f5 ff  	not	a0, a0
800068fc: 33 f5 a6 00  	and	a0, a3, a0
80006900: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80006904: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80006908: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000690c: 37 05 00 00  	lui	a0, 0
80006910: 33 05 45 00  	add	a0, a0, tp
80006914: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80006918: b7 05 00 00  	lui	a1, 0
8000691c: b3 85 45 00  	add	a1, a1, tp
80006920: 83 a5 c5 00  	lw	a1, 12(a1)
80006924: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80006928: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000692c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80006930: 67 80 00 00  	ret

Disassembly of section .init:

80006940 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80006940: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80006944: 93 81 81 f0  	addi	gp, gp, -248

80006948 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80006948: 97 00 00 00  	auipc	ra, 0
8000694c: e7 80 40 3c  	jalr	964(ra)

80006950 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80006950: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80006954: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80006958: 97 00 00 00  	auipc	ra, 0
8000695c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80006960: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80006964: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80006968: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000696c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80006970: 63 92 02 02  	bnez	t0, 0x80006994 <snrt.crt0.init_registers>

80006974 <.Lpcrel_hi0>:
;     la        t0, _edata
80006974: 97 12 00 00  	auipc	t0, 1
80006978: 93 82 c2 8a  	addi	t0, t0, -1876

8000697c <.Lpcrel_hi1>:
;     la        t1, _end
8000697c: 17 13 00 00  	auipc	t1, 1
80006980: 13 03 83 8a  	addi	t1, t1, -1880
;     bge       t0, t1, 2f
80006984: 63 d8 62 00  	bge	t0, t1, 0x80006994 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80006988: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000698c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80006990: e3 cc 62 fe  	blt	t0, t1, 0x80006988 <.Lpcrel_hi1+0xc>

80006994 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80006994: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80006998: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000699c: 63 82 02 08  	beqz	t0, 0x80006a20 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800069a0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800069a4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800069a8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800069ac: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800069b0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800069b4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800069b8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800069bc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800069c0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800069c4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800069c8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800069cc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800069d0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800069d4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800069d8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800069dc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800069e0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800069e4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800069e8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800069ec: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800069f0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800069f4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800069f8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800069fc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80006a00: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80006a04: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80006a08: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80006a0c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80006a10: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80006a14: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80006a18: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80006a1c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80006a20 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80006a20: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80006a24: 23 a0 06 00  	sw	zero, 0(a3)

80006a28 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80006a28: 97 02 00 00  	auipc	t0, 0
80006a2c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80006a30: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80006a34: 93 87 06 00  	mv	a5, a3

80006a38 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80006a38: 97 03 00 00  	auipc	t2, 0
80006a3c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80006a40: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80006a44: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80006a48: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80006a4c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80006a50: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80006a54: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80006a58: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80006a5c: b3 86 66 40  	sub	a3, a3, t1

80006a60 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80006a60: 97 02 00 00  	auipc	t0, 0
80006a64: 93 82 82 5e  	addi	t0, t0, 1512

80006a68 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80006a68: 17 03 00 00  	auipc	t1, 0
80006a6c: 13 03 03 5e  	addi	t1, t1, 1504

80006a70 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80006a70: 97 03 00 00  	auipc	t2, 0
80006a74: 93 83 83 5d  	addi	t2, t2, 1496

80006a78 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80006a78: 17 0e 00 00  	auipc	t3, 0
80006a7c: 13 0e 0e 5e  	addi	t3, t3, 1504
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80006a80: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80006a84: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80006a88: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80006a8c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80006a90: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80006a94: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80006a98: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80006a9c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80006aa0: 63 dc 62 00  	bge	t0, t1, 0x80006ab8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80006aa4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80006aa8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80006aac: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80006ab0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80006ab4: e3 c8 62 fe  	blt	t0, t1, 0x80006aa4 <.Lpcrel_hi7+0x2c>

80006ab8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80006ab8: 97 02 00 00  	auipc	t0, 0
80006abc: 93 82 02 59  	addi	t0, t0, 1424

80006ac0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80006ac0: 17 03 00 00  	auipc	t1, 0
80006ac4: 13 03 83 59  	addi	t1, t1, 1432
;     bge       t0, t1, 2f
80006ac8: 63 da 62 00  	bge	t0, t1, 0x80006adc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80006acc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80006ad0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80006ad4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80006ad8: e3 ca 72 fe  	blt	t0, t2, 0x80006acc <.Lpcrel_hi9+0xc>

80006adc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80006adc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80006ae0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80006ae4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80006ae8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80006aec: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80006af0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80006af4: 97 00 00 00  	auipc	ra, 0
80006af8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80006afc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80006b00: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80006b04: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80006b08: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80006b0c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80006b10: 13 01 41 01  	addi	sp, sp, 20

80006b14 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80006b14: 97 02 00 00  	auipc	t0, 0
80006b18: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80006b1c: 73 90 52 30  	csrw	mtvec, t0

80006b20 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80006b20: 97 00 00 00  	auipc	ra, 0
80006b24: e7 80 00 22  	jalr	544(ra)

80006b28 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80006b28: 97 a0 ff ff  	auipc	ra, 1048570
80006b2c: e7 80 c0 b0  	jalr	-1268(ra)
;     mv        s0, a0 # store return value in s0
80006b30: 13 04 05 00  	mv	s0, a0

80006b34 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80006b34: 97 00 00 00  	auipc	ra, 0
80006b38: e7 80 c0 20  	jalr	524(ra)

80006b3c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80006b3c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80006b40: 97 00 00 00  	auipc	ra, 0
80006b44: e7 80 c0 22  	jalr	556(ra)
;     wfi
80006b48: 73 00 50 10  	wfi	
;     j       1b
80006b4c: 6f f0 df ff  	j	0x80006b48 <snrt.crt0.end+0xc>

80006b50 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80006b50: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80006b54: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80006b58: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80006b5c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80006b60: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80006b64: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80006b68: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80006b6c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80006b70: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80006b74: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80006b78: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80006b7c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80006b80: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80006b84: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80006b88: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80006b8c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80006b90: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80006b94: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80006b98: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80006b9c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80006ba0: 63 84 02 08  	beqz	t0, 0x80006c28 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80006ba4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80006ba8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80006bac: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80006bb0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80006bb4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80006bb8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80006bbc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80006bc0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80006bc4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80006bc8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80006bcc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80006bd0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80006bd4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80006bd8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80006bdc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80006be0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80006be4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80006be8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80006bec: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80006bf0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80006bf4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80006bf8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80006bfc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80006c00: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80006c04: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80006c08: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80006c0c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80006c10: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80006c14: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80006c18: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80006c1c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80006c20: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80006c24: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80006c28: 97 00 00 00  	auipc	ra, 0
80006c2c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80006c30: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80006c34: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80006c38: 63 84 02 08  	beqz	t0, 0x80006cc0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80006c3c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80006c40: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80006c44: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80006c48: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80006c4c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80006c50: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80006c54: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80006c58: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80006c5c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80006c60: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80006c64: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80006c68: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80006c6c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80006c70: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80006c74: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80006c78: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80006c7c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80006c80: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80006c84: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80006c88: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80006c8c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80006c90: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80006c94: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80006c98: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80006c9c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80006ca0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80006ca4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80006ca8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80006cac: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80006cb0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80006cb4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80006cb8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80006cbc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80006cc0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80006cc4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80006cc8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80006ccc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80006cd0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80006cd4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80006cd8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80006cdc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80006ce0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80006ce4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80006ce8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80006cec: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80006cf0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80006cf4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80006cf8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80006cfc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80006d00: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80006d04: 13 01 01 05  	addi	sp, sp, 80
;     mret
80006d08: 73 00 20 30  	mret	

80006d0c <_snrt_init_core_info>:
;     mv        a4, a1
80006d0c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80006d10: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80006d14: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80006d18: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80006d1c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80006d20: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80006d24: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80006d28: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80006d2c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80006d30: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80006d34: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80006d38: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80006d3c: 67 80 00 00  	ret

80006d40 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80006d40: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80006d44: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80006d48: 97 00 00 00  	auipc	ra, 0
80006d4c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80006d50: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80006d54: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80006d58: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80006d5c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80006d60: 67 80 00 00  	ret

80006d64 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80006d64: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80006d68: 67 80 00 00  	ret

80006d6c <_snrt_exit>:
;     addi      sp, sp, -8
80006d6c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80006d70: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80006d74: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80006d78: 97 00 00 00  	auipc	ra, 0
80006d7c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80006d80: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80006d84: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80006d88: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80006d8c: 63 1c 05 00  	bnez	a0, 0x80006da4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80006d90: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80006d94: 93 e2 12 00  	ori	t0, t0, 1

80006d98 <.Lpcrel_hi11>:
;     la        t1, tohost
80006d98: 17 03 00 00  	auipc	t1, 0
80006d9c: 13 03 83 26  	addi	t1, t1, 616
;     sw        t0, 0(t1)
80006da0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80006da4: 67 80 00 00  	ret
