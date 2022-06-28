
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-fp16_comparison_vector:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000006f4 80000000 TEXT
  2 .init             00000468 80000700 TEXT
  3 .rodata           00000008 80000b68 DATA
  4 .htif             00000048 80000b80 DATA
  5 .tdata            00000000 80000bc8 DATA
  6 .tbss             00000010 80000bc8 BSS
  7 .tbssend          00000000 80000bd8 DATA
  8 .sdata            00000000 80000bd8 DATA
  9 .data             00000000 80000bd8 DATA
 10 .sbss             00000004 80000bd8 BSS
 11 .bss              00000000 80000bdc BSS
 12 .dram             00000000 80000bdc DATA
 13 .debug_info       00001616 00000000 
 14 .debug_abbrev     00000539 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       000010a0 00000000 
 17 .debug_loc        00000264 00000000 
 18 .debug_ranges     000000b8 00000000 
 19 .debug_str        00000718 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000000f4 00000000 
 23 .symtab           00000a50 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000042c 00000000 


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
80000024: 13 05 00 04  	addi	a0, zero, 64
;     if (snrt_is_compute_core()) {
80000028: 63 f0 c5 46  	bgeu	a1, a2, 0x80000488 <main+0x488>
;         asm volatile(
8000002c: 13 05 00 00  	mv	a0, zero
80000030: 93 06 00 00  	mv	a3, zero
80000034: 13 06 00 00  	mv	a2, zero
80000038: 93 05 00 00  	mv	a1, zero
8000003c: 37 f7 48 40  	lui	a4, 263311
80000040: 13 07 37 5c  	addi	a4, a4, 1475
80000044: b7 27 cf 3f  	lui	a5, 261362
80000048: 93 87 07 aa  	addi	a5, a5, -1376
;         asm volatile(
8000004c: d3 01 07 f0  	fmv.w.x	ft3, a4
80000050: 53 82 07 f0  	fmv.w.x	ft4, a5
80000054: b3 22 32 b0  	vfcpk.h.s.0	ft5, ft4, ft3
80000058: b3 62 32 b0  	vfcpk.h.s.1	ft5, ft4, ft3
8000005c: 33 a3 41 b0  	vfcpk.h.s.0	ft6, ft3, ft4
80000060: 33 e3 41 b0  	vfcpk.h.s.1	ft6, ft3, ft4
80000064: b3 a3 31 b0  	vfcpk.h.s.0	ft7, ft3, ft3
80000068: b3 e3 31 b0  	vfcpk.h.s.1	ft7, ft3, ft3
8000006c: 33 2e 42 b0  	vfcpk.h.s.0	ft8, ft4, ft4
80000070: 33 6e 42 b0  	vfcpk.h.s.1	ft8, ft4, ft4
;         asm volatile(
80000074: 33 a5 52 a0  	vfeq.h	a0, ft5, ft5
80000078: b3 26 63 a0  	vfeq.h	a3, ft6, ft6
8000007c: 33 a6 62 a0  	vfeq.h	a2, ft5, ft6
80000080: b3 25 53 a0  	vfeq.h	a1, ft6, ft5
;         errs -= (cmp0 == 0xf);  // 1111
80000084: 13 07 15 ff  	addi	a4, a0, -15
80000088: 13 37 17 00  	seqz	a4, a4
;         errs -= (cmp1 == 0xf);  // 1111
8000008c: 93 87 16 ff  	addi	a5, a3, -15
80000090: 93 b7 17 00  	seqz	a5, a5
80000094: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0);
80000098: 93 37 16 00  	seqz	a5, a2
8000009c: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0);
800000a0: 93 b7 15 00  	seqz	a5, a1
800000a4: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800000a8: 33 e5 52 a0  	vfeq.r.h	a0, ft5, ft5
800000ac: b3 66 63 a0  	vfeq.r.h	a3, ft6, ft6
800000b0: 33 e6 62 a0  	vfeq.r.h	a2, ft5, ft6
800000b4: b3 65 53 a0  	vfeq.r.h	a1, ft6, ft5
;         errs -= (cmp0 == 0x5);
800000b8: 93 07 b5 ff  	addi	a5, a0, -5
800000bc: 93 b7 17 00  	seqz	a5, a5
800000c0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0x5);
800000c4: 93 87 b6 ff  	addi	a5, a3, -5
800000c8: 93 b7 17 00  	seqz	a5, a5
800000cc: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xa);
800000d0: 93 07 66 ff  	addi	a5, a2, -10
800000d4: 93 b7 17 00  	seqz	a5, a5
800000d8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xa);
800000dc: 93 87 65 ff  	addi	a5, a1, -10
800000e0: 93 b7 17 00  	seqz	a5, a5
800000e4: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800000e8: 33 a5 52 a2  	vfne.h	a0, ft5, ft5
800000ec: b3 26 63 a2  	vfne.h	a3, ft6, ft6
800000f0: 33 a6 62 a2  	vfne.h	a2, ft5, ft6
800000f4: b3 25 53 a2  	vfne.h	a1, ft6, ft5
;         errs -= (cmp0 == 0);
800000f8: 93 37 15 00  	seqz	a5, a0
800000fc: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
80000100: 93 b7 16 00  	seqz	a5, a3
80000104: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xf);
80000108: 93 07 16 ff  	addi	a5, a2, -15
8000010c: 93 b7 17 00  	seqz	a5, a5
80000110: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xf);
80000114: 93 87 15 ff  	addi	a5, a1, -15
80000118: 93 b7 17 00  	seqz	a5, a5
8000011c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000120: 33 e5 52 a2  	vfne.r.h	a0, ft5, ft5
80000124: b3 66 63 a2  	vfne.r.h	a3, ft6, ft6
80000128: 33 e6 62 a2  	vfne.r.h	a2, ft5, ft6
8000012c: b3 65 53 a2  	vfne.r.h	a1, ft6, ft5
;         errs -= (cmp0 == 0xa);
80000130: 93 07 65 ff  	addi	a5, a0, -10
80000134: 93 b7 17 00  	seqz	a5, a5
80000138: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xa);
8000013c: 93 87 66 ff  	addi	a5, a3, -10
80000140: 93 b7 17 00  	seqz	a5, a5
80000144: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x5);
80000148: 93 07 b6 ff  	addi	a5, a2, -5
8000014c: 93 b7 17 00  	seqz	a5, a5
80000150: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x5);
80000154: 93 87 b5 ff  	addi	a5, a1, -5
80000158: 93 b7 17 00  	seqz	a5, a5
8000015c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000160: 33 a5 52 a4  	vflt.h	a0, ft5, ft5
80000164: b3 26 63 a4  	vflt.h	a3, ft6, ft6
80000168: 33 a6 62 a4  	vflt.h	a2, ft5, ft6
8000016c: b3 25 53 a4  	vflt.h	a1, ft6, ft5
;         errs -= (cmp0 == 0);
80000170: 93 37 15 00  	seqz	a5, a0
80000174: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
80000178: 93 b7 16 00  	seqz	a5, a3
8000017c: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x5);
80000180: 93 07 b6 ff  	addi	a5, a2, -5
80000184: 93 b7 17 00  	seqz	a5, a5
80000188: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xa);
8000018c: 93 87 65 ff  	addi	a5, a1, -10
80000190: 93 b7 17 00  	seqz	a5, a5
80000194: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000198: 33 e5 52 a4  	vflt.r.h	a0, ft5, ft5
8000019c: b3 66 63 a4  	vflt.r.h	a3, ft6, ft6
800001a0: 33 e6 62 a4  	vflt.r.h	a2, ft5, ft6
800001a4: b3 65 53 a4  	vflt.r.h	a1, ft6, ft5
;         errs -= (cmp0 == 0);
800001a8: 93 37 15 00  	seqz	a5, a0
800001ac: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xa);
800001b0: 93 87 66 ff  	addi	a5, a3, -10
800001b4: 93 b7 17 00  	seqz	a5, a5
800001b8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x5);
800001bc: 93 07 b6 ff  	addi	a5, a2, -5
800001c0: 93 b7 17 00  	seqz	a5, a5
800001c4: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0);
800001c8: 93 b7 15 00  	seqz	a5, a1
800001cc: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800001d0: 33 a5 52 a8  	vfle.h	a0, ft5, ft5
800001d4: b3 26 63 a8  	vfle.h	a3, ft6, ft6
800001d8: 33 a6 62 a8  	vfle.h	a2, ft5, ft6
800001dc: b3 25 53 a8  	vfle.h	a1, ft6, ft5
;         errs -= (cmp0 == 0xf);
800001e0: 93 07 15 ff  	addi	a5, a0, -15
800001e4: 93 b7 17 00  	seqz	a5, a5
800001e8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xf);
800001ec: 93 87 16 ff  	addi	a5, a3, -15
800001f0: 93 b7 17 00  	seqz	a5, a5
800001f4: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x5);
800001f8: 93 07 b6 ff  	addi	a5, a2, -5
800001fc: 93 b7 17 00  	seqz	a5, a5
80000200: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xa);
80000204: 93 87 65 ff  	addi	a5, a1, -10
80000208: 93 b7 17 00  	seqz	a5, a5
8000020c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000210: 33 e5 52 a8  	vfle.r.h	a0, ft5, ft5
80000214: b3 66 63 a8  	vfle.r.h	a3, ft6, ft6
80000218: 33 e6 62 a8  	vfle.r.h	a2, ft5, ft6
8000021c: b3 65 53 a8  	vfle.r.h	a1, ft6, ft5
;         errs -= (cmp0 == 0x5);
80000220: 93 07 b5 ff  	addi	a5, a0, -5
80000224: 93 b7 17 00  	seqz	a5, a5
80000228: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xf);
8000022c: 93 87 16 ff  	addi	a5, a3, -15
80000230: 93 b7 17 00  	seqz	a5, a5
80000234: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xf);
80000238: 93 07 16 ff  	addi	a5, a2, -15
8000023c: 93 b7 17 00  	seqz	a5, a5
80000240: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xa);
80000244: 93 87 65 ff  	addi	a5, a1, -10
80000248: 93 b7 17 00  	seqz	a5, a5
8000024c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000250: 33 a5 52 aa  	vfgt.h	a0, ft5, ft5
80000254: b3 26 63 aa  	vfgt.h	a3, ft6, ft6
80000258: 33 a6 62 aa  	vfgt.h	a2, ft5, ft6
8000025c: b3 25 53 aa  	vfgt.h	a1, ft6, ft5
;         errs -= (cmp0 == 0);
80000260: 93 37 15 00  	seqz	a5, a0
80000264: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
80000268: 93 b7 16 00  	seqz	a5, a3
8000026c: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xa);
80000270: 93 07 66 ff  	addi	a5, a2, -10
80000274: 93 b7 17 00  	seqz	a5, a5
80000278: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x5);
8000027c: 93 87 b5 ff  	addi	a5, a1, -5
80000280: 93 b7 17 00  	seqz	a5, a5
80000284: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000288: 33 e5 52 aa  	vfgt.r.h	a0, ft5, ft5
8000028c: b3 66 63 aa  	vfgt.r.h	a3, ft6, ft6
80000290: 33 e6 62 aa  	vfgt.r.h	a2, ft5, ft6
80000294: b3 65 53 aa  	vfgt.r.h	a1, ft6, ft5
;         errs -= (cmp0 == 0xa);
80000298: 93 07 65 ff  	addi	a5, a0, -10
8000029c: 93 b7 17 00  	seqz	a5, a5
800002a0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
800002a4: 93 b7 16 00  	seqz	a5, a3
800002a8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0);
800002ac: 93 37 16 00  	seqz	a5, a2
800002b0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x5);
800002b4: 93 87 b5 ff  	addi	a5, a1, -5
800002b8: 93 b7 17 00  	seqz	a5, a5
800002bc: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800002c0: 33 a5 52 a6  	vfge.h	a0, ft5, ft5
800002c4: b3 26 63 a6  	vfge.h	a3, ft6, ft6
800002c8: 33 a6 62 a6  	vfge.h	a2, ft5, ft6
800002cc: b3 25 53 a6  	vfge.h	a1, ft6, ft5
;         errs -= (cmp0 == 0xf);
800002d0: 93 07 15 ff  	addi	a5, a0, -15
800002d4: 93 b7 17 00  	seqz	a5, a5
800002d8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xf);
800002dc: 93 87 16 ff  	addi	a5, a3, -15
800002e0: 93 b7 17 00  	seqz	a5, a5
800002e4: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xa);
800002e8: 93 07 66 ff  	addi	a5, a2, -10
800002ec: 93 b7 17 00  	seqz	a5, a5
800002f0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x5);
800002f4: 93 87 b5 ff  	addi	a5, a1, -5
800002f8: 93 b7 17 00  	seqz	a5, a5
800002fc: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000300: 33 e5 52 a6  	vfge.r.h	a0, ft5, ft5
80000304: b3 66 63 a6  	vfge.r.h	a3, ft6, ft6
80000308: 33 e6 62 a6  	vfge.r.h	a2, ft5, ft6
8000030c: b3 65 53 a6  	vfge.r.h	a1, ft6, ft5
;         errs -= (cmp0 == 0xf);
80000310: 93 07 15 ff  	addi	a5, a0, -15
80000314: 93 b7 17 00  	seqz	a5, a5
80000318: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0x5);
8000031c: 93 86 b6 ff  	addi	a3, a3, -5
80000320: 93 b6 16 00  	seqz	a3, a3
80000324: b3 06 d7 00  	add	a3, a4, a3
;         errs -= (cmp2 == 0xa);
80000328: 13 06 66 ff  	addi	a2, a2, -10
8000032c: 13 36 16 00  	seqz	a2, a2
80000330: 33 86 c6 00  	add	a2, a3, a2
;         errs -= (cmp3 == 0xf);
80000334: 93 85 15 ff  	addi	a1, a1, -15
80000338: 93 b5 15 00  	seqz	a1, a1
8000033c: b3 05 b6 00  	add	a1, a2, a1
;         asm volatile(
80000340: 33 a0 52 8c  	vfmax.h	ft0, ft5, ft5
80000344: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (cmp0 == 0xf);
80000348: 13 06 15 ff  	addi	a2, a0, -15
8000034c: 13 36 16 00  	seqz	a2, a2
80000350: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000354: 33 20 63 8c  	vfmax.h	ft0, ft6, ft6
80000358: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (cmp0 == 0xf);
8000035c: 13 06 15 ff  	addi	a2, a0, -15
80000360: 13 36 16 00  	seqz	a2, a2
80000364: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000368: 33 a0 62 8c  	vfmax.h	ft0, ft5, ft6
8000036c: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (cmp0 == 0xf);
80000370: 13 06 15 ff  	addi	a2, a0, -15
80000374: 13 36 16 00  	seqz	a2, a2
80000378: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
8000037c: 33 20 53 8c  	vfmax.h	ft0, ft6, ft5
80000380: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (cmp0 == 0xf);
80000384: 13 06 15 ff  	addi	a2, a0, -15
80000388: 13 36 16 00  	seqz	a2, a2
8000038c: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000390: 33 e0 52 8c  	vfmax.r.h	ft0, ft5, ft5
80000394: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (cmp0 == 0xf);
80000398: 13 06 15 ff  	addi	a2, a0, -15
8000039c: 13 36 16 00  	seqz	a2, a2
800003a0: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003a4: 33 60 63 8c  	vfmax.r.h	ft0, ft6, ft6
800003a8: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (cmp0 == 0xf);
800003ac: 13 06 15 ff  	addi	a2, a0, -15
800003b0: 13 36 16 00  	seqz	a2, a2
800003b4: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003b8: 33 e0 62 8c  	vfmax.r.h	ft0, ft5, ft6
800003bc: 33 a5 03 a0  	vfeq.h	a0, ft7, ft0
;         errs -= (cmp0 == 0xf);
800003c0: 13 06 15 ff  	addi	a2, a0, -15
800003c4: 13 36 16 00  	seqz	a2, a2
800003c8: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003cc: 33 60 53 8c  	vfmax.r.h	ft0, ft6, ft5
800003d0: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (cmp0 == 0xf);
800003d4: 13 06 15 ff  	addi	a2, a0, -15
800003d8: 13 36 16 00  	seqz	a2, a2
800003dc: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003e0: 33 a0 52 8a  	vfmin.h	ft0, ft5, ft5
800003e4: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (cmp0 == 0xf);
800003e8: 13 06 15 ff  	addi	a2, a0, -15
800003ec: 13 36 16 00  	seqz	a2, a2
800003f0: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003f4: 33 20 63 8a  	vfmin.h	ft0, ft6, ft6
800003f8: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (cmp0 == 0xf);
800003fc: 13 06 15 ff  	addi	a2, a0, -15
80000400: 13 36 16 00  	seqz	a2, a2
80000404: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000408: 33 a0 62 8a  	vfmin.h	ft0, ft5, ft6
8000040c: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (cmp0 == 0xf);
80000410: 13 06 15 ff  	addi	a2, a0, -15
80000414: 13 36 16 00  	seqz	a2, a2
80000418: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
8000041c: 33 20 53 8a  	vfmin.h	ft0, ft6, ft5
80000420: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (cmp0 == 0xf);
80000424: 13 06 15 ff  	addi	a2, a0, -15
80000428: 13 36 16 00  	seqz	a2, a2
8000042c: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000430: 33 e0 52 8a  	vfmin.r.h	ft0, ft5, ft5
80000434: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (cmp0 == 0xf);
80000438: 13 06 15 ff  	addi	a2, a0, -15
8000043c: 13 36 16 00  	seqz	a2, a2
80000440: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000444: 33 60 63 8a  	vfmin.r.h	ft0, ft6, ft6
80000448: 33 25 03 a0  	vfeq.h	a0, ft6, ft0
;         errs -= (cmp0 == 0xf);
8000044c: 13 06 15 ff  	addi	a2, a0, -15
80000450: 13 36 16 00  	seqz	a2, a2
80000454: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000458: 33 e0 62 8a  	vfmin.r.h	ft0, ft5, ft6
8000045c: 33 a5 02 a0  	vfeq.h	a0, ft5, ft0
;         errs -= (cmp0 == 0xf);
80000460: 13 06 15 ff  	addi	a2, a0, -15
80000464: 13 36 16 00  	seqz	a2, a2
80000468: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
8000046c: 33 60 53 8a  	vfmin.r.h	ft0, ft6, ft5
80000470: 33 25 0e a0  	vfeq.h	a0, ft8, ft0
;         errs -= (cmp0 == 0xf);
80000474: 13 05 15 ff  	addi	a0, a0, -15
80000478: 13 35 15 00  	seqz	a0, a0
8000047c: 33 85 a5 00  	add	a0, a1, a0
80000480: 93 05 00 04  	addi	a1, zero, 64
80000484: 33 85 a5 40  	sub	a0, a1, a0
;     return errs;
80000488: 67 80 00 00  	ret

8000048c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000048c: 37 05 00 00  	lui	a0, 0
80000490: 33 05 45 00  	add	a0, a0, tp
80000494: 03 25 05 00  	lw	a0, 0(a0)
80000498: 03 25 05 00  	lw	a0, 0(a0)
8000049c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800004a0: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800004a4: 33 85 a5 40  	sub	a0, a1, a0
800004a8: 67 80 00 00  	ret

800004ac <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800004ac: 37 05 00 00  	lui	a0, 0
800004b0: 33 05 45 00  	add	a0, a0, tp
800004b4: 03 25 05 00  	lw	a0, 0(a0)
800004b8: 03 25 05 00  	lw	a0, 0(a0)
800004bc: 03 25 05 07  	lw	a0, 112(a0)
800004c0: 67 80 00 00  	ret

800004c4 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800004c4: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800004c8: 63 44 05 00  	bltz	a0, 0x800004d0 <__snrt_isr+0xc>
;         while (1)
800004cc: 6f 00 00 00  	j	0x800004cc <__snrt_isr+0x8>
800004d0: b7 05 00 80  	lui	a1, 524288
800004d4: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800004d8: 33 75 b5 00  	and	a0, a0, a1
800004dc: 13 05 d5 ff  	addi	a0, a0, -3
800004e0: 93 55 25 00  	srli	a1, a0, 2
800004e4: 13 15 e5 01  	slli	a0, a0, 30
800004e8: 33 65 b5 00  	or	a0, a0, a1
800004ec: 93 05 40 00  	addi	a1, zero, 4
800004f0: 63 0a b5 06  	beq	a0, a1, 0x80000564 <.LBB1_7+0x58>
800004f4: 63 1a 05 08  	bnez	a0, 0x80000588 <.LBB1_7+0x7c>
800004f8: 37 05 00 00  	lui	a0, 0
800004fc: 33 05 45 00  	add	a0, a0, tp
80000500: 03 25 05 00  	lw	a0, 0(a0)
80000504: 03 25 05 00  	lw	a0, 0(a0)
80000508: f3 25 40 f1  	csrr	a1, mhartid

8000050c <.LBB1_7>:
;     asm volatile(
8000050c: 17 06 00 00  	auipc	a2, 0
80000510: 13 06 c6 6c  	addi	a2, a2, 1740
80000514: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000518: 93 06 06 00  	mv	a3, a2
8000051c: 93 02 10 00  	addi	t0, zero, 1
80000520: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80000524: e3 9e 02 fe  	bnez	t0, 0x80000520 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000528: b7 06 00 00  	lui	a3, 0
8000052c: b3 86 46 00  	add	a3, a3, tp
80000530: 83 a6 86 00  	lw	a3, 8(a3)
80000534: 33 85 a5 40  	sub	a0, a1, a0
80000538: 93 55 35 00  	srli	a1, a0, 3
8000053c: 93 f5 c5 ff  	andi	a1, a1, -4
80000540: b3 85 b6 00  	add	a1, a3, a1
80000544: 83 a6 05 00  	lw	a3, 0(a1)
80000548: 13 07 10 00  	addi	a4, zero, 1
8000054c: 33 15 a7 00  	sll	a0, a4, a0
80000550: 13 45 f5 ff  	not	a0, a0
80000554: 33 f5 a6 00  	and	a0, a3, a0
80000558: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000055c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000560: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000564: 37 05 00 00  	lui	a0, 0
80000568: 33 05 45 00  	add	a0, a0, tp
8000056c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000570: b7 05 00 00  	lui	a1, 0
80000574: b3 85 45 00  	add	a1, a1, tp
80000578: 83 a5 c5 00  	lw	a1, 12(a1)
8000057c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000580: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000584: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000588: 67 80 00 00  	ret

8000058c <_snrt_init_team>:
;     team->base.root = team;
8000058c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000590: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000594: 03 23 87 00  	lw	t1, 8(a4)
80000598: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000059c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800005a0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800005a4: 83 22 47 00  	lw	t0, 4(a4)
800005a8: 33 88 08 03  	mul	a6, a7, a6
800005ac: 33 05 58 02  	mul	a0, a6, t0
800005b0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800005b4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800005b8: 33 85 68 40  	sub	a0, a7, t1
800005bc: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800005c0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800005c4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800005c8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800005cc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800005d0: 03 25 87 01  	lw	a0, 24(a4)
800005d4: b7 05 00 10  	lui	a1, 65536
800005d8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800005dc: 23 a2 07 02  	sw	zero, 36(a5)
800005e0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800005e4: 03 25 07 02  	lw	a0, 32(a4)
800005e8: 83 25 47 02  	lw	a1, 36(a4)
800005ec: 23 a4 a7 02  	sw	a0, 40(a5)
800005f0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800005f4: 23 a8 c7 02  	sw	a2, 48(a5)
800005f8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800005fc: 23 ac d7 02  	sw	a3, 56(a5)
80000600: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000604: 03 25 07 01  	lw	a0, 16(a4)
80000608: 33 08 a6 00  	add	a6, a2, a0
8000060c: 93 05 08 19  	addi	a1, a6, 400
80000610: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000614: b3 32 a8 00  	sltu	t0, a6, a0
80000618: 93 55 15 00  	srli	a1, a0, 1
8000061c: 33 03 b8 00  	add	t1, a6, a1
80000620: b3 35 03 01  	sltu	a1, t1, a6
80000624: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000628: 23 a0 67 04  	sw	t1, 64(a5)
8000062c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000630: 13 15 15 00  	slli	a0, a0, 1
80000634: b3 05 c5 00  	add	a1, a0, a2
80000638: 33 b5 a5 00  	sltu	a0, a1, a0
8000063c: 23 a4 b7 04  	sw	a1, 72(a5)
80000640: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000644: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000648: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000064c: 37 05 00 00  	lui	a0, 0
80000650: 33 05 45 00  	add	a0, a0, tp
80000654: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000658: 03 a5 07 00  	lw	a0, 0(a5)
8000065c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000660: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000664: b3 85 b8 40  	sub	a1, a7, a1
80000668: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000066c: b7 05 00 00  	lui	a1, 0
80000670: b3 85 45 00  	add	a1, a1, tp
80000674: 23 a2 a5 00  	sw	a0, 4(a1)
80000678: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000067c: 33 85 a8 02  	mul	a0, a7, a0

80000680 <.LBB0_1>:
80000680: 97 05 00 00  	auipc	a1, 0
80000684: 93 85 c5 55  	addi	a1, a1, 1372
80000688: 33 05 b5 00  	add	a0, a0, a1
8000068c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000690: 83 28 07 03  	lw	a7, 48(a4)
80000694: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000698: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000069c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800006a0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800006a4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800006a8: 13 05 76 00  	addi	a0, a2, 7
800006ac: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800006b0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800006b4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800006b8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800006bc: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800006c0: 03 a5 05 00  	lw	a0, 0(a1)
800006c4: 13 05 f5 44  	addi	a0, a0, 1103
800006c8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800006cc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800006d0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800006d4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800006d8: 37 05 00 00  	lui	a0, 0
800006dc: 33 05 45 00  	add	a0, a0, tp
800006e0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800006e4: 37 05 00 00  	lui	a0, 0
800006e8: 33 05 45 00  	add	a0, a0, tp
800006ec: 23 26 e5 00  	sw	a4, 12(a0)
; }
800006f0: 67 80 00 00  	ret

Disassembly of section .init:

80000700 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000700: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000704: 93 81 81 cc  	addi	gp, gp, -824

80000708 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000708: 97 00 00 00  	auipc	ra, 0
8000070c: e7 80 40 3c  	jalr	964(ra)

80000710 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000710: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000714: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000718: 97 00 00 00  	auipc	ra, 0
8000071c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000720: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000724: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000728: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000072c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000730: 63 92 02 02  	bnez	t0, 0x80000754 <snrt.crt0.init_registers>

80000734 <.Lpcrel_hi0>:
;     la        t0, _edata
80000734: 97 02 00 00  	auipc	t0, 0
80000738: 93 82 42 4a  	addi	t0, t0, 1188

8000073c <.Lpcrel_hi1>:
;     la        t1, _end
8000073c: 17 03 00 00  	auipc	t1, 0
80000740: 13 03 03 4a  	addi	t1, t1, 1184
;     bge       t0, t1, 2f
80000744: 63 d8 62 00  	bge	t0, t1, 0x80000754 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000748: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000074c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000750: e3 cc 62 fe  	blt	t0, t1, 0x80000748 <.Lpcrel_hi1+0xc>

80000754 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000754: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000758: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000075c: 63 82 02 08  	beqz	t0, 0x800007e0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000760: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000764: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000768: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000076c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000770: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000774: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000778: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000077c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000780: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000784: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000788: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000078c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000790: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000794: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000798: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000079c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800007a0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800007a4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800007a8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800007ac: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800007b0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800007b4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800007b8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800007bc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800007c0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800007c4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800007c8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800007cc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800007d0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800007d4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800007d8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800007dc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800007e0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800007e0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800007e4: 23 a0 06 00  	sw	zero, 0(a3)

800007e8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800007e8: 97 02 00 00  	auipc	t0, 0
800007ec: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
800007f0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800007f4: 93 87 06 00  	mv	a5, a3

800007f8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800007f8: 97 03 00 00  	auipc	t2, 0
800007fc: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
80000800: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000804: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000808: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000080c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000810: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000814: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000818: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000081c: b3 86 66 40  	sub	a3, a3, t1

80000820 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000820: 97 02 00 00  	auipc	t0, 0
80000824: 93 82 82 3a  	addi	t0, t0, 936

80000828 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000828: 17 03 00 00  	auipc	t1, 0
8000082c: 13 03 03 3a  	addi	t1, t1, 928

80000830 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000830: 97 03 00 00  	auipc	t2, 0
80000834: 93 83 83 39  	addi	t2, t2, 920

80000838 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000838: 17 0e 00 00  	auipc	t3, 0
8000083c: 13 0e 0e 3a  	addi	t3, t3, 928
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000840: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000844: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000848: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000084c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000850: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000854: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000858: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000085c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000860: 63 dc 62 00  	bge	t0, t1, 0x80000878 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000864: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000868: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000086c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000870: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000874: e3 c8 62 fe  	blt	t0, t1, 0x80000864 <.Lpcrel_hi7+0x2c>

80000878 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000878: 97 02 00 00  	auipc	t0, 0
8000087c: 93 82 02 35  	addi	t0, t0, 848

80000880 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000880: 17 03 00 00  	auipc	t1, 0
80000884: 13 03 83 35  	addi	t1, t1, 856
;     bge       t0, t1, 2f
80000888: 63 da 62 00  	bge	t0, t1, 0x8000089c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000088c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000890: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000894: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000898: e3 ca 72 fe  	blt	t0, t2, 0x8000088c <.Lpcrel_hi9+0xc>

8000089c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000089c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800008a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800008a4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800008a8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800008ac: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800008b0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800008b4: 97 00 00 00  	auipc	ra, 0
800008b8: e7 80 80 cd  	jalr	-808(ra)
;     lw        a0, 0(sp)
800008bc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800008c0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800008c4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800008c8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800008cc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800008d0: 13 01 41 01  	addi	sp, sp, 20

800008d4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800008d4: 97 02 00 00  	auipc	t0, 0
800008d8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800008dc: 73 90 52 30  	csrw	mtvec, t0

800008e0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800008e0: 97 00 00 00  	auipc	ra, 0
800008e4: e7 80 00 22  	jalr	544(ra)

800008e8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800008e8: 97 f0 ff ff  	auipc	ra, 1048575
800008ec: e7 80 80 71  	jalr	1816(ra)
;     mv        s0, a0 # store return value in s0
800008f0: 13 04 05 00  	mv	s0, a0

800008f4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800008f4: 97 00 00 00  	auipc	ra, 0
800008f8: e7 80 c0 20  	jalr	524(ra)

800008fc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800008fc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000900: 97 00 00 00  	auipc	ra, 0
80000904: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000908: 73 00 50 10  	wfi	
;     j       1b
8000090c: 6f f0 df ff  	j	0x80000908 <snrt.crt0.end+0xc>

80000910 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000910: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000914: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000918: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000091c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000920: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000924: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000928: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000092c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000930: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000934: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000938: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000093c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000940: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000944: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000948: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000094c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000950: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000954: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000958: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000095c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000960: 63 84 02 08  	beqz	t0, 0x800009e8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000964: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000968: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000096c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000970: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000974: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000978: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000097c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000980: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000984: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000988: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000098c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000990: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000994: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000998: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000099c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800009a0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800009a4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800009a8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800009ac: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800009b0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800009b4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800009b8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800009bc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800009c0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800009c4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800009c8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800009cc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800009d0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800009d4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800009d8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800009dc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800009e0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800009e4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800009e8: 97 00 00 00  	auipc	ra, 0
800009ec: e7 80 c0 ad  	jalr	-1316(ra)
;     csrr    t0, misa
800009f0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800009f4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800009f8: 63 84 02 08  	beqz	t0, 0x80000a80 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800009fc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000a00: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000a04: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000a08: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000a0c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000a10: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000a14: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000a18: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000a1c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000a20: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000a24: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000a28: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000a2c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000a30: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000a34: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000a38: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000a3c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000a40: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000a44: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000a48: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000a4c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000a50: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000a54: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000a58: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000a5c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000a60: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000a64: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000a68: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000a6c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000a70: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000a74: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000a78: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000a7c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000a80: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000a84: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000a88: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000a8c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000a90: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000a94: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000a98: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000a9c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000aa0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000aa4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000aa8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000aac: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000ab0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000ab4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000ab8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000abc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000ac0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000ac4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000ac8: 73 00 20 30  	mret	

80000acc <_snrt_init_core_info>:
;     mv        a4, a1
80000acc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000ad0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000ad4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000ad8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000adc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000ae0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000ae4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000ae8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000aec: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000af0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000af4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000af8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000afc: 67 80 00 00  	ret

80000b00 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000b00: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000b04: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000b08: 97 00 00 00  	auipc	ra, 0
80000b0c: e7 80 40 9a  	jalr	-1628(ra)
;     lw        a0, 0(a0)
80000b10: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000b14: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000b18: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000b1c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000b20: 67 80 00 00  	ret

80000b24 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000b24: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000b28: 67 80 00 00  	ret

80000b2c <_snrt_exit>:
;     addi      sp, sp, -8
80000b2c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000b30: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000b34: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000b38: 97 00 00 00  	auipc	ra, 0
80000b3c: e7 80 40 95  	jalr	-1708(ra)
;     lw        t0, 0(sp)
80000b40: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000b44: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000b48: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000b4c: 63 1c 05 00  	bnez	a0, 0x80000b64 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000b50: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000b54: 93 e2 12 00  	ori	t0, t0, 1

80000b58 <.Lpcrel_hi11>:
;     la        t1, tohost
80000b58: 17 03 00 00  	auipc	t1, 0
80000b5c: 13 03 83 02  	addi	t1, t1, 40
;     sw        t0, 0(t1)
80000b60: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000b64: 67 80 00 00  	ret
