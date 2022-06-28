
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-dma_simple:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00000a0c 80000000 TEXT
  2 .init             00000468 80000a10 TEXT
  3 .rodata           00000008 80000e78 DATA
  4 .htif             00000048 80000e80 DATA
  5 .tdata            00000000 80000ec8 DATA
  6 .tbss             00000010 80000ec8 BSS
  7 .tbssend          00000000 80000ed8 DATA
  8 .sdata            00000000 80000ed8 DATA
  9 .data             00000000 80000ed8 DATA
 10 .sbss             00000004 80000ed8 BSS
 11 .bss              00000080 80000edc BSS
 12 .dram             00000000 80000f5c DATA
 13 .debug_info       00001a01 00000000 
 14 .debug_abbrev     000006df 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00001674 00000000 
 17 .debug_loc        000006ed 00000000 
 18 .debug_ranges     00000098 00000000 
 19 .debug_str        000007b7 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000124 00000000 
 23 .symtab           00000f80 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000499 00000000 


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

800000dc <main>:
; int main() {
800000dc: 13 01 01 ef  	addi	sp, sp, -272
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800000e0: 23 26 11 10  	sw	ra, 268(sp)
800000e4: 23 24 81 10  	sw	s0, 264(sp)
800000e8: 23 22 91 10  	sw	s1, 260(sp)
800000ec: 37 05 00 00  	lui	a0, 0
800000f0: 33 05 45 00  	add	a0, a0, tp
800000f4: 03 25 05 00  	lw	a0, 0(a0)
800000f8: 03 25 05 00  	lw	a0, 0(a0)
800000fc: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000100: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000104: 33 85 a5 40  	sub	a0, a1, a0
80000108: 93 04 80 00  	addi	s1, zero, 8
;     if (snrt_global_core_idx() != 8) return 0;  // only DMA core
8000010c: 63 10 95 68  	bne	a0, s1, 0x8000078c <.LBB0_4+0x67c>

80000110 <.LBB0_4>:
80000110: 17 14 00 00  	auipc	s0, 1
80000114: 13 04 c4 dc  	addi	s0, s0, -564
;         buffer[i] = 0xAAAAAAAA;
80000118: 93 05 a0 0a  	addi	a1, zero, 170
8000011c: 13 06 00 08  	addi	a2, zero, 128
80000120: 13 05 04 00  	mv	a0, s0
80000124: 97 00 00 00  	auipc	ra, 0
80000128: e7 80 c0 ed  	jalr	-292(ra)
;         buffer_dst[i] = 0x55555555;
8000012c: 13 05 41 00  	addi	a0, sp, 4
80000130: 93 05 50 05  	addi	a1, zero, 85
80000134: 13 06 00 08  	addi	a2, zero, 128
80000138: 97 00 00 00  	auipc	ra, 0
8000013c: e7 80 80 ec  	jalr	-312(ra)
80000140: 13 05 10 00  	addi	a0, zero, 1
;         buffer_src[i] = i + 1;
80000144: 23 22 a1 08  	sw	a0, 132(sp)
80000148: 13 05 20 00  	addi	a0, zero, 2
8000014c: 23 24 a1 08  	sw	a0, 136(sp)
80000150: 13 05 30 00  	addi	a0, zero, 3
80000154: 23 26 a1 08  	sw	a0, 140(sp)
80000158: 13 05 40 00  	addi	a0, zero, 4
8000015c: 23 28 a1 08  	sw	a0, 144(sp)
80000160: 13 05 50 00  	addi	a0, zero, 5
80000164: 23 2a a1 08  	sw	a0, 148(sp)
80000168: 13 05 60 00  	addi	a0, zero, 6
8000016c: 23 2c a1 08  	sw	a0, 152(sp)
80000170: 13 05 70 00  	addi	a0, zero, 7
80000174: 23 2e a1 08  	sw	a0, 156(sp)
80000178: 23 20 91 0a  	sw	s1, 160(sp)
8000017c: 13 05 90 00  	addi	a0, zero, 9
80000180: 23 22 a1 0a  	sw	a0, 164(sp)
80000184: 13 05 a0 00  	addi	a0, zero, 10
80000188: 23 24 a1 0a  	sw	a0, 168(sp)
8000018c: 13 05 b0 00  	addi	a0, zero, 11
80000190: 23 26 a1 0a  	sw	a0, 172(sp)
80000194: 13 05 c0 00  	addi	a0, zero, 12
80000198: 23 28 a1 0a  	sw	a0, 176(sp)
8000019c: 13 05 d0 00  	addi	a0, zero, 13
800001a0: 23 2a a1 0a  	sw	a0, 180(sp)
800001a4: 13 05 e0 00  	addi	a0, zero, 14
800001a8: 23 2c a1 0a  	sw	a0, 184(sp)
800001ac: 13 05 f0 00  	addi	a0, zero, 15
800001b0: 23 2e a1 0a  	sw	a0, 188(sp)
800001b4: 13 05 00 01  	addi	a0, zero, 16
800001b8: 23 20 a1 0c  	sw	a0, 192(sp)
800001bc: 13 05 10 01  	addi	a0, zero, 17
800001c0: 23 22 a1 0c  	sw	a0, 196(sp)
800001c4: 13 05 20 01  	addi	a0, zero, 18
800001c8: 23 24 a1 0c  	sw	a0, 200(sp)
800001cc: 13 05 30 01  	addi	a0, zero, 19
800001d0: 23 26 a1 0c  	sw	a0, 204(sp)
800001d4: 13 05 40 01  	addi	a0, zero, 20
800001d8: 23 28 a1 0c  	sw	a0, 208(sp)
800001dc: 13 05 50 01  	addi	a0, zero, 21
800001e0: 23 2a a1 0c  	sw	a0, 212(sp)
800001e4: 13 05 60 01  	addi	a0, zero, 22
800001e8: 23 2c a1 0c  	sw	a0, 216(sp)
800001ec: 13 05 70 01  	addi	a0, zero, 23
800001f0: 23 2e a1 0c  	sw	a0, 220(sp)
800001f4: 13 05 80 01  	addi	a0, zero, 24
800001f8: 23 20 a1 0e  	sw	a0, 224(sp)
800001fc: 13 05 90 01  	addi	a0, zero, 25
80000200: 23 22 a1 0e  	sw	a0, 228(sp)
80000204: 13 05 a0 01  	addi	a0, zero, 26
80000208: 23 24 a1 0e  	sw	a0, 232(sp)
8000020c: 13 05 b0 01  	addi	a0, zero, 27
80000210: 23 26 a1 0e  	sw	a0, 236(sp)
80000214: 13 05 c0 01  	addi	a0, zero, 28
80000218: 23 28 a1 0e  	sw	a0, 240(sp)
8000021c: 13 05 d0 01  	addi	a0, zero, 29
80000220: 23 2a a1 0e  	sw	a0, 244(sp)
80000224: 13 05 e0 01  	addi	a0, zero, 30
80000228: 23 2c a1 0e  	sw	a0, 248(sp)
8000022c: 13 05 f0 01  	addi	a0, zero, 31
80000230: 23 2e a1 0e  	sw	a0, 252(sp)
80000234: 13 05 00 02  	addi	a0, zero, 32
80000238: 23 20 a1 10  	sw	a0, 256(sp)
;     asm volatile(
8000023c: 13 06 41 08  	addi	a2, sp, 132
80000240: 93 06 00 00  	mv	a3, zero
80000244: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
80000248: 93 05 00 00  	mv	a1, zero
8000024c: 13 05 04 00  	mv	a0, s0
80000250: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
80000254: 13 07 00 08  	addi	a4, zero, 128
80000258: 2b 05 07 04  	dmcpyi	a0, a4, 0
;     asm volatile(
8000025c: ab 02 20 08  	dmstati	t0, 2
80000260: e3 9e 02 fe  	bnez	t0, 0x8000025c <.LBB0_4+0x14c>
;         errors += (buffer[i] != buffer_src[i]);
80000264: 03 25 04 00  	lw	a0, 0(s0)
80000268: 83 25 41 08  	lw	a1, 132(sp)
8000026c: 03 26 44 00  	lw	a2, 4(s0)
80000270: 83 26 81 08  	lw	a3, 136(sp)
80000274: 33 45 b5 00  	xor	a0, a0, a1
80000278: 33 35 a0 00  	snez	a0, a0
8000027c: b3 45 d6 00  	xor	a1, a2, a3
80000280: b3 35 b0 00  	snez	a1, a1
80000284: 03 26 84 00  	lw	a2, 8(s0)
80000288: 83 26 c1 08  	lw	a3, 140(sp)
8000028c: 33 85 a5 00  	add	a0, a1, a0
80000290: 83 25 c4 00  	lw	a1, 12(s0)
80000294: 03 27 01 09  	lw	a4, 144(sp)
80000298: 33 46 d6 00  	xor	a2, a2, a3
8000029c: 33 36 c0 00  	snez	a2, a2
800002a0: 33 05 c5 00  	add	a0, a0, a2
800002a4: b3 c5 e5 00  	xor	a1, a1, a4
800002a8: b3 35 b0 00  	snez	a1, a1
800002ac: 03 26 04 01  	lw	a2, 16(s0)
800002b0: 83 26 41 09  	lw	a3, 148(sp)
800002b4: 33 05 b5 00  	add	a0, a0, a1
800002b8: 83 25 44 01  	lw	a1, 20(s0)
800002bc: 03 27 81 09  	lw	a4, 152(sp)
800002c0: 33 46 d6 00  	xor	a2, a2, a3
800002c4: 33 36 c0 00  	snez	a2, a2
800002c8: 33 05 c5 00  	add	a0, a0, a2
800002cc: b3 c5 e5 00  	xor	a1, a1, a4
800002d0: b3 35 b0 00  	snez	a1, a1
800002d4: 03 26 84 01  	lw	a2, 24(s0)
800002d8: 83 26 c1 09  	lw	a3, 156(sp)
800002dc: 33 05 b5 00  	add	a0, a0, a1
800002e0: 83 25 c4 01  	lw	a1, 28(s0)
800002e4: 03 27 01 0a  	lw	a4, 160(sp)
800002e8: 33 46 d6 00  	xor	a2, a2, a3
800002ec: 33 36 c0 00  	snez	a2, a2
800002f0: 33 05 c5 00  	add	a0, a0, a2
800002f4: b3 c5 e5 00  	xor	a1, a1, a4
800002f8: b3 35 b0 00  	snez	a1, a1
800002fc: 03 26 04 02  	lw	a2, 32(s0)
80000300: 83 26 41 0a  	lw	a3, 164(sp)
80000304: 33 05 b5 00  	add	a0, a0, a1
80000308: 83 25 44 02  	lw	a1, 36(s0)
8000030c: 03 27 81 0a  	lw	a4, 168(sp)
80000310: 33 46 d6 00  	xor	a2, a2, a3
80000314: 33 36 c0 00  	snez	a2, a2
80000318: 33 05 c5 00  	add	a0, a0, a2
8000031c: b3 c5 e5 00  	xor	a1, a1, a4
80000320: b3 35 b0 00  	snez	a1, a1
80000324: 03 26 84 02  	lw	a2, 40(s0)
80000328: 83 26 c1 0a  	lw	a3, 172(sp)
8000032c: 33 05 b5 00  	add	a0, a0, a1
80000330: 83 25 c4 02  	lw	a1, 44(s0)
80000334: 03 27 01 0b  	lw	a4, 176(sp)
80000338: 33 46 d6 00  	xor	a2, a2, a3
8000033c: 33 36 c0 00  	snez	a2, a2
80000340: 33 05 c5 00  	add	a0, a0, a2
80000344: b3 c5 e5 00  	xor	a1, a1, a4
80000348: b3 35 b0 00  	snez	a1, a1
8000034c: 03 26 04 03  	lw	a2, 48(s0)
80000350: 83 26 41 0b  	lw	a3, 180(sp)
80000354: 33 05 b5 00  	add	a0, a0, a1
80000358: 83 25 44 03  	lw	a1, 52(s0)
8000035c: 03 27 81 0b  	lw	a4, 184(sp)
80000360: 33 46 d6 00  	xor	a2, a2, a3
80000364: 33 36 c0 00  	snez	a2, a2
80000368: 33 05 c5 00  	add	a0, a0, a2
8000036c: b3 c5 e5 00  	xor	a1, a1, a4
80000370: b3 35 b0 00  	snez	a1, a1
80000374: 03 26 84 03  	lw	a2, 56(s0)
80000378: 83 26 c1 0b  	lw	a3, 188(sp)
8000037c: 33 05 b5 00  	add	a0, a0, a1
80000380: 83 25 c4 03  	lw	a1, 60(s0)
80000384: 03 27 01 0c  	lw	a4, 192(sp)
80000388: 33 46 d6 00  	xor	a2, a2, a3
8000038c: 33 36 c0 00  	snez	a2, a2
80000390: 33 05 c5 00  	add	a0, a0, a2
80000394: b3 c5 e5 00  	xor	a1, a1, a4
80000398: b3 35 b0 00  	snez	a1, a1
8000039c: 03 26 04 04  	lw	a2, 64(s0)
800003a0: 83 26 41 0c  	lw	a3, 196(sp)
800003a4: 33 05 b5 00  	add	a0, a0, a1
800003a8: 83 25 44 04  	lw	a1, 68(s0)
800003ac: 03 27 81 0c  	lw	a4, 200(sp)
800003b0: 33 46 d6 00  	xor	a2, a2, a3
800003b4: 33 36 c0 00  	snez	a2, a2
800003b8: 33 05 c5 00  	add	a0, a0, a2
800003bc: b3 c5 e5 00  	xor	a1, a1, a4
800003c0: b3 35 b0 00  	snez	a1, a1
800003c4: 03 26 84 04  	lw	a2, 72(s0)
800003c8: 83 26 c1 0c  	lw	a3, 204(sp)
800003cc: 33 05 b5 00  	add	a0, a0, a1
800003d0: 83 25 c4 04  	lw	a1, 76(s0)
800003d4: 03 27 01 0d  	lw	a4, 208(sp)
800003d8: 33 46 d6 00  	xor	a2, a2, a3
800003dc: 33 36 c0 00  	snez	a2, a2
800003e0: 33 05 c5 00  	add	a0, a0, a2
800003e4: b3 c5 e5 00  	xor	a1, a1, a4
800003e8: b3 35 b0 00  	snez	a1, a1
800003ec: 03 26 04 05  	lw	a2, 80(s0)
800003f0: 83 26 41 0d  	lw	a3, 212(sp)
800003f4: 33 05 b5 00  	add	a0, a0, a1
800003f8: 83 25 44 05  	lw	a1, 84(s0)
800003fc: 03 27 81 0d  	lw	a4, 216(sp)
80000400: 33 46 d6 00  	xor	a2, a2, a3
80000404: 33 36 c0 00  	snez	a2, a2
80000408: 33 05 c5 00  	add	a0, a0, a2
8000040c: b3 c5 e5 00  	xor	a1, a1, a4
80000410: b3 35 b0 00  	snez	a1, a1
80000414: 03 26 84 05  	lw	a2, 88(s0)
80000418: 83 26 c1 0d  	lw	a3, 220(sp)
8000041c: 33 05 b5 00  	add	a0, a0, a1
80000420: 83 25 c4 05  	lw	a1, 92(s0)
80000424: 03 27 01 0e  	lw	a4, 224(sp)
80000428: 33 46 d6 00  	xor	a2, a2, a3
8000042c: 33 36 c0 00  	snez	a2, a2
80000430: 33 05 c5 00  	add	a0, a0, a2
80000434: b3 c5 e5 00  	xor	a1, a1, a4
80000438: b3 35 b0 00  	snez	a1, a1
8000043c: 03 26 04 06  	lw	a2, 96(s0)
80000440: 83 26 41 0e  	lw	a3, 228(sp)
80000444: 33 05 b5 00  	add	a0, a0, a1
80000448: 83 25 44 06  	lw	a1, 100(s0)
8000044c: 03 27 81 0e  	lw	a4, 232(sp)
80000450: 33 46 d6 00  	xor	a2, a2, a3
80000454: 33 36 c0 00  	snez	a2, a2
80000458: 33 05 c5 00  	add	a0, a0, a2
8000045c: b3 c5 e5 00  	xor	a1, a1, a4
80000460: b3 35 b0 00  	snez	a1, a1
80000464: 03 26 84 06  	lw	a2, 104(s0)
80000468: 83 26 c1 0e  	lw	a3, 236(sp)
8000046c: 33 05 b5 00  	add	a0, a0, a1
80000470: 83 25 c4 06  	lw	a1, 108(s0)
80000474: 03 27 01 0f  	lw	a4, 240(sp)
80000478: 33 46 d6 00  	xor	a2, a2, a3
8000047c: 33 36 c0 00  	snez	a2, a2
80000480: 33 05 c5 00  	add	a0, a0, a2
80000484: b3 c5 e5 00  	xor	a1, a1, a4
80000488: b3 35 b0 00  	snez	a1, a1
8000048c: 03 26 04 07  	lw	a2, 112(s0)
80000490: 83 26 41 0f  	lw	a3, 244(sp)
80000494: 33 05 b5 00  	add	a0, a0, a1
80000498: 83 25 44 07  	lw	a1, 116(s0)
8000049c: 03 27 81 0f  	lw	a4, 248(sp)
800004a0: 33 46 d6 00  	xor	a2, a2, a3
800004a4: 33 36 c0 00  	snez	a2, a2
800004a8: 33 05 c5 00  	add	a0, a0, a2
800004ac: b3 c5 e5 00  	xor	a1, a1, a4
800004b0: b3 35 b0 00  	snez	a1, a1
800004b4: 03 26 84 07  	lw	a2, 120(s0)
800004b8: 83 26 c1 0f  	lw	a3, 252(sp)
800004bc: 33 05 b5 00  	add	a0, a0, a1
800004c0: 83 25 c4 07  	lw	a1, 124(s0)
800004c4: 03 27 01 10  	lw	a4, 256(sp)
800004c8: 33 46 d6 00  	xor	a2, a2, a3
800004cc: 33 36 c0 00  	snez	a2, a2
800004d0: b3 07 c5 00  	add	a5, a0, a2
800004d4: 33 c5 e5 00  	xor	a0, a1, a4
800004d8: b3 34 a0 00  	snez	s1, a0
;     asm volatile(
800004dc: 93 06 00 00  	mv	a3, zero
800004e0: 13 06 04 00  	mv	a2, s0
800004e4: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
800004e8: 13 05 41 00  	addi	a0, sp, 4
800004ec: 93 05 00 00  	mv	a1, zero
800004f0: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
800004f4: 13 07 00 08  	addi	a4, zero, 128
800004f8: 2b 05 07 04  	dmcpyi	a0, a4, 0
;     asm volatile(
800004fc: ab 02 20 08  	dmstati	t0, 2
80000500: e3 9e 02 fe  	bnez	t0, 0x800004fc <.LBB0_4+0x3ec>
;         errors += (buffer_dst[i] != buffer_src[i]);
80000504: 03 25 41 00  	lw	a0, 4(sp)
80000508: 83 25 41 08  	lw	a1, 132(sp)
;         errors += (buffer[i] != buffer_src[i]);
8000050c: 33 86 97 00  	add	a2, a5, s1
;         errors += (buffer_dst[i] != buffer_src[i]);
80000510: 83 26 81 00  	lw	a3, 8(sp)
80000514: 03 27 81 08  	lw	a4, 136(sp)
80000518: 33 45 b5 00  	xor	a0, a0, a1
8000051c: 33 35 a0 00  	snez	a0, a0
80000520: 33 05 a6 00  	add	a0, a2, a0
80000524: b3 c5 e6 00  	xor	a1, a3, a4
80000528: b3 35 b0 00  	snez	a1, a1
8000052c: 03 26 c1 00  	lw	a2, 12(sp)
80000530: 83 26 c1 08  	lw	a3, 140(sp)
80000534: 33 05 b5 00  	add	a0, a0, a1
80000538: 83 25 01 01  	lw	a1, 16(sp)
8000053c: 03 27 01 09  	lw	a4, 144(sp)
80000540: 33 46 d6 00  	xor	a2, a2, a3
80000544: 33 36 c0 00  	snez	a2, a2
80000548: 33 05 c5 00  	add	a0, a0, a2
8000054c: b3 c5 e5 00  	xor	a1, a1, a4
80000550: b3 35 b0 00  	snez	a1, a1
80000554: 03 26 41 01  	lw	a2, 20(sp)
80000558: 83 26 41 09  	lw	a3, 148(sp)
8000055c: 33 05 b5 00  	add	a0, a0, a1
80000560: 83 25 81 01  	lw	a1, 24(sp)
80000564: 03 27 81 09  	lw	a4, 152(sp)
80000568: 33 46 d6 00  	xor	a2, a2, a3
8000056c: 33 36 c0 00  	snez	a2, a2
80000570: 33 05 c5 00  	add	a0, a0, a2
80000574: b3 c5 e5 00  	xor	a1, a1, a4
80000578: b3 35 b0 00  	snez	a1, a1
8000057c: 03 26 c1 01  	lw	a2, 28(sp)
80000580: 83 26 c1 09  	lw	a3, 156(sp)
80000584: 33 05 b5 00  	add	a0, a0, a1
80000588: 83 25 01 02  	lw	a1, 32(sp)
8000058c: 03 27 01 0a  	lw	a4, 160(sp)
80000590: 33 46 d6 00  	xor	a2, a2, a3
80000594: 33 36 c0 00  	snez	a2, a2
80000598: 33 05 c5 00  	add	a0, a0, a2
8000059c: b3 c5 e5 00  	xor	a1, a1, a4
800005a0: b3 35 b0 00  	snez	a1, a1
800005a4: 03 26 41 02  	lw	a2, 36(sp)
800005a8: 83 26 41 0a  	lw	a3, 164(sp)
800005ac: 33 05 b5 00  	add	a0, a0, a1
800005b0: 83 25 81 02  	lw	a1, 40(sp)
800005b4: 03 27 81 0a  	lw	a4, 168(sp)
800005b8: 33 46 d6 00  	xor	a2, a2, a3
800005bc: 33 36 c0 00  	snez	a2, a2
800005c0: 33 05 c5 00  	add	a0, a0, a2
800005c4: b3 c5 e5 00  	xor	a1, a1, a4
800005c8: b3 35 b0 00  	snez	a1, a1
800005cc: 03 26 c1 02  	lw	a2, 44(sp)
800005d0: 83 26 c1 0a  	lw	a3, 172(sp)
800005d4: 33 05 b5 00  	add	a0, a0, a1
800005d8: 83 25 01 03  	lw	a1, 48(sp)
800005dc: 03 27 01 0b  	lw	a4, 176(sp)
800005e0: 33 46 d6 00  	xor	a2, a2, a3
800005e4: 33 36 c0 00  	snez	a2, a2
800005e8: 33 05 c5 00  	add	a0, a0, a2
800005ec: b3 c5 e5 00  	xor	a1, a1, a4
800005f0: b3 35 b0 00  	snez	a1, a1
800005f4: 03 26 41 03  	lw	a2, 52(sp)
800005f8: 83 26 41 0b  	lw	a3, 180(sp)
800005fc: 33 05 b5 00  	add	a0, a0, a1
80000600: 83 25 81 03  	lw	a1, 56(sp)
80000604: 03 27 81 0b  	lw	a4, 184(sp)
80000608: 33 46 d6 00  	xor	a2, a2, a3
8000060c: 33 36 c0 00  	snez	a2, a2
80000610: 33 05 c5 00  	add	a0, a0, a2
80000614: b3 c5 e5 00  	xor	a1, a1, a4
80000618: b3 35 b0 00  	snez	a1, a1
8000061c: 03 26 c1 03  	lw	a2, 60(sp)
80000620: 83 26 c1 0b  	lw	a3, 188(sp)
80000624: 33 05 b5 00  	add	a0, a0, a1
80000628: 83 25 01 04  	lw	a1, 64(sp)
8000062c: 03 27 01 0c  	lw	a4, 192(sp)
80000630: 33 46 d6 00  	xor	a2, a2, a3
80000634: 33 36 c0 00  	snez	a2, a2
80000638: 33 05 c5 00  	add	a0, a0, a2
8000063c: b3 c5 e5 00  	xor	a1, a1, a4
80000640: b3 35 b0 00  	snez	a1, a1
80000644: 03 26 41 04  	lw	a2, 68(sp)
80000648: 83 26 41 0c  	lw	a3, 196(sp)
8000064c: 33 05 b5 00  	add	a0, a0, a1
80000650: 83 25 81 04  	lw	a1, 72(sp)
80000654: 03 27 81 0c  	lw	a4, 200(sp)
80000658: 33 46 d6 00  	xor	a2, a2, a3
8000065c: 33 36 c0 00  	snez	a2, a2
80000660: 33 05 c5 00  	add	a0, a0, a2
80000664: b3 c5 e5 00  	xor	a1, a1, a4
80000668: b3 35 b0 00  	snez	a1, a1
8000066c: 03 26 c1 04  	lw	a2, 76(sp)
80000670: 83 26 c1 0c  	lw	a3, 204(sp)
80000674: 33 05 b5 00  	add	a0, a0, a1
80000678: 83 25 01 05  	lw	a1, 80(sp)
8000067c: 03 27 01 0d  	lw	a4, 208(sp)
80000680: 33 46 d6 00  	xor	a2, a2, a3
80000684: 33 36 c0 00  	snez	a2, a2
80000688: 33 05 c5 00  	add	a0, a0, a2
8000068c: b3 c5 e5 00  	xor	a1, a1, a4
80000690: b3 35 b0 00  	snez	a1, a1
80000694: 03 26 41 05  	lw	a2, 84(sp)
80000698: 83 26 41 0d  	lw	a3, 212(sp)
8000069c: 33 05 b5 00  	add	a0, a0, a1
800006a0: 83 25 81 05  	lw	a1, 88(sp)
800006a4: 03 27 81 0d  	lw	a4, 216(sp)
800006a8: 33 46 d6 00  	xor	a2, a2, a3
800006ac: 33 36 c0 00  	snez	a2, a2
800006b0: 33 05 c5 00  	add	a0, a0, a2
800006b4: b3 c5 e5 00  	xor	a1, a1, a4
800006b8: b3 35 b0 00  	snez	a1, a1
800006bc: 03 26 c1 05  	lw	a2, 92(sp)
800006c0: 83 26 c1 0d  	lw	a3, 220(sp)
800006c4: 33 05 b5 00  	add	a0, a0, a1
800006c8: 83 25 01 06  	lw	a1, 96(sp)
800006cc: 03 27 01 0e  	lw	a4, 224(sp)
800006d0: 33 46 d6 00  	xor	a2, a2, a3
800006d4: 33 36 c0 00  	snez	a2, a2
800006d8: 33 05 c5 00  	add	a0, a0, a2
800006dc: b3 c5 e5 00  	xor	a1, a1, a4
800006e0: b3 35 b0 00  	snez	a1, a1
800006e4: 03 26 41 06  	lw	a2, 100(sp)
800006e8: 83 26 41 0e  	lw	a3, 228(sp)
800006ec: 33 05 b5 00  	add	a0, a0, a1
800006f0: 83 25 81 06  	lw	a1, 104(sp)
800006f4: 03 27 81 0e  	lw	a4, 232(sp)
800006f8: 33 46 d6 00  	xor	a2, a2, a3
800006fc: 33 36 c0 00  	snez	a2, a2
80000700: 33 05 c5 00  	add	a0, a0, a2
80000704: b3 c5 e5 00  	xor	a1, a1, a4
80000708: b3 35 b0 00  	snez	a1, a1
8000070c: 03 26 c1 06  	lw	a2, 108(sp)
80000710: 83 26 c1 0e  	lw	a3, 236(sp)
80000714: 33 05 b5 00  	add	a0, a0, a1
80000718: 83 25 01 07  	lw	a1, 112(sp)
8000071c: 03 27 01 0f  	lw	a4, 240(sp)
80000720: 33 46 d6 00  	xor	a2, a2, a3
80000724: 33 36 c0 00  	snez	a2, a2
80000728: 33 05 c5 00  	add	a0, a0, a2
8000072c: b3 c5 e5 00  	xor	a1, a1, a4
80000730: b3 35 b0 00  	snez	a1, a1
80000734: 03 26 41 07  	lw	a2, 116(sp)
80000738: 83 26 41 0f  	lw	a3, 244(sp)
8000073c: 33 05 b5 00  	add	a0, a0, a1
80000740: 83 25 81 07  	lw	a1, 120(sp)
80000744: 03 27 81 0f  	lw	a4, 248(sp)
80000748: 33 46 d6 00  	xor	a2, a2, a3
8000074c: 33 36 c0 00  	snez	a2, a2
80000750: 33 05 c5 00  	add	a0, a0, a2
80000754: b3 c5 e5 00  	xor	a1, a1, a4
80000758: b3 35 b0 00  	snez	a1, a1
8000075c: 03 26 c1 07  	lw	a2, 124(sp)
80000760: 83 26 c1 0f  	lw	a3, 252(sp)
80000764: 33 05 b5 00  	add	a0, a0, a1
80000768: 83 25 01 08  	lw	a1, 128(sp)
8000076c: 03 27 01 10  	lw	a4, 256(sp)
80000770: 33 46 d6 00  	xor	a2, a2, a3
80000774: 33 36 c0 00  	snez	a2, a2
80000778: 33 05 c5 00  	add	a0, a0, a2
8000077c: b3 c5 e5 00  	xor	a1, a1, a4
80000780: b3 35 b0 00  	snez	a1, a1
80000784: 33 05 b5 00  	add	a0, a0, a1
80000788: 6f 00 80 00  	j	0x80000790 <.LBB0_4+0x680>
8000078c: 13 05 00 00  	mv	a0, zero
; }
80000790: 83 24 41 10  	lw	s1, 260(sp)
80000794: 03 24 81 10  	lw	s0, 264(sp)
80000798: 83 20 c1 10  	lw	ra, 268(sp)
8000079c: 13 01 01 11  	addi	sp, sp, 272
800007a0: 67 80 00 00  	ret

800007a4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800007a4: 37 05 00 00  	lui	a0, 0
800007a8: 33 05 45 00  	add	a0, a0, tp
800007ac: 03 25 05 00  	lw	a0, 0(a0)
800007b0: 03 25 05 00  	lw	a0, 0(a0)
800007b4: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800007b8: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800007bc: 33 85 a5 40  	sub	a0, a1, a0
800007c0: 67 80 00 00  	ret

800007c4 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800007c4: 37 05 00 00  	lui	a0, 0
800007c8: 33 05 45 00  	add	a0, a0, tp
800007cc: 03 25 05 00  	lw	a0, 0(a0)
800007d0: 03 25 05 00  	lw	a0, 0(a0)
800007d4: 03 25 05 07  	lw	a0, 112(a0)
800007d8: 67 80 00 00  	ret

800007dc <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800007dc: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800007e0: 63 44 05 00  	bltz	a0, 0x800007e8 <__snrt_isr+0xc>
;         while (1)
800007e4: 6f 00 00 00  	j	0x800007e4 <__snrt_isr+0x8>
800007e8: b7 05 00 80  	lui	a1, 524288
800007ec: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800007f0: 33 75 b5 00  	and	a0, a0, a1
800007f4: 13 05 d5 ff  	addi	a0, a0, -3
800007f8: 93 55 25 00  	srli	a1, a0, 2
800007fc: 13 15 e5 01  	slli	a0, a0, 30
80000800: 33 65 b5 00  	or	a0, a0, a1
80000804: 93 05 40 00  	addi	a1, zero, 4
80000808: 63 0a b5 06  	beq	a0, a1, 0x8000087c <.LBB1_7+0x58>
8000080c: 63 1a 05 08  	bnez	a0, 0x800008a0 <.LBB1_7+0x7c>
80000810: 37 05 00 00  	lui	a0, 0
80000814: 33 05 45 00  	add	a0, a0, tp
80000818: 03 25 05 00  	lw	a0, 0(a0)
8000081c: 03 25 05 00  	lw	a0, 0(a0)
80000820: f3 25 40 f1  	csrr	a1, mhartid

80000824 <.LBB1_7>:
;     asm volatile(
80000824: 17 06 00 00  	auipc	a2, 0
80000828: 13 06 46 6b  	addi	a2, a2, 1716
8000082c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000830: 93 06 06 00  	mv	a3, a2
80000834: 93 02 10 00  	addi	t0, zero, 1
80000838: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
8000083c: e3 9e 02 fe  	bnez	t0, 0x80000838 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000840: b7 06 00 00  	lui	a3, 0
80000844: b3 86 46 00  	add	a3, a3, tp
80000848: 83 a6 86 00  	lw	a3, 8(a3)
8000084c: 33 85 a5 40  	sub	a0, a1, a0
80000850: 93 55 35 00  	srli	a1, a0, 3
80000854: 93 f5 c5 ff  	andi	a1, a1, -4
80000858: b3 85 b6 00  	add	a1, a3, a1
8000085c: 83 a6 05 00  	lw	a3, 0(a1)
80000860: 13 07 10 00  	addi	a4, zero, 1
80000864: 33 15 a7 00  	sll	a0, a4, a0
80000868: 13 45 f5 ff  	not	a0, a0
8000086c: 33 f5 a6 00  	and	a0, a3, a0
80000870: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000874: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000878: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000087c: 37 05 00 00  	lui	a0, 0
80000880: 33 05 45 00  	add	a0, a0, tp
80000884: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000888: b7 05 00 00  	lui	a1, 0
8000088c: b3 85 45 00  	add	a1, a1, tp
80000890: 83 a5 c5 00  	lw	a1, 12(a1)
80000894: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000898: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000089c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800008a0: 67 80 00 00  	ret

800008a4 <_snrt_init_team>:
;     team->base.root = team;
800008a4: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800008a8: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800008ac: 03 23 87 00  	lw	t1, 8(a4)
800008b0: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800008b4: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800008b8: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800008bc: 83 22 47 00  	lw	t0, 4(a4)
800008c0: 33 88 08 03  	mul	a6, a7, a6
800008c4: 33 05 58 02  	mul	a0, a6, t0
800008c8: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800008cc: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800008d0: 33 85 68 40  	sub	a0, a7, t1
800008d4: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800008d8: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800008dc: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800008e0: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800008e4: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800008e8: 03 25 87 01  	lw	a0, 24(a4)
800008ec: b7 05 00 10  	lui	a1, 65536
800008f0: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800008f4: 23 a2 07 02  	sw	zero, 36(a5)
800008f8: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800008fc: 03 25 07 02  	lw	a0, 32(a4)
80000900: 83 25 47 02  	lw	a1, 36(a4)
80000904: 23 a4 a7 02  	sw	a0, 40(a5)
80000908: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
8000090c: 23 a8 c7 02  	sw	a2, 48(a5)
80000910: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000914: 23 ac d7 02  	sw	a3, 56(a5)
80000918: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
8000091c: 03 25 07 01  	lw	a0, 16(a4)
80000920: 33 08 a6 00  	add	a6, a2, a0
80000924: 93 05 08 19  	addi	a1, a6, 400
80000928: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
8000092c: b3 32 a8 00  	sltu	t0, a6, a0
80000930: 93 55 15 00  	srli	a1, a0, 1
80000934: 33 03 b8 00  	add	t1, a6, a1
80000938: b3 35 03 01  	sltu	a1, t1, a6
8000093c: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000940: 23 a0 67 04  	sw	t1, 64(a5)
80000944: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000948: 13 15 15 00  	slli	a0, a0, 1
8000094c: b3 05 c5 00  	add	a1, a0, a2
80000950: 33 b5 a5 00  	sltu	a0, a1, a0
80000954: 23 a4 b7 04  	sw	a1, 72(a5)
80000958: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
8000095c: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000960: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80000964: 37 05 00 00  	lui	a0, 0
80000968: 33 05 45 00  	add	a0, a0, tp
8000096c: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000970: 03 a5 07 00  	lw	a0, 0(a5)
80000974: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000978: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000097c: b3 85 b8 40  	sub	a1, a7, a1
80000980: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80000984: b7 05 00 00  	lui	a1, 0
80000988: b3 85 45 00  	add	a1, a1, tp
8000098c: 23 a2 a5 00  	sw	a0, 4(a1)
80000990: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000994: 33 85 a8 02  	mul	a0, a7, a0

80000998 <.LBB0_1>:
80000998: 97 05 00 00  	auipc	a1, 0
8000099c: 93 85 45 5c  	addi	a1, a1, 1476
800009a0: 33 05 b5 00  	add	a0, a0, a1
800009a4: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800009a8: 83 28 07 03  	lw	a7, 48(a4)
800009ac: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800009b0: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800009b4: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800009b8: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800009bc: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800009c0: 13 05 76 00  	addi	a0, a2, 7
800009c4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800009c8: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800009cc: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800009d0: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800009d4: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800009d8: 03 a5 05 00  	lw	a0, 0(a1)
800009dc: 13 05 f5 44  	addi	a0, a0, 1103
800009e0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800009e4: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800009e8: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800009ec: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800009f0: 37 05 00 00  	lui	a0, 0
800009f4: 33 05 45 00  	add	a0, a0, tp
800009f8: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800009fc: 37 05 00 00  	lui	a0, 0
80000a00: 33 05 45 00  	add	a0, a0, tp
80000a04: 23 26 e5 00  	sw	a4, 12(a0)
; }
80000a08: 67 80 00 00  	ret

Disassembly of section .init:

80000a10 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000a10: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000a14: 93 81 81 cb  	addi	gp, gp, -840

80000a18 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000a18: 97 00 00 00  	auipc	ra, 0
80000a1c: e7 80 40 3c  	jalr	964(ra)

80000a20 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000a20: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000a24: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000a28: 97 00 00 00  	auipc	ra, 0
80000a2c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000a30: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000a34: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000a38: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80000a3c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000a40: 63 92 02 02  	bnez	t0, 0x80000a64 <snrt.crt0.init_registers>

80000a44 <.Lpcrel_hi0>:
;     la        t0, _edata
80000a44: 97 02 00 00  	auipc	t0, 0
80000a48: 93 82 42 49  	addi	t0, t0, 1172

80000a4c <.Lpcrel_hi1>:
;     la        t1, _end
80000a4c: 17 03 00 00  	auipc	t1, 0
80000a50: 13 03 03 51  	addi	t1, t1, 1296
;     bge       t0, t1, 2f
80000a54: 63 d8 62 00  	bge	t0, t1, 0x80000a64 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000a58: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80000a5c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000a60: e3 cc 62 fe  	blt	t0, t1, 0x80000a58 <.Lpcrel_hi1+0xc>

80000a64 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000a64: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000a68: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80000a6c: 63 82 02 08  	beqz	t0, 0x80000af0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000a70: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000a74: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000a78: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80000a7c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000a80: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000a84: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000a88: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80000a8c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000a90: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000a94: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000a98: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80000a9c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000aa0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000aa4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000aa8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80000aac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000ab0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000ab4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000ab8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80000abc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000ac0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000ac4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000ac8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80000acc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000ad0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000ad4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000ad8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80000adc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80000ae0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80000ae4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80000ae8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80000aec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80000af0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80000af0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80000af4: 23 a0 06 00  	sw	zero, 0(a3)

80000af8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80000af8: 97 02 00 00  	auipc	t0, 0
80000afc: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
80000b00: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000b04: 93 87 06 00  	mv	a5, a3

80000b08 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000b08: 97 03 00 00  	auipc	t2, 0
80000b0c: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
80000b10: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000b14: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000b18: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80000b1c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000b20: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000b24: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000b28: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80000b2c: b3 86 66 40  	sub	a3, a3, t1

80000b30 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000b30: 97 02 00 00  	auipc	t0, 0
80000b34: 93 82 82 39  	addi	t0, t0, 920

80000b38 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000b38: 17 03 00 00  	auipc	t1, 0
80000b3c: 13 03 03 39  	addi	t1, t1, 912

80000b40 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000b40: 97 03 00 00  	auipc	t2, 0
80000b44: 93 83 83 38  	addi	t2, t2, 904

80000b48 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000b48: 17 0e 00 00  	auipc	t3, 0
80000b4c: 13 0e 0e 39  	addi	t3, t3, 912
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000b50: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000b54: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000b58: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80000b5c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000b60: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000b64: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000b68: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80000b6c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000b70: 63 dc 62 00  	bge	t0, t1, 0x80000b88 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000b74: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000b78: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80000b7c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000b80: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000b84: e3 c8 62 fe  	blt	t0, t1, 0x80000b74 <.Lpcrel_hi7+0x2c>

80000b88 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000b88: 97 02 00 00  	auipc	t0, 0
80000b8c: 93 82 02 34  	addi	t0, t0, 832

80000b90 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000b90: 17 03 00 00  	auipc	t1, 0
80000b94: 13 03 83 34  	addi	t1, t1, 840
;     bge       t0, t1, 2f
80000b98: 63 da 62 00  	bge	t0, t1, 0x80000bac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80000b9c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000ba0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000ba4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000ba8: e3 ca 72 fe  	blt	t0, t2, 0x80000b9c <.Lpcrel_hi9+0xc>

80000bac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80000bac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000bb0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000bb4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000bb8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80000bbc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000bc0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000bc4: 97 00 00 00  	auipc	ra, 0
80000bc8: e7 80 00 ce  	jalr	-800(ra)
;     lw        a0, 0(sp)
80000bcc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000bd0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000bd4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000bd8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80000bdc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000be0: 13 01 41 01  	addi	sp, sp, 20

80000be4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000be4: 97 02 00 00  	auipc	t0, 0
80000be8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80000bec: 73 90 52 30  	csrw	mtvec, t0

80000bf0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000bf0: 97 00 00 00  	auipc	ra, 0
80000bf4: e7 80 00 22  	jalr	544(ra)

80000bf8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000bf8: 97 f0 ff ff  	auipc	ra, 1048575
80000bfc: e7 80 40 4e  	jalr	1252(ra)
;     mv        s0, a0 # store return value in s0
80000c00: 13 04 05 00  	mv	s0, a0

80000c04 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000c04: 97 00 00 00  	auipc	ra, 0
80000c08: e7 80 c0 20  	jalr	524(ra)

80000c0c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80000c0c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000c10: 97 00 00 00  	auipc	ra, 0
80000c14: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000c18: 73 00 50 10  	wfi	
;     j       1b
80000c1c: 6f f0 df ff  	j	0x80000c18 <snrt.crt0.end+0xc>

80000c20 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000c20: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000c24: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000c28: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80000c2c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000c30: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000c34: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000c38: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80000c3c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000c40: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000c44: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000c48: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80000c4c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000c50: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000c54: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000c58: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80000c5c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000c60: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000c64: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000c68: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000c6c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000c70: 63 84 02 08  	beqz	t0, 0x80000cf8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000c74: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000c78: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80000c7c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000c80: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000c84: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000c88: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80000c8c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000c90: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000c94: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000c98: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80000c9c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000ca0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000ca4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000ca8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80000cac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000cb0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000cb4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000cb8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80000cbc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000cc0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000cc4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000cc8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80000ccc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000cd0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000cd4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000cd8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80000cdc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000ce0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000ce4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000ce8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80000cec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000cf0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000cf4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000cf8: 97 00 00 00  	auipc	ra, 0
80000cfc: e7 80 40 ae  	jalr	-1308(ra)
;     csrr    t0, misa
80000d00: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000d04: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000d08: 63 84 02 08  	beqz	t0, 0x80000d90 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000d0c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000d10: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000d14: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000d18: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000d1c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000d20: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000d24: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000d28: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000d2c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000d30: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000d34: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000d38: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000d3c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000d40: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000d44: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000d48: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000d4c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000d50: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000d54: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000d58: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000d5c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000d60: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000d64: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000d68: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000d6c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000d70: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000d74: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000d78: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000d7c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000d80: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000d84: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000d88: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000d8c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000d90: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000d94: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000d98: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000d9c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000da0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000da4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000da8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000dac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000db0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000db4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000db8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000dbc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000dc0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000dc4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000dc8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000dcc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000dd0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000dd4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000dd8: 73 00 20 30  	mret	

80000ddc <_snrt_init_core_info>:
;     mv        a4, a1
80000ddc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000de0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000de4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000de8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000dec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000df0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000df4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000df8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000dfc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000e00: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000e04: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000e08: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000e0c: 67 80 00 00  	ret

80000e10 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000e10: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000e14: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000e18: 97 00 00 00  	auipc	ra, 0
80000e1c: e7 80 c0 9a  	jalr	-1620(ra)
;     lw        a0, 0(a0)
80000e20: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000e24: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000e28: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000e2c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000e30: 67 80 00 00  	ret

80000e34 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000e34: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000e38: 67 80 00 00  	ret

80000e3c <_snrt_exit>:
;     addi      sp, sp, -8
80000e3c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000e40: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000e44: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000e48: 97 00 00 00  	auipc	ra, 0
80000e4c: e7 80 c0 95  	jalr	-1700(ra)
;     lw        t0, 0(sp)
80000e50: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000e54: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000e58: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000e5c: 63 1c 05 00  	bnez	a0, 0x80000e74 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000e60: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000e64: 93 e2 12 00  	ori	t0, t0, 1

80000e68 <.Lpcrel_hi11>:
;     la        t1, tohost
80000e68: 17 03 00 00  	auipc	t1, 0
80000e6c: 13 03 83 01  	addi	t1, t1, 24
;     sw        t0, 0(t1)
80000e70: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000e74: 67 80 00 00  	ret
