
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-mini-gemm:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00006c20 80000000 TEXT
  2 .init             00000468 80006c20 TEXT
  3 .rodata           00000240 80007088 DATA
  4 .htif             00000048 80007300 DATA
  5 .tdata            00000000 80007348 DATA
  6 .tbss             00000010 80007348 BSS
  7 .tbssend          00000000 80007358 DATA
  8 .sdata            000001c8 80007358 DATA
  9 .data             00000000 80007520 DATA
 10 .sbss             00000004 80007520 BSS
 11 .bss              00000000 80007524 BSS
 12 .dram             00000000 80007524 DATA
 13 .debug_info       00003584 00000000 
 14 .debug_abbrev     00000bfd 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00003a5f 00000000 
 17 .debug_loc        00004290 00000000 
 18 .debug_ranges     00000380 00000000 
 19 .debug_str        00000b18 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002c8 00000000 
 23 .symtab           000035c0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000bb5 00000000 


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
80000634: 13 01 01 eb  	addi	sp, sp, -336
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000638: 23 26 11 14  	sw	ra, 332(sp)
8000063c: 23 24 81 14  	sw	s0, 328(sp)
80000640: 23 22 91 14  	sw	s1, 324(sp)
80000644: 23 20 21 15  	sw	s2, 320(sp)
80000648: 23 2e 31 13  	sw	s3, 316(sp)
8000064c: 23 2c 41 13  	sw	s4, 312(sp)
80000650: 23 2a 51 13  	sw	s5, 308(sp)
80000654: 23 28 61 13  	sw	s6, 304(sp)
80000658: 23 26 71 13  	sw	s7, 300(sp)
8000065c: 23 24 81 13  	sw	s8, 296(sp)
80000660: 23 22 91 13  	sw	s9, 292(sp)
80000664: 23 20 a1 13  	sw	s10, 288(sp)
80000668: 23 2e b1 11  	sw	s11, 284(sp)
8000066c: 27 38 81 10  	fsd	fs0, 272(sp)
80000670: 27 34 91 10  	fsd	fs1, 264(sp)
80000674: 27 30 21 11  	fsd	fs2, 256(sp)
80000678: 27 3c 31 0f  	fsd	fs3, 248(sp)
8000067c: 27 38 41 0f  	fsd	fs4, 240(sp)
80000680: 27 34 51 0f  	fsd	fs5, 232(sp)
80000684: 27 30 61 0f  	fsd	fs6, 224(sp)
80000688: 27 3c 71 0d  	fsd	fs7, 216(sp)
8000068c: 27 38 81 0d  	fsd	fs8, 208(sp)
80000690: 27 34 91 0d  	fsd	fs9, 200(sp)
80000694: 27 30 a1 0d  	fsd	fs10, 192(sp)
80000698: 27 3c b1 0b  	fsd	fs11, 184(sp)
8000069c: 37 05 00 00  	lui	a0, 0
800006a0: 33 05 45 00  	add	a0, a0, tp
800006a4: 83 25 45 00  	lw	a1, 4(a0)
800006a8: 13 05 00 00  	mv	a0, zero
;     if(snrt_cluster_compute_core_idx() != 0u) return 0;
800006ac: 63 84 05 00  	beqz	a1, 0x800006b4 <main+0x80>
800006b0: 6f 40 80 64  	j	0x80004cf8 <.LBB0_190+0x10>
;     return _snrt_team_current->root;
800006b4: 37 05 00 00  	lui	a0, 0
800006b8: 33 05 45 00  	add	a0, a0, tp
800006bc: 03 25 05 00  	lw	a0, 0(a0)
800006c0: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006c4: 03 27 85 05  	lw	a4, 88(a0)
800006c8: 83 25 05 05  	lw	a1, 80(a0)
800006cc: 83 27 45 05  	lw	a5, 84(a0)
800006d0: 37 16 00 00  	lui	a2, 1
800006d4: 13 06 06 fa  	addi	a2, a2, -96
800006d8: b3 06 c7 00  	add	a3, a4, a2
800006dc: b3 85 b7 00  	add	a1, a5, a1
800006e0: 63 f6 d5 00  	bgeu	a1, a3, 0x800006ec <main+0xb8>
800006e4: 93 04 00 00  	mv	s1, zero
800006e8: 6f 00 00 01  	j	0x800006f8 <main+0xc4>
;     void *ret = (void *)alloc->next;
800006ec: 93 04 07 00  	mv	s1, a4
;     alloc->next += size;
800006f0: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006f4: 13 87 06 00  	mv	a4, a3
800006f8: b3 06 e6 00  	add	a3, a2, a4
800006fc: 93 86 06 32  	addi	a3, a3, 800
80000700: 63 f6 d5 00  	bgeu	a1, a3, 0x8000070c <main+0xd8>
80000704: 93 07 00 00  	mv	a5, zero
80000708: 6f 00 00 01  	j	0x80000718 <main+0xe4>
;     void *ret = (void *)alloc->next;
8000070c: 93 07 07 00  	mv	a5, a4
;     alloc->next += size;
80000710: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000714: 13 87 06 00  	mv	a4, a3
80000718: 23 28 f1 00  	sw	a5, 16(sp)
8000071c: 33 06 e6 00  	add	a2, a2, a4
80000720: 13 06 06 7d  	addi	a2, a2, 2000
80000724: 63 f6 c5 00  	bgeu	a1, a2, 0x80000730 <main+0xfc>
80000728: 13 07 00 00  	mv	a4, zero
8000072c: 6f 00 80 00  	j	0x80000734 <main+0x100>
;     alloc->next += size;
80000730: 23 2c c5 04  	sw	a2, 88(a0)
80000734: 23 26 e1 00  	sw	a4, 12(sp)
;     for (i = 0; i < ni; i++)
80000738: 13 d5 44 01  	srli	a0, s1, 20
8000073c: 33 35 a0 00  	snez	a0, a0
80000740: b7 f5 11 00  	lui	a1, 287
80000744: 93 85 95 06  	addi	a1, a1, 105
80000748: b3 b5 b4 00  	sltu	a1, s1, a1
8000074c: 33 75 b5 00  	and	a0, a0, a1

80000750 <.LBB0_148>:
80000750: 97 7f 00 00  	auipc	t6, 7
80000754: 93 8f 8f c0  	addi	t6, t6, -1016
80000758: 23 28 91 08  	sw	s1, 144(sp)
8000075c: 23 24 a1 00  	sw	a0, 8(sp)
80000760: 63 00 05 50  	beqz	a0, 0x80000c60 <.LBB0_148+0x510>
80000764: 93 02 00 00  	mv	t0, zero
80000768: 93 0c 00 00  	mv	s9, zero
8000076c: 13 0d 00 00  	mv	s10, zero
80000770: 93 0d 00 00  	mv	s11, zero
80000774: 13 05 80 00  	addi	a0, zero, 8
80000778: 93 05 80 01  	addi	a1, zero, 24
;     for (i = 0; i < ni; i++)
8000077c: 13 06 00 04  	addi	a2, zero, 64
80000780: 13 07 00 0c  	addi	a4, zero, 192
80000784: ab a0 c5 00  	scfgw	a1, a2
80000788: ab 20 e5 00  	scfgw	a0, a4
8000078c: 93 05 30 01  	addi	a1, zero, 19
80000790: 13 06 00 06  	addi	a2, zero, 96
80000794: 13 07 00 0e  	addi	a4, zero, 224
80000798: ab a0 c5 00  	scfgw	a1, a2
8000079c: ab 20 e5 00  	scfgw	a0, a4
800007a0: 13 05 00 02  	addi	a0, zero, 32
800007a4: ab 20 a0 00  	scfgw	zero, a0
800007a8: 2b a0 04 3a  	scfgwi	s1, 928
800007ac: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800007b0: 13 05 10 00  	addi	a0, zero, 1
800007b4: 23 26 a1 0a  	sw	a0, 172(sp)
800007b8: 37 d5 cc cc  	lui	a0, 838861
800007bc: 93 04 d5 cc  	addi	s1, a0, -819
800007c0: 93 00 40 01  	addi	ra, zero, 20
800007c4: 87 b1 0f 00  	fld	ft3, 0(t6)
800007c8: 13 05 10 00  	addi	a0, zero, 1
800007cc: 23 22 a1 0a  	sw	a0, 164(sp)
800007d0: 13 05 10 00  	addi	a0, zero, 1
800007d4: 23 20 a1 0a  	sw	a0, 160(sp)
800007d8: 13 04 10 00  	addi	s0, zero, 1
800007dc: 13 0e 10 00  	addi	t3, zero, 1
800007e0: 13 05 10 00  	addi	a0, zero, 1
800007e4: 23 2e a1 08  	sw	a0, 156(sp)
800007e8: 13 0f 10 00  	addi	t5, zero, 1
800007ec: 13 08 10 00  	addi	a6, zero, 1
800007f0: 93 08 10 00  	addi	a7, zero, 1
800007f4: 13 03 10 00  	addi	t1, zero, 1
800007f8: 93 09 10 00  	addi	s3, zero, 1
800007fc: 93 07 10 00  	addi	a5, zero, 1
80000800: 93 03 10 00  	addi	t2, zero, 1
80000804: 13 0b 10 00  	addi	s6, zero, 1
80000808: 13 0c 10 00  	addi	s8, zero, 1
8000080c: 93 0f 10 00  	addi	t6, zero, 1
80000810: 93 06 10 00  	addi	a3, zero, 1
80000814: 13 05 10 00  	addi	a0, zero, 1
80000818: 93 0e 10 00  	addi	t4, zero, 1
8000081c: 93 0a 10 00  	addi	s5, zero, 1
80000820: 13 09 10 00  	addi	s2, zero, 1
80000824: 93 05 10 00  	addi	a1, zero, 1
80000828: 23 24 b1 0a  	sw	a1, 168(sp)
8000082c: 13 06 10 00  	addi	a2, zero, 1
80000830: 6f 00 80 22  	j	0x80000a58 <.LBB0_148+0x308>
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000834: 53 02 06 d2  	fcvt.d.w	ft4, a2
80000838: d3 82 0b d2  	fcvt.d.w	ft5, s7
8000083c: 53 03 0b d2  	fcvt.d.w	ft6, s6
80000840: d3 83 0a d2  	fcvt.d.w	ft7, s5
80000844: 53 05 0a d2  	fcvt.d.w	fa0, s4
80000848: d3 85 09 d2  	fcvt.d.w	fa1, s3
8000084c: 53 06 09 d2  	fcvt.d.w	fa2, s2
80000850: d3 06 03 d2  	fcvt.d.w	fa3, t1
80000854: 53 87 03 d2  	fcvt.d.w	fa4, t2
80000858: d3 07 05 d2  	fcvt.d.w	fa5, a0
8000085c: 53 88 06 d2  	fcvt.d.w	fa6, a3
80000860: 03 25 01 03  	lw	a0, 48(sp)
80000864: d3 08 05 d2  	fcvt.d.w	fa7, a0
80000868: 03 25 81 02  	lw	a0, 40(sp)
8000086c: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80000870: 03 25 01 02  	lw	a0, 32(sp)
80000874: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000878: 03 25 c1 03  	lw	a0, 60(sp)
8000087c: 53 0f 05 d2  	fcvt.d.w	ft10, a0
80000880: 03 25 01 04  	lw	a0, 64(sp)
80000884: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000888: 03 25 41 04  	lw	a0, 68(sp)
8000088c: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000890: 03 25 81 04  	lw	a0, 72(sp)
80000894: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000898: 03 25 c1 04  	lw	a0, 76(sp)
8000089c: 53 09 05 d2  	fcvt.d.w	fs2, a0
800008a0: 03 25 01 05  	lw	a0, 80(sp)
800008a4: d3 09 05 d2  	fcvt.d.w	fs3, a0
800008a8: 03 25 41 05  	lw	a0, 84(sp)
800008ac: 53 0a 05 d2  	fcvt.d.w	fs4, a0
800008b0: 03 25 81 05  	lw	a0, 88(sp)
800008b4: d3 0a 05 d2  	fcvt.d.w	fs5, a0
800008b8: 03 25 c1 05  	lw	a0, 92(sp)
800008bc: 53 0b 05 d2  	fcvt.d.w	fs6, a0
800008c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800008c4: 53 00 42 22  	fmv.d	ft0, ft4
800008c8: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
800008cc: 53 00 42 22  	fmv.d	ft0, ft4
800008d0: 53 72 33 12  	fmul.d	ft4, ft6, ft3
800008d4: 53 00 42 22  	fmv.d	ft0, ft4
800008d8: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
800008dc: 53 00 42 22  	fmv.d	ft0, ft4
800008e0: 53 72 35 12  	fmul.d	ft4, fa0, ft3
800008e4: 53 00 42 22  	fmv.d	ft0, ft4
800008e8: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
800008ec: 53 00 42 22  	fmv.d	ft0, ft4
800008f0: 53 72 36 12  	fmul.d	ft4, fa2, ft3
800008f4: 53 00 42 22  	fmv.d	ft0, ft4
800008f8: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
800008fc: 53 00 42 22  	fmv.d	ft0, ft4
80000900: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80000904: 53 00 42 22  	fmv.d	ft0, ft4
80000908: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
8000090c: 53 00 42 22  	fmv.d	ft0, ft4
80000910: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80000914: 53 00 42 22  	fmv.d	ft0, ft4
80000918: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
8000091c: 53 00 42 22  	fmv.d	ft0, ft4
80000920: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80000924: 53 00 42 22  	fmv.d	ft0, ft4
80000928: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
8000092c: 53 00 42 22  	fmv.d	ft0, ft4
80000930: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80000934: 53 00 42 22  	fmv.d	ft0, ft4
80000938: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
8000093c: 53 00 42 22  	fmv.d	ft0, ft4
80000940: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80000944: 53 00 42 22  	fmv.d	ft0, ft4
80000948: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
8000094c: 53 00 42 22  	fmv.d	ft0, ft4
80000950: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80000954: 53 00 42 22  	fmv.d	ft0, ft4
80000958: 53 80 31 22  	fmv.d	ft0, ft3
8000095c: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80000960: 53 00 42 22  	fmv.d	ft0, ft4
80000964: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80000968: 53 00 42 22  	fmv.d	ft0, ft4
8000096c: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80000970: 53 00 42 22  	fmv.d	ft0, ft4
80000974: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80000978: 53 00 42 22  	fmv.d	ft0, ft4
8000097c: 03 26 c1 08  	lw	a2, 140(sp)
80000980: 13 06 86 01  	addi	a2, a2, 24
80000984: 83 25 81 0a  	lw	a1, 168(sp)
80000988: 93 85 75 01  	addi	a1, a1, 23
8000098c: 23 24 b1 0a  	sw	a1, 168(sp)
80000990: 03 29 01 06  	lw	s2, 96(sp)
80000994: 13 09 69 01  	addi	s2, s2, 22
80000998: 93 0a 5e 01  	addi	s5, t3, 21
8000099c: 93 8e 3e 01  	addi	t4, t4, 19
800009a0: 03 25 41 08  	lw	a0, 132(sp)
800009a4: 13 05 25 01  	addi	a0, a0, 18
800009a8: 83 26 81 08  	lw	a3, 136(sp)
800009ac: 93 86 16 01  	addi	a3, a3, 17
800009b0: 03 2a 01 08  	lw	s4, 128(sp)
800009b4: 13 0a 0a 01  	addi	s4, s4, 16
800009b8: 83 2b c1 07  	lw	s7, 124(sp)
800009bc: 93 8b fb 00  	addi	s7, s7, 15
800009c0: 03 2b 01 07  	lw	s6, 112(sp)
800009c4: 13 0b eb 00  	addi	s6, s6, 14
800009c8: 83 23 81 07  	lw	t2, 120(sp)
800009cc: 93 83 d3 00  	addi	t2, t2, 13
800009d0: 93 87 c7 00  	addi	a5, a5, 12
800009d4: 83 29 41 06  	lw	s3, 100(sp)
800009d8: 93 89 b9 00  	addi	s3, s3, 11
800009dc: 03 23 c1 06  	lw	t1, 108(sp)
800009e0: 13 03 a3 00  	addi	t1, t1, 10
800009e4: 03 27 41 07  	lw	a4, 116(sp)
800009e8: 13 07 a7 00  	addi	a4, a4, 10
800009ec: 83 28 81 06  	lw	a7, 104(sp)
800009f0: 93 88 98 00  	addi	a7, a7, 9
800009f4: 13 08 88 00  	addi	a6, a6, 8
800009f8: 13 0f 7f 00  	addi	t5, t5, 7
800009fc: 93 8f 6f 00  	addi	t6, t6, 6
80000a00: 23 2e f1 09  	sw	t6, 156(sp)
80000a04: 03 2e 81 09  	lw	t3, 152(sp)
80000a08: 13 0e 5e 00  	addi	t3, t3, 5
80000a0c: 93 8d 5d 00  	addi	s11, s11, 5
80000a10: 03 24 41 09  	lw	s0, 148(sp)
80000a14: 13 04 44 00  	addi	s0, s0, 4
80000a18: 13 0d 4d 00  	addi	s10, s10, 4
80000a1c: 13 0c 3c 00  	addi	s8, s8, 3
80000a20: 23 20 81 0b  	sw	s8, 160(sp)
80000a24: 93 82 22 00  	addi	t0, t0, 2
80000a28: 23 22 51 0a  	sw	t0, 164(sp)
80000a2c: 83 25 c1 0a  	lw	a1, 172(sp)
80000a30: 93 85 15 00  	addi	a1, a1, 1
80000a34: 93 82 2c 00  	addi	t0, s9, 2
80000a38: 93 0c 0d 00  	mv	s9, s10
80000a3c: 13 8d 0d 00  	mv	s10, s11
80000a40: 93 0d 07 00  	mv	s11, a4
;     for (i = 0; i < ni; i++)
80000a44: 13 07 50 01  	addi	a4, zero, 21
80000a48: 23 26 b1 0a  	sw	a1, 172(sp)
80000a4c: 13 8c 0b 00  	mv	s8, s7
80000a50: 93 0f 0a 00  	mv	t6, s4
80000a54: 63 84 e5 72  	beq	a1, a4, 0x8000117c <.LBB0_148+0xa2c>
80000a58: 23 20 21 07  	sw	s2, 96(sp)
80000a5c: 23 22 31 07  	sw	s3, 100(sp)
80000a60: 23 24 11 07  	sw	a7, 104(sp)
80000a64: 23 26 61 06  	sw	t1, 108(sp)
80000a68: 23 28 61 07  	sw	s6, 112(sp)
80000a6c: 23 2c 71 06  	sw	t2, 120(sp)
80000a70: 23 2e 81 07  	sw	s8, 124(sp)
80000a74: 23 20 f1 09  	sw	t6, 128(sp)
80000a78: 23 22 a1 08  	sw	a0, 132(sp)
80000a7c: 23 24 d1 08  	sw	a3, 136(sp)
80000a80: 93 05 06 00  	mv	a1, a2
80000a84: 23 2a b1 07  	sw	s11, 116(sp)
80000a88: 13 06 00 00  	mv	a2, zero
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000a8c: 33 b7 95 02  	mulhu	a4, a1, s1
80000a90: 13 57 47 00  	srli	a4, a4, 4
80000a94: 33 07 17 02  	mul	a4, a4, ra
80000a98: 23 26 b1 08  	sw	a1, 140(sp)
80000a9c: b3 85 e5 40  	sub	a1, a1, a4
80000aa0: 23 2e b1 04  	sw	a1, 92(sp)
80000aa4: 83 25 81 0a  	lw	a1, 168(sp)
80000aa8: 33 b7 95 02  	mulhu	a4, a1, s1
80000aac: 13 57 47 00  	srli	a4, a4, 4
80000ab0: 33 07 17 02  	mul	a4, a4, ra
80000ab4: b3 85 e5 40  	sub	a1, a1, a4
80000ab8: 23 2c b1 04  	sw	a1, 88(sp)
80000abc: 33 37 99 02  	mulhu	a4, s2, s1
80000ac0: 13 57 47 00  	srli	a4, a4, 4
80000ac4: 33 07 17 02  	mul	a4, a4, ra
80000ac8: b3 05 e9 40  	sub	a1, s2, a4
80000acc: 23 2a b1 04  	sw	a1, 84(sp)
80000ad0: 33 b7 9a 02  	mulhu	a4, s5, s1
80000ad4: 13 57 47 00  	srli	a4, a4, 4
80000ad8: 33 07 17 02  	mul	a4, a4, ra
80000adc: b3 85 ea 40  	sub	a1, s5, a4
80000ae0: 23 28 b1 04  	sw	a1, 80(sp)
80000ae4: 33 b7 9e 02  	mulhu	a4, t4, s1
80000ae8: 13 57 47 00  	srli	a4, a4, 4
80000aec: 33 07 17 02  	mul	a4, a4, ra
80000af0: b3 85 ee 40  	sub	a1, t4, a4
80000af4: 23 26 b1 04  	sw	a1, 76(sp)
80000af8: 33 37 95 02  	mulhu	a4, a0, s1
80000afc: 13 57 47 00  	srli	a4, a4, 4
80000b00: 33 07 17 02  	mul	a4, a4, ra
80000b04: 33 05 e5 40  	sub	a0, a0, a4
80000b08: 23 24 a1 04  	sw	a0, 72(sp)
80000b0c: 33 b7 96 02  	mulhu	a4, a3, s1
80000b10: 13 57 47 00  	srli	a4, a4, 4
80000b14: 33 07 17 02  	mul	a4, a4, ra
80000b18: 33 85 e6 40  	sub	a0, a3, a4
80000b1c: 23 22 a1 04  	sw	a0, 68(sp)
80000b20: 33 b7 9f 02  	mulhu	a4, t6, s1
80000b24: 13 57 47 00  	srli	a4, a4, 4
80000b28: 33 07 17 02  	mul	a4, a4, ra
80000b2c: 33 85 ef 40  	sub	a0, t6, a4
80000b30: 23 20 a1 04  	sw	a0, 64(sp)
80000b34: 33 37 9c 02  	mulhu	a4, s8, s1
80000b38: 13 57 47 00  	srli	a4, a4, 4
80000b3c: 33 07 17 02  	mul	a4, a4, ra
80000b40: 33 05 ec 40  	sub	a0, s8, a4
80000b44: 23 2e a1 02  	sw	a0, 60(sp)
80000b48: 33 37 9b 02  	mulhu	a4, s6, s1
80000b4c: 13 57 47 00  	srli	a4, a4, 4
80000b50: 33 07 17 02  	mul	a4, a4, ra
80000b54: 33 05 eb 40  	sub	a0, s6, a4
80000b58: 23 20 a1 02  	sw	a0, 32(sp)
80000b5c: 33 b7 93 02  	mulhu	a4, t2, s1
80000b60: 13 57 47 00  	srli	a4, a4, 4
80000b64: 33 07 17 02  	mul	a4, a4, ra
80000b68: 33 85 e3 40  	sub	a0, t2, a4
80000b6c: 23 24 a1 02  	sw	a0, 40(sp)
80000b70: 33 b7 97 02  	mulhu	a4, a5, s1
80000b74: 13 57 47 00  	srli	a4, a4, 4
80000b78: 33 07 17 02  	mul	a4, a4, ra
80000b7c: 33 85 e7 40  	sub	a0, a5, a4
80000b80: 23 28 a1 02  	sw	a0, 48(sp)
80000b84: 33 b7 99 02  	mulhu	a4, s3, s1
80000b88: 13 57 47 00  	srli	a4, a4, 4
80000b8c: 33 07 17 02  	mul	a4, a4, ra
80000b90: b3 86 e9 40  	sub	a3, s3, a4
80000b94: 33 b7 9d 02  	mulhu	a4, s11, s1
80000b98: 13 57 47 00  	srli	a4, a4, 4
80000b9c: 33 07 17 02  	mul	a4, a4, ra
80000ba0: 33 05 e3 40  	sub	a0, t1, a4
80000ba4: 33 b7 98 02  	mulhu	a4, a7, s1
80000ba8: 13 57 47 00  	srli	a4, a4, 4
80000bac: 33 07 17 02  	mul	a4, a4, ra
80000bb0: b3 83 e8 40  	sub	t2, a7, a4
80000bb4: 33 37 98 02  	mulhu	a4, a6, s1
80000bb8: 13 57 47 00  	srli	a4, a4, 4
80000bbc: 33 07 17 02  	mul	a4, a4, ra
80000bc0: 33 03 e8 40  	sub	t1, a6, a4
80000bc4: 33 37 9f 02  	mulhu	a4, t5, s1
80000bc8: 13 57 47 00  	srli	a4, a4, 4
80000bcc: 33 07 17 02  	mul	a4, a4, ra
80000bd0: 33 09 ef 40  	sub	s2, t5, a4
80000bd4: 83 2f c1 09  	lw	t6, 156(sp)
80000bd8: 33 b7 9f 02  	mulhu	a4, t6, s1
80000bdc: 13 57 47 00  	srli	a4, a4, 4
80000be0: 33 07 17 02  	mul	a4, a4, ra
80000be4: b3 89 ef 40  	sub	s3, t6, a4
80000be8: 33 37 9d 02  	mulhu	a4, s10, s1
80000bec: 13 57 47 00  	srli	a4, a4, 4
80000bf0: 33 07 17 02  	mul	a4, a4, ra
80000bf4: 93 0d 0d 00  	mv	s11, s10
80000bf8: 23 2c c1 09  	sw	t3, 152(sp)
80000bfc: 33 0a ee 40  	sub	s4, t3, a4
80000c00: 33 b7 9c 02  	mulhu	a4, s9, s1
80000c04: 13 57 47 00  	srli	a4, a4, 4
80000c08: 33 07 17 02  	mul	a4, a4, ra
80000c0c: 13 8e 0a 00  	mv	t3, s5
80000c10: 13 8d 0c 00  	mv	s10, s9
80000c14: 23 2a 81 08  	sw	s0, 148(sp)
80000c18: b3 0a e4 40  	sub	s5, s0, a4
80000c1c: 03 2c 01 0a  	lw	s8, 160(sp)
80000c20: 33 37 9c 02  	mulhu	a4, s8, s1
80000c24: 13 57 47 00  	srli	a4, a4, 4
80000c28: 33 07 17 02  	mul	a4, a4, ra
80000c2c: 33 0b ec 40  	sub	s6, s8, a4
80000c30: 33 b7 92 02  	mulhu	a4, t0, s1
80000c34: 13 57 47 00  	srli	a4, a4, 4
80000c38: 33 07 17 02  	mul	a4, a4, ra
80000c3c: 53 80 31 22  	fmv.d	ft0, ft3
80000c40: 93 8c 02 00  	mv	s9, t0
80000c44: 83 25 41 0a  	lw	a1, 164(sp)
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000c48: b3 8b e5 40  	sub	s7, a1, a4
80000c4c: 93 82 05 00  	mv	t0, a1
80000c50: 83 28 c1 0a  	lw	a7, 172(sp)
80000c54: e3 80 18 be  	beq	a7, ra, 0x80000834 <.LBB0_148+0xe4>
80000c58: 03 26 c1 0a  	lw	a2, 172(sp)
80000c5c: 6f f0 9f bd  	j	0x80000834 <.LBB0_148+0xe4>
80000c60: 23 26 01 08  	sw	zero, 140(sp)
80000c64: 13 04 00 00  	mv	s0, zero
80000c68: 93 09 00 00  	mv	s3, zero
80000c6c: 93 0a 00 00  	mv	s5, zero
;     for (i = 0; i < ni; i++)
80000c70: 93 87 04 06  	addi	a5, s1, 96
80000c74: 13 08 10 00  	addi	a6, zero, 1
80000c78: 37 d5 cc cc  	lui	a0, 838861
80000c7c: 93 0e d5 cc  	addi	t4, a0, -819
80000c80: 13 0f 40 01  	addi	t5, zero, 20
80000c84: b7 a5 a9 3f  	lui	a1, 260762
80000c88: 13 89 95 99  	addi	s2, a1, -1639
80000c8c: b7 a5 99 99  	lui	a1, 629146
80000c90: 13 8e a5 99  	addi	t3, a1, -1638
80000c94: 93 00 10 00  	addi	ra, zero, 1
80000c98: 13 03 10 00  	addi	t1, zero, 1
80000c9c: 13 05 10 00  	addi	a0, zero, 1
80000ca0: 23 24 a1 08  	sw	a0, 136(sp)
80000ca4: 13 0d 10 00  	addi	s10, zero, 1
80000ca8: 93 03 10 00  	addi	t2, zero, 1
80000cac: 93 0b 10 00  	addi	s7, zero, 1
80000cb0: 93 05 10 00  	addi	a1, zero, 1
80000cb4: 93 0d 10 00  	addi	s11, zero, 1
80000cb8: 93 08 10 00  	addi	a7, zero, 1
80000cbc: 13 07 10 00  	addi	a4, zero, 1
80000cc0: 23 22 e1 0a  	sw	a4, 164(sp)
80000cc4: 13 07 10 00  	addi	a4, zero, 1
80000cc8: 23 20 e1 0a  	sw	a4, 160(sp)
80000ccc: 13 07 10 00  	addi	a4, zero, 1
80000cd0: 23 24 e1 0a  	sw	a4, 168(sp)
80000cd4: 13 07 10 00  	addi	a4, zero, 1
80000cd8: 23 2e e1 08  	sw	a4, 156(sp)
80000cdc: 13 0b 10 00  	addi	s6, zero, 1
80000ce0: 13 07 10 00  	addi	a4, zero, 1
80000ce4: 23 2c e1 08  	sw	a4, 152(sp)
80000ce8: 93 0c 10 00  	addi	s9, zero, 1
80000cec: 93 02 10 00  	addi	t0, zero, 1
80000cf0: 13 07 10 00  	addi	a4, zero, 1
80000cf4: 23 2a e1 08  	sw	a4, 148(sp)
80000cf8: 13 05 10 00  	addi	a0, zero, 1
80000cfc: 93 04 10 00  	addi	s1, zero, 1
80000d00: 13 0a 10 00  	addi	s4, zero, 1
80000d04: 13 07 10 00  	addi	a4, zero, 1
;     for (i = 0; i < ni; i++)
80000d08: 23 26 e1 0a  	sw	a4, 172(sp)
80000d0c: 23 2c f1 01  	sw	t6, 24(sp)
80000d10: 23 2a c1 01  	sw	t3, 20(sp)
80000d14: 6f 00 00 26  	j	0x80000f74 <.LBB0_148+0x824>
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000d18: d3 81 0f d2  	fcvt.d.w	ft3, t6
80000d1c: 03 27 01 03  	lw	a4, 48(sp)
80000d20: 53 02 07 d2  	fcvt.d.w	ft4, a4
80000d24: 03 27 01 02  	lw	a4, 32(sp)
80000d28: d3 02 07 d2  	fcvt.d.w	ft5, a4
80000d2c: 53 83 0c d2  	fcvt.d.w	ft6, s9
80000d30: d3 03 09 d2  	fcvt.d.w	ft7, s2
80000d34: 53 85 09 d2  	fcvt.d.w	fa0, s3
80000d38: d3 85 0a d2  	fcvt.d.w	fa1, s5
80000d3c: 53 06 0b d2  	fcvt.d.w	fa2, s6
80000d40: d3 86 0b d2  	fcvt.d.w	fa3, s7
80000d44: 53 07 0d d2  	fcvt.d.w	fa4, s10
80000d48: d3 87 06 d2  	fcvt.d.w	fa5, a3
80000d4c: 53 88 00 d2  	fcvt.d.w	fa6, ra
80000d50: d3 08 0c d2  	fcvt.d.w	fa7, s8
80000d54: 53 8e 05 d2  	fcvt.d.w	ft8, a1
80000d58: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80000d5c: 53 8f 08 d2  	fcvt.d.w	ft10, a7
80000d60: 03 25 81 02  	lw	a0, 40(sp)
80000d64: d3 0f 05 d2  	fcvt.d.w	ft11, a0
80000d68: 03 25 01 04  	lw	a0, 64(sp)
80000d6c: 53 04 05 d2  	fcvt.d.w	fs0, a0
80000d70: 03 25 c1 03  	lw	a0, 60(sp)
80000d74: d3 04 05 d2  	fcvt.d.w	fs1, a0
80000d78: 03 25 41 04  	lw	a0, 68(sp)
80000d7c: 53 09 05 d2  	fcvt.d.w	fs2, a0
80000d80: 83 2f 81 01  	lw	t6, 24(sp)
80000d84: 87 b9 0f 00  	fld	fs3, 0(t6)
80000d88: 03 25 81 04  	lw	a0, 72(sp)
80000d8c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80000d90: 03 25 c1 04  	lw	a0, 76(sp)
80000d94: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80000d98: 03 25 01 05  	lw	a0, 80(sp)
80000d9c: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80000da0: d3 f1 31 13  	fmul.d	ft3, ft3, fs3
80000da4: 27 b4 37 fa  	fsd	ft3, -88(a5)
80000da8: d3 71 32 13  	fmul.d	ft3, ft4, fs3
80000dac: 27 b8 37 fa  	fsd	ft3, -80(a5)
80000db0: d3 f1 32 13  	fmul.d	ft3, ft5, fs3
80000db4: 27 bc 37 fa  	fsd	ft3, -72(a5)
80000db8: d3 71 33 13  	fmul.d	ft3, ft6, fs3
80000dbc: 27 b0 37 fc  	fsd	ft3, -64(a5)
80000dc0: d3 f1 33 13  	fmul.d	ft3, ft7, fs3
80000dc4: 27 b4 37 fc  	fsd	ft3, -56(a5)
80000dc8: d3 71 35 13  	fmul.d	ft3, fa0, fs3
80000dcc: 27 b8 37 fc  	fsd	ft3, -48(a5)
80000dd0: d3 f1 35 13  	fmul.d	ft3, fa1, fs3
80000dd4: 27 bc 37 fc  	fsd	ft3, -40(a5)
80000dd8: d3 71 36 13  	fmul.d	ft3, fa2, fs3
80000ddc: 27 b0 37 fe  	fsd	ft3, -32(a5)
80000de0: d3 f1 36 13  	fmul.d	ft3, fa3, fs3
80000de4: 27 b4 37 fe  	fsd	ft3, -24(a5)
80000de8: d3 71 37 13  	fmul.d	ft3, fa4, fs3
80000dec: 27 b8 37 fe  	fsd	ft3, -16(a5)
80000df0: d3 f1 37 13  	fmul.d	ft3, fa5, fs3
80000df4: 27 bc 37 fe  	fsd	ft3, -8(a5)
80000df8: d3 71 38 13  	fmul.d	ft3, fa6, fs3
80000dfc: 27 b0 37 00  	fsd	ft3, 0(a5)
80000e00: d3 f1 38 13  	fmul.d	ft3, fa7, fs3
80000e04: 27 b4 37 00  	fsd	ft3, 8(a5)
80000e08: d3 71 3e 13  	fmul.d	ft3, ft8, fs3
80000e0c: 27 b8 37 00  	fsd	ft3, 16(a5)
80000e10: d3 f1 3e 13  	fmul.d	ft3, ft9, fs3
80000e14: 27 bc 37 00  	fsd	ft3, 24(a5)
80000e18: d3 71 3f 13  	fmul.d	ft3, ft10, fs3
80000e1c: 27 b0 37 02  	fsd	ft3, 32(a5)
80000e20: d3 f1 3f 13  	fmul.d	ft3, ft11, fs3
80000e24: 27 b4 37 02  	fsd	ft3, 40(a5)
80000e28: d3 71 34 13  	fmul.d	ft3, fs0, fs3
80000e2c: 27 b8 37 02  	fsd	ft3, 48(a5)
80000e30: d3 f1 34 13  	fmul.d	ft3, fs1, fs3
80000e34: 27 bc 37 02  	fsd	ft3, 56(a5)
80000e38: d3 71 39 13  	fmul.d	ft3, fs2, fs3
80000e3c: 27 b4 37 04  	fsd	ft3, 72(a5)
80000e40: d3 71 3a 13  	fmul.d	ft3, fs4, fs3
80000e44: 27 b8 37 04  	fsd	ft3, 80(a5)
80000e48: d3 f1 3a 13  	fmul.d	ft3, fs5, fs3
80000e4c: 27 bc 37 04  	fsd	ft3, 88(a5)
80000e50: 23 a2 97 04  	sw	s1, 68(a5)
80000e54: 03 2e 41 01  	lw	t3, 20(sp)
80000e58: 23 a0 c7 05  	sw	t3, 64(a5)
80000e5c: d3 71 3b 13  	fmul.d	ft3, fs6, fs3
80000e60: 27 b0 37 06  	fsd	ft3, 96(a5)
80000e64: 03 2c c1 0a  	lw	s8, 172(sp)
80000e68: 13 0c 1c 00  	addi	s8, s8, 1
80000e6c: 93 0b 86 01  	addi	s7, a2, 24
80000e70: 13 8d 04 00  	mv	s10, s1
80000e74: 83 24 41 08  	lw	s1, 132(sp)
80000e78: 93 84 74 01  	addi	s1, s1, 23
80000e7c: 03 25 01 08  	lw	a0, 128(sp)
80000e80: 13 05 65 01  	addi	a0, a0, 22
80000e84: 03 27 41 09  	lw	a4, 148(sp)
80000e88: 13 07 27 00  	addi	a4, a4, 2
80000e8c: 23 2a e1 08  	sw	a4, 148(sp)
80000e90: 03 29 c1 07  	lw	s2, 124(sp)
80000e94: 93 0a 29 00  	addi	s5, s2, 2
80000e98: 93 00 54 01  	addi	ra, s0, 21
80000e9c: 83 2c 41 05  	lw	s9, 84(sp)
80000ea0: 93 8c 3c 00  	addi	s9, s9, 3
80000ea4: 03 27 81 09  	lw	a4, 152(sp)
80000ea8: 13 07 47 00  	addi	a4, a4, 4
80000eac: 23 2c e1 08  	sw	a4, 152(sp)
80000eb0: 83 29 81 07  	lw	s3, 120(sp)
80000eb4: 93 89 49 00  	addi	s3, s3, 4
80000eb8: 03 2b 41 07  	lw	s6, 116(sp)
80000ebc: 13 0b 3b 01  	addi	s6, s6, 19
80000ec0: 03 27 c1 09  	lw	a4, 156(sp)
80000ec4: 13 07 57 00  	addi	a4, a4, 5
80000ec8: 23 2e e1 08  	sw	a4, 156(sp)
80000ecc: 03 24 c1 06  	lw	s0, 108(sp)
80000ed0: 13 04 54 00  	addi	s0, s0, 5
80000ed4: 03 27 81 0a  	lw	a4, 168(sp)
80000ed8: 13 07 27 01  	addi	a4, a4, 18
80000edc: 23 24 e1 0a  	sw	a4, 168(sp)
80000ee0: 03 27 01 0a  	lw	a4, 160(sp)
80000ee4: 13 07 67 00  	addi	a4, a4, 6
80000ee8: 23 20 e1 0a  	sw	a4, 160(sp)
80000eec: 03 27 41 0a  	lw	a4, 164(sp)
80000ef0: 13 07 17 01  	addi	a4, a4, 17
80000ef4: 23 22 e1 0a  	sw	a4, 164(sp)
80000ef8: 83 28 c1 05  	lw	a7, 92(sp)
80000efc: 93 88 78 00  	addi	a7, a7, 7
80000f00: 83 2d 81 05  	lw	s11, 88(sp)
80000f04: 93 8d 0d 01  	addi	s11, s11, 16
80000f08: 83 25 41 06  	lw	a1, 100(sp)
80000f0c: 93 85 85 00  	addi	a1, a1, 8
80000f10: 83 26 01 07  	lw	a3, 112(sp)
80000f14: 93 86 f6 00  	addi	a3, a3, 15
80000f18: 93 83 93 00  	addi	t2, t2, 9
80000f1c: 03 26 81 06  	lw	a2, 104(sp)
80000f20: 13 06 e6 00  	addi	a2, a2, 14
80000f24: 13 0a aa 00  	addi	s4, s4, 10
80000f28: 23 24 41 09  	sw	s4, 136(sp)
80000f2c: 93 82 a2 00  	addi	t0, t0, 10
80000f30: 23 26 51 08  	sw	t0, 140(sp)
80000f34: 03 2a 01 06  	lw	s4, 96(sp)
80000f38: 13 0a da 00  	addi	s4, s4, 13
80000f3c: 93 87 87 0c  	addi	a5, a5, 200
80000f40: 13 03 c3 00  	addi	t1, t1, 12
80000f44: 13 08 b8 00  	addi	a6, a6, 11
80000f48: 13 09 0d 00  	mv	s2, s10
;     for (i = 0; i < ni; i++)
80000f4c: 13 07 50 01  	addi	a4, zero, 21
80000f50: 13 0d 03 00  	mv	s10, t1
80000f54: 13 03 0a 00  	mv	t1, s4
80000f58: 93 82 00 00  	mv	t0, ra
80000f5c: 93 00 0d 00  	mv	ra, s10
80000f60: 13 8a 0b 00  	mv	s4, s7
80000f64: 13 0d 06 00  	mv	s10, a2
80000f68: 93 8b 06 00  	mv	s7, a3
80000f6c: 23 26 81 0b  	sw	s8, 172(sp)
80000f70: 63 08 ec 20  	beq	s8, a4, 0x80001180 <.LBB0_148+0xa30>
80000f74: 23 20 61 06  	sw	t1, 96(sp)
80000f78: 23 22 b1 06  	sw	a1, 100(sp)
80000f7c: 23 24 a1 07  	sw	s10, 104(sp)
80000f80: 23 26 81 06  	sw	s0, 108(sp)
80000f84: 23 28 71 07  	sw	s7, 112(sp)
80000f88: 23 2a 61 07  	sw	s6, 116(sp)
80000f8c: 23 2c 31 07  	sw	s3, 120(sp)
80000f90: 23 2e 51 07  	sw	s5, 124(sp)
80000f94: 23 20 a1 08  	sw	a0, 128(sp)
80000f98: 23 22 91 08  	sw	s1, 132(sp)
80000f9c: 93 0f 00 00  	mv	t6, zero
;             C[i][j] = (double) ((i*j+1) % ni) / ni;
80000fa0: b3 36 da 03  	mulhu	a3, s4, t4
80000fa4: 93 d6 46 00  	srli	a3, a3, 4
80000fa8: b3 86 e6 03  	mul	a3, a3, t5
80000fac: 33 06 da 40  	sub	a2, s4, a3
80000fb0: 23 28 c1 04  	sw	a2, 80(sp)
80000fb4: b3 b6 d4 03  	mulhu	a3, s1, t4
80000fb8: 93 d6 46 00  	srli	a3, a3, 4
80000fbc: b3 86 e6 03  	mul	a3, a3, t5
80000fc0: 33 86 d4 40  	sub	a2, s1, a3
80000fc4: 23 26 c1 04  	sw	a2, 76(sp)
80000fc8: b3 36 d5 03  	mulhu	a3, a0, t4
80000fcc: 93 d6 46 00  	srli	a3, a3, 4
80000fd0: b3 86 e6 03  	mul	a3, a3, t5
80000fd4: 33 05 d5 40  	sub	a0, a0, a3
80000fd8: 23 24 a1 04  	sw	a0, 72(sp)
80000fdc: b3 b6 da 03  	mulhu	a3, s5, t4
80000fe0: 93 d6 46 00  	srli	a3, a3, 4
80000fe4: b3 86 e6 03  	mul	a3, a3, t5
80000fe8: 03 27 41 09  	lw	a4, 148(sp)
80000fec: 33 05 d7 40  	sub	a0, a4, a3
80000ff0: 23 28 a1 02  	sw	a0, 48(sp)
80000ff4: b3 b6 d2 03  	mulhu	a3, t0, t4
80000ff8: 93 d6 46 00  	srli	a3, a3, 4
80000ffc: b3 86 e6 03  	mul	a3, a3, t5
80001000: 33 85 d2 40  	sub	a0, t0, a3
80001004: 23 22 a1 04  	sw	a0, 68(sp)
80001008: b3 b6 dc 03  	mulhu	a3, s9, t4
8000100c: 93 d6 46 00  	srli	a3, a3, 4
80001010: b3 86 e6 03  	mul	a3, a3, t5
80001014: 23 2a 91 05  	sw	s9, 84(sp)
80001018: 33 85 dc 40  	sub	a0, s9, a3
8000101c: 23 20 a1 02  	sw	a0, 32(sp)
80001020: b3 b6 d9 03  	mulhu	a3, s3, t4
80001024: 93 d6 46 00  	srli	a3, a3, 4
80001028: b3 86 e6 03  	mul	a3, a3, t5
8000102c: 13 05 09 00  	mv	a0, s2
80001030: 03 27 81 09  	lw	a4, 152(sp)
80001034: b3 0c d7 40  	sub	s9, a4, a3
80001038: b3 36 db 03  	mulhu	a3, s6, t4
8000103c: 93 d6 46 00  	srli	a3, a3, 4
80001040: b3 86 e6 03  	mul	a3, a3, t5
80001044: 33 06 db 40  	sub	a2, s6, a3
80001048: 23 2e c1 02  	sw	a2, 60(sp)
8000104c: b3 36 d4 03  	mulhu	a3, s0, t4
80001050: 93 d6 46 00  	srli	a3, a3, 4
80001054: b3 86 e6 03  	mul	a3, a3, t5
80001058: 83 24 c1 09  	lw	s1, 156(sp)
8000105c: 33 89 d4 40  	sub	s2, s1, a3
80001060: 83 24 81 0a  	lw	s1, 168(sp)
80001064: b3 b6 d4 03  	mulhu	a3, s1, t4
80001068: 93 d6 46 00  	srli	a3, a3, 4
8000106c: b3 86 e6 03  	mul	a3, a3, t5
80001070: 33 86 d4 40  	sub	a2, s1, a3
80001074: 23 20 c1 04  	sw	a2, 64(sp)
80001078: 83 24 01 0a  	lw	s1, 160(sp)
8000107c: b3 b6 d4 03  	mulhu	a3, s1, t4
80001080: 93 d6 46 00  	srli	a3, a3, 4
80001084: b3 86 e6 03  	mul	a3, a3, t5
80001088: b3 89 d4 40  	sub	s3, s1, a3
8000108c: 83 24 41 0a  	lw	s1, 164(sp)
80001090: b3 b6 d4 03  	mulhu	a3, s1, t4
80001094: 93 d6 46 00  	srli	a3, a3, 4
80001098: b3 86 e6 03  	mul	a3, a3, t5
8000109c: 33 86 d4 40  	sub	a2, s1, a3
800010a0: 23 24 c1 02  	sw	a2, 40(sp)
800010a4: 93 04 05 00  	mv	s1, a0
800010a8: b3 b6 d8 03  	mulhu	a3, a7, t4
800010ac: 93 d6 46 00  	srli	a3, a3, 4
800010b0: b3 86 e6 03  	mul	a3, a3, t5
800010b4: 23 2e 11 05  	sw	a7, 92(sp)
800010b8: b3 8a d8 40  	sub	s5, a7, a3
800010bc: b3 b6 dd 03  	mulhu	a3, s11, t4
800010c0: 93 d6 46 00  	srli	a3, a3, 4
800010c4: b3 86 e6 03  	mul	a3, a3, t5
800010c8: 23 2c b1 05  	sw	s11, 88(sp)
800010cc: b3 88 dd 40  	sub	a7, s11, a3
800010d0: b3 b6 d5 03  	mulhu	a3, a1, t4
800010d4: 93 d6 46 00  	srli	a3, a3, 4
800010d8: b3 86 e6 03  	mul	a3, a3, t5
800010dc: 33 8b d5 40  	sub	s6, a1, a3
800010e0: b3 b6 db 03  	mulhu	a3, s7, t4
800010e4: 93 d6 46 00  	srli	a3, a3, 4
800010e8: b3 86 e6 03  	mul	a3, a3, t5
800010ec: 33 85 db 40  	sub	a0, s7, a3
800010f0: b3 b6 d3 03  	mulhu	a3, t2, t4
800010f4: 93 d6 46 00  	srli	a3, a3, 4
800010f8: b3 86 e6 03  	mul	a3, a3, t5
800010fc: b3 8b d3 40  	sub	s7, t2, a3
80001100: b3 36 dd 03  	mulhu	a3, s10, t4
80001104: 93 d6 46 00  	srli	a3, a3, 4
80001108: b3 86 e6 03  	mul	a3, a3, t5
8000110c: 13 84 02 00  	mv	s0, t0
80001110: 13 06 0a 00  	mv	a2, s4
80001114: b3 05 dd 40  	sub	a1, s10, a3
80001118: 83 22 c1 08  	lw	t0, 140(sp)
8000111c: b3 b6 d2 03  	mulhu	a3, t0, t4
80001120: 93 d6 46 00  	srli	a3, a3, 4
80001124: b3 86 e6 03  	mul	a3, a3, t5
80001128: 03 2a 81 08  	lw	s4, 136(sp)
8000112c: 33 0d da 40  	sub	s10, s4, a3
80001130: b3 36 d3 03  	mulhu	a3, t1, t4
80001134: 93 d6 46 00  	srli	a3, a3, 4
80001138: b3 86 e6 03  	mul	a3, a3, t5
8000113c: 33 0c d3 40  	sub	s8, t1, a3
80001140: b3 b6 d0 03  	mulhu	a3, ra, t4
80001144: 93 d6 46 00  	srli	a3, a3, 4
80001148: b3 86 e6 03  	mul	a3, a3, t5
8000114c: 13 83 00 00  	mv	t1, ra
80001150: b3 80 d0 40  	sub	ra, ra, a3
80001154: b3 36 d8 03  	mulhu	a3, a6, t4
80001158: 93 d6 46 00  	srli	a3, a3, 4
8000115c: b3 86 e6 03  	mul	a3, a3, t5
80001160: b3 06 d8 40  	sub	a3, a6, a3
80001164: 23 a2 97 fa  	sw	s1, -92(a5)
80001168: 23 a0 c7 fb  	sw	t3, -96(a5)
8000116c: 03 27 c1 0a  	lw	a4, 172(sp)
80001170: e3 04 e7 bb  	beq	a4, t5, 0x80000d18 <.LBB0_148+0x5c8>
80001174: 83 2f c1 0a  	lw	t6, 172(sp)
80001178: 6f f0 1f ba  	j	0x80000d18 <.LBB0_148+0x5c8>
8000117c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001180: 03 25 01 01  	lw	a0, 16(sp)
;     for (i = 0; i < ni; i++)
80001184: 93 55 45 01  	srli	a1, a0, 20
80001188: 33 36 b0 00  	snez	a2, a1
8000118c: b7 f5 11 00  	lui	a1, 287
80001190: 93 85 95 d4  	addi	a1, a1, -695
80001194: b3 35 b5 00  	sltu	a1, a0, a1
80001198: b3 75 b6 00  	and	a1, a2, a1

8000119c <.LBB0_149>:
8000119c: 97 68 00 00  	auipc	a7, 6
800011a0: 93 88 48 1c  	addi	a7, a7, 452
800011a4: 23 2a b1 00  	sw	a1, 20(sp)
800011a8: 63 82 05 58  	beqz	a1, 0x8000172c <.LBB0_150+0x4d4>
800011ac: 23 26 01 0a  	sw	zero, 172(sp)
800011b0: 23 24 01 0a  	sw	zero, 168(sp)
800011b4: 93 05 00 00  	mv	a1, zero
800011b8: 13 06 00 00  	mv	a2, zero
800011bc: 23 22 01 0a  	sw	zero, 164(sp)
800011c0: 93 06 05 00  	mv	a3, a0
800011c4: 23 20 01 0a  	sw	zero, 160(sp)
800011c8: 23 2e 01 08  	sw	zero, 156(sp)
800011cc: 23 2c 01 08  	sw	zero, 152(sp)
800011d0: 23 2a 01 08  	sw	zero, 148(sp)
800011d4: 23 26 01 08  	sw	zero, 140(sp)
800011d8: 23 24 01 08  	sw	zero, 136(sp)
800011dc: 23 22 01 08  	sw	zero, 132(sp)
800011e0: 23 20 01 08  	sw	zero, 128(sp)
800011e4: 23 2e 01 06  	sw	zero, 124(sp)
800011e8: 23 2c 01 06  	sw	zero, 120(sp)
800011ec: 23 2a 01 06  	sw	zero, 116(sp)
800011f0: 23 28 01 06  	sw	zero, 112(sp)
800011f4: 23 26 01 06  	sw	zero, 108(sp)
800011f8: 23 24 01 06  	sw	zero, 104(sp)
800011fc: 23 22 01 06  	sw	zero, 100(sp)
80001200: 23 20 01 06  	sw	zero, 96(sp)
80001204: 23 2e 01 04  	sw	zero, 92(sp)
80001208: 23 2c 01 04  	sw	zero, 88(sp)
8000120c: 23 2a 01 04  	sw	zero, 84(sp)
80001210: 23 28 01 04  	sw	zero, 80(sp)
80001214: 23 26 01 04  	sw	zero, 76(sp)
80001218: 23 24 01 04  	sw	zero, 72(sp)
8000121c: 23 22 01 04  	sw	zero, 68(sp)
80001220: 13 08 d0 01  	addi	a6, zero, 29
;     for (i = 0; i < ni; i++)
80001224: 13 05 00 04  	addi	a0, zero, 64
80001228: ab 20 a8 00  	scfgw	a6, a0
8000122c: 13 08 80 00  	addi	a6, zero, 8
80001230: 13 05 00 0c  	addi	a0, zero, 192
80001234: ab 20 a8 00  	scfgw	a6, a0
80001238: 13 07 30 01  	addi	a4, zero, 19
8000123c: 13 05 00 06  	addi	a0, zero, 96
80001240: ab 20 a7 00  	scfgw	a4, a0
80001244: 13 05 00 0e  	addi	a0, zero, 224
80001248: ab 20 a8 00  	scfgw	a6, a0
8000124c: 13 05 00 02  	addi	a0, zero, 32
80001250: ab 20 a0 00  	scfgw	zero, a0
80001254: 87 b1 08 00  	fld	ft3, 0(a7)

80001258 <.LBB0_150>:
80001258: 17 65 00 00  	auipc	a0, 6
8000125c: 13 05 05 1f  	addi	a0, a0, 496
80001260: 07 32 05 00  	fld	ft4, 0(a0)
;     for (i = 0; i < ni; i++)
80001264: 27 30 41 02  	fsd	ft4, 32(sp)
80001268: 2b a0 06 3a  	scfgwi	a3, 928
8000126c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001270: d3 03 00 d2  	fcvt.d.w	ft7, zero
80001274: 37 95 88 88  	lui	a0, 559241
80001278: 13 08 95 88  	addi	a6, a0, -1911
8000127c: 27 3c 71 00  	fsd	ft7, 24(sp)
80001280: 93 03 e0 01  	addi	t2, zero, 30
80001284: 13 03 20 fe  	addi	t1, zero, -30
80001288: 23 2e c1 02  	sw	a2, 60(sp)
8000128c: 23 20 b1 04  	sw	a1, 64(sp)
80001290: 83 26 c1 0a  	lw	a3, 172(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001294: 33 b5 06 03  	mulhu	a0, a3, a6
80001298: 13 55 45 00  	srli	a0, a0, 4
8000129c: 33 05 75 02  	mul	a0, a0, t2
800012a0: 33 85 a6 40  	sub	a0, a3, a0
800012a4: 53 02 05 d2  	fcvt.d.w	ft4, a0
800012a8: 27 38 41 02  	fsd	ft4, 48(sp)
800012ac: 83 26 81 0a  	lw	a3, 168(sp)
800012b0: 33 b5 06 03  	mulhu	a0, a3, a6
800012b4: 13 55 45 00  	srli	a0, a0, 4
800012b8: 33 05 75 02  	mul	a0, a0, t2
800012bc: 33 85 a6 40  	sub	a0, a3, a0
800012c0: 53 02 05 d2  	fcvt.d.w	ft4, a0
800012c4: 27 34 41 02  	fsd	ft4, 40(sp)
800012c8: 33 b5 05 03  	mulhu	a0, a1, a6
800012cc: 13 55 45 00  	srli	a0, a0, 4
800012d0: 33 05 75 02  	mul	a0, a0, t2
800012d4: 33 85 a5 40  	sub	a0, a1, a0
800012d8: d3 05 05 d2  	fcvt.d.w	fa1, a0
800012dc: 33 35 06 03  	mulhu	a0, a2, a6
800012e0: 13 55 45 00  	srli	a0, a0, 4
800012e4: 33 05 75 02  	mul	a0, a0, t2
800012e8: 33 05 a6 40  	sub	a0, a2, a0
800012ec: 53 06 05 d2  	fcvt.d.w	fa2, a0
800012f0: 03 2e 41 0a  	lw	t3, 164(sp)
800012f4: 33 35 0e 03  	mulhu	a0, t3, a6
800012f8: 13 55 45 00  	srli	a0, a0, 4
800012fc: 33 05 75 02  	mul	a0, a0, t2
80001300: 33 05 ae 40  	sub	a0, t3, a0
80001304: d3 06 05 d2  	fcvt.d.w	fa3, a0
80001308: 83 2e 01 0a  	lw	t4, 160(sp)
8000130c: 33 b5 0e 03  	mulhu	a0, t4, a6
80001310: 13 55 45 00  	srli	a0, a0, 4
80001314: 33 05 75 02  	mul	a0, a0, t2
80001318: 33 85 ae 40  	sub	a0, t4, a0
8000131c: 53 07 05 d2  	fcvt.d.w	fa4, a0
80001320: 03 2f c1 09  	lw	t5, 156(sp)
80001324: 33 35 0f 03  	mulhu	a0, t5, a6
80001328: 13 55 45 00  	srli	a0, a0, 4
8000132c: 33 05 75 02  	mul	a0, a0, t2
80001330: 33 05 af 40  	sub	a0, t5, a0
80001334: d3 07 05 d2  	fcvt.d.w	fa5, a0
80001338: 83 2f 81 09  	lw	t6, 152(sp)
8000133c: 33 b5 0f 03  	mulhu	a0, t6, a6
80001340: 13 55 45 00  	srli	a0, a0, 4
80001344: 33 05 75 02  	mul	a0, a0, t2
80001348: 33 85 af 40  	sub	a0, t6, a0
8000134c: 53 08 05 d2  	fcvt.d.w	fa6, a0
80001350: 03 29 41 09  	lw	s2, 148(sp)
80001354: 33 35 09 03  	mulhu	a0, s2, a6
80001358: 13 55 45 00  	srli	a0, a0, 4
8000135c: 33 05 75 02  	mul	a0, a0, t2
80001360: 33 05 a9 40  	sub	a0, s2, a0
80001364: d3 08 05 d2  	fcvt.d.w	fa7, a0
80001368: 03 2a c1 08  	lw	s4, 140(sp)
8000136c: 33 35 0a 03  	mulhu	a0, s4, a6
80001370: 13 55 45 00  	srli	a0, a0, 4
80001374: 33 05 75 02  	mul	a0, a0, t2
80001378: 33 05 aa 40  	sub	a0, s4, a0
8000137c: 53 0e 05 d2  	fcvt.d.w	ft8, a0
80001380: 03 2b 81 08  	lw	s6, 136(sp)
80001384: 33 35 0b 03  	mulhu	a0, s6, a6
80001388: 13 55 45 00  	srli	a0, a0, 4
8000138c: 33 05 75 02  	mul	a0, a0, t2
80001390: 33 05 ab 40  	sub	a0, s6, a0
80001394: d3 0e 05 d2  	fcvt.d.w	ft9, a0
80001398: 83 2b 41 08  	lw	s7, 132(sp)
8000139c: 33 b5 0b 03  	mulhu	a0, s7, a6
800013a0: 13 55 45 00  	srli	a0, a0, 4
800013a4: 33 05 75 02  	mul	a0, a0, t2
800013a8: 33 85 ab 40  	sub	a0, s7, a0
800013ac: 53 0f 05 d2  	fcvt.d.w	ft10, a0
800013b0: 03 2c 01 08  	lw	s8, 128(sp)
800013b4: 33 35 0c 03  	mulhu	a0, s8, a6
800013b8: 13 55 45 00  	srli	a0, a0, 4
800013bc: 33 05 75 02  	mul	a0, a0, t2
800013c0: 33 05 ac 40  	sub	a0, s8, a0
800013c4: d3 0f 05 d2  	fcvt.d.w	ft11, a0
800013c8: 03 2d c1 07  	lw	s10, 124(sp)
800013cc: 33 35 0d 03  	mulhu	a0, s10, a6
800013d0: 13 55 45 00  	srli	a0, a0, 4
800013d4: 33 05 75 02  	mul	a0, a0, t2
800013d8: 33 05 ad 40  	sub	a0, s10, a0
800013dc: 53 04 05 d2  	fcvt.d.w	fs0, a0
800013e0: 83 20 81 07  	lw	ra, 120(sp)
800013e4: 33 b5 00 03  	mulhu	a0, ra, a6
800013e8: 13 55 45 00  	srli	a0, a0, 4
800013ec: 33 05 75 02  	mul	a0, a0, t2
800013f0: 33 85 a0 40  	sub	a0, ra, a0
800013f4: d3 04 05 d2  	fcvt.d.w	fs1, a0
800013f8: 83 22 41 07  	lw	t0, 116(sp)
800013fc: 33 b5 02 03  	mulhu	a0, t0, a6
80001400: 13 55 45 00  	srli	a0, a0, 4
80001404: 33 05 75 02  	mul	a0, a0, t2
80001408: 33 85 a2 40  	sub	a0, t0, a0
8000140c: 53 09 05 d2  	fcvt.d.w	fs2, a0
80001410: 83 25 01 07  	lw	a1, 112(sp)
80001414: 33 b5 05 03  	mulhu	a0, a1, a6
80001418: 13 55 45 00  	srli	a0, a0, 4
8000141c: 33 05 75 02  	mul	a0, a0, t2
80001420: 33 85 a5 40  	sub	a0, a1, a0
80001424: d3 09 05 d2  	fcvt.d.w	fs3, a0
80001428: 03 26 c1 06  	lw	a2, 108(sp)
8000142c: 33 35 06 03  	mulhu	a0, a2, a6
80001430: 13 55 45 00  	srli	a0, a0, 4
80001434: 33 05 75 02  	mul	a0, a0, t2
80001438: 33 05 a6 40  	sub	a0, a2, a0
8000143c: 53 0a 05 d2  	fcvt.d.w	fs4, a0
80001440: 83 26 81 06  	lw	a3, 104(sp)
80001444: 33 b5 06 03  	mulhu	a0, a3, a6
80001448: 13 55 45 00  	srli	a0, a0, 4
8000144c: 33 05 75 02  	mul	a0, a0, t2
80001450: 33 85 a6 40  	sub	a0, a3, a0
80001454: d3 0a 05 d2  	fcvt.d.w	fs5, a0
80001458: 03 27 41 06  	lw	a4, 100(sp)
8000145c: 33 35 07 03  	mulhu	a0, a4, a6
80001460: 13 55 45 00  	srli	a0, a0, 4
80001464: 33 05 75 02  	mul	a0, a0, t2
80001468: 33 05 a7 40  	sub	a0, a4, a0
8000146c: 53 0b 05 d2  	fcvt.d.w	fs6, a0
80001470: 83 27 01 06  	lw	a5, 96(sp)
80001474: 33 b5 07 03  	mulhu	a0, a5, a6
80001478: 13 55 45 00  	srli	a0, a0, 4
8000147c: 33 05 75 02  	mul	a0, a0, t2
80001480: 33 85 a7 40  	sub	a0, a5, a0
80001484: d3 0b 05 d2  	fcvt.d.w	fs7, a0
80001488: 83 24 c1 05  	lw	s1, 92(sp)
8000148c: 33 b5 04 03  	mulhu	a0, s1, a6
80001490: 13 55 45 00  	srli	a0, a0, 4
80001494: 33 05 75 02  	mul	a0, a0, t2
80001498: 33 85 a4 40  	sub	a0, s1, a0
8000149c: 53 0c 05 d2  	fcvt.d.w	fs8, a0
800014a0: 03 24 81 05  	lw	s0, 88(sp)
800014a4: 33 35 04 03  	mulhu	a0, s0, a6
800014a8: 13 55 45 00  	srli	a0, a0, 4
800014ac: 33 05 75 02  	mul	a0, a0, t2
800014b0: 33 05 a4 40  	sub	a0, s0, a0
800014b4: d3 0c 05 d2  	fcvt.d.w	fs9, a0
800014b8: 83 2d 41 05  	lw	s11, 84(sp)
800014bc: 33 b5 0d 03  	mulhu	a0, s11, a6
800014c0: 13 55 45 00  	srli	a0, a0, 4
800014c4: 33 05 75 02  	mul	a0, a0, t2
800014c8: 33 85 ad 40  	sub	a0, s11, a0
800014cc: 53 0d 05 d2  	fcvt.d.w	fs10, a0
800014d0: 83 2a 01 05  	lw	s5, 80(sp)
800014d4: 33 b5 0a 03  	mulhu	a0, s5, a6
800014d8: 13 55 45 00  	srli	a0, a0, 4
800014dc: 33 05 75 02  	mul	a0, a0, t2
800014e0: 33 85 aa 40  	sub	a0, s5, a0
800014e4: d3 0d 05 d2  	fcvt.d.w	fs11, a0
800014e8: 83 29 c1 04  	lw	s3, 76(sp)
800014ec: 33 b5 09 03  	mulhu	a0, s3, a6
800014f0: 13 55 45 00  	srli	a0, a0, 4
800014f4: 33 05 75 02  	mul	a0, a0, t2
800014f8: 33 85 a9 40  	sub	a0, s3, a0
800014fc: 53 02 05 d2  	fcvt.d.w	ft4, a0
80001500: 83 2c 81 04  	lw	s9, 72(sp)
80001504: 33 b5 0c 03  	mulhu	a0, s9, a6
80001508: 13 55 45 00  	srli	a0, a0, 4
8000150c: 33 05 75 02  	mul	a0, a0, t2
80001510: 33 85 ac 40  	sub	a0, s9, a0
80001514: d3 02 05 d2  	fcvt.d.w	ft5, a0
80001518: 83 28 41 04  	lw	a7, 68(sp)
8000151c: 33 b5 08 03  	mulhu	a0, a7, a6
80001520: 13 55 45 00  	srli	a0, a0, 4
80001524: 33 05 65 02  	mul	a0, a0, t1
80001528: 33 85 a8 00  	add	a0, a7, a0
8000152c: 53 03 05 d2  	fcvt.d.w	ft6, a0
80001530: 53 f5 33 12  	fmul.d	fa0, ft7, ft3
80001534: 53 00 a5 22  	fmv.d	ft0, fa0
80001538: 07 35 01 03  	fld	fa0, 48(sp)
8000153c: 53 75 35 12  	fmul.d	fa0, fa0, ft3
80001540: 53 00 a5 22  	fmv.d	ft0, fa0
80001544: 07 35 81 02  	fld	fa0, 40(sp)
80001548: 53 75 35 12  	fmul.d	fa0, fa0, ft3
8000154c: 53 00 a5 22  	fmv.d	ft0, fa0
80001550: 53 f5 35 12  	fmul.d	fa0, fa1, ft3
80001554: 53 00 a5 22  	fmv.d	ft0, fa0
80001558: 53 75 36 12  	fmul.d	fa0, fa2, ft3
8000155c: 53 00 a5 22  	fmv.d	ft0, fa0
80001560: 53 f5 36 12  	fmul.d	fa0, fa3, ft3
80001564: 53 00 a5 22  	fmv.d	ft0, fa0
80001568: 53 75 37 12  	fmul.d	fa0, fa4, ft3
8000156c: 53 00 a5 22  	fmv.d	ft0, fa0
80001570: 53 f5 37 12  	fmul.d	fa0, fa5, ft3
80001574: 53 00 a5 22  	fmv.d	ft0, fa0
80001578: 53 75 38 12  	fmul.d	fa0, fa6, ft3
8000157c: 53 00 a5 22  	fmv.d	ft0, fa0
80001580: 53 f5 38 12  	fmul.d	fa0, fa7, ft3
80001584: 53 00 a5 22  	fmv.d	ft0, fa0
80001588: 53 75 3e 12  	fmul.d	fa0, ft8, ft3
8000158c: 53 00 a5 22  	fmv.d	ft0, fa0
80001590: 53 f5 3e 12  	fmul.d	fa0, ft9, ft3
80001594: 53 00 a5 22  	fmv.d	ft0, fa0
80001598: 53 75 3f 12  	fmul.d	fa0, ft10, ft3
8000159c: 53 00 a5 22  	fmv.d	ft0, fa0
800015a0: 53 f5 3f 12  	fmul.d	fa0, ft11, ft3
800015a4: 53 00 a5 22  	fmv.d	ft0, fa0
800015a8: 53 75 34 12  	fmul.d	fa0, fs0, ft3
800015ac: 53 00 a5 22  	fmv.d	ft0, fa0
800015b0: 53 f5 34 12  	fmul.d	fa0, fs1, ft3
800015b4: 53 00 a5 22  	fmv.d	ft0, fa0
800015b8: 53 75 39 12  	fmul.d	fa0, fs2, ft3
800015bc: 53 00 a5 22  	fmv.d	ft0, fa0
800015c0: 53 f5 39 12  	fmul.d	fa0, fs3, ft3
800015c4: 53 00 a5 22  	fmv.d	ft0, fa0
800015c8: 53 75 3a 12  	fmul.d	fa0, fs4, ft3
800015cc: 53 00 a5 22  	fmv.d	ft0, fa0
800015d0: 53 f5 3a 12  	fmul.d	fa0, fs5, ft3
800015d4: 53 00 a5 22  	fmv.d	ft0, fa0
800015d8: 53 75 3b 12  	fmul.d	fa0, fs6, ft3
800015dc: 53 00 a5 22  	fmv.d	ft0, fa0
800015e0: 53 f5 3b 12  	fmul.d	fa0, fs7, ft3
800015e4: 53 00 a5 22  	fmv.d	ft0, fa0
800015e8: 53 75 3c 12  	fmul.d	fa0, fs8, ft3
800015ec: 53 00 a5 22  	fmv.d	ft0, fa0
800015f0: 53 f5 3c 12  	fmul.d	fa0, fs9, ft3
800015f4: 53 00 a5 22  	fmv.d	ft0, fa0
800015f8: 53 75 3d 12  	fmul.d	fa0, fs10, ft3
800015fc: 53 00 a5 22  	fmv.d	ft0, fa0
80001600: 53 f5 3d 12  	fmul.d	fa0, fs11, ft3
80001604: 53 00 a5 22  	fmv.d	ft0, fa0
80001608: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000160c: 53 00 42 22  	fmv.d	ft0, ft4
80001610: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80001614: 53 00 42 22  	fmv.d	ft0, ft4
80001618: 53 72 33 12  	fmul.d	ft4, ft6, ft3
8000161c: 53 00 42 22  	fmv.d	ft0, ft4
80001620: 07 32 81 01  	fld	ft4, 24(sp)
80001624: 53 00 42 22  	fmv.d	ft0, ft4
80001628: 07 32 01 02  	fld	ft4, 32(sp)
8000162c: d3 f3 43 02  	fadd.d	ft7, ft7, ft4
;     for (i = 0; i < ni; i++)
80001630: 93 88 d8 01  	addi	a7, a7, 29
80001634: 93 8c cc 01  	addi	s9, s9, 28
80001638: 23 24 91 05  	sw	s9, 72(sp)
8000163c: 93 89 b9 01  	addi	s3, s3, 27
80001640: 23 26 31 05  	sw	s3, 76(sp)
80001644: 93 8a aa 01  	addi	s5, s5, 26
80001648: 23 28 51 05  	sw	s5, 80(sp)
8000164c: 93 8d 9d 01  	addi	s11, s11, 25
80001650: 23 2a b1 05  	sw	s11, 84(sp)
80001654: 13 04 84 01  	addi	s0, s0, 24
80001658: 23 2c 81 04  	sw	s0, 88(sp)
8000165c: 93 84 74 01  	addi	s1, s1, 23
80001660: 23 2e 91 04  	sw	s1, 92(sp)
80001664: 93 87 67 01  	addi	a5, a5, 22
80001668: 23 20 f1 06  	sw	a5, 96(sp)
8000166c: 13 07 57 01  	addi	a4, a4, 21
80001670: 23 22 e1 06  	sw	a4, 100(sp)
80001674: 93 86 46 01  	addi	a3, a3, 20
80001678: 23 24 d1 06  	sw	a3, 104(sp)
8000167c: 13 06 36 01  	addi	a2, a2, 19
80001680: 23 26 c1 06  	sw	a2, 108(sp)
80001684: 03 26 c1 03  	lw	a2, 60(sp)
80001688: 93 85 25 01  	addi	a1, a1, 18
8000168c: 23 28 b1 06  	sw	a1, 112(sp)
80001690: 83 25 01 04  	lw	a1, 64(sp)
80001694: 93 82 12 01  	addi	t0, t0, 17
80001698: 23 2a 51 06  	sw	t0, 116(sp)
8000169c: 93 80 00 01  	addi	ra, ra, 16
800016a0: 23 2c 11 06  	sw	ra, 120(sp)
800016a4: 13 0d fd 00  	addi	s10, s10, 15
800016a8: 23 2e a1 07  	sw	s10, 124(sp)
800016ac: 13 0c ec 00  	addi	s8, s8, 14
800016b0: 23 20 81 09  	sw	s8, 128(sp)
800016b4: 93 8b db 00  	addi	s7, s7, 13
800016b8: 23 22 71 09  	sw	s7, 132(sp)
800016bc: 13 0b cb 00  	addi	s6, s6, 12
800016c0: 23 24 61 09  	sw	s6, 136(sp)
800016c4: 13 0a ba 00  	addi	s4, s4, 11
800016c8: 23 26 41 09  	sw	s4, 140(sp)
800016cc: 13 09 a9 00  	addi	s2, s2, 10
800016d0: 23 2a 21 09  	sw	s2, 148(sp)
800016d4: 93 8f 9f 00  	addi	t6, t6, 9
800016d8: 23 2c f1 09  	sw	t6, 152(sp)
800016dc: 13 0f 8f 00  	addi	t5, t5, 8
800016e0: 23 2e e1 09  	sw	t5, 156(sp)
800016e4: 93 8e 7e 00  	addi	t4, t4, 7
800016e8: 23 20 d1 0b  	sw	t4, 160(sp)
800016ec: 13 0e 6e 00  	addi	t3, t3, 6
800016f0: 23 22 c1 0b  	sw	t3, 164(sp)
800016f4: 13 06 56 00  	addi	a2, a2, 5
800016f8: 93 85 45 00  	addi	a1, a1, 4
800016fc: 03 25 81 0a  	lw	a0, 168(sp)
80001700: 13 05 35 00  	addi	a0, a0, 3
80001704: 23 24 a1 0a  	sw	a0, 168(sp)
80001708: 03 25 c1 0a  	lw	a0, 172(sp)
8000170c: 13 05 25 00  	addi	a0, a0, 2
80001710: 23 26 a1 0a  	sw	a0, 172(sp)
80001714: 23 22 11 05  	sw	a7, 68(sp)
80001718: 13 05 40 24  	addi	a0, zero, 580
8000171c: e3 96 a8 b6  	bne	a7, a0, 0x80001288 <.LBB0_150+0x30>
80001720: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001724: 83 20 c1 00  	lw	ra, 12(sp)
80001728: 6f 10 10 4b  	j	0x800033d8 <.LBB0_178+0x12ec>
8000172c: 23 26 11 09  	sw	a7, 140(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001730: 13 06 00 0f  	addi	a2, zero, 240
80001734: 13 09 00 0f  	addi	s2, zero, 240
80001738: 93 05 00 00  	mv	a1, zero
8000173c: 13 04 05 00  	mv	s0, a0
80001740: 97 f0 ff ff  	auipc	ra, 1048575
80001744: e7 80 00 8c  	jalr	-1856(ra)
80001748: 37 15 a1 3f  	lui	a0, 260625
8000174c: 13 05 15 11  	addi	a0, a0, 273
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001750: 23 2a a4 0e  	sw	a0, 244(s0)
80001754: 37 15 11 11  	lui	a0, 69905
80001758: 13 06 15 11  	addi	a2, a0, 273
8000175c: 23 28 c4 0e  	sw	a2, 240(s0)
80001760: 37 15 b1 3f  	lui	a0, 260881
80001764: 13 05 15 11  	addi	a0, a0, 273
80001768: 23 2e a4 0e  	sw	a0, 252(s0)
8000176c: 23 2c c4 0e  	sw	a2, 248(s0)
80001770: 37 a5 b9 3f  	lui	a0, 261018
80001774: 13 05 95 99  	addi	a0, a0, -1639
80001778: 23 22 a4 10  	sw	a0, 260(s0)
8000177c: 37 a5 99 99  	lui	a0, 629146
80001780: 13 05 a5 99  	addi	a0, a0, -1638
80001784: 23 20 a4 10  	sw	a0, 256(s0)
80001788: b7 15 c1 3f  	lui	a1, 261137
8000178c: 93 85 15 11  	addi	a1, a1, 273
80001790: 23 26 b4 10  	sw	a1, 268(s0)
80001794: 23 24 c4 10  	sw	a2, 264(s0)
80001798: b7 55 c5 3f  	lui	a1, 261205
8000179c: 93 85 55 55  	addi	a1, a1, 1365
800017a0: 23 2a b4 10  	sw	a1, 276(s0)
800017a4: b7 55 55 55  	lui	a1, 349525
800017a8: 93 86 55 55  	addi	a3, a1, 1365
800017ac: 23 28 d4 10  	sw	a3, 272(s0)
800017b0: b7 a5 c9 3f  	lui	a1, 261274
800017b4: 93 85 95 99  	addi	a1, a1, -1639
800017b8: 23 2e b4 10  	sw	a1, 284(s0)
800017bc: 23 2c a4 10  	sw	a0, 280(s0)
800017c0: b7 e5 cd 3f  	lui	a1, 261342
800017c4: 93 85 d5 dd  	addi	a1, a1, -547
800017c8: 23 22 b4 12  	sw	a1, 292(s0)
800017cc: b7 e5 dd dd  	lui	a1, 908766
800017d0: 13 88 e5 dd  	addi	a6, a1, -546
800017d4: 23 20 04 13  	sw	a6, 288(s0)
800017d8: 37 17 d1 3f  	lui	a4, 261393
800017dc: 13 07 17 11  	addi	a4, a4, 273
800017e0: 23 26 e4 12  	sw	a4, 300(s0)
800017e4: 23 24 c4 12  	sw	a2, 296(s0)
800017e8: 37 37 d3 3f  	lui	a4, 261427
800017ec: 13 07 37 33  	addi	a4, a4, 819
800017f0: 23 2a e4 12  	sw	a4, 308(s0)
800017f4: 37 37 33 33  	lui	a4, 209715
800017f8: 13 07 37 33  	addi	a4, a4, 819
800017fc: 23 28 e4 12  	sw	a4, 304(s0)
80001800: b7 57 d5 3f  	lui	a5, 261461
80001804: 93 87 57 55  	addi	a5, a5, 1365
80001808: 23 2e f4 12  	sw	a5, 316(s0)
8000180c: 23 2c d4 12  	sw	a3, 312(s0)
80001810: b7 77 d7 3f  	lui	a5, 261495
80001814: 93 87 77 77  	addi	a5, a5, 1911
80001818: 23 22 f4 14  	sw	a5, 324(s0)
8000181c: b7 77 77 77  	lui	a5, 489335
80001820: 93 87 77 77  	addi	a5, a5, 1911
80001824: 23 20 f4 14  	sw	a5, 320(s0)
80001828: b7 a4 d9 3f  	lui	s1, 261530
8000182c: 93 84 94 99  	addi	s1, s1, -1639
80001830: 23 26 94 14  	sw	s1, 332(s0)
80001834: 23 24 a4 14  	sw	a0, 328(s0)
80001838: b7 c4 db 3f  	lui	s1, 261564
8000183c: 93 84 b4 bb  	addi	s1, s1, -1093
80001840: 23 2a 94 14  	sw	s1, 340(s0)
80001844: b7 c4 bb bb  	lui	s1, 768956
80001848: 93 84 c4 bb  	addi	s1, s1, -1092
8000184c: 23 28 94 14  	sw	s1, 336(s0)
80001850: b7 e5 dd 3f  	lui	a1, 261598
80001854: 93 85 d5 dd  	addi	a1, a1, -547
80001858: 23 2e b4 14  	sw	a1, 348(s0)
8000185c: 23 2c 04 15  	sw	a6, 344(s0)
80001860: b7 05 e0 3f  	lui	a1, 261632
80001864: 23 22 b4 16  	sw	a1, 356(s0)
80001868: 23 20 04 16  	sw	zero, 352(s0)
8000186c: b7 15 e1 3f  	lui	a1, 261649
80001870: 93 85 15 11  	addi	a1, a1, 273
80001874: 23 26 b4 16  	sw	a1, 364(s0)
80001878: 23 24 c4 16  	sw	a2, 360(s0)
8000187c: b7 25 e2 3f  	lui	a1, 261666
80001880: 93 85 25 22  	addi	a1, a1, 546
80001884: 23 2a b4 16  	sw	a1, 372(s0)
80001888: b7 25 22 22  	lui	a1, 139810
8000188c: 93 85 25 22  	addi	a1, a1, 546
80001890: 23 28 b4 16  	sw	a1, 368(s0)
80001894: b7 35 e3 3f  	lui	a1, 261683
80001898: 93 85 35 33  	addi	a1, a1, 819
8000189c: 23 2e b4 16  	sw	a1, 380(s0)
800018a0: 23 2c e4 16  	sw	a4, 376(s0)
800018a4: b7 45 e4 3f  	lui	a1, 261700
800018a8: 93 85 45 44  	addi	a1, a1, 1092
800018ac: 23 22 b4 18  	sw	a1, 388(s0)
800018b0: b7 45 44 44  	lui	a1, 279620
800018b4: 93 85 45 44  	addi	a1, a1, 1092
800018b8: 23 20 b4 18  	sw	a1, 384(s0)
800018bc: b7 55 e5 3f  	lui	a1, 261717
800018c0: 93 85 55 55  	addi	a1, a1, 1365
800018c4: 23 26 b4 18  	sw	a1, 396(s0)
800018c8: 23 24 d4 18  	sw	a3, 392(s0)
800018cc: b7 65 e6 3f  	lui	a1, 261734
800018d0: 93 85 65 66  	addi	a1, a1, 1638
800018d4: 23 2a b4 18  	sw	a1, 404(s0)
800018d8: b7 65 66 66  	lui	a1, 419430
800018dc: 93 85 65 66  	addi	a1, a1, 1638
800018e0: 23 28 b4 18  	sw	a1, 400(s0)
800018e4: b7 75 e7 3f  	lui	a1, 261751
800018e8: 93 85 75 77  	addi	a1, a1, 1911
800018ec: 23 2e b4 18  	sw	a1, 412(s0)
800018f0: 23 2c f4 18  	sw	a5, 408(s0)
800018f4: b7 95 e8 3f  	lui	a1, 261769
800018f8: 93 85 85 88  	addi	a1, a1, -1912
800018fc: 23 22 b4 1a  	sw	a1, 420(s0)
80001900: 37 97 88 88  	lui	a4, 559241
80001904: 93 05 87 88  	addi	a1, a4, -1912
80001908: 23 20 b4 1a  	sw	a1, 416(s0)
8000190c: b7 a5 e9 3f  	lui	a1, 261786
80001910: 93 85 95 99  	addi	a1, a1, -1639
80001914: 23 26 b4 1a  	sw	a1, 428(s0)
80001918: 23 24 a4 1a  	sw	a0, 424(s0)
8000191c: 37 b5 ea 3f  	lui	a0, 261803
80001920: 13 05 a5 aa  	addi	a0, a0, -1366
80001924: 23 2a a4 1a  	sw	a0, 436(s0)
80001928: 37 b5 aa aa  	lui	a0, 699051
8000192c: 13 05 b5 aa  	addi	a0, a0, -1365
80001930: 23 28 a4 1a  	sw	a0, 432(s0)
80001934: 37 c5 eb 3f  	lui	a0, 261820
80001938: 13 05 b5 bb  	addi	a0, a0, -1093
8000193c: 23 2e a4 1a  	sw	a0, 444(s0)
80001940: 23 2c 94 1a  	sw	s1, 440(s0)
80001944: 37 d5 ec 3f  	lui	a0, 261837
80001948: 13 05 c5 cc  	addi	a0, a0, -820
8000194c: 23 22 a4 1c  	sw	a0, 452(s0)
80001950: 37 d5 cc cc  	lui	a0, 838861
80001954: 13 05 d5 cc  	addi	a0, a0, -819
80001958: 23 20 a4 1c  	sw	a0, 448(s0)
8000195c: 37 e5 ed 3f  	lui	a0, 261854
80001960: 13 05 d5 dd  	addi	a0, a0, -547
80001964: 23 26 a4 1c  	sw	a0, 460(s0)
80001968: 23 24 04 1d  	sw	a6, 456(s0)
8000196c: 37 f5 ee 3f  	lui	a0, 261871
80001970: 13 05 e5 ee  	addi	a0, a0, -274
80001974: 23 2a a4 1c  	sw	a0, 468(s0)
80001978: 37 f5 ee ee  	lui	a0, 978671
8000197c: 13 05 f5 ee  	addi	a0, a0, -273
80001980: 23 28 a4 1c  	sw	a0, 464(s0)
80001984: 23 2e 04 1c  	sw	zero, 476(s0)
80001988: 23 2c 04 1c  	sw	zero, 472(s0)
;         for (j = 0; j < nk; j++)
8000198c: 93 07 04 1e  	addi	a5, s0, 480
80001990: 13 d5 47 01  	srli	a0, a5, 20
80001994: 33 35 a0 00  	snez	a0, a0
80001998: b7 05 12 00  	lui	a1, 288
8000199c: 93 85 95 f1  	addi	a1, a1, -231
800019a0: b3 b5 b7 00  	sltu	a1, a5, a1
800019a4: 33 75 b5 00  	and	a0, a0, a1

800019a8 <.LBB0_151>:
800019a8: 97 6e 00 00  	auipc	t4, 6
800019ac: 93 8e 0e 9c  	addi	t4, t4, -1600

800019b0 <.LBB0_152>:
800019b0: 97 63 00 00  	auipc	t2, 6
800019b4: 93 83 03 9c  	addi	t2, t2, -1600

800019b8 <.LBB0_153>:
800019b8: 97 6c 00 00  	auipc	s9, 6
800019bc: 93 8c 0c 9c  	addi	s9, s9, -1600

800019c0 <.LBB0_154>:
800019c0: 97 69 00 00  	auipc	s3, 6
800019c4: 93 89 09 9c  	addi	s3, s3, -1600

800019c8 <.LBB0_155>:
800019c8: 17 6a 00 00  	auipc	s4, 6
800019cc: 13 0a 0a 9c  	addi	s4, s4, -1600

800019d0 <.LBB0_156>:
800019d0: 17 6b 00 00  	auipc	s6, 6
800019d4: 13 0b 0b 9c  	addi	s6, s6, -1600

800019d8 <.LBB0_157>:
800019d8: 97 68 00 00  	auipc	a7, 6
800019dc: 93 88 08 9c  	addi	a7, a7, -1600

800019e0 <.LBB0_158>:
800019e0: 17 6f 00 00  	auipc	t5, 6
800019e4: 13 0f 0f 9c  	addi	t5, t5, -1600

800019e8 <.LBB0_159>:
800019e8: 17 66 00 00  	auipc	a2, 6
800019ec: 13 06 06 9c  	addi	a2, a2, -1600

800019f0 <.LBB0_160>:
800019f0: 17 6c 00 00  	auipc	s8, 6
800019f4: 13 0c 0c 9c  	addi	s8, s8, -1600

800019f8 <.LBB0_161>:
800019f8: 97 62 00 00  	auipc	t0, 6
800019fc: 93 82 02 9c  	addi	t0, t0, -1600

80001a00 <.LBB0_162>:
80001a00: 97 66 00 00  	auipc	a3, 6
80001a04: 93 86 06 9c  	addi	a3, a3, -1600

80001a08 <.LBB0_163>:
80001a08: 17 6e 00 00  	auipc	t3, 6
80001a0c: 13 0e 0e 9c  	addi	t3, t3, -1600

80001a10 <.LBB0_164>:
80001a10: 17 63 00 00  	auipc	t1, 6
80001a14: 13 03 03 9c  	addi	t1, t1, -1600
80001a18: 63 0a 05 0e  	beqz	a0, 0x80001b0c <.LBB0_164+0xfc>
80001a1c: 13 05 80 00  	addi	a0, zero, 8
80001a20: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001a24: 13 07 00 04  	addi	a4, zero, 64
80001a28: 93 04 00 0c  	addi	s1, zero, 192
80001a2c: ab a0 e5 00  	scfgw	a1, a4
80001a30: ab 20 95 00  	scfgw	a0, s1
80001a34: 13 05 00 02  	addi	a0, zero, 32
80001a38: ab 20 a0 00  	scfgw	zero, a0
80001a3c: 2b a0 07 38  	scfgwi	a5, 896
80001a40: 87 b1 0e 00  	fld	ft3, 0(t4)
80001a44: 07 b2 03 00  	fld	ft4, 0(t2)
80001a48: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001a4c: 53 80 31 22  	fmv.d	ft0, ft3
80001a50: 53 00 42 22  	fmv.d	ft0, ft4
80001a54: 87 b2 0c 00  	fld	ft5, 0(s9)
80001a58: 07 b3 09 00  	fld	ft6, 0(s3)
80001a5c: 87 33 0a 00  	fld	ft7, 0(s4)
80001a60: 07 35 0b 00  	fld	fa0, 0(s6)
80001a64: 53 80 52 22  	fmv.d	ft0, ft5
80001a68: 53 00 63 22  	fmv.d	ft0, ft6
80001a6c: 53 80 73 22  	fmv.d	ft0, ft7
80001a70: 53 00 a5 22  	fmv.d	ft0, fa0
80001a74: 87 b5 08 00  	fld	fa1, 0(a7)
80001a78: 07 36 0f 00  	fld	fa2, 0(t5)
80001a7c: 13 0d 06 00  	mv	s10, a2
80001a80: 87 36 06 00  	fld	fa3, 0(a2)
80001a84: 07 37 0c 00  	fld	fa4, 0(s8)
80001a88: 53 80 b5 22  	fmv.d	ft0, fa1
80001a8c: 53 00 c6 22  	fmv.d	ft0, fa2
80001a90: 53 80 d6 22  	fmv.d	ft0, fa3
80001a94: 53 00 e7 22  	fmv.d	ft0, fa4
80001a98: 87 b7 02 00  	fld	fa5, 0(t0)
80001a9c: 93 8d 06 00  	mv	s11, a3
80001aa0: 07 b8 06 00  	fld	fa6, 0(a3)
80001aa4: 87 38 0e 00  	fld	fa7, 0(t3)
80001aa8: 07 3e 03 00  	fld	ft8, 0(t1)
80001aac: 53 80 f7 22  	fmv.d	ft0, fa5
80001ab0: 53 00 08 23  	fmv.d	ft0, fa6
80001ab4: 53 80 18 23  	fmv.d	ft0, fa7
80001ab8: 53 00 ce 23  	fmv.d	ft0, ft8
80001abc: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80001ac0: 53 80 de 23  	fmv.d	ft0, ft9
80001ac4: 53 80 31 22  	fmv.d	ft0, ft3
80001ac8: 53 00 42 22  	fmv.d	ft0, ft4
80001acc: 53 80 52 22  	fmv.d	ft0, ft5
80001ad0: 53 00 63 22  	fmv.d	ft0, ft6
80001ad4: 53 80 73 22  	fmv.d	ft0, ft7
80001ad8: 53 00 a5 22  	fmv.d	ft0, fa0
80001adc: 53 80 b5 22  	fmv.d	ft0, fa1
80001ae0: 53 00 c6 22  	fmv.d	ft0, fa2
80001ae4: 53 80 d6 22  	fmv.d	ft0, fa3
80001ae8: 53 00 e7 22  	fmv.d	ft0, fa4
80001aec: 53 80 f7 22  	fmv.d	ft0, fa5
80001af0: 53 00 08 23  	fmv.d	ft0, fa6
80001af4: 53 80 18 23  	fmv.d	ft0, fa7
80001af8: 53 00 ce 23  	fmv.d	ft0, ft8
80001afc: 53 80 de 23  	fmv.d	ft0, ft9
80001b00: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001b04: 83 2f c1 08  	lw	t6, 140(sp)
80001b08: 6f 00 00 05  	j	0x80001b58 <.LBB0_164+0x148>
80001b0c: 93 8d 06 00  	mv	s11, a3
80001b10: 13 0d 06 00  	mv	s10, a2
80001b14: 93 05 00 00  	mv	a1, zero
80001b18: 83 2f c1 08  	lw	t6, 140(sp)
80001b1c: 87 b1 0f 00  	fld	ft3, 0(t6)
80001b20: 13 05 20 00  	addi	a0, zero, 2
80001b24: 93 04 97 88  	addi	s1, a4, -1911
80001b28: 13 07 e0 01  	addi	a4, zero, 30
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001b2c: b3 36 95 02  	mulhu	a3, a0, s1
80001b30: 93 d6 46 00  	srli	a3, a3, 4
80001b34: b3 86 e6 02  	mul	a3, a3, a4
80001b38: b3 06 d5 40  	sub	a3, a0, a3
80001b3c: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001b40: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001b44: b3 86 b7 00  	add	a3, a5, a1
80001b48: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001b4c: 93 85 85 00  	addi	a1, a1, 8
80001b50: 13 05 25 00  	addi	a0, a0, 2
80001b54: e3 9c 25 fd  	bne	a1, s2, 0x80001b2c <.LBB0_164+0x11c>
80001b58: 23 2a 11 09  	sw	a7, 148(sp)
;         for (j = 0; j < nk; j++)
80001b5c: 03 25 01 01  	lw	a0, 16(sp)
80001b60: 93 07 05 2d  	addi	a5, a0, 720
80001b64: 13 d5 47 01  	srli	a0, a5, 20
80001b68: 33 35 a0 00  	snez	a0, a0
80001b6c: b7 05 12 00  	lui	a1, 288
80001b70: 93 85 95 f1  	addi	a1, a1, -231
80001b74: b3 b5 b7 00  	sltu	a1, a5, a1
80001b78: 33 75 b5 00  	and	a0, a0, a1

80001b7c <.LBB0_165>:
80001b7c: 97 64 00 00  	auipc	s1, 6
80001b80: 93 84 c4 85  	addi	s1, s1, -1956

80001b84 <.LBB0_166>:
80001b84: 17 64 00 00  	auipc	s0, 6
80001b88: 13 04 c4 85  	addi	s0, s0, -1956

80001b8c <.LBB0_167>:
80001b8c: 17 66 00 00  	auipc	a2, 6
80001b90: 13 06 c6 85  	addi	a2, a2, -1956

80001b94 <.LBB0_168>:
80001b94: 17 69 00 00  	auipc	s2, 6
80001b98: 13 09 c9 85  	addi	s2, s2, -1956

80001b9c <.LBB0_169>:
80001b9c: 97 6b 00 00  	auipc	s7, 6
80001ba0: 93 8b cb 85  	addi	s7, s7, -1956
80001ba4: 23 26 81 06  	sw	s0, 108(sp)
80001ba8: 23 24 91 0a  	sw	s1, 168(sp)
80001bac: 23 26 c1 0a  	sw	a2, 172(sp)
80001bb0: 63 0a 05 0c  	beqz	a0, 0x80001c84 <.LBB0_169+0xe8>
80001bb4: 93 0a 80 00  	addi	s5, zero, 8
80001bb8: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001bbc: 13 05 00 04  	addi	a0, zero, 64
80001bc0: 13 07 00 0c  	addi	a4, zero, 192
80001bc4: ab a0 a5 00  	scfgw	a1, a0
80001bc8: ab a0 ea 00  	scfgw	s5, a4
80001bcc: 13 05 00 02  	addi	a0, zero, 32
80001bd0: ab 20 a0 00  	scfgw	zero, a0
80001bd4: 87 b1 04 00  	fld	ft3, 0(s1)
80001bd8: 2b a0 07 38  	scfgwi	a5, 896
80001bdc: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001be0: 53 80 31 22  	fmv.d	ft0, ft3
80001be4: 07 b2 0c 00  	fld	ft4, 0(s9)
80001be8: 87 32 04 00  	fld	ft5, 0(s0)
80001bec: 07 33 0b 00  	fld	ft6, 0(s6)
80001bf0: 87 33 06 00  	fld	ft7, 0(a2)
80001bf4: 53 00 42 22  	fmv.d	ft0, ft4
80001bf8: 53 80 52 22  	fmv.d	ft0, ft5
80001bfc: 53 00 63 22  	fmv.d	ft0, ft6
80001c00: 53 80 73 22  	fmv.d	ft0, ft7
80001c04: 07 35 0d 00  	fld	fa0, 0(s10)
80001c08: 87 35 09 00  	fld	fa1, 0(s2)
80001c0c: 07 b6 0d 00  	fld	fa2, 0(s11)
80001c10: 87 b6 0b 00  	fld	fa3, 0(s7)
80001c14: 53 00 a5 22  	fmv.d	ft0, fa0
80001c18: 53 80 b5 22  	fmv.d	ft0, fa1
80001c1c: 53 00 c6 22  	fmv.d	ft0, fa2
80001c20: 53 80 d6 22  	fmv.d	ft0, fa3
80001c24: 53 07 00 d2  	fcvt.d.w	fa4, zero
80001c28: 53 00 e7 22  	fmv.d	ft0, fa4
80001c2c: 53 80 31 22  	fmv.d	ft0, ft3
80001c30: 53 00 42 22  	fmv.d	ft0, ft4
80001c34: 53 80 52 22  	fmv.d	ft0, ft5
80001c38: 53 00 63 22  	fmv.d	ft0, ft6
80001c3c: 53 80 73 22  	fmv.d	ft0, ft7
80001c40: 53 00 a5 22  	fmv.d	ft0, fa0
80001c44: 53 80 b5 22  	fmv.d	ft0, fa1
80001c48: 53 00 c6 22  	fmv.d	ft0, fa2
80001c4c: 53 80 d6 22  	fmv.d	ft0, fa3
80001c50: 53 00 e7 22  	fmv.d	ft0, fa4
80001c54: 53 80 31 22  	fmv.d	ft0, ft3
80001c58: 53 00 42 22  	fmv.d	ft0, ft4
80001c5c: 53 80 52 22  	fmv.d	ft0, ft5
80001c60: 53 00 63 22  	fmv.d	ft0, ft6
80001c64: 53 80 73 22  	fmv.d	ft0, ft7
80001c68: 53 00 a5 22  	fmv.d	ft0, fa0
80001c6c: 53 80 b5 22  	fmv.d	ft0, fa1
80001c70: 53 00 c6 22  	fmv.d	ft0, fa2
80001c74: 53 80 d6 22  	fmv.d	ft0, fa3
80001c78: 53 00 e7 22  	fmv.d	ft0, fa4
80001c7c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001c80: 6f 00 c0 04  	j	0x80001ccc <.LBB0_169+0x130>
80001c84: 93 04 00 00  	mv	s1, zero
80001c88: 13 04 30 00  	addi	s0, zero, 3
80001c8c: 37 95 88 88  	lui	a0, 559241
80001c90: 87 b1 0f 00  	fld	ft3, 0(t6)
80001c94: 93 05 95 88  	addi	a1, a0, -1911
80001c98: 13 05 e0 01  	addi	a0, zero, 30
80001c9c: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001ca0: b3 36 b4 02  	mulhu	a3, s0, a1
80001ca4: 93 d6 46 00  	srli	a3, a3, 4
80001ca8: b3 86 a6 02  	mul	a3, a3, a0
80001cac: b3 06 d4 40  	sub	a3, s0, a3
80001cb0: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001cb4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001cb8: b3 86 97 00  	add	a3, a5, s1
80001cbc: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001cc0: 93 84 84 00  	addi	s1, s1, 8
80001cc4: 13 04 34 00  	addi	s0, s0, 3
80001cc8: e3 9c e4 fc  	bne	s1, a4, 0x80001ca0 <.LBB0_169+0x104>
80001ccc: 03 25 01 01  	lw	a0, 16(sp)
80001cd0: 93 07 05 3c  	addi	a5, a0, 960
80001cd4: 13 d5 47 01  	srli	a0, a5, 20
80001cd8: 33 35 a0 00  	snez	a0, a0
80001cdc: b7 05 12 00  	lui	a1, 288
80001ce0: 93 85 95 f1  	addi	a1, a1, -231
80001ce4: b3 b5 b7 00  	sltu	a1, a5, a1
80001ce8: 33 75 b5 00  	and	a0, a0, a1
80001cec: 63 06 05 0e  	beqz	a0, 0x80001dd8 <.LBB0_169+0x23c>
80001cf0: 13 05 80 00  	addi	a0, zero, 8
80001cf4: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001cf8: 93 06 00 04  	addi	a3, zero, 64
80001cfc: 13 07 00 0c  	addi	a4, zero, 192
80001d00: ab a0 d5 00  	scfgw	a1, a3
80001d04: ab 20 e5 00  	scfgw	a0, a4
80001d08: 13 05 00 02  	addi	a0, zero, 32
80001d0c: ab 20 a0 00  	scfgw	zero, a0
80001d10: 2b a0 07 38  	scfgwi	a5, 896
80001d14: 87 b1 03 00  	fld	ft3, 0(t2)
80001d18: 07 b2 09 00  	fld	ft4, 0(s3)
;         for (j = 0; j < nk; j++)
80001d1c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001d20: 53 80 31 22  	fmv.d	ft0, ft3
80001d24: 53 00 42 22  	fmv.d	ft0, ft4
80001d28: 87 32 0b 00  	fld	ft5, 0(s6)
80001d2c: 07 33 0f 00  	fld	ft6, 0(t5)
80001d30: 87 33 0c 00  	fld	ft7, 0(s8)
80001d34: 07 b5 0d 00  	fld	fa0, 0(s11)
80001d38: 53 80 52 22  	fmv.d	ft0, ft5
80001d3c: 53 00 63 22  	fmv.d	ft0, ft6
80001d40: 53 80 73 22  	fmv.d	ft0, ft7
80001d44: 53 00 a5 22  	fmv.d	ft0, fa0
80001d48: 87 35 03 00  	fld	fa1, 0(t1)
80001d4c: 07 b6 0e 00  	fld	fa2, 0(t4)
80001d50: 87 b6 0c 00  	fld	fa3, 0(s9)
80001d54: 07 37 0a 00  	fld	fa4, 0(s4)
80001d58: 53 80 b5 22  	fmv.d	ft0, fa1
80001d5c: 53 00 c6 22  	fmv.d	ft0, fa2
80001d60: 53 80 d6 22  	fmv.d	ft0, fa3
80001d64: 53 00 e7 22  	fmv.d	ft0, fa4
80001d68: 03 25 41 09  	lw	a0, 148(sp)
80001d6c: 87 37 05 00  	fld	fa5, 0(a0)
80001d70: 07 38 0d 00  	fld	fa6, 0(s10)
80001d74: 87 b8 02 00  	fld	fa7, 0(t0)
80001d78: 07 3e 0e 00  	fld	ft8, 0(t3)
80001d7c: 53 80 f7 22  	fmv.d	ft0, fa5
80001d80: 53 00 08 23  	fmv.d	ft0, fa6
80001d84: 53 80 18 23  	fmv.d	ft0, fa7
80001d88: 53 00 ce 23  	fmv.d	ft0, ft8
80001d8c: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80001d90: 53 80 de 23  	fmv.d	ft0, ft9
80001d94: 53 80 31 22  	fmv.d	ft0, ft3
80001d98: 53 00 42 22  	fmv.d	ft0, ft4
80001d9c: 53 80 52 22  	fmv.d	ft0, ft5
80001da0: 53 00 63 22  	fmv.d	ft0, ft6
80001da4: 53 80 73 22  	fmv.d	ft0, ft7
80001da8: 53 00 a5 22  	fmv.d	ft0, fa0
80001dac: 53 80 b5 22  	fmv.d	ft0, fa1
80001db0: 53 00 c6 22  	fmv.d	ft0, fa2
80001db4: 53 80 d6 22  	fmv.d	ft0, fa3
80001db8: 53 00 e7 22  	fmv.d	ft0, fa4
80001dbc: 53 80 f7 22  	fmv.d	ft0, fa5
80001dc0: 53 00 08 23  	fmv.d	ft0, fa6
80001dc4: 53 80 18 23  	fmv.d	ft0, fa7
80001dc8: 53 00 ce 23  	fmv.d	ft0, ft8
80001dcc: 53 80 de 23  	fmv.d	ft0, ft9
80001dd0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001dd4: 6f 00 c0 04  	j	0x80001e20 <.LBB0_169+0x284>
80001dd8: 93 04 00 00  	mv	s1, zero
80001ddc: 13 04 40 00  	addi	s0, zero, 4
80001de0: 37 95 88 88  	lui	a0, 559241
80001de4: 87 b1 0f 00  	fld	ft3, 0(t6)
80001de8: 93 05 95 88  	addi	a1, a0, -1911
80001dec: 13 05 e0 01  	addi	a0, zero, 30
80001df0: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001df4: b3 36 b4 02  	mulhu	a3, s0, a1
80001df8: 93 d6 46 00  	srli	a3, a3, 4
80001dfc: b3 86 a6 02  	mul	a3, a3, a0
80001e00: b3 06 d4 40  	sub	a3, s0, a3
80001e04: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001e08: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001e0c: b3 86 97 00  	add	a3, a5, s1
80001e10: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001e14: 93 84 84 00  	addi	s1, s1, 8
80001e18: 13 04 44 00  	addi	s0, s0, 4
80001e1c: e3 9c e4 fc  	bne	s1, a4, 0x80001df4 <.LBB0_169+0x258>
80001e20: 03 25 01 01  	lw	a0, 16(sp)
80001e24: 93 00 05 4b  	addi	ra, a0, 1200
80001e28: 13 d5 40 01  	srli	a0, ra, 20
80001e2c: 33 35 a0 00  	snez	a0, a0
80001e30: b7 05 12 00  	lui	a1, 288
80001e34: 93 85 95 f1  	addi	a1, a1, -231
80001e38: b3 b5 b0 00  	sltu	a1, ra, a1
80001e3c: 33 75 b5 00  	and	a0, a0, a1

80001e40 <.LBB0_170>:
80001e40: 17 54 00 00  	auipc	s0, 5
80001e44: 13 04 04 5c  	addi	s0, s0, 1472

80001e48 <.LBB0_171>:
80001e48: 97 57 00 00  	auipc	a5, 5
80001e4c: 93 87 07 5c  	addi	a5, a5, 1472
80001e50: 23 2e f1 08  	sw	a5, 156(sp)
80001e54: 23 2c 81 08  	sw	s0, 152(sp)
80001e58: 23 22 41 0b  	sw	s4, 164(sp)
80001e5c: 63 06 05 0c  	beqz	a0, 0x80001f28 <.LBB0_171+0xe0>
80001e60: 13 05 80 00  	addi	a0, zero, 8
80001e64: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001e68: 93 06 00 04  	addi	a3, zero, 64
80001e6c: 13 07 00 0c  	addi	a4, zero, 192
80001e70: ab a0 d5 00  	scfgw	a1, a3
80001e74: ab 20 e5 00  	scfgw	a0, a4
80001e78: 13 05 00 02  	addi	a0, zero, 32
80001e7c: ab 20 a0 00  	scfgw	zero, a0
80001e80: 87 31 04 00  	fld	ft3, 0(s0)
80001e84: 2b a0 00 38  	scfgwi	ra, 896
80001e88: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001e8c: 53 80 31 22  	fmv.d	ft0, ft3
80001e90: 07 32 0a 00  	fld	ft4, 0(s4)
80001e94: 03 25 c1 0a  	lw	a0, 172(sp)
80001e98: 87 32 05 00  	fld	ft5, 0(a0)
80001e9c: 93 0a 0c 00  	mv	s5, s8
80001ea0: 07 33 0c 00  	fld	ft6, 0(s8)
80001ea4: 87 b3 07 00  	fld	ft7, 0(a5)
80001ea8: 53 00 42 22  	fmv.d	ft0, ft4
80001eac: 53 80 52 22  	fmv.d	ft0, ft5
80001eb0: 53 00 63 22  	fmv.d	ft0, ft6
80001eb4: 53 80 73 22  	fmv.d	ft0, ft7
80001eb8: 53 05 00 d2  	fcvt.d.w	fa0, zero
80001ebc: 53 00 a5 22  	fmv.d	ft0, fa0
80001ec0: 53 80 31 22  	fmv.d	ft0, ft3
80001ec4: 53 00 42 22  	fmv.d	ft0, ft4
80001ec8: 53 80 52 22  	fmv.d	ft0, ft5
80001ecc: 53 00 63 22  	fmv.d	ft0, ft6
80001ed0: 53 80 73 22  	fmv.d	ft0, ft7
80001ed4: 53 00 a5 22  	fmv.d	ft0, fa0
80001ed8: 53 80 31 22  	fmv.d	ft0, ft3
80001edc: 53 00 42 22  	fmv.d	ft0, ft4
80001ee0: 53 80 52 22  	fmv.d	ft0, ft5
80001ee4: 53 00 63 22  	fmv.d	ft0, ft6
80001ee8: 53 80 73 22  	fmv.d	ft0, ft7
80001eec: 53 00 a5 22  	fmv.d	ft0, fa0
80001ef0: 53 80 31 22  	fmv.d	ft0, ft3
80001ef4: 53 00 42 22  	fmv.d	ft0, ft4
80001ef8: 53 80 52 22  	fmv.d	ft0, ft5
80001efc: 53 00 63 22  	fmv.d	ft0, ft6
80001f00: 53 80 73 22  	fmv.d	ft0, ft7
80001f04: 53 00 a5 22  	fmv.d	ft0, fa0
80001f08: 53 80 31 22  	fmv.d	ft0, ft3
80001f0c: 53 00 42 22  	fmv.d	ft0, ft4
80001f10: 53 80 52 22  	fmv.d	ft0, ft5
80001f14: 53 00 63 22  	fmv.d	ft0, ft6
80001f18: 53 80 73 22  	fmv.d	ft0, ft7
80001f1c: 53 00 a5 22  	fmv.d	ft0, fa0
80001f20: 73 f5 00 7c  	csrrci	a0, 1984, 1
80001f24: 6f 00 00 05  	j	0x80001f74 <.LBB0_171+0x12c>
80001f28: 93 0a 0c 00  	mv	s5, s8
80001f2c: 93 07 00 00  	mv	a5, zero
80001f30: 93 04 50 00  	addi	s1, zero, 5
80001f34: 37 95 88 88  	lui	a0, 559241
80001f38: 87 b1 0f 00  	fld	ft3, 0(t6)
80001f3c: 93 05 95 88  	addi	a1, a0, -1911
80001f40: 13 05 e0 01  	addi	a0, zero, 30
80001f44: 13 04 00 0f  	addi	s0, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001f48: b3 b6 b4 02  	mulhu	a3, s1, a1
80001f4c: 93 d6 46 00  	srli	a3, a3, 4
80001f50: b3 86 a6 02  	mul	a3, a3, a0
80001f54: b3 86 d4 40  	sub	a3, s1, a3
80001f58: 53 82 06 d2  	fcvt.d.w	ft4, a3
80001f5c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80001f60: b3 86 f0 00  	add	a3, ra, a5
80001f64: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80001f68: 93 87 87 00  	addi	a5, a5, 8
80001f6c: 93 84 54 00  	addi	s1, s1, 5
80001f70: e3 9c 87 fc  	bne	a5, s0, 0x80001f48 <.LBB0_171+0x100>
80001f74: 03 25 01 01  	lw	a0, 16(sp)
80001f78: 13 0a 05 5a  	addi	s4, a0, 1440
80001f7c: 13 55 4a 01  	srli	a0, s4, 20
80001f80: 33 35 a0 00  	snez	a0, a0
80001f84: b7 05 12 00  	lui	a1, 288
80001f88: 93 85 95 f1  	addi	a1, a1, -231
80001f8c: b3 35 ba 00  	sltu	a1, s4, a1
80001f90: 33 75 b5 00  	and	a0, a0, a1
80001f94: 63 00 05 0c  	beqz	a0, 0x80002054 <.LBB0_171+0x20c>
80001f98: 13 05 80 00  	addi	a0, zero, 8
80001f9c: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80001fa0: 93 06 00 04  	addi	a3, zero, 64
80001fa4: 13 07 00 0c  	addi	a4, zero, 192
80001fa8: ab a0 d5 00  	scfgw	a1, a3
80001fac: ab 20 e5 00  	scfgw	a0, a4
80001fb0: 13 05 00 02  	addi	a0, zero, 32
80001fb4: ab 20 a0 00  	scfgw	zero, a0
80001fb8: 2b 20 0a 38  	scfgwi	s4, 896
80001fbc: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80001fc0: 87 b1 0c 00  	fld	ft3, 0(s9)
80001fc4: 07 32 0b 00  	fld	ft4, 0(s6)
80001fc8: 87 32 0d 00  	fld	ft5, 0(s10)
80001fcc: 07 b3 0d 00  	fld	ft6, 0(s11)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80001fd0: 53 80 31 22  	fmv.d	ft0, ft3
80001fd4: 53 00 42 22  	fmv.d	ft0, ft4
80001fd8: 53 80 52 22  	fmv.d	ft0, ft5
80001fdc: 53 00 63 22  	fmv.d	ft0, ft6
80001fe0: d3 03 00 d2  	fcvt.d.w	ft7, zero
80001fe4: 53 80 73 22  	fmv.d	ft0, ft7
80001fe8: 53 80 31 22  	fmv.d	ft0, ft3
80001fec: 53 00 42 22  	fmv.d	ft0, ft4
80001ff0: 53 80 52 22  	fmv.d	ft0, ft5
80001ff4: 53 00 63 22  	fmv.d	ft0, ft6
80001ff8: 53 80 73 22  	fmv.d	ft0, ft7
80001ffc: 53 80 31 22  	fmv.d	ft0, ft3
80002000: 53 00 42 22  	fmv.d	ft0, ft4
80002004: 53 80 52 22  	fmv.d	ft0, ft5
80002008: 53 00 63 22  	fmv.d	ft0, ft6
8000200c: 53 80 73 22  	fmv.d	ft0, ft7
80002010: 53 80 31 22  	fmv.d	ft0, ft3
80002014: 53 00 42 22  	fmv.d	ft0, ft4
80002018: 53 80 52 22  	fmv.d	ft0, ft5
8000201c: 53 00 63 22  	fmv.d	ft0, ft6
80002020: 53 80 73 22  	fmv.d	ft0, ft7
80002024: 53 80 31 22  	fmv.d	ft0, ft3
80002028: 53 00 42 22  	fmv.d	ft0, ft4
8000202c: 53 80 52 22  	fmv.d	ft0, ft5
80002030: 53 00 63 22  	fmv.d	ft0, ft6
80002034: 53 80 73 22  	fmv.d	ft0, ft7
80002038: 53 80 31 22  	fmv.d	ft0, ft3
8000203c: 53 00 42 22  	fmv.d	ft0, ft4
80002040: 53 80 52 22  	fmv.d	ft0, ft5
80002044: 53 00 63 22  	fmv.d	ft0, ft6
80002048: 53 80 73 22  	fmv.d	ft0, ft7
8000204c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002050: 6f 00 c0 04  	j	0x8000209c <.LBB0_171+0x254>
80002054: 93 07 00 00  	mv	a5, zero
80002058: 93 04 60 00  	addi	s1, zero, 6
8000205c: 37 95 88 88  	lui	a0, 559241
80002060: 87 b1 0f 00  	fld	ft3, 0(t6)
80002064: 93 05 95 88  	addi	a1, a0, -1911
80002068: 13 05 e0 01  	addi	a0, zero, 30
8000206c: 13 04 00 0f  	addi	s0, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002070: b3 b6 b4 02  	mulhu	a3, s1, a1
80002074: 93 d6 46 00  	srli	a3, a3, 4
80002078: b3 86 a6 02  	mul	a3, a3, a0
8000207c: b3 86 d4 40  	sub	a3, s1, a3
80002080: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002084: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002088: b3 06 fa 00  	add	a3, s4, a5
8000208c: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002090: 93 87 87 00  	addi	a5, a5, 8
80002094: 93 84 64 00  	addi	s1, s1, 6
80002098: e3 9c 87 fc  	bne	a5, s0, 0x80002070 <.LBB0_171+0x228>
8000209c: 03 25 01 01  	lw	a0, 16(sp)
800020a0: 13 0c 05 69  	addi	s8, a0, 1680
800020a4: 13 55 4c 01  	srli	a0, s8, 20
800020a8: 33 35 a0 00  	snez	a0, a0
800020ac: b7 05 12 00  	lui	a1, 288
800020b0: 93 85 95 f1  	addi	a1, a1, -231
800020b4: b3 35 bc 00  	sltu	a1, s8, a1
800020b8: 33 75 b5 00  	and	a0, a0, a1

800020bc <.LBB0_172>:
800020bc: 17 54 00 00  	auipc	s0, 5
800020c0: 13 04 44 35  	addi	s0, s0, 852

800020c4 <.LBB0_173>:
800020c4: 17 58 00 00  	auipc	a6, 5
800020c8: 13 08 48 35  	addi	a6, a6, 852

800020cc <.LBB0_174>:
800020cc: 17 57 00 00  	auipc	a4, 5
800020d0: 13 07 47 35  	addi	a4, a4, 852

800020d4 <.LBB0_175>:
800020d4: 97 54 00 00  	auipc	s1, 5
800020d8: 93 84 44 35  	addi	s1, s1, 852

800020dc <.LBB0_176>:
800020dc: 17 56 00 00  	auipc	a2, 5
800020e0: 13 06 46 35  	addi	a2, a2, 852

800020e4 <.LBB0_177>:
800020e4: 97 56 00 00  	auipc	a3, 5
800020e8: 93 86 46 35  	addi	a3, a3, 852

800020ec <.LBB0_178>:
800020ec: 97 57 00 00  	auipc	a5, 5
800020f0: 93 87 47 35  	addi	a5, a5, 852
800020f4: 23 20 21 0b  	sw	s2, 160(sp)
800020f8: 23 22 e1 08  	sw	a4, 132(sp)
800020fc: 23 20 f1 08  	sw	a5, 128(sp)
80002100: 23 2e 81 06  	sw	s0, 124(sp)
80002104: 23 2c 91 06  	sw	s1, 120(sp)
80002108: 23 2a c1 06  	sw	a2, 116(sp)
8000210c: 23 28 01 07  	sw	a6, 112(sp)
80002110: 63 02 05 14  	beqz	a0, 0x80002254 <.LBB0_178+0x168>
80002114: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80002118: 93 05 00 04  	addi	a1, zero, 64
8000211c: ab 20 b5 00  	scfgw	a0, a1
80002120: 13 05 80 00  	addi	a0, zero, 8
80002124: 93 05 00 0c  	addi	a1, zero, 192
80002128: ab 20 b5 00  	scfgw	a0, a1
8000212c: 13 05 00 02  	addi	a0, zero, 32
80002130: ab 20 a0 00  	scfgw	zero, a0
80002134: 87 31 04 00  	fld	ft3, 0(s0)
80002138: 2b 20 0c 38  	scfgwi	s8, 896
8000213c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002140: 53 80 31 22  	fmv.d	ft0, ft3
80002144: 03 25 41 09  	lw	a0, 148(sp)
80002148: 87 31 05 00  	fld	ft3, 0(a0)
8000214c: 07 32 09 00  	fld	ft4, 0(s2)
80002150: 87 32 03 00  	fld	ft5, 0(t1)
80002154: 03 25 81 09  	lw	a0, 152(sp)
80002158: 07 33 05 00  	fld	ft6, 0(a0)
8000215c: 53 80 31 22  	fmv.d	ft0, ft3
80002160: 53 00 42 22  	fmv.d	ft0, ft4
80002164: 53 80 52 22  	fmv.d	ft0, ft5
80002168: 53 00 63 22  	fmv.d	ft0, ft6
8000216c: 87 31 0b 00  	fld	ft3, 0(s6)
80002170: 07 32 08 00  	fld	ft4, 0(a6)
80002174: 87 32 0e 00  	fld	ft5, 0(t3)
80002178: 03 25 81 0a  	lw	a0, 168(sp)
8000217c: 07 33 05 00  	fld	ft6, 0(a0)
80002180: 53 80 31 22  	fmv.d	ft0, ft3
80002184: 53 00 42 22  	fmv.d	ft0, ft4
80002188: 53 80 52 22  	fmv.d	ft0, ft5
8000218c: 53 00 63 22  	fmv.d	ft0, ft6
80002190: 03 25 41 0a  	lw	a0, 164(sp)
80002194: 87 31 05 00  	fld	ft3, 0(a0)
80002198: 07 32 07 00  	fld	ft4, 0(a4)
8000219c: 87 b2 0d 00  	fld	ft5, 0(s11)
800021a0: 07 b3 0f 00  	fld	ft6, 0(t6)
800021a4: 53 80 31 22  	fmv.d	ft0, ft3
800021a8: 53 00 42 22  	fmv.d	ft0, ft4
800021ac: 53 80 52 22  	fmv.d	ft0, ft5
800021b0: 53 00 63 22  	fmv.d	ft0, ft6
800021b4: 87 b1 09 00  	fld	ft3, 0(s3)
800021b8: 03 25 c1 0a  	lw	a0, 172(sp)
800021bc: 07 32 05 00  	fld	ft4, 0(a0)
800021c0: 87 b2 02 00  	fld	ft5, 0(t0)
800021c4: 07 b3 04 00  	fld	ft6, 0(s1)
800021c8: 53 80 31 22  	fmv.d	ft0, ft3
800021cc: 53 00 42 22  	fmv.d	ft0, ft4
800021d0: 53 80 52 22  	fmv.d	ft0, ft5
800021d4: 53 00 63 22  	fmv.d	ft0, ft6
800021d8: 87 b1 0c 00  	fld	ft3, 0(s9)
800021dc: 07 32 06 00  	fld	ft4, 0(a2)
800021e0: 87 b2 0a 00  	fld	ft5, 0(s5)
800021e4: 13 86 0b 00  	mv	a2, s7
800021e8: 07 b3 0b 00  	fld	ft6, 0(s7)
800021ec: 53 80 31 22  	fmv.d	ft0, ft3
800021f0: 53 00 42 22  	fmv.d	ft0, ft4
800021f4: 53 80 52 22  	fmv.d	ft0, ft5
800021f8: 53 00 63 22  	fmv.d	ft0, ft6
800021fc: 87 b1 03 00  	fld	ft3, 0(t2)
80002200: 07 b2 06 00  	fld	ft4, 0(a3)
80002204: 87 32 0d 00  	fld	ft5, 0(s10)
80002208: 03 25 c1 09  	lw	a0, 156(sp)
8000220c: 07 33 05 00  	fld	ft6, 0(a0)
80002210: 53 80 31 22  	fmv.d	ft0, ft3
80002214: 53 00 42 22  	fmv.d	ft0, ft4
80002218: 53 80 52 22  	fmv.d	ft0, ft5
8000221c: 53 00 63 22  	fmv.d	ft0, ft6
80002220: 87 b1 0e 00  	fld	ft3, 0(t4)
80002224: 03 25 c1 06  	lw	a0, 108(sp)
80002228: 07 32 05 00  	fld	ft4, 0(a0)
8000222c: 87 32 0f 00  	fld	ft5, 0(t5)
80002230: 07 b3 07 00  	fld	ft6, 0(a5)
80002234: 53 80 31 22  	fmv.d	ft0, ft3
80002238: 53 00 42 22  	fmv.d	ft0, ft4
8000223c: 53 80 52 22  	fmv.d	ft0, ft5
80002240: 53 00 63 22  	fmv.d	ft0, ft6
80002244: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002248: 53 80 31 22  	fmv.d	ft0, ft3
8000224c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002250: 6f 00 00 05  	j	0x800022a0 <.LBB0_178+0x1b4>
80002254: 93 07 00 00  	mv	a5, zero
80002258: 93 04 70 00  	addi	s1, zero, 7
8000225c: 37 95 88 88  	lui	a0, 559241
80002260: 87 b1 0f 00  	fld	ft3, 0(t6)
80002264: 93 05 95 88  	addi	a1, a0, -1911
80002268: 13 05 e0 01  	addi	a0, zero, 30
8000226c: 13 04 00 0f  	addi	s0, zero, 240
80002270: 13 86 0b 00  	mv	a2, s7
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002274: 33 b7 b4 02  	mulhu	a4, s1, a1
80002278: 13 57 47 00  	srli	a4, a4, 4
8000227c: 33 07 a7 02  	mul	a4, a4, a0
80002280: 33 87 e4 40  	sub	a4, s1, a4
80002284: 53 02 07 d2  	fcvt.d.w	ft4, a4
80002288: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000228c: 33 07 fc 00  	add	a4, s8, a5
80002290: 27 30 47 00  	fsd	ft4, 0(a4)
;         for (j = 0; j < nk; j++)
80002294: 93 87 87 00  	addi	a5, a5, 8
80002298: 93 84 74 00  	addi	s1, s1, 7
8000229c: e3 9c 87 fc  	bne	a5, s0, 0x80002274 <.LBB0_178+0x188>
800022a0: 03 25 01 01  	lw	a0, 16(sp)
800022a4: 13 09 05 78  	addi	s2, a0, 1920
800022a8: 13 55 49 01  	srli	a0, s2, 20
800022ac: 33 35 a0 00  	snez	a0, a0
800022b0: b7 05 12 00  	lui	a1, 288
800022b4: 93 85 95 f1  	addi	a1, a1, -231
800022b8: b3 35 b9 00  	sltu	a1, s2, a1
800022bc: 33 75 b5 00  	and	a0, a0, a1
800022c0: 63 0a 05 0e  	beqz	a0, 0x800023b4 <.LBB0_178+0x2c8>
800022c4: 13 05 80 00  	addi	a0, zero, 8
800022c8: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
800022cc: 13 07 00 04  	addi	a4, zero, 64
800022d0: 93 07 00 0c  	addi	a5, zero, 192
800022d4: ab a0 e5 00  	scfgw	a1, a4
800022d8: ab 20 f5 00  	scfgw	a0, a5
800022dc: 13 05 00 02  	addi	a0, zero, 32
800022e0: ab 20 a0 00  	scfgw	zero, a0
800022e4: 2b 20 09 38  	scfgwi	s2, 896
800022e8: 87 b1 09 00  	fld	ft3, 0(s3)
800022ec: 07 32 0f 00  	fld	ft4, 0(t5)
;         for (j = 0; j < nk; j++)
800022f0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800022f4: 53 80 31 22  	fmv.d	ft0, ft3
800022f8: 53 00 42 22  	fmv.d	ft0, ft4
800022fc: 87 b2 0d 00  	fld	ft5, 0(s11)
80002300: 07 b3 0e 00  	fld	ft6, 0(t4)
80002304: 03 25 41 0a  	lw	a0, 164(sp)
80002308: 87 33 05 00  	fld	ft7, 0(a0)
8000230c: 07 35 0d 00  	fld	fa0, 0(s10)
80002310: 53 80 52 22  	fmv.d	ft0, ft5
80002314: 53 00 63 22  	fmv.d	ft0, ft6
80002318: 53 80 73 22  	fmv.d	ft0, ft7
8000231c: 53 00 a5 22  	fmv.d	ft0, fa0
80002320: 87 35 0e 00  	fld	fa1, 0(t3)
80002324: 07 b6 03 00  	fld	fa2, 0(t2)
80002328: 87 36 0b 00  	fld	fa3, 0(s6)
8000232c: 07 b7 0a 00  	fld	fa4, 0(s5)
80002330: 53 80 b5 22  	fmv.d	ft0, fa1
80002334: 53 00 c6 22  	fmv.d	ft0, fa2
80002338: 53 80 d6 22  	fmv.d	ft0, fa3
8000233c: 53 00 e7 22  	fmv.d	ft0, fa4
80002340: 87 37 03 00  	fld	fa5, 0(t1)
80002344: 93 8b 0c 00  	mv	s7, s9
80002348: 07 b8 0c 00  	fld	fa6, 0(s9)
8000234c: 03 25 41 09  	lw	a0, 148(sp)
80002350: 87 38 05 00  	fld	fa7, 0(a0)
80002354: 07 be 02 00  	fld	ft8, 0(t0)
80002358: 53 80 f7 22  	fmv.d	ft0, fa5
8000235c: 53 00 08 23  	fmv.d	ft0, fa6
80002360: 53 80 18 23  	fmv.d	ft0, fa7
80002364: 53 00 ce 23  	fmv.d	ft0, ft8
80002368: d3 0e 00 d2  	fcvt.d.w	ft9, zero
8000236c: 53 80 de 23  	fmv.d	ft0, ft9
80002370: 53 80 31 22  	fmv.d	ft0, ft3
80002374: 53 00 42 22  	fmv.d	ft0, ft4
80002378: 53 80 52 22  	fmv.d	ft0, ft5
8000237c: 53 00 63 22  	fmv.d	ft0, ft6
80002380: 53 80 73 22  	fmv.d	ft0, ft7
80002384: 53 00 a5 22  	fmv.d	ft0, fa0
80002388: 53 80 b5 22  	fmv.d	ft0, fa1
8000238c: 53 00 c6 22  	fmv.d	ft0, fa2
80002390: 53 80 d6 22  	fmv.d	ft0, fa3
80002394: 53 00 e7 22  	fmv.d	ft0, fa4
80002398: 53 80 f7 22  	fmv.d	ft0, fa5
8000239c: 53 00 08 23  	fmv.d	ft0, fa6
800023a0: 53 80 18 23  	fmv.d	ft0, fa7
800023a4: 53 00 ce 23  	fmv.d	ft0, ft8
800023a8: 53 80 de 23  	fmv.d	ft0, ft9
800023ac: 73 f5 00 7c  	csrrci	a0, 1984, 1
800023b0: 6f 00 40 05  	j	0x80002404 <.LBB0_178+0x318>
800023b4: 93 07 00 00  	mv	a5, zero
800023b8: 93 04 80 00  	addi	s1, zero, 8
800023bc: 37 95 88 88  	lui	a0, 559241
800023c0: 87 b1 0f 00  	fld	ft3, 0(t6)
800023c4: 13 04 95 88  	addi	s0, a0, -1911
800023c8: 93 05 e0 01  	addi	a1, zero, 30
800023cc: 93 0f 00 0f  	addi	t6, zero, 240
800023d0: 93 8b 0c 00  	mv	s7, s9
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800023d4: 33 b5 84 02  	mulhu	a0, s1, s0
800023d8: 13 55 45 00  	srli	a0, a0, 4
800023dc: 33 05 b5 02  	mul	a0, a0, a1
800023e0: 33 85 a7 40  	sub	a0, a5, a0
800023e4: 13 05 85 00  	addi	a0, a0, 8
800023e8: 53 02 05 d2  	fcvt.d.w	ft4, a0
800023ec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800023f0: 33 05 f9 00  	add	a0, s2, a5
800023f4: 27 30 45 00  	fsd	ft4, 0(a0)
;         for (j = 0; j < nk; j++)
800023f8: 93 87 87 00  	addi	a5, a5, 8
800023fc: 93 84 84 00  	addi	s1, s1, 8
80002400: e3 9a f7 fd  	bne	a5, t6, 0x800023d4 <.LBB0_178+0x2e8>
80002404: 23 24 d1 08  	sw	a3, 136(sp)
;         for (j = 0; j < nk; j++)
80002408: 03 25 01 01  	lw	a0, 16(sp)
8000240c: 13 05 85 43  	addi	a0, a0, 1080
80002410: 93 07 85 43  	addi	a5, a0, 1080
80002414: 13 d5 47 01  	srli	a0, a5, 20
80002418: 33 35 a0 00  	snez	a0, a0
8000241c: b7 05 12 00  	lui	a1, 288
80002420: 93 85 95 f1  	addi	a1, a1, -231
80002424: b3 b5 b7 00  	sltu	a1, a5, a1
80002428: 33 75 b5 00  	and	a0, a0, a1
8000242c: 83 26 c1 06  	lw	a3, 108(sp)
80002430: 63 08 05 0e  	beqz	a0, 0x80002520 <.LBB0_178+0x434>
80002434: 13 05 80 00  	addi	a0, zero, 8
80002438: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
8000243c: 13 07 00 04  	addi	a4, zero, 64
80002440: 93 04 00 0c  	addi	s1, zero, 192
80002444: ab a0 e5 00  	scfgw	a1, a4
80002448: ab 20 95 00  	scfgw	a0, s1
8000244c: 13 05 00 02  	addi	a0, zero, 32
80002450: ab 20 a0 00  	scfgw	zero, a0
80002454: 93 88 06 00  	mv	a7, a3
80002458: 87 b1 06 00  	fld	ft3, 0(a3)
8000245c: 2b a0 07 38  	scfgwi	a5, 896
80002460: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002464: 53 80 31 22  	fmv.d	ft0, ft3
80002468: 07 32 0d 00  	fld	ft4, 0(s10)
8000246c: 87 32 06 00  	fld	ft5, 0(a2)
80002470: 07 b3 0b 00  	fld	ft6, 0(s7)
80002474: 03 25 c1 0a  	lw	a0, 172(sp)
80002478: 87 33 05 00  	fld	ft7, 0(a0)
8000247c: 53 00 42 22  	fmv.d	ft0, ft4
80002480: 53 80 52 22  	fmv.d	ft0, ft5
80002484: 53 00 63 22  	fmv.d	ft0, ft6
80002488: 53 80 73 22  	fmv.d	ft0, ft7
8000248c: 07 b5 0d 00  	fld	fa0, 0(s11)
80002490: 03 25 81 0a  	lw	a0, 168(sp)
80002494: 87 35 05 00  	fld	fa1, 0(a0)
80002498: 93 0c 0b 00  	mv	s9, s6
8000249c: 07 36 0b 00  	fld	fa2, 0(s6)
800024a0: 03 25 01 0a  	lw	a0, 160(sp)
800024a4: 87 36 05 00  	fld	fa3, 0(a0)
800024a8: 53 00 a5 22  	fmv.d	ft0, fa0
800024ac: 53 80 b5 22  	fmv.d	ft0, fa1
800024b0: 53 00 c6 22  	fmv.d	ft0, fa2
800024b4: 53 80 d6 22  	fmv.d	ft0, fa3
800024b8: 53 07 00 d2  	fcvt.d.w	fa4, zero
800024bc: 53 00 e7 22  	fmv.d	ft0, fa4
800024c0: 53 80 31 22  	fmv.d	ft0, ft3
800024c4: 53 00 42 22  	fmv.d	ft0, ft4
800024c8: 53 80 52 22  	fmv.d	ft0, ft5
800024cc: 53 00 63 22  	fmv.d	ft0, ft6
800024d0: 53 80 73 22  	fmv.d	ft0, ft7
800024d4: 53 00 a5 22  	fmv.d	ft0, fa0
800024d8: 53 80 b5 22  	fmv.d	ft0, fa1
800024dc: 53 00 c6 22  	fmv.d	ft0, fa2
800024e0: 53 80 d6 22  	fmv.d	ft0, fa3
800024e4: 53 00 e7 22  	fmv.d	ft0, fa4
800024e8: 53 80 31 22  	fmv.d	ft0, ft3
800024ec: 53 00 42 22  	fmv.d	ft0, ft4
800024f0: 53 80 52 22  	fmv.d	ft0, ft5
800024f4: 53 00 63 22  	fmv.d	ft0, ft6
800024f8: 53 80 73 22  	fmv.d	ft0, ft7
800024fc: 53 00 a5 22  	fmv.d	ft0, fa0
80002500: 53 80 b5 22  	fmv.d	ft0, fa1
80002504: 53 00 c6 22  	fmv.d	ft0, fa2
80002508: 53 80 d6 22  	fmv.d	ft0, fa3
8000250c: 53 00 e7 22  	fmv.d	ft0, fa4
80002510: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002514: 83 2f c1 08  	lw	t6, 140(sp)
80002518: 03 28 41 09  	lw	a6, 148(sp)
8000251c: 6f 00 c0 05  	j	0x80002578 <.LBB0_178+0x48c>
80002520: 93 88 06 00  	mv	a7, a3
80002524: 93 04 00 00  	mv	s1, zero
80002528: 13 04 90 00  	addi	s0, zero, 9
8000252c: 37 95 88 88  	lui	a0, 559241
80002530: 83 2f c1 08  	lw	t6, 140(sp)
80002534: 87 b1 0f 00  	fld	ft3, 0(t6)
80002538: 93 05 95 88  	addi	a1, a0, -1911
8000253c: 13 05 e0 01  	addi	a0, zero, 30
80002540: 13 07 00 0f  	addi	a4, zero, 240
80002544: 03 28 41 09  	lw	a6, 148(sp)
80002548: 93 0c 0b 00  	mv	s9, s6
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000254c: b3 36 b4 02  	mulhu	a3, s0, a1
80002550: 93 d6 46 00  	srli	a3, a3, 4
80002554: b3 86 a6 02  	mul	a3, a3, a0
80002558: b3 06 d4 40  	sub	a3, s0, a3
8000255c: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002560: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002564: b3 86 97 00  	add	a3, a5, s1
80002568: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
8000256c: 93 84 84 00  	addi	s1, s1, 8
80002570: 13 04 94 00  	addi	s0, s0, 9
80002574: e3 9c e4 fc  	bne	s1, a4, 0x8000254c <.LBB0_178+0x460>
80002578: 93 87 00 4b  	addi	a5, ra, 1200
8000257c: 13 d5 47 01  	srli	a0, a5, 20
80002580: 33 35 a0 00  	snez	a0, a0
80002584: b7 05 12 00  	lui	a1, 288
80002588: 93 85 95 f1  	addi	a1, a1, -231
8000258c: b3 b5 b7 00  	sltu	a1, a5, a1
80002590: 33 75 b5 00  	and	a0, a0, a1
80002594: 63 02 05 0c  	beqz	a0, 0x80002658 <.LBB0_178+0x56c>
80002598: 13 05 80 00  	addi	a0, zero, 8
8000259c: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
800025a0: 93 06 00 04  	addi	a3, zero, 64
800025a4: 13 07 00 0c  	addi	a4, zero, 192
800025a8: ab a0 d5 00  	scfgw	a1, a3
800025ac: ab 20 e5 00  	scfgw	a0, a4
800025b0: 13 05 00 02  	addi	a0, zero, 32
800025b4: ab 20 a0 00  	scfgw	zero, a0
800025b8: 2b a0 07 38  	scfgwi	a5, 896
800025bc: 03 25 41 0a  	lw	a0, 164(sp)
800025c0: 87 31 05 00  	fld	ft3, 0(a0)
800025c4: 07 b2 0a 00  	fld	ft4, 0(s5)
;         for (j = 0; j < nk; j++)
800025c8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800025cc: 53 80 31 22  	fmv.d	ft0, ft3
800025d0: 53 00 42 22  	fmv.d	ft0, ft4
800025d4: d3 02 00 d2  	fcvt.d.w	ft5, zero
800025d8: 53 80 52 22  	fmv.d	ft0, ft5
800025dc: 53 80 31 22  	fmv.d	ft0, ft3
800025e0: 53 00 42 22  	fmv.d	ft0, ft4
800025e4: 53 80 52 22  	fmv.d	ft0, ft5
800025e8: 53 80 31 22  	fmv.d	ft0, ft3
800025ec: 53 00 42 22  	fmv.d	ft0, ft4
800025f0: 53 80 52 22  	fmv.d	ft0, ft5
800025f4: 53 80 31 22  	fmv.d	ft0, ft3
800025f8: 53 00 42 22  	fmv.d	ft0, ft4
800025fc: 53 80 52 22  	fmv.d	ft0, ft5
80002600: 53 80 31 22  	fmv.d	ft0, ft3
80002604: 53 00 42 22  	fmv.d	ft0, ft4
80002608: 53 80 52 22  	fmv.d	ft0, ft5
8000260c: 53 80 31 22  	fmv.d	ft0, ft3
80002610: 53 00 42 22  	fmv.d	ft0, ft4
80002614: 53 80 52 22  	fmv.d	ft0, ft5
80002618: 53 80 31 22  	fmv.d	ft0, ft3
8000261c: 53 00 42 22  	fmv.d	ft0, ft4
80002620: 53 80 52 22  	fmv.d	ft0, ft5
80002624: 53 80 31 22  	fmv.d	ft0, ft3
80002628: 53 00 42 22  	fmv.d	ft0, ft4
8000262c: 53 80 52 22  	fmv.d	ft0, ft5
80002630: 53 80 31 22  	fmv.d	ft0, ft3
80002634: 53 00 42 22  	fmv.d	ft0, ft4
80002638: 53 80 52 22  	fmv.d	ft0, ft5
8000263c: 53 80 31 22  	fmv.d	ft0, ft3
80002640: 53 00 42 22  	fmv.d	ft0, ft4
80002644: 53 80 52 22  	fmv.d	ft0, ft5
80002648: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000264c: 83 20 c1 00  	lw	ra, 12(sp)
80002650: 13 0b 0d 00  	mv	s6, s10
80002654: 6f 00 40 05  	j	0x800026a8 <.LBB0_178+0x5bc>
80002658: 93 04 00 00  	mv	s1, zero
8000265c: 13 04 a0 00  	addi	s0, zero, 10
80002660: 37 95 88 88  	lui	a0, 559241
80002664: 87 b1 0f 00  	fld	ft3, 0(t6)
80002668: 93 05 95 88  	addi	a1, a0, -1911
8000266c: 13 05 e0 01  	addi	a0, zero, 30
80002670: 13 07 00 0f  	addi	a4, zero, 240
80002674: 83 20 c1 00  	lw	ra, 12(sp)
80002678: 13 0b 0d 00  	mv	s6, s10
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
8000267c: b3 36 b4 02  	mulhu	a3, s0, a1
80002680: 93 d6 46 00  	srli	a3, a3, 4
80002684: b3 86 a6 02  	mul	a3, a3, a0
80002688: b3 06 d4 40  	sub	a3, s0, a3
8000268c: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002690: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002694: b3 86 97 00  	add	a3, a5, s1
80002698: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
8000269c: 93 84 84 00  	addi	s1, s1, 8
800026a0: 13 04 a4 00  	addi	s0, s0, 10
800026a4: e3 9c e4 fc  	bne	s1, a4, 0x8000267c <.LBB0_178+0x590>
800026a8: 03 25 01 01  	lw	a0, 16(sp)
800026ac: 13 05 85 52  	addi	a0, a0, 1320
800026b0: 93 07 85 52  	addi	a5, a0, 1320
800026b4: 13 d5 47 01  	srli	a0, a5, 20
800026b8: 33 35 a0 00  	snez	a0, a0
800026bc: b7 05 12 00  	lui	a1, 288
800026c0: 93 85 95 f1  	addi	a1, a1, -231
800026c4: b3 b5 b7 00  	sltu	a1, a5, a1
800026c8: 33 75 b5 00  	and	a0, a0, a1
800026cc: 13 8d 0d 00  	mv	s10, s11
800026d0: 63 0c 05 14  	beqz	a0, 0x80002828 <.LBB0_178+0x73c>
800026d4: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
800026d8: 93 05 00 04  	addi	a1, zero, 64
800026dc: ab 20 b5 00  	scfgw	a0, a1
800026e0: 13 05 80 00  	addi	a0, zero, 8
800026e4: 93 05 00 0c  	addi	a1, zero, 192
800026e8: ab 20 b5 00  	scfgw	a0, a1
800026ec: 13 05 00 02  	addi	a0, zero, 32
800026f0: ab 20 a0 00  	scfgw	zero, a0
800026f4: 03 25 81 08  	lw	a0, 136(sp)
800026f8: 87 31 05 00  	fld	ft3, 0(a0)
800026fc: 2b a0 07 38  	scfgwi	a5, 896
80002700: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002704: 53 80 31 22  	fmv.d	ft0, ft3
80002708: 87 b1 02 00  	fld	ft3, 0(t0)
8000270c: 03 25 81 0a  	lw	a0, 168(sp)
80002710: 07 32 05 00  	fld	ft4, 0(a0)
80002714: 87 32 08 00  	fld	ft5, 0(a6)
80002718: 03 25 c1 09  	lw	a0, 156(sp)
8000271c: 07 33 05 00  	fld	ft6, 0(a0)
80002720: 53 80 31 22  	fmv.d	ft0, ft3
80002724: 53 00 42 22  	fmv.d	ft0, ft4
80002728: 53 80 52 22  	fmv.d	ft0, ft5
8000272c: 53 00 63 22  	fmv.d	ft0, ft6
80002730: 87 b1 0b 00  	fld	ft3, 0(s7)
80002734: 03 25 41 08  	lw	a0, 132(sp)
80002738: 07 32 05 00  	fld	ft4, 0(a0)
8000273c: 87 32 03 00  	fld	ft5, 0(t1)
80002740: 07 b3 08 00  	fld	ft6, 0(a7)
80002744: 53 80 31 22  	fmv.d	ft0, ft3
80002748: 53 00 42 22  	fmv.d	ft0, ft4
8000274c: 53 80 52 22  	fmv.d	ft0, ft5
80002750: 53 00 63 22  	fmv.d	ft0, ft6
80002754: 87 b1 0a 00  	fld	ft3, 0(s5)
80002758: 07 b2 0f 00  	fld	ft4, 0(t6)
8000275c: 87 b2 0c 00  	fld	ft5, 0(s9)
80002760: 03 25 01 08  	lw	a0, 128(sp)
80002764: 07 33 05 00  	fld	ft6, 0(a0)
80002768: 53 80 31 22  	fmv.d	ft0, ft3
8000276c: 53 00 42 22  	fmv.d	ft0, ft4
80002770: 53 80 52 22  	fmv.d	ft0, ft5
80002774: 53 00 63 22  	fmv.d	ft0, ft6
80002778: 87 b1 03 00  	fld	ft3, 0(t2)
8000277c: 03 25 c1 0a  	lw	a0, 172(sp)
80002780: 07 32 05 00  	fld	ft4, 0(a0)
80002784: 87 32 0e 00  	fld	ft5, 0(t3)
80002788: 03 25 c1 07  	lw	a0, 124(sp)
8000278c: 07 33 05 00  	fld	ft6, 0(a0)
80002790: 53 80 31 22  	fmv.d	ft0, ft3
80002794: 53 00 42 22  	fmv.d	ft0, ft4
80002798: 53 80 52 22  	fmv.d	ft0, ft5
8000279c: 53 00 63 22  	fmv.d	ft0, ft6
800027a0: 87 31 0b 00  	fld	ft3, 0(s6)
800027a4: 03 25 81 07  	lw	a0, 120(sp)
800027a8: 07 32 05 00  	fld	ft4, 0(a0)
800027ac: 03 25 41 0a  	lw	a0, 164(sp)
800027b0: 87 32 05 00  	fld	ft5, 0(a0)
800027b4: 03 25 01 0a  	lw	a0, 160(sp)
800027b8: 07 33 05 00  	fld	ft6, 0(a0)
800027bc: 53 80 31 22  	fmv.d	ft0, ft3
800027c0: 53 00 42 22  	fmv.d	ft0, ft4
800027c4: 53 80 52 22  	fmv.d	ft0, ft5
800027c8: 53 00 63 22  	fmv.d	ft0, ft6
800027cc: 87 b1 0e 00  	fld	ft3, 0(t4)
800027d0: 03 25 41 07  	lw	a0, 116(sp)
800027d4: 07 32 05 00  	fld	ft4, 0(a0)
800027d8: 87 32 0d 00  	fld	ft5, 0(s10)
800027dc: 03 25 81 09  	lw	a0, 152(sp)
800027e0: 07 33 05 00  	fld	ft6, 0(a0)
800027e4: 53 80 31 22  	fmv.d	ft0, ft3
800027e8: 53 00 42 22  	fmv.d	ft0, ft4
800027ec: 53 80 52 22  	fmv.d	ft0, ft5
800027f0: 53 00 63 22  	fmv.d	ft0, ft6
800027f4: 87 31 0f 00  	fld	ft3, 0(t5)
800027f8: 07 32 06 00  	fld	ft4, 0(a2)
800027fc: 87 b2 09 00  	fld	ft5, 0(s3)
80002800: 03 25 01 07  	lw	a0, 112(sp)
80002804: 07 33 05 00  	fld	ft6, 0(a0)
80002808: 53 80 31 22  	fmv.d	ft0, ft3
8000280c: 53 00 42 22  	fmv.d	ft0, ft4
80002810: 53 80 52 22  	fmv.d	ft0, ft5
80002814: 53 00 63 22  	fmv.d	ft0, ft6
80002818: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000281c: 53 80 31 22  	fmv.d	ft0, ft3
80002820: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002824: 6f 00 c0 04  	j	0x80002870 <.LBB0_178+0x784>
80002828: 93 04 00 00  	mv	s1, zero
8000282c: 13 04 b0 00  	addi	s0, zero, 11
80002830: 37 95 88 88  	lui	a0, 559241
80002834: 87 b1 0f 00  	fld	ft3, 0(t6)
80002838: 93 05 95 88  	addi	a1, a0, -1911
8000283c: 13 05 e0 01  	addi	a0, zero, 30
80002840: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002844: b3 36 b4 02  	mulhu	a3, s0, a1
80002848: 93 d6 46 00  	srli	a3, a3, 4
8000284c: b3 86 a6 02  	mul	a3, a3, a0
80002850: b3 06 d4 40  	sub	a3, s0, a3
80002854: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002858: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000285c: b3 86 97 00  	add	a3, a5, s1
80002860: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002864: 93 84 84 00  	addi	s1, s1, 8
80002868: 13 04 b4 00  	addi	s0, s0, 11
8000286c: e3 9c e4 fc  	bne	s1, a4, 0x80002844 <.LBB0_178+0x758>
80002870: 93 07 0a 5a  	addi	a5, s4, 1440
80002874: 13 d5 47 01  	srli	a0, a5, 20
80002878: 33 35 a0 00  	snez	a0, a0
8000287c: b7 05 12 00  	lui	a1, 288
80002880: 93 85 95 f1  	addi	a1, a1, -231
80002884: b3 b5 b7 00  	sltu	a1, a5, a1
80002888: 33 75 b5 00  	and	a0, a0, a1
8000288c: 63 04 05 0c  	beqz	a0, 0x80002954 <.LBB0_178+0x868>
80002890: 13 05 80 00  	addi	a0, zero, 8
80002894: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80002898: 93 06 00 04  	addi	a3, zero, 64
8000289c: 13 07 00 0c  	addi	a4, zero, 192
800028a0: ab a0 d5 00  	scfgw	a1, a3
800028a4: ab 20 e5 00  	scfgw	a0, a4
800028a8: 13 05 00 02  	addi	a0, zero, 32
800028ac: ab 20 a0 00  	scfgw	zero, a0
800028b0: 2b a0 07 38  	scfgwi	a5, 896
800028b4: 73 e5 00 7c  	csrrsi	a0, 1984, 1
800028b8: 87 b1 0c 00  	fld	ft3, 0(s9)
800028bc: 07 32 0d 00  	fld	ft4, 0(s10)
800028c0: 87 b2 0b 00  	fld	ft5, 0(s7)
800028c4: 07 33 0b 00  	fld	ft6, 0(s6)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800028c8: 53 80 31 22  	fmv.d	ft0, ft3
800028cc: 53 00 42 22  	fmv.d	ft0, ft4
800028d0: 53 80 52 22  	fmv.d	ft0, ft5
800028d4: 53 00 63 22  	fmv.d	ft0, ft6
800028d8: d3 03 00 d2  	fcvt.d.w	ft7, zero
800028dc: 53 80 73 22  	fmv.d	ft0, ft7
800028e0: 53 80 31 22  	fmv.d	ft0, ft3
800028e4: 53 00 42 22  	fmv.d	ft0, ft4
800028e8: 53 80 52 22  	fmv.d	ft0, ft5
800028ec: 53 00 63 22  	fmv.d	ft0, ft6
800028f0: 53 80 73 22  	fmv.d	ft0, ft7
800028f4: 53 80 31 22  	fmv.d	ft0, ft3
800028f8: 53 00 42 22  	fmv.d	ft0, ft4
800028fc: 53 80 52 22  	fmv.d	ft0, ft5
80002900: 53 00 63 22  	fmv.d	ft0, ft6
80002904: 53 80 73 22  	fmv.d	ft0, ft7
80002908: 53 80 31 22  	fmv.d	ft0, ft3
8000290c: 53 00 42 22  	fmv.d	ft0, ft4
80002910: 53 80 52 22  	fmv.d	ft0, ft5
80002914: 53 00 63 22  	fmv.d	ft0, ft6
80002918: 53 80 73 22  	fmv.d	ft0, ft7
8000291c: 53 80 31 22  	fmv.d	ft0, ft3
80002920: 53 00 42 22  	fmv.d	ft0, ft4
80002924: 53 80 52 22  	fmv.d	ft0, ft5
80002928: 53 00 63 22  	fmv.d	ft0, ft6
8000292c: 53 80 73 22  	fmv.d	ft0, ft7
80002930: 53 80 31 22  	fmv.d	ft0, ft3
80002934: 53 00 42 22  	fmv.d	ft0, ft4
80002938: 53 80 52 22  	fmv.d	ft0, ft5
8000293c: 53 00 63 22  	fmv.d	ft0, ft6
80002940: 53 80 73 22  	fmv.d	ft0, ft7
80002944: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002948: 93 8d 0a 00  	mv	s11, s5
8000294c: 83 2a 41 0a  	lw	s5, 164(sp)
80002950: 6f 00 40 05  	j	0x800029a4 <.LBB0_178+0x8b8>
80002954: 93 04 00 00  	mv	s1, zero
80002958: 13 04 c0 00  	addi	s0, zero, 12
8000295c: 37 95 88 88  	lui	a0, 559241
80002960: 87 b1 0f 00  	fld	ft3, 0(t6)
80002964: 93 05 95 88  	addi	a1, a0, -1911
80002968: 13 05 e0 01  	addi	a0, zero, 30
8000296c: 13 07 00 0f  	addi	a4, zero, 240
80002970: 93 8d 0a 00  	mv	s11, s5
80002974: 83 2a 41 0a  	lw	s5, 164(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002978: b3 36 b4 02  	mulhu	a3, s0, a1
8000297c: 93 d6 46 00  	srli	a3, a3, 4
80002980: b3 86 a6 02  	mul	a3, a3, a0
80002984: b3 06 d4 40  	sub	a3, s0, a3
80002988: 53 82 06 d2  	fcvt.d.w	ft4, a3
8000298c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002990: b3 86 97 00  	add	a3, a5, s1
80002994: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002998: 93 84 84 00  	addi	s1, s1, 8
8000299c: 13 04 c4 00  	addi	s0, s0, 12
800029a0: e3 9c e4 fc  	bne	s1, a4, 0x80002978 <.LBB0_178+0x88c>
800029a4: 03 25 01 01  	lw	a0, 16(sp)
800029a8: 13 05 85 61  	addi	a0, a0, 1560
800029ac: 93 07 85 61  	addi	a5, a0, 1560
800029b0: 13 d5 47 01  	srli	a0, a5, 20
800029b4: 33 35 a0 00  	snez	a0, a0
800029b8: b7 05 12 00  	lui	a1, 288
800029bc: 93 85 95 f1  	addi	a1, a1, -231
800029c0: b3 b5 b7 00  	sltu	a1, a5, a1
800029c4: 33 75 b5 00  	and	a0, a0, a1
800029c8: 63 0a 05 14  	beqz	a0, 0x80002b1c <.LBB0_178+0xa30>
800029cc: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
800029d0: 93 05 00 04  	addi	a1, zero, 64
800029d4: ab 20 b5 00  	scfgw	a0, a1
800029d8: 13 05 80 00  	addi	a0, zero, 8
800029dc: 93 05 00 0c  	addi	a1, zero, 192
800029e0: ab 20 b5 00  	scfgw	a0, a1
800029e4: 13 05 00 02  	addi	a0, zero, 32
800029e8: ab 20 a0 00  	scfgw	zero, a0
800029ec: 03 25 41 07  	lw	a0, 116(sp)
800029f0: 87 31 05 00  	fld	ft3, 0(a0)
800029f4: 2b a0 07 38  	scfgwi	a5, 896
800029f8: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800029fc: 53 80 31 22  	fmv.d	ft0, ft3
80002a00: 87 31 0e 00  	fld	ft3, 0(t3)
80002a04: 07 b2 08 00  	fld	ft4, 0(a7)
80002a08: 87 b2 02 00  	fld	ft5, 0(t0)
80002a0c: 03 25 81 09  	lw	a0, 152(sp)
80002a10: 07 33 05 00  	fld	ft6, 0(a0)
80002a14: 53 80 31 22  	fmv.d	ft0, ft3
80002a18: 53 00 42 22  	fmv.d	ft0, ft4
80002a1c: 53 80 52 22  	fmv.d	ft0, ft5
80002a20: 53 00 63 22  	fmv.d	ft0, ft6
80002a24: 87 31 0b 00  	fld	ft3, 0(s6)
80002a28: 07 b2 0f 00  	fld	ft4, 0(t6)
80002a2c: 87 32 08 00  	fld	ft5, 0(a6)
80002a30: 07 33 06 00  	fld	ft6, 0(a2)
80002a34: 53 80 31 22  	fmv.d	ft0, ft3
80002a38: 53 00 42 22  	fmv.d	ft0, ft4
80002a3c: 53 80 52 22  	fmv.d	ft0, ft5
80002a40: 53 00 63 22  	fmv.d	ft0, ft6
80002a44: 87 b1 0a 00  	fld	ft3, 0(s5)
80002a48: 03 25 01 08  	lw	a0, 128(sp)
80002a4c: 07 32 05 00  	fld	ft4, 0(a0)
80002a50: 87 b2 0b 00  	fld	ft5, 0(s7)
80002a54: 03 25 01 07  	lw	a0, 112(sp)
80002a58: 07 33 05 00  	fld	ft6, 0(a0)
80002a5c: 53 80 31 22  	fmv.d	ft0, ft3
80002a60: 53 00 42 22  	fmv.d	ft0, ft4
80002a64: 53 80 52 22  	fmv.d	ft0, ft5
80002a68: 53 00 63 22  	fmv.d	ft0, ft6
80002a6c: 87 b1 0e 00  	fld	ft3, 0(t4)
80002a70: 03 25 c1 0a  	lw	a0, 172(sp)
80002a74: 07 32 05 00  	fld	ft4, 0(a0)
80002a78: 87 32 03 00  	fld	ft5, 0(t1)
80002a7c: 03 25 81 08  	lw	a0, 136(sp)
80002a80: 07 33 05 00  	fld	ft6, 0(a0)
80002a84: 53 80 31 22  	fmv.d	ft0, ft3
80002a88: 53 00 42 22  	fmv.d	ft0, ft4
80002a8c: 53 80 52 22  	fmv.d	ft0, ft5
80002a90: 53 00 63 22  	fmv.d	ft0, ft6
80002a94: 87 31 0d 00  	fld	ft3, 0(s10)
80002a98: 03 25 c1 07  	lw	a0, 124(sp)
80002a9c: 07 32 05 00  	fld	ft4, 0(a0)
80002aa0: 87 b2 0d 00  	fld	ft5, 0(s11)
80002aa4: 03 25 81 0a  	lw	a0, 168(sp)
80002aa8: 07 33 05 00  	fld	ft6, 0(a0)
80002aac: 53 80 31 22  	fmv.d	ft0, ft3
80002ab0: 53 00 42 22  	fmv.d	ft0, ft4
80002ab4: 53 80 52 22  	fmv.d	ft0, ft5
80002ab8: 53 00 63 22  	fmv.d	ft0, ft6
80002abc: 87 31 0f 00  	fld	ft3, 0(t5)
80002ac0: 03 25 81 07  	lw	a0, 120(sp)
80002ac4: 07 32 05 00  	fld	ft4, 0(a0)
80002ac8: 87 b2 0c 00  	fld	ft5, 0(s9)
80002acc: 03 25 c1 09  	lw	a0, 156(sp)
80002ad0: 07 33 05 00  	fld	ft6, 0(a0)
80002ad4: 53 80 31 22  	fmv.d	ft0, ft3
80002ad8: 53 00 42 22  	fmv.d	ft0, ft4
80002adc: 53 80 52 22  	fmv.d	ft0, ft5
80002ae0: 53 00 63 22  	fmv.d	ft0, ft6
80002ae4: 87 b1 09 00  	fld	ft3, 0(s3)
80002ae8: 03 25 01 0a  	lw	a0, 160(sp)
80002aec: 07 32 05 00  	fld	ft4, 0(a0)
80002af0: 87 b2 03 00  	fld	ft5, 0(t2)
80002af4: 03 25 41 08  	lw	a0, 132(sp)
80002af8: 07 33 05 00  	fld	ft6, 0(a0)
80002afc: 53 80 31 22  	fmv.d	ft0, ft3
80002b00: 53 00 42 22  	fmv.d	ft0, ft4
80002b04: 53 80 52 22  	fmv.d	ft0, ft5
80002b08: 53 00 63 22  	fmv.d	ft0, ft6
80002b0c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80002b10: 53 80 31 22  	fmv.d	ft0, ft3
80002b14: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002b18: 6f 00 c0 04  	j	0x80002b64 <.LBB0_178+0xa78>
80002b1c: 93 04 00 00  	mv	s1, zero
80002b20: 13 04 d0 00  	addi	s0, zero, 13
80002b24: 37 95 88 88  	lui	a0, 559241
80002b28: 87 b1 0f 00  	fld	ft3, 0(t6)
80002b2c: 93 05 95 88  	addi	a1, a0, -1911
80002b30: 13 05 e0 01  	addi	a0, zero, 30
80002b34: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002b38: b3 36 b4 02  	mulhu	a3, s0, a1
80002b3c: 93 d6 46 00  	srli	a3, a3, 4
80002b40: b3 86 a6 02  	mul	a3, a3, a0
80002b44: b3 06 d4 40  	sub	a3, s0, a3
80002b48: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002b4c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002b50: b3 86 97 00  	add	a3, a5, s1
80002b54: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002b58: 93 84 84 00  	addi	s1, s1, 8
80002b5c: 13 04 d4 00  	addi	s0, s0, 13
80002b60: e3 9c e4 fc  	bne	s1, a4, 0x80002b38 <.LBB0_178+0xa4c>
80002b64: 93 07 0c 69  	addi	a5, s8, 1680
80002b68: 13 d5 47 01  	srli	a0, a5, 20
80002b6c: 33 35 a0 00  	snez	a0, a0
80002b70: b7 05 12 00  	lui	a1, 288
80002b74: 93 85 95 f1  	addi	a1, a1, -231
80002b78: b3 b5 b7 00  	sltu	a1, a5, a1
80002b7c: 33 75 b5 00  	and	a0, a0, a1
80002b80: 63 06 05 0e  	beqz	a0, 0x80002c6c <.LBB0_178+0xb80>
80002b84: 13 05 80 00  	addi	a0, zero, 8
80002b88: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80002b8c: 93 06 00 04  	addi	a3, zero, 64
80002b90: 13 07 00 0c  	addi	a4, zero, 192
80002b94: ab a0 d5 00  	scfgw	a1, a3
80002b98: ab 20 e5 00  	scfgw	a0, a4
80002b9c: 13 05 00 02  	addi	a0, zero, 32
80002ba0: ab 20 a0 00  	scfgw	zero, a0
80002ba4: 2b a0 07 38  	scfgwi	a5, 896
80002ba8: 87 31 08 00  	fld	ft3, 0(a6)
80002bac: 07 32 03 00  	fld	ft4, 0(t1)
;         for (j = 0; j < nk; j++)
80002bb0: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002bb4: 53 80 31 22  	fmv.d	ft0, ft3
80002bb8: 53 00 42 22  	fmv.d	ft0, ft4
80002bbc: 87 b2 0c 00  	fld	ft5, 0(s9)
80002bc0: 07 33 0e 00  	fld	ft6, 0(t3)
80002bc4: 87 b3 0a 00  	fld	ft7, 0(s5)
80002bc8: 07 35 0d 00  	fld	fa0, 0(s10)
80002bcc: 53 80 52 22  	fmv.d	ft0, ft5
80002bd0: 53 00 63 22  	fmv.d	ft0, ft6
80002bd4: 53 80 73 22  	fmv.d	ft0, ft7
80002bd8: 53 00 a5 22  	fmv.d	ft0, fa0
80002bdc: 87 b5 09 00  	fld	fa1, 0(s3)
80002be0: 07 b6 02 00  	fld	fa2, 0(t0)
80002be4: 87 b6 0b 00  	fld	fa3, 0(s7)
80002be8: 07 b7 0d 00  	fld	fa4, 0(s11)
80002bec: 53 80 b5 22  	fmv.d	ft0, fa1
80002bf0: 53 00 c6 22  	fmv.d	ft0, fa2
80002bf4: 53 80 d6 22  	fmv.d	ft0, fa3
80002bf8: 53 00 e7 22  	fmv.d	ft0, fa4
80002bfc: 87 b7 03 00  	fld	fa5, 0(t2)
80002c00: 07 38 0b 00  	fld	fa6, 0(s6)
80002c04: 87 b8 0e 00  	fld	fa7, 0(t4)
80002c08: 07 3e 0f 00  	fld	ft8, 0(t5)
80002c0c: 53 80 f7 22  	fmv.d	ft0, fa5
80002c10: 53 00 08 23  	fmv.d	ft0, fa6
80002c14: 53 80 18 23  	fmv.d	ft0, fa7
80002c18: 53 00 ce 23  	fmv.d	ft0, ft8
80002c1c: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80002c20: 53 80 de 23  	fmv.d	ft0, ft9
80002c24: 53 80 31 22  	fmv.d	ft0, ft3
80002c28: 53 00 42 22  	fmv.d	ft0, ft4
80002c2c: 53 80 52 22  	fmv.d	ft0, ft5
80002c30: 53 00 63 22  	fmv.d	ft0, ft6
80002c34: 53 80 73 22  	fmv.d	ft0, ft7
80002c38: 53 00 a5 22  	fmv.d	ft0, fa0
80002c3c: 53 80 b5 22  	fmv.d	ft0, fa1
80002c40: 53 00 c6 22  	fmv.d	ft0, fa2
80002c44: 53 80 d6 22  	fmv.d	ft0, fa3
80002c48: 53 00 e7 22  	fmv.d	ft0, fa4
80002c4c: 53 80 f7 22  	fmv.d	ft0, fa5
80002c50: 53 00 08 23  	fmv.d	ft0, fa6
80002c54: 53 80 18 23  	fmv.d	ft0, fa7
80002c58: 53 00 ce 23  	fmv.d	ft0, ft8
80002c5c: 53 80 de 23  	fmv.d	ft0, ft9
80002c60: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002c64: 03 2c 01 07  	lw	s8, 112(sp)
80002c68: 6f 00 00 05  	j	0x80002cb8 <.LBB0_178+0xbcc>
80002c6c: 93 04 00 00  	mv	s1, zero
80002c70: 13 04 e0 00  	addi	s0, zero, 14
80002c74: 37 95 88 88  	lui	a0, 559241
80002c78: 87 b1 0f 00  	fld	ft3, 0(t6)
80002c7c: 93 05 95 88  	addi	a1, a0, -1911
80002c80: 13 05 e0 01  	addi	a0, zero, 30
80002c84: 13 07 00 0f  	addi	a4, zero, 240
80002c88: 03 2c 01 07  	lw	s8, 112(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002c8c: b3 36 b4 02  	mulhu	a3, s0, a1
80002c90: 93 d6 46 00  	srli	a3, a3, 4
80002c94: b3 86 a6 02  	mul	a3, a3, a0
80002c98: b3 06 d4 40  	sub	a3, s0, a3
80002c9c: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002ca0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002ca4: b3 86 97 00  	add	a3, a5, s1
80002ca8: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002cac: 93 84 84 00  	addi	s1, s1, 8
80002cb0: 13 04 e4 00  	addi	s0, s0, 14
80002cb4: e3 9c e4 fc  	bne	s1, a4, 0x80002c8c <.LBB0_178+0xba0>
80002cb8: 03 25 01 01  	lw	a0, 16(sp)
80002cbc: 13 05 85 70  	addi	a0, a0, 1800
80002cc0: 93 07 85 70  	addi	a5, a0, 1800
80002cc4: 13 d5 47 01  	srli	a0, a5, 20
80002cc8: 33 35 a0 00  	snez	a0, a0
80002ccc: b7 05 12 00  	lui	a1, 288
80002cd0: 93 85 95 f1  	addi	a1, a1, -231
80002cd4: b3 b5 b7 00  	sltu	a1, a5, a1
80002cd8: 33 75 b5 00  	and	a0, a0, a1
80002cdc: 63 0c 05 0a  	beqz	a0, 0x80002d94 <.LBB0_178+0xca8>
80002ce0: 13 05 80 00  	addi	a0, zero, 8
80002ce4: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80002ce8: 93 06 00 04  	addi	a3, zero, 64
80002cec: 13 07 00 0c  	addi	a4, zero, 192
80002cf0: ab a0 d5 00  	scfgw	a1, a3
80002cf4: ab 20 e5 00  	scfgw	a0, a4
80002cf8: 13 05 00 02  	addi	a0, zero, 32
80002cfc: ab 20 a0 00  	scfgw	zero, a0
80002d00: 03 25 c1 0a  	lw	a0, 172(sp)
80002d04: 87 31 05 00  	fld	ft3, 0(a0)
80002d08: 2b a0 07 38  	scfgwi	a5, 896
80002d0c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002d10: 53 80 31 22  	fmv.d	ft0, ft3
80002d14: 53 02 00 d2  	fcvt.d.w	ft4, zero
80002d18: 53 00 42 22  	fmv.d	ft0, ft4
80002d1c: 53 80 31 22  	fmv.d	ft0, ft3
80002d20: 53 00 42 22  	fmv.d	ft0, ft4
80002d24: 53 80 31 22  	fmv.d	ft0, ft3
80002d28: 53 00 42 22  	fmv.d	ft0, ft4
80002d2c: 53 80 31 22  	fmv.d	ft0, ft3
80002d30: 53 00 42 22  	fmv.d	ft0, ft4
80002d34: 53 80 31 22  	fmv.d	ft0, ft3
80002d38: 53 00 42 22  	fmv.d	ft0, ft4
80002d3c: 53 80 31 22  	fmv.d	ft0, ft3
80002d40: 53 00 42 22  	fmv.d	ft0, ft4
80002d44: 53 80 31 22  	fmv.d	ft0, ft3
80002d48: 53 00 42 22  	fmv.d	ft0, ft4
80002d4c: 53 80 31 22  	fmv.d	ft0, ft3
80002d50: 53 00 42 22  	fmv.d	ft0, ft4
80002d54: 53 80 31 22  	fmv.d	ft0, ft3
80002d58: 53 00 42 22  	fmv.d	ft0, ft4
80002d5c: 53 80 31 22  	fmv.d	ft0, ft3
80002d60: 53 00 42 22  	fmv.d	ft0, ft4
80002d64: 53 80 31 22  	fmv.d	ft0, ft3
80002d68: 53 00 42 22  	fmv.d	ft0, ft4
80002d6c: 53 80 31 22  	fmv.d	ft0, ft3
80002d70: 53 00 42 22  	fmv.d	ft0, ft4
80002d74: 53 80 31 22  	fmv.d	ft0, ft3
80002d78: 53 00 42 22  	fmv.d	ft0, ft4
80002d7c: 53 80 31 22  	fmv.d	ft0, ft3
80002d80: 53 00 42 22  	fmv.d	ft0, ft4
80002d84: 53 80 31 22  	fmv.d	ft0, ft3
80002d88: 53 00 42 22  	fmv.d	ft0, ft4
80002d8c: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002d90: 6f 00 c0 04  	j	0x80002ddc <.LBB0_178+0xcf0>
80002d94: 93 04 00 00  	mv	s1, zero
80002d98: 13 04 f0 00  	addi	s0, zero, 15
80002d9c: 37 95 88 88  	lui	a0, 559241
80002da0: 87 b1 0f 00  	fld	ft3, 0(t6)
80002da4: 93 05 95 88  	addi	a1, a0, -1911
80002da8: 13 05 e0 01  	addi	a0, zero, 30
80002dac: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002db0: b3 36 b4 02  	mulhu	a3, s0, a1
80002db4: 93 d6 46 00  	srli	a3, a3, 4
80002db8: b3 86 a6 02  	mul	a3, a3, a0
80002dbc: b3 06 d4 40  	sub	a3, s0, a3
80002dc0: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002dc4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002dc8: b3 86 97 00  	add	a3, a5, s1
80002dcc: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002dd0: 93 84 84 00  	addi	s1, s1, 8
80002dd4: 13 04 f4 00  	addi	s0, s0, 15
80002dd8: e3 9c e4 fc  	bne	s1, a4, 0x80002db0 <.LBB0_178+0xcc4>
80002ddc: 13 0a 06 00  	mv	s4, a2
;         for (j = 0; j < nk; j++)
80002de0: 93 07 09 78  	addi	a5, s2, 1920
80002de4: 13 d5 47 01  	srli	a0, a5, 20
80002de8: 33 35 a0 00  	snez	a0, a0
80002dec: b7 05 12 00  	lui	a1, 288
80002df0: 93 85 95 f1  	addi	a1, a1, -231
80002df4: b3 b5 b7 00  	sltu	a1, a5, a1
80002df8: 33 75 b5 00  	and	a0, a0, a1
80002dfc: 63 08 05 0e  	beqz	a0, 0x80002eec <.LBB0_178+0xe00>
80002e00: 13 05 80 00  	addi	a0, zero, 8
80002e04: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80002e08: 93 06 00 04  	addi	a3, zero, 64
80002e0c: 13 07 00 0c  	addi	a4, zero, 192
80002e10: ab a0 d5 00  	scfgw	a1, a3
80002e14: ab 20 e5 00  	scfgw	a0, a4
80002e18: 13 05 00 02  	addi	a0, zero, 32
80002e1c: ab 20 a0 00  	scfgw	zero, a0
80002e20: 2b a0 07 38  	scfgwi	a5, 896
80002e24: 87 31 0f 00  	fld	ft3, 0(t5)
80002e28: 07 b2 0e 00  	fld	ft4, 0(t4)
;         for (j = 0; j < nk; j++)
80002e2c: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002e30: 53 80 31 22  	fmv.d	ft0, ft3
80002e34: 53 00 42 22  	fmv.d	ft0, ft4
80002e38: 87 32 0b 00  	fld	ft5, 0(s6)
80002e3c: 07 b3 03 00  	fld	ft6, 0(t2)
80002e40: 87 b3 0d 00  	fld	ft7, 0(s11)
80002e44: 07 b5 0b 00  	fld	fa0, 0(s7)
80002e48: 53 80 52 22  	fmv.d	ft0, ft5
80002e4c: 53 00 63 22  	fmv.d	ft0, ft6
80002e50: 53 80 73 22  	fmv.d	ft0, ft7
80002e54: 53 00 a5 22  	fmv.d	ft0, fa0
80002e58: 87 b5 02 00  	fld	fa1, 0(t0)
80002e5c: 07 b6 09 00  	fld	fa2, 0(s3)
80002e60: 87 36 0d 00  	fld	fa3, 0(s10)
80002e64: 07 b7 0a 00  	fld	fa4, 0(s5)
80002e68: 53 80 b5 22  	fmv.d	ft0, fa1
80002e6c: 53 00 c6 22  	fmv.d	ft0, fa2
80002e70: 53 80 d6 22  	fmv.d	ft0, fa3
80002e74: 53 00 e7 22  	fmv.d	ft0, fa4
80002e78: 87 37 0e 00  	fld	fa5, 0(t3)
80002e7c: 07 b8 0c 00  	fld	fa6, 0(s9)
80002e80: 87 38 03 00  	fld	fa7, 0(t1)
80002e84: 07 3e 08 00  	fld	ft8, 0(a6)
80002e88: 53 80 f7 22  	fmv.d	ft0, fa5
80002e8c: 53 00 08 23  	fmv.d	ft0, fa6
80002e90: 53 80 18 23  	fmv.d	ft0, fa7
80002e94: 53 00 ce 23  	fmv.d	ft0, ft8
80002e98: d3 0e 00 d2  	fcvt.d.w	ft9, zero
80002e9c: 53 80 de 23  	fmv.d	ft0, ft9
80002ea0: 53 80 31 22  	fmv.d	ft0, ft3
80002ea4: 53 00 42 22  	fmv.d	ft0, ft4
80002ea8: 53 80 52 22  	fmv.d	ft0, ft5
80002eac: 53 00 63 22  	fmv.d	ft0, ft6
80002eb0: 53 80 73 22  	fmv.d	ft0, ft7
80002eb4: 53 00 a5 22  	fmv.d	ft0, fa0
80002eb8: 53 80 b5 22  	fmv.d	ft0, fa1
80002ebc: 53 00 c6 22  	fmv.d	ft0, fa2
80002ec0: 53 80 d6 22  	fmv.d	ft0, fa3
80002ec4: 53 00 e7 22  	fmv.d	ft0, fa4
80002ec8: 53 80 f7 22  	fmv.d	ft0, fa5
80002ecc: 53 00 08 23  	fmv.d	ft0, fa6
80002ed0: 53 80 18 23  	fmv.d	ft0, fa7
80002ed4: 53 00 ce 23  	fmv.d	ft0, ft8
80002ed8: 53 80 de 23  	fmv.d	ft0, ft9
80002edc: 73 f5 00 7c  	csrrci	a0, 1984, 1
80002ee0: 03 29 01 0a  	lw	s2, 160(sp)
80002ee4: 03 26 41 07  	lw	a2, 116(sp)
80002ee8: 6f 00 40 05  	j	0x80002f3c <.LBB0_178+0xe50>
80002eec: 93 04 00 00  	mv	s1, zero
80002ef0: 13 04 00 01  	addi	s0, zero, 16
80002ef4: 37 95 88 88  	lui	a0, 559241
80002ef8: 87 b1 0f 00  	fld	ft3, 0(t6)
80002efc: 93 05 95 88  	addi	a1, a0, -1911
80002f00: 13 05 e0 01  	addi	a0, zero, 30
80002f04: 13 07 00 0f  	addi	a4, zero, 240
80002f08: 03 29 01 0a  	lw	s2, 160(sp)
80002f0c: 03 26 41 07  	lw	a2, 116(sp)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002f10: b3 36 b4 02  	mulhu	a3, s0, a1
80002f14: 93 d6 46 00  	srli	a3, a3, 4
80002f18: b3 86 a6 02  	mul	a3, a3, a0
80002f1c: b3 06 d4 40  	sub	a3, s0, a3
80002f20: 53 82 06 d2  	fcvt.d.w	ft4, a3
80002f24: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80002f28: b3 86 97 00  	add	a3, a5, s1
80002f2c: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80002f30: 93 84 84 00  	addi	s1, s1, 8
80002f34: 13 04 04 01  	addi	s0, s0, 16
80002f38: e3 9c e4 fc  	bne	s1, a4, 0x80002f10 <.LBB0_178+0xe24>
80002f3c: 03 25 01 01  	lw	a0, 16(sp)
80002f40: 13 05 85 7f  	addi	a0, a0, 2040
80002f44: 93 07 85 7f  	addi	a5, a0, 2040
80002f48: 13 d5 47 01  	srli	a0, a5, 20
80002f4c: 33 35 a0 00  	snez	a0, a0
80002f50: b7 05 12 00  	lui	a1, 288
80002f54: 93 85 95 f1  	addi	a1, a1, -231
80002f58: b3 b5 b7 00  	sltu	a1, a5, a1
80002f5c: 33 75 b5 00  	and	a0, a0, a1
80002f60: 63 04 05 14  	beqz	a0, 0x800030a8 <.LBB0_178+0xfbc>
80002f64: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80002f68: 93 05 00 04  	addi	a1, zero, 64
80002f6c: ab 20 b5 00  	scfgw	a0, a1
80002f70: 13 05 80 00  	addi	a0, zero, 8
80002f74: 93 05 00 0c  	addi	a1, zero, 192
80002f78: ab 20 b5 00  	scfgw	a0, a1
80002f7c: 13 05 00 02  	addi	a0, zero, 32
80002f80: ab 20 a0 00  	scfgw	zero, a0
80002f84: 03 25 41 08  	lw	a0, 132(sp)
80002f88: 87 31 05 00  	fld	ft3, 0(a0)
80002f8c: 2b a0 07 38  	scfgwi	a5, 896
80002f90: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80002f94: 53 80 31 22  	fmv.d	ft0, ft3
80002f98: 87 b1 03 00  	fld	ft3, 0(t2)
80002f9c: 07 32 09 00  	fld	ft4, 0(s2)
80002fa0: 87 b2 09 00  	fld	ft5, 0(s3)
80002fa4: 03 25 c1 09  	lw	a0, 156(sp)
80002fa8: 07 33 05 00  	fld	ft6, 0(a0)
80002fac: 53 80 31 22  	fmv.d	ft0, ft3
80002fb0: 53 00 42 22  	fmv.d	ft0, ft4
80002fb4: 53 80 52 22  	fmv.d	ft0, ft5
80002fb8: 53 00 63 22  	fmv.d	ft0, ft6
80002fbc: 87 b1 0c 00  	fld	ft3, 0(s9)
80002fc0: 03 25 81 07  	lw	a0, 120(sp)
80002fc4: 07 32 05 00  	fld	ft4, 0(a0)
80002fc8: 87 32 0f 00  	fld	ft5, 0(t5)
80002fcc: 03 25 81 0a  	lw	a0, 168(sp)
80002fd0: 07 33 05 00  	fld	ft6, 0(a0)
80002fd4: 53 80 31 22  	fmv.d	ft0, ft3
80002fd8: 53 00 42 22  	fmv.d	ft0, ft4
80002fdc: 53 80 52 22  	fmv.d	ft0, ft5
80002fe0: 53 00 63 22  	fmv.d	ft0, ft6
80002fe4: 87 b1 0d 00  	fld	ft3, 0(s11)
80002fe8: 03 25 c1 07  	lw	a0, 124(sp)
80002fec: 07 32 05 00  	fld	ft4, 0(a0)
80002ff0: 87 32 0d 00  	fld	ft5, 0(s10)
80002ff4: 03 25 81 08  	lw	a0, 136(sp)
80002ff8: 07 33 05 00  	fld	ft6, 0(a0)
80002ffc: 53 80 31 22  	fmv.d	ft0, ft3
80003000: 53 00 42 22  	fmv.d	ft0, ft4
80003004: 53 80 52 22  	fmv.d	ft0, ft5
80003008: 53 00 63 22  	fmv.d	ft0, ft6
8000300c: 87 31 03 00  	fld	ft3, 0(t1)
80003010: 03 25 c1 0a  	lw	a0, 172(sp)
80003014: 07 32 05 00  	fld	ft4, 0(a0)
80003018: 87 b2 0e 00  	fld	ft5, 0(t4)
8000301c: 07 33 0c 00  	fld	ft6, 0(s8)
80003020: 53 80 31 22  	fmv.d	ft0, ft3
80003024: 53 00 42 22  	fmv.d	ft0, ft4
80003028: 53 80 52 22  	fmv.d	ft0, ft5
8000302c: 53 00 63 22  	fmv.d	ft0, ft6
80003030: 87 b1 0b 00  	fld	ft3, 0(s7)
80003034: 03 25 01 08  	lw	a0, 128(sp)
80003038: 07 32 05 00  	fld	ft4, 0(a0)
8000303c: 87 b2 0a 00  	fld	ft5, 0(s5)
80003040: 07 33 0a 00  	fld	ft6, 0(s4)
80003044: 53 80 31 22  	fmv.d	ft0, ft3
80003048: 53 00 42 22  	fmv.d	ft0, ft4
8000304c: 53 80 52 22  	fmv.d	ft0, ft5
80003050: 53 00 63 22  	fmv.d	ft0, ft6
80003054: 87 31 08 00  	fld	ft3, 0(a6)
80003058: 07 b2 0f 00  	fld	ft4, 0(t6)
8000305c: 87 32 0b 00  	fld	ft5, 0(s6)
80003060: 03 25 81 09  	lw	a0, 152(sp)
80003064: 07 33 05 00  	fld	ft6, 0(a0)
80003068: 53 80 31 22  	fmv.d	ft0, ft3
8000306c: 53 00 42 22  	fmv.d	ft0, ft4
80003070: 53 80 52 22  	fmv.d	ft0, ft5
80003074: 53 00 63 22  	fmv.d	ft0, ft6
80003078: 87 b1 02 00  	fld	ft3, 0(t0)
8000307c: 07 b2 08 00  	fld	ft4, 0(a7)
80003080: 87 32 0e 00  	fld	ft5, 0(t3)
80003084: 07 33 06 00  	fld	ft6, 0(a2)
80003088: 53 80 31 22  	fmv.d	ft0, ft3
8000308c: 53 00 42 22  	fmv.d	ft0, ft4
80003090: 53 80 52 22  	fmv.d	ft0, ft5
80003094: 53 00 63 22  	fmv.d	ft0, ft6
80003098: d3 01 00 d2  	fcvt.d.w	ft3, zero
8000309c: 53 80 31 22  	fmv.d	ft0, ft3
800030a0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800030a4: 6f 00 c0 04  	j	0x800030f0 <.LBB0_178+0x1004>
800030a8: 93 04 00 00  	mv	s1, zero
800030ac: 13 04 10 01  	addi	s0, zero, 17
800030b0: 37 95 88 88  	lui	a0, 559241
800030b4: 87 b1 0f 00  	fld	ft3, 0(t6)
800030b8: 93 05 95 88  	addi	a1, a0, -1911
800030bc: 13 05 e0 01  	addi	a0, zero, 30
800030c0: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800030c4: b3 36 b4 02  	mulhu	a3, s0, a1
800030c8: 93 d6 46 00  	srli	a3, a3, 4
800030cc: b3 86 a6 02  	mul	a3, a3, a0
800030d0: b3 06 d4 40  	sub	a3, s0, a3
800030d4: 53 82 06 d2  	fcvt.d.w	ft4, a3
800030d8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800030dc: b3 86 97 00  	add	a3, a5, s1
800030e0: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
800030e4: 93 84 84 00  	addi	s1, s1, 8
800030e8: 13 04 14 01  	addi	s0, s0, 17
800030ec: e3 9c e4 fc  	bne	s1, a4, 0x800030c4 <.LBB0_178+0xfd8>
800030f0: 37 15 00 00  	lui	a0, 1
800030f4: 13 05 05 0e  	addi	a0, a0, 224
;         for (j = 0; j < nk; j++)
800030f8: 83 25 01 01  	lw	a1, 16(sp)
800030fc: b3 87 a5 00  	add	a5, a1, a0
80003100: 13 d5 47 01  	srli	a0, a5, 20
80003104: 33 35 a0 00  	snez	a0, a0
80003108: b7 05 12 00  	lui	a1, 288
8000310c: 93 85 95 f1  	addi	a1, a1, -231
80003110: b3 b5 b7 00  	sltu	a1, a5, a1
80003114: 33 75 b5 00  	and	a0, a0, a1
80003118: 63 00 05 0c  	beqz	a0, 0x800031d8 <.LBB0_178+0x10ec>
8000311c: 13 05 80 00  	addi	a0, zero, 8
80003120: 93 05 d0 01  	addi	a1, zero, 29
;         for (j = 0; j < nk; j++)
80003124: 93 06 00 04  	addi	a3, zero, 64
80003128: 13 07 00 0c  	addi	a4, zero, 192
8000312c: ab a0 d5 00  	scfgw	a1, a3
80003130: ab 20 e5 00  	scfgw	a0, a4
80003134: 13 05 00 02  	addi	a0, zero, 32
80003138: ab 20 a0 00  	scfgw	zero, a0
8000313c: 2b a0 07 38  	scfgwi	a5, 896
80003140: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003144: 87 31 0b 00  	fld	ft3, 0(s6)
80003148: 07 b2 0b 00  	fld	ft4, 0(s7)
8000314c: 87 32 0d 00  	fld	ft5, 0(s10)
80003150: 07 b3 0c 00  	fld	ft6, 0(s9)
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003154: 53 80 31 22  	fmv.d	ft0, ft3
80003158: 53 00 42 22  	fmv.d	ft0, ft4
8000315c: 53 80 52 22  	fmv.d	ft0, ft5
80003160: 53 00 63 22  	fmv.d	ft0, ft6
80003164: d3 03 00 d2  	fcvt.d.w	ft7, zero
80003168: 53 80 73 22  	fmv.d	ft0, ft7
8000316c: 53 80 31 22  	fmv.d	ft0, ft3
80003170: 53 00 42 22  	fmv.d	ft0, ft4
80003174: 53 80 52 22  	fmv.d	ft0, ft5
80003178: 53 00 63 22  	fmv.d	ft0, ft6
8000317c: 53 80 73 22  	fmv.d	ft0, ft7
80003180: 53 80 31 22  	fmv.d	ft0, ft3
80003184: 53 00 42 22  	fmv.d	ft0, ft4
80003188: 53 80 52 22  	fmv.d	ft0, ft5
8000318c: 53 00 63 22  	fmv.d	ft0, ft6
80003190: 53 80 73 22  	fmv.d	ft0, ft7
80003194: 53 80 31 22  	fmv.d	ft0, ft3
80003198: 53 00 42 22  	fmv.d	ft0, ft4
8000319c: 53 80 52 22  	fmv.d	ft0, ft5
800031a0: 53 00 63 22  	fmv.d	ft0, ft6
800031a4: 53 80 73 22  	fmv.d	ft0, ft7
800031a8: 53 80 31 22  	fmv.d	ft0, ft3
800031ac: 53 00 42 22  	fmv.d	ft0, ft4
800031b0: 53 80 52 22  	fmv.d	ft0, ft5
800031b4: 53 00 63 22  	fmv.d	ft0, ft6
800031b8: 53 80 73 22  	fmv.d	ft0, ft7
800031bc: 53 80 31 22  	fmv.d	ft0, ft3
800031c0: 53 00 42 22  	fmv.d	ft0, ft4
800031c4: 53 80 52 22  	fmv.d	ft0, ft5
800031c8: 53 00 63 22  	fmv.d	ft0, ft6
800031cc: 53 80 73 22  	fmv.d	ft0, ft7
800031d0: 73 f5 00 7c  	csrrci	a0, 1984, 1
800031d4: 6f 00 c0 04  	j	0x80003220 <.LBB0_178+0x1134>
800031d8: 93 04 00 00  	mv	s1, zero
800031dc: 13 04 20 01  	addi	s0, zero, 18
800031e0: 37 95 88 88  	lui	a0, 559241
800031e4: 87 b1 0f 00  	fld	ft3, 0(t6)
800031e8: 93 05 95 88  	addi	a1, a0, -1911
800031ec: 13 05 e0 01  	addi	a0, zero, 30
800031f0: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800031f4: b3 36 b4 02  	mulhu	a3, s0, a1
800031f8: 93 d6 46 00  	srli	a3, a3, 4
800031fc: b3 86 a6 02  	mul	a3, a3, a0
80003200: b3 06 d4 40  	sub	a3, s0, a3
80003204: 53 82 06 d2  	fcvt.d.w	ft4, a3
80003208: 53 72 32 12  	fmul.d	ft4, ft4, ft3
8000320c: b3 86 97 00  	add	a3, a5, s1
80003210: 27 b0 46 00  	fsd	ft4, 0(a3)
;         for (j = 0; j < nk; j++)
80003214: 93 84 84 00  	addi	s1, s1, 8
80003218: 13 04 24 01  	addi	s0, s0, 18
8000321c: e3 9c e4 fc  	bne	s1, a4, 0x800031f4 <.LBB0_178+0x1108>
80003220: 37 15 00 00  	lui	a0, 1
80003224: 13 05 05 1d  	addi	a0, a0, 464
;         for (j = 0; j < nk; j++)
80003228: 83 25 01 01  	lw	a1, 16(sp)
8000322c: b3 87 a5 00  	add	a5, a1, a0
80003230: 13 d5 47 01  	srli	a0, a5, 20
80003234: 33 35 a0 00  	snez	a0, a0
80003238: b7 05 12 00  	lui	a1, 288
8000323c: 93 85 95 f1  	addi	a1, a1, -231
80003240: b3 b5 b7 00  	sltu	a1, a5, a1
80003244: 33 75 b5 00  	and	a0, a0, a1
80003248: 63 04 05 14  	beqz	a0, 0x80003390 <.LBB0_178+0x12a4>
8000324c: 13 05 d0 01  	addi	a0, zero, 29
;         for (j = 0; j < nk; j++)
80003250: 93 05 00 04  	addi	a1, zero, 64
80003254: ab 20 b5 00  	scfgw	a0, a1
80003258: 13 05 80 00  	addi	a0, zero, 8
8000325c: 93 05 00 0c  	addi	a1, zero, 192
80003260: ab 20 b5 00  	scfgw	a0, a1
80003264: 13 05 00 02  	addi	a0, zero, 32
80003268: ab 20 a0 00  	scfgw	zero, a0
8000326c: 2b a0 07 38  	scfgwi	a5, 896
80003270: 87 31 0c 00  	fld	ft3, 0(s8)
80003274: 07 b2 09 00  	fld	ft4, 0(s3)
80003278: 87 32 0a 00  	fld	ft5, 0(s4)
8000327c: 07 33 0f 00  	fld	ft6, 0(t5)
80003280: 03 25 81 09  	lw	a0, 152(sp)
80003284: 87 33 05 00  	fld	ft7, 0(a0)
80003288: 07 35 0d 00  	fld	fa0, 0(s10)
8000328c: 87 35 06 00  	fld	fa1, 0(a2)
80003290: 07 b6 0e 00  	fld	fa2, 0(t4)
80003294: 87 36 09 00  	fld	fa3, 0(s2)
80003298: 07 b7 0a 00  	fld	fa4, 0(s5)
8000329c: 03 25 81 07  	lw	a0, 120(sp)
800032a0: 87 37 05 00  	fld	fa5, 0(a0)
800032a4: 07 38 0b 00  	fld	fa6, 0(s6)
800032a8: 03 25 c1 07  	lw	a0, 124(sp)
800032ac: 87 38 05 00  	fld	fa7, 0(a0)
800032b0: 07 3e 0e 00  	fld	ft8, 0(t3)
800032b4: 03 25 c1 0a  	lw	a0, 172(sp)
800032b8: 87 3e 05 00  	fld	ft9, 0(a0)
800032bc: 07 bf 03 00  	fld	ft10, 0(t2)
800032c0: 03 25 01 08  	lw	a0, 128(sp)
800032c4: 87 3f 05 00  	fld	ft11, 0(a0)
800032c8: 07 b4 0c 00  	fld	fs0, 0(s9)
800032cc: 87 b4 0f 00  	fld	fs1, 0(t6)
800032d0: 07 b9 0d 00  	fld	fs2, 0(s11)
800032d4: 87 b9 08 00  	fld	fs3, 0(a7)
800032d8: 07 3a 03 00  	fld	fs4, 0(t1)
800032dc: 03 25 41 08  	lw	a0, 132(sp)
800032e0: 87 3a 05 00  	fld	fs5, 0(a0)
800032e4: 07 bb 0b 00  	fld	fs6, 0(s7)
800032e8: 03 25 c1 09  	lw	a0, 156(sp)
800032ec: 87 3b 05 00  	fld	fs7, 0(a0)
800032f0: 07 3c 08 00  	fld	fs8, 0(a6)
800032f4: 03 25 81 0a  	lw	a0, 168(sp)
800032f8: 87 3c 05 00  	fld	fs9, 0(a0)
800032fc: 07 bd 02 00  	fld	fs10, 0(t0)
;         for (j = 0; j < nk; j++)
80003300: 73 e5 00 7c  	csrrsi	a0, 1984, 1
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
80003304: 53 80 31 22  	fmv.d	ft0, ft3
80003308: 53 00 42 22  	fmv.d	ft0, ft4
8000330c: 53 80 52 22  	fmv.d	ft0, ft5
80003310: 53 00 63 22  	fmv.d	ft0, ft6
80003314: 53 80 73 22  	fmv.d	ft0, ft7
80003318: 53 00 a5 22  	fmv.d	ft0, fa0
8000331c: 53 80 b5 22  	fmv.d	ft0, fa1
80003320: 53 00 c6 22  	fmv.d	ft0, fa2
80003324: 53 80 d6 22  	fmv.d	ft0, fa3
80003328: 53 00 e7 22  	fmv.d	ft0, fa4
8000332c: 53 80 f7 22  	fmv.d	ft0, fa5
80003330: 53 00 08 23  	fmv.d	ft0, fa6
80003334: 53 80 18 23  	fmv.d	ft0, fa7
80003338: 53 00 ce 23  	fmv.d	ft0, ft8
8000333c: 53 80 de 23  	fmv.d	ft0, ft9
80003340: 53 00 ef 23  	fmv.d	ft0, ft10
80003344: 53 80 ff 23  	fmv.d	ft0, ft11
80003348: 53 00 84 22  	fmv.d	ft0, fs0
8000334c: 53 80 94 22  	fmv.d	ft0, fs1
80003350: 53 00 29 23  	fmv.d	ft0, fs2
80003354: 53 80 39 23  	fmv.d	ft0, fs3
80003358: 53 00 4a 23  	fmv.d	ft0, fs4
8000335c: 53 80 5a 23  	fmv.d	ft0, fs5
80003360: 53 00 6b 23  	fmv.d	ft0, fs6
80003364: 53 80 7b 23  	fmv.d	ft0, fs7
80003368: 03 25 81 08  	lw	a0, 136(sp)
8000336c: 87 31 05 00  	fld	ft3, 0(a0)
80003370: 53 00 8c 23  	fmv.d	ft0, fs8
80003374: 53 80 9c 23  	fmv.d	ft0, fs9
80003378: 53 00 ad 23  	fmv.d	ft0, fs10
8000337c: 53 80 31 22  	fmv.d	ft0, ft3
80003380: d3 01 00 d2  	fcvt.d.w	ft3, zero
80003384: 53 80 31 22  	fmv.d	ft0, ft3
80003388: 73 f5 00 7c  	csrrci	a0, 1984, 1
8000338c: 6f 00 c0 04  	j	0x800033d8 <.LBB0_178+0x12ec>
80003390: 13 05 00 00  	mv	a0, zero
80003394: 93 05 30 01  	addi	a1, zero, 19
80003398: 37 96 88 88  	lui	a2, 559241
8000339c: 87 b1 0f 00  	fld	ft3, 0(t6)
800033a0: 13 06 96 88  	addi	a2, a2, -1911
800033a4: 93 06 e0 01  	addi	a3, zero, 30
800033a8: 13 07 00 0f  	addi	a4, zero, 240
;             A[i][j] = (double) (i*(j+1) % nk) / nk;
800033ac: b3 b4 c5 02  	mulhu	s1, a1, a2
800033b0: 93 d4 44 00  	srli	s1, s1, 4
800033b4: b3 84 d4 02  	mul	s1, s1, a3
800033b8: b3 84 95 40  	sub	s1, a1, s1
800033bc: 53 82 04 d2  	fcvt.d.w	ft4, s1
800033c0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800033c4: b3 84 a7 00  	add	s1, a5, a0
800033c8: 27 b0 44 00  	fsd	ft4, 0(s1)
;         for (j = 0; j < nk; j++)
800033cc: 13 05 85 00  	addi	a0, a0, 8
800033d0: 93 85 35 01  	addi	a1, a1, 19
800033d4: e3 1c e5 fc  	bne	a0, a4, 0x800033ac <.LBB0_178+0x12c0>
;     for (i = 0; i < nk; i++)
800033d8: 13 d5 40 01  	srli	a0, ra, 20
800033dc: 33 35 a0 00  	snez	a0, a0
800033e0: b7 f5 11 00  	lui	a1, 287
800033e4: 93 85 95 89  	addi	a1, a1, -1895
800033e8: b3 b5 b0 00  	sltu	a1, ra, a1
800033ec: 33 75 b5 00  	and	a0, a0, a1
800033f0: 23 26 a1 08  	sw	a0, 140(sp)
800033f4: 63 04 05 40  	beqz	a0, 0x800037fc <.LBB0_179+0x35c>
800033f8: 13 07 00 00  	mv	a4, zero
800033fc: 93 07 00 00  	mv	a5, zero
80003400: 93 04 00 00  	mv	s1, zero
80003404: 13 04 00 00  	mv	s0, zero
80003408: 93 05 00 00  	mv	a1, zero
8000340c: 23 26 01 0a  	sw	zero, 172(sp)
80003410: 13 0f 00 00  	mv	t5, zero
80003414: 93 0f 00 00  	mv	t6, zero
80003418: 13 09 00 00  	mv	s2, zero
8000341c: 93 09 00 00  	mv	s3, zero
80003420: 13 0a 00 00  	mv	s4, zero
80003424: 93 0a 00 00  	mv	s5, zero
80003428: 13 0b 00 00  	mv	s6, zero
8000342c: 93 0b 00 00  	mv	s7, zero
80003430: 13 0c 00 00  	mv	s8, zero
80003434: 93 0c 00 00  	mv	s9, zero
80003438: 13 0d 00 00  	mv	s10, zero
8000343c: 13 86 00 00  	mv	a2, ra
80003440: 93 00 00 00  	mv	ra, zero
80003444: 13 08 00 00  	mv	a6, zero
80003448: 93 08 00 00  	mv	a7, zero
8000344c: 93 02 00 00  	mv	t0, zero
80003450: 13 03 00 00  	mv	t1, zero
80003454: 93 03 00 00  	mv	t2, zero
80003458: 13 0e 00 00  	mv	t3, zero
8000345c: 13 05 80 00  	addi	a0, zero, 8
80003460: 93 0e 80 01  	addi	t4, zero, 24
;     for (i = 0; i < nk; i++)
80003464: 93 06 00 04  	addi	a3, zero, 64
80003468: 93 0d 00 0c  	addi	s11, zero, 192
8000346c: ab a0 de 00  	scfgw	t4, a3
80003470: ab 20 b5 01  	scfgw	a0, s11
80003474: 93 0e d0 01  	addi	t4, zero, 29
80003478: 93 06 00 06  	addi	a3, zero, 96
8000347c: 93 0d 00 0e  	addi	s11, zero, 224
80003480: ab a0 de 00  	scfgw	t4, a3
80003484: ab 20 b5 01  	scfgw	a0, s11
80003488: 13 05 00 02  	addi	a0, zero, 32
8000348c: ab 20 a0 00  	scfgw	zero, a0
80003490: 2b 20 06 3a  	scfgwi	a2, 928
80003494: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80003498: 37 85 eb 51  	lui	a0, 335544
8000349c: 13 05 f5 51  	addi	a0, a0, 1311

800034a0 <.LBB0_179>:
800034a0: 17 46 00 00  	auipc	a2, 4
800034a4: 13 06 06 fb  	addi	a2, a2, -80
800034a8: 87 31 06 00  	fld	ft3, 0(a2)
800034ac: 93 0e 90 01  	addi	t4, zero, 25
800034b0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;             B[i][j] = (double) (i*(j+2) % nj) / nj;
800034b4: b3 3d a7 02  	mulhu	s11, a4, a0
800034b8: 93 d6 3d 00  	srli	a3, s11, 3
800034bc: b3 86 d6 03  	mul	a3, a3, t4
800034c0: b3 06 d7 40  	sub	a3, a4, a3
800034c4: d3 82 06 d2  	fcvt.d.w	ft5, a3
800034c8: b3 b6 a7 02  	mulhu	a3, a5, a0
800034cc: 93 d6 36 00  	srli	a3, a3, 3
800034d0: b3 86 d6 03  	mul	a3, a3, t4
800034d4: b3 86 d7 40  	sub	a3, a5, a3
800034d8: 53 83 06 d2  	fcvt.d.w	ft6, a3
800034dc: b3 b6 a4 02  	mulhu	a3, s1, a0
800034e0: 93 d6 36 00  	srli	a3, a3, 3
800034e4: b3 86 d6 03  	mul	a3, a3, t4
800034e8: b3 86 d4 40  	sub	a3, s1, a3
800034ec: d3 83 06 d2  	fcvt.d.w	ft7, a3
800034f0: b3 36 a4 02  	mulhu	a3, s0, a0
800034f4: 93 d6 36 00  	srli	a3, a3, 3
800034f8: b3 86 d6 03  	mul	a3, a3, t4
800034fc: b3 06 d4 40  	sub	a3, s0, a3
80003500: 53 85 06 d2  	fcvt.d.w	fa0, a3
80003504: b3 b6 a5 02  	mulhu	a3, a1, a0
80003508: 93 d6 36 00  	srli	a3, a3, 3
8000350c: b3 86 d6 03  	mul	a3, a3, t4
80003510: b3 86 d5 40  	sub	a3, a1, a3
80003514: d3 85 06 d2  	fcvt.d.w	fa1, a3
80003518: 83 2d c1 0a  	lw	s11, 172(sp)
8000351c: b3 b6 ad 02  	mulhu	a3, s11, a0
80003520: 93 d6 36 00  	srli	a3, a3, 3
80003524: b3 86 d6 03  	mul	a3, a3, t4
80003528: b3 86 dd 40  	sub	a3, s11, a3
8000352c: 53 86 06 d2  	fcvt.d.w	fa2, a3
80003530: b3 36 af 02  	mulhu	a3, t5, a0
80003534: 93 d6 36 00  	srli	a3, a3, 3
80003538: b3 86 d6 03  	mul	a3, a3, t4
8000353c: b3 06 df 40  	sub	a3, t5, a3
80003540: d3 86 06 d2  	fcvt.d.w	fa3, a3
80003544: b3 b6 af 02  	mulhu	a3, t6, a0
80003548: 93 d6 36 00  	srli	a3, a3, 3
8000354c: b3 86 d6 03  	mul	a3, a3, t4
80003550: b3 86 df 40  	sub	a3, t6, a3
80003554: 53 87 06 d2  	fcvt.d.w	fa4, a3
80003558: b3 36 a9 02  	mulhu	a3, s2, a0
8000355c: 93 d6 36 00  	srli	a3, a3, 3
80003560: b3 86 d6 03  	mul	a3, a3, t4
80003564: b3 06 d9 40  	sub	a3, s2, a3
80003568: d3 87 06 d2  	fcvt.d.w	fa5, a3
8000356c: b3 b6 a9 02  	mulhu	a3, s3, a0
80003570: 93 d6 36 00  	srli	a3, a3, 3
80003574: b3 86 d6 03  	mul	a3, a3, t4
80003578: b3 86 d9 40  	sub	a3, s3, a3
8000357c: 53 88 06 d2  	fcvt.d.w	fa6, a3
80003580: b3 36 aa 02  	mulhu	a3, s4, a0
80003584: 93 d6 36 00  	srli	a3, a3, 3
80003588: b3 86 d6 03  	mul	a3, a3, t4
8000358c: b3 06 da 40  	sub	a3, s4, a3
80003590: d3 88 06 d2  	fcvt.d.w	fa7, a3
80003594: b3 b6 aa 02  	mulhu	a3, s5, a0
80003598: 93 d6 36 00  	srli	a3, a3, 3
8000359c: b3 86 d6 03  	mul	a3, a3, t4
800035a0: b3 86 da 40  	sub	a3, s5, a3
800035a4: 53 8e 06 d2  	fcvt.d.w	ft8, a3
800035a8: b3 36 ab 02  	mulhu	a3, s6, a0
800035ac: 93 d6 36 00  	srli	a3, a3, 3
800035b0: b3 86 d6 03  	mul	a3, a3, t4
800035b4: b3 06 db 40  	sub	a3, s6, a3
800035b8: d3 8e 06 d2  	fcvt.d.w	ft9, a3
800035bc: b3 b6 ab 02  	mulhu	a3, s7, a0
800035c0: 93 d6 36 00  	srli	a3, a3, 3
800035c4: b3 86 d6 03  	mul	a3, a3, t4
800035c8: b3 86 db 40  	sub	a3, s7, a3
800035cc: 53 8f 06 d2  	fcvt.d.w	ft10, a3
800035d0: b3 36 ac 02  	mulhu	a3, s8, a0
800035d4: 93 d6 36 00  	srli	a3, a3, 3
800035d8: b3 86 d6 03  	mul	a3, a3, t4
800035dc: b3 06 dc 40  	sub	a3, s8, a3
800035e0: d3 8f 06 d2  	fcvt.d.w	ft11, a3
800035e4: b3 b6 ac 02  	mulhu	a3, s9, a0
800035e8: 93 d6 36 00  	srli	a3, a3, 3
800035ec: b3 86 d6 03  	mul	a3, a3, t4
800035f0: b3 86 dc 40  	sub	a3, s9, a3
800035f4: 53 84 06 d2  	fcvt.d.w	fs0, a3
800035f8: b3 36 ad 02  	mulhu	a3, s10, a0
800035fc: 93 d6 36 00  	srli	a3, a3, 3
80003600: b3 86 d6 03  	mul	a3, a3, t4
80003604: b3 06 dd 40  	sub	a3, s10, a3
80003608: d3 84 06 d2  	fcvt.d.w	fs1, a3
8000360c: b3 b6 a0 02  	mulhu	a3, ra, a0
80003610: 93 d6 36 00  	srli	a3, a3, 3
80003614: b3 86 d6 03  	mul	a3, a3, t4
80003618: b3 86 d0 40  	sub	a3, ra, a3
8000361c: 53 89 06 d2  	fcvt.d.w	fs2, a3
80003620: b3 36 a8 02  	mulhu	a3, a6, a0
80003624: 93 d6 36 00  	srli	a3, a3, 3
80003628: b3 86 d6 03  	mul	a3, a3, t4
8000362c: b3 06 d8 40  	sub	a3, a6, a3
80003630: d3 89 06 d2  	fcvt.d.w	fs3, a3
80003634: b3 b6 a8 02  	mulhu	a3, a7, a0
80003638: 93 d6 36 00  	srli	a3, a3, 3
8000363c: b3 86 d6 03  	mul	a3, a3, t4
80003640: b3 86 d8 40  	sub	a3, a7, a3
80003644: 53 8a 06 d2  	fcvt.d.w	fs4, a3
80003648: b3 b6 a2 02  	mulhu	a3, t0, a0
8000364c: 93 d6 36 00  	srli	a3, a3, 3
80003650: b3 86 d6 03  	mul	a3, a3, t4
80003654: b3 86 d2 40  	sub	a3, t0, a3
80003658: d3 8a 06 d2  	fcvt.d.w	fs5, a3
8000365c: b3 36 a3 02  	mulhu	a3, t1, a0
80003660: 93 d6 36 00  	srli	a3, a3, 3
80003664: b3 86 d6 03  	mul	a3, a3, t4
80003668: b3 06 d3 40  	sub	a3, t1, a3
8000366c: 53 8b 06 d2  	fcvt.d.w	fs6, a3
80003670: b3 b6 a3 02  	mulhu	a3, t2, a0
80003674: 93 d6 36 00  	srli	a3, a3, 3
80003678: b3 86 d6 03  	mul	a3, a3, t4
8000367c: b3 86 d3 40  	sub	a3, t2, a3
80003680: d3 8b 06 d2  	fcvt.d.w	fs7, a3
80003684: b3 36 ae 02  	mulhu	a3, t3, a0
80003688: 93 d6 36 00  	srli	a3, a3, 3
8000368c: 13 86 05 00  	mv	a2, a1
80003690: 93 05 04 00  	mv	a1, s0
80003694: 13 84 04 00  	mv	s0, s1
80003698: 93 84 07 00  	mv	s1, a5
8000369c: 93 07 07 00  	mv	a5, a4
800036a0: 13 07 70 fe  	addi	a4, zero, -25
800036a4: b3 86 e6 02  	mul	a3, a3, a4
800036a8: 13 87 07 00  	mv	a4, a5
800036ac: 93 87 04 00  	mv	a5, s1
800036b0: 93 04 04 00  	mv	s1, s0
800036b4: 13 84 05 00  	mv	s0, a1
800036b8: 93 05 06 00  	mv	a1, a2
800036bc: b3 06 de 00  	add	a3, t3, a3
800036c0: 53 8c 06 d2  	fcvt.d.w	fs8, a3
800036c4: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800036c8: 53 80 52 22  	fmv.d	ft0, ft5
800036cc: d3 72 33 12  	fmul.d	ft5, ft6, ft3
800036d0: 53 80 52 22  	fmv.d	ft0, ft5
800036d4: d3 f2 33 12  	fmul.d	ft5, ft7, ft3
800036d8: 53 80 52 22  	fmv.d	ft0, ft5
800036dc: d3 72 35 12  	fmul.d	ft5, fa0, ft3
800036e0: 53 80 52 22  	fmv.d	ft0, ft5
800036e4: d3 f2 35 12  	fmul.d	ft5, fa1, ft3
800036e8: 53 80 52 22  	fmv.d	ft0, ft5
800036ec: d3 72 36 12  	fmul.d	ft5, fa2, ft3
800036f0: 53 80 52 22  	fmv.d	ft0, ft5
800036f4: d3 f2 36 12  	fmul.d	ft5, fa3, ft3
800036f8: 53 80 52 22  	fmv.d	ft0, ft5
800036fc: d3 72 37 12  	fmul.d	ft5, fa4, ft3
80003700: 53 80 52 22  	fmv.d	ft0, ft5
80003704: d3 f2 37 12  	fmul.d	ft5, fa5, ft3
80003708: 53 80 52 22  	fmv.d	ft0, ft5
8000370c: d3 72 38 12  	fmul.d	ft5, fa6, ft3
80003710: 53 80 52 22  	fmv.d	ft0, ft5
80003714: d3 f2 38 12  	fmul.d	ft5, fa7, ft3
80003718: 53 80 52 22  	fmv.d	ft0, ft5
8000371c: d3 72 3e 12  	fmul.d	ft5, ft8, ft3
80003720: 53 80 52 22  	fmv.d	ft0, ft5
80003724: d3 f2 3e 12  	fmul.d	ft5, ft9, ft3
80003728: 53 80 52 22  	fmv.d	ft0, ft5
8000372c: d3 72 3f 12  	fmul.d	ft5, ft10, ft3
80003730: 53 80 52 22  	fmv.d	ft0, ft5
80003734: d3 f2 3f 12  	fmul.d	ft5, ft11, ft3
80003738: 53 80 52 22  	fmv.d	ft0, ft5
8000373c: d3 72 34 12  	fmul.d	ft5, fs0, ft3
80003740: 53 80 52 22  	fmv.d	ft0, ft5
80003744: d3 f2 34 12  	fmul.d	ft5, fs1, ft3
80003748: 53 80 52 22  	fmv.d	ft0, ft5
8000374c: d3 72 39 12  	fmul.d	ft5, fs2, ft3
80003750: 53 80 52 22  	fmv.d	ft0, ft5
80003754: d3 f2 39 12  	fmul.d	ft5, fs3, ft3
80003758: 53 80 52 22  	fmv.d	ft0, ft5
8000375c: d3 72 3a 12  	fmul.d	ft5, fs4, ft3
80003760: 53 80 52 22  	fmv.d	ft0, ft5
80003764: d3 f2 3a 12  	fmul.d	ft5, fs5, ft3
80003768: 53 80 52 22  	fmv.d	ft0, ft5
8000376c: d3 72 3b 12  	fmul.d	ft5, fs6, ft3
80003770: 53 80 52 22  	fmv.d	ft0, ft5
80003774: d3 f2 3b 12  	fmul.d	ft5, fs7, ft3
80003778: 53 80 52 22  	fmv.d	ft0, ft5
8000377c: 53 00 42 22  	fmv.d	ft0, ft4
80003780: d3 72 3c 12  	fmul.d	ft5, fs8, ft3
80003784: 53 80 52 22  	fmv.d	ft0, ft5
;     for (i = 0; i < nk; i++)
80003788: 13 0e ae 01  	addi	t3, t3, 26
8000378c: 93 83 83 01  	addi	t2, t2, 24
80003790: 13 03 73 01  	addi	t1, t1, 23
80003794: 93 82 62 01  	addi	t0, t0, 22
80003798: 93 88 58 01  	addi	a7, a7, 21
8000379c: 13 08 48 01  	addi	a6, a6, 20
800037a0: 93 80 30 01  	addi	ra, ra, 19
800037a4: 13 0d 2d 01  	addi	s10, s10, 18
800037a8: 93 8c 1c 01  	addi	s9, s9, 17
800037ac: 13 0c 0c 01  	addi	s8, s8, 16
800037b0: 93 8b fb 00  	addi	s7, s7, 15
800037b4: 13 0b eb 00  	addi	s6, s6, 14
800037b8: 93 8a da 00  	addi	s5, s5, 13
800037bc: 13 0a ca 00  	addi	s4, s4, 12
800037c0: 93 89 b9 00  	addi	s3, s3, 11
800037c4: 13 09 a9 00  	addi	s2, s2, 10
800037c8: 93 8f 9f 00  	addi	t6, t6, 9
800037cc: 13 0f 8f 00  	addi	t5, t5, 8
800037d0: 93 8d 7d 00  	addi	s11, s11, 7
800037d4: 23 26 b1 0b  	sw	s11, 172(sp)
800037d8: 93 05 66 00  	addi	a1, a2, 6
800037dc: 13 04 54 00  	addi	s0, s0, 5
800037e0: 93 84 44 00  	addi	s1, s1, 4
800037e4: 93 87 37 00  	addi	a5, a5, 3
800037e8: 13 07 27 00  	addi	a4, a4, 2
800037ec: 13 06 c0 30  	addi	a2, zero, 780
800037f0: e3 12 ce cc  	bne	t3, a2, 0x800034b4 <.LBB0_179+0x14>
800037f4: 73 f5 00 7c  	csrrci	a0, 1984, 1
800037f8: 6f 00 00 45  	j	0x80003c48 <.LBB0_180+0x3e0>
800037fc: 23 24 01 0a  	sw	zero, 168(sp)
80003800: 23 22 01 0a  	sw	zero, 164(sp)
80003804: 23 20 01 0a  	sw	zero, 160(sp)
80003808: 23 2e 01 08  	sw	zero, 156(sp)
8000380c: 23 2c 01 08  	sw	zero, 152(sp)
80003810: 23 2a 01 08  	sw	zero, 148(sp)
80003814: 13 0f 00 00  	mv	t5, zero
80003818: 93 0f 00 00  	mv	t6, zero
8000381c: 13 09 00 00  	mv	s2, zero
80003820: 93 09 00 00  	mv	s3, zero
80003824: 13 0a 00 00  	mv	s4, zero
80003828: 93 0a 00 00  	mv	s5, zero
8000382c: 13 0b 00 00  	mv	s6, zero
80003830: 13 08 00 00  	mv	a6, zero
80003834: 93 0b 00 00  	mv	s7, zero
80003838: 13 0c 00 00  	mv	s8, zero
8000383c: 93 0c 00 00  	mv	s9, zero
80003840: 13 0d 00 00  	mv	s10, zero
80003844: 93 0d 00 00  	mv	s11, zero
80003848: 93 08 00 00  	mv	a7, zero
8000384c: 93 02 00 00  	mv	t0, zero
80003850: 93 03 00 00  	mv	t2, zero
80003854: 93 06 00 00  	mv	a3, zero
80003858: 13 0e 00 00  	mv	t3, zero
;     for (i = 0; i < nk; i++)
8000385c: 13 85 00 06  	addi	a0, ra, 96
80003860: b7 85 eb 51  	lui	a1, 335544
80003864: 93 85 f5 51  	addi	a1, a1, 1311

80003868 <.LBB0_180>:
80003868: 17 46 00 00  	auipc	a2, 4
8000386c: 13 06 86 be  	addi	a2, a2, -1048
80003870: 87 31 06 00  	fld	ft3, 0(a2)
80003874: 93 0e 90 01  	addi	t4, zero, 25
80003878: 23 26 d1 0a  	sw	a3, 172(sp)
;             B[i][j] = (double) (i*(j+2) % nj) / nj;
8000387c: 03 26 c1 0a  	lw	a2, 172(sp)
80003880: b3 36 b6 02  	mulhu	a3, a2, a1
80003884: 93 d6 36 00  	srli	a3, a3, 3
80003888: b3 86 d6 03  	mul	a3, a3, t4
8000388c: 03 26 c1 0a  	lw	a2, 172(sp)
80003890: b3 00 d6 40  	sub	ra, a2, a3
80003894: 53 82 00 d2  	fcvt.d.w	ft4, ra
80003898: b3 b6 b3 02  	mulhu	a3, t2, a1
8000389c: 93 d6 36 00  	srli	a3, a3, 3
800038a0: b3 86 d6 03  	mul	a3, a3, t4
800038a4: b3 86 d3 40  	sub	a3, t2, a3
800038a8: d3 82 06 d2  	fcvt.d.w	ft5, a3
800038ac: b3 b6 b2 02  	mulhu	a3, t0, a1
800038b0: 93 d6 36 00  	srli	a3, a3, 3
800038b4: b3 86 d6 03  	mul	a3, a3, t4
800038b8: b3 86 d2 40  	sub	a3, t0, a3
800038bc: 53 83 06 d2  	fcvt.d.w	ft6, a3
800038c0: b3 b6 bd 02  	mulhu	a3, s11, a1
800038c4: 93 d6 36 00  	srli	a3, a3, 3
800038c8: b3 86 d6 03  	mul	a3, a3, t4
800038cc: b3 86 dd 40  	sub	a3, s11, a3
800038d0: d3 83 06 d2  	fcvt.d.w	ft7, a3
800038d4: b3 b6 bc 02  	mulhu	a3, s9, a1
800038d8: 93 d6 36 00  	srli	a3, a3, 3
800038dc: b3 86 d6 03  	mul	a3, a3, t4
800038e0: b3 86 dc 40  	sub	a3, s9, a3
800038e4: 53 85 06 d2  	fcvt.d.w	fa0, a3
800038e8: b3 b6 bb 02  	mulhu	a3, s7, a1
800038ec: 93 d6 36 00  	srli	a3, a3, 3
800038f0: b3 86 d6 03  	mul	a3, a3, t4
800038f4: b3 86 db 40  	sub	a3, s7, a3
800038f8: d3 85 06 d2  	fcvt.d.w	fa1, a3
800038fc: b3 36 bb 02  	mulhu	a3, s6, a1
80003900: 93 d6 36 00  	srli	a3, a3, 3
80003904: b3 86 d6 03  	mul	a3, a3, t4
80003908: b3 06 db 40  	sub	a3, s6, a3
8000390c: 53 86 06 d2  	fcvt.d.w	fa2, a3
80003910: b3 36 ba 02  	mulhu	a3, s4, a1
80003914: 93 d6 36 00  	srli	a3, a3, 3
80003918: b3 86 d6 03  	mul	a3, a3, t4
8000391c: b3 06 da 40  	sub	a3, s4, a3
80003920: d3 86 06 d2  	fcvt.d.w	fa3, a3
80003924: b3 36 b9 02  	mulhu	a3, s2, a1
80003928: 93 d6 36 00  	srli	a3, a3, 3
8000392c: b3 86 d6 03  	mul	a3, a3, t4
80003930: b3 06 d9 40  	sub	a3, s2, a3
80003934: 53 87 06 d2  	fcvt.d.w	fa4, a3
80003938: b3 36 bf 02  	mulhu	a3, t5, a1
8000393c: 93 d6 36 00  	srli	a3, a3, 3
80003940: b3 86 d6 03  	mul	a3, a3, t4
80003944: b3 06 df 40  	sub	a3, t5, a3
80003948: d3 87 06 d2  	fcvt.d.w	fa5, a3
8000394c: 83 20 81 09  	lw	ra, 152(sp)
80003950: b3 b6 b0 02  	mulhu	a3, ra, a1
80003954: 93 d6 36 00  	srli	a3, a3, 3
80003958: b3 86 d6 03  	mul	a3, a3, t4
8000395c: b3 86 d0 40  	sub	a3, ra, a3
80003960: 53 88 06 d2  	fcvt.d.w	fa6, a3
80003964: 83 24 01 0a  	lw	s1, 160(sp)
80003968: b3 b6 b4 02  	mulhu	a3, s1, a1
8000396c: 93 d6 36 00  	srli	a3, a3, 3
80003970: b3 86 d6 03  	mul	a3, a3, t4
80003974: b3 86 d4 40  	sub	a3, s1, a3
80003978: d3 88 06 d2  	fcvt.d.w	fa7, a3
8000397c: 03 27 81 0a  	lw	a4, 168(sp)
80003980: b3 36 b7 02  	mulhu	a3, a4, a1
80003984: 93 d6 36 00  	srli	a3, a3, 3
80003988: b3 86 d6 03  	mul	a3, a3, t4
8000398c: b3 06 d7 40  	sub	a3, a4, a3
80003990: 53 8e 06 d2  	fcvt.d.w	ft8, a3
80003994: 83 27 41 0a  	lw	a5, 164(sp)
80003998: b3 b6 b7 02  	mulhu	a3, a5, a1
8000399c: 93 d6 36 00  	srli	a3, a3, 3
800039a0: b3 86 d6 03  	mul	a3, a3, t4
800039a4: b3 86 d7 40  	sub	a3, a5, a3
800039a8: d3 8e 06 d2  	fcvt.d.w	ft9, a3
800039ac: 03 24 c1 09  	lw	s0, 156(sp)
800039b0: b3 36 b4 02  	mulhu	a3, s0, a1
800039b4: 93 d6 36 00  	srli	a3, a3, 3
800039b8: b3 86 d6 03  	mul	a3, a3, t4
800039bc: b3 06 d4 40  	sub	a3, s0, a3
800039c0: 53 8f 06 d2  	fcvt.d.w	ft10, a3
800039c4: 03 26 41 09  	lw	a2, 148(sp)
800039c8: b3 36 b6 02  	mulhu	a3, a2, a1
800039cc: 93 d6 36 00  	srli	a3, a3, 3
800039d0: b3 86 d6 03  	mul	a3, a3, t4
800039d4: b3 06 d6 40  	sub	a3, a2, a3
800039d8: d3 8f 06 d2  	fcvt.d.w	ft11, a3
800039dc: b3 b6 bf 02  	mulhu	a3, t6, a1
800039e0: 93 d6 36 00  	srli	a3, a3, 3
800039e4: b3 86 d6 03  	mul	a3, a3, t4
800039e8: b3 86 df 40  	sub	a3, t6, a3
800039ec: 53 84 06 d2  	fcvt.d.w	fs0, a3
800039f0: b3 b6 b9 02  	mulhu	a3, s3, a1
800039f4: 93 d6 36 00  	srli	a3, a3, 3
800039f8: b3 86 d6 03  	mul	a3, a3, t4
800039fc: b3 86 d9 40  	sub	a3, s3, a3
80003a00: d3 84 06 d2  	fcvt.d.w	fs1, a3
80003a04: b3 b6 ba 02  	mulhu	a3, s5, a1
80003a08: 93 d6 36 00  	srli	a3, a3, 3
80003a0c: b3 86 d6 03  	mul	a3, a3, t4
80003a10: b3 86 da 40  	sub	a3, s5, a3
80003a14: 53 89 06 d2  	fcvt.d.w	fs2, a3
80003a18: b3 36 b8 02  	mulhu	a3, a6, a1
80003a1c: 93 d6 36 00  	srli	a3, a3, 3
80003a20: b3 86 d6 03  	mul	a3, a3, t4
80003a24: b3 06 d8 40  	sub	a3, a6, a3
80003a28: d3 89 06 d2  	fcvt.d.w	fs3, a3
80003a2c: b3 36 bc 02  	mulhu	a3, s8, a1
80003a30: 93 d6 36 00  	srli	a3, a3, 3
80003a34: b3 86 d6 03  	mul	a3, a3, t4
80003a38: b3 06 dc 40  	sub	a3, s8, a3
80003a3c: 53 8a 06 d2  	fcvt.d.w	fs4, a3
80003a40: b3 36 bd 02  	mulhu	a3, s10, a1
80003a44: 93 d6 36 00  	srli	a3, a3, 3
80003a48: b3 86 d6 03  	mul	a3, a3, t4
80003a4c: b3 06 dd 40  	sub	a3, s10, a3
80003a50: d3 8a 06 d2  	fcvt.d.w	fs5, a3
80003a54: b3 b6 b8 02  	mulhu	a3, a7, a1
80003a58: 93 d6 36 00  	srli	a3, a3, 3
80003a5c: b3 86 d6 03  	mul	a3, a3, t4
80003a60: b3 86 d8 40  	sub	a3, a7, a3
80003a64: 53 8b 06 d2  	fcvt.d.w	fs6, a3
80003a68: b3 36 be 02  	mulhu	a3, t3, a1
80003a6c: 93 d6 36 00  	srli	a3, a3, 3
80003a70: 13 83 02 00  	mv	t1, t0
80003a74: 93 82 08 00  	mv	t0, a7
80003a78: 93 88 0d 00  	mv	a7, s11
80003a7c: 93 0d 0d 00  	mv	s11, s10
80003a80: 13 8d 0c 00  	mv	s10, s9
80003a84: 93 0c 0c 00  	mv	s9, s8
80003a88: 13 8c 0b 00  	mv	s8, s7
80003a8c: 93 0b 08 00  	mv	s7, a6
80003a90: 13 08 0b 00  	mv	a6, s6
80003a94: 13 8b 0a 00  	mv	s6, s5
80003a98: 93 0a 0a 00  	mv	s5, s4
80003a9c: 13 8a 09 00  	mv	s4, s3
80003aa0: 93 09 09 00  	mv	s3, s2
80003aa4: 13 89 0f 00  	mv	s2, t6
80003aa8: 93 0f 0f 00  	mv	t6, t5
80003aac: 13 0f 70 fe  	addi	t5, zero, -25
80003ab0: b3 86 e6 03  	mul	a3, a3, t5
80003ab4: 13 8f 0f 00  	mv	t5, t6
80003ab8: 93 0f 09 00  	mv	t6, s2
80003abc: 13 89 09 00  	mv	s2, s3
80003ac0: 93 09 0a 00  	mv	s3, s4
80003ac4: 13 8a 0a 00  	mv	s4, s5
80003ac8: 93 0a 0b 00  	mv	s5, s6
80003acc: 13 0b 08 00  	mv	s6, a6
80003ad0: 13 88 0b 00  	mv	a6, s7
80003ad4: 93 0b 0c 00  	mv	s7, s8
80003ad8: 13 8c 0c 00  	mv	s8, s9
80003adc: 93 0c 0d 00  	mv	s9, s10
80003ae0: 13 8d 0d 00  	mv	s10, s11
80003ae4: 93 8d 08 00  	mv	s11, a7
80003ae8: 93 88 02 00  	mv	a7, t0
80003aec: 93 02 03 00  	mv	t0, t1
80003af0: b3 06 de 00  	add	a3, t3, a3
80003af4: d3 8b 06 d2  	fcvt.d.w	fs7, a3
80003af8: 83 26 c1 0a  	lw	a3, 172(sp)
80003afc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003b00: 27 30 45 fa  	fsd	ft4, -96(a0)
80003b04: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80003b08: 27 34 45 fa  	fsd	ft4, -88(a0)
80003b0c: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80003b10: 27 38 45 fa  	fsd	ft4, -80(a0)
80003b14: 53 f2 33 12  	fmul.d	ft4, ft7, ft3
80003b18: 27 3c 45 fa  	fsd	ft4, -72(a0)
80003b1c: 53 72 35 12  	fmul.d	ft4, fa0, ft3
80003b20: 27 30 45 fc  	fsd	ft4, -64(a0)
80003b24: 53 f2 35 12  	fmul.d	ft4, fa1, ft3
80003b28: 27 34 45 fc  	fsd	ft4, -56(a0)
80003b2c: 53 72 36 12  	fmul.d	ft4, fa2, ft3
80003b30: 27 38 45 fc  	fsd	ft4, -48(a0)
80003b34: 53 f2 36 12  	fmul.d	ft4, fa3, ft3
80003b38: 27 3c 45 fc  	fsd	ft4, -40(a0)
80003b3c: 53 72 37 12  	fmul.d	ft4, fa4, ft3
80003b40: 27 30 45 fe  	fsd	ft4, -32(a0)
80003b44: 53 f2 37 12  	fmul.d	ft4, fa5, ft3
80003b48: 27 34 45 fe  	fsd	ft4, -24(a0)
80003b4c: 53 72 38 12  	fmul.d	ft4, fa6, ft3
80003b50: 27 38 45 fe  	fsd	ft4, -16(a0)
80003b54: 53 f2 38 12  	fmul.d	ft4, fa7, ft3
80003b58: 27 3c 45 fe  	fsd	ft4, -8(a0)
80003b5c: 53 72 3e 12  	fmul.d	ft4, ft8, ft3
80003b60: 27 30 45 00  	fsd	ft4, 0(a0)
80003b64: 53 f2 3e 12  	fmul.d	ft4, ft9, ft3
80003b68: 27 34 45 00  	fsd	ft4, 8(a0)
80003b6c: 53 72 3f 12  	fmul.d	ft4, ft10, ft3
80003b70: 27 38 45 00  	fsd	ft4, 16(a0)
80003b74: 53 f2 3f 12  	fmul.d	ft4, ft11, ft3
80003b78: 27 3c 45 00  	fsd	ft4, 24(a0)
80003b7c: 53 72 34 12  	fmul.d	ft4, fs0, ft3
80003b80: 27 30 45 02  	fsd	ft4, 32(a0)
80003b84: 53 f2 34 12  	fmul.d	ft4, fs1, ft3
80003b88: 27 34 45 02  	fsd	ft4, 40(a0)
80003b8c: 53 72 39 12  	fmul.d	ft4, fs2, ft3
80003b90: 27 38 45 02  	fsd	ft4, 48(a0)
80003b94: 53 f2 39 12  	fmul.d	ft4, fs3, ft3
80003b98: 27 3c 45 02  	fsd	ft4, 56(a0)
80003b9c: 53 72 3a 12  	fmul.d	ft4, fs4, ft3
80003ba0: 27 30 45 04  	fsd	ft4, 64(a0)
80003ba4: 53 f2 3a 12  	fmul.d	ft4, fs5, ft3
80003ba8: 27 34 45 04  	fsd	ft4, 72(a0)
80003bac: 53 72 3b 12  	fmul.d	ft4, fs6, ft3
80003bb0: 27 38 45 04  	fsd	ft4, 80(a0)
80003bb4: 23 2e 05 04  	sw	zero, 92(a0)
80003bb8: 23 2c 05 04  	sw	zero, 88(a0)
80003bbc: 53 f2 3b 12  	fmul.d	ft4, fs7, ft3
80003bc0: 27 30 45 06  	fsd	ft4, 96(a0)
;     for (i = 0; i < nk; i++)
80003bc4: 13 0e ae 01  	addi	t3, t3, 26
80003bc8: 93 86 26 00  	addi	a3, a3, 2
80003bcc: 93 83 33 00  	addi	t2, t2, 3
80003bd0: 93 02 43 00  	addi	t0, t1, 4
80003bd4: 93 88 88 01  	addi	a7, a7, 24
80003bd8: 93 8d 5d 00  	addi	s11, s11, 5
80003bdc: 13 0d 7d 01  	addi	s10, s10, 23
80003be0: 93 8c 6c 00  	addi	s9, s9, 6
80003be4: 13 0c 6c 01  	addi	s8, s8, 22
80003be8: 93 8b 7b 00  	addi	s7, s7, 7
80003bec: 13 08 58 01  	addi	a6, a6, 21
80003bf0: 13 0b 8b 00  	addi	s6, s6, 8
80003bf4: 93 8a 4a 01  	addi	s5, s5, 20
80003bf8: 13 0a 9a 00  	addi	s4, s4, 9
80003bfc: 93 89 39 01  	addi	s3, s3, 19
80003c00: 13 09 a9 00  	addi	s2, s2, 10
80003c04: 93 8f 2f 01  	addi	t6, t6, 18
80003c08: 13 0f bf 00  	addi	t5, t5, 11
80003c0c: 13 06 16 01  	addi	a2, a2, 17
80003c10: 23 2a c1 08  	sw	a2, 148(sp)
80003c14: 93 80 c0 00  	addi	ra, ra, 12
80003c18: 23 2c 11 08  	sw	ra, 152(sp)
80003c1c: 13 04 04 01  	addi	s0, s0, 16
80003c20: 23 2e 81 08  	sw	s0, 156(sp)
80003c24: 93 84 d4 00  	addi	s1, s1, 13
80003c28: 23 20 91 0a  	sw	s1, 160(sp)
80003c2c: 93 87 f7 00  	addi	a5, a5, 15
80003c30: 23 22 f1 0a  	sw	a5, 164(sp)
80003c34: 13 05 85 0c  	addi	a0, a0, 200
80003c38: 13 07 e7 00  	addi	a4, a4, 14
80003c3c: 23 24 e1 0a  	sw	a4, 168(sp)
80003c40: 13 06 c0 30  	addi	a2, zero, 780
80003c44: e3 1a ce c2  	bne	t3, a2, 0x80003878 <.LBB0_180+0x10>
80003c48: b7 16 00 00  	lui	a3, 1
80003c4c: 13 85 86 ed  	addi	a0, a3, -296
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80003c50: f3 25 00 b0  	csrr	a1, mcycle
80003c54: 23 2e b1 08  	sw	a1, 156(sp)
80003c58: 83 24 01 01  	lw	s1, 16(sp)
;     for (i = 0; i < ni; i++) {
80003c5c: 33 86 a4 00  	add	a2, s1, a0
80003c60: 33 37 96 00  	sltu	a4, a2, s1
80003c64: 93 08 06 3e  	addi	a7, a2, 992
80003c68: 33 b6 c8 00  	sltu	a2, a7, a2
80003c6c: 33 08 c7 00  	add	a6, a4, a2
80003c70: 93 85 86 76  	addi	a1, a3, 1896
80003c74: 03 24 01 09  	lw	s0, 144(sp)
80003c78: 33 07 a4 00  	add	a4, s0, a0
80003c7c: b3 37 87 00  	sltu	a5, a4, s0
80003c80: 93 06 07 0c  	addi	a3, a4, 192
80003c84: 33 b7 e6 00  	sltu	a4, a3, a4
80003c88: 33 87 e7 00  	add	a4, a5, a4
80003c8c: 63 06 08 00  	beqz	a6, 0x80003c98 <.LBB0_180+0x430>
80003c90: 93 07 00 00  	mv	a5, zero
80003c94: 6f 00 80 00  	j	0x80003c9c <.LBB0_180+0x434>
80003c98: b3 b7 88 00  	sltu	a5, a7, s0
80003c9c: 03 23 c1 00  	lw	t1, 12(sp)
80003ca0: 83 22 41 01  	lw	t0, 20(sp)
;     for (i = 0; i < ni; i++) {
80003ca4: b3 05 b3 00  	add	a1, t1, a1
80003ca8: 63 00 07 02  	beqz	a4, 0x80003cc8 <.LBB0_180+0x460>
80003cac: 13 06 00 00  	mv	a2, zero
80003cb0: 63 e0 65 02  	bltu	a1, t1, 0x80003cd0 <.LBB0_180+0x468>
80003cb4: b3 b5 85 00  	sltu	a1, a1, s0
;     for (i = 0; i < ni; i++) {
80003cb8: b3 67 f6 00  	or	a5, a2, a5
80003cbc: 63 10 07 02  	bnez	a4, 0x80003cdc <.LBB0_180+0x474>
80003cc0: b3 b6 66 00  	sltu	a3, a3, t1
80003cc4: 6f 00 c0 01  	j	0x80003ce0 <.LBB0_180+0x478>
80003cc8: 33 b6 96 00  	sltu	a2, a3, s1
;     for (i = 0; i < ni; i++) {
80003ccc: e3 f4 65 fe  	bgeu	a1, t1, 0x80003cb4 <.LBB0_180+0x44c>
80003cd0: 93 05 00 00  	mv	a1, zero
80003cd4: b3 67 f6 00  	or	a5, a2, a5
80003cd8: e3 04 07 fe  	beqz	a4, 0x80003cc0 <.LBB0_180+0x458>
80003cdc: 93 06 00 00  	mv	a3, zero
80003ce0: b3 e6 b6 00  	or	a3, a3, a1
80003ce4: b3 f6 d7 00  	and	a3, a5, a3
80003ce8: b3 f6 d2 00  	and	a3, t0, a3
80003cec: 83 25 c1 08  	lw	a1, 140(sp)
80003cf0: b3 f6 d5 00  	and	a3, a1, a3
80003cf4: 63 80 06 46  	beqz	a3, 0x80004154 <.LBB0_182+0x3b4>
80003cf8: 93 02 00 00  	mv	t0, zero
80003cfc: 13 05 80 01  	addi	a0, zero, 24
;     for (i = 0; i < ni; i++) {
80003d00: 93 05 00 04  	addi	a1, zero, 64
80003d04: 13 06 00 0c  	addi	a2, zero, 192
80003d08: ab 20 b5 00  	scfgw	a0, a1
80003d0c: ab 20 c0 00  	scfgw	zero, a2
80003d10: 93 05 80 00  	addi	a1, zero, 8
80003d14: 13 06 d0 01  	addi	a2, zero, 29
80003d18: 93 06 00 06  	addi	a3, zero, 96
80003d1c: 13 07 00 0e  	addi	a4, zero, 224
80003d20: ab 20 d6 00  	scfgw	a2, a3
80003d24: ab a0 e5 00  	scfgw	a1, a4
80003d28: 93 06 30 01  	addi	a3, zero, 19
80003d2c: 13 07 00 08  	addi	a4, zero, 128
80003d30: ab a0 e6 00  	scfgw	a3, a4
80003d34: 13 07 00 10  	addi	a4, zero, 256
80003d38: ab a0 e5 00  	scfgw	a1, a4
80003d3c: 13 07 00 02  	addi	a4, zero, 32
80003d40: ab 20 e0 00  	scfgw	zero, a4
80003d44: 2b a0 04 34  	scfgwi	s1, 832
80003d48: 13 07 10 00  	addi	a4, zero, 1
80003d4c: 93 07 07 04  	addi	a5, a4, 64
80003d50: ab 20 f5 00  	scfgw	a0, a5
80003d54: 13 05 07 0c  	addi	a0, a4, 192
80003d58: ab a0 a5 00  	scfgw	a1, a0
80003d5c: 13 05 07 06  	addi	a0, a4, 96
80003d60: 93 07 07 0e  	addi	a5, a4, 224
80003d64: ab 20 a6 00  	scfgw	a2, a0
80003d68: ab a0 f5 00  	scfgw	a1, a5
80003d6c: 37 f5 ff ff  	lui	a0, 1048575
80003d70: 13 05 85 89  	addi	a0, a0, -1896
80003d74: 93 05 07 08  	addi	a1, a4, 128
80003d78: 13 06 07 10  	addi	a2, a4, 256
80003d7c: ab a0 b6 00  	scfgw	a3, a1
80003d80: ab 20 c5 00  	scfgw	a0, a2
80003d84: 13 05 07 02  	addi	a0, a4, 32
80003d88: ab 20 a0 00  	scfgw	zero, a0
80003d8c: 2b 20 13 34  	scfgwi	t1, 833
80003d90: 73 e5 00 7c  	csrrsi	a0, 1984, 1

80003d94 <.LBB0_181>:
80003d94: 17 35 00 00  	auipc	a0, 3
80003d98: 13 05 45 6c  	addi	a0, a0, 1732
80003d9c: 87 31 05 00  	fld	ft3, 0(a0)

80003da0 <.LBB0_182>:
80003da0: 97 38 00 00  	auipc	a7, 3
80003da4: 93 88 08 6c  	addi	a7, a7, 1728
;             C[i][j] *= beta;
80003da8: 13 05 80 0c  	addi	a0, zero, 200
80003dac: 33 85 a2 02  	mul	a0, t0, a0
80003db0: 33 07 a4 00  	add	a4, s0, a0
80003db4: 07 32 07 00  	fld	ft4, 0(a4)
80003db8: 87 32 87 00  	fld	ft5, 8(a4)
80003dbc: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003dc0: 27 30 47 00  	fsd	ft4, 0(a4)
80003dc4: 07 32 07 01  	fld	ft4, 16(a4)
80003dc8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003dcc: 27 34 57 00  	fsd	ft5, 8(a4)
80003dd0: 87 32 87 01  	fld	ft5, 24(a4)
80003dd4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003dd8: 27 38 47 00  	fsd	ft4, 16(a4)
80003ddc: 07 32 07 02  	fld	ft4, 32(a4)
80003de0: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003de4: 27 3c 57 00  	fsd	ft5, 24(a4)
80003de8: 87 32 87 02  	fld	ft5, 40(a4)
80003dec: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003df0: 27 30 47 02  	fsd	ft4, 32(a4)
80003df4: 07 32 07 03  	fld	ft4, 48(a4)
80003df8: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003dfc: 27 34 57 02  	fsd	ft5, 40(a4)
80003e00: 87 32 87 03  	fld	ft5, 56(a4)
80003e04: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e08: 27 38 47 02  	fsd	ft4, 48(a4)
80003e0c: 07 32 07 04  	fld	ft4, 64(a4)
80003e10: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e14: 27 3c 57 02  	fsd	ft5, 56(a4)
80003e18: 87 32 87 04  	fld	ft5, 72(a4)
80003e1c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e20: 27 30 47 04  	fsd	ft4, 64(a4)
80003e24: 07 32 07 05  	fld	ft4, 80(a4)
80003e28: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e2c: 27 34 57 04  	fsd	ft5, 72(a4)
80003e30: 87 32 87 05  	fld	ft5, 88(a4)
80003e34: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e38: 27 38 47 04  	fsd	ft4, 80(a4)
80003e3c: 07 32 07 06  	fld	ft4, 96(a4)
80003e40: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e44: 27 3c 57 04  	fsd	ft5, 88(a4)
80003e48: 87 32 87 06  	fld	ft5, 104(a4)
80003e4c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e50: 27 30 47 06  	fsd	ft4, 96(a4)
80003e54: 07 32 07 07  	fld	ft4, 112(a4)
80003e58: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
80003e5c: 27 34 57 06  	fsd	ft5, 104(a4)
80003e60: 87 32 87 07  	fld	ft5, 120(a4)
80003e64: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e68: 07 33 07 08  	fld	ft6, 128(a4)
80003e6c: 27 38 47 06  	fsd	ft4, 112(a4)
80003e70: 53 f2 32 12  	fmul.d	ft4, ft5, ft3
80003e74: 27 3c 47 06  	fsd	ft4, 120(a4)
80003e78: 53 72 33 12  	fmul.d	ft4, ft6, ft3
80003e7c: 27 30 47 08  	fsd	ft4, 128(a4)
80003e80: 07 32 87 08  	fld	ft4, 136(a4)
80003e84: 13 03 87 00  	addi	t1, a4, 8
80003e88: 93 03 07 01  	addi	t2, a4, 16
80003e8c: 13 0e 87 01  	addi	t3, a4, 24
80003e90: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003e94: 27 34 47 08  	fsd	ft4, 136(a4)
80003e98: 07 32 07 09  	fld	ft4, 144(a4)
80003e9c: 93 0e 07 02  	addi	t4, a4, 32
80003ea0: 13 0f 87 02  	addi	t5, a4, 40
80003ea4: 93 0f 07 03  	addi	t6, a4, 48
80003ea8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003eac: 27 38 47 08  	fsd	ft4, 144(a4)
80003eb0: 07 32 87 09  	fld	ft4, 152(a4)
80003eb4: 13 09 87 03  	addi	s2, a4, 56
80003eb8: 93 09 07 04  	addi	s3, a4, 64
80003ebc: 13 0a 87 04  	addi	s4, a4, 72
80003ec0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003ec4: 27 3c 47 08  	fsd	ft4, 152(a4)
80003ec8: 07 32 07 0a  	fld	ft4, 160(a4)
80003ecc: 93 0a 07 05  	addi	s5, a4, 80
80003ed0: 13 0b 87 05  	addi	s6, a4, 88
80003ed4: 93 0b 07 06  	addi	s7, a4, 96
80003ed8: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003edc: 27 30 47 0a  	fsd	ft4, 160(a4)
80003ee0: 07 32 87 0a  	fld	ft4, 168(a4)
80003ee4: 13 0c 87 06  	addi	s8, a4, 104
80003ee8: 93 0c 07 07  	addi	s9, a4, 112
80003eec: 13 0d 87 07  	addi	s10, a4, 120
80003ef0: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003ef4: 27 34 47 0a  	fsd	ft4, 168(a4)
80003ef8: 07 32 07 0b  	fld	ft4, 176(a4)
80003efc: 93 0d 07 08  	addi	s11, a4, 128
80003f00: 93 00 87 08  	addi	ra, a4, 136
80003f04: 13 04 07 09  	addi	s0, a4, 144
80003f08: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003f0c: 27 38 47 0a  	fsd	ft4, 176(a4)
80003f10: 07 32 87 0b  	fld	ft4, 184(a4)
80003f14: 13 06 87 09  	addi	a2, a4, 152
80003f18: 93 06 07 0a  	addi	a3, a4, 160
80003f1c: 93 05 87 0a  	addi	a1, a4, 168
80003f20: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003f24: 27 3c 47 0a  	fsd	ft4, 184(a4)
80003f28: 07 32 07 0c  	fld	ft4, 192(a4)
80003f2c: 13 05 07 0b  	addi	a0, a4, 176
80003f30: 93 07 87 0b  	addi	a5, a4, 184
80003f34: 93 04 07 0c  	addi	s1, a4, 192
80003f38: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80003f3c: 27 30 47 0c  	fsd	ft4, 192(a4)
80003f40: 13 08 e0 01  	addi	a6, zero, 30
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80003f44: d3 02 00 22  	fmv.d	ft5, ft0
80003f48: 07 b2 08 00  	fld	ft4, 0(a7)
80003f4c: 87 33 07 00  	fld	ft7, 0(a4)
80003f50: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003f54: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003f58: 27 30 57 00  	fsd	ft5, 0(a4)
80003f5c: d3 02 00 22  	fmv.d	ft5, ft0
80003f60: 87 33 03 00  	fld	ft7, 0(t1)
80003f64: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003f68: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003f6c: 27 30 53 00  	fsd	ft5, 0(t1)
80003f70: d3 02 00 22  	fmv.d	ft5, ft0
80003f74: 87 b3 03 00  	fld	ft7, 0(t2)
80003f78: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003f7c: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003f80: 27 b0 53 00  	fsd	ft5, 0(t2)
80003f84: d3 02 00 22  	fmv.d	ft5, ft0
80003f88: 87 33 0e 00  	fld	ft7, 0(t3)
80003f8c: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003f90: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003f94: 27 30 5e 00  	fsd	ft5, 0(t3)
80003f98: d3 02 00 22  	fmv.d	ft5, ft0
80003f9c: 87 b3 0e 00  	fld	ft7, 0(t4)
80003fa0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003fa4: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003fa8: 27 b0 5e 00  	fsd	ft5, 0(t4)
80003fac: d3 02 00 22  	fmv.d	ft5, ft0
80003fb0: 87 33 0f 00  	fld	ft7, 0(t5)
80003fb4: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003fb8: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003fbc: 27 30 5f 00  	fsd	ft5, 0(t5)
80003fc0: d3 02 00 22  	fmv.d	ft5, ft0
80003fc4: 87 b3 0f 00  	fld	ft7, 0(t6)
80003fc8: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003fcc: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003fd0: 27 b0 5f 00  	fsd	ft5, 0(t6)
80003fd4: d3 02 00 22  	fmv.d	ft5, ft0
80003fd8: 87 33 09 00  	fld	ft7, 0(s2)
80003fdc: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003fe0: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003fe4: 27 30 59 00  	fsd	ft5, 0(s2)
80003fe8: d3 02 00 22  	fmv.d	ft5, ft0
80003fec: 87 b3 09 00  	fld	ft7, 0(s3)
80003ff0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80003ff4: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80003ff8: 27 b0 59 00  	fsd	ft5, 0(s3)
80003ffc: d3 02 00 22  	fmv.d	ft5, ft0
80004000: 87 33 0a 00  	fld	ft7, 0(s4)
80004004: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004008: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
8000400c: 27 30 5a 00  	fsd	ft5, 0(s4)
80004010: d3 02 00 22  	fmv.d	ft5, ft0
80004014: 87 b3 0a 00  	fld	ft7, 0(s5)
80004018: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
8000401c: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004020: 27 b0 5a 00  	fsd	ft5, 0(s5)
80004024: d3 02 00 22  	fmv.d	ft5, ft0
80004028: 87 33 0b 00  	fld	ft7, 0(s6)
8000402c: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004030: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004034: 27 30 5b 00  	fsd	ft5, 0(s6)
80004038: d3 02 00 22  	fmv.d	ft5, ft0
8000403c: 87 b3 0b 00  	fld	ft7, 0(s7)
80004040: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004044: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004048: 27 b0 5b 00  	fsd	ft5, 0(s7)
8000404c: d3 02 00 22  	fmv.d	ft5, ft0
80004050: 87 33 0c 00  	fld	ft7, 0(s8)
80004054: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004058: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
8000405c: 27 30 5c 00  	fsd	ft5, 0(s8)
80004060: d3 02 00 22  	fmv.d	ft5, ft0
80004064: 87 b3 0c 00  	fld	ft7, 0(s9)
80004068: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
8000406c: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004070: 27 b0 5c 00  	fsd	ft5, 0(s9)
80004074: d3 02 00 22  	fmv.d	ft5, ft0
80004078: 87 33 0d 00  	fld	ft7, 0(s10)
8000407c: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004080: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004084: 27 30 5d 00  	fsd	ft5, 0(s10)
80004088: d3 02 00 22  	fmv.d	ft5, ft0
8000408c: 87 b3 0d 00  	fld	ft7, 0(s11)
80004090: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004094: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004098: 27 b0 5d 00  	fsd	ft5, 0(s11)
8000409c: d3 02 00 22  	fmv.d	ft5, ft0
800040a0: 87 b3 00 00  	fld	ft7, 0(ra)
800040a4: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
800040a8: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
800040ac: 27 b0 50 00  	fsd	ft5, 0(ra)
800040b0: d3 02 00 22  	fmv.d	ft5, ft0
800040b4: 87 33 04 00  	fld	ft7, 0(s0)
800040b8: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
800040bc: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
800040c0: 27 30 54 00  	fsd	ft5, 0(s0)
800040c4: d3 02 00 22  	fmv.d	ft5, ft0
800040c8: 87 33 06 00  	fld	ft7, 0(a2)
800040cc: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
800040d0: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
800040d4: 27 30 56 00  	fsd	ft5, 0(a2)
800040d8: d3 02 00 22  	fmv.d	ft5, ft0
800040dc: 87 b3 06 00  	fld	ft7, 0(a3)
800040e0: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
800040e4: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
800040e8: 27 b0 56 00  	fsd	ft5, 0(a3)
800040ec: d3 02 00 22  	fmv.d	ft5, ft0
800040f0: 87 b3 05 00  	fld	ft7, 0(a1)
800040f4: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
800040f8: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
800040fc: 27 b0 55 00  	fsd	ft5, 0(a1)
80004100: d3 02 00 22  	fmv.d	ft5, ft0
80004104: 87 33 05 00  	fld	ft7, 0(a0)
80004108: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
8000410c: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004110: 27 30 55 00  	fsd	ft5, 0(a0)
80004114: d3 02 00 22  	fmv.d	ft5, ft0
80004118: 87 b3 07 00  	fld	ft7, 0(a5)
8000411c: d3 f2 42 12  	fmul.d	ft5, ft5, ft4
80004120: c3 f2 12 3a  	fmadd.d	ft5, ft5, ft1, ft7
80004124: 27 b0 57 00  	fsd	ft5, 0(a5)
80004128: 87 b3 04 00  	fld	ft7, 0(s1)
8000412c: 53 72 40 12  	fmul.d	ft4, ft0, ft4
80004130: 43 72 12 3a  	fmadd.d	ft4, ft4, ft1, ft7
;         for (k = 0; k < nk; k++) {
80004134: 13 08 f8 ff  	addi	a6, a6, -1
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004138: 27 b0 44 00  	fsd	ft4, 0(s1)
;         for (k = 0; k < nk; k++) {
8000413c: e3 14 08 e0  	bnez	a6, 0x80003f44 <.LBB0_182+0x1a4>
;     for (i = 0; i < ni; i++) {
80004140: 93 82 12 00  	addi	t0, t0, 1
80004144: 03 24 01 09  	lw	s0, 144(sp)
;     for (i = 0; i < ni; i++) {
80004148: 13 05 40 01  	addi	a0, zero, 20
8000414c: e3 9e a2 c4  	bne	t0, a0, 0x80003da8 <.LBB0_182+0x8>
80004150: 6f 00 c0 57  	j	0x800046cc <.LBB0_184+0x264>
;     for (i = 0; i < ni; i++) {
80004154: 93 03 03 06  	addi	t2, t1, 96
80004158: b3 07 75 00  	add	a5, a0, t2
8000415c: 33 b7 a7 00  	sltu	a4, a5, a0
80004160: 93 86 07 7d  	addi	a3, a5, 2000
80004164: b3 b5 f6 00  	sltu	a1, a3, a5
80004168: 13 06 04 06  	addi	a2, s0, 96
8000416c: b3 07 a6 00  	add	a5, a2, a0
80004170: 63 0c 08 00  	beqz	a6, 0x80004188 <.LBB0_182+0x3e8>
80004174: 13 08 00 00  	mv	a6, zero
80004178: b3 05 b7 00  	add	a1, a4, a1
8000417c: 63 ec c7 00  	bltu	a5, a2, 0x80004194 <.LBB0_182+0x3f4>
80004180: 33 b6 97 00  	sltu	a2, a5, s1
80004184: 6f 00 40 01  	j	0x80004198 <.LBB0_182+0x3f8>
80004188: 33 b8 c8 00  	sltu	a6, a7, a2
;     for (i = 0; i < ni; i++) {
8000418c: b3 05 b7 00  	add	a1, a4, a1
80004190: e3 f8 c7 fe  	bgeu	a5, a2, 0x80004180 <.LBB0_182+0x3e0>
80004194: 13 06 00 00  	mv	a2, zero
80004198: 93 07 84 05  	addi	a5, s0, 88
8000419c: 33 87 a7 00  	add	a4, a5, a0
800041a0: 63 86 05 00  	beqz	a1, 0x800041ac <.LBB0_182+0x40c>
800041a4: 93 06 00 00  	mv	a3, zero
800041a8: 6f 00 80 00  	j	0x800041b0 <.LBB0_182+0x410>
800041ac: b3 b6 f6 00  	sltu	a3, a3, a5
;     for (i = 0; i < ni; i++) {
800041b0: 13 05 04 0c  	addi	a0, s0, 192
800041b4: b3 65 06 01  	or	a1, a2, a6
800041b8: 63 76 f7 00  	bgeu	a4, a5, 0x800041c4 <.LBB0_182+0x424>
800041bc: 13 06 00 00  	mv	a2, zero
800041c0: 6f 00 80 00  	j	0x800041c8 <.LBB0_182+0x428>
800041c4: 33 36 77 00  	sltu	a2, a4, t2
;     for (i = 0; i < ni; i++) {
800041c8: 33 66 d6 00  	or	a2, a2, a3
800041cc: b3 f5 c5 00  	and	a1, a1, a2
800041d0: 13 56 45 01  	srli	a2, a0, 20
800041d4: 33 36 c0 00  	snez	a2, a2
800041d8: b7 f6 11 00  	lui	a3, 287
800041dc: 13 87 96 12  	addi	a4, a3, 297
800041e0: 33 37 e5 00  	sltu	a4, a0, a4
800041e4: 33 76 e6 00  	and	a2, a2, a4
800041e8: b3 75 b6 00  	and	a1, a2, a1
800041ec: b3 f5 b2 00  	and	a1, t0, a1
800041f0: 13 d6 43 01  	srli	a2, t2, 20
800041f4: 33 36 c0 00  	snez	a2, a2
800041f8: 93 86 96 95  	addi	a3, a3, -1703
800041fc: b3 b6 d3 00  	sltu	a3, t2, a3
80004200: 33 76 d6 00  	and	a2, a2, a3
80004204: b3 75 b6 00  	and	a1, a2, a1
80004208: 63 86 05 4c  	beqz	a1, 0x800046d4 <.LBB0_184+0x26c>
8000420c: 93 07 00 00  	mv	a5, zero
80004210: 13 08 80 0c  	addi	a6, zero, 200
80004214: 93 05 30 01  	addi	a1, zero, 19
;     for (i = 0; i < ni; i++) {
80004218: 13 06 00 04  	addi	a2, zero, 64
8000421c: 93 06 00 0c  	addi	a3, zero, 192
80004220: ab a0 c5 00  	scfgw	a1, a2
80004224: ab 20 d8 00  	scfgw	a6, a3
80004228: 13 06 00 02  	addi	a2, zero, 32
8000422c: ab 20 c0 00  	scfgw	zero, a2
80004230: 2b 20 05 30  	scfgwi	a0, 768
80004234: 13 05 80 00  	addi	a0, zero, 8
80004238: 13 06 d0 01  	addi	a2, zero, 29
8000423c: 93 06 10 00  	addi	a3, zero, 1
80004240: 13 87 06 04  	addi	a4, a3, 64
80004244: ab 20 e6 00  	scfgw	a2, a4
80004248: 13 87 06 0c  	addi	a4, a3, 192
8000424c: ab 20 e5 00  	scfgw	a0, a4
80004250: 13 87 06 06  	addi	a4, a3, 96
80004254: ab a0 e5 00  	scfgw	a1, a4
80004258: 13 87 06 0e  	addi	a4, a3, 224
8000425c: ab 20 e5 00  	scfgw	a0, a4
80004260: 13 85 06 02  	addi	a0, a3, 32
80004264: ab 20 a0 00  	scfgw	zero, a0
80004268: 2b a0 14 32  	scfgwi	s1, 801
8000426c: 13 05 20 00  	addi	a0, zero, 2
80004270: 93 06 05 04  	addi	a3, a0, 64
80004274: 13 07 05 0c  	addi	a4, a0, 192
80004278: ab 20 d6 00  	scfgw	a2, a3
8000427c: ab 20 e8 00  	scfgw	a6, a4
80004280: 37 f6 ff ff  	lui	a2, 1048575
80004284: 13 06 86 95  	addi	a2, a2, -1704
80004288: 93 06 05 06  	addi	a3, a0, 96
8000428c: 13 07 05 0e  	addi	a4, a0, 224
80004290: ab a0 d5 00  	scfgw	a1, a3
80004294: ab 20 e6 00  	scfgw	a2, a4
80004298: 13 05 05 02  	addi	a0, a0, 32
8000429c: ab 20 a0 00  	scfgw	zero, a0
800042a0: 2b a0 23 32  	scfgwi	t2, 802
800042a4: 73 e5 00 7c  	csrrsi	a0, 1984, 1

800042a8 <.LBB0_183>:
800042a8: 17 35 00 00  	auipc	a0, 3
800042ac: 13 05 05 1b  	addi	a0, a0, 432
800042b0: 87 31 05 00  	fld	ft3, 0(a0)
;     for (i = 0; i < ni; i++) {
800042b4: 13 05 83 06  	addi	a0, t1, 104
800042b8: 23 20 a1 0a  	sw	a0, 160(sp)
800042bc: 23 22 f1 0a  	sw	a5, 164(sp)
;             C[i][j] *= beta;
800042c0: 13 05 80 0c  	addi	a0, zero, 200
800042c4: 33 85 a7 02  	mul	a0, a5, a0
800042c8: 33 0f a4 00  	add	t5, s0, a0
800042cc: 07 32 0f 00  	fld	ft4, 0(t5)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
800042d0: 13 04 00 00  	mv	s0, zero
;             C[i][j] *= beta;
800042d4: 53 72 32 12  	fmul.d	ft4, ft4, ft3
800042d8: 87 32 8f 00  	fld	ft5, 8(t5)
800042dc: 27 30 4f 00  	fsd	ft4, 0(t5)
800042e0: 13 05 8f 00  	addi	a0, t5, 8
800042e4: 23 26 a1 0a  	sw	a0, 172(sp)
800042e8: 07 33 0f 01  	fld	ft6, 16(t5)
800042ec: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
800042f0: 27 34 5f 00  	fsd	ft5, 8(t5)
800042f4: 13 05 0f 01  	addi	a0, t5, 16
800042f8: 23 24 a1 0a  	sw	a0, 168(sp)
800042fc: 53 73 33 12  	fmul.d	ft6, ft6, ft3
80004300: 87 33 8f 01  	fld	ft7, 24(t5)
80004304: 27 38 6f 00  	fsd	ft6, 16(t5)
80004308: 93 0f 8f 01  	addi	t6, t5, 24
8000430c: 07 35 0f 02  	fld	fa0, 32(t5)
80004310: d3 f3 33 12  	fmul.d	ft7, ft7, ft3
80004314: 27 3c 7f 00  	fsd	ft7, 24(t5)
80004318: 13 09 0f 02  	addi	s2, t5, 32
8000431c: 53 75 35 12  	fmul.d	fa0, fa0, ft3
80004320: 87 35 8f 02  	fld	fa1, 40(t5)
80004324: 27 30 af 02  	fsd	fa0, 32(t5)
80004328: 93 09 8f 02  	addi	s3, t5, 40
8000432c: 07 36 0f 03  	fld	fa2, 48(t5)
80004330: d3 f5 35 12  	fmul.d	fa1, fa1, ft3
80004334: 27 34 bf 02  	fsd	fa1, 40(t5)
80004338: 13 0a 0f 03  	addi	s4, t5, 48
8000433c: 53 76 36 12  	fmul.d	fa2, fa2, ft3
80004340: 87 36 8f 03  	fld	fa3, 56(t5)
80004344: 27 38 cf 02  	fsd	fa2, 48(t5)
80004348: 93 0a 8f 03  	addi	s5, t5, 56
8000434c: 07 37 0f 04  	fld	fa4, 64(t5)
80004350: d3 f6 36 12  	fmul.d	fa3, fa3, ft3
80004354: 27 3c df 02  	fsd	fa3, 56(t5)
80004358: 13 0b 0f 04  	addi	s6, t5, 64
8000435c: 53 77 37 12  	fmul.d	fa4, fa4, ft3
80004360: 87 37 8f 04  	fld	fa5, 72(t5)
80004364: 27 30 ef 04  	fsd	fa4, 64(t5)
80004368: 93 0b 8f 04  	addi	s7, t5, 72
8000436c: 07 38 0f 05  	fld	fa6, 80(t5)
80004370: d3 f7 37 12  	fmul.d	fa5, fa5, ft3
80004374: 27 34 ff 04  	fsd	fa5, 72(t5)
80004378: 13 0c 0f 05  	addi	s8, t5, 80
8000437c: 53 78 38 12  	fmul.d	fa6, fa6, ft3
80004380: 87 38 0f 06  	fld	fa7, 96(t5)
80004384: 27 38 0f 05  	fsd	fa6, 80(t5)
80004388: 93 0c 8f 05  	addi	s9, t5, 88
8000438c: 07 3e 8f 06  	fld	ft8, 104(t5)
80004390: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
80004394: 27 30 1f 07  	fsd	fa7, 96(t5)
80004398: 87 38 0f 07  	fld	fa7, 112(t5)
8000439c: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800043a0: 27 34 cf 07  	fsd	ft8, 104(t5)
800043a4: 07 3e 8f 07  	fld	ft8, 120(t5)
800043a8: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800043ac: 27 38 1f 07  	fsd	fa7, 112(t5)
800043b0: 87 38 0f 08  	fld	fa7, 128(t5)
800043b4: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800043b8: 27 3c cf 07  	fsd	ft8, 120(t5)
800043bc: 07 3e 8f 08  	fld	ft8, 136(t5)
800043c0: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800043c4: 27 30 1f 09  	fsd	fa7, 128(t5)
800043c8: 87 38 0f 09  	fld	fa7, 144(t5)
800043cc: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800043d0: 27 34 cf 09  	fsd	ft8, 136(t5)
800043d4: 07 3e 8f 09  	fld	ft8, 152(t5)
800043d8: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800043dc: 27 38 1f 09  	fsd	fa7, 144(t5)
800043e0: 87 38 8f 05  	fld	fa7, 88(t5)
800043e4: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800043e8: 27 3c cf 09  	fsd	ft8, 152(t5)
800043ec: 07 3e 0f 0a  	fld	ft8, 160(t5)
800043f0: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800043f4: 27 3c 1f 05  	fsd	fa7, 88(t5)
800043f8: 13 0d 0f 06  	addi	s10, t5, 96
800043fc: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004400: 27 30 cf 0b  	fsd	ft8, 160(t5)
80004404: 07 3e 8f 0a  	fld	ft8, 168(t5)
80004408: 93 0d 8f 06  	addi	s11, t5, 104
8000440c: 93 00 0f 07  	addi	ra, t5, 112
80004410: 93 0e 8f 07  	addi	t4, t5, 120
80004414: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004418: 27 34 cf 0b  	fsd	ft8, 168(t5)
8000441c: 07 3e 0f 0b  	fld	ft8, 176(t5)
80004420: 93 05 0f 08  	addi	a1, t5, 128
80004424: 13 06 8f 08  	addi	a2, t5, 136
80004428: 13 07 0f 09  	addi	a4, t5, 144
8000442c: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004430: 27 38 cf 0b  	fsd	ft8, 176(t5)
80004434: 07 3e 8f 0b  	fld	ft8, 184(t5)
80004438: 13 05 8f 09  	addi	a0, t5, 152
8000443c: 93 06 0f 0a  	addi	a3, t5, 160
80004440: 13 08 8f 0a  	addi	a6, t5, 168
80004444: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004448: 27 3c cf 0b  	fsd	ft8, 184(t5)
8000444c: 53 0e 00 22  	fmv.d	ft8, ft0
80004450: 93 08 0f 0b  	addi	a7, t5, 176
80004454: 93 02 8f 0b  	addi	t0, t5, 184
80004458: 13 03 0f 0c  	addi	t1, t5, 192
8000445c: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004460: 27 30 cf 0d  	fsd	ft8, 192(t5)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004464: 83 23 01 0a  	lw	t2, 160(sp)

80004468 <.LBB0_184>:
80004468: 97 37 00 00  	auipc	a5, 3
8000446c: 93 87 87 ff  	addi	a5, a5, -8
80004470: 07 be 07 00  	fld	ft8, 0(a5)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
80004474: 33 8e 84 00  	add	t3, s1, s0
80004478: 87 3e 0e 00  	fld	ft9, 0(t3)
8000447c: 07 bf 83 f9  	fld	ft10, -104(t2)
80004480: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004484: 43 f2 ee 23  	fmadd.d	ft4, ft9, ft10, ft4
80004488: 27 30 4f 00  	fsd	ft4, 0(t5)
8000448c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004490: 07 bf 03 fa  	fld	ft10, -96(t2)
80004494: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004498: c3 f2 ee 2b  	fmadd.d	ft5, ft9, ft10, ft5
8000449c: 83 27 c1 0a  	lw	a5, 172(sp)
800044a0: 27 b0 57 00  	fsd	ft5, 0(a5)
800044a4: 87 3e 0e 00  	fld	ft9, 0(t3)
800044a8: 07 bf 83 fa  	fld	ft10, -88(t2)
800044ac: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800044b0: 43 f3 ee 33  	fmadd.d	ft6, ft9, ft10, ft6
800044b4: 83 27 81 0a  	lw	a5, 168(sp)
800044b8: 27 b0 67 00  	fsd	ft6, 0(a5)
800044bc: 87 3e 0e 00  	fld	ft9, 0(t3)
800044c0: 07 bf 03 fb  	fld	ft10, -80(t2)
800044c4: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800044c8: c3 f3 ee 3b  	fmadd.d	ft7, ft9, ft10, ft7
800044cc: 27 b0 7f 00  	fsd	ft7, 0(t6)
800044d0: 87 3e 0e 00  	fld	ft9, 0(t3)
800044d4: 07 bf 83 fb  	fld	ft10, -72(t2)
800044d8: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800044dc: 43 f5 ee 53  	fmadd.d	fa0, ft9, ft10, fa0
800044e0: 27 30 a9 00  	fsd	fa0, 0(s2)
800044e4: 87 3e 0e 00  	fld	ft9, 0(t3)
800044e8: 07 bf 03 fc  	fld	ft10, -64(t2)
800044ec: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800044f0: c3 f5 ee 5b  	fmadd.d	fa1, ft9, ft10, fa1
800044f4: 27 b0 b9 00  	fsd	fa1, 0(s3)
800044f8: 87 3e 0e 00  	fld	ft9, 0(t3)
800044fc: 07 bf 83 fc  	fld	ft10, -56(t2)
80004500: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004504: 43 f6 ee 63  	fmadd.d	fa2, ft9, ft10, fa2
80004508: 27 30 ca 00  	fsd	fa2, 0(s4)
8000450c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004510: 07 bf 03 fd  	fld	ft10, -48(t2)
80004514: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004518: c3 f6 ee 6b  	fmadd.d	fa3, ft9, ft10, fa3
8000451c: 27 b0 da 00  	fsd	fa3, 0(s5)
80004520: 87 3e 0e 00  	fld	ft9, 0(t3)
80004524: 07 bf 83 fd  	fld	ft10, -40(t2)
80004528: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000452c: 43 f7 ee 73  	fmadd.d	fa4, ft9, ft10, fa4
80004530: 27 30 eb 00  	fsd	fa4, 0(s6)
80004534: 87 3e 0e 00  	fld	ft9, 0(t3)
80004538: 07 bf 03 fe  	fld	ft10, -32(t2)
8000453c: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004540: c3 f7 ee 7b  	fmadd.d	fa5, ft9, ft10, fa5
80004544: 27 b0 fb 00  	fsd	fa5, 0(s7)
80004548: 87 3e 0e 00  	fld	ft9, 0(t3)
8000454c: 07 bf 83 fe  	fld	ft10, -24(t2)
80004550: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004554: 43 f8 ee 83  	fmadd.d	fa6, ft9, ft10, fa6
80004558: 27 30 0c 01  	fsd	fa6, 0(s8)
8000455c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004560: 07 bf 03 ff  	fld	ft10, -16(t2)
80004564: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004568: c3 f8 ee 8b  	fmadd.d	fa7, ft9, ft10, fa7
8000456c: 27 b0 1c 01  	fsd	fa7, 0(s9)
80004570: 87 3e 0e 00  	fld	ft9, 0(t3)
80004574: 87 3f 0d 00  	fld	ft11, 0(s10)
80004578: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000457c: c3 fe 2e fa  	fmadd.d	ft9, ft9, ft2, ft11
80004580: 27 30 dd 01  	fsd	ft9, 0(s10)
80004584: d3 8e 10 22  	fmv.d	ft9, ft1
80004588: 07 bf 03 00  	fld	ft10, 0(t2)
8000458c: 87 bf 0d 00  	fld	ft11, 0(s11)
80004590: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004594: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004598: 27 b0 dd 01  	fsd	ft9, 0(s11)
8000459c: 87 3e 0e 00  	fld	ft9, 0(t3)
800045a0: 07 bf 83 00  	fld	ft10, 8(t2)
800045a4: 87 bf 00 00  	fld	ft11, 0(ra)
800045a8: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800045ac: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800045b0: 27 b0 d0 01  	fsd	ft9, 0(ra)
800045b4: 87 3e 0e 00  	fld	ft9, 0(t3)
800045b8: 07 bf 03 01  	fld	ft10, 16(t2)
800045bc: 87 bf 0e 00  	fld	ft11, 0(t4)
800045c0: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800045c4: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800045c8: 27 b0 de 01  	fsd	ft9, 0(t4)
800045cc: 87 3e 0e 00  	fld	ft9, 0(t3)
800045d0: 07 bf 83 01  	fld	ft10, 24(t2)
800045d4: 87 bf 05 00  	fld	ft11, 0(a1)
800045d8: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800045dc: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800045e0: 27 b0 d5 01  	fsd	ft9, 0(a1)
800045e4: 87 3e 0e 00  	fld	ft9, 0(t3)
800045e8: 07 bf 03 02  	fld	ft10, 32(t2)
800045ec: 87 3f 06 00  	fld	ft11, 0(a2)
800045f0: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800045f4: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800045f8: 27 30 d6 01  	fsd	ft9, 0(a2)
800045fc: 87 3e 0e 00  	fld	ft9, 0(t3)
80004600: 07 bf 83 02  	fld	ft10, 40(t2)
80004604: 87 3f 07 00  	fld	ft11, 0(a4)
80004608: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000460c: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004610: 27 30 d7 01  	fsd	ft9, 0(a4)
80004614: 87 3e 0e 00  	fld	ft9, 0(t3)
80004618: 07 bf 03 03  	fld	ft10, 48(t2)
8000461c: 87 3f 05 00  	fld	ft11, 0(a0)
80004620: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004624: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004628: 27 30 d5 01  	fsd	ft9, 0(a0)
8000462c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004630: 07 bf 83 03  	fld	ft10, 56(t2)
80004634: 87 bf 06 00  	fld	ft11, 0(a3)
80004638: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000463c: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004640: 27 b0 d6 01  	fsd	ft9, 0(a3)
80004644: 87 3e 0e 00  	fld	ft9, 0(t3)
80004648: 07 bf 03 04  	fld	ft10, 64(t2)
8000464c: 87 3f 08 00  	fld	ft11, 0(a6)
80004650: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004654: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004658: 27 30 d8 01  	fsd	ft9, 0(a6)
8000465c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004660: 07 bf 83 04  	fld	ft10, 72(t2)
80004664: 87 bf 08 00  	fld	ft11, 0(a7)
80004668: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000466c: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004670: 27 b0 d8 01  	fsd	ft9, 0(a7)
80004674: 87 3e 0e 00  	fld	ft9, 0(t3)
80004678: 07 bf 03 05  	fld	ft10, 80(t2)
8000467c: 87 bf 02 00  	fld	ft11, 0(t0)
80004680: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004684: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004688: 27 b0 d2 01  	fsd	ft9, 0(t0)
8000468c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004690: 93 07 00 0f  	addi	a5, zero, 240
80004694: 07 bf 83 05  	fld	ft10, 88(t2)
80004698: 87 3f 03 00  	fld	ft11, 0(t1)
8000469c: 53 fe ce 13  	fmul.d	ft8, ft9, ft8
800046a0: 43 7e ee fb  	fmadd.d	ft8, ft8, ft10, ft11
800046a4: 27 30 c3 01  	fsd	ft8, 0(t1)
;         for (k = 0; k < nk; k++) {
800046a8: 13 04 84 00  	addi	s0, s0, 8
800046ac: 93 83 83 0c  	addi	t2, t2, 200
800046b0: e3 1c f4 da  	bne	s0, a5, 0x80004468 <.LBB0_184>
800046b4: 83 27 41 0a  	lw	a5, 164(sp)
;     for (i = 0; i < ni; i++) {
800046b8: 93 87 17 00  	addi	a5, a5, 1
800046bc: 93 84 04 0f  	addi	s1, s1, 240
800046c0: 03 24 01 09  	lw	s0, 144(sp)
800046c4: 13 05 40 01  	addi	a0, zero, 20
800046c8: e3 9a a7 be  	bne	a5, a0, 0x800042bc <.LBB0_183+0x14>
800046cc: 73 f5 00 7c  	csrrci	a0, 1984, 1
800046d0: 6f 00 c0 42  	j	0x80004afc <.LBB0_186+0x26c>
800046d4: 93 05 00 00  	mv	a1, zero

800046d8 <.LBB0_185>:
800046d8: 17 35 00 00  	auipc	a0, 3
800046dc: 13 05 05 d8  	addi	a0, a0, -640
800046e0: 87 31 05 00  	fld	ft3, 0(a0)
;     for (i = 0; i < ni; i++) {
800046e4: 23 20 71 0a  	sw	t2, 160(sp)
800046e8: 23 22 b1 0a  	sw	a1, 164(sp)
;             C[i][j] *= beta;
800046ec: 13 05 80 0c  	addi	a0, zero, 200
800046f0: 33 85 a5 02  	mul	a0, a1, a0
800046f4: 33 0f a4 00  	add	t5, s0, a0
800046f8: 07 32 0f 00  	fld	ft4, 0(t5)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
800046fc: 13 05 00 00  	mv	a0, zero
;             C[i][j] *= beta;
80004700: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80004704: 87 32 8f 00  	fld	ft5, 8(t5)
80004708: 27 30 4f 00  	fsd	ft4, 0(t5)
8000470c: 93 05 8f 00  	addi	a1, t5, 8
80004710: 23 26 b1 0a  	sw	a1, 172(sp)
80004714: 07 33 0f 01  	fld	ft6, 16(t5)
80004718: d3 f2 32 12  	fmul.d	ft5, ft5, ft3
8000471c: 27 34 5f 00  	fsd	ft5, 8(t5)
80004720: 93 05 0f 01  	addi	a1, t5, 16
80004724: 23 24 b1 0a  	sw	a1, 168(sp)
80004728: 53 73 33 12  	fmul.d	ft6, ft6, ft3
8000472c: 87 33 8f 01  	fld	ft7, 24(t5)
80004730: 27 38 6f 00  	fsd	ft6, 16(t5)
80004734: 93 0f 8f 01  	addi	t6, t5, 24
80004738: 07 35 0f 02  	fld	fa0, 32(t5)
8000473c: d3 f3 33 12  	fmul.d	ft7, ft7, ft3
80004740: 27 3c 7f 00  	fsd	ft7, 24(t5)
80004744: 13 09 0f 02  	addi	s2, t5, 32
80004748: 53 75 35 12  	fmul.d	fa0, fa0, ft3
8000474c: 87 35 8f 02  	fld	fa1, 40(t5)
80004750: 27 30 af 02  	fsd	fa0, 32(t5)
80004754: 93 09 8f 02  	addi	s3, t5, 40
80004758: 07 36 0f 03  	fld	fa2, 48(t5)
8000475c: d3 f5 35 12  	fmul.d	fa1, fa1, ft3
80004760: 27 34 bf 02  	fsd	fa1, 40(t5)
80004764: 13 08 0f 03  	addi	a6, t5, 48
80004768: 53 76 36 12  	fmul.d	fa2, fa2, ft3
8000476c: 87 36 8f 03  	fld	fa3, 56(t5)
80004770: 27 38 cf 02  	fsd	fa2, 48(t5)
80004774: 13 0a 8f 03  	addi	s4, t5, 56
80004778: 07 37 0f 04  	fld	fa4, 64(t5)
8000477c: d3 f6 36 12  	fmul.d	fa3, fa3, ft3
80004780: 27 3c df 02  	fsd	fa3, 56(t5)
80004784: 93 0a 0f 04  	addi	s5, t5, 64
80004788: 53 77 37 12  	fmul.d	fa4, fa4, ft3
8000478c: 87 37 8f 04  	fld	fa5, 72(t5)
80004790: 27 30 ef 04  	fsd	fa4, 64(t5)
80004794: 13 0b 8f 04  	addi	s6, t5, 72
80004798: 07 38 0f 05  	fld	fa6, 80(t5)
8000479c: d3 f7 37 12  	fmul.d	fa5, fa5, ft3
800047a0: 27 34 ff 04  	fsd	fa5, 72(t5)
800047a4: 93 0b 0f 05  	addi	s7, t5, 80
800047a8: 53 78 38 12  	fmul.d	fa6, fa6, ft3
800047ac: 87 38 0f 06  	fld	fa7, 96(t5)
800047b0: 27 38 0f 05  	fsd	fa6, 80(t5)
800047b4: 13 0c 8f 05  	addi	s8, t5, 88
800047b8: 07 3e 8f 06  	fld	ft8, 104(t5)
800047bc: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800047c0: 27 30 1f 07  	fsd	fa7, 96(t5)
800047c4: 87 38 0f 07  	fld	fa7, 112(t5)
800047c8: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800047cc: 27 34 cf 07  	fsd	ft8, 104(t5)
800047d0: 07 3e 8f 07  	fld	ft8, 120(t5)
800047d4: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800047d8: 27 38 1f 07  	fsd	fa7, 112(t5)
800047dc: 87 38 0f 08  	fld	fa7, 128(t5)
800047e0: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800047e4: 27 3c cf 07  	fsd	ft8, 120(t5)
800047e8: 07 3e 8f 08  	fld	ft8, 136(t5)
800047ec: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
800047f0: 27 30 1f 09  	fsd	fa7, 128(t5)
800047f4: 87 38 0f 09  	fld	fa7, 144(t5)
800047f8: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
800047fc: 27 34 cf 09  	fsd	ft8, 136(t5)
80004800: 07 3e 8f 09  	fld	ft8, 152(t5)
80004804: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
80004808: 27 38 1f 09  	fsd	fa7, 144(t5)
8000480c: 87 38 8f 05  	fld	fa7, 88(t5)
80004810: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004814: 27 3c cf 09  	fsd	ft8, 152(t5)
80004818: 07 3e 0f 0a  	fld	ft8, 160(t5)
8000481c: d3 f8 38 12  	fmul.d	fa7, fa7, ft3
80004820: 27 3c 1f 05  	fsd	fa7, 88(t5)
80004824: 93 0c 0f 06  	addi	s9, t5, 96
80004828: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
8000482c: 27 30 cf 0b  	fsd	ft8, 160(t5)
80004830: 07 3e 8f 0a  	fld	ft8, 168(t5)
80004834: 13 0d 8f 06  	addi	s10, t5, 104
80004838: 93 0d 0f 07  	addi	s11, t5, 112
8000483c: 93 00 8f 07  	addi	ra, t5, 120
80004840: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004844: 27 34 cf 0b  	fsd	ft8, 168(t5)
80004848: 07 3e 0f 0b  	fld	ft8, 176(t5)
8000484c: 93 0e 0f 08  	addi	t4, t5, 128
80004850: 13 06 8f 08  	addi	a2, t5, 136
80004854: 13 07 0f 09  	addi	a4, t5, 144
80004858: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
8000485c: 27 38 cf 0b  	fsd	ft8, 176(t5)
80004860: 07 3e 8f 0b  	fld	ft8, 184(t5)
80004864: 13 04 8f 09  	addi	s0, t5, 152
80004868: 93 06 0f 0a  	addi	a3, t5, 160
8000486c: 93 07 8f 0a  	addi	a5, t5, 168
80004870: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
80004874: 27 3c cf 0b  	fsd	ft8, 184(t5)
80004878: 07 3e 0f 0c  	fld	ft8, 192(t5)
8000487c: 93 08 0f 0b  	addi	a7, t5, 176
80004880: 93 02 8f 0b  	addi	t0, t5, 184
80004884: 13 03 0f 0c  	addi	t1, t5, 192
80004888: 53 7e 3e 12  	fmul.d	ft8, ft8, ft3
8000488c: 27 30 cf 0d  	fsd	ft8, 192(t5)

80004890 <.LBB0_186>:
80004890: 97 35 00 00  	auipc	a1, 3
80004894: 93 85 05 bd  	addi	a1, a1, -1072
80004898: 07 be 05 00  	fld	ft8, 0(a1)
;                 C[i][j] += alpha * A[i][k] * B[k][j];
8000489c: 33 8e a4 00  	add	t3, s1, a0
800048a0: 87 3e 0e 00  	fld	ft9, 0(t3)
800048a4: 07 bf 03 fa  	fld	ft10, -96(t2)
800048a8: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800048ac: 43 f2 ee 23  	fmadd.d	ft4, ft9, ft10, ft4
800048b0: 27 30 4f 00  	fsd	ft4, 0(t5)
800048b4: 87 3e 0e 00  	fld	ft9, 0(t3)
800048b8: 07 bf 83 fa  	fld	ft10, -88(t2)
800048bc: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800048c0: c3 f2 ee 2b  	fmadd.d	ft5, ft9, ft10, ft5
800048c4: 83 25 c1 0a  	lw	a1, 172(sp)
800048c8: 27 b0 55 00  	fsd	ft5, 0(a1)
800048cc: 87 3e 0e 00  	fld	ft9, 0(t3)
800048d0: 07 bf 03 fb  	fld	ft10, -80(t2)
800048d4: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800048d8: 43 f3 ee 33  	fmadd.d	ft6, ft9, ft10, ft6
800048dc: 83 25 81 0a  	lw	a1, 168(sp)
800048e0: 27 b0 65 00  	fsd	ft6, 0(a1)
800048e4: 87 3e 0e 00  	fld	ft9, 0(t3)
800048e8: 07 bf 83 fb  	fld	ft10, -72(t2)
800048ec: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800048f0: c3 f3 ee 3b  	fmadd.d	ft7, ft9, ft10, ft7
800048f4: 27 b0 7f 00  	fsd	ft7, 0(t6)
800048f8: 87 3e 0e 00  	fld	ft9, 0(t3)
800048fc: 07 bf 03 fc  	fld	ft10, -64(t2)
80004900: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004904: 43 f5 ee 53  	fmadd.d	fa0, ft9, ft10, fa0
80004908: 27 30 a9 00  	fsd	fa0, 0(s2)
8000490c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004910: 07 bf 83 fc  	fld	ft10, -56(t2)
80004914: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004918: c3 f5 ee 5b  	fmadd.d	fa1, ft9, ft10, fa1
8000491c: 27 b0 b9 00  	fsd	fa1, 0(s3)
80004920: 87 3e 0e 00  	fld	ft9, 0(t3)
80004924: 07 bf 03 fd  	fld	ft10, -48(t2)
80004928: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000492c: 43 f6 ee 63  	fmadd.d	fa2, ft9, ft10, fa2
80004930: 27 30 c8 00  	fsd	fa2, 0(a6)
80004934: 87 3e 0e 00  	fld	ft9, 0(t3)
80004938: 07 bf 83 fd  	fld	ft10, -40(t2)
8000493c: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004940: c3 f6 ee 6b  	fmadd.d	fa3, ft9, ft10, fa3
80004944: 27 30 da 00  	fsd	fa3, 0(s4)
80004948: 87 3e 0e 00  	fld	ft9, 0(t3)
8000494c: 07 bf 03 fe  	fld	ft10, -32(t2)
80004950: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004954: 43 f7 ee 73  	fmadd.d	fa4, ft9, ft10, fa4
80004958: 27 b0 ea 00  	fsd	fa4, 0(s5)
8000495c: 87 3e 0e 00  	fld	ft9, 0(t3)
80004960: 07 bf 83 fe  	fld	ft10, -24(t2)
80004964: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004968: c3 f7 ee 7b  	fmadd.d	fa5, ft9, ft10, fa5
8000496c: 27 30 fb 00  	fsd	fa5, 0(s6)
80004970: 87 3e 0e 00  	fld	ft9, 0(t3)
80004974: 07 bf 03 ff  	fld	ft10, -16(t2)
80004978: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
8000497c: 43 f8 ee 83  	fmadd.d	fa6, ft9, ft10, fa6
80004980: 27 b0 0b 01  	fsd	fa6, 0(s7)
80004984: 87 3e 0e 00  	fld	ft9, 0(t3)
80004988: 07 bf 83 ff  	fld	ft10, -8(t2)
8000498c: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004990: c3 f8 ee 8b  	fmadd.d	fa7, ft9, ft10, fa7
80004994: 27 30 1c 01  	fsd	fa7, 0(s8)
80004998: 87 3e 0e 00  	fld	ft9, 0(t3)
8000499c: 07 bf 03 00  	fld	ft10, 0(t2)
800049a0: 87 bf 0c 00  	fld	ft11, 0(s9)
800049a4: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800049a8: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800049ac: 27 b0 dc 01  	fsd	ft9, 0(s9)
800049b0: 87 3e 0e 00  	fld	ft9, 0(t3)
800049b4: 07 bf 83 00  	fld	ft10, 8(t2)
800049b8: 87 3f 0d 00  	fld	ft11, 0(s10)
800049bc: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800049c0: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800049c4: 27 30 dd 01  	fsd	ft9, 0(s10)
800049c8: 87 3e 0e 00  	fld	ft9, 0(t3)
800049cc: 07 bf 03 01  	fld	ft10, 16(t2)
800049d0: 87 bf 0d 00  	fld	ft11, 0(s11)
800049d4: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800049d8: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800049dc: 27 b0 dd 01  	fsd	ft9, 0(s11)
800049e0: 87 3e 0e 00  	fld	ft9, 0(t3)
800049e4: 07 bf 83 01  	fld	ft10, 24(t2)
800049e8: 87 bf 00 00  	fld	ft11, 0(ra)
800049ec: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
800049f0: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
800049f4: 27 b0 d0 01  	fsd	ft9, 0(ra)
800049f8: 87 3e 0e 00  	fld	ft9, 0(t3)
800049fc: 07 bf 03 02  	fld	ft10, 32(t2)
80004a00: 87 bf 0e 00  	fld	ft11, 0(t4)
80004a04: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a08: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a0c: 27 b0 de 01  	fsd	ft9, 0(t4)
80004a10: 87 3e 0e 00  	fld	ft9, 0(t3)
80004a14: 07 bf 83 02  	fld	ft10, 40(t2)
80004a18: 87 3f 06 00  	fld	ft11, 0(a2)
80004a1c: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a20: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a24: 27 30 d6 01  	fsd	ft9, 0(a2)
80004a28: 87 3e 0e 00  	fld	ft9, 0(t3)
80004a2c: 07 bf 03 03  	fld	ft10, 48(t2)
80004a30: 87 3f 07 00  	fld	ft11, 0(a4)
80004a34: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a38: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a3c: 27 30 d7 01  	fsd	ft9, 0(a4)
80004a40: 87 3e 0e 00  	fld	ft9, 0(t3)
80004a44: 07 bf 83 03  	fld	ft10, 56(t2)
80004a48: 87 3f 04 00  	fld	ft11, 0(s0)
80004a4c: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a50: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a54: 27 30 d4 01  	fsd	ft9, 0(s0)
80004a58: 87 3e 0e 00  	fld	ft9, 0(t3)
80004a5c: 07 bf 03 04  	fld	ft10, 64(t2)
80004a60: 87 bf 06 00  	fld	ft11, 0(a3)
80004a64: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a68: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a6c: 27 b0 d6 01  	fsd	ft9, 0(a3)
80004a70: 87 3e 0e 00  	fld	ft9, 0(t3)
80004a74: 07 bf 83 04  	fld	ft10, 72(t2)
80004a78: 87 bf 07 00  	fld	ft11, 0(a5)
80004a7c: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a80: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a84: 27 b0 d7 01  	fsd	ft9, 0(a5)
80004a88: 87 3e 0e 00  	fld	ft9, 0(t3)
80004a8c: 07 bf 03 05  	fld	ft10, 80(t2)
80004a90: 87 bf 08 00  	fld	ft11, 0(a7)
80004a94: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004a98: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004a9c: 27 b0 d8 01  	fsd	ft9, 0(a7)
80004aa0: 87 3e 0e 00  	fld	ft9, 0(t3)
80004aa4: 07 bf 83 05  	fld	ft10, 88(t2)
80004aa8: 87 bf 02 00  	fld	ft11, 0(t0)
80004aac: d3 fe ce 13  	fmul.d	ft9, ft9, ft8
80004ab0: c3 fe ee fb  	fmadd.d	ft9, ft9, ft10, ft11
80004ab4: 27 b0 d2 01  	fsd	ft9, 0(t0)
80004ab8: 87 3e 0e 00  	fld	ft9, 0(t3)
80004abc: 93 05 00 0f  	addi	a1, zero, 240
80004ac0: 07 bf 03 06  	fld	ft10, 96(t2)
80004ac4: 87 3f 03 00  	fld	ft11, 0(t1)
80004ac8: 53 fe ce 13  	fmul.d	ft8, ft9, ft8
80004acc: 43 7e ee fb  	fmadd.d	ft8, ft8, ft10, ft11
80004ad0: 27 30 c3 01  	fsd	ft8, 0(t1)
;         for (k = 0; k < nk; k++) {
80004ad4: 13 05 85 00  	addi	a0, a0, 8
80004ad8: 93 83 83 0c  	addi	t2, t2, 200
80004adc: e3 1a b5 da  	bne	a0, a1, 0x80004890 <.LBB0_186>
80004ae0: 83 25 41 0a  	lw	a1, 164(sp)
;     for (i = 0; i < ni; i++) {
80004ae4: 93 85 15 00  	addi	a1, a1, 1
80004ae8: 93 84 04 0f  	addi	s1, s1, 240
80004aec: 03 24 01 09  	lw	s0, 144(sp)
80004af0: 83 23 01 0a  	lw	t2, 160(sp)
80004af4: 13 05 40 01  	addi	a0, zero, 20
80004af8: e3 98 a5 be  	bne	a1, a0, 0x800046e8 <.LBB0_185+0x10>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80004afc: 73 25 00 b0  	csrr	a0, mcycle
;     printf("cycles needed: %lu\n", cycle_end - cycle_start);
80004b00: 83 25 c1 09  	lw	a1, 156(sp)
80004b04: b3 05 b5 40  	sub	a1, a0, a1

80004b08 <.LBB0_187>:
80004b08: 17 25 00 00  	auipc	a0, 2
80004b0c: 13 05 85 58  	addi	a0, a0, 1416
80004b10: 97 00 00 00  	auipc	ra, 0
80004b14: e7 80 40 25  	jalr	596(ra)
80004b18: 03 25 81 00  	lw	a0, 8(sp)
80004b1c: 63 0e 05 0a  	beqz	a0, 0x80004bd8 <.LBB0_187+0xd0>
80004b20: 13 05 80 00  	addi	a0, zero, 8
80004b24: 93 05 80 01  	addi	a1, zero, 24
;     for (int i = 0; i < n; i++){
80004b28: 13 06 00 04  	addi	a2, zero, 64
80004b2c: 93 06 00 0c  	addi	a3, zero, 192
80004b30: ab a0 c5 00  	scfgw	a1, a2
80004b34: ab 20 d5 00  	scfgw	a0, a3
80004b38: 93 05 30 01  	addi	a1, zero, 19
80004b3c: 13 06 00 06  	addi	a2, zero, 96
80004b40: 93 06 00 0e  	addi	a3, zero, 224
80004b44: ab a0 c5 00  	scfgw	a1, a2
80004b48: ab 20 d5 00  	scfgw	a0, a3
80004b4c: 13 05 00 02  	addi	a0, zero, 32
80004b50: ab 20 a0 00  	scfgw	zero, a0
80004b54: 2b 20 04 32  	scfgwi	s0, 800
80004b58: 73 e5 00 7c  	csrrsi	a0, 1984, 1
80004b5c: d3 01 00 d2  	fcvt.d.w	ft3, zero
80004b60: 13 05 40 01  	addi	a0, zero, 20
;             r += A[i * m + j];
80004b64: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b68: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b6c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b70: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b74: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b78: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b7c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b80: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b84: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b88: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b8c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b90: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b94: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b98: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004b9c: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004ba0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004ba4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004ba8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004bac: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004bb0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004bb4: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004bb8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004bbc: d3 71 30 02  	fadd.d	ft3, ft0, ft3
80004bc0: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80004bc4: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
80004bc8: d3 71 30 02  	fadd.d	ft3, ft0, ft3
;     for (int i = 0; i < n; i++){
80004bcc: e3 1c 05 f8  	bnez	a0, 0x80004b64 <.LBB0_187+0x5c>
80004bd0: 73 f5 00 7c  	csrrci	a0, 1984, 1
80004bd4: 6f 00 40 0e  	j	0x80004cb8 <.LBB0_188>
;     for (int i = 0; i < n; i++){
80004bd8: 13 05 04 06  	addi	a0, s0, 96
80004bdc: d3 01 00 d2  	fcvt.d.w	ft3, zero
80004be0: 93 05 40 01  	addi	a1, zero, 20
;             r += A[i * m + j];
80004be4: 07 32 05 fa  	fld	ft4, -96(a0)
80004be8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004bec: 07 32 85 fa  	fld	ft4, -88(a0)
80004bf0: 87 32 05 fb  	fld	ft5, -80(a0)
80004bf4: 07 33 85 fb  	fld	ft6, -72(a0)
80004bf8: 87 33 05 fc  	fld	ft7, -64(a0)
80004bfc: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004c00: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004c04: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80004c08: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004c0c: 07 32 85 fc  	fld	ft4, -56(a0)
80004c10: 87 32 05 fd  	fld	ft5, -48(a0)
80004c14: 07 33 85 fd  	fld	ft6, -40(a0)
80004c18: 87 33 05 fe  	fld	ft7, -32(a0)
80004c1c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004c20: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004c24: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80004c28: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004c2c: 07 32 85 fe  	fld	ft4, -24(a0)
80004c30: 87 32 05 ff  	fld	ft5, -16(a0)
80004c34: 07 33 85 ff  	fld	ft6, -8(a0)
80004c38: 87 33 05 00  	fld	ft7, 0(a0)
80004c3c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004c40: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004c44: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80004c48: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004c4c: 07 32 85 00  	fld	ft4, 8(a0)
80004c50: 87 32 05 01  	fld	ft5, 16(a0)
80004c54: 07 33 85 01  	fld	ft6, 24(a0)
80004c58: 87 33 05 02  	fld	ft7, 32(a0)
80004c5c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004c60: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004c64: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80004c68: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004c6c: 07 32 85 02  	fld	ft4, 40(a0)
80004c70: 87 32 05 03  	fld	ft5, 48(a0)
80004c74: 07 33 85 03  	fld	ft6, 56(a0)
80004c78: 87 33 05 04  	fld	ft7, 64(a0)
80004c7c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004c80: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004c84: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80004c88: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
80004c8c: 07 32 85 04  	fld	ft4, 72(a0)
80004c90: 87 32 05 05  	fld	ft5, 80(a0)
80004c94: 07 33 85 05  	fld	ft6, 88(a0)
80004c98: 87 33 05 06  	fld	ft7, 96(a0)
80004c9c: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80004ca0: d3 f1 32 02  	fadd.d	ft3, ft5, ft3
80004ca4: d3 71 33 02  	fadd.d	ft3, ft6, ft3
80004ca8: d3 f1 33 02  	fadd.d	ft3, ft7, ft3
;     for (int i = 0; i < n; i++){
80004cac: 93 85 f5 ff  	addi	a1, a1, -1
80004cb0: 13 05 85 0c  	addi	a0, a0, 200
80004cb4: e3 98 05 f2  	bnez	a1, 0x80004be4 <.LBB0_187+0xdc>

80004cb8 <.LBB0_188>:
80004cb8: 17 25 00 00  	auipc	a0, 2
80004cbc: 13 05 05 7b  	addi	a0, a0, 1968
80004cc0: 07 32 05 00  	fld	ft4, 0(a0)
;     double error = s - s_true;
80004cc4: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
;     error = error < 0.0 ? -error : error;
80004cc8: 53 a4 31 22  	fabs.d	fs0, ft3
;     printf("error = %f\n", error);
80004ccc: 27 38 81 0a  	fsd	fs0, 176(sp)
80004cd0: 03 26 01 0b  	lw	a2, 176(sp)
80004cd4: 83 26 41 0b  	lw	a3, 180(sp)

80004cd8 <.LBB0_189>:
80004cd8: 17 25 00 00  	auipc	a0, 2
80004cdc: 13 05 15 3d  	addi	a0, a0, 977
80004ce0: 97 00 00 00  	auipc	ra, 0
80004ce4: e7 80 40 08  	jalr	132(ra)

80004ce8 <.LBB0_190>:
80004ce8: 17 25 00 00  	auipc	a0, 2
80004cec: 13 05 85 78  	addi	a0, a0, 1928
80004cf0: 87 31 05 00  	fld	ft3, 0(a0)
;     return error > 0.0001; //prevents dce
80004cf4: 53 95 81 a2  	flt.d	a0, ft3, fs0
; }
80004cf8: 87 3d 81 0b  	fld	fs11, 184(sp)
80004cfc: 07 3d 01 0c  	fld	fs10, 192(sp)
80004d00: 87 3c 81 0c  	fld	fs9, 200(sp)
80004d04: 07 3c 01 0d  	fld	fs8, 208(sp)
80004d08: 87 3b 81 0d  	fld	fs7, 216(sp)
80004d0c: 07 3b 01 0e  	fld	fs6, 224(sp)
80004d10: 87 3a 81 0e  	fld	fs5, 232(sp)
80004d14: 07 3a 01 0f  	fld	fs4, 240(sp)
80004d18: 87 39 81 0f  	fld	fs3, 248(sp)
80004d1c: 07 39 01 10  	fld	fs2, 256(sp)
80004d20: 87 34 81 10  	fld	fs1, 264(sp)
80004d24: 07 34 01 11  	fld	fs0, 272(sp)
80004d28: 83 2d c1 11  	lw	s11, 284(sp)
80004d2c: 03 2d 01 12  	lw	s10, 288(sp)
80004d30: 83 2c 41 12  	lw	s9, 292(sp)
80004d34: 03 2c 81 12  	lw	s8, 296(sp)
80004d38: 83 2b c1 12  	lw	s7, 300(sp)
80004d3c: 03 2b 01 13  	lw	s6, 304(sp)
80004d40: 83 2a 41 13  	lw	s5, 308(sp)
80004d44: 03 2a 81 13  	lw	s4, 312(sp)
80004d48: 83 29 c1 13  	lw	s3, 316(sp)
80004d4c: 03 29 01 14  	lw	s2, 320(sp)
80004d50: 83 24 41 14  	lw	s1, 324(sp)
80004d54: 03 24 81 14  	lw	s0, 328(sp)
80004d58: 83 20 c1 14  	lw	ra, 332(sp)
80004d5c: 13 01 01 15  	addi	sp, sp, 336
80004d60: 67 80 00 00  	ret

80004d64 <printf_>:
; {
80004d64: 13 01 01 fd  	addi	sp, sp, -48
80004d68: 23 26 11 00  	sw	ra, 12(sp)
80004d6c: 93 02 05 00  	mv	t0, a0
80004d70: 23 26 11 03  	sw	a7, 44(sp)
80004d74: 23 24 01 03  	sw	a6, 40(sp)
80004d78: 23 22 f1 02  	sw	a5, 36(sp)
80004d7c: 23 20 e1 02  	sw	a4, 32(sp)
80004d80: 23 2e d1 00  	sw	a3, 28(sp)
80004d84: 23 2c c1 00  	sw	a2, 24(sp)
80004d88: 23 2a b1 00  	sw	a1, 20(sp)
80004d8c: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80004d90: 23 24 a1 00  	sw	a0, 8(sp)

80004d94 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80004d94: 17 15 00 00  	auipc	a0, 1
80004d98: 13 05 45 c2  	addi	a0, a0, -988
80004d9c: 93 05 71 00  	addi	a1, sp, 7
80004da0: 13 06 f0 ff  	addi	a2, zero, -1
80004da4: 13 07 41 01  	addi	a4, sp, 20
80004da8: 93 86 02 00  	mv	a3, t0
80004dac: 97 00 00 00  	auipc	ra, 0
80004db0: e7 80 40 01  	jalr	20(ra)
;   return ret;
80004db4: 83 20 c1 00  	lw	ra, 12(sp)
80004db8: 13 01 01 03  	addi	sp, sp, 48
80004dbc: 67 80 00 00  	ret

80004dc0 <_vsnprintf.llvm.1805434900161566649>:
; {
80004dc0: 13 01 01 f9  	addi	sp, sp, -112
80004dc4: 23 26 11 06  	sw	ra, 108(sp)
80004dc8: 23 24 81 06  	sw	s0, 104(sp)
80004dcc: 23 22 91 06  	sw	s1, 100(sp)
80004dd0: 23 20 21 07  	sw	s2, 96(sp)
80004dd4: 23 2e 31 05  	sw	s3, 92(sp)
80004dd8: 23 2c 41 05  	sw	s4, 88(sp)
80004ddc: 23 2a 51 05  	sw	s5, 84(sp)
80004de0: 23 28 61 05  	sw	s6, 80(sp)
80004de4: 23 26 71 05  	sw	s7, 76(sp)
80004de8: 23 24 81 05  	sw	s8, 72(sp)
80004dec: 23 22 91 05  	sw	s9, 68(sp)
80004df0: 23 20 a1 05  	sw	s10, 64(sp)
80004df4: 23 2e b1 03  	sw	s11, 60(sp)
80004df8: 93 09 07 00  	mv	s3, a4
80004dfc: 13 84 06 00  	mv	s0, a3
80004e00: 93 0a 06 00  	mv	s5, a2
80004e04: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80004e08: 63 86 05 00  	beqz	a1, 0x80004e14 <.LBB1_183>
80004e0c: 13 09 05 00  	mv	s2, a0
80004e10: 6f 00 c0 00  	j	0x80004e1c <.LBB1_183+0x8>

80004e14 <.LBB1_183>:
80004e14: 17 19 00 00  	auipc	s2, 1
80004e18: 13 09 09 c5  	addi	s2, s2, -944
80004e1c: 13 0c 00 00  	mv	s8, zero
80004e20: 13 0b 50 02  	addi	s6, zero, 37
80004e24: 93 0d 00 01  	addi	s11, zero, 16
80004e28: 93 0b e0 02  	addi	s7, zero, 46
80004e2c: 37 15 00 00  	lui	a0, 1
80004e30: 13 05 05 80  	addi	a0, a0, -2048
80004e34: 23 2c a1 00  	sw	a0, 24(sp)
80004e38: 37 05 01 00  	lui	a0, 16
80004e3c: 13 05 f5 ff  	addi	a0, a0, -1
80004e40: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80004e44: 13 0d 24 00  	addi	s10, s0, 2
80004e48: 93 0c 0c 00  	mv	s9, s8
80004e4c: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80004e50: 03 45 04 00  	lbu	a0, 0(s0)
80004e54: e3 04 05 30  	beqz	a0, 0x8000595c <.LBB1_124+0x3b0>
80004e58: 63 08 65 03  	beq	a0, s6, 0x80004e88 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80004e5c: 93 84 1c 00  	addi	s1, s9, 1
80004e60: 93 05 0a 00  	mv	a1, s4
80004e64: 13 86 0c 00  	mv	a2, s9
80004e68: 93 86 0a 00  	mv	a3, s5
80004e6c: e7 00 09 00  	jalr	s2
;       format++;
80004e70: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80004e74: 13 0d 1d 00  	addi	s10, s10, 1
80004e78: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80004e7c: 03 45 04 00  	lbu	a0, 0(s0)
80004e80: e3 1c 05 fc  	bnez	a0, 0x80004e58 <.LBB1_183+0x44>
80004e84: 6f 00 90 2d  	j	0x8000595c <.LBB1_124+0x3b0>
;     flags = 0U;
80004e88: 13 04 00 00  	mv	s0, zero
80004e8c: 6f 00 00 01  	j	0x80004e9c <.LBB1_9+0x8>

80004e90 <.LBB1_8>:
80004e90: 93 05 00 01  	addi	a1, zero, 16

80004e94 <.LBB1_9>:
80004e94: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80004e98: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80004e9c: 03 45 fd ff  	lbu	a0, -1(s10)
80004ea0: 93 05 05 fe  	addi	a1, a0, -32
80004ea4: 63 ec bd 02  	bltu	s11, a1, 0x80004edc <.LBB1_15>
80004ea8: 93 95 25 00  	slli	a1, a1, 2

80004eac <.LBB1_184>:
80004eac: 17 26 00 00  	auipc	a2, 2
80004eb0: 13 06 06 21  	addi	a2, a2, 528
80004eb4: b3 85 c5 00  	add	a1, a1, a2
80004eb8: 03 a6 05 00  	lw	a2, 0(a1)
80004ebc: 93 05 10 00  	addi	a1, zero, 1
80004ec0: 67 00 06 00  	jr	a2

80004ec4 <.LBB1_12>:
80004ec4: 93 05 80 00  	addi	a1, zero, 8
80004ec8: 6f f0 df fc  	j	0x80004e94 <.LBB1_9>

80004ecc <.LBB1_13>:
80004ecc: 93 05 40 00  	addi	a1, zero, 4
80004ed0: 6f f0 5f fc  	j	0x80004e94 <.LBB1_9>

80004ed4 <.LBB1_14>:
80004ed4: 93 05 20 00  	addi	a1, zero, 2
80004ed8: 6f f0 df fb  	j	0x80004e94 <.LBB1_9>

80004edc <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80004edc: 93 05 05 fd  	addi	a1, a0, -48
80004ee0: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
80004ee4: 93 05 fd ff  	addi	a1, s10, -1
80004ee8: 93 06 90 00  	addi	a3, zero, 9
80004eec: 63 ee c6 06  	bltu	a3, a2, 0x80004f68 <.LBB1_15+0x8c>
80004ef0: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004ef4: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80004ef8: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004efc: b3 06 8b 03  	mul	a3, s6, s8
80004f00: 93 85 15 00  	addi	a1, a1, 1
80004f04: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80004f08: 93 06 05 fd  	addi	a3, a0, -48
80004f0c: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004f10: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
80004f14: e3 e0 86 ff  	bltu	a3, s8, 0x80004ef4 <.LBB1_15+0x18>
80004f18: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80004f1c: 63 16 75 0b  	bne	a0, s7, 0x80004fc8 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80004f20: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80004f24: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80004f28: 93 05 05 fd  	addi	a1, a0, -48
80004f2c: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80004f30: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80004f34: 93 06 90 00  	addi	a3, zero, 9
80004f38: 63 e0 c6 06  	bltu	a3, a2, 0x80004f98 <.LBB1_15+0xbc>
80004f3c: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004f40: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80004f44: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004f48: b3 86 8b 03  	mul	a3, s7, s8
80004f4c: 93 85 15 00  	addi	a1, a1, 1
80004f50: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80004f54: 93 06 05 fd  	addi	a3, a0, -48
80004f58: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80004f5c: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
80004f60: e3 e0 86 ff  	bltu	a3, s8, 0x80004f40 <.LBB1_15+0x64>
80004f64: 6f 00 00 07  	j	0x80004fd4 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80004f68: 13 06 a0 02  	addi	a2, zero, 42
80004f6c: 63 18 c5 04  	bne	a0, a2, 0x80004fbc <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
80004f70: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80004f74: 63 d4 05 00  	bgez	a1, 0x80004f7c <.LBB1_15+0xa0>
80004f78: 13 64 24 00  	ori	s0, s0, 2
80004f7c: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
80004f80: 03 45 0d 00  	lbu	a0, 0(s10)
80004f84: 13 d6 f5 41  	srai	a2, a1, 31
80004f88: b3 85 c5 00  	add	a1, a1, a2
80004f8c: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
80004f90: e3 08 75 f9  	beq	a0, s7, 0x80004f20 <.LBB1_15+0x44>
80004f94: 6f 00 40 03  	j	0x80004fc8 <.LBB1_15+0xec>
;       else if (*format == '*') {
80004f98: 13 06 a0 02  	addi	a2, zero, 42
80004f9c: 63 1a c5 02  	bne	a0, a2, 0x80004fd0 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
80004fa0: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80004fa4: 63 44 70 01  	bgtz	s7, 0x80004fac <.LBB1_15+0xd0>
80004fa8: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80004fac: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
80004fb0: 13 0d 2d 00  	addi	s10, s10, 2
80004fb4: 93 89 49 00  	addi	s3, s3, 4
80004fb8: 6f 00 00 02  	j	0x80004fd8 <.LBB1_15+0xfc>
80004fbc: 13 0b 00 00  	mv	s6, zero
80004fc0: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80004fc4: e3 0e 75 f5  	beq	a0, s7, 0x80004f20 <.LBB1_15+0x44>
80004fc8: 93 0b 00 00  	mv	s7, zero
80004fcc: 6f 00 c0 00  	j	0x80004fd8 <.LBB1_15+0xfc>
80004fd0: 93 0b 00 00  	mv	s7, zero
80004fd4: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80004fd8: 93 05 85 f9  	addi	a1, a0, -104
80004fdc: 13 d6 15 00  	srli	a2, a1, 1
80004fe0: 93 95 f5 01  	slli	a1, a1, 31
80004fe4: b3 e5 c5 00  	or	a1, a1, a2
80004fe8: 13 06 90 00  	addi	a2, zero, 9
80004fec: 63 62 b6 06  	bltu	a2, a1, 0x80005050 <.LBB1_42>
80004ff0: 93 95 25 00  	slli	a1, a1, 2

80004ff4 <.LBB1_185>:
80004ff4: 17 26 00 00  	auipc	a2, 2
80004ff8: 13 06 c6 10  	addi	a2, a2, 268
80004ffc: b3 85 c5 00  	add	a1, a1, a2
80005000: 83 a6 05 00  	lw	a3, 0(a1)
80005004: 93 05 10 00  	addi	a1, zero, 1
80005008: 13 06 00 10  	addi	a2, zero, 256
8000500c: 67 80 06 00  	jr	a3

80005010 <.LBB1_36>:
;         if (*format == 'h') {
80005010: 03 45 1d 00  	lbu	a0, 1(s10)
80005014: 93 05 80 06  	addi	a1, zero, 104
80005018: 63 12 b5 12  	bne	a0, a1, 0x8000513c <.LBB1_53+0x48>
8000501c: 93 05 20 00  	addi	a1, zero, 2
80005020: 13 06 00 0c  	addi	a2, zero, 192
80005024: 6f 00 00 02  	j	0x80005044 <.LBB1_41>

80005028 <.LBB1_38>:
80005028: 13 06 00 20  	addi	a2, zero, 512
8000502c: 6f 00 80 01  	j	0x80005044 <.LBB1_41>

80005030 <.LBB1_39>:
;         if (*format == 'l') {
80005030: 03 45 1d 00  	lbu	a0, 1(s10)
80005034: 93 05 c0 06  	addi	a1, zero, 108
80005038: 63 18 b5 10  	bne	a0, a1, 0x80005148 <.LBB1_53+0x54>
8000503c: 93 05 20 00  	addi	a1, zero, 2
80005040: 13 06 00 30  	addi	a2, zero, 768

80005044 <.LBB1_41>:
80005044: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80005048: 03 45 0d 00  	lbu	a0, 0(s10)
8000504c: 33 64 c4 00  	or	s0, s0, a2

80005050 <.LBB1_42>:
;     switch (*format) {
80005050: 93 05 b5 fd  	addi	a1, a0, -37
80005054: 13 06 30 05  	addi	a2, zero, 83
80005058: 63 64 b6 10  	bltu	a2, a1, 0x80005160 <.LBB1_59>
8000505c: 93 95 25 00  	slli	a1, a1, 2

80005060 <.LBB1_186>:
80005060: 17 26 00 00  	auipc	a2, 2
80005064: 13 06 86 0c  	addi	a2, a2, 200
80005068: b3 85 c5 00  	add	a1, a1, a2
8000506c: 03 a6 05 00  	lw	a2, 0(a1)
80005070: 93 05 80 00  	addi	a1, zero, 8
80005074: 13 0c 00 01  	addi	s8, zero, 16
80005078: 67 00 06 00  	jr	a2

8000507c <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
8000507c: 13 74 f4 fe  	andi	s0, s0, -17
80005080: 13 0c a0 00  	addi	s8, zero, 10

80005084 <.LBB1_45>:
;         if (*format == 'X') {
80005084: 93 05 80 05  	addi	a1, zero, 88
80005088: 63 14 b5 00  	bne	a0, a1, 0x80005090 <.LBB1_45+0xc>
8000508c: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80005090: 93 05 40 06  	addi	a1, zero, 100
80005094: 63 08 b5 0e  	beq	a0, a1, 0x80005184 <.LBB1_62+0x8>
80005098: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
8000509c: 13 06 90 06  	addi	a2, zero, 105
800050a0: 63 02 c5 0e  	beq	a0, a2, 0x80005184 <.LBB1_62+0x8>
800050a4: 6f 00 80 0d  	j	0x8000517c <.LBB1_62>

800050a8 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800050a8: 93 05 60 04  	addi	a1, zero, 70
800050ac: 63 14 b5 00  	bne	a0, a1, 0x800050b4 <.LBB1_49+0xc>
800050b0: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800050b4: 13 85 79 00  	addi	a0, s3, 7
800050b8: 13 75 85 ff  	andi	a0, a0, -8
800050bc: 07 35 05 00  	fld	fa0, 0(a0)
800050c0: 93 09 85 00  	addi	s3, a0, 8
800050c4: 13 05 09 00  	mv	a0, s2
800050c8: 93 05 0a 00  	mv	a1, s4
800050cc: 13 86 0c 00  	mv	a2, s9
800050d0: 93 86 0a 00  	mv	a3, s5
800050d4: 13 87 0b 00  	mv	a4, s7
800050d8: 93 07 0b 00  	mv	a5, s6
800050dc: 13 08 04 00  	mv	a6, s0
800050e0: 97 10 00 00  	auipc	ra, 1
800050e4: e7 80 80 98  	jalr	-1656(ra)
800050e8: 6f 00 00 7c  	j	0x800058a8 <.LBB1_124+0x2fc>

800050ec <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
800050ec: 83 25 81 01  	lw	a1, 24(sp)
800050f0: 33 64 b4 00  	or	s0, s0, a1

800050f4 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
800050f4: 13 65 25 00  	ori	a0, a0, 2
800050f8: 93 05 70 04  	addi	a1, zero, 71
800050fc: 63 14 b5 00  	bne	a0, a1, 0x80005104 <.LBB1_53+0x10>
80005100: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80005104: 13 85 79 00  	addi	a0, s3, 7
80005108: 13 75 85 ff  	andi	a0, a0, -8
8000510c: 07 35 05 00  	fld	fa0, 0(a0)
80005110: 93 09 85 00  	addi	s3, a0, 8
80005114: 13 05 09 00  	mv	a0, s2
80005118: 93 05 0a 00  	mv	a1, s4
8000511c: 13 86 0c 00  	mv	a2, s9
80005120: 93 86 0a 00  	mv	a3, s5
80005124: 13 87 0b 00  	mv	a4, s7
80005128: 93 07 0b 00  	mv	a5, s6
8000512c: 13 08 04 00  	mv	a6, s0
80005130: 97 10 00 00  	auipc	ra, 1
80005134: e7 80 80 01  	jalr	24(ra)
80005138: 6f 00 00 77  	j	0x800058a8 <.LBB1_124+0x2fc>
8000513c: 13 64 04 08  	ori	s0, s0, 128
80005140: 13 0d 1d 00  	addi	s10, s10, 1
80005144: 6f f0 df f0  	j	0x80005050 <.LBB1_42>
80005148: 13 64 04 10  	ori	s0, s0, 256
8000514c: 13 0d 1d 00  	addi	s10, s10, 1
80005150: 6f f0 1f f0  	j	0x80005050 <.LBB1_42>

80005154 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80005154: 13 8c 1c 00  	addi	s8, s9, 1
80005158: 13 05 50 02  	addi	a0, zero, 37
8000515c: 6f 00 80 00  	j	0x80005164 <.LBB1_59+0x4>

80005160 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80005160: 13 8c 1c 00  	addi	s8, s9, 1
80005164: 93 05 0a 00  	mv	a1, s4
80005168: 13 86 0c 00  	mv	a2, s9
8000516c: 93 86 0a 00  	mv	a3, s5
80005170: e7 00 09 00  	jalr	s2
80005174: 6f 00 80 73  	j	0x800058ac <.LBB1_124+0x300>

80005178 <.LBB1_61>:
80005178: 93 05 20 00  	addi	a1, zero, 2

8000517c <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
8000517c: 13 74 34 ff  	andi	s0, s0, -13
80005180: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80005184: 93 75 04 40  	andi	a1, s0, 1024
80005188: 63 84 05 00  	beqz	a1, 0x80005190 <.LBB1_62+0x14>
8000518c: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80005190: 93 05 90 06  	addi	a1, zero, 105
80005194: 63 06 b5 00  	beq	a0, a1, 0x800051a0 <.LBB1_62+0x24>
80005198: 93 05 40 06  	addi	a1, zero, 100
8000519c: 63 1c b5 12  	bne	a0, a1, 0x800052d4 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800051a0: 13 75 04 20  	andi	a0, s0, 512
800051a4: 63 16 05 02  	bnez	a0, 0x800051d0 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800051a8: 13 75 04 10  	andi	a0, s0, 256
800051ac: 63 1c 05 14  	bnez	a0, 0x80005304 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800051b0: 13 75 04 04  	andi	a0, s0, 64
800051b4: 63 18 05 4e  	bnez	a0, 0x800056a4 <.LBB1_124+0xf8>
800051b8: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800051bc: 93 75 04 08  	andi	a1, s0, 128
800051c0: 63 84 05 4e  	beqz	a1, 0x800056a8 <.LBB1_124+0xfc>
800051c4: 13 15 08 01  	slli	a0, a6, 16
800051c8: 13 58 05 41  	srai	a6, a0, 16
800051cc: 6f 00 c0 4d  	j	0x800056a8 <.LBB1_124+0xfc>
800051d0: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
800051d4: 13 85 79 00  	addi	a0, s3, 7
800051d8: 13 75 85 ff  	andi	a0, a0, -8
800051dc: 83 29 05 00  	lw	s3, 0(a0)
800051e0: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
800051e4: 13 65 45 00  	ori	a0, a0, 4
800051e8: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
800051ec: 23 24 a1 00  	sw	a0, 8(sp)
800051f0: 33 e5 a9 00  	or	a0, s3, a0
800051f4: 63 14 05 00  	bnez	a0, 0x800051fc <.LBB1_62+0x80>
800051f8: 13 74 f4 fe  	andi	s0, s0, -17
800051fc: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80005200: 93 75 04 40  	andi	a1, s0, 1024
80005204: 93 d5 a5 00  	srli	a1, a1, 10
80005208: 33 75 b5 00  	and	a0, a0, a1
8000520c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80005210: 63 14 05 0a  	bnez	a0, 0x800052b8 <.LBB1_62+0x13c>
80005214: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80005218: 63 da 04 00  	bgez	s1, 0x8000522c <.LBB1_62+0xb0>
8000521c: 33 35 30 01  	snez	a0, s3
80005220: b3 09 30 41  	neg	s3, s3
80005224: 33 85 a4 00  	add	a0, s1, a0
80005228: b3 04 a0 40  	neg	s1, a0
8000522c: 13 09 00 00  	mv	s2, zero
80005230: 13 75 04 02  	andi	a0, s0, 32
80005234: 13 45 15 06  	xori	a0, a0, 97
80005238: 13 05 65 0f  	addi	a0, a0, 246
8000523c: 23 2a a1 00  	sw	a0, 20(sp)
80005240: 6f 00 40 02  	j	0x80005264 <.LBB1_62+0xe8>
80005244: 13 06 10 00  	addi	a2, zero, 1
80005248: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000524c: 93 36 f9 01  	sltiu	a3, s2, 31
80005250: 33 f6 c6 00  	and	a2, a3, a2
80005254: 13 89 07 00  	mv	s2, a5
80005258: 93 09 05 00  	mv	s3, a0
8000525c: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005260: 63 0c 06 04  	beqz	a2, 0x800052b8 <.LBB1_62+0x13c>
;       value /= base;
80005264: 13 85 09 00  	mv	a0, s3
80005268: 93 85 04 00  	mv	a1, s1
8000526c: 13 06 0c 00  	mv	a2, s8
80005270: 93 06 00 00  	mv	a3, zero
80005274: 97 b0 ff ff  	auipc	ra, 1048571
80005278: e7 80 80 e6  	jalr	-408(ra)
8000527c: 33 06 85 03  	mul	a2, a0, s8
80005280: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005284: 13 77 e6 0f  	andi	a4, a2, 254
80005288: 93 06 00 03  	addi	a3, zero, 48
8000528c: 93 07 a0 00  	addi	a5, zero, 10
80005290: 63 64 f7 00  	bltu	a4, a5, 0x80005298 <.LBB1_62+0x11c>
80005294: 83 26 41 01  	lw	a3, 20(sp)
80005298: 33 86 c6 00  	add	a2, a3, a2
8000529c: 93 06 c1 01  	addi	a3, sp, 28
800052a0: b3 86 26 01  	add	a3, a3, s2
800052a4: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800052a8: e3 9e 04 f8  	bnez	s1, 0x80005244 <.LBB1_62+0xc8>
800052ac: 33 b6 89 01  	sltu	a2, s3, s8
800052b0: 13 46 16 00  	xori	a2, a2, 1
800052b4: 6f f0 5f f9  	j	0x80005248 <.LBB1_62+0xcc>
800052b8: 03 25 41 00  	lw	a0, 4(sp)
800052bc: 93 09 85 00  	addi	s3, a0, 8
800052c0: 03 25 81 00  	lw	a0, 8(sp)
800052c4: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800052c8: 13 07 c1 01  	addi	a4, sp, 28
800052cc: 03 29 c1 00  	lw	s2, 12(sp)
800052d0: 6f 00 80 47  	j	0x80005748 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
800052d4: 13 75 04 20  	andi	a0, s0, 512
800052d8: 63 12 05 0c  	bnez	a0, 0x8000539c <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
800052dc: 13 75 04 10  	andi	a0, s0, 256
800052e0: 63 1e 05 46  	bnez	a0, 0x8000575c <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800052e4: 13 75 04 04  	andi	a0, s0, 64
800052e8: 63 10 05 50  	bnez	a0, 0x800057e8 <.LBB1_124+0x23c>
800052ec: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800052f0: 93 75 04 08  	andi	a1, s0, 128
800052f4: 63 8c 05 4e  	beqz	a1, 0x800057ec <.LBB1_124+0x240>
800052f8: 83 25 01 01  	lw	a1, 16(sp)
800052fc: 33 75 b5 00  	and	a0, a0, a1
80005300: 6f 00 c0 4e  	j	0x800057ec <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
80005304: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80005308: 63 14 08 00  	bnez	a6, 0x80005310 <.LBB1_62+0x194>
8000530c: 13 74 f4 fe  	andi	s0, s0, -17
80005310: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80005314: 13 76 04 40  	andi	a2, s0, 1024
80005318: 13 56 a6 00  	srli	a2, a2, 10
8000531c: b3 f5 c5 00  	and	a1, a1, a2
80005320: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80005324: 63 9c 05 40  	bnez	a1, 0x8000573c <.LBB1_124+0x190>
80005328: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
8000532c: 13 56 f8 41  	srai	a2, a6, 31
80005330: b3 06 c8 00  	add	a3, a6, a2
80005334: b3 c6 c6 00  	xor	a3, a3, a2
80005338: 13 76 04 02  	andi	a2, s0, 32
8000533c: 13 46 16 06  	xori	a2, a2, 97
80005340: 93 08 66 0f  	addi	a7, a2, 246
80005344: 6f 00 40 03  	j	0x80005378 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005348: 33 05 f6 00  	add	a0, a2, a5
8000534c: 93 87 15 00  	addi	a5, a1, 1
80005350: 13 06 c1 01  	addi	a2, sp, 28
80005354: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005358: b3 b6 86 01  	sltu	a3, a3, s8
8000535c: 93 c6 16 00  	xori	a3, a3, 1
80005360: 93 b5 f5 01  	sltiu	a1, a1, 31
80005364: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005368: 23 00 a6 00  	sb	a0, 0(a2)
8000536c: 93 85 07 00  	mv	a1, a5
80005370: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005374: 63 84 04 3c  	beqz	s1, 0x8000573c <.LBB1_124+0x190>
;       value /= base;
80005378: 33 d7 86 03  	divu	a4, a3, s8
8000537c: 33 06 87 03  	mul	a2, a4, s8
80005380: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005384: 13 f5 e7 0f  	andi	a0, a5, 254
80005388: 13 06 00 03  	addi	a2, zero, 48
8000538c: 93 04 a0 00  	addi	s1, zero, 10
80005390: e3 6c 95 fa  	bltu	a0, s1, 0x80005348 <.LBB1_62+0x1cc>
80005394: 13 86 08 00  	mv	a2, a7
80005398: 6f f0 1f fb  	j	0x80005348 <.LBB1_62+0x1cc>
8000539c: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800053a0: 13 85 79 00  	addi	a0, s3, 7
800053a4: 93 75 85 ff  	andi	a1, a0, -8
800053a8: 03 a9 05 00  	lw	s2, 0(a1)
800053ac: 13 e5 45 00  	ori	a0, a1, 4
800053b0: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800053b4: 33 65 39 01  	or	a0, s2, s3
800053b8: 23 24 b1 00  	sw	a1, 8(sp)
800053bc: 63 14 05 00  	bnez	a0, 0x800053c4 <.LBB1_62+0x248>
800053c0: 13 74 f4 fe  	andi	s0, s0, -17
800053c4: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800053c8: 93 75 04 40  	andi	a1, s0, 1024
800053cc: 93 d5 a5 00  	srli	a1, a1, 10
800053d0: 33 75 b5 00  	and	a0, a0, a1
800053d4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800053d8: 63 18 05 08  	bnez	a0, 0x80005468 <.LBB1_62+0x2ec>
800053dc: 93 04 00 00  	mv	s1, zero
800053e0: 13 75 04 02  	andi	a0, s0, 32
800053e4: 13 45 15 06  	xori	a0, a0, 97
800053e8: 13 05 65 0f  	addi	a0, a0, 246
800053ec: 23 2a a1 00  	sw	a0, 20(sp)
800053f0: 6f 00 40 02  	j	0x80005414 <.LBB1_62+0x298>
800053f4: 13 06 10 00  	addi	a2, zero, 1
800053f8: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800053fc: 93 b6 f4 01  	sltiu	a3, s1, 31
80005400: 33 f6 c6 00  	and	a2, a3, a2
80005404: 93 84 07 00  	mv	s1, a5
80005408: 13 09 05 00  	mv	s2, a0
8000540c: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005410: 63 0c 06 04  	beqz	a2, 0x80005468 <.LBB1_62+0x2ec>
;       value /= base;
80005414: 13 05 09 00  	mv	a0, s2
80005418: 93 85 09 00  	mv	a1, s3
8000541c: 13 06 0c 00  	mv	a2, s8
80005420: 93 06 00 00  	mv	a3, zero
80005424: 97 b0 ff ff  	auipc	ra, 1048571
80005428: e7 80 80 cb  	jalr	-840(ra)
8000542c: 33 06 85 03  	mul	a2, a0, s8
80005430: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005434: 13 77 e6 0f  	andi	a4, a2, 254
80005438: 93 06 00 03  	addi	a3, zero, 48
8000543c: 93 07 a0 00  	addi	a5, zero, 10
80005440: 63 64 f7 00  	bltu	a4, a5, 0x80005448 <.LBB1_62+0x2cc>
80005444: 83 26 41 01  	lw	a3, 20(sp)
80005448: 33 86 c6 00  	add	a2, a3, a2
8000544c: 93 06 c1 01  	addi	a3, sp, 28
80005450: b3 86 96 00  	add	a3, a3, s1
80005454: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005458: e3 9e 09 f8  	bnez	s3, 0x800053f4 <.LBB1_62+0x278>
8000545c: 33 36 89 01  	sltu	a2, s2, s8
80005460: 13 46 16 00  	xori	a2, a2, 1
80005464: 6f f0 5f f9  	j	0x800053f8 <.LBB1_62+0x27c>
80005468: 03 25 81 00  	lw	a0, 8(sp)
8000546c: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80005470: 13 07 c1 01  	addi	a4, sp, 28
80005474: 03 29 c1 00  	lw	s2, 12(sp)
80005478: 6f 00 40 40  	j	0x8000587c <.LBB1_124+0x2d0>

8000547c <.LBB1_108>:
8000547c: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80005480: 13 79 24 00  	andi	s2, s0, 2
80005484: 93 04 10 00  	addi	s1, zero, 1
80005488: 63 1e 09 02  	bnez	s2, 0x800054c4 <.LBB1_108+0x48>
8000548c: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80005490: 63 6a 9b 02  	bltu	s6, s1, 0x800054c4 <.LBB1_108+0x48>
80005494: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80005498: 13 0c fb ff  	addi	s8, s6, -1
8000549c: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800054a0: 33 86 8c 00  	add	a2, s9, s0
800054a4: 13 05 00 02  	addi	a0, zero, 32
800054a8: 93 05 0a 00  	mv	a1, s4
800054ac: 93 86 0a 00  	mv	a3, s5
800054b0: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800054b4: 13 04 14 00  	addi	s0, s0, 1
800054b8: e3 14 8c fe  	bne	s8, s0, 0x800054a0 <.LBB1_108+0x24>
800054bc: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800054c0: b3 8c 8c 00  	add	s9, s9, s0
800054c4: 03 c5 09 00  	lbu	a0, 0(s3)
800054c8: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
800054cc: 93 89 49 00  	addi	s3, s3, 4
800054d0: 13 8c 1c 00  	addi	s8, s9, 1
800054d4: 93 05 0a 00  	mv	a1, s4
800054d8: 13 86 0c 00  	mv	a2, s9
800054dc: 93 86 0a 00  	mv	a3, s5
800054e0: 13 89 0b 00  	mv	s2, s7
800054e4: e7 80 0b 00  	jalr	s7
800054e8: 33 b5 64 01  	sltu	a0, s1, s6
800054ec: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
800054f0: 33 65 a4 00  	or	a0, s0, a0
800054f4: 63 1c 05 3a  	bnez	a0, 0x800058ac <.LBB1_124+0x300>
;           while (l++ < width) {
800054f8: 33 04 9b 40  	sub	s0, s6, s1
800054fc: 93 0b e0 02  	addi	s7, zero, 46
80005500: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80005504: 13 0c 1c 00  	addi	s8, s8, 1
80005508: 13 05 00 02  	addi	a0, zero, 32
8000550c: 93 05 0a 00  	mv	a1, s4
80005510: 93 86 0a 00  	mv	a3, s5
80005514: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80005518: 13 04 f4 ff  	addi	s0, s0, -1
8000551c: e3 12 04 fe  	bnez	s0, 0x80005500 <.LBB1_108+0x84>
80005520: 13 0b 50 02  	addi	s6, zero, 37
80005524: 13 04 1d 00  	addi	s0, s10, 1
80005528: 6f f0 df 91  	j	0x80004e44 <.LBB1_183+0x30>

8000552c <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
8000552c: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80005530: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80005534: 63 14 05 00  	bnez	a0, 0x8000553c <.LBB1_117+0x10>
80005538: 93 fe fe fe  	andi	t4, t4, -17
8000553c: 93 04 a0 00  	addi	s1, zero, 10
80005540: 13 04 f0 00  	addi	s0, zero, 15
80005544: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80005548: 13 f6 0e 40  	andi	a2, t4, 1024
8000554c: 13 56 a6 00  	srli	a2, a2, 10
80005550: b3 f5 c5 00  	and	a1, a1, a2
80005554: 93 07 00 00  	mv	a5, zero
80005558: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
8000555c: 63 98 05 10  	bnez	a1, 0x8000566c <.LBB1_124+0xc0>
80005560: 93 05 00 00  	mv	a1, zero
80005564: 6f 00 40 03  	j	0x80005598 <.LBB1_117+0x6c>
80005568: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000556c: 33 06 d6 00  	add	a2, a2, a3
80005570: 93 87 15 00  	addi	a5, a1, 1
80005574: 93 06 c1 01  	addi	a3, sp, 28
80005578: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000557c: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80005580: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005584: 93 b5 f5 01  	sltiu	a1, a1, 31
80005588: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000558c: 23 80 c6 00  	sb	a2, 0(a3)
80005590: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005594: 63 0c 07 0c  	beqz	a4, 0x8000566c <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005598: 93 76 e5 00  	andi	a3, a0, 14
8000559c: 13 06 00 03  	addi	a2, zero, 48
800055a0: e3 e4 96 fc  	bltu	a3, s1, 0x80005568 <.LBB1_117+0x3c>
800055a4: 13 06 70 03  	addi	a2, zero, 55
800055a8: 6f f0 1f fc  	j	0x80005568 <.LBB1_117+0x3c>

800055ac <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800055ac: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800055b0: 03 c5 07 00  	lbu	a0, 0(a5)
800055b4: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
800055b8: 63 0c 05 02  	beqz	a0, 0x800055f0 <.LBB1_124+0x44>
800055bc: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
800055c0: 63 84 0b 00  	beqz	s7, 0x800055c8 <.LBB1_124+0x1c>
800055c4: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
800055c8: 93 85 f5 ff  	addi	a1, a1, -1
800055cc: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
800055d0: 03 c7 16 00  	lbu	a4, 1(a3)
800055d4: 13 86 16 00  	addi	a2, a3, 1
800055d8: b3 36 e0 00  	snez	a3, a4
800055dc: 33 37 b0 00  	snez	a4, a1
800055e0: 33 77 d7 00  	and	a4, a4, a3
800055e4: 93 85 f5 ff  	addi	a1, a1, -1
800055e8: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
800055ec: e3 12 07 fe  	bnez	a4, 0x800055d0 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
800055f0: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
800055f4: 93 75 04 40  	andi	a1, s0, 1024
800055f8: 93 b4 15 00  	seqz	s1, a1
800055fc: 23 2a c1 00  	sw	a2, 20(sp)
80005600: b3 35 76 01  	sltu	a1, a2, s7
80005604: b3 e5 b4 00  	or	a1, s1, a1
80005608: 63 94 05 00  	bnez	a1, 0x80005610 <.LBB1_124+0x64>
8000560c: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80005610: 93 75 24 00  	andi	a1, s0, 2
80005614: 23 26 b1 00  	sw	a1, 12(sp)
80005618: 63 96 05 2a  	bnez	a1, 0x800058c4 <.LBB1_124+0x318>
8000561c: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80005620: 63 fe 65 29  	bgeu	a1, s6, 0x800058bc <.LBB1_124+0x310>
80005624: 23 24 f1 00  	sw	a5, 8(sp)
80005628: 13 04 00 00  	mv	s0, zero
8000562c: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80005630: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
80005634: 33 86 8c 00  	add	a2, s9, s0
80005638: 13 05 00 02  	addi	a0, zero, 32
8000563c: 93 05 0a 00  	mv	a1, s4
80005640: 93 86 0a 00  	mv	a3, s5
80005644: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80005648: 13 04 14 00  	addi	s0, s0, 1
8000564c: e3 14 89 fe  	bne	s2, s0, 0x80005634 <.LBB1_124+0x88>
80005650: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80005654: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
80005658: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000565c: 23 2a b1 00  	sw	a1, 20(sp)
80005660: b3 8c 8c 00  	add	s9, s9, s0
80005664: 13 09 0c 00  	mv	s2, s8
80005668: 6f 00 c0 25  	j	0x800058c4 <.LBB1_124+0x318>
8000566c: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80005670: 13 07 c1 01  	addi	a4, sp, 28
80005674: 93 08 00 01  	addi	a7, zero, 16
80005678: 13 0e 80 00  	addi	t3, zero, 8
8000567c: 13 05 09 00  	mv	a0, s2
80005680: 93 05 0a 00  	mv	a1, s4
80005684: 13 86 0c 00  	mv	a2, s9
80005688: 93 86 0a 00  	mv	a3, s5
8000568c: 13 08 00 00  	mv	a6, zero
80005690: 93 83 0b 00  	mv	t2, s7
80005694: 97 10 00 00  	auipc	ra, 1
80005698: e7 80 00 fa  	jalr	-96(ra)
8000569c: 13 0c 05 00  	mv	s8, a0
800056a0: 6f 00 00 21  	j	0x800058b0 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800056a4: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800056a8: 63 14 08 00  	bnez	a6, 0x800056b0 <.LBB1_124+0x104>
800056ac: 13 74 f4 fe  	andi	s0, s0, -17
800056b0: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800056b4: 13 76 04 40  	andi	a2, s0, 1024
800056b8: 13 56 a6 00  	srli	a2, a2, 10
800056bc: b3 f5 c5 00  	and	a1, a1, a2
800056c0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800056c4: 63 9c 05 06  	bnez	a1, 0x8000573c <.LBB1_124+0x190>
800056c8: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800056cc: 13 56 f8 41  	srai	a2, a6, 31
800056d0: b3 06 c8 00  	add	a3, a6, a2
800056d4: b3 c6 c6 00  	xor	a3, a3, a2
800056d8: 13 76 04 02  	andi	a2, s0, 32
800056dc: 13 46 16 06  	xori	a2, a2, 97
800056e0: 93 08 66 0f  	addi	a7, a2, 246
800056e4: 6f 00 40 03  	j	0x80005718 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800056e8: 33 05 f6 00  	add	a0, a2, a5
800056ec: 93 87 15 00  	addi	a5, a1, 1
800056f0: 13 06 c1 01  	addi	a2, sp, 28
800056f4: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800056f8: b3 b6 86 01  	sltu	a3, a3, s8
800056fc: 93 c6 16 00  	xori	a3, a3, 1
80005700: 93 b5 f5 01  	sltiu	a1, a1, 31
80005704: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005708: 23 00 a6 00  	sb	a0, 0(a2)
8000570c: 93 85 07 00  	mv	a1, a5
80005710: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005714: 63 84 04 02  	beqz	s1, 0x8000573c <.LBB1_124+0x190>
;       value /= base;
80005718: 33 d7 86 03  	divu	a4, a3, s8
8000571c: 33 06 87 03  	mul	a2, a4, s8
80005720: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005724: 13 f5 e7 0f  	andi	a0, a5, 254
80005728: 13 06 00 03  	addi	a2, zero, 48
8000572c: 93 04 a0 00  	addi	s1, zero, 10
80005730: e3 6c 95 fa  	bltu	a0, s1, 0x800056e8 <.LBB1_124+0x13c>
80005734: 13 86 08 00  	mv	a2, a7
80005738: 6f f0 1f fb  	j	0x800056e8 <.LBB1_124+0x13c>
8000573c: 93 89 49 00  	addi	s3, s3, 4
80005740: 13 58 f8 01  	srli	a6, a6, 31
80005744: 13 07 c1 01  	addi	a4, sp, 28
80005748: 13 05 09 00  	mv	a0, s2
8000574c: 93 05 0a 00  	mv	a1, s4
80005750: 13 86 0c 00  	mv	a2, s9
80005754: 93 86 0a 00  	mv	a3, s5
80005758: 6f 00 80 13  	j	0x80005890 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
8000575c: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80005760: 63 14 05 00  	bnez	a0, 0x80005768 <.LBB1_124+0x1bc>
80005764: 13 74 f4 fe  	andi	s0, s0, -17
80005768: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
8000576c: 13 76 04 40  	andi	a2, s0, 1024
80005770: 13 56 a6 00  	srli	a2, a2, 10
80005774: b3 f5 c5 00  	and	a1, a1, a2
80005778: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000577c: 63 9c 05 0e  	bnez	a1, 0x80005874 <.LBB1_124+0x2c8>
80005780: 13 06 00 00  	mv	a2, zero
80005784: 93 75 04 02  	andi	a1, s0, 32
80005788: 93 c5 15 06  	xori	a1, a1, 97
8000578c: 13 88 65 0f  	addi	a6, a1, 246
80005790: 6f 00 40 03  	j	0x800057c4 <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005794: 33 87 e7 00  	add	a4, a5, a4
80005798: 93 07 16 00  	addi	a5, a2, 1
8000579c: 93 05 c1 01  	addi	a1, sp, 28
800057a0: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800057a4: 33 35 85 01  	sltu	a0, a0, s8
800057a8: 13 45 15 00  	xori	a0, a0, 1
800057ac: 13 36 f6 01  	sltiu	a2, a2, 31
800057b0: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800057b4: 23 80 e4 00  	sb	a4, 0(s1)
800057b8: 13 86 07 00  	mv	a2, a5
800057bc: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800057c0: 63 8a 05 0a  	beqz	a1, 0x80005874 <.LBB1_124+0x2c8>
;       value /= base;
800057c4: b3 56 85 03  	divu	a3, a0, s8
800057c8: 33 87 86 03  	mul	a4, a3, s8
800057cc: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800057d0: 93 74 e7 0f  	andi	s1, a4, 254
800057d4: 93 07 00 03  	addi	a5, zero, 48
800057d8: 93 05 a0 00  	addi	a1, zero, 10
800057dc: e3 ec b4 fa  	bltu	s1, a1, 0x80005794 <.LBB1_124+0x1e8>
800057e0: 93 07 08 00  	mv	a5, a6
800057e4: 6f f0 1f fb  	j	0x80005794 <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800057e8: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800057ec: 63 14 05 00  	bnez	a0, 0x800057f4 <.LBB1_124+0x248>
800057f0: 13 74 f4 fe  	andi	s0, s0, -17
800057f4: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800057f8: 13 76 04 40  	andi	a2, s0, 1024
800057fc: 13 56 a6 00  	srli	a2, a2, 10
80005800: b3 f5 c5 00  	and	a1, a1, a2
80005804: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80005808: 63 96 05 06  	bnez	a1, 0x80005874 <.LBB1_124+0x2c8>
8000580c: 13 06 00 00  	mv	a2, zero
80005810: 93 75 04 02  	andi	a1, s0, 32
80005814: 93 c5 15 06  	xori	a1, a1, 97
80005818: 13 88 65 0f  	addi	a6, a1, 246
8000581c: 6f 00 40 03  	j	0x80005850 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005820: 33 87 e7 00  	add	a4, a5, a4
80005824: 93 07 16 00  	addi	a5, a2, 1
80005828: 93 05 c1 01  	addi	a1, sp, 28
8000582c: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80005830: 33 35 85 01  	sltu	a0, a0, s8
80005834: 13 45 15 00  	xori	a0, a0, 1
80005838: 13 36 f6 01  	sltiu	a2, a2, 31
8000583c: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80005840: 23 80 e4 00  	sb	a4, 0(s1)
80005844: 13 86 07 00  	mv	a2, a5
80005848: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000584c: 63 84 05 02  	beqz	a1, 0x80005874 <.LBB1_124+0x2c8>
;       value /= base;
80005850: b3 56 85 03  	divu	a3, a0, s8
80005854: 33 87 86 03  	mul	a4, a3, s8
80005858: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000585c: 93 74 e7 0f  	andi	s1, a4, 254
80005860: 93 07 00 03  	addi	a5, zero, 48
80005864: 93 05 a0 00  	addi	a1, zero, 10
80005868: e3 ec b4 fa  	bltu	s1, a1, 0x80005820 <.LBB1_124+0x274>
8000586c: 93 07 08 00  	mv	a5, a6
80005870: 6f f0 1f fb  	j	0x80005820 <.LBB1_124+0x274>
80005874: 93 89 49 00  	addi	s3, s3, 4
80005878: 13 07 c1 01  	addi	a4, sp, 28
8000587c: 13 05 09 00  	mv	a0, s2
80005880: 93 05 0a 00  	mv	a1, s4
80005884: 13 86 0c 00  	mv	a2, s9
80005888: 93 86 0a 00  	mv	a3, s5
8000588c: 13 08 00 00  	mv	a6, zero
80005890: 93 08 0c 00  	mv	a7, s8
80005894: 93 83 0b 00  	mv	t2, s7
80005898: 13 0e 0b 00  	mv	t3, s6
8000589c: 93 0e 04 00  	mv	t4, s0
800058a0: 97 10 00 00  	auipc	ra, 1
800058a4: e7 80 40 d9  	jalr	-620(ra)
800058a8: 13 0c 05 00  	mv	s8, a0
800058ac: 13 0b 50 02  	addi	s6, zero, 37
800058b0: 93 0b e0 02  	addi	s7, zero, 46
800058b4: 13 04 1d 00  	addi	s0, s10, 1
800058b8: 6f f0 cf d8  	j	0x80004e44 <.LBB1_183+0x30>
800058bc: 93 85 15 00  	addi	a1, a1, 1
800058c0: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800058c4: 63 00 05 04  	beqz	a0, 0x80005904 <.LBB1_124+0x358>
800058c8: 13 84 17 00  	addi	s0, a5, 1
800058cc: 6f 00 00 03  	j	0x800058fc <.LBB1_124+0x350>
800058d0: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800058d4: 13 8c 1c 00  	addi	s8, s9, 1
800058d8: 13 75 f5 0f  	andi	a0, a0, 255
800058dc: 93 05 0a 00  	mv	a1, s4
800058e0: 13 86 0c 00  	mv	a2, s9
800058e4: 93 86 0a 00  	mv	a3, s5
800058e8: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800058ec: 03 45 04 00  	lbu	a0, 0(s0)
800058f0: 13 04 14 00  	addi	s0, s0, 1
800058f4: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800058f8: 63 08 05 00  	beqz	a0, 0x80005908 <.LBB1_124+0x35c>
800058fc: e3 9c 04 fc  	bnez	s1, 0x800058d4 <.LBB1_124+0x328>
80005900: e3 98 0b fc  	bnez	s7, 0x800058d0 <.LBB1_124+0x324>
80005904: 13 8c 0c 00  	mv	s8, s9
80005908: 03 25 c1 00  	lw	a0, 12(sp)
8000590c: 13 35 15 00  	seqz	a0, a0
80005910: 03 26 41 01  	lw	a2, 20(sp)
80005914: b3 35 66 01  	sltu	a1, a2, s6
80005918: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
8000591c: 33 65 b5 00  	or	a0, a0, a1
80005920: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80005924: e3 14 05 f8  	bnez	a0, 0x800058ac <.LBB1_124+0x300>
;           while (l++ < width) {
80005928: 33 04 cb 40  	sub	s0, s6, a2
8000592c: 93 0b e0 02  	addi	s7, zero, 46
80005930: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80005934: 13 0c 1c 00  	addi	s8, s8, 1
80005938: 13 05 00 02  	addi	a0, zero, 32
8000593c: 93 05 0a 00  	mv	a1, s4
80005940: 93 86 0a 00  	mv	a3, s5
80005944: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80005948: 13 04 f4 ff  	addi	s0, s0, -1
8000594c: e3 12 04 fe  	bnez	s0, 0x80005930 <.LBB1_124+0x384>
80005950: 13 0b 50 02  	addi	s6, zero, 37
80005954: 13 04 1d 00  	addi	s0, s10, 1
80005958: 6f f0 cf ce  	j	0x80004e44 <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000595c: 13 86 0c 00  	mv	a2, s9
80005960: 63 e4 5c 01  	bltu	s9, s5, 0x80005968 <.LBB1_124+0x3bc>
80005964: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80005968: 13 05 00 00  	mv	a0, zero
8000596c: 93 05 0a 00  	mv	a1, s4
80005970: 93 86 0a 00  	mv	a3, s5
80005974: e7 00 09 00  	jalr	s2
;   return (int)idx;
80005978: 13 85 0c 00  	mv	a0, s9
8000597c: 83 2d c1 03  	lw	s11, 60(sp)
80005980: 03 2d 01 04  	lw	s10, 64(sp)
80005984: 83 2c 41 04  	lw	s9, 68(sp)
80005988: 03 2c 81 04  	lw	s8, 72(sp)
8000598c: 83 2b c1 04  	lw	s7, 76(sp)
80005990: 03 2b 01 05  	lw	s6, 80(sp)
80005994: 83 2a 41 05  	lw	s5, 84(sp)
80005998: 03 2a 81 05  	lw	s4, 88(sp)
8000599c: 83 29 c1 05  	lw	s3, 92(sp)
800059a0: 03 29 01 06  	lw	s2, 96(sp)
800059a4: 83 24 41 06  	lw	s1, 100(sp)
800059a8: 03 24 81 06  	lw	s0, 104(sp)
800059ac: 83 20 c1 06  	lw	ra, 108(sp)
800059b0: 13 01 01 07  	addi	sp, sp, 112
800059b4: 67 80 00 00  	ret

800059b8 <_out_char.llvm.1805434900161566649>:
;   if (character) {
800059b8: 63 04 05 0a  	beqz	a0, 0x80005a60 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
800059bc: f3 25 40 f1  	csrr	a1, mhartid
800059c0: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
800059c4: 33 86 c5 02  	mul	a2, a1, a2

800059c8 <.LBB2_6>:
800059c8: 97 26 00 00  	auipc	a3, 2
800059cc: 93 86 c6 b5  	addi	a3, a3, -1188
800059d0: b3 05 d6 00  	add	a1, a2, a3
800059d4: 03 a7 05 00  	lw	a4, 0(a1)
800059d8: 93 07 17 00  	addi	a5, a4, 1
800059dc: 23 a0 f5 00  	sw	a5, 0(a1)
800059e0: 33 87 e5 00  	add	a4, a1, a4
800059e4: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
800059e8: 03 a7 05 00  	lw	a4, 0(a1)
800059ec: 13 07 47 c0  	addi	a4, a4, -1020
800059f0: 33 37 e0 00  	snez	a4, a4
800059f4: 13 05 65 ff  	addi	a0, a0, -10
800059f8: 33 35 a0 00  	snez	a0, a0
800059fc: 33 75 e5 00  	and	a0, a0, a4
80005a00: 63 10 05 06  	bnez	a0, 0x80005a60 <.LBB2_8+0x18>
80005a04: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80005a08: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80005a0c: 23 26 05 00  	sw	zero, 12(a0)
80005a10: 93 06 00 04  	addi	a3, zero, 64
80005a14: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80005a18: 23 2a 05 00  	sw	zero, 20(a0)
80005a1c: 93 06 10 00  	addi	a3, zero, 1
80005a20: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80005a24: 23 2e 05 00  	sw	zero, 28(a0)
80005a28: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80005a2c: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80005a30: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80005a34: 23 22 05 02  	sw	zero, 36(a0)
80005a38: 23 20 c5 02  	sw	a2, 32(a0)

80005a3c <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80005a3c: 17 25 00 00  	auipc	a0, 2
80005a40: 13 05 45 8c  	addi	a0, a0, -1852
80005a44: 23 20 d5 00  	sw	a3, 0(a0)

80005a48 <.LBB2_8>:
80005a48: 17 25 00 00  	auipc	a0, 2
80005a4c: 13 05 85 8f  	addi	a0, a0, -1800
;         while (fromhost == 0)
80005a50: 03 26 05 00  	lw	a2, 0(a0)
80005a54: e3 0e 06 fe  	beqz	a2, 0x80005a50 <.LBB2_8+0x8>
;         fromhost = 0;
80005a58: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80005a5c: 23 a0 05 00  	sw	zero, 0(a1)
; }
80005a60: 67 80 00 00  	ret

80005a64 <_out_null>:
; }
80005a64: 67 80 00 00  	ret

80005a68 <_ftoa>:
; {
80005a68: 13 01 01 f9  	addi	sp, sp, -112
80005a6c: 23 26 11 06  	sw	ra, 108(sp)
80005a70: 23 24 81 06  	sw	s0, 104(sp)
80005a74: 23 22 91 06  	sw	s1, 100(sp)
80005a78: 23 20 21 07  	sw	s2, 96(sp)
80005a7c: 23 2e 31 05  	sw	s3, 92(sp)
80005a80: 23 2c 41 05  	sw	s4, 88(sp)
80005a84: 23 2a 51 05  	sw	s5, 84(sp)
80005a88: 23 28 61 05  	sw	s6, 80(sp)
80005a8c: 23 26 71 05  	sw	s7, 76(sp)
80005a90: 23 24 81 05  	sw	s8, 72(sp)
80005a94: 23 22 91 05  	sw	s9, 68(sp)
80005a98: 23 20 a1 05  	sw	s10, 64(sp)
80005a9c: 27 3c 81 02  	fsd	fs0, 56(sp)
80005aa0: 27 38 91 02  	fsd	fs1, 48(sp)
80005aa4: 27 34 21 03  	fsd	fs2, 40(sp)

80005aa8 <.LBB4_83>:
80005aa8: 97 24 00 00  	auipc	s1, 2
80005aac: 93 84 04 9d  	addi	s1, s1, -1584
80005ab0: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80005ab4: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80005ab8: 93 0a 08 00  	mv	s5, a6
80005abc: 13 89 07 00  	mv	s2, a5
80005ac0: 93 89 06 00  	mv	s3, a3
80005ac4: 13 0a 06 00  	mv	s4, a2
80005ac8: 13 8b 05 00  	mv	s6, a1
80005acc: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80005ad0: 63 98 04 0e  	bnez	s1, 0x80005bc0 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005ad4: 13 f5 2a 00  	andi	a0, s5, 2
80005ad8: 93 f5 3a 00  	andi	a1, s5, 3
80005adc: b3 35 b0 00  	snez	a1, a1
80005ae0: 13 36 59 00  	sltiu	a2, s2, 5
80005ae4: b3 65 b6 00  	or	a1, a2, a1
80005ae8: 93 5c 15 00  	srli	s9, a0, 1
80005aec: 13 04 0a 00  	mv	s0, s4
80005af0: 63 96 05 02  	bnez	a1, 0x80005b1c <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80005af4: 93 04 c9 ff  	addi	s1, s2, -4
80005af8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005afc: 13 04 16 00  	addi	s0, a2, 1
80005b00: 13 05 00 02  	addi	a0, zero, 32
80005b04: 93 05 0b 00  	mv	a1, s6
80005b08: 93 86 09 00  	mv	a3, s3
80005b0c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80005b10: 93 84 f4 ff  	addi	s1, s1, -1
80005b14: 13 06 04 00  	mv	a2, s0
80005b18: e3 92 04 fe  	bnez	s1, 0x80005afc <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80005b1c: 93 04 14 00  	addi	s1, s0, 1
80005b20: 13 05 d0 02  	addi	a0, zero, 45
80005b24: 93 05 0b 00  	mv	a1, s6
80005b28: 13 06 04 00  	mv	a2, s0
80005b2c: 93 86 09 00  	mv	a3, s3
80005b30: e7 80 0b 00  	jalr	s7
80005b34: 93 0a 24 00  	addi	s5, s0, 2
80005b38: 13 05 90 06  	addi	a0, zero, 105
80005b3c: 93 05 0b 00  	mv	a1, s6
80005b40: 13 86 04 00  	mv	a2, s1
80005b44: 93 86 09 00  	mv	a3, s3
80005b48: e7 80 0b 00  	jalr	s7
80005b4c: 13 0c 34 00  	addi	s8, s0, 3
80005b50: 13 05 e0 06  	addi	a0, zero, 110
80005b54: 93 05 0b 00  	mv	a1, s6
80005b58: 13 86 0a 00  	mv	a2, s5
80005b5c: 93 86 09 00  	mv	a3, s3
80005b60: e7 80 0b 00  	jalr	s7
80005b64: 93 04 44 00  	addi	s1, s0, 4
80005b68: 13 05 60 06  	addi	a0, zero, 102
80005b6c: 93 05 0b 00  	mv	a1, s6
80005b70: 13 06 0c 00  	mv	a2, s8
80005b74: 93 86 09 00  	mv	a3, s3
80005b78: e7 80 0b 00  	jalr	s7
80005b7c: 33 85 44 41  	sub	a0, s1, s4
80005b80: 33 35 25 01  	sltu	a0, a0, s2
80005b84: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005b88: 93 c5 1c 00  	xori	a1, s9, 1
80005b8c: 33 e5 a5 00  	or	a0, a1, a0
80005b90: 63 16 05 56  	bnez	a0, 0x800060fc <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80005b94: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005b98: 13 84 14 00  	addi	s0, s1, 1
80005b9c: 13 05 00 02  	addi	a0, zero, 32
80005ba0: 93 05 0b 00  	mv	a1, s6
80005ba4: 13 86 04 00  	mv	a2, s1
80005ba8: 93 86 09 00  	mv	a3, s3
80005bac: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80005bb0: 33 05 8a 00  	add	a0, s4, s0
80005bb4: 93 04 04 00  	mv	s1, s0
80005bb8: e3 60 25 ff  	bltu	a0, s2, 0x80005b98 <.LBB4_83+0xf0>
80005bbc: 6f 00 40 54  	j	0x80006100 <.LBB4_90+0x378>
80005bc0: 53 04 a5 22  	fmv.d	fs0, fa0

80005bc4 <.LBB4_84>:
80005bc4: 17 25 00 00  	auipc	a0, 2
80005bc8: 13 05 c5 8b  	addi	a0, a0, -1860
80005bcc: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80005bd0: 53 05 05 a2  	fle.d	a0, fa0, ft0
80005bd4: 63 1e 05 00  	bnez	a0, 0x80005bf0 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80005bd8: 93 f5 4a 00  	andi	a1, s5, 4
80005bdc: 13 b5 15 00  	seqz	a0, a1
80005be0: 63 82 05 06  	beqz	a1, 0x80005c44 <.LBB4_88>

80005be4 <.LBB4_85>:
80005be4: 17 1c 00 00  	auipc	s8, 1
80005be8: 13 0c 0c 4c  	addi	s8, s8, 1216
80005bec: 6f 00 00 06  	j	0x80005c4c <.LBB4_88+0x8>

80005bf0 <.LBB4_86>:
80005bf0: 17 25 00 00  	auipc	a0, 2
80005bf4: 13 05 85 89  	addi	a0, a0, -1896
80005bf8: 07 30 05 00  	fld	ft0, 0(a0)

80005bfc <.LBB4_87>:
80005bfc: 17 25 00 00  	auipc	a0, 2
80005c00: 13 05 45 89  	addi	a0, a0, -1900
80005c04: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80005c08: 53 05 04 a2  	fle.d	a0, fs0, ft0
80005c0c: d3 85 80 a2  	fle.d	a1, ft1, fs0
80005c10: 33 75 b5 00  	and	a0, a0, a1
80005c14: 63 1e 05 0e  	bnez	a0, 0x80005d10 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80005c18: 13 85 0b 00  	mv	a0, s7
80005c1c: 93 05 0b 00  	mv	a1, s6
80005c20: 13 06 0a 00  	mv	a2, s4
80005c24: 93 86 09 00  	mv	a3, s3
80005c28: 53 05 84 22  	fmv.d	fa0, fs0
80005c2c: 93 07 09 00  	mv	a5, s2
80005c30: 13 88 0a 00  	mv	a6, s5
80005c34: 97 00 00 00  	auipc	ra, 0
80005c38: e7 80 40 51  	jalr	1300(ra)
80005c3c: 13 04 05 00  	mv	s0, a0
80005c40: 6f 00 00 4c  	j	0x80006100 <.LBB4_90+0x378>

80005c44 <.LBB4_88>:
80005c44: 17 1c 00 00  	auipc	s8, 1
80005c48: 13 0c 1c 47  	addi	s8, s8, 1137
80005c4c: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80005c50: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005c54: 13 f5 3a 00  	andi	a0, s5, 3
80005c58: 33 35 a0 00  	snez	a0, a0
80005c5c: b3 b5 2c 01  	sltu	a1, s9, s2
80005c60: 93 c5 15 00  	xori	a1, a1, 1
80005c64: 33 65 b5 00  	or	a0, a0, a1
80005c68: 93 fa 2a 00  	andi	s5, s5, 2
80005c6c: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80005c70: 63 16 05 02  	bnez	a0, 0x80005c9c <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80005c74: 33 04 99 41  	sub	s0, s2, s9
80005c78: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80005c7c: 93 04 16 00  	addi	s1, a2, 1
80005c80: 13 05 00 02  	addi	a0, zero, 32
80005c84: 93 05 0b 00  	mv	a1, s6
80005c88: 93 86 09 00  	mv	a3, s3
80005c8c: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80005c90: 13 04 f4 ff  	addi	s0, s0, -1
80005c94: 13 86 04 00  	mv	a2, s1
80005c98: e3 12 04 fe  	bnez	s0, 0x80005c7c <.LBB4_88+0x38>
80005c9c: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80005ca0: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80005ca4: 33 05 9c 01  	add	a0, s8, s9
80005ca8: 03 45 05 00  	lbu	a0, 0(a0)
80005cac: 13 86 04 00  	mv	a2, s1
80005cb0: 13 84 fc ff  	addi	s0, s9, -1
80005cb4: 93 84 14 00  	addi	s1, s1, 1
80005cb8: 93 05 0b 00  	mv	a1, s6
80005cbc: 93 86 09 00  	mv	a3, s3
80005cc0: e7 80 0b 00  	jalr	s7
80005cc4: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80005cc8: e3 1e 04 fc  	bnez	s0, 0x80005ca4 <.LBB4_88+0x60>
80005ccc: 33 85 44 41  	sub	a0, s1, s4
80005cd0: 33 35 25 01  	sltu	a0, a0, s2
80005cd4: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80005cd8: 93 c5 1a 00  	xori	a1, s5, 1
80005cdc: 33 e5 a5 00  	or	a0, a1, a0
80005ce0: 63 1e 05 40  	bnez	a0, 0x800060fc <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80005ce4: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80005ce8: 13 84 14 00  	addi	s0, s1, 1
80005cec: 13 05 00 02  	addi	a0, zero, 32
80005cf0: 93 05 0b 00  	mv	a1, s6
80005cf4: 13 86 04 00  	mv	a2, s1
80005cf8: 93 86 09 00  	mv	a3, s3
80005cfc: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80005d00: 33 05 8a 00  	add	a0, s4, s0
80005d04: 93 04 04 00  	mv	s1, s0
80005d08: e3 60 25 ff  	bltu	a0, s2, 0x80005ce8 <.LBB4_88+0xa4>
80005d0c: 6f 00 40 3f  	j	0x80006100 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80005d10: 13 f5 0a 40  	andi	a0, s5, 1024
80005d14: 13 0c 60 00  	addi	s8, zero, 6
80005d18: 63 04 05 00  	beqz	a0, 0x80005d20 <.LBB4_88+0xdc>
80005d1c: 13 0c 07 00  	mv	s8, a4
80005d20: 13 05 a0 00  	addi	a0, zero, 10
80005d24: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80005d28: 63 6c ac 02  	bltu	s8, a0, 0x80005d60 <.LBB4_88+0x11c>
80005d2c: 93 04 6c ff  	addi	s1, s8, -10
80005d30: 13 05 f0 01  	addi	a0, zero, 31
80005d34: 63 e4 a4 00  	bltu	s1, a0, 0x80005d3c <.LBB4_88+0xf8>
80005d38: 93 04 f0 01  	addi	s1, zero, 31
80005d3c: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80005d40: 13 05 81 00  	addi	a0, sp, 8
80005d44: 93 05 00 03  	addi	a1, zero, 48
80005d48: 13 06 04 00  	mv	a2, s0
80005d4c: 97 a0 ff ff  	auipc	ra, 1048570
80005d50: e7 80 40 2b  	jalr	692(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80005d54: 13 c5 f4 ff  	not	a0, s1
80005d58: 33 0c ac 00  	add	s8, s8, a0
80005d5c: 6f 00 80 00  	j	0x80005d64 <.LBB4_88+0x120>
80005d60: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80005d64: 13 15 3c 00  	slli	a0, s8, 3

80005d68 <.LBB4_89>:
80005d68: 97 15 00 00  	auipc	a1, 1
80005d6c: 93 85 05 51  	addi	a1, a1, 1296
80005d70: 33 05 b5 00  	add	a0, a0, a1
80005d74: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80005d78: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80005d7c: 53 80 04 d2  	fcvt.d.w	ft0, s1
80005d80: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80005d84: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80005d88 <.LBB4_90>:
80005d88: 17 15 00 00  	auipc	a0, 1
80005d8c: 13 05 05 71  	addi	a0, a0, 1808
80005d90: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80005d94: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80005d98: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80005d9c: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80005da0: d3 05 01 a2  	fle.d	a1, ft2, ft0
80005da4: 63 90 05 02  	bnez	a1, 0x80005dc4 <.LBB4_90+0x3c>
;     ++frac;
80005da8: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80005dac: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80005db0: d3 15 11 a2  	flt.d	a1, ft2, ft1
80005db4: 63 94 05 02  	bnez	a1, 0x80005ddc <.LBB4_90+0x54>
80005db8: 13 05 00 00  	mv	a0, zero
;       ++whole;
80005dbc: 93 84 14 00  	addi	s1, s1, 1
80005dc0: 6f 00 c0 01  	j	0x80005ddc <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80005dc4: d3 15 01 a2  	flt.d	a1, ft2, ft0
80005dc8: 63 9a 05 00  	bnez	a1, 0x80005ddc <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80005dcc: 93 35 15 00  	seqz	a1, a0
80005dd0: 13 76 15 00  	andi	a2, a0, 1
80005dd4: b3 65 b6 00  	or	a1, a2, a1
80005dd8: 33 85 a5 00  	add	a0, a1, a0
80005ddc: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80005de0: 63 0c 0c 0c  	beqz	s8, 0x80005eb8 <.LBB4_90+0x130>
80005de4: 13 06 00 00  	mv	a2, zero
80005de8: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80005dec: 33 83 85 00  	add	t1, a1, s0
80005df0: 93 02 00 02  	addi	t0, zero, 32
80005df4: 33 87 82 40  	sub	a4, t0, s0
80005df8: b7 d5 cc cc  	lui	a1, 838861
80005dfc: 93 83 d5 cc  	addi	t2, a1, -819
80005e00: 13 08 a0 00  	addi	a6, zero, 10
80005e04: 93 08 90 00  	addi	a7, zero, 9
80005e08: 63 04 c7 0c  	beq	a4, a2, 0x80005ed0 <.LBB4_90+0x148>
80005e0c: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80005e10: 33 35 75 02  	mulhu	a0, a0, t2
80005e14: 13 55 35 00  	srli	a0, a0, 3
80005e18: b3 06 05 03  	mul	a3, a0, a6
80005e1c: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80005e20: 93 e6 06 03  	ori	a3, a3, 48
80005e24: b3 07 c3 00  	add	a5, t1, a2
80005e28: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80005e2c: 13 06 16 00  	addi	a2, a2, 1
80005e30: e3 ec b8 fc  	bltu	a7, a1, 0x80005e08 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80005e34: 33 05 c4 00  	add	a0, s0, a2
80005e38: 93 05 f5 ff  	addi	a1, a0, -1
80005e3c: 93 06 e0 01  	addi	a3, zero, 30
80005e40: b3 b6 b6 00  	sltu	a3, a3, a1
80005e44: 33 47 cc 00  	xor	a4, s8, a2
80005e48: 13 37 17 00  	seqz	a4, a4
80005e4c: b3 e6 e6 00  	or	a3, a3, a4
80005e50: 63 94 06 08  	bnez	a3, 0x80005ed8 <.LBB4_90+0x150>
80005e54: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80005e58: 33 05 85 00  	add	a0, a0, s0
80005e5c: 93 45 f6 ff  	not	a1, a2
80005e60: 33 8c 85 01  	add	s8, a1, s8
80005e64: 33 04 c4 00  	add	s0, s0, a2
80005e68: 93 05 f0 01  	addi	a1, zero, 31
80005e6c: b3 86 85 40  	sub	a3, a1, s0
80005e70: 33 05 c5 00  	add	a0, a0, a2
80005e74: 93 05 0c 00  	mv	a1, s8
80005e78: 63 64 dc 00  	bltu	s8, a3, 0x80005e80 <.LBB4_90+0xf8>
80005e7c: 93 85 06 00  	mv	a1, a3
80005e80: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80005e84: 93 05 00 03  	addi	a1, zero, 48
80005e88: 97 a0 ff ff  	auipc	ra, 1048570
80005e8c: e7 80 80 17  	jalr	376(ra)
80005e90: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80005e94: b3 05 a4 00  	add	a1, s0, a0
80005e98: 93 b5 f5 01  	sltiu	a1, a1, 31
80005e9c: 33 46 ac 00  	xor	a2, s8, a0
80005ea0: 33 36 c0 00  	snez	a2, a2
80005ea4: 33 f6 c5 00  	and	a2, a1, a2
80005ea8: 13 05 15 00  	addi	a0, a0, 1
80005eac: e3 14 06 fe  	bnez	a2, 0x80005e94 <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80005eb0: 33 05 a4 00  	add	a0, s0, a0
80005eb4: 6f 00 80 02  	j	0x80005edc <.LBB4_90+0x154>
;     diff = value - (double)whole;
80005eb8: d3 80 04 d2  	fcvt.d.w	ft1, s1
80005ebc: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80005ec0: 53 05 10 a2  	fle.d	a0, ft0, ft1
80005ec4: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80005ec8: b3 84 a4 00  	add	s1, s1, a0
80005ecc: 6f 00 c0 03  	j	0x80005f08 <.LBB4_90+0x180>
80005ed0: 13 04 00 02  	addi	s0, zero, 32
80005ed4: 6f 00 80 03  	j	0x80005f0c <.LBB4_90+0x184>
80005ed8: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80005edc: 63 8e 05 00  	beqz	a1, 0x80005ef8 <.LBB4_90+0x170>
;       buf[len++] = '.';
80005ee0: 13 04 15 00  	addi	s0, a0, 1
80005ee4: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80005ee8: 33 85 a5 00  	add	a0, a1, a0
80005eec: 93 05 e0 02  	addi	a1, zero, 46
80005ef0: 23 00 b5 00  	sb	a1, 0(a0)
80005ef4: 6f 00 80 00  	j	0x80005efc <.LBB4_90+0x174>
80005ef8: 13 04 05 00  	mv	s0, a0
80005efc: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80005f00: 93 02 04 00  	mv	t0, s0
80005f04: 63 64 85 00  	bltu	a0, s0, 0x80005f0c <.LBB4_90+0x184>
80005f08: 93 02 00 02  	addi	t0, zero, 32
80005f0c: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80005f10: 37 65 66 66  	lui	a0, 419430
80005f14: 93 05 75 66  	addi	a1, a0, 1639
80005f18: 13 08 a0 00  	addi	a6, zero, 10
80005f1c: 93 06 81 00  	addi	a3, sp, 8
80005f20: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80005f24: 63 80 82 04  	beq	t0, s0, 0x80005f64 <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80005f28: 33 95 b4 02  	mulh	a0, s1, a1
80005f2c: 93 57 f5 01  	srli	a5, a0, 31
80005f30: 13 55 25 40  	srai	a0, a0, 2
80005f34: 33 05 f5 00  	add	a0, a0, a5
80005f38: b3 07 05 03  	mul	a5, a0, a6
80005f3c: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80005f40: 93 87 07 03  	addi	a5, a5, 48
80005f44: 13 0c 14 00  	addi	s8, s0, 1
80005f48: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80005f4c: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80005f50: 23 00 f4 00  	sb	a5, 0(s0)
80005f54: 13 04 0c 00  	mv	s0, s8
80005f58: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
80005f5c: e3 64 c7 fc  	bltu	a4, a2, 0x80005f24 <.LBB4_90+0x19c>
80005f60: 6f 00 80 00  	j	0x80005f68 <.LBB4_90+0x1e0>
80005f64: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80005f68: 93 f4 3a 00  	andi	s1, s5, 3
80005f6c: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
80005f70: 63 96 a4 06  	bne	s1, a0, 0x80005fdc <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80005f74: 63 0c 09 00  	beqz	s2, 0x80005f8c <.LBB4_90+0x204>
80005f78: 13 f5 ca 00  	andi	a0, s5, 12
80005f7c: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80005f80: 33 e5 ac 00  	or	a0, s9, a0
80005f84: 33 09 a9 40  	sub	s2, s2, a0
80005f88: 6f 00 80 00  	j	0x80005f90 <.LBB4_90+0x208>
80005f8c: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80005f90: 33 35 2c 01  	sltu	a0, s8, s2
80005f94: 93 45 15 00  	xori	a1, a0, 1
80005f98: 13 05 f0 01  	addi	a0, zero, 31
80005f9c: 33 36 85 01  	sltu	a2, a0, s8
80005fa0: b3 65 b6 00  	or	a1, a2, a1
80005fa4: 63 9c 05 02  	bnez	a1, 0x80005fdc <.LBB4_90+0x254>
80005fa8: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80005fac: 93 45 fc ff  	not	a1, s8
80005fb0: b3 05 b9 00  	add	a1, s2, a1
80005fb4: 33 06 85 41  	sub	a2, a0, s8
80005fb8: 33 85 86 01  	add	a0, a3, s8
80005fbc: 63 e4 c5 00  	bltu	a1, a2, 0x80005fc4 <.LBB4_90+0x23c>
80005fc0: 93 05 06 00  	mv	a1, a2
80005fc4: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80005fc8: 93 05 00 03  	addi	a1, zero, 48
80005fcc: 13 06 04 00  	mv	a2, s0
80005fd0: 97 a0 ff ff  	auipc	ra, 1048570
80005fd4: e7 80 00 03  	jalr	48(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80005fd8: 33 0c 84 01  	add	s8, s0, s8
80005fdc: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80005fe0: 63 6a 85 05  	bltu	a0, s8, 0x80006034 <.LBB4_90+0x2ac>
;     if (negative) {
80005fe4: 63 8c 0c 00  	beqz	s9, 0x80005ffc <.LBB4_90+0x274>
80005fe8: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80005fec: 33 05 85 01  	add	a0, a0, s8
80005ff0: 13 0c 1c 00  	addi	s8, s8, 1
80005ff4: 93 05 d0 02  	addi	a1, zero, 45
80005ff8: 6f 00 80 03  	j	0x80006030 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80005ffc: 13 f5 4a 00  	andi	a0, s5, 4
80006000: 63 10 05 02  	bnez	a0, 0x80006020 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
80006004: 13 f5 8a 00  	andi	a0, s5, 8
80006008: 63 06 05 02  	beqz	a0, 0x80006034 <.LBB4_90+0x2ac>
8000600c: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80006010: 33 05 85 01  	add	a0, a0, s8
80006014: 13 0c 1c 00  	addi	s8, s8, 1
80006018: 93 05 00 02  	addi	a1, zero, 32
8000601c: 6f 00 40 01  	j	0x80006030 <.LBB4_90+0x2a8>
80006020: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
80006024: 33 05 85 01  	add	a0, a0, s8
80006028: 13 0c 1c 00  	addi	s8, s8, 1
8000602c: 93 05 b0 02  	addi	a1, zero, 43
80006030: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80006034: 33 35 90 00  	snez	a0, s1
80006038: b3 35 2c 01  	sltu	a1, s8, s2
8000603c: 93 c5 15 00  	xori	a1, a1, 1
80006040: 33 65 b5 00  	or	a0, a0, a1
80006044: 93 fa 2a 00  	andi	s5, s5, 2
80006048: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000604c: 63 16 05 02  	bnez	a0, 0x80006078 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80006050: b3 04 89 41  	sub	s1, s2, s8
80006054: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80006058: 13 04 16 00  	addi	s0, a2, 1
8000605c: 13 05 00 02  	addi	a0, zero, 32
80006060: 93 05 0b 00  	mv	a1, s6
80006064: 93 86 09 00  	mv	a3, s3
80006068: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
8000606c: 93 84 f4 ff  	addi	s1, s1, -1
80006070: 13 06 04 00  	mv	a2, s0
80006074: e3 92 04 fe  	bnez	s1, 0x80006058 <.LBB4_90+0x2d0>
80006078: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
8000607c: 63 0c 0c 02  	beqz	s8, 0x800060b4 <.LBB4_90+0x32c>
80006080: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
80006084: 33 85 8c 01  	add	a0, s9, s8
80006088: 03 45 05 00  	lbu	a0, 0(a0)
8000608c: 13 0d fc ff  	addi	s10, s8, -1
80006090: 93 04 14 00  	addi	s1, s0, 1
80006094: 93 05 0b 00  	mv	a1, s6
80006098: 13 06 04 00  	mv	a2, s0
8000609c: 93 86 09 00  	mv	a3, s3
800060a0: e7 80 0b 00  	jalr	s7
800060a4: 13 84 04 00  	mv	s0, s1
800060a8: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800060ac: e3 1c 0d fc  	bnez	s10, 0x80006084 <.LBB4_90+0x2fc>
800060b0: 6f 00 80 00  	j	0x800060b8 <.LBB4_90+0x330>
800060b4: 93 04 04 00  	mv	s1, s0
800060b8: 33 85 44 41  	sub	a0, s1, s4
800060bc: 33 35 25 01  	sltu	a0, a0, s2
800060c0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800060c4: 93 c5 1a 00  	xori	a1, s5, 1
800060c8: 33 e5 a5 00  	or	a0, a1, a0
800060cc: 63 18 05 02  	bnez	a0, 0x800060fc <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
800060d0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800060d4: 13 84 14 00  	addi	s0, s1, 1
800060d8: 13 05 00 02  	addi	a0, zero, 32
800060dc: 93 05 0b 00  	mv	a1, s6
800060e0: 13 86 04 00  	mv	a2, s1
800060e4: 93 86 09 00  	mv	a3, s3
800060e8: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
800060ec: 33 05 8a 00  	add	a0, s4, s0
800060f0: 93 04 04 00  	mv	s1, s0
800060f4: e3 60 25 ff  	bltu	a0, s2, 0x800060d4 <.LBB4_90+0x34c>
800060f8: 6f 00 80 00  	j	0x80006100 <.LBB4_90+0x378>
800060fc: 13 84 04 00  	mv	s0, s1
; }
80006100: 13 05 04 00  	mv	a0, s0
80006104: 07 39 81 02  	fld	fs2, 40(sp)
80006108: 87 34 01 03  	fld	fs1, 48(sp)
8000610c: 07 34 81 03  	fld	fs0, 56(sp)
80006110: 03 2d 01 04  	lw	s10, 64(sp)
80006114: 83 2c 41 04  	lw	s9, 68(sp)
80006118: 03 2c 81 04  	lw	s8, 72(sp)
8000611c: 83 2b c1 04  	lw	s7, 76(sp)
80006120: 03 2b 01 05  	lw	s6, 80(sp)
80006124: 83 2a 41 05  	lw	s5, 84(sp)
80006128: 03 2a 81 05  	lw	s4, 88(sp)
8000612c: 83 29 c1 05  	lw	s3, 92(sp)
80006130: 03 29 01 06  	lw	s2, 96(sp)
80006134: 83 24 41 06  	lw	s1, 100(sp)
80006138: 03 24 81 06  	lw	s0, 104(sp)
8000613c: 83 20 c1 06  	lw	ra, 108(sp)
80006140: 13 01 01 07  	addi	sp, sp, 112
80006144: 67 80 00 00  	ret

80006148 <_etoa>:
; {
80006148: 13 01 01 f8  	addi	sp, sp, -128
8000614c: 23 2e 11 06  	sw	ra, 124(sp)
80006150: 23 2c 81 06  	sw	s0, 120(sp)
80006154: 23 2a 91 06  	sw	s1, 116(sp)
80006158: 23 28 21 07  	sw	s2, 112(sp)
8000615c: 23 26 31 07  	sw	s3, 108(sp)
80006160: 23 24 41 07  	sw	s4, 104(sp)
80006164: 23 22 51 07  	sw	s5, 100(sp)
80006168: 23 20 61 07  	sw	s6, 96(sp)
8000616c: 23 2e 71 05  	sw	s7, 92(sp)
80006170: 23 2c 81 05  	sw	s8, 88(sp)
80006174: 23 2a 91 05  	sw	s9, 84(sp)
80006178: 23 28 a1 05  	sw	s10, 80(sp)
8000617c: 23 26 b1 05  	sw	s11, 76(sp)

80006180 <.LBB5_43>:
80006180: 97 14 00 00  	auipc	s1, 1
80006184: 93 84 04 32  	addi	s1, s1, 800
80006188: 87 b0 04 00  	fld	ft1, 0(s1)

8000618c <.LBB5_44>:
8000618c: 97 14 00 00  	auipc	s1, 1
80006190: 93 84 c4 31  	addi	s1, s1, 796
80006194: 07 b1 04 00  	fld	ft2, 0(s1)
80006198: 53 00 a5 22  	fmv.d	ft0, fa0
8000619c: d3 04 15 a2  	fle.d	s1, fa0, ft1
800061a0: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800061a4: b3 f4 84 00  	and	s1, s1, s0
800061a8: 93 0a 08 00  	mv	s5, a6
800061ac: 13 89 07 00  	mv	s2, a5
800061b0: 93 07 07 00  	mv	a5, a4
800061b4: 93 89 06 00  	mv	s3, a3
800061b8: 13 0a 06 00  	mv	s4, a2
800061bc: 13 8b 05 00  	mv	s6, a1
800061c0: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800061c4: 63 92 04 06  	bnez	s1, 0x80006228 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
800061c8: 13 85 0b 00  	mv	a0, s7
800061cc: 93 05 0b 00  	mv	a1, s6
800061d0: 13 06 0a 00  	mv	a2, s4
800061d4: 93 86 09 00  	mv	a3, s3
800061d8: 53 05 00 22  	fmv.d	fa0, ft0
800061dc: 13 87 07 00  	mv	a4, a5
800061e0: 93 07 09 00  	mv	a5, s2
800061e4: 13 88 0a 00  	mv	a6, s5
800061e8: 83 2d c1 04  	lw	s11, 76(sp)
800061ec: 03 2d 01 05  	lw	s10, 80(sp)
800061f0: 83 2c 41 05  	lw	s9, 84(sp)
800061f4: 03 2c 81 05  	lw	s8, 88(sp)
800061f8: 83 2b c1 05  	lw	s7, 92(sp)
800061fc: 03 2b 01 06  	lw	s6, 96(sp)
80006200: 83 2a 41 06  	lw	s5, 100(sp)
80006204: 03 2a 81 06  	lw	s4, 104(sp)
80006208: 83 29 c1 06  	lw	s3, 108(sp)
8000620c: 03 29 01 07  	lw	s2, 112(sp)
80006210: 83 24 41 07  	lw	s1, 116(sp)
80006214: 03 24 81 07  	lw	s0, 120(sp)
80006218: 83 20 c1 07  	lw	ra, 124(sp)
8000621c: 13 01 01 08  	addi	sp, sp, 128
80006220: 17 03 00 00  	auipc	t1, 0
80006224: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80006228: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
8000622c: 13 f5 0a 40  	andi	a0, s5, 1024
80006230: 13 07 60 00  	addi	a4, zero, 6
80006234: 63 04 05 00  	beqz	a0, 0x8000623c <.LBB5_44+0xb0>
80006238: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
8000623c: 27 30 a1 02  	fsd	fa0, 32(sp)
80006240: 83 25 41 02  	lw	a1, 36(sp)
80006244: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80006248: 93 d6 45 01  	srli	a3, a1, 20
8000624c: b7 07 10 00  	lui	a5, 256
80006250: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80006254: b3 f5 f5 00  	and	a1, a1, a5
80006258: 23 2c c1 00  	sw	a2, 24(sp)
8000625c: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80006260: b3 e5 c5 00  	or	a1, a1, a2
80006264: 23 2e b1 00  	sw	a1, 28(sp)
80006268: 87 30 81 01  	fld	ft1, 24(sp)

8000626c <.LBB5_45>:
8000626c: 97 15 00 00  	auipc	a1, 1
80006270: 93 85 45 24  	addi	a1, a1, 580
80006274: 07 b1 05 00  	fld	ft2, 0(a1)

80006278 <.LBB5_46>:
80006278: 97 15 00 00  	auipc	a1, 1
8000627c: 93 85 05 24  	addi	a1, a1, 576
80006280: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80006284: 93 f5 f6 7f  	andi	a1, a3, 2047
80006288: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
8000628c: 53 82 05 d2  	fcvt.d.w	ft4, a1
80006290: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80006294 <.LBB5_47>:
80006294: 97 15 00 00  	auipc	a1, 1
80006298: 93 85 c5 22  	addi	a1, a1, 556
8000629c: 07 b1 05 00  	fld	ft2, 0(a1)

800062a0 <.LBB5_48>:
800062a0: 97 15 00 00  	auipc	a1, 1
800062a4: 93 85 85 22  	addi	a1, a1, 552
800062a8: 87 b1 05 00  	fld	ft3, 0(a1)

800062ac <.LBB5_49>:
800062ac: 97 15 00 00  	auipc	a1, 1
800062b0: 93 85 45 22  	addi	a1, a1, 548
800062b4: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800062b8: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
800062bc: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800062c0: d3 80 05 d2  	fcvt.d.w	ft1, a1
800062c4: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

800062c8 <.LBB5_50>:
800062c8: 17 16 00 00  	auipc	a2, 1
800062cc: 13 06 06 21  	addi	a2, a2, 528
800062d0: 87 31 06 00  	fld	ft3, 0(a2)

800062d4 <.LBB5_51>:
800062d4: 17 16 00 00  	auipc	a2, 1
800062d8: 13 06 c6 20  	addi	a2, a2, 524
800062dc: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
800062e0: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
800062e4: 53 01 06 d2  	fcvt.d.w	ft2, a2
800062e8: 53 71 31 12  	fmul.d	ft2, ft2, ft3
800062ec: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
800062f0: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
800062f4: 13 06 f6 3f  	addi	a2, a2, 1023
800062f8: 23 28 01 00  	sw	zero, 16(sp)
800062fc: 13 16 46 01  	slli	a2, a2, 20
80006300: 23 2a c1 00  	sw	a2, 20(sp)

80006304 <.LBB5_52>:
80006304: 17 16 00 00  	auipc	a2, 1
80006308: 13 06 c6 1e  	addi	a2, a2, 492
8000630c: 87 31 06 00  	fld	ft3, 0(a2)

80006310 <.LBB5_53>:
80006310: 17 16 00 00  	auipc	a2, 1
80006314: 13 06 86 1e  	addi	a2, a2, 488
80006318: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000631c: 87 32 01 01  	fld	ft5, 16(sp)

80006320 <.LBB5_54>:
80006320: 17 16 00 00  	auipc	a2, 1
80006324: 13 06 86 1c  	addi	a2, a2, 456
80006328: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000632c: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80006330 <.LBB5_55>:
80006330: 17 16 00 00  	auipc	a2, 1
80006334: 13 06 06 1d  	addi	a2, a2, 464
80006338: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
8000633c: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80006340: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80006344: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80006348: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
8000634c: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80006350: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80006354: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80006358: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
8000635c: 53 16 15 a2  	flt.d	a2, fa0, ft1
80006360: 63 0a 06 00  	beqz	a2, 0x80006374 <.LBB5_56+0x10>

80006364 <.LBB5_56>:
80006364: 97 16 00 00  	auipc	a3, 1
80006368: 93 86 46 1a  	addi	a3, a3, 420
8000636c: 07 b1 06 00  	fld	ft2, 0(a3)
80006370: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80006374: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80006378: 93 05 34 06  	addi	a1, s0, 99
8000637c: 93 b5 75 0c  	sltiu	a1, a1, 199
80006380: 13 06 50 00  	addi	a2, zero, 5
80006384: b7 16 00 00  	lui	a3, 1
80006388: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
8000638c: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80006390: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80006394: 63 84 06 06  	beqz	a3, 0x800063fc <.LBB5_58+0x58>

80006398 <.LBB5_57>:
80006398: 97 15 00 00  	auipc	a1, 1
8000639c: 93 85 85 17  	addi	a1, a1, 376
800063a0: 07 b1 05 00  	fld	ft2, 0(a1)

800063a4 <.LBB5_58>:
800063a4: 97 15 00 00  	auipc	a1, 1
800063a8: 93 85 45 17  	addi	a1, a1, 372
800063ac: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800063b0: d3 15 25 a2  	flt.d	a1, fa0, ft2
800063b4: 53 86 a1 a2  	fle.d	a2, ft3, fa0
800063b8: b3 e5 c5 00  	or	a1, a1, a2
800063bc: 63 98 05 00  	bnez	a1, 0x800063cc <.LBB5_58+0x28>
;       if ((int)prec > expval) {
800063c0: 63 40 e4 02  	blt	s0, a4, 0x800063e0 <.LBB5_58+0x3c>
800063c4: 13 07 00 00  	mv	a4, zero
800063c8: 6f 00 00 02  	j	0x800063e8 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800063cc: 63 06 07 02  	beqz	a4, 0x800063f8 <.LBB5_58+0x54>
800063d0: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
800063d4: 13 45 15 00  	xori	a0, a0, 1
800063d8: 33 07 a7 40  	sub	a4, a4, a0
800063dc: 6f 00 00 02  	j	0x800063fc <.LBB5_58+0x58>
800063e0: 13 45 f4 ff  	not	a0, s0
800063e4: 33 07 a7 00  	add	a4, a4, a0
800063e8: 13 04 00 00  	mv	s0, zero
800063ec: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
800063f0: 93 ea 0a 40  	ori	s5, s5, 1024
800063f4: 6f 00 80 00  	j	0x800063fc <.LBB5_58+0x58>
800063f8: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
800063fc: b3 05 99 41  	sub	a1, s2, s9
80006400: 33 36 b9 00  	sltu	a2, s2, a1
80006404: 13 05 00 00  	mv	a0, zero
80006408: 63 14 06 00  	bnez	a2, 0x80006410 <.LBB5_58+0x6c>
8000640c: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80006410: 93 07 00 00  	mv	a5, zero
80006414: 93 d5 1a 00  	srli	a1, s5, 1
80006418: 93 f4 15 00  	andi	s1, a1, 1
8000641c: b3 35 90 01  	snez	a1, s9
80006420: b3 f5 b4 00  	and	a1, s1, a1
80006424: 53 01 00 d2  	fcvt.d.w	ft2, zero
80006428: 63 94 05 00  	bnez	a1, 0x80006430 <.LBB5_58+0x8c>
8000642c: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80006430: 93 35 14 00  	seqz	a1, s0
80006434: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80006438: 63 94 05 00  	bnez	a1, 0x80006440 <.LBB5_58+0x9c>
8000643c: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80006440: 63 04 05 00  	beqz	a0, 0x80006448 <.LBB5_58+0xa4>
80006444: 53 15 a5 22  	fneg.d	fa0, fa0
80006448: 37 f5 ff ff  	lui	a0, 1048575
8000644c: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80006450: 33 f8 aa 00  	and	a6, s5, a0
80006454: 13 85 0b 00  	mv	a0, s7
80006458: 93 05 0b 00  	mv	a1, s6
8000645c: 13 06 0a 00  	mv	a2, s4
80006460: 93 86 09 00  	mv	a3, s3
80006464: 97 f0 ff ff  	auipc	ra, 1048575
80006468: e7 80 40 60  	jalr	1540(ra)
8000646c: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
80006470: 63 82 0c 18  	beqz	s9, 0x800065f4 <.LBB5_58+0x250>
80006474: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80006478: 13 f5 0a 02  	andi	a0, s5, 32
8000647c: 13 45 55 06  	xori	a0, a0, 101
80006480: 93 05 0b 00  	mv	a1, s6
80006484: 13 06 0d 00  	mv	a2, s10
80006488: 93 86 09 00  	mv	a3, s3
8000648c: e7 80 0b 00  	jalr	s7
80006490: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80006494: 93 5a f4 01  	srli	s5, s0, 31
80006498: 13 55 f4 41  	srai	a0, s0, 31
8000649c: b3 05 a4 00  	add	a1, s0, a0
800064a0: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800064a4: 93 8d dc ff  	addi	s11, s9, -3
800064a8: 13 04 f0 01  	addi	s0, zero, 31
800064ac: 37 d5 cc cc  	lui	a0, 838861
800064b0: 13 05 d5 cc  	addi	a0, a0, -819
800064b4: 13 08 a0 00  	addi	a6, zero, 10
800064b8: 93 08 c1 02  	addi	a7, sp, 44
800064bc: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
800064c0: b3 37 a7 02  	mulhu	a5, a4, a0
800064c4: 93 d5 37 00  	srli	a1, a5, 3
800064c8: b3 87 05 03  	mul	a5, a1, a6
800064cc: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800064d0: 13 e6 07 03  	ori	a2, a5, 48
800064d4: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800064d8: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800064dc: 13 0c 1c 00  	addi	s8, s8, 1
800064e0: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800064e4: 33 b6 e2 00  	sltu	a2, t0, a4
800064e8: 33 f6 c7 00  	and	a2, a5, a2
800064ec: 93 8d fd ff  	addi	s11, s11, -1
800064f0: 13 04 f4 ff  	addi	s0, s0, -1
800064f4: 13 87 05 00  	mv	a4, a1
800064f8: e3 14 06 fc  	bnez	a2, 0x800064c0 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800064fc: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006500: 33 35 ac 00  	sltu	a0, s8, a0
80006504: 13 45 15 00  	xori	a0, a0, 1
80006508: 93 c5 17 00  	xori	a1, a5, 1
8000650c: 33 e5 a5 00  	or	a0, a1, a0
80006510: 63 12 05 04  	bnez	a0, 0x80006554 <.LBB5_58+0x1b0>
80006514: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006518: b3 85 8c 41  	sub	a1, s9, s8
8000651c: 93 85 d5 ff  	addi	a1, a1, -3
80006520: 13 06 f0 01  	addi	a2, zero, 31
80006524: 33 06 86 41  	sub	a2, a2, s8
80006528: 33 05 85 01  	add	a0, a0, s8
8000652c: 63 e4 c5 00  	bltu	a1, a2, 0x80006534 <.LBB5_58+0x190>
80006530: 93 05 06 00  	mv	a1, a2
80006534: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80006538: 93 05 00 03  	addi	a1, zero, 48
8000653c: 97 a0 ff ff  	auipc	ra, 1048570
80006540: e7 80 40 ac  	jalr	-1340(ra)
;   if (flags & FLAGS_HASH) {
80006544: 63 e4 8d 00  	bltu	s11, s0, 0x8000654c <.LBB5_58+0x1a8>
80006548: 93 0d 04 00  	mv	s11, s0
8000654c: 33 85 8d 01  	add	a0, s11, s8
80006550: 13 0c 15 00  	addi	s8, a0, 1
80006554: 83 2c c1 00  	lw	s9, 12(sp)
80006558: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
8000655c: 63 60 85 03  	bltu	a0, s8, 0x8000657c <.LBB5_58+0x1d8>
80006560: 13 05 c1 02  	addi	a0, sp, 44
80006564: 33 05 85 01  	add	a0, a0, s8
80006568: 93 05 d0 02  	addi	a1, zero, 45
8000656c: 63 94 0a 00  	bnez	s5, 0x80006574 <.LBB5_58+0x1d0>
80006570: 93 05 b0 02  	addi	a1, zero, 43
80006574: 13 0c 1c 00  	addi	s8, s8, 1
80006578: 23 00 b5 00  	sb	a1, 0(a0)
8000657c: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
80006580: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
80006584: 33 85 8a 01  	add	a0, s5, s8
80006588: 03 45 05 00  	lbu	a0, 0(a0)
8000658c: 13 06 04 00  	mv	a2, s0
80006590: 93 04 fc ff  	addi	s1, s8, -1
80006594: 13 04 14 00  	addi	s0, s0, 1
80006598: 93 05 0b 00  	mv	a1, s6
8000659c: 93 86 09 00  	mv	a3, s3
800065a0: e7 80 0b 00  	jalr	s7
800065a4: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800065a8: e3 9e 04 fc  	bnez	s1, 0x80006584 <.LBB5_58+0x1e0>
800065ac: 33 05 44 41  	sub	a0, s0, s4
800065b0: 33 35 25 01  	sltu	a0, a0, s2
800065b4: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
800065b8: 93 c5 1c 00  	xori	a1, s9, 1
800065bc: 33 e5 a5 00  	or	a0, a1, a0
800065c0: 63 18 05 02  	bnez	a0, 0x800065f0 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
800065c4: b3 04 40 41  	neg	s1, s4
800065c8: 13 0d 14 00  	addi	s10, s0, 1
800065cc: 13 05 00 02  	addi	a0, zero, 32
800065d0: 93 05 0b 00  	mv	a1, s6
800065d4: 13 06 04 00  	mv	a2, s0
800065d8: 93 86 09 00  	mv	a3, s3
800065dc: e7 80 0b 00  	jalr	s7
800065e0: 33 85 a4 01  	add	a0, s1, s10
800065e4: 13 04 0d 00  	mv	s0, s10
800065e8: e3 60 25 ff  	bltu	a0, s2, 0x800065c8 <.LBB5_58+0x224>
800065ec: 6f 00 80 00  	j	0x800065f4 <.LBB5_58+0x250>
800065f0: 13 0d 04 00  	mv	s10, s0
; }
800065f4: 13 05 0d 00  	mv	a0, s10
800065f8: 83 2d c1 04  	lw	s11, 76(sp)
800065fc: 03 2d 01 05  	lw	s10, 80(sp)
80006600: 83 2c 41 05  	lw	s9, 84(sp)
80006604: 03 2c 81 05  	lw	s8, 88(sp)
80006608: 83 2b c1 05  	lw	s7, 92(sp)
8000660c: 03 2b 01 06  	lw	s6, 96(sp)
80006610: 83 2a 41 06  	lw	s5, 100(sp)
80006614: 03 2a 81 06  	lw	s4, 104(sp)
80006618: 83 29 c1 06  	lw	s3, 108(sp)
8000661c: 03 29 01 07  	lw	s2, 112(sp)
80006620: 83 24 41 07  	lw	s1, 116(sp)
80006624: 03 24 81 07  	lw	s0, 120(sp)
80006628: 83 20 c1 07  	lw	ra, 124(sp)
8000662c: 13 01 01 08  	addi	sp, sp, 128
80006630: 67 80 00 00  	ret

80006634 <_ntoa_format>:
; {
80006634: 13 01 01 fc  	addi	sp, sp, -64
80006638: 23 2e 11 02  	sw	ra, 60(sp)
8000663c: 23 2c 81 02  	sw	s0, 56(sp)
80006640: 23 2a 91 02  	sw	s1, 52(sp)
80006644: 23 28 21 03  	sw	s2, 48(sp)
80006648: 23 26 31 03  	sw	s3, 44(sp)
8000664c: 23 24 41 03  	sw	s4, 40(sp)
80006650: 23 22 51 03  	sw	s5, 36(sp)
80006654: 23 20 61 03  	sw	s6, 32(sp)
80006658: 23 2e 71 01  	sw	s7, 28(sp)
8000665c: 23 2c 81 01  	sw	s8, 24(sp)
80006660: 23 2a 91 01  	sw	s9, 20(sp)
80006664: 23 28 a1 01  	sw	s10, 16(sp)
80006668: 23 26 b1 01  	sw	s11, 12(sp)
8000666c: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80006670: 93 fa 2e 00  	andi	s5, t4, 2
80006674: 13 09 0e 00  	mv	s2, t3
80006678: 13 8d 03 00  	mv	s10, t2
8000667c: 93 8c 08 00  	mv	s9, a7
80006680: 13 8c 07 00  	mv	s8, a5
80006684: 93 89 06 00  	mv	s3, a3
80006688: 13 0a 06 00  	mv	s4, a2
8000668c: 13 8b 05 00  	mv	s6, a1
80006690: 93 0d 05 00  	mv	s11, a0
80006694: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
80006698: 63 9e 0a 0c  	bnez	s5, 0x80006774 <_ntoa_format+0x140>
8000669c: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800066a0: 63 0e 09 00  	beqz	s2, 0x800066bc <_ntoa_format+0x88>
800066a4: 63 0e 04 00  	beqz	s0, 0x800066c0 <_ntoa_format+0x8c>
800066a8: 13 f5 cb 00  	andi	a0, s7, 12
800066ac: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800066b0: 33 65 05 01  	or	a0, a0, a6
800066b4: 33 09 a9 40  	sub	s2, s2, a0
800066b8: 6f 00 80 00  	j	0x800066c0 <_ntoa_format+0x8c>
800066bc: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800066c0: 33 35 ac 01  	sltu	a0, s8, s10
800066c4: 93 45 15 00  	xori	a1, a0, 1
800066c8: 13 05 f0 01  	addi	a0, zero, 31
800066cc: 33 36 85 01  	sltu	a2, a0, s8
800066d0: b3 65 b6 00  	or	a1, a2, a1
800066d4: 63 94 05 04  	bnez	a1, 0x8000671c <_ntoa_format+0xe8>
800066d8: 23 22 51 01  	sw	s5, 4(sp)
800066dc: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800066e0: 93 45 fc ff  	not	a1, s8
800066e4: b3 85 a5 01  	add	a1, a1, s10
800066e8: 33 06 85 41  	sub	a2, a0, s8
800066ec: 33 05 87 01  	add	a0, a4, s8
800066f0: 63 e4 c5 00  	bltu	a1, a2, 0x800066f8 <_ntoa_format+0xc4>
800066f4: 93 05 06 00  	mv	a1, a2
800066f8: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800066fc: 93 05 00 03  	addi	a1, zero, 48
80006700: 13 86 04 00  	mv	a2, s1
80006704: 97 a0 ff ff  	auipc	ra, 1048570
80006708: e7 80 c0 8f  	jalr	-1796(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000670c: 33 8c 84 01  	add	s8, s1, s8
80006710: 03 27 81 00  	lw	a4, 8(sp)
80006714: 13 88 0a 00  	mv	a6, s5
80006718: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000671c: 63 0c 04 04  	beqz	s0, 0x80006774 <_ntoa_format+0x140>
80006720: 33 35 2c 01  	sltu	a0, s8, s2
80006724: 93 45 15 00  	xori	a1, a0, 1
80006728: 13 05 f0 01  	addi	a0, zero, 31
8000672c: 33 36 85 01  	sltu	a2, a0, s8
80006730: b3 e5 c5 00  	or	a1, a1, a2
80006734: 63 90 05 04  	bnez	a1, 0x80006774 <_ntoa_format+0x140>
80006738: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000673c: 93 45 fc ff  	not	a1, s8
80006740: b3 05 b9 00  	add	a1, s2, a1
80006744: 33 06 85 41  	sub	a2, a0, s8
80006748: 33 05 87 01  	add	a0, a4, s8
8000674c: 63 e4 c5 00  	bltu	a1, a2, 0x80006754 <_ntoa_format+0x120>
80006750: 93 05 06 00  	mv	a1, a2
80006754: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80006758: 93 05 00 03  	addi	a1, zero, 48
8000675c: 13 86 04 00  	mv	a2, s1
80006760: 97 a0 ff ff  	auipc	ra, 1048570
80006764: e7 80 00 8a  	jalr	-1888(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006768: 33 8c 84 01  	add	s8, s1, s8
8000676c: 03 27 81 00  	lw	a4, 8(sp)
80006770: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
80006774: 13 f5 0b 01  	andi	a0, s7, 16
80006778: 63 02 05 0e  	beqz	a0, 0x8000685c <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
8000677c: 13 f5 0b 40  	andi	a0, s7, 1024
80006780: 13 55 a5 00  	srli	a0, a0, 10
80006784: 93 35 1c 00  	seqz	a1, s8
80006788: 33 65 b5 00  	or	a0, a0, a1
8000678c: 63 1e 05 02  	bnez	a0, 0x800067c8 <_ntoa_format+0x194>
80006790: 33 45 ac 01  	xor	a0, s8, s10
80006794: 33 35 a0 00  	snez	a0, a0
80006798: b3 45 2c 01  	xor	a1, s8, s2
8000679c: b3 35 b0 00  	snez	a1, a1
800067a0: 33 75 b5 00  	and	a0, a0, a1
800067a4: 63 12 05 02  	bnez	a0, 0x800067c8 <_ntoa_format+0x194>
;       len--;
800067a8: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800067ac: b3 35 a0 00  	snez	a1, a0
800067b0: 13 86 0c ff  	addi	a2, s9, -16
800067b4: 13 36 16 00  	seqz	a2, a2
800067b8: b3 75 b6 00  	and	a1, a2, a1
800067bc: 63 84 05 00  	beqz	a1, 0x800067c4 <_ntoa_format+0x190>
800067c0: 13 05 ec ff  	addi	a0, s8, -2
800067c4: 13 0c 05 00  	mv	s8, a0
800067c8: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800067cc: 63 96 ac 02  	bne	s9, a0, 0x800067f8 <_ntoa_format+0x1c4>
800067d0: 13 f5 0b 02  	andi	a0, s7, 32
800067d4: 93 55 55 00  	srli	a1, a0, 5
800067d8: 13 06 f0 01  	addi	a2, zero, 31
800067dc: 33 36 86 01  	sltu	a2, a2, s8
800067e0: b3 e5 c5 00  	or	a1, a1, a2
800067e4: 63 9e 05 02  	bnez	a1, 0x80006820 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
800067e8: 33 05 87 01  	add	a0, a4, s8
800067ec: 13 0c 1c 00  	addi	s8, s8, 1
800067f0: 93 05 80 07  	addi	a1, zero, 120
800067f4: 6f 00 c0 04  	j	0x80006840 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800067f8: 13 85 ec ff  	addi	a0, s9, -2
800067fc: 33 35 a0 00  	snez	a0, a0
80006800: 93 05 f0 01  	addi	a1, zero, 31
80006804: b3 b5 85 01  	sltu	a1, a1, s8
80006808: 33 65 b5 00  	or	a0, a0, a1
8000680c: 63 1c 05 02  	bnez	a0, 0x80006844 <_ntoa_format+0x210>
;       buf[len++] = 'b';
80006810: 33 05 87 01  	add	a0, a4, s8
80006814: 13 0c 1c 00  	addi	s8, s8, 1
80006818: 93 05 20 06  	addi	a1, zero, 98
8000681c: 6f 00 40 02  	j	0x80006840 <_ntoa_format+0x20c>
80006820: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80006824: 13 35 15 00  	seqz	a0, a0
80006828: 93 c5 15 00  	xori	a1, a1, 1
8000682c: 33 65 b5 00  	or	a0, a0, a1
80006830: 63 1a 05 00  	bnez	a0, 0x80006844 <_ntoa_format+0x210>
;       buf[len++] = 'X';
80006834: 33 05 87 01  	add	a0, a4, s8
80006838: 13 0c 1c 00  	addi	s8, s8, 1
8000683c: 93 05 80 05  	addi	a1, zero, 88
80006840: 23 00 b5 00  	sb	a1, 0(a0)
80006844: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80006848: 63 60 85 07  	bltu	a0, s8, 0x800068a8 <_ntoa_format+0x274>
;       buf[len++] = '0';
8000684c: 33 05 87 01  	add	a0, a4, s8
80006850: 13 0c 1c 00  	addi	s8, s8, 1
80006854: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
80006858: 23 00 b5 00  	sb	a1, 0(a0)
8000685c: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80006860: 63 64 85 05  	bltu	a0, s8, 0x800068a8 <_ntoa_format+0x274>
;     if (negative) {
80006864: 63 0a 08 00  	beqz	a6, 0x80006878 <_ntoa_format+0x244>
;       buf[len++] = '-';
80006868: 33 05 87 01  	add	a0, a4, s8
8000686c: 13 0c 1c 00  	addi	s8, s8, 1
80006870: 93 05 d0 02  	addi	a1, zero, 45
80006874: 6f 00 00 03  	j	0x800068a4 <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
80006878: 13 f5 4b 00  	andi	a0, s7, 4
8000687c: 63 1e 05 00  	bnez	a0, 0x80006898 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
80006880: 13 f5 8b 00  	andi	a0, s7, 8
80006884: 63 02 05 02  	beqz	a0, 0x800068a8 <_ntoa_format+0x274>
;       buf[len++] = ' ';
80006888: 33 05 87 01  	add	a0, a4, s8
8000688c: 13 0c 1c 00  	addi	s8, s8, 1
80006890: 93 05 00 02  	addi	a1, zero, 32
80006894: 6f 00 00 01  	j	0x800068a4 <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
80006898: 33 05 87 01  	add	a0, a4, s8
8000689c: 13 0c 1c 00  	addi	s8, s8, 1
800068a0: 93 05 b0 02  	addi	a1, zero, 43
800068a4: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800068a8: 13 f5 3b 00  	andi	a0, s7, 3
800068ac: 33 35 a0 00  	snez	a0, a0
800068b0: b3 35 2c 01  	sltu	a1, s8, s2
800068b4: 93 c5 15 00  	xori	a1, a1, 1
800068b8: 33 65 b5 00  	or	a0, a0, a1
800068bc: 13 04 0a 00  	mv	s0, s4
800068c0: 63 16 05 02  	bnez	a0, 0x800068ec <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
800068c4: b3 04 89 41  	sub	s1, s2, s8
800068c8: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800068cc: 13 04 16 00  	addi	s0, a2, 1
800068d0: 13 05 00 02  	addi	a0, zero, 32
800068d4: 93 05 0b 00  	mv	a1, s6
800068d8: 93 86 09 00  	mv	a3, s3
800068dc: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
800068e0: 93 84 f4 ff  	addi	s1, s1, -1
800068e4: 13 06 04 00  	mv	a2, s0
800068e8: e3 92 04 fe  	bnez	s1, 0x800068cc <_ntoa_format+0x298>
800068ec: b3 3a 50 01  	snez	s5, s5
;   while (len) {
800068f0: 63 0e 0c 02  	beqz	s8, 0x8000692c <_ntoa_format+0x2f8>
800068f4: 03 25 81 00  	lw	a0, 8(sp)
800068f8: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
800068fc: 33 85 8b 01  	add	a0, s7, s8
80006900: 03 45 05 00  	lbu	a0, 0(a0)
80006904: 93 0c fc ff  	addi	s9, s8, -1
80006908: 93 04 14 00  	addi	s1, s0, 1
8000690c: 93 05 0b 00  	mv	a1, s6
80006910: 13 06 04 00  	mv	a2, s0
80006914: 93 86 09 00  	mv	a3, s3
80006918: e7 80 0d 00  	jalr	s11
8000691c: 13 84 04 00  	mv	s0, s1
80006920: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80006924: e3 9c 0c fc  	bnez	s9, 0x800068fc <_ntoa_format+0x2c8>
80006928: 6f 00 80 00  	j	0x80006930 <_ntoa_format+0x2fc>
8000692c: 93 04 04 00  	mv	s1, s0
80006930: 33 85 44 41  	sub	a0, s1, s4
80006934: 33 35 25 01  	sltu	a0, a0, s2
80006938: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000693c: 93 c5 1a 00  	xori	a1, s5, 1
80006940: 33 e5 a5 00  	or	a0, a1, a0
80006944: 63 18 05 02  	bnez	a0, 0x80006974 <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80006948: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000694c: 13 84 14 00  	addi	s0, s1, 1
80006950: 13 05 00 02  	addi	a0, zero, 32
80006954: 93 05 0b 00  	mv	a1, s6
80006958: 13 86 04 00  	mv	a2, s1
8000695c: 93 86 09 00  	mv	a3, s3
80006960: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80006964: 33 05 8a 00  	add	a0, s4, s0
80006968: 93 04 04 00  	mv	s1, s0
8000696c: e3 60 25 ff  	bltu	a0, s2, 0x8000694c <_ntoa_format+0x318>
80006970: 6f 00 80 00  	j	0x80006978 <_ntoa_format+0x344>
80006974: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80006978: 13 05 04 00  	mv	a0, s0
8000697c: 83 2d c1 00  	lw	s11, 12(sp)
80006980: 03 2d 01 01  	lw	s10, 16(sp)
80006984: 83 2c 41 01  	lw	s9, 20(sp)
80006988: 03 2c 81 01  	lw	s8, 24(sp)
8000698c: 83 2b c1 01  	lw	s7, 28(sp)
80006990: 03 2b 01 02  	lw	s6, 32(sp)
80006994: 83 2a 41 02  	lw	s5, 36(sp)
80006998: 03 2a 81 02  	lw	s4, 40(sp)
8000699c: 83 29 c1 02  	lw	s3, 44(sp)
800069a0: 03 29 01 03  	lw	s2, 48(sp)
800069a4: 83 24 41 03  	lw	s1, 52(sp)
800069a8: 03 24 81 03  	lw	s0, 56(sp)
800069ac: 83 20 c1 03  	lw	ra, 60(sp)
800069b0: 13 01 01 04  	addi	sp, sp, 64
800069b4: 67 80 00 00  	ret

800069b8 <_snrt_init_team>:
;     team->base.root = team;
800069b8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800069bc: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800069c0: 03 23 87 00  	lw	t1, 8(a4)
800069c4: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800069c8: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800069cc: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800069d0: 83 22 47 00  	lw	t0, 4(a4)
800069d4: 33 88 08 03  	mul	a6, a7, a6
800069d8: 33 05 58 02  	mul	a0, a6, t0
800069dc: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800069e0: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800069e4: 33 85 68 40  	sub	a0, a7, t1
800069e8: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800069ec: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800069f0: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800069f4: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800069f8: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800069fc: 03 25 87 01  	lw	a0, 24(a4)
80006a00: b7 05 00 10  	lui	a1, 65536
80006a04: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80006a08: 23 a2 07 02  	sw	zero, 36(a5)
80006a0c: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80006a10: 03 25 07 02  	lw	a0, 32(a4)
80006a14: 83 25 47 02  	lw	a1, 36(a4)
80006a18: 23 a4 a7 02  	sw	a0, 40(a5)
80006a1c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80006a20: 23 a8 c7 02  	sw	a2, 48(a5)
80006a24: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80006a28: 23 ac d7 02  	sw	a3, 56(a5)
80006a2c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80006a30: 03 25 07 01  	lw	a0, 16(a4)
80006a34: 33 08 a6 00  	add	a6, a2, a0
80006a38: 93 05 08 19  	addi	a1, a6, 400
80006a3c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80006a40: b3 32 a8 00  	sltu	t0, a6, a0
80006a44: 93 55 15 00  	srli	a1, a0, 1
80006a48: 33 03 b8 00  	add	t1, a6, a1
80006a4c: b3 35 03 01  	sltu	a1, t1, a6
80006a50: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80006a54: 23 a0 67 04  	sw	t1, 64(a5)
80006a58: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80006a5c: 13 15 15 00  	slli	a0, a0, 1
80006a60: b3 05 c5 00  	add	a1, a0, a2
80006a64: 33 b5 a5 00  	sltu	a0, a1, a0
80006a68: 23 a4 b7 04  	sw	a1, 72(a5)
80006a6c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80006a70: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80006a74: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80006a78: 37 05 00 00  	lui	a0, 0
80006a7c: 33 05 45 00  	add	a0, a0, tp
80006a80: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80006a84: 03 a5 07 00  	lw	a0, 0(a5)
80006a88: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80006a8c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80006a90: b3 85 b8 40  	sub	a1, a7, a1
80006a94: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80006a98: b7 05 00 00  	lui	a1, 0
80006a9c: b3 85 45 00  	add	a1, a1, tp
80006aa0: 23 a2 a5 00  	sw	a0, 4(a1)
80006aa4: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80006aa8: 33 85 a8 02  	mul	a0, a7, a0

80006aac <.LBB0_1>:
80006aac: 97 15 00 00  	auipc	a1, 1
80006ab0: 93 85 85 a7  	addi	a1, a1, -1416
80006ab4: 33 05 b5 00  	add	a0, a0, a1
80006ab8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80006abc: 83 28 07 03  	lw	a7, 48(a4)
80006ac0: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80006ac4: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80006ac8: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80006acc: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80006ad0: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80006ad4: 13 05 76 00  	addi	a0, a2, 7
80006ad8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80006adc: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80006ae0: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80006ae4: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80006ae8: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80006aec: 03 a5 05 00  	lw	a0, 0(a1)
80006af0: 13 05 f5 44  	addi	a0, a0, 1103
80006af4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80006af8: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80006afc: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80006b00: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80006b04: 37 05 00 00  	lui	a0, 0
80006b08: 33 05 45 00  	add	a0, a0, tp
80006b0c: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80006b10: 37 05 00 00  	lui	a0, 0
80006b14: 33 05 45 00  	add	a0, a0, tp
80006b18: 23 26 e5 00  	sw	a4, 12(a0)
; }
80006b1c: 67 80 00 00  	ret

80006b20 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80006b20: 37 05 00 00  	lui	a0, 0
80006b24: 33 05 45 00  	add	a0, a0, tp
80006b28: 03 25 05 00  	lw	a0, 0(a0)
80006b2c: 03 25 05 00  	lw	a0, 0(a0)
80006b30: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80006b34: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80006b38: 33 85 a5 40  	sub	a0, a1, a0
80006b3c: 67 80 00 00  	ret

80006b40 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80006b40: 37 05 00 00  	lui	a0, 0
80006b44: 33 05 45 00  	add	a0, a0, tp
80006b48: 03 25 05 00  	lw	a0, 0(a0)
80006b4c: 03 25 05 00  	lw	a0, 0(a0)
80006b50: 03 25 05 07  	lw	a0, 112(a0)
80006b54: 67 80 00 00  	ret

80006b58 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80006b58: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80006b5c: 63 44 05 00  	bltz	a0, 0x80006b64 <__snrt_isr+0xc>
;         while (1)
80006b60: 6f 00 00 00  	j	0x80006b60 <__snrt_isr+0x8>
80006b64: b7 05 00 80  	lui	a1, 524288
80006b68: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80006b6c: 33 75 b5 00  	and	a0, a0, a1
80006b70: 13 05 d5 ff  	addi	a0, a0, -3
80006b74: 93 55 25 00  	srli	a1, a0, 2
80006b78: 13 15 e5 01  	slli	a0, a0, 30
80006b7c: 33 65 b5 00  	or	a0, a0, a1
80006b80: 93 05 40 00  	addi	a1, zero, 4
80006b84: 63 0a b5 06  	beq	a0, a1, 0x80006bf8 <.LBB1_7+0x58>
80006b88: 63 1a 05 08  	bnez	a0, 0x80006c1c <.LBB1_7+0x7c>
80006b8c: 37 05 00 00  	lui	a0, 0
80006b90: 33 05 45 00  	add	a0, a0, tp
80006b94: 03 25 05 00  	lw	a0, 0(a0)
80006b98: 03 25 05 00  	lw	a0, 0(a0)
80006b9c: f3 25 40 f1  	csrr	a1, mhartid

80006ba0 <.LBB1_7>:
;     asm volatile(
80006ba0: 17 16 00 00  	auipc	a2, 1
80006ba4: 13 06 06 98  	addi	a2, a2, -1664
80006ba8: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80006bac: 93 06 06 00  	mv	a3, a2
80006bb0: 93 02 10 00  	addi	t0, zero, 1
80006bb4: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80006bb8: e3 9e 02 fe  	bnez	t0, 0x80006bb4 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80006bbc: b7 06 00 00  	lui	a3, 0
80006bc0: b3 86 46 00  	add	a3, a3, tp
80006bc4: 83 a6 86 00  	lw	a3, 8(a3)
80006bc8: 33 85 a5 40  	sub	a0, a1, a0
80006bcc: 93 55 35 00  	srli	a1, a0, 3
80006bd0: 93 f5 c5 ff  	andi	a1, a1, -4
80006bd4: b3 85 b6 00  	add	a1, a3, a1
80006bd8: 83 a6 05 00  	lw	a3, 0(a1)
80006bdc: 13 07 10 00  	addi	a4, zero, 1
80006be0: 33 15 a7 00  	sll	a0, a4, a0
80006be4: 13 45 f5 ff  	not	a0, a0
80006be8: 33 f5 a6 00  	and	a0, a3, a0
80006bec: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80006bf0: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80006bf4: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80006bf8: 37 05 00 00  	lui	a0, 0
80006bfc: 33 05 45 00  	add	a0, a0, tp
80006c00: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80006c04: b7 05 00 00  	lui	a1, 0
80006c08: b3 85 45 00  	add	a1, a1, tp
80006c0c: 83 a5 c5 00  	lw	a1, 12(a1)
80006c10: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80006c14: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80006c18: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80006c1c: 67 80 00 00  	ret

Disassembly of section .init:

80006c20 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80006c20: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80006c24: 93 81 81 f2  	addi	gp, gp, -216

80006c28 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80006c28: 97 00 00 00  	auipc	ra, 0
80006c2c: e7 80 40 3c  	jalr	964(ra)

80006c30 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80006c30: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80006c34: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80006c38: 97 00 00 00  	auipc	ra, 0
80006c3c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80006c40: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80006c44: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80006c48: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80006c4c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80006c50: 63 92 02 02  	bnez	t0, 0x80006c74 <snrt.crt0.init_registers>

80006c54 <.Lpcrel_hi0>:
;     la        t0, _edata
80006c54: 97 12 00 00  	auipc	t0, 1
80006c58: 93 82 c2 8c  	addi	t0, t0, -1844

80006c5c <.Lpcrel_hi1>:
;     la        t1, _end
80006c5c: 17 13 00 00  	auipc	t1, 1
80006c60: 13 03 83 8c  	addi	t1, t1, -1848
;     bge       t0, t1, 2f
80006c64: 63 d8 62 00  	bge	t0, t1, 0x80006c74 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80006c68: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80006c6c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80006c70: e3 cc 62 fe  	blt	t0, t1, 0x80006c68 <.Lpcrel_hi1+0xc>

80006c74 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80006c74: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80006c78: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80006c7c: 63 82 02 08  	beqz	t0, 0x80006d00 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80006c80: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80006c84: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80006c88: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80006c8c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80006c90: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80006c94: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80006c98: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80006c9c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80006ca0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80006ca4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80006ca8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80006cac: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80006cb0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80006cb4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80006cb8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80006cbc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80006cc0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80006cc4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80006cc8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80006ccc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80006cd0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80006cd4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80006cd8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80006cdc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80006ce0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80006ce4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80006ce8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80006cec: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80006cf0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80006cf4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80006cf8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80006cfc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80006d00 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80006d00: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80006d04: 23 a0 06 00  	sw	zero, 0(a3)

80006d08 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80006d08: 97 02 00 00  	auipc	t0, 0
80006d0c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80006d10: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80006d14: 93 87 06 00  	mv	a5, a3

80006d18 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80006d18: 97 03 00 00  	auipc	t2, 0
80006d1c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80006d20: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80006d24: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80006d28: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80006d2c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80006d30: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80006d34: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80006d38: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80006d3c: b3 86 66 40  	sub	a3, a3, t1

80006d40 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80006d40: 97 02 00 00  	auipc	t0, 0
80006d44: 93 82 82 60  	addi	t0, t0, 1544

80006d48 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80006d48: 17 03 00 00  	auipc	t1, 0
80006d4c: 13 03 03 60  	addi	t1, t1, 1536

80006d50 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80006d50: 97 03 00 00  	auipc	t2, 0
80006d54: 93 83 83 5f  	addi	t2, t2, 1528

80006d58 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80006d58: 17 0e 00 00  	auipc	t3, 0
80006d5c: 13 0e 0e 60  	addi	t3, t3, 1536
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80006d60: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80006d64: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80006d68: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80006d6c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80006d70: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80006d74: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80006d78: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80006d7c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80006d80: 63 dc 62 00  	bge	t0, t1, 0x80006d98 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80006d84: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80006d88: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80006d8c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80006d90: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80006d94: e3 c8 62 fe  	blt	t0, t1, 0x80006d84 <.Lpcrel_hi7+0x2c>

80006d98 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80006d98: 97 02 00 00  	auipc	t0, 0
80006d9c: 93 82 02 5b  	addi	t0, t0, 1456

80006da0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80006da0: 17 03 00 00  	auipc	t1, 0
80006da4: 13 03 83 5b  	addi	t1, t1, 1464
;     bge       t0, t1, 2f
80006da8: 63 da 62 00  	bge	t0, t1, 0x80006dbc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80006dac: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80006db0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80006db4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80006db8: e3 ca 72 fe  	blt	t0, t2, 0x80006dac <.Lpcrel_hi9+0xc>

80006dbc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80006dbc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80006dc0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80006dc4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80006dc8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80006dcc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80006dd0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80006dd4: 97 00 00 00  	auipc	ra, 0
80006dd8: e7 80 40 be  	jalr	-1052(ra)
;     lw        a0, 0(sp)
80006ddc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80006de0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80006de4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80006de8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80006dec: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80006df0: 13 01 41 01  	addi	sp, sp, 20

80006df4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80006df4: 97 02 00 00  	auipc	t0, 0
80006df8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80006dfc: 73 90 52 30  	csrw	mtvec, t0

80006e00 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80006e00: 97 00 00 00  	auipc	ra, 0
80006e04: e7 80 00 22  	jalr	544(ra)

80006e08 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80006e08: 97 a0 ff ff  	auipc	ra, 1048570
80006e0c: e7 80 c0 82  	jalr	-2004(ra)
;     mv        s0, a0 # store return value in s0
80006e10: 13 04 05 00  	mv	s0, a0

80006e14 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80006e14: 97 00 00 00  	auipc	ra, 0
80006e18: e7 80 c0 20  	jalr	524(ra)

80006e1c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80006e1c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80006e20: 97 00 00 00  	auipc	ra, 0
80006e24: e7 80 c0 22  	jalr	556(ra)
;     wfi
80006e28: 73 00 50 10  	wfi	
;     j       1b
80006e2c: 6f f0 df ff  	j	0x80006e28 <snrt.crt0.end+0xc>

80006e30 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80006e30: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80006e34: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80006e38: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80006e3c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80006e40: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80006e44: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80006e48: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80006e4c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80006e50: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80006e54: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80006e58: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80006e5c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80006e60: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80006e64: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80006e68: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80006e6c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80006e70: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80006e74: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80006e78: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80006e7c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80006e80: 63 84 02 08  	beqz	t0, 0x80006f08 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80006e84: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80006e88: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80006e8c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80006e90: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80006e94: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80006e98: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80006e9c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80006ea0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80006ea4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80006ea8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80006eac: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80006eb0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80006eb4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80006eb8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80006ebc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80006ec0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80006ec4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80006ec8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80006ecc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80006ed0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80006ed4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80006ed8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80006edc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80006ee0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80006ee4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80006ee8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80006eec: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80006ef0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80006ef4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80006ef8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80006efc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80006f00: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80006f04: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80006f08: 97 00 00 00  	auipc	ra, 0
80006f0c: e7 80 00 c5  	jalr	-944(ra)
;     csrr    t0, misa
80006f10: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80006f14: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80006f18: 63 84 02 08  	beqz	t0, 0x80006fa0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80006f1c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80006f20: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80006f24: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80006f28: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80006f2c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80006f30: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80006f34: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80006f38: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80006f3c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80006f40: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80006f44: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80006f48: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80006f4c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80006f50: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80006f54: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80006f58: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80006f5c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80006f60: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80006f64: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80006f68: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80006f6c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80006f70: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80006f74: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80006f78: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80006f7c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80006f80: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80006f84: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80006f88: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80006f8c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80006f90: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80006f94: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80006f98: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80006f9c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80006fa0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80006fa4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80006fa8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80006fac: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80006fb0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80006fb4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80006fb8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80006fbc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80006fc0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80006fc4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80006fc8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80006fcc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80006fd0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80006fd4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80006fd8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80006fdc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80006fe0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80006fe4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80006fe8: 73 00 20 30  	mret	

80006fec <_snrt_init_core_info>:
;     mv        a4, a1
80006fec: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80006ff0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80006ff4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80006ff8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80006ffc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80007000: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80007004: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80007008: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000700c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80007010: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80007014: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80007018: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000701c: 67 80 00 00  	ret

80007020 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80007020: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80007024: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80007028: 97 00 00 00  	auipc	ra, 0
8000702c: e7 80 80 b1  	jalr	-1256(ra)
;     lw        a0, 0(a0)
80007030: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80007034: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80007038: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000703c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80007040: 67 80 00 00  	ret

80007044 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80007044: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80007048: 67 80 00 00  	ret

8000704c <_snrt_exit>:
;     addi      sp, sp, -8
8000704c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80007050: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80007054: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80007058: 97 00 00 00  	auipc	ra, 0
8000705c: e7 80 80 ac  	jalr	-1336(ra)
;     lw        t0, 0(sp)
80007060: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80007064: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80007068: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
8000706c: 63 1c 05 00  	bnez	a0, 0x80007084 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80007070: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80007074: 93 e2 12 00  	ori	t0, t0, 1

80007078 <.Lpcrel_hi11>:
;     la        t1, tohost
80007078: 17 03 00 00  	auipc	t1, 0
8000707c: 13 03 83 28  	addi	t1, t1, 648
;     sw        t0, 0(t1)
80007080: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80007084: 67 80 00 00  	ret
