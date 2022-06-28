
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-gemm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00005364 80000000 TEXT
  2 .init             00000468 80005370 TEXT
  3 .rodata           00000240 800057d8 DATA
  4 .htif             00000048 80005a40 DATA
  5 .tdata            00000000 80005a88 DATA
  6 .tbss             00000010 80005a88 BSS
  7 .tbssend          00000000 80005a98 DATA
  8 .sdata            000001c0 80005a98 DATA
  9 .data             00000000 80005c58 DATA
 10 .sbss             00000004 80005c58 BSS
 11 .bss              00000000 80005c5c BSS
 12 .dram             00000000 80005c5c DATA
 13 .debug_info       00003584 00000000 
 14 .debug_abbrev     00000bfd 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003838 00000000 
 17 .debug_loc        00003d22 00000000 
 18 .debug_ranges     00000380 00000000 
 19 .debug_str        00000b18 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c4 00000000 
 23 .symtab           00003580 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000b8d 00000000 


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
80000634: 13 01 01 ee  	addi	sp, sp, -288
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 2e 11 10  	sw	ra, 284(sp)
8000063c: 23 2c 81 10  	sw	s0, 280(sp)
80000640: 23 2a 91 10  	sw	s1, 276(sp)
80000644: 23 28 21 11  	sw	s2, 272(sp)
80000648: 23 26 31 11  	sw	s3, 268(sp)
8000064c: 23 24 41 11  	sw	s4, 264(sp)
80000650: 23 22 51 11  	sw	s5, 260(sp)
80000654: 23 20 61 11  	sw	s6, 256(sp)
80000658: 23 2e 71 0f  	sw	s7, 252(sp)
8000065c: 23 2c 81 0f  	sw	s8, 248(sp)
80000660: 23 2a 91 0f  	sw	s9, 244(sp)
80000664: 23 28 a1 0f  	sw	s10, 240(sp)
80000668: 23 26 b1 0f  	sw	s11, 236(sp)
8000066c: 27 30 81 0e  	fsd	fs0, 224(sp)
80000670: 27 3c 91 0c  	fsd	fs1, 216(sp)
80000674: 27 38 21 0d  	fsd	fs2, 208(sp)
80000678: 27 34 31 0d  	fsd	fs3, 200(sp)
8000067c: 27 30 41 0d  	fsd	fs4, 192(sp)
80000680: 27 3c 51 0b  	fsd	fs5, 184(sp)
80000684: 27 38 61 0b  	fsd	fs6, 176(sp)
80000688: 27 34 71 0b  	fsd	fs7, 168(sp)
8000068c: 27 30 81 0b  	fsd	fs8, 160(sp)
80000690: 37 05 00 00  	lui	a0, 0
80000694: 33 05 45 00  	add	a0, a0, tp
80000698: 83 25 45 00  	lw	a1, 4(a0)
8000069c: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006a0: 63 84 05 00  	beqz	a1, 0x800006a8 <main+0x74>
800006a4: 6f 20 50 5a  	j	0x80003448 <.LBB0_166+0x10>
;     return _snrt_team_current->root;
800006a8: 37 05 00 00  	lui	a0, 0
800006ac: 33 05 45 00  	add	a0, a0, tp
800006b0: 03 25 05 00  	lw	a0, 0(a0)
800006b4: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: 03 27 85 05  	lw	a4, 88(a0)
800006bc: 83 25 05 05  	lw	a1, 80(a0)
800006c0: 83 27 45 05  	lw	a5, 84(a0)
800006c4: 37 16 00 00  	lui	a2, 1
800006c8: 13 06 06 fa  	addi	a2, a2, -96
800006cc: b3 06 c7 00  	add	a3, a4, a2
800006d0: b3 85 b7 00  	add	a1, a5, a1
800006d4: 63 f6 d5 00  	bgeu	a1, a3, 0x800006e0 <main+0xac>
800006d8: 13 04 00 00  	mv	s0, zero
800006dc: 6f 00 00 01  	j	0x800006ec <main+0xb8>
;     void *ret = (void *)alloc->next;
800006e0: 13 04 07 00  	mv	s0, a4
;     alloc->next += size;
800006e4: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006e8: 13 87 06 00  	mv	a4, a3
800006ec: b3 06 e6 00  	add	a3, a2, a4
800006f0: 93 86 06 32  	addi	a3, a3, 800
800006f4: 63 f6 d5 00  	bgeu	a1, a3, 0x80000700 <main+0xcc>
800006f8: 93 07 00 00  	mv	a5, zero
800006fc: 6f 00 00 01  	j	0x8000070c <main+0xd8>
;     void *ret = (void *)alloc->next;
80000700: 93 07 07 00  	mv	a5, a4
;     alloc->next += size;
80000704: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000708: 13 87 06 00  	mv	a4, a3
8000070c: 23 26 f1 00  	sw	a5, 12(sp)
80000710: 33 06 e6 00  	add	a2, a2, a4
80000714: 13 06 06 7d  	addi	a2, a2, 2000
80000718: 63 f6 c5 00  	bgeu	a1, a2, 0x80000724 <main+0xf0>
8000071c: 13 07 00 00  	mv	a4, zero
80000720: 6f 00 80 00  	j	0x80000728 <main+0xf4>
;     alloc->next += size;
80000724: 23 2c c5 04  	sw	a2, 88(a0)
80000728: 23 24 e1 00  	sw	a4, 8(sp)
;     for (i = 0; i < ni; i++)
8000072c: 13 55 44 01  	srli	a0, s0, 20
80000730: 33 35 a0 00  	snez	a0, a0
80000734: b7 f5 11 00  	lui	a1, 287
80000738: 93 85 95 06  	addi	a1, a1, 105
8000073c: b3 35 b4 00  	sltu	a1, s0, a1
80000740: 33 75 b5 00  	and	a0, a0, a1

80000744 <.LBB0_127>:
80000744: 97 5f 00 00  	auipc	t6, 5
80000748: 93 8f 4f 35  	addi	t6, t6, 852
8000074c: 23 2c 81 06  	sw	s0, 120(sp)
80000750: 23 22 a1 00  	sw	a0, 4(sp)
80000754: 63 0c 05 4e  	beqz	a0, 0x80000c4c <.LBB0_127+0x508>
80000758: 23 26 01 08  	sw	zero, 140(sp)
8000075c: 23 2a 01 08  	sw	zero, 148(sp)
80000760: 23 24 01 08  	sw	zero, 136(sp)
80000764: 93 03 00 00  	mv	t2, zero
80000768: 13 05 80 00  	addi	a0, zero, 8
8000076c: 93 05 80 01  	addi	a1, zero, 24
;     for (i = 0; i < ni; i++)
80000770: 13 06 00 04  	addi	a2, zero, 64
80000774: 93 06 00 0c  	addi	a3, zero, 192
80000778: ab a0 c5 00  	scfgw	a1, a2
8000077c: ab 20 d5 00  	scfgw	a0, a3
80000780: 93 05 30 01  	addi	a1, zero, 19
80000784: 13 06 00 06  	addi	a2, zero, 96
80000788: 93 06 00 0e  	addi	a3, zero, 224
8000078c: ab a0 c5 00  	scfgw	a1, a2
80000790: ab 20 d5 00  	scfgw	a0, a3
80000794: 13 05 00 02  	addi	a0, zero, 32
80000798: ab 20 a0 00  	scfgw	zero, a0
8000079c: 2b 20 04 3a  	scfgwi	s0, 928
800007a0: 73 e0 00 7c  	csrsi	1984, 1
800007a4: 93 0d 10 00  	addi	s11, zero, 1
800007a8: 37 d5 cc cc  	lui	a0, 838861
800007ac: 93 02 d5 cc  	addi	t0, a0, -819
800007b0: 93 00 40 01  	addi	ra, zero, 20
800007b4: 87 b1 0f 00  	fld	ft3, 0(t6)
800007b8: 13 05 10 00  	addi	a0, zero, 1
800007bc: 23 28 a1 08  	sw	a0, 144(sp)
800007c0: 13 05 10 00  	addi	a0, zero, 1
800007c4: 23 22 a1 08  	sw	a0, 132(sp)
800007c8: 93 0c 10 00  	addi	s9, zero, 1
800007cc: 93 04 10 00  	addi	s1, zero, 1
800007d0: 93 06 10 00  	addi	a3, zero, 1
800007d4: 13 0d 10 00  	addi	s10, zero, 1
800007d8: 13 08 10 00  	addi	a6, zero, 1
800007dc: 93 0e 10 00  	addi	t4, zero, 1
800007e0: 93 09 10 00  	addi	s3, zero, 1
800007e4: 13 04 10 00  	addi	s0, zero, 1
800007e8: 13 0c 10 00  	addi	s8, zero, 1
800007ec: 13 07 10 00  	addi	a4, zero, 1
800007f0: 93 07 10 00  	addi	a5, zero, 1
800007f4: 93 08 10 00  	addi	a7, zero, 1
800007f8: 93 0f 10 00  	addi	t6, zero, 1
800007fc: 93 0a 10 00  	addi	s5, zero, 1
80000800: 13 0f 10 00  	addi	t5, zero, 1
80000804: 13 0b 10 00  	addi	s6, zero, 1
80000808: 13 03 10 00  	addi	t1, zero, 1
8000080c: 13 05 10 00  	addi	a0, zero, 1
80000810: 13 0e 10 00  	addi	t3, zero, 1
80000814: 13 09 10 00  	addi	s2, zero, 1
80000818: 6f 00 80 22  	j	0x80000a40 <.LBB0_127+0x2fc>
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
8000081c: 53 82 0a d2  	fcvt.d.w	ft4, s5
80000820: d3 02 0d d2  	fcvt.d.w	ft5, s10
80000824: 53 83 0c d2  	fcvt.d.w	ft6, s9
80000828: d3 03 0c d2  	fcvt.d.w	ft7, s8
8000082c: 53 85 0b d2  	fcvt.d.w	fa0, s7
80000830: d3 05 09 d2  	fcvt.d.w	fa1, s2
80000834: 53 06 0a d2  	fcvt.d.w	fa2, s4
80000838: d3 06 03 d2  	fcvt.d.w	fa3, t1
8000083c: 53 87 03 d2  	fcvt.d.w	fa4, t2
80000840: d3 87 04 d2  	fcvt.d.w	fa5, s1
80000844: 53 08 0b d2  	fcvt.d.w	fa6, s6
80000848: d3 08 0f d2  	fcvt.d.w	fa7, t5
8000084c: 03 25 41 01  	lw	a0, 20(sp)
80000850: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000854: 03 25 81 01  	lw	a0, 24(sp)
80000858: d3 0e 05 d2  	fcvt.d.w	ft9, a0
8000085c: 03 25 01 02  	lw	a0, 32(sp)
80000860: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000864: d3 8f 0f d2  	fcvt.d.w	ft11, t6
80000868: 03 25 81 02  	lw	a0, 40(sp)
8000086c: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000870: 03 25 c1 01  	lw	a0, 28(sp)
80000874: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000878: 03 25 41 02  	lw	a0, 36(sp)
8000087c: 53 09 05 d2  	fcvt.d.w	fs2, a0
80000880: 03 25 c1 02  	lw	a0, 44(sp)
80000884: d3 09 05 d2  	fcvt.d.w	fs3, a0
80000888: 03 25 01 03  	lw	a0, 48(sp)
8000088c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80000890: 03 25 41 03  	lw	a0, 52(sp)
80000894: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80000898: 03 25 81 03  	lw	a0, 56(sp)
8000089c: 53 0b 05 d2  	fcvt.d.w	fs6, a0
800008a0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008a4: 53 00 42 22  	fmv.d	ft0, ft4
800008a8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800008ac: 53 00 42 22  	fmv.d	ft0, ft4
800008b0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800008b4: 53 00 42 22  	fmv.d	ft0, ft4
800008b8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800008bc: 53 00 42 22  	fmv.d	ft0, ft4
800008c0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800008c4: 53 00 42 22  	fmv.d	ft0, ft4
800008c8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800008cc: 53 00 42 22  	fmv.d	ft0, ft4
800008d0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800008d4: 53 00 42 22  	fmv.d	ft0, ft4
800008d8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800008dc: 53 00 42 22  	fmv.d	ft0, ft4
800008e0: 53 72 37 12  	fmul.d	ft4, fa4, ft3
800008e4: 53 00 42 22  	fmv.d	ft0, ft4
800008e8: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
800008ec: 53 00 42 22  	fmv.d	ft0, ft4
800008f0: 53 72 38 12  	fmul.d	ft4, fa6, ft3
800008f4: 53 00 42 22  	fmv.d	ft0, ft4
800008f8: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
800008fc: 53 00 42 22  	fmv.d	ft0, ft4
80000900: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80000904: 53 00 42 22  	fmv.d	ft0, ft4
80000908: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000090c: 53 00 42 22  	fmv.d	ft0, ft4
80000910: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80000914: 53 00 42 22  	fmv.d	ft0, ft4
80000918: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000091c: 53 00 42 22  	fmv.d	ft0, ft4
80000920: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80000924: 53 00 42 22  	fmv.d	ft0, ft4
80000928: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
8000092c: 53 00 42 22  	fmv.d	ft0, ft4
80000930: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80000934: 53 00 42 22  	fmv.d	ft0, ft4
80000938: 53 80 31 22  	fmv.d	ft0, ft3
8000093c: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80000940: 53 00 42 22  	fmv.d	ft0, ft4
80000944: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80000948: 53 00 42 22  	fmv.d	ft0, ft4
8000094c: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80000950: 53 00 42 22  	fmv.d	ft0, ft4
80000954: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80000958: 53 00 42 22  	fmv.d	ft0, ft4
8000095c: 13 89 88 01  	addi	s2, a7, 24
80000960: 93 83 79 01  	addi	t2, s3, 23
80000964: 83 2b 41 07  	lw	s7, 116(sp)
80000968: 93 8b 6b 01  	addi	s7, s7, 22
8000096c: 13 03 54 01  	addi	t1, s0, 21
80000970: 03 2b c1 05  	lw	s6, 92(sp)
80000974: 13 0b 3b 01  	addi	s6, s6, 19
80000978: 03 2f 01 06  	lw	t5, 96(sp)
8000097c: 13 0f 2f 01  	addi	t5, t5, 18
80000980: 83 2a 81 06  	lw	s5, 104(sp)
80000984: 93 8a 1a 01  	addi	s5, s5, 17
80000988: 83 2f 81 04  	lw	t6, 72(sp)
8000098c: 93 8f 0f 01  	addi	t6, t6, 16
80000990: 83 28 c1 04  	lw	a7, 76(sp)
80000994: 93 88 f8 00  	addi	a7, a7, 15
80000998: 83 27 01 07  	lw	a5, 112(sp)
8000099c: 93 87 e7 00  	addi	a5, a5, 14
800009a0: 03 2a 41 05  	lw	s4, 84(sp)
800009a4: 13 0a da 00  	addi	s4, s4, 13
800009a8: 03 2c c1 07  	lw	s8, 124(sp)
800009ac: 13 0c cc 00  	addi	s8, s8, 12
800009b0: 03 24 c1 06  	lw	s0, 108(sp)
800009b4: 13 04 b4 00  	addi	s0, s0, 11
800009b8: 83 29 01 05  	lw	s3, 80(sp)
800009bc: 93 89 a9 00  	addi	s3, s3, 10
800009c0: 03 27 41 06  	lw	a4, 100(sp)
800009c4: 13 07 a7 00  	addi	a4, a4, 10
800009c8: 03 25 81 05  	lw	a0, 88(sp)
800009cc: 13 05 95 00  	addi	a0, a0, 9
800009d0: 13 08 88 00  	addi	a6, a6, 8
800009d4: 03 2d 41 04  	lw	s10, 68(sp)
800009d8: 13 0d 7d 00  	addi	s10, s10, 7
800009dc: 93 86 66 00  	addi	a3, a3, 6
800009e0: 03 26 c1 03  	lw	a2, 60(sp)
800009e4: 93 04 56 00  	addi	s1, a2, 5
800009e8: 93 85 55 00  	addi	a1, a1, 5
800009ec: 23 24 b1 08  	sw	a1, 136(sp)
800009f0: 83 2c 01 04  	lw	s9, 64(sp)
800009f4: 93 8c 4c 00  	addi	s9, s9, 4
800009f8: 83 25 41 09  	lw	a1, 148(sp)
800009fc: 93 85 45 00  	addi	a1, a1, 4
80000a00: 23 2a b1 08  	sw	a1, 148(sp)
80000a04: 13 0e 3e 00  	addi	t3, t3, 3
80000a08: 23 22 c1 09  	sw	t3, 132(sp)
80000a0c: 83 25 01 09  	lw	a1, 144(sp)
80000a10: 93 85 25 00  	addi	a1, a1, 2
80000a14: 23 28 b1 08  	sw	a1, 144(sp)
80000a18: 93 8d 1d 00  	addi	s11, s11, 1
80000a1c: 93 8e 2e 00  	addi	t4, t4, 2
80000a20: 23 26 d1 09  	sw	t4, 140(sp)
;     for (i = 0; i < ni; i++)
80000a24: 93 05 50 01  	addi	a1, zero, 21
80000a28: 93 0e 05 00  	mv	t4, a0
80000a2c: 13 8e 03 00  	mv	t3, t2
80000a30: 93 03 07 00  	mv	t2, a4
80000a34: 13 85 0b 00  	mv	a0, s7
80000a38: 13 07 0a 00  	mv	a4, s4
80000a3c: 63 8e bd 6e  	beq	s11, a1, 0x80001138 <.LBB0_127+0x9f4>
80000a40: 23 20 91 05  	sw	s9, 64(sp)
80000a44: 23 22 a1 05  	sw	s10, 68(sp)
80000a48: 23 28 31 05  	sw	s3, 80(sp)
80000a4c: 23 2a e1 04  	sw	a4, 84(sp)
80000a50: 23 2c d1 05  	sw	t4, 88(sp)
80000a54: 23 22 71 06  	sw	t2, 100(sp)
80000a58: 23 26 81 06  	sw	s0, 108(sp)
80000a5c: 23 28 f1 06  	sw	a5, 112(sp)
80000a60: 23 2a a1 06  	sw	a0, 116(sp)
80000a64: 23 20 b1 09  	sw	s11, 128(sp)
80000a68: 93 85 0a 00  	mv	a1, s5
80000a6c: 93 0a 00 00  	mv	s5, zero
80000a70: 93 8d 04 00  	mv	s11, s1
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000a74: 33 36 59 02  	mulhu	a2, s2, t0
80000a78: 13 56 46 00  	srli	a2, a2, 4
80000a7c: 33 06 16 02  	mul	a2, a2, ra
80000a80: 33 06 c9 40  	sub	a2, s2, a2
80000a84: 23 2c c1 02  	sw	a2, 56(sp)
80000a88: 33 36 5e 02  	mulhu	a2, t3, t0
80000a8c: 13 56 46 00  	srli	a2, a2, 4
80000a90: 33 06 16 02  	mul	a2, a2, ra
80000a94: 33 06 ce 40  	sub	a2, t3, a2
80000a98: 23 2a c1 02  	sw	a2, 52(sp)
80000a9c: 33 36 55 02  	mulhu	a2, a0, t0
80000aa0: 13 56 46 00  	srli	a2, a2, 4
80000aa4: 33 06 16 02  	mul	a2, a2, ra
80000aa8: 33 05 c5 40  	sub	a0, a0, a2
80000aac: 23 28 a1 02  	sw	a0, 48(sp)
80000ab0: 33 36 53 02  	mulhu	a2, t1, t0
80000ab4: 13 56 46 00  	srli	a2, a2, 4
80000ab8: 33 06 16 02  	mul	a2, a2, ra
80000abc: 33 05 c3 40  	sub	a0, t1, a2
80000ac0: 23 26 a1 02  	sw	a0, 44(sp)
80000ac4: 33 36 5b 02  	mulhu	a2, s6, t0
80000ac8: 13 56 46 00  	srli	a2, a2, 4
80000acc: 33 06 16 02  	mul	a2, a2, ra
80000ad0: 23 2e 61 05  	sw	s6, 92(sp)
80000ad4: 33 05 cb 40  	sub	a0, s6, a2
80000ad8: 23 22 a1 02  	sw	a0, 36(sp)
80000adc: 33 36 5f 02  	mulhu	a2, t5, t0
80000ae0: 13 56 46 00  	srli	a2, a2, 4
80000ae4: 33 06 16 02  	mul	a2, a2, ra
80000ae8: 23 20 e1 07  	sw	t5, 96(sp)
80000aec: 33 05 cf 40  	sub	a0, t5, a2
80000af0: 23 2e a1 00  	sw	a0, 28(sp)
80000af4: 33 b6 55 02  	mulhu	a2, a1, t0
80000af8: 13 56 46 00  	srli	a2, a2, 4
80000afc: 33 06 16 02  	mul	a2, a2, ra
80000b00: 23 24 b1 06  	sw	a1, 104(sp)
80000b04: 33 85 c5 40  	sub	a0, a1, a2
80000b08: 23 24 a1 02  	sw	a0, 40(sp)
80000b0c: 33 b6 5f 02  	mulhu	a2, t6, t0
80000b10: 13 56 46 00  	srli	a2, a2, 4
80000b14: 33 06 16 02  	mul	a2, a2, ra
80000b18: 23 24 f1 05  	sw	t6, 72(sp)
80000b1c: b3 8f cf 40  	sub	t6, t6, a2
80000b20: 33 b6 58 02  	mulhu	a2, a7, t0
80000b24: 13 56 46 00  	srli	a2, a2, 4
80000b28: 33 06 16 02  	mul	a2, a2, ra
80000b2c: 23 26 11 05  	sw	a7, 76(sp)
80000b30: 33 85 c8 40  	sub	a0, a7, a2
80000b34: 23 20 a1 02  	sw	a0, 32(sp)
80000b38: 33 b6 57 02  	mulhu	a2, a5, t0
80000b3c: 13 56 46 00  	srli	a2, a2, 4
80000b40: 33 06 16 02  	mul	a2, a2, ra
80000b44: 33 85 c7 40  	sub	a0, a5, a2
80000b48: 23 2c a1 00  	sw	a0, 24(sp)
80000b4c: 33 36 57 02  	mulhu	a2, a4, t0
80000b50: 13 56 46 00  	srli	a2, a2, 4
80000b54: 33 06 16 02  	mul	a2, a2, ra
80000b58: 33 05 c7 40  	sub	a0, a4, a2
80000b5c: 23 2a a1 00  	sw	a0, 20(sp)
80000b60: 33 36 5c 02  	mulhu	a2, s8, t0
80000b64: 13 56 46 00  	srli	a2, a2, 4
80000b68: 33 06 16 02  	mul	a2, a2, ra
80000b6c: 23 2e 81 07  	sw	s8, 124(sp)
80000b70: 33 0f cc 40  	sub	t5, s8, a2
80000b74: 33 36 54 02  	mulhu	a2, s0, t0
80000b78: 13 56 46 00  	srli	a2, a2, 4
80000b7c: 33 06 16 02  	mul	a2, a2, ra
80000b80: 33 0b c4 40  	sub	s6, s0, a2
80000b84: 33 b6 53 02  	mulhu	a2, t2, t0
80000b88: 13 56 46 00  	srli	a2, a2, 4
80000b8c: 33 06 16 02  	mul	a2, a2, ra
80000b90: b3 84 c9 40  	sub	s1, s3, a2
80000b94: 33 b6 5e 02  	mulhu	a2, t4, t0
80000b98: 13 56 46 00  	srli	a2, a2, 4
80000b9c: 33 06 16 02  	mul	a2, a2, ra
80000ba0: 93 09 0e 00  	mv	s3, t3
80000ba4: b3 83 ce 40  	sub	t2, t4, a2
80000ba8: 33 36 58 02  	mulhu	a2, a6, t0
80000bac: 13 56 46 00  	srli	a2, a2, 4
80000bb0: 33 06 16 02  	mul	a2, a2, ra
80000bb4: 93 08 09 00  	mv	a7, s2
80000bb8: 13 04 03 00  	mv	s0, t1
80000bbc: 33 03 c8 40  	sub	t1, a6, a2
80000bc0: 33 36 5d 02  	mulhu	a2, s10, t0
80000bc4: 13 56 46 00  	srli	a2, a2, 4
80000bc8: 33 06 16 02  	mul	a2, a2, ra
80000bcc: 33 0a cd 40  	sub	s4, s10, a2
80000bd0: 33 b6 56 02  	mulhu	a2, a3, t0
80000bd4: 13 56 46 00  	srli	a2, a2, 4
80000bd8: 33 06 16 02  	mul	a2, a2, ra
80000bdc: 33 89 c6 40  	sub	s2, a3, a2
80000be0: 83 25 81 08  	lw	a1, 136(sp)
80000be4: 33 b6 55 02  	mulhu	a2, a1, t0
80000be8: 13 56 46 00  	srli	a2, a2, 4
80000bec: 33 06 16 02  	mul	a2, a2, ra
80000bf0: 03 2e 41 08  	lw	t3, 132(sp)
80000bf4: 23 2e b1 03  	sw	s11, 60(sp)
80000bf8: b3 8b cd 40  	sub	s7, s11, a2
80000bfc: 03 25 41 09  	lw	a0, 148(sp)
80000c00: 33 36 55 02  	mulhu	a2, a0, t0
80000c04: 13 56 46 00  	srli	a2, a2, 4
80000c08: 33 06 16 02  	mul	a2, a2, ra
80000c0c: 33 8c cc 40  	sub	s8, s9, a2
80000c10: 33 36 5e 02  	mulhu	a2, t3, t0
80000c14: 13 56 46 00  	srli	a2, a2, 4
80000c18: 33 06 16 02  	mul	a2, a2, ra
80000c1c: b3 0c ce 40  	sub	s9, t3, a2
80000c20: 83 2e c1 08  	lw	t4, 140(sp)
80000c24: 33 b6 5e 02  	mulhu	a2, t4, t0
80000c28: 13 56 46 00  	srli	a2, a2, 4
80000c2c: 33 06 16 02  	mul	a2, a2, ra
80000c30: 03 27 01 09  	lw	a4, 144(sp)
80000c34: 33 0d c7 40  	sub	s10, a4, a2
80000c38: 83 2d 01 08  	lw	s11, 128(sp)
80000c3c: 53 80 31 22  	fmv.d	ft0, ft3
80000c40: e3 8e 1d bc  	beq	s11, ra, 0x8000081c <.LBB0_127+0xd8>
80000c44: 93 8a 0d 00  	mv	s5, s11
80000c48: 6f f0 5f bd  	j	0x8000081c <.LBB0_127+0xd8>
80000c4c: 23 2e 01 06  	sw	zero, 124(sp)
80000c50: 23 28 01 06  	sw	zero, 112(sp)
80000c54: 93 0b 00 00  	mv	s7, zero
80000c58: 93 09 00 00  	mv	s3, zero
;     for (i = 0; i < ni; i++)
80000c5c: 93 07 04 06  	addi	a5, s0, 96
80000c60: 13 08 10 00  	addi	a6, zero, 1
80000c64: 37 d5 cc cc  	lui	a0, 838861
80000c68: 13 04 d5 cc  	addi	s0, a0, -819
80000c6c: 13 0f 40 01  	addi	t5, zero, 20
80000c70: b7 a5 a9 3f  	lui	a1, 260762
80000c74: 13 85 95 99  	addi	a0, a1, -1639
80000c78: 23 2a a1 06  	sw	a0, 116(sp)
80000c7c: b7 a5 99 99  	lui	a1, 629146
80000c80: 13 8e a5 99  	addi	t3, a1, -1638
80000c84: 13 03 10 00  	addi	t1, zero, 1
80000c88: 13 05 10 00  	addi	a0, zero, 1
80000c8c: 23 26 a1 06  	sw	a0, 108(sp)
80000c90: 93 02 10 00  	addi	t0, zero, 1
80000c94: 13 0d 10 00  	addi	s10, zero, 1
80000c98: 93 08 10 00  	addi	a7, zero, 1
80000c9c: 93 03 10 00  	addi	t2, zero, 1
80000ca0: 13 09 10 00  	addi	s2, zero, 1
80000ca4: 13 0c 10 00  	addi	s8, zero, 1
80000ca8: 93 0d 10 00  	addi	s11, zero, 1
80000cac: 13 07 10 00  	addi	a4, zero, 1
80000cb0: 23 28 e1 08  	sw	a4, 144(sp)
80000cb4: 13 07 10 00  	addi	a4, zero, 1
80000cb8: 23 26 e1 08  	sw	a4, 140(sp)
80000cbc: 93 0e 10 00  	addi	t4, zero, 1
80000cc0: 13 07 10 00  	addi	a4, zero, 1
80000cc4: 23 24 e1 08  	sw	a4, 136(sp)
80000cc8: 13 0b 10 00  	addi	s6, zero, 1
80000ccc: 13 07 10 00  	addi	a4, zero, 1
80000cd0: 23 22 e1 08  	sw	a4, 132(sp)
80000cd4: 93 00 10 00  	addi	ra, zero, 1
80000cd8: 13 05 10 00  	addi	a0, zero, 1
80000cdc: 13 07 10 00  	addi	a4, zero, 1
80000ce0: 23 20 e1 08  	sw	a4, 128(sp)
80000ce4: 13 0a 10 00  	addi	s4, zero, 1
80000ce8: 93 04 10 00  	addi	s1, zero, 1
80000cec: 13 06 10 00  	addi	a2, zero, 1
80000cf0: 13 07 10 00  	addi	a4, zero, 1
;     for (i = 0; i < ni; i++)
80000cf4: 23 2a e1 08  	sw	a4, 148(sp)
80000cf8: 23 2a f1 01  	sw	t6, 20(sp)
80000cfc: 23 28 c1 01  	sw	t3, 16(sp)
80000d00: 6f 00 00 24  	j	0x80000f40 <.LBB0_127+0x7fc>
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000d04: 53 80 0f d2  	fcvt.d.w	ft0, t6
80000d08: 03 26 01 02  	lw	a2, 32(sp)
80000d0c: d3 00 06 d2  	fcvt.d.w	ft1, a2
80000d10: 03 26 41 02  	lw	a2, 36(sp)
80000d14: 53 01 06 d2  	fcvt.d.w	ft2, a2
80000d18: 03 26 c1 01  	lw	a2, 28(sp)
80000d1c: d3 01 06 d2  	fcvt.d.w	ft3, a2
80000d20: 53 82 05 d2  	fcvt.d.w	ft4, a1
80000d24: d3 82 09 d2  	fcvt.d.w	ft5, s3
80000d28: 53 83 0a d2  	fcvt.d.w	ft6, s5
80000d2c: d3 03 0b d2  	fcvt.d.w	ft7, s6
80000d30: 53 85 0b d2  	fcvt.d.w	fa0, s7
80000d34: d3 05 0d d2  	fcvt.d.w	fa1, s10
80000d38: 53 86 06 d2  	fcvt.d.w	fa2, a3
80000d3c: d3 86 00 d2  	fcvt.d.w	fa3, ra
80000d40: 53 07 0c d2  	fcvt.d.w	fa4, s8
80000d44: d3 07 0a d2  	fcvt.d.w	fa5, s4
80000d48: 53 08 05 d2  	fcvt.d.w	fa6, a0
80000d4c: d3 88 04 d2  	fcvt.d.w	fa7, s1
80000d50: 03 25 81 01  	lw	a0, 24(sp)
80000d54: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000d58: 03 25 81 02  	lw	a0, 40(sp)
80000d5c: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000d60: 03 25 c1 02  	lw	a0, 44(sp)
80000d64: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000d68: 03 25 01 03  	lw	a0, 48(sp)
80000d6c: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000d70: 83 2f 41 01  	lw	t6, 20(sp)
80000d74: 07 b4 0f 00  	fld	fs0, 0(t6)
80000d78: 03 25 41 03  	lw	a0, 52(sp)
80000d7c: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000d80: 03 25 81 03  	lw	a0, 56(sp)
80000d84: 53 09 05 d2  	fcvt.d.w	fs2, a0
80000d88: 03 25 c1 03  	lw	a0, 60(sp)
80000d8c: d3 09 05 d2  	fcvt.d.w	fs3, a0
80000d90: 53 70 80 12  	fmul.d	ft0, ft0, fs0
80000d94: 27 b4 07 fa  	fsd	ft0, -88(a5)
80000d98: 53 f0 80 12  	fmul.d	ft0, ft1, fs0
80000d9c: 27 b8 07 fa  	fsd	ft0, -80(a5)
80000da0: 53 70 81 12  	fmul.d	ft0, ft2, fs0
80000da4: 27 bc 07 fa  	fsd	ft0, -72(a5)
80000da8: 53 f0 81 12  	fmul.d	ft0, ft3, fs0
80000dac: 27 b0 07 fc  	fsd	ft0, -64(a5)
80000db0: 53 70 82 12  	fmul.d	ft0, ft4, fs0
80000db4: 27 b4 07 fc  	fsd	ft0, -56(a5)
80000db8: 53 f0 82 12  	fmul.d	ft0, ft5, fs0
80000dbc: 27 b8 07 fc  	fsd	ft0, -48(a5)
80000dc0: 53 70 83 12  	fmul.d	ft0, ft6, fs0
80000dc4: 27 bc 07 fc  	fsd	ft0, -40(a5)
80000dc8: 53 f0 83 12  	fmul.d	ft0, ft7, fs0
80000dcc: 27 b0 07 fe  	fsd	ft0, -32(a5)
80000dd0: 53 70 85 12  	fmul.d	ft0, fa0, fs0
80000dd4: 27 b4 07 fe  	fsd	ft0, -24(a5)
80000dd8: 53 f0 85 12  	fmul.d	ft0, fa1, fs0
80000ddc: 27 b8 07 fe  	fsd	ft0, -16(a5)
80000de0: 53 70 86 12  	fmul.d	ft0, fa2, fs0
80000de4: 27 bc 07 fe  	fsd	ft0, -8(a5)
80000de8: 53 f0 86 12  	fmul.d	ft0, fa3, fs0
80000dec: 27 b0 07 00  	fsd	ft0, 0(a5)
80000df0: 53 70 87 12  	fmul.d	ft0, fa4, fs0
80000df4: 27 b4 07 00  	fsd	ft0, 8(a5)
80000df8: 53 f0 87 12  	fmul.d	ft0, fa5, fs0
80000dfc: 27 b8 07 00  	fsd	ft0, 16(a5)
80000e00: 53 70 88 12  	fmul.d	ft0, fa6, fs0
80000e04: 27 bc 07 00  	fsd	ft0, 24(a5)
80000e08: 53 f0 88 12  	fmul.d	ft0, fa7, fs0
80000e0c: 27 b0 07 02  	fsd	ft0, 32(a5)
80000e10: 53 70 8e 12  	fmul.d	ft0, ft8, fs0
80000e14: 27 b4 07 02  	fsd	ft0, 40(a5)
80000e18: 53 f0 8e 12  	fmul.d	ft0, ft9, fs0
80000e1c: 27 b8 07 02  	fsd	ft0, 48(a5)
80000e20: 53 70 8f 12  	fmul.d	ft0, ft10, fs0
80000e24: 27 bc 07 02  	fsd	ft0, 56(a5)
80000e28: 53 f0 8f 12  	fmul.d	ft0, ft11, fs0
80000e2c: 27 b4 07 04  	fsd	ft0, 72(a5)
80000e30: 53 f0 84 12  	fmul.d	ft0, fs1, fs0
80000e34: 27 b8 07 04  	fsd	ft0, 80(a5)
80000e38: 53 70 89 12  	fmul.d	ft0, fs2, fs0
80000e3c: 27 bc 07 04  	fsd	ft0, 88(a5)
80000e40: 03 25 41 07  	lw	a0, 116(sp)
80000e44: 23 a2 a7 04  	sw	a0, 68(a5)
80000e48: 03 2e 01 01  	lw	t3, 16(sp)
80000e4c: 23 a0 c7 05  	sw	t3, 64(a5)
80000e50: 53 f0 89 12  	fmul.d	ft0, fs3, fs0
80000e54: 27 b0 07 06  	fsd	ft0, 96(a5)
80000e58: 83 26 41 09  	lw	a3, 148(sp)
80000e5c: 93 86 16 00  	addi	a3, a3, 1
80000e60: 03 26 41 06  	lw	a2, 100(sp)
80000e64: 13 06 86 01  	addi	a2, a2, 24
80000e68: 83 2a c1 05  	lw	s5, 92(sp)
80000e6c: 93 84 7a 01  	addi	s1, s5, 23
80000e70: 03 2a 41 04  	lw	s4, 68(sp)
80000e74: 13 0a 6a 01  	addi	s4, s4, 22
80000e78: 03 27 01 08  	lw	a4, 128(sp)
80000e7c: 13 07 27 00  	addi	a4, a4, 2
80000e80: 23 20 e1 08  	sw	a4, 128(sp)
80000e84: 83 29 81 06  	lw	s3, 104(sp)
80000e88: 93 89 29 00  	addi	s3, s3, 2
80000e8c: 03 25 01 06  	lw	a0, 96(sp)
80000e90: 13 05 55 01  	addi	a0, a0, 21
80000e94: 83 20 81 05  	lw	ra, 88(sp)
80000e98: 93 80 30 00  	addi	ra, ra, 3
80000e9c: 03 27 41 08  	lw	a4, 132(sp)
80000ea0: 13 07 47 00  	addi	a4, a4, 4
80000ea4: 23 22 e1 08  	sw	a4, 132(sp)
80000ea8: 83 2b 01 05  	lw	s7, 80(sp)
80000eac: 93 8b 4b 00  	addi	s7, s7, 4
80000eb0: 03 2b 41 05  	lw	s6, 84(sp)
80000eb4: 13 0b 3b 01  	addi	s6, s6, 19
80000eb8: 03 27 81 08  	lw	a4, 136(sp)
80000ebc: 13 07 57 00  	addi	a4, a4, 5
80000ec0: 23 24 e1 08  	sw	a4, 136(sp)
80000ec4: 93 8c 5c 00  	addi	s9, s9, 5
80000ec8: 23 28 91 07  	sw	s9, 112(sp)
80000ecc: 93 8e 2e 01  	addi	t4, t4, 18
80000ed0: 03 27 c1 08  	lw	a4, 140(sp)
80000ed4: 13 07 67 00  	addi	a4, a4, 6
80000ed8: 23 26 e1 08  	sw	a4, 140(sp)
80000edc: 03 27 01 09  	lw	a4, 144(sp)
80000ee0: 13 07 17 01  	addi	a4, a4, 17
80000ee4: 23 28 e1 08  	sw	a4, 144(sp)
80000ee8: 93 8d 7d 00  	addi	s11, s11, 7
80000eec: 03 2c c1 04  	lw	s8, 76(sp)
80000ef0: 13 0c 0c 01  	addi	s8, s8, 16
80000ef4: 13 09 89 00  	addi	s2, s2, 8
80000ef8: 83 2c 81 04  	lw	s9, 72(sp)
80000efc: 93 8c fc 00  	addi	s9, s9, 15
80000f00: 93 88 98 00  	addi	a7, a7, 9
80000f04: 83 25 01 04  	lw	a1, 64(sp)
80000f08: 13 8d e5 00  	addi	s10, a1, 14
80000f0c: 93 82 a2 00  	addi	t0, t0, 10
80000f10: 03 27 c1 07  	lw	a4, 124(sp)
80000f14: 13 07 a7 00  	addi	a4, a4, 10
80000f18: 23 2e e1 06  	sw	a4, 124(sp)
80000f1c: 93 83 d3 00  	addi	t2, t2, 13
80000f20: 23 26 71 06  	sw	t2, 108(sp)
80000f24: 93 87 87 0c  	addi	a5, a5, 200
80000f28: 13 03 c3 00  	addi	t1, t1, 12
80000f2c: 13 08 b8 00  	addi	a6, a6, 11
;     for (i = 0; i < ni; i++)
80000f30: 13 07 50 01  	addi	a4, zero, 21
80000f34: 93 83 0c 00  	mv	t2, s9
80000f38: 23 2a d1 08  	sw	a3, 148(sp)
80000f3c: 63 80 e6 20  	beq	a3, a4, 0x8000113c <.LBB0_127+0x9f8>
80000f40: 23 20 a1 05  	sw	s10, 64(sp)
80000f44: 23 22 41 05  	sw	s4, 68(sp)
80000f48: 23 24 71 04  	sw	t2, 72(sp)
80000f4c: 23 26 81 05  	sw	s8, 76(sp)
80000f50: 23 28 71 05  	sw	s7, 80(sp)
80000f54: 23 2a 61 05  	sw	s6, 84(sp)
80000f58: 23 2c 11 04  	sw	ra, 88(sp)
80000f5c: 23 2e 91 04  	sw	s1, 92(sp)
80000f60: 23 20 a1 06  	sw	a0, 96(sp)
80000f64: 23 22 c1 06  	sw	a2, 100(sp)
80000f68: 23 24 31 07  	sw	s3, 104(sp)
80000f6c: 93 0f 00 00  	mv	t6, zero
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000f70: b3 36 86 02  	mulhu	a3, a2, s0
80000f74: 93 d6 46 00  	srli	a3, a3, 4
80000f78: b3 86 e6 03  	mul	a3, a3, t5
80000f7c: b3 05 d6 40  	sub	a1, a2, a3
80000f80: 23 2e b1 02  	sw	a1, 60(sp)
80000f84: b3 b6 84 02  	mulhu	a3, s1, s0
80000f88: 93 d6 46 00  	srli	a3, a3, 4
80000f8c: b3 86 e6 03  	mul	a3, a3, t5
80000f90: b3 85 d4 40  	sub	a1, s1, a3
80000f94: 23 2c b1 02  	sw	a1, 56(sp)
80000f98: b3 36 8a 02  	mulhu	a3, s4, s0
80000f9c: 93 d6 46 00  	srli	a3, a3, 4
80000fa0: b3 86 e6 03  	mul	a3, a3, t5
80000fa4: b3 05 da 40  	sub	a1, s4, a3
80000fa8: 23 2a b1 02  	sw	a1, 52(sp)
80000fac: b3 b6 89 02  	mulhu	a3, s3, s0
80000fb0: 93 d6 46 00  	srli	a3, a3, 4
80000fb4: b3 86 e6 03  	mul	a3, a3, t5
80000fb8: 03 27 01 08  	lw	a4, 128(sp)
80000fbc: b3 05 d7 40  	sub	a1, a4, a3
80000fc0: 23 20 b1 02  	sw	a1, 32(sp)
80000fc4: b3 36 85 02  	mulhu	a3, a0, s0
80000fc8: 93 d6 46 00  	srli	a3, a3, 4
80000fcc: b3 86 e6 03  	mul	a3, a3, t5
80000fd0: 33 05 d5 40  	sub	a0, a0, a3
80000fd4: 23 28 a1 02  	sw	a0, 48(sp)
80000fd8: b3 b6 80 02  	mulhu	a3, ra, s0
80000fdc: 93 d6 46 00  	srli	a3, a3, 4
80000fe0: b3 86 e6 03  	mul	a3, a3, t5
80000fe4: 33 85 d0 40  	sub	a0, ra, a3
80000fe8: 23 22 a1 02  	sw	a0, 36(sp)
80000fec: b3 b6 8b 02  	mulhu	a3, s7, s0
80000ff0: 93 d6 46 00  	srli	a3, a3, 4
80000ff4: b3 86 e6 03  	mul	a3, a3, t5
80000ff8: 03 27 41 08  	lw	a4, 132(sp)
80000ffc: 33 05 d7 40  	sub	a0, a4, a3
80001000: 23 2e a1 00  	sw	a0, 28(sp)
80001004: b3 36 8b 02  	mulhu	a3, s6, s0
80001008: 93 d6 46 00  	srli	a3, a3, 4
8000100c: b3 86 e6 03  	mul	a3, a3, t5
80001010: 33 05 db 40  	sub	a0, s6, a3
80001014: 23 26 a1 02  	sw	a0, 44(sp)
80001018: 83 2c 01 07  	lw	s9, 112(sp)
8000101c: b3 b6 8c 02  	mulhu	a3, s9, s0
80001020: 93 d6 46 00  	srli	a3, a3, 4
80001024: b3 86 e6 03  	mul	a3, a3, t5
80001028: 83 24 81 08  	lw	s1, 136(sp)
8000102c: 03 27 c1 06  	lw	a4, 108(sp)
80001030: b3 85 d4 40  	sub	a1, s1, a3
80001034: b3 b6 8e 02  	mulhu	a3, t4, s0
80001038: 93 d6 46 00  	srli	a3, a3, 4
8000103c: b3 86 e6 03  	mul	a3, a3, t5
80001040: b3 86 de 40  	sub	a3, t4, a3
80001044: 23 24 d1 02  	sw	a3, 40(sp)
80001048: 83 24 c1 08  	lw	s1, 140(sp)
8000104c: b3 b6 84 02  	mulhu	a3, s1, s0
80001050: 93 d6 46 00  	srli	a3, a3, 4
80001054: b3 86 e6 03  	mul	a3, a3, t5
80001058: b3 89 d4 40  	sub	s3, s1, a3
8000105c: 83 24 01 09  	lw	s1, 144(sp)
80001060: b3 b6 84 02  	mulhu	a3, s1, s0
80001064: 93 d6 46 00  	srli	a3, a3, 4
80001068: b3 86 e6 03  	mul	a3, a3, t5
8000106c: 33 86 d4 40  	sub	a2, s1, a3
80001070: 23 2c c1 00  	sw	a2, 24(sp)
80001074: b3 b6 8d 02  	mulhu	a3, s11, s0
80001078: 93 d6 46 00  	srli	a3, a3, 4
8000107c: b3 86 e6 03  	mul	a3, a3, t5
80001080: b3 8a dd 40  	sub	s5, s11, a3
80001084: b3 36 8c 02  	mulhu	a3, s8, s0
80001088: 93 d6 46 00  	srli	a3, a3, 4
8000108c: b3 86 e6 03  	mul	a3, a3, t5
80001090: b3 04 dc 40  	sub	s1, s8, a3
80001094: b3 36 89 02  	mulhu	a3, s2, s0
80001098: 93 d6 46 00  	srli	a3, a3, 4
8000109c: b3 86 e6 03  	mul	a3, a3, t5
800010a0: 33 0b d9 40  	sub	s6, s2, a3
800010a4: b3 b6 83 02  	mulhu	a3, t2, s0
800010a8: 93 d6 46 00  	srli	a3, a3, 4
800010ac: b3 86 e6 03  	mul	a3, a3, t5
800010b0: 33 85 d3 40  	sub	a0, t2, a3
800010b4: b3 b6 88 02  	mulhu	a3, a7, s0
800010b8: 93 d6 46 00  	srli	a3, a3, 4
800010bc: b3 86 e6 03  	mul	a3, a3, t5
800010c0: b3 8b d8 40  	sub	s7, a7, a3
800010c4: b3 36 8d 02  	mulhu	a3, s10, s0
800010c8: 93 d6 46 00  	srli	a3, a3, 4
800010cc: b3 86 e6 03  	mul	a3, a3, t5
800010d0: 33 0a dd 40  	sub	s4, s10, a3
800010d4: 83 26 c1 07  	lw	a3, 124(sp)
800010d8: b3 b6 86 02  	mulhu	a3, a3, s0
800010dc: 93 d6 46 00  	srli	a3, a3, 4
800010e0: b3 86 e6 03  	mul	a3, a3, t5
800010e4: 33 8d d2 40  	sub	s10, t0, a3
800010e8: b3 36 87 02  	mulhu	a3, a4, s0
800010ec: 93 d6 46 00  	srli	a3, a3, 4
800010f0: b3 86 e6 03  	mul	a3, a3, t5
800010f4: 33 0c d7 40  	sub	s8, a4, a3
800010f8: b3 36 83 02  	mulhu	a3, t1, s0
800010fc: 93 d6 46 00  	srli	a3, a3, 4
80001100: b3 86 e6 03  	mul	a3, a3, t5
80001104: 93 03 07 00  	mv	t2, a4
80001108: b3 00 d3 40  	sub	ra, t1, a3
8000110c: b3 36 88 02  	mulhu	a3, a6, s0
80001110: 93 d6 46 00  	srli	a3, a3, 4
80001114: b3 86 e6 03  	mul	a3, a3, t5
80001118: b3 06 d8 40  	sub	a3, a6, a3
8000111c: 03 26 41 07  	lw	a2, 116(sp)
80001120: 23 a2 c7 fa  	sw	a2, -92(a5)
80001124: 23 a0 c7 fb  	sw	t3, -96(a5)
80001128: 03 27 41 09  	lw	a4, 148(sp)
8000112c: e3 0c e7 bd  	beq	a4, t5, 0x80000d04 <.LBB0_127+0x5c0>
80001130: 83 2f 41 09  	lw	t6, 148(sp)
80001134: 6f f0 1f bd  	j	0x80000d04 <.LBB0_127+0x5c0>
80001138: 73 f0 00 7c  	csrci	1984, 1
8000113c: 03 25 c1 00  	lw	a0, 12(sp)
;     for (i = 0; i < ni; i++)
80001140: 93 55 45 01  	srli	a1, a0, 20
80001144: 33 36 b0 00  	snez	a2, a1
80001148: b7 f5 11 00  	lui	a1, 287
8000114c: 93 85 95 d4  	addi	a1, a1, -695
80001150: b3 35 b5 00  	sltu	a1, a0, a1
80001154: b3 75 b6 00  	and	a1, a2, a1

80001158 <.LBB0_128>:
80001158: 17 59 00 00  	auipc	s2, 5
8000115c: 13 09 89 94  	addi	s2, s2, -1720
80001160: 23 2a b1 06  	sw	a1, 116(sp)
80001164: 63 86 05 6c  	beqz	a1, 0x80001830 <.LBB0_156+0x464>
80001168: 13 07 80 00  	addi	a4, zero, 8
8000116c: 93 05 d0 01  	addi	a1, zero, 29
;     for (i = 0; i < ni; i++)
80001170: 13 06 00 04  	addi	a2, zero, 64
80001174: 93 06 00 0c  	addi	a3, zero, 192
80001178: ab a0 c5 00  	scfgw	a1, a2
8000117c: ab 20 d7 00  	scfgw	a4, a3
80001180: 93 05 30 01  	addi	a1, zero, 19
80001184: 13 06 00 06  	addi	a2, zero, 96
80001188: 93 06 00 0e  	addi	a3, zero, 224
8000118c: ab a0 c5 00  	scfgw	a1, a2
80001190: ab 20 d7 00  	scfgw	a4, a3
80001194: 93 05 00 02  	addi	a1, zero, 32
80001198: ab 20 b0 00  	scfgw	zero, a1
8000119c: 2b 20 05 3a  	scfgwi	a0, 928
800011a0: 73 e0 00 7c  	csrsi	1984, 1
800011a4: 53 02 00 d2  	fcvt.d.w	ft4, zero
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800011a8: 53 00 42 22  	fmv.d	ft0, ft4
800011ac: 53 00 42 22  	fmv.d	ft0, ft4
800011b0: 53 00 42 22  	fmv.d	ft0, ft4
800011b4: 53 00 42 22  	fmv.d	ft0, ft4
800011b8: 53 00 42 22  	fmv.d	ft0, ft4
800011bc: 53 00 42 22  	fmv.d	ft0, ft4
800011c0: 53 00 42 22  	fmv.d	ft0, ft4
800011c4: 53 00 42 22  	fmv.d	ft0, ft4
800011c8: 53 00 42 22  	fmv.d	ft0, ft4
800011cc: 53 00 42 22  	fmv.d	ft0, ft4
800011d0: 53 00 42 22  	fmv.d	ft0, ft4
800011d4: 53 00 42 22  	fmv.d	ft0, ft4
800011d8: 53 00 42 22  	fmv.d	ft0, ft4
800011dc: 53 00 42 22  	fmv.d	ft0, ft4
800011e0: 53 00 42 22  	fmv.d	ft0, ft4
800011e4: 53 00 42 22  	fmv.d	ft0, ft4
800011e8: 53 00 42 22  	fmv.d	ft0, ft4
800011ec: 53 00 42 22  	fmv.d	ft0, ft4
800011f0: 53 00 42 22  	fmv.d	ft0, ft4
800011f4: 53 00 42 22  	fmv.d	ft0, ft4
800011f8: 53 00 42 22  	fmv.d	ft0, ft4
800011fc: 53 00 42 22  	fmv.d	ft0, ft4
80001200: 53 00 42 22  	fmv.d	ft0, ft4
80001204: 53 00 42 22  	fmv.d	ft0, ft4
80001208: 53 00 42 22  	fmv.d	ft0, ft4
8000120c: 53 00 42 22  	fmv.d	ft0, ft4
80001210: 53 00 42 22  	fmv.d	ft0, ft4
80001214: 87 31 09 00  	fld	ft3, 0(s2)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001218: 53 00 42 22  	fmv.d	ft0, ft4
8000121c: 53 00 42 22  	fmv.d	ft0, ft4
80001220: 53 00 42 22  	fmv.d	ft0, ft4
80001224: 53 80 31 22  	fmv.d	ft0, ft3

80001228 <.LBB0_129>:
80001228: 17 55 00 00  	auipc	a0, 5
8000122c: 13 05 05 88  	addi	a0, a0, -1920
80001230: 87 32 05 00  	fld	ft5, 0(a0)

80001234 <.LBB0_130>:
80001234: 17 55 00 00  	auipc	a0, 5
80001238: 13 05 c5 87  	addi	a0, a0, -1924
8000123c: 07 33 05 00  	fld	ft6, 0(a0)

80001240 <.LBB0_131>:
80001240: 17 55 00 00  	auipc	a0, 5
80001244: 13 05 85 87  	addi	a0, a0, -1928
80001248: 87 33 05 00  	fld	ft7, 0(a0)

8000124c <.LBB0_132>:
8000124c: 17 55 00 00  	auipc	a0, 5
80001250: 13 05 45 87  	addi	a0, a0, -1932
80001254: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001258: 53 80 52 22  	fmv.d	ft0, ft5
8000125c: 53 00 63 22  	fmv.d	ft0, ft6
80001260: 53 80 73 22  	fmv.d	ft0, ft7
80001264: 53 00 a5 22  	fmv.d	ft0, fa0

80001268 <.LBB0_133>:
80001268: 17 55 00 00  	auipc	a0, 5
8000126c: 13 05 05 86  	addi	a0, a0, -1952
80001270: 87 32 05 00  	fld	ft5, 0(a0)

80001274 <.LBB0_134>:
80001274: 17 55 00 00  	auipc	a0, 5
80001278: 13 05 c5 85  	addi	a0, a0, -1956
8000127c: 07 33 05 00  	fld	ft6, 0(a0)

80001280 <.LBB0_135>:
80001280: 17 55 00 00  	auipc	a0, 5
80001284: 13 05 85 85  	addi	a0, a0, -1960
80001288: 87 33 05 00  	fld	ft7, 0(a0)

8000128c <.LBB0_136>:
8000128c: 17 55 00 00  	auipc	a0, 5
80001290: 13 05 45 85  	addi	a0, a0, -1964
80001294: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001298: 53 80 52 22  	fmv.d	ft0, ft5
8000129c: 53 00 63 22  	fmv.d	ft0, ft6
800012a0: 53 80 73 22  	fmv.d	ft0, ft7
800012a4: 53 00 a5 22  	fmv.d	ft0, fa0

800012a8 <.LBB0_137>:
800012a8: 17 55 00 00  	auipc	a0, 5
800012ac: 13 05 05 84  	addi	a0, a0, -1984
800012b0: 87 32 05 00  	fld	ft5, 0(a0)

800012b4 <.LBB0_138>:
800012b4: 17 55 00 00  	auipc	a0, 5
800012b8: 13 05 c5 83  	addi	a0, a0, -1988
800012bc: 07 33 05 00  	fld	ft6, 0(a0)

800012c0 <.LBB0_139>:
800012c0: 17 55 00 00  	auipc	a0, 5
800012c4: 13 05 85 83  	addi	a0, a0, -1992
800012c8: 87 33 05 00  	fld	ft7, 0(a0)

800012cc <.LBB0_140>:
800012cc: 17 55 00 00  	auipc	a0, 5
800012d0: 13 05 45 83  	addi	a0, a0, -1996
800012d4: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800012d8: 53 80 52 22  	fmv.d	ft0, ft5
800012dc: 53 00 63 22  	fmv.d	ft0, ft6
800012e0: 53 80 73 22  	fmv.d	ft0, ft7
800012e4: 53 00 a5 22  	fmv.d	ft0, fa0

800012e8 <.LBB0_141>:
800012e8: 17 55 00 00  	auipc	a0, 5
800012ec: 13 05 05 82  	addi	a0, a0, -2016
800012f0: 87 32 05 00  	fld	ft5, 0(a0)

800012f4 <.LBB0_142>:
800012f4: 17 55 00 00  	auipc	a0, 5
800012f8: 13 05 c5 81  	addi	a0, a0, -2020
800012fc: 07 33 05 00  	fld	ft6, 0(a0)

80001300 <.LBB0_143>:
80001300: 17 55 00 00  	auipc	a0, 5
80001304: 13 05 85 81  	addi	a0, a0, -2024
80001308: 87 33 05 00  	fld	ft7, 0(a0)

8000130c <.LBB0_144>:
8000130c: 17 55 00 00  	auipc	a0, 5
80001310: 13 05 45 81  	addi	a0, a0, -2028
80001314: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001318: 53 80 52 22  	fmv.d	ft0, ft5
8000131c: 53 00 63 22  	fmv.d	ft0, ft6
80001320: 53 80 73 22  	fmv.d	ft0, ft7
80001324: 53 00 a5 22  	fmv.d	ft0, fa0

80001328 <.LBB0_145>:
80001328: 17 55 00 00  	auipc	a0, 5
8000132c: 13 05 05 80  	addi	a0, a0, -2048
80001330: 87 32 05 00  	fld	ft5, 0(a0)

80001334 <.LBB0_146>:
80001334: 17 45 00 00  	auipc	a0, 4
80001338: 13 05 c5 7f  	addi	a0, a0, 2044
8000133c: 07 33 05 00  	fld	ft6, 0(a0)

80001340 <.LBB0_147>:
80001340: 17 45 00 00  	auipc	a0, 4
80001344: 13 05 85 7f  	addi	a0, a0, 2040
80001348: 87 33 05 00  	fld	ft7, 0(a0)

8000134c <.LBB0_148>:
8000134c: 17 45 00 00  	auipc	a0, 4
80001350: 13 05 45 7f  	addi	a0, a0, 2036
80001354: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001358: 53 80 52 22  	fmv.d	ft0, ft5
8000135c: 53 00 63 22  	fmv.d	ft0, ft6
80001360: 53 80 73 22  	fmv.d	ft0, ft7
80001364: 53 00 a5 22  	fmv.d	ft0, fa0

80001368 <.LBB0_149>:
80001368: 17 45 00 00  	auipc	a0, 4
8000136c: 13 05 05 7e  	addi	a0, a0, 2016
80001370: 87 32 05 00  	fld	ft5, 0(a0)

80001374 <.LBB0_150>:
80001374: 17 45 00 00  	auipc	a0, 4
80001378: 13 05 c5 7d  	addi	a0, a0, 2012
8000137c: 07 33 05 00  	fld	ft6, 0(a0)

80001380 <.LBB0_151>:
80001380: 17 45 00 00  	auipc	a0, 4
80001384: 13 05 85 7d  	addi	a0, a0, 2008
80001388: 87 33 05 00  	fld	ft7, 0(a0)

8000138c <.LBB0_152>:
8000138c: 17 45 00 00  	auipc	a0, 4
80001390: 13 05 45 7d  	addi	a0, a0, 2004
80001394: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001398: 53 80 52 22  	fmv.d	ft0, ft5
8000139c: 53 00 63 22  	fmv.d	ft0, ft6
800013a0: 53 80 73 22  	fmv.d	ft0, ft7
800013a4: 53 00 a5 22  	fmv.d	ft0, fa0

800013a8 <.LBB0_153>:
800013a8: 17 45 00 00  	auipc	a0, 4
800013ac: 13 05 05 7c  	addi	a0, a0, 1984
800013b0: 87 32 05 00  	fld	ft5, 0(a0)

800013b4 <.LBB0_154>:
800013b4: 17 45 00 00  	auipc	a0, 4
800013b8: 13 05 c5 7b  	addi	a0, a0, 1980
800013bc: 07 33 05 00  	fld	ft6, 0(a0)

800013c0 <.LBB0_155>:
800013c0: 17 45 00 00  	auipc	a0, 4
800013c4: 13 05 85 7b  	addi	a0, a0, 1976
800013c8: 87 33 05 00  	fld	ft7, 0(a0)

800013cc <.LBB0_156>:
800013cc: 17 45 00 00  	auipc	a0, 4
800013d0: 13 05 45 7b  	addi	a0, a0, 1972
800013d4: 07 35 05 00  	fld	fa0, 0(a0)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800013d8: 53 80 52 22  	fmv.d	ft0, ft5
800013dc: 53 00 63 22  	fmv.d	ft0, ft6
800013e0: 53 80 73 22  	fmv.d	ft0, ft7
800013e4: 53 00 a5 22  	fmv.d	ft0, fa0
800013e8: 53 00 42 22  	fmv.d	ft0, ft4
800013ec: 13 05 e0 01  	addi	a0, zero, 30
800013f0: 93 05 20 00  	addi	a1, zero, 2
800013f4: 37 96 88 88  	lui	a2, 559241
800013f8: 13 06 96 88  	addi	a2, a2, -1911
800013fc: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001400: 33 b7 c5 02  	mulhu	a4, a1, a2
80001404: 13 57 47 00  	srli	a4, a4, 4
80001408: 33 07 a7 02  	mul	a4, a4, a0
8000140c: 33 87 e5 40  	sub	a4, a1, a4
80001410: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001414: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001418: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
8000141c: 93 86 f6 ff  	addi	a3, a3, -1
80001420: 93 85 25 00  	addi	a1, a1, 2
80001424: e3 9e 06 fc  	bnez	a3, 0x80001400 <.LBB0_156+0x34>
80001428: 13 05 e0 01  	addi	a0, zero, 30
8000142c: 93 05 30 00  	addi	a1, zero, 3
80001430: 37 96 88 88  	lui	a2, 559241
80001434: 13 06 96 88  	addi	a2, a2, -1911
80001438: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000143c: 33 b7 c5 02  	mulhu	a4, a1, a2
80001440: 13 57 47 00  	srli	a4, a4, 4
80001444: 33 07 a7 02  	mul	a4, a4, a0
80001448: 33 87 e5 40  	sub	a4, a1, a4
8000144c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001450: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001454: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001458: 93 86 f6 ff  	addi	a3, a3, -1
8000145c: 93 85 35 00  	addi	a1, a1, 3
80001460: e3 9e 06 fc  	bnez	a3, 0x8000143c <.LBB0_156+0x70>
80001464: 13 05 e0 01  	addi	a0, zero, 30
80001468: 93 05 40 00  	addi	a1, zero, 4
8000146c: 37 96 88 88  	lui	a2, 559241
80001470: 13 06 96 88  	addi	a2, a2, -1911
80001474: 93 06 e0 01  	addi	a3, zero, 30
80001478: 83 20 81 00  	lw	ra, 8(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000147c: 33 b7 c5 02  	mulhu	a4, a1, a2
80001480: 13 57 47 00  	srli	a4, a4, 4
80001484: 33 07 a7 02  	mul	a4, a4, a0
80001488: 33 87 e5 40  	sub	a4, a1, a4
8000148c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001490: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001494: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001498: 93 86 f6 ff  	addi	a3, a3, -1
8000149c: 93 85 45 00  	addi	a1, a1, 4
800014a0: e3 9e 06 fc  	bnez	a3, 0x8000147c <.LBB0_156+0xb0>
800014a4: 13 05 e0 01  	addi	a0, zero, 30
800014a8: 93 05 50 00  	addi	a1, zero, 5
800014ac: 37 96 88 88  	lui	a2, 559241
800014b0: 13 06 96 88  	addi	a2, a2, -1911
800014b4: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800014b8: 33 b7 c5 02  	mulhu	a4, a1, a2
800014bc: 13 57 47 00  	srli	a4, a4, 4
800014c0: 33 07 a7 02  	mul	a4, a4, a0
800014c4: 33 87 e5 40  	sub	a4, a1, a4
800014c8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800014cc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800014d0: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
800014d4: 93 86 f6 ff  	addi	a3, a3, -1
800014d8: 93 85 55 00  	addi	a1, a1, 5
800014dc: e3 9e 06 fc  	bnez	a3, 0x800014b8 <.LBB0_156+0xec>
800014e0: 13 05 e0 01  	addi	a0, zero, 30
800014e4: 93 05 60 00  	addi	a1, zero, 6
800014e8: 37 96 88 88  	lui	a2, 559241
800014ec: 13 06 96 88  	addi	a2, a2, -1911
800014f0: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800014f4: 33 b7 c5 02  	mulhu	a4, a1, a2
800014f8: 13 57 47 00  	srli	a4, a4, 4
800014fc: 33 07 a7 02  	mul	a4, a4, a0
80001500: 33 87 e5 40  	sub	a4, a1, a4
80001504: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001508: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000150c: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001510: 93 86 f6 ff  	addi	a3, a3, -1
80001514: 93 85 65 00  	addi	a1, a1, 6
80001518: e3 9e 06 fc  	bnez	a3, 0x800014f4 <.LBB0_156+0x128>
8000151c: 13 05 e0 01  	addi	a0, zero, 30
80001520: 93 05 70 00  	addi	a1, zero, 7
80001524: 37 96 88 88  	lui	a2, 559241
80001528: 13 06 96 88  	addi	a2, a2, -1911
8000152c: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001530: 33 b7 c5 02  	mulhu	a4, a1, a2
80001534: 13 57 47 00  	srli	a4, a4, 4
80001538: 33 07 a7 02  	mul	a4, a4, a0
8000153c: 33 87 e5 40  	sub	a4, a1, a4
80001540: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001544: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001548: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
8000154c: 93 86 f6 ff  	addi	a3, a3, -1
80001550: 93 85 75 00  	addi	a1, a1, 7
80001554: e3 9e 06 fc  	bnez	a3, 0x80001530 <.LBB0_156+0x164>
80001558: 13 05 e0 01  	addi	a0, zero, 30
8000155c: 93 05 80 00  	addi	a1, zero, 8
80001560: 37 96 88 88  	lui	a2, 559241
80001564: 13 06 96 88  	addi	a2, a2, -1911
80001568: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000156c: 33 b7 c5 02  	mulhu	a4, a1, a2
80001570: 13 57 47 00  	srli	a4, a4, 4
80001574: 33 07 a7 02  	mul	a4, a4, a0
80001578: 33 87 e5 40  	sub	a4, a1, a4
8000157c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001580: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001584: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001588: 93 86 f6 ff  	addi	a3, a3, -1
8000158c: 93 85 85 00  	addi	a1, a1, 8
80001590: e3 9e 06 fc  	bnez	a3, 0x8000156c <.LBB0_156+0x1a0>
80001594: 13 05 e0 01  	addi	a0, zero, 30
80001598: 93 05 90 00  	addi	a1, zero, 9
8000159c: 37 96 88 88  	lui	a2, 559241
800015a0: 13 06 96 88  	addi	a2, a2, -1911
800015a4: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800015a8: 33 b7 c5 02  	mulhu	a4, a1, a2
800015ac: 13 57 47 00  	srli	a4, a4, 4
800015b0: 33 07 a7 02  	mul	a4, a4, a0
800015b4: 33 87 e5 40  	sub	a4, a1, a4
800015b8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800015bc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800015c0: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
800015c4: 93 86 f6 ff  	addi	a3, a3, -1
800015c8: 93 85 95 00  	addi	a1, a1, 9
800015cc: e3 9e 06 fc  	bnez	a3, 0x800015a8 <.LBB0_156+0x1dc>
800015d0: 13 05 e0 01  	addi	a0, zero, 30
800015d4: 93 05 a0 00  	addi	a1, zero, 10
800015d8: 37 96 88 88  	lui	a2, 559241
800015dc: 13 06 96 88  	addi	a2, a2, -1911
800015e0: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800015e4: 33 b7 c5 02  	mulhu	a4, a1, a2
800015e8: 13 57 47 00  	srli	a4, a4, 4
800015ec: 33 07 a7 02  	mul	a4, a4, a0
800015f0: 33 87 e5 40  	sub	a4, a1, a4
800015f4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800015f8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800015fc: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001600: 93 86 f6 ff  	addi	a3, a3, -1
80001604: 93 85 a5 00  	addi	a1, a1, 10
80001608: e3 9e 06 fc  	bnez	a3, 0x800015e4 <.LBB0_156+0x218>
8000160c: 13 05 e0 01  	addi	a0, zero, 30
80001610: 93 05 b0 00  	addi	a1, zero, 11
80001614: 37 96 88 88  	lui	a2, 559241
80001618: 13 06 96 88  	addi	a2, a2, -1911
8000161c: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001620: 33 b7 c5 02  	mulhu	a4, a1, a2
80001624: 13 57 47 00  	srli	a4, a4, 4
80001628: 33 07 a7 02  	mul	a4, a4, a0
8000162c: 33 87 e5 40  	sub	a4, a1, a4
80001630: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001634: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001638: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
8000163c: 93 86 f6 ff  	addi	a3, a3, -1
80001640: 93 85 b5 00  	addi	a1, a1, 11
80001644: e3 9e 06 fc  	bnez	a3, 0x80001620 <.LBB0_156+0x254>
80001648: 13 05 e0 01  	addi	a0, zero, 30
8000164c: 93 05 c0 00  	addi	a1, zero, 12
80001650: 37 96 88 88  	lui	a2, 559241
80001654: 13 06 96 88  	addi	a2, a2, -1911
80001658: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000165c: 33 b7 c5 02  	mulhu	a4, a1, a2
80001660: 13 57 47 00  	srli	a4, a4, 4
80001664: 33 07 a7 02  	mul	a4, a4, a0
80001668: 33 87 e5 40  	sub	a4, a1, a4
8000166c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001670: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001674: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001678: 93 86 f6 ff  	addi	a3, a3, -1
8000167c: 93 85 c5 00  	addi	a1, a1, 12
80001680: e3 9e 06 fc  	bnez	a3, 0x8000165c <.LBB0_156+0x290>
80001684: 13 05 e0 01  	addi	a0, zero, 30
80001688: 93 05 d0 00  	addi	a1, zero, 13
8000168c: 37 96 88 88  	lui	a2, 559241
80001690: 13 06 96 88  	addi	a2, a2, -1911
80001694: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001698: 33 b7 c5 02  	mulhu	a4, a1, a2
8000169c: 13 57 47 00  	srli	a4, a4, 4
800016a0: 33 07 a7 02  	mul	a4, a4, a0
800016a4: 33 87 e5 40  	sub	a4, a1, a4
800016a8: 53 02 07 d2  	fcvt.d.w	ft4, a4
800016ac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800016b0: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
800016b4: 93 86 f6 ff  	addi	a3, a3, -1
800016b8: 93 85 d5 00  	addi	a1, a1, 13
800016bc: e3 9e 06 fc  	bnez	a3, 0x80001698 <.LBB0_156+0x2cc>
800016c0: 13 05 e0 01  	addi	a0, zero, 30
800016c4: 93 05 e0 00  	addi	a1, zero, 14
800016c8: 37 96 88 88  	lui	a2, 559241
800016cc: 13 06 96 88  	addi	a2, a2, -1911
800016d0: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800016d4: 33 b7 c5 02  	mulhu	a4, a1, a2
800016d8: 13 57 47 00  	srli	a4, a4, 4
800016dc: 33 07 a7 02  	mul	a4, a4, a0
800016e0: 33 87 e5 40  	sub	a4, a1, a4
800016e4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800016e8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800016ec: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
800016f0: 93 86 f6 ff  	addi	a3, a3, -1
800016f4: 93 85 e5 00  	addi	a1, a1, 14
800016f8: e3 9e 06 fc  	bnez	a3, 0x800016d4 <.LBB0_156+0x308>
800016fc: 13 05 e0 01  	addi	a0, zero, 30
80001700: 93 05 f0 00  	addi	a1, zero, 15
80001704: 37 96 88 88  	lui	a2, 559241
80001708: 13 06 96 88  	addi	a2, a2, -1911
8000170c: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001710: 33 b7 c5 02  	mulhu	a4, a1, a2
80001714: 13 57 47 00  	srli	a4, a4, 4
80001718: 33 07 a7 02  	mul	a4, a4, a0
8000171c: 33 87 e5 40  	sub	a4, a1, a4
80001720: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001724: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001728: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
8000172c: 93 86 f6 ff  	addi	a3, a3, -1
80001730: 93 85 f5 00  	addi	a1, a1, 15
80001734: e3 9e 06 fc  	bnez	a3, 0x80001710 <.LBB0_156+0x344>
80001738: 13 05 e0 01  	addi	a0, zero, 30
8000173c: 93 05 00 01  	addi	a1, zero, 16
80001740: 37 96 88 88  	lui	a2, 559241
80001744: 13 06 96 88  	addi	a2, a2, -1911
80001748: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000174c: 33 b7 c5 02  	mulhu	a4, a1, a2
80001750: 13 57 47 00  	srli	a4, a4, 4
80001754: 33 07 a7 02  	mul	a4, a4, a0
80001758: 33 87 e5 40  	sub	a4, a1, a4
8000175c: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001760: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001764: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
80001768: 93 86 f6 ff  	addi	a3, a3, -1
8000176c: 93 85 05 01  	addi	a1, a1, 16
80001770: e3 9e 06 fc  	bnez	a3, 0x8000174c <.LBB0_156+0x380>
80001774: 13 05 e0 01  	addi	a0, zero, 30
80001778: 93 05 10 01  	addi	a1, zero, 17
8000177c: 37 96 88 88  	lui	a2, 559241
80001780: 13 06 96 88  	addi	a2, a2, -1911
80001784: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001788: 33 b7 c5 02  	mulhu	a4, a1, a2
8000178c: 13 57 47 00  	srli	a4, a4, 4
80001790: 33 07 a7 02  	mul	a4, a4, a0
80001794: 33 87 e5 40  	sub	a4, a1, a4
80001798: 53 02 07 d2  	fcvt.d.w	ft4, a4
8000179c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800017a0: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
800017a4: 93 86 f6 ff  	addi	a3, a3, -1
800017a8: 93 85 15 01  	addi	a1, a1, 17
800017ac: e3 9e 06 fc  	bnez	a3, 0x80001788 <.LBB0_156+0x3bc>
800017b0: 13 05 e0 01  	addi	a0, zero, 30
800017b4: 93 05 20 01  	addi	a1, zero, 18
800017b8: 37 96 88 88  	lui	a2, 559241
800017bc: 13 06 96 88  	addi	a2, a2, -1911
800017c0: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800017c4: 33 b7 c5 02  	mulhu	a4, a1, a2
800017c8: 13 57 47 00  	srli	a4, a4, 4
800017cc: 33 07 a7 02  	mul	a4, a4, a0
800017d0: 33 87 e5 40  	sub	a4, a1, a4
800017d4: 53 02 07 d2  	fcvt.d.w	ft4, a4
800017d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800017dc: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
800017e0: 93 86 f6 ff  	addi	a3, a3, -1
800017e4: 93 85 25 01  	addi	a1, a1, 18
800017e8: e3 9e 06 fc  	bnez	a3, 0x800017c4 <.LBB0_156+0x3f8>
800017ec: 13 05 e0 01  	addi	a0, zero, 30
800017f0: 93 05 30 01  	addi	a1, zero, 19
800017f4: 37 96 88 88  	lui	a2, 559241
800017f8: 13 06 96 88  	addi	a2, a2, -1911
800017fc: 93 06 e0 01  	addi	a3, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001800: 33 b7 c5 02  	mulhu	a4, a1, a2
80001804: 13 57 47 00  	srli	a4, a4, 4
80001808: 33 07 a7 02  	mul	a4, a4, a0
8000180c: 33 87 e5 40  	sub	a4, a1, a4
80001810: 53 02 07 d2  	fcvt.d.w	ft4, a4
80001814: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001818: 53 00 42 22  	fmv.d	ft0, ft4
;         for (j = 0; j < nk; j++)
8000181c: 93 86 f6 ff  	addi	a3, a3, -1
80001820: 93 85 35 01  	addi	a1, a1, 19
80001824: e3 9e 06 fc  	bnez	a3, 0x80001800 <.LBB0_156+0x434>
80001828: 73 f0 00 7c  	csrci	1984, 1
8000182c: 6f 00 80 79  	j	0x80001fc4 <.LBB0_156+0xbf8>
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001830: 13 06 00 0f  	addi	a2, zero, 240
80001834: 93 04 00 0f  	addi	s1, zero, 240
80001838: 93 05 00 00  	mv	a1, zero
8000183c: 97 e0 ff ff  	auipc	ra, 1048574
80001840: e7 80 40 7c  	jalr	1988(ra)
80001844: 03 23 c1 00  	lw	t1, 12(sp)
80001848: 13 05 00 00  	mv	a0, zero
8000184c: b7 15 a1 3f  	lui	a1, 260625
80001850: 93 85 15 11  	addi	a1, a1, 273
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001854: 23 2a b3 0e  	sw	a1, 244(t1)
80001858: b7 15 11 11  	lui	a1, 69905
8000185c: 93 85 15 11  	addi	a1, a1, 273
80001860: 23 28 b3 0e  	sw	a1, 240(t1)
80001864: 37 16 b1 3f  	lui	a2, 260881
80001868: 13 06 16 11  	addi	a2, a2, 273
8000186c: 23 2e c3 0e  	sw	a2, 252(t1)
80001870: 23 2c b3 0e  	sw	a1, 248(t1)
80001874: 37 a6 b9 3f  	lui	a2, 261018
80001878: 13 06 96 99  	addi	a2, a2, -1639
8000187c: 23 22 c3 10  	sw	a2, 260(t1)
80001880: 37 a6 99 99  	lui	a2, 629146
80001884: 13 06 a6 99  	addi	a2, a2, -1638
80001888: 23 20 c3 10  	sw	a2, 256(t1)
8000188c: b7 16 c1 3f  	lui	a3, 261137
80001890: 93 86 16 11  	addi	a3, a3, 273
80001894: 23 26 d3 10  	sw	a3, 268(t1)
80001898: 23 24 b3 10  	sw	a1, 264(t1)
8000189c: b7 56 c5 3f  	lui	a3, 261205
800018a0: 93 86 56 55  	addi	a3, a3, 1365
800018a4: 23 2a d3 10  	sw	a3, 276(t1)
800018a8: b7 56 55 55  	lui	a3, 349525
800018ac: 93 86 56 55  	addi	a3, a3, 1365
800018b0: 23 28 d3 10  	sw	a3, 272(t1)
800018b4: 37 a7 c9 3f  	lui	a4, 261274
800018b8: 13 07 97 99  	addi	a4, a4, -1639
800018bc: 23 2e e3 10  	sw	a4, 284(t1)
800018c0: 23 2c c3 10  	sw	a2, 280(t1)
800018c4: 37 e7 cd 3f  	lui	a4, 261342
800018c8: 13 07 d7 dd  	addi	a4, a4, -547
800018cc: 23 22 e3 12  	sw	a4, 292(t1)
800018d0: 37 e7 dd dd  	lui	a4, 908766
800018d4: 13 08 e7 dd  	addi	a6, a4, -546
800018d8: 23 20 03 13  	sw	a6, 288(t1)
800018dc: b7 17 d1 3f  	lui	a5, 261393
800018e0: 93 87 17 11  	addi	a5, a5, 273
800018e4: 23 26 f3 12  	sw	a5, 300(t1)
800018e8: 23 24 b3 12  	sw	a1, 296(t1)
800018ec: b7 37 d3 3f  	lui	a5, 261427
800018f0: 93 87 37 33  	addi	a5, a5, 819
800018f4: 23 2a f3 12  	sw	a5, 308(t1)
800018f8: b7 37 33 33  	lui	a5, 209715
800018fc: 93 87 37 33  	addi	a5, a5, 819
80001900: 23 28 f3 12  	sw	a5, 304(t1)
80001904: 37 54 d5 3f  	lui	s0, 261461
80001908: 13 04 54 55  	addi	s0, s0, 1365
8000190c: 23 2e 83 12  	sw	s0, 316(t1)
80001910: 23 2c d3 12  	sw	a3, 312(t1)
80001914: 37 74 d7 3f  	lui	s0, 261495
80001918: 13 04 74 77  	addi	s0, s0, 1911
8000191c: 23 22 83 14  	sw	s0, 324(t1)
80001920: 37 74 77 77  	lui	s0, 489335
80001924: 13 04 74 77  	addi	s0, s0, 1911
80001928: 23 20 83 14  	sw	s0, 320(t1)
8000192c: 37 a7 d9 3f  	lui	a4, 261530
80001930: 13 07 97 99  	addi	a4, a4, -1639
80001934: 23 26 e3 14  	sw	a4, 332(t1)
80001938: 23 24 c3 14  	sw	a2, 328(t1)
8000193c: 37 c7 db 3f  	lui	a4, 261564
80001940: 13 07 b7 bb  	addi	a4, a4, -1093
80001944: 23 2a e3 14  	sw	a4, 340(t1)
80001948: 37 e7 dd 3f  	lui	a4, 261598
8000194c: 13 07 d7 dd  	addi	a4, a4, -547
80001950: 23 2e e3 14  	sw	a4, 348(t1)
80001954: 37 07 e0 3f  	lui	a4, 261632
80001958: 23 22 e3 16  	sw	a4, 356(t1)
8000195c: 37 17 e1 3f  	lui	a4, 261649
80001960: 13 07 17 11  	addi	a4, a4, 273
80001964: 23 26 e3 16  	sw	a4, 364(t1)
80001968: 37 c7 bb bb  	lui	a4, 768956
8000196c: 13 07 c7 bb  	addi	a4, a4, -1092
80001970: 23 28 e3 14  	sw	a4, 336(t1)
80001974: 23 2c 03 15  	sw	a6, 344(t1)
80001978: 23 20 03 16  	sw	zero, 352(t1)
8000197c: 23 24 b3 16  	sw	a1, 360(t1)
80001980: b7 25 e2 3f  	lui	a1, 261666
80001984: 93 85 25 22  	addi	a1, a1, 546
80001988: 23 2a b3 16  	sw	a1, 372(t1)
8000198c: b7 25 22 22  	lui	a1, 139810
80001990: 93 85 25 22  	addi	a1, a1, 546
80001994: 23 28 b3 16  	sw	a1, 368(t1)
80001998: b7 35 e3 3f  	lui	a1, 261683
8000199c: 93 85 35 33  	addi	a1, a1, 819
800019a0: 23 2e b3 16  	sw	a1, 380(t1)
800019a4: 23 2c f3 16  	sw	a5, 376(t1)
800019a8: b7 45 e4 3f  	lui	a1, 261700
800019ac: 93 85 45 44  	addi	a1, a1, 1092
800019b0: 23 22 b3 18  	sw	a1, 388(t1)
800019b4: b7 45 44 44  	lui	a1, 279620
800019b8: 93 85 45 44  	addi	a1, a1, 1092
800019bc: 23 20 b3 18  	sw	a1, 384(t1)
800019c0: b7 55 e5 3f  	lui	a1, 261717
800019c4: 93 85 55 55  	addi	a1, a1, 1365
800019c8: 23 26 b3 18  	sw	a1, 396(t1)
800019cc: 23 24 d3 18  	sw	a3, 392(t1)
800019d0: b7 65 e6 3f  	lui	a1, 261734
800019d4: 93 85 65 66  	addi	a1, a1, 1638
800019d8: 23 2a b3 18  	sw	a1, 404(t1)
800019dc: b7 65 66 66  	lui	a1, 419430
800019e0: 93 85 65 66  	addi	a1, a1, 1638
800019e4: 23 28 b3 18  	sw	a1, 400(t1)
800019e8: b7 75 e7 3f  	lui	a1, 261751
800019ec: 93 85 75 77  	addi	a1, a1, 1911
800019f0: 23 2e b3 18  	sw	a1, 412(t1)
800019f4: 23 2c 83 18  	sw	s0, 408(t1)
800019f8: b7 95 e8 3f  	lui	a1, 261769
800019fc: 93 85 85 88  	addi	a1, a1, -1912
80001a00: 23 22 b3 1a  	sw	a1, 420(t1)
80001a04: b7 96 88 88  	lui	a3, 559241
80001a08: 93 85 86 88  	addi	a1, a3, -1912
80001a0c: 23 20 b3 1a  	sw	a1, 416(t1)
80001a10: b7 a5 e9 3f  	lui	a1, 261786
80001a14: 93 85 95 99  	addi	a1, a1, -1639
80001a18: 23 26 b3 1a  	sw	a1, 428(t1)
80001a1c: 23 24 c3 1a  	sw	a2, 424(t1)
80001a20: b7 b5 ea 3f  	lui	a1, 261803
80001a24: 93 85 a5 aa  	addi	a1, a1, -1366
80001a28: 23 2a b3 1a  	sw	a1, 436(t1)
80001a2c: b7 b5 aa aa  	lui	a1, 699051
80001a30: 93 85 b5 aa  	addi	a1, a1, -1365
80001a34: 23 28 b3 1a  	sw	a1, 432(t1)
80001a38: b7 c5 eb 3f  	lui	a1, 261820
80001a3c: 93 85 b5 bb  	addi	a1, a1, -1093
80001a40: 23 2e b3 1a  	sw	a1, 444(t1)
80001a44: 23 2c e3 1a  	sw	a4, 440(t1)
80001a48: b7 d5 ec 3f  	lui	a1, 261837
80001a4c: 93 85 c5 cc  	addi	a1, a1, -820
80001a50: 23 22 b3 1c  	sw	a1, 452(t1)
80001a54: b7 d5 cc cc  	lui	a1, 838861
80001a58: 93 85 d5 cc  	addi	a1, a1, -819
80001a5c: 23 20 b3 1c  	sw	a1, 448(t1)
80001a60: b7 e5 ed 3f  	lui	a1, 261854
80001a64: 93 85 d5 dd  	addi	a1, a1, -547
80001a68: 23 26 b3 1c  	sw	a1, 460(t1)
80001a6c: 23 24 03 1d  	sw	a6, 456(t1)
80001a70: b7 f5 ee 3f  	lui	a1, 261871
80001a74: 93 85 e5 ee  	addi	a1, a1, -274
80001a78: 23 2a b3 1c  	sw	a1, 468(t1)
80001a7c: b7 f5 ee ee  	lui	a1, 978671
80001a80: 93 85 f5 ee  	addi	a1, a1, -273
80001a84: 23 28 b3 1c  	sw	a1, 464(t1)
80001a88: 23 2e 03 1c  	sw	zero, 476(t1)
80001a8c: 23 2c 03 1c  	sw	zero, 472(t1)
;         for (j = 0; j < nk; j++)
80001a90: 93 05 03 1e  	addi	a1, t1, 480
80001a94: 07 30 09 00  	fld	ft0, 0(s2)
80001a98: 13 06 20 00  	addi	a2, zero, 2
80001a9c: 93 86 96 88  	addi	a3, a3, -1911
80001aa0: 13 07 e0 01  	addi	a4, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001aa4: b3 37 d6 02  	mulhu	a5, a2, a3
80001aa8: 93 d7 47 00  	srli	a5, a5, 4
80001aac: b3 87 e7 02  	mul	a5, a5, a4
80001ab0: b3 07 f6 40  	sub	a5, a2, a5
80001ab4: d3 80 07 d2  	fcvt.d.w	ft1, a5
80001ab8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001abc: b3 87 a5 00  	add	a5, a1, a0
80001ac0: 27 b0 17 00  	fsd	ft1, 0(a5)
;         for (j = 0; j < nk; j++)
80001ac4: 13 05 85 00  	addi	a0, a0, 8
80001ac8: 13 06 26 00  	addi	a2, a2, 2
80001acc: e3 1c 95 fc  	bne	a0, s1, 0x80001aa4 <.LBB0_156+0x6d8>
80001ad0: 13 05 00 00  	mv	a0, zero
;         for (j = 0; j < nk; j++)
80001ad4: 93 05 03 2d  	addi	a1, t1, 720
80001ad8: 13 06 30 00  	addi	a2, zero, 3
80001adc: b7 96 88 88  	lui	a3, 559241
80001ae0: 93 86 96 88  	addi	a3, a3, -1911
80001ae4: 13 07 e0 01  	addi	a4, zero, 30
80001ae8: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001aec: b3 34 d6 02  	mulhu	s1, a2, a3
80001af0: 93 d4 44 00  	srli	s1, s1, 4
80001af4: b3 84 e4 02  	mul	s1, s1, a4
80001af8: b3 04 96 40  	sub	s1, a2, s1
80001afc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001b00: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001b04: b3 84 a5 00  	add	s1, a1, a0
80001b08: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001b0c: 13 05 85 00  	addi	a0, a0, 8
80001b10: 13 06 36 00  	addi	a2, a2, 3
80001b14: e3 1c f5 fc  	bne	a0, a5, 0x80001aec <.LBB0_156+0x720>
80001b18: 13 05 00 00  	mv	a0, zero
;         for (j = 0; j < nk; j++)
80001b1c: 93 05 03 3c  	addi	a1, t1, 960
80001b20: 13 06 40 00  	addi	a2, zero, 4
80001b24: b7 96 88 88  	lui	a3, 559241
80001b28: 93 86 96 88  	addi	a3, a3, -1911
80001b2c: 13 07 e0 01  	addi	a4, zero, 30
80001b30: 93 07 00 0f  	addi	a5, zero, 240
80001b34: 83 20 81 00  	lw	ra, 8(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001b38: b3 34 d6 02  	mulhu	s1, a2, a3
80001b3c: 93 d4 44 00  	srli	s1, s1, 4
80001b40: b3 84 e4 02  	mul	s1, s1, a4
80001b44: b3 04 96 40  	sub	s1, a2, s1
80001b48: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001b4c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001b50: b3 84 a5 00  	add	s1, a1, a0
80001b54: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001b58: 13 05 85 00  	addi	a0, a0, 8
80001b5c: 13 06 46 00  	addi	a2, a2, 4
80001b60: e3 1c f5 fc  	bne	a0, a5, 0x80001b38 <.LBB0_156+0x76c>
80001b64: 13 05 00 00  	mv	a0, zero
;         for (j = 0; j < nk; j++)
80001b68: 93 06 03 4b  	addi	a3, t1, 1200
80001b6c: 93 05 50 00  	addi	a1, zero, 5
80001b70: 37 96 88 88  	lui	a2, 559241
80001b74: 13 06 96 88  	addi	a2, a2, -1911
80001b78: 13 07 e0 01  	addi	a4, zero, 30
80001b7c: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001b80: b3 b4 c5 02  	mulhu	s1, a1, a2
80001b84: 93 d4 44 00  	srli	s1, s1, 4
80001b88: b3 84 e4 02  	mul	s1, s1, a4
80001b8c: b3 84 95 40  	sub	s1, a1, s1
80001b90: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001b94: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001b98: b3 84 a6 00  	add	s1, a3, a0
80001b9c: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001ba0: 13 05 85 00  	addi	a0, a0, 8
80001ba4: 93 85 55 00  	addi	a1, a1, 5
80001ba8: e3 1c f5 fc  	bne	a0, a5, 0x80001b80 <.LBB0_156+0x7b4>
80001bac: 13 05 00 00  	mv	a0, zero
;         for (j = 0; j < nk; j++)
80001bb0: 93 02 03 5a  	addi	t0, t1, 1440
80001bb4: 93 05 60 00  	addi	a1, zero, 6
80001bb8: 37 97 88 88  	lui	a4, 559241
80001bbc: 13 07 97 88  	addi	a4, a4, -1911
80001bc0: 93 07 e0 01  	addi	a5, zero, 30
80001bc4: 93 04 00 0f  	addi	s1, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001bc8: 33 b4 e5 02  	mulhu	s0, a1, a4
80001bcc: 13 54 44 00  	srli	s0, s0, 4
80001bd0: 33 04 f4 02  	mul	s0, s0, a5
80001bd4: 33 84 85 40  	sub	s0, a1, s0
80001bd8: d3 00 04 d2  	fcvt.d.w	ft1, s0
80001bdc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001be0: 33 84 a2 00  	add	s0, t0, a0
80001be4: 27 30 14 00  	fsd	ft1, 0(s0)
;         for (j = 0; j < nk; j++)
80001be8: 13 05 85 00  	addi	a0, a0, 8
80001bec: 93 85 65 00  	addi	a1, a1, 6
80001bf0: e3 1c 95 fc  	bne	a0, s1, 0x80001bc8 <.LBB0_156+0x7fc>
80001bf4: 13 05 00 00  	mv	a0, zero
;         for (j = 0; j < nk; j++)
80001bf8: 93 08 03 69  	addi	a7, t1, 1680
80001bfc: 13 07 70 00  	addi	a4, zero, 7
80001c00: b7 95 88 88  	lui	a1, 559241
80001c04: 93 87 95 88  	addi	a5, a1, -1911
80001c08: 93 04 e0 01  	addi	s1, zero, 30
80001c0c: 13 04 00 0f  	addi	s0, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001c10: b3 35 f7 02  	mulhu	a1, a4, a5
80001c14: 93 d5 45 00  	srli	a1, a1, 4
80001c18: b3 85 95 02  	mul	a1, a1, s1
80001c1c: b3 05 b7 40  	sub	a1, a4, a1
80001c20: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001c24: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001c28: b3 85 a8 00  	add	a1, a7, a0
80001c2c: 27 b0 15 00  	fsd	ft1, 0(a1)
;         for (j = 0; j < nk; j++)
80001c30: 13 05 85 00  	addi	a0, a0, 8
80001c34: 13 07 77 00  	addi	a4, a4, 7
80001c38: e3 1c 85 fc  	bne	a0, s0, 0x80001c10 <.LBB0_156+0x844>
80001c3c: 13 07 00 00  	mv	a4, zero
;         for (j = 0; j < nk; j++)
80001c40: 13 08 03 78  	addi	a6, t1, 1920
80001c44: 93 07 80 00  	addi	a5, zero, 8
80001c48: 37 95 88 88  	lui	a0, 559241
80001c4c: 93 04 95 88  	addi	s1, a0, -1911
80001c50: 13 04 e0 01  	addi	s0, zero, 30
80001c54: 13 05 00 0f  	addi	a0, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001c58: b3 b5 97 02  	mulhu	a1, a5, s1
80001c5c: 93 d5 45 00  	srli	a1, a1, 4
80001c60: b3 85 85 02  	mul	a1, a1, s0
80001c64: b3 05 b7 40  	sub	a1, a4, a1
80001c68: 93 85 85 00  	addi	a1, a1, 8
80001c6c: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001c70: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001c74: b3 05 e8 00  	add	a1, a6, a4
80001c78: 27 b0 15 00  	fsd	ft1, 0(a1)
;         for (j = 0; j < nk; j++)
80001c7c: 13 07 87 00  	addi	a4, a4, 8
80001c80: 93 87 87 00  	addi	a5, a5, 8
80001c84: e3 1a a7 fc  	bne	a4, a0, 0x80001c58 <.LBB0_156+0x88c>
80001c88: 13 07 00 00  	mv	a4, zero
;         for (j = 0; j < nk; j++)
80001c8c: 13 05 83 43  	addi	a0, t1, 1080
80001c90: 93 07 85 43  	addi	a5, a0, 1080
80001c94: 13 05 90 00  	addi	a0, zero, 9
80001c98: b7 95 88 88  	lui	a1, 559241
80001c9c: 93 84 95 88  	addi	s1, a1, -1911
80001ca0: 13 04 e0 01  	addi	s0, zero, 30
80001ca4: 93 05 00 0f  	addi	a1, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001ca8: 33 36 95 02  	mulhu	a2, a0, s1
80001cac: 13 56 46 00  	srli	a2, a2, 4
80001cb0: 33 06 86 02  	mul	a2, a2, s0
80001cb4: 33 06 c5 40  	sub	a2, a0, a2
80001cb8: d3 00 06 d2  	fcvt.d.w	ft1, a2
80001cbc: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001cc0: 33 86 e7 00  	add	a2, a5, a4
80001cc4: 27 30 16 00  	fsd	ft1, 0(a2)
;         for (j = 0; j < nk; j++)
80001cc8: 13 07 87 00  	addi	a4, a4, 8
80001ccc: 13 05 95 00  	addi	a0, a0, 9
80001cd0: e3 1c b7 fc  	bne	a4, a1, 0x80001ca8 <.LBB0_156+0x8dc>
80001cd4: 13 07 00 00  	mv	a4, zero
;         for (j = 0; j < nk; j++)
80001cd8: 93 86 06 4b  	addi	a3, a3, 1200
80001cdc: 93 07 a0 00  	addi	a5, zero, 10
80001ce0: 37 95 88 88  	lui	a0, 559241
80001ce4: 13 05 95 88  	addi	a0, a0, -1911
80001ce8: 93 04 e0 01  	addi	s1, zero, 30
80001cec: 13 04 00 0f  	addi	s0, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001cf0: b3 b5 a7 02  	mulhu	a1, a5, a0
80001cf4: 93 d5 45 00  	srli	a1, a1, 4
80001cf8: b3 85 95 02  	mul	a1, a1, s1
80001cfc: b3 85 b7 40  	sub	a1, a5, a1
80001d00: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001d04: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001d08: b3 85 e6 00  	add	a1, a3, a4
80001d0c: 27 b0 15 00  	fsd	ft1, 0(a1)
;         for (j = 0; j < nk; j++)
80001d10: 13 07 87 00  	addi	a4, a4, 8
80001d14: 93 87 a7 00  	addi	a5, a5, 10
80001d18: e3 1c 87 fc  	bne	a4, s0, 0x80001cf0 <.LBB0_156+0x924>
80001d1c: 93 06 00 00  	mv	a3, zero
;         for (j = 0; j < nk; j++)
80001d20: 13 05 83 52  	addi	a0, t1, 1320
80001d24: 13 07 85 52  	addi	a4, a0, 1320
80001d28: 13 05 b0 00  	addi	a0, zero, 11
80001d2c: b7 95 88 88  	lui	a1, 559241
80001d30: 93 87 95 88  	addi	a5, a1, -1911
80001d34: 93 04 e0 01  	addi	s1, zero, 30
80001d38: 93 05 00 0f  	addi	a1, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001d3c: 33 36 f5 02  	mulhu	a2, a0, a5
80001d40: 13 56 46 00  	srli	a2, a2, 4
80001d44: 33 06 96 02  	mul	a2, a2, s1
80001d48: 33 06 c5 40  	sub	a2, a0, a2
80001d4c: d3 00 06 d2  	fcvt.d.w	ft1, a2
80001d50: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001d54: 33 06 d7 00  	add	a2, a4, a3
80001d58: 27 30 16 00  	fsd	ft1, 0(a2)
;         for (j = 0; j < nk; j++)
80001d5c: 93 86 86 00  	addi	a3, a3, 8
80001d60: 13 05 b5 00  	addi	a0, a0, 11
80001d64: e3 9c b6 fc  	bne	a3, a1, 0x80001d3c <.LBB0_156+0x970>
80001d68: 93 06 00 00  	mv	a3, zero
;         for (j = 0; j < nk; j++)
80001d6c: 13 86 02 5a  	addi	a2, t0, 1440
80001d70: 13 07 c0 00  	addi	a4, zero, 12
80001d74: 37 95 88 88  	lui	a0, 559241
80001d78: 13 05 95 88  	addi	a0, a0, -1911
80001d7c: 93 07 e0 01  	addi	a5, zero, 30
80001d80: 93 04 00 0f  	addi	s1, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001d84: b3 35 a7 02  	mulhu	a1, a4, a0
80001d88: 93 d5 45 00  	srli	a1, a1, 4
80001d8c: b3 85 f5 02  	mul	a1, a1, a5
80001d90: b3 05 b7 40  	sub	a1, a4, a1
80001d94: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001d98: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001d9c: b3 05 d6 00  	add	a1, a2, a3
80001da0: 27 b0 15 00  	fsd	ft1, 0(a1)
;         for (j = 0; j < nk; j++)
80001da4: 93 86 86 00  	addi	a3, a3, 8
80001da8: 13 07 c7 00  	addi	a4, a4, 12
80001dac: e3 9c 96 fc  	bne	a3, s1, 0x80001d84 <.LBB0_156+0x9b8>
80001db0: 13 06 00 00  	mv	a2, zero
;         for (j = 0; j < nk; j++)
80001db4: 13 05 83 61  	addi	a0, t1, 1560
80001db8: 93 06 85 61  	addi	a3, a0, 1560
80001dbc: 13 05 d0 00  	addi	a0, zero, 13
80001dc0: b7 95 88 88  	lui	a1, 559241
80001dc4: 13 87 95 88  	addi	a4, a1, -1911
80001dc8: 93 07 e0 01  	addi	a5, zero, 30
80001dcc: 93 05 00 0f  	addi	a1, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001dd0: b3 34 e5 02  	mulhu	s1, a0, a4
80001dd4: 93 d4 44 00  	srli	s1, s1, 4
80001dd8: b3 84 f4 02  	mul	s1, s1, a5
80001ddc: b3 04 95 40  	sub	s1, a0, s1
80001de0: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001de4: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001de8: b3 84 c6 00  	add	s1, a3, a2
80001dec: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001df0: 13 06 86 00  	addi	a2, a2, 8
80001df4: 13 05 d5 00  	addi	a0, a0, 13
80001df8: e3 1c b6 fc  	bne	a2, a1, 0x80001dd0 <.LBB0_156+0xa04>
80001dfc: 13 06 00 00  	mv	a2, zero
;         for (j = 0; j < nk; j++)
80001e00: 93 85 08 69  	addi	a1, a7, 1680
80001e04: 93 06 e0 00  	addi	a3, zero, 14
80001e08: 37 95 88 88  	lui	a0, 559241
80001e0c: 13 05 95 88  	addi	a0, a0, -1911
80001e10: 13 07 e0 01  	addi	a4, zero, 30
80001e14: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001e18: b3 b4 a6 02  	mulhu	s1, a3, a0
80001e1c: 93 d4 44 00  	srli	s1, s1, 4
80001e20: b3 84 e4 02  	mul	s1, s1, a4
80001e24: b3 84 96 40  	sub	s1, a3, s1
80001e28: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001e2c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001e30: b3 84 c5 00  	add	s1, a1, a2
80001e34: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001e38: 13 06 86 00  	addi	a2, a2, 8
80001e3c: 93 86 e6 00  	addi	a3, a3, 14
80001e40: e3 1c f6 fc  	bne	a2, a5, 0x80001e18 <.LBB0_156+0xa4c>
80001e44: 93 05 00 00  	mv	a1, zero
;         for (j = 0; j < nk; j++)
80001e48: 13 05 83 70  	addi	a0, t1, 1800
80001e4c: 13 06 85 70  	addi	a2, a0, 1800
80001e50: 13 05 f0 00  	addi	a0, zero, 15
80001e54: b7 96 88 88  	lui	a3, 559241
80001e58: 93 86 96 88  	addi	a3, a3, -1911
80001e5c: 13 07 e0 01  	addi	a4, zero, 30
80001e60: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001e64: b3 34 d5 02  	mulhu	s1, a0, a3
80001e68: 93 d4 44 00  	srli	s1, s1, 4
80001e6c: b3 84 e4 02  	mul	s1, s1, a4
80001e70: b3 04 95 40  	sub	s1, a0, s1
80001e74: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001e78: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001e7c: b3 04 b6 00  	add	s1, a2, a1
80001e80: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001e84: 93 85 85 00  	addi	a1, a1, 8
80001e88: 13 05 f5 00  	addi	a0, a0, 15
80001e8c: e3 9c f5 fc  	bne	a1, a5, 0x80001e64 <.LBB0_156+0xa98>
80001e90: 93 05 00 00  	mv	a1, zero
;         for (j = 0; j < nk; j++)
80001e94: 13 05 08 78  	addi	a0, a6, 1920
80001e98: 13 06 00 01  	addi	a2, zero, 16
80001e9c: b7 96 88 88  	lui	a3, 559241
80001ea0: 93 86 96 88  	addi	a3, a3, -1911
80001ea4: 13 07 e0 01  	addi	a4, zero, 30
80001ea8: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001eac: b3 34 d6 02  	mulhu	s1, a2, a3
80001eb0: 93 d4 44 00  	srli	s1, s1, 4
80001eb4: b3 84 e4 02  	mul	s1, s1, a4
80001eb8: b3 04 96 40  	sub	s1, a2, s1
80001ebc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001ec0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001ec4: b3 04 b5 00  	add	s1, a0, a1
80001ec8: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001ecc: 93 85 85 00  	addi	a1, a1, 8
80001ed0: 13 06 06 01  	addi	a2, a2, 16
80001ed4: e3 9c f5 fc  	bne	a1, a5, 0x80001eac <.LBB0_156+0xae0>
80001ed8: 13 05 00 00  	mv	a0, zero
;         for (j = 0; j < nk; j++)
80001edc: 93 05 83 7f  	addi	a1, t1, 2040
80001ee0: 93 85 85 7f  	addi	a1, a1, 2040
80001ee4: 13 06 10 01  	addi	a2, zero, 17
80001ee8: b7 96 88 88  	lui	a3, 559241
80001eec: 93 86 96 88  	addi	a3, a3, -1911
80001ef0: 13 07 e0 01  	addi	a4, zero, 30
80001ef4: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001ef8: b3 34 d6 02  	mulhu	s1, a2, a3
80001efc: 93 d4 44 00  	srli	s1, s1, 4
80001f00: b3 84 e4 02  	mul	s1, s1, a4
80001f04: b3 04 96 40  	sub	s1, a2, s1
80001f08: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001f0c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001f10: b3 84 a5 00  	add	s1, a1, a0
80001f14: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001f18: 13 05 85 00  	addi	a0, a0, 8
80001f1c: 13 06 16 01  	addi	a2, a2, 17
80001f20: e3 1c f5 fc  	bne	a0, a5, 0x80001ef8 <.LBB0_156+0xb2c>
80001f24: 13 05 00 00  	mv	a0, zero
80001f28: b7 15 00 00  	lui	a1, 1
80001f2c: 93 85 05 0e  	addi	a1, a1, 224
;         for (j = 0; j < nk; j++)
80001f30: b3 05 b3 00  	add	a1, t1, a1
80001f34: 13 06 20 01  	addi	a2, zero, 18
80001f38: b7 96 88 88  	lui	a3, 559241
80001f3c: 93 86 96 88  	addi	a3, a3, -1911
80001f40: 13 07 e0 01  	addi	a4, zero, 30
80001f44: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001f48: b3 34 d6 02  	mulhu	s1, a2, a3
80001f4c: 93 d4 44 00  	srli	s1, s1, 4
80001f50: b3 84 e4 02  	mul	s1, s1, a4
80001f54: b3 04 96 40  	sub	s1, a2, s1
80001f58: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001f5c: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001f60: b3 84 a5 00  	add	s1, a1, a0
80001f64: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001f68: 13 05 85 00  	addi	a0, a0, 8
80001f6c: 13 06 26 01  	addi	a2, a2, 18
80001f70: e3 1c f5 fc  	bne	a0, a5, 0x80001f48 <.LBB0_156+0xb7c>
80001f74: 13 05 00 00  	mv	a0, zero
80001f78: b7 15 00 00  	lui	a1, 1
80001f7c: 93 85 05 1d  	addi	a1, a1, 464
;         for (j = 0; j < nk; j++)
80001f80: b3 05 b3 00  	add	a1, t1, a1
80001f84: 13 06 30 01  	addi	a2, zero, 19
80001f88: b7 96 88 88  	lui	a3, 559241
80001f8c: 93 86 96 88  	addi	a3, a3, -1911
80001f90: 13 07 e0 01  	addi	a4, zero, 30
80001f94: 93 07 00 0f  	addi	a5, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001f98: b3 34 d6 02  	mulhu	s1, a2, a3
80001f9c: 93 d4 44 00  	srli	s1, s1, 4
80001fa0: b3 84 e4 02  	mul	s1, s1, a4
80001fa4: b3 04 96 40  	sub	s1, a2, s1
80001fa8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001fac: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80001fb0: b3 84 a5 00  	add	s1, a1, a0
80001fb4: 27 b0 14 00  	fsd	ft1, 0(s1)
;         for (j = 0; j < nk; j++)
80001fb8: 13 05 85 00  	addi	a0, a0, 8
80001fbc: 13 06 36 01  	addi	a2, a2, 19
80001fc0: e3 1c f5 fc  	bne	a0, a5, 0x80001f98 <.LBB0_156+0xbcc>
;     for (i = 0; i < nk; i++)
80001fc4: 13 d5 40 01  	srli	a0, ra, 20
80001fc8: 33 35 a0 00  	snez	a0, a0
80001fcc: b7 f5 11 00  	lui	a1, 287
80001fd0: 93 85 95 89  	addi	a1, a1, -1895
80001fd4: b3 b5 b0 00  	sltu	a1, ra, a1
80001fd8: 33 75 b5 00  	and	a0, a0, a1
80001fdc: 23 28 a1 06  	sw	a0, 112(sp)
80001fe0: 63 04 05 40  	beqz	a0, 0x800023e8 <.LBB0_157+0x35c>
80001fe4: 13 06 00 00  	mv	a2, zero
80001fe8: 93 06 00 00  	mv	a3, zero
80001fec: 13 07 00 00  	mv	a4, zero
80001ff0: 93 07 00 00  	mv	a5, zero
80001ff4: 93 05 00 00  	mv	a1, zero
80001ff8: 23 2a 01 08  	sw	zero, 148(sp)
80001ffc: 13 0f 00 00  	mv	t5, zero
80002000: 93 0f 00 00  	mv	t6, zero
80002004: 93 0b 00 00  	mv	s7, zero
80002008: 13 0c 00 00  	mv	s8, zero
8000200c: 93 0c 00 00  	mv	s9, zero
80002010: 13 0d 00 00  	mv	s10, zero
80002014: 93 0d 00 00  	mv	s11, zero
80002018: 13 85 00 00  	mv	a0, ra
8000201c: 93 00 00 00  	mv	ra, zero
80002020: 93 09 00 00  	mv	s3, zero
80002024: 13 0b 00 00  	mv	s6, zero
80002028: 93 08 00 00  	mv	a7, zero
8000202c: 13 08 00 00  	mv	a6, zero
80002030: 93 02 00 00  	mv	t0, zero
80002034: 13 03 00 00  	mv	t1, zero
80002038: 93 03 00 00  	mv	t2, zero
8000203c: 13 0e 00 00  	mv	t3, zero
80002040: 13 09 00 00  	mv	s2, zero
80002044: 13 0a 00 00  	mv	s4, zero
80002048: 93 04 80 00  	addi	s1, zero, 8
8000204c: 93 0e 80 01  	addi	t4, zero, 24
;     for (i = 0; i < nk; i++)
80002050: 13 04 00 04  	addi	s0, zero, 64
80002054: 93 0a 00 0c  	addi	s5, zero, 192
80002058: ab a0 8e 00  	scfgw	t4, s0
8000205c: ab a0 54 01  	scfgw	s1, s5
80002060: 93 0e d0 01  	addi	t4, zero, 29
80002064: 13 04 00 06  	addi	s0, zero, 96
80002068: 93 0a 00 0e  	addi	s5, zero, 224
8000206c: ab a0 8e 00  	scfgw	t4, s0
80002070: ab a0 54 01  	scfgw	s1, s5
80002074: 93 04 00 02  	addi	s1, zero, 32
80002078: ab 20 90 00  	scfgw	zero, s1
8000207c: 2b 20 05 3a  	scfgwi	a0, 928
80002080: 73 e0 00 7c  	csrsi	1984, 1
80002084: b7 84 eb 51  	lui	s1, 335544
80002088: 93 84 f4 51  	addi	s1, s1, 1311

8000208c <.LBB0_157>:
8000208c: 17 44 00 00  	auipc	s0, 4
80002090: 13 04 c4 af  	addi	s0, s0, -1284
80002094: 87 31 04 00  	fld	ft3, 0(s0)
80002098: 93 0e 90 01  	addi	t4, zero, 25
8000209c: 53 02 00 d2  	fcvt.d.w	ft4, zero
;             B[i][j] = (double) (i*(j+2) % nj) / nj;
800020a0: b3 3a 96 02  	mulhu	s5, a2, s1
800020a4: 13 d5 3a 00  	srli	a0, s5, 3
800020a8: 33 05 d5 03  	mul	a0, a0, t4
800020ac: 33 05 a6 40  	sub	a0, a2, a0
800020b0: d3 02 05 d2  	fcvt.d.w	ft5, a0
800020b4: 33 b5 96 02  	mulhu	a0, a3, s1
800020b8: 13 55 35 00  	srli	a0, a0, 3
800020bc: 33 05 d5 03  	mul	a0, a0, t4
800020c0: 33 85 a6 40  	sub	a0, a3, a0
800020c4: 53 03 05 d2  	fcvt.d.w	ft6, a0
800020c8: 33 35 97 02  	mulhu	a0, a4, s1
800020cc: 13 55 35 00  	srli	a0, a0, 3
800020d0: 33 05 d5 03  	mul	a0, a0, t4
800020d4: 33 05 a7 40  	sub	a0, a4, a0
800020d8: d3 03 05 d2  	fcvt.d.w	ft7, a0
800020dc: 33 b5 97 02  	mulhu	a0, a5, s1
800020e0: 13 55 35 00  	srli	a0, a0, 3
800020e4: 33 05 d5 03  	mul	a0, a0, t4
800020e8: 33 85 a7 40  	sub	a0, a5, a0
800020ec: 53 05 05 d2  	fcvt.d.w	fa0, a0
800020f0: 33 b5 95 02  	mulhu	a0, a1, s1
800020f4: 13 55 35 00  	srli	a0, a0, 3
800020f8: 33 05 d5 03  	mul	a0, a0, t4
800020fc: 33 85 a5 40  	sub	a0, a1, a0
80002100: d3 05 05 d2  	fcvt.d.w	fa1, a0
80002104: 83 2a 41 09  	lw	s5, 148(sp)
80002108: 33 b5 9a 02  	mulhu	a0, s5, s1
8000210c: 13 55 35 00  	srli	a0, a0, 3
80002110: 33 05 d5 03  	mul	a0, a0, t4
80002114: 33 85 aa 40  	sub	a0, s5, a0
80002118: 53 06 05 d2  	fcvt.d.w	fa2, a0
8000211c: 33 35 9f 02  	mulhu	a0, t5, s1
80002120: 13 55 35 00  	srli	a0, a0, 3
80002124: 33 05 d5 03  	mul	a0, a0, t4
80002128: 33 05 af 40  	sub	a0, t5, a0
8000212c: d3 06 05 d2  	fcvt.d.w	fa3, a0
80002130: 33 b5 9f 02  	mulhu	a0, t6, s1
80002134: 13 55 35 00  	srli	a0, a0, 3
80002138: 33 05 d5 03  	mul	a0, a0, t4
8000213c: 33 85 af 40  	sub	a0, t6, a0
80002140: 53 07 05 d2  	fcvt.d.w	fa4, a0
80002144: 33 b5 9b 02  	mulhu	a0, s7, s1
80002148: 13 55 35 00  	srli	a0, a0, 3
8000214c: 33 05 d5 03  	mul	a0, a0, t4
80002150: 33 85 ab 40  	sub	a0, s7, a0
80002154: d3 07 05 d2  	fcvt.d.w	fa5, a0
80002158: 33 35 9c 02  	mulhu	a0, s8, s1
8000215c: 13 55 35 00  	srli	a0, a0, 3
80002160: 33 05 d5 03  	mul	a0, a0, t4
80002164: 33 05 ac 40  	sub	a0, s8, a0
80002168: 53 08 05 d2  	fcvt.d.w	fa6, a0
8000216c: 33 b5 9c 02  	mulhu	a0, s9, s1
80002170: 13 55 35 00  	srli	a0, a0, 3
80002174: 33 05 d5 03  	mul	a0, a0, t4
80002178: 33 85 ac 40  	sub	a0, s9, a0
8000217c: d3 08 05 d2  	fcvt.d.w	fa7, a0
80002180: 33 35 9d 02  	mulhu	a0, s10, s1
80002184: 13 55 35 00  	srli	a0, a0, 3
80002188: 33 05 d5 03  	mul	a0, a0, t4
8000218c: 33 05 ad 40  	sub	a0, s10, a0
80002190: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80002194: 33 b5 9d 02  	mulhu	a0, s11, s1
80002198: 13 55 35 00  	srli	a0, a0, 3
8000219c: 33 05 d5 03  	mul	a0, a0, t4
800021a0: 33 85 ad 40  	sub	a0, s11, a0
800021a4: d3 0e 05 d2  	fcvt.d.w	ft9, a0
800021a8: 33 b5 90 02  	mulhu	a0, ra, s1
800021ac: 13 55 35 00  	srli	a0, a0, 3
800021b0: 33 05 d5 03  	mul	a0, a0, t4
800021b4: 33 85 a0 40  	sub	a0, ra, a0
800021b8: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800021bc: 33 b5 99 02  	mulhu	a0, s3, s1
800021c0: 13 55 35 00  	srli	a0, a0, 3
800021c4: 33 05 d5 03  	mul	a0, a0, t4
800021c8: 33 85 a9 40  	sub	a0, s3, a0
800021cc: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800021d0: 33 35 9b 02  	mulhu	a0, s6, s1
800021d4: 13 55 35 00  	srli	a0, a0, 3
800021d8: 33 05 d5 03  	mul	a0, a0, t4
800021dc: 33 05 ab 40  	sub	a0, s6, a0
800021e0: 53 04 05 d2  	fcvt.d.w	fs0, a0
800021e4: 33 b5 98 02  	mulhu	a0, a7, s1
800021e8: 13 55 35 00  	srli	a0, a0, 3
800021ec: 33 05 d5 03  	mul	a0, a0, t4
800021f0: 33 85 a8 40  	sub	a0, a7, a0
800021f4: d3 04 05 d2  	fcvt.d.w	fs1, a0
800021f8: 33 35 98 02  	mulhu	a0, a6, s1
800021fc: 13 55 35 00  	srli	a0, a0, 3
80002200: 33 05 d5 03  	mul	a0, a0, t4
80002204: 33 05 a8 40  	sub	a0, a6, a0
80002208: 53 09 05 d2  	fcvt.d.w	fs2, a0
8000220c: 33 b5 92 02  	mulhu	a0, t0, s1
80002210: 13 55 35 00  	srli	a0, a0, 3
80002214: 33 05 d5 03  	mul	a0, a0, t4
80002218: 33 85 a2 40  	sub	a0, t0, a0
8000221c: d3 09 05 d2  	fcvt.d.w	fs3, a0
80002220: 33 35 93 02  	mulhu	a0, t1, s1
80002224: 13 55 35 00  	srli	a0, a0, 3
80002228: 33 05 d5 03  	mul	a0, a0, t4
8000222c: 33 05 a3 40  	sub	a0, t1, a0
80002230: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80002234: 33 b5 93 02  	mulhu	a0, t2, s1
80002238: 13 55 35 00  	srli	a0, a0, 3
8000223c: 33 05 d5 03  	mul	a0, a0, t4
80002240: 33 85 a3 40  	sub	a0, t2, a0
80002244: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80002248: 33 35 9e 02  	mulhu	a0, t3, s1
8000224c: 13 55 35 00  	srli	a0, a0, 3
80002250: 33 05 d5 03  	mul	a0, a0, t4
80002254: 33 05 ae 40  	sub	a0, t3, a0
80002258: 53 0b 05 d2  	fcvt.d.w	fs6, a0
8000225c: 33 35 99 02  	mulhu	a0, s2, s1
80002260: 13 55 35 00  	srli	a0, a0, 3
80002264: 33 05 d5 03  	mul	a0, a0, t4
80002268: 33 05 a9 40  	sub	a0, s2, a0
8000226c: d3 0b 05 d2  	fcvt.d.w	fs7, a0
80002270: 33 35 9a 02  	mulhu	a0, s4, s1
80002274: 13 55 35 00  	srli	a0, a0, 3
80002278: 13 84 05 00  	mv	s0, a1
8000227c: 93 85 07 00  	mv	a1, a5
80002280: 93 07 07 00  	mv	a5, a4
80002284: 13 87 06 00  	mv	a4, a3
80002288: 93 06 06 00  	mv	a3, a2
8000228c: 13 06 70 fe  	addi	a2, zero, -25
80002290: 33 05 c5 02  	mul	a0, a0, a2
80002294: 13 86 06 00  	mv	a2, a3
80002298: 93 06 07 00  	mv	a3, a4
8000229c: 13 87 07 00  	mv	a4, a5
800022a0: 93 87 05 00  	mv	a5, a1
800022a4: 93 05 04 00  	mv	a1, s0
800022a8: 33 05 aa 00  	add	a0, s4, a0
800022ac: 53 0c 05 d2  	fcvt.d.w	fs8, a0
800022b0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800022b4: 53 80 52 22  	fmv.d	ft0, ft5
800022b8: d3 72 33 12  	fmul.d	ft5, ft6, ft3
800022bc: 53 80 52 22  	fmv.d	ft0, ft5
800022c0: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
800022c4: 53 80 52 22  	fmv.d	ft0, ft5
800022c8: d3 72 35 12  	fmul.d	ft5, fa0, ft3
800022cc: 53 80 52 22  	fmv.d	ft0, ft5
800022d0: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
800022d4: 53 80 52 22  	fmv.d	ft0, ft5
800022d8: d3 72 36 12  	fmul.d	ft5, fa2, ft3
800022dc: 53 80 52 22  	fmv.d	ft0, ft5
800022e0: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
800022e4: 53 80 52 22  	fmv.d	ft0, ft5
800022e8: d3 72 37 12  	fmul.d	ft5, fa4, ft3
800022ec: 53 80 52 22  	fmv.d	ft0, ft5
800022f0: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
800022f4: 53 80 52 22  	fmv.d	ft0, ft5
800022f8: d3 72 38 12  	fmul.d	ft5, fa6, ft3
800022fc: 53 80 52 22  	fmv.d	ft0, ft5
80002300: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80002304: 53 80 52 22  	fmv.d	ft0, ft5
80002308: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
8000230c: 53 80 52 22  	fmv.d	ft0, ft5
80002310: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80002314: 53 80 52 22  	fmv.d	ft0, ft5
80002318: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
8000231c: 53 80 52 22  	fmv.d	ft0, ft5
80002320: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80002324: 53 80 52 22  	fmv.d	ft0, ft5
80002328: d3 72 34 12  	fmul.d	ft5, fs0, ft3
8000232c: 53 80 52 22  	fmv.d	ft0, ft5
80002330: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80002334: 53 80 52 22  	fmv.d	ft0, ft5
80002338: d3 72 39 12  	fmul.d	ft5, fs2, ft3
8000233c: 53 80 52 22  	fmv.d	ft0, ft5
80002340: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80002344: 53 80 52 22  	fmv.d	ft0, ft5
80002348: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
8000234c: 53 80 52 22  	fmv.d	ft0, ft5
80002350: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80002354: 53 80 52 22  	fmv.d	ft0, ft5
80002358: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
8000235c: 53 80 52 22  	fmv.d	ft0, ft5
80002360: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80002364: 53 80 52 22  	fmv.d	ft0, ft5
80002368: 53 00 42 22  	fmv.d	ft0, ft4
8000236c: d3 72 3c 12  	fmul.d	ft5, fs8, ft3
80002370: 53 80 52 22  	fmv.d	ft0, ft5
;     for (i = 0; i < nk; i++)
80002374: 13 0a aa 01  	addi	s4, s4, 26
80002378: 13 09 89 01  	addi	s2, s2, 24
8000237c: 13 0e 7e 01  	addi	t3, t3, 23
80002380: 93 83 63 01  	addi	t2, t2, 22
80002384: 13 03 53 01  	addi	t1, t1, 21
80002388: 93 82 42 01  	addi	t0, t0, 20
8000238c: 13 08 38 01  	addi	a6, a6, 19
80002390: 93 88 28 01  	addi	a7, a7, 18
80002394: 13 0b 1b 01  	addi	s6, s6, 17
80002398: 93 89 09 01  	addi	s3, s3, 16
8000239c: 93 80 f0 00  	addi	ra, ra, 15
800023a0: 93 8d ed 00  	addi	s11, s11, 14
800023a4: 13 0d dd 00  	addi	s10, s10, 13
800023a8: 93 8c cc 00  	addi	s9, s9, 12
800023ac: 13 0c bc 00  	addi	s8, s8, 11
800023b0: 93 8b ab 00  	addi	s7, s7, 10
800023b4: 93 8f 9f 00  	addi	t6, t6, 9
800023b8: 13 0f 8f 00  	addi	t5, t5, 8
800023bc: 93 8a 7a 00  	addi	s5, s5, 7
800023c0: 23 2a 51 09  	sw	s5, 148(sp)
800023c4: 93 05 64 00  	addi	a1, s0, 6
800023c8: 93 87 57 00  	addi	a5, a5, 5
800023cc: 13 07 47 00  	addi	a4, a4, 4
800023d0: 93 86 36 00  	addi	a3, a3, 3
800023d4: 13 06 26 00  	addi	a2, a2, 2
800023d8: 13 05 c0 30  	addi	a0, zero, 780
800023dc: e3 12 aa cc  	bne	s4, a0, 0x800020a0 <.LBB0_157+0x14>
800023e0: 73 f0 00 7c  	csrci	1984, 1
800023e4: 6f 00 00 45  	j	0x80002834 <.LBB0_158+0x3e0>
800023e8: 23 28 01 08  	sw	zero, 144(sp)
800023ec: 23 26 01 08  	sw	zero, 140(sp)
800023f0: 23 24 01 08  	sw	zero, 136(sp)
800023f4: 23 22 01 08  	sw	zero, 132(sp)
800023f8: 23 20 01 08  	sw	zero, 128(sp)
800023fc: 23 2e 01 06  	sw	zero, 124(sp)
80002400: 13 0f 00 00  	mv	t5, zero
80002404: 93 0f 00 00  	mv	t6, zero
80002408: 13 09 00 00  	mv	s2, zero
8000240c: 93 08 00 00  	mv	a7, zero
80002410: 93 09 00 00  	mv	s3, zero
80002414: 13 0a 00 00  	mv	s4, zero
80002418: 93 0a 00 00  	mv	s5, zero
8000241c: 13 0b 00 00  	mv	s6, zero
80002420: 93 0b 00 00  	mv	s7, zero
80002424: 13 0c 00 00  	mv	s8, zero
80002428: 93 0c 00 00  	mv	s9, zero
8000242c: 13 0d 00 00  	mv	s10, zero
80002430: 93 0d 00 00  	mv	s11, zero
80002434: 13 08 00 00  	mv	a6, zero
80002438: 93 02 00 00  	mv	t0, zero
8000243c: 93 03 00 00  	mv	t2, zero
80002440: 93 06 00 00  	mv	a3, zero
80002444: 13 0e 00 00  	mv	t3, zero
;     for (i = 0; i < nk; i++)
80002448: 13 85 00 06  	addi	a0, ra, 96
8000244c: b7 85 eb 51  	lui	a1, 335544
80002450: 93 85 f5 51  	addi	a1, a1, 1311

80002454 <.LBB0_158>:
80002454: 17 36 00 00  	auipc	a2, 3
80002458: 13 06 46 73  	addi	a2, a2, 1844
8000245c: 07 30 06 00  	fld	ft0, 0(a2)
80002460: 93 0e 90 01  	addi	t4, zero, 25
80002464: 23 2a d1 08  	sw	a3, 148(sp)
;             B[i][j] = (double) (i*(j+2) % nj) / nj;
80002468: 03 26 41 09  	lw	a2, 148(sp)
8000246c: b3 36 b6 02  	mulhu	a3, a2, a1
80002470: 93 d6 36 00  	srli	a3, a3, 3
80002474: b3 86 d6 03  	mul	a3, a3, t4
80002478: 03 26 41 09  	lw	a2, 148(sp)
8000247c: b3 00 d6 40  	sub	ra, a2, a3
80002480: d3 80 00 d2  	fcvt.d.w	ft1, ra
80002484: b3 b6 b3 02  	mulhu	a3, t2, a1
80002488: 93 d6 36 00  	srli	a3, a3, 3
8000248c: b3 86 d6 03  	mul	a3, a3, t4
80002490: b3 86 d3 40  	sub	a3, t2, a3
80002494: 53 81 06 d2  	fcvt.d.w	ft2, a3
80002498: b3 b6 b2 02  	mulhu	a3, t0, a1
8000249c: 93 d6 36 00  	srli	a3, a3, 3
800024a0: b3 86 d6 03  	mul	a3, a3, t4
800024a4: b3 86 d2 40  	sub	a3, t0, a3
800024a8: d3 81 06 d2  	fcvt.d.w	ft3, a3
800024ac: b3 b6 bd 02  	mulhu	a3, s11, a1
800024b0: 93 d6 36 00  	srli	a3, a3, 3
800024b4: b3 86 d6 03  	mul	a3, a3, t4
800024b8: b3 86 dd 40  	sub	a3, s11, a3
800024bc: 53 82 06 d2  	fcvt.d.w	ft4, a3
800024c0: b3 b6 bc 02  	mulhu	a3, s9, a1
800024c4: 93 d6 36 00  	srli	a3, a3, 3
800024c8: b3 86 d6 03  	mul	a3, a3, t4
800024cc: b3 86 dc 40  	sub	a3, s9, a3
800024d0: d3 82 06 d2  	fcvt.d.w	ft5, a3
800024d4: b3 b6 bb 02  	mulhu	a3, s7, a1
800024d8: 93 d6 36 00  	srli	a3, a3, 3
800024dc: b3 86 d6 03  	mul	a3, a3, t4
800024e0: b3 86 db 40  	sub	a3, s7, a3
800024e4: 53 83 06 d2  	fcvt.d.w	ft6, a3
800024e8: b3 b6 ba 02  	mulhu	a3, s5, a1
800024ec: 93 d6 36 00  	srli	a3, a3, 3
800024f0: b3 86 d6 03  	mul	a3, a3, t4
800024f4: b3 86 da 40  	sub	a3, s5, a3
800024f8: d3 83 06 d2  	fcvt.d.w	ft7, a3
800024fc: b3 b6 b9 02  	mulhu	a3, s3, a1
80002500: 93 d6 36 00  	srli	a3, a3, 3
80002504: b3 86 d6 03  	mul	a3, a3, t4
80002508: b3 86 d9 40  	sub	a3, s3, a3
8000250c: 53 85 06 d2  	fcvt.d.w	fa0, a3
80002510: b3 36 b9 02  	mulhu	a3, s2, a1
80002514: 93 d6 36 00  	srli	a3, a3, 3
80002518: b3 86 d6 03  	mul	a3, a3, t4
8000251c: b3 06 d9 40  	sub	a3, s2, a3
80002520: d3 85 06 d2  	fcvt.d.w	fa1, a3
80002524: b3 36 bf 02  	mulhu	a3, t5, a1
80002528: 93 d6 36 00  	srli	a3, a3, 3
8000252c: b3 86 d6 03  	mul	a3, a3, t4
80002530: b3 06 df 40  	sub	a3, t5, a3
80002534: 53 86 06 d2  	fcvt.d.w	fa2, a3
80002538: 83 20 01 08  	lw	ra, 128(sp)
8000253c: b3 b6 b0 02  	mulhu	a3, ra, a1
80002540: 93 d6 36 00  	srli	a3, a3, 3
80002544: b3 86 d6 03  	mul	a3, a3, t4
80002548: b3 86 d0 40  	sub	a3, ra, a3
8000254c: d3 86 06 d2  	fcvt.d.w	fa3, a3
80002550: 83 24 81 08  	lw	s1, 136(sp)
80002554: b3 b6 b4 02  	mulhu	a3, s1, a1
80002558: 93 d6 36 00  	srli	a3, a3, 3
8000255c: b3 86 d6 03  	mul	a3, a3, t4
80002560: b3 86 d4 40  	sub	a3, s1, a3
80002564: 53 87 06 d2  	fcvt.d.w	fa4, a3
80002568: 03 27 01 09  	lw	a4, 144(sp)
8000256c: b3 36 b7 02  	mulhu	a3, a4, a1
80002570: 93 d6 36 00  	srli	a3, a3, 3
80002574: b3 86 d6 03  	mul	a3, a3, t4
80002578: b3 06 d7 40  	sub	a3, a4, a3
8000257c: d3 87 06 d2  	fcvt.d.w	fa5, a3
80002580: 83 27 c1 08  	lw	a5, 140(sp)
80002584: b3 b6 b7 02  	mulhu	a3, a5, a1
80002588: 93 d6 36 00  	srli	a3, a3, 3
8000258c: b3 86 d6 03  	mul	a3, a3, t4
80002590: b3 86 d7 40  	sub	a3, a5, a3
80002594: 53 88 06 d2  	fcvt.d.w	fa6, a3
80002598: 03 24 41 08  	lw	s0, 132(sp)
8000259c: b3 36 b4 02  	mulhu	a3, s0, a1
800025a0: 93 d6 36 00  	srli	a3, a3, 3
800025a4: b3 86 d6 03  	mul	a3, a3, t4
800025a8: b3 06 d4 40  	sub	a3, s0, a3
800025ac: d3 88 06 d2  	fcvt.d.w	fa7, a3
800025b0: 03 26 c1 07  	lw	a2, 124(sp)
800025b4: b3 36 b6 02  	mulhu	a3, a2, a1
800025b8: 93 d6 36 00  	srli	a3, a3, 3
800025bc: b3 86 d6 03  	mul	a3, a3, t4
800025c0: b3 06 d6 40  	sub	a3, a2, a3
800025c4: 53 8e 06 d2  	fcvt.d.w	ft8, a3
800025c8: b3 b6 bf 02  	mulhu	a3, t6, a1
800025cc: 93 d6 36 00  	srli	a3, a3, 3
800025d0: b3 86 d6 03  	mul	a3, a3, t4
800025d4: b3 86 df 40  	sub	a3, t6, a3
800025d8: d3 8e 06 d2  	fcvt.d.w	ft9, a3
800025dc: b3 b6 b8 02  	mulhu	a3, a7, a1
800025e0: 93 d6 36 00  	srli	a3, a3, 3
800025e4: b3 86 d6 03  	mul	a3, a3, t4
800025e8: b3 86 d8 40  	sub	a3, a7, a3
800025ec: 53 8f 06 d2  	fcvt.d.w	ft10, a3
800025f0: b3 36 ba 02  	mulhu	a3, s4, a1
800025f4: 93 d6 36 00  	srli	a3, a3, 3
800025f8: b3 86 d6 03  	mul	a3, a3, t4
800025fc: b3 06 da 40  	sub	a3, s4, a3
80002600: d3 8f 06 d2  	fcvt.d.w	ft11, a3
80002604: b3 36 bb 02  	mulhu	a3, s6, a1
80002608: 93 d6 36 00  	srli	a3, a3, 3
8000260c: b3 86 d6 03  	mul	a3, a3, t4
80002610: b3 06 db 40  	sub	a3, s6, a3
80002614: 53 84 06 d2  	fcvt.d.w	fs0, a3
80002618: b3 36 bc 02  	mulhu	a3, s8, a1
8000261c: 93 d6 36 00  	srli	a3, a3, 3
80002620: b3 86 d6 03  	mul	a3, a3, t4
80002624: b3 06 dc 40  	sub	a3, s8, a3
80002628: d3 84 06 d2  	fcvt.d.w	fs1, a3
8000262c: b3 36 bd 02  	mulhu	a3, s10, a1
80002630: 93 d6 36 00  	srli	a3, a3, 3
80002634: b3 86 d6 03  	mul	a3, a3, t4
80002638: b3 06 dd 40  	sub	a3, s10, a3
8000263c: 53 89 06 d2  	fcvt.d.w	fs2, a3
80002640: b3 36 b8 02  	mulhu	a3, a6, a1
80002644: 93 d6 36 00  	srli	a3, a3, 3
80002648: b3 86 d6 03  	mul	a3, a3, t4
8000264c: b3 06 d8 40  	sub	a3, a6, a3
80002650: d3 89 06 d2  	fcvt.d.w	fs3, a3
80002654: b3 36 be 02  	mulhu	a3, t3, a1
80002658: 93 d6 36 00  	srli	a3, a3, 3
8000265c: 13 83 02 00  	mv	t1, t0
80002660: 93 02 08 00  	mv	t0, a6
80002664: 13 88 0d 00  	mv	a6, s11
80002668: 93 0d 0d 00  	mv	s11, s10
8000266c: 13 8d 0c 00  	mv	s10, s9
80002670: 93 0c 0c 00  	mv	s9, s8
80002674: 13 8c 0b 00  	mv	s8, s7
80002678: 93 0b 0b 00  	mv	s7, s6
8000267c: 13 8b 0a 00  	mv	s6, s5
80002680: 93 0a 0a 00  	mv	s5, s4
80002684: 13 8a 09 00  	mv	s4, s3
80002688: 93 89 08 00  	mv	s3, a7
8000268c: 93 08 09 00  	mv	a7, s2
80002690: 13 89 0f 00  	mv	s2, t6
80002694: 93 0f 0f 00  	mv	t6, t5
80002698: 13 0f 70 fe  	addi	t5, zero, -25
8000269c: b3 86 e6 03  	mul	a3, a3, t5
800026a0: 13 8f 0f 00  	mv	t5, t6
800026a4: 93 0f 09 00  	mv	t6, s2
800026a8: 13 89 08 00  	mv	s2, a7
800026ac: 93 88 09 00  	mv	a7, s3
800026b0: 93 09 0a 00  	mv	s3, s4
800026b4: 13 8a 0a 00  	mv	s4, s5
800026b8: 93 0a 0b 00  	mv	s5, s6
800026bc: 13 8b 0b 00  	mv	s6, s7
800026c0: 93 0b 0c 00  	mv	s7, s8
800026c4: 13 8c 0c 00  	mv	s8, s9
800026c8: 93 0c 0d 00  	mv	s9, s10
800026cc: 13 8d 0d 00  	mv	s10, s11
800026d0: 93 0d 08 00  	mv	s11, a6
800026d4: 13 88 02 00  	mv	a6, t0
800026d8: 93 02 03 00  	mv	t0, t1
800026dc: b3 06 de 00  	add	a3, t3, a3
800026e0: 53 8a 06 d2  	fcvt.d.w	fs4, a3
800026e4: 83 26 41 09  	lw	a3, 148(sp)
800026e8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800026ec: 27 30 15 fa  	fsd	ft1, -96(a0)
800026f0: d3 70 01 12  	fmul.d	ft1, ft2, ft0
800026f4: 27 34 15 fa  	fsd	ft1, -88(a0)
800026f8: d3 f0 01 12  	fmul.d	ft1, ft3, ft0
800026fc: 27 38 15 fa  	fsd	ft1, -80(a0)
80002700: d3 70 02 12  	fmul.d	ft1, ft4, ft0
80002704: 27 3c 15 fa  	fsd	ft1, -72(a0)
80002708: d3 f0 02 12  	fmul.d	ft1, ft5, ft0
8000270c: 27 30 15 fc  	fsd	ft1, -64(a0)
80002710: d3 70 03 12  	fmul.d	ft1, ft6, ft0
80002714: 27 34 15 fc  	fsd	ft1, -56(a0)
80002718: d3 f0 03 12  	fmul.d	ft1, ft7, ft0
8000271c: 27 38 15 fc  	fsd	ft1, -48(a0)
80002720: d3 70 05 12  	fmul.d	ft1, fa0, ft0
80002724: 27 3c 15 fc  	fsd	ft1, -40(a0)
80002728: d3 f0 05 12  	fmul.d	ft1, fa1, ft0
8000272c: 27 30 15 fe  	fsd	ft1, -32(a0)
80002730: d3 70 06 12  	fmul.d	ft1, fa2, ft0
80002734: 27 34 15 fe  	fsd	ft1, -24(a0)
80002738: d3 f0 06 12  	fmul.d	ft1, fa3, ft0
8000273c: 27 38 15 fe  	fsd	ft1, -16(a0)
80002740: d3 70 07 12  	fmul.d	ft1, fa4, ft0
80002744: 27 3c 15 fe  	fsd	ft1, -8(a0)
80002748: d3 f0 07 12  	fmul.d	ft1, fa5, ft0
8000274c: 27 30 15 00  	fsd	ft1, 0(a0)
80002750: d3 70 08 12  	fmul.d	ft1, fa6, ft0
80002754: 27 34 15 00  	fsd	ft1, 8(a0)
80002758: d3 f0 08 12  	fmul.d	ft1, fa7, ft0
8000275c: 27 38 15 00  	fsd	ft1, 16(a0)
80002760: d3 70 0e 12  	fmul.d	ft1, ft8, ft0
80002764: 27 3c 15 00  	fsd	ft1, 24(a0)
80002768: d3 f0 0e 12  	fmul.d	ft1, ft9, ft0
8000276c: 27 30 15 02  	fsd	ft1, 32(a0)
80002770: d3 70 0f 12  	fmul.d	ft1, ft10, ft0
80002774: 27 34 15 02  	fsd	ft1, 40(a0)
80002778: d3 f0 0f 12  	fmul.d	ft1, ft11, ft0
8000277c: 27 38 15 02  	fsd	ft1, 48(a0)
80002780: d3 70 04 12  	fmul.d	ft1, fs0, ft0
80002784: 27 3c 15 02  	fsd	ft1, 56(a0)
80002788: d3 f0 04 12  	fmul.d	ft1, fs1, ft0
8000278c: 27 30 15 04  	fsd	ft1, 64(a0)
80002790: d3 70 09 12  	fmul.d	ft1, fs2, ft0
80002794: 27 34 15 04  	fsd	ft1, 72(a0)
80002798: d3 f0 09 12  	fmul.d	ft1, fs3, ft0
8000279c: 27 38 15 04  	fsd	ft1, 80(a0)
800027a0: 23 2e 05 04  	sw	zero, 92(a0)
800027a4: 23 2c 05 04  	sw	zero, 88(a0)
800027a8: d3 70 0a 12  	fmul.d	ft1, fs4, ft0
800027ac: 27 30 15 06  	fsd	ft1, 96(a0)
;     for (i = 0; i < nk; i++)
800027b0: 13 0e ae 01  	addi	t3, t3, 26
800027b4: 93 86 26 00  	addi	a3, a3, 2
800027b8: 93 83 33 00  	addi	t2, t2, 3
800027bc: 93 02 43 00  	addi	t0, t1, 4
800027c0: 13 08 88 01  	addi	a6, a6, 24
800027c4: 93 8d 5d 00  	addi	s11, s11, 5
800027c8: 13 0d 7d 01  	addi	s10, s10, 23
800027cc: 93 8c 6c 00  	addi	s9, s9, 6
800027d0: 13 0c 6c 01  	addi	s8, s8, 22
800027d4: 93 8b 7b 00  	addi	s7, s7, 7
800027d8: 13 0b 5b 01  	addi	s6, s6, 21
800027dc: 93 8a 8a 00  	addi	s5, s5, 8
800027e0: 13 0a 4a 01  	addi	s4, s4, 20
800027e4: 93 89 99 00  	addi	s3, s3, 9
800027e8: 93 88 38 01  	addi	a7, a7, 19
800027ec: 13 09 a9 00  	addi	s2, s2, 10
800027f0: 93 8f 2f 01  	addi	t6, t6, 18
800027f4: 13 0f bf 00  	addi	t5, t5, 11
800027f8: 13 06 16 01  	addi	a2, a2, 17
800027fc: 23 2e c1 06  	sw	a2, 124(sp)
80002800: 93 80 c0 00  	addi	ra, ra, 12
80002804: 23 20 11 08  	sw	ra, 128(sp)
80002808: 13 04 04 01  	addi	s0, s0, 16
8000280c: 23 22 81 08  	sw	s0, 132(sp)
80002810: 93 84 d4 00  	addi	s1, s1, 13
80002814: 23 24 91 08  	sw	s1, 136(sp)
80002818: 93 87 f7 00  	addi	a5, a5, 15
8000281c: 23 26 f1 08  	sw	a5, 140(sp)
80002820: 13 05 85 0c  	addi	a0, a0, 200
80002824: 13 07 e7 00  	addi	a4, a4, 14
80002828: 23 28 e1 08  	sw	a4, 144(sp)
8000282c: 13 06 c0 30  	addi	a2, zero, 780
80002830: e3 1a ce c2  	bne	t3, a2, 0x80002464 <.LBB0_158+0x10>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002834: 73 25 00 b0  	csrr	a0, mcycle
80002838: 23 2e a1 06  	sw	a0, 124(sp)
8000283c: 37 15 00 00  	lui	a0, 1
80002840: 13 05 85 f9  	addi	a0, a0, -104
80002844: 03 26 c1 00  	lw	a2, 12(sp)
;     for (i = 0; i < ni; i++) {
80002848: b3 05 a6 00  	add	a1, a2, a0
8000284c: b3 b6 c5 00  	sltu	a3, a1, a2
80002850: 93 84 05 32  	addi	s1, a1, 800
80002854: b3 b5 b4 00  	sltu	a1, s1, a1
80002858: b3 87 b6 00  	add	a5, a3, a1
8000285c: 03 28 81 00  	lw	a6, 8(sp)
80002860: 33 07 a8 00  	add	a4, a6, a0
80002864: b3 36 07 01  	sltu	a3, a4, a6
80002868: 93 05 07 7d  	addi	a1, a4, 2000
8000286c: 33 b7 e5 00  	sltu	a4, a1, a4
80002870: 03 24 81 07  	lw	s0, 120(sp)
80002874: 33 05 a4 00  	add	a0, s0, a0
80002878: 63 86 07 02  	beqz	a5, 0x800028a4 <.LBB0_158+0x450>
8000287c: 93 07 00 00  	mv	a5, zero
80002880: 33 87 e6 00  	add	a4, a3, a4
80002884: 63 66 85 02  	bltu	a0, s0, 0x800028b0 <.LBB0_158+0x45c>
80002888: b3 36 c5 00  	sltu	a3, a0, a2
;     for (i = 0; i < ni; i++) {
8000288c: 63 16 07 02  	bnez	a4, 0x800028b8 <.LBB0_158+0x464>
80002890: b3 b5 85 00  	sltu	a1, a1, s0
;     for (i = 0; i < ni; i++) {
80002894: b3 e6 f6 00  	or	a3, a3, a5
80002898: 63 66 85 02  	bltu	a0, s0, 0x800028c4 <.LBB0_158+0x470>
8000289c: 33 35 05 01  	sltu	a0, a0, a6
800028a0: 6f 00 80 02  	j	0x800028c8 <.LBB0_158+0x474>
800028a4: b3 b7 84 00  	sltu	a5, s1, s0
;     for (i = 0; i < ni; i++) {
800028a8: 33 87 e6 00  	add	a4, a3, a4
800028ac: e3 7e 85 fc  	bgeu	a0, s0, 0x80002888 <.LBB0_158+0x434>
800028b0: 93 06 00 00  	mv	a3, zero
800028b4: e3 0e 07 fc  	beqz	a4, 0x80002890 <.LBB0_158+0x43c>
800028b8: 93 05 00 00  	mv	a1, zero
800028bc: b3 e6 f6 00  	or	a3, a3, a5
800028c0: e3 7e 85 fc  	bgeu	a0, s0, 0x8000289c <.LBB0_158+0x448>
800028c4: 13 05 00 00  	mv	a0, zero
800028c8: 33 65 b5 00  	or	a0, a0, a1
800028cc: 33 f5 a6 00  	and	a0, a3, a0
800028d0: 83 25 41 07  	lw	a1, 116(sp)
800028d4: 33 f5 a5 00  	and	a0, a1, a0
800028d8: 83 25 01 07  	lw	a1, 112(sp)
800028dc: 33 f5 a5 00  	and	a0, a1, a0
800028e0: 63 06 05 4c  	beqz	a0, 0x80002dac <.LBB0_160+0x420>
800028e4: 13 03 00 00  	mv	t1, zero
800028e8: 13 05 80 01  	addi	a0, zero, 24
;     for (i = 0; i < ni; i++) {
800028ec: 93 05 00 04  	addi	a1, zero, 64
800028f0: 93 06 00 0c  	addi	a3, zero, 192
800028f4: ab 20 b5 00  	scfgw	a0, a1
800028f8: ab 20 d0 00  	scfgw	zero, a3
800028fc: 93 05 80 00  	addi	a1, zero, 8
80002900: 93 04 d0 01  	addi	s1, zero, 29
80002904: 93 06 00 06  	addi	a3, zero, 96
80002908: 13 07 00 0e  	addi	a4, zero, 224
8000290c: ab a0 d4 00  	scfgw	s1, a3
80002910: ab a0 e5 00  	scfgw	a1, a4
80002914: 93 06 30 01  	addi	a3, zero, 19
80002918: 13 07 00 08  	addi	a4, zero, 128
8000291c: ab a0 e6 00  	scfgw	a3, a4
80002920: 13 07 00 10  	addi	a4, zero, 256
80002924: ab a0 e5 00  	scfgw	a1, a4
80002928: 13 07 00 02  	addi	a4, zero, 32
8000292c: ab 20 e0 00  	scfgw	zero, a4
80002930: 2b 20 06 34  	scfgwi	a2, 832
80002934: 13 07 10 00  	addi	a4, zero, 1
80002938: 93 07 07 04  	addi	a5, a4, 64
8000293c: ab 20 f5 00  	scfgw	a0, a5
80002940: 13 05 07 0c  	addi	a0, a4, 192
80002944: ab a0 a5 00  	scfgw	a1, a0
80002948: 13 05 07 06  	addi	a0, a4, 96
8000294c: 93 07 07 0e  	addi	a5, a4, 224
80002950: ab a0 a4 00  	scfgw	s1, a0
80002954: ab a0 f5 00  	scfgw	a1, a5
80002958: 37 f5 ff ff  	lui	a0, 1048575
8000295c: 13 05 85 89  	addi	a0, a0, -1896
80002960: 93 05 07 08  	addi	a1, a4, 128
80002964: 13 06 07 10  	addi	a2, a4, 256
80002968: ab a0 b6 00  	scfgw	a3, a1
8000296c: ab 20 c5 00  	scfgw	a0, a2
80002970: 13 05 07 02  	addi	a0, a4, 32
80002974: ab 20 a0 00  	scfgw	zero, a0
80002978: 2b 20 18 34  	scfgwi	a6, 833

8000297c <.LBB0_159>:
8000297c: 17 35 00 00  	auipc	a0, 3
80002980: 13 05 45 21  	addi	a0, a0, 532
80002984: 87 31 05 00  	fld	ft3, 0(a0)
;     for (i = 0; i < ni; i++) {
80002988: 73 e0 00 7c  	csrsi	1984, 1

8000298c <.LBB0_160>:
8000298c: 97 32 00 00  	auipc	t0, 3
80002990: 93 82 c2 20  	addi	t0, t0, 524
;             C[i][j] *= beta;
80002994: 13 05 80 0c  	addi	a0, zero, 200
80002998: 33 05 a3 02  	mul	a0, t1, a0
8000299c: b3 06 a4 00  	add	a3, s0, a0
800029a0: 07 b2 06 00  	fld	ft4, 0(a3)
800029a4: 87 b2 86 00  	fld	ft5, 8(a3)
800029a8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029ac: 27 b0 46 00  	fsd	ft4, 0(a3)
800029b0: 07 b2 06 01  	fld	ft4, 16(a3)
800029b4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029b8: 27 b4 56 00  	fsd	ft5, 8(a3)
800029bc: 87 b2 86 01  	fld	ft5, 24(a3)
800029c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029c4: 27 b8 46 00  	fsd	ft4, 16(a3)
800029c8: 07 b2 06 02  	fld	ft4, 32(a3)
800029cc: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029d0: 27 bc 56 00  	fsd	ft5, 24(a3)
800029d4: 87 b2 86 02  	fld	ft5, 40(a3)
800029d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029dc: 27 b0 46 02  	fsd	ft4, 32(a3)
800029e0: 07 b2 06 03  	fld	ft4, 48(a3)
800029e4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800029e8: 27 b4 56 02  	fsd	ft5, 40(a3)
800029ec: 87 b2 86 03  	fld	ft5, 56(a3)
800029f0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800029f4: 27 b8 46 02  	fsd	ft4, 48(a3)
800029f8: 07 b2 06 04  	fld	ft4, 64(a3)
800029fc: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a00: 27 bc 56 02  	fsd	ft5, 56(a3)
80002a04: 87 b2 86 04  	fld	ft5, 72(a3)
80002a08: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002a0c: 27 b0 46 04  	fsd	ft4, 64(a3)
80002a10: 07 b2 06 05  	fld	ft4, 80(a3)
80002a14: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a18: 27 b4 56 04  	fsd	ft5, 72(a3)
80002a1c: 87 b2 86 05  	fld	ft5, 88(a3)
80002a20: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002a24: 27 b8 46 04  	fsd	ft4, 80(a3)
80002a28: 07 b2 06 06  	fld	ft4, 96(a3)
80002a2c: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a30: 27 bc 56 04  	fsd	ft5, 88(a3)
80002a34: 87 b2 86 06  	fld	ft5, 104(a3)
80002a38: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002a3c: 27 b0 46 06  	fsd	ft4, 96(a3)
80002a40: 07 b2 06 07  	fld	ft4, 112(a3)
80002a44: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80002a48: 27 b4 56 06  	fsd	ft5, 104(a3)
80002a4c: 87 b2 86 07  	fld	ft5, 120(a3)
80002a50: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002a54: 07 b3 06 08  	fld	ft6, 128(a3)
80002a58: 27 b8 46 06  	fsd	ft4, 112(a3)
80002a5c: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80002a60: 27 bc 46 06  	fsd	ft4, 120(a3)
80002a64: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80002a68: 27 b0 46 08  	fsd	ft4, 128(a3)
80002a6c: 07 b2 86 08  	fld	ft4, 136(a3)
80002a70: 93 83 86 00  	addi	t2, a3, 8
80002a74: 13 8e 06 01  	addi	t3, a3, 16
80002a78: 93 8e 86 01  	addi	t4, a3, 24
80002a7c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002a80: 27 b4 46 08  	fsd	ft4, 136(a3)
80002a84: 07 b2 06 09  	fld	ft4, 144(a3)
80002a88: 13 8f 06 02  	addi	t5, a3, 32
80002a8c: 93 8f 86 02  	addi	t6, a3, 40
80002a90: 13 89 06 03  	addi	s2, a3, 48
80002a94: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002a98: 27 b8 46 08  	fsd	ft4, 144(a3)
80002a9c: 07 b2 86 09  	fld	ft4, 152(a3)
80002aa0: 93 89 86 03  	addi	s3, a3, 56
80002aa4: 13 8a 06 04  	addi	s4, a3, 64
80002aa8: 93 8a 86 04  	addi	s5, a3, 72
80002aac: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002ab0: 27 bc 46 08  	fsd	ft4, 152(a3)
80002ab4: 07 b2 06 0a  	fld	ft4, 160(a3)
80002ab8: 13 8b 06 05  	addi	s6, a3, 80
80002abc: 93 8b 86 05  	addi	s7, a3, 88
80002ac0: 13 88 06 06  	addi	a6, a3, 96
80002ac4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002ac8: 27 b0 46 0a  	fsd	ft4, 160(a3)
80002acc: 07 b2 86 0a  	fld	ft4, 168(a3)
80002ad0: 13 8c 86 06  	addi	s8, a3, 104
80002ad4: 93 8c 06 07  	addi	s9, a3, 112
80002ad8: 13 8d 86 07  	addi	s10, a3, 120
80002adc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002ae0: 27 b4 46 0a  	fsd	ft4, 168(a3)
80002ae4: 07 b2 06 0b  	fld	ft4, 176(a3)
80002ae8: 93 8d 06 08  	addi	s11, a3, 128
80002aec: 93 80 86 08  	addi	ra, a3, 136
80002af0: 13 84 06 09  	addi	s0, a3, 144
80002af4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002af8: 27 b8 46 0a  	fsd	ft4, 176(a3)
80002afc: 07 b2 86 0b  	fld	ft4, 184(a3)
80002b00: 93 85 86 09  	addi	a1, a3, 152
80002b04: 13 86 06 0a  	addi	a2, a3, 160
80002b08: 13 85 86 0a  	addi	a0, a3, 168
80002b0c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002b10: 27 bc 46 0a  	fsd	ft4, 184(a3)
80002b14: 07 b2 06 0c  	fld	ft4, 192(a3)
80002b18: 13 87 06 0b  	addi	a4, a3, 176
80002b1c: 93 87 86 0b  	addi	a5, a3, 184
80002b20: 93 84 06 0c  	addi	s1, a3, 192
80002b24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002b28: 27 b0 46 0c  	fsd	ft4, 192(a3)
80002b2c: 93 08 e0 01  	addi	a7, zero, 30
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80002b30: d3 02 00 22  	fmv.d	ft5, ft0
80002b34: 07 b2 02 00  	fld	ft4, 0(t0)
80002b38: 53 83 10 22  	fmv.d	ft6, ft1
80002b3c: 87 b3 06 00  	fld	ft7, 0(a3)
80002b40: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002b44: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002b48: 27 b0 56 00  	fsd	ft5, 0(a3)
80002b4c: d3 02 00 22  	fmv.d	ft5, ft0
80002b50: 53 83 10 22  	fmv.d	ft6, ft1
80002b54: 87 b3 03 00  	fld	ft7, 0(t2)
80002b58: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002b5c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002b60: 27 b0 53 00  	fsd	ft5, 0(t2)
80002b64: d3 02 00 22  	fmv.d	ft5, ft0
80002b68: 53 83 10 22  	fmv.d	ft6, ft1
80002b6c: 87 33 0e 00  	fld	ft7, 0(t3)
80002b70: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002b74: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002b78: 27 30 5e 00  	fsd	ft5, 0(t3)
80002b7c: d3 02 00 22  	fmv.d	ft5, ft0
80002b80: 53 83 10 22  	fmv.d	ft6, ft1
80002b84: 87 b3 0e 00  	fld	ft7, 0(t4)
80002b88: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002b8c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002b90: 27 b0 5e 00  	fsd	ft5, 0(t4)
80002b94: d3 02 00 22  	fmv.d	ft5, ft0
80002b98: 53 83 10 22  	fmv.d	ft6, ft1
80002b9c: 87 33 0f 00  	fld	ft7, 0(t5)
80002ba0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002ba4: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002ba8: 27 30 5f 00  	fsd	ft5, 0(t5)
80002bac: d3 02 00 22  	fmv.d	ft5, ft0
80002bb0: 53 83 10 22  	fmv.d	ft6, ft1
80002bb4: 87 b3 0f 00  	fld	ft7, 0(t6)
80002bb8: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002bbc: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002bc0: 27 b0 5f 00  	fsd	ft5, 0(t6)
80002bc4: d3 02 00 22  	fmv.d	ft5, ft0
80002bc8: 53 83 10 22  	fmv.d	ft6, ft1
80002bcc: 87 33 09 00  	fld	ft7, 0(s2)
80002bd0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002bd4: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002bd8: 27 30 59 00  	fsd	ft5, 0(s2)
80002bdc: d3 02 00 22  	fmv.d	ft5, ft0
80002be0: 53 83 10 22  	fmv.d	ft6, ft1
80002be4: 87 b3 09 00  	fld	ft7, 0(s3)
80002be8: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002bec: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002bf0: 27 b0 59 00  	fsd	ft5, 0(s3)
80002bf4: d3 02 00 22  	fmv.d	ft5, ft0
80002bf8: 53 83 10 22  	fmv.d	ft6, ft1
80002bfc: 87 33 0a 00  	fld	ft7, 0(s4)
80002c00: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c04: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c08: 27 30 5a 00  	fsd	ft5, 0(s4)
80002c0c: d3 02 00 22  	fmv.d	ft5, ft0
80002c10: 53 83 10 22  	fmv.d	ft6, ft1
80002c14: 87 b3 0a 00  	fld	ft7, 0(s5)
80002c18: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c1c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c20: 27 b0 5a 00  	fsd	ft5, 0(s5)
80002c24: d3 02 00 22  	fmv.d	ft5, ft0
80002c28: 53 83 10 22  	fmv.d	ft6, ft1
80002c2c: 87 33 0b 00  	fld	ft7, 0(s6)
80002c30: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c34: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c38: 27 30 5b 00  	fsd	ft5, 0(s6)
80002c3c: d3 02 00 22  	fmv.d	ft5, ft0
80002c40: 53 83 10 22  	fmv.d	ft6, ft1
80002c44: 87 b3 0b 00  	fld	ft7, 0(s7)
80002c48: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c4c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c50: 27 b0 5b 00  	fsd	ft5, 0(s7)
80002c54: d3 02 00 22  	fmv.d	ft5, ft0
80002c58: 53 83 10 22  	fmv.d	ft6, ft1
80002c5c: 87 33 08 00  	fld	ft7, 0(a6)
80002c60: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c64: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c68: 27 30 58 00  	fsd	ft5, 0(a6)
80002c6c: d3 02 00 22  	fmv.d	ft5, ft0
80002c70: 53 83 10 22  	fmv.d	ft6, ft1
80002c74: 87 33 0c 00  	fld	ft7, 0(s8)
80002c78: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c7c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c80: 27 30 5c 00  	fsd	ft5, 0(s8)
80002c84: d3 02 00 22  	fmv.d	ft5, ft0
80002c88: 53 83 10 22  	fmv.d	ft6, ft1
80002c8c: 87 b3 0c 00  	fld	ft7, 0(s9)
80002c90: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002c94: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002c98: 27 b0 5c 00  	fsd	ft5, 0(s9)
80002c9c: d3 02 00 22  	fmv.d	ft5, ft0
80002ca0: 53 83 10 22  	fmv.d	ft6, ft1
80002ca4: 87 33 0d 00  	fld	ft7, 0(s10)
80002ca8: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002cac: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002cb0: 27 30 5d 00  	fsd	ft5, 0(s10)
80002cb4: d3 02 00 22  	fmv.d	ft5, ft0
80002cb8: 53 83 10 22  	fmv.d	ft6, ft1
80002cbc: 87 b3 0d 00  	fld	ft7, 0(s11)
80002cc0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002cc4: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002cc8: 27 b0 5d 00  	fsd	ft5, 0(s11)
80002ccc: d3 02 00 22  	fmv.d	ft5, ft0
80002cd0: 53 83 10 22  	fmv.d	ft6, ft1
80002cd4: 87 b3 00 00  	fld	ft7, 0(ra)
80002cd8: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002cdc: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002ce0: 27 b0 50 00  	fsd	ft5, 0(ra)
80002ce4: d3 02 00 22  	fmv.d	ft5, ft0
80002ce8: 53 83 10 22  	fmv.d	ft6, ft1
80002cec: 87 33 04 00  	fld	ft7, 0(s0)
80002cf0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002cf4: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002cf8: 27 30 54 00  	fsd	ft5, 0(s0)
80002cfc: d3 02 00 22  	fmv.d	ft5, ft0
80002d00: 53 83 10 22  	fmv.d	ft6, ft1
80002d04: 87 b3 05 00  	fld	ft7, 0(a1)
80002d08: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002d0c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002d10: 27 b0 55 00  	fsd	ft5, 0(a1)
80002d14: d3 02 00 22  	fmv.d	ft5, ft0
80002d18: 53 83 10 22  	fmv.d	ft6, ft1
80002d1c: 87 33 06 00  	fld	ft7, 0(a2)
80002d20: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002d24: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002d28: 27 30 56 00  	fsd	ft5, 0(a2)
80002d2c: d3 02 00 22  	fmv.d	ft5, ft0
80002d30: 53 83 10 22  	fmv.d	ft6, ft1
80002d34: 87 33 05 00  	fld	ft7, 0(a0)
80002d38: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002d3c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002d40: 27 30 55 00  	fsd	ft5, 0(a0)
80002d44: d3 02 00 22  	fmv.d	ft5, ft0
80002d48: 53 83 10 22  	fmv.d	ft6, ft1
80002d4c: 87 33 07 00  	fld	ft7, 0(a4)
80002d50: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002d54: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002d58: 27 30 57 00  	fsd	ft5, 0(a4)
80002d5c: d3 02 00 22  	fmv.d	ft5, ft0
80002d60: 53 83 10 22  	fmv.d	ft6, ft1
80002d64: 87 b3 07 00  	fld	ft7, 0(a5)
80002d68: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80002d6c: c3 f2 62 3a  	fmadd.d	ft5, ft5, ft6, ft7
80002d70: 27 b0 57 00  	fsd	ft5, 0(a5)
80002d74: d3 02 00 22  	fmv.d	ft5, ft0
80002d78: 53 83 10 22  	fmv.d	ft6, ft1
80002d7c: 87 b3 04 00  	fld	ft7, 0(s1)
80002d80: 53 f2 42 12  	fmul.d	ft4, ft5, ft4
80002d84: 43 72 62 3a  	fmadd.d	ft4, ft4, ft6, ft7
;         for (k = 0; k < nk; k++) {
80002d88: 93 88 f8 ff  	addi	a7, a7, -1
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80002d8c: 27 b0 44 00  	fsd	ft4, 0(s1)
;         for (k = 0; k < nk; k++) {
80002d90: e3 90 08 da  	bnez	a7, 0x80002b30 <.LBB0_160+0x1a4>
;     for (i = 0; i < ni; i++) {
80002d94: 13 03 13 00  	addi	t1, t1, 1
80002d98: 03 24 81 07  	lw	s0, 120(sp)
;     for (i = 0; i < ni; i++) {
80002d9c: 13 05 40 01  	addi	a0, zero, 20
80002da0: e3 1a a3 be  	bne	t1, a0, 0x80002994 <.LBB0_160+0x8>
80002da4: 73 f0 00 7c  	csrci	1984, 1
80002da8: 6f 00 00 44  	j	0x800031e8 <.LBB0_162+0x26c>
80002dac: 93 05 00 00  	mv	a1, zero
;     for (i = 0; i < ni; i++) {
80002db0: 13 05 08 06  	addi	a0, a6, 96
80002db4: 23 20 a1 08  	sw	a0, 128(sp)

80002db8 <.LBB0_161>:
80002db8: 17 35 00 00  	auipc	a0, 3
80002dbc: 13 05 85 dd  	addi	a0, a0, -552
80002dc0: 07 30 05 00  	fld	ft0, 0(a0)
80002dc4: 13 09 00 0f  	addi	s2, zero, 240
80002dc8: 23 22 b1 08  	sw	a1, 132(sp)
;             C[i][j] *= beta;
80002dcc: 13 05 80 0c  	addi	a0, zero, 200
80002dd0: 33 85 a5 02  	mul	a0, a1, a0
80002dd4: 33 05 a4 00  	add	a0, s0, a0
80002dd8: 87 30 05 00  	fld	ft1, 0(a0)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80002ddc: 93 04 00 00  	mv	s1, zero
;             C[i][j] *= beta;
80002de0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80002de4: 07 31 85 00  	fld	ft2, 8(a0)
80002de8: 27 30 15 00  	fsd	ft1, 0(a0)
80002dec: 93 05 85 00  	addi	a1, a0, 8
80002df0: 23 2a b1 08  	sw	a1, 148(sp)
80002df4: 87 31 05 01  	fld	ft3, 16(a0)
80002df8: 53 71 01 12  	fmul.d	ft2, ft2, ft0
80002dfc: 27 34 25 00  	fsd	ft2, 8(a0)
80002e00: 93 05 05 01  	addi	a1, a0, 16
80002e04: 23 28 b1 08  	sw	a1, 144(sp)
80002e08: d3 f1 01 12  	fmul.d	ft3, ft3, ft0
80002e0c: 07 32 85 01  	fld	ft4, 24(a0)
80002e10: 27 38 35 00  	fsd	ft3, 16(a0)
80002e14: 93 05 85 01  	addi	a1, a0, 24
80002e18: 23 26 b1 08  	sw	a1, 140(sp)
80002e1c: 87 32 05 02  	fld	ft5, 32(a0)
80002e20: 53 72 02 12  	fmul.d	ft4, ft4, ft0
80002e24: 27 3c 45 00  	fsd	ft4, 24(a0)
80002e28: 93 05 05 02  	addi	a1, a0, 32
80002e2c: 23 24 b1 08  	sw	a1, 136(sp)
80002e30: d3 f2 02 12  	fmul.d	ft5, ft5, ft0
80002e34: 07 33 85 02  	fld	ft6, 40(a0)
80002e38: 27 30 55 02  	fsd	ft5, 32(a0)
80002e3c: 93 09 85 02  	addi	s3, a0, 40
80002e40: 87 33 05 03  	fld	ft7, 48(a0)
80002e44: 53 73 03 12  	fmul.d	ft6, ft6, ft0
80002e48: 27 34 65 02  	fsd	ft6, 40(a0)
80002e4c: 13 0a 05 03  	addi	s4, a0, 48
80002e50: d3 f3 03 12  	fmul.d	ft7, ft7, ft0
80002e54: 07 35 85 03  	fld	fa0, 56(a0)
80002e58: 27 38 75 02  	fsd	ft7, 48(a0)
80002e5c: 93 0a 85 03  	addi	s5, a0, 56
80002e60: 87 35 05 04  	fld	fa1, 64(a0)
80002e64: 53 75 05 12  	fmul.d	fa0, fa0, ft0
80002e68: 27 3c a5 02  	fsd	fa0, 56(a0)
80002e6c: 13 0b 05 04  	addi	s6, a0, 64
80002e70: d3 f5 05 12  	fmul.d	fa1, fa1, ft0
80002e74: 07 36 85 04  	fld	fa2, 72(a0)
80002e78: 27 30 b5 04  	fsd	fa1, 64(a0)
80002e7c: 93 0b 85 04  	addi	s7, a0, 72
80002e80: 87 36 05 05  	fld	fa3, 80(a0)
80002e84: 53 76 06 12  	fmul.d	fa2, fa2, ft0
80002e88: 27 34 c5 04  	fsd	fa2, 72(a0)
80002e8c: 13 0c 05 05  	addi	s8, a0, 80
80002e90: d3 f6 06 12  	fmul.d	fa3, fa3, ft0
80002e94: 07 37 05 06  	fld	fa4, 96(a0)
80002e98: 27 38 d5 04  	fsd	fa3, 80(a0)
80002e9c: 93 0c 85 05  	addi	s9, a0, 88
80002ea0: 87 37 85 06  	fld	fa5, 104(a0)
80002ea4: 53 77 07 12  	fmul.d	fa4, fa4, ft0
80002ea8: 27 30 e5 06  	fsd	fa4, 96(a0)
80002eac: 07 37 05 07  	fld	fa4, 112(a0)
80002eb0: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002eb4: 27 34 f5 06  	fsd	fa5, 104(a0)
80002eb8: 87 37 85 07  	fld	fa5, 120(a0)
80002ebc: 53 77 07 12  	fmul.d	fa4, fa4, ft0
80002ec0: 27 38 e5 06  	fsd	fa4, 112(a0)
80002ec4: 07 37 05 08  	fld	fa4, 128(a0)
80002ec8: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002ecc: 27 3c f5 06  	fsd	fa5, 120(a0)
80002ed0: 87 37 85 08  	fld	fa5, 136(a0)
80002ed4: 53 77 07 12  	fmul.d	fa4, fa4, ft0
80002ed8: 27 30 e5 08  	fsd	fa4, 128(a0)
80002edc: 07 37 05 09  	fld	fa4, 144(a0)
80002ee0: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002ee4: 27 34 f5 08  	fsd	fa5, 136(a0)
80002ee8: 87 37 85 09  	fld	fa5, 152(a0)
80002eec: 53 77 07 12  	fmul.d	fa4, fa4, ft0
80002ef0: 27 38 e5 08  	fsd	fa4, 144(a0)
80002ef4: 07 37 85 05  	fld	fa4, 88(a0)
80002ef8: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002efc: 27 3c f5 08  	fsd	fa5, 152(a0)
80002f00: 87 37 05 0a  	fld	fa5, 160(a0)
80002f04: 53 77 07 12  	fmul.d	fa4, fa4, ft0
80002f08: 27 3c e5 04  	fsd	fa4, 88(a0)
80002f0c: 13 0d 05 06  	addi	s10, a0, 96
80002f10: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002f14: 27 30 f5 0a  	fsd	fa5, 160(a0)
80002f18: 87 37 85 0a  	fld	fa5, 168(a0)
80002f1c: 93 0d 85 06  	addi	s11, a0, 104
80002f20: 93 00 05 07  	addi	ra, a0, 112
80002f24: 93 0e 85 07  	addi	t4, a0, 120
80002f28: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002f2c: 27 34 f5 0a  	fsd	fa5, 168(a0)
80002f30: 87 37 05 0b  	fld	fa5, 176(a0)
80002f34: 13 0f 05 08  	addi	t5, a0, 128
80002f38: 93 05 85 08  	addi	a1, a0, 136
80002f3c: 13 07 05 09  	addi	a4, a0, 144
80002f40: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002f44: 27 38 f5 0a  	fsd	fa5, 176(a0)
80002f48: 87 37 85 0b  	fld	fa5, 184(a0)
80002f4c: 13 04 85 09  	addi	s0, a0, 152
80002f50: 93 06 05 0a  	addi	a3, a0, 160
80002f54: 13 08 85 0a  	addi	a6, a0, 168
80002f58: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002f5c: 27 3c f5 0a  	fsd	fa5, 184(a0)
80002f60: 87 37 05 0c  	fld	fa5, 192(a0)
80002f64: 93 08 05 0b  	addi	a7, a0, 176
80002f68: 93 02 85 0b  	addi	t0, a0, 184
80002f6c: 13 03 05 0c  	addi	t1, a0, 192
80002f70: d3 f7 07 12  	fmul.d	fa5, fa5, ft0
80002f74: 27 30 f5 0c  	fsd	fa5, 192(a0)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80002f78: 83 23 01 08  	lw	t2, 128(sp)

80002f7c <.LBB0_162>:
80002f7c: 97 37 00 00  	auipc	a5, 3
80002f80: 93 87 c7 c1  	addi	a5, a5, -996
80002f84: 87 b7 07 00  	fld	fa5, 0(a5)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80002f88: 33 0e 96 00  	add	t3, a2, s1
80002f8c: 07 38 0e 00  	fld	fa6, 0(t3)
80002f90: 87 b8 03 fa  	fld	fa7, -96(t2)
80002f94: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80002f98: c3 70 18 0b  	fmadd.d	ft1, fa6, fa7, ft1
80002f9c: 27 30 15 00  	fsd	ft1, 0(a0)
80002fa0: 07 38 0e 00  	fld	fa6, 0(t3)
80002fa4: 87 b8 83 fa  	fld	fa7, -88(t2)
80002fa8: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80002fac: 43 71 18 13  	fmadd.d	ft2, fa6, fa7, ft2
80002fb0: 83 2f 41 09  	lw	t6, 148(sp)
80002fb4: 27 b0 2f 00  	fsd	ft2, 0(t6)
80002fb8: 07 38 0e 00  	fld	fa6, 0(t3)
80002fbc: 87 b8 03 fb  	fld	fa7, -80(t2)
80002fc0: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80002fc4: c3 71 18 1b  	fmadd.d	ft3, fa6, fa7, ft3
80002fc8: 83 27 01 09  	lw	a5, 144(sp)
80002fcc: 27 b0 37 00  	fsd	ft3, 0(a5)
80002fd0: 07 38 0e 00  	fld	fa6, 0(t3)
80002fd4: 87 b8 83 fb  	fld	fa7, -72(t2)
80002fd8: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80002fdc: 43 72 18 23  	fmadd.d	ft4, fa6, fa7, ft4
80002fe0: 83 27 c1 08  	lw	a5, 140(sp)
80002fe4: 27 b0 47 00  	fsd	ft4, 0(a5)
80002fe8: 07 38 0e 00  	fld	fa6, 0(t3)
80002fec: 87 b8 03 fc  	fld	fa7, -64(t2)
80002ff0: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80002ff4: c3 72 18 2b  	fmadd.d	ft5, fa6, fa7, ft5
80002ff8: 83 27 81 08  	lw	a5, 136(sp)
80002ffc: 27 b0 57 00  	fsd	ft5, 0(a5)
80003000: 07 38 0e 00  	fld	fa6, 0(t3)
80003004: 87 b8 83 fc  	fld	fa7, -56(t2)
80003008: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
8000300c: 43 73 18 33  	fmadd.d	ft6, fa6, fa7, ft6
80003010: 27 b0 69 00  	fsd	ft6, 0(s3)
80003014: 07 38 0e 00  	fld	fa6, 0(t3)
80003018: 87 b8 03 fd  	fld	fa7, -48(t2)
8000301c: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003020: c3 73 18 3b  	fmadd.d	ft7, fa6, fa7, ft7
80003024: 27 30 7a 00  	fsd	ft7, 0(s4)
80003028: 07 38 0e 00  	fld	fa6, 0(t3)
8000302c: 87 b8 83 fd  	fld	fa7, -40(t2)
80003030: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003034: 43 75 18 53  	fmadd.d	fa0, fa6, fa7, fa0
80003038: 27 b0 aa 00  	fsd	fa0, 0(s5)
8000303c: 07 38 0e 00  	fld	fa6, 0(t3)
80003040: 87 b8 03 fe  	fld	fa7, -32(t2)
80003044: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003048: c3 75 18 5b  	fmadd.d	fa1, fa6, fa7, fa1
8000304c: 27 30 bb 00  	fsd	fa1, 0(s6)
80003050: 07 38 0e 00  	fld	fa6, 0(t3)
80003054: 87 b8 83 fe  	fld	fa7, -24(t2)
80003058: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
8000305c: 43 76 18 63  	fmadd.d	fa2, fa6, fa7, fa2
80003060: 27 b0 cb 00  	fsd	fa2, 0(s7)
80003064: 07 38 0e 00  	fld	fa6, 0(t3)
80003068: 87 b8 03 ff  	fld	fa7, -16(t2)
8000306c: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003070: c3 76 18 6b  	fmadd.d	fa3, fa6, fa7, fa3
80003074: 27 30 dc 00  	fsd	fa3, 0(s8)
80003078: 07 38 0e 00  	fld	fa6, 0(t3)
8000307c: 87 b8 83 ff  	fld	fa7, -8(t2)
80003080: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003084: 43 77 18 73  	fmadd.d	fa4, fa6, fa7, fa4
80003088: 27 b0 ec 00  	fsd	fa4, 0(s9)
8000308c: 07 38 0e 00  	fld	fa6, 0(t3)
80003090: 87 b8 03 00  	fld	fa7, 0(t2)
80003094: 07 3e 0d 00  	fld	ft8, 0(s10)
80003098: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
8000309c: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
800030a0: 27 30 0d 01  	fsd	fa6, 0(s10)
800030a4: 07 38 0e 00  	fld	fa6, 0(t3)
800030a8: 87 b8 83 00  	fld	fa7, 8(t2)
800030ac: 07 be 0d 00  	fld	ft8, 0(s11)
800030b0: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
800030b4: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
800030b8: 27 b0 0d 01  	fsd	fa6, 0(s11)
800030bc: 07 38 0e 00  	fld	fa6, 0(t3)
800030c0: 87 b8 03 01  	fld	fa7, 16(t2)
800030c4: 07 be 00 00  	fld	ft8, 0(ra)
800030c8: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
800030cc: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
800030d0: 27 b0 00 01  	fsd	fa6, 0(ra)
800030d4: 07 38 0e 00  	fld	fa6, 0(t3)
800030d8: 87 b8 83 01  	fld	fa7, 24(t2)
800030dc: 07 be 0e 00  	fld	ft8, 0(t4)
800030e0: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
800030e4: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
800030e8: 27 b0 0e 01  	fsd	fa6, 0(t4)
800030ec: 07 38 0e 00  	fld	fa6, 0(t3)
800030f0: 87 b8 03 02  	fld	fa7, 32(t2)
800030f4: 07 3e 0f 00  	fld	ft8, 0(t5)
800030f8: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
800030fc: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003100: 27 30 0f 01  	fsd	fa6, 0(t5)
80003104: 07 38 0e 00  	fld	fa6, 0(t3)
80003108: 87 b8 83 02  	fld	fa7, 40(t2)
8000310c: 07 be 05 00  	fld	ft8, 0(a1)
80003110: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003114: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003118: 27 b0 05 01  	fsd	fa6, 0(a1)
8000311c: 07 38 0e 00  	fld	fa6, 0(t3)
80003120: 87 b8 03 03  	fld	fa7, 48(t2)
80003124: 07 3e 07 00  	fld	ft8, 0(a4)
80003128: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
8000312c: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003130: 27 30 07 01  	fsd	fa6, 0(a4)
80003134: 07 38 0e 00  	fld	fa6, 0(t3)
80003138: 87 b8 83 03  	fld	fa7, 56(t2)
8000313c: 07 3e 04 00  	fld	ft8, 0(s0)
80003140: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003144: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003148: 27 30 04 01  	fsd	fa6, 0(s0)
8000314c: 07 38 0e 00  	fld	fa6, 0(t3)
80003150: 87 b8 03 04  	fld	fa7, 64(t2)
80003154: 07 be 06 00  	fld	ft8, 0(a3)
80003158: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
8000315c: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003160: 27 b0 06 01  	fsd	fa6, 0(a3)
80003164: 07 38 0e 00  	fld	fa6, 0(t3)
80003168: 87 b8 83 04  	fld	fa7, 72(t2)
8000316c: 07 3e 08 00  	fld	ft8, 0(a6)
80003170: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
80003174: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003178: 27 30 08 01  	fsd	fa6, 0(a6)
8000317c: 07 38 0e 00  	fld	fa6, 0(t3)
80003180: 87 b8 03 05  	fld	fa7, 80(t2)
80003184: 07 be 08 00  	fld	ft8, 0(a7)
80003188: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
8000318c: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
80003190: 27 b0 08 01  	fsd	fa6, 0(a7)
80003194: 07 38 0e 00  	fld	fa6, 0(t3)
80003198: 87 b8 83 05  	fld	fa7, 88(t2)
8000319c: 07 be 02 00  	fld	ft8, 0(t0)
800031a0: 53 78 f8 12  	fmul.d	fa6, fa6, fa5
800031a4: 43 78 18 e3  	fmadd.d	fa6, fa6, fa7, ft8
800031a8: 27 b0 02 01  	fsd	fa6, 0(t0)
800031ac: 07 38 0e 00  	fld	fa6, 0(t3)
800031b0: 87 b8 03 06  	fld	fa7, 96(t2)
800031b4: 07 3e 03 00  	fld	ft8, 0(t1)
800031b8: d3 77 f8 12  	fmul.d	fa5, fa6, fa5
800031bc: c3 f7 17 e3  	fmadd.d	fa5, fa5, fa7, ft8
800031c0: 27 30 f3 00  	fsd	fa5, 0(t1)
;         for (k = 0; k < nk; k++) {
800031c4: 93 84 84 00  	addi	s1, s1, 8
800031c8: 93 83 83 0c  	addi	t2, t2, 200
800031cc: e3 98 24 db  	bne	s1, s2, 0x80002f7c <.LBB0_162>
800031d0: 83 25 41 08  	lw	a1, 132(sp)
;     for (i = 0; i < ni; i++) {
800031d4: 93 85 15 00  	addi	a1, a1, 1
800031d8: 13 06 06 0f  	addi	a2, a2, 240
800031dc: 03 24 81 07  	lw	s0, 120(sp)
800031e0: 13 05 40 01  	addi	a0, zero, 20
800031e4: e3 92 a5 be  	bne	a1, a0, 0x80002dc8 <.LBB0_161+0x10>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800031e8: 73 25 00 b0  	csrr	a0, mcycle
;     printf("cycles needed: %lu\n", cycle_end - cycle_start);
800031ec: 83 25 c1 07  	lw	a1, 124(sp)
800031f0: b3 05 b5 40  	sub	a1, a0, a1

800031f4 <.LBB0_163>:
800031f4: 17 25 00 00  	auipc	a0, 2
800031f8: 13 05 c5 5e  	addi	a0, a0, 1516
800031fc: 97 00 00 00  	auipc	ra, 0
80003200: e7 80 c0 2a  	jalr	684(ra)
80003204: 03 25 41 00  	lw	a0, 4(sp)
80003208: 63 00 05 12  	beqz	a0, 0x80003328 <.LBB0_163+0x134>
8000320c: 13 05 80 00  	addi	a0, zero, 8
80003210: 93 05 80 01  	addi	a1, zero, 24
;     for (int i = 0; i < n; i++){
80003214: 13 06 00 04  	addi	a2, zero, 64
80003218: 93 06 00 0c  	addi	a3, zero, 192
8000321c: ab a0 c5 00  	scfgw	a1, a2
80003220: ab 20 d5 00  	scfgw	a0, a3
80003224: 93 05 30 01  	addi	a1, zero, 19
80003228: 13 06 00 06  	addi	a2, zero, 96
8000322c: 93 06 00 0e  	addi	a3, zero, 224
80003230: ab a0 c5 00  	scfgw	a1, a2
80003234: ab 20 d5 00  	scfgw	a0, a3
80003238: 13 05 00 02  	addi	a0, zero, 32
8000323c: ab 20 a0 00  	scfgw	zero, a0
80003240: 2b 20 04 32  	scfgwi	s0, 800
80003244: 73 e0 00 7c  	csrsi	1984, 1
80003248: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000324c: 13 05 40 01  	addi	a0, zero, 20
;             r += A[i * m + j];
80003250: 53 02 00 22  	fmv.d	ft4, ft0
80003254: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003258: 53 02 00 22  	fmv.d	ft4, ft0
8000325c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003260: 53 02 00 22  	fmv.d	ft4, ft0
80003264: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003268: 53 02 00 22  	fmv.d	ft4, ft0
8000326c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003270: 53 02 00 22  	fmv.d	ft4, ft0
80003274: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003278: 53 02 00 22  	fmv.d	ft4, ft0
8000327c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003280: 53 02 00 22  	fmv.d	ft4, ft0
80003284: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003288: 53 02 00 22  	fmv.d	ft4, ft0
8000328c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003290: 53 02 00 22  	fmv.d	ft4, ft0
80003294: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003298: 53 02 00 22  	fmv.d	ft4, ft0
8000329c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032a0: 53 02 00 22  	fmv.d	ft4, ft0
800032a4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032a8: 53 02 00 22  	fmv.d	ft4, ft0
800032ac: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032b0: 53 02 00 22  	fmv.d	ft4, ft0
800032b4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032b8: 53 02 00 22  	fmv.d	ft4, ft0
800032bc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032c0: 53 02 00 22  	fmv.d	ft4, ft0
800032c4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032c8: 53 02 00 22  	fmv.d	ft4, ft0
800032cc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032d0: 53 02 00 22  	fmv.d	ft4, ft0
800032d4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032d8: 53 02 00 22  	fmv.d	ft4, ft0
800032dc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032e0: 53 02 00 22  	fmv.d	ft4, ft0
800032e4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032e8: 53 02 00 22  	fmv.d	ft4, ft0
800032ec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032f0: 53 02 00 22  	fmv.d	ft4, ft0
800032f4: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800032f8: 53 02 00 22  	fmv.d	ft4, ft0
800032fc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003300: 53 02 00 22  	fmv.d	ft4, ft0
80003304: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003308: 53 02 00 22  	fmv.d	ft4, ft0
8000330c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80003310: 53 02 00 22  	fmv.d	ft4, ft0
;     for (int i = 0; i < n; i++){
80003314: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80003318: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     for (int i = 0; i < n; i++){
8000331c: e3 1a 05 f2  	bnez	a0, 0x80003250 <.LBB0_163+0x5c>
80003320: 73 f0 00 7c  	csrci	1984, 1
80003324: 6f 00 40 0e  	j	0x80003408 <.LBB0_164>
;     for (int i = 0; i < n; i++){
80003328: 13 05 04 06  	addi	a0, s0, 96
8000332c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003330: 93 05 40 01  	addi	a1, zero, 20
;             r += A[i * m + j];
80003334: 07 30 05 fa  	fld	ft0, -96(a0)
80003338: 53 70 30 02  	fadd.d	ft0, ft0, ft3
8000333c: 87 30 85 fa  	fld	ft1, -88(a0)
80003340: 07 31 05 fb  	fld	ft2, -80(a0)
80003344: 87 31 85 fb  	fld	ft3, -72(a0)
80003348: 07 32 05 fc  	fld	ft4, -64(a0)
8000334c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80003350: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80003354: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80003358: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000335c: 87 30 85 fc  	fld	ft1, -56(a0)
80003360: 07 31 05 fd  	fld	ft2, -48(a0)
80003364: 87 31 85 fd  	fld	ft3, -40(a0)
80003368: 07 32 05 fe  	fld	ft4, -32(a0)
8000336c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80003370: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80003374: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80003378: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000337c: 87 30 85 fe  	fld	ft1, -24(a0)
80003380: 07 31 05 ff  	fld	ft2, -16(a0)
80003384: 87 31 85 ff  	fld	ft3, -8(a0)
80003388: 07 32 05 00  	fld	ft4, 0(a0)
8000338c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80003390: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80003394: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80003398: 53 70 02 02  	fadd.d	ft0, ft4, ft0
8000339c: 87 30 85 00  	fld	ft1, 8(a0)
800033a0: 07 31 05 01  	fld	ft2, 16(a0)
800033a4: 87 31 85 01  	fld	ft3, 24(a0)
800033a8: 07 32 05 02  	fld	ft4, 32(a0)
800033ac: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800033b0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800033b4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800033b8: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800033bc: 87 30 85 02  	fld	ft1, 40(a0)
800033c0: 07 31 05 03  	fld	ft2, 48(a0)
800033c4: 87 31 85 03  	fld	ft3, 56(a0)
800033c8: 07 32 05 04  	fld	ft4, 64(a0)
800033cc: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800033d0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800033d4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800033d8: 53 70 02 02  	fadd.d	ft0, ft4, ft0
800033dc: 87 30 85 04  	fld	ft1, 72(a0)
800033e0: 07 31 05 05  	fld	ft2, 80(a0)
800033e4: 87 31 85 05  	fld	ft3, 88(a0)
800033e8: 07 32 05 06  	fld	ft4, 96(a0)
800033ec: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
800033f0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
800033f4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
800033f8: d3 71 02 02  	fadd.d	ft3, ft4, ft0
;     for (int i = 0; i < n; i++){
800033fc: 93 85 f5 ff  	addi	a1, a1, -1
80003400: 13 05 85 0c  	addi	a0, a0, 200
80003404: e3 98 05 f2  	bnez	a1, 0x80003334 <.LBB0_163+0x140>

80003408 <.LBB0_164>:
80003408: 17 25 00 00  	auipc	a0, 2
8000340c: 13 05 85 79  	addi	a0, a0, 1944
80003410: 07 30 05 00  	fld	ft0, 0(a0)
;     double error = s - s_true;
80003414: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
;     error = error < 0.0 ? -error : error;
80003418: 53 24 00 22  	fabs.d	fs0, ft0
;     printf("error = %f\n", error);
8000341c: 27 3c 81 08  	fsd	fs0, 152(sp)
80003420: 03 26 81 09  	lw	a2, 152(sp)
80003424: 83 26 c1 09  	lw	a3, 156(sp)

80003428 <.LBB0_165>:
80003428: 17 25 00 00  	auipc	a0, 2
8000342c: 13 05 15 3d  	addi	a0, a0, 977
80003430: 97 00 00 00  	auipc	ra, 0
80003434: e7 80 80 07  	jalr	120(ra)

80003438 <.LBB0_166>:
80003438: 17 25 00 00  	auipc	a0, 2
8000343c: 13 05 05 77  	addi	a0, a0, 1904
80003440: 07 30 05 00  	fld	ft0, 0(a0)
;     return error > 0.0001; //prevents dce
80003444: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80003448: 07 3c 01 0a  	fld	fs8, 160(sp)
8000344c: 87 3b 81 0a  	fld	fs7, 168(sp)
80003450: 07 3b 01 0b  	fld	fs6, 176(sp)
80003454: 87 3a 81 0b  	fld	fs5, 184(sp)
80003458: 07 3a 01 0c  	fld	fs4, 192(sp)
8000345c: 87 39 81 0c  	fld	fs3, 200(sp)
80003460: 07 39 01 0d  	fld	fs2, 208(sp)
80003464: 87 34 81 0d  	fld	fs1, 216(sp)
80003468: 07 34 01 0e  	fld	fs0, 224(sp)
8000346c: 83 2d c1 0e  	lw	s11, 236(sp)
80003470: 03 2d 01 0f  	lw	s10, 240(sp)
80003474: 83 2c 41 0f  	lw	s9, 244(sp)
80003478: 03 2c 81 0f  	lw	s8, 248(sp)
8000347c: 83 2b c1 0f  	lw	s7, 252(sp)
80003480: 03 2b 01 10  	lw	s6, 256(sp)
80003484: 83 2a 41 10  	lw	s5, 260(sp)
80003488: 03 2a 81 10  	lw	s4, 264(sp)
8000348c: 83 29 c1 10  	lw	s3, 268(sp)
80003490: 03 29 01 11  	lw	s2, 272(sp)
80003494: 83 24 41 11  	lw	s1, 276(sp)
80003498: 03 24 81 11  	lw	s0, 280(sp)
8000349c: 83 20 c1 11  	lw	ra, 284(sp)
800034a0: 13 01 01 12  	addi	sp, sp, 288
800034a4: 67 80 00 00  	ret

800034a8 <printf_>:
; {
800034a8: 13 01 01 fd  	addi	sp, sp, -48
800034ac: 23 26 11 00  	sw	ra, 12(sp)
800034b0: 93 02 05 00  	mv	t0, a0
800034b4: 23 26 11 03  	sw	a7, 44(sp)
800034b8: 23 24 01 03  	sw	a6, 40(sp)
800034bc: 23 22 f1 02  	sw	a5, 36(sp)
800034c0: 23 20 e1 02  	sw	a4, 32(sp)
800034c4: 23 2e d1 00  	sw	a3, 28(sp)
800034c8: 23 2c c1 00  	sw	a2, 24(sp)
800034cc: 23 2a b1 00  	sw	a1, 20(sp)
800034d0: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
800034d4: 23 24 a1 00  	sw	a0, 8(sp)

800034d8 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
800034d8: 17 15 00 00  	auipc	a0, 1
800034dc: 13 05 45 c2  	addi	a0, a0, -988
800034e0: 93 05 71 00  	addi	a1, sp, 7
800034e4: 13 06 f0 ff  	addi	a2, zero, -1
800034e8: 13 07 41 01  	addi	a4, sp, 20
800034ec: 93 86 02 00  	mv	a3, t0
800034f0: 97 00 00 00  	auipc	ra, 0
800034f4: e7 80 40 01  	jalr	20(ra)
;   return ret;
800034f8: 83 20 c1 00  	lw	ra, 12(sp)
800034fc: 13 01 01 03  	addi	sp, sp, 48
80003500: 67 80 00 00  	ret

80003504 <_vsnprintf.llvm.1805434900161566649>:
; {
80003504: 13 01 01 f9  	addi	sp, sp, -112
80003508: 23 26 11 06  	sw	ra, 108(sp)
8000350c: 23 24 81 06  	sw	s0, 104(sp)
80003510: 23 22 91 06  	sw	s1, 100(sp)
80003514: 23 20 21 07  	sw	s2, 96(sp)
80003518: 23 2e 31 05  	sw	s3, 92(sp)
8000351c: 23 2c 41 05  	sw	s4, 88(sp)
80003520: 23 2a 51 05  	sw	s5, 84(sp)
80003524: 23 28 61 05  	sw	s6, 80(sp)
80003528: 23 26 71 05  	sw	s7, 76(sp)
8000352c: 23 24 81 05  	sw	s8, 72(sp)
80003530: 23 22 91 05  	sw	s9, 68(sp)
80003534: 23 20 a1 05  	sw	s10, 64(sp)
80003538: 23 2e b1 03  	sw	s11, 60(sp)
8000353c: 93 09 07 00  	mv	s3, a4
80003540: 13 84 06 00  	mv	s0, a3
80003544: 93 0a 06 00  	mv	s5, a2
80003548: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
8000354c: 63 86 05 00  	beqz	a1, 0x80003558 <.LBB1_183>
80003550: 13 09 05 00  	mv	s2, a0
80003554: 6f 00 c0 00  	j	0x80003560 <.LBB1_183+0x8>

80003558 <.LBB1_183>:
80003558: 17 19 00 00  	auipc	s2, 1
8000355c: 13 09 09 c5  	addi	s2, s2, -944
80003560: 13 0c 00 00  	mv	s8, zero
80003564: 13 0b 50 02  	addi	s6, zero, 37
80003568: 93 0d 00 01  	addi	s11, zero, 16
8000356c: 93 0b e0 02  	addi	s7, zero, 46
80003570: 37 15 00 00  	lui	a0, 1
80003574: 13 05 05 80  	addi	a0, a0, -2048
80003578: 23 2c a1 00  	sw	a0, 24(sp)
8000357c: 37 05 01 00  	lui	a0, 16
80003580: 13 05 f5 ff  	addi	a0, a0, -1
80003584: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80003588: 13 0d 24 00  	addi	s10, s0, 2
8000358c: 93 0c 0c 00  	mv	s9, s8
80003590: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80003594: 03 45 04 00  	lbu	a0, 0(s0)
80003598: e3 04 05 30  	beqz	a0, 0x800040a0 <.LBB1_124+0x3b0>
8000359c: 63 08 65 03  	beq	a0, s6, 0x800035cc <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
800035a0: 93 84 1c 00  	addi	s1, s9, 1
800035a4: 93 05 0a 00  	mv	a1, s4
800035a8: 13 86 0c 00  	mv	a2, s9
800035ac: 93 86 0a 00  	mv	a3, s5
800035b0: e7 00 09 00  	jalr	s2
;       format++;
800035b4: 13 04 14 00  	addi	s0, s0, 1
;       continue;
800035b8: 13 0d 1d 00  	addi	s10, s10, 1
800035bc: 93 8c 04 00  	mv	s9, s1
;   while (*format)
800035c0: 03 45 04 00  	lbu	a0, 0(s0)
800035c4: e3 1c 05 fc  	bnez	a0, 0x8000359c <.LBB1_183+0x44>
800035c8: 6f 00 90 2d  	j	0x800040a0 <.LBB1_124+0x3b0>
;     flags = 0U;
800035cc: 13 04 00 00  	mv	s0, zero
800035d0: 6f 00 00 01  	j	0x800035e0 <.LBB1_9+0x8>

800035d4 <.LBB1_8>:
800035d4: 93 05 00 01  	addi	a1, zero, 16

800035d8 <.LBB1_9>:
800035d8: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
800035dc: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
800035e0: 03 45 fd ff  	lbu	a0, -1(s10)
800035e4: 93 05 05 fe  	addi	a1, a0, -32
800035e8: 63 ec bd 02  	bltu	s11, a1, 0x80003620 <.LBB1_15>
800035ec: 93 95 25 00  	slli	a1, a1, 2

800035f0 <.LBB1_184>:
800035f0: 17 26 00 00  	auipc	a2, 2
800035f4: 13 06 c6 21  	addi	a2, a2, 540
800035f8: b3 85 c5 00  	add	a1, a1, a2
800035fc: 03 a6 05 00  	lw	a2, 0(a1)
80003600: 93 05 10 00  	addi	a1, zero, 1
80003604: 67 00 06 00  	jr	a2

80003608 <.LBB1_12>:
80003608: 93 05 80 00  	addi	a1, zero, 8
8000360c: 6f f0 df fc  	j	0x800035d8 <.LBB1_9>

80003610 <.LBB1_13>:
80003610: 93 05 40 00  	addi	a1, zero, 4
80003614: 6f f0 5f fc  	j	0x800035d8 <.LBB1_9>

80003618 <.LBB1_14>:
80003618: 93 05 20 00  	addi	a1, zero, 2
8000361c: 6f f0 df fb  	j	0x800035d8 <.LBB1_9>

80003620 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80003620: 93 05 05 fd  	addi	a1, a0, -48
80003624: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80003628: 93 05 fd ff  	addi	a1, s10, -1
8000362c: 93 06 90 00  	addi	a3, zero, 9
80003630: 63 ee c6 06  	bltu	a3, a2, 0x800036ac <.LBB1_15+0x8c>
80003634: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003638: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000363c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003640: b3 06 8b 03  	mul	a3, s6, s8
80003644: 93 85 15 00  	addi	a1, a1, 1
80003648: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000364c: 93 06 05 fd  	addi	a3, a0, -48
80003650: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003654: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80003658: e3 e0 86 ff  	bltu	a3, s8, 0x80003638 <.LBB1_15+0x18>
8000365c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003660: 63 16 75 0b  	bne	a0, s7, 0x8000370c <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80003664: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80003668: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
8000366c: 93 05 05 fd  	addi	a1, a0, -48
80003670: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80003674: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80003678: 93 06 90 00  	addi	a3, zero, 9
8000367c: 63 e0 c6 06  	bltu	a3, a2, 0x800036dc <.LBB1_15+0xbc>
80003680: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80003684: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80003688: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000368c: b3 86 8b 03  	mul	a3, s7, s8
80003690: 93 85 15 00  	addi	a1, a1, 1
80003694: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80003698: 93 06 05 fd  	addi	a3, a0, -48
8000369c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800036a0: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800036a4: e3 e0 86 ff  	bltu	a3, s8, 0x80003684 <.LBB1_15+0x64>
800036a8: 6f 00 00 07  	j	0x80003718 <.LBB1_15+0xf8>
;     else if (*format == '*') {
800036ac: 13 06 a0 02  	addi	a2, zero, 42
800036b0: 63 18 c5 04  	bne	a0, a2, 0x80003700 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800036b4: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800036b8: 63 d4 05 00  	bgez	a1, 0x800036c0 <.LBB1_15+0xa0>
800036bc: 13 64 24 00  	ori	s0, s0, 2
800036c0: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800036c4: 03 45 0d 00  	lbu	a0, 0(s10)
800036c8: 13 d6 f5 41  	srai	a2, a1, 31
800036cc: b3 85 c5 00  	add	a1, a1, a2
800036d0: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800036d4: e3 08 75 f9  	beq	a0, s7, 0x80003664 <.LBB1_15+0x44>
800036d8: 6f 00 40 03  	j	0x8000370c <.LBB1_15+0xec>
;       else if (*format == '*') {
800036dc: 13 06 a0 02  	addi	a2, zero, 42
800036e0: 63 1a c5 02  	bne	a0, a2, 0x80003714 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800036e4: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800036e8: 63 44 70 01  	bgtz	s7, 0x800036f0 <.LBB1_15+0xd0>
800036ec: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800036f0: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800036f4: 13 0d 2d 00  	addi	s10, s10, 2
800036f8: 93 89 49 00  	addi	s3, s3, 4
800036fc: 6f 00 00 02  	j	0x8000371c <.LBB1_15+0xfc>
80003700: 13 0b 00 00  	mv	s6, zero
80003704: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80003708: e3 0e 75 f5  	beq	a0, s7, 0x80003664 <.LBB1_15+0x44>
8000370c: 93 0b 00 00  	mv	s7, zero
80003710: 6f 00 c0 00  	j	0x8000371c <.LBB1_15+0xfc>
80003714: 93 0b 00 00  	mv	s7, zero
80003718: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
8000371c: 93 05 85 f9  	addi	a1, a0, -104
80003720: 13 d6 15 00  	srli	a2, a1, 1
80003724: 93 95 f5 01  	slli	a1, a1, 31
80003728: b3 e5 c5 00  	or	a1, a1, a2
8000372c: 13 06 90 00  	addi	a2, zero, 9
80003730: 63 62 b6 06  	bltu	a2, a1, 0x80003794 <.LBB1_42>
80003734: 93 95 25 00  	slli	a1, a1, 2

80003738 <.LBB1_185>:
80003738: 17 26 00 00  	auipc	a2, 2
8000373c: 13 06 86 11  	addi	a2, a2, 280
80003740: b3 85 c5 00  	add	a1, a1, a2
80003744: 83 a6 05 00  	lw	a3, 0(a1)
80003748: 93 05 10 00  	addi	a1, zero, 1
8000374c: 13 06 00 10  	addi	a2, zero, 256
80003750: 67 80 06 00  	jr	a3

80003754 <.LBB1_36>:
;         if (*format == 'h') {
80003754: 03 45 1d 00  	lbu	a0, 1(s10)
80003758: 93 05 80 06  	addi	a1, zero, 104
8000375c: 63 12 b5 12  	bne	a0, a1, 0x80003880 <.LBB1_53+0x48>
80003760: 93 05 20 00  	addi	a1, zero, 2
80003764: 13 06 00 0c  	addi	a2, zero, 192
80003768: 6f 00 00 02  	j	0x80003788 <.LBB1_41>

8000376c <.LBB1_38>:
8000376c: 13 06 00 20  	addi	a2, zero, 512
80003770: 6f 00 80 01  	j	0x80003788 <.LBB1_41>

80003774 <.LBB1_39>:
;         if (*format == 'l') {
80003774: 03 45 1d 00  	lbu	a0, 1(s10)
80003778: 93 05 c0 06  	addi	a1, zero, 108
8000377c: 63 18 b5 10  	bne	a0, a1, 0x8000388c <.LBB1_53+0x54>
80003780: 93 05 20 00  	addi	a1, zero, 2
80003784: 13 06 00 30  	addi	a2, zero, 768

80003788 <.LBB1_41>:
80003788: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
8000378c: 03 45 0d 00  	lbu	a0, 0(s10)
80003790: 33 64 c4 00  	or	s0, s0, a2

80003794 <.LBB1_42>:
;     switch (*format) {
80003794: 93 05 b5 fd  	addi	a1, a0, -37
80003798: 13 06 30 05  	addi	a2, zero, 83
8000379c: 63 64 b6 10  	bltu	a2, a1, 0x800038a4 <.LBB1_59>
800037a0: 93 95 25 00  	slli	a1, a1, 2

800037a4 <.LBB1_186>:
800037a4: 17 26 00 00  	auipc	a2, 2
800037a8: 13 06 46 0d  	addi	a2, a2, 212
800037ac: b3 85 c5 00  	add	a1, a1, a2
800037b0: 03 a6 05 00  	lw	a2, 0(a1)
800037b4: 93 05 80 00  	addi	a1, zero, 8
800037b8: 13 0c 00 01  	addi	s8, zero, 16
800037bc: 67 00 06 00  	jr	a2

800037c0 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800037c0: 13 74 f4 fe  	andi	s0, s0, -17
800037c4: 13 0c a0 00  	addi	s8, zero, 10

800037c8 <.LBB1_45>:
;         if (*format == 'X') {
800037c8: 93 05 80 05  	addi	a1, zero, 88
800037cc: 63 14 b5 00  	bne	a0, a1, 0x800037d4 <.LBB1_45+0xc>
800037d0: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800037d4: 93 05 40 06  	addi	a1, zero, 100
800037d8: 63 08 b5 0e  	beq	a0, a1, 0x800038c8 <.LBB1_62+0x8>
800037dc: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800037e0: 13 06 90 06  	addi	a2, zero, 105
800037e4: 63 02 c5 0e  	beq	a0, a2, 0x800038c8 <.LBB1_62+0x8>
800037e8: 6f 00 80 0d  	j	0x800038c0 <.LBB1_62>

800037ec <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800037ec: 93 05 60 04  	addi	a1, zero, 70
800037f0: 63 14 b5 00  	bne	a0, a1, 0x800037f8 <.LBB1_49+0xc>
800037f4: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800037f8: 13 85 79 00  	addi	a0, s3, 7
800037fc: 13 75 85 ff  	andi	a0, a0, -8
80003800: 07 35 05 00  	fld	fa0, 0(a0)
80003804: 93 09 85 00  	addi	s3, a0, 8
80003808: 13 05 09 00  	mv	a0, s2
8000380c: 93 05 0a 00  	mv	a1, s4
80003810: 13 86 0c 00  	mv	a2, s9
80003814: 93 86 0a 00  	mv	a3, s5
80003818: 13 87 0b 00  	mv	a4, s7
8000381c: 93 07 0b 00  	mv	a5, s6
80003820: 13 08 04 00  	mv	a6, s0
80003824: 97 10 00 00  	auipc	ra, 1
80003828: e7 80 80 98  	jalr	-1656(ra)
8000382c: 6f 00 00 7c  	j	0x80003fec <.LBB1_124+0x2fc>

80003830 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80003830: 83 25 81 01  	lw	a1, 24(sp)
80003834: 33 64 b4 00  	or	s0, s0, a1

80003838 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80003838: 13 65 25 00  	ori	a0, a0, 2
8000383c: 93 05 70 04  	addi	a1, zero, 71
80003840: 63 14 b5 00  	bne	a0, a1, 0x80003848 <.LBB1_53+0x10>
80003844: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80003848: 13 85 79 00  	addi	a0, s3, 7
8000384c: 13 75 85 ff  	andi	a0, a0, -8
80003850: 07 35 05 00  	fld	fa0, 0(a0)
80003854: 93 09 85 00  	addi	s3, a0, 8
80003858: 13 05 09 00  	mv	a0, s2
8000385c: 93 05 0a 00  	mv	a1, s4
80003860: 13 86 0c 00  	mv	a2, s9
80003864: 93 86 0a 00  	mv	a3, s5
80003868: 13 87 0b 00  	mv	a4, s7
8000386c: 93 07 0b 00  	mv	a5, s6
80003870: 13 08 04 00  	mv	a6, s0
80003874: 97 10 00 00  	auipc	ra, 1
80003878: e7 80 80 01  	jalr	24(ra)
8000387c: 6f 00 00 77  	j	0x80003fec <.LBB1_124+0x2fc>
80003880: 13 64 04 08  	ori	s0, s0, 128
80003884: 13 0d 1d 00  	addi	s10, s10, 1
80003888: 6f f0 df f0  	j	0x80003794 <.LBB1_42>
8000388c: 13 64 04 10  	ori	s0, s0, 256
80003890: 13 0d 1d 00  	addi	s10, s10, 1
80003894: 6f f0 1f f0  	j	0x80003794 <.LBB1_42>

80003898 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80003898: 13 8c 1c 00  	addi	s8, s9, 1
8000389c: 13 05 50 02  	addi	a0, zero, 37
800038a0: 6f 00 80 00  	j	0x800038a8 <.LBB1_59+0x4>

800038a4 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800038a4: 13 8c 1c 00  	addi	s8, s9, 1
800038a8: 93 05 0a 00  	mv	a1, s4
800038ac: 13 86 0c 00  	mv	a2, s9
800038b0: 93 86 0a 00  	mv	a3, s5
800038b4: e7 00 09 00  	jalr	s2
800038b8: 6f 00 80 73  	j	0x80003ff0 <.LBB1_124+0x300>

800038bc <.LBB1_61>:
800038bc: 93 05 20 00  	addi	a1, zero, 2

800038c0 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800038c0: 13 74 34 ff  	andi	s0, s0, -13
800038c4: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800038c8: 93 75 04 40  	andi	a1, s0, 1024
800038cc: 63 84 05 00  	beqz	a1, 0x800038d4 <.LBB1_62+0x14>
800038d0: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800038d4: 93 05 90 06  	addi	a1, zero, 105
800038d8: 63 06 b5 00  	beq	a0, a1, 0x800038e4 <.LBB1_62+0x24>
800038dc: 93 05 40 06  	addi	a1, zero, 100
800038e0: 63 1c b5 12  	bne	a0, a1, 0x80003a18 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800038e4: 13 75 04 20  	andi	a0, s0, 512
800038e8: 63 16 05 02  	bnez	a0, 0x80003914 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800038ec: 13 75 04 10  	andi	a0, s0, 256
800038f0: 63 1c 05 14  	bnez	a0, 0x80003a48 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800038f4: 13 75 04 04  	andi	a0, s0, 64
800038f8: 63 18 05 4e  	bnez	a0, 0x80003de8 <.LBB1_124+0xf8>
800038fc: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003900: 93 75 04 08  	andi	a1, s0, 128
80003904: 63 84 05 4e  	beqz	a1, 0x80003dec <.LBB1_124+0xfc>
80003908: 13 15 08 01  	slli	a0, a6, 16
8000390c: 13 58 05 41  	srai	a6, a0, 16
80003910: 6f 00 c0 4d  	j	0x80003dec <.LBB1_124+0xfc>
80003914: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80003918: 13 85 79 00  	addi	a0, s3, 7
8000391c: 13 75 85 ff  	andi	a0, a0, -8
80003920: 83 29 05 00  	lw	s3, 0(a0)
80003924: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80003928: 13 65 45 00  	ori	a0, a0, 4
8000392c: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80003930: 23 24 a1 00  	sw	a0, 8(sp)
80003934: 33 e5 a9 00  	or	a0, s3, a0
80003938: 63 14 05 00  	bnez	a0, 0x80003940 <.LBB1_62+0x80>
8000393c: 13 74 f4 fe  	andi	s0, s0, -17
80003940: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003944: 93 75 04 40  	andi	a1, s0, 1024
80003948: 93 d5 a5 00  	srli	a1, a1, 10
8000394c: 33 75 b5 00  	and	a0, a0, a1
80003950: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003954: 63 14 05 0a  	bnez	a0, 0x800039fc <.LBB1_62+0x13c>
80003958: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000395c: 63 da 04 00  	bgez	s1, 0x80003970 <.LBB1_62+0xb0>
80003960: 33 35 30 01  	snez	a0, s3
80003964: b3 09 30 41  	neg	s3, s3
80003968: 33 85 a4 00  	add	a0, s1, a0
8000396c: b3 04 a0 40  	neg	s1, a0
80003970: 13 09 00 00  	mv	s2, zero
80003974: 13 75 04 02  	andi	a0, s0, 32
80003978: 13 45 15 06  	xori	a0, a0, 97
8000397c: 13 05 65 0f  	addi	a0, a0, 246
80003980: 23 2a a1 00  	sw	a0, 20(sp)
80003984: 6f 00 40 02  	j	0x800039a8 <.LBB1_62+0xe8>
80003988: 13 06 10 00  	addi	a2, zero, 1
8000398c: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003990: 93 36 f9 01  	sltiu	a3, s2, 31
80003994: 33 f6 c6 00  	and	a2, a3, a2
80003998: 13 89 07 00  	mv	s2, a5
8000399c: 93 09 05 00  	mv	s3, a0
800039a0: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039a4: 63 0c 06 04  	beqz	a2, 0x800039fc <.LBB1_62+0x13c>
;       value /= base;
800039a8: 13 85 09 00  	mv	a0, s3
800039ac: 93 85 04 00  	mv	a1, s1
800039b0: 13 06 0c 00  	mv	a2, s8
800039b4: 93 06 00 00  	mv	a3, zero
800039b8: 97 c0 ff ff  	auipc	ra, 1048572
800039bc: e7 80 40 72  	jalr	1828(ra)
800039c0: 33 06 85 03  	mul	a2, a0, s8
800039c4: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800039c8: 13 77 e6 0f  	andi	a4, a2, 254
800039cc: 93 06 00 03  	addi	a3, zero, 48
800039d0: 93 07 a0 00  	addi	a5, zero, 10
800039d4: 63 64 f7 00  	bltu	a4, a5, 0x800039dc <.LBB1_62+0x11c>
800039d8: 83 26 41 01  	lw	a3, 20(sp)
800039dc: 33 86 c6 00  	add	a2, a3, a2
800039e0: 93 06 c1 01  	addi	a3, sp, 28
800039e4: b3 86 26 01  	add	a3, a3, s2
800039e8: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800039ec: e3 9e 04 f8  	bnez	s1, 0x80003988 <.LBB1_62+0xc8>
800039f0: 33 b6 89 01  	sltu	a2, s3, s8
800039f4: 13 46 16 00  	xori	a2, a2, 1
800039f8: 6f f0 5f f9  	j	0x8000398c <.LBB1_62+0xcc>
800039fc: 03 25 41 00  	lw	a0, 4(sp)
80003a00: 93 09 85 00  	addi	s3, a0, 8
80003a04: 03 25 81 00  	lw	a0, 8(sp)
80003a08: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003a0c: 13 07 c1 01  	addi	a4, sp, 28
80003a10: 03 29 c1 00  	lw	s2, 12(sp)
80003a14: 6f 00 80 47  	j	0x80003e8c <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
80003a18: 13 75 04 20  	andi	a0, s0, 512
80003a1c: 63 12 05 0c  	bnez	a0, 0x80003ae0 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80003a20: 13 75 04 10  	andi	a0, s0, 256
80003a24: 63 1e 05 46  	bnez	a0, 0x80003ea0 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a28: 13 75 04 04  	andi	a0, s0, 64
80003a2c: 63 10 05 50  	bnez	a0, 0x80003f2c <.LBB1_124+0x23c>
80003a30: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003a34: 93 75 04 08  	andi	a1, s0, 128
80003a38: 63 8c 05 4e  	beqz	a1, 0x80003f30 <.LBB1_124+0x240>
80003a3c: 83 25 01 01  	lw	a1, 16(sp)
80003a40: 33 75 b5 00  	and	a0, a0, a1
80003a44: 6f 00 c0 4e  	j	0x80003f30 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80003a48: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80003a4c: 63 14 08 00  	bnez	a6, 0x80003a54 <.LBB1_62+0x194>
80003a50: 13 74 f4 fe  	andi	s0, s0, -17
80003a54: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a58: 13 76 04 40  	andi	a2, s0, 1024
80003a5c: 13 56 a6 00  	srli	a2, a2, 10
80003a60: b3 f5 c5 00  	and	a1, a1, a2
80003a64: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003a68: 63 9c 05 40  	bnez	a1, 0x80003e80 <.LBB1_124+0x190>
80003a6c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003a70: 13 56 f8 41  	srai	a2, a6, 31
80003a74: b3 06 c8 00  	add	a3, a6, a2
80003a78: b3 c6 c6 00  	xor	a3, a3, a2
80003a7c: 13 76 04 02  	andi	a2, s0, 32
80003a80: 13 46 16 06  	xori	a2, a2, 97
80003a84: 93 08 66 0f  	addi	a7, a2, 246
80003a88: 6f 00 40 03  	j	0x80003abc <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003a8c: 33 05 f6 00  	add	a0, a2, a5
80003a90: 93 87 15 00  	addi	a5, a1, 1
80003a94: 13 06 c1 01  	addi	a2, sp, 28
80003a98: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003a9c: b3 b6 86 01  	sltu	a3, a3, s8
80003aa0: 93 c6 16 00  	xori	a3, a3, 1
80003aa4: 93 b5 f5 01  	sltiu	a1, a1, 31
80003aa8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003aac: 23 00 a6 00  	sb	a0, 0(a2)
80003ab0: 93 85 07 00  	mv	a1, a5
80003ab4: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ab8: 63 84 04 3c  	beqz	s1, 0x80003e80 <.LBB1_124+0x190>
;       value /= base;
80003abc: 33 d7 86 03  	divu	a4, a3, s8
80003ac0: 33 06 87 03  	mul	a2, a4, s8
80003ac4: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ac8: 13 f5 e7 0f  	andi	a0, a5, 254
80003acc: 13 06 00 03  	addi	a2, zero, 48
80003ad0: 93 04 a0 00  	addi	s1, zero, 10
80003ad4: e3 6c 95 fa  	bltu	a0, s1, 0x80003a8c <.LBB1_62+0x1cc>
80003ad8: 13 86 08 00  	mv	a2, a7
80003adc: 6f f0 1f fb  	j	0x80003a8c <.LBB1_62+0x1cc>
80003ae0: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80003ae4: 13 85 79 00  	addi	a0, s3, 7
80003ae8: 93 75 85 ff  	andi	a1, a0, -8
80003aec: 03 a9 05 00  	lw	s2, 0(a1)
80003af0: 13 e5 45 00  	ori	a0, a1, 4
80003af4: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80003af8: 33 65 39 01  	or	a0, s2, s3
80003afc: 23 24 b1 00  	sw	a1, 8(sp)
80003b00: 63 14 05 00  	bnez	a0, 0x80003b08 <.LBB1_62+0x248>
80003b04: 13 74 f4 fe  	andi	s0, s0, -17
80003b08: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b0c: 93 75 04 40  	andi	a1, s0, 1024
80003b10: 93 d5 a5 00  	srli	a1, a1, 10
80003b14: 33 75 b5 00  	and	a0, a0, a1
80003b18: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003b1c: 63 18 05 08  	bnez	a0, 0x80003bac <.LBB1_62+0x2ec>
80003b20: 93 04 00 00  	mv	s1, zero
80003b24: 13 75 04 02  	andi	a0, s0, 32
80003b28: 13 45 15 06  	xori	a0, a0, 97
80003b2c: 13 05 65 0f  	addi	a0, a0, 246
80003b30: 23 2a a1 00  	sw	a0, 20(sp)
80003b34: 6f 00 40 02  	j	0x80003b58 <.LBB1_62+0x298>
80003b38: 13 06 10 00  	addi	a2, zero, 1
80003b3c: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b40: 93 b6 f4 01  	sltiu	a3, s1, 31
80003b44: 33 f6 c6 00  	and	a2, a3, a2
80003b48: 93 84 07 00  	mv	s1, a5
80003b4c: 13 09 05 00  	mv	s2, a0
80003b50: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b54: 63 0c 06 04  	beqz	a2, 0x80003bac <.LBB1_62+0x2ec>
;       value /= base;
80003b58: 13 05 09 00  	mv	a0, s2
80003b5c: 93 85 09 00  	mv	a1, s3
80003b60: 13 06 0c 00  	mv	a2, s8
80003b64: 93 06 00 00  	mv	a3, zero
80003b68: 97 c0 ff ff  	auipc	ra, 1048572
80003b6c: e7 80 40 57  	jalr	1396(ra)
80003b70: 33 06 85 03  	mul	a2, a0, s8
80003b74: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003b78: 13 77 e6 0f  	andi	a4, a2, 254
80003b7c: 93 06 00 03  	addi	a3, zero, 48
80003b80: 93 07 a0 00  	addi	a5, zero, 10
80003b84: 63 64 f7 00  	bltu	a4, a5, 0x80003b8c <.LBB1_62+0x2cc>
80003b88: 83 26 41 01  	lw	a3, 20(sp)
80003b8c: 33 86 c6 00  	add	a2, a3, a2
80003b90: 93 06 c1 01  	addi	a3, sp, 28
80003b94: b3 86 96 00  	add	a3, a3, s1
80003b98: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003b9c: e3 9e 09 f8  	bnez	s3, 0x80003b38 <.LBB1_62+0x278>
80003ba0: 33 36 89 01  	sltu	a2, s2, s8
80003ba4: 13 46 16 00  	xori	a2, a2, 1
80003ba8: 6f f0 5f f9  	j	0x80003b3c <.LBB1_62+0x27c>
80003bac: 03 25 81 00  	lw	a0, 8(sp)
80003bb0: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003bb4: 13 07 c1 01  	addi	a4, sp, 28
80003bb8: 03 29 c1 00  	lw	s2, 12(sp)
80003bbc: 6f 00 40 40  	j	0x80003fc0 <.LBB1_124+0x2d0>

80003bc0 <.LBB1_108>:
80003bc0: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80003bc4: 13 79 24 00  	andi	s2, s0, 2
80003bc8: 93 04 10 00  	addi	s1, zero, 1
80003bcc: 63 1e 09 02  	bnez	s2, 0x80003c08 <.LBB1_108+0x48>
80003bd0: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80003bd4: 63 6a 9b 02  	bltu	s6, s1, 0x80003c08 <.LBB1_108+0x48>
80003bd8: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80003bdc: 13 0c fb ff  	addi	s8, s6, -1
80003be0: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80003be4: 33 86 8c 00  	add	a2, s9, s0
80003be8: 13 05 00 02  	addi	a0, zero, 32
80003bec: 93 05 0a 00  	mv	a1, s4
80003bf0: 93 86 0a 00  	mv	a3, s5
80003bf4: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80003bf8: 13 04 14 00  	addi	s0, s0, 1
80003bfc: e3 14 8c fe  	bne	s8, s0, 0x80003be4 <.LBB1_108+0x24>
80003c00: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003c04: b3 8c 8c 00  	add	s9, s9, s0
80003c08: 03 c5 09 00  	lbu	a0, 0(s3)
80003c0c: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80003c10: 93 89 49 00  	addi	s3, s3, 4
80003c14: 13 8c 1c 00  	addi	s8, s9, 1
80003c18: 93 05 0a 00  	mv	a1, s4
80003c1c: 13 86 0c 00  	mv	a2, s9
80003c20: 93 86 0a 00  	mv	a3, s5
80003c24: 13 89 0b 00  	mv	s2, s7
80003c28: e7 80 0b 00  	jalr	s7
80003c2c: 33 b5 64 01  	sltu	a0, s1, s6
80003c30: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80003c34: 33 65 a4 00  	or	a0, s0, a0
80003c38: 63 1c 05 3a  	bnez	a0, 0x80003ff0 <.LBB1_124+0x300>
;           while (l++ < width) {
80003c3c: 33 04 9b 40  	sub	s0, s6, s1
80003c40: 93 0b e0 02  	addi	s7, zero, 46
80003c44: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80003c48: 13 0c 1c 00  	addi	s8, s8, 1
80003c4c: 13 05 00 02  	addi	a0, zero, 32
80003c50: 93 05 0a 00  	mv	a1, s4
80003c54: 93 86 0a 00  	mv	a3, s5
80003c58: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80003c5c: 13 04 f4 ff  	addi	s0, s0, -1
80003c60: e3 12 04 fe  	bnez	s0, 0x80003c44 <.LBB1_108+0x84>
80003c64: 13 0b 50 02  	addi	s6, zero, 37
80003c68: 13 04 1d 00  	addi	s0, s10, 1
80003c6c: 6f f0 df 91  	j	0x80003588 <.LBB1_183+0x30>

80003c70 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80003c70: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80003c74: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80003c78: 63 14 05 00  	bnez	a0, 0x80003c80 <.LBB1_117+0x10>
80003c7c: 93 fe fe fe  	andi	t4, t4, -17
80003c80: 93 04 a0 00  	addi	s1, zero, 10
80003c84: 13 04 f0 00  	addi	s0, zero, 15
80003c88: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003c8c: 13 f6 0e 40  	andi	a2, t4, 1024
80003c90: 13 56 a6 00  	srli	a2, a2, 10
80003c94: b3 f5 c5 00  	and	a1, a1, a2
80003c98: 93 07 00 00  	mv	a5, zero
80003c9c: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ca0: 63 98 05 10  	bnez	a1, 0x80003db0 <.LBB1_124+0xc0>
80003ca4: 93 05 00 00  	mv	a1, zero
80003ca8: 6f 00 40 03  	j	0x80003cdc <.LBB1_117+0x6c>
80003cac: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003cb0: 33 06 d6 00  	add	a2, a2, a3
80003cb4: 93 87 15 00  	addi	a5, a1, 1
80003cb8: 93 06 c1 01  	addi	a3, sp, 28
80003cbc: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003cc0: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80003cc4: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003cc8: 93 b5 f5 01  	sltiu	a1, a1, 31
80003ccc: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003cd0: 23 80 c6 00  	sb	a2, 0(a3)
80003cd4: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003cd8: 63 0c 07 0c  	beqz	a4, 0x80003db0 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003cdc: 93 76 e5 00  	andi	a3, a0, 14
80003ce0: 13 06 00 03  	addi	a2, zero, 48
80003ce4: e3 e4 96 fc  	bltu	a3, s1, 0x80003cac <.LBB1_117+0x3c>
80003ce8: 13 06 70 03  	addi	a2, zero, 55
80003cec: 6f f0 1f fc  	j	0x80003cac <.LBB1_117+0x3c>

80003cf0 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80003cf0: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80003cf4: 03 c5 07 00  	lbu	a0, 0(a5)
80003cf8: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80003cfc: 63 0c 05 02  	beqz	a0, 0x80003d34 <.LBB1_124+0x44>
80003d00: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80003d04: 63 84 0b 00  	beqz	s7, 0x80003d0c <.LBB1_124+0x1c>
80003d08: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80003d0c: 93 85 f5 ff  	addi	a1, a1, -1
80003d10: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80003d14: 03 c7 16 00  	lbu	a4, 1(a3)
80003d18: 13 86 16 00  	addi	a2, a3, 1
80003d1c: b3 36 e0 00  	snez	a3, a4
80003d20: 33 37 b0 00  	snez	a4, a1
80003d24: 33 77 d7 00  	and	a4, a4, a3
80003d28: 93 85 f5 ff  	addi	a1, a1, -1
80003d2c: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80003d30: e3 12 07 fe  	bnez	a4, 0x80003d14 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80003d34: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
80003d38: 93 75 04 40  	andi	a1, s0, 1024
80003d3c: 93 b4 15 00  	seqz	s1, a1
80003d40: 23 2a c1 00  	sw	a2, 20(sp)
80003d44: b3 35 76 01  	sltu	a1, a2, s7
80003d48: b3 e5 b4 00  	or	a1, s1, a1
80003d4c: 63 94 05 00  	bnez	a1, 0x80003d54 <.LBB1_124+0x64>
80003d50: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80003d54: 93 75 24 00  	andi	a1, s0, 2
80003d58: 23 26 b1 00  	sw	a1, 12(sp)
80003d5c: 63 96 05 2a  	bnez	a1, 0x80004008 <.LBB1_124+0x318>
80003d60: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80003d64: 63 fe 65 29  	bgeu	a1, s6, 0x80004000 <.LBB1_124+0x310>
80003d68: 23 24 f1 00  	sw	a5, 8(sp)
80003d6c: 13 04 00 00  	mv	s0, zero
80003d70: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80003d74: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80003d78: 33 86 8c 00  	add	a2, s9, s0
80003d7c: 13 05 00 02  	addi	a0, zero, 32
80003d80: 93 05 0a 00  	mv	a1, s4
80003d84: 93 86 0a 00  	mv	a3, s5
80003d88: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80003d8c: 13 04 14 00  	addi	s0, s0, 1
80003d90: e3 14 89 fe  	bne	s2, s0, 0x80003d78 <.LBB1_124+0x88>
80003d94: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003d98: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80003d9c: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80003da0: 23 2a b1 00  	sw	a1, 20(sp)
80003da4: b3 8c 8c 00  	add	s9, s9, s0
80003da8: 13 09 0c 00  	mv	s2, s8
80003dac: 6f 00 c0 25  	j	0x80004008 <.LBB1_124+0x318>
80003db0: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80003db4: 13 07 c1 01  	addi	a4, sp, 28
80003db8: 93 08 00 01  	addi	a7, zero, 16
80003dbc: 13 0e 80 00  	addi	t3, zero, 8
80003dc0: 13 05 09 00  	mv	a0, s2
80003dc4: 93 05 0a 00  	mv	a1, s4
80003dc8: 13 86 0c 00  	mv	a2, s9
80003dcc: 93 86 0a 00  	mv	a3, s5
80003dd0: 13 08 00 00  	mv	a6, zero
80003dd4: 93 83 0b 00  	mv	t2, s7
80003dd8: 97 10 00 00  	auipc	ra, 1
80003ddc: e7 80 00 fa  	jalr	-96(ra)
80003de0: 13 0c 05 00  	mv	s8, a0
80003de4: 6f 00 00 21  	j	0x80003ff4 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80003de8: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
80003dec: 63 14 08 00  	bnez	a6, 0x80003df4 <.LBB1_124+0x104>
80003df0: 13 74 f4 fe  	andi	s0, s0, -17
80003df4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80003df8: 13 76 04 40  	andi	a2, s0, 1024
80003dfc: 13 56 a6 00  	srli	a2, a2, 10
80003e00: b3 f5 c5 00  	and	a1, a1, a2
80003e04: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003e08: 63 9c 05 06  	bnez	a1, 0x80003e80 <.LBB1_124+0x190>
80003e0c: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80003e10: 13 56 f8 41  	srai	a2, a6, 31
80003e14: b3 06 c8 00  	add	a3, a6, a2
80003e18: b3 c6 c6 00  	xor	a3, a3, a2
80003e1c: 13 76 04 02  	andi	a2, s0, 32
80003e20: 13 46 16 06  	xori	a2, a2, 97
80003e24: 93 08 66 0f  	addi	a7, a2, 246
80003e28: 6f 00 40 03  	j	0x80003e5c <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e2c: 33 05 f6 00  	add	a0, a2, a5
80003e30: 93 87 15 00  	addi	a5, a1, 1
80003e34: 13 06 c1 01  	addi	a2, sp, 28
80003e38: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003e3c: b3 b6 86 01  	sltu	a3, a3, s8
80003e40: 93 c6 16 00  	xori	a3, a3, 1
80003e44: 93 b5 f5 01  	sltiu	a1, a1, 31
80003e48: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e4c: 23 00 a6 00  	sb	a0, 0(a2)
80003e50: 93 85 07 00  	mv	a1, a5
80003e54: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003e58: 63 84 04 02  	beqz	s1, 0x80003e80 <.LBB1_124+0x190>
;       value /= base;
80003e5c: 33 d7 86 03  	divu	a4, a3, s8
80003e60: 33 06 87 03  	mul	a2, a4, s8
80003e64: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003e68: 13 f5 e7 0f  	andi	a0, a5, 254
80003e6c: 13 06 00 03  	addi	a2, zero, 48
80003e70: 93 04 a0 00  	addi	s1, zero, 10
80003e74: e3 6c 95 fa  	bltu	a0, s1, 0x80003e2c <.LBB1_124+0x13c>
80003e78: 13 86 08 00  	mv	a2, a7
80003e7c: 6f f0 1f fb  	j	0x80003e2c <.LBB1_124+0x13c>
80003e80: 93 89 49 00  	addi	s3, s3, 4
80003e84: 13 58 f8 01  	srli	a6, a6, 31
80003e88: 13 07 c1 01  	addi	a4, sp, 28
80003e8c: 13 05 09 00  	mv	a0, s2
80003e90: 93 05 0a 00  	mv	a1, s4
80003e94: 13 86 0c 00  	mv	a2, s9
80003e98: 93 86 0a 00  	mv	a3, s5
80003e9c: 6f 00 80 13  	j	0x80003fd4 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80003ea0: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80003ea4: 63 14 05 00  	bnez	a0, 0x80003eac <.LBB1_124+0x1bc>
80003ea8: 13 74 f4 fe  	andi	s0, s0, -17
80003eac: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003eb0: 13 76 04 40  	andi	a2, s0, 1024
80003eb4: 13 56 a6 00  	srli	a2, a2, 10
80003eb8: b3 f5 c5 00  	and	a1, a1, a2
80003ebc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003ec0: 63 9c 05 0e  	bnez	a1, 0x80003fb8 <.LBB1_124+0x2c8>
80003ec4: 13 06 00 00  	mv	a2, zero
80003ec8: 93 75 04 02  	andi	a1, s0, 32
80003ecc: 93 c5 15 06  	xori	a1, a1, 97
80003ed0: 13 88 65 0f  	addi	a6, a1, 246
80003ed4: 6f 00 40 03  	j	0x80003f08 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ed8: 33 87 e7 00  	add	a4, a5, a4
80003edc: 93 07 16 00  	addi	a5, a2, 1
80003ee0: 93 05 c1 01  	addi	a1, sp, 28
80003ee4: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003ee8: 33 35 85 01  	sltu	a0, a0, s8
80003eec: 13 45 15 00  	xori	a0, a0, 1
80003ef0: 13 36 f6 01  	sltiu	a2, a2, 31
80003ef4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003ef8: 23 80 e4 00  	sb	a4, 0(s1)
80003efc: 13 86 07 00  	mv	a2, a5
80003f00: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f04: 63 8a 05 0a  	beqz	a1, 0x80003fb8 <.LBB1_124+0x2c8>
;       value /= base;
80003f08: b3 56 85 03  	divu	a3, a0, s8
80003f0c: 33 87 86 03  	mul	a4, a3, s8
80003f10: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f14: 93 74 e7 0f  	andi	s1, a4, 254
80003f18: 93 07 00 03  	addi	a5, zero, 48
80003f1c: 93 05 a0 00  	addi	a1, zero, 10
80003f20: e3 ec b4 fa  	bltu	s1, a1, 0x80003ed8 <.LBB1_124+0x1e8>
80003f24: 93 07 08 00  	mv	a5, a6
80003f28: 6f f0 1f fb  	j	0x80003ed8 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80003f2c: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80003f30: 63 14 05 00  	bnez	a0, 0x80003f38 <.LBB1_124+0x248>
80003f34: 13 74 f4 fe  	andi	s0, s0, -17
80003f38: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f3c: 13 76 04 40  	andi	a2, s0, 1024
80003f40: 13 56 a6 00  	srli	a2, a2, 10
80003f44: b3 f5 c5 00  	and	a1, a1, a2
80003f48: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80003f4c: 63 96 05 06  	bnez	a1, 0x80003fb8 <.LBB1_124+0x2c8>
80003f50: 13 06 00 00  	mv	a2, zero
80003f54: 93 75 04 02  	andi	a1, s0, 32
80003f58: 93 c5 15 06  	xori	a1, a1, 97
80003f5c: 13 88 65 0f  	addi	a6, a1, 246
80003f60: 6f 00 40 03  	j	0x80003f94 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f64: 33 87 e7 00  	add	a4, a5, a4
80003f68: 93 07 16 00  	addi	a5, a2, 1
80003f6c: 93 05 c1 01  	addi	a1, sp, 28
80003f70: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f74: 33 35 85 01  	sltu	a0, a0, s8
80003f78: 13 45 15 00  	xori	a0, a0, 1
80003f7c: 13 36 f6 01  	sltiu	a2, a2, 31
80003f80: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003f84: 23 80 e4 00  	sb	a4, 0(s1)
80003f88: 13 86 07 00  	mv	a2, a5
80003f8c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80003f90: 63 84 05 02  	beqz	a1, 0x80003fb8 <.LBB1_124+0x2c8>
;       value /= base;
80003f94: b3 56 85 03  	divu	a3, a0, s8
80003f98: 33 87 86 03  	mul	a4, a3, s8
80003f9c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80003fa0: 93 74 e7 0f  	andi	s1, a4, 254
80003fa4: 93 07 00 03  	addi	a5, zero, 48
80003fa8: 93 05 a0 00  	addi	a1, zero, 10
80003fac: e3 ec b4 fa  	bltu	s1, a1, 0x80003f64 <.LBB1_124+0x274>
80003fb0: 93 07 08 00  	mv	a5, a6
80003fb4: 6f f0 1f fb  	j	0x80003f64 <.LBB1_124+0x274>
80003fb8: 93 89 49 00  	addi	s3, s3, 4
80003fbc: 13 07 c1 01  	addi	a4, sp, 28
80003fc0: 13 05 09 00  	mv	a0, s2
80003fc4: 93 05 0a 00  	mv	a1, s4
80003fc8: 13 86 0c 00  	mv	a2, s9
80003fcc: 93 86 0a 00  	mv	a3, s5
80003fd0: 13 08 00 00  	mv	a6, zero
80003fd4: 93 08 0c 00  	mv	a7, s8
80003fd8: 93 83 0b 00  	mv	t2, s7
80003fdc: 13 0e 0b 00  	mv	t3, s6
80003fe0: 93 0e 04 00  	mv	t4, s0
80003fe4: 97 10 00 00  	auipc	ra, 1
80003fe8: e7 80 40 d9  	jalr	-620(ra)
80003fec: 13 0c 05 00  	mv	s8, a0
80003ff0: 13 0b 50 02  	addi	s6, zero, 37
80003ff4: 93 0b e0 02  	addi	s7, zero, 46
80003ff8: 13 04 1d 00  	addi	s0, s10, 1
80003ffc: 6f f0 cf d8  	j	0x80003588 <.LBB1_183+0x30>
80004000: 93 85 15 00  	addi	a1, a1, 1
80004004: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004008: 63 00 05 04  	beqz	a0, 0x80004048 <.LBB1_124+0x358>
8000400c: 13 84 17 00  	addi	s0, a5, 1
80004010: 6f 00 00 03  	j	0x80004040 <.LBB1_124+0x350>
80004014: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80004018: 13 8c 1c 00  	addi	s8, s9, 1
8000401c: 13 75 f5 0f  	andi	a0, a0, 255
80004020: 93 05 0a 00  	mv	a1, s4
80004024: 13 86 0c 00  	mv	a2, s9
80004028: 93 86 0a 00  	mv	a3, s5
8000402c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80004030: 03 45 04 00  	lbu	a0, 0(s0)
80004034: 13 04 14 00  	addi	s0, s0, 1
80004038: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000403c: 63 08 05 00  	beqz	a0, 0x8000404c <.LBB1_124+0x35c>
80004040: e3 9c 04 fc  	bnez	s1, 0x80004018 <.LBB1_124+0x328>
80004044: e3 98 0b fc  	bnez	s7, 0x80004014 <.LBB1_124+0x324>
80004048: 13 8c 0c 00  	mv	s8, s9
8000404c: 03 25 c1 00  	lw	a0, 12(sp)
80004050: 13 35 15 00  	seqz	a0, a0
80004054: 03 26 41 01  	lw	a2, 20(sp)
80004058: b3 35 66 01  	sltu	a1, a2, s6
8000405c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80004060: 33 65 b5 00  	or	a0, a0, a1
80004064: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80004068: e3 14 05 f8  	bnez	a0, 0x80003ff0 <.LBB1_124+0x300>
;           while (l++ < width) {
8000406c: 33 04 cb 40  	sub	s0, s6, a2
80004070: 93 0b e0 02  	addi	s7, zero, 46
80004074: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80004078: 13 0c 1c 00  	addi	s8, s8, 1
8000407c: 13 05 00 02  	addi	a0, zero, 32
80004080: 93 05 0a 00  	mv	a1, s4
80004084: 93 86 0a 00  	mv	a3, s5
80004088: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000408c: 13 04 f4 ff  	addi	s0, s0, -1
80004090: e3 12 04 fe  	bnez	s0, 0x80004074 <.LBB1_124+0x384>
80004094: 13 0b 50 02  	addi	s6, zero, 37
80004098: 13 04 1d 00  	addi	s0, s10, 1
8000409c: 6f f0 cf ce  	j	0x80003588 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800040a0: 13 86 0c 00  	mv	a2, s9
800040a4: 63 e4 5c 01  	bltu	s9, s5, 0x800040ac <.LBB1_124+0x3bc>
800040a8: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
800040ac: 13 05 00 00  	mv	a0, zero
800040b0: 93 05 0a 00  	mv	a1, s4
800040b4: 93 86 0a 00  	mv	a3, s5
800040b8: e7 00 09 00  	jalr	s2
;   return (int)idx;
800040bc: 13 85 0c 00  	mv	a0, s9
800040c0: 83 2d c1 03  	lw	s11, 60(sp)
800040c4: 03 2d 01 04  	lw	s10, 64(sp)
800040c8: 83 2c 41 04  	lw	s9, 68(sp)
800040cc: 03 2c 81 04  	lw	s8, 72(sp)
800040d0: 83 2b c1 04  	lw	s7, 76(sp)
800040d4: 03 2b 01 05  	lw	s6, 80(sp)
800040d8: 83 2a 41 05  	lw	s5, 84(sp)
800040dc: 03 2a 81 05  	lw	s4, 88(sp)
800040e0: 83 29 c1 05  	lw	s3, 92(sp)
800040e4: 03 29 01 06  	lw	s2, 96(sp)
800040e8: 83 24 41 06  	lw	s1, 100(sp)
800040ec: 03 24 81 06  	lw	s0, 104(sp)
800040f0: 83 20 c1 06  	lw	ra, 108(sp)
800040f4: 13 01 01 07  	addi	sp, sp, 112
800040f8: 67 80 00 00  	ret

800040fc <_out_char.llvm.1805434900161566649>:
;   if (character) {
800040fc: 63 04 05 0a  	beqz	a0, 0x800041a4 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80004100: f3 25 40 f1  	csrr	a1, mhartid
80004104: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80004108: 33 86 c5 02  	mul	a2, a1, a2

8000410c <.LBB2_6>:
8000410c: 97 26 00 00  	auipc	a3, 2
80004110: 93 86 06 b5  	addi	a3, a3, -1200
80004114: b3 05 d6 00  	add	a1, a2, a3
80004118: 03 a7 05 00  	lw	a4, 0(a1)
8000411c: 93 07 17 00  	addi	a5, a4, 1
80004120: 23 a0 f5 00  	sw	a5, 0(a1)
80004124: 33 87 e5 00  	add	a4, a1, a4
80004128: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
8000412c: 03 a7 05 00  	lw	a4, 0(a1)
80004130: 13 07 47 c0  	addi	a4, a4, -1020
80004134: 33 37 e0 00  	snez	a4, a4
80004138: 13 05 65 ff  	addi	a0, a0, -10
8000413c: 33 35 a0 00  	snez	a0, a0
80004140: 33 75 e5 00  	and	a0, a0, a4
80004144: 63 10 05 06  	bnez	a0, 0x800041a4 <.LBB2_8+0x18>
80004148: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
8000414c: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004150: 23 26 05 00  	sw	zero, 12(a0)
80004154: 93 06 00 04  	addi	a3, zero, 64
80004158: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
8000415c: 23 2a 05 00  	sw	zero, 20(a0)
80004160: 93 06 10 00  	addi	a3, zero, 1
80004164: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80004168: 23 2e 05 00  	sw	zero, 28(a0)
8000416c: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004170: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80004174: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80004178: 23 22 05 02  	sw	zero, 36(a0)
8000417c: 23 20 c5 02  	sw	a2, 32(a0)

80004180 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80004180: 17 25 00 00  	auipc	a0, 2
80004184: 13 05 05 8c  	addi	a0, a0, -1856
80004188: 23 20 d5 00  	sw	a3, 0(a0)

8000418c <.LBB2_8>:
8000418c: 17 25 00 00  	auipc	a0, 2
80004190: 13 05 45 8f  	addi	a0, a0, -1804
;         while (fromhost == 0)
80004194: 03 26 05 00  	lw	a2, 0(a0)
80004198: e3 0e 06 fe  	beqz	a2, 0x80004194 <.LBB2_8+0x8>
;         fromhost = 0;
8000419c: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
800041a0: 23 a0 05 00  	sw	zero, 0(a1)
; }
800041a4: 67 80 00 00  	ret

800041a8 <_out_null>:
; }
800041a8: 67 80 00 00  	ret

800041ac <_ftoa>:
; {
800041ac: 13 01 01 f9  	addi	sp, sp, -112
800041b0: 23 26 11 06  	sw	ra, 108(sp)
800041b4: 23 24 81 06  	sw	s0, 104(sp)
800041b8: 23 22 91 06  	sw	s1, 100(sp)
800041bc: 23 20 21 07  	sw	s2, 96(sp)
800041c0: 23 2e 31 05  	sw	s3, 92(sp)
800041c4: 23 2c 41 05  	sw	s4, 88(sp)
800041c8: 23 2a 51 05  	sw	s5, 84(sp)
800041cc: 23 28 61 05  	sw	s6, 80(sp)
800041d0: 23 26 71 05  	sw	s7, 76(sp)
800041d4: 23 24 81 05  	sw	s8, 72(sp)
800041d8: 23 22 91 05  	sw	s9, 68(sp)
800041dc: 23 20 a1 05  	sw	s10, 64(sp)
800041e0: 27 3c 81 02  	fsd	fs0, 56(sp)
800041e4: 27 38 91 02  	fsd	fs1, 48(sp)
800041e8: 27 34 21 03  	fsd	fs2, 40(sp)

800041ec <.LBB4_83>:
800041ec: 97 24 00 00  	auipc	s1, 2
800041f0: 93 84 44 9c  	addi	s1, s1, -1596
800041f4: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
800041f8: d3 04 a0 a2  	fle.d	s1, ft0, fa0
800041fc: 93 0a 08 00  	mv	s5, a6
80004200: 13 89 07 00  	mv	s2, a5
80004204: 93 89 06 00  	mv	s3, a3
80004208: 13 0a 06 00  	mv	s4, a2
8000420c: 13 8b 05 00  	mv	s6, a1
80004210: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80004214: 63 98 04 0e  	bnez	s1, 0x80004304 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004218: 13 f5 2a 00  	andi	a0, s5, 2
8000421c: 93 f5 3a 00  	andi	a1, s5, 3
80004220: b3 35 b0 00  	snez	a1, a1
80004224: 13 36 59 00  	sltiu	a2, s2, 5
80004228: b3 65 b6 00  	or	a1, a2, a1
8000422c: 93 5c 15 00  	srli	s9, a0, 1
80004230: 13 04 0a 00  	mv	s0, s4
80004234: 63 96 05 02  	bnez	a1, 0x80004260 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80004238: 93 04 c9 ff  	addi	s1, s2, -4
8000423c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80004240: 13 04 16 00  	addi	s0, a2, 1
80004244: 13 05 00 02  	addi	a0, zero, 32
80004248: 93 05 0b 00  	mv	a1, s6
8000424c: 93 86 09 00  	mv	a3, s3
80004250: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80004254: 93 84 f4 ff  	addi	s1, s1, -1
80004258: 13 06 04 00  	mv	a2, s0
8000425c: e3 92 04 fe  	bnez	s1, 0x80004240 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80004260: 93 04 14 00  	addi	s1, s0, 1
80004264: 13 05 d0 02  	addi	a0, zero, 45
80004268: 93 05 0b 00  	mv	a1, s6
8000426c: 13 06 04 00  	mv	a2, s0
80004270: 93 86 09 00  	mv	a3, s3
80004274: e7 80 0b 00  	jalr	s7
80004278: 93 0a 24 00  	addi	s5, s0, 2
8000427c: 13 05 90 06  	addi	a0, zero, 105
80004280: 93 05 0b 00  	mv	a1, s6
80004284: 13 86 04 00  	mv	a2, s1
80004288: 93 86 09 00  	mv	a3, s3
8000428c: e7 80 0b 00  	jalr	s7
80004290: 13 0c 34 00  	addi	s8, s0, 3
80004294: 13 05 e0 06  	addi	a0, zero, 110
80004298: 93 05 0b 00  	mv	a1, s6
8000429c: 13 86 0a 00  	mv	a2, s5
800042a0: 93 86 09 00  	mv	a3, s3
800042a4: e7 80 0b 00  	jalr	s7
800042a8: 93 04 44 00  	addi	s1, s0, 4
800042ac: 13 05 60 06  	addi	a0, zero, 102
800042b0: 93 05 0b 00  	mv	a1, s6
800042b4: 13 06 0c 00  	mv	a2, s8
800042b8: 93 86 09 00  	mv	a3, s3
800042bc: e7 80 0b 00  	jalr	s7
800042c0: 33 85 44 41  	sub	a0, s1, s4
800042c4: 33 35 25 01  	sltu	a0, a0, s2
800042c8: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800042cc: 93 c5 1c 00  	xori	a1, s9, 1
800042d0: 33 e5 a5 00  	or	a0, a1, a0
800042d4: 63 16 05 56  	bnez	a0, 0x80004840 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800042d8: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800042dc: 13 84 14 00  	addi	s0, s1, 1
800042e0: 13 05 00 02  	addi	a0, zero, 32
800042e4: 93 05 0b 00  	mv	a1, s6
800042e8: 13 86 04 00  	mv	a2, s1
800042ec: 93 86 09 00  	mv	a3, s3
800042f0: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800042f4: 33 05 8a 00  	add	a0, s4, s0
800042f8: 93 04 04 00  	mv	s1, s0
800042fc: e3 60 25 ff  	bltu	a0, s2, 0x800042dc <.LBB4_83+0xf0>
80004300: 6f 00 40 54  	j	0x80004844 <.LBB4_90+0x378>
80004304: 53 04 a5 22  	fmv.d	fs0, fa0

80004308 <.LBB4_84>:
80004308: 17 25 00 00  	auipc	a0, 2
8000430c: 13 05 05 8b  	addi	a0, a0, -1872
80004310: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80004314: 53 05 05 a2  	fle.d	a0, fa0, ft0
80004318: 63 1e 05 00  	bnez	a0, 0x80004334 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
8000431c: 93 f5 4a 00  	andi	a1, s5, 4
80004320: 13 b5 15 00  	seqz	a0, a1
80004324: 63 82 05 06  	beqz	a1, 0x80004388 <.LBB4_88>

80004328 <.LBB4_85>:
80004328: 17 1c 00 00  	auipc	s8, 1
8000432c: 13 0c cc 4c  	addi	s8, s8, 1228
80004330: 6f 00 00 06  	j	0x80004390 <.LBB4_88+0x8>

80004334 <.LBB4_86>:
80004334: 17 25 00 00  	auipc	a0, 2
80004338: 13 05 c5 88  	addi	a0, a0, -1908
8000433c: 07 30 05 00  	fld	ft0, 0(a0)

80004340 <.LBB4_87>:
80004340: 17 25 00 00  	auipc	a0, 2
80004344: 13 05 85 88  	addi	a0, a0, -1912
80004348: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
8000434c: 53 05 04 a2  	fle.d	a0, fs0, ft0
80004350: d3 85 80 a2  	fle.d	a1, ft1, fs0
80004354: 33 75 b5 00  	and	a0, a0, a1
80004358: 63 1e 05 0e  	bnez	a0, 0x80004454 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000435c: 13 85 0b 00  	mv	a0, s7
80004360: 93 05 0b 00  	mv	a1, s6
80004364: 13 06 0a 00  	mv	a2, s4
80004368: 93 86 09 00  	mv	a3, s3
8000436c: 53 05 84 22  	fmv.d	fa0, fs0
80004370: 93 07 09 00  	mv	a5, s2
80004374: 13 88 0a 00  	mv	a6, s5
80004378: 97 00 00 00  	auipc	ra, 0
8000437c: e7 80 40 51  	jalr	1300(ra)
80004380: 13 04 05 00  	mv	s0, a0
80004384: 6f 00 00 4c  	j	0x80004844 <.LBB4_90+0x378>

80004388 <.LBB4_88>:
80004388: 17 1c 00 00  	auipc	s8, 1
8000438c: 13 0c dc 47  	addi	s8, s8, 1149
80004390: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80004394: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004398: 13 f5 3a 00  	andi	a0, s5, 3
8000439c: 33 35 a0 00  	snez	a0, a0
800043a0: b3 b5 2c 01  	sltu	a1, s9, s2
800043a4: 93 c5 15 00  	xori	a1, a1, 1
800043a8: 33 65 b5 00  	or	a0, a0, a1
800043ac: 93 fa 2a 00  	andi	s5, s5, 2
800043b0: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800043b4: 63 16 05 02  	bnez	a0, 0x800043e0 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800043b8: 33 04 99 41  	sub	s0, s2, s9
800043bc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800043c0: 93 04 16 00  	addi	s1, a2, 1
800043c4: 13 05 00 02  	addi	a0, zero, 32
800043c8: 93 05 0b 00  	mv	a1, s6
800043cc: 93 86 09 00  	mv	a3, s3
800043d0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800043d4: 13 04 f4 ff  	addi	s0, s0, -1
800043d8: 13 86 04 00  	mv	a2, s1
800043dc: e3 12 04 fe  	bnez	s0, 0x800043c0 <.LBB4_88+0x38>
800043e0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800043e4: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
800043e8: 33 05 9c 01  	add	a0, s8, s9
800043ec: 03 45 05 00  	lbu	a0, 0(a0)
800043f0: 13 86 04 00  	mv	a2, s1
800043f4: 13 84 fc ff  	addi	s0, s9, -1
800043f8: 93 84 14 00  	addi	s1, s1, 1
800043fc: 93 05 0b 00  	mv	a1, s6
80004400: 93 86 09 00  	mv	a3, s3
80004404: e7 80 0b 00  	jalr	s7
80004408: 93 0c 04 00  	mv	s9, s0
;   while (len) {
8000440c: e3 1e 04 fc  	bnez	s0, 0x800043e8 <.LBB4_88+0x60>
80004410: 33 85 44 41  	sub	a0, s1, s4
80004414: 33 35 25 01  	sltu	a0, a0, s2
80004418: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000441c: 93 c5 1a 00  	xori	a1, s5, 1
80004420: 33 e5 a5 00  	or	a0, a1, a0
80004424: 63 1e 05 40  	bnez	a0, 0x80004840 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004428: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000442c: 13 84 14 00  	addi	s0, s1, 1
80004430: 13 05 00 02  	addi	a0, zero, 32
80004434: 93 05 0b 00  	mv	a1, s6
80004438: 13 86 04 00  	mv	a2, s1
8000443c: 93 86 09 00  	mv	a3, s3
80004440: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004444: 33 05 8a 00  	add	a0, s4, s0
80004448: 93 04 04 00  	mv	s1, s0
8000444c: e3 60 25 ff  	bltu	a0, s2, 0x8000442c <.LBB4_88+0xa4>
80004450: 6f 00 40 3f  	j	0x80004844 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80004454: 13 f5 0a 40  	andi	a0, s5, 1024
80004458: 13 0c 60 00  	addi	s8, zero, 6
8000445c: 63 04 05 00  	beqz	a0, 0x80004464 <.LBB4_88+0xdc>
80004460: 13 0c 07 00  	mv	s8, a4
80004464: 13 05 a0 00  	addi	a0, zero, 10
80004468: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
8000446c: 63 6c ac 02  	bltu	s8, a0, 0x800044a4 <.LBB4_88+0x11c>
80004470: 93 04 6c ff  	addi	s1, s8, -10
80004474: 13 05 f0 01  	addi	a0, zero, 31
80004478: 63 e4 a4 00  	bltu	s1, a0, 0x80004480 <.LBB4_88+0xf8>
8000447c: 93 04 f0 01  	addi	s1, zero, 31
80004480: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80004484: 13 05 81 00  	addi	a0, sp, 8
80004488: 93 05 00 03  	addi	a1, zero, 48
8000448c: 13 06 04 00  	mv	a2, s0
80004490: 97 c0 ff ff  	auipc	ra, 1048572
80004494: e7 80 00 b7  	jalr	-1168(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80004498: 13 c5 f4 ff  	not	a0, s1
8000449c: 33 0c ac 00  	add	s8, s8, a0
800044a0: 6f 00 80 00  	j	0x800044a8 <.LBB4_88+0x120>
800044a4: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800044a8: 13 15 3c 00  	slli	a0, s8, 3

800044ac <.LBB4_89>:
800044ac: 97 15 00 00  	auipc	a1, 1
800044b0: 93 85 c5 51  	addi	a1, a1, 1308
800044b4: 33 05 b5 00  	add	a0, a0, a1
800044b8: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800044bc: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800044c0: 53 80 04 d2  	fcvt.d.w	ft0, s1
800044c4: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800044c8: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

800044cc <.LBB4_90>:
800044cc: 17 15 00 00  	auipc	a0, 1
800044d0: 13 05 45 70  	addi	a0, a0, 1796
800044d4: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
800044d8: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
800044dc: d3 01 15 d2  	fcvt.d.wu	ft3, a0
800044e0: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
800044e4: d3 05 01 a2  	fle.d	a1, ft2, ft0
800044e8: 63 90 05 02  	bnez	a1, 0x80004508 <.LBB4_90+0x3c>
;     ++frac;
800044ec: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
800044f0: 53 01 15 d2  	fcvt.d.wu	ft2, a0
800044f4: d3 15 11 a2  	flt.d	a1, ft2, ft1
800044f8: 63 94 05 02  	bnez	a1, 0x80004520 <.LBB4_90+0x54>
800044fc: 13 05 00 00  	mv	a0, zero
;       ++whole;
80004500: 93 84 14 00  	addi	s1, s1, 1
80004504: 6f 00 c0 01  	j	0x80004520 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80004508: d3 15 01 a2  	flt.d	a1, ft2, ft0
8000450c: 63 9a 05 00  	bnez	a1, 0x80004520 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80004510: 93 35 15 00  	seqz	a1, a0
80004514: 13 76 15 00  	andi	a2, a0, 1
80004518: b3 65 b6 00  	or	a1, a2, a1
8000451c: 33 85 a5 00  	add	a0, a1, a0
80004520: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80004524: 63 0c 0c 0c  	beqz	s8, 0x800045fc <.LBB4_90+0x130>
80004528: 13 06 00 00  	mv	a2, zero
8000452c: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004530: 33 83 85 00  	add	t1, a1, s0
80004534: 93 02 00 02  	addi	t0, zero, 32
80004538: 33 87 82 40  	sub	a4, t0, s0
8000453c: b7 d5 cc cc  	lui	a1, 838861
80004540: 93 83 d5 cc  	addi	t2, a1, -819
80004544: 13 08 a0 00  	addi	a6, zero, 10
80004548: 93 08 90 00  	addi	a7, zero, 9
8000454c: 63 04 c7 0c  	beq	a4, a2, 0x80004614 <.LBB4_90+0x148>
80004550: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80004554: 33 35 75 02  	mulhu	a0, a0, t2
80004558: 13 55 35 00  	srli	a0, a0, 3
8000455c: b3 06 05 03  	mul	a3, a0, a6
80004560: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80004564: 93 e6 06 03  	ori	a3, a3, 48
80004568: b3 07 c3 00  	add	a5, t1, a2
8000456c: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80004570: 13 06 16 00  	addi	a2, a2, 1
80004574: e3 ec b8 fc  	bltu	a7, a1, 0x8000454c <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80004578: 33 05 c4 00  	add	a0, s0, a2
8000457c: 93 05 f5 ff  	addi	a1, a0, -1
80004580: 93 06 e0 01  	addi	a3, zero, 30
80004584: b3 b6 b6 00  	sltu	a3, a3, a1
80004588: 33 47 cc 00  	xor	a4, s8, a2
8000458c: 13 37 17 00  	seqz	a4, a4
80004590: b3 e6 e6 00  	or	a3, a3, a4
80004594: 63 94 06 08  	bnez	a3, 0x8000461c <.LBB4_90+0x150>
80004598: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000459c: 33 05 85 00  	add	a0, a0, s0
800045a0: 93 45 f6 ff  	not	a1, a2
800045a4: 33 8c 85 01  	add	s8, a1, s8
800045a8: 33 04 c4 00  	add	s0, s0, a2
800045ac: 93 05 f0 01  	addi	a1, zero, 31
800045b0: b3 86 85 40  	sub	a3, a1, s0
800045b4: 33 05 c5 00  	add	a0, a0, a2
800045b8: 93 05 0c 00  	mv	a1, s8
800045bc: 63 64 dc 00  	bltu	s8, a3, 0x800045c4 <.LBB4_90+0xf8>
800045c0: 93 85 06 00  	mv	a1, a3
800045c4: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800045c8: 93 05 00 03  	addi	a1, zero, 48
800045cc: 97 c0 ff ff  	auipc	ra, 1048572
800045d0: e7 80 40 a3  	jalr	-1484(ra)
800045d4: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800045d8: b3 05 a4 00  	add	a1, s0, a0
800045dc: 93 b5 f5 01  	sltiu	a1, a1, 31
800045e0: 33 46 ac 00  	xor	a2, s8, a0
800045e4: 33 36 c0 00  	snez	a2, a2
800045e8: 33 f6 c5 00  	and	a2, a1, a2
800045ec: 13 05 15 00  	addi	a0, a0, 1
800045f0: e3 14 06 fe  	bnez	a2, 0x800045d8 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
800045f4: 33 05 a4 00  	add	a0, s0, a0
800045f8: 6f 00 80 02  	j	0x80004620 <.LBB4_90+0x154>
;     diff = value - (double)whole;
800045fc: d3 80 04 d2  	fcvt.d.w	ft1, s1
80004600: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80004604: 53 05 10 a2  	fle.d	a0, ft0, ft1
80004608: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
8000460c: b3 84 a4 00  	add	s1, s1, a0
80004610: 6f 00 c0 03  	j	0x8000464c <.LBB4_90+0x180>
80004614: 13 04 00 02  	addi	s0, zero, 32
80004618: 6f 00 80 03  	j	0x80004650 <.LBB4_90+0x184>
8000461c: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004620: 63 8e 05 00  	beqz	a1, 0x8000463c <.LBB4_90+0x170>
;       buf[len++] = '.';
80004624: 13 04 15 00  	addi	s0, a0, 1
80004628: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
8000462c: 33 85 a5 00  	add	a0, a1, a0
80004630: 93 05 e0 02  	addi	a1, zero, 46
80004634: 23 00 b5 00  	sb	a1, 0(a0)
80004638: 6f 00 80 00  	j	0x80004640 <.LBB4_90+0x174>
8000463c: 13 04 05 00  	mv	s0, a0
80004640: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004644: 93 02 04 00  	mv	t0, s0
80004648: 63 64 85 00  	bltu	a0, s0, 0x80004650 <.LBB4_90+0x184>
8000464c: 93 02 00 02  	addi	t0, zero, 32
80004650: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80004654: 37 65 66 66  	lui	a0, 419430
80004658: 93 05 75 66  	addi	a1, a0, 1639
8000465c: 13 08 a0 00  	addi	a6, zero, 10
80004660: 93 06 81 00  	addi	a3, sp, 8
80004664: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80004668: 63 80 82 04  	beq	t0, s0, 0x800046a8 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
8000466c: 33 95 b4 02  	mulh	a0, s1, a1
80004670: 93 57 f5 01  	srli	a5, a0, 31
80004674: 13 55 25 40  	srai	a0, a0, 2
80004678: 33 05 f5 00  	add	a0, a0, a5
8000467c: b3 07 05 03  	mul	a5, a0, a6
80004680: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80004684: 93 87 07 03  	addi	a5, a5, 48
80004688: 13 0c 14 00  	addi	s8, s0, 1
8000468c: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80004690: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80004694: 23 00 f4 00  	sb	a5, 0(s0)
80004698: 13 04 0c 00  	mv	s0, s8
8000469c: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800046a0: e3 64 c7 fc  	bltu	a4, a2, 0x80004668 <.LBB4_90+0x19c>
800046a4: 6f 00 80 00  	j	0x800046ac <.LBB4_90+0x1e0>
800046a8: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800046ac: 93 f4 3a 00  	andi	s1, s5, 3
800046b0: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800046b4: 63 96 a4 06  	bne	s1, a0, 0x80004720 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800046b8: 63 0c 09 00  	beqz	s2, 0x800046d0 <.LBB4_90+0x204>
800046bc: 13 f5 ca 00  	andi	a0, s5, 12
800046c0: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800046c4: 33 e5 ac 00  	or	a0, s9, a0
800046c8: 33 09 a9 40  	sub	s2, s2, a0
800046cc: 6f 00 80 00  	j	0x800046d4 <.LBB4_90+0x208>
800046d0: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800046d4: 33 35 2c 01  	sltu	a0, s8, s2
800046d8: 93 45 15 00  	xori	a1, a0, 1
800046dc: 13 05 f0 01  	addi	a0, zero, 31
800046e0: 33 36 85 01  	sltu	a2, a0, s8
800046e4: b3 65 b6 00  	or	a1, a2, a1
800046e8: 63 9c 05 02  	bnez	a1, 0x80004720 <.LBB4_90+0x254>
800046ec: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800046f0: 93 45 fc ff  	not	a1, s8
800046f4: b3 05 b9 00  	add	a1, s2, a1
800046f8: 33 06 85 41  	sub	a2, a0, s8
800046fc: 33 85 86 01  	add	a0, a3, s8
80004700: 63 e4 c5 00  	bltu	a1, a2, 0x80004708 <.LBB4_90+0x23c>
80004704: 93 05 06 00  	mv	a1, a2
80004708: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
8000470c: 93 05 00 03  	addi	a1, zero, 48
80004710: 13 06 04 00  	mv	a2, s0
80004714: 97 c0 ff ff  	auipc	ra, 1048572
80004718: e7 80 c0 8e  	jalr	-1812(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
8000471c: 33 0c 84 01  	add	s8, s0, s8
80004720: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80004724: 63 6a 85 05  	bltu	a0, s8, 0x80004778 <.LBB4_90+0x2ac>
;     if (negative) {
80004728: 63 8c 0c 00  	beqz	s9, 0x80004740 <.LBB4_90+0x274>
8000472c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80004730: 33 05 85 01  	add	a0, a0, s8
80004734: 13 0c 1c 00  	addi	s8, s8, 1
80004738: 93 05 d0 02  	addi	a1, zero, 45
8000473c: 6f 00 80 03  	j	0x80004774 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80004740: 13 f5 4a 00  	andi	a0, s5, 4
80004744: 63 10 05 02  	bnez	a0, 0x80004764 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80004748: 13 f5 8a 00  	andi	a0, s5, 8
8000474c: 63 06 05 02  	beqz	a0, 0x80004778 <.LBB4_90+0x2ac>
80004750: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80004754: 33 05 85 01  	add	a0, a0, s8
80004758: 13 0c 1c 00  	addi	s8, s8, 1
8000475c: 93 05 00 02  	addi	a1, zero, 32
80004760: 6f 00 40 01  	j	0x80004774 <.LBB4_90+0x2a8>
80004764: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004768: 33 05 85 01  	add	a0, a0, s8
8000476c: 13 0c 1c 00  	addi	s8, s8, 1
80004770: 93 05 b0 02  	addi	a1, zero, 43
80004774: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004778: 33 35 90 00  	snez	a0, s1
8000477c: b3 35 2c 01  	sltu	a1, s8, s2
80004780: 93 c5 15 00  	xori	a1, a1, 1
80004784: 33 65 b5 00  	or	a0, a0, a1
80004788: 93 fa 2a 00  	andi	s5, s5, 2
8000478c: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004790: 63 16 05 02  	bnez	a0, 0x800047bc <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80004794: b3 04 89 41  	sub	s1, s2, s8
80004798: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
8000479c: 13 04 16 00  	addi	s0, a2, 1
800047a0: 13 05 00 02  	addi	a0, zero, 32
800047a4: 93 05 0b 00  	mv	a1, s6
800047a8: 93 86 09 00  	mv	a3, s3
800047ac: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800047b0: 93 84 f4 ff  	addi	s1, s1, -1
800047b4: 13 06 04 00  	mv	a2, s0
800047b8: e3 92 04 fe  	bnez	s1, 0x8000479c <.LBB4_90+0x2d0>
800047bc: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800047c0: 63 0c 0c 02  	beqz	s8, 0x800047f8 <.LBB4_90+0x32c>
800047c4: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800047c8: 33 85 8c 01  	add	a0, s9, s8
800047cc: 03 45 05 00  	lbu	a0, 0(a0)
800047d0: 13 0d fc ff  	addi	s10, s8, -1
800047d4: 93 04 14 00  	addi	s1, s0, 1
800047d8: 93 05 0b 00  	mv	a1, s6
800047dc: 13 06 04 00  	mv	a2, s0
800047e0: 93 86 09 00  	mv	a3, s3
800047e4: e7 80 0b 00  	jalr	s7
800047e8: 13 84 04 00  	mv	s0, s1
800047ec: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800047f0: e3 1c 0d fc  	bnez	s10, 0x800047c8 <.LBB4_90+0x2fc>
800047f4: 6f 00 80 00  	j	0x800047fc <.LBB4_90+0x330>
800047f8: 93 04 04 00  	mv	s1, s0
800047fc: 33 85 44 41  	sub	a0, s1, s4
80004800: 33 35 25 01  	sltu	a0, a0, s2
80004804: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80004808: 93 c5 1a 00  	xori	a1, s5, 1
8000480c: 33 e5 a5 00  	or	a0, a1, a0
80004810: 63 18 05 02  	bnez	a0, 0x80004840 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80004814: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80004818: 13 84 14 00  	addi	s0, s1, 1
8000481c: 13 05 00 02  	addi	a0, zero, 32
80004820: 93 05 0b 00  	mv	a1, s6
80004824: 13 86 04 00  	mv	a2, s1
80004828: 93 86 09 00  	mv	a3, s3
8000482c: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80004830: 33 05 8a 00  	add	a0, s4, s0
80004834: 93 04 04 00  	mv	s1, s0
80004838: e3 60 25 ff  	bltu	a0, s2, 0x80004818 <.LBB4_90+0x34c>
8000483c: 6f 00 80 00  	j	0x80004844 <.LBB4_90+0x378>
80004840: 13 84 04 00  	mv	s0, s1
; }
80004844: 13 05 04 00  	mv	a0, s0
80004848: 07 39 81 02  	fld	fs2, 40(sp)
8000484c: 87 34 01 03  	fld	fs1, 48(sp)
80004850: 07 34 81 03  	fld	fs0, 56(sp)
80004854: 03 2d 01 04  	lw	s10, 64(sp)
80004858: 83 2c 41 04  	lw	s9, 68(sp)
8000485c: 03 2c 81 04  	lw	s8, 72(sp)
80004860: 83 2b c1 04  	lw	s7, 76(sp)
80004864: 03 2b 01 05  	lw	s6, 80(sp)
80004868: 83 2a 41 05  	lw	s5, 84(sp)
8000486c: 03 2a 81 05  	lw	s4, 88(sp)
80004870: 83 29 c1 05  	lw	s3, 92(sp)
80004874: 03 29 01 06  	lw	s2, 96(sp)
80004878: 83 24 41 06  	lw	s1, 100(sp)
8000487c: 03 24 81 06  	lw	s0, 104(sp)
80004880: 83 20 c1 06  	lw	ra, 108(sp)
80004884: 13 01 01 07  	addi	sp, sp, 112
80004888: 67 80 00 00  	ret

8000488c <_etoa>:
; {
8000488c: 13 01 01 f8  	addi	sp, sp, -128
80004890: 23 2e 11 06  	sw	ra, 124(sp)
80004894: 23 2c 81 06  	sw	s0, 120(sp)
80004898: 23 2a 91 06  	sw	s1, 116(sp)
8000489c: 23 28 21 07  	sw	s2, 112(sp)
800048a0: 23 26 31 07  	sw	s3, 108(sp)
800048a4: 23 24 41 07  	sw	s4, 104(sp)
800048a8: 23 22 51 07  	sw	s5, 100(sp)
800048ac: 23 20 61 07  	sw	s6, 96(sp)
800048b0: 23 2e 71 05  	sw	s7, 92(sp)
800048b4: 23 2c 81 05  	sw	s8, 88(sp)
800048b8: 23 2a 91 05  	sw	s9, 84(sp)
800048bc: 23 28 a1 05  	sw	s10, 80(sp)
800048c0: 23 26 b1 05  	sw	s11, 76(sp)

800048c4 <.LBB5_43>:
800048c4: 97 14 00 00  	auipc	s1, 1
800048c8: 93 84 44 31  	addi	s1, s1, 788
800048cc: 87 b0 04 00  	fld	ft1, 0(s1)

800048d0 <.LBB5_44>:
800048d0: 97 14 00 00  	auipc	s1, 1
800048d4: 93 84 04 31  	addi	s1, s1, 784
800048d8: 07 b1 04 00  	fld	ft2, 0(s1)
800048dc: 53 00 a5 22  	fmv.d	ft0, fa0
800048e0: d3 04 15 a2  	fle.d	s1, fa0, ft1
800048e4: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800048e8: b3 f4 84 00  	and	s1, s1, s0
800048ec: 93 0a 08 00  	mv	s5, a6
800048f0: 13 89 07 00  	mv	s2, a5
800048f4: 93 07 07 00  	mv	a5, a4
800048f8: 93 89 06 00  	mv	s3, a3
800048fc: 13 0a 06 00  	mv	s4, a2
80004900: 13 8b 05 00  	mv	s6, a1
80004904: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80004908: 63 92 04 06  	bnez	s1, 0x8000496c <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
8000490c: 13 85 0b 00  	mv	a0, s7
80004910: 93 05 0b 00  	mv	a1, s6
80004914: 13 06 0a 00  	mv	a2, s4
80004918: 93 86 09 00  	mv	a3, s3
8000491c: 53 05 00 22  	fmv.d	fa0, ft0
80004920: 13 87 07 00  	mv	a4, a5
80004924: 93 07 09 00  	mv	a5, s2
80004928: 13 88 0a 00  	mv	a6, s5
8000492c: 83 2d c1 04  	lw	s11, 76(sp)
80004930: 03 2d 01 05  	lw	s10, 80(sp)
80004934: 83 2c 41 05  	lw	s9, 84(sp)
80004938: 03 2c 81 05  	lw	s8, 88(sp)
8000493c: 83 2b c1 05  	lw	s7, 92(sp)
80004940: 03 2b 01 06  	lw	s6, 96(sp)
80004944: 83 2a 41 06  	lw	s5, 100(sp)
80004948: 03 2a 81 06  	lw	s4, 104(sp)
8000494c: 83 29 c1 06  	lw	s3, 108(sp)
80004950: 03 29 01 07  	lw	s2, 112(sp)
80004954: 83 24 41 07  	lw	s1, 116(sp)
80004958: 03 24 81 07  	lw	s0, 120(sp)
8000495c: 83 20 c1 07  	lw	ra, 124(sp)
80004960: 13 01 01 08  	addi	sp, sp, 128
80004964: 17 03 00 00  	auipc	t1, 0
80004968: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
8000496c: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80004970: 13 f5 0a 40  	andi	a0, s5, 1024
80004974: 13 07 60 00  	addi	a4, zero, 6
80004978: 63 04 05 00  	beqz	a0, 0x80004980 <.LBB5_44+0xb0>
8000497c: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80004980: 27 30 a1 02  	fsd	fa0, 32(sp)
80004984: 83 25 41 02  	lw	a1, 36(sp)
80004988: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
8000498c: 93 d6 45 01  	srli	a3, a1, 20
80004990: b7 07 10 00  	lui	a5, 256
80004994: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80004998: b3 f5 f5 00  	and	a1, a1, a5
8000499c: 23 2c c1 00  	sw	a2, 24(sp)
800049a0: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800049a4: b3 e5 c5 00  	or	a1, a1, a2
800049a8: 23 2e b1 00  	sw	a1, 28(sp)
800049ac: 87 30 81 01  	fld	ft1, 24(sp)

800049b0 <.LBB5_45>:
800049b0: 97 15 00 00  	auipc	a1, 1
800049b4: 93 85 85 23  	addi	a1, a1, 568
800049b8: 07 b1 05 00  	fld	ft2, 0(a1)

800049bc <.LBB5_46>:
800049bc: 97 15 00 00  	auipc	a1, 1
800049c0: 93 85 45 23  	addi	a1, a1, 564
800049c4: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800049c8: 93 f5 f6 7f  	andi	a1, a3, 2047
800049cc: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800049d0: 53 82 05 d2  	fcvt.d.w	ft4, a1
800049d4: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800049d8 <.LBB5_47>:
800049d8: 97 15 00 00  	auipc	a1, 1
800049dc: 93 85 05 22  	addi	a1, a1, 544
800049e0: 07 b1 05 00  	fld	ft2, 0(a1)

800049e4 <.LBB5_48>:
800049e4: 97 15 00 00  	auipc	a1, 1
800049e8: 93 85 c5 21  	addi	a1, a1, 540
800049ec: 87 b1 05 00  	fld	ft3, 0(a1)

800049f0 <.LBB5_49>:
800049f0: 97 15 00 00  	auipc	a1, 1
800049f4: 93 85 85 21  	addi	a1, a1, 536
800049f8: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800049fc: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80004a00: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004a04: d3 80 05 d2  	fcvt.d.w	ft1, a1
80004a08: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80004a0c <.LBB5_50>:
80004a0c: 17 16 00 00  	auipc	a2, 1
80004a10: 13 06 46 20  	addi	a2, a2, 516
80004a14: 87 31 06 00  	fld	ft3, 0(a2)

80004a18 <.LBB5_51>:
80004a18: 17 16 00 00  	auipc	a2, 1
80004a1c: 13 06 06 20  	addi	a2, a2, 512
80004a20: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80004a24: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80004a28: 53 01 06 d2  	fcvt.d.w	ft2, a2
80004a2c: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80004a30: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80004a34: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004a38: 13 06 f6 3f  	addi	a2, a2, 1023
80004a3c: 23 28 01 00  	sw	zero, 16(sp)
80004a40: 13 16 46 01  	slli	a2, a2, 20
80004a44: 23 2a c1 00  	sw	a2, 20(sp)

80004a48 <.LBB5_52>:
80004a48: 17 16 00 00  	auipc	a2, 1
80004a4c: 13 06 06 1e  	addi	a2, a2, 480
80004a50: 87 31 06 00  	fld	ft3, 0(a2)

80004a54 <.LBB5_53>:
80004a54: 17 16 00 00  	auipc	a2, 1
80004a58: 13 06 c6 1d  	addi	a2, a2, 476
80004a5c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80004a60: 87 32 01 01  	fld	ft5, 16(sp)

80004a64 <.LBB5_54>:
80004a64: 17 16 00 00  	auipc	a2, 1
80004a68: 13 06 c6 1b  	addi	a2, a2, 444
80004a6c: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004a70: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80004a74 <.LBB5_55>:
80004a74: 17 16 00 00  	auipc	a2, 1
80004a78: 13 06 46 1c  	addi	a2, a2, 452
80004a7c: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80004a80: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80004a84: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80004a88: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80004a8c: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80004a90: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80004a94: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80004a98: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80004a9c: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80004aa0: 53 16 15 a2  	flt.d	a2, fa0, ft1
80004aa4: 63 0a 06 00  	beqz	a2, 0x80004ab8 <.LBB5_56+0x10>

80004aa8 <.LBB5_56>:
80004aa8: 97 16 00 00  	auipc	a3, 1
80004aac: 93 86 86 19  	addi	a3, a3, 408
80004ab0: 07 b1 06 00  	fld	ft2, 0(a3)
80004ab4: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80004ab8: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004abc: 93 05 34 06  	addi	a1, s0, 99
80004ac0: 93 b5 75 0c  	sltiu	a1, a1, 199
80004ac4: 13 06 50 00  	addi	a2, zero, 5
80004ac8: b7 16 00 00  	lui	a3, 1
80004acc: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80004ad0: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80004ad4: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80004ad8: 63 84 06 06  	beqz	a3, 0x80004b40 <.LBB5_58+0x58>

80004adc <.LBB5_57>:
80004adc: 97 15 00 00  	auipc	a1, 1
80004ae0: 93 85 c5 16  	addi	a1, a1, 364
80004ae4: 07 b1 05 00  	fld	ft2, 0(a1)

80004ae8 <.LBB5_58>:
80004ae8: 97 15 00 00  	auipc	a1, 1
80004aec: 93 85 85 16  	addi	a1, a1, 360
80004af0: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80004af4: d3 15 25 a2  	flt.d	a1, fa0, ft2
80004af8: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80004afc: b3 e5 c5 00  	or	a1, a1, a2
80004b00: 63 98 05 00  	bnez	a1, 0x80004b10 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80004b04: 63 40 e4 02  	blt	s0, a4, 0x80004b24 <.LBB5_58+0x3c>
80004b08: 13 07 00 00  	mv	a4, zero
80004b0c: 6f 00 00 02  	j	0x80004b2c <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004b10: 63 06 07 02  	beqz	a4, 0x80004b3c <.LBB5_58+0x54>
80004b14: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80004b18: 13 45 15 00  	xori	a0, a0, 1
80004b1c: 33 07 a7 40  	sub	a4, a4, a0
80004b20: 6f 00 00 02  	j	0x80004b40 <.LBB5_58+0x58>
80004b24: 13 45 f4 ff  	not	a0, s0
80004b28: 33 07 a7 00  	add	a4, a4, a0
80004b2c: 13 04 00 00  	mv	s0, zero
80004b30: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80004b34: 93 ea 0a 40  	ori	s5, s5, 1024
80004b38: 6f 00 80 00  	j	0x80004b40 <.LBB5_58+0x58>
80004b3c: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80004b40: b3 05 99 41  	sub	a1, s2, s9
80004b44: 33 36 b9 00  	sltu	a2, s2, a1
80004b48: 13 05 00 00  	mv	a0, zero
80004b4c: 63 14 06 00  	bnez	a2, 0x80004b54 <.LBB5_58+0x6c>
80004b50: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80004b54: 93 07 00 00  	mv	a5, zero
80004b58: 93 d5 1a 00  	srli	a1, s5, 1
80004b5c: 93 f4 15 00  	andi	s1, a1, 1
80004b60: b3 35 90 01  	snez	a1, s9
80004b64: b3 f5 b4 00  	and	a1, s1, a1
80004b68: 53 01 00 d2  	fcvt.d.w	ft2, zero
80004b6c: 63 94 05 00  	bnez	a1, 0x80004b74 <.LBB5_58+0x8c>
80004b70: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80004b74: 93 35 14 00  	seqz	a1, s0
80004b78: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80004b7c: 63 94 05 00  	bnez	a1, 0x80004b84 <.LBB5_58+0x9c>
80004b80: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004b84: 63 04 05 00  	beqz	a0, 0x80004b8c <.LBB5_58+0xa4>
80004b88: 53 15 a5 22  	fneg.d	fa0, fa0
80004b8c: 37 f5 ff ff  	lui	a0, 1048575
80004b90: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80004b94: 33 f8 aa 00  	and	a6, s5, a0
80004b98: 13 85 0b 00  	mv	a0, s7
80004b9c: 93 05 0b 00  	mv	a1, s6
80004ba0: 13 06 0a 00  	mv	a2, s4
80004ba4: 93 86 09 00  	mv	a3, s3
80004ba8: 97 f0 ff ff  	auipc	ra, 1048575
80004bac: e7 80 40 60  	jalr	1540(ra)
80004bb0: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80004bb4: 63 82 0c 18  	beqz	s9, 0x80004d38 <.LBB5_58+0x250>
80004bb8: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80004bbc: 13 f5 0a 02  	andi	a0, s5, 32
80004bc0: 13 45 55 06  	xori	a0, a0, 101
80004bc4: 93 05 0b 00  	mv	a1, s6
80004bc8: 13 06 0d 00  	mv	a2, s10
80004bcc: 93 86 09 00  	mv	a3, s3
80004bd0: e7 80 0b 00  	jalr	s7
80004bd4: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80004bd8: 93 5a f4 01  	srli	s5, s0, 31
80004bdc: 13 55 f4 41  	srai	a0, s0, 31
80004be0: b3 05 a4 00  	add	a1, s0, a0
80004be4: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
80004be8: 93 8d dc ff  	addi	s11, s9, -3
80004bec: 13 04 f0 01  	addi	s0, zero, 31
80004bf0: 37 d5 cc cc  	lui	a0, 838861
80004bf4: 13 05 d5 cc  	addi	a0, a0, -819
80004bf8: 13 08 a0 00  	addi	a6, zero, 10
80004bfc: 93 08 c1 02  	addi	a7, sp, 44
80004c00: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80004c04: b3 37 a7 02  	mulhu	a5, a4, a0
80004c08: 93 d5 37 00  	srli	a1, a5, 3
80004c0c: b3 87 05 03  	mul	a5, a1, a6
80004c10: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004c14: 13 e6 07 03  	ori	a2, a5, 48
80004c18: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004c1c: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80004c20: 13 0c 1c 00  	addi	s8, s8, 1
80004c24: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80004c28: 33 b6 e2 00  	sltu	a2, t0, a4
80004c2c: 33 f6 c7 00  	and	a2, a5, a2
80004c30: 93 8d fd ff  	addi	s11, s11, -1
80004c34: 13 04 f4 ff  	addi	s0, s0, -1
80004c38: 13 87 05 00  	mv	a4, a1
80004c3c: e3 14 06 fc  	bnez	a2, 0x80004c04 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004c40: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004c44: 33 35 ac 00  	sltu	a0, s8, a0
80004c48: 13 45 15 00  	xori	a0, a0, 1
80004c4c: 93 c5 17 00  	xori	a1, a5, 1
80004c50: 33 e5 a5 00  	or	a0, a1, a0
80004c54: 63 12 05 04  	bnez	a0, 0x80004c98 <.LBB5_58+0x1b0>
80004c58: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004c5c: b3 85 8c 41  	sub	a1, s9, s8
80004c60: 93 85 d5 ff  	addi	a1, a1, -3
80004c64: 13 06 f0 01  	addi	a2, zero, 31
80004c68: 33 06 86 41  	sub	a2, a2, s8
80004c6c: 33 05 85 01  	add	a0, a0, s8
80004c70: 63 e4 c5 00  	bltu	a1, a2, 0x80004c78 <.LBB5_58+0x190>
80004c74: 93 05 06 00  	mv	a1, a2
80004c78: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80004c7c: 93 05 00 03  	addi	a1, zero, 48
80004c80: 97 b0 ff ff  	auipc	ra, 1048571
80004c84: e7 80 00 38  	jalr	896(ra)
;   if (flags & FLAGS_HASH) {
80004c88: 63 e4 8d 00  	bltu	s11, s0, 0x80004c90 <.LBB5_58+0x1a8>
80004c8c: 93 0d 04 00  	mv	s11, s0
80004c90: 33 85 8d 01  	add	a0, s11, s8
80004c94: 13 0c 15 00  	addi	s8, a0, 1
80004c98: 83 2c c1 00  	lw	s9, 12(sp)
80004c9c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004ca0: 63 60 85 03  	bltu	a0, s8, 0x80004cc0 <.LBB5_58+0x1d8>
80004ca4: 13 05 c1 02  	addi	a0, sp, 44
80004ca8: 33 05 85 01  	add	a0, a0, s8
80004cac: 93 05 d0 02  	addi	a1, zero, 45
80004cb0: 63 94 0a 00  	bnez	s5, 0x80004cb8 <.LBB5_58+0x1d0>
80004cb4: 93 05 b0 02  	addi	a1, zero, 43
80004cb8: 13 0c 1c 00  	addi	s8, s8, 1
80004cbc: 23 00 b5 00  	sb	a1, 0(a0)
80004cc0: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80004cc4: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80004cc8: 33 85 8a 01  	add	a0, s5, s8
80004ccc: 03 45 05 00  	lbu	a0, 0(a0)
80004cd0: 13 06 04 00  	mv	a2, s0
80004cd4: 93 04 fc ff  	addi	s1, s8, -1
80004cd8: 13 04 14 00  	addi	s0, s0, 1
80004cdc: 93 05 0b 00  	mv	a1, s6
80004ce0: 93 86 09 00  	mv	a3, s3
80004ce4: e7 80 0b 00  	jalr	s7
80004ce8: 13 8c 04 00  	mv	s8, s1
;   while (len) {
80004cec: e3 9e 04 fc  	bnez	s1, 0x80004cc8 <.LBB5_58+0x1e0>
80004cf0: 33 05 44 41  	sub	a0, s0, s4
80004cf4: 33 35 25 01  	sltu	a0, a0, s2
80004cf8: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80004cfc: 93 c5 1c 00  	xori	a1, s9, 1
80004d00: 33 e5 a5 00  	or	a0, a1, a0
80004d04: 63 18 05 02  	bnez	a0, 0x80004d34 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80004d08: b3 04 40 41  	neg	s1, s4
80004d0c: 13 0d 14 00  	addi	s10, s0, 1
80004d10: 13 05 00 02  	addi	a0, zero, 32
80004d14: 93 05 0b 00  	mv	a1, s6
80004d18: 13 06 04 00  	mv	a2, s0
80004d1c: 93 86 09 00  	mv	a3, s3
80004d20: e7 80 0b 00  	jalr	s7
80004d24: 33 85 a4 01  	add	a0, s1, s10
80004d28: 13 04 0d 00  	mv	s0, s10
80004d2c: e3 60 25 ff  	bltu	a0, s2, 0x80004d0c <.LBB5_58+0x224>
80004d30: 6f 00 80 00  	j	0x80004d38 <.LBB5_58+0x250>
80004d34: 13 0d 04 00  	mv	s10, s0
; }
80004d38: 13 05 0d 00  	mv	a0, s10
80004d3c: 83 2d c1 04  	lw	s11, 76(sp)
80004d40: 03 2d 01 05  	lw	s10, 80(sp)
80004d44: 83 2c 41 05  	lw	s9, 84(sp)
80004d48: 03 2c 81 05  	lw	s8, 88(sp)
80004d4c: 83 2b c1 05  	lw	s7, 92(sp)
80004d50: 03 2b 01 06  	lw	s6, 96(sp)
80004d54: 83 2a 41 06  	lw	s5, 100(sp)
80004d58: 03 2a 81 06  	lw	s4, 104(sp)
80004d5c: 83 29 c1 06  	lw	s3, 108(sp)
80004d60: 03 29 01 07  	lw	s2, 112(sp)
80004d64: 83 24 41 07  	lw	s1, 116(sp)
80004d68: 03 24 81 07  	lw	s0, 120(sp)
80004d6c: 83 20 c1 07  	lw	ra, 124(sp)
80004d70: 13 01 01 08  	addi	sp, sp, 128
80004d74: 67 80 00 00  	ret

80004d78 <_ntoa_format>:
; {
80004d78: 13 01 01 fc  	addi	sp, sp, -64
80004d7c: 23 2e 11 02  	sw	ra, 60(sp)
80004d80: 23 2c 81 02  	sw	s0, 56(sp)
80004d84: 23 2a 91 02  	sw	s1, 52(sp)
80004d88: 23 28 21 03  	sw	s2, 48(sp)
80004d8c: 23 26 31 03  	sw	s3, 44(sp)
80004d90: 23 24 41 03  	sw	s4, 40(sp)
80004d94: 23 22 51 03  	sw	s5, 36(sp)
80004d98: 23 20 61 03  	sw	s6, 32(sp)
80004d9c: 23 2e 71 01  	sw	s7, 28(sp)
80004da0: 23 2c 81 01  	sw	s8, 24(sp)
80004da4: 23 2a 91 01  	sw	s9, 20(sp)
80004da8: 23 28 a1 01  	sw	s10, 16(sp)
80004dac: 23 26 b1 01  	sw	s11, 12(sp)
80004db0: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80004db4: 93 fa 2e 00  	andi	s5, t4, 2
80004db8: 13 09 0e 00  	mv	s2, t3
80004dbc: 13 8d 03 00  	mv	s10, t2
80004dc0: 93 8c 08 00  	mv	s9, a7
80004dc4: 13 8c 07 00  	mv	s8, a5
80004dc8: 93 89 06 00  	mv	s3, a3
80004dcc: 13 0a 06 00  	mv	s4, a2
80004dd0: 13 8b 05 00  	mv	s6, a1
80004dd4: 93 0d 05 00  	mv	s11, a0
80004dd8: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80004ddc: 63 9e 0a 0c  	bnez	s5, 0x80004eb8 <_ntoa_format+0x140>
80004de0: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004de4: 63 0e 09 00  	beqz	s2, 0x80004e00 <_ntoa_format+0x88>
80004de8: 63 0e 04 00  	beqz	s0, 0x80004e04 <_ntoa_format+0x8c>
80004dec: 13 f5 cb 00  	andi	a0, s7, 12
80004df0: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80004df4: 33 65 05 01  	or	a0, a0, a6
80004df8: 33 09 a9 40  	sub	s2, s2, a0
80004dfc: 6f 00 80 00  	j	0x80004e04 <_ntoa_format+0x8c>
80004e00: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e04: 33 35 ac 01  	sltu	a0, s8, s10
80004e08: 93 45 15 00  	xori	a1, a0, 1
80004e0c: 13 05 f0 01  	addi	a0, zero, 31
80004e10: 33 36 85 01  	sltu	a2, a0, s8
80004e14: b3 65 b6 00  	or	a1, a2, a1
80004e18: 63 94 05 04  	bnez	a1, 0x80004e60 <_ntoa_format+0xe8>
80004e1c: 23 22 51 01  	sw	s5, 4(sp)
80004e20: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e24: 93 45 fc ff  	not	a1, s8
80004e28: b3 85 a5 01  	add	a1, a1, s10
80004e2c: 33 06 85 41  	sub	a2, a0, s8
80004e30: 33 05 87 01  	add	a0, a4, s8
80004e34: 63 e4 c5 00  	bltu	a1, a2, 0x80004e3c <_ntoa_format+0xc4>
80004e38: 93 05 06 00  	mv	a1, a2
80004e3c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004e40: 93 05 00 03  	addi	a1, zero, 48
80004e44: 13 86 04 00  	mv	a2, s1
80004e48: 97 b0 ff ff  	auipc	ra, 1048571
80004e4c: e7 80 80 1b  	jalr	440(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e50: 33 8c 84 01  	add	s8, s1, s8
80004e54: 03 27 81 00  	lw	a4, 8(sp)
80004e58: 13 88 0a 00  	mv	a6, s5
80004e5c: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e60: 63 0c 04 04  	beqz	s0, 0x80004eb8 <_ntoa_format+0x140>
80004e64: 33 35 2c 01  	sltu	a0, s8, s2
80004e68: 93 45 15 00  	xori	a1, a0, 1
80004e6c: 13 05 f0 01  	addi	a0, zero, 31
80004e70: 33 36 85 01  	sltu	a2, a0, s8
80004e74: b3 e5 c5 00  	or	a1, a1, a2
80004e78: 63 90 05 04  	bnez	a1, 0x80004eb8 <_ntoa_format+0x140>
80004e7c: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004e80: 93 45 fc ff  	not	a1, s8
80004e84: b3 05 b9 00  	add	a1, s2, a1
80004e88: 33 06 85 41  	sub	a2, a0, s8
80004e8c: 33 05 87 01  	add	a0, a4, s8
80004e90: 63 e4 c5 00  	bltu	a1, a2, 0x80004e98 <_ntoa_format+0x120>
80004e94: 93 05 06 00  	mv	a1, a2
80004e98: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80004e9c: 93 05 00 03  	addi	a1, zero, 48
80004ea0: 13 86 04 00  	mv	a2, s1
80004ea4: 97 b0 ff ff  	auipc	ra, 1048571
80004ea8: e7 80 c0 15  	jalr	348(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004eac: 33 8c 84 01  	add	s8, s1, s8
80004eb0: 03 27 81 00  	lw	a4, 8(sp)
80004eb4: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80004eb8: 13 f5 0b 01  	andi	a0, s7, 16
80004ebc: 63 02 05 0e  	beqz	a0, 0x80004fa0 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
80004ec0: 13 f5 0b 40  	andi	a0, s7, 1024
80004ec4: 13 55 a5 00  	srli	a0, a0, 10
80004ec8: 93 35 1c 00  	seqz	a1, s8
80004ecc: 33 65 b5 00  	or	a0, a0, a1
80004ed0: 63 1e 05 02  	bnez	a0, 0x80004f0c <_ntoa_format+0x194>
80004ed4: 33 45 ac 01  	xor	a0, s8, s10
80004ed8: 33 35 a0 00  	snez	a0, a0
80004edc: b3 45 2c 01  	xor	a1, s8, s2
80004ee0: b3 35 b0 00  	snez	a1, a1
80004ee4: 33 75 b5 00  	and	a0, a0, a1
80004ee8: 63 12 05 02  	bnez	a0, 0x80004f0c <_ntoa_format+0x194>
;       len--;
80004eec: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80004ef0: b3 35 a0 00  	snez	a1, a0
80004ef4: 13 86 0c ff  	addi	a2, s9, -16
80004ef8: 13 36 16 00  	seqz	a2, a2
80004efc: b3 75 b6 00  	and	a1, a2, a1
80004f00: 63 84 05 00  	beqz	a1, 0x80004f08 <_ntoa_format+0x190>
80004f04: 13 05 ec ff  	addi	a0, s8, -2
80004f08: 13 0c 05 00  	mv	s8, a0
80004f0c: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f10: 63 96 ac 02  	bne	s9, a0, 0x80004f3c <_ntoa_format+0x1c4>
80004f14: 13 f5 0b 02  	andi	a0, s7, 32
80004f18: 93 55 55 00  	srli	a1, a0, 5
80004f1c: 13 06 f0 01  	addi	a2, zero, 31
80004f20: 33 36 86 01  	sltu	a2, a2, s8
80004f24: b3 e5 c5 00  	or	a1, a1, a2
80004f28: 63 9e 05 02  	bnez	a1, 0x80004f64 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80004f2c: 33 05 87 01  	add	a0, a4, s8
80004f30: 13 0c 1c 00  	addi	s8, s8, 1
80004f34: 93 05 80 07  	addi	a1, zero, 120
80004f38: 6f 00 c0 04  	j	0x80004f84 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f3c: 13 85 ec ff  	addi	a0, s9, -2
80004f40: 33 35 a0 00  	snez	a0, a0
80004f44: 93 05 f0 01  	addi	a1, zero, 31
80004f48: b3 b5 85 01  	sltu	a1, a1, s8
80004f4c: 33 65 b5 00  	or	a0, a0, a1
80004f50: 63 1c 05 02  	bnez	a0, 0x80004f88 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80004f54: 33 05 87 01  	add	a0, a4, s8
80004f58: 13 0c 1c 00  	addi	s8, s8, 1
80004f5c: 93 05 20 06  	addi	a1, zero, 98
80004f60: 6f 00 40 02  	j	0x80004f84 <_ntoa_format+0x20c>
80004f64: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80004f68: 13 35 15 00  	seqz	a0, a0
80004f6c: 93 c5 15 00  	xori	a1, a1, 1
80004f70: 33 65 b5 00  	or	a0, a0, a1
80004f74: 63 1a 05 00  	bnez	a0, 0x80004f88 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80004f78: 33 05 87 01  	add	a0, a4, s8
80004f7c: 13 0c 1c 00  	addi	s8, s8, 1
80004f80: 93 05 80 05  	addi	a1, zero, 88
80004f84: 23 00 b5 00  	sb	a1, 0(a0)
80004f88: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004f8c: 63 60 85 07  	bltu	a0, s8, 0x80004fec <_ntoa_format+0x274>
;       buf[len++] = '0';
80004f90: 33 05 87 01  	add	a0, a4, s8
80004f94: 13 0c 1c 00  	addi	s8, s8, 1
80004f98: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80004f9c: 23 00 b5 00  	sb	a1, 0(a0)
80004fa0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80004fa4: 63 64 85 05  	bltu	a0, s8, 0x80004fec <_ntoa_format+0x274>
;     if (negative) {
80004fa8: 63 0a 08 00  	beqz	a6, 0x80004fbc <_ntoa_format+0x244>
;       buf[len++] = '-';
80004fac: 33 05 87 01  	add	a0, a4, s8
80004fb0: 13 0c 1c 00  	addi	s8, s8, 1
80004fb4: 93 05 d0 02  	addi	a1, zero, 45
80004fb8: 6f 00 00 03  	j	0x80004fe8 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80004fbc: 13 f5 4b 00  	andi	a0, s7, 4
80004fc0: 63 1e 05 00  	bnez	a0, 0x80004fdc <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80004fc4: 13 f5 8b 00  	andi	a0, s7, 8
80004fc8: 63 02 05 02  	beqz	a0, 0x80004fec <_ntoa_format+0x274>
;       buf[len++] = ' ';
80004fcc: 33 05 87 01  	add	a0, a4, s8
80004fd0: 13 0c 1c 00  	addi	s8, s8, 1
80004fd4: 93 05 00 02  	addi	a1, zero, 32
80004fd8: 6f 00 00 01  	j	0x80004fe8 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80004fdc: 33 05 87 01  	add	a0, a4, s8
80004fe0: 13 0c 1c 00  	addi	s8, s8, 1
80004fe4: 93 05 b0 02  	addi	a1, zero, 43
80004fe8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80004fec: 13 f5 3b 00  	andi	a0, s7, 3
80004ff0: 33 35 a0 00  	snez	a0, a0
80004ff4: b3 35 2c 01  	sltu	a1, s8, s2
80004ff8: 93 c5 15 00  	xori	a1, a1, 1
80004ffc: 33 65 b5 00  	or	a0, a0, a1
80005000: 13 04 0a 00  	mv	s0, s4
80005004: 63 16 05 02  	bnez	a0, 0x80005030 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80005008: b3 04 89 41  	sub	s1, s2, s8
8000500c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005010: 13 04 16 00  	addi	s0, a2, 1
80005014: 13 05 00 02  	addi	a0, zero, 32
80005018: 93 05 0b 00  	mv	a1, s6
8000501c: 93 86 09 00  	mv	a3, s3
80005020: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80005024: 93 84 f4 ff  	addi	s1, s1, -1
80005028: 13 06 04 00  	mv	a2, s0
8000502c: e3 92 04 fe  	bnez	s1, 0x80005010 <_ntoa_format+0x298>
80005030: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80005034: 63 0e 0c 02  	beqz	s8, 0x80005070 <_ntoa_format+0x2f8>
80005038: 03 25 81 00  	lw	a0, 8(sp)
8000503c: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80005040: 33 85 8b 01  	add	a0, s7, s8
80005044: 03 45 05 00  	lbu	a0, 0(a0)
80005048: 93 0c fc ff  	addi	s9, s8, -1
8000504c: 93 04 14 00  	addi	s1, s0, 1
80005050: 93 05 0b 00  	mv	a1, s6
80005054: 13 06 04 00  	mv	a2, s0
80005058: 93 86 09 00  	mv	a3, s3
8000505c: e7 80 0d 00  	jalr	s11
80005060: 13 84 04 00  	mv	s0, s1
80005064: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80005068: e3 9c 0c fc  	bnez	s9, 0x80005040 <_ntoa_format+0x2c8>
8000506c: 6f 00 80 00  	j	0x80005074 <_ntoa_format+0x2fc>
80005070: 93 04 04 00  	mv	s1, s0
80005074: 33 85 44 41  	sub	a0, s1, s4
80005078: 33 35 25 01  	sltu	a0, a0, s2
8000507c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005080: 93 c5 1a 00  	xori	a1, s5, 1
80005084: 33 e5 a5 00  	or	a0, a1, a0
80005088: 63 18 05 02  	bnez	a0, 0x800050b8 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
8000508c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005090: 13 84 14 00  	addi	s0, s1, 1
80005094: 13 05 00 02  	addi	a0, zero, 32
80005098: 93 05 0b 00  	mv	a1, s6
8000509c: 13 86 04 00  	mv	a2, s1
800050a0: 93 86 09 00  	mv	a3, s3
800050a4: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800050a8: 33 05 8a 00  	add	a0, s4, s0
800050ac: 93 04 04 00  	mv	s1, s0
800050b0: e3 60 25 ff  	bltu	a0, s2, 0x80005090 <_ntoa_format+0x318>
800050b4: 6f 00 80 00  	j	0x800050bc <_ntoa_format+0x344>
800050b8: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
800050bc: 13 05 04 00  	mv	a0, s0
800050c0: 83 2d c1 00  	lw	s11, 12(sp)
800050c4: 03 2d 01 01  	lw	s10, 16(sp)
800050c8: 83 2c 41 01  	lw	s9, 20(sp)
800050cc: 03 2c 81 01  	lw	s8, 24(sp)
800050d0: 83 2b c1 01  	lw	s7, 28(sp)
800050d4: 03 2b 01 02  	lw	s6, 32(sp)
800050d8: 83 2a 41 02  	lw	s5, 36(sp)
800050dc: 03 2a 81 02  	lw	s4, 40(sp)
800050e0: 83 29 c1 02  	lw	s3, 44(sp)
800050e4: 03 29 01 03  	lw	s2, 48(sp)
800050e8: 83 24 41 03  	lw	s1, 52(sp)
800050ec: 03 24 81 03  	lw	s0, 56(sp)
800050f0: 83 20 c1 03  	lw	ra, 60(sp)
800050f4: 13 01 01 04  	addi	sp, sp, 64
800050f8: 67 80 00 00  	ret

800050fc <_snrt_init_team>:
;     team->base.root = team;
800050fc: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80005100: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80005104: 03 23 87 00  	lw	t1, 8(a4)
80005108: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000510c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80005110: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80005114: 83 22 47 00  	lw	t0, 4(a4)
80005118: 33 88 08 03  	mul	a6, a7, a6
8000511c: 33 05 58 02  	mul	a0, a6, t0
80005120: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80005124: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80005128: 33 85 68 40  	sub	a0, a7, t1
8000512c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80005130: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80005134: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80005138: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000513c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80005140: 03 25 87 01  	lw	a0, 24(a4)
80005144: b7 05 00 10  	lui	a1, 65536
80005148: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000514c: 23 a2 07 02  	sw	zero, 36(a5)
80005150: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80005154: 03 25 07 02  	lw	a0, 32(a4)
80005158: 83 25 47 02  	lw	a1, 36(a4)
8000515c: 23 a4 a7 02  	sw	a0, 40(a5)
80005160: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80005164: 23 a8 c7 02  	sw	a2, 48(a5)
80005168: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
8000516c: 23 ac d7 02  	sw	a3, 56(a5)
80005170: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80005174: 03 25 07 01  	lw	a0, 16(a4)
80005178: 33 08 a6 00  	add	a6, a2, a0
8000517c: 93 05 08 19  	addi	a1, a6, 400
80005180: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80005184: b3 32 a8 00  	sltu	t0, a6, a0
80005188: 93 55 15 00  	srli	a1, a0, 1
8000518c: 33 03 b8 00  	add	t1, a6, a1
80005190: b3 35 03 01  	sltu	a1, t1, a6
80005194: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80005198: 23 a0 67 04  	sw	t1, 64(a5)
8000519c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800051a0: 13 15 15 00  	slli	a0, a0, 1
800051a4: b3 05 c5 00  	add	a1, a0, a2
800051a8: 33 b5 a5 00  	sltu	a0, a1, a0
800051ac: 23 a4 b7 04  	sw	a1, 72(a5)
800051b0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800051b4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800051b8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800051bc: 37 05 00 00  	lui	a0, 0
800051c0: 33 05 45 00  	add	a0, a0, tp
800051c4: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800051c8: 03 a5 07 00  	lw	a0, 0(a5)
800051cc: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800051d0: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800051d4: b3 85 b8 40  	sub	a1, a7, a1
800051d8: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800051dc: b7 05 00 00  	lui	a1, 0
800051e0: b3 85 45 00  	add	a1, a1, tp
800051e4: 23 a2 a5 00  	sw	a0, 4(a1)
800051e8: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800051ec: 33 85 a8 02  	mul	a0, a7, a0

800051f0 <.LBB0_1>:
800051f0: 97 15 00 00  	auipc	a1, 1
800051f4: 93 85 c5 a6  	addi	a1, a1, -1428
800051f8: 33 05 b5 00  	add	a0, a0, a1
800051fc: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80005200: 83 28 07 03  	lw	a7, 48(a4)
80005204: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80005208: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000520c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80005210: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80005214: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80005218: 13 05 76 00  	addi	a0, a2, 7
8000521c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80005220: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80005224: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80005228: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000522c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80005230: 03 a5 05 00  	lw	a0, 0(a1)
80005234: 13 05 f5 44  	addi	a0, a0, 1103
80005238: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000523c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80005240: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80005244: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80005248: 37 05 00 00  	lui	a0, 0
8000524c: 33 05 45 00  	add	a0, a0, tp
80005250: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80005254: 37 05 00 00  	lui	a0, 0
80005258: 33 05 45 00  	add	a0, a0, tp
8000525c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80005260: 67 80 00 00  	ret

80005264 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80005264: 37 05 00 00  	lui	a0, 0
80005268: 33 05 45 00  	add	a0, a0, tp
8000526c: 03 25 05 00  	lw	a0, 0(a0)
80005270: 03 25 05 00  	lw	a0, 0(a0)
80005274: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80005278: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000527c: 33 85 a5 40  	sub	a0, a1, a0
80005280: 67 80 00 00  	ret

80005284 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80005284: 37 05 00 00  	lui	a0, 0
80005288: 33 05 45 00  	add	a0, a0, tp
8000528c: 03 25 05 00  	lw	a0, 0(a0)
80005290: 03 25 05 00  	lw	a0, 0(a0)
80005294: 03 25 05 07  	lw	a0, 112(a0)
80005298: 67 80 00 00  	ret

8000529c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000529c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800052a0: 63 44 05 00  	bltz	a0, 0x800052a8 <__snrt_isr+0xc>
;         while (1)
800052a4: 6f 00 00 00  	j	0x800052a4 <__snrt_isr+0x8>
800052a8: b7 05 00 80  	lui	a1, 524288
800052ac: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800052b0: 33 75 b5 00  	and	a0, a0, a1
800052b4: 13 05 d5 ff  	addi	a0, a0, -3
800052b8: 93 55 25 00  	srli	a1, a0, 2
800052bc: 13 15 e5 01  	slli	a0, a0, 30
800052c0: 33 65 b5 00  	or	a0, a0, a1
800052c4: 93 05 40 00  	addi	a1, zero, 4
800052c8: 63 0a b5 06  	beq	a0, a1, 0x8000533c <.LBB1_7+0x58>
800052cc: 63 1a 05 08  	bnez	a0, 0x80005360 <.LBB1_7+0x7c>
800052d0: 37 05 00 00  	lui	a0, 0
800052d4: 33 05 45 00  	add	a0, a0, tp
800052d8: 03 25 05 00  	lw	a0, 0(a0)
800052dc: 03 25 05 00  	lw	a0, 0(a0)
800052e0: f3 25 40 f1  	csrr	a1, mhartid

800052e4 <.LBB1_7>:
;     asm volatile(
800052e4: 17 16 00 00  	auipc	a2, 1
800052e8: 13 06 46 97  	addi	a2, a2, -1676
800052ec: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800052f0: 93 06 06 00  	mv	a3, a2
800052f4: 93 02 10 00  	addi	t0, zero, 1
800052f8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800052fc: e3 9e 02 fe  	bnez	t0, 0x800052f8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80005300: b7 06 00 00  	lui	a3, 0
80005304: b3 86 46 00  	add	a3, a3, tp
80005308: 83 a6 86 00  	lw	a3, 8(a3)
8000530c: 33 85 a5 40  	sub	a0, a1, a0
80005310: 93 55 35 00  	srli	a1, a0, 3
80005314: 93 f5 c5 ff  	andi	a1, a1, -4
80005318: b3 85 b6 00  	add	a1, a3, a1
8000531c: 83 a6 05 00  	lw	a3, 0(a1)
80005320: 13 07 10 00  	addi	a4, zero, 1
80005324: 33 15 a7 00  	sll	a0, a4, a0
80005328: 13 45 f5 ff  	not	a0, a0
8000532c: 33 f5 a6 00  	and	a0, a3, a0
80005330: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80005334: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80005338: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000533c: 37 05 00 00  	lui	a0, 0
80005340: 33 05 45 00  	add	a0, a0, tp
80005344: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80005348: b7 05 00 00  	lui	a1, 0
8000534c: b3 85 45 00  	add	a1, a1, tp
80005350: 83 a5 c5 00  	lw	a1, 12(a1)
80005354: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80005358: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000535c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80005360: 67 80 00 00  	ret

Disassembly of section .init:

80005370 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80005370: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80005374: 93 81 81 f1  	addi	gp, gp, -232

80005378 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80005378: 97 00 00 00  	auipc	ra, 0
8000537c: e7 80 40 3c  	jalr	964(ra)

80005380 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80005380: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80005384: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80005388: 97 00 00 00  	auipc	ra, 0
8000538c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80005390: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80005394: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80005398: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000539c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800053a0: 63 92 02 02  	bnez	t0, 0x800053c4 <snrt.crt0.init_registers>

800053a4 <.Lpcrel_hi0>:
;     la        t0, _edata
800053a4: 97 12 00 00  	auipc	t0, 1
800053a8: 93 82 42 8b  	addi	t0, t0, -1868

800053ac <.Lpcrel_hi1>:
;     la        t1, _end
800053ac: 17 13 00 00  	auipc	t1, 1
800053b0: 13 03 03 8b  	addi	t1, t1, -1872
;     bge       t0, t1, 2f
800053b4: 63 d8 62 00  	bge	t0, t1, 0x800053c4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800053b8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800053bc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800053c0: e3 cc 62 fe  	blt	t0, t1, 0x800053b8 <.Lpcrel_hi1+0xc>

800053c4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800053c4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800053c8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800053cc: 63 82 02 08  	beqz	t0, 0x80005450 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800053d0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800053d4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800053d8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800053dc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800053e0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800053e4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800053e8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800053ec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800053f0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800053f4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800053f8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800053fc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80005400: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80005404: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80005408: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000540c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80005410: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80005414: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80005418: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000541c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80005420: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80005424: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80005428: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000542c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80005430: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80005434: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80005438: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000543c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80005440: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80005444: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80005448: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000544c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80005450 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80005450: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80005454: 23 a0 06 00  	sw	zero, 0(a3)

80005458 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80005458: 97 02 00 00  	auipc	t0, 0
8000545c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80005460: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80005464: 93 87 06 00  	mv	a5, a3

80005468 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80005468: 97 03 00 00  	auipc	t2, 0
8000546c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80005470: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80005474: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80005478: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000547c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80005480: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80005484: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80005488: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000548c: b3 86 66 40  	sub	a3, a3, t1

80005490 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80005490: 97 02 00 00  	auipc	t0, 0
80005494: 93 82 82 5f  	addi	t0, t0, 1528

80005498 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80005498: 17 03 00 00  	auipc	t1, 0
8000549c: 13 03 03 5f  	addi	t1, t1, 1520

800054a0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800054a0: 97 03 00 00  	auipc	t2, 0
800054a4: 93 83 83 5e  	addi	t2, t2, 1512

800054a8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800054a8: 17 0e 00 00  	auipc	t3, 0
800054ac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800054b0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800054b4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800054b8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800054bc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800054c0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800054c4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800054c8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800054cc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800054d0: 63 dc 62 00  	bge	t0, t1, 0x800054e8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800054d4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800054d8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800054dc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800054e0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800054e4: e3 c8 62 fe  	blt	t0, t1, 0x800054d4 <.Lpcrel_hi7+0x2c>

800054e8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800054e8: 97 02 00 00  	auipc	t0, 0
800054ec: 93 82 02 5a  	addi	t0, t0, 1440

800054f0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800054f0: 17 03 00 00  	auipc	t1, 0
800054f4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
800054f8: 63 da 62 00  	bge	t0, t1, 0x8000550c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800054fc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80005500: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80005504: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80005508: e3 ca 72 fe  	blt	t0, t2, 0x800054fc <.Lpcrel_hi9+0xc>

8000550c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000550c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80005510: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80005514: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80005518: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000551c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80005520: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80005524: 97 00 00 00  	auipc	ra, 0
80005528: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
8000552c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80005530: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80005534: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80005538: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000553c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80005540: 13 01 41 01  	addi	sp, sp, 20

80005544 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80005544: 97 02 00 00  	auipc	t0, 0
80005548: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000554c: 73 90 52 30  	csrw	mtvec, t0

80005550 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80005550: 97 00 00 00  	auipc	ra, 0
80005554: e7 80 00 22  	jalr	544(ra)

80005558 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80005558: 97 b0 ff ff  	auipc	ra, 1048571
8000555c: e7 80 c0 0d  	jalr	220(ra)
;     mv        s0, a0 # store return value in s0
80005560: 13 04 05 00  	mv	s0, a0

80005564 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80005564: 97 00 00 00  	auipc	ra, 0
80005568: e7 80 c0 20  	jalr	524(ra)

8000556c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000556c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80005570: 97 00 00 00  	auipc	ra, 0
80005574: e7 80 c0 22  	jalr	556(ra)
;     wfi
80005578: 73 00 50 10  	wfi	
;     j       1b
8000557c: 6f f0 df ff  	j	0x80005578 <snrt.crt0.end+0xc>

80005580 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80005580: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80005584: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80005588: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000558c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80005590: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80005594: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80005598: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000559c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800055a0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800055a4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800055a8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800055ac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800055b0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800055b4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800055b8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800055bc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800055c0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800055c4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800055c8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800055cc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800055d0: 63 84 02 08  	beqz	t0, 0x80005658 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800055d4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800055d8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800055dc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800055e0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800055e4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800055e8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800055ec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800055f0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800055f4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800055f8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800055fc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80005600: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80005604: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80005608: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000560c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80005610: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80005614: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80005618: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000561c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80005620: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80005624: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80005628: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000562c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80005630: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80005634: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80005638: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000563c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80005640: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80005644: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80005648: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000564c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80005650: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80005654: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80005658: 97 00 00 00  	auipc	ra, 0
8000565c: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80005660: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80005664: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80005668: 63 84 02 08  	beqz	t0, 0x800056f0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000566c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80005670: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80005674: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80005678: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000567c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80005680: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80005684: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80005688: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000568c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80005690: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80005694: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80005698: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000569c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800056a0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800056a4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800056a8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800056ac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800056b0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800056b4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800056b8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800056bc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800056c0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800056c4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800056c8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800056cc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800056d0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800056d4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800056d8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800056dc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800056e0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800056e4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800056e8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800056ec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800056f0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800056f4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800056f8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800056fc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80005700: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80005704: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80005708: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000570c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80005710: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80005714: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80005718: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000571c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80005720: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80005724: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80005728: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000572c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80005730: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80005734: 13 01 01 05  	addi	sp, sp, 80
;     mret
80005738: 73 00 20 30  	mret	

8000573c <_snrt_init_core_info>:
;     mv        a4, a1
8000573c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80005740: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80005744: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80005748: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000574c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80005750: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80005754: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80005758: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000575c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80005760: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80005764: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80005768: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000576c: 67 80 00 00  	ret

80005770 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80005770: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80005774: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80005778: 97 00 00 00  	auipc	ra, 0
8000577c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80005780: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80005784: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80005788: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000578c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80005790: 67 80 00 00  	ret

80005794 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80005794: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80005798: 67 80 00 00  	ret

8000579c <_snrt_exit>:
;     addi      sp, sp, -8
8000579c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800057a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800057a4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800057a8: 97 00 00 00  	auipc	ra, 0
800057ac: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
800057b0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800057b4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800057b8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800057bc: 63 1c 05 00  	bnez	a0, 0x800057d4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800057c0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800057c4: 93 e2 12 00  	ori	t0, t0, 1

800057c8 <.Lpcrel_hi11>:
;     la        t1, tohost
800057c8: 17 03 00 00  	auipc	t1, 0
800057cc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
800057d0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800057d4: 67 80 00 00  	ret
