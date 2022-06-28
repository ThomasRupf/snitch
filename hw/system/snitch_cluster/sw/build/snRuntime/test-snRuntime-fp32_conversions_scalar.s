
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-fp32_conversions_scalar:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000008b4 80000000 TEXT
  2 .init             00000468 800008c0 TEXT
  3 .rodata           00000008 80000d28 DATA
  4 .htif             00000048 80000d40 DATA
  5 .tdata            00000000 80000d88 DATA
  6 .tbss             00000010 80000d88 BSS
  7 .tbssend          00000000 80000d98 DATA
  8 .sdata            00000000 80000d98 DATA
  9 .data             00000000 80000d98 DATA
 10 .sbss             00000004 80000d98 BSS
 11 .bss              00000000 80000d9c BSS
 12 .dram             00000000 80000d9c DATA
 13 .debug_info       00001934 00000000 
 14 .debug_abbrev     0000052a 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       00001044 00000000 
 17 .debug_loc        000008d9 00000000 
 18 .debug_ranges     000000b8 00000000 
 19 .debug_str        0000084b 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000000f4 00000000 
 23 .symtab           00000dd0 00000000 
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
80000024: 13 05 00 03  	addi	a0, zero, 48
;     if (snrt_is_compute_core()) {
80000028: 63 f0 c5 62  	bgeu	a1, a2, 0x80000648 <main+0x648>
;         asm volatile(
8000002c: 93 05 00 00  	mv	a1, zero
80000030: 13 05 00 00  	mv	a0, zero
80000034: 37 f6 48 40  	lui	a2, 263311
80000038: 13 06 36 5c  	addi	a2, a2, 1475
8000003c: b7 f6 48 c0  	lui	a3, 787599
80000040: 93 86 36 5c  	addi	a3, a3, 1475
;         asm volatile(
80000044: 53 00 06 f0  	fmv.w.x	ft0, a2
80000048: d3 80 06 f0  	fmv.w.x	ft1, a3
;         write_csr(2048, 0);
8000004c: 73 50 00 80  	csrwi	2048, 0
80000050: 37 48 ff ff  	lui	a6, 1048564
80000054: 13 07 88 24  	addi	a4, a6, 584
80000058: b7 c8 ff ff  	lui	a7, 1048572
8000005c: 93 87 88 24  	addi	a5, a7, 584
;         asm volatile(
80000060: 53 01 07 f4  	fmv.h.x	ft2, a4
80000064: d3 81 07 f4  	fmv.h.x	ft3, a5
80000068: 93 02 20 f4  	addi	t0, zero, -190
8000006c: 93 07 20 fc  	addi	a5, zero, -62
;         asm volatile(
80000070: 13 06 20 f4  	addi	a2, zero, -190
80000074: 93 06 20 fc  	addi	a3, zero, -62
80000078: 53 02 06 f6  	fmv.b.x	ft4, a2
8000007c: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
80000080: 53 73 00 44  	fcvt.h.s	ft6, ft0
80000084: d3 f3 00 44  	fcvt.h.s	ft7, ft1
80000088: d3 25 23 a4  	feq.h	a1, ft6, ft2
8000008c: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
80000090: 13 86 f5 ff  	addi	a2, a1, -1
80000094: 13 36 16 00  	seqz	a2, a2
;         errs -= (res_cvt1 == 0x1);
80000098: 93 06 f5 ff  	addi	a3, a0, -1
8000009c: 93 b6 16 00  	seqz	a3, a3
800000a0: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
800000a4: 53 73 00 46  	fcvt.b.s	ft6, ft0
800000a8: d3 f3 00 46  	fcvt.b.s	ft7, ft1
800000ac: d3 25 43 a6  	feq.b	a1, ft6, ft4
800000b0: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
800000b4: 93 86 f5 ff  	addi	a3, a1, -1
800000b8: 93 b6 16 00  	seqz	a3, a3
800000bc: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
800000c0: 93 06 f5 ff  	addi	a3, a0, -1
800000c4: 93 b6 16 00  	seqz	a3, a3
800000c8: 33 06 d6 00  	add	a2, a2, a3
;         write_csr(2048, 3);
800000cc: 73 d0 01 80  	csrwi	2048, 3
800000d0: 93 06 98 04  	addi	a3, a6, 73
800000d4: 13 87 98 04  	addi	a4, a7, 73
;         asm volatile(
800000d8: 53 81 06 f4  	fmv.h.x	ft2, a3
800000dc: d3 01 07 f4  	fmv.h.x	ft3, a4
800000e0: 93 06 50 f4  	addi	a3, zero, -187
800000e4: 13 07 50 fc  	addi	a4, zero, -59
;         asm volatile(
800000e8: 53 82 06 f6  	fmv.b.x	ft4, a3
800000ec: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
800000f0: 53 73 00 44  	fcvt.h.s	ft6, ft0
800000f4: d3 f3 00 44  	fcvt.h.s	ft7, ft1
800000f8: d3 25 23 a4  	feq.h	a1, ft6, ft2
800000fc: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
80000100: 93 86 f5 ff  	addi	a3, a1, -1
80000104: 93 b6 16 00  	seqz	a3, a3
80000108: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
8000010c: 93 06 f5 ff  	addi	a3, a0, -1
80000110: 93 b6 16 00  	seqz	a3, a3
80000114: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
80000118: 53 73 00 46  	fcvt.b.s	ft6, ft0
8000011c: d3 f3 00 46  	fcvt.b.s	ft7, ft1
80000120: d3 25 43 a6  	feq.b	a1, ft6, ft4
80000124: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
80000128: 93 86 f5 ff  	addi	a3, a1, -1
8000012c: 93 b6 16 00  	seqz	a3, a3
80000130: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000134: 93 06 f5 ff  	addi	a3, a0, -1
80000138: 93 b6 16 00  	seqz	a3, a3
8000013c: 33 06 d6 00  	add	a2, a2, a3
80000140: b7 26 cf 3f  	lui	a3, 261362
80000144: 93 86 06 aa  	addi	a3, a3, -1376
80000148: 37 27 cf bf  	lui	a4, 785650
8000014c: 13 07 07 aa  	addi	a4, a4, -1376
;         asm volatile(
80000150: 53 80 06 f0  	fmv.w.x	ft0, a3
80000154: d3 00 07 f0  	fmv.w.x	ft1, a4
;         write_csr(2048, 0);
80000158: 73 50 00 80  	csrwi	2048, 0
8000015c: 93 06 98 e7  	addi	a3, a6, -391
80000160: 13 87 98 e7  	addi	a4, a7, -391
;         asm volatile(
80000164: 53 81 06 f4  	fmv.h.x	ft2, a3
80000168: d3 01 07 f4  	fmv.h.x	ft3, a4
8000016c: 93 06 e0 f3  	addi	a3, zero, -194
80000170: 13 07 e0 fb  	addi	a4, zero, -66
;         asm volatile(
80000174: 53 82 06 f6  	fmv.b.x	ft4, a3
80000178: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
8000017c: 53 73 00 44  	fcvt.h.s	ft6, ft0
80000180: d3 f3 00 44  	fcvt.h.s	ft7, ft1
80000184: d3 25 23 a4  	feq.h	a1, ft6, ft2
80000188: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
8000018c: 93 86 f5 ff  	addi	a3, a1, -1
80000190: 93 b6 16 00  	seqz	a3, a3
80000194: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000198: 93 06 f5 ff  	addi	a3, a0, -1
8000019c: 93 b6 16 00  	seqz	a3, a3
800001a0: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
800001a4: 53 73 00 46  	fcvt.b.s	ft6, ft0
800001a8: d3 f3 00 46  	fcvt.b.s	ft7, ft1
800001ac: d3 25 43 a6  	feq.b	a1, ft6, ft4
800001b0: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
800001b4: 93 86 f5 ff  	addi	a3, a1, -1
800001b8: 93 b6 16 00  	seqz	a3, a3
800001bc: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
800001c0: 93 06 f5 ff  	addi	a3, a0, -1
800001c4: 93 b6 16 00  	seqz	a3, a3
800001c8: 33 06 d6 00  	add	a2, a2, a3
;         write_csr(2048, 3);
800001cc: 73 d0 01 80  	csrwi	2048, 3
800001d0: 93 06 f8 fc  	addi	a3, a6, -49
800001d4: 13 87 f8 fc  	addi	a4, a7, -49
;         asm volatile(
800001d8: 53 81 06 f4  	fmv.h.x	ft2, a3
800001dc: d3 01 07 f4  	fmv.h.x	ft3, a4
800001e0: 93 06 d0 f3  	addi	a3, zero, -195
800001e4: 13 07 d0 fb  	addi	a4, zero, -67
;         asm volatile(
800001e8: 53 82 06 f6  	fmv.b.x	ft4, a3
800001ec: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
800001f0: 53 73 00 44  	fcvt.h.s	ft6, ft0
800001f4: d3 f3 00 44  	fcvt.h.s	ft7, ft1
800001f8: d3 25 23 a4  	feq.h	a1, ft6, ft2
800001fc: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
80000200: 93 86 f5 ff  	addi	a3, a1, -1
80000204: 93 b6 16 00  	seqz	a3, a3
80000208: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
8000020c: 93 06 f5 ff  	addi	a3, a0, -1
80000210: 93 b6 16 00  	seqz	a3, a3
80000214: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
80000218: 53 73 00 46  	fcvt.b.s	ft6, ft0
8000021c: d3 f3 00 46  	fcvt.b.s	ft7, ft1
80000220: d3 25 43 a6  	feq.b	a1, ft6, ft4
80000224: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
80000228: 93 86 f5 ff  	addi	a3, a1, -1
8000022c: 93 b6 16 00  	seqz	a3, a3
80000230: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000234: 93 06 f5 ff  	addi	a3, a0, -1
80000238: 93 b6 16 00  	seqz	a3, a3
8000023c: 33 06 d6 00  	add	a2, a2, a3
80000240: b7 06 19 40  	lui	a3, 262544
80000244: 93 86 b6 fe  	addi	a3, a3, -21
80000248: 37 07 19 c0  	lui	a4, 786832
8000024c: 13 07 b7 fe  	addi	a4, a4, -21
;         asm volatile(
80000250: 53 80 06 f0  	fmv.w.x	ft0, a3
80000254: d3 00 07 f0  	fmv.w.x	ft1, a4
;         write_csr(2048, 0);
80000258: 73 50 00 80  	csrwi	2048, 0
8000025c: 93 06 88 0c  	addi	a3, a6, 200
80000260: 13 87 88 0c  	addi	a4, a7, 200
;         asm volatile(
80000264: 53 81 06 f4  	fmv.h.x	ft2, a3
80000268: d3 01 07 f4  	fmv.h.x	ft3, a4
8000026c: 93 06 10 f4  	addi	a3, zero, -191
80000270: 13 07 10 fc  	addi	a4, zero, -63
;         asm volatile(
80000274: 53 82 06 f6  	fmv.b.x	ft4, a3
80000278: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
8000027c: 53 73 00 44  	fcvt.h.s	ft6, ft0
80000280: d3 f3 00 44  	fcvt.h.s	ft7, ft1
80000284: d3 25 23 a4  	feq.h	a1, ft6, ft2
80000288: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
8000028c: 93 86 f5 ff  	addi	a3, a1, -1
80000290: 93 b6 16 00  	seqz	a3, a3
80000294: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000298: 93 06 f5 ff  	addi	a3, a0, -1
8000029c: 93 b6 16 00  	seqz	a3, a3
800002a0: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
800002a4: 53 73 00 46  	fcvt.b.s	ft6, ft0
800002a8: d3 f3 00 46  	fcvt.b.s	ft7, ft1
800002ac: d3 25 43 a6  	feq.b	a1, ft6, ft4
800002b0: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
800002b4: 93 86 f5 ff  	addi	a3, a1, -1
800002b8: 93 b6 16 00  	seqz	a3, a3
800002bc: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
800002c0: 93 06 f5 ff  	addi	a3, a0, -1
800002c4: 93 b6 16 00  	seqz	a3, a3
800002c8: 33 06 d6 00  	add	a2, a2, a3
;         write_csr(2048, 3);
800002cc: 73 d0 01 80  	csrwi	2048, 3
800002d0: 93 06 98 01  	addi	a3, a6, 25
800002d4: 13 87 98 01  	addi	a4, a7, 25
;         asm volatile(
800002d8: 53 81 06 f4  	fmv.h.x	ft2, a3
800002dc: d3 01 07 f4  	fmv.h.x	ft3, a4
;         asm volatile(
800002e0: 53 82 02 f6  	fmv.b.x	ft4, t0
800002e4: d3 82 07 f6  	fmv.b.x	ft5, a5
;         asm volatile(
800002e8: 53 73 00 44  	fcvt.h.s	ft6, ft0
800002ec: d3 f3 00 44  	fcvt.h.s	ft7, ft1
800002f0: d3 25 23 a4  	feq.h	a1, ft6, ft2
800002f4: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
800002f8: 93 86 f5 ff  	addi	a3, a1, -1
800002fc: 93 b6 16 00  	seqz	a3, a3
80000300: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000304: 93 06 f5 ff  	addi	a3, a0, -1
80000308: 93 b6 16 00  	seqz	a3, a3
8000030c: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
80000310: 53 73 00 46  	fcvt.b.s	ft6, ft0
80000314: d3 f3 00 46  	fcvt.b.s	ft7, ft1
80000318: d3 25 43 a6  	feq.b	a1, ft6, ft4
8000031c: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
80000320: 93 86 f5 ff  	addi	a3, a1, -1
80000324: 93 b6 16 00  	seqz	a3, a3
80000328: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
8000032c: 93 06 f5 ff  	addi	a3, a0, -1
80000330: 93 b6 16 00  	seqz	a3, a3
80000334: 33 06 d6 00  	add	a2, a2, a3
80000338: b7 26 80 3e  	lui	a3, 256002
8000033c: 93 86 b6 ff  	addi	a3, a3, -5
80000340: 37 27 80 be  	lui	a4, 780290
80000344: 13 07 b7 ff  	addi	a4, a4, -5
;         asm volatile(
80000348: 53 80 06 f0  	fmv.w.x	ft0, a3
8000034c: d3 00 07 f0  	fmv.w.x	ft1, a4
;         write_csr(2048, 0);
80000350: 73 50 00 80  	csrwi	2048, 0
80000354: b7 36 ff ff  	lui	a3, 1048563
80000358: 93 86 16 40  	addi	a3, a3, 1025
8000035c: 37 b7 ff ff  	lui	a4, 1048571
80000360: 13 07 17 40  	addi	a4, a4, 1025
;         asm volatile(
80000364: 53 81 06 f4  	fmv.h.x	ft2, a3
80000368: d3 01 07 f4  	fmv.h.x	ft3, a4
8000036c: 93 06 40 f3  	addi	a3, zero, -204
80000370: 13 07 40 fb  	addi	a4, zero, -76
;         asm volatile(
80000374: 53 82 06 f6  	fmv.b.x	ft4, a3
80000378: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
8000037c: 53 73 00 44  	fcvt.h.s	ft6, ft0
80000380: d3 f3 00 44  	fcvt.h.s	ft7, ft1
80000384: d3 25 23 a4  	feq.h	a1, ft6, ft2
80000388: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
8000038c: 93 86 f5 ff  	addi	a3, a1, -1
80000390: 93 b6 16 00  	seqz	a3, a3
80000394: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000398: 93 06 f5 ff  	addi	a3, a0, -1
8000039c: 93 b6 16 00  	seqz	a3, a3
800003a0: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
800003a4: 53 73 00 46  	fcvt.b.s	ft6, ft0
800003a8: d3 f3 00 46  	fcvt.b.s	ft7, ft1
800003ac: d3 25 43 a6  	feq.b	a1, ft6, ft4
800003b0: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
800003b4: 93 86 f5 ff  	addi	a3, a1, -1
800003b8: 93 b6 16 00  	seqz	a3, a3
800003bc: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
800003c0: 93 06 f5 ff  	addi	a3, a0, -1
800003c4: 93 b6 16 00  	seqz	a3, a3
800003c8: 33 06 d6 00  	add	a2, a2, a3
;         write_csr(2048, 3);
800003cc: 73 d0 01 80  	csrwi	2048, 3
800003d0: 93 06 08 e8  	addi	a3, a6, -384
800003d4: 13 87 08 e8  	addi	a4, a7, -384
;         asm volatile(
800003d8: 53 81 06 f4  	fmv.h.x	ft2, a3
800003dc: d3 01 07 f4  	fmv.h.x	ft3, a4
800003e0: 93 06 80 f2  	addi	a3, zero, -216
800003e4: 13 07 80 fa  	addi	a4, zero, -88
;         asm volatile(
800003e8: 53 82 06 f6  	fmv.b.x	ft4, a3
800003ec: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
800003f0: 53 73 00 44  	fcvt.h.s	ft6, ft0
800003f4: d3 f3 00 44  	fcvt.h.s	ft7, ft1
800003f8: d3 25 23 a4  	feq.h	a1, ft6, ft2
800003fc: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
80000400: 93 86 f5 ff  	addi	a3, a1, -1
80000404: 93 b6 16 00  	seqz	a3, a3
80000408: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
8000040c: 93 06 f5 ff  	addi	a3, a0, -1
80000410: 93 b6 16 00  	seqz	a3, a3
80000414: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
80000418: 53 73 00 46  	fcvt.b.s	ft6, ft0
8000041c: d3 f3 00 46  	fcvt.b.s	ft7, ft1
80000420: d3 25 43 a6  	feq.b	a1, ft6, ft4
80000424: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
80000428: 93 86 f5 ff  	addi	a3, a1, -1
8000042c: 93 b6 16 00  	seqz	a3, a3
80000430: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000434: 93 06 f5 ff  	addi	a3, a0, -1
80000438: 93 b6 16 00  	seqz	a3, a3
8000043c: 33 06 d6 00  	add	a2, a2, a3
80000440: b7 06 00 3f  	lui	a3, 258048
80000444: 37 07 00 bf  	lui	a4, 782336
;         asm volatile(
80000448: 53 80 06 f0  	fmv.w.x	ft0, a3
8000044c: d3 00 07 f0  	fmv.w.x	ft1, a4
;         write_csr(2048, 0);
80000450: 73 50 00 80  	csrwi	2048, 0
80000454: 93 06 08 80  	addi	a3, a6, -2048
80000458: 13 87 08 80  	addi	a4, a7, -2048
;         asm volatile(
8000045c: 53 81 06 f4  	fmv.h.x	ft2, a3
80000460: d3 01 07 f4  	fmv.h.x	ft3, a4
80000464: 93 06 80 f3  	addi	a3, zero, -200
80000468: 13 07 80 fb  	addi	a4, zero, -72
;         asm volatile(
8000046c: 53 82 06 f6  	fmv.b.x	ft4, a3
80000470: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
80000474: 53 73 00 44  	fcvt.h.s	ft6, ft0
80000478: d3 f3 00 44  	fcvt.h.s	ft7, ft1
8000047c: d3 25 23 a4  	feq.h	a1, ft6, ft2
80000480: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
80000484: 93 86 f5 ff  	addi	a3, a1, -1
80000488: 93 b6 16 00  	seqz	a3, a3
8000048c: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000490: 93 06 f5 ff  	addi	a3, a0, -1
80000494: 93 b6 16 00  	seqz	a3, a3
80000498: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
8000049c: 53 73 00 46  	fcvt.b.s	ft6, ft0
800004a0: d3 f3 00 46  	fcvt.b.s	ft7, ft1
800004a4: d3 25 43 a6  	feq.b	a1, ft6, ft4
800004a8: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
800004ac: 93 86 f5 ff  	addi	a3, a1, -1
800004b0: 93 b6 16 00  	seqz	a3, a3
800004b4: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
800004b8: 93 06 f5 ff  	addi	a3, a0, -1
800004bc: 93 b6 16 00  	seqz	a3, a3
800004c0: 33 06 d6 00  	add	a2, a2, a3
;         write_csr(2048, 3);
800004c4: 73 d0 01 80  	csrwi	2048, 3
800004c8: 93 06 08 f0  	addi	a3, a6, -256
800004cc: 13 87 08 f0  	addi	a4, a7, -256
;         asm volatile(
800004d0: 53 81 06 f4  	fmv.h.x	ft2, a3
800004d4: d3 01 07 f4  	fmv.h.x	ft3, a4
800004d8: 93 06 00 f3  	addi	a3, zero, -208
800004dc: 13 07 00 fb  	addi	a4, zero, -80
;         asm volatile(
800004e0: 53 82 06 f6  	fmv.b.x	ft4, a3
800004e4: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
800004e8: 53 73 00 44  	fcvt.h.s	ft6, ft0
800004ec: d3 f3 00 44  	fcvt.h.s	ft7, ft1
800004f0: d3 25 23 a4  	feq.h	a1, ft6, ft2
800004f4: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
800004f8: 93 86 f5 ff  	addi	a3, a1, -1
800004fc: 93 b6 16 00  	seqz	a3, a3
80000500: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000504: 93 06 f5 ff  	addi	a3, a0, -1
80000508: 93 b6 16 00  	seqz	a3, a3
8000050c: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
80000510: 53 73 00 46  	fcvt.b.s	ft6, ft0
80000514: d3 f3 00 46  	fcvt.b.s	ft7, ft1
80000518: d3 25 43 a6  	feq.b	a1, ft6, ft4
8000051c: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
80000520: 93 86 f5 ff  	addi	a3, a1, -1
80000524: 93 b6 16 00  	seqz	a3, a3
80000528: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
8000052c: 93 06 f5 ff  	addi	a3, a0, -1
80000530: 93 b6 16 00  	seqz	a3, a3
80000534: 33 06 d6 00  	add	a2, a2, a3
80000538: b7 46 c8 42  	lui	a3, 273540
8000053c: 93 86 66 f3  	addi	a3, a3, -202
80000540: 37 47 c8 c2  	lui	a4, 797828
80000544: 13 07 67 f3  	addi	a4, a4, -202
;         asm volatile(
80000548: 53 80 06 f0  	fmv.w.x	ft0, a3
8000054c: d3 00 07 f0  	fmv.w.x	ft1, a4
;         write_csr(2048, 0);
80000550: 73 50 00 80  	csrwi	2048, 0
80000554: b7 56 ff ff  	lui	a3, 1048565
80000558: 93 86 26 64  	addi	a3, a3, 1602
8000055c: 37 d7 ff ff  	lui	a4, 1048573
80000560: 13 07 27 64  	addi	a4, a4, 1602
;         asm volatile(
80000564: 53 81 06 f4  	fmv.h.x	ft2, a3
80000568: d3 01 07 f4  	fmv.h.x	ft3, a4
8000056c: 93 06 60 f5  	addi	a3, zero, -170
80000570: 13 07 60 fd  	addi	a4, zero, -42
;         asm volatile(
80000574: 53 82 06 f6  	fmv.b.x	ft4, a3
80000578: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
8000057c: 53 73 00 44  	fcvt.h.s	ft6, ft0
80000580: d3 f3 00 44  	fcvt.h.s	ft7, ft1
80000584: d3 25 23 a4  	feq.h	a1, ft6, ft2
80000588: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
8000058c: 93 86 f5 ff  	addi	a3, a1, -1
80000590: 93 b6 16 00  	seqz	a3, a3
80000594: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
80000598: 93 06 f5 ff  	addi	a3, a0, -1
8000059c: 93 b6 16 00  	seqz	a3, a3
800005a0: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
800005a4: 53 73 00 46  	fcvt.b.s	ft6, ft0
800005a8: d3 f3 00 46  	fcvt.b.s	ft7, ft1
800005ac: d3 25 43 a6  	feq.b	a1, ft6, ft4
800005b0: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
800005b4: 93 86 f5 ff  	addi	a3, a1, -1
800005b8: 93 b6 16 00  	seqz	a3, a3
800005bc: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
800005c0: 93 06 f5 ff  	addi	a3, a0, -1
800005c4: 93 b6 16 00  	seqz	a3, a3
800005c8: 33 06 d6 00  	add	a2, a2, a3
;         write_csr(2048, 3);
800005cc: 73 d0 01 80  	csrwi	2048, 3
800005d0: 93 06 88 2c  	addi	a3, a6, 712
800005d4: 13 87 88 2c  	addi	a4, a7, 712
;         asm volatile(
800005d8: 53 81 06 f4  	fmv.h.x	ft2, a3
800005dc: d3 01 07 f4  	fmv.h.x	ft3, a4
800005e0: 93 06 d0 f6  	addi	a3, zero, -147
800005e4: 13 07 d0 fe  	addi	a4, zero, -19
;         asm volatile(
800005e8: 53 82 06 f6  	fmv.b.x	ft4, a3
800005ec: d3 02 07 f6  	fmv.b.x	ft5, a4
;         asm volatile(
800005f0: 53 73 00 44  	fcvt.h.s	ft6, ft0
800005f4: d3 f3 00 44  	fcvt.h.s	ft7, ft1
800005f8: d3 25 23 a4  	feq.h	a1, ft6, ft2
800005fc: 53 a5 33 a4  	feq.h	a0, ft7, ft3
;         errs -= (res_cvt0 == 0x1);
80000600: 93 86 f5 ff  	addi	a3, a1, -1
80000604: 93 b6 16 00  	seqz	a3, a3
80000608: 33 06 d6 00  	add	a2, a2, a3
;         errs -= (res_cvt1 == 0x1);
8000060c: 93 06 f5 ff  	addi	a3, a0, -1
80000610: 93 b6 16 00  	seqz	a3, a3
80000614: 33 06 d6 00  	add	a2, a2, a3
;         asm volatile(
80000618: 53 73 00 46  	fcvt.b.s	ft6, ft0
8000061c: d3 f3 00 46  	fcvt.b.s	ft7, ft1
80000620: d3 25 43 a6  	feq.b	a1, ft6, ft4
80000624: 53 a5 53 a6  	feq.b	a0, ft7, ft5
;         errs -= (res_cvt0 == 0x1);
80000628: 93 85 f5 ff  	addi	a1, a1, -1
8000062c: 93 b5 15 00  	seqz	a1, a1
80000630: b3 05 b6 00  	add	a1, a2, a1
;         errs -= (res_cvt1 == 0x1);
80000634: 13 05 f5 ff  	addi	a0, a0, -1
80000638: 13 35 15 00  	seqz	a0, a0
8000063c: 33 85 a5 00  	add	a0, a1, a0
80000640: 93 05 00 03  	addi	a1, zero, 48
80000644: 33 85 a5 40  	sub	a0, a1, a0
;     return errs;
80000648: 67 80 00 00  	ret

8000064c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000064c: 37 05 00 00  	lui	a0, 0
80000650: 33 05 45 00  	add	a0, a0, tp
80000654: 03 25 05 00  	lw	a0, 0(a0)
80000658: 03 25 05 00  	lw	a0, 0(a0)
8000065c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000660: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000664: 33 85 a5 40  	sub	a0, a1, a0
80000668: 67 80 00 00  	ret

8000066c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
8000066c: 37 05 00 00  	lui	a0, 0
80000670: 33 05 45 00  	add	a0, a0, tp
80000674: 03 25 05 00  	lw	a0, 0(a0)
80000678: 03 25 05 00  	lw	a0, 0(a0)
8000067c: 03 25 05 07  	lw	a0, 112(a0)
80000680: 67 80 00 00  	ret

80000684 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000684: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000688: 63 44 05 00  	bltz	a0, 0x80000690 <__snrt_isr+0xc>
;         while (1)
8000068c: 6f 00 00 00  	j	0x8000068c <__snrt_isr+0x8>
80000690: b7 05 00 80  	lui	a1, 524288
80000694: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80000698: 33 75 b5 00  	and	a0, a0, a1
8000069c: 13 05 d5 ff  	addi	a0, a0, -3
800006a0: 93 55 25 00  	srli	a1, a0, 2
800006a4: 13 15 e5 01  	slli	a0, a0, 30
800006a8: 33 65 b5 00  	or	a0, a0, a1
800006ac: 93 05 40 00  	addi	a1, zero, 4
800006b0: 63 0a b5 06  	beq	a0, a1, 0x80000724 <.LBB1_7+0x58>
800006b4: 63 1a 05 08  	bnez	a0, 0x80000748 <.LBB1_7+0x7c>
800006b8: 37 05 00 00  	lui	a0, 0
800006bc: 33 05 45 00  	add	a0, a0, tp
800006c0: 03 25 05 00  	lw	a0, 0(a0)
800006c4: 03 25 05 00  	lw	a0, 0(a0)
800006c8: f3 25 40 f1  	csrr	a1, mhartid

800006cc <.LBB1_7>:
;     asm volatile(
800006cc: 17 06 00 00  	auipc	a2, 0
800006d0: 13 06 c6 6c  	addi	a2, a2, 1740
800006d4: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800006d8: 93 06 06 00  	mv	a3, a2
800006dc: 93 02 10 00  	addi	t0, zero, 1
800006e0: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800006e4: e3 9e 02 fe  	bnez	t0, 0x800006e0 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800006e8: b7 06 00 00  	lui	a3, 0
800006ec: b3 86 46 00  	add	a3, a3, tp
800006f0: 83 a6 86 00  	lw	a3, 8(a3)
800006f4: 33 85 a5 40  	sub	a0, a1, a0
800006f8: 93 55 35 00  	srli	a1, a0, 3
800006fc: 93 f5 c5 ff  	andi	a1, a1, -4
80000700: b3 85 b6 00  	add	a1, a3, a1
80000704: 83 a6 05 00  	lw	a3, 0(a1)
80000708: 13 07 10 00  	addi	a4, zero, 1
8000070c: 33 15 a7 00  	sll	a0, a4, a0
80000710: 13 45 f5 ff  	not	a0, a0
80000714: 33 f5 a6 00  	and	a0, a3, a0
80000718: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000071c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000720: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000724: 37 05 00 00  	lui	a0, 0
80000728: 33 05 45 00  	add	a0, a0, tp
8000072c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000730: b7 05 00 00  	lui	a1, 0
80000734: b3 85 45 00  	add	a1, a1, tp
80000738: 83 a5 c5 00  	lw	a1, 12(a1)
8000073c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000740: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000744: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000748: 67 80 00 00  	ret

8000074c <_snrt_init_team>:
;     team->base.root = team;
8000074c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000750: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000754: 03 23 87 00  	lw	t1, 8(a4)
80000758: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000075c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80000760: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000764: 83 22 47 00  	lw	t0, 4(a4)
80000768: 33 88 08 03  	mul	a6, a7, a6
8000076c: 33 05 58 02  	mul	a0, a6, t0
80000770: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000774: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000778: 33 85 68 40  	sub	a0, a7, t1
8000077c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80000780: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000784: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000788: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000078c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80000790: 03 25 87 01  	lw	a0, 24(a4)
80000794: b7 05 00 10  	lui	a1, 65536
80000798: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
8000079c: 23 a2 07 02  	sw	zero, 36(a5)
800007a0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800007a4: 03 25 07 02  	lw	a0, 32(a4)
800007a8: 83 25 47 02  	lw	a1, 36(a4)
800007ac: 23 a4 a7 02  	sw	a0, 40(a5)
800007b0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800007b4: 23 a8 c7 02  	sw	a2, 48(a5)
800007b8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800007bc: 23 ac d7 02  	sw	a3, 56(a5)
800007c0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800007c4: 03 25 07 01  	lw	a0, 16(a4)
800007c8: 33 08 a6 00  	add	a6, a2, a0
800007cc: 93 05 08 19  	addi	a1, a6, 400
800007d0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800007d4: b3 32 a8 00  	sltu	t0, a6, a0
800007d8: 93 55 15 00  	srli	a1, a0, 1
800007dc: 33 03 b8 00  	add	t1, a6, a1
800007e0: b3 35 03 01  	sltu	a1, t1, a6
800007e4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800007e8: 23 a0 67 04  	sw	t1, 64(a5)
800007ec: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800007f0: 13 15 15 00  	slli	a0, a0, 1
800007f4: b3 05 c5 00  	add	a1, a0, a2
800007f8: 33 b5 a5 00  	sltu	a0, a1, a0
800007fc: 23 a4 b7 04  	sw	a1, 72(a5)
80000800: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000804: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000808: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000080c: 37 05 00 00  	lui	a0, 0
80000810: 33 05 45 00  	add	a0, a0, tp
80000814: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000818: 03 a5 07 00  	lw	a0, 0(a5)
8000081c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000820: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000824: b3 85 b8 40  	sub	a1, a7, a1
80000828: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000082c: b7 05 00 00  	lui	a1, 0
80000830: b3 85 45 00  	add	a1, a1, tp
80000834: 23 a2 a5 00  	sw	a0, 4(a1)
80000838: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000083c: 33 85 a8 02  	mul	a0, a7, a0

80000840 <.LBB0_1>:
80000840: 97 05 00 00  	auipc	a1, 0
80000844: 93 85 c5 55  	addi	a1, a1, 1372
80000848: 33 05 b5 00  	add	a0, a0, a1
8000084c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000850: 83 28 07 03  	lw	a7, 48(a4)
80000854: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000858: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000085c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80000860: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000864: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000868: 13 05 76 00  	addi	a0, a2, 7
8000086c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80000870: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000874: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000878: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000087c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80000880: 03 a5 05 00  	lw	a0, 0(a1)
80000884: 13 05 f5 44  	addi	a0, a0, 1103
80000888: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000088c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80000890: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80000894: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000898: 37 05 00 00  	lui	a0, 0
8000089c: 33 05 45 00  	add	a0, a0, tp
800008a0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800008a4: 37 05 00 00  	lui	a0, 0
800008a8: 33 05 45 00  	add	a0, a0, tp
800008ac: 23 26 e5 00  	sw	a4, 12(a0)
; }
800008b0: 67 80 00 00  	ret

Disassembly of section .init:

800008c0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800008c0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800008c4: 93 81 81 cc  	addi	gp, gp, -824

800008c8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800008c8: 97 00 00 00  	auipc	ra, 0
800008cc: e7 80 40 3c  	jalr	964(ra)

800008d0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800008d0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800008d4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800008d8: 97 00 00 00  	auipc	ra, 0
800008dc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800008e0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800008e4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800008e8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800008ec: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800008f0: 63 92 02 02  	bnez	t0, 0x80000914 <snrt.crt0.init_registers>

800008f4 <.Lpcrel_hi0>:
;     la        t0, _edata
800008f4: 97 02 00 00  	auipc	t0, 0
800008f8: 93 82 42 4a  	addi	t0, t0, 1188

800008fc <.Lpcrel_hi1>:
;     la        t1, _end
800008fc: 17 03 00 00  	auipc	t1, 0
80000900: 13 03 03 4a  	addi	t1, t1, 1184
;     bge       t0, t1, 2f
80000904: 63 d8 62 00  	bge	t0, t1, 0x80000914 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000908: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000090c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000910: e3 cc 62 fe  	blt	t0, t1, 0x80000908 <.Lpcrel_hi1+0xc>

80000914 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000914: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000918: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000091c: 63 82 02 08  	beqz	t0, 0x800009a0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000920: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000924: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000928: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000092c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000930: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000934: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000938: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000093c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000940: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000944: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000948: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000094c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000950: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000954: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000958: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000095c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000960: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000964: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000968: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000096c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000970: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000974: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000978: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000097c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000980: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000984: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000988: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000098c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80000990: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80000994: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80000998: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000099c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800009a0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800009a0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800009a4: 23 a0 06 00  	sw	zero, 0(a3)

800009a8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800009a8: 97 02 00 00  	auipc	t0, 0
800009ac: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
800009b0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800009b4: 93 87 06 00  	mv	a5, a3

800009b8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800009b8: 97 03 00 00  	auipc	t2, 0
800009bc: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
800009c0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800009c4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800009c8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800009cc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800009d0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800009d4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800009d8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800009dc: b3 86 66 40  	sub	a3, a3, t1

800009e0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800009e0: 97 02 00 00  	auipc	t0, 0
800009e4: 93 82 82 3a  	addi	t0, t0, 936

800009e8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800009e8: 17 03 00 00  	auipc	t1, 0
800009ec: 13 03 03 3a  	addi	t1, t1, 928

800009f0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800009f0: 97 03 00 00  	auipc	t2, 0
800009f4: 93 83 83 39  	addi	t2, t2, 920

800009f8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800009f8: 17 0e 00 00  	auipc	t3, 0
800009fc: 13 0e 0e 3a  	addi	t3, t3, 928
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000a00: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000a04: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000a08: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80000a0c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000a10: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000a14: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000a18: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80000a1c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000a20: 63 dc 62 00  	bge	t0, t1, 0x80000a38 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000a24: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000a28: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80000a2c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a30: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000a34: e3 c8 62 fe  	blt	t0, t1, 0x80000a24 <.Lpcrel_hi7+0x2c>

80000a38 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000a38: 97 02 00 00  	auipc	t0, 0
80000a3c: 93 82 02 35  	addi	t0, t0, 848

80000a40 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000a40: 17 03 00 00  	auipc	t1, 0
80000a44: 13 03 83 35  	addi	t1, t1, 856
;     bge       t0, t1, 2f
80000a48: 63 da 62 00  	bge	t0, t1, 0x80000a5c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80000a4c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000a50: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a54: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000a58: e3 ca 72 fe  	blt	t0, t2, 0x80000a4c <.Lpcrel_hi9+0xc>

80000a5c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80000a5c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000a60: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000a64: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000a68: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80000a6c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000a70: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000a74: 97 00 00 00  	auipc	ra, 0
80000a78: e7 80 80 cd  	jalr	-808(ra)
;     lw        a0, 0(sp)
80000a7c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000a80: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000a84: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000a88: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80000a8c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000a90: 13 01 41 01  	addi	sp, sp, 20

80000a94 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000a94: 97 02 00 00  	auipc	t0, 0
80000a98: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80000a9c: 73 90 52 30  	csrw	mtvec, t0

80000aa0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000aa0: 97 00 00 00  	auipc	ra, 0
80000aa4: e7 80 00 22  	jalr	544(ra)

80000aa8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000aa8: 97 f0 ff ff  	auipc	ra, 1048575
80000aac: e7 80 80 55  	jalr	1368(ra)
;     mv        s0, a0 # store return value in s0
80000ab0: 13 04 05 00  	mv	s0, a0

80000ab4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000ab4: 97 00 00 00  	auipc	ra, 0
80000ab8: e7 80 c0 20  	jalr	524(ra)

80000abc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80000abc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000ac0: 97 00 00 00  	auipc	ra, 0
80000ac4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000ac8: 73 00 50 10  	wfi	
;     j       1b
80000acc: 6f f0 df ff  	j	0x80000ac8 <snrt.crt0.end+0xc>

80000ad0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000ad0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000ad4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000ad8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80000adc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000ae0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000ae4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000ae8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80000aec: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000af0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000af4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000af8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80000afc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000b00: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000b04: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000b08: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80000b0c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000b10: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000b14: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000b18: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000b1c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000b20: 63 84 02 08  	beqz	t0, 0x80000ba8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000b24: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000b28: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80000b2c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000b30: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000b34: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000b38: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80000b3c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000b40: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000b44: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000b48: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80000b4c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000b50: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000b54: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000b58: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80000b5c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000b60: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000b64: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000b68: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80000b6c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000b70: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000b74: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000b78: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80000b7c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000b80: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000b84: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000b88: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80000b8c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000b90: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000b94: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000b98: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80000b9c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000ba0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000ba4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000ba8: 97 00 00 00  	auipc	ra, 0
80000bac: e7 80 c0 ad  	jalr	-1316(ra)
;     csrr    t0, misa
80000bb0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000bb4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000bb8: 63 84 02 08  	beqz	t0, 0x80000c40 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000bbc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000bc0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000bc4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000bc8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000bcc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000bd0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000bd4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000bd8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000bdc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000be0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000be4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000be8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000bec: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000bf0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000bf4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000bf8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000bfc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000c00: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000c04: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000c08: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000c0c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000c10: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000c14: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000c18: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000c1c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000c20: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000c24: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000c28: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000c2c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000c30: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000c34: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000c38: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000c3c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000c40: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000c44: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000c48: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000c4c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000c50: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000c54: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000c58: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000c5c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000c60: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000c64: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000c68: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000c6c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000c70: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000c74: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000c78: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000c7c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000c80: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000c84: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000c88: 73 00 20 30  	mret	

80000c8c <_snrt_init_core_info>:
;     mv        a4, a1
80000c8c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000c90: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000c94: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000c98: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000c9c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000ca0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000ca4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000ca8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000cac: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000cb0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000cb4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000cb8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000cbc: 67 80 00 00  	ret

80000cc0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000cc0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000cc4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000cc8: 97 00 00 00  	auipc	ra, 0
80000ccc: e7 80 40 9a  	jalr	-1628(ra)
;     lw        a0, 0(a0)
80000cd0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000cd4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000cd8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000cdc: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000ce0: 67 80 00 00  	ret

80000ce4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000ce4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000ce8: 67 80 00 00  	ret

80000cec <_snrt_exit>:
;     addi      sp, sp, -8
80000cec: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000cf0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000cf4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000cf8: 97 00 00 00  	auipc	ra, 0
80000cfc: e7 80 40 95  	jalr	-1708(ra)
;     lw        t0, 0(sp)
80000d00: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000d04: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000d08: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000d0c: 63 1c 05 00  	bnez	a0, 0x80000d24 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000d10: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000d14: 93 e2 12 00  	ori	t0, t0, 1

80000d18 <.Lpcrel_hi11>:
;     la        t1, tohost
80000d18: 17 03 00 00  	auipc	t1, 0
80000d1c: 13 03 83 02  	addi	t1, t1, 40
;     sw        t0, 0(t1)
80000d20: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000d24: 67 80 00 00  	ret
