
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-fp8_comparison_vector:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00000714 80000000 TEXT
  2 .init             00000468 80000720 TEXT
  3 .rodata           00000008 80000b88 DATA
  4 .htif             00000048 80000bc0 DATA
  5 .tdata            00000000 80000c08 DATA
  6 .tbss             00000010 80000c08 BSS
  7 .tbssend          00000000 80000c18 DATA
  8 .sdata            00000000 80000c18 DATA
  9 .data             00000000 80000c18 DATA
 10 .sbss             00000004 80000c18 BSS
 11 .bss              00000000 80000c1c BSS
 12 .dram             00000000 80000c1c DATA
 13 .debug_info       00001616 00000000 
 14 .debug_abbrev     00000539 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       0000109f 00000000 
 17 .debug_loc        00000264 00000000 
 18 .debug_ranges     000000b8 00000000 
 19 .debug_str        00000713 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000000f4 00000000 
 23 .symtab           00000a50 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000042b 00000000 


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
80000028: 63 f0 c5 48  	bgeu	a1, a2, 0x800004a8 <main+0x4a8>
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
80000054: b3 32 32 b0  	vfcpk.b.s.0	ft5, ft4, ft3
80000058: b3 72 32 b0  	vfcpk.b.s.1	ft5, ft4, ft3
8000005c: b3 32 32 b2  	vfcpk.b.s.2	ft5, ft4, ft3
80000060: b3 72 32 b2  	vfcpk.b.s.3	ft5, ft4, ft3
80000064: 33 b3 41 b0  	vfcpk.b.s.0	ft6, ft3, ft4
80000068: 33 f3 41 b0  	vfcpk.b.s.1	ft6, ft3, ft4
8000006c: 33 b3 41 b2  	vfcpk.b.s.2	ft6, ft3, ft4
80000070: 33 f3 41 b2  	vfcpk.b.s.3	ft6, ft3, ft4
80000074: b3 b3 31 b0  	vfcpk.b.s.0	ft7, ft3, ft3
80000078: b3 f3 31 b0  	vfcpk.b.s.1	ft7, ft3, ft3
8000007c: b3 b3 31 b2  	vfcpk.b.s.2	ft7, ft3, ft3
80000080: b3 f3 31 b2  	vfcpk.b.s.3	ft7, ft3, ft3
80000084: 33 3e 42 b0  	vfcpk.b.s.0	ft8, ft4, ft4
80000088: 33 7e 42 b0  	vfcpk.b.s.1	ft8, ft4, ft4
8000008c: 33 3e 42 b2  	vfcpk.b.s.2	ft8, ft4, ft4
80000090: 33 7e 42 b2  	vfcpk.b.s.3	ft8, ft4, ft4
;         asm volatile(
80000094: 33 b5 52 a0  	vfeq.b	a0, ft5, ft5
80000098: b3 36 63 a0  	vfeq.b	a3, ft6, ft6
8000009c: 33 b6 62 a0  	vfeq.b	a2, ft5, ft6
800000a0: b3 35 53 a0  	vfeq.b	a1, ft6, ft5
;         errs -= (cmp0 == 0xff);  // 1111
800000a4: 13 07 15 f0  	addi	a4, a0, -255
800000a8: 13 37 17 00  	seqz	a4, a4
;         errs -= (cmp1 == 0xff);  // 1111
800000ac: 93 87 16 f0  	addi	a5, a3, -255
800000b0: 93 b7 17 00  	seqz	a5, a5
800000b4: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0);
800000b8: 93 37 16 00  	seqz	a5, a2
800000bc: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0);
800000c0: 93 b7 15 00  	seqz	a5, a1
800000c4: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800000c8: 33 f5 52 a0  	vfeq.r.b	a0, ft5, ft5
800000cc: b3 76 63 a0  	vfeq.r.b	a3, ft6, ft6
800000d0: 33 f6 62 a0  	vfeq.r.b	a2, ft5, ft6
800000d4: b3 75 53 a0  	vfeq.r.b	a1, ft6, ft5
;         errs -= (cmp0 == 0x55);
800000d8: 93 07 b5 fa  	addi	a5, a0, -85
800000dc: 93 b7 17 00  	seqz	a5, a5
800000e0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0x55);
800000e4: 93 87 b6 fa  	addi	a5, a3, -85
800000e8: 93 b7 17 00  	seqz	a5, a5
800000ec: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xaa);
800000f0: 93 07 66 f5  	addi	a5, a2, -170
800000f4: 93 b7 17 00  	seqz	a5, a5
800000f8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xaa);
800000fc: 93 87 65 f5  	addi	a5, a1, -170
80000100: 93 b7 17 00  	seqz	a5, a5
80000104: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000108: 33 b5 52 a2  	vfne.b	a0, ft5, ft5
8000010c: b3 36 63 a2  	vfne.b	a3, ft6, ft6
80000110: 33 b6 62 a2  	vfne.b	a2, ft5, ft6
80000114: b3 35 53 a2  	vfne.b	a1, ft6, ft5
;         errs -= (cmp0 == 0);
80000118: 93 37 15 00  	seqz	a5, a0
8000011c: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
80000120: 93 b7 16 00  	seqz	a5, a3
80000124: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xff);
80000128: 93 07 16 f0  	addi	a5, a2, -255
8000012c: 93 b7 17 00  	seqz	a5, a5
80000130: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xff);
80000134: 93 87 15 f0  	addi	a5, a1, -255
80000138: 93 b7 17 00  	seqz	a5, a5
8000013c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000140: 33 f5 52 a2  	vfne.r.b	a0, ft5, ft5
80000144: b3 76 63 a2  	vfne.r.b	a3, ft6, ft6
80000148: 33 f6 62 a2  	vfne.r.b	a2, ft5, ft6
8000014c: b3 75 53 a2  	vfne.r.b	a1, ft6, ft5
;         errs -= (cmp0 == 0xaa);
80000150: 93 07 65 f5  	addi	a5, a0, -170
80000154: 93 b7 17 00  	seqz	a5, a5
80000158: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xaa);
8000015c: 93 87 66 f5  	addi	a5, a3, -170
80000160: 93 b7 17 00  	seqz	a5, a5
80000164: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x55);
80000168: 93 07 b6 fa  	addi	a5, a2, -85
8000016c: 93 b7 17 00  	seqz	a5, a5
80000170: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x55);
80000174: 93 87 b5 fa  	addi	a5, a1, -85
80000178: 93 b7 17 00  	seqz	a5, a5
8000017c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000180: 33 b5 52 a4  	vflt.b	a0, ft5, ft5
80000184: b3 36 63 a4  	vflt.b	a3, ft6, ft6
80000188: 33 b6 62 a4  	vflt.b	a2, ft5, ft6
8000018c: b3 35 53 a4  	vflt.b	a1, ft6, ft5
;         errs -= (cmp0 == 0);
80000190: 93 37 15 00  	seqz	a5, a0
80000194: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
80000198: 93 b7 16 00  	seqz	a5, a3
8000019c: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x55);
800001a0: 93 07 b6 fa  	addi	a5, a2, -85
800001a4: 93 b7 17 00  	seqz	a5, a5
800001a8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xaa);
800001ac: 93 87 65 f5  	addi	a5, a1, -170
800001b0: 93 b7 17 00  	seqz	a5, a5
800001b4: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800001b8: 33 f5 52 a4  	vflt.r.b	a0, ft5, ft5
800001bc: b3 76 63 a4  	vflt.r.b	a3, ft6, ft6
800001c0: 33 f6 62 a4  	vflt.r.b	a2, ft5, ft6
800001c4: b3 75 53 a4  	vflt.r.b	a1, ft6, ft5
;         errs -= (cmp0 == 0);
800001c8: 93 37 15 00  	seqz	a5, a0
800001cc: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xaa);
800001d0: 93 87 66 f5  	addi	a5, a3, -170
800001d4: 93 b7 17 00  	seqz	a5, a5
800001d8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x55);
800001dc: 93 07 b6 fa  	addi	a5, a2, -85
800001e0: 93 b7 17 00  	seqz	a5, a5
800001e4: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0);
800001e8: 93 b7 15 00  	seqz	a5, a1
800001ec: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800001f0: 33 b5 52 a8  	vfle.b	a0, ft5, ft5
800001f4: b3 36 63 a8  	vfle.b	a3, ft6, ft6
800001f8: 33 b6 62 a8  	vfle.b	a2, ft5, ft6
800001fc: b3 35 53 a8  	vfle.b	a1, ft6, ft5
;         errs -= (cmp0 == 0xff);
80000200: 93 07 15 f0  	addi	a5, a0, -255
80000204: 93 b7 17 00  	seqz	a5, a5
80000208: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xff);
8000020c: 93 87 16 f0  	addi	a5, a3, -255
80000210: 93 b7 17 00  	seqz	a5, a5
80000214: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0x55);
80000218: 93 07 b6 fa  	addi	a5, a2, -85
8000021c: 93 b7 17 00  	seqz	a5, a5
80000220: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xaa);
80000224: 93 87 65 f5  	addi	a5, a1, -170
80000228: 93 b7 17 00  	seqz	a5, a5
8000022c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000230: 33 f5 52 a8  	vfle.r.b	a0, ft5, ft5
80000234: b3 76 63 a8  	vfle.r.b	a3, ft6, ft6
80000238: 33 f6 62 a8  	vfle.r.b	a2, ft5, ft6
8000023c: b3 75 53 a8  	vfle.r.b	a1, ft6, ft5
;         errs -= (cmp0 == 0x55);
80000240: 93 07 b5 fa  	addi	a5, a0, -85
80000244: 93 b7 17 00  	seqz	a5, a5
80000248: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xff);
8000024c: 93 87 16 f0  	addi	a5, a3, -255
80000250: 93 b7 17 00  	seqz	a5, a5
80000254: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xff);
80000258: 93 07 16 f0  	addi	a5, a2, -255
8000025c: 93 b7 17 00  	seqz	a5, a5
80000260: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0xaa);
80000264: 93 87 65 f5  	addi	a5, a1, -170
80000268: 93 b7 17 00  	seqz	a5, a5
8000026c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000270: 33 b5 52 aa  	vfgt.b	a0, ft5, ft5
80000274: b3 36 63 aa  	vfgt.b	a3, ft6, ft6
80000278: 33 b6 62 aa  	vfgt.b	a2, ft5, ft6
8000027c: b3 35 53 aa  	vfgt.b	a1, ft6, ft5
;         errs -= (cmp0 == 0);
80000280: 93 37 15 00  	seqz	a5, a0
80000284: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
80000288: 93 b7 16 00  	seqz	a5, a3
8000028c: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xaa);
80000290: 93 07 66 f5  	addi	a5, a2, -170
80000294: 93 b7 17 00  	seqz	a5, a5
80000298: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x55);
8000029c: 93 87 b5 fa  	addi	a5, a1, -85
800002a0: 93 b7 17 00  	seqz	a5, a5
800002a4: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800002a8: 33 f5 52 aa  	vfgt.r.b	a0, ft5, ft5
800002ac: b3 76 63 aa  	vfgt.r.b	a3, ft6, ft6
800002b0: 33 f6 62 aa  	vfgt.r.b	a2, ft5, ft6
800002b4: b3 75 53 aa  	vfgt.r.b	a1, ft6, ft5
;         errs -= (cmp0 == 0xaa);
800002b8: 93 07 65 f5  	addi	a5, a0, -170
800002bc: 93 b7 17 00  	seqz	a5, a5
800002c0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0);
800002c4: 93 b7 16 00  	seqz	a5, a3
800002c8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0);
800002cc: 93 37 16 00  	seqz	a5, a2
800002d0: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x55);
800002d4: 93 87 b5 fa  	addi	a5, a1, -85
800002d8: 93 b7 17 00  	seqz	a5, a5
800002dc: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
800002e0: 33 b5 52 a6  	vfge.b	a0, ft5, ft5
800002e4: b3 36 63 a6  	vfge.b	a3, ft6, ft6
800002e8: 33 b6 62 a6  	vfge.b	a2, ft5, ft6
800002ec: b3 35 53 a6  	vfge.b	a1, ft6, ft5
;         errs -= (cmp0 == 0xff);
800002f0: 93 07 15 f0  	addi	a5, a0, -255
800002f4: 93 b7 17 00  	seqz	a5, a5
800002f8: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0xff);
800002fc: 93 87 16 f0  	addi	a5, a3, -255
80000300: 93 b7 17 00  	seqz	a5, a5
80000304: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp2 == 0xaa);
80000308: 93 07 66 f5  	addi	a5, a2, -170
8000030c: 93 b7 17 00  	seqz	a5, a5
80000310: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp3 == 0x55);
80000314: 93 87 b5 fa  	addi	a5, a1, -85
80000318: 93 b7 17 00  	seqz	a5, a5
8000031c: 33 07 f7 00  	add	a4, a4, a5
;         asm volatile(
80000320: 33 f5 52 a6  	vfge.r.b	a0, ft5, ft5
80000324: b3 76 63 a6  	vfge.r.b	a3, ft6, ft6
80000328: 33 f6 62 a6  	vfge.r.b	a2, ft5, ft6
8000032c: b3 75 53 a6  	vfge.r.b	a1, ft6, ft5
;         errs -= (cmp0 == 0xff);
80000330: 93 07 15 f0  	addi	a5, a0, -255
80000334: 93 b7 17 00  	seqz	a5, a5
80000338: 33 07 f7 00  	add	a4, a4, a5
;         errs -= (cmp1 == 0x55);
8000033c: 93 86 b6 fa  	addi	a3, a3, -85
80000340: 93 b6 16 00  	seqz	a3, a3
80000344: b3 06 d7 00  	add	a3, a4, a3
;         errs -= (cmp2 == 0xaa);
80000348: 13 06 66 f5  	addi	a2, a2, -170
8000034c: 13 36 16 00  	seqz	a2, a2
80000350: 33 86 c6 00  	add	a2, a3, a2
;         errs -= (cmp3 == 0xff);
80000354: 93 85 15 f0  	addi	a1, a1, -255
80000358: 93 b5 15 00  	seqz	a1, a1
8000035c: b3 05 b6 00  	add	a1, a2, a1
;         asm volatile(
80000360: 33 b0 52 8c  	vfmax.b	ft0, ft5, ft5
80000364: 33 b5 02 a0  	vfeq.b	a0, ft5, ft0
;         errs -= (cmp0 == 0xff);
80000368: 13 06 15 f0  	addi	a2, a0, -255
8000036c: 13 36 16 00  	seqz	a2, a2
80000370: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000374: 33 30 63 8c  	vfmax.b	ft0, ft6, ft6
80000378: 33 35 03 a0  	vfeq.b	a0, ft6, ft0
;         errs -= (cmp0 == 0xff);
8000037c: 13 06 15 f0  	addi	a2, a0, -255
80000380: 13 36 16 00  	seqz	a2, a2
80000384: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000388: 33 b0 62 8c  	vfmax.b	ft0, ft5, ft6
8000038c: 33 b5 03 a0  	vfeq.b	a0, ft7, ft0
;         errs -= (cmp0 == 0xff);
80000390: 13 06 15 f0  	addi	a2, a0, -255
80000394: 13 36 16 00  	seqz	a2, a2
80000398: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
8000039c: 33 30 53 8c  	vfmax.b	ft0, ft6, ft5
800003a0: 33 b5 03 a0  	vfeq.b	a0, ft7, ft0
;         errs -= (cmp0 == 0xff);
800003a4: 13 06 15 f0  	addi	a2, a0, -255
800003a8: 13 36 16 00  	seqz	a2, a2
800003ac: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003b0: 33 f0 52 8c  	vfmax.r.b	ft0, ft5, ft5
800003b4: 33 b5 02 a0  	vfeq.b	a0, ft5, ft0
;         errs -= (cmp0 == 0xff);
800003b8: 13 06 15 f0  	addi	a2, a0, -255
800003bc: 13 36 16 00  	seqz	a2, a2
800003c0: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003c4: 33 70 63 8c  	vfmax.r.b	ft0, ft6, ft6
800003c8: 33 b5 03 a0  	vfeq.b	a0, ft7, ft0
;         errs -= (cmp0 == 0xff);
800003cc: 13 06 15 f0  	addi	a2, a0, -255
800003d0: 13 36 16 00  	seqz	a2, a2
800003d4: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003d8: 33 f0 62 8c  	vfmax.r.b	ft0, ft5, ft6
800003dc: 33 b5 03 a0  	vfeq.b	a0, ft7, ft0
;         errs -= (cmp0 == 0xff);
800003e0: 13 06 15 f0  	addi	a2, a0, -255
800003e4: 13 36 16 00  	seqz	a2, a2
800003e8: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003ec: 33 70 53 8c  	vfmax.r.b	ft0, ft6, ft5
800003f0: 33 35 03 a0  	vfeq.b	a0, ft6, ft0
;         errs -= (cmp0 == 0xff);
800003f4: 13 06 15 f0  	addi	a2, a0, -255
800003f8: 13 36 16 00  	seqz	a2, a2
800003fc: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000400: 33 b0 52 8a  	vfmin.b	ft0, ft5, ft5
80000404: 33 b5 02 a0  	vfeq.b	a0, ft5, ft0
;         errs -= (cmp0 == 0xff);
80000408: 13 06 15 f0  	addi	a2, a0, -255
8000040c: 13 36 16 00  	seqz	a2, a2
80000410: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000414: 33 30 63 8a  	vfmin.b	ft0, ft6, ft6
80000418: 33 35 03 a0  	vfeq.b	a0, ft6, ft0
;         errs -= (cmp0 == 0xff);
8000041c: 13 06 15 f0  	addi	a2, a0, -255
80000420: 13 36 16 00  	seqz	a2, a2
80000424: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000428: 33 b0 62 8a  	vfmin.b	ft0, ft5, ft6
8000042c: 33 35 0e a0  	vfeq.b	a0, ft8, ft0
;         errs -= (cmp0 == 0xff);
80000430: 13 06 15 f0  	addi	a2, a0, -255
80000434: 13 36 16 00  	seqz	a2, a2
80000438: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
8000043c: 33 30 53 8a  	vfmin.b	ft0, ft6, ft5
80000440: 33 35 0e a0  	vfeq.b	a0, ft8, ft0
;         errs -= (cmp0 == 0xff);
80000444: 13 06 15 f0  	addi	a2, a0, -255
80000448: 13 36 16 00  	seqz	a2, a2
8000044c: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000450: 33 f0 52 8a  	vfmin.r.b	ft0, ft5, ft5
80000454: 33 35 0e a0  	vfeq.b	a0, ft8, ft0
;         errs -= (cmp0 == 0xff);
80000458: 13 06 15 f0  	addi	a2, a0, -255
8000045c: 13 36 16 00  	seqz	a2, a2
80000460: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000464: 33 70 63 8a  	vfmin.r.b	ft0, ft6, ft6
80000468: 33 35 03 a0  	vfeq.b	a0, ft6, ft0
;         errs -= (cmp0 == 0xff);
8000046c: 13 06 15 f0  	addi	a2, a0, -255
80000470: 13 36 16 00  	seqz	a2, a2
80000474: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000478: 33 f0 62 8a  	vfmin.r.b	ft0, ft5, ft6
8000047c: 33 b5 02 a0  	vfeq.b	a0, ft5, ft0
;         errs -= (cmp0 == 0xff);
80000480: 13 06 15 f0  	addi	a2, a0, -255
80000484: 13 36 16 00  	seqz	a2, a2
80000488: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
8000048c: 33 70 53 8a  	vfmin.r.b	ft0, ft6, ft5
80000490: 33 35 0e a0  	vfeq.b	a0, ft8, ft0
;         errs -= (cmp0 == 0xff);
80000494: 13 05 15 f0  	addi	a0, a0, -255
80000498: 13 35 15 00  	seqz	a0, a0
8000049c: 33 85 a5 00  	add	a0, a1, a0
800004a0: 93 05 00 04  	addi	a1, zero, 64
800004a4: 33 85 a5 40  	sub	a0, a1, a0
;     return errs;
800004a8: 67 80 00 00  	ret

800004ac <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800004ac: 37 05 00 00  	lui	a0, 0
800004b0: 33 05 45 00  	add	a0, a0, tp
800004b4: 03 25 05 00  	lw	a0, 0(a0)
800004b8: 03 25 05 00  	lw	a0, 0(a0)
800004bc: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800004c0: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800004c4: 33 85 a5 40  	sub	a0, a1, a0
800004c8: 67 80 00 00  	ret

800004cc <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
800004cc: 37 05 00 00  	lui	a0, 0
800004d0: 33 05 45 00  	add	a0, a0, tp
800004d4: 03 25 05 00  	lw	a0, 0(a0)
800004d8: 03 25 05 00  	lw	a0, 0(a0)
800004dc: 03 25 05 07  	lw	a0, 112(a0)
800004e0: 67 80 00 00  	ret

800004e4 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800004e4: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800004e8: 63 44 05 00  	bltz	a0, 0x800004f0 <__snrt_isr+0xc>
;         while (1)
800004ec: 6f 00 00 00  	j	0x800004ec <__snrt_isr+0x8>
800004f0: b7 05 00 80  	lui	a1, 524288
800004f4: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800004f8: 33 75 b5 00  	and	a0, a0, a1
800004fc: 13 05 d5 ff  	addi	a0, a0, -3
80000500: 93 55 25 00  	srli	a1, a0, 2
80000504: 13 15 e5 01  	slli	a0, a0, 30
80000508: 33 65 b5 00  	or	a0, a0, a1
8000050c: 93 05 40 00  	addi	a1, zero, 4
80000510: 63 0a b5 06  	beq	a0, a1, 0x80000584 <.LBB1_7+0x58>
80000514: 63 1a 05 08  	bnez	a0, 0x800005a8 <.LBB1_7+0x7c>
80000518: 37 05 00 00  	lui	a0, 0
8000051c: 33 05 45 00  	add	a0, a0, tp
80000520: 03 25 05 00  	lw	a0, 0(a0)
80000524: 03 25 05 00  	lw	a0, 0(a0)
80000528: f3 25 40 f1  	csrr	a1, mhartid

8000052c <.LBB1_7>:
;     asm volatile(
8000052c: 17 06 00 00  	auipc	a2, 0
80000530: 13 06 c6 6e  	addi	a2, a2, 1772
80000534: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000538: 93 06 06 00  	mv	a3, a2
8000053c: 93 02 10 00  	addi	t0, zero, 1
80000540: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80000544: e3 9e 02 fe  	bnez	t0, 0x80000540 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000548: b7 06 00 00  	lui	a3, 0
8000054c: b3 86 46 00  	add	a3, a3, tp
80000550: 83 a6 86 00  	lw	a3, 8(a3)
80000554: 33 85 a5 40  	sub	a0, a1, a0
80000558: 93 55 35 00  	srli	a1, a0, 3
8000055c: 93 f5 c5 ff  	andi	a1, a1, -4
80000560: b3 85 b6 00  	add	a1, a3, a1
80000564: 83 a6 05 00  	lw	a3, 0(a1)
80000568: 13 07 10 00  	addi	a4, zero, 1
8000056c: 33 15 a7 00  	sll	a0, a4, a0
80000570: 13 45 f5 ff  	not	a0, a0
80000574: 33 f5 a6 00  	and	a0, a3, a0
80000578: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000057c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000580: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000584: 37 05 00 00  	lui	a0, 0
80000588: 33 05 45 00  	add	a0, a0, tp
8000058c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000590: b7 05 00 00  	lui	a1, 0
80000594: b3 85 45 00  	add	a1, a1, tp
80000598: 83 a5 c5 00  	lw	a1, 12(a1)
8000059c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800005a0: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800005a4: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800005a8: 67 80 00 00  	ret

800005ac <_snrt_init_team>:
;     team->base.root = team;
800005ac: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800005b0: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800005b4: 03 23 87 00  	lw	t1, 8(a4)
800005b8: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800005bc: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800005c0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800005c4: 83 22 47 00  	lw	t0, 4(a4)
800005c8: 33 88 08 03  	mul	a6, a7, a6
800005cc: 33 05 58 02  	mul	a0, a6, t0
800005d0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800005d4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800005d8: 33 85 68 40  	sub	a0, a7, t1
800005dc: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800005e0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800005e4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800005e8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800005ec: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800005f0: 03 25 87 01  	lw	a0, 24(a4)
800005f4: b7 05 00 10  	lui	a1, 65536
800005f8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800005fc: 23 a2 07 02  	sw	zero, 36(a5)
80000600: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80000604: 03 25 07 02  	lw	a0, 32(a4)
80000608: 83 25 47 02  	lw	a1, 36(a4)
8000060c: 23 a4 a7 02  	sw	a0, 40(a5)
80000610: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80000614: 23 a8 c7 02  	sw	a2, 48(a5)
80000618: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
8000061c: 23 ac d7 02  	sw	a3, 56(a5)
80000620: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000624: 03 25 07 01  	lw	a0, 16(a4)
80000628: 33 08 a6 00  	add	a6, a2, a0
8000062c: 93 05 08 19  	addi	a1, a6, 400
80000630: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000634: b3 32 a8 00  	sltu	t0, a6, a0
80000638: 93 55 15 00  	srli	a1, a0, 1
8000063c: 33 03 b8 00  	add	t1, a6, a1
80000640: b3 35 03 01  	sltu	a1, t1, a6
80000644: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000648: 23 a0 67 04  	sw	t1, 64(a5)
8000064c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000650: 13 15 15 00  	slli	a0, a0, 1
80000654: b3 05 c5 00  	add	a1, a0, a2
80000658: 33 b5 a5 00  	sltu	a0, a1, a0
8000065c: 23 a4 b7 04  	sw	a1, 72(a5)
80000660: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000664: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000668: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000066c: 37 05 00 00  	lui	a0, 0
80000670: 33 05 45 00  	add	a0, a0, tp
80000674: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000678: 03 a5 07 00  	lw	a0, 0(a5)
8000067c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000680: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000684: b3 85 b8 40  	sub	a1, a7, a1
80000688: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000068c: b7 05 00 00  	lui	a1, 0
80000690: b3 85 45 00  	add	a1, a1, tp
80000694: 23 a2 a5 00  	sw	a0, 4(a1)
80000698: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000069c: 33 85 a8 02  	mul	a0, a7, a0

800006a0 <.LBB0_1>:
800006a0: 97 05 00 00  	auipc	a1, 0
800006a4: 93 85 c5 57  	addi	a1, a1, 1404
800006a8: 33 05 b5 00  	add	a0, a0, a1
800006ac: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800006b0: 83 28 07 03  	lw	a7, 48(a4)
800006b4: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800006b8: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800006bc: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800006c0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800006c4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800006c8: 13 05 76 00  	addi	a0, a2, 7
800006cc: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800006d0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800006d4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800006d8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800006dc: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800006e0: 03 a5 05 00  	lw	a0, 0(a1)
800006e4: 13 05 f5 44  	addi	a0, a0, 1103
800006e8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800006ec: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800006f0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800006f4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800006f8: 37 05 00 00  	lui	a0, 0
800006fc: 33 05 45 00  	add	a0, a0, tp
80000700: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80000704: 37 05 00 00  	lui	a0, 0
80000708: 33 05 45 00  	add	a0, a0, tp
8000070c: 23 26 e5 00  	sw	a4, 12(a0)
; }
80000710: 67 80 00 00  	ret

Disassembly of section .init:

80000720 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000720: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000724: 93 81 81 ce  	addi	gp, gp, -792

80000728 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000728: 97 00 00 00  	auipc	ra, 0
8000072c: e7 80 40 3c  	jalr	964(ra)

80000730 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000730: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000734: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000738: 97 00 00 00  	auipc	ra, 0
8000073c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000740: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000744: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000748: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000074c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000750: 63 92 02 02  	bnez	t0, 0x80000774 <snrt.crt0.init_registers>

80000754 <.Lpcrel_hi0>:
;     la        t0, _edata
80000754: 97 02 00 00  	auipc	t0, 0
80000758: 93 82 42 4c  	addi	t0, t0, 1220

8000075c <.Lpcrel_hi1>:
;     la        t1, _end
8000075c: 17 03 00 00  	auipc	t1, 0
80000760: 13 03 03 4c  	addi	t1, t1, 1216
;     bge       t0, t1, 2f
80000764: 63 d8 62 00  	bge	t0, t1, 0x80000774 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000768: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000076c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000770: e3 cc 62 fe  	blt	t0, t1, 0x80000768 <.Lpcrel_hi1+0xc>

80000774 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000774: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000778: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000077c: 63 82 02 08  	beqz	t0, 0x80000800 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000780: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000784: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000788: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000078c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000790: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000794: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000798: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000079c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800007a0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800007a4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800007a8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800007ac: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800007b0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800007b4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800007b8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800007bc: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800007c0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800007c4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800007c8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800007cc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800007d0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800007d4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800007d8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800007dc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800007e0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800007e4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800007e8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800007ec: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800007f0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800007f4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800007f8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800007fc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80000800 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80000800: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80000804: 23 a0 06 00  	sw	zero, 0(a3)

80000808 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80000808: 97 02 00 00  	auipc	t0, 0
8000080c: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
80000810: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000814: 93 87 06 00  	mv	a5, a3

80000818 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000818: 97 03 00 00  	auipc	t2, 0
8000081c: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
80000820: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000824: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000828: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000082c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000830: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000834: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000838: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000083c: b3 86 66 40  	sub	a3, a3, t1

80000840 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000840: 97 02 00 00  	auipc	t0, 0
80000844: 93 82 82 3c  	addi	t0, t0, 968

80000848 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000848: 17 03 00 00  	auipc	t1, 0
8000084c: 13 03 03 3c  	addi	t1, t1, 960

80000850 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000850: 97 03 00 00  	auipc	t2, 0
80000854: 93 83 83 3b  	addi	t2, t2, 952

80000858 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000858: 17 0e 00 00  	auipc	t3, 0
8000085c: 13 0e 0e 3c  	addi	t3, t3, 960
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000860: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000864: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000868: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000086c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000870: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000874: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000878: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000087c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000880: 63 dc 62 00  	bge	t0, t1, 0x80000898 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000884: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000888: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000088c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000890: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000894: e3 c8 62 fe  	blt	t0, t1, 0x80000884 <.Lpcrel_hi7+0x2c>

80000898 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000898: 97 02 00 00  	auipc	t0, 0
8000089c: 93 82 02 37  	addi	t0, t0, 880

800008a0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800008a0: 17 03 00 00  	auipc	t1, 0
800008a4: 13 03 83 37  	addi	t1, t1, 888
;     bge       t0, t1, 2f
800008a8: 63 da 62 00  	bge	t0, t1, 0x800008bc <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800008ac: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800008b0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800008b4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800008b8: e3 ca 72 fe  	blt	t0, t2, 0x800008ac <.Lpcrel_hi9+0xc>

800008bc <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800008bc: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800008c0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800008c4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800008c8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800008cc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800008d0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800008d4: 97 00 00 00  	auipc	ra, 0
800008d8: e7 80 80 cd  	jalr	-808(ra)
;     lw        a0, 0(sp)
800008dc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800008e0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800008e4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800008e8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800008ec: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800008f0: 13 01 41 01  	addi	sp, sp, 20

800008f4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800008f4: 97 02 00 00  	auipc	t0, 0
800008f8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800008fc: 73 90 52 30  	csrw	mtvec, t0

80000900 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000900: 97 00 00 00  	auipc	ra, 0
80000904: e7 80 00 22  	jalr	544(ra)

80000908 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000908: 97 f0 ff ff  	auipc	ra, 1048575
8000090c: e7 80 80 6f  	jalr	1784(ra)
;     mv        s0, a0 # store return value in s0
80000910: 13 04 05 00  	mv	s0, a0

80000914 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000914: 97 00 00 00  	auipc	ra, 0
80000918: e7 80 c0 20  	jalr	524(ra)

8000091c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000091c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000920: 97 00 00 00  	auipc	ra, 0
80000924: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000928: 73 00 50 10  	wfi	
;     j       1b
8000092c: 6f f0 df ff  	j	0x80000928 <snrt.crt0.end+0xc>

80000930 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000930: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000934: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000938: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000093c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000940: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000944: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000948: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000094c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000950: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000954: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000958: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000095c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000960: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000964: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000968: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000096c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000970: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000974: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000978: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000097c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000980: 63 84 02 08  	beqz	t0, 0x80000a08 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000984: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000988: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000098c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000990: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000994: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000998: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000099c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800009a0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800009a4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800009a8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800009ac: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800009b0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800009b4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800009b8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800009bc: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800009c0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800009c4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800009c8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800009cc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800009d0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800009d4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800009d8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800009dc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800009e0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800009e4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800009e8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800009ec: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800009f0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800009f4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800009f8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800009fc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000a00: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000a04: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000a08: 97 00 00 00  	auipc	ra, 0
80000a0c: e7 80 c0 ad  	jalr	-1316(ra)
;     csrr    t0, misa
80000a10: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000a14: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000a18: 63 84 02 08  	beqz	t0, 0x80000aa0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000a1c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000a20: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000a24: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000a28: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000a2c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000a30: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000a34: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000a38: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000a3c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000a40: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000a44: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000a48: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000a4c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000a50: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000a54: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000a58: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000a5c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000a60: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000a64: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000a68: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000a6c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000a70: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000a74: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000a78: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000a7c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000a80: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000a84: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000a88: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000a8c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000a90: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000a94: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000a98: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000a9c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000aa0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000aa4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000aa8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000aac: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000ab0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000ab4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000ab8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000abc: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000ac0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000ac4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000ac8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000acc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000ad0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000ad4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000ad8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000adc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000ae0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000ae4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000ae8: 73 00 20 30  	mret	

80000aec <_snrt_init_core_info>:
;     mv        a4, a1
80000aec: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000af0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000af4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000af8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000afc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000b00: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000b04: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000b08: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000b0c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000b10: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000b14: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000b18: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000b1c: 67 80 00 00  	ret

80000b20 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000b20: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000b24: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000b28: 97 00 00 00  	auipc	ra, 0
80000b2c: e7 80 40 9a  	jalr	-1628(ra)
;     lw        a0, 0(a0)
80000b30: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000b34: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000b38: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000b3c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000b40: 67 80 00 00  	ret

80000b44 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000b44: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000b48: 67 80 00 00  	ret

80000b4c <_snrt_exit>:
;     addi      sp, sp, -8
80000b4c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000b50: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000b54: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000b58: 97 00 00 00  	auipc	ra, 0
80000b5c: e7 80 40 95  	jalr	-1708(ra)
;     lw        t0, 0(sp)
80000b60: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000b64: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000b68: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000b6c: 63 1c 05 00  	bnez	a0, 0x80000b84 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000b70: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000b74: 93 e2 12 00  	ori	t0, t0, 1

80000b78 <.Lpcrel_hi11>:
;     la        t1, tohost
80000b78: 17 03 00 00  	auipc	t1, 0
80000b7c: 13 03 83 04  	addi	t1, t1, 72
;     sw        t0, 0(t1)
80000b80: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000b84: 67 80 00 00  	ret
