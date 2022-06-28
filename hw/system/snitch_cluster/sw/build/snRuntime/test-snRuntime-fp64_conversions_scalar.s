
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-fp64_conversions_scalar:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00000678 80000000 TEXT
  2 .init             00000468 80000680 TEXT
  3 .rodata           00000008 80000ae8 DATA
  4 .htif             00000048 80000b00 DATA
  5 .tdata            00000000 80000b48 DATA
  6 .tbss             00000010 80000b48 BSS
  7 .tbssend          00000000 80000b58 DATA
  8 .sdata            00000060 80000b58 DATA
  9 .data             00000000 80000bb8 DATA
 10 .sbss             00000004 80000bb8 BSS
 11 .bss              00000000 80000bbc BSS
 12 .dram             00000000 80000bbc DATA
 13 .debug_info       00001959 00000000 
 14 .debug_abbrev     00000539 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       00000efe 00000000 
 17 .debug_loc        00000acc 00000000 
 18 .debug_ranges     000000b8 00000000 
 19 .debug_str        00000869 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      000000f4 00000000 
 23 .symtab           00000f70 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000500 00000000 


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
80000020: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_compute_core()) {
80000024: 63 f2 a5 3e  	bgeu	a1, a0, 0x80000408 <.LBB0_14+0x80>
;         asm volatile(
80000028: 13 05 00 00  	mv	a0, zero
8000002c: 93 05 00 00  	mv	a1, zero
;         write_csr(2048, 0);
80000030: 73 50 00 80  	csrwi	2048, 0
80000034: 37 48 ff ff  	lui	a6, 1048564
80000038: 13 07 88 24  	addi	a4, a6, 584
8000003c: b7 c8 ff ff  	lui	a7, 1048572
80000040: 93 87 88 24  	addi	a5, a7, 584
;         asm volatile(
80000044: 53 01 07 f4  	fmv.h.x	ft2, a4
80000048: d3 81 07 f4  	fmv.h.x	ft3, a5
8000004c: 13 07 20 f4  	addi	a4, zero, -190
80000050: 93 07 20 fc  	addi	a5, zero, -62

80000054 <.LBB0_3>:
80000054: 17 16 00 00  	auipc	a2, 1
80000058: 13 06 46 b0  	addi	a2, a2, -1276
8000005c: 07 30 06 00  	fld	ft0, 0(a2)

80000060 <.LBB0_4>:
80000060: 17 16 00 00  	auipc	a2, 1
80000064: 13 06 06 b0  	addi	a2, a2, -1280
80000068: 87 30 06 00  	fld	ft1, 0(a2)
;         asm volatile(
8000006c: 13 06 20 fc  	addi	a2, zero, -62
80000070: 93 06 20 f4  	addi	a3, zero, -190
80000074: 53 82 06 f6  	fmv.b.x	ft4, a3
80000078: d3 02 06 f6  	fmv.b.x	ft5, a2
;         asm volatile(
8000007c: 53 73 10 44  	fcvt.h.d	ft6, ft0
80000080: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000084: 53 25 23 a4  	feq.h	a0, ft6, ft2
80000088: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
8000008c: 53 73 10 46  	fcvt.b.d	ft6, ft0
80000090: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000094: 53 25 43 a6  	feq.b	a0, ft6, ft4
80000098: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 3);
8000009c: 73 d0 01 80  	csrwi	2048, 3
800000a0: 13 06 98 04  	addi	a2, a6, 73
800000a4: 93 86 98 04  	addi	a3, a7, 73
;         asm volatile(
800000a8: 53 01 06 f4  	fmv.h.x	ft2, a2
800000ac: d3 81 06 f4  	fmv.h.x	ft3, a3
800000b0: 13 06 50 f4  	addi	a2, zero, -187
800000b4: 93 06 50 fc  	addi	a3, zero, -59
;         asm volatile(
800000b8: 53 02 06 f6  	fmv.b.x	ft4, a2
800000bc: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
800000c0: 53 73 10 44  	fcvt.h.d	ft6, ft0
800000c4: d3 f3 10 44  	fcvt.h.d	ft7, ft1
800000c8: 53 25 23 a4  	feq.h	a0, ft6, ft2
800000cc: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
800000d0: 53 73 10 46  	fcvt.b.d	ft6, ft0
800000d4: d3 f3 10 46  	fcvt.b.d	ft7, ft1
800000d8: 53 25 43 a6  	feq.b	a0, ft6, ft4
800000dc: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 0);
800000e0: 73 50 00 80  	csrwi	2048, 0
800000e4: 13 06 98 e7  	addi	a2, a6, -391
800000e8: 93 86 98 e7  	addi	a3, a7, -391
;         asm volatile(
800000ec: 53 01 06 f4  	fmv.h.x	ft2, a2
800000f0: d3 81 06 f4  	fmv.h.x	ft3, a3

800000f4 <.LBB0_5>:
800000f4: 17 16 00 00  	auipc	a2, 1
800000f8: 13 06 46 a7  	addi	a2, a2, -1420
800000fc: 07 30 06 00  	fld	ft0, 0(a2)

80000100 <.LBB0_6>:
80000100: 17 16 00 00  	auipc	a2, 1
80000104: 13 06 06 a7  	addi	a2, a2, -1424
80000108: 87 30 06 00  	fld	ft1, 0(a2)
8000010c: 13 06 e0 f3  	addi	a2, zero, -194
80000110: 93 06 e0 fb  	addi	a3, zero, -66
;         asm volatile(
80000114: 53 02 06 f6  	fmv.b.x	ft4, a2
80000118: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
8000011c: 53 73 10 44  	fcvt.h.d	ft6, ft0
80000120: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000124: 53 25 23 a4  	feq.h	a0, ft6, ft2
80000128: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
8000012c: 53 73 10 46  	fcvt.b.d	ft6, ft0
80000130: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000134: 53 25 43 a6  	feq.b	a0, ft6, ft4
80000138: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 3);
8000013c: 73 d0 01 80  	csrwi	2048, 3
80000140: 13 06 f8 fc  	addi	a2, a6, -49
80000144: 93 86 f8 fc  	addi	a3, a7, -49
;         asm volatile(
80000148: 53 01 06 f4  	fmv.h.x	ft2, a2
8000014c: d3 81 06 f4  	fmv.h.x	ft3, a3
80000150: 13 06 d0 f3  	addi	a2, zero, -195
80000154: 93 06 d0 fb  	addi	a3, zero, -67
;         asm volatile(
80000158: 53 02 06 f6  	fmv.b.x	ft4, a2
8000015c: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
80000160: 53 73 10 44  	fcvt.h.d	ft6, ft0
80000164: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000168: 53 25 23 a4  	feq.h	a0, ft6, ft2
8000016c: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
80000170: 53 73 10 46  	fcvt.b.d	ft6, ft0
80000174: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000178: 53 25 43 a6  	feq.b	a0, ft6, ft4
8000017c: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 0);
80000180: 73 50 00 80  	csrwi	2048, 0
80000184: 13 06 88 0c  	addi	a2, a6, 200
80000188: 93 86 88 0c  	addi	a3, a7, 200
;         asm volatile(
8000018c: 53 01 06 f4  	fmv.h.x	ft2, a2
80000190: d3 81 06 f4  	fmv.h.x	ft3, a3

80000194 <.LBB0_7>:
80000194: 17 16 00 00  	auipc	a2, 1
80000198: 13 06 46 9e  	addi	a2, a2, -1564
8000019c: 07 30 06 00  	fld	ft0, 0(a2)

800001a0 <.LBB0_8>:
800001a0: 17 16 00 00  	auipc	a2, 1
800001a4: 13 06 06 9e  	addi	a2, a2, -1568
800001a8: 87 30 06 00  	fld	ft1, 0(a2)
800001ac: 13 06 10 f4  	addi	a2, zero, -191
800001b0: 93 06 10 fc  	addi	a3, zero, -63
;         asm volatile(
800001b4: 53 02 06 f6  	fmv.b.x	ft4, a2
800001b8: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
800001bc: 53 73 10 44  	fcvt.h.d	ft6, ft0
800001c0: d3 f3 10 44  	fcvt.h.d	ft7, ft1
800001c4: 53 25 23 a4  	feq.h	a0, ft6, ft2
800001c8: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
800001cc: 53 73 10 46  	fcvt.b.d	ft6, ft0
800001d0: d3 f3 10 46  	fcvt.b.d	ft7, ft1
800001d4: 53 25 43 a6  	feq.b	a0, ft6, ft4
800001d8: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 3);
800001dc: 73 d0 01 80  	csrwi	2048, 3
800001e0: 13 06 98 01  	addi	a2, a6, 25
800001e4: 93 86 98 01  	addi	a3, a7, 25
;         asm volatile(
800001e8: 53 01 06 f4  	fmv.h.x	ft2, a2
800001ec: d3 81 06 f4  	fmv.h.x	ft3, a3
;         asm volatile(
800001f0: 53 02 07 f6  	fmv.b.x	ft4, a4
800001f4: d3 82 07 f6  	fmv.b.x	ft5, a5
;         asm volatile(
800001f8: 53 73 10 44  	fcvt.h.d	ft6, ft0
800001fc: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000200: 53 25 23 a4  	feq.h	a0, ft6, ft2
80000204: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
80000208: 53 73 10 46  	fcvt.b.d	ft6, ft0
8000020c: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000210: 53 25 43 a6  	feq.b	a0, ft6, ft4
80000214: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 0);
80000218: 73 50 00 80  	csrwi	2048, 0
8000021c: 37 36 ff ff  	lui	a2, 1048563
80000220: 13 06 16 40  	addi	a2, a2, 1025
80000224: b7 b6 ff ff  	lui	a3, 1048571
80000228: 93 86 16 40  	addi	a3, a3, 1025
;         asm volatile(
8000022c: 53 01 06 f4  	fmv.h.x	ft2, a2
80000230: d3 81 06 f4  	fmv.h.x	ft3, a3

80000234 <.LBB0_9>:
80000234: 17 16 00 00  	auipc	a2, 1
80000238: 13 06 46 95  	addi	a2, a2, -1708
8000023c: 07 30 06 00  	fld	ft0, 0(a2)

80000240 <.LBB0_10>:
80000240: 17 16 00 00  	auipc	a2, 1
80000244: 13 06 06 95  	addi	a2, a2, -1712
80000248: 87 30 06 00  	fld	ft1, 0(a2)
8000024c: 13 06 40 f3  	addi	a2, zero, -204
80000250: 93 06 40 fb  	addi	a3, zero, -76
;         asm volatile(
80000254: 53 02 06 f6  	fmv.b.x	ft4, a2
80000258: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
8000025c: 53 73 10 44  	fcvt.h.d	ft6, ft0
80000260: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000264: 53 25 23 a4  	feq.h	a0, ft6, ft2
80000268: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
8000026c: 53 73 10 46  	fcvt.b.d	ft6, ft0
80000270: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000274: 53 25 43 a6  	feq.b	a0, ft6, ft4
80000278: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 3);
8000027c: 73 d0 01 80  	csrwi	2048, 3
80000280: 13 06 08 e8  	addi	a2, a6, -384
80000284: 93 86 08 e8  	addi	a3, a7, -384
;         asm volatile(
80000288: 53 01 06 f4  	fmv.h.x	ft2, a2
8000028c: d3 81 06 f4  	fmv.h.x	ft3, a3
80000290: 13 06 80 f2  	addi	a2, zero, -216
80000294: 93 06 80 fa  	addi	a3, zero, -88
;         asm volatile(
80000298: 53 02 06 f6  	fmv.b.x	ft4, a2
8000029c: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
800002a0: 53 73 10 44  	fcvt.h.d	ft6, ft0
800002a4: d3 f3 10 44  	fcvt.h.d	ft7, ft1
800002a8: 53 25 23 a4  	feq.h	a0, ft6, ft2
800002ac: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
800002b0: 53 73 10 46  	fcvt.b.d	ft6, ft0
800002b4: d3 f3 10 46  	fcvt.b.d	ft7, ft1
800002b8: 53 25 43 a6  	feq.b	a0, ft6, ft4
800002bc: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 0);
800002c0: 73 50 00 80  	csrwi	2048, 0
800002c4: 13 06 08 80  	addi	a2, a6, -2048
800002c8: 93 86 08 80  	addi	a3, a7, -2048
;         asm volatile(
800002cc: 53 01 06 f4  	fmv.h.x	ft2, a2
800002d0: d3 81 06 f4  	fmv.h.x	ft3, a3

800002d4 <.LBB0_11>:
800002d4: 17 16 00 00  	auipc	a2, 1
800002d8: 13 06 46 8c  	addi	a2, a2, -1852
800002dc: 07 30 06 00  	fld	ft0, 0(a2)

800002e0 <.LBB0_12>:
800002e0: 17 16 00 00  	auipc	a2, 1
800002e4: 13 06 06 8c  	addi	a2, a2, -1856
800002e8: 87 30 06 00  	fld	ft1, 0(a2)
800002ec: 13 06 80 f3  	addi	a2, zero, -200
800002f0: 93 06 80 fb  	addi	a3, zero, -72
;         asm volatile(
800002f4: 53 02 06 f6  	fmv.b.x	ft4, a2
800002f8: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
800002fc: 53 73 10 44  	fcvt.h.d	ft6, ft0
80000300: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000304: 53 25 23 a4  	feq.h	a0, ft6, ft2
80000308: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
8000030c: 53 73 10 46  	fcvt.b.d	ft6, ft0
80000310: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000314: 53 25 43 a6  	feq.b	a0, ft6, ft4
80000318: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 3);
8000031c: 73 d0 01 80  	csrwi	2048, 3
80000320: 13 06 08 f0  	addi	a2, a6, -256
80000324: 93 86 08 f0  	addi	a3, a7, -256
;         asm volatile(
80000328: 53 01 06 f4  	fmv.h.x	ft2, a2
8000032c: d3 81 06 f4  	fmv.h.x	ft3, a3
80000330: 13 06 00 f3  	addi	a2, zero, -208
80000334: 93 06 00 fb  	addi	a3, zero, -80
;         asm volatile(
80000338: 53 02 06 f6  	fmv.b.x	ft4, a2
8000033c: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
80000340: 53 73 10 44  	fcvt.h.d	ft6, ft0
80000344: d3 f3 10 44  	fcvt.h.d	ft7, ft1
80000348: 53 25 23 a4  	feq.h	a0, ft6, ft2
8000034c: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
80000350: 53 73 10 46  	fcvt.b.d	ft6, ft0
80000354: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000358: 53 25 43 a6  	feq.b	a0, ft6, ft4
8000035c: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 0);
80000360: 73 50 00 80  	csrwi	2048, 0
80000364: 37 56 ff ff  	lui	a2, 1048565
80000368: 13 06 26 64  	addi	a2, a2, 1602
8000036c: b7 d6 ff ff  	lui	a3, 1048573
80000370: 93 86 26 64  	addi	a3, a3, 1602
;         asm volatile(
80000374: 53 01 06 f4  	fmv.h.x	ft2, a2
80000378: d3 81 06 f4  	fmv.h.x	ft3, a3

8000037c <.LBB0_13>:
8000037c: 17 16 00 00  	auipc	a2, 1
80000380: 13 06 c6 82  	addi	a2, a2, -2004
80000384: 07 30 06 00  	fld	ft0, 0(a2)

80000388 <.LBB0_14>:
80000388: 17 16 00 00  	auipc	a2, 1
8000038c: 13 06 86 82  	addi	a2, a2, -2008
80000390: 87 30 06 00  	fld	ft1, 0(a2)
80000394: 13 06 60 f5  	addi	a2, zero, -170
80000398: 93 06 60 fd  	addi	a3, zero, -42
;         asm volatile(
8000039c: 53 02 06 f6  	fmv.b.x	ft4, a2
800003a0: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
800003a4: 53 73 10 44  	fcvt.h.d	ft6, ft0
800003a8: d3 f3 10 44  	fcvt.h.d	ft7, ft1
800003ac: 53 25 23 a4  	feq.h	a0, ft6, ft2
800003b0: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
800003b4: 53 73 10 46  	fcvt.b.d	ft6, ft0
800003b8: d3 f3 10 46  	fcvt.b.d	ft7, ft1
800003bc: 53 25 43 a6  	feq.b	a0, ft6, ft4
800003c0: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;         write_csr(2048, 3);
800003c4: 73 d0 01 80  	csrwi	2048, 3
800003c8: 13 06 88 2c  	addi	a2, a6, 712
800003cc: 93 86 88 2c  	addi	a3, a7, 712
;         asm volatile(
800003d0: 53 01 06 f4  	fmv.h.x	ft2, a2
800003d4: d3 81 06 f4  	fmv.h.x	ft3, a3
800003d8: 13 06 d0 f6  	addi	a2, zero, -147
800003dc: 93 06 d0 fe  	addi	a3, zero, -19
;         asm volatile(
800003e0: 53 02 06 f6  	fmv.b.x	ft4, a2
800003e4: d3 82 06 f6  	fmv.b.x	ft5, a3
;         asm volatile(
800003e8: 53 73 10 44  	fcvt.h.d	ft6, ft0
800003ec: d3 f3 10 44  	fcvt.h.d	ft7, ft1
800003f0: 53 25 23 a4  	feq.h	a0, ft6, ft2
800003f4: d3 a5 33 a4  	feq.h	a1, ft7, ft3
;         asm volatile(
800003f8: 53 73 10 46  	fcvt.b.d	ft6, ft0
800003fc: d3 f3 10 46  	fcvt.b.d	ft7, ft1
80000400: 53 25 43 a6  	feq.b	a0, ft6, ft4
80000404: d3 a5 53 a6  	feq.b	a1, ft7, ft5
;     return 0;
80000408: 13 05 00 00  	mv	a0, zero
8000040c: 67 80 00 00  	ret

80000410 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000410: 37 05 00 00  	lui	a0, 0
80000414: 33 05 45 00  	add	a0, a0, tp
80000418: 03 25 05 00  	lw	a0, 0(a0)
8000041c: 03 25 05 00  	lw	a0, 0(a0)
80000420: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000424: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000428: 33 85 a5 40  	sub	a0, a1, a0
8000042c: 67 80 00 00  	ret

80000430 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80000430: 37 05 00 00  	lui	a0, 0
80000434: 33 05 45 00  	add	a0, a0, tp
80000438: 03 25 05 00  	lw	a0, 0(a0)
8000043c: 03 25 05 00  	lw	a0, 0(a0)
80000440: 03 25 05 07  	lw	a0, 112(a0)
80000444: 67 80 00 00  	ret

80000448 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000448: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
8000044c: 63 44 05 00  	bltz	a0, 0x80000454 <__snrt_isr+0xc>
;         while (1)
80000450: 6f 00 00 00  	j	0x80000450 <__snrt_isr+0x8>
80000454: b7 05 00 80  	lui	a1, 524288
80000458: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
8000045c: 33 75 b5 00  	and	a0, a0, a1
80000460: 13 05 d5 ff  	addi	a0, a0, -3
80000464: 93 55 25 00  	srli	a1, a0, 2
80000468: 13 15 e5 01  	slli	a0, a0, 30
8000046c: 33 65 b5 00  	or	a0, a0, a1
80000470: 93 05 40 00  	addi	a1, zero, 4
80000474: 63 0a b5 06  	beq	a0, a1, 0x800004e8 <.LBB1_7+0x58>
80000478: 63 1a 05 08  	bnez	a0, 0x8000050c <.LBB1_7+0x7c>
8000047c: 37 05 00 00  	lui	a0, 0
80000480: 33 05 45 00  	add	a0, a0, tp
80000484: 03 25 05 00  	lw	a0, 0(a0)
80000488: 03 25 05 00  	lw	a0, 0(a0)
8000048c: f3 25 40 f1  	csrr	a1, mhartid

80000490 <.LBB1_7>:
;     asm volatile(
80000490: 17 06 00 00  	auipc	a2, 0
80000494: 13 06 86 72  	addi	a2, a2, 1832
80000498: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
8000049c: 93 06 06 00  	mv	a3, a2
800004a0: 93 02 10 00  	addi	t0, zero, 1
800004a4: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800004a8: e3 9e 02 fe  	bnez	t0, 0x800004a4 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800004ac: b7 06 00 00  	lui	a3, 0
800004b0: b3 86 46 00  	add	a3, a3, tp
800004b4: 83 a6 86 00  	lw	a3, 8(a3)
800004b8: 33 85 a5 40  	sub	a0, a1, a0
800004bc: 93 55 35 00  	srli	a1, a0, 3
800004c0: 93 f5 c5 ff  	andi	a1, a1, -4
800004c4: b3 85 b6 00  	add	a1, a3, a1
800004c8: 83 a6 05 00  	lw	a3, 0(a1)
800004cc: 13 07 10 00  	addi	a4, zero, 1
800004d0: 33 15 a7 00  	sll	a0, a4, a0
800004d4: 13 45 f5 ff  	not	a0, a0
800004d8: 33 f5 a6 00  	and	a0, a3, a0
800004dc: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800004e0: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800004e4: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800004e8: 37 05 00 00  	lui	a0, 0
800004ec: 33 05 45 00  	add	a0, a0, tp
800004f0: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800004f4: b7 05 00 00  	lui	a1, 0
800004f8: b3 85 45 00  	add	a1, a1, tp
800004fc: 83 a5 c5 00  	lw	a1, 12(a1)
80000500: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000504: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000508: 23 a4 a5 00  	sw	a0, 8(a1)
; }
8000050c: 67 80 00 00  	ret

80000510 <_snrt_init_team>:
;     team->base.root = team;
80000510: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000514: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000518: 03 23 87 00  	lw	t1, 8(a4)
8000051c: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000520: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80000524: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000528: 83 22 47 00  	lw	t0, 4(a4)
8000052c: 33 88 08 03  	mul	a6, a7, a6
80000530: 33 05 58 02  	mul	a0, a6, t0
80000534: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000538: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
8000053c: 33 85 68 40  	sub	a0, a7, t1
80000540: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80000544: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000548: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
8000054c: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80000550: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80000554: 03 25 87 01  	lw	a0, 24(a4)
80000558: b7 05 00 10  	lui	a1, 65536
8000055c: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000560: 23 a2 07 02  	sw	zero, 36(a5)
80000564: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80000568: 03 25 07 02  	lw	a0, 32(a4)
8000056c: 83 25 47 02  	lw	a1, 36(a4)
80000570: 23 a4 a7 02  	sw	a0, 40(a5)
80000574: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80000578: 23 a8 c7 02  	sw	a2, 48(a5)
8000057c: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000580: 23 ac d7 02  	sw	a3, 56(a5)
80000584: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000588: 03 25 07 01  	lw	a0, 16(a4)
8000058c: 33 08 a6 00  	add	a6, a2, a0
80000590: 93 05 08 19  	addi	a1, a6, 400
80000594: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000598: b3 32 a8 00  	sltu	t0, a6, a0
8000059c: 93 55 15 00  	srli	a1, a0, 1
800005a0: 33 03 b8 00  	add	t1, a6, a1
800005a4: b3 35 03 01  	sltu	a1, t1, a6
800005a8: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800005ac: 23 a0 67 04  	sw	t1, 64(a5)
800005b0: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800005b4: 13 15 15 00  	slli	a0, a0, 1
800005b8: b3 05 c5 00  	add	a1, a0, a2
800005bc: 33 b5 a5 00  	sltu	a0, a1, a0
800005c0: 23 a4 b7 04  	sw	a1, 72(a5)
800005c4: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800005c8: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800005cc: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800005d0: 37 05 00 00  	lui	a0, 0
800005d4: 33 05 45 00  	add	a0, a0, tp
800005d8: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800005dc: 03 a5 07 00  	lw	a0, 0(a5)
800005e0: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800005e4: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800005e8: b3 85 b8 40  	sub	a1, a7, a1
800005ec: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800005f0: b7 05 00 00  	lui	a1, 0
800005f4: b3 85 45 00  	add	a1, a1, tp
800005f8: 23 a2 a5 00  	sw	a0, 4(a1)
800005fc: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000600: 33 85 a8 02  	mul	a0, a7, a0

80000604 <.LBB0_1>:
80000604: 97 05 00 00  	auipc	a1, 0
80000608: 93 85 85 5b  	addi	a1, a1, 1464
8000060c: 33 05 b5 00  	add	a0, a0, a1
80000610: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000614: 83 28 07 03  	lw	a7, 48(a4)
80000618: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
8000061c: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80000620: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80000624: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000628: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
8000062c: 13 05 76 00  	addi	a0, a2, 7
80000630: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80000634: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000638: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
8000063c: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80000640: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80000644: 03 a5 05 00  	lw	a0, 0(a1)
80000648: 13 05 f5 44  	addi	a0, a0, 1103
8000064c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80000650: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80000654: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80000658: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
8000065c: 37 05 00 00  	lui	a0, 0
80000660: 33 05 45 00  	add	a0, a0, tp
80000664: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80000668: 37 05 00 00  	lui	a0, 0
8000066c: 33 05 45 00  	add	a0, a0, tp
80000670: 23 26 e5 00  	sw	a4, 12(a0)
; }
80000674: 67 80 00 00  	ret

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
800006b8: 93 82 42 50  	addi	t0, t0, 1284

800006bc <.Lpcrel_hi1>:
;     la        t1, _end
800006bc: 17 03 00 00  	auipc	t1, 0
800006c0: 13 03 03 50  	addi	t1, t1, 1280
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
80000838: e7 80 c0 cd  	jalr	-804(ra)
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
8000096c: e7 80 00 ae  	jalr	-1312(ra)
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
80000a8c: e7 80 80 9a  	jalr	-1624(ra)
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
80000abc: e7 80 80 95  	jalr	-1704(ra)
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
