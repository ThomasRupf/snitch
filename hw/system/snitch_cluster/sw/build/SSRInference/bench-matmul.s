
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/SSRInference/bench-matmul:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002d68 80000000 TEXT
  2 .init             00000468 80002d70 TEXT
  3 .rodata           00000238 800031d8 DATA
  4 .htif             00000048 80003440 DATA
  5 .tdata            00000000 80003488 DATA
  6 .tbss             00000010 80003488 BSS
  7 .tbssend          00000000 80003498 DATA
  8 .sdata            000000c0 80003498 DATA
  9 .data             00000000 80003558 DATA
 10 .sbss             00000004 80003558 BSS
 11 .bss              00000000 8000355c BSS
 12 .dram             00000000 8000355c DATA
 13 .debug_info       00003464 00000000 
 14 .debug_abbrev     00000c82 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002d33 00000000 
 17 .debug_loc        00002d8b 00000000 
 18 .debug_ranges     00000438 00000000 
 19 .debug_str        00000b31 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000002dc 00000000 
 23 .symtab           00003160 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000909 00000000 


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
8000065c: 63 9e 05 48  	bnez	a1, 0x80000af8 <.LBB0_33+0x10>
;     return _snrt_team_current->root;
80000660: 37 05 00 00  	lui	a0, 0
80000664: 33 05 45 00  	add	a0, a0, tp
80000668: 03 25 05 00  	lw	a0, 0(a0)
8000066c: 03 25 05 00  	lw	a0, 0(a0)
80000670: b7 15 00 00  	lui	a1, 1
;     if (alloc->next + size > alloc->base + alloc->size) {
80000674: 03 29 85 05  	lw	s2, 88(a0)
80000678: 03 27 05 05  	lw	a4, 80(a0)
8000067c: 83 27 45 05  	lw	a5, 84(a0)
80000680: 93 86 05 d2  	addi	a3, a1, -736
80000684: b3 05 d9 00  	add	a1, s2, a3
80000688: 13 86 05 14  	addi	a2, a1, 320
8000068c: 33 87 e7 00  	add	a4, a5, a4
80000690: 63 76 c7 00  	bgeu	a4, a2, 0x8000069c <main+0x68>
80000694: 93 05 00 00  	mv	a1, zero
80000698: 6f 00 00 01  	j	0x800006a8 <main+0x74>
;     void *ret = (void *)alloc->next;
8000069c: 93 05 09 00  	mv	a1, s2
;     alloc->next += size;
800006a0: 23 2c c5 04  	sw	a2, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006a4: 13 09 06 00  	mv	s2, a2
800006a8: 33 86 26 01  	add	a2, a3, s2
800006ac: 93 07 86 1f  	addi	a5, a2, 504
800006b0: 63 7c f7 00  	bgeu	a4, a5, 0x800006c8 <main+0x94>
800006b4: 13 06 00 00  	mv	a2, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800006b8: b3 06 d9 00  	add	a3, s2, a3
800006bc: 63 60 d7 02  	bltu	a4, a3, 0x800006dc <main+0xa8>
;     alloc->next += size;
800006c0: 23 2c d5 04  	sw	a3, 88(a0)
800006c4: 6f 00 c0 01  	j	0x800006e0 <main+0xac>
;     void *ret = (void *)alloc->next;
800006c8: 13 06 09 00  	mv	a2, s2
;     alloc->next += size;
800006cc: 23 2c f5 04  	sw	a5, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800006d0: 13 89 07 00  	mv	s2, a5
800006d4: b3 06 d9 00  	add	a3, s2, a3
800006d8: e3 74 d7 fe  	bgeu	a4, a3, 0x800006c0 <main+0x8c>
800006dc: 13 09 00 00  	mv	s2, zero
;     for (uint32_t i = 0; i < n; i++){
800006e0: 13 d5 45 01  	srli	a0, a1, 20
800006e4: 33 35 a0 00  	snez	a0, a0
800006e8: b7 f6 11 00  	lui	a3, 287
800006ec: 93 86 96 1a  	addi	a3, a3, 425
800006f0: b3 b6 d5 00  	sltu	a3, a1, a3
800006f4: 33 75 d5 00  	and	a0, a0, a3

800006f8 <.LBB0_29>:
800006f8: 17 38 00 00  	auipc	a6, 3
800006fc: 13 08 08 da  	addi	a6, a6, -608
80000700: 63 0e 05 06  	beqz	a0, 0x8000077c <.LBB0_29+0x84>
80000704: 93 06 00 00  	mv	a3, zero
80000708: 13 05 80 00  	addi	a0, zero, 8
8000070c: 13 07 b0 1c  	addi	a4, zero, 459
;     for (uint32_t i = 0; i < n; i++){
80000710: 93 07 00 04  	addi	a5, zero, 64
80000714: 93 04 00 0c  	addi	s1, zero, 192
80000718: ab 20 f7 00  	scfgw	a4, a5
8000071c: ab 20 95 00  	scfgw	a0, s1
80000720: 13 05 00 02  	addi	a0, zero, 32
80000724: ab 20 a0 00  	scfgw	zero, a0
80000728: 2b a0 05 38  	scfgwi	a1, 896
8000072c: 73 e0 00 7c  	csrsi	1984, 1
80000730: 13 07 c0 1c  	addi	a4, zero, 460
80000734: 93 07 10 00  	addi	a5, zero, 1
80000738: 87 31 08 00  	fld	ft3, 0(a6)
8000073c: 37 d5 cc cc  	lui	a0, 838861
80000740: 93 04 d5 cc  	addi	s1, a0, -819
80000744: 13 05 40 01  	addi	a0, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
80000748: 33 b4 96 02  	mulhu	s0, a3, s1
8000074c: 13 54 44 00  	srli	s0, s0, 4
80000750: 33 04 a4 02  	mul	s0, s0, a0
80000754: 33 84 87 40  	sub	s0, a5, s0
80000758: 53 02 14 d2  	fcvt.d.wu	ft4, s0
8000075c: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000760: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
80000764: 93 86 16 00  	addi	a3, a3, 1
80000768: 13 07 f7 ff  	addi	a4, a4, -1
8000076c: 93 87 17 00  	addi	a5, a5, 1
80000770: e3 1c 07 fc  	bnez	a4, 0x80000748 <.LBB0_29+0x50>
80000774: 73 f0 00 7c  	csrci	1984, 1
80000778: 6f 00 40 05  	j	0x800007cc <.LBB0_29+0xd4>
8000077c: 13 05 00 00  	mv	a0, zero
80000780: 93 06 c0 1c  	addi	a3, zero, 460
80000784: 13 07 10 00  	addi	a4, zero, 1
80000788: 07 30 08 00  	fld	ft0, 0(a6)
8000078c: b7 d7 cc cc  	lui	a5, 838861
80000790: 93 87 d7 cc  	addi	a5, a5, -819
80000794: 93 08 40 01  	addi	a7, zero, 20
80000798: 13 84 05 00  	mv	s0, a1
;         p[i] = (double)(seed + i % 20) * 3.141;
8000079c: b3 34 f5 02  	mulhu	s1, a0, a5
800007a0: 93 d4 44 00  	srli	s1, s1, 4
800007a4: b3 84 14 03  	mul	s1, s1, a7
800007a8: b3 04 97 40  	sub	s1, a4, s1
800007ac: d3 80 14 d2  	fcvt.d.wu	ft1, s1
800007b0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800007b4: 27 30 14 00  	fsd	ft1, 0(s0)
;     for (uint32_t i = 0; i < n; i++){
800007b8: 13 05 15 00  	addi	a0, a0, 1
800007bc: 93 86 f6 ff  	addi	a3, a3, -1
800007c0: 13 04 84 00  	addi	s0, s0, 8
800007c4: 13 07 17 00  	addi	a4, a4, 1
800007c8: e3 9a 06 fc  	bnez	a3, 0x8000079c <.LBB0_29+0xa4>
800007cc: 13 55 46 01  	srli	a0, a2, 20
800007d0: 33 35 a0 00  	snez	a0, a0
800007d4: b7 f6 11 00  	lui	a3, 287
800007d8: 93 86 16 0f  	addi	a3, a3, 241
800007dc: b3 36 d6 00  	sltu	a3, a2, a3
800007e0: 33 75 d5 00  	and	a0, a0, a3
800007e4: 63 0e 05 06  	beqz	a0, 0x80000860 <.LBB0_29+0x168>
800007e8: 93 06 00 00  	mv	a3, zero
800007ec: 13 05 80 00  	addi	a0, zero, 8
800007f0: 13 07 20 1e  	addi	a4, zero, 482
;     for (uint32_t i = 0; i < n; i++){
800007f4: 93 07 00 04  	addi	a5, zero, 64
800007f8: ab 20 f7 00  	scfgw	a4, a5
800007fc: 13 07 00 0c  	addi	a4, zero, 192
80000800: ab 20 e5 00  	scfgw	a0, a4
80000804: 13 05 00 02  	addi	a0, zero, 32
80000808: ab 20 a0 00  	scfgw	zero, a0
8000080c: 2b 20 06 38  	scfgwi	a2, 896
80000810: 73 e0 00 7c  	csrsi	1984, 1
80000814: 13 07 30 1e  	addi	a4, zero, 483
80000818: 93 07 10 00  	addi	a5, zero, 1
8000081c: 87 31 08 00  	fld	ft3, 0(a6)
80000820: 37 d5 cc cc  	lui	a0, 838861
80000824: 13 05 d5 cc  	addi	a0, a0, -819
80000828: 93 04 40 01  	addi	s1, zero, 20
;         p[i] = (double)(seed + i % 20) * 3.141;
8000082c: 33 b4 a6 02  	mulhu	s0, a3, a0
80000830: 13 54 44 00  	srli	s0, s0, 4
80000834: 33 04 94 02  	mul	s0, s0, s1
80000838: 33 84 87 40  	sub	s0, a5, s0
8000083c: 53 02 14 d2  	fcvt.d.wu	ft4, s0
80000840: 53 72 32 12  	fmul.d	ft4, ft4, ft3
80000844: 53 00 42 22  	fmv.d	ft0, ft4
;     for (uint32_t i = 0; i < n; i++){
80000848: 93 86 16 00  	addi	a3, a3, 1
8000084c: 13 07 f7 ff  	addi	a4, a4, -1
80000850: 93 87 17 00  	addi	a5, a5, 1
80000854: e3 1c 07 fc  	bnez	a4, 0x8000082c <.LBB0_29+0x134>
80000858: 73 f0 00 7c  	csrci	1984, 1
8000085c: 6f 00 40 05  	j	0x800008b0 <.LBB0_29+0x1b8>
80000860: 13 05 00 00  	mv	a0, zero
80000864: 93 06 30 1e  	addi	a3, zero, 483
80000868: 13 07 10 00  	addi	a4, zero, 1
8000086c: 07 30 08 00  	fld	ft0, 0(a6)
80000870: b7 d7 cc cc  	lui	a5, 838861
80000874: 93 87 d7 cc  	addi	a5, a5, -819
80000878: 13 08 40 01  	addi	a6, zero, 20
8000087c: 13 04 06 00  	mv	s0, a2
;         p[i] = (double)(seed + i % 20) * 3.141;
80000880: b3 34 f5 02  	mulhu	s1, a0, a5
80000884: 93 d4 44 00  	srli	s1, s1, 4
80000888: b3 84 04 03  	mul	s1, s1, a6
8000088c: b3 04 97 40  	sub	s1, a4, s1
80000890: d3 80 14 d2  	fcvt.d.wu	ft1, s1
80000894: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
80000898: 27 30 14 00  	fsd	ft1, 0(s0)
;     for (uint32_t i = 0; i < n; i++){
8000089c: 13 05 15 00  	addi	a0, a0, 1
800008a0: 93 86 f6 ff  	addi	a3, a3, -1
800008a4: 13 04 84 00  	addi	s0, s0, 8
800008a8: 13 07 17 00  	addi	a4, a4, 1
800008ac: e3 9a 06 fc  	bnez	a3, 0x80000880 <.LBB0_29+0x188>
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800008b0: 73 24 00 b0  	csrr	s0, mcycle
;     matmul(c, a, b, n, p, m);
800008b4: 93 06 40 01  	addi	a3, zero, 20
800008b8: 13 07 70 01  	addi	a4, zero, 23
800008bc: 93 07 50 01  	addi	a5, zero, 21
800008c0: 93 04 40 01  	addi	s1, zero, 20
800008c4: 13 05 09 00  	mv	a0, s2
800008c8: 97 00 00 00  	auipc	ra, 0
800008cc: e7 80 c0 24  	jalr	588(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
800008d0: 73 25 00 b0  	csrr	a0, mcycle
;     printf("cycles = %lu\n", end - start);
800008d4: b3 05 85 40  	sub	a1, a0, s0

800008d8 <.LBB0_30>:
800008d8: 17 35 00 00  	auipc	a0, 3
800008dc: 13 05 95 91  	addi	a0, a0, -1767
800008e0: 97 00 00 00  	auipc	ra, 0
800008e4: e7 80 c0 5c  	jalr	1484(ra)
;     for (int i = 0; i < n; i++){
800008e8: 13 55 49 01  	srli	a0, s2, 20
800008ec: 33 35 a0 00  	snez	a0, a0
800008f0: b7 f5 11 00  	lui	a1, 287
800008f4: 93 85 95 2e  	addi	a1, a1, 745
800008f8: b3 35 b9 00  	sltu	a1, s2, a1
800008fc: 33 75 b5 00  	and	a0, a0, a1
80000900: 63 0e 05 0e  	beqz	a0, 0x800009fc <.LBB0_30+0x124>
80000904: 93 05 80 00  	addi	a1, zero, 8
80000908: 13 05 40 01  	addi	a0, zero, 20
;     for (int i = 0; i < n; i++){
8000090c: 13 06 00 04  	addi	a2, zero, 64
80000910: 93 06 00 0c  	addi	a3, zero, 192
80000914: ab 20 c5 00  	scfgw	a0, a2
80000918: ab a0 d5 00  	scfgw	a1, a3
8000091c: 13 06 30 01  	addi	a2, zero, 19
80000920: 93 06 00 06  	addi	a3, zero, 96
80000924: 13 07 00 0e  	addi	a4, zero, 224
80000928: ab 20 d6 00  	scfgw	a2, a3
8000092c: ab a0 e5 00  	scfgw	a1, a4
80000930: 93 05 00 02  	addi	a1, zero, 32
80000934: ab 20 b0 00  	scfgw	zero, a1
80000938: 2b 20 09 32  	scfgwi	s2, 800
8000093c: 73 e0 00 7c  	csrsi	1984, 1
80000940: d3 01 00 d2  	fcvt.d.w	ft3, zero
;             r += A[i * m + j];
80000944: 53 02 00 22  	fmv.d	ft4, ft0
80000948: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000094c: 53 02 00 22  	fmv.d	ft4, ft0
80000950: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000954: 53 02 00 22  	fmv.d	ft4, ft0
80000958: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000095c: 53 02 00 22  	fmv.d	ft4, ft0
80000960: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000964: 53 02 00 22  	fmv.d	ft4, ft0
80000968: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000096c: 53 02 00 22  	fmv.d	ft4, ft0
80000970: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000974: 53 02 00 22  	fmv.d	ft4, ft0
80000978: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000097c: 53 02 00 22  	fmv.d	ft4, ft0
80000980: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000984: 53 02 00 22  	fmv.d	ft4, ft0
80000988: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000098c: 53 02 00 22  	fmv.d	ft4, ft0
80000990: d3 71 32 02  	fadd.d	ft3, ft4, ft3
80000994: 53 02 00 22  	fmv.d	ft4, ft0
80000998: d3 71 32 02  	fadd.d	ft3, ft4, ft3
8000099c: 53 02 00 22  	fmv.d	ft4, ft0
800009a0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009a4: 53 02 00 22  	fmv.d	ft4, ft0
800009a8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009ac: 53 02 00 22  	fmv.d	ft4, ft0
800009b0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009b4: 53 02 00 22  	fmv.d	ft4, ft0
800009b8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009bc: 53 02 00 22  	fmv.d	ft4, ft0
800009c0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009c4: 53 02 00 22  	fmv.d	ft4, ft0
800009c8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009cc: 53 02 00 22  	fmv.d	ft4, ft0
800009d0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009d4: 53 02 00 22  	fmv.d	ft4, ft0
800009d8: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009dc: 53 02 00 22  	fmv.d	ft4, ft0
800009e0: d3 71 32 02  	fadd.d	ft3, ft4, ft3
800009e4: 53 02 00 22  	fmv.d	ft4, ft0
;     for (int i = 0; i < n; i++){
800009e8: 13 05 f5 ff  	addi	a0, a0, -1
;             r += A[i * m + j];
800009ec: d3 71 32 02  	fadd.d	ft3, ft4, ft3
;     for (int i = 0; i < n; i++){
800009f0: e3 1a 05 f4  	bnez	a0, 0x80000944 <.LBB0_30+0x6c>
800009f4: 73 f0 00 7c  	csrci	1984, 1
800009f8: 6f 00 00 0c  	j	0x80000ab8 <.LBB0_31>
;     for (int i = 0; i < n; i++){
800009fc: 13 05 09 05  	addi	a0, s2, 80
80000a00: d3 01 00 d2  	fcvt.d.w	ft3, zero
;             r += A[i * m + j];
80000a04: 07 30 05 fb  	fld	ft0, -80(a0)
80000a08: 53 70 30 02  	fadd.d	ft0, ft0, ft3
80000a0c: 87 30 85 fb  	fld	ft1, -72(a0)
80000a10: 07 31 05 fc  	fld	ft2, -64(a0)
80000a14: 87 31 85 fc  	fld	ft3, -56(a0)
80000a18: 07 32 05 fd  	fld	ft4, -48(a0)
80000a1c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a20: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a24: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a28: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a2c: 87 30 85 fd  	fld	ft1, -40(a0)
80000a30: 07 31 05 fe  	fld	ft2, -32(a0)
80000a34: 87 31 85 fe  	fld	ft3, -24(a0)
80000a38: 07 32 05 ff  	fld	ft4, -16(a0)
80000a3c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a40: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a44: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a48: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a4c: 87 30 85 ff  	fld	ft1, -8(a0)
80000a50: 07 31 05 00  	fld	ft2, 0(a0)
80000a54: 87 31 85 00  	fld	ft3, 8(a0)
80000a58: 07 32 05 01  	fld	ft4, 16(a0)
80000a5c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a60: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a64: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a68: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a6c: 87 30 85 01  	fld	ft1, 24(a0)
80000a70: 07 31 05 02  	fld	ft2, 32(a0)
80000a74: 87 31 85 02  	fld	ft3, 40(a0)
80000a78: 07 32 05 03  	fld	ft4, 48(a0)
80000a7c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000a80: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000a84: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000a88: 53 70 02 02  	fadd.d	ft0, ft4, ft0
80000a8c: 87 30 85 03  	fld	ft1, 56(a0)
80000a90: 07 31 05 04  	fld	ft2, 64(a0)
80000a94: 87 31 85 04  	fld	ft3, 72(a0)
80000a98: 07 32 05 05  	fld	ft4, 80(a0)
80000a9c: 53 f0 00 02  	fadd.d	ft0, ft1, ft0
80000aa0: 53 70 01 02  	fadd.d	ft0, ft2, ft0
80000aa4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
80000aa8: d3 71 02 02  	fadd.d	ft3, ft4, ft0
;     for (int i = 0; i < n; i++){
80000aac: 93 84 f4 ff  	addi	s1, s1, -1
80000ab0: 13 05 85 0a  	addi	a0, a0, 168
80000ab4: e3 98 04 f4  	bnez	s1, 0x80000a04 <.LBB0_30+0x12c>

80000ab8 <.LBB0_31>:
80000ab8: 17 35 00 00  	auipc	a0, 3
80000abc: 13 05 85 9e  	addi	a0, a0, -1560
80000ac0: 07 30 05 00  	fld	ft0, 0(a0)
;     double error = r - r_true;
80000ac4: 53 f0 01 02  	fadd.d	ft0, ft3, ft0
;     error = error < 0.0 ? -error : error;
80000ac8: 53 24 00 22  	fabs.d	fs0, ft0
;     printf("error = %f\n", error);
80000acc: 27 30 81 00  	fsd	fs0, 0(sp)
80000ad0: 03 26 01 00  	lw	a2, 0(sp)
80000ad4: 83 26 41 00  	lw	a3, 4(sp)

80000ad8 <.LBB0_32>:
80000ad8: 17 25 00 00  	auipc	a0, 2
80000adc: 13 05 d5 70  	addi	a0, a0, 1805
80000ae0: 97 00 00 00  	auipc	ra, 0
80000ae4: e7 80 c0 3c  	jalr	972(ra)

80000ae8 <.LBB0_33>:
80000ae8: 17 35 00 00  	auipc	a0, 3
80000aec: 13 05 05 9c  	addi	a0, a0, -1600
80000af0: 07 30 05 00  	fld	ft0, 0(a0)
;     return error > 0.0001;
80000af4: 53 15 80 a2  	flt.d	a0, ft0, fs0
; }
80000af8: 07 34 81 00  	fld	fs0, 8(sp)
80000afc: 03 29 01 01  	lw	s2, 16(sp)
80000b00: 83 24 41 01  	lw	s1, 20(sp)
80000b04: 03 24 81 01  	lw	s0, 24(sp)
80000b08: 83 20 c1 01  	lw	ra, 28(sp)
80000b0c: 13 01 01 02  	addi	sp, sp, 32
80000b10: 67 80 00 00  	ret

80000b14 <matmul>:
; void matmul(double C[], double A[], double B[], int n, int p, int m){
80000b14: 13 01 01 fd  	addi	sp, sp, -48
80000b18: 23 26 11 02  	sw	ra, 44(sp)
80000b1c: 23 24 81 02  	sw	s0, 40(sp)
80000b20: 23 22 91 02  	sw	s1, 36(sp)
80000b24: 23 20 21 03  	sw	s2, 32(sp)
80000b28: 23 2e 31 01  	sw	s3, 28(sp)
80000b2c: 23 2c 41 01  	sw	s4, 24(sp)
80000b30: 23 2a 51 01  	sw	s5, 20(sp)
80000b34: 23 28 61 01  	sw	s6, 16(sp)
80000b38: 23 26 71 01  	sw	s7, 12(sp)
80000b3c: 13 8b 06 00  	mv	s6, a3
;     for (int i = 0; i < n; i++){
80000b40: 93 a6 16 00  	slti	a3, a3, 1
80000b44: 93 a4 17 00  	slti	s1, a5, 1
80000b48: b3 e6 96 00  	or	a3, a3, s1
80000b4c: 63 9a 06 32  	bnez	a3, 0x80000e80 <matmul+0x36c>
80000b50: 93 0b 05 00  	mv	s7, a0
;     for (int i = 0; i < n; i++){
80000b54: 13 88 f7 ff  	addi	a6, a5, -1
80000b58: 93 1e 38 00  	slli	t4, a6, 3
80000b5c: 93 03 fb ff  	addi	t2, s6, -1
80000b60: 13 99 37 00  	slli	s2, a5, 3
80000b64: 33 05 79 02  	mul	a0, s2, t2
80000b68: 33 85 ae 00  	add	a0, t4, a0
80000b6c: 33 0a 75 01  	add	s4, a0, s7
80000b70: b3 36 aa 00  	sltu	a3, s4, a0
;             for (int k = 0; k < p; k++){
80000b74: 63 58 e0 04  	blez	a4, 0x80000bc4 <matmul+0xb0>
;     for (int i = 0; i < n; i++){
80000b78: 93 02 f7 ff  	addi	t0, a4, -1
80000b7c: 13 93 32 00  	slli	t1, t0, 3
80000b80: 93 1a 37 00  	slli	s5, a4, 3
80000b84: 33 85 7a 02  	mul	a0, s5, t2
80000b88: b3 0f a3 00  	add	t6, t1, a0
80000b8c: 33 8f bf 00  	add	t5, t6, a1
80000b90: b3 08 59 02  	mul	a7, s2, t0
80000b94: 63 88 06 06  	beqz	a3, 0x80000c04 <matmul+0xf0>
80000b98: 13 05 00 00  	mv	a0, zero
80000b9c: 33 8e d8 01  	add	t3, a7, t4
80000ba0: 63 68 ff 07  	bltu	t5, t6, 0x80000c10 <matmul+0xfc>
80000ba4: 33 34 7f 01  	sltu	s0, t5, s7
;     for (int i = 0; i < n; i++){
80000ba8: b3 09 ce 00  	add	s3, t3, a2
80000bac: 63 98 06 06  	bnez	a3, 0x80000c1c <matmul+0x108>
80000bb0: b3 34 ca 00  	sltu	s1, s4, a2
;     for (int i = 0; i < n; i++){
80000bb4: 33 65 a4 00  	or	a0, s0, a0
80000bb8: 63 e8 c9 07  	bltu	s3, t3, 0x80000c28 <matmul+0x114>
80000bbc: 33 b4 79 01  	sltu	s0, s3, s7
80000bc0: 6f 00 c0 06  	j	0x80000c2c <matmul+0x118>
;     for (int i = 0; i < n; i++){
80000bc4: 13 d5 4b 01  	srli	a0, s7, 20
80000bc8: 33 35 a0 00  	snez	a0, a0
80000bcc: 63 84 06 24  	beqz	a3, 0x80000e14 <matmul+0x300>
80000bd0: 93 05 00 00  	mv	a1, zero
80000bd4: 33 75 b5 00  	and	a0, a0, a1
80000bd8: 63 18 05 24  	bnez	a0, 0x80000e28 <matmul+0x314>
80000bdc: 13 84 8e 00  	addi	s0, t4, 8
;             C[m*i + j] = c;
80000be0: 13 85 0b 00  	mv	a0, s7
80000be4: 93 05 00 00  	mv	a1, zero
80000be8: 13 06 09 00  	mv	a2, s2
80000bec: 97 f0 ff ff  	auipc	ra, 1048575
80000bf0: e7 80 40 41  	jalr	1044(ra)
;     for (int i = 0; i < n; i++){
80000bf4: 13 0b fb ff  	addi	s6, s6, -1
80000bf8: b3 8b 8b 00  	add	s7, s7, s0
80000bfc: e3 12 0b fe  	bnez	s6, 0x80000be0 <matmul+0xcc>
80000c00: 6f 00 00 28  	j	0x80000e80 <matmul+0x36c>
80000c04: 33 35 ba 00  	sltu	a0, s4, a1
;     for (int i = 0; i < n; i++){
80000c08: 33 8e d8 01  	add	t3, a7, t4
80000c0c: e3 7c ff f9  	bgeu	t5, t6, 0x80000ba4 <matmul+0x90>
80000c10: 13 04 00 00  	mv	s0, zero
80000c14: b3 09 ce 00  	add	s3, t3, a2
80000c18: e3 8c 06 f8  	beqz	a3, 0x80000bb0 <matmul+0x9c>
80000c1c: 93 04 00 00  	mv	s1, zero
80000c20: 33 65 a4 00  	or	a0, s0, a0
80000c24: e3 fc c9 f9  	bgeu	s3, t3, 0x80000bbc <matmul+0xa8>
80000c28: 13 04 00 00  	mv	s0, zero
80000c2c: 33 e4 84 00  	or	s0, s1, s0
80000c30: 33 74 85 00  	and	s0, a0, s0
80000c34: 13 d5 4b 01  	srli	a0, s7, 20
80000c38: b3 34 a0 00  	snez	s1, a0
80000c3c: 37 05 12 00  	lui	a0, 288
80000c40: 13 05 15 00  	addi	a0, a0, 1
80000c44: 63 86 06 00  	beqz	a3, 0x80000c50 <matmul+0x13c>
80000c48: 93 06 00 00  	mv	a3, zero
80000c4c: 6f 00 80 00  	j	0x80000c54 <matmul+0x140>
80000c50: b3 36 aa 00  	sltu	a3, s4, a0
;     for (int i = 0; i < n; i++){
80000c54: b3 f6 d4 00  	and	a3, s1, a3
80000c58: b3 f6 86 00  	and	a3, a3, s0
80000c5c: 13 d4 45 01  	srli	s0, a1, 20
80000c60: 33 34 80 00  	snez	s0, s0
80000c64: 63 76 ff 01  	bgeu	t5, t6, 0x80000c70 <matmul+0x15c>
80000c68: 93 04 00 00  	mv	s1, zero
80000c6c: 6f 00 80 00  	j	0x80000c74 <matmul+0x160>
80000c70: b3 34 af 00  	sltu	s1, t5, a0
;     for (int i = 0; i < n; i++){
80000c74: b3 74 94 00  	and	s1, s0, s1
80000c78: b3 f6 d4 00  	and	a3, s1, a3
80000c7c: 93 54 46 01  	srli	s1, a2, 20
80000c80: b3 34 90 00  	snez	s1, s1
80000c84: 63 f6 c9 01  	bgeu	s3, t3, 0x80000c90 <matmul+0x17c>
80000c88: 13 05 00 00  	mv	a0, zero
80000c8c: 6f 00 80 00  	j	0x80000c94 <matmul+0x180>
80000c90: 33 b5 a9 00  	sltu	a0, s3, a0
;     for (int i = 0; i < n; i++){
80000c94: 33 f5 a4 00  	and	a0, s1, a0
80000c98: 33 75 d5 00  	and	a0, a0, a3
80000c9c: 63 04 05 10  	beqz	a0, 0x80000da4 <matmul+0x290>
80000ca0: 13 05 00 00  	mv	a0, zero
80000ca4: 93 0e 80 00  	addi	t4, zero, 8
;     for (int i = 0; i < n; i++){
80000ca8: 93 04 00 04  	addi	s1, zero, 64
80000cac: ab 20 98 00  	scfgw	a6, s1
80000cb0: 93 04 00 0c  	addi	s1, zero, 192
80000cb4: ab a0 9e 00  	scfgw	t4, s1
80000cb8: 93 04 00 06  	addi	s1, zero, 96
80000cbc: ab a0 93 00  	scfgw	t2, s1
80000cc0: 93 04 00 0e  	addi	s1, zero, 224
80000cc4: ab a0 9e 00  	scfgw	t4, s1
80000cc8: 93 04 00 02  	addi	s1, zero, 32
80000ccc: ab 20 90 00  	scfgw	zero, s1
80000cd0: 2b a0 0b 3a  	scfgwi	s7, 928
80000cd4: 93 04 10 00  	addi	s1, zero, 1
80000cd8: 13 84 04 04  	addi	s0, s1, 64
80000cdc: ab a0 82 00  	scfgw	t0, s0
80000ce0: 13 84 04 0c  	addi	s0, s1, 192
80000ce4: ab a0 8e 00  	scfgw	t4, s0
80000ce8: 33 04 60 40  	neg	s0, t1
80000cec: 93 86 04 06  	addi	a3, s1, 96
80000cf0: ab 20 d8 00  	scfgw	a6, a3
80000cf4: 93 86 04 0e  	addi	a3, s1, 224
80000cf8: ab 20 d4 00  	scfgw	s0, a3
80000cfc: 93 86 04 08  	addi	a3, s1, 128
80000d00: 13 84 04 10  	addi	s0, s1, 256
80000d04: ab a0 d3 00  	scfgw	t2, a3
80000d08: ab a0 8e 00  	scfgw	t4, s0
80000d0c: 93 86 04 02  	addi	a3, s1, 32
80000d10: ab 20 d0 00  	scfgw	zero, a3
80000d14: 2b a0 15 34  	scfgwi	a1, 833
80000d18: 93 05 20 00  	addi	a1, zero, 2
80000d1c: 93 86 05 04  	addi	a3, a1, 64
80000d20: 93 84 05 0c  	addi	s1, a1, 192
80000d24: ab a0 d2 00  	scfgw	t0, a3
80000d28: ab 20 99 00  	scfgw	s2, s1
80000d2c: b3 86 1e 41  	sub	a3, t4, a7
80000d30: 93 84 05 06  	addi	s1, a1, 96
80000d34: 13 84 05 0e  	addi	s0, a1, 224
80000d38: ab 20 98 00  	scfgw	a6, s1
80000d3c: ab a0 86 00  	scfgw	a3, s0
80000d40: b3 06 c0 41  	neg	a3, t3
80000d44: 93 84 05 08  	addi	s1, a1, 128
80000d48: 13 84 05 10  	addi	s0, a1, 256
80000d4c: ab a0 93 00  	scfgw	t2, s1
80000d50: ab a0 86 00  	scfgw	a3, s0
80000d54: 93 85 05 02  	addi	a1, a1, 32
80000d58: ab 20 b0 00  	scfgw	zero, a1
80000d5c: 2b 20 26 34  	scfgwi	a2, 834
80000d60: 73 e0 00 7c  	csrsi	1984, 1
80000d64: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000d68: 93 05 00 00  	mv	a1, zero
80000d6c: 13 06 07 00  	mv	a2, a4
80000d70: 53 82 31 22  	fmv.d	ft4, ft3
;                 c += A[p*i + k] * B[k*m + j];
80000d74: d3 82 10 22  	fmv.d	ft5, ft1
80000d78: 53 03 21 22  	fmv.d	ft6, ft2
;             for (int k = 0; k < p; k++){
80000d7c: 13 06 f6 ff  	addi	a2, a2, -1
;                 c += A[p*i + k] * B[k*m + j];
80000d80: 43 72 53 22  	fmadd.d	ft4, ft6, ft5, ft4
;             for (int k = 0; k < p; k++){
80000d84: e3 18 06 fe  	bnez	a2, 0x80000d74 <matmul+0x260>
;         for (int j = 0; j < m; j++){
80000d88: 93 85 15 00  	addi	a1, a1, 1
;             C[m*i + j] = c;
80000d8c: 53 00 42 22  	fmv.d	ft0, ft4
;         for (int j = 0; j < m; j++){
80000d90: e3 9e f5 fc  	bne	a1, a5, 0x80000d6c <matmul+0x258>
;     for (int i = 0; i < n; i++){
80000d94: 13 05 15 00  	addi	a0, a0, 1
80000d98: e3 18 65 fd  	bne	a0, s6, 0x80000d68 <matmul+0x254>
80000d9c: 73 f0 00 7c  	csrci	1984, 1
80000da0: 6f 00 00 0e  	j	0x80000e80 <matmul+0x36c>
80000da4: 13 08 00 00  	mv	a6, zero
;     for (int i = 0; i < n; i++){
80000da8: 13 85 8e 00  	addi	a0, t4, 8
80000dac: 53 00 00 d2  	fcvt.d.w	ft0, zero
80000db0: 13 03 00 00  	mv	t1, zero
80000db4: b3 08 f8 02  	mul	a7, a6, a5
80000db8: 93 02 06 00  	mv	t0, a2
80000dbc: 93 84 05 00  	mv	s1, a1
80000dc0: 93 86 02 00  	mv	a3, t0
80000dc4: 13 04 07 00  	mv	s0, a4
80000dc8: d3 00 00 22  	fmv.d	ft1, ft0
;                 c += A[p*i + k] * B[k*m + j];
80000dcc: 07 b1 04 00  	fld	ft2, 0(s1)
80000dd0: 87 b1 06 00  	fld	ft3, 0(a3)
80000dd4: c3 f0 21 0a  	fmadd.d	ft1, ft3, ft2, ft1
;             for (int k = 0; k < p; k++){
80000dd8: 13 04 f4 ff  	addi	s0, s0, -1
80000ddc: b3 86 a6 00  	add	a3, a3, a0
80000de0: 93 84 84 00  	addi	s1, s1, 8
80000de4: e3 14 04 fe  	bnez	s0, 0x80000dcc <matmul+0x2b8>
;             C[m*i + j] = c;
80000de8: b3 06 13 01  	add	a3, t1, a7
80000dec: 93 96 36 00  	slli	a3, a3, 3
80000df0: b3 86 db 00  	add	a3, s7, a3
80000df4: 27 b0 16 00  	fsd	ft1, 0(a3)
;         for (int j = 0; j < m; j++){
80000df8: 13 03 13 00  	addi	t1, t1, 1
80000dfc: 93 82 82 00  	addi	t0, t0, 8
80000e00: e3 1e f3 fa  	bne	t1, a5, 0x80000dbc <matmul+0x2a8>
;     for (int i = 0; i < n; i++){
80000e04: 13 08 18 00  	addi	a6, a6, 1
80000e08: b3 85 55 01  	add	a1, a1, s5
80000e0c: e3 12 68 fb  	bne	a6, s6, 0x80000db0 <matmul+0x29c>
80000e10: 6f 00 00 07  	j	0x80000e80 <matmul+0x36c>
80000e14: b7 05 12 00  	lui	a1, 288
80000e18: 93 85 15 00  	addi	a1, a1, 1
80000e1c: b3 35 ba 00  	sltu	a1, s4, a1
;     for (int i = 0; i < n; i++){
80000e20: 33 75 b5 00  	and	a0, a0, a1
80000e24: e3 0c 05 da  	beqz	a0, 0x80000bdc <matmul+0xc8>
80000e28: 13 05 00 00  	mv	a0, zero
80000e2c: 93 05 80 00  	addi	a1, zero, 8
;     for (int i = 0; i < n; i++){
80000e30: 13 06 00 04  	addi	a2, zero, 64
80000e34: ab 20 c8 00  	scfgw	a6, a2
80000e38: 13 06 00 0c  	addi	a2, zero, 192
80000e3c: ab a0 c5 00  	scfgw	a1, a2
80000e40: 13 06 00 06  	addi	a2, zero, 96
80000e44: 93 06 00 0e  	addi	a3, zero, 224
80000e48: ab a0 c3 00  	scfgw	t2, a2
80000e4c: ab a0 d5 00  	scfgw	a1, a3
80000e50: 93 05 00 02  	addi	a1, zero, 32
80000e54: ab 20 b0 00  	scfgw	zero, a1
80000e58: 2b a0 0b 3a  	scfgwi	s7, 928
80000e5c: 73 e0 00 7c  	csrsi	1984, 1
80000e60: d3 01 00 d2  	fcvt.d.w	ft3, zero
80000e64: 93 85 07 00  	mv	a1, a5
;         for (int j = 0; j < m; j++){
80000e68: 93 85 f5 ff  	addi	a1, a1, -1
;             C[m*i + j] = c;
80000e6c: 53 80 31 22  	fmv.d	ft0, ft3
;         for (int j = 0; j < m; j++){
80000e70: e3 9c 05 fe  	bnez	a1, 0x80000e68 <matmul+0x354>
;     for (int i = 0; i < n; i++){
80000e74: 13 05 15 00  	addi	a0, a0, 1
80000e78: e3 16 65 ff  	bne	a0, s6, 0x80000e64 <matmul+0x350>
80000e7c: 73 f0 00 7c  	csrci	1984, 1
;     return;
80000e80: 83 2b c1 00  	lw	s7, 12(sp)
80000e84: 03 2b 01 01  	lw	s6, 16(sp)
80000e88: 83 2a 41 01  	lw	s5, 20(sp)
80000e8c: 03 2a 81 01  	lw	s4, 24(sp)
80000e90: 83 29 c1 01  	lw	s3, 28(sp)
80000e94: 03 29 01 02  	lw	s2, 32(sp)
80000e98: 83 24 41 02  	lw	s1, 36(sp)
80000e9c: 03 24 81 02  	lw	s0, 40(sp)
80000ea0: 83 20 c1 02  	lw	ra, 44(sp)
80000ea4: 13 01 01 03  	addi	sp, sp, 48
80000ea8: 67 80 00 00  	ret

80000eac <printf_>:
; {
80000eac: 13 01 01 fd  	addi	sp, sp, -48
80000eb0: 23 26 11 00  	sw	ra, 12(sp)
80000eb4: 93 02 05 00  	mv	t0, a0
80000eb8: 23 26 11 03  	sw	a7, 44(sp)
80000ebc: 23 24 01 03  	sw	a6, 40(sp)
80000ec0: 23 22 f1 02  	sw	a5, 36(sp)
80000ec4: 23 20 e1 02  	sw	a4, 32(sp)
80000ec8: 23 2e d1 00  	sw	a3, 28(sp)
80000ecc: 23 2c c1 00  	sw	a2, 24(sp)
80000ed0: 23 2a b1 00  	sw	a1, 20(sp)
80000ed4: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
80000ed8: 23 24 a1 00  	sw	a0, 8(sp)

80000edc <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000edc: 17 15 00 00  	auipc	a0, 1
80000ee0: 13 05 45 c2  	addi	a0, a0, -988
80000ee4: 93 05 71 00  	addi	a1, sp, 7
80000ee8: 13 06 f0 ff  	addi	a2, zero, -1
80000eec: 13 07 41 01  	addi	a4, sp, 20
80000ef0: 93 86 02 00  	mv	a3, t0
80000ef4: 97 00 00 00  	auipc	ra, 0
80000ef8: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000efc: 83 20 c1 00  	lw	ra, 12(sp)
80000f00: 13 01 01 03  	addi	sp, sp, 48
80000f04: 67 80 00 00  	ret

80000f08 <_vsnprintf.llvm.1805434900161566649>:
; {
80000f08: 13 01 01 f9  	addi	sp, sp, -112
80000f0c: 23 26 11 06  	sw	ra, 108(sp)
80000f10: 23 24 81 06  	sw	s0, 104(sp)
80000f14: 23 22 91 06  	sw	s1, 100(sp)
80000f18: 23 20 21 07  	sw	s2, 96(sp)
80000f1c: 23 2e 31 05  	sw	s3, 92(sp)
80000f20: 23 2c 41 05  	sw	s4, 88(sp)
80000f24: 23 2a 51 05  	sw	s5, 84(sp)
80000f28: 23 28 61 05  	sw	s6, 80(sp)
80000f2c: 23 26 71 05  	sw	s7, 76(sp)
80000f30: 23 24 81 05  	sw	s8, 72(sp)
80000f34: 23 22 91 05  	sw	s9, 68(sp)
80000f38: 23 20 a1 05  	sw	s10, 64(sp)
80000f3c: 23 2e b1 03  	sw	s11, 60(sp)
80000f40: 93 09 07 00  	mv	s3, a4
80000f44: 13 84 06 00  	mv	s0, a3
80000f48: 93 0a 06 00  	mv	s5, a2
80000f4c: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
80000f50: 63 86 05 00  	beqz	a1, 0x80000f5c <.LBB1_183>
80000f54: 13 09 05 00  	mv	s2, a0
80000f58: 6f 00 c0 00  	j	0x80000f64 <.LBB1_183+0x8>

80000f5c <.LBB1_183>:
80000f5c: 17 19 00 00  	auipc	s2, 1
80000f60: 13 09 09 c5  	addi	s2, s2, -944
80000f64: 13 0c 00 00  	mv	s8, zero
80000f68: 13 0b 50 02  	addi	s6, zero, 37
80000f6c: 93 0d 00 01  	addi	s11, zero, 16
80000f70: 93 0b e0 02  	addi	s7, zero, 46
80000f74: 37 15 00 00  	lui	a0, 1
80000f78: 13 05 05 80  	addi	a0, a0, -2048
80000f7c: 23 2c a1 00  	sw	a0, 24(sp)
80000f80: 37 05 01 00  	lui	a0, 16
80000f84: 13 05 f5 ff  	addi	a0, a0, -1
80000f88: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000f8c: 13 0d 24 00  	addi	s10, s0, 2
80000f90: 93 0c 0c 00  	mv	s9, s8
80000f94: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
80000f98: 03 45 04 00  	lbu	a0, 0(s0)
80000f9c: e3 04 05 30  	beqz	a0, 0x80001aa4 <.LBB1_124+0x3b0>
80000fa0: 63 08 65 03  	beq	a0, s6, 0x80000fd0 <.LBB1_183+0x74>
;       out(*format, buffer, idx++, maxlen);
80000fa4: 93 84 1c 00  	addi	s1, s9, 1
80000fa8: 93 05 0a 00  	mv	a1, s4
80000fac: 13 86 0c 00  	mv	a2, s9
80000fb0: 93 86 0a 00  	mv	a3, s5
80000fb4: e7 00 09 00  	jalr	s2
;       format++;
80000fb8: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000fbc: 13 0d 1d 00  	addi	s10, s10, 1
80000fc0: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000fc4: 03 45 04 00  	lbu	a0, 0(s0)
80000fc8: e3 1c 05 fc  	bnez	a0, 0x80000fa0 <.LBB1_183+0x44>
80000fcc: 6f 00 90 2d  	j	0x80001aa4 <.LBB1_124+0x3b0>
;     flags = 0U;
80000fd0: 13 04 00 00  	mv	s0, zero
80000fd4: 6f 00 00 01  	j	0x80000fe4 <.LBB1_9+0x8>

80000fd8 <.LBB1_8>:
80000fd8: 93 05 00 01  	addi	a1, zero, 16

80000fdc <.LBB1_9>:
80000fdc: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000fe0: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000fe4: 03 45 fd ff  	lbu	a0, -1(s10)
80000fe8: 93 05 05 fe  	addi	a1, a0, -32
80000fec: 63 ec bd 02  	bltu	s11, a1, 0x80001024 <.LBB1_15>
80000ff0: 93 95 25 00  	slli	a1, a1, 2

80000ff4 <.LBB1_184>:
80000ff4: 17 26 00 00  	auipc	a2, 2
80000ff8: 13 06 06 21  	addi	a2, a2, 528
80000ffc: b3 85 c5 00  	add	a1, a1, a2
80001000: 03 a6 05 00  	lw	a2, 0(a1)
80001004: 93 05 10 00  	addi	a1, zero, 1
80001008: 67 00 06 00  	jr	a2

8000100c <.LBB1_12>:
8000100c: 93 05 80 00  	addi	a1, zero, 8
80001010: 6f f0 df fc  	j	0x80000fdc <.LBB1_9>

80001014 <.LBB1_13>:
80001014: 93 05 40 00  	addi	a1, zero, 4
80001018: 6f f0 5f fc  	j	0x80000fdc <.LBB1_9>

8000101c <.LBB1_14>:
8000101c: 93 05 20 00  	addi	a1, zero, 2
80001020: 6f f0 df fb  	j	0x80000fdc <.LBB1_9>

80001024 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
80001024: 93 05 05 fd  	addi	a1, a0, -48
80001028: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
8000102c: 93 05 fd ff  	addi	a1, s10, -1
80001030: 93 06 90 00  	addi	a3, zero, 9
80001034: 63 ee c6 06  	bltu	a3, a2, 0x800010b0 <.LBB1_15+0x8c>
80001038: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000103c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80001040: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001044: b3 06 8b 03  	mul	a3, s6, s8
80001048: 93 85 15 00  	addi	a1, a1, 1
8000104c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80001050: 93 06 05 fd  	addi	a3, a0, -48
80001054: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001058: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
8000105c: e3 e0 86 ff  	bltu	a3, s8, 0x8000103c <.LBB1_15+0x18>
80001060: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
80001064: 63 16 75 0b  	bne	a0, s7, 0x80001110 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
80001068: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
8000106c: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80001070: 93 05 05 fd  	addi	a1, a0, -48
80001074: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
80001078: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
8000107c: 93 06 90 00  	addi	a3, zero, 9
80001080: 63 e0 c6 06  	bltu	a3, a2, 0x800010e0 <.LBB1_15+0xbc>
80001084: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001088: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
8000108c: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80001090: b3 86 8b 03  	mul	a3, s7, s8
80001094: 93 85 15 00  	addi	a1, a1, 1
80001098: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
8000109c: 93 06 05 fd  	addi	a3, a0, -48
800010a0: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800010a4: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
800010a8: e3 e0 86 ff  	bltu	a3, s8, 0x80001088 <.LBB1_15+0x64>
800010ac: 6f 00 00 07  	j	0x8000111c <.LBB1_15+0xf8>
;     else if (*format == '*') {
800010b0: 13 06 a0 02  	addi	a2, zero, 42
800010b4: 63 18 c5 04  	bne	a0, a2, 0x80001104 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
800010b8: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
800010bc: 63 d4 05 00  	bgez	a1, 0x800010c4 <.LBB1_15+0xa0>
800010c0: 13 64 24 00  	ori	s0, s0, 2
800010c4: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
800010c8: 03 45 0d 00  	lbu	a0, 0(s10)
800010cc: 13 d6 f5 41  	srai	a2, a1, 31
800010d0: b3 85 c5 00  	add	a1, a1, a2
800010d4: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
800010d8: e3 08 75 f9  	beq	a0, s7, 0x80001068 <.LBB1_15+0x44>
800010dc: 6f 00 40 03  	j	0x80001110 <.LBB1_15+0xec>
;       else if (*format == '*') {
800010e0: 13 06 a0 02  	addi	a2, zero, 42
800010e4: 63 1a c5 02  	bne	a0, a2, 0x80001118 <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
800010e8: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
800010ec: 63 44 70 01  	bgtz	s7, 0x800010f4 <.LBB1_15+0xd0>
800010f0: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
800010f4: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
800010f8: 13 0d 2d 00  	addi	s10, s10, 2
800010fc: 93 89 49 00  	addi	s3, s3, 4
80001100: 6f 00 00 02  	j	0x80001120 <.LBB1_15+0xfc>
80001104: 13 0b 00 00  	mv	s6, zero
80001108: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
8000110c: e3 0e 75 f5  	beq	a0, s7, 0x80001068 <.LBB1_15+0x44>
80001110: 93 0b 00 00  	mv	s7, zero
80001114: 6f 00 c0 00  	j	0x80001120 <.LBB1_15+0xfc>
80001118: 93 0b 00 00  	mv	s7, zero
8000111c: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
80001120: 93 05 85 f9  	addi	a1, a0, -104
80001124: 13 d6 15 00  	srli	a2, a1, 1
80001128: 93 95 f5 01  	slli	a1, a1, 31
8000112c: b3 e5 c5 00  	or	a1, a1, a2
80001130: 13 06 90 00  	addi	a2, zero, 9
80001134: 63 62 b6 06  	bltu	a2, a1, 0x80001198 <.LBB1_42>
80001138: 93 95 25 00  	slli	a1, a1, 2

8000113c <.LBB1_185>:
8000113c: 17 26 00 00  	auipc	a2, 2
80001140: 13 06 c6 10  	addi	a2, a2, 268
80001144: b3 85 c5 00  	add	a1, a1, a2
80001148: 83 a6 05 00  	lw	a3, 0(a1)
8000114c: 93 05 10 00  	addi	a1, zero, 1
80001150: 13 06 00 10  	addi	a2, zero, 256
80001154: 67 80 06 00  	jr	a3

80001158 <.LBB1_36>:
;         if (*format == 'h') {
80001158: 03 45 1d 00  	lbu	a0, 1(s10)
8000115c: 93 05 80 06  	addi	a1, zero, 104
80001160: 63 12 b5 12  	bne	a0, a1, 0x80001284 <.LBB1_53+0x48>
80001164: 93 05 20 00  	addi	a1, zero, 2
80001168: 13 06 00 0c  	addi	a2, zero, 192
8000116c: 6f 00 00 02  	j	0x8000118c <.LBB1_41>

80001170 <.LBB1_38>:
80001170: 13 06 00 20  	addi	a2, zero, 512
80001174: 6f 00 80 01  	j	0x8000118c <.LBB1_41>

80001178 <.LBB1_39>:
;         if (*format == 'l') {
80001178: 03 45 1d 00  	lbu	a0, 1(s10)
8000117c: 93 05 c0 06  	addi	a1, zero, 108
80001180: 63 18 b5 10  	bne	a0, a1, 0x80001290 <.LBB1_53+0x54>
80001184: 93 05 20 00  	addi	a1, zero, 2
80001188: 13 06 00 30  	addi	a2, zero, 768

8000118c <.LBB1_41>:
8000118c: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80001190: 03 45 0d 00  	lbu	a0, 0(s10)
80001194: 33 64 c4 00  	or	s0, s0, a2

80001198 <.LBB1_42>:
;     switch (*format) {
80001198: 93 05 b5 fd  	addi	a1, a0, -37
8000119c: 13 06 30 05  	addi	a2, zero, 83
800011a0: 63 64 b6 10  	bltu	a2, a1, 0x800012a8 <.LBB1_59>
800011a4: 93 95 25 00  	slli	a1, a1, 2

800011a8 <.LBB1_186>:
800011a8: 17 26 00 00  	auipc	a2, 2
800011ac: 13 06 86 0c  	addi	a2, a2, 200
800011b0: b3 85 c5 00  	add	a1, a1, a2
800011b4: 03 a6 05 00  	lw	a2, 0(a1)
800011b8: 93 05 80 00  	addi	a1, zero, 8
800011bc: 13 0c 00 01  	addi	s8, zero, 16
800011c0: 67 00 06 00  	jr	a2

800011c4 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
800011c4: 13 74 f4 fe  	andi	s0, s0, -17
800011c8: 13 0c a0 00  	addi	s8, zero, 10

800011cc <.LBB1_45>:
;         if (*format == 'X') {
800011cc: 93 05 80 05  	addi	a1, zero, 88
800011d0: 63 14 b5 00  	bne	a0, a1, 0x800011d8 <.LBB1_45+0xc>
800011d4: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
800011d8: 93 05 40 06  	addi	a1, zero, 100
800011dc: 63 08 b5 0e  	beq	a0, a1, 0x800012cc <.LBB1_62+0x8>
800011e0: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
800011e4: 13 06 90 06  	addi	a2, zero, 105
800011e8: 63 02 c5 0e  	beq	a0, a2, 0x800012cc <.LBB1_62+0x8>
800011ec: 6f 00 80 0d  	j	0x800012c4 <.LBB1_62>

800011f0 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
800011f0: 93 05 60 04  	addi	a1, zero, 70
800011f4: 63 14 b5 00  	bne	a0, a1, 0x800011fc <.LBB1_49+0xc>
800011f8: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
800011fc: 13 85 79 00  	addi	a0, s3, 7
80001200: 13 75 85 ff  	andi	a0, a0, -8
80001204: 07 35 05 00  	fld	fa0, 0(a0)
80001208: 93 09 85 00  	addi	s3, a0, 8
8000120c: 13 05 09 00  	mv	a0, s2
80001210: 93 05 0a 00  	mv	a1, s4
80001214: 13 86 0c 00  	mv	a2, s9
80001218: 93 86 0a 00  	mv	a3, s5
8000121c: 13 87 0b 00  	mv	a4, s7
80001220: 93 07 0b 00  	mv	a5, s6
80001224: 13 08 04 00  	mv	a6, s0
80001228: 97 10 00 00  	auipc	ra, 1
8000122c: e7 80 80 98  	jalr	-1656(ra)
80001230: 6f 00 00 7c  	j	0x800019f0 <.LBB1_124+0x2fc>

80001234 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80001234: 83 25 81 01  	lw	a1, 24(sp)
80001238: 33 64 b4 00  	or	s0, s0, a1

8000123c <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
8000123c: 13 65 25 00  	ori	a0, a0, 2
80001240: 93 05 70 04  	addi	a1, zero, 71
80001244: 63 14 b5 00  	bne	a0, a1, 0x8000124c <.LBB1_53+0x10>
80001248: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
8000124c: 13 85 79 00  	addi	a0, s3, 7
80001250: 13 75 85 ff  	andi	a0, a0, -8
80001254: 07 35 05 00  	fld	fa0, 0(a0)
80001258: 93 09 85 00  	addi	s3, a0, 8
8000125c: 13 05 09 00  	mv	a0, s2
80001260: 93 05 0a 00  	mv	a1, s4
80001264: 13 86 0c 00  	mv	a2, s9
80001268: 93 86 0a 00  	mv	a3, s5
8000126c: 13 87 0b 00  	mv	a4, s7
80001270: 93 07 0b 00  	mv	a5, s6
80001274: 13 08 04 00  	mv	a6, s0
80001278: 97 10 00 00  	auipc	ra, 1
8000127c: e7 80 80 01  	jalr	24(ra)
80001280: 6f 00 00 77  	j	0x800019f0 <.LBB1_124+0x2fc>
80001284: 13 64 04 08  	ori	s0, s0, 128
80001288: 13 0d 1d 00  	addi	s10, s10, 1
8000128c: 6f f0 df f0  	j	0x80001198 <.LBB1_42>
80001290: 13 64 04 10  	ori	s0, s0, 256
80001294: 13 0d 1d 00  	addi	s10, s10, 1
80001298: 6f f0 1f f0  	j	0x80001198 <.LBB1_42>

8000129c <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
8000129c: 13 8c 1c 00  	addi	s8, s9, 1
800012a0: 13 05 50 02  	addi	a0, zero, 37
800012a4: 6f 00 80 00  	j	0x800012ac <.LBB1_59+0x4>

800012a8 <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
800012a8: 13 8c 1c 00  	addi	s8, s9, 1
800012ac: 93 05 0a 00  	mv	a1, s4
800012b0: 13 86 0c 00  	mv	a2, s9
800012b4: 93 86 0a 00  	mv	a3, s5
800012b8: e7 00 09 00  	jalr	s2
800012bc: 6f 00 80 73  	j	0x800019f4 <.LBB1_124+0x300>

800012c0 <.LBB1_61>:
800012c0: 93 05 20 00  	addi	a1, zero, 2

800012c4 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
800012c4: 13 74 34 ff  	andi	s0, s0, -13
800012c8: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
800012cc: 93 75 04 40  	andi	a1, s0, 1024
800012d0: 63 84 05 00  	beqz	a1, 0x800012d8 <.LBB1_62+0x14>
800012d4: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
800012d8: 93 05 90 06  	addi	a1, zero, 105
800012dc: 63 06 b5 00  	beq	a0, a1, 0x800012e8 <.LBB1_62+0x24>
800012e0: 93 05 40 06  	addi	a1, zero, 100
800012e4: 63 1c b5 12  	bne	a0, a1, 0x8000141c <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
800012e8: 13 75 04 20  	andi	a0, s0, 512
800012ec: 63 16 05 02  	bnez	a0, 0x80001318 <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
800012f0: 13 75 04 10  	andi	a0, s0, 256
800012f4: 63 1c 05 14  	bnez	a0, 0x8000144c <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800012f8: 13 75 04 04  	andi	a0, s0, 64
800012fc: 63 18 05 4e  	bnez	a0, 0x800017ec <.LBB1_124+0xf8>
80001300: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001304: 93 75 04 08  	andi	a1, s0, 128
80001308: 63 84 05 4e  	beqz	a1, 0x800017f0 <.LBB1_124+0xfc>
8000130c: 13 15 08 01  	slli	a0, a6, 16
80001310: 13 58 05 41  	srai	a6, a0, 16
80001314: 6f 00 c0 4d  	j	0x800017f0 <.LBB1_124+0xfc>
80001318: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
8000131c: 13 85 79 00  	addi	a0, s3, 7
80001320: 13 75 85 ff  	andi	a0, a0, -8
80001324: 83 29 05 00  	lw	s3, 0(a0)
80001328: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
8000132c: 13 65 45 00  	ori	a0, a0, 4
80001330: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80001334: 23 24 a1 00  	sw	a0, 8(sp)
80001338: 33 e5 a9 00  	or	a0, s3, a0
8000133c: 63 14 05 00  	bnez	a0, 0x80001344 <.LBB1_62+0x80>
80001340: 13 74 f4 fe  	andi	s0, s0, -17
80001344: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001348: 93 75 04 40  	andi	a1, s0, 1024
8000134c: 93 d5 a5 00  	srli	a1, a1, 10
80001350: 33 75 b5 00  	and	a0, a0, a1
80001354: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001358: 63 14 05 0a  	bnez	a0, 0x80001400 <.LBB1_62+0x13c>
8000135c: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001360: 63 da 04 00  	bgez	s1, 0x80001374 <.LBB1_62+0xb0>
80001364: 33 35 30 01  	snez	a0, s3
80001368: b3 09 30 41  	neg	s3, s3
8000136c: 33 85 a4 00  	add	a0, s1, a0
80001370: b3 04 a0 40  	neg	s1, a0
80001374: 13 09 00 00  	mv	s2, zero
80001378: 13 75 04 02  	andi	a0, s0, 32
8000137c: 13 45 15 06  	xori	a0, a0, 97
80001380: 13 05 65 0f  	addi	a0, a0, 246
80001384: 23 2a a1 00  	sw	a0, 20(sp)
80001388: 6f 00 40 02  	j	0x800013ac <.LBB1_62+0xe8>
8000138c: 13 06 10 00  	addi	a2, zero, 1
80001390: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001394: 93 36 f9 01  	sltiu	a3, s2, 31
80001398: 33 f6 c6 00  	and	a2, a3, a2
8000139c: 13 89 07 00  	mv	s2, a5
800013a0: 93 09 05 00  	mv	s3, a0
800013a4: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013a8: 63 0c 06 04  	beqz	a2, 0x80001400 <.LBB1_62+0x13c>
;       value /= base;
800013ac: 13 85 09 00  	mv	a0, s3
800013b0: 93 85 04 00  	mv	a1, s1
800013b4: 13 06 0c 00  	mv	a2, s8
800013b8: 93 06 00 00  	mv	a3, zero
800013bc: 97 f0 ff ff  	auipc	ra, 1048575
800013c0: e7 80 00 d2  	jalr	-736(ra)
800013c4: 33 06 85 03  	mul	a2, a0, s8
800013c8: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800013cc: 13 77 e6 0f  	andi	a4, a2, 254
800013d0: 93 06 00 03  	addi	a3, zero, 48
800013d4: 93 07 a0 00  	addi	a5, zero, 10
800013d8: 63 64 f7 00  	bltu	a4, a5, 0x800013e0 <.LBB1_62+0x11c>
800013dc: 83 26 41 01  	lw	a3, 20(sp)
800013e0: 33 86 c6 00  	add	a2, a3, a2
800013e4: 93 06 c1 01  	addi	a3, sp, 28
800013e8: b3 86 26 01  	add	a3, a3, s2
800013ec: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800013f0: e3 9e 04 f8  	bnez	s1, 0x8000138c <.LBB1_62+0xc8>
800013f4: 33 b6 89 01  	sltu	a2, s3, s8
800013f8: 13 46 16 00  	xori	a2, a2, 1
800013fc: 6f f0 5f f9  	j	0x80001390 <.LBB1_62+0xcc>
80001400: 03 25 41 00  	lw	a0, 4(sp)
80001404: 93 09 85 00  	addi	s3, a0, 8
80001408: 03 25 81 00  	lw	a0, 8(sp)
8000140c: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001410: 13 07 c1 01  	addi	a4, sp, 28
80001414: 03 29 c1 00  	lw	s2, 12(sp)
80001418: 6f 00 80 47  	j	0x80001890 <.LBB1_124+0x19c>
;           if (flags & FLAGS_LONG_LONG) {
8000141c: 13 75 04 20  	andi	a0, s0, 512
80001420: 63 12 05 0c  	bnez	a0, 0x800014e4 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80001424: 13 75 04 10  	andi	a0, s0, 256
80001428: 63 1e 05 46  	bnez	a0, 0x800018a4 <.LBB1_124+0x1b0>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
8000142c: 13 75 04 04  	andi	a0, s0, 64
80001430: 63 10 05 50  	bnez	a0, 0x80001930 <.LBB1_124+0x23c>
80001434: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001438: 93 75 04 08  	andi	a1, s0, 128
8000143c: 63 8c 05 4e  	beqz	a1, 0x80001934 <.LBB1_124+0x240>
80001440: 83 25 01 01  	lw	a1, 16(sp)
80001444: 33 75 b5 00  	and	a0, a0, a1
80001448: 6f 00 c0 4e  	j	0x80001934 <.LBB1_124+0x240>
;             const long value = va_arg(va, long);
8000144c: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80001450: 63 14 08 00  	bnez	a6, 0x80001458 <.LBB1_62+0x194>
80001454: 13 74 f4 fe  	andi	s0, s0, -17
80001458: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
8000145c: 13 76 04 40  	andi	a2, s0, 1024
80001460: 13 56 a6 00  	srli	a2, a2, 10
80001464: b3 f5 c5 00  	and	a1, a1, a2
80001468: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000146c: 63 9c 05 40  	bnez	a1, 0x80001884 <.LBB1_124+0x190>
80001470: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001474: 13 56 f8 41  	srai	a2, a6, 31
80001478: b3 06 c8 00  	add	a3, a6, a2
8000147c: b3 c6 c6 00  	xor	a3, a3, a2
80001480: 13 76 04 02  	andi	a2, s0, 32
80001484: 13 46 16 06  	xori	a2, a2, 97
80001488: 93 08 66 0f  	addi	a7, a2, 246
8000148c: 6f 00 40 03  	j	0x800014c0 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001490: 33 05 f6 00  	add	a0, a2, a5
80001494: 93 87 15 00  	addi	a5, a1, 1
80001498: 13 06 c1 01  	addi	a2, sp, 28
8000149c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014a0: b3 b6 86 01  	sltu	a3, a3, s8
800014a4: 93 c6 16 00  	xori	a3, a3, 1
800014a8: 93 b5 f5 01  	sltiu	a1, a1, 31
800014ac: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014b0: 23 00 a6 00  	sb	a0, 0(a2)
800014b4: 93 85 07 00  	mv	a1, a5
800014b8: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800014bc: 63 84 04 3c  	beqz	s1, 0x80001884 <.LBB1_124+0x190>
;       value /= base;
800014c0: 33 d7 86 03  	divu	a4, a3, s8
800014c4: 33 06 87 03  	mul	a2, a4, s8
800014c8: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800014cc: 13 f5 e7 0f  	andi	a0, a5, 254
800014d0: 13 06 00 03  	addi	a2, zero, 48
800014d4: 93 04 a0 00  	addi	s1, zero, 10
800014d8: e3 6c 95 fa  	bltu	a0, s1, 0x80001490 <.LBB1_62+0x1cc>
800014dc: 13 86 08 00  	mv	a2, a7
800014e0: 6f f0 1f fb  	j	0x80001490 <.LBB1_62+0x1cc>
800014e4: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
800014e8: 13 85 79 00  	addi	a0, s3, 7
800014ec: 93 75 85 ff  	andi	a1, a0, -8
800014f0: 03 a9 05 00  	lw	s2, 0(a1)
800014f4: 13 e5 45 00  	ori	a0, a1, 4
800014f8: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
800014fc: 33 65 39 01  	or	a0, s2, s3
80001500: 23 24 b1 00  	sw	a1, 8(sp)
80001504: 63 14 05 00  	bnez	a0, 0x8000150c <.LBB1_62+0x248>
80001508: 13 74 f4 fe  	andi	s0, s0, -17
8000150c: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001510: 93 75 04 40  	andi	a1, s0, 1024
80001514: 93 d5 a5 00  	srli	a1, a1, 10
80001518: 33 75 b5 00  	and	a0, a0, a1
8000151c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001520: 63 18 05 08  	bnez	a0, 0x800015b0 <.LBB1_62+0x2ec>
80001524: 93 04 00 00  	mv	s1, zero
80001528: 13 75 04 02  	andi	a0, s0, 32
8000152c: 13 45 15 06  	xori	a0, a0, 97
80001530: 13 05 65 0f  	addi	a0, a0, 246
80001534: 23 2a a1 00  	sw	a0, 20(sp)
80001538: 6f 00 40 02  	j	0x8000155c <.LBB1_62+0x298>
8000153c: 13 06 10 00  	addi	a2, zero, 1
80001540: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001544: 93 b6 f4 01  	sltiu	a3, s1, 31
80001548: 33 f6 c6 00  	and	a2, a3, a2
8000154c: 93 84 07 00  	mv	s1, a5
80001550: 13 09 05 00  	mv	s2, a0
80001554: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001558: 63 0c 06 04  	beqz	a2, 0x800015b0 <.LBB1_62+0x2ec>
;       value /= base;
8000155c: 13 05 09 00  	mv	a0, s2
80001560: 93 85 09 00  	mv	a1, s3
80001564: 13 06 0c 00  	mv	a2, s8
80001568: 93 06 00 00  	mv	a3, zero
8000156c: 97 f0 ff ff  	auipc	ra, 1048575
80001570: e7 80 00 b7  	jalr	-1168(ra)
80001574: 33 06 85 03  	mul	a2, a0, s8
80001578: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000157c: 13 77 e6 0f  	andi	a4, a2, 254
80001580: 93 06 00 03  	addi	a3, zero, 48
80001584: 93 07 a0 00  	addi	a5, zero, 10
80001588: 63 64 f7 00  	bltu	a4, a5, 0x80001590 <.LBB1_62+0x2cc>
8000158c: 83 26 41 01  	lw	a3, 20(sp)
80001590: 33 86 c6 00  	add	a2, a3, a2
80001594: 93 06 c1 01  	addi	a3, sp, 28
80001598: b3 86 96 00  	add	a3, a3, s1
8000159c: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800015a0: e3 9e 09 f8  	bnez	s3, 0x8000153c <.LBB1_62+0x278>
800015a4: 33 36 89 01  	sltu	a2, s2, s8
800015a8: 13 46 16 00  	xori	a2, a2, 1
800015ac: 6f f0 5f f9  	j	0x80001540 <.LBB1_62+0x27c>
800015b0: 03 25 81 00  	lw	a0, 8(sp)
800015b4: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800015b8: 13 07 c1 01  	addi	a4, sp, 28
800015bc: 03 29 c1 00  	lw	s2, 12(sp)
800015c0: 6f 00 40 40  	j	0x800019c4 <.LBB1_124+0x2d0>

800015c4 <.LBB1_108>:
800015c4: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
800015c8: 13 79 24 00  	andi	s2, s0, 2
800015cc: 93 04 10 00  	addi	s1, zero, 1
800015d0: 63 1e 09 02  	bnez	s2, 0x8000160c <.LBB1_108+0x48>
800015d4: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
800015d8: 63 6a 9b 02  	bltu	s6, s1, 0x8000160c <.LBB1_108+0x48>
800015dc: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
800015e0: 13 0c fb ff  	addi	s8, s6, -1
800015e4: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
800015e8: 33 86 8c 00  	add	a2, s9, s0
800015ec: 13 05 00 02  	addi	a0, zero, 32
800015f0: 93 05 0a 00  	mv	a1, s4
800015f4: 93 86 0a 00  	mv	a3, s5
800015f8: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
800015fc: 13 04 14 00  	addi	s0, s0, 1
80001600: e3 14 8c fe  	bne	s8, s0, 0x800015e8 <.LBB1_108+0x24>
80001604: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001608: b3 8c 8c 00  	add	s9, s9, s0
8000160c: 03 c5 09 00  	lbu	a0, 0(s3)
80001610: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80001614: 93 89 49 00  	addi	s3, s3, 4
80001618: 13 8c 1c 00  	addi	s8, s9, 1
8000161c: 93 05 0a 00  	mv	a1, s4
80001620: 13 86 0c 00  	mv	a2, s9
80001624: 93 86 0a 00  	mv	a3, s5
80001628: 13 89 0b 00  	mv	s2, s7
8000162c: e7 80 0b 00  	jalr	s7
80001630: 33 b5 64 01  	sltu	a0, s1, s6
80001634: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80001638: 33 65 a4 00  	or	a0, s0, a0
8000163c: 63 1c 05 3a  	bnez	a0, 0x800019f4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001640: 33 04 9b 40  	sub	s0, s6, s1
80001644: 93 0b e0 02  	addi	s7, zero, 46
80001648: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
8000164c: 13 0c 1c 00  	addi	s8, s8, 1
80001650: 13 05 00 02  	addi	a0, zero, 32
80001654: 93 05 0a 00  	mv	a1, s4
80001658: 93 86 0a 00  	mv	a3, s5
8000165c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001660: 13 04 f4 ff  	addi	s0, s0, -1
80001664: e3 12 04 fe  	bnez	s0, 0x80001648 <.LBB1_108+0x84>
80001668: 13 0b 50 02  	addi	s6, zero, 37
8000166c: 13 04 1d 00  	addi	s0, s10, 1
80001670: 6f f0 df 91  	j	0x80000f8c <.LBB1_183+0x30>

80001674 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80001674: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80001678: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
8000167c: 63 14 05 00  	bnez	a0, 0x80001684 <.LBB1_117+0x10>
80001680: 93 fe fe fe  	andi	t4, t4, -17
80001684: 93 04 a0 00  	addi	s1, zero, 10
80001688: 13 04 f0 00  	addi	s0, zero, 15
8000168c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001690: 13 f6 0e 40  	andi	a2, t4, 1024
80001694: 13 56 a6 00  	srli	a2, a2, 10
80001698: b3 f5 c5 00  	and	a1, a1, a2
8000169c: 93 07 00 00  	mv	a5, zero
800016a0: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
800016a4: 63 98 05 10  	bnez	a1, 0x800017b4 <.LBB1_124+0xc0>
800016a8: 93 05 00 00  	mv	a1, zero
800016ac: 6f 00 40 03  	j	0x800016e0 <.LBB1_117+0x6c>
800016b0: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016b4: 33 06 d6 00  	add	a2, a2, a3
800016b8: 93 87 15 00  	addi	a5, a1, 1
800016bc: 93 06 c1 01  	addi	a3, sp, 28
800016c0: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016c4: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
800016c8: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016cc: 93 b5 f5 01  	sltiu	a1, a1, 31
800016d0: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016d4: 23 80 c6 00  	sb	a2, 0(a3)
800016d8: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800016dc: 63 0c 07 0c  	beqz	a4, 0x800017b4 <.LBB1_124+0xc0>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800016e0: 93 76 e5 00  	andi	a3, a0, 14
800016e4: 13 06 00 03  	addi	a2, zero, 48
800016e8: e3 e4 96 fc  	bltu	a3, s1, 0x800016b0 <.LBB1_117+0x3c>
800016ec: 13 06 70 03  	addi	a2, zero, 55
800016f0: 6f f0 1f fc  	j	0x800016b0 <.LBB1_117+0x3c>

800016f4 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
800016f4: 83 a7 09 00  	lw	a5, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
800016f8: 03 c5 07 00  	lbu	a0, 0(a5)
800016fc: 13 86 07 00  	mv	a2, a5
;   for (s = str; *s && maxsize--; ++s);
80001700: 63 0c 05 02  	beqz	a0, 0x80001738 <.LBB1_124+0x44>
80001704: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80001708: 63 84 0b 00  	beqz	s7, 0x80001710 <.LBB1_124+0x1c>
8000170c: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80001710: 93 85 f5 ff  	addi	a1, a1, -1
80001714: 93 86 07 00  	mv	a3, a5
;   for (s = str; *s && maxsize--; ++s);
80001718: 03 c7 16 00  	lbu	a4, 1(a3)
8000171c: 13 86 16 00  	addi	a2, a3, 1
80001720: b3 36 e0 00  	snez	a3, a4
80001724: 33 37 b0 00  	snez	a4, a1
80001728: 33 77 d7 00  	and	a4, a4, a3
8000172c: 93 85 f5 ff  	addi	a1, a1, -1
80001730: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80001734: e3 12 07 fe  	bnez	a4, 0x80001718 <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80001738: 33 06 f6 40  	sub	a2, a2, a5
;         if (flags & FLAGS_PRECISION) {
8000173c: 93 75 04 40  	andi	a1, s0, 1024
80001740: 93 b4 15 00  	seqz	s1, a1
80001744: 23 2a c1 00  	sw	a2, 20(sp)
80001748: b3 35 76 01  	sltu	a1, a2, s7
8000174c: b3 e5 b4 00  	or	a1, s1, a1
80001750: 63 94 05 00  	bnez	a1, 0x80001758 <.LBB1_124+0x64>
80001754: 23 2a 71 01  	sw	s7, 20(sp)
;         if (!(flags & FLAGS_LEFT)) {
80001758: 93 75 24 00  	andi	a1, s0, 2
8000175c: 23 26 b1 00  	sw	a1, 12(sp)
80001760: 63 96 05 2a  	bnez	a1, 0x80001a0c <.LBB1_124+0x318>
80001764: 83 25 41 01  	lw	a1, 20(sp)
;           while (l++ < width) {
80001768: 63 fe 65 29  	bgeu	a1, s6, 0x80001a04 <.LBB1_124+0x310>
8000176c: 23 24 f1 00  	sw	a5, 8(sp)
80001770: 13 04 00 00  	mv	s0, zero
80001774: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001778: 33 09 bb 40  	sub	s2, s6, a1
;             out(' ', buffer, idx++, maxlen);
8000177c: 33 86 8c 00  	add	a2, s9, s0
80001780: 13 05 00 02  	addi	a0, zero, 32
80001784: 93 05 0a 00  	mv	a1, s4
80001788: 93 86 0a 00  	mv	a3, s5
8000178c: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
80001790: 13 04 14 00  	addi	s0, s0, 1
80001794: e3 14 89 fe  	bne	s2, s0, 0x8000177c <.LBB1_124+0x88>
80001798: 83 27 81 00  	lw	a5, 8(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000179c: 03 c5 07 00  	lbu	a0, 0(a5)
;           while (l++ < width) {
800017a0: 93 05 1b 00  	addi	a1, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800017a4: 23 2a b1 00  	sw	a1, 20(sp)
800017a8: b3 8c 8c 00  	add	s9, s9, s0
800017ac: 13 09 0c 00  	mv	s2, s8
800017b0: 6f 00 c0 25  	j	0x80001a0c <.LBB1_124+0x318>
800017b4: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
800017b8: 13 07 c1 01  	addi	a4, sp, 28
800017bc: 93 08 00 01  	addi	a7, zero, 16
800017c0: 13 0e 80 00  	addi	t3, zero, 8
800017c4: 13 05 09 00  	mv	a0, s2
800017c8: 93 05 0a 00  	mv	a1, s4
800017cc: 13 86 0c 00  	mv	a2, s9
800017d0: 93 86 0a 00  	mv	a3, s5
800017d4: 13 08 00 00  	mv	a6, zero
800017d8: 93 83 0b 00  	mv	t2, s7
800017dc: 97 10 00 00  	auipc	ra, 1
800017e0: e7 80 00 fa  	jalr	-96(ra)
800017e4: 13 0c 05 00  	mv	s8, a0
800017e8: 6f 00 00 21  	j	0x800019f8 <.LBB1_124+0x304>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
800017ec: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
800017f0: 63 14 08 00  	bnez	a6, 0x800017f8 <.LBB1_124+0x104>
800017f4: 13 74 f4 fe  	andi	s0, s0, -17
800017f8: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800017fc: 13 76 04 40  	andi	a2, s0, 1024
80001800: 13 56 a6 00  	srli	a2, a2, 10
80001804: b3 f5 c5 00  	and	a1, a1, a2
80001808: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
8000180c: 63 9c 05 06  	bnez	a1, 0x80001884 <.LBB1_124+0x190>
80001810: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80001814: 13 56 f8 41  	srai	a2, a6, 31
80001818: b3 06 c8 00  	add	a3, a6, a2
8000181c: b3 c6 c6 00  	xor	a3, a3, a2
80001820: 13 76 04 02  	andi	a2, s0, 32
80001824: 13 46 16 06  	xori	a2, a2, 97
80001828: 93 08 66 0f  	addi	a7, a2, 246
8000182c: 6f 00 40 03  	j	0x80001860 <.LBB1_124+0x16c>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001830: 33 05 f6 00  	add	a0, a2, a5
80001834: 93 87 15 00  	addi	a5, a1, 1
80001838: 13 06 c1 01  	addi	a2, sp, 28
8000183c: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001840: b3 b6 86 01  	sltu	a3, a3, s8
80001844: 93 c6 16 00  	xori	a3, a3, 1
80001848: 93 b5 f5 01  	sltiu	a1, a1, 31
8000184c: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001850: 23 00 a6 00  	sb	a0, 0(a2)
80001854: 93 85 07 00  	mv	a1, a5
80001858: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000185c: 63 84 04 02  	beqz	s1, 0x80001884 <.LBB1_124+0x190>
;       value /= base;
80001860: 33 d7 86 03  	divu	a4, a3, s8
80001864: 33 06 87 03  	mul	a2, a4, s8
80001868: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
8000186c: 13 f5 e7 0f  	andi	a0, a5, 254
80001870: 13 06 00 03  	addi	a2, zero, 48
80001874: 93 04 a0 00  	addi	s1, zero, 10
80001878: e3 6c 95 fa  	bltu	a0, s1, 0x80001830 <.LBB1_124+0x13c>
8000187c: 13 86 08 00  	mv	a2, a7
80001880: 6f f0 1f fb  	j	0x80001830 <.LBB1_124+0x13c>
80001884: 93 89 49 00  	addi	s3, s3, 4
80001888: 13 58 f8 01  	srli	a6, a6, 31
8000188c: 13 07 c1 01  	addi	a4, sp, 28
80001890: 13 05 09 00  	mv	a0, s2
80001894: 93 05 0a 00  	mv	a1, s4
80001898: 13 86 0c 00  	mv	a2, s9
8000189c: 93 86 0a 00  	mv	a3, s5
800018a0: 6f 00 80 13  	j	0x800019d8 <.LBB1_124+0x2e4>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
800018a4: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
800018a8: 63 14 05 00  	bnez	a0, 0x800018b0 <.LBB1_124+0x1bc>
800018ac: 13 74 f4 fe  	andi	s0, s0, -17
800018b0: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800018b4: 13 76 04 40  	andi	a2, s0, 1024
800018b8: 13 56 a6 00  	srli	a2, a2, 10
800018bc: b3 f5 c5 00  	and	a1, a1, a2
800018c0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800018c4: 63 9c 05 0e  	bnez	a1, 0x800019bc <.LBB1_124+0x2c8>
800018c8: 13 06 00 00  	mv	a2, zero
800018cc: 93 75 04 02  	andi	a1, s0, 32
800018d0: 93 c5 15 06  	xori	a1, a1, 97
800018d4: 13 88 65 0f  	addi	a6, a1, 246
800018d8: 6f 00 40 03  	j	0x8000190c <.LBB1_124+0x218>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018dc: 33 87 e7 00  	add	a4, a5, a4
800018e0: 93 07 16 00  	addi	a5, a2, 1
800018e4: 93 05 c1 01  	addi	a1, sp, 28
800018e8: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800018ec: 33 35 85 01  	sltu	a0, a0, s8
800018f0: 13 45 15 00  	xori	a0, a0, 1
800018f4: 13 36 f6 01  	sltiu	a2, a2, 31
800018f8: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800018fc: 23 80 e4 00  	sb	a4, 0(s1)
80001900: 13 86 07 00  	mv	a2, a5
80001904: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001908: 63 8a 05 0a  	beqz	a1, 0x800019bc <.LBB1_124+0x2c8>
;       value /= base;
8000190c: b3 56 85 03  	divu	a3, a0, s8
80001910: 33 87 86 03  	mul	a4, a3, s8
80001914: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001918: 93 74 e7 0f  	andi	s1, a4, 254
8000191c: 93 07 00 03  	addi	a5, zero, 48
80001920: 93 05 a0 00  	addi	a1, zero, 10
80001924: e3 ec b4 fa  	bltu	s1, a1, 0x800018dc <.LBB1_124+0x1e8>
80001928: 93 07 08 00  	mv	a5, a6
8000192c: 6f f0 1f fb  	j	0x800018dc <.LBB1_124+0x1e8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80001930: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
80001934: 63 14 05 00  	bnez	a0, 0x8000193c <.LBB1_124+0x248>
80001938: 13 74 f4 fe  	andi	s0, s0, -17
8000193c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001940: 13 76 04 40  	andi	a2, s0, 1024
80001944: 13 56 a6 00  	srli	a2, a2, 10
80001948: b3 f5 c5 00  	and	a1, a1, a2
8000194c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001950: 63 96 05 06  	bnez	a1, 0x800019bc <.LBB1_124+0x2c8>
80001954: 13 06 00 00  	mv	a2, zero
80001958: 93 75 04 02  	andi	a1, s0, 32
8000195c: 93 c5 15 06  	xori	a1, a1, 97
80001960: 13 88 65 0f  	addi	a6, a1, 246
80001964: 6f 00 40 03  	j	0x80001998 <.LBB1_124+0x2a4>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001968: 33 87 e7 00  	add	a4, a5, a4
8000196c: 93 07 16 00  	addi	a5, a2, 1
80001970: 93 05 c1 01  	addi	a1, sp, 28
80001974: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001978: 33 35 85 01  	sltu	a0, a0, s8
8000197c: 13 45 15 00  	xori	a0, a0, 1
80001980: 13 36 f6 01  	sltiu	a2, a2, 31
80001984: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001988: 23 80 e4 00  	sb	a4, 0(s1)
8000198c: 13 86 07 00  	mv	a2, a5
80001990: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001994: 63 84 05 02  	beqz	a1, 0x800019bc <.LBB1_124+0x2c8>
;       value /= base;
80001998: b3 56 85 03  	divu	a3, a0, s8
8000199c: 33 87 86 03  	mul	a4, a3, s8
800019a0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800019a4: 93 74 e7 0f  	andi	s1, a4, 254
800019a8: 93 07 00 03  	addi	a5, zero, 48
800019ac: 93 05 a0 00  	addi	a1, zero, 10
800019b0: e3 ec b4 fa  	bltu	s1, a1, 0x80001968 <.LBB1_124+0x274>
800019b4: 93 07 08 00  	mv	a5, a6
800019b8: 6f f0 1f fb  	j	0x80001968 <.LBB1_124+0x274>
800019bc: 93 89 49 00  	addi	s3, s3, 4
800019c0: 13 07 c1 01  	addi	a4, sp, 28
800019c4: 13 05 09 00  	mv	a0, s2
800019c8: 93 05 0a 00  	mv	a1, s4
800019cc: 13 86 0c 00  	mv	a2, s9
800019d0: 93 86 0a 00  	mv	a3, s5
800019d4: 13 08 00 00  	mv	a6, zero
800019d8: 93 08 0c 00  	mv	a7, s8
800019dc: 93 83 0b 00  	mv	t2, s7
800019e0: 13 0e 0b 00  	mv	t3, s6
800019e4: 93 0e 04 00  	mv	t4, s0
800019e8: 97 10 00 00  	auipc	ra, 1
800019ec: e7 80 40 d9  	jalr	-620(ra)
800019f0: 13 0c 05 00  	mv	s8, a0
800019f4: 13 0b 50 02  	addi	s6, zero, 37
800019f8: 93 0b e0 02  	addi	s7, zero, 46
800019fc: 13 04 1d 00  	addi	s0, s10, 1
80001a00: 6f f0 cf d8  	j	0x80000f8c <.LBB1_183+0x30>
80001a04: 93 85 15 00  	addi	a1, a1, 1
80001a08: 23 2a b1 00  	sw	a1, 20(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001a0c: 63 00 05 04  	beqz	a0, 0x80001a4c <.LBB1_124+0x358>
80001a10: 13 84 17 00  	addi	s0, a5, 1
80001a14: 6f 00 00 03  	j	0x80001a44 <.LBB1_124+0x350>
80001a18: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
80001a1c: 13 8c 1c 00  	addi	s8, s9, 1
80001a20: 13 75 f5 0f  	andi	a0, a0, 255
80001a24: 93 05 0a 00  	mv	a1, s4
80001a28: 13 86 0c 00  	mv	a2, s9
80001a2c: 93 86 0a 00  	mv	a3, s5
80001a30: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001a34: 03 45 04 00  	lbu	a0, 0(s0)
80001a38: 13 04 14 00  	addi	s0, s0, 1
80001a3c: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001a40: 63 08 05 00  	beqz	a0, 0x80001a50 <.LBB1_124+0x35c>
80001a44: e3 9c 04 fc  	bnez	s1, 0x80001a1c <.LBB1_124+0x328>
80001a48: e3 98 0b fc  	bnez	s7, 0x80001a18 <.LBB1_124+0x324>
80001a4c: 13 8c 0c 00  	mv	s8, s9
80001a50: 03 25 c1 00  	lw	a0, 12(sp)
80001a54: 13 35 15 00  	seqz	a0, a0
80001a58: 03 26 41 01  	lw	a2, 20(sp)
80001a5c: b3 35 66 01  	sltu	a1, a2, s6
80001a60: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001a64: 33 65 b5 00  	or	a0, a0, a1
80001a68: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001a6c: e3 14 05 f8  	bnez	a0, 0x800019f4 <.LBB1_124+0x300>
;           while (l++ < width) {
80001a70: 33 04 cb 40  	sub	s0, s6, a2
80001a74: 93 0b e0 02  	addi	s7, zero, 46
80001a78: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001a7c: 13 0c 1c 00  	addi	s8, s8, 1
80001a80: 13 05 00 02  	addi	a0, zero, 32
80001a84: 93 05 0a 00  	mv	a1, s4
80001a88: 93 86 0a 00  	mv	a3, s5
80001a8c: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80001a90: 13 04 f4 ff  	addi	s0, s0, -1
80001a94: e3 12 04 fe  	bnez	s0, 0x80001a78 <.LBB1_124+0x384>
80001a98: 13 0b 50 02  	addi	s6, zero, 37
80001a9c: 13 04 1d 00  	addi	s0, s10, 1
80001aa0: 6f f0 cf ce  	j	0x80000f8c <.LBB1_183+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001aa4: 13 86 0c 00  	mv	a2, s9
80001aa8: 63 e4 5c 01  	bltu	s9, s5, 0x80001ab0 <.LBB1_124+0x3bc>
80001aac: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001ab0: 13 05 00 00  	mv	a0, zero
80001ab4: 93 05 0a 00  	mv	a1, s4
80001ab8: 93 86 0a 00  	mv	a3, s5
80001abc: e7 00 09 00  	jalr	s2
;   return (int)idx;
80001ac0: 13 85 0c 00  	mv	a0, s9
80001ac4: 83 2d c1 03  	lw	s11, 60(sp)
80001ac8: 03 2d 01 04  	lw	s10, 64(sp)
80001acc: 83 2c 41 04  	lw	s9, 68(sp)
80001ad0: 03 2c 81 04  	lw	s8, 72(sp)
80001ad4: 83 2b c1 04  	lw	s7, 76(sp)
80001ad8: 03 2b 01 05  	lw	s6, 80(sp)
80001adc: 83 2a 41 05  	lw	s5, 84(sp)
80001ae0: 03 2a 81 05  	lw	s4, 88(sp)
80001ae4: 83 29 c1 05  	lw	s3, 92(sp)
80001ae8: 03 29 01 06  	lw	s2, 96(sp)
80001aec: 83 24 41 06  	lw	s1, 100(sp)
80001af0: 03 24 81 06  	lw	s0, 104(sp)
80001af4: 83 20 c1 06  	lw	ra, 108(sp)
80001af8: 13 01 01 07  	addi	sp, sp, 112
80001afc: 67 80 00 00  	ret

80001b00 <_out_char.llvm.1805434900161566649>:
;   if (character) {
80001b00: 63 04 05 0a  	beqz	a0, 0x80001ba8 <.LBB2_8+0x18>
;     asm("csrr %0, mhartid" : "=r"(hartid));
80001b04: f3 25 40 f1  	csrr	a1, mhartid
80001b08: 13 06 80 44  	addi	a2, zero, 1096
;     buf->data[buf->hdr.size++] = character;
80001b0c: 33 86 c5 02  	mul	a2, a1, a2

80001b10 <.LBB2_6>:
80001b10: 97 26 00 00  	auipc	a3, 2
80001b14: 93 86 c6 a4  	addi	a3, a3, -1460
80001b18: b3 05 d6 00  	add	a1, a2, a3
80001b1c: 03 a7 05 00  	lw	a4, 0(a1)
80001b20: 93 07 17 00  	addi	a5, a4, 1
80001b24: 23 a0 f5 00  	sw	a5, 0(a1)
80001b28: 33 87 e5 00  	add	a4, a1, a4
80001b2c: 23 04 a7 04  	sb	a0, 72(a4)
;     if (buf->hdr.size == PUTC_BUFFER_LEN || character == '\n') {
80001b30: 03 a7 05 00  	lw	a4, 0(a1)
80001b34: 13 07 47 c0  	addi	a4, a4, -1020
80001b38: 33 37 e0 00  	snez	a4, a4
80001b3c: 13 05 65 ff  	addi	a0, a0, -10
80001b40: 33 35 a0 00  	snez	a0, a0
80001b44: 33 75 e5 00  	and	a0, a0, a4
80001b48: 63 10 05 06  	bnez	a0, 0x80001ba8 <.LBB2_8+0x18>
80001b4c: 33 85 c6 00  	add	a0, a3, a2
;     buf->data[buf->hdr.size++] = character;
80001b50: 13 06 85 04  	addi	a2, a0, 72
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001b54: 23 26 05 00  	sw	zero, 12(a0)
80001b58: 93 06 00 04  	addi	a3, zero, 64
80001b5c: 23 24 d5 00  	sw	a3, 8(a0)
;         buf->hdr.syscall_mem[1] = 1;   // file descriptor (1 = stdout)
80001b60: 23 2a 05 00  	sw	zero, 20(a0)
80001b64: 93 06 10 00  	addi	a3, zero, 1
80001b68: 23 28 d5 00  	sw	a3, 16(a0)
;         buf->hdr.syscall_mem[2] = (uintptr_t)&buf->data;  // buffer
80001b6c: 23 2e 05 00  	sw	zero, 28(a0)
80001b70: 23 2c c5 00  	sw	a2, 24(a0)
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001b74: 03 a6 05 00  	lw	a2, 0(a1)
;         buf->hdr.syscall_mem[0] = 64;  // sys_write
80001b78: 93 06 85 00  	addi	a3, a0, 8
;         buf->hdr.syscall_mem[3] = buf->hdr.size;          // length
80001b7c: 23 22 05 02  	sw	zero, 36(a0)
80001b80: 23 20 c5 02  	sw	a2, 32(a0)

80001b84 <.LBB2_7>:
;         tohost = (uintptr_t)buf->hdr.syscall_mem;
80001b84: 17 25 00 00  	auipc	a0, 2
80001b88: 13 05 c5 8b  	addi	a0, a0, -1860
80001b8c: 23 20 d5 00  	sw	a3, 0(a0)

80001b90 <.LBB2_8>:
80001b90: 17 25 00 00  	auipc	a0, 2
80001b94: 13 05 05 8f  	addi	a0, a0, -1808
;         while (fromhost == 0)
80001b98: 03 26 05 00  	lw	a2, 0(a0)
80001b9c: e3 0e 06 fe  	beqz	a2, 0x80001b98 <.LBB2_8+0x8>
;         fromhost = 0;
80001ba0: 23 20 05 00  	sw	zero, 0(a0)
;         buf->hdr.size = 0;
80001ba4: 23 a0 05 00  	sw	zero, 0(a1)
; }
80001ba8: 67 80 00 00  	ret

80001bac <_out_null>:
; }
80001bac: 67 80 00 00  	ret

80001bb0 <_ftoa>:
; {
80001bb0: 13 01 01 f9  	addi	sp, sp, -112
80001bb4: 23 26 11 06  	sw	ra, 108(sp)
80001bb8: 23 24 81 06  	sw	s0, 104(sp)
80001bbc: 23 22 91 06  	sw	s1, 100(sp)
80001bc0: 23 20 21 07  	sw	s2, 96(sp)
80001bc4: 23 2e 31 05  	sw	s3, 92(sp)
80001bc8: 23 2c 41 05  	sw	s4, 88(sp)
80001bcc: 23 2a 51 05  	sw	s5, 84(sp)
80001bd0: 23 28 61 05  	sw	s6, 80(sp)
80001bd4: 23 26 71 05  	sw	s7, 76(sp)
80001bd8: 23 24 81 05  	sw	s8, 72(sp)
80001bdc: 23 22 91 05  	sw	s9, 68(sp)
80001be0: 23 20 a1 05  	sw	s10, 64(sp)
80001be4: 27 3c 81 02  	fsd	fs0, 56(sp)
80001be8: 27 38 91 02  	fsd	fs1, 48(sp)
80001bec: 27 34 21 03  	fsd	fs2, 40(sp)

80001bf0 <.LBB4_83>:
80001bf0: 97 24 00 00  	auipc	s1, 2
80001bf4: 93 84 04 8c  	addi	s1, s1, -1856
80001bf8: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
80001bfc: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001c00: 93 0a 08 00  	mv	s5, a6
80001c04: 13 89 07 00  	mv	s2, a5
80001c08: 93 89 06 00  	mv	s3, a3
80001c0c: 13 0a 06 00  	mv	s4, a2
80001c10: 13 8b 05 00  	mv	s6, a1
80001c14: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001c18: 63 98 04 0e  	bnez	s1, 0x80001d08 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001c1c: 13 f5 2a 00  	andi	a0, s5, 2
80001c20: 93 f5 3a 00  	andi	a1, s5, 3
80001c24: b3 35 b0 00  	snez	a1, a1
80001c28: 13 36 59 00  	sltiu	a2, s2, 5
80001c2c: b3 65 b6 00  	or	a1, a2, a1
80001c30: 93 5c 15 00  	srli	s9, a0, 1
80001c34: 13 04 0a 00  	mv	s0, s4
80001c38: 63 96 05 02  	bnez	a1, 0x80001c64 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
80001c3c: 93 04 c9 ff  	addi	s1, s2, -4
80001c40: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001c44: 13 04 16 00  	addi	s0, a2, 1
80001c48: 13 05 00 02  	addi	a0, zero, 32
80001c4c: 93 05 0b 00  	mv	a1, s6
80001c50: 93 86 09 00  	mv	a3, s3
80001c54: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001c58: 93 84 f4 ff  	addi	s1, s1, -1
80001c5c: 13 06 04 00  	mv	a2, s0
80001c60: e3 92 04 fe  	bnez	s1, 0x80001c44 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001c64: 93 04 14 00  	addi	s1, s0, 1
80001c68: 13 05 d0 02  	addi	a0, zero, 45
80001c6c: 93 05 0b 00  	mv	a1, s6
80001c70: 13 06 04 00  	mv	a2, s0
80001c74: 93 86 09 00  	mv	a3, s3
80001c78: e7 80 0b 00  	jalr	s7
80001c7c: 93 0a 24 00  	addi	s5, s0, 2
80001c80: 13 05 90 06  	addi	a0, zero, 105
80001c84: 93 05 0b 00  	mv	a1, s6
80001c88: 13 86 04 00  	mv	a2, s1
80001c8c: 93 86 09 00  	mv	a3, s3
80001c90: e7 80 0b 00  	jalr	s7
80001c94: 13 0c 34 00  	addi	s8, s0, 3
80001c98: 13 05 e0 06  	addi	a0, zero, 110
80001c9c: 93 05 0b 00  	mv	a1, s6
80001ca0: 13 86 0a 00  	mv	a2, s5
80001ca4: 93 86 09 00  	mv	a3, s3
80001ca8: e7 80 0b 00  	jalr	s7
80001cac: 93 04 44 00  	addi	s1, s0, 4
80001cb0: 13 05 60 06  	addi	a0, zero, 102
80001cb4: 93 05 0b 00  	mv	a1, s6
80001cb8: 13 06 0c 00  	mv	a2, s8
80001cbc: 93 86 09 00  	mv	a3, s3
80001cc0: e7 80 0b 00  	jalr	s7
80001cc4: 33 85 44 41  	sub	a0, s1, s4
80001cc8: 33 35 25 01  	sltu	a0, a0, s2
80001ccc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001cd0: 93 c5 1c 00  	xori	a1, s9, 1
80001cd4: 33 e5 a5 00  	or	a0, a1, a0
80001cd8: 63 16 05 56  	bnez	a0, 0x80002244 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001cdc: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001ce0: 13 84 14 00  	addi	s0, s1, 1
80001ce4: 13 05 00 02  	addi	a0, zero, 32
80001ce8: 93 05 0b 00  	mv	a1, s6
80001cec: 13 86 04 00  	mv	a2, s1
80001cf0: 93 86 09 00  	mv	a3, s3
80001cf4: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001cf8: 33 05 8a 00  	add	a0, s4, s0
80001cfc: 93 04 04 00  	mv	s1, s0
80001d00: e3 60 25 ff  	bltu	a0, s2, 0x80001ce0 <.LBB4_83+0xf0>
80001d04: 6f 00 40 54  	j	0x80002248 <.LBB4_90+0x378>
80001d08: 53 04 a5 22  	fmv.d	fs0, fa0

80001d0c <.LBB4_84>:
80001d0c: 17 15 00 00  	auipc	a0, 1
80001d10: 13 05 c5 7a  	addi	a0, a0, 1964
80001d14: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001d18: 53 05 05 a2  	fle.d	a0, fa0, ft0
80001d1c: 63 1e 05 00  	bnez	a0, 0x80001d38 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001d20: 93 f5 4a 00  	andi	a1, s5, 4
80001d24: 13 b5 15 00  	seqz	a0, a1
80001d28: 63 82 05 06  	beqz	a1, 0x80001d8c <.LBB4_88>

80001d2c <.LBB4_85>:
80001d2c: 17 1c 00 00  	auipc	s8, 1
80001d30: 13 0c 4c 4b  	addi	s8, s8, 1204
80001d34: 6f 00 00 06  	j	0x80001d94 <.LBB4_88+0x8>

80001d38 <.LBB4_86>:
80001d38: 17 15 00 00  	auipc	a0, 1
80001d3c: 13 05 85 78  	addi	a0, a0, 1928
80001d40: 07 30 05 00  	fld	ft0, 0(a0)

80001d44 <.LBB4_87>:
80001d44: 17 15 00 00  	auipc	a0, 1
80001d48: 13 05 45 78  	addi	a0, a0, 1924
80001d4c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001d50: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001d54: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001d58: 33 75 b5 00  	and	a0, a0, a1
80001d5c: 63 1e 05 0e  	bnez	a0, 0x80001e58 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001d60: 13 85 0b 00  	mv	a0, s7
80001d64: 93 05 0b 00  	mv	a1, s6
80001d68: 13 06 0a 00  	mv	a2, s4
80001d6c: 93 86 09 00  	mv	a3, s3
80001d70: 53 05 84 22  	fmv.d	fa0, fs0
80001d74: 93 07 09 00  	mv	a5, s2
80001d78: 13 88 0a 00  	mv	a6, s5
80001d7c: 97 00 00 00  	auipc	ra, 0
80001d80: e7 80 40 51  	jalr	1300(ra)
80001d84: 13 04 05 00  	mv	s0, a0
80001d88: 6f 00 00 4c  	j	0x80002248 <.LBB4_90+0x378>

80001d8c <.LBB4_88>:
80001d8c: 17 1c 00 00  	auipc	s8, 1
80001d90: 13 0c 3c 47  	addi	s8, s8, 1139
80001d94: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001d98: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001d9c: 13 f5 3a 00  	andi	a0, s5, 3
80001da0: 33 35 a0 00  	snez	a0, a0
80001da4: b3 b5 2c 01  	sltu	a1, s9, s2
80001da8: 93 c5 15 00  	xori	a1, a1, 1
80001dac: 33 65 b5 00  	or	a0, a0, a1
80001db0: 93 fa 2a 00  	andi	s5, s5, 2
80001db4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80001db8: 63 16 05 02  	bnez	a0, 0x80001de4 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
80001dbc: 33 04 99 41  	sub	s0, s2, s9
80001dc0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001dc4: 93 04 16 00  	addi	s1, a2, 1
80001dc8: 13 05 00 02  	addi	a0, zero, 32
80001dcc: 93 05 0b 00  	mv	a1, s6
80001dd0: 93 86 09 00  	mv	a3, s3
80001dd4: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001dd8: 13 04 f4 ff  	addi	s0, s0, -1
80001ddc: 13 86 04 00  	mv	a2, s1
80001de0: e3 12 04 fe  	bnez	s0, 0x80001dc4 <.LBB4_88+0x38>
80001de4: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001de8: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
80001dec: 33 05 9c 01  	add	a0, s8, s9
80001df0: 03 45 05 00  	lbu	a0, 0(a0)
80001df4: 13 86 04 00  	mv	a2, s1
80001df8: 13 84 fc ff  	addi	s0, s9, -1
80001dfc: 93 84 14 00  	addi	s1, s1, 1
80001e00: 93 05 0b 00  	mv	a1, s6
80001e04: 93 86 09 00  	mv	a3, s3
80001e08: e7 80 0b 00  	jalr	s7
80001e0c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001e10: e3 1e 04 fc  	bnez	s0, 0x80001dec <.LBB4_88+0x60>
80001e14: 33 85 44 41  	sub	a0, s1, s4
80001e18: 33 35 25 01  	sltu	a0, a0, s2
80001e1c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001e20: 93 c5 1a 00  	xori	a1, s5, 1
80001e24: 33 e5 a5 00  	or	a0, a1, a0
80001e28: 63 1e 05 40  	bnez	a0, 0x80002244 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001e2c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001e30: 13 84 14 00  	addi	s0, s1, 1
80001e34: 13 05 00 02  	addi	a0, zero, 32
80001e38: 93 05 0b 00  	mv	a1, s6
80001e3c: 13 86 04 00  	mv	a2, s1
80001e40: 93 86 09 00  	mv	a3, s3
80001e44: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001e48: 33 05 8a 00  	add	a0, s4, s0
80001e4c: 93 04 04 00  	mv	s1, s0
80001e50: e3 60 25 ff  	bltu	a0, s2, 0x80001e30 <.LBB4_88+0xa4>
80001e54: 6f 00 40 3f  	j	0x80002248 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001e58: 13 f5 0a 40  	andi	a0, s5, 1024
80001e5c: 13 0c 60 00  	addi	s8, zero, 6
80001e60: 63 04 05 00  	beqz	a0, 0x80001e68 <.LBB4_88+0xdc>
80001e64: 13 0c 07 00  	mv	s8, a4
80001e68: 13 05 a0 00  	addi	a0, zero, 10
80001e6c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e70: 63 6c ac 02  	bltu	s8, a0, 0x80001ea8 <.LBB4_88+0x11c>
80001e74: 93 04 6c ff  	addi	s1, s8, -10
80001e78: 13 05 f0 01  	addi	a0, zero, 31
80001e7c: 63 e4 a4 00  	bltu	s1, a0, 0x80001e84 <.LBB4_88+0xf8>
80001e80: 93 04 f0 01  	addi	s1, zero, 31
80001e84: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
80001e88: 13 05 81 00  	addi	a0, sp, 8
80001e8c: 93 05 00 03  	addi	a1, zero, 48
80001e90: 13 06 04 00  	mv	a2, s0
80001e94: 97 e0 ff ff  	auipc	ra, 1048574
80001e98: e7 80 c0 16  	jalr	364(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
80001e9c: 13 c5 f4 ff  	not	a0, s1
80001ea0: 33 0c ac 00  	add	s8, s8, a0
80001ea4: 6f 00 80 00  	j	0x80001eac <.LBB4_88+0x120>
80001ea8: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
80001eac: 13 15 3c 00  	slli	a0, s8, 3

80001eb0 <.LBB4_89>:
80001eb0: 97 15 00 00  	auipc	a1, 1
80001eb4: 93 85 05 51  	addi	a1, a1, 1296
80001eb8: 33 05 b5 00  	add	a0, a0, a1
80001ebc: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
80001ec0: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
80001ec4: 53 80 04 d2  	fcvt.d.w	ft0, s1
80001ec8: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
80001ecc: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001ed0 <.LBB4_90>:
80001ed0: 17 15 00 00  	auipc	a0, 1
80001ed4: 13 05 05 60  	addi	a0, a0, 1536
80001ed8: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
80001edc: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001ee0: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001ee4: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001ee8: d3 05 01 a2  	fle.d	a1, ft2, ft0
80001eec: 63 90 05 02  	bnez	a1, 0x80001f0c <.LBB4_90+0x3c>
;     ++frac;
80001ef0: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001ef4: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001ef8: d3 15 11 a2  	flt.d	a1, ft2, ft1
80001efc: 63 94 05 02  	bnez	a1, 0x80001f24 <.LBB4_90+0x54>
80001f00: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001f04: 93 84 14 00  	addi	s1, s1, 1
80001f08: 6f 00 c0 01  	j	0x80001f24 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
80001f0c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001f10: 63 9a 05 00  	bnez	a1, 0x80001f24 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001f14: 93 35 15 00  	seqz	a1, a0
80001f18: 13 76 15 00  	andi	a2, a0, 1
80001f1c: b3 65 b6 00  	or	a1, a2, a1
80001f20: 33 85 a5 00  	add	a0, a1, a0
80001f24: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001f28: 63 0c 0c 0c  	beqz	s8, 0x80002000 <.LBB4_90+0x130>
80001f2c: 13 06 00 00  	mv	a2, zero
80001f30: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001f34: 33 83 85 00  	add	t1, a1, s0
80001f38: 93 02 00 02  	addi	t0, zero, 32
80001f3c: 33 87 82 40  	sub	a4, t0, s0
80001f40: b7 d5 cc cc  	lui	a1, 838861
80001f44: 93 83 d5 cc  	addi	t2, a1, -819
80001f48: 13 08 a0 00  	addi	a6, zero, 10
80001f4c: 93 08 90 00  	addi	a7, zero, 9
80001f50: 63 04 c7 0c  	beq	a4, a2, 0x80002018 <.LBB4_90+0x148>
80001f54: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001f58: 33 35 75 02  	mulhu	a0, a0, t2
80001f5c: 13 55 35 00  	srli	a0, a0, 3
80001f60: b3 06 05 03  	mul	a3, a0, a6
80001f64: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001f68: 93 e6 06 03  	ori	a3, a3, 48
80001f6c: b3 07 c3 00  	add	a5, t1, a2
80001f70: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
80001f74: 13 06 16 00  	addi	a2, a2, 1
80001f78: e3 ec b8 fc  	bltu	a7, a1, 0x80001f50 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001f7c: 33 05 c4 00  	add	a0, s0, a2
80001f80: 93 05 f5 ff  	addi	a1, a0, -1
80001f84: 93 06 e0 01  	addi	a3, zero, 30
80001f88: b3 b6 b6 00  	sltu	a3, a3, a1
80001f8c: 33 47 cc 00  	xor	a4, s8, a2
80001f90: 13 37 17 00  	seqz	a4, a4
80001f94: b3 e6 e6 00  	or	a3, a3, a4
80001f98: 63 94 06 08  	bnez	a3, 0x80002020 <.LBB4_90+0x150>
80001f9c: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001fa0: 33 05 85 00  	add	a0, a0, s0
80001fa4: 93 45 f6 ff  	not	a1, a2
80001fa8: 33 8c 85 01  	add	s8, a1, s8
80001fac: 33 04 c4 00  	add	s0, s0, a2
80001fb0: 93 05 f0 01  	addi	a1, zero, 31
80001fb4: b3 86 85 40  	sub	a3, a1, s0
80001fb8: 33 05 c5 00  	add	a0, a0, a2
80001fbc: 93 05 0c 00  	mv	a1, s8
80001fc0: 63 64 dc 00  	bltu	s8, a3, 0x80001fc8 <.LBB4_90+0xf8>
80001fc4: 93 85 06 00  	mv	a1, a3
80001fc8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001fcc: 93 05 00 03  	addi	a1, zero, 48
80001fd0: 97 e0 ff ff  	auipc	ra, 1048574
80001fd4: e7 80 00 03  	jalr	48(ra)
80001fd8: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
80001fdc: b3 05 a4 00  	add	a1, s0, a0
80001fe0: 93 b5 f5 01  	sltiu	a1, a1, 31
80001fe4: 33 46 ac 00  	xor	a2, s8, a0
80001fe8: 33 36 c0 00  	snez	a2, a2
80001fec: 33 f6 c5 00  	and	a2, a1, a2
80001ff0: 13 05 15 00  	addi	a0, a0, 1
80001ff4: e3 14 06 fe  	bnez	a2, 0x80001fdc <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001ff8: 33 05 a4 00  	add	a0, s0, a0
80001ffc: 6f 00 80 02  	j	0x80002024 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80002000: d3 80 04 d2  	fcvt.d.w	ft1, s1
80002004: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002008: 53 05 10 a2  	fle.d	a0, ft0, ft1
8000200c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80002010: b3 84 a4 00  	add	s1, s1, a0
80002014: 6f 00 c0 03  	j	0x80002050 <.LBB4_90+0x180>
80002018: 13 04 00 02  	addi	s0, zero, 32
8000201c: 6f 00 80 03  	j	0x80002054 <.LBB4_90+0x184>
80002020: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002024: 63 8e 05 00  	beqz	a1, 0x80002040 <.LBB4_90+0x170>
;       buf[len++] = '.';
80002028: 13 04 15 00  	addi	s0, a0, 1
8000202c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80002030: 33 85 a5 00  	add	a0, a1, a0
80002034: 93 05 e0 02  	addi	a1, zero, 46
80002038: 23 00 b5 00  	sb	a1, 0(a0)
8000203c: 6f 00 80 00  	j	0x80002044 <.LBB4_90+0x174>
80002040: 13 04 05 00  	mv	s0, a0
80002044: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80002048: 93 02 04 00  	mv	t0, s0
8000204c: 63 64 85 00  	bltu	a0, s0, 0x80002054 <.LBB4_90+0x184>
80002050: 93 02 00 02  	addi	t0, zero, 32
80002054: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80002058: 37 65 66 66  	lui	a0, 419430
8000205c: 93 05 75 66  	addi	a1, a0, 1639
80002060: 13 08 a0 00  	addi	a6, zero, 10
80002064: 93 06 81 00  	addi	a3, sp, 8
80002068: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000206c: 63 80 82 04  	beq	t0, s0, 0x800020ac <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
80002070: 33 95 b4 02  	mulh	a0, s1, a1
80002074: 93 57 f5 01  	srli	a5, a0, 31
80002078: 13 55 25 40  	srai	a0, a0, 2
8000207c: 33 05 f5 00  	add	a0, a0, a5
80002080: b3 07 05 03  	mul	a5, a0, a6
80002084: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
80002088: 93 87 07 03  	addi	a5, a5, 48
8000208c: 13 0c 14 00  	addi	s8, s0, 1
80002090: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
80002094: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
80002098: 23 00 f4 00  	sb	a5, 0(s0)
8000209c: 13 04 0c 00  	mv	s0, s8
800020a0: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800020a4: e3 64 c7 fc  	bltu	a4, a2, 0x8000206c <.LBB4_90+0x19c>
800020a8: 6f 00 80 00  	j	0x800020b0 <.LBB4_90+0x1e0>
800020ac: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800020b0: 93 f4 3a 00  	andi	s1, s5, 3
800020b4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800020b8: 63 96 a4 06  	bne	s1, a0, 0x80002124 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800020bc: 63 0c 09 00  	beqz	s2, 0x800020d4 <.LBB4_90+0x204>
800020c0: 13 f5 ca 00  	andi	a0, s5, 12
800020c4: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800020c8: 33 e5 ac 00  	or	a0, s9, a0
800020cc: 33 09 a9 40  	sub	s2, s2, a0
800020d0: 6f 00 80 00  	j	0x800020d8 <.LBB4_90+0x208>
800020d4: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800020d8: 33 35 2c 01  	sltu	a0, s8, s2
800020dc: 93 45 15 00  	xori	a1, a0, 1
800020e0: 13 05 f0 01  	addi	a0, zero, 31
800020e4: 33 36 85 01  	sltu	a2, a0, s8
800020e8: b3 65 b6 00  	or	a1, a2, a1
800020ec: 63 9c 05 02  	bnez	a1, 0x80002124 <.LBB4_90+0x254>
800020f0: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
800020f4: 93 45 fc ff  	not	a1, s8
800020f8: b3 05 b9 00  	add	a1, s2, a1
800020fc: 33 06 85 41  	sub	a2, a0, s8
80002100: 33 85 86 01  	add	a0, a3, s8
80002104: 63 e4 c5 00  	bltu	a1, a2, 0x8000210c <.LBB4_90+0x23c>
80002108: 93 05 06 00  	mv	a1, a2
8000210c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80002110: 93 05 00 03  	addi	a1, zero, 48
80002114: 13 06 04 00  	mv	a2, s0
80002118: 97 e0 ff ff  	auipc	ra, 1048574
8000211c: e7 80 80 ee  	jalr	-280(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80002120: 33 0c 84 01  	add	s8, s0, s8
80002124: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80002128: 63 6a 85 05  	bltu	a0, s8, 0x8000217c <.LBB4_90+0x2ac>
;     if (negative) {
8000212c: 63 8c 0c 00  	beqz	s9, 0x80002144 <.LBB4_90+0x274>
80002130: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80002134: 33 05 85 01  	add	a0, a0, s8
80002138: 13 0c 1c 00  	addi	s8, s8, 1
8000213c: 93 05 d0 02  	addi	a1, zero, 45
80002140: 6f 00 80 03  	j	0x80002178 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80002144: 13 f5 4a 00  	andi	a0, s5, 4
80002148: 63 10 05 02  	bnez	a0, 0x80002168 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
8000214c: 13 f5 8a 00  	andi	a0, s5, 8
80002150: 63 06 05 02  	beqz	a0, 0x8000217c <.LBB4_90+0x2ac>
80002154: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80002158: 33 05 85 01  	add	a0, a0, s8
8000215c: 13 0c 1c 00  	addi	s8, s8, 1
80002160: 93 05 00 02  	addi	a1, zero, 32
80002164: 6f 00 40 01  	j	0x80002178 <.LBB4_90+0x2a8>
80002168: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000216c: 33 05 85 01  	add	a0, a0, s8
80002170: 13 0c 1c 00  	addi	s8, s8, 1
80002174: 93 05 b0 02  	addi	a1, zero, 43
80002178: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000217c: 33 35 90 00  	snez	a0, s1
80002180: b3 35 2c 01  	sltu	a1, s8, s2
80002184: 93 c5 15 00  	xori	a1, a1, 1
80002188: 33 65 b5 00  	or	a0, a0, a1
8000218c: 93 fa 2a 00  	andi	s5, s5, 2
80002190: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002194: 63 16 05 02  	bnez	a0, 0x800021c0 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
80002198: b3 04 89 41  	sub	s1, s2, s8
8000219c: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800021a0: 13 04 16 00  	addi	s0, a2, 1
800021a4: 13 05 00 02  	addi	a0, zero, 32
800021a8: 93 05 0b 00  	mv	a1, s6
800021ac: 93 86 09 00  	mv	a3, s3
800021b0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800021b4: 93 84 f4 ff  	addi	s1, s1, -1
800021b8: 13 06 04 00  	mv	a2, s0
800021bc: e3 92 04 fe  	bnez	s1, 0x800021a0 <.LBB4_90+0x2d0>
800021c0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800021c4: 63 0c 0c 02  	beqz	s8, 0x800021fc <.LBB4_90+0x32c>
800021c8: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800021cc: 33 85 8c 01  	add	a0, s9, s8
800021d0: 03 45 05 00  	lbu	a0, 0(a0)
800021d4: 13 0d fc ff  	addi	s10, s8, -1
800021d8: 93 04 14 00  	addi	s1, s0, 1
800021dc: 93 05 0b 00  	mv	a1, s6
800021e0: 13 06 04 00  	mv	a2, s0
800021e4: 93 86 09 00  	mv	a3, s3
800021e8: e7 80 0b 00  	jalr	s7
800021ec: 13 84 04 00  	mv	s0, s1
800021f0: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
800021f4: e3 1c 0d fc  	bnez	s10, 0x800021cc <.LBB4_90+0x2fc>
800021f8: 6f 00 80 00  	j	0x80002200 <.LBB4_90+0x330>
800021fc: 93 04 04 00  	mv	s1, s0
80002200: 33 85 44 41  	sub	a0, s1, s4
80002204: 33 35 25 01  	sltu	a0, a0, s2
80002208: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
8000220c: 93 c5 1a 00  	xori	a1, s5, 1
80002210: 33 e5 a5 00  	or	a0, a1, a0
80002214: 63 18 05 02  	bnez	a0, 0x80002244 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80002218: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
8000221c: 13 84 14 00  	addi	s0, s1, 1
80002220: 13 05 00 02  	addi	a0, zero, 32
80002224: 93 05 0b 00  	mv	a1, s6
80002228: 13 86 04 00  	mv	a2, s1
8000222c: 93 86 09 00  	mv	a3, s3
80002230: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80002234: 33 05 8a 00  	add	a0, s4, s0
80002238: 93 04 04 00  	mv	s1, s0
8000223c: e3 60 25 ff  	bltu	a0, s2, 0x8000221c <.LBB4_90+0x34c>
80002240: 6f 00 80 00  	j	0x80002248 <.LBB4_90+0x378>
80002244: 13 84 04 00  	mv	s0, s1
; }
80002248: 13 05 04 00  	mv	a0, s0
8000224c: 07 39 81 02  	fld	fs2, 40(sp)
80002250: 87 34 01 03  	fld	fs1, 48(sp)
80002254: 07 34 81 03  	fld	fs0, 56(sp)
80002258: 03 2d 01 04  	lw	s10, 64(sp)
8000225c: 83 2c 41 04  	lw	s9, 68(sp)
80002260: 03 2c 81 04  	lw	s8, 72(sp)
80002264: 83 2b c1 04  	lw	s7, 76(sp)
80002268: 03 2b 01 05  	lw	s6, 80(sp)
8000226c: 83 2a 41 05  	lw	s5, 84(sp)
80002270: 03 2a 81 05  	lw	s4, 88(sp)
80002274: 83 29 c1 05  	lw	s3, 92(sp)
80002278: 03 29 01 06  	lw	s2, 96(sp)
8000227c: 83 24 41 06  	lw	s1, 100(sp)
80002280: 03 24 81 06  	lw	s0, 104(sp)
80002284: 83 20 c1 06  	lw	ra, 108(sp)
80002288: 13 01 01 07  	addi	sp, sp, 112
8000228c: 67 80 00 00  	ret

80002290 <_etoa>:
; {
80002290: 13 01 01 f8  	addi	sp, sp, -128
80002294: 23 2e 11 06  	sw	ra, 124(sp)
80002298: 23 2c 81 06  	sw	s0, 120(sp)
8000229c: 23 2a 91 06  	sw	s1, 116(sp)
800022a0: 23 28 21 07  	sw	s2, 112(sp)
800022a4: 23 26 31 07  	sw	s3, 108(sp)
800022a8: 23 24 41 07  	sw	s4, 104(sp)
800022ac: 23 22 51 07  	sw	s5, 100(sp)
800022b0: 23 20 61 07  	sw	s6, 96(sp)
800022b4: 23 2e 71 05  	sw	s7, 92(sp)
800022b8: 23 2c 81 05  	sw	s8, 88(sp)
800022bc: 23 2a 91 05  	sw	s9, 84(sp)
800022c0: 23 28 a1 05  	sw	s10, 80(sp)
800022c4: 23 26 b1 05  	sw	s11, 76(sp)

800022c8 <.LBB5_43>:
800022c8: 97 14 00 00  	auipc	s1, 1
800022cc: 93 84 04 21  	addi	s1, s1, 528
800022d0: 87 b0 04 00  	fld	ft1, 0(s1)

800022d4 <.LBB5_44>:
800022d4: 97 14 00 00  	auipc	s1, 1
800022d8: 93 84 c4 20  	addi	s1, s1, 524
800022dc: 07 b1 04 00  	fld	ft2, 0(s1)
800022e0: 53 00 a5 22  	fmv.d	ft0, fa0
800022e4: d3 04 15 a2  	fle.d	s1, fa0, ft1
800022e8: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
800022ec: b3 f4 84 00  	and	s1, s1, s0
800022f0: 93 0a 08 00  	mv	s5, a6
800022f4: 13 89 07 00  	mv	s2, a5
800022f8: 93 07 07 00  	mv	a5, a4
800022fc: 93 89 06 00  	mv	s3, a3
80002300: 13 0a 06 00  	mv	s4, a2
80002304: 13 8b 05 00  	mv	s6, a1
80002308: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
8000230c: 63 92 04 06  	bnez	s1, 0x80002370 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80002310: 13 85 0b 00  	mv	a0, s7
80002314: 93 05 0b 00  	mv	a1, s6
80002318: 13 06 0a 00  	mv	a2, s4
8000231c: 93 86 09 00  	mv	a3, s3
80002320: 53 05 00 22  	fmv.d	fa0, ft0
80002324: 13 87 07 00  	mv	a4, a5
80002328: 93 07 09 00  	mv	a5, s2
8000232c: 13 88 0a 00  	mv	a6, s5
80002330: 83 2d c1 04  	lw	s11, 76(sp)
80002334: 03 2d 01 05  	lw	s10, 80(sp)
80002338: 83 2c 41 05  	lw	s9, 84(sp)
8000233c: 03 2c 81 05  	lw	s8, 88(sp)
80002340: 83 2b c1 05  	lw	s7, 92(sp)
80002344: 03 2b 01 06  	lw	s6, 96(sp)
80002348: 83 2a 41 06  	lw	s5, 100(sp)
8000234c: 03 2a 81 06  	lw	s4, 104(sp)
80002350: 83 29 c1 06  	lw	s3, 108(sp)
80002354: 03 29 01 07  	lw	s2, 112(sp)
80002358: 83 24 41 07  	lw	s1, 116(sp)
8000235c: 03 24 81 07  	lw	s0, 120(sp)
80002360: 83 20 c1 07  	lw	ra, 124(sp)
80002364: 13 01 01 08  	addi	sp, sp, 128
80002368: 17 03 00 00  	auipc	t1, 0
8000236c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80002370: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80002374: 13 f5 0a 40  	andi	a0, s5, 1024
80002378: 13 07 60 00  	addi	a4, zero, 6
8000237c: 63 04 05 00  	beqz	a0, 0x80002384 <.LBB5_44+0xb0>
80002380: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80002384: 27 30 a1 02  	fsd	fa0, 32(sp)
80002388: 83 25 41 02  	lw	a1, 36(sp)
8000238c: 03 26 01 02  	lw	a2, 32(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80002390: 93 d6 45 01  	srli	a3, a1, 20
80002394: b7 07 10 00  	lui	a5, 256
80002398: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
8000239c: b3 f5 f5 00  	and	a1, a1, a5
800023a0: 23 2c c1 00  	sw	a2, 24(sp)
800023a4: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
800023a8: b3 e5 c5 00  	or	a1, a1, a2
800023ac: 23 2e b1 00  	sw	a1, 28(sp)
800023b0: 87 30 81 01  	fld	ft1, 24(sp)

800023b4 <.LBB5_45>:
800023b4: 97 15 00 00  	auipc	a1, 1
800023b8: 93 85 45 13  	addi	a1, a1, 308
800023bc: 07 b1 05 00  	fld	ft2, 0(a1)

800023c0 <.LBB5_46>:
800023c0: 97 15 00 00  	auipc	a1, 1
800023c4: 93 85 05 13  	addi	a1, a1, 304
800023c8: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
800023cc: 93 f5 f6 7f  	andi	a1, a3, 2047
800023d0: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
800023d4: 53 82 05 d2  	fcvt.d.w	ft4, a1
800023d8: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

800023dc <.LBB5_47>:
800023dc: 97 15 00 00  	auipc	a1, 1
800023e0: 93 85 c5 11  	addi	a1, a1, 284
800023e4: 07 b1 05 00  	fld	ft2, 0(a1)

800023e8 <.LBB5_48>:
800023e8: 97 15 00 00  	auipc	a1, 1
800023ec: 93 85 85 11  	addi	a1, a1, 280
800023f0: 87 b1 05 00  	fld	ft3, 0(a1)

800023f4 <.LBB5_49>:
800023f4: 97 15 00 00  	auipc	a1, 1
800023f8: 93 85 45 11  	addi	a1, a1, 276
800023fc: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80002400: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80002404: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002408: d3 80 05 d2  	fcvt.d.w	ft1, a1
8000240c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80002410 <.LBB5_50>:
80002410: 17 16 00 00  	auipc	a2, 1
80002414: 13 06 06 10  	addi	a2, a2, 256
80002418: 87 31 06 00  	fld	ft3, 0(a2)

8000241c <.LBB5_51>:
8000241c: 17 16 00 00  	auipc	a2, 1
80002420: 13 06 c6 0f  	addi	a2, a2, 252
80002424: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80002428: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
8000242c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80002430: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80002434: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80002438: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
8000243c: 13 06 f6 3f  	addi	a2, a2, 1023
80002440: 23 28 01 00  	sw	zero, 16(sp)
80002444: 13 16 46 01  	slli	a2, a2, 20
80002448: 23 2a c1 00  	sw	a2, 20(sp)

8000244c <.LBB5_52>:
8000244c: 17 16 00 00  	auipc	a2, 1
80002450: 13 06 c6 0d  	addi	a2, a2, 220
80002454: 87 31 06 00  	fld	ft3, 0(a2)

80002458 <.LBB5_53>:
80002458: 17 16 00 00  	auipc	a2, 1
8000245c: 13 06 86 0d  	addi	a2, a2, 216
80002460: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80002464: 87 32 01 01  	fld	ft5, 16(sp)

80002468 <.LBB5_54>:
80002468: 17 16 00 00  	auipc	a2, 1
8000246c: 13 06 86 0b  	addi	a2, a2, 184
80002470: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002474: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80002478 <.LBB5_55>:
80002478: 17 16 00 00  	auipc	a2, 1
8000247c: 13 06 06 0c  	addi	a2, a2, 192
80002480: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80002484: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80002488: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
8000248c: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80002490: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80002494: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80002498: 53 71 23 02  	fadd.d	ft2, ft6, ft2
8000249c: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
800024a0: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
800024a4: 53 16 15 a2  	flt.d	a2, fa0, ft1
800024a8: 63 0a 06 00  	beqz	a2, 0x800024bc <.LBB5_56+0x10>

800024ac <.LBB5_56>:
800024ac: 97 16 00 00  	auipc	a3, 1
800024b0: 93 86 46 09  	addi	a3, a3, 148
800024b4: 07 b1 06 00  	fld	ft2, 0(a3)
800024b8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
800024bc: 33 84 c5 40  	sub	s0, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800024c0: 93 05 34 06  	addi	a1, s0, 99
800024c4: 93 b5 75 0c  	sltiu	a1, a1, 199
800024c8: 13 06 50 00  	addi	a2, zero, 5
800024cc: b7 16 00 00  	lui	a3, 1
800024d0: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
800024d4: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
800024d8: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
800024dc: 63 84 06 06  	beqz	a3, 0x80002544 <.LBB5_58+0x58>

800024e0 <.LBB5_57>:
800024e0: 97 15 00 00  	auipc	a1, 1
800024e4: 93 85 85 06  	addi	a1, a1, 104
800024e8: 07 b1 05 00  	fld	ft2, 0(a1)

800024ec <.LBB5_58>:
800024ec: 97 15 00 00  	auipc	a1, 1
800024f0: 93 85 45 06  	addi	a1, a1, 100
800024f4: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
800024f8: d3 15 25 a2  	flt.d	a1, fa0, ft2
800024fc: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80002500: b3 e5 c5 00  	or	a1, a1, a2
80002504: 63 98 05 00  	bnez	a1, 0x80002514 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80002508: 63 40 e4 02  	blt	s0, a4, 0x80002528 <.LBB5_58+0x3c>
8000250c: 13 07 00 00  	mv	a4, zero
80002510: 6f 00 00 02  	j	0x80002530 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80002514: 63 06 07 02  	beqz	a4, 0x80002540 <.LBB5_58+0x54>
80002518: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
8000251c: 13 45 15 00  	xori	a0, a0, 1
80002520: 33 07 a7 40  	sub	a4, a4, a0
80002524: 6f 00 00 02  	j	0x80002544 <.LBB5_58+0x58>
80002528: 13 45 f4 ff  	not	a0, s0
8000252c: 33 07 a7 00  	add	a4, a4, a0
80002530: 13 04 00 00  	mv	s0, zero
80002534: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80002538: 93 ea 0a 40  	ori	s5, s5, 1024
8000253c: 6f 00 80 00  	j	0x80002544 <.LBB5_58+0x58>
80002540: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80002544: b3 05 99 41  	sub	a1, s2, s9
80002548: 33 36 b9 00  	sltu	a2, s2, a1
8000254c: 13 05 00 00  	mv	a0, zero
80002550: 63 14 06 00  	bnez	a2, 0x80002558 <.LBB5_58+0x6c>
80002554: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80002558: 93 07 00 00  	mv	a5, zero
8000255c: 93 d5 1a 00  	srli	a1, s5, 1
80002560: 93 f4 15 00  	andi	s1, a1, 1
80002564: b3 35 90 01  	snez	a1, s9
80002568: b3 f5 b4 00  	and	a1, s1, a1
8000256c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80002570: 63 94 05 00  	bnez	a1, 0x80002578 <.LBB5_58+0x8c>
80002574: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80002578: 93 35 14 00  	seqz	a1, s0
8000257c: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80002580: 63 94 05 00  	bnez	a1, 0x80002588 <.LBB5_58+0x9c>
80002584: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002588: 63 04 05 00  	beqz	a0, 0x80002590 <.LBB5_58+0xa4>
8000258c: 53 15 a5 22  	fneg.d	fa0, fa0
80002590: 37 f5 ff ff  	lui	a0, 1048575
80002594: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80002598: 33 f8 aa 00  	and	a6, s5, a0
8000259c: 13 85 0b 00  	mv	a0, s7
800025a0: 93 05 0b 00  	mv	a1, s6
800025a4: 13 06 0a 00  	mv	a2, s4
800025a8: 93 86 09 00  	mv	a3, s3
800025ac: 97 f0 ff ff  	auipc	ra, 1048575
800025b0: e7 80 40 60  	jalr	1540(ra)
800025b4: 13 0d 05 00  	mv	s10, a0
;   if (minwidth) {
800025b8: 63 82 0c 18  	beqz	s9, 0x8000273c <.LBB5_58+0x250>
800025bc: 23 26 91 00  	sw	s1, 12(sp)
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
800025c0: 13 f5 0a 02  	andi	a0, s5, 32
800025c4: 13 45 55 06  	xori	a0, a0, 101
800025c8: 93 05 0b 00  	mv	a1, s6
800025cc: 13 06 0d 00  	mv	a2, s10
800025d0: 93 86 09 00  	mv	a3, s3
800025d4: e7 80 0b 00  	jalr	s7
800025d8: 13 0c 00 00  	mv	s8, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
800025dc: 93 5a f4 01  	srli	s5, s0, 31
800025e0: 13 55 f4 41  	srai	a0, s0, 31
800025e4: b3 05 a4 00  	add	a1, s0, a0
800025e8: 33 c7 a5 00  	xor	a4, a1, a0
;     do {
800025ec: 93 8d dc ff  	addi	s11, s9, -3
800025f0: 13 04 f0 01  	addi	s0, zero, 31
800025f4: 37 d5 cc cc  	lui	a0, 838861
800025f8: 13 05 d5 cc  	addi	a0, a0, -819
800025fc: 13 08 a0 00  	addi	a6, zero, 10
80002600: 93 08 c1 02  	addi	a7, sp, 44
80002604: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80002608: b3 37 a7 02  	mulhu	a5, a4, a0
8000260c: 93 d5 37 00  	srli	a1, a5, 3
80002610: b3 87 05 03  	mul	a5, a1, a6
80002614: b3 07 f7 40  	sub	a5, a4, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002618: 13 e6 07 03  	ori	a2, a5, 48
8000261c: b3 86 88 01  	add	a3, a7, s8
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80002620: 93 37 fc 01  	sltiu	a5, s8, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80002624: 13 0c 1c 00  	addi	s8, s8, 1
80002628: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
8000262c: 33 b6 e2 00  	sltu	a2, t0, a4
80002630: 33 f6 c7 00  	and	a2, a5, a2
80002634: 93 8d fd ff  	addi	s11, s11, -1
80002638: 13 04 f4 ff  	addi	s0, s0, -1
8000263c: 13 87 05 00  	mv	a4, a1
80002640: e3 14 06 fc  	bnez	a2, 0x80002608 <.LBB5_58+0x11c>
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002644: 13 85 ec ff  	addi	a0, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002648: 33 35 ac 00  	sltu	a0, s8, a0
8000264c: 13 45 15 00  	xori	a0, a0, 1
80002650: 93 c5 17 00  	xori	a1, a5, 1
80002654: 33 e5 a5 00  	or	a0, a1, a0
80002658: 63 12 05 04  	bnez	a0, 0x8000269c <.LBB5_58+0x1b0>
8000265c: 13 05 c1 02  	addi	a0, sp, 44
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002660: b3 85 8c 41  	sub	a1, s9, s8
80002664: 93 85 d5 ff  	addi	a1, a1, -3
80002668: 13 06 f0 01  	addi	a2, zero, 31
8000266c: 33 06 86 41  	sub	a2, a2, s8
80002670: 33 05 85 01  	add	a0, a0, s8
80002674: 63 e4 c5 00  	bltu	a1, a2, 0x8000267c <.LBB5_58+0x190>
80002678: 93 05 06 00  	mv	a1, a2
8000267c: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80002680: 93 05 00 03  	addi	a1, zero, 48
80002684: 97 e0 ff ff  	auipc	ra, 1048574
80002688: e7 80 c0 97  	jalr	-1668(ra)
;   if (flags & FLAGS_HASH) {
8000268c: 63 e4 8d 00  	bltu	s11, s0, 0x80002694 <.LBB5_58+0x1a8>
80002690: 93 0d 04 00  	mv	s11, s0
80002694: 33 85 8d 01  	add	a0, s11, s8
80002698: 13 0c 15 00  	addi	s8, a0, 1
8000269c: 83 2c c1 00  	lw	s9, 12(sp)
800026a0: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800026a4: 63 60 85 03  	bltu	a0, s8, 0x800026c4 <.LBB5_58+0x1d8>
800026a8: 13 05 c1 02  	addi	a0, sp, 44
800026ac: 33 05 85 01  	add	a0, a0, s8
800026b0: 93 05 d0 02  	addi	a1, zero, 45
800026b4: 63 94 0a 00  	bnez	s5, 0x800026bc <.LBB5_58+0x1d0>
800026b8: 93 05 b0 02  	addi	a1, zero, 43
800026bc: 13 0c 1c 00  	addi	s8, s8, 1
800026c0: 23 00 b5 00  	sb	a1, 0(a0)
800026c4: 13 04 1d 00  	addi	s0, s10, 1
;   while (len) {
800026c8: 93 0a b1 02  	addi	s5, sp, 43
;     out(buf[--len], buffer, idx++, maxlen);
800026cc: 33 85 8a 01  	add	a0, s5, s8
800026d0: 03 45 05 00  	lbu	a0, 0(a0)
800026d4: 13 06 04 00  	mv	a2, s0
800026d8: 93 04 fc ff  	addi	s1, s8, -1
800026dc: 13 04 14 00  	addi	s0, s0, 1
800026e0: 93 05 0b 00  	mv	a1, s6
800026e4: 93 86 09 00  	mv	a3, s3
800026e8: e7 80 0b 00  	jalr	s7
800026ec: 13 8c 04 00  	mv	s8, s1
;   while (len) {
800026f0: e3 9e 04 fc  	bnez	s1, 0x800026cc <.LBB5_58+0x1e0>
800026f4: 33 05 44 41  	sub	a0, s0, s4
800026f8: 33 35 25 01  	sltu	a0, a0, s2
800026fc: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80002700: 93 c5 1c 00  	xori	a1, s9, 1
80002704: 33 e5 a5 00  	or	a0, a1, a0
80002708: 63 18 05 02  	bnez	a0, 0x80002738 <.LBB5_58+0x24c>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
8000270c: b3 04 40 41  	neg	s1, s4
80002710: 13 0d 14 00  	addi	s10, s0, 1
80002714: 13 05 00 02  	addi	a0, zero, 32
80002718: 93 05 0b 00  	mv	a1, s6
8000271c: 13 06 04 00  	mv	a2, s0
80002720: 93 86 09 00  	mv	a3, s3
80002724: e7 80 0b 00  	jalr	s7
80002728: 33 85 a4 01  	add	a0, s1, s10
8000272c: 13 04 0d 00  	mv	s0, s10
80002730: e3 60 25 ff  	bltu	a0, s2, 0x80002710 <.LBB5_58+0x224>
80002734: 6f 00 80 00  	j	0x8000273c <.LBB5_58+0x250>
80002738: 13 0d 04 00  	mv	s10, s0
; }
8000273c: 13 05 0d 00  	mv	a0, s10
80002740: 83 2d c1 04  	lw	s11, 76(sp)
80002744: 03 2d 01 05  	lw	s10, 80(sp)
80002748: 83 2c 41 05  	lw	s9, 84(sp)
8000274c: 03 2c 81 05  	lw	s8, 88(sp)
80002750: 83 2b c1 05  	lw	s7, 92(sp)
80002754: 03 2b 01 06  	lw	s6, 96(sp)
80002758: 83 2a 41 06  	lw	s5, 100(sp)
8000275c: 03 2a 81 06  	lw	s4, 104(sp)
80002760: 83 29 c1 06  	lw	s3, 108(sp)
80002764: 03 29 01 07  	lw	s2, 112(sp)
80002768: 83 24 41 07  	lw	s1, 116(sp)
8000276c: 03 24 81 07  	lw	s0, 120(sp)
80002770: 83 20 c1 07  	lw	ra, 124(sp)
80002774: 13 01 01 08  	addi	sp, sp, 128
80002778: 67 80 00 00  	ret

8000277c <_ntoa_format>:
; {
8000277c: 13 01 01 fc  	addi	sp, sp, -64
80002780: 23 2e 11 02  	sw	ra, 60(sp)
80002784: 23 2c 81 02  	sw	s0, 56(sp)
80002788: 23 2a 91 02  	sw	s1, 52(sp)
8000278c: 23 28 21 03  	sw	s2, 48(sp)
80002790: 23 26 31 03  	sw	s3, 44(sp)
80002794: 23 24 41 03  	sw	s4, 40(sp)
80002798: 23 22 51 03  	sw	s5, 36(sp)
8000279c: 23 20 61 03  	sw	s6, 32(sp)
800027a0: 23 2e 71 01  	sw	s7, 28(sp)
800027a4: 23 2c 81 01  	sw	s8, 24(sp)
800027a8: 23 2a 91 01  	sw	s9, 20(sp)
800027ac: 23 28 a1 01  	sw	s10, 16(sp)
800027b0: 23 26 b1 01  	sw	s11, 12(sp)
800027b4: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
800027b8: 93 fa 2e 00  	andi	s5, t4, 2
800027bc: 13 09 0e 00  	mv	s2, t3
800027c0: 13 8d 03 00  	mv	s10, t2
800027c4: 93 8c 08 00  	mv	s9, a7
800027c8: 13 8c 07 00  	mv	s8, a5
800027cc: 93 89 06 00  	mv	s3, a3
800027d0: 13 0a 06 00  	mv	s4, a2
800027d4: 13 8b 05 00  	mv	s6, a1
800027d8: 93 0d 05 00  	mv	s11, a0
800027dc: 23 24 e1 00  	sw	a4, 8(sp)
;   if (!(flags & FLAGS_LEFT)) {
800027e0: 63 9e 0a 0c  	bnez	s5, 0x800028bc <_ntoa_format+0x140>
800027e4: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800027e8: 63 0e 09 00  	beqz	s2, 0x80002804 <_ntoa_format+0x88>
800027ec: 63 0e 04 00  	beqz	s0, 0x80002808 <_ntoa_format+0x8c>
800027f0: 13 f5 cb 00  	andi	a0, s7, 12
800027f4: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800027f8: 33 65 05 01  	or	a0, a0, a6
800027fc: 33 09 a9 40  	sub	s2, s2, a0
80002800: 6f 00 80 00  	j	0x80002808 <_ntoa_format+0x8c>
80002804: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002808: 33 35 ac 01  	sltu	a0, s8, s10
8000280c: 93 45 15 00  	xori	a1, a0, 1
80002810: 13 05 f0 01  	addi	a0, zero, 31
80002814: 33 36 85 01  	sltu	a2, a0, s8
80002818: b3 65 b6 00  	or	a1, a2, a1
8000281c: 63 94 05 04  	bnez	a1, 0x80002864 <_ntoa_format+0xe8>
80002820: 23 22 51 01  	sw	s5, 4(sp)
80002824: 93 0a 08 00  	mv	s5, a6
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002828: 93 45 fc ff  	not	a1, s8
8000282c: b3 85 a5 01  	add	a1, a1, s10
80002830: 33 06 85 41  	sub	a2, a0, s8
80002834: 33 05 87 01  	add	a0, a4, s8
80002838: 63 e4 c5 00  	bltu	a1, a2, 0x80002840 <_ntoa_format+0xc4>
8000283c: 93 05 06 00  	mv	a1, a2
80002840: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002844: 93 05 00 03  	addi	a1, zero, 48
80002848: 13 86 04 00  	mv	a2, s1
8000284c: 97 d0 ff ff  	auipc	ra, 1048573
80002850: e7 80 40 7b  	jalr	1972(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002854: 33 8c 84 01  	add	s8, s1, s8
80002858: 03 27 81 00  	lw	a4, 8(sp)
8000285c: 13 88 0a 00  	mv	a6, s5
80002860: 83 2a 41 00  	lw	s5, 4(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002864: 63 0c 04 04  	beqz	s0, 0x800028bc <_ntoa_format+0x140>
80002868: 33 35 2c 01  	sltu	a0, s8, s2
8000286c: 93 45 15 00  	xori	a1, a0, 1
80002870: 13 05 f0 01  	addi	a0, zero, 31
80002874: 33 36 85 01  	sltu	a2, a0, s8
80002878: b3 e5 c5 00  	or	a1, a1, a2
8000287c: 63 90 05 04  	bnez	a1, 0x800028bc <_ntoa_format+0x140>
80002880: 13 04 08 00  	mv	s0, a6
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002884: 93 45 fc ff  	not	a1, s8
80002888: b3 05 b9 00  	add	a1, s2, a1
8000288c: 33 06 85 41  	sub	a2, a0, s8
80002890: 33 05 87 01  	add	a0, a4, s8
80002894: 63 e4 c5 00  	bltu	a1, a2, 0x8000289c <_ntoa_format+0x120>
80002898: 93 05 06 00  	mv	a1, a2
8000289c: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
800028a0: 93 05 00 03  	addi	a1, zero, 48
800028a4: 13 86 04 00  	mv	a2, s1
800028a8: 97 d0 ff ff  	auipc	ra, 1048573
800028ac: e7 80 80 75  	jalr	1880(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800028b0: 33 8c 84 01  	add	s8, s1, s8
800028b4: 03 27 81 00  	lw	a4, 8(sp)
800028b8: 13 08 04 00  	mv	a6, s0
;   if (flags & FLAGS_HASH) {
800028bc: 13 f5 0b 01  	andi	a0, s7, 16
800028c0: 63 02 05 0e  	beqz	a0, 0x800029a4 <_ntoa_format+0x228>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800028c4: 13 f5 0b 40  	andi	a0, s7, 1024
800028c8: 13 55 a5 00  	srli	a0, a0, 10
800028cc: 93 35 1c 00  	seqz	a1, s8
800028d0: 33 65 b5 00  	or	a0, a0, a1
800028d4: 63 1e 05 02  	bnez	a0, 0x80002910 <_ntoa_format+0x194>
800028d8: 33 45 ac 01  	xor	a0, s8, s10
800028dc: 33 35 a0 00  	snez	a0, a0
800028e0: b3 45 2c 01  	xor	a1, s8, s2
800028e4: b3 35 b0 00  	snez	a1, a1
800028e8: 33 75 b5 00  	and	a0, a0, a1
800028ec: 63 12 05 02  	bnez	a0, 0x80002910 <_ntoa_format+0x194>
;       len--;
800028f0: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
800028f4: b3 35 a0 00  	snez	a1, a0
800028f8: 13 86 0c ff  	addi	a2, s9, -16
800028fc: 13 36 16 00  	seqz	a2, a2
80002900: b3 75 b6 00  	and	a1, a2, a1
80002904: 63 84 05 00  	beqz	a1, 0x8000290c <_ntoa_format+0x190>
80002908: 13 05 ec ff  	addi	a0, s8, -2
8000290c: 13 0c 05 00  	mv	s8, a0
80002910: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002914: 63 96 ac 02  	bne	s9, a0, 0x80002940 <_ntoa_format+0x1c4>
80002918: 13 f5 0b 02  	andi	a0, s7, 32
8000291c: 93 55 55 00  	srli	a1, a0, 5
80002920: 13 06 f0 01  	addi	a2, zero, 31
80002924: 33 36 86 01  	sltu	a2, a2, s8
80002928: b3 e5 c5 00  	or	a1, a1, a2
8000292c: 63 9e 05 02  	bnez	a1, 0x80002968 <_ntoa_format+0x1ec>
;       buf[len++] = 'x';
80002930: 33 05 87 01  	add	a0, a4, s8
80002934: 13 0c 1c 00  	addi	s8, s8, 1
80002938: 93 05 80 07  	addi	a1, zero, 120
8000293c: 6f 00 c0 04  	j	0x80002988 <_ntoa_format+0x20c>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002940: 13 85 ec ff  	addi	a0, s9, -2
80002944: 33 35 a0 00  	snez	a0, a0
80002948: 93 05 f0 01  	addi	a1, zero, 31
8000294c: b3 b5 85 01  	sltu	a1, a1, s8
80002950: 33 65 b5 00  	or	a0, a0, a1
80002954: 63 1c 05 02  	bnez	a0, 0x8000298c <_ntoa_format+0x210>
;       buf[len++] = 'b';
80002958: 33 05 87 01  	add	a0, a4, s8
8000295c: 13 0c 1c 00  	addi	s8, s8, 1
80002960: 93 05 20 06  	addi	a1, zero, 98
80002964: 6f 00 40 02  	j	0x80002988 <_ntoa_format+0x20c>
80002968: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000296c: 13 35 15 00  	seqz	a0, a0
80002970: 93 c5 15 00  	xori	a1, a1, 1
80002974: 33 65 b5 00  	or	a0, a0, a1
80002978: 63 1a 05 00  	bnez	a0, 0x8000298c <_ntoa_format+0x210>
;       buf[len++] = 'X';
8000297c: 33 05 87 01  	add	a0, a4, s8
80002980: 13 0c 1c 00  	addi	s8, s8, 1
80002984: 93 05 80 05  	addi	a1, zero, 88
80002988: 23 00 b5 00  	sb	a1, 0(a0)
8000298c: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
80002990: 63 60 85 07  	bltu	a0, s8, 0x800029f0 <_ntoa_format+0x274>
;       buf[len++] = '0';
80002994: 33 05 87 01  	add	a0, a4, s8
80002998: 13 0c 1c 00  	addi	s8, s8, 1
8000299c: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800029a0: 23 00 b5 00  	sb	a1, 0(a0)
800029a4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800029a8: 63 64 85 05  	bltu	a0, s8, 0x800029f0 <_ntoa_format+0x274>
;     if (negative) {
800029ac: 63 0a 08 00  	beqz	a6, 0x800029c0 <_ntoa_format+0x244>
;       buf[len++] = '-';
800029b0: 33 05 87 01  	add	a0, a4, s8
800029b4: 13 0c 1c 00  	addi	s8, s8, 1
800029b8: 93 05 d0 02  	addi	a1, zero, 45
800029bc: 6f 00 00 03  	j	0x800029ec <_ntoa_format+0x270>
;     else if (flags & FLAGS_PLUS) {
800029c0: 13 f5 4b 00  	andi	a0, s7, 4
800029c4: 63 1e 05 00  	bnez	a0, 0x800029e0 <_ntoa_format+0x264>
;     else if (flags & FLAGS_SPACE) {
800029c8: 13 f5 8b 00  	andi	a0, s7, 8
800029cc: 63 02 05 02  	beqz	a0, 0x800029f0 <_ntoa_format+0x274>
;       buf[len++] = ' ';
800029d0: 33 05 87 01  	add	a0, a4, s8
800029d4: 13 0c 1c 00  	addi	s8, s8, 1
800029d8: 93 05 00 02  	addi	a1, zero, 32
800029dc: 6f 00 00 01  	j	0x800029ec <_ntoa_format+0x270>
;       buf[len++] = '+';  // ignore the space if the '+' exists
800029e0: 33 05 87 01  	add	a0, a4, s8
800029e4: 13 0c 1c 00  	addi	s8, s8, 1
800029e8: 93 05 b0 02  	addi	a1, zero, 43
800029ec: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800029f0: 13 f5 3b 00  	andi	a0, s7, 3
800029f4: 33 35 a0 00  	snez	a0, a0
800029f8: b3 35 2c 01  	sltu	a1, s8, s2
800029fc: 93 c5 15 00  	xori	a1, a1, 1
80002a00: 33 65 b5 00  	or	a0, a0, a1
80002a04: 13 04 0a 00  	mv	s0, s4
80002a08: 63 16 05 02  	bnez	a0, 0x80002a34 <_ntoa_format+0x2b8>
;     for (size_t i = len; i < width; i++) {
80002a0c: b3 04 89 41  	sub	s1, s2, s8
80002a10: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002a14: 13 04 16 00  	addi	s0, a2, 1
80002a18: 13 05 00 02  	addi	a0, zero, 32
80002a1c: 93 05 0b 00  	mv	a1, s6
80002a20: 93 86 09 00  	mv	a3, s3
80002a24: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
80002a28: 93 84 f4 ff  	addi	s1, s1, -1
80002a2c: 13 06 04 00  	mv	a2, s0
80002a30: e3 92 04 fe  	bnez	s1, 0x80002a14 <_ntoa_format+0x298>
80002a34: b3 3a 50 01  	snez	s5, s5
;   while (len) {
80002a38: 63 0e 0c 02  	beqz	s8, 0x80002a74 <_ntoa_format+0x2f8>
80002a3c: 03 25 81 00  	lw	a0, 8(sp)
80002a40: 93 0b f5 ff  	addi	s7, a0, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002a44: 33 85 8b 01  	add	a0, s7, s8
80002a48: 03 45 05 00  	lbu	a0, 0(a0)
80002a4c: 93 0c fc ff  	addi	s9, s8, -1
80002a50: 93 04 14 00  	addi	s1, s0, 1
80002a54: 93 05 0b 00  	mv	a1, s6
80002a58: 13 06 04 00  	mv	a2, s0
80002a5c: 93 86 09 00  	mv	a3, s3
80002a60: e7 80 0d 00  	jalr	s11
80002a64: 13 84 04 00  	mv	s0, s1
80002a68: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
80002a6c: e3 9c 0c fc  	bnez	s9, 0x80002a44 <_ntoa_format+0x2c8>
80002a70: 6f 00 80 00  	j	0x80002a78 <_ntoa_format+0x2fc>
80002a74: 93 04 04 00  	mv	s1, s0
80002a78: 33 85 44 41  	sub	a0, s1, s4
80002a7c: 33 35 25 01  	sltu	a0, a0, s2
80002a80: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80002a84: 93 c5 1a 00  	xori	a1, s5, 1
80002a88: 33 e5 a5 00  	or	a0, a1, a0
80002a8c: 63 18 05 02  	bnez	a0, 0x80002abc <_ntoa_format+0x340>
;     while (idx - start_idx < width) {
80002a90: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80002a94: 13 84 14 00  	addi	s0, s1, 1
80002a98: 13 05 00 02  	addi	a0, zero, 32
80002a9c: 93 05 0b 00  	mv	a1, s6
80002aa0: 13 86 04 00  	mv	a2, s1
80002aa4: 93 86 09 00  	mv	a3, s3
80002aa8: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
80002aac: 33 05 8a 00  	add	a0, s4, s0
80002ab0: 93 04 04 00  	mv	s1, s0
80002ab4: e3 60 25 ff  	bltu	a0, s2, 0x80002a94 <_ntoa_format+0x318>
80002ab8: 6f 00 80 00  	j	0x80002ac0 <_ntoa_format+0x344>
80002abc: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002ac0: 13 05 04 00  	mv	a0, s0
80002ac4: 83 2d c1 00  	lw	s11, 12(sp)
80002ac8: 03 2d 01 01  	lw	s10, 16(sp)
80002acc: 83 2c 41 01  	lw	s9, 20(sp)
80002ad0: 03 2c 81 01  	lw	s8, 24(sp)
80002ad4: 83 2b c1 01  	lw	s7, 28(sp)
80002ad8: 03 2b 01 02  	lw	s6, 32(sp)
80002adc: 83 2a 41 02  	lw	s5, 36(sp)
80002ae0: 03 2a 81 02  	lw	s4, 40(sp)
80002ae4: 83 29 c1 02  	lw	s3, 44(sp)
80002ae8: 03 29 01 03  	lw	s2, 48(sp)
80002aec: 83 24 41 03  	lw	s1, 52(sp)
80002af0: 03 24 81 03  	lw	s0, 56(sp)
80002af4: 83 20 c1 03  	lw	ra, 60(sp)
80002af8: 13 01 01 04  	addi	sp, sp, 64
80002afc: 67 80 00 00  	ret

80002b00 <_snrt_init_team>:
;     team->base.root = team;
80002b00: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002b04: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002b08: 03 23 87 00  	lw	t1, 8(a4)
80002b0c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002b10: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002b14: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002b18: 83 22 47 00  	lw	t0, 4(a4)
80002b1c: 33 88 08 03  	mul	a6, a7, a6
80002b20: 33 05 58 02  	mul	a0, a6, t0
80002b24: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002b28: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002b2c: 33 85 68 40  	sub	a0, a7, t1
80002b30: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002b34: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002b38: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002b3c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002b40: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002b44: 03 25 87 01  	lw	a0, 24(a4)
80002b48: b7 05 00 10  	lui	a1, 65536
80002b4c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002b50: 23 a2 07 02  	sw	zero, 36(a5)
80002b54: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002b58: 03 25 07 02  	lw	a0, 32(a4)
80002b5c: 83 25 47 02  	lw	a1, 36(a4)
80002b60: 23 a4 a7 02  	sw	a0, 40(a5)
80002b64: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002b68: 23 a8 c7 02  	sw	a2, 48(a5)
80002b6c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002b70: 23 ac d7 02  	sw	a3, 56(a5)
80002b74: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002b78: 03 25 07 01  	lw	a0, 16(a4)
80002b7c: 33 08 a6 00  	add	a6, a2, a0
80002b80: 93 05 08 19  	addi	a1, a6, 400
80002b84: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002b88: b3 32 a8 00  	sltu	t0, a6, a0
80002b8c: 93 55 15 00  	srli	a1, a0, 1
80002b90: 33 03 b8 00  	add	t1, a6, a1
80002b94: b3 35 03 01  	sltu	a1, t1, a6
80002b98: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002b9c: 23 a0 67 04  	sw	t1, 64(a5)
80002ba0: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002ba4: 13 15 15 00  	slli	a0, a0, 1
80002ba8: b3 05 c5 00  	add	a1, a0, a2
80002bac: 33 b5 a5 00  	sltu	a0, a1, a0
80002bb0: 23 a4 b7 04  	sw	a1, 72(a5)
80002bb4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002bb8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002bbc: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002bc0: 37 05 00 00  	lui	a0, 0
80002bc4: 33 05 45 00  	add	a0, a0, tp
80002bc8: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002bcc: 03 a5 07 00  	lw	a0, 0(a5)
80002bd0: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002bd4: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002bd8: b3 85 b8 40  	sub	a1, a7, a1
80002bdc: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002be0: b7 05 00 00  	lui	a1, 0
80002be4: b3 85 45 00  	add	a1, a1, tp
80002be8: 23 a2 a5 00  	sw	a0, 4(a1)
80002bec: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002bf0: 33 85 a8 02  	mul	a0, a7, a0

80002bf4 <.LBB0_1>:
80002bf4: 97 15 00 00  	auipc	a1, 1
80002bf8: 93 85 85 96  	addi	a1, a1, -1688
80002bfc: 33 05 b5 00  	add	a0, a0, a1
80002c00: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002c04: 83 28 07 03  	lw	a7, 48(a4)
80002c08: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002c0c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002c10: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002c14: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80002c18: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002c1c: 13 05 76 00  	addi	a0, a2, 7
80002c20: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002c24: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002c28: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002c2c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002c30: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002c34: 03 a5 05 00  	lw	a0, 0(a1)
80002c38: 13 05 f5 44  	addi	a0, a0, 1103
80002c3c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002c40: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002c44: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002c48: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002c4c: 37 05 00 00  	lui	a0, 0
80002c50: 33 05 45 00  	add	a0, a0, tp
80002c54: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002c58: 37 05 00 00  	lui	a0, 0
80002c5c: 33 05 45 00  	add	a0, a0, tp
80002c60: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002c64: 67 80 00 00  	ret

80002c68 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002c68: 37 05 00 00  	lui	a0, 0
80002c6c: 33 05 45 00  	add	a0, a0, tp
80002c70: 03 25 05 00  	lw	a0, 0(a0)
80002c74: 03 25 05 00  	lw	a0, 0(a0)
80002c78: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002c7c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002c80: 33 85 a5 40  	sub	a0, a1, a0
80002c84: 67 80 00 00  	ret

80002c88 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002c88: 37 05 00 00  	lui	a0, 0
80002c8c: 33 05 45 00  	add	a0, a0, tp
80002c90: 03 25 05 00  	lw	a0, 0(a0)
80002c94: 03 25 05 00  	lw	a0, 0(a0)
80002c98: 03 25 05 07  	lw	a0, 112(a0)
80002c9c: 67 80 00 00  	ret

80002ca0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002ca0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002ca4: 63 44 05 00  	bltz	a0, 0x80002cac <__snrt_isr+0xc>
;         while (1)
80002ca8: 6f 00 00 00  	j	0x80002ca8 <__snrt_isr+0x8>
80002cac: b7 05 00 80  	lui	a1, 524288
80002cb0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002cb4: 33 75 b5 00  	and	a0, a0, a1
80002cb8: 13 05 d5 ff  	addi	a0, a0, -3
80002cbc: 93 55 25 00  	srli	a1, a0, 2
80002cc0: 13 15 e5 01  	slli	a0, a0, 30
80002cc4: 33 65 b5 00  	or	a0, a0, a1
80002cc8: 93 05 40 00  	addi	a1, zero, 4
80002ccc: 63 0a b5 06  	beq	a0, a1, 0x80002d40 <.LBB1_7+0x58>
80002cd0: 63 1a 05 08  	bnez	a0, 0x80002d64 <.LBB1_7+0x7c>
80002cd4: 37 05 00 00  	lui	a0, 0
80002cd8: 33 05 45 00  	add	a0, a0, tp
80002cdc: 03 25 05 00  	lw	a0, 0(a0)
80002ce0: 03 25 05 00  	lw	a0, 0(a0)
80002ce4: f3 25 40 f1  	csrr	a1, mhartid

80002ce8 <.LBB1_7>:
;     asm volatile(
80002ce8: 17 16 00 00  	auipc	a2, 1
80002cec: 13 06 06 87  	addi	a2, a2, -1936
80002cf0: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002cf4: 93 06 06 00  	mv	a3, a2
80002cf8: 93 02 10 00  	addi	t0, zero, 1
80002cfc: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002d00: e3 9e 02 fe  	bnez	t0, 0x80002cfc <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002d04: b7 06 00 00  	lui	a3, 0
80002d08: b3 86 46 00  	add	a3, a3, tp
80002d0c: 83 a6 86 00  	lw	a3, 8(a3)
80002d10: 33 85 a5 40  	sub	a0, a1, a0
80002d14: 93 55 35 00  	srli	a1, a0, 3
80002d18: 93 f5 c5 ff  	andi	a1, a1, -4
80002d1c: b3 85 b6 00  	add	a1, a3, a1
80002d20: 83 a6 05 00  	lw	a3, 0(a1)
80002d24: 13 07 10 00  	addi	a4, zero, 1
80002d28: 33 15 a7 00  	sll	a0, a4, a0
80002d2c: 13 45 f5 ff  	not	a0, a0
80002d30: 33 f5 a6 00  	and	a0, a3, a0
80002d34: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002d38: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002d3c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002d40: 37 05 00 00  	lui	a0, 0
80002d44: 33 05 45 00  	add	a0, a0, tp
80002d48: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002d4c: b7 05 00 00  	lui	a1, 0
80002d50: b3 85 45 00  	add	a1, a1, tp
80002d54: 83 a5 c5 00  	lw	a1, 12(a1)
80002d58: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002d5c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002d60: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002d64: 67 80 00 00  	ret

Disassembly of section .init:

80002d70 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002d70: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002d74: 93 81 81 f1  	addi	gp, gp, -232

80002d78 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002d78: 97 00 00 00  	auipc	ra, 0
80002d7c: e7 80 40 3c  	jalr	964(ra)

80002d80 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002d80: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002d84: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002d88: 97 00 00 00  	auipc	ra, 0
80002d8c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002d90: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002d94: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002d98: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002d9c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002da0: 63 92 02 02  	bnez	t0, 0x80002dc4 <snrt.crt0.init_registers>

80002da4 <.Lpcrel_hi0>:
;     la        t0, _edata
80002da4: 97 02 00 00  	auipc	t0, 0
80002da8: 93 82 42 7b  	addi	t0, t0, 1972

80002dac <.Lpcrel_hi1>:
;     la        t1, _end
80002dac: 17 03 00 00  	auipc	t1, 0
80002db0: 13 03 03 7b  	addi	t1, t1, 1968
;     bge       t0, t1, 2f
80002db4: 63 d8 62 00  	bge	t0, t1, 0x80002dc4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002db8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002dbc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002dc0: e3 cc 62 fe  	blt	t0, t1, 0x80002db8 <.Lpcrel_hi1+0xc>

80002dc4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002dc4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002dc8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002dcc: 63 82 02 08  	beqz	t0, 0x80002e50 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002dd0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002dd4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002dd8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002ddc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002de0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002de4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002de8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002dec: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002df0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002df4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002df8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002dfc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002e00: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002e04: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002e08: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002e0c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002e10: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002e14: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002e18: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002e1c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002e20: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002e24: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002e28: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002e2c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002e30: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002e34: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002e38: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002e3c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002e40: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002e44: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002e48: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002e4c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002e50 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002e50: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002e54: 23 a0 06 00  	sw	zero, 0(a3)

80002e58 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002e58: 97 02 00 00  	auipc	t0, 0
80002e5c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80002e60: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002e64: 93 87 06 00  	mv	a5, a3

80002e68 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002e68: 97 03 00 00  	auipc	t2, 0
80002e6c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80002e70: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002e74: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002e78: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002e7c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002e80: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002e84: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002e88: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002e8c: b3 86 66 40  	sub	a3, a3, t1

80002e90 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002e90: 97 02 00 00  	auipc	t0, 0
80002e94: 93 82 82 5f  	addi	t0, t0, 1528

80002e98 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002e98: 17 03 00 00  	auipc	t1, 0
80002e9c: 13 03 03 5f  	addi	t1, t1, 1520

80002ea0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002ea0: 97 03 00 00  	auipc	t2, 0
80002ea4: 93 83 83 5e  	addi	t2, t2, 1512

80002ea8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002ea8: 17 0e 00 00  	auipc	t3, 0
80002eac: 13 0e 0e 5f  	addi	t3, t3, 1520
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002eb0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002eb4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002eb8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002ebc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002ec0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002ec4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002ec8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002ecc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002ed0: 63 dc 62 00  	bge	t0, t1, 0x80002ee8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002ed4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002ed8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002edc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002ee0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002ee4: e3 c8 62 fe  	blt	t0, t1, 0x80002ed4 <.Lpcrel_hi7+0x2c>

80002ee8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002ee8: 97 02 00 00  	auipc	t0, 0
80002eec: 93 82 02 5a  	addi	t0, t0, 1440

80002ef0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002ef0: 17 03 00 00  	auipc	t1, 0
80002ef4: 13 03 83 5a  	addi	t1, t1, 1448
;     bge       t0, t1, 2f
80002ef8: 63 da 62 00  	bge	t0, t1, 0x80002f0c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002efc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002f00: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002f04: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002f08: e3 ca 72 fe  	blt	t0, t2, 0x80002efc <.Lpcrel_hi9+0xc>

80002f0c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002f0c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002f10: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002f14: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002f18: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002f1c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002f20: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002f24: 97 00 00 00  	auipc	ra, 0
80002f28: e7 80 c0 bd  	jalr	-1060(ra)
;     lw        a0, 0(sp)
80002f2c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002f30: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002f34: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002f38: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002f3c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002f40: 13 01 41 01  	addi	sp, sp, 20

80002f44 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002f44: 97 02 00 00  	auipc	t0, 0
80002f48: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002f4c: 73 90 52 30  	csrw	mtvec, t0

80002f50 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002f50: 97 00 00 00  	auipc	ra, 0
80002f54: e7 80 00 22  	jalr	544(ra)

80002f58 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002f58: 97 d0 ff ff  	auipc	ra, 1048573
80002f5c: e7 80 c0 6d  	jalr	1756(ra)
;     mv        s0, a0 # store return value in s0
80002f60: 13 04 05 00  	mv	s0, a0

80002f64 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002f64: 97 00 00 00  	auipc	ra, 0
80002f68: e7 80 c0 20  	jalr	524(ra)

80002f6c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002f6c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002f70: 97 00 00 00  	auipc	ra, 0
80002f74: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002f78: 73 00 50 10  	wfi	
;     j       1b
80002f7c: 6f f0 df ff  	j	0x80002f78 <snrt.crt0.end+0xc>

80002f80 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002f80: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002f84: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002f88: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002f8c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002f90: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002f94: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002f98: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002f9c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002fa0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002fa4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002fa8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002fac: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002fb0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002fb4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002fb8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002fbc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002fc0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002fc4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002fc8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002fcc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002fd0: 63 84 02 08  	beqz	t0, 0x80003058 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002fd4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002fd8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002fdc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002fe0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002fe4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002fe8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002fec: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002ff0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002ff4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002ff8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002ffc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80003000: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80003004: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80003008: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000300c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80003010: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80003014: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80003018: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000301c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80003020: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80003024: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80003028: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000302c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80003030: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80003034: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80003038: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000303c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80003040: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80003044: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80003048: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000304c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80003050: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80003054: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80003058: 97 00 00 00  	auipc	ra, 0
8000305c: e7 80 80 c4  	jalr	-952(ra)
;     csrr    t0, misa
80003060: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80003064: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80003068: 63 84 02 08  	beqz	t0, 0x800030f0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000306c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80003070: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80003074: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80003078: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000307c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80003080: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80003084: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80003088: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000308c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80003090: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80003094: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80003098: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000309c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800030a0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800030a4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800030a8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800030ac: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800030b0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800030b4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800030b8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800030bc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800030c0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800030c4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800030c8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800030cc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800030d0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800030d4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800030d8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800030dc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800030e0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800030e4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800030e8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800030ec: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
800030f0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
800030f4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
800030f8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
800030fc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003100: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003104: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003108: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000310c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003110: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003114: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003118: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000311c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003120: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003124: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003128: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000312c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003130: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003134: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003138: 73 00 20 30  	mret	

8000313c <_snrt_init_core_info>:
;     mv        a4, a1
8000313c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003140: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003144: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003148: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000314c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003150: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003154: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003158: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000315c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003160: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003164: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003168: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000316c: 67 80 00 00  	ret

80003170 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003170: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003174: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003178: 97 00 00 00  	auipc	ra, 0
8000317c: e7 80 00 b1  	jalr	-1264(ra)
;     lw        a0, 0(a0)
80003180: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003184: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003188: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000318c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80003190: 67 80 00 00  	ret

80003194 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80003194: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80003198: 67 80 00 00  	ret

8000319c <_snrt_exit>:
;     addi      sp, sp, -8
8000319c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800031a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800031a4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800031a8: 97 00 00 00  	auipc	ra, 0
800031ac: e7 80 00 ac  	jalr	-1344(ra)
;     lw        t0, 0(sp)
800031b0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800031b4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800031b8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800031bc: 63 1c 05 00  	bnez	a0, 0x800031d4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800031c0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800031c4: 93 e2 12 00  	ori	t0, t0, 1

800031c8 <.Lpcrel_hi11>:
;     la        t1, tohost
800031c8: 17 03 00 00  	auipc	t1, 0
800031cc: 13 03 83 27  	addi	t1, t1, 632
;     sw        t0, 0(t1)
800031d0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800031d4: 67 80 00 00  	ret
