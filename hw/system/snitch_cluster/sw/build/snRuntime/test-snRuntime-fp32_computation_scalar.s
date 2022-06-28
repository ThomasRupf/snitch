
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-fp32_computation_scalar:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00000680 80000000 TEXT
  2 .init             00000468 80000680 TEXT
  3 .rodata           00000008 80000ae8 DATA
  4 .htif             00000048 80000b00 DATA
  5 .tdata            00000000 80000b48 DATA
  6 .tbss             00000010 80000b48 BSS
  7 .tbssend          00000000 80000b58 DATA
  8 .sdata            00000000 80000b58 DATA
  9 .data             00000000 80000b58 DATA
 10 .sbss             00000004 80000b58 BSS
 11 .bss              00000000 80000b5c BSS
 12 .dram             00000000 80000b5c DATA
 13 .debug_info       0000169c 00000000 
 14 .debug_abbrev     00000539 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       00000fd0 00000000 
 17 .debug_loc        0000044b 00000000 
 18 .debug_ranges     000000b8 00000000 
 19 .debug_str        00000739 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000000f4 00000000 
 23 .symtab           00000a90 00000000 
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
80000024: 13 05 10 02  	addi	a0, zero, 33
;     if (snrt_is_compute_core()) {
80000028: 63 f6 c5 3e  	bgeu	a1, a2, 0x80000414 <main+0x414>
;         asm volatile(
8000002c: 13 05 00 00  	mv	a0, zero
80000030: b7 f5 48 40  	lui	a1, 263311
80000034: 93 85 35 5c  	addi	a1, a1, 1475
80000038: 37 f6 48 c0  	lui	a2, 787599
8000003c: 93 06 36 5c  	addi	a3, a2, 1475
80000040: 37 26 cf 3f  	lui	a2, 261362
80000044: 13 06 06 aa  	addi	a2, a2, -1376
80000048: 37 27 cf bf  	lui	a4, 785650
8000004c: 13 07 07 aa  	addi	a4, a4, -1376
;         asm volatile(
80000050: 53 82 05 f0  	fmv.w.x	ft4, a1
80000054: d3 82 06 f0  	fmv.w.x	ft5, a3
80000058: 53 03 06 f0  	fmv.w.x	ft6, a2
8000005c: d3 03 07 f0  	fmv.w.x	ft7, a4
;         asm volatile(
80000060: 53 00 42 20  	fmv.s	ft0, ft4
80000064: 53 25 02 a0  	feq.s	a0, ft4, ft0
;         errs -= (res0 == 0x1);
80000068: 93 06 f5 ff  	addi	a3, a0, -1
8000006c: 93 b6 16 00  	seqz	a3, a3
;         asm volatile(
80000070: 53 00 52 20  	fsgnj.s	ft0, ft4, ft5
80000074: 53 a5 02 a0  	feq.s	a0, ft5, ft0
;         errs -= (res0 == 0x1);
80000078: 13 07 f5 ff  	addi	a4, a0, -1
8000007c: 13 37 17 00  	seqz	a4, a4
80000080: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000084: 53 80 62 20  	fsgnj.s	ft0, ft5, ft6
80000088: 53 25 02 a0  	feq.s	a0, ft4, ft0
;         errs -= (res0 == 0x1);
8000008c: 13 07 f5 ff  	addi	a4, a0, -1
80000090: 13 37 17 00  	seqz	a4, a4
80000094: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000098: 53 80 72 20  	fsgnj.s	ft0, ft5, ft7
8000009c: 53 a5 02 a0  	feq.s	a0, ft5, ft0
;         errs -= (res0 == 0x1);
800000a0: 13 07 f5 ff  	addi	a4, a0, -1
800000a4: 13 37 17 00  	seqz	a4, a4
800000a8: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000ac: 53 10 42 20  	fneg.s	ft0, ft4
800000b0: 53 a5 02 a0  	feq.s	a0, ft5, ft0
;         errs -= (res0 == 0x1);
800000b4: 13 07 f5 ff  	addi	a4, a0, -1
800000b8: 13 37 17 00  	seqz	a4, a4
800000bc: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000c0: 53 10 52 20  	fsgnjn.s	ft0, ft4, ft5
800000c4: 53 25 02 a0  	feq.s	a0, ft4, ft0
;         errs -= (res0 == 0x1);
800000c8: 13 07 f5 ff  	addi	a4, a0, -1
800000cc: 13 37 17 00  	seqz	a4, a4
800000d0: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000d4: 53 90 62 20  	fsgnjn.s	ft0, ft5, ft6
800000d8: 53 a5 02 a0  	feq.s	a0, ft5, ft0
;         errs -= (res0 == 0x1);
800000dc: 13 07 f5 ff  	addi	a4, a0, -1
800000e0: 13 37 17 00  	seqz	a4, a4
800000e4: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000e8: 53 90 72 20  	fsgnjn.s	ft0, ft5, ft7
800000ec: 53 25 02 a0  	feq.s	a0, ft4, ft0
;         errs -= (res0 == 0x1);
800000f0: 13 07 f5 ff  	addi	a4, a0, -1
800000f4: 13 37 17 00  	seqz	a4, a4
800000f8: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
800000fc: 53 20 42 20  	fabs.s	ft0, ft4
80000100: 53 25 02 a0  	feq.s	a0, ft4, ft0
;         errs -= (res0 == 0x1);
80000104: 13 07 f5 ff  	addi	a4, a0, -1
80000108: 13 37 17 00  	seqz	a4, a4
8000010c: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000110: 53 20 52 20  	fsgnjx.s	ft0, ft4, ft5
80000114: 53 a5 02 a0  	feq.s	a0, ft5, ft0
;         errs -= (res0 == 0x1);
80000118: 13 07 f5 ff  	addi	a4, a0, -1
8000011c: 13 37 17 00  	seqz	a4, a4
80000120: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000124: 53 a0 62 20  	fsgnjx.s	ft0, ft5, ft6
80000128: 53 a5 02 a0  	feq.s	a0, ft5, ft0
;         errs -= (res0 == 0x1);
8000012c: 13 07 f5 ff  	addi	a4, a0, -1
80000130: 13 37 17 00  	seqz	a4, a4
80000134: b3 86 e6 00  	add	a3, a3, a4
;         asm volatile(
80000138: 53 a0 72 20  	fsgnjx.s	ft0, ft5, ft7
8000013c: 53 25 02 a0  	feq.s	a0, ft4, ft0
;         errs -= (res0 == 0x1);
80000140: 13 07 f5 ff  	addi	a4, a0, -1
80000144: 13 37 17 00  	seqz	a4, a4
80000148: b3 86 e6 00  	add	a3, a3, a4
8000014c: 37 27 80 3e  	lui	a4, 256002
80000150: 13 07 b7 ff  	addi	a4, a4, -5
80000154: b7 47 c8 42  	lui	a5, 273540
80000158: 93 87 67 f3  	addi	a5, a5, -202
;         asm volatile(
8000015c: 53 82 05 f0  	fmv.w.x	ft4, a1
80000160: d3 02 06 f0  	fmv.w.x	ft5, a2
80000164: 53 03 07 f0  	fmv.w.x	ft6, a4
80000168: d3 83 07 f0  	fmv.w.x	ft7, a5
8000016c: b7 45 98 40  	lui	a1, 264580
80000170: 93 85 a5 18  	addi	a1, a1, 394
80000174: 37 26 ef 3f  	lui	a2, 261874
80000178: 13 06 f6 29  	addi	a2, a2, 671
8000017c: 37 c7 c8 42  	lui	a4, 273548
80000180: 13 07 67 f5  	addi	a4, a4, -170
;         asm volatile(
80000184: d3 80 05 f0  	fmv.w.x	ft1, a1
80000188: 53 01 06 f0  	fmv.w.x	ft2, a2
8000018c: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
80000190: 53 70 52 00  	fadd.s	ft0, ft4, ft5
80000194: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
80000198: 93 05 f5 ff  	addi	a1, a0, -1
8000019c: 93 b5 15 00  	seqz	a1, a1
800001a0: b3 85 b6 00  	add	a1, a3, a1
;         asm volatile(
800001a4: 53 f0 62 00  	fadd.s	ft0, ft5, ft6
800001a8: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
800001ac: 13 06 f5 ff  	addi	a2, a0, -1
800001b0: 13 36 16 00  	seqz	a2, a2
800001b4: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800001b8: 53 70 73 00  	fadd.s	ft0, ft6, ft7
800001bc: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
800001c0: 13 06 f5 ff  	addi	a2, a0, -1
800001c4: 13 36 16 00  	seqz	a2, a2
800001c8: b3 85 c5 00  	add	a1, a1, a2
800001cc: 37 d6 c2 3f  	lui	a2, 261165
800001d0: 13 06 66 0e  	addi	a2, a2, 230
800001d4: b7 16 af 3f  	lui	a3, 260849
800001d8: 93 86 16 2a  	addi	a3, a3, 673
800001dc: 37 c7 c7 c2  	lui	a4, 797820
800001e0: 13 07 67 f1  	addi	a4, a4, -234
;         asm volatile(
800001e4: d3 00 06 f0  	fmv.w.x	ft1, a2
800001e8: 53 81 06 f0  	fmv.w.x	ft2, a3
800001ec: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
800001f0: 53 70 52 08  	fsub.s	ft0, ft4, ft5
800001f4: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
800001f8: 13 06 f5 ff  	addi	a2, a0, -1
800001fc: 13 36 16 00  	seqz	a2, a2
80000200: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000204: 53 f0 62 08  	fsub.s	ft0, ft5, ft6
80000208: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
8000020c: 13 06 f5 ff  	addi	a2, a0, -1
80000210: 13 36 16 00  	seqz	a2, a2
80000214: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000218: 53 70 73 08  	fsub.s	ft0, ft6, ft7
8000021c: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
80000220: 13 06 f5 ff  	addi	a2, a0, -1
80000224: 13 36 16 00  	seqz	a2, a2
80000228: b3 85 c5 00  	add	a1, a1, a2
8000022c: 37 96 a2 40  	lui	a2, 264745
80000230: 13 06 f6 39  	addi	a2, a2, 927
80000234: b7 56 cf 3e  	lui	a3, 257269
80000238: 93 86 f6 e5  	addi	a3, a3, -417
8000023c: 37 77 c8 41  	lui	a4, 269447
80000240: 13 07 e7 13  	addi	a4, a4, 318
;         asm volatile(
80000244: d3 00 06 f0  	fmv.w.x	ft1, a2
80000248: 53 81 06 f0  	fmv.w.x	ft2, a3
8000024c: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
80000250: 53 70 52 10  	fmul.s	ft0, ft4, ft5
80000254: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
80000258: 13 06 f5 ff  	addi	a2, a0, -1
8000025c: 13 36 16 00  	seqz	a2, a2
80000260: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000264: 53 f0 62 10  	fmul.s	ft0, ft5, ft6
80000268: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
8000026c: 13 06 f5 ff  	addi	a2, a0, -1
80000270: 13 36 16 00  	seqz	a2, a2
80000274: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000278: 53 70 73 10  	fmul.s	ft0, ft6, ft7
8000027c: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
80000280: 13 06 f5 ff  	addi	a2, a0, -1
80000284: 13 36 16 00  	seqz	a2, a2
80000288: b3 85 c5 00  	add	a1, a1, a2
8000028c: 37 96 aa 40  	lui	a2, 264873
80000290: 13 06 f6 59  	addi	a2, a2, 1439
80000294: b7 16 c9 42  	lui	a3, 273553
80000298: 93 86 46 e8  	addi	a3, a3, -380
8000029c: 37 97 e1 41  	lui	a4, 269849
800002a0: 13 07 67 ff  	addi	a4, a4, -10
;         asm volatile(
800002a4: d3 00 06 f0  	fmv.w.x	ft1, a2
800002a8: 53 81 06 f0  	fmv.w.x	ft2, a3
800002ac: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
800002b0: 43 70 52 30  	fmadd.s	ft0, ft4, ft5, ft6
800002b4: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
800002b8: 13 06 f5 ff  	addi	a2, a0, -1
800002bc: 13 36 16 00  	seqz	a2, a2
800002c0: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800002c4: 43 f0 62 38  	fmadd.s	ft0, ft5, ft6, ft7
800002c8: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
800002cc: 13 06 f5 ff  	addi	a2, a0, -1
800002d0: 13 36 16 00  	seqz	a2, a2
800002d4: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800002d8: 43 70 73 20  	fmadd.s	ft0, ft6, ft7, ft4
800002dc: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
800002e0: 13 06 f5 ff  	addi	a2, a0, -1
800002e4: 13 36 16 00  	seqz	a2, a2
800002e8: b3 85 c5 00  	add	a1, a1, a2
800002ec: 37 96 aa c0  	lui	a2, 789161
800002f0: 13 06 f6 59  	addi	a2, a2, 1439
800002f4: b7 16 c9 c2  	lui	a3, 797841
800002f8: 93 86 46 e8  	addi	a3, a3, -380
800002fc: 37 97 e1 c1  	lui	a4, 794137
80000300: 13 07 67 ff  	addi	a4, a4, -10
;         asm volatile(
80000304: d3 00 06 f0  	fmv.w.x	ft1, a2
80000308: 53 81 06 f0  	fmv.w.x	ft2, a3
8000030c: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
80000310: 4f 70 52 30  	fnmadd.s	ft0, ft4, ft5, ft6
80000314: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
80000318: 13 06 f5 ff  	addi	a2, a0, -1
8000031c: 13 36 16 00  	seqz	a2, a2
80000320: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000324: 4f f0 62 38  	fnmadd.s	ft0, ft5, ft6, ft7
80000328: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
8000032c: 13 06 f5 ff  	addi	a2, a0, -1
80000330: 13 36 16 00  	seqz	a2, a2
80000334: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000338: 4f 70 73 20  	fnmadd.s	ft0, ft6, ft7, ft4
8000033c: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
80000340: 13 06 f5 ff  	addi	a2, a0, -1
80000344: 13 36 16 00  	seqz	a2, a2
80000348: b3 85 c5 00  	add	a1, a1, a2
8000034c: 37 96 9a 40  	lui	a2, 264617
80000350: 13 06 06 1a  	addi	a2, a2, 416
80000354: b7 76 c7 c2  	lui	a3, 797815
80000358: 93 86 86 fe  	addi	a3, a3, -24
8000035c: 37 57 af 41  	lui	a4, 269045
80000360: 13 07 67 28  	addi	a4, a4, 646
;         asm volatile(
80000364: d3 00 06 f0  	fmv.w.x	ft1, a2
80000368: 53 81 06 f0  	fmv.w.x	ft2, a3
8000036c: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
80000370: 47 70 52 30  	fmsub.s	ft0, ft4, ft5, ft6
80000374: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
80000378: 13 06 f5 ff  	addi	a2, a0, -1
8000037c: 13 36 16 00  	seqz	a2, a2
80000380: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000384: 47 f0 62 38  	fmsub.s	ft0, ft5, ft6, ft7
80000388: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
8000038c: 13 06 f5 ff  	addi	a2, a0, -1
80000390: 13 36 16 00  	seqz	a2, a2
80000394: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
80000398: 47 70 73 20  	fmsub.s	ft0, ft6, ft7, ft4
8000039c: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
800003a0: 13 06 f5 ff  	addi	a2, a0, -1
800003a4: 13 36 16 00  	seqz	a2, a2
800003a8: b3 85 c5 00  	add	a1, a1, a2
800003ac: 37 96 9a c0  	lui	a2, 788905
800003b0: 13 06 06 1a  	addi	a2, a2, 416
800003b4: b7 76 c7 42  	lui	a3, 273527
800003b8: 93 86 86 fe  	addi	a3, a3, -24
800003bc: 37 57 af c1  	lui	a4, 793333
800003c0: 13 07 67 28  	addi	a4, a4, 646
;         asm volatile(
800003c4: d3 00 06 f0  	fmv.w.x	ft1, a2
800003c8: 53 81 06 f0  	fmv.w.x	ft2, a3
800003cc: d3 01 07 f0  	fmv.w.x	ft3, a4
;         asm volatile(
800003d0: 4b 70 52 30  	fnmsub.s	ft0, ft4, ft5, ft6
800003d4: 53 a5 00 a0  	feq.s	a0, ft1, ft0
;         errs -= (res0 == 0x1);
800003d8: 13 06 f5 ff  	addi	a2, a0, -1
800003dc: 13 36 16 00  	seqz	a2, a2
800003e0: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003e4: 4b f0 62 38  	fnmsub.s	ft0, ft5, ft6, ft7
800003e8: 53 25 01 a0  	feq.s	a0, ft2, ft0
;         errs -= (res0 == 0x1);
800003ec: 13 06 f5 ff  	addi	a2, a0, -1
800003f0: 13 36 16 00  	seqz	a2, a2
800003f4: b3 85 c5 00  	add	a1, a1, a2
;         asm volatile(
800003f8: 4b 70 73 20  	fnmsub.s	ft0, ft6, ft7, ft4
800003fc: 53 a5 01 a0  	feq.s	a0, ft3, ft0
;         errs -= (res0 == 0x1);
80000400: 13 05 f5 ff  	addi	a0, a0, -1
80000404: 13 35 15 00  	seqz	a0, a0
80000408: 33 85 a5 00  	add	a0, a1, a0
8000040c: 93 05 10 02  	addi	a1, zero, 33
80000410: 33 85 a5 40  	sub	a0, a1, a0
;     return errs;
80000414: 67 80 00 00  	ret

80000418 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000418: 37 05 00 00  	lui	a0, 0
8000041c: 33 05 45 00  	add	a0, a0, tp
80000420: 03 25 05 00  	lw	a0, 0(a0)
80000424: 03 25 05 00  	lw	a0, 0(a0)
80000428: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000042c: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000430: 33 85 a5 40  	sub	a0, a1, a0
80000434: 67 80 00 00  	ret

80000438 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80000438: 37 05 00 00  	lui	a0, 0
8000043c: 33 05 45 00  	add	a0, a0, tp
80000440: 03 25 05 00  	lw	a0, 0(a0)
80000444: 03 25 05 00  	lw	a0, 0(a0)
80000448: 03 25 05 07  	lw	a0, 112(a0)
8000044c: 67 80 00 00  	ret

80000450 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000450: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000454: 63 44 05 00  	bltz	a0, 0x8000045c <__snrt_isr+0xc>
;         while (1)
80000458: 6f 00 00 00  	j	0x80000458 <__snrt_isr+0x8>
8000045c: b7 05 00 80  	lui	a1, 524288
80000460: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80000464: 33 75 b5 00  	and	a0, a0, a1
80000468: 13 05 d5 ff  	addi	a0, a0, -3
8000046c: 93 55 25 00  	srli	a1, a0, 2
80000470: 13 15 e5 01  	slli	a0, a0, 30
80000474: 33 65 b5 00  	or	a0, a0, a1
80000478: 93 05 40 00  	addi	a1, zero, 4
8000047c: 63 0a b5 06  	beq	a0, a1, 0x800004f0 <.LBB1_7+0x58>
80000480: 63 1a 05 08  	bnez	a0, 0x80000514 <.LBB1_7+0x7c>
80000484: 37 05 00 00  	lui	a0, 0
80000488: 33 05 45 00  	add	a0, a0, tp
8000048c: 03 25 05 00  	lw	a0, 0(a0)
80000490: 03 25 05 00  	lw	a0, 0(a0)
80000494: f3 25 40 f1  	csrr	a1, mhartid

80000498 <.LBB1_7>:
;     asm volatile(
80000498: 17 06 00 00  	auipc	a2, 0
8000049c: 13 06 06 6c  	addi	a2, a2, 1728
800004a0: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800004a4: 93 06 06 00  	mv	a3, a2
800004a8: 93 02 10 00  	addi	t0, zero, 1
800004ac: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800004b0: e3 9e 02 fe  	bnez	t0, 0x800004ac <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800004b4: b7 06 00 00  	lui	a3, 0
800004b8: b3 86 46 00  	add	a3, a3, tp
800004bc: 83 a6 86 00  	lw	a3, 8(a3)
800004c0: 33 85 a5 40  	sub	a0, a1, a0
800004c4: 93 55 35 00  	srli	a1, a0, 3
800004c8: 93 f5 c5 ff  	andi	a1, a1, -4
800004cc: b3 85 b6 00  	add	a1, a3, a1
800004d0: 83 a6 05 00  	lw	a3, 0(a1)
800004d4: 13 07 10 00  	addi	a4, zero, 1
800004d8: 33 15 a7 00  	sll	a0, a4, a0
800004dc: 13 45 f5 ff  	not	a0, a0
800004e0: 33 f5 a6 00  	and	a0, a3, a0
800004e4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800004e8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800004ec: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800004f0: 37 05 00 00  	lui	a0, 0
800004f4: 33 05 45 00  	add	a0, a0, tp
800004f8: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800004fc: b7 05 00 00  	lui	a1, 0
80000500: b3 85 45 00  	add	a1, a1, tp
80000504: 83 a5 c5 00  	lw	a1, 12(a1)
80000508: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
8000050c: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000510: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000514: 67 80 00 00  	ret

80000518 <_snrt_init_team>:
;     team->base.root = team;
80000518: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
8000051c: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000520: 03 23 87 00  	lw	t1, 8(a4)
80000524: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000528: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
8000052c: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000530: 83 22 47 00  	lw	t0, 4(a4)
80000534: 33 88 08 03  	mul	a6, a7, a6
80000538: 33 05 58 02  	mul	a0, a6, t0
8000053c: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000540: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000544: 33 85 68 40  	sub	a0, a7, t1
80000548: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
8000054c: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000550: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000554: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80000558: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
8000055c: 03 25 87 01  	lw	a0, 24(a4)
80000560: b7 05 00 10  	lui	a1, 65536
80000564: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000568: 23 a2 07 02  	sw	zero, 36(a5)
8000056c: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80000570: 03 25 07 02  	lw	a0, 32(a4)
80000574: 83 25 47 02  	lw	a1, 36(a4)
80000578: 23 a4 a7 02  	sw	a0, 40(a5)
8000057c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80000580: 23 a8 c7 02  	sw	a2, 48(a5)
80000584: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000588: 23 ac d7 02  	sw	a3, 56(a5)
8000058c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000590: 03 25 07 01  	lw	a0, 16(a4)
80000594: 33 08 a6 00  	add	a6, a2, a0
80000598: 93 05 08 19  	addi	a1, a6, 400
8000059c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800005a0: b3 32 a8 00  	sltu	t0, a6, a0
800005a4: 93 55 15 00  	srli	a1, a0, 1
800005a8: 33 03 b8 00  	add	t1, a6, a1
800005ac: b3 35 03 01  	sltu	a1, t1, a6
800005b0: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800005b4: 23 a0 67 04  	sw	t1, 64(a5)
800005b8: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800005bc: 13 15 15 00  	slli	a0, a0, 1
800005c0: b3 05 c5 00  	add	a1, a0, a2
800005c4: 33 b5 a5 00  	sltu	a0, a1, a0
800005c8: 23 a4 b7 04  	sw	a1, 72(a5)
800005cc: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800005d0: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800005d4: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800005d8: 37 05 00 00  	lui	a0, 0
800005dc: 33 05 45 00  	add	a0, a0, tp
800005e0: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800005e4: 03 a5 07 00  	lw	a0, 0(a5)
800005e8: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800005ec: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800005f0: b3 85 b8 40  	sub	a1, a7, a1
800005f4: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800005f8: b7 05 00 00  	lui	a1, 0
800005fc: b3 85 45 00  	add	a1, a1, tp
80000600: 23 a2 a5 00  	sw	a0, 4(a1)
80000604: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000608: 33 85 a8 02  	mul	a0, a7, a0

8000060c <.LBB0_1>:
8000060c: 97 05 00 00  	auipc	a1, 0
80000610: 93 85 05 55  	addi	a1, a1, 1360
80000614: 33 05 b5 00  	add	a0, a0, a1
80000618: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
8000061c: 83 28 07 03  	lw	a7, 48(a4)
80000620: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000624: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80000628: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
8000062c: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000630: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000634: 13 05 76 00  	addi	a0, a2, 7
80000638: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
8000063c: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000640: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000644: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80000648: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
8000064c: 03 a5 05 00  	lw	a0, 0(a1)
80000650: 13 05 f5 44  	addi	a0, a0, 1103
80000654: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80000658: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
8000065c: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80000660: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000664: 37 05 00 00  	lui	a0, 0
80000668: 33 05 45 00  	add	a0, a0, tp
8000066c: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80000670: 37 05 00 00  	lui	a0, 0
80000674: 33 05 45 00  	add	a0, a0, tp
80000678: 23 26 e5 00  	sw	a4, 12(a0)
; }
8000067c: 67 80 00 00  	ret

Disassembly of section .init:

80000680 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000680: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000684: 93 81 81 cc  	addi	gp, gp, -824

80000688 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000688: 97 00 00 00  	auipc	ra, 0
8000068c: e7 80 40 3c  	jalr	964(ra)

80000690 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000690: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000694: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000698: 97 00 00 00  	auipc	ra, 0
8000069c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800006a0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800006a4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800006a8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800006ac: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800006b0: 63 92 02 02  	bnez	t0, 0x800006d4 <snrt.crt0.init_registers>

800006b4 <.Lpcrel_hi0>:
;     la        t0, _edata
800006b4: 97 02 00 00  	auipc	t0, 0
800006b8: 93 82 42 4a  	addi	t0, t0, 1188

800006bc <.Lpcrel_hi1>:
;     la        t1, _end
800006bc: 17 03 00 00  	auipc	t1, 0
800006c0: 13 03 03 4a  	addi	t1, t1, 1184
;     bge       t0, t1, 2f
800006c4: 63 d8 62 00  	bge	t0, t1, 0x800006d4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800006c8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800006cc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800006d0: e3 cc 62 fe  	blt	t0, t1, 0x800006c8 <.Lpcrel_hi1+0xc>

800006d4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800006d4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800006d8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800006dc: 63 82 02 08  	beqz	t0, 0x80000760 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800006e0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800006e4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800006e8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800006ec: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800006f0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800006f4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800006f8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800006fc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000700: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000704: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000708: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000070c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000710: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000714: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000718: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000071c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000720: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000724: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000728: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000072c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000730: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000734: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000738: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000073c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000740: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000744: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000748: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000074c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80000750: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80000754: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80000758: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000075c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80000760 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80000760: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80000764: 23 a0 06 00  	sw	zero, 0(a3)

80000768 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80000768: 97 02 00 00  	auipc	t0, 0
8000076c: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
80000770: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000774: 93 87 06 00  	mv	a5, a3

80000778 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000778: 97 03 00 00  	auipc	t2, 0
8000077c: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
80000780: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000784: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000788: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000078c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000790: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000794: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000798: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000079c: b3 86 66 40  	sub	a3, a3, t1

800007a0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800007a0: 97 02 00 00  	auipc	t0, 0
800007a4: 93 82 82 3a  	addi	t0, t0, 936

800007a8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800007a8: 17 03 00 00  	auipc	t1, 0
800007ac: 13 03 03 3a  	addi	t1, t1, 928

800007b0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800007b0: 97 03 00 00  	auipc	t2, 0
800007b4: 93 83 83 39  	addi	t2, t2, 920

800007b8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800007b8: 17 0e 00 00  	auipc	t3, 0
800007bc: 13 0e 0e 3a  	addi	t3, t3, 928
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800007c0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800007c4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800007c8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800007cc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800007d0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800007d4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800007d8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800007dc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800007e0: 63 dc 62 00  	bge	t0, t1, 0x800007f8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800007e4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800007e8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800007ec: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800007f0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800007f4: e3 c8 62 fe  	blt	t0, t1, 0x800007e4 <.Lpcrel_hi7+0x2c>

800007f8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800007f8: 97 02 00 00  	auipc	t0, 0
800007fc: 93 82 02 35  	addi	t0, t0, 848

80000800 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000800: 17 03 00 00  	auipc	t1, 0
80000804: 13 03 83 35  	addi	t1, t1, 856
;     bge       t0, t1, 2f
80000808: 63 da 62 00  	bge	t0, t1, 0x8000081c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000080c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000810: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000814: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000818: e3 ca 72 fe  	blt	t0, t2, 0x8000080c <.Lpcrel_hi9+0xc>

8000081c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000081c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000820: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000824: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000828: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000082c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000830: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000834: 97 00 00 00  	auipc	ra, 0
80000838: e7 80 40 ce  	jalr	-796(ra)
;     lw        a0, 0(sp)
8000083c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000840: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000844: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000848: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000084c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000850: 13 01 41 01  	addi	sp, sp, 20

80000854 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000854: 97 02 00 00  	auipc	t0, 0
80000858: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000085c: 73 90 52 30  	csrw	mtvec, t0

80000860 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000860: 97 00 00 00  	auipc	ra, 0
80000864: e7 80 00 22  	jalr	544(ra)

80000868 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000868: 97 f0 ff ff  	auipc	ra, 1048575
8000086c: e7 80 80 79  	jalr	1944(ra)
;     mv        s0, a0 # store return value in s0
80000870: 13 04 05 00  	mv	s0, a0

80000874 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000874: 97 00 00 00  	auipc	ra, 0
80000878: e7 80 c0 20  	jalr	524(ra)

8000087c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000087c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000880: 97 00 00 00  	auipc	ra, 0
80000884: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000888: 73 00 50 10  	wfi	
;     j       1b
8000088c: 6f f0 df ff  	j	0x80000888 <snrt.crt0.end+0xc>

80000890 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000890: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000894: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000898: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000089c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800008a0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800008a4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800008a8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800008ac: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800008b0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800008b4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800008b8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800008bc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800008c0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800008c4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800008c8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800008cc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800008d0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800008d4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800008d8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800008dc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800008e0: 63 84 02 08  	beqz	t0, 0x80000968 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800008e4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800008e8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800008ec: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800008f0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800008f4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800008f8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800008fc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000900: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000904: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000908: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000090c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000910: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000914: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000918: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000091c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000920: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000924: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000928: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000092c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000930: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000934: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000938: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000093c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000940: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000944: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000948: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000094c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000950: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000954: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000958: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000095c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000960: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000964: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000968: 97 00 00 00  	auipc	ra, 0
8000096c: e7 80 80 ae  	jalr	-1304(ra)
;     csrr    t0, misa
80000970: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000974: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000978: 63 84 02 08  	beqz	t0, 0x80000a00 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000097c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000980: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000984: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000988: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000098c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000990: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000994: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000998: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000099c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800009a0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800009a4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800009a8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800009ac: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800009b0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800009b4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800009b8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800009bc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800009c0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800009c4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800009c8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800009cc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800009d0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800009d4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800009d8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800009dc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800009e0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800009e4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800009e8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800009ec: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800009f0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800009f4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800009f8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800009fc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000a00: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000a04: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000a08: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000a0c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000a10: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000a14: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000a18: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000a1c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000a20: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000a24: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000a28: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000a2c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000a30: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000a34: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000a38: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000a3c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000a40: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000a44: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000a48: 73 00 20 30  	mret	

80000a4c <_snrt_init_core_info>:
;     mv        a4, a1
80000a4c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000a50: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000a54: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000a58: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000a5c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000a60: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000a64: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000a68: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000a6c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000a70: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000a74: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000a78: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000a7c: 67 80 00 00  	ret

80000a80 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000a80: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000a84: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000a88: 97 00 00 00  	auipc	ra, 0
80000a8c: e7 80 00 9b  	jalr	-1616(ra)
;     lw        a0, 0(a0)
80000a90: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000a94: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000a98: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000a9c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000aa0: 67 80 00 00  	ret

80000aa4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000aa4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000aa8: 67 80 00 00  	ret

80000aac <_snrt_exit>:
;     addi      sp, sp, -8
80000aac: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000ab0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000ab4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000ab8: 97 00 00 00  	auipc	ra, 0
80000abc: e7 80 00 96  	jalr	-1696(ra)
;     lw        t0, 0(sp)
80000ac0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000ac4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000ac8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000acc: 63 1c 05 00  	bnez	a0, 0x80000ae4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000ad0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000ad4: 93 e2 12 00  	ori	t0, t0, 1

80000ad8 <.Lpcrel_hi11>:
;     la        t1, tohost
80000ad8: 17 03 00 00  	auipc	t1, 0
80000adc: 13 03 83 02  	addi	t1, t1, 40
;     sw        t0, 0(t1)
80000ae0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000ae4: 67 80 00 00  	ret
