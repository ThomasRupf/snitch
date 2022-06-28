
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-fp16_computation_vector:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000008e0 80000000 TEXT
  2 .init             00000468 800008e0 TEXT
  3 .rodata           00000008 80000d48 DATA
  4 .htif             00000048 80000d80 DATA
  5 .tdata            00000000 80000dc8 DATA
  6 .tbss             00000010 80000dc8 BSS
  7 .tbssend          00000000 80000dd8 DATA
  8 .sdata            00000000 80000dd8 DATA
  9 .data             00000000 80000dd8 DATA
 10 .sbss             00000004 80000dd8 BSS
 11 .bss              00000000 80000ddc BSS
 12 .dram             00000000 80000ddc DATA
 13 .debug_info       000016ab 00000000 
 14 .debug_abbrev     00000539 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       000010a8 00000000 
 17 .debug_loc        00000613 00000000 
 18 .debug_ranges     000000b8 00000000 
 19 .debug_str        0000073e 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000000f4 00000000 
 23 .symtab           00000aa0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000042d 00000000 


Disassembly of section .text:

80000000 <main>:
;     return _snrt_team_current->root->cluster_core_num;
80000000: 37 05 00 00  	lui	a0, 0
80000004: 33 05 45 00  	add	a0, a0, tp
80000008: 03 25 05 00  	lw	a0, 0(a0)
8000000c: 03 25 05 00  	lw	a0, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000010: b7 05 00 00  	lui	a1, 0
80000014: b3 85 45 00  	add	a1, a1, tp
;     return _snrt_team_current->root->cluster_core_num;
80000018: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000001c: 83 a5 45 00  	lw	a1, 4(a1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000020: 13 06 f5 ff  	addi	a2, a0, -1
80000024: 13 05 e0 02  	addi	a0, zero, 46
;     if (snrt_is_compute_core()) {
80000028: 63 f6 c5 64  	bgeu	a1, a2, 0x80000674 <main+0x674>
;         asm volatile(
8000002c: 13 05 00 00  	mv	a0, zero
;         asm volatile(
80000030: 13 08 00 00  	mv	a6, zero
80000034: 37 f6 48 40  	lui	a2, 263311
80000038: 13 06 36 5c  	addi	a2, a2, 1475
8000003c: b7 f6 48 c0  	lui	a3, 787599
80000040: 93 86 36 5c  	addi	a3, a3, 1475
80000044: 37 27 cf 3f  	lui	a4, 261362
80000048: 13 07 07 aa  	addi	a4, a4, -1376
8000004c: b7 27 cf bf  	lui	a5, 785650
80000050: 93 87 07 aa  	addi	a5, a5, -1376
;         asm volatile(
80000054: 53 00 06 f0  	fmv.w.x	ft0, a2
80000058: d3 80 06 f0  	fmv.w.x	ft1, a3
8000005c: 53 01 07 f0  	fmv.w.x	ft2, a4
80000060: d3 81 07 f0  	fmv.w.x	ft3, a5
80000064: 33 22 20 b0  	vfcpk.h.s.0	ft4, ft0, ft2
80000068: 33 62 20 b0  	vfcpk.h.s.1	ft4, ft0, ft2
8000006c: b3 a2 30 b0  	vfcpk.h.s.0	ft5, ft1, ft3
80000070: b3 e2 30 b0  	vfcpk.h.s.1	ft5, ft1, ft3
80000074: 33 23 30 b0  	vfcpk.h.s.0	ft6, ft0, ft3
80000078: 33 63 30 b0  	vfcpk.h.s.1	ft6, ft0, ft3
8000007c: b3 a3 20 b0  	vfcpk.h.s.0	ft7, ft1, ft2
80000080: b3 e3 20 b0  	vfcpk.h.s.1	ft7, ft1, ft2
;         asm volatile(
80000084: 33 20 42 9a  	vfsgnj.h	ft0, ft4, ft4
80000088: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
8000008c: 93 06 15 ff  	addi	a3, a0, -15
80000090: 93 b6 16 00  	seqz	a3, a3
;         asm volatile(
80000094: 33 20 52 9a  	vfsgnj.h	ft0, ft4, ft5
80000098: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
8000009c: 13 07 15 ff  	addi	a4, a0, -15
800000a0: 13 37 17 00  	seqz	a4, a4
800000a4: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000a8: 33 a0 62 9a  	vfsgnj.h	ft0, ft5, ft6
800000ac: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (res0 == 0xf);
800000b0: 13 07 15 ff  	addi	a4, a0, -15
800000b4: 13 37 17 00  	seqz	a4, a4
800000b8: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000bc: 33 a0 72 9a  	vfsgnj.h	ft0, ft5, ft7
800000c0: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800000c4: 13 07 15 ff  	addi	a4, a0, -15
800000c8: 13 37 17 00  	seqz	a4, a4
800000cc: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000d0: 33 60 42 9a  	vfsgnj.r.h	ft0, ft4, ft4
800000d4: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
800000d8: 13 07 15 ff  	addi	a4, a0, -15
800000dc: 13 37 17 00  	seqz	a4, a4
800000e0: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000e4: 33 60 52 9a  	vfsgnj.r.h	ft0, ft4, ft5
800000e8: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
800000ec: 13 07 15 ff  	addi	a4, a0, -15
800000f0: 13 37 17 00  	seqz	a4, a4
800000f4: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000f8: 33 e0 62 9a  	vfsgnj.r.h	ft0, ft5, ft6
800000fc: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
80000100: 13 07 15 ff  	addi	a4, a0, -15
80000104: 13 37 17 00  	seqz	a4, a4
80000108: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
8000010c: 33 e0 72 9a  	vfsgnj.r.h	ft0, ft5, ft7
80000110: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
80000114: 13 07 15 ff  	addi	a4, a0, -15
80000118: 13 37 17 00  	seqz	a4, a4
8000011c: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000120: 33 20 42 9c  	vfsgnjn.h	ft0, ft4, ft4
80000124: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
80000128: 13 07 15 ff  	addi	a4, a0, -15
8000012c: 13 37 17 00  	seqz	a4, a4
80000130: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000134: 33 20 52 9c  	vfsgnjn.h	ft0, ft4, ft5
80000138: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
8000013c: 13 07 15 ff  	addi	a4, a0, -15
80000140: 13 37 17 00  	seqz	a4, a4
80000144: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000148: 33 a0 62 9c  	vfsgnjn.h	ft0, ft5, ft6
8000014c: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000150: 13 07 15 ff  	addi	a4, a0, -15
80000154: 13 37 17 00  	seqz	a4, a4
80000158: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
8000015c: 33 a0 72 9c  	vfsgnjn.h	ft0, ft5, ft7
80000160: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (res0 == 0xf);
80000164: 13 07 15 ff  	addi	a4, a0, -15
80000168: 13 37 17 00  	seqz	a4, a4
8000016c: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000170: 33 60 42 9c  	vfsgnjn.r.h	ft0, ft4, ft4
80000174: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
80000178: 13 07 15 ff  	addi	a4, a0, -15
8000017c: 13 37 17 00  	seqz	a4, a4
80000180: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000184: 33 60 52 9c  	vfsgnjn.r.h	ft0, ft4, ft5
80000188: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
8000018c: 13 07 15 ff  	addi	a4, a0, -15
80000190: 13 37 17 00  	seqz	a4, a4
80000194: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000198: 33 e0 62 9c  	vfsgnjn.r.h	ft0, ft5, ft6
8000019c: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
800001a0: 13 07 15 ff  	addi	a4, a0, -15
800001a4: 13 37 17 00  	seqz	a4, a4
800001a8: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800001ac: 33 e0 72 9c  	vfsgnjn.r.h	ft0, ft5, ft7
800001b0: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
800001b4: 13 07 15 ff  	addi	a4, a0, -15
800001b8: 13 37 17 00  	seqz	a4, a4
800001bc: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800001c0: 33 20 42 9e  	vfsgnjx.h	ft0, ft4, ft4
800001c4: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
800001c8: 13 07 15 ff  	addi	a4, a0, -15
800001cc: 13 37 17 00  	seqz	a4, a4
800001d0: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800001d4: 33 20 52 9e  	vfsgnjx.h	ft0, ft4, ft5
800001d8: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
800001dc: 13 07 15 ff  	addi	a4, a0, -15
800001e0: 13 37 17 00  	seqz	a4, a4
800001e4: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800001e8: 33 a0 62 9e  	vfsgnjx.h	ft0, ft5, ft6
800001ec: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800001f0: 13 07 15 ff  	addi	a4, a0, -15
800001f4: 13 37 17 00  	seqz	a4, a4
800001f8: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800001fc: 33 a0 72 9e  	vfsgnjx.h	ft0, ft5, ft7
80000200: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (res0 == 0xf);
80000204: 13 07 15 ff  	addi	a4, a0, -15
80000208: 13 37 17 00  	seqz	a4, a4
8000020c: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000210: 33 60 42 9e  	vfsgnjx.r.h	ft0, ft4, ft4
80000214: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
80000218: 13 07 15 ff  	addi	a4, a0, -15
8000021c: 13 37 17 00  	seqz	a4, a4
80000220: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000224: 33 60 52 9e  	vfsgnjx.r.h	ft0, ft4, ft5
80000228: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
8000022c: 13 07 15 ff  	addi	a4, a0, -15
80000230: 13 37 17 00  	seqz	a4, a4
80000234: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000238: 33 e0 62 9e  	vfsgnjx.r.h	ft0, ft5, ft6
8000023c: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (res0 == 0xf);
80000240: 13 07 15 ff  	addi	a4, a0, -15
80000244: 13 37 17 00  	seqz	a4, a4
80000248: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
8000024c: 33 e0 72 9e  	vfsgnjx.r.h	ft0, ft5, ft7
80000250: 33 25 02 a0  	vfeq.h	a0, ft4, ft0
;         errs -= (res0 == 0xf);
80000254: 13 07 15 ff  	addi	a4, a0, -15
80000258: 13 37 17 00  	seqz	a4, a4
8000025c: b3 88 e6 00  	add	a7, a3, a4
80000260: 37 27 80 3e  	lui	a4, 256002
80000264: 13 07 b7 ff  	addi	a4, a4, -5
80000268: b7 45 c8 42  	lui	a1, 273540
8000026c: 93 85 65 f3  	addi	a1, a1, -202
;         asm volatile(
80000270: 53 00 06 f0  	fmv.w.x	ft0, a2
80000274: d3 80 07 f0  	fmv.w.x	ft1, a5
80000278: 53 01 07 f0  	fmv.w.x	ft2, a4
8000027c: d3 81 05 f0  	fmv.w.x	ft3, a1
80000280: 33 a2 01 b0  	vfcpk.h.s.0	ft4, ft3, ft0
80000284: 33 e2 01 b0  	vfcpk.h.s.1	ft4, ft3, ft0
80000288: b3 22 11 b0  	vfcpk.h.s.0	ft5, ft2, ft1
8000028c: b3 62 11 b0  	vfcpk.h.s.1	ft5, ft2, ft1
80000290: 33 a3 30 b0  	vfcpk.h.s.0	ft6, ft1, ft3
80000294: 33 e3 30 b0  	vfcpk.h.s.1	ft6, ft1, ft3
80000298: b7 c2 c8 42  	lui	t0, 273548
8000029c: 37 e6 c2 3f  	lui	a2, 261166
800002a0: 37 27 af bf  	lui	a4, 785138
800002a4: b7 07 c5 42  	lui	a5, 273488
;         asm volatile(
800002a8: b7 c6 c8 42  	lui	a3, 273548
800002ac: b7 25 af bf  	lui	a1, 785138
800002b0: 53 80 06 f0  	fmv.w.x	ft0, a3
800002b4: d3 00 06 f0  	fmv.w.x	ft1, a2
800002b8: 53 81 05 f0  	fmv.w.x	ft2, a1
800002bc: d3 81 07 f0  	fmv.w.x	ft3, a5
800002c0: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
800002c4: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
800002c8: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
800002cc: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
;         asm volatile(
800002d0: 33 20 52 82  	vfadd.h	ft0, ft4, ft5
800002d4: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800002d8: 93 05 15 ff  	addi	a1, a0, -15
800002dc: 93 b5 15 00  	seqz	a1, a1
800002e0: b3 85 b8 00  	add	a1, a7, a1
;         asm volatile(
800002e4: 33 a0 62 82  	vfadd.h	ft0, ft5, ft6
800002e8: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
800002ec: 13 06 15 ff  	addi	a2, a0, -15
800002f0: 13 36 16 00  	seqz	a2, a2
800002f4: b3 85 c5 00  	add	a1, a1, a2
800002f8: 37 06 59 40  	lui	a2, 263568
800002fc: b7 26 4f c0  	lui	a3, 787698
;         asm volatile(
80000300: 53 80 02 f0  	fmv.w.x	ft0, t0
80000304: d3 00 06 f0  	fmv.w.x	ft1, a2
80000308: 53 01 07 f0  	fmv.w.x	ft2, a4
8000030c: d3 81 06 f0  	fmv.w.x	ft3, a3
80000310: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
80000314: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
80000318: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
8000031c: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
;         asm volatile(
80000320: 33 60 52 82  	vfadd.r.h	ft0, ft4, ft5
80000324: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000328: 13 06 15 ff  	addi	a2, a0, -15
8000032c: 13 36 16 00  	seqz	a2, a2
80000330: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000334: 33 e0 62 82  	vfadd.r.h	ft0, ft5, ft6
80000338: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
8000033c: 13 06 15 ff  	addi	a2, a0, -15
80000340: 13 36 16 00  	seqz	a2, a2
80000344: b3 88 c5 00  	add	a7, a1, a2
80000348: b7 c2 c7 42  	lui	t0, 273532
8000034c: b7 46 98 40  	lui	a3, 264580
80000350: 37 27 ef 3f  	lui	a4, 261874
80000354: b7 87 cb c2  	lui	a5, 797880
;         asm volatile(
80000358: b7 c5 c7 42  	lui	a1, 273532
8000035c: 37 26 ef 3f  	lui	a2, 261874
80000360: 53 80 05 f0  	fmv.w.x	ft0, a1
80000364: d3 80 06 f0  	fmv.w.x	ft1, a3
80000368: 53 01 06 f0  	fmv.w.x	ft2, a2
8000036c: d3 81 07 f0  	fmv.w.x	ft3, a5
80000370: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
80000374: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
80000378: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
8000037c: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
;         asm volatile(
80000380: 33 20 52 84  	vfsub.h	ft0, ft4, ft5
80000384: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000388: 93 05 15 ff  	addi	a1, a0, -15
8000038c: 93 b5 15 00  	seqz	a1, a1
80000390: b3 85 b8 00  	add	a1, a7, a1
;         asm volatile(
80000394: 33 a0 62 84  	vfsub.h	ft0, ft5, ft6
80000398: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
8000039c: 13 06 15 ff  	addi	a2, a0, -15
800003a0: 13 36 16 00  	seqz	a2, a2
800003a4: b3 85 c5 00  	add	a1, a1, a2
800003a8: 37 06 39 40  	lui	a2, 263056
;         asm volatile(
800003ac: 53 80 02 f0  	fmv.w.x	ft0, t0
800003b0: d3 00 06 f0  	fmv.w.x	ft1, a2
800003b4: 53 01 07 f0  	fmv.w.x	ft2, a4
800003b8: d3 01 08 f0  	fmv.w.x	ft3, a6
800003bc: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
800003c0: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
800003c4: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
800003c8: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
;         asm volatile(
800003cc: 33 60 52 84  	vfsub.r.h	ft0, ft4, ft5
800003d0: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800003d4: 13 06 15 ff  	addi	a2, a0, -15
800003d8: 13 36 16 00  	seqz	a2, a2
800003dc: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003e0: 33 e0 62 84  	vfsub.r.h	ft0, ft5, ft6
800003e4: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
800003e8: 13 06 15 ff  	addi	a2, a0, -15
800003ec: 13 36 16 00  	seqz	a2, a2
800003f0: b3 88 c5 00  	add	a7, a1, a2
800003f4: 37 88 c8 41  	lui	a6, 269448
800003f8: b7 a2 a2 c0  	lui	t0, 789034
800003fc: 37 67 cf be  	lui	a4, 781558
80000400: b7 07 22 c3  	lui	a5, 799264
;         asm volatile(
80000404: 37 86 c8 41  	lui	a2, 269448
80000408: b7 65 cf be  	lui	a1, 781558
8000040c: b7 a6 a2 c0  	lui	a3, 789034
80000410: 53 00 06 f0  	fmv.w.x	ft0, a2
80000414: d3 80 06 f0  	fmv.w.x	ft1, a3
80000418: 53 81 05 f0  	fmv.w.x	ft2, a1
8000041c: d3 81 07 f0  	fmv.w.x	ft3, a5
80000420: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
80000424: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
80000428: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
8000042c: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
;         asm volatile(
80000430: 33 20 52 86  	vfmul.h	ft0, ft4, ft5
80000434: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000438: 93 05 15 ff  	addi	a1, a0, -15
8000043c: 93 b5 15 00  	seqz	a1, a1
80000440: b3 85 b8 00  	add	a1, a7, a1
;         asm volatile(
80000444: 33 a0 62 86  	vfmul.h	ft0, ft5, ft6
80000448: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
8000044c: 13 06 15 ff  	addi	a2, a0, -15
80000450: 13 36 16 00  	seqz	a2, a2
80000454: b3 88 c5 00  	add	a7, a1, a2
80000458: 37 46 49 3f  	lui	a2, 259220
8000045c: b7 a6 27 40  	lui	a3, 262778
;         asm volatile(
80000460: b7 87 c8 41  	lui	a5, 269448
80000464: b7 45 49 3f  	lui	a1, 259220
80000468: 53 80 07 f0  	fmv.w.x	ft0, a5
8000046c: d3 80 05 f0  	fmv.w.x	ft1, a1
80000470: 53 01 07 f0  	fmv.w.x	ft2, a4
80000474: d3 81 06 f0  	fmv.w.x	ft3, a3
80000478: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
8000047c: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
80000480: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
80000484: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
;         asm volatile(
80000488: 33 60 52 86  	vfmul.r.h	ft0, ft4, ft5
8000048c: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000490: 93 05 15 ff  	addi	a1, a0, -15
80000494: 93 b5 15 00  	seqz	a1, a1
80000498: b3 85 b8 00  	add	a1, a7, a1
;         asm volatile(
8000049c: 33 e0 62 86  	vfmul.r.h	ft0, ft5, ft6
800004a0: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
800004a4: 93 06 15 ff  	addi	a3, a0, -15
800004a8: 93 b6 16 00  	seqz	a3, a3
800004ac: b3 88 d5 00  	add	a7, a1, a3
800004b0: b7 46 c5 41  	lui	a3, 269396
800004b4: 37 27 27 c3  	lui	a4, 799346
;         asm volatile(
800004b8: b7 87 c8 41  	lui	a5, 269448
800004bc: b7 45 c5 41  	lui	a1, 269396
800004c0: 53 80 07 f0  	fmv.w.x	ft0, a5
800004c4: d3 80 02 f0  	fmv.w.x	ft1, t0
800004c8: 53 81 05 f0  	fmv.w.x	ft2, a1
800004cc: d3 01 07 f0  	fmv.w.x	ft3, a4
800004d0: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
800004d4: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
800004d8: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
800004dc: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
800004e0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;         asm volatile(
800004e4: 33 20 52 90  	vfmac.h	ft0, ft4, ft5
800004e8: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800004ec: 93 05 15 ff  	addi	a1, a0, -15
800004f0: 93 b5 15 00  	seqz	a1, a1
800004f4: b3 85 b8 00  	add	a1, a7, a1
;         asm volatile(
800004f8: 33 a0 62 90  	vfmac.h	ft0, ft5, ft6
800004fc: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
80000500: 13 07 15 ff  	addi	a4, a0, -15
80000504: 13 37 17 00  	seqz	a4, a4
80000508: b3 85 e5 00  	add	a1, a1, a4
8000050c: 37 e7 59 40  	lui	a4, 263582
;         asm volatile(
80000510: 53 00 08 f0  	fmv.w.x	ft0, a6
80000514: d3 00 06 f0  	fmv.w.x	ft1, a2
80000518: 53 81 06 f0  	fmv.w.x	ft2, a3
8000051c: d3 01 07 f0  	fmv.w.x	ft3, a4
80000520: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
80000524: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
80000528: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
8000052c: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
80000530: 53 00 00 d2  	fcvt.d.w	ft0, zero
;         asm volatile(
80000534: 33 60 52 90  	vfmac.r.h	ft0, ft4, ft5
80000538: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
8000053c: 13 06 15 ff  	addi	a2, a0, -15
80000540: 13 36 16 00  	seqz	a2, a2
80000544: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000548: 33 e0 62 90  	vfmac.r.h	ft0, ft5, ft6
8000054c: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
80000550: 13 06 15 ff  	addi	a2, a0, -15
80000554: 13 36 16 00  	seqz	a2, a2
80000558: 33 88 c5 00  	add	a6, a1, a2
8000055c: b7 88 c8 c1  	lui	a7, 793736
80000560: b7 a6 a2 40  	lui	a3, 264746
80000564: 37 47 c5 c1  	lui	a4, 793684
80000568: b7 27 27 43  	lui	a5, 275058
;         asm volatile(
8000056c: b7 85 c8 c1  	lui	a1, 793736
80000570: 37 46 c5 c1  	lui	a2, 793684
80000574: 53 80 05 f0  	fmv.w.x	ft0, a1
80000578: d3 80 06 f0  	fmv.w.x	ft1, a3
8000057c: 53 01 06 f0  	fmv.w.x	ft2, a2
80000580: d3 81 07 f0  	fmv.w.x	ft3, a5
80000584: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
80000588: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
8000058c: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
80000590: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
80000594: 53 00 00 d2  	fcvt.d.w	ft0, zero
;         asm volatile(
80000598: 33 20 52 92  	vfmre.h	ft0, ft4, ft5
8000059c: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800005a0: 93 05 15 ff  	addi	a1, a0, -15
800005a4: 93 b5 15 00  	seqz	a1, a1
800005a8: b3 05 b8 00  	add	a1, a6, a1
;         asm volatile(
800005ac: 33 a0 62 92  	vfmre.h	ft0, ft5, ft6
800005b0: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
800005b4: 13 06 15 ff  	addi	a2, a0, -15
800005b8: 13 36 16 00  	seqz	a2, a2
800005bc: b3 85 c5 00  	add	a1, a1, a2
800005c0: 37 66 09 43  	lui	a2, 274582
800005c4: b7 66 13 c3  	lui	a3, 799030
;         asm volatile(
800005c8: b7 67 09 43  	lui	a5, 274582
800005cc: d3 80 07 f0  	fmv.w.x	ft1, a5
800005d0: 53 81 06 f0  	fmv.w.x	ft2, a3
800005d4: b3 a3 20 b0  	vfcpk.h.s.0	ft7, ft1, ft2
800005d8: b3 e3 20 b0  	vfcpk.h.s.1	ft7, ft1, ft2
;         asm volatile(
800005dc: 33 20 62 92  	vfmre.h	ft0, ft4, ft6
800005e0: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
800005e4: 93 06 15 ff  	addi	a3, a0, -15
800005e8: 93 b6 16 00  	seqz	a3, a3
800005ec: b3 85 d5 00  	add	a1, a1, a3
800005f0: b7 46 49 bf  	lui	a3, 783508
800005f4: b7 e7 59 c0  	lui	a5, 787870
;         asm volatile(
800005f8: 53 80 08 f0  	fmv.w.x	ft0, a7
800005fc: d3 80 06 f0  	fmv.w.x	ft1, a3
80000600: 53 01 07 f0  	fmv.w.x	ft2, a4
80000604: d3 81 07 f0  	fmv.w.x	ft3, a5
80000608: b3 23 10 b0  	vfcpk.h.s.0	ft7, ft0, ft1
8000060c: b3 63 10 b0  	vfcpk.h.s.1	ft7, ft0, ft1
80000610: 33 2e 31 b0  	vfcpk.h.s.0	ft8, ft2, ft3
80000614: 33 6e 31 b0  	vfcpk.h.s.1	ft8, ft2, ft3
80000618: 53 00 00 d2  	fcvt.d.w	ft0, zero
;         asm volatile(
8000061c: 33 60 52 92  	vfmre.r.h	ft0, ft4, ft5
80000620: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000624: 93 06 15 ff  	addi	a3, a0, -15
80000628: 93 b6 16 00  	seqz	a3, a3
8000062c: b3 85 d5 00  	add	a1, a1, a3
;         asm volatile(
80000630: 33 e0 62 92  	vfmre.r.h	ft0, ft5, ft6
80000634: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (res0 == 0xf);
80000638: 93 06 15 ff  	addi	a3, a0, -15
8000063c: 93 b6 16 00  	seqz	a3, a3
80000640: b3 85 d5 00  	add	a1, a1, a3
80000644: b7 c6 d6 3f  	lui	a3, 261484
;         asm volatile(
80000648: d3 00 06 f0  	fmv.w.x	ft1, a2
8000064c: 53 81 06 f0  	fmv.w.x	ft2, a3
80000650: b3 a3 20 b0  	vfcpk.h.s.0	ft7, ft1, ft2
80000654: b3 e3 20 b0  	vfcpk.h.s.1	ft7, ft1, ft2
;         asm volatile(
80000658: 33 60 62 92  	vfmre.r.h	ft0, ft4, ft6
8000065c: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (res0 == 0xf);
80000660: 13 05 15 ff  	addi	a0, a0, -15
80000664: 13 35 15 00  	seqz	a0, a0
80000668: 33 85 a5 00  	add	a0, a1, a0
8000066c: 93 05 e0 02  	addi	a1, zero, 46
80000670: 33 85 a5 40  	sub	a0, a1, a0
;     return errs;
80000674: 67 80 00 00  	ret

80000678 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000678: 37 05 00 00  	lui	a0, 0
8000067c: 33 05 45 00  	add	a0, a0, tp
80000680: 03 25 05 00  	lw	a0, 0(a0)
80000684: 03 25 05 00  	lw	a0, 0(a0)
80000688: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000068c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000690: 33 85 a5 40  	sub	a0, a1, a0
80000694: 67 80 00 00  	ret

80000698 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80000698: 37 05 00 00  	lui	a0, 0
8000069c: 33 05 45 00  	add	a0, a0, tp
800006a0: 03 25 05 00  	lw	a0, 0(a0)
800006a4: 03 25 05 00  	lw	a0, 0(a0)
800006a8: 03 25 05 07  	lw	a0, 112(a0)
800006ac: 67 80 00 00  	ret

800006b0 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800006b0: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800006b4: 63 44 05 00  	bltz	a0, 0x800006bc <__snrt_isr+0xc>
;         while (1)
800006b8: 6f 00 00 00  	j	0x800006b8 <__snrt_isr+0x8>
800006bc: b7 05 00 80  	lui	a1, 524288
800006c0: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800006c4: 33 75 b5 00  	and	a0, a0, a1
800006c8: 13 05 d5 ff  	addi	a0, a0, -3
800006cc: 93 55 25 00  	srli	a1, a0, 2
800006d0: 13 15 e5 01  	slli	a0, a0, 30
800006d4: 33 65 b5 00  	or	a0, a0, a1
800006d8: 93 05 40 00  	addi	a1, zero, 4
800006dc: 63 0a b5 06  	beq	a0, a1, 0x80000750 <.LBB1_7+0x58>
800006e0: 63 1a 05 08  	bnez	a0, 0x80000774 <.LBB1_7+0x7c>
800006e4: 37 05 00 00  	lui	a0, 0
800006e8: 33 05 45 00  	add	a0, a0, tp
800006ec: 03 25 05 00  	lw	a0, 0(a0)
800006f0: 03 25 05 00  	lw	a0, 0(a0)
800006f4: f3 25 40 f1  	csrr	a1, mhartid

800006f8 <.LBB1_7>:
;     asm volatile(
800006f8: 17 06 00 00  	auipc	a2, 0
800006fc: 13 06 06 6e  	addi	a2, a2, 1760
80000700: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000704: 93 06 06 00  	mv	a3, a2
80000708: 93 02 10 00  	addi	t0, zero, 1
8000070c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80000710: e3 9e 02 fe  	bnez	t0, 0x8000070c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000714: b7 06 00 00  	lui	a3, 0
80000718: b3 86 46 00  	add	a3, a3, tp
8000071c: 83 a6 86 00  	lw	a3, 8(a3)
80000720: 33 85 a5 40  	sub	a0, a1, a0
80000724: 93 55 35 00  	srli	a1, a0, 3
80000728: 93 f5 c5 ff  	andi	a1, a1, -4
8000072c: b3 85 b6 00  	add	a1, a3, a1
80000730: 83 a6 05 00  	lw	a3, 0(a1)
80000734: 13 07 10 00  	addi	a4, zero, 1
80000738: 33 15 a7 00  	sll	a0, a4, a0
8000073c: 13 45 f5 ff  	not	a0, a0
80000740: 33 f5 a6 00  	and	a0, a3, a0
80000744: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000748: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
8000074c: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000750: 37 05 00 00  	lui	a0, 0
80000754: 33 05 45 00  	add	a0, a0, tp
80000758: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000075c: b7 05 00 00  	lui	a1, 0
80000760: b3 85 45 00  	add	a1, a1, tp
80000764: 83 a5 c5 00  	lw	a1, 12(a1)
80000768: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
8000076c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000770: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000774: 67 80 00 00  	ret

80000778 <_snrt_init_team>:
;     team->base.root = team;
80000778: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
8000077c: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000780: 03 23 87 00  	lw	t1, 8(a4)
80000784: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000788: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
8000078c: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000790: 83 22 47 00  	lw	t0, 4(a4)
80000794: 33 88 08 03  	mul	a6, a7, a6
80000798: 33 05 58 02  	mul	a0, a6, t0
8000079c: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800007a0: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800007a4: 33 85 68 40  	sub	a0, a7, t1
800007a8: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800007ac: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800007b0: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800007b4: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800007b8: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800007bc: 03 25 87 01  	lw	a0, 24(a4)
800007c0: b7 05 00 10  	lui	a1, 65536
800007c4: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800007c8: 23 a2 07 02  	sw	zero, 36(a5)
800007cc: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800007d0: 03 25 07 02  	lw	a0, 32(a4)
800007d4: 83 25 47 02  	lw	a1, 36(a4)
800007d8: 23 a4 a7 02  	sw	a0, 40(a5)
800007dc: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800007e0: 23 a8 c7 02  	sw	a2, 48(a5)
800007e4: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800007e8: 23 ac d7 02  	sw	a3, 56(a5)
800007ec: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800007f0: 03 25 07 01  	lw	a0, 16(a4)
800007f4: 33 08 a6 00  	add	a6, a2, a0
800007f8: 93 05 08 19  	addi	a1, a6, 400
800007fc: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000800: b3 32 a8 00  	sltu	t0, a6, a0
80000804: 93 55 15 00  	srli	a1, a0, 1
80000808: 33 03 b8 00  	add	t1, a6, a1
8000080c: b3 35 03 01  	sltu	a1, t1, a6
80000810: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000814: 23 a0 67 04  	sw	t1, 64(a5)
80000818: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
8000081c: 13 15 15 00  	slli	a0, a0, 1
80000820: b3 05 c5 00  	add	a1, a0, a2
80000824: 33 b5 a5 00  	sltu	a0, a1, a0
80000828: 23 a4 b7 04  	sw	a1, 72(a5)
8000082c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000830: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000834: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80000838: 37 05 00 00  	lui	a0, 0
8000083c: 33 05 45 00  	add	a0, a0, tp
80000840: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000844: 03 a5 07 00  	lw	a0, 0(a5)
80000848: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
8000084c: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000850: b3 85 b8 40  	sub	a1, a7, a1
80000854: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80000858: b7 05 00 00  	lui	a1, 0
8000085c: b3 85 45 00  	add	a1, a1, tp
80000860: 23 a2 a5 00  	sw	a0, 4(a1)
80000864: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000868: 33 85 a8 02  	mul	a0, a7, a0

8000086c <.LBB0_1>:
8000086c: 97 05 00 00  	auipc	a1, 0
80000870: 93 85 05 57  	addi	a1, a1, 1392
80000874: 33 05 b5 00  	add	a0, a0, a1
80000878: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
8000087c: 83 28 07 03  	lw	a7, 48(a4)
80000880: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000884: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80000888: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
8000088c: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000890: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000894: 13 05 76 00  	addi	a0, a2, 7
80000898: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
8000089c: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800008a0: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800008a4: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800008a8: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800008ac: 03 a5 05 00  	lw	a0, 0(a1)
800008b0: 13 05 f5 44  	addi	a0, a0, 1103
800008b4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800008b8: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800008bc: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800008c0: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800008c4: 37 05 00 00  	lui	a0, 0
800008c8: 33 05 45 00  	add	a0, a0, tp
800008cc: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800008d0: 37 05 00 00  	lui	a0, 0
800008d4: 33 05 45 00  	add	a0, a0, tp
800008d8: 23 26 e5 00  	sw	a4, 12(a0)
; }
800008dc: 67 80 00 00  	ret

Disassembly of section .init:

800008e0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800008e0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800008e4: 93 81 81 ce  	addi	gp, gp, -792

800008e8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800008e8: 97 00 00 00  	auipc	ra, 0
800008ec: e7 80 40 3c  	jalr	964(ra)

800008f0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800008f0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800008f4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800008f8: 97 00 00 00  	auipc	ra, 0
800008fc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000900: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000904: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000908: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000090c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000910: 63 92 02 02  	bnez	t0, 0x80000934 <snrt.crt0.init_registers>

80000914 <.Lpcrel_hi0>:
;     la        t0, _edata
80000914: 97 02 00 00  	auipc	t0, 0
80000918: 93 82 42 4c  	addi	t0, t0, 1220

8000091c <.Lpcrel_hi1>:
;     la        t1, _end
8000091c: 17 03 00 00  	auipc	t1, 0
80000920: 13 03 03 4c  	addi	t1, t1, 1216
;     bge       t0, t1, 2f
80000924: 63 d8 62 00  	bge	t0, t1, 0x80000934 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000928: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000092c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000930: e3 cc 62 fe  	blt	t0, t1, 0x80000928 <.Lpcrel_hi1+0xc>

80000934 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000934: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000938: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000093c: 63 82 02 08  	beqz	t0, 0x800009c0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000940: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000944: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000948: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000094c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000950: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000954: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000958: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000095c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000960: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000964: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000968: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000096c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000970: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000974: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000978: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000097c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000980: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000984: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000988: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000098c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000990: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000994: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000998: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000099c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800009a0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800009a4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800009a8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800009ac: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800009b0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800009b4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800009b8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800009bc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800009c0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800009c0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800009c4: 23 a0 06 00  	sw	zero, 0(a3)

800009c8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800009c8: 97 02 00 00  	auipc	t0, 0
800009cc: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
800009d0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800009d4: 93 87 06 00  	mv	a5, a3

800009d8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800009d8: 97 03 00 00  	auipc	t2, 0
800009dc: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
800009e0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800009e4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800009e8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800009ec: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800009f0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800009f4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800009f8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800009fc: b3 86 66 40  	sub	a3, a3, t1

80000a00 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000a00: 97 02 00 00  	auipc	t0, 0
80000a04: 93 82 82 3c  	addi	t0, t0, 968

80000a08 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000a08: 17 03 00 00  	auipc	t1, 0
80000a0c: 13 03 03 3c  	addi	t1, t1, 960

80000a10 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000a10: 97 03 00 00  	auipc	t2, 0
80000a14: 93 83 83 3b  	addi	t2, t2, 952

80000a18 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000a18: 17 0e 00 00  	auipc	t3, 0
80000a1c: 13 0e 0e 3c  	addi	t3, t3, 960
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000a20: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000a24: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000a28: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80000a2c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000a30: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000a34: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000a38: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80000a3c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000a40: 63 dc 62 00  	bge	t0, t1, 0x80000a58 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000a44: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000a48: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80000a4c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a50: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000a54: e3 c8 62 fe  	blt	t0, t1, 0x80000a44 <.Lpcrel_hi7+0x2c>

80000a58 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000a58: 97 02 00 00  	auipc	t0, 0
80000a5c: 93 82 02 37  	addi	t0, t0, 880

80000a60 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000a60: 17 03 00 00  	auipc	t1, 0
80000a64: 13 03 83 37  	addi	t1, t1, 888
;     bge       t0, t1, 2f
80000a68: 63 da 62 00  	bge	t0, t1, 0x80000a7c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80000a6c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000a70: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a74: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000a78: e3 ca 72 fe  	blt	t0, t2, 0x80000a6c <.Lpcrel_hi9+0xc>

80000a7c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80000a7c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000a80: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000a84: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000a88: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80000a8c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000a90: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000a94: 97 00 00 00  	auipc	ra, 0
80000a98: e7 80 40 ce  	jalr	-796(ra)
;     lw        a0, 0(sp)
80000a9c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000aa0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000aa4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000aa8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80000aac: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000ab0: 13 01 41 01  	addi	sp, sp, 20

80000ab4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000ab4: 97 02 00 00  	auipc	t0, 0
80000ab8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80000abc: 73 90 52 30  	csrw	mtvec, t0

80000ac0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000ac0: 97 00 00 00  	auipc	ra, 0
80000ac4: e7 80 00 22  	jalr	544(ra)

80000ac8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000ac8: 97 f0 ff ff  	auipc	ra, 1048575
80000acc: e7 80 80 53  	jalr	1336(ra)
;     mv        s0, a0 # store return value in s0
80000ad0: 13 04 05 00  	mv	s0, a0

80000ad4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000ad4: 97 00 00 00  	auipc	ra, 0
80000ad8: e7 80 c0 20  	jalr	524(ra)

80000adc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80000adc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000ae0: 97 00 00 00  	auipc	ra, 0
80000ae4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000ae8: 73 00 50 10  	wfi	
;     j       1b
80000aec: 6f f0 df ff  	j	0x80000ae8 <snrt.crt0.end+0xc>

80000af0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000af0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000af4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000af8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80000afc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000b00: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000b04: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000b08: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80000b0c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000b10: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000b14: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000b18: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80000b1c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000b20: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000b24: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000b28: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80000b2c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000b30: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000b34: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000b38: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000b3c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000b40: 63 84 02 08  	beqz	t0, 0x80000bc8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000b44: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000b48: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80000b4c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000b50: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000b54: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000b58: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80000b5c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000b60: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000b64: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000b68: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80000b6c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000b70: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000b74: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000b78: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80000b7c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000b80: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000b84: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000b88: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80000b8c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000b90: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000b94: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000b98: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80000b9c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000ba0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000ba4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000ba8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80000bac: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000bb0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000bb4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000bb8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80000bbc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000bc0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000bc4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000bc8: 97 00 00 00  	auipc	ra, 0
80000bcc: e7 80 80 ae  	jalr	-1304(ra)
;     csrr    t0, misa
80000bd0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000bd4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000bd8: 63 84 02 08  	beqz	t0, 0x80000c60 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000bdc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000be0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000be4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000be8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000bec: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000bf0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000bf4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000bf8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000bfc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000c00: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000c04: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000c08: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000c0c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000c10: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000c14: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000c18: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000c1c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000c20: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000c24: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000c28: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000c2c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000c30: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000c34: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000c38: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000c3c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000c40: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000c44: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000c48: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000c4c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000c50: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000c54: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000c58: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000c5c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000c60: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000c64: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000c68: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000c6c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000c70: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000c74: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000c78: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000c7c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000c80: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000c84: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000c88: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000c8c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000c90: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000c94: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000c98: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000c9c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000ca0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000ca4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000ca8: 73 00 20 30  	mret	

80000cac <_snrt_init_core_info>:
;     mv        a4, a1
80000cac: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000cb0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000cb4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000cb8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000cbc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000cc0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000cc4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000cc8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000ccc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000cd0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000cd4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000cd8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000cdc: 67 80 00 00  	ret

80000ce0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000ce0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000ce4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000ce8: 97 00 00 00  	auipc	ra, 0
80000cec: e7 80 00 9b  	jalr	-1616(ra)
;     lw        a0, 0(a0)
80000cf0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000cf4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000cf8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000cfc: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000d00: 67 80 00 00  	ret

80000d04 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000d04: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000d08: 67 80 00 00  	ret

80000d0c <_snrt_exit>:
;     addi      sp, sp, -8
80000d0c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000d10: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000d14: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000d18: 97 00 00 00  	auipc	ra, 0
80000d1c: e7 80 00 96  	jalr	-1696(ra)
;     lw        t0, 0(sp)
80000d20: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000d24: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000d28: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000d2c: 63 1c 05 00  	bnez	a0, 0x80000d44 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000d30: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000d34: 93 e2 12 00  	ori	t0, t0, 1

80000d38 <.Lpcrel_hi11>:
;     la        t1, tohost
80000d38: 17 03 00 00  	auipc	t1, 0
80000d3c: 13 03 83 04  	addi	t1, t1, 72
;     sw        t0, 0(t1)
80000d40: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000d44: 67 80 00 00  	ret
