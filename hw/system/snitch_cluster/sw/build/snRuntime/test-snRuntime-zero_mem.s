
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-zero_mem:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000008f4 80000000 TEXT
  2 .init             00000468 80000900 TEXT
  3 .rodata           00000008 80000d68 DATA
  4 .htif             00000048 80000d80 DATA
  5 .tdata            00000000 80000dc8 DATA
  6 .tbss             00000010 80000dc8 BSS
  7 .tbssend          00000000 80000dd8 DATA
  8 .sdata            00000000 80000dd8 DATA
  9 .data             00000000 80000dd8 DATA
 10 .sbss             00000004 80000dd8 BSS
 11 .bss              00000000 80000ddc BSS
 12 .dram             00000000 80000ddc DATA
 13 .debug_info       0000231e 00000000 
 14 .debug_abbrev     00000778 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       0000183c 00000000 
 17 .debug_loc        00000833 00000000 
 18 .debug_ranges     00000120 00000000 
 19 .debug_str        0000091b 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      0000019c 00000000 
 23 .symtab           00000fa0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000442 00000000 


Disassembly of section .text:

80000000 <main>:
; int main() {
80000000: 13 01 01 fe  	addi	sp, sp, -32
80000004: 23 2e 11 00  	sw	ra, 28(sp)
80000008: 23 2c 81 00  	sw	s0, 24(sp)
8000000c: 23 2a 91 00  	sw	s1, 20(sp)
80000010: 23 28 21 01  	sw	s2, 16(sp)
80000014: 23 26 31 01  	sw	s3, 12(sp)
; snrt_slice_t snrt_zero_memory() { return _snrt_team_current->root->zero_mem; }
80000018: 37 05 00 00  	lui	a0, 0
8000001c: b3 09 45 00  	add	s3, a0, tp
80000020: 03 a5 09 00  	lw	a0, 0(s3)
80000024: 03 25 05 00  	lw	a0, 0(a0)
80000028: 03 29 05 04  	lw	s2, 64(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000002c: b7 05 00 00  	lui	a1, 0
80000030: b3 84 45 00  	add	s1, a1, tp
80000034: 83 a5 44 00  	lw	a1, 4(s1)
;     return _snrt_team_current->root->cluster_mem;
80000038: 03 24 05 03  	lw	s0, 48(a0)
;     if (snrt_cluster_compute_core_idx() == 0) {
8000003c: 63 9a 05 02  	bnez	a1, 0x80000070 <main+0x70>
80000040: 13 05 10 00  	addi	a0, zero, 1
;             *(buffer_tcdm + i) = 1 + i;
80000044: 23 20 a4 00  	sw	a0, 0(s0)
;             *(buffer_golden + i) = 1 + i;
80000048: 23 20 a4 08  	sw	a0, 128(s0)
8000004c: 13 05 20 00  	addi	a0, zero, 2
;             *(buffer_tcdm + i) = 1 + i;
80000050: 23 22 a4 00  	sw	a0, 4(s0)
;             *(buffer_golden + i) = 1 + i;
80000054: 23 22 a4 08  	sw	a0, 132(s0)
80000058: 13 05 30 00  	addi	a0, zero, 3
;             *(buffer_tcdm + i) = 1 + i;
8000005c: 23 24 a4 00  	sw	a0, 8(s0)
;             *(buffer_golden + i) = 1 + i;
80000060: 23 24 a4 08  	sw	a0, 136(s0)
80000064: 13 05 40 00  	addi	a0, zero, 4
;             *(buffer_tcdm + i) = 1 + i;
80000068: 23 26 a4 00  	sw	a0, 12(s0)
;             *(buffer_golden + i) = 1 + i;
8000006c: 23 26 a4 08  	sw	a0, 140(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000070: 97 10 00 00  	auipc	ra, 1
80000074: e7 80 00 c9  	jalr	-880(ra)
;     return _snrt_team_current->root->cluster_core_num;
80000078: 03 a5 09 00  	lw	a0, 0(s3)
8000007c: 03 25 05 00  	lw	a0, 0(a0)
80000080: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000084: 83 a5 44 00  	lw	a1, 4(s1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000088: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_dm_core()) {
8000008c: 63 e2 a5 02  	bltu	a1, a0, 0x800000b0 <main+0xb0>
;             *(buffer_tcdm + i) = *(zero_mem + i);
80000090: 03 25 09 00  	lw	a0, 0(s2)
80000094: 23 20 a4 00  	sw	a0, 0(s0)
80000098: 03 25 49 00  	lw	a0, 4(s2)
8000009c: 23 22 a4 00  	sw	a0, 4(s0)
800000a0: 03 25 89 00  	lw	a0, 8(s2)
800000a4: 23 24 a4 00  	sw	a0, 8(s0)
800000a8: 03 25 c9 00  	lw	a0, 12(s2)
800000ac: 23 26 a4 00  	sw	a0, 12(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800000b0: 97 10 00 00  	auipc	ra, 1
800000b4: e7 80 00 c5  	jalr	-944(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800000b8: 37 05 00 00  	lui	a0, 0
800000bc: b3 04 45 00  	add	s1, a0, tp
800000c0: 03 a5 44 00  	lw	a0, 4(s1)
;     int errors = 0;
800000c4: 93 09 00 00  	mv	s3, zero
;     if (snrt_cluster_compute_core_idx() == 0) {
800000c8: 63 18 05 02  	bnez	a0, 0x800000f8 <main+0xf8>
;             errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
800000cc: 03 25 04 00  	lw	a0, 0(s0)
800000d0: 83 25 44 00  	lw	a1, 4(s0)
800000d4: 33 35 a0 00  	snez	a0, a0
800000d8: 03 26 84 00  	lw	a2, 8(s0)
800000dc: b3 35 b0 00  	snez	a1, a1
800000e0: 83 26 c4 00  	lw	a3, 12(s0)
800000e4: 33 85 a5 00  	add	a0, a1, a0
800000e8: b3 35 c0 00  	snez	a1, a2
800000ec: 33 05 b5 00  	add	a0, a0, a1
800000f0: b3 35 d0 00  	snez	a1, a3
800000f4: b3 09 b5 00  	add	s3, a0, a1
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800000f8: 97 10 00 00  	auipc	ra, 1
800000fc: e7 80 80 c0  	jalr	-1016(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000100: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
80000104: 63 1a 05 02  	bnez	a0, 0x80000138 <main+0x138>
80000108: 13 05 10 00  	addi	a0, zero, 1
;             *(buffer_tcdm + i) = 1 + i;
8000010c: 23 20 a4 00  	sw	a0, 0(s0)
;             *(buffer_golden + i) = 1 + i;
80000110: 23 20 a4 08  	sw	a0, 128(s0)
80000114: 13 05 20 00  	addi	a0, zero, 2
;             *(buffer_tcdm + i) = 1 + i;
80000118: 23 22 a4 00  	sw	a0, 4(s0)
;             *(buffer_golden + i) = 1 + i;
8000011c: 23 22 a4 08  	sw	a0, 132(s0)
80000120: 13 05 30 00  	addi	a0, zero, 3
;             *(buffer_tcdm + i) = 1 + i;
80000124: 23 24 a4 00  	sw	a0, 8(s0)
;             *(buffer_golden + i) = 1 + i;
80000128: 23 24 a4 08  	sw	a0, 136(s0)
8000012c: 13 05 40 00  	addi	a0, zero, 4
;             *(buffer_tcdm + i) = 1 + i;
80000130: 23 26 a4 00  	sw	a0, 12(s0)
;             *(buffer_golden + i) = 1 + i;
80000134: 23 26 a4 08  	sw	a0, 140(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000138: 97 10 00 00  	auipc	ra, 1
8000013c: e7 80 80 bc  	jalr	-1080(ra)
;     return _snrt_team_current->root->cluster_core_num;
80000140: 37 05 00 00  	lui	a0, 0
80000144: 33 05 45 00  	add	a0, a0, tp
80000148: 03 25 05 00  	lw	a0, 0(a0)
8000014c: 03 25 05 00  	lw	a0, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000150: b7 05 00 00  	lui	a1, 0
80000154: b3 84 45 00  	add	s1, a1, tp
;     return _snrt_team_current->root->cluster_core_num;
80000158: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
8000015c: 83 a5 44 00  	lw	a1, 4(s1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000160: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_dm_core()) {
80000164: 63 e6 a5 02  	bltu	a1, a0, 0x80000190 <main+0x190>
;     asm volatile(
80000168: 93 06 00 00  	mv	a3, zero
8000016c: 13 06 04 00  	mv	a2, s0
80000170: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
80000174: 93 05 00 00  	mv	a1, zero
80000178: 13 05 09 00  	mv	a0, s2
8000017c: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
80000180: 13 07 00 01  	addi	a4, zero, 16
80000184: 2b 05 07 04  	dmcpyi	a0, a4, 0
;     asm volatile(
80000188: ab 02 20 08  	dmstati	t0, 2
8000018c: e3 9e 02 fe  	bnez	t0, 0x80000188 <main+0x188>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000190: 97 10 00 00  	auipc	ra, 1
80000194: e7 80 00 b7  	jalr	-1168(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000198: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
8000019c: 63 1a 05 04  	bnez	a0, 0x800001f0 <main+0x1f0>
;             errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800001a0: 03 25 04 00  	lw	a0, 0(s0)
;                             (uint32_t) * (buffer_golden + i));
800001a4: 83 25 04 08  	lw	a1, 128(s0)
;             errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800001a8: 03 26 44 00  	lw	a2, 4(s0)
;                             (uint32_t) * (buffer_golden + i));
800001ac: 83 26 44 08  	lw	a3, 132(s0)
;             errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800001b0: 33 45 b5 00  	xor	a0, a0, a1
800001b4: 33 35 a0 00  	snez	a0, a0
800001b8: 33 85 a9 00  	add	a0, s3, a0
800001bc: b3 45 d6 00  	xor	a1, a2, a3
800001c0: b3 35 b0 00  	snez	a1, a1
800001c4: 03 26 84 00  	lw	a2, 8(s0)
;                             (uint32_t) * (buffer_golden + i));
800001c8: 83 26 84 08  	lw	a3, 136(s0)
;             errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800001cc: 33 05 b5 00  	add	a0, a0, a1
800001d0: 83 25 c4 00  	lw	a1, 12(s0)
;                             (uint32_t) * (buffer_golden + i));
800001d4: 03 27 c4 08  	lw	a4, 140(s0)
;             errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800001d8: 33 46 d6 00  	xor	a2, a2, a3
800001dc: 33 36 c0 00  	snez	a2, a2
800001e0: 33 05 c5 00  	add	a0, a0, a2
800001e4: b3 c5 e5 00  	xor	a1, a1, a4
800001e8: b3 35 b0 00  	snez	a1, a1
800001ec: b3 09 b5 00  	add	s3, a0, a1
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800001f0: 97 10 00 00  	auipc	ra, 1
800001f4: e7 80 00 b1  	jalr	-1264(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800001f8: 37 05 00 00  	lui	a0, 0
800001fc: b3 04 45 00  	add	s1, a0, tp
80000200: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
80000204: 63 1a 05 02  	bnez	a0, 0x80000238 <main+0x238>
80000208: 13 05 10 00  	addi	a0, zero, 1
;             *(buffer_tcdm + i) = 1 + i;
8000020c: 23 20 a4 00  	sw	a0, 0(s0)
;             *(buffer_golden + i) = 1 + i;
80000210: 23 20 a4 08  	sw	a0, 128(s0)
80000214: 13 05 20 00  	addi	a0, zero, 2
;             *(buffer_tcdm + i) = 1 + i;
80000218: 23 22 a4 00  	sw	a0, 4(s0)
;             *(buffer_golden + i) = 1 + i;
8000021c: 23 22 a4 08  	sw	a0, 132(s0)
80000220: 13 05 30 00  	addi	a0, zero, 3
;             *(buffer_tcdm + i) = 1 + i;
80000224: 23 24 a4 00  	sw	a0, 8(s0)
;             *(buffer_golden + i) = 1 + i;
80000228: 23 24 a4 08  	sw	a0, 136(s0)
8000022c: 13 05 40 00  	addi	a0, zero, 4
;             *(buffer_tcdm + i) = 1 + i;
80000230: 23 26 a4 00  	sw	a0, 12(s0)
;             *(buffer_golden + i) = 1 + i;
80000234: 23 26 a4 08  	sw	a0, 140(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000238: 97 10 00 00  	auipc	ra, 1
8000023c: e7 80 80 ac  	jalr	-1336(ra)
;     return _snrt_team_current->root->cluster_core_num;
80000240: 37 05 00 00  	lui	a0, 0
80000244: 33 05 45 00  	add	a0, a0, tp
80000248: 03 25 05 00  	lw	a0, 0(a0)
8000024c: 03 25 05 00  	lw	a0, 0(a0)
80000250: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000254: 83 a5 44 00  	lw	a1, 4(s1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000258: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_dm_core()) {
8000025c: 63 e6 a5 02  	bltu	a1, a0, 0x80000288 <main+0x288>
;     asm volatile(
80000260: 93 06 00 00  	mv	a3, zero
80000264: 13 06 09 00  	mv	a2, s2
80000268: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
8000026c: 93 05 00 00  	mv	a1, zero
80000270: 13 05 04 00  	mv	a0, s0
80000274: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
80000278: 13 07 00 01  	addi	a4, zero, 16
8000027c: 2b 05 07 04  	dmcpyi	a0, a4, 0
;     asm volatile(
80000280: ab 02 20 08  	dmstati	t0, 2
80000284: e3 9e 02 fe  	bnez	t0, 0x80000280 <main+0x280>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000288: 97 10 00 00  	auipc	ra, 1
8000028c: e7 80 80 a7  	jalr	-1416(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000290: 37 05 00 00  	lui	a0, 0
80000294: b3 04 45 00  	add	s1, a0, tp
80000298: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
8000029c: 63 1a 05 02  	bnez	a0, 0x800002d0 <main+0x2d0>
;             errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
800002a0: 03 25 04 00  	lw	a0, 0(s0)
800002a4: 83 25 44 00  	lw	a1, 4(s0)
800002a8: 33 35 a0 00  	snez	a0, a0
800002ac: 33 85 a9 00  	add	a0, s3, a0
800002b0: 03 26 84 00  	lw	a2, 8(s0)
800002b4: b3 35 b0 00  	snez	a1, a1
800002b8: 83 26 c4 00  	lw	a3, 12(s0)
800002bc: 33 05 b5 00  	add	a0, a0, a1
800002c0: b3 35 c0 00  	snez	a1, a2
800002c4: 33 05 b5 00  	add	a0, a0, a1
800002c8: b3 35 d0 00  	snez	a1, a3
800002cc: b3 09 b5 00  	add	s3, a0, a1
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800002d0: 97 10 00 00  	auipc	ra, 1
800002d4: e7 80 00 a3  	jalr	-1488(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800002d8: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
800002dc: 63 1a 05 0e  	bnez	a0, 0x800003d0 <main+0x3d0>
800002e0: 13 05 10 00  	addi	a0, zero, 1
;             *(buffer_tcdm + i) = 1 + i;
800002e4: 23 20 a4 00  	sw	a0, 0(s0)
;             *(buffer_golden + i) = 1 + i;
800002e8: 23 20 a4 08  	sw	a0, 128(s0)
800002ec: 13 05 20 00  	addi	a0, zero, 2
;             *(buffer_tcdm + i) = 1 + i;
800002f0: 23 22 a4 00  	sw	a0, 4(s0)
;             *(buffer_golden + i) = 1 + i;
800002f4: 23 22 a4 08  	sw	a0, 132(s0)
800002f8: 13 05 30 00  	addi	a0, zero, 3
;             *(buffer_tcdm + i) = 1 + i;
800002fc: 23 24 a4 00  	sw	a0, 8(s0)
;             *(buffer_golden + i) = 1 + i;
80000300: 23 24 a4 08  	sw	a0, 136(s0)
80000304: 13 05 40 00  	addi	a0, zero, 4
;             *(buffer_tcdm + i) = 1 + i;
80000308: 23 26 a4 00  	sw	a0, 12(s0)
;             *(buffer_golden + i) = 1 + i;
8000030c: 23 26 a4 08  	sw	a0, 140(s0)
80000310: 13 05 50 00  	addi	a0, zero, 5
;             *(buffer_tcdm + i) = 1 + i;
80000314: 23 28 a4 00  	sw	a0, 16(s0)
;             *(buffer_golden + i) = 1 + i;
80000318: 23 28 a4 08  	sw	a0, 144(s0)
8000031c: 13 05 60 00  	addi	a0, zero, 6
;             *(buffer_tcdm + i) = 1 + i;
80000320: 23 2a a4 00  	sw	a0, 20(s0)
;             *(buffer_golden + i) = 1 + i;
80000324: 23 2a a4 08  	sw	a0, 148(s0)
80000328: 13 05 70 00  	addi	a0, zero, 7
;             *(buffer_tcdm + i) = 1 + i;
8000032c: 23 2c a4 00  	sw	a0, 24(s0)
;             *(buffer_golden + i) = 1 + i;
80000330: 23 2c a4 08  	sw	a0, 152(s0)
80000334: 13 05 80 00  	addi	a0, zero, 8
;             *(buffer_tcdm + i) = 1 + i;
80000338: 23 2e a4 00  	sw	a0, 28(s0)
;             *(buffer_golden + i) = 1 + i;
8000033c: 23 2e a4 08  	sw	a0, 156(s0)
80000340: 13 05 90 00  	addi	a0, zero, 9
;             *(buffer_tcdm + i) = 1 + i;
80000344: 23 20 a4 02  	sw	a0, 32(s0)
;             *(buffer_golden + i) = 1 + i;
80000348: 23 20 a4 0a  	sw	a0, 160(s0)
8000034c: 13 05 a0 00  	addi	a0, zero, 10
;             *(buffer_tcdm + i) = 1 + i;
80000350: 23 22 a4 02  	sw	a0, 36(s0)
;             *(buffer_golden + i) = 1 + i;
80000354: 23 22 a4 0a  	sw	a0, 164(s0)
80000358: 13 05 b0 00  	addi	a0, zero, 11
;             *(buffer_tcdm + i) = 1 + i;
8000035c: 23 24 a4 02  	sw	a0, 40(s0)
;             *(buffer_golden + i) = 1 + i;
80000360: 23 24 a4 0a  	sw	a0, 168(s0)
80000364: 13 05 c0 00  	addi	a0, zero, 12
;             *(buffer_tcdm + i) = 1 + i;
80000368: 23 26 a4 02  	sw	a0, 44(s0)
;             *(buffer_golden + i) = 1 + i;
8000036c: 23 26 a4 0a  	sw	a0, 172(s0)
80000370: 13 05 d0 00  	addi	a0, zero, 13
;             *(buffer_tcdm + i) = 1 + i;
80000374: 23 28 a4 02  	sw	a0, 48(s0)
;             *(buffer_golden + i) = 1 + i;
80000378: 23 28 a4 0a  	sw	a0, 176(s0)
8000037c: 13 05 e0 00  	addi	a0, zero, 14
;             *(buffer_tcdm + i) = 1 + i;
80000380: 23 2a a4 02  	sw	a0, 52(s0)
;             *(buffer_golden + i) = 1 + i;
80000384: 23 2a a4 0a  	sw	a0, 180(s0)
80000388: 13 05 f0 00  	addi	a0, zero, 15
;             *(buffer_tcdm + i) = 1 + i;
8000038c: 23 2c a4 02  	sw	a0, 56(s0)
;             *(buffer_golden + i) = 1 + i;
80000390: 23 2c a4 0a  	sw	a0, 184(s0)
80000394: 13 05 00 01  	addi	a0, zero, 16
;             *(buffer_tcdm + i) = 1 + i;
80000398: 23 2e a4 02  	sw	a0, 60(s0)
;             *(buffer_golden + i) = 1 + i;
8000039c: 23 2e a4 0a  	sw	a0, 188(s0)
800003a0: 13 05 10 01  	addi	a0, zero, 17
;             *(buffer_tcdm + i) = 1 + i;
800003a4: 23 20 a4 04  	sw	a0, 64(s0)
;             *(buffer_golden + i) = 1 + i;
800003a8: 23 20 a4 0c  	sw	a0, 192(s0)
800003ac: 13 05 20 01  	addi	a0, zero, 18
;             *(buffer_tcdm + i) = 1 + i;
800003b0: 23 22 a4 04  	sw	a0, 68(s0)
;             *(buffer_golden + i) = 1 + i;
800003b4: 23 22 a4 0c  	sw	a0, 196(s0)
800003b8: 13 05 30 01  	addi	a0, zero, 19
;             *(buffer_tcdm + i) = 1 + i;
800003bc: 23 24 a4 04  	sw	a0, 72(s0)
;             *(buffer_golden + i) = 1 + i;
800003c0: 23 24 a4 0c  	sw	a0, 200(s0)
800003c4: 13 05 40 01  	addi	a0, zero, 20
;             *(buffer_tcdm + i) = 1 + i;
800003c8: 23 26 a4 04  	sw	a0, 76(s0)
;             *(buffer_golden + i) = 1 + i;
800003cc: 23 26 a4 0c  	sw	a0, 204(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800003d0: 97 10 00 00  	auipc	ra, 1
800003d4: e7 80 00 93  	jalr	-1744(ra)
;     return _snrt_team_current->root->cluster_core_num;
800003d8: 37 05 00 00  	lui	a0, 0
800003dc: 33 05 45 00  	add	a0, a0, tp
800003e0: 03 25 05 00  	lw	a0, 0(a0)
800003e4: 03 25 05 00  	lw	a0, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800003e8: b7 05 00 00  	lui	a1, 0
800003ec: b3 84 45 00  	add	s1, a1, tp
;     return _snrt_team_current->root->cluster_core_num;
800003f0: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800003f4: 83 a5 44 00  	lw	a1, 4(s1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
800003f8: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_dm_core()) {
800003fc: 63 e0 a5 04  	bltu	a1, a0, 0x8000043c <main+0x43c>
;     asm volatile(
80000400: 93 06 00 00  	mv	a3, zero
80000404: 13 06 04 00  	mv	a2, s0
80000408: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
8000040c: 93 05 00 00  	mv	a1, zero
80000410: 13 05 09 00  	mv	a0, s2
80000414: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
80000418: 13 08 80 00  	addi	a6, zero, 8
8000041c: 93 07 00 00  	mv	a5, zero
80000420: 2b 00 f8 0c  	dmstr	a6, a5
;     asm volatile(
80000424: 93 08 40 00  	addi	a7, zero, 4
80000428: 2b 80 08 0e  	dmrep	a7
;     asm volatile(
8000042c: 13 07 40 00  	addi	a4, zero, 4
80000430: 2b 05 27 04  	dmcpyi	a0, a4, 2
;     asm volatile(
80000434: ab 02 20 08  	dmstati	t0, 2
80000438: e3 9e 02 fe  	bnez	t0, 0x80000434 <main+0x434>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000043c: 97 10 00 00  	auipc	ra, 1
80000440: e7 80 40 8c  	jalr	-1852(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000444: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
80000448: 63 1c 05 00  	bnez	a0, 0x80000460 <main+0x460>
8000044c: 03 25 04 00  	lw	a0, 0(s0)
80000450: 83 25 04 08  	lw	a1, 128(s0)
80000454: 33 45 b5 00  	xor	a0, a0, a1
80000458: 33 35 a0 00  	snez	a0, a0
;             errors += (int)((uint32_t) * (buffer_tcdm + i) !=
8000045c: b3 89 a9 00  	add	s3, s3, a0
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000460: 97 10 00 00  	auipc	ra, 1
80000464: e7 80 00 8a  	jalr	-1888(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000468: 37 05 00 00  	lui	a0, 0
8000046c: b3 04 45 00  	add	s1, a0, tp
80000470: 03 a5 44 00  	lw	a0, 4(s1)
;     if (snrt_cluster_compute_core_idx() == 0) {
80000474: 63 1a 05 0e  	bnez	a0, 0x80000568 <main+0x568>
80000478: 13 05 10 00  	addi	a0, zero, 1
;             *(buffer_tcdm + i) = 1 + i;
8000047c: 23 20 a4 00  	sw	a0, 0(s0)
;             *(buffer_golden + i) = 1 + i;
80000480: 23 20 a4 08  	sw	a0, 128(s0)
80000484: 13 05 20 00  	addi	a0, zero, 2
;             *(buffer_tcdm + i) = 1 + i;
80000488: 23 22 a4 00  	sw	a0, 4(s0)
;             *(buffer_golden + i) = 1 + i;
8000048c: 23 22 a4 08  	sw	a0, 132(s0)
80000490: 13 05 30 00  	addi	a0, zero, 3
;             *(buffer_tcdm + i) = 1 + i;
80000494: 23 24 a4 00  	sw	a0, 8(s0)
;             *(buffer_golden + i) = 1 + i;
80000498: 23 24 a4 08  	sw	a0, 136(s0)
8000049c: 13 05 40 00  	addi	a0, zero, 4
;             *(buffer_tcdm + i) = 1 + i;
800004a0: 23 26 a4 00  	sw	a0, 12(s0)
;             *(buffer_golden + i) = 1 + i;
800004a4: 23 26 a4 08  	sw	a0, 140(s0)
800004a8: 13 05 50 00  	addi	a0, zero, 5
;             *(buffer_tcdm + i) = 1 + i;
800004ac: 23 28 a4 00  	sw	a0, 16(s0)
;             *(buffer_golden + i) = 1 + i;
800004b0: 23 28 a4 08  	sw	a0, 144(s0)
800004b4: 13 05 60 00  	addi	a0, zero, 6
;             *(buffer_tcdm + i) = 1 + i;
800004b8: 23 2a a4 00  	sw	a0, 20(s0)
;             *(buffer_golden + i) = 1 + i;
800004bc: 23 2a a4 08  	sw	a0, 148(s0)
800004c0: 13 05 70 00  	addi	a0, zero, 7
;             *(buffer_tcdm + i) = 1 + i;
800004c4: 23 2c a4 00  	sw	a0, 24(s0)
;             *(buffer_golden + i) = 1 + i;
800004c8: 23 2c a4 08  	sw	a0, 152(s0)
800004cc: 13 05 80 00  	addi	a0, zero, 8
;             *(buffer_tcdm + i) = 1 + i;
800004d0: 23 2e a4 00  	sw	a0, 28(s0)
;             *(buffer_golden + i) = 1 + i;
800004d4: 23 2e a4 08  	sw	a0, 156(s0)
800004d8: 13 05 90 00  	addi	a0, zero, 9
;             *(buffer_tcdm + i) = 1 + i;
800004dc: 23 20 a4 02  	sw	a0, 32(s0)
;             *(buffer_golden + i) = 1 + i;
800004e0: 23 20 a4 0a  	sw	a0, 160(s0)
800004e4: 13 05 a0 00  	addi	a0, zero, 10
;             *(buffer_tcdm + i) = 1 + i;
800004e8: 23 22 a4 02  	sw	a0, 36(s0)
;             *(buffer_golden + i) = 1 + i;
800004ec: 23 22 a4 0a  	sw	a0, 164(s0)
800004f0: 13 05 b0 00  	addi	a0, zero, 11
;             *(buffer_tcdm + i) = 1 + i;
800004f4: 23 24 a4 02  	sw	a0, 40(s0)
;             *(buffer_golden + i) = 1 + i;
800004f8: 23 24 a4 0a  	sw	a0, 168(s0)
800004fc: 13 05 c0 00  	addi	a0, zero, 12
;             *(buffer_tcdm + i) = 1 + i;
80000500: 23 26 a4 02  	sw	a0, 44(s0)
;             *(buffer_golden + i) = 1 + i;
80000504: 23 26 a4 0a  	sw	a0, 172(s0)
80000508: 13 05 d0 00  	addi	a0, zero, 13
;             *(buffer_tcdm + i) = 1 + i;
8000050c: 23 28 a4 02  	sw	a0, 48(s0)
;             *(buffer_golden + i) = 1 + i;
80000510: 23 28 a4 0a  	sw	a0, 176(s0)
80000514: 13 05 e0 00  	addi	a0, zero, 14
;             *(buffer_tcdm + i) = 1 + i;
80000518: 23 2a a4 02  	sw	a0, 52(s0)
;             *(buffer_golden + i) = 1 + i;
8000051c: 23 2a a4 0a  	sw	a0, 180(s0)
80000520: 13 05 f0 00  	addi	a0, zero, 15
;             *(buffer_tcdm + i) = 1 + i;
80000524: 23 2c a4 02  	sw	a0, 56(s0)
;             *(buffer_golden + i) = 1 + i;
80000528: 23 2c a4 0a  	sw	a0, 184(s0)
8000052c: 13 05 00 01  	addi	a0, zero, 16
;             *(buffer_tcdm + i) = 1 + i;
80000530: 23 2e a4 02  	sw	a0, 60(s0)
;             *(buffer_golden + i) = 1 + i;
80000534: 23 2e a4 0a  	sw	a0, 188(s0)
80000538: 13 05 10 01  	addi	a0, zero, 17
;             *(buffer_tcdm + i) = 1 + i;
8000053c: 23 20 a4 04  	sw	a0, 64(s0)
;             *(buffer_golden + i) = 1 + i;
80000540: 23 20 a4 0c  	sw	a0, 192(s0)
80000544: 13 05 20 01  	addi	a0, zero, 18
;             *(buffer_tcdm + i) = 1 + i;
80000548: 23 22 a4 04  	sw	a0, 68(s0)
;             *(buffer_golden + i) = 1 + i;
8000054c: 23 22 a4 0c  	sw	a0, 196(s0)
80000550: 13 05 30 01  	addi	a0, zero, 19
;             *(buffer_tcdm + i) = 1 + i;
80000554: 23 24 a4 04  	sw	a0, 72(s0)
;             *(buffer_golden + i) = 1 + i;
80000558: 23 24 a4 0c  	sw	a0, 200(s0)
8000055c: 13 05 40 01  	addi	a0, zero, 20
;             *(buffer_tcdm + i) = 1 + i;
80000560: 23 26 a4 04  	sw	a0, 76(s0)
;             *(buffer_golden + i) = 1 + i;
80000564: 23 26 a4 0c  	sw	a0, 204(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000568: 97 00 00 00  	auipc	ra, 0
8000056c: e7 80 80 79  	jalr	1944(ra)
;     return _snrt_team_current->root->cluster_core_num;
80000570: 37 05 00 00  	lui	a0, 0
80000574: 33 05 45 00  	add	a0, a0, tp
80000578: 03 25 05 00  	lw	a0, 0(a0)
8000057c: 03 25 05 00  	lw	a0, 0(a0)
80000580: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000584: 83 a5 44 00  	lw	a1, 4(s1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000588: 13 05 f5 ff  	addi	a0, a0, -1
;     if (snrt_is_dm_core()) {
8000058c: 63 e0 a5 04  	bltu	a1, a0, 0x800005cc <main+0x5cc>
;     asm volatile(
80000590: 93 06 00 00  	mv	a3, zero
80000594: 13 06 09 00  	mv	a2, s2
80000598: 2b 00 d6 00  	dmsrc	a2, a3
;     asm volatile(
8000059c: 93 05 00 00  	mv	a1, zero
800005a0: 13 05 04 00  	mv	a0, s0
800005a4: 2b 00 b5 02  	dmdst	a0, a1
;     asm volatile(
800005a8: 93 07 80 00  	addi	a5, zero, 8
800005ac: 13 08 00 00  	mv	a6, zero
800005b0: 2b 00 f8 0c  	dmstr	a6, a5
;     asm volatile(
800005b4: 93 08 40 00  	addi	a7, zero, 4
800005b8: 2b 80 08 0e  	dmrep	a7
;     asm volatile(
800005bc: 13 07 40 00  	addi	a4, zero, 4
800005c0: 2b 05 27 04  	dmcpyi	a0, a4, 2
;     asm volatile(
800005c4: ab 02 20 08  	dmstati	t0, 2
800005c8: e3 9e 02 fe  	bnez	t0, 0x800005c4 <main+0x5c4>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800005cc: 97 00 00 00  	auipc	ra, 0
800005d0: e7 80 40 73  	jalr	1844(ra)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800005d4: 37 05 00 00  	lui	a0, 0
800005d8: 33 05 45 00  	add	a0, a0, tp
800005dc: 03 25 45 00  	lw	a0, 4(a0)
;     if (snrt_cluster_compute_core_idx() == 0) {
800005e0: 63 12 05 08  	bnez	a0, 0x80000664 <main+0x664>
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
800005e4: 03 25 04 00  	lw	a0, 0(s0)
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800005e8: 83 25 44 00  	lw	a1, 4(s0)
;                                 (uint32_t) * (buffer_golden + i));
800005ec: 03 26 44 08  	lw	a2, 132(s0)
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
800005f0: 33 35 a0 00  	snez	a0, a0
800005f4: 33 85 a9 00  	add	a0, s3, a0
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
800005f8: b3 c5 c5 00  	xor	a1, a1, a2
800005fc: b3 35 b0 00  	snez	a1, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
80000600: 03 26 84 00  	lw	a2, 8(s0)
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
80000604: 83 26 c4 00  	lw	a3, 12(s0)
;                                 (uint32_t) * (buffer_golden + i));
80000608: 03 27 c4 08  	lw	a4, 140(s0)
8000060c: 33 05 b5 00  	add	a0, a0, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
80000610: b3 35 c0 00  	snez	a1, a2
80000614: 33 05 b5 00  	add	a0, a0, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
80000618: b3 c5 e6 00  	xor	a1, a3, a4
8000061c: b3 35 b0 00  	snez	a1, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
80000620: 03 26 04 01  	lw	a2, 16(s0)
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
80000624: 83 26 44 01  	lw	a3, 20(s0)
;                                 (uint32_t) * (buffer_golden + i));
80000628: 03 27 44 09  	lw	a4, 148(s0)
8000062c: 33 05 b5 00  	add	a0, a0, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
80000630: b3 35 c0 00  	snez	a1, a2
80000634: 33 05 b5 00  	add	a0, a0, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
80000638: b3 c5 e6 00  	xor	a1, a3, a4
8000063c: b3 35 b0 00  	snez	a1, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
80000640: 03 26 84 01  	lw	a2, 24(s0)
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
80000644: 83 26 c4 01  	lw	a3, 28(s0)
;                                 (uint32_t) * (buffer_golden + i));
80000648: 03 27 c4 09  	lw	a4, 156(s0)
8000064c: 33 05 b5 00  	add	a0, a0, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) != (uint32_t)0);
80000650: b3 35 c0 00  	snez	a1, a2
80000654: 33 05 b5 00  	add	a0, a0, a1
;                 errors += (int)((uint32_t) * (buffer_tcdm + i) !=
80000658: b3 c5 e6 00  	xor	a1, a3, a4
8000065c: b3 35 b0 00  	snez	a1, a1
80000660: b3 09 b5 00  	add	s3, a0, a1
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000664: 97 00 00 00  	auipc	ra, 0
80000668: e7 80 c0 69  	jalr	1692(ra)
;     return errors;
8000066c: 13 85 09 00  	mv	a0, s3
80000670: 83 29 c1 00  	lw	s3, 12(sp)
80000674: 03 29 01 01  	lw	s2, 16(sp)
80000678: 83 24 41 01  	lw	s1, 20(sp)
8000067c: 03 24 81 01  	lw	s0, 24(sp)
80000680: 83 20 c1 01  	lw	ra, 28(sp)
80000684: 13 01 01 02  	addi	sp, sp, 32
80000688: 67 80 00 00  	ret

8000068c <_snrt_init_team>:
;     team->base.root = team;
8000068c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000690: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000694: 03 23 87 00  	lw	t1, 8(a4)
80000698: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000069c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800006a0: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800006a4: 83 22 47 00  	lw	t0, 4(a4)
800006a8: 33 88 08 03  	mul	a6, a7, a6
800006ac: 33 05 58 02  	mul	a0, a6, t0
800006b0: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800006b4: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800006b8: 33 85 68 40  	sub	a0, a7, t1
800006bc: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800006c0: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800006c4: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800006c8: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800006cc: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800006d0: 03 25 87 01  	lw	a0, 24(a4)
800006d4: b7 05 00 10  	lui	a1, 65536
800006d8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800006dc: 23 a2 07 02  	sw	zero, 36(a5)
800006e0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800006e4: 03 25 07 02  	lw	a0, 32(a4)
800006e8: 83 25 47 02  	lw	a1, 36(a4)
800006ec: 23 a4 a7 02  	sw	a0, 40(a5)
800006f0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800006f4: 23 a8 c7 02  	sw	a2, 48(a5)
800006f8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800006fc: 23 ac d7 02  	sw	a3, 56(a5)
80000700: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000704: 03 25 07 01  	lw	a0, 16(a4)
80000708: 33 08 a6 00  	add	a6, a2, a0
8000070c: 93 05 08 19  	addi	a1, a6, 400
80000710: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000714: b3 32 a8 00  	sltu	t0, a6, a0
80000718: 93 55 15 00  	srli	a1, a0, 1
8000071c: 33 03 b8 00  	add	t1, a6, a1
80000720: b3 35 03 01  	sltu	a1, t1, a6
80000724: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000728: 23 a0 67 04  	sw	t1, 64(a5)
8000072c: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000730: 13 15 15 00  	slli	a0, a0, 1
80000734: b3 05 c5 00  	add	a1, a0, a2
80000738: 33 b5 a5 00  	sltu	a0, a1, a0
8000073c: 23 a4 b7 04  	sw	a1, 72(a5)
80000740: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000744: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000748: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000074c: 37 05 00 00  	lui	a0, 0
80000750: 33 05 45 00  	add	a0, a0, tp
80000754: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000758: 03 a5 07 00  	lw	a0, 0(a5)
8000075c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000760: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000764: b3 85 b8 40  	sub	a1, a7, a1
80000768: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000076c: b7 05 00 00  	lui	a1, 0
80000770: b3 85 45 00  	add	a1, a1, tp
80000774: 23 a2 a5 00  	sw	a0, 4(a1)
80000778: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000077c: 33 85 a8 02  	mul	a0, a7, a0

80000780 <.LBB0_1>:
80000780: 97 05 00 00  	auipc	a1, 0
80000784: 93 85 c5 65  	addi	a1, a1, 1628
80000788: 33 05 b5 00  	add	a0, a0, a1
8000078c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000790: 83 28 07 03  	lw	a7, 48(a4)
80000794: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000798: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000079c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800007a0: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800007a4: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800007a8: 13 05 76 00  	addi	a0, a2, 7
800007ac: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800007b0: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800007b4: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800007b8: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800007bc: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800007c0: 03 a5 05 00  	lw	a0, 0(a1)
800007c4: 13 05 f5 44  	addi	a0, a0, 1103
800007c8: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800007cc: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800007d0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800007d4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800007d8: 37 05 00 00  	lui	a0, 0
800007dc: 33 05 45 00  	add	a0, a0, tp
800007e0: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800007e4: 37 05 00 00  	lui	a0, 0
800007e8: 33 05 45 00  	add	a0, a0, tp
800007ec: 23 26 e5 00  	sw	a4, 12(a0)
; }
800007f0: 67 80 00 00  	ret

800007f4 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800007f4: 37 05 00 00  	lui	a0, 0
800007f8: 33 05 45 00  	add	a0, a0, tp
800007fc: 03 25 05 00  	lw	a0, 0(a0)
80000800: 03 25 05 00  	lw	a0, 0(a0)
80000804: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000808: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000080c: 33 85 a5 40  	sub	a0, a1, a0
80000810: 67 80 00 00  	ret

80000814 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80000814: 37 05 00 00  	lui	a0, 0
80000818: 33 05 45 00  	add	a0, a0, tp
8000081c: 03 25 05 00  	lw	a0, 0(a0)
80000820: 03 25 05 00  	lw	a0, 0(a0)
80000824: 03 25 05 07  	lw	a0, 112(a0)
80000828: 67 80 00 00  	ret

8000082c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
8000082c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000830: 63 44 05 00  	bltz	a0, 0x80000838 <__snrt_isr+0xc>
;         while (1)
80000834: 6f 00 00 00  	j	0x80000834 <__snrt_isr+0x8>
80000838: b7 05 00 80  	lui	a1, 524288
8000083c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80000840: 33 75 b5 00  	and	a0, a0, a1
80000844: 13 05 d5 ff  	addi	a0, a0, -3
80000848: 93 55 25 00  	srli	a1, a0, 2
8000084c: 13 15 e5 01  	slli	a0, a0, 30
80000850: 33 65 b5 00  	or	a0, a0, a1
80000854: 93 05 40 00  	addi	a1, zero, 4
80000858: 63 0a b5 06  	beq	a0, a1, 0x800008cc <.LBB1_7+0x58>
8000085c: 63 1a 05 08  	bnez	a0, 0x800008f0 <.LBB1_7+0x7c>
80000860: 37 05 00 00  	lui	a0, 0
80000864: 33 05 45 00  	add	a0, a0, tp
80000868: 03 25 05 00  	lw	a0, 0(a0)
8000086c: 03 25 05 00  	lw	a0, 0(a0)
80000870: f3 25 40 f1  	csrr	a1, mhartid

80000874 <.LBB1_7>:
;     asm volatile(
80000874: 17 06 00 00  	auipc	a2, 0
80000878: 13 06 46 56  	addi	a2, a2, 1380
8000087c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000880: 93 06 06 00  	mv	a3, a2
80000884: 93 02 10 00  	addi	t0, zero, 1
80000888: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
8000088c: e3 9e 02 fe  	bnez	t0, 0x80000888 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000890: b7 06 00 00  	lui	a3, 0
80000894: b3 86 46 00  	add	a3, a3, tp
80000898: 83 a6 86 00  	lw	a3, 8(a3)
8000089c: 33 85 a5 40  	sub	a0, a1, a0
800008a0: 93 55 35 00  	srli	a1, a0, 3
800008a4: 93 f5 c5 ff  	andi	a1, a1, -4
800008a8: b3 85 b6 00  	add	a1, a3, a1
800008ac: 83 a6 05 00  	lw	a3, 0(a1)
800008b0: 13 07 10 00  	addi	a4, zero, 1
800008b4: 33 15 a7 00  	sll	a0, a4, a0
800008b8: 13 45 f5 ff  	not	a0, a0
800008bc: 33 f5 a6 00  	and	a0, a3, a0
800008c0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800008c4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800008c8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800008cc: 37 05 00 00  	lui	a0, 0
800008d0: 33 05 45 00  	add	a0, a0, tp
800008d4: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800008d8: b7 05 00 00  	lui	a1, 0
800008dc: b3 85 45 00  	add	a1, a1, tp
800008e0: 83 a5 c5 00  	lw	a1, 12(a1)
800008e4: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800008e8: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800008ec: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800008f0: 67 80 00 00  	ret

Disassembly of section .init:

80000900 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000900: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000904: 93 81 81 cc  	addi	gp, gp, -824

80000908 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000908: 97 00 00 00  	auipc	ra, 0
8000090c: e7 80 40 3c  	jalr	964(ra)

80000910 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000910: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000914: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000918: 97 00 00 00  	auipc	ra, 0
8000091c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000920: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000924: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000928: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000092c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000930: 63 92 02 02  	bnez	t0, 0x80000954 <snrt.crt0.init_registers>

80000934 <.Lpcrel_hi0>:
;     la        t0, _edata
80000934: 97 02 00 00  	auipc	t0, 0
80000938: 93 82 42 4a  	addi	t0, t0, 1188

8000093c <.Lpcrel_hi1>:
;     la        t1, _end
8000093c: 17 03 00 00  	auipc	t1, 0
80000940: 13 03 03 4a  	addi	t1, t1, 1184
;     bge       t0, t1, 2f
80000944: 63 d8 62 00  	bge	t0, t1, 0x80000954 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000948: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000094c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000950: e3 cc 62 fe  	blt	t0, t1, 0x80000948 <.Lpcrel_hi1+0xc>

80000954 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000954: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000958: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000095c: 63 82 02 08  	beqz	t0, 0x800009e0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000960: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000964: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000968: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000096c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000970: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000974: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000978: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000097c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000980: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000984: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000988: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000098c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000990: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000994: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000998: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000099c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800009a0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800009a4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800009a8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800009ac: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800009b0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800009b4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800009b8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800009bc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800009c0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800009c4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800009c8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800009cc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800009d0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800009d4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800009d8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800009dc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800009e0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800009e0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800009e4: 23 a0 06 00  	sw	zero, 0(a3)

800009e8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800009e8: 97 02 00 00  	auipc	t0, 0
800009ec: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
800009f0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800009f4: 93 87 06 00  	mv	a5, a3

800009f8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800009f8: 97 03 00 00  	auipc	t2, 0
800009fc: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80000a00: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000a04: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000a08: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80000a0c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000a10: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000a14: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000a18: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80000a1c: b3 86 66 40  	sub	a3, a3, t1

80000a20 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000a20: 97 02 00 00  	auipc	t0, 0
80000a24: 93 82 82 3a  	addi	t0, t0, 936

80000a28 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000a28: 17 03 00 00  	auipc	t1, 0
80000a2c: 13 03 03 3a  	addi	t1, t1, 928

80000a30 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000a30: 97 03 00 00  	auipc	t2, 0
80000a34: 93 83 83 39  	addi	t2, t2, 920

80000a38 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000a38: 17 0e 00 00  	auipc	t3, 0
80000a3c: 13 0e 0e 3a  	addi	t3, t3, 928
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000a40: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000a44: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000a48: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80000a4c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000a50: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000a54: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000a58: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80000a5c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000a60: 63 dc 62 00  	bge	t0, t1, 0x80000a78 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000a64: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000a68: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80000a6c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a70: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000a74: e3 c8 62 fe  	blt	t0, t1, 0x80000a64 <.Lpcrel_hi7+0x2c>

80000a78 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000a78: 97 02 00 00  	auipc	t0, 0
80000a7c: 93 82 02 35  	addi	t0, t0, 848

80000a80 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000a80: 17 03 00 00  	auipc	t1, 0
80000a84: 13 03 83 35  	addi	t1, t1, 856
;     bge       t0, t1, 2f
80000a88: 63 da 62 00  	bge	t0, t1, 0x80000a9c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80000a8c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000a90: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a94: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000a98: e3 ca 72 fe  	blt	t0, t2, 0x80000a8c <.Lpcrel_hi9+0xc>

80000a9c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80000a9c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000aa0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000aa4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000aa8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80000aac: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000ab0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000ab4: 97 00 00 00  	auipc	ra, 0
80000ab8: e7 80 80 bd  	jalr	-1064(ra)
;     lw        a0, 0(sp)
80000abc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000ac0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000ac4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000ac8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80000acc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000ad0: 13 01 41 01  	addi	sp, sp, 20

80000ad4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000ad4: 97 02 00 00  	auipc	t0, 0
80000ad8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80000adc: 73 90 52 30  	csrw	mtvec, t0

80000ae0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000ae0: 97 00 00 00  	auipc	ra, 0
80000ae4: e7 80 00 22  	jalr	544(ra)

80000ae8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000ae8: 97 f0 ff ff  	auipc	ra, 1048575
80000aec: e7 80 80 51  	jalr	1304(ra)
;     mv        s0, a0 # store return value in s0
80000af0: 13 04 05 00  	mv	s0, a0

80000af4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000af4: 97 00 00 00  	auipc	ra, 0
80000af8: e7 80 c0 20  	jalr	524(ra)

80000afc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80000afc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000b00: 97 00 00 00  	auipc	ra, 0
80000b04: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000b08: 73 00 50 10  	wfi	
;     j       1b
80000b0c: 6f f0 df ff  	j	0x80000b08 <snrt.crt0.end+0xc>

80000b10 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000b10: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000b14: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000b18: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80000b1c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000b20: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000b24: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000b28: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80000b2c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000b30: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000b34: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000b38: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80000b3c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000b40: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000b44: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000b48: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80000b4c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000b50: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000b54: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000b58: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000b5c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000b60: 63 84 02 08  	beqz	t0, 0x80000be8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000b64: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000b68: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80000b6c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000b70: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000b74: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000b78: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80000b7c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000b80: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000b84: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000b88: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80000b8c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000b90: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000b94: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000b98: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80000b9c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000ba0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000ba4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000ba8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80000bac: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000bb0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000bb4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000bb8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80000bbc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000bc0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000bc4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000bc8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80000bcc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000bd0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000bd4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000bd8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80000bdc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000be0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000be4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000be8: 97 00 00 00  	auipc	ra, 0
80000bec: e7 80 40 c4  	jalr	-956(ra)
;     csrr    t0, misa
80000bf0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000bf4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000bf8: 63 84 02 08  	beqz	t0, 0x80000c80 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000bfc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000c00: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000c04: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000c08: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000c0c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000c10: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000c14: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000c18: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000c1c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000c20: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000c24: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000c28: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000c2c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000c30: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000c34: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000c38: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000c3c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000c40: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000c44: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000c48: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000c4c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000c50: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000c54: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000c58: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000c5c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000c60: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000c64: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000c68: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000c6c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000c70: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000c74: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000c78: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000c7c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000c80: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000c84: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000c88: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000c8c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000c90: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000c94: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000c98: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000c9c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000ca0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000ca4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000ca8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000cac: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000cb0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000cb4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000cb8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000cbc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000cc0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000cc4: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000cc8: 73 00 20 30  	mret	

80000ccc <_snrt_init_core_info>:
;     mv        a4, a1
80000ccc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000cd0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000cd4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000cd8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000cdc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000ce0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000ce4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000ce8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000cec: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000cf0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000cf4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000cf8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000cfc: 67 80 00 00  	ret

80000d00 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000d00: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000d04: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000d08: 97 00 00 00  	auipc	ra, 0
80000d0c: e7 80 c0 b0  	jalr	-1268(ra)
;     lw        a0, 0(a0)
80000d10: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000d14: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000d18: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000d1c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000d20: 67 80 00 00  	ret

80000d24 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000d24: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000d28: 67 80 00 00  	ret

80000d2c <_snrt_exit>:
;     addi      sp, sp, -8
80000d2c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000d30: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000d34: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000d38: 97 00 00 00  	auipc	ra, 0
80000d3c: e7 80 c0 ab  	jalr	-1348(ra)
;     lw        t0, 0(sp)
80000d40: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000d44: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000d48: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000d4c: 63 1c 05 00  	bnez	a0, 0x80000d64 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000d50: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000d54: 93 e2 12 00  	ori	t0, t0, 1

80000d58 <.Lpcrel_hi11>:
;     la        t1, tohost
80000d58: 17 03 00 00  	auipc	t1, 0
80000d5c: 13 03 83 02  	addi	t1, t1, 40
;     sw        t0, 0(t1)
80000d60: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000d64: 67 80 00 00  	ret
