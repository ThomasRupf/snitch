
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-interrupt-local:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             0000060c 80000000 TEXT
  2 .init             00000468 80000610 TEXT
  3 .rodata           00000008 80000a78 DATA
  4 .htif             00000048 80000a80 DATA
  5 .tdata            00000000 80000ac8 DATA
  6 .tbss             00000010 80000ac8 BSS
  7 .tbssend          00000000 80000ad8 DATA
  8 .sdata            00000000 80000ad8 DATA
  9 .data             00000000 80000ad8 DATA
 10 .sbss             00000004 80000ad8 BSS
 11 .bss              00000000 80000adc BSS
 12 .dram             00000000 80000adc DATA
 13 .debug_info       00001be6 00000000 
 14 .debug_abbrev     000006fe 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       000014f8 00000000 
 17 .debug_loc        00000336 00000000 
 18 .debug_ranges     000000e0 00000000 
 19 .debug_str        00000812 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000184 00000000 
 23 .symtab           00000e40 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           00000451 00000000 


Disassembly of section .text:

80000000 <main>:
; int main() {
80000000: 13 01 01 fe  	addi	sp, sp, -32
80000004: 23 2e 11 00  	sw	ra, 28(sp)
80000008: 23 2c 81 00  	sw	s0, 24(sp)
8000000c: 23 2a 91 00  	sw	s1, 20(sp)
80000010: 23 28 21 01  	sw	s2, 16(sp)
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000014: 37 05 00 00  	lui	a0, 0
80000018: 33 05 45 00  	add	a0, a0, tp
8000001c: 03 25 05 00  	lw	a0, 0(a0)
80000020: 83 25 05 00  	lw	a1, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000024: 37 05 00 00  	lui	a0, 0
80000028: 33 05 45 00  	add	a0, a0, tp
8000002c: 03 25 45 00  	lw	a0, 4(a0)
;     return _snrt_team_current->root->cluster_mem;
80000030: 03 a6 05 03  	lw	a2, 48(a1)
;         (int32_t *)snrt_cluster_memory().start + 0x100;
80000034: 13 04 06 40  	addi	s0, a2, 1024
;     if (cluster_core_idx != 0) {
80000038: 63 06 05 1c  	beqz	a0, 0x80000204 <main+0x204>
8000003c: b7 05 08 00  	lui	a1, 128
;     set_csr(mie, 1 << irq);
80000040: f3 a5 45 30  	csrrs	a1, mie, a1
; static inline void snrt_wfi() { asm volatile("wfi"); }
80000044: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000048: b7 05 00 00  	lui	a1, 0
8000004c: b3 85 45 00  	add	a1, a1, tp
80000050: 83 a5 c5 00  	lw	a1, 12(a1)
80000054: 13 06 10 00  	addi	a2, zero, 1
80000058: b3 14 a6 00  	sll	s1, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
8000005c: 23 a4 95 00  	sw	s1, 8(a1)
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
80000060: 2f 25 c4 00  	amoadd.w	a0, a2, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
80000064: 03 25 04 00  	lw	a0, 0(s0)
80000068: e3 1e 05 fe  	bnez	a0, 0x80000064 <main+0x64>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000006c: 97 10 00 00  	auipc	ra, 1
80000070: e7 80 40 9a  	jalr	-1628(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
80000074: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000078: 37 05 00 00  	lui	a0, 0
8000007c: 33 05 45 00  	add	a0, a0, tp
80000080: 03 25 c5 00  	lw	a0, 12(a0)
80000084: 23 24 95 00  	sw	s1, 8(a0)
80000088: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
8000008c: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
80000090: 03 25 04 00  	lw	a0, 0(s0)
80000094: e3 1e 05 fe  	bnez	a0, 0x80000090 <main+0x90>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000098: 97 10 00 00  	auipc	ra, 1
8000009c: e7 80 80 97  	jalr	-1672(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
800000a0: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800000a4: 37 05 00 00  	lui	a0, 0
800000a8: 33 05 45 00  	add	a0, a0, tp
800000ac: 03 25 c5 00  	lw	a0, 12(a0)
800000b0: 23 24 95 00  	sw	s1, 8(a0)
800000b4: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
800000b8: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
800000bc: 03 25 04 00  	lw	a0, 0(s0)
800000c0: e3 1e 05 fe  	bnez	a0, 0x800000bc <main+0xbc>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800000c4: 97 10 00 00  	auipc	ra, 1
800000c8: e7 80 c0 94  	jalr	-1716(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
800000cc: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800000d0: 37 05 00 00  	lui	a0, 0
800000d4: 33 05 45 00  	add	a0, a0, tp
800000d8: 03 25 c5 00  	lw	a0, 12(a0)
800000dc: 23 24 95 00  	sw	s1, 8(a0)
800000e0: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
800000e4: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
800000e8: 03 25 04 00  	lw	a0, 0(s0)
800000ec: e3 1e 05 fe  	bnez	a0, 0x800000e8 <main+0xe8>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800000f0: 97 10 00 00  	auipc	ra, 1
800000f4: e7 80 00 92  	jalr	-1760(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
800000f8: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800000fc: 37 05 00 00  	lui	a0, 0
80000100: 33 05 45 00  	add	a0, a0, tp
80000104: 03 25 c5 00  	lw	a0, 12(a0)
80000108: 23 24 95 00  	sw	s1, 8(a0)
8000010c: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
80000110: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
80000114: 03 25 04 00  	lw	a0, 0(s0)
80000118: e3 1e 05 fe  	bnez	a0, 0x80000114 <main+0x114>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000011c: 97 10 00 00  	auipc	ra, 1
80000120: e7 80 40 8f  	jalr	-1804(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
80000124: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000128: 37 05 00 00  	lui	a0, 0
8000012c: 33 05 45 00  	add	a0, a0, tp
80000130: 03 25 c5 00  	lw	a0, 12(a0)
80000134: 23 24 95 00  	sw	s1, 8(a0)
80000138: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
8000013c: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
80000140: 03 25 04 00  	lw	a0, 0(s0)
80000144: e3 1e 05 fe  	bnez	a0, 0x80000140 <main+0x140>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000148: 97 10 00 00  	auipc	ra, 1
8000014c: e7 80 80 8c  	jalr	-1848(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
80000150: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000154: 37 05 00 00  	lui	a0, 0
80000158: 33 05 45 00  	add	a0, a0, tp
8000015c: 03 25 c5 00  	lw	a0, 12(a0)
80000160: 23 24 95 00  	sw	s1, 8(a0)
80000164: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
80000168: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
8000016c: 03 25 04 00  	lw	a0, 0(s0)
80000170: e3 1e 05 fe  	bnez	a0, 0x8000016c <main+0x16c>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000174: 97 10 00 00  	auipc	ra, 1
80000178: e7 80 c0 89  	jalr	-1892(ra)
; static inline void snrt_wfi() { asm volatile("wfi"); }
8000017c: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000180: 37 05 00 00  	lui	a0, 0
80000184: 33 05 45 00  	add	a0, a0, tp
80000188: 03 25 c5 00  	lw	a0, 12(a0)
8000018c: 23 24 95 00  	sw	s1, 8(a0)
80000190: 13 05 10 00  	addi	a0, zero, 1
;         __atomic_add_fetch(flag, 1, __ATOMIC_RELAXED);
80000194: 2f 25 a4 00  	amoadd.w	a0, a0, (s0)
;         while (__atomic_load_n(flag, __ATOMIC_RELAXED))
80000198: 03 25 04 00  	lw	a0, 0(s0)
8000019c: e3 1e 05 fe  	bnez	a0, 0x80000198 <main+0x198>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800001a0: 97 10 00 00  	auipc	ra, 1
800001a4: e7 80 00 87  	jalr	-1936(ra)
800001a8: 37 05 08 00  	lui	a0, 128
;     clear_csr(mie, 1 << irq);
800001ac: 73 35 45 30  	csrrc	a0, mie, a0
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800001b0: 97 10 00 00  	auipc	ra, 1
800001b4: e7 80 00 86  	jalr	-1952(ra)
800001b8: 97 10 00 00  	auipc	ra, 1
800001bc: e7 80 80 85  	jalr	-1960(ra)
800001c0: 13 05 40 06  	addi	a0, zero, 100
;         tmp = 100;
800001c4: 23 26 a1 00  	sw	a0, 12(sp)
;         while (--tmp)
800001c8: 03 25 c1 00  	lw	a0, 12(sp)
800001cc: 13 05 f5 ff  	addi	a0, a0, -1
800001d0: 23 26 a1 00  	sw	a0, 12(sp)
800001d4: e3 1a 05 fe  	bnez	a0, 0x800001c8 <main+0x1c8>
800001d8: 37 05 08 00  	lui	a0, 128
;     set_csr(mie, 1 << irq);
800001dc: f3 25 45 30  	csrrs	a1, mie, a0
; static inline void snrt_wfi() { asm volatile("wfi"); }
800001e0: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800001e4: b7 05 00 00  	lui	a1, 0
800001e8: b3 85 45 00  	add	a1, a1, tp
800001ec: 83 a5 c5 00  	lw	a1, 12(a1)
800001f0: 23 a4 95 00  	sw	s1, 8(a1)
800001f4: 93 05 10 00  	addi	a1, zero, 1
;         __atomic_add_fetch(cluster_flag, 1, __ATOMIC_RELAXED);
800001f8: af 25 b4 00  	amoadd.w	a1, a1, (s0)
;     clear_csr(mie, 1 << irq);
800001fc: 73 35 45 30  	csrrc	a0, mie, a0
80000200: 6f 00 c0 16  	j	0x8000036c <main+0x36c>
80000204: 03 a5 c5 01  	lw	a0, 28(a1)
;         *cluster_flag = 0;
80000208: 23 20 04 00  	sw	zero, 0(s0)
8000020c: 93 05 f0 ff  	addi	a1, zero, -1
80000210: b3 95 a5 00  	sll	a1, a1, a0
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000214: 37 06 00 00  	lui	a2, 0
80000218: 33 06 46 00  	add	a2, a2, tp
8000021c: 03 26 c6 00  	lw	a2, 12(a2)
80000220: 93 c5 f5 ff  	not	a1, a1
80000224: 13 f9 e5 ff  	andi	s2, a1, -2
80000228: 93 04 f5 ff  	addi	s1, a0, -1
8000022c: 23 20 26 01  	sw	s2, 0(a2)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
80000230: 03 25 04 00  	lw	a0, 0(s0)
80000234: e3 1e 95 fe  	bne	a0, s1, 0x80000230 <main+0x230>
;             *cluster_flag = 0;
80000238: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000023c: 97 00 00 00  	auipc	ra, 0
80000240: e7 80 40 7d  	jalr	2004(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000244: 37 05 00 00  	lui	a0, 0
80000248: 33 05 45 00  	add	a0, a0, tp
8000024c: 03 25 c5 00  	lw	a0, 12(a0)
80000250: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
80000254: 03 25 04 00  	lw	a0, 0(s0)
80000258: e3 1e 95 fe  	bne	a0, s1, 0x80000254 <main+0x254>
;             *cluster_flag = 0;
8000025c: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000260: 97 00 00 00  	auipc	ra, 0
80000264: e7 80 00 7b  	jalr	1968(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000268: 37 05 00 00  	lui	a0, 0
8000026c: 33 05 45 00  	add	a0, a0, tp
80000270: 03 25 c5 00  	lw	a0, 12(a0)
80000274: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
80000278: 03 25 04 00  	lw	a0, 0(s0)
8000027c: e3 1e 95 fe  	bne	a0, s1, 0x80000278 <main+0x278>
;             *cluster_flag = 0;
80000280: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000284: 97 00 00 00  	auipc	ra, 0
80000288: e7 80 c0 78  	jalr	1932(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000028c: 37 05 00 00  	lui	a0, 0
80000290: 33 05 45 00  	add	a0, a0, tp
80000294: 03 25 c5 00  	lw	a0, 12(a0)
80000298: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
8000029c: 03 25 04 00  	lw	a0, 0(s0)
800002a0: e3 1e 95 fe  	bne	a0, s1, 0x8000029c <main+0x29c>
;             *cluster_flag = 0;
800002a4: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800002a8: 97 00 00 00  	auipc	ra, 0
800002ac: e7 80 80 76  	jalr	1896(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800002b0: 37 05 00 00  	lui	a0, 0
800002b4: 33 05 45 00  	add	a0, a0, tp
800002b8: 03 25 c5 00  	lw	a0, 12(a0)
800002bc: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
800002c0: 03 25 04 00  	lw	a0, 0(s0)
800002c4: e3 1e 95 fe  	bne	a0, s1, 0x800002c0 <main+0x2c0>
;             *cluster_flag = 0;
800002c8: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800002cc: 97 00 00 00  	auipc	ra, 0
800002d0: e7 80 40 74  	jalr	1860(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800002d4: 37 05 00 00  	lui	a0, 0
800002d8: 33 05 45 00  	add	a0, a0, tp
800002dc: 03 25 c5 00  	lw	a0, 12(a0)
800002e0: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
800002e4: 03 25 04 00  	lw	a0, 0(s0)
800002e8: e3 1e 95 fe  	bne	a0, s1, 0x800002e4 <main+0x2e4>
;             *cluster_flag = 0;
800002ec: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800002f0: 97 00 00 00  	auipc	ra, 0
800002f4: e7 80 00 72  	jalr	1824(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800002f8: 37 05 00 00  	lui	a0, 0
800002fc: 33 05 45 00  	add	a0, a0, tp
80000300: 03 25 c5 00  	lw	a0, 12(a0)
80000304: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
80000308: 03 25 04 00  	lw	a0, 0(s0)
8000030c: e3 1e 95 fe  	bne	a0, s1, 0x80000308 <main+0x308>
;             *cluster_flag = 0;
80000310: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000314: 97 00 00 00  	auipc	ra, 0
80000318: e7 80 c0 6f  	jalr	1788(ra)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000031c: 37 05 00 00  	lui	a0, 0
80000320: 33 05 45 00  	add	a0, a0, tp
80000324: 03 25 c5 00  	lw	a0, 12(a0)
80000328: 23 20 25 01  	sw	s2, 0(a0)
;             while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
8000032c: 03 25 04 00  	lw	a0, 0(s0)
80000330: e3 1e 95 fe  	bne	a0, s1, 0x8000032c <main+0x32c>
;             *cluster_flag = 0;
80000334: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80000338: 97 00 00 00  	auipc	ra, 0
8000033c: e7 80 80 6d  	jalr	1752(ra)
80000340: 97 00 00 00  	auipc	ra, 0
80000344: e7 80 00 6d  	jalr	1744(ra)
;         *cluster_flag = 0;
80000348: 23 20 04 00  	sw	zero, 0(s0)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000034c: 37 05 00 00  	lui	a0, 0
80000350: 33 05 45 00  	add	a0, a0, tp
80000354: 03 25 c5 00  	lw	a0, 12(a0)
80000358: 23 20 25 01  	sw	s2, 0(a0)
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000035c: 97 00 00 00  	auipc	ra, 0
80000360: e7 80 40 6b  	jalr	1716(ra)
;         while (__atomic_load_n(cluster_flag, __ATOMIC_RELAXED) !=
80000364: 03 25 04 00  	lw	a0, 0(s0)
80000368: e3 1e 95 fe  	bne	a0, s1, 0x80000364 <main+0x364>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000036c: 97 00 00 00  	auipc	ra, 0
80000370: e7 80 40 6a  	jalr	1700(ra)
;     return 0;
80000374: 13 05 00 00  	mv	a0, zero
80000378: 03 29 01 01  	lw	s2, 16(sp)
8000037c: 83 24 41 01  	lw	s1, 20(sp)
80000380: 03 24 81 01  	lw	s0, 24(sp)
80000384: 83 20 c1 01  	lw	ra, 28(sp)
80000388: 13 01 01 02  	addi	sp, sp, 32
8000038c: 67 80 00 00  	ret

80000390 <irq_m_cluster>:
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000390: b7 05 00 00  	lui	a1, 0
80000394: b3 85 45 00  	add	a1, a1, tp
80000398: 83 a5 c5 00  	lw	a1, 12(a1)
8000039c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800003a0: 33 16 a6 00  	sll	a2, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800003a4: 23 a4 c5 00  	sw	a2, 8(a1)
;     __atomic_add_fetch(cluster_flags[snrt_cluster_idx()], 1 + cluster_core_idx,
800003a8: 13 05 15 00  	addi	a0, a0, 1
800003ac: 2f 25 a0 00  	amoadd.w	a0, a0, (zero)
; }
800003b0: 67 80 00 00  	ret

800003b4 <_snrt_init_team>:
;     team->base.root = team;
800003b4: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800003b8: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800003bc: 03 23 87 00  	lw	t1, 8(a4)
800003c0: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800003c4: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800003c8: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800003cc: 83 22 47 00  	lw	t0, 4(a4)
800003d0: 33 88 08 03  	mul	a6, a7, a6
800003d4: 33 05 58 02  	mul	a0, a6, t0
800003d8: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800003dc: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
800003e0: 33 85 68 40  	sub	a0, a7, t1
800003e4: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
800003e8: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
800003ec: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
800003f0: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
800003f4: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800003f8: 03 25 87 01  	lw	a0, 24(a4)
800003fc: b7 05 00 10  	lui	a1, 65536
80000400: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000404: 23 a2 07 02  	sw	zero, 36(a5)
80000408: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
8000040c: 03 25 07 02  	lw	a0, 32(a4)
80000410: 83 25 47 02  	lw	a1, 36(a4)
80000414: 23 a4 a7 02  	sw	a0, 40(a5)
80000418: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
8000041c: 23 a8 c7 02  	sw	a2, 48(a5)
80000420: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000424: 23 ac d7 02  	sw	a3, 56(a5)
80000428: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
8000042c: 03 25 07 01  	lw	a0, 16(a4)
80000430: 33 08 a6 00  	add	a6, a2, a0
80000434: 93 05 08 19  	addi	a1, a6, 400
80000438: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
8000043c: b3 32 a8 00  	sltu	t0, a6, a0
80000440: 93 55 15 00  	srli	a1, a0, 1
80000444: 33 03 b8 00  	add	t1, a6, a1
80000448: b3 35 03 01  	sltu	a1, t1, a6
8000044c: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000450: 23 a0 67 04  	sw	t1, 64(a5)
80000454: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000458: 13 15 15 00  	slli	a0, a0, 1
8000045c: b3 05 c5 00  	add	a1, a0, a2
80000460: 33 b5 a5 00  	sltu	a0, a1, a0
80000464: 23 a4 b7 04  	sw	a1, 72(a5)
80000468: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
8000046c: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000470: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80000474: 37 05 00 00  	lui	a0, 0
80000478: 33 05 45 00  	add	a0, a0, tp
8000047c: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000480: 03 a5 07 00  	lw	a0, 0(a5)
80000484: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000488: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
8000048c: b3 85 b8 40  	sub	a1, a7, a1
80000490: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80000494: b7 05 00 00  	lui	a1, 0
80000498: b3 85 45 00  	add	a1, a1, tp
8000049c: 23 a2 a5 00  	sw	a0, 4(a1)
800004a0: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800004a4: 33 85 a8 02  	mul	a0, a7, a0

800004a8 <.LBB0_1>:
800004a8: 97 05 00 00  	auipc	a1, 0
800004ac: 93 85 45 63  	addi	a1, a1, 1588
800004b0: 33 05 b5 00  	add	a0, a0, a1
800004b4: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800004b8: 83 28 07 03  	lw	a7, 48(a4)
800004bc: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800004c0: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800004c4: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800004c8: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
800004cc: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
800004d0: 13 05 76 00  	addi	a0, a2, 7
800004d4: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
800004d8: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
800004dc: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
800004e0: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
800004e4: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
800004e8: 03 a5 05 00  	lw	a0, 0(a1)
800004ec: 13 05 f5 44  	addi	a0, a0, 1103
800004f0: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
800004f4: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800004f8: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800004fc: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000500: 37 05 00 00  	lui	a0, 0
80000504: 33 05 45 00  	add	a0, a0, tp
80000508: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
8000050c: 37 05 00 00  	lui	a0, 0
80000510: 33 05 45 00  	add	a0, a0, tp
80000514: 23 26 e5 00  	sw	a4, 12(a0)
; }
80000518: 67 80 00 00  	ret

8000051c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000051c: 37 05 00 00  	lui	a0, 0
80000520: 33 05 45 00  	add	a0, a0, tp
80000524: 03 25 05 00  	lw	a0, 0(a0)
80000528: 03 25 05 00  	lw	a0, 0(a0)
8000052c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000530: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000534: 33 85 a5 40  	sub	a0, a1, a0
80000538: 67 80 00 00  	ret

8000053c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
8000053c: 37 05 00 00  	lui	a0, 0
80000540: 33 05 45 00  	add	a0, a0, tp
80000544: 03 25 05 00  	lw	a0, 0(a0)
80000548: 03 25 05 00  	lw	a0, 0(a0)
8000054c: 03 25 05 07  	lw	a0, 112(a0)
80000550: 67 80 00 00  	ret

80000554 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000554: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000558: 63 44 05 00  	bltz	a0, 0x80000560 <__snrt_isr+0xc>
;         while (1)
8000055c: 6f 00 00 00  	j	0x8000055c <__snrt_isr+0x8>
80000560: b7 05 00 80  	lui	a1, 524288
80000564: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80000568: 33 75 b5 00  	and	a0, a0, a1
8000056c: 13 05 d5 ff  	addi	a0, a0, -3
80000570: 93 55 25 00  	srli	a1, a0, 2
80000574: 13 15 e5 01  	slli	a0, a0, 30
80000578: 33 65 b5 00  	or	a0, a0, a1
8000057c: 93 05 40 00  	addi	a1, zero, 4
80000580: 63 0a b5 06  	beq	a0, a1, 0x800005f4 <.LBB2_7+0x58>
80000584: 63 12 05 08  	bnez	a0, 0x80000608 <.LBB2_7+0x6c>
80000588: 37 05 00 00  	lui	a0, 0
8000058c: 33 05 45 00  	add	a0, a0, tp
80000590: 03 25 05 00  	lw	a0, 0(a0)
80000594: 03 25 05 00  	lw	a0, 0(a0)
80000598: f3 25 40 f1  	csrr	a1, mhartid

8000059c <.LBB2_7>:
;     asm volatile(
8000059c: 17 06 00 00  	auipc	a2, 0
800005a0: 13 06 c6 53  	addi	a2, a2, 1340
800005a4: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800005a8: 93 06 06 00  	mv	a3, a2
800005ac: 93 02 10 00  	addi	t0, zero, 1
800005b0: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800005b4: e3 9e 02 fe  	bnez	t0, 0x800005b0 <.LBB2_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800005b8: b7 06 00 00  	lui	a3, 0
800005bc: b3 86 46 00  	add	a3, a3, tp
800005c0: 83 a6 86 00  	lw	a3, 8(a3)
800005c4: 33 85 a5 40  	sub	a0, a1, a0
800005c8: 93 55 35 00  	srli	a1, a0, 3
800005cc: 93 f5 c5 ff  	andi	a1, a1, -4
800005d0: b3 85 b6 00  	add	a1, a3, a1
800005d4: 83 a6 05 00  	lw	a3, 0(a1)
800005d8: 13 07 10 00  	addi	a4, zero, 1
800005dc: 33 15 a7 00  	sll	a0, a4, a0
800005e0: 13 45 f5 ff  	not	a0, a0
800005e4: 33 f5 a6 00  	and	a0, a3, a0
800005e8: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800005ec: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800005f0: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800005f4: 37 05 00 00  	lui	a0, 0
800005f8: 33 05 45 00  	add	a0, a0, tp
800005fc: 03 25 45 00  	lw	a0, 4(a0)
;                 irq_m_cluster(core_idx);
80000600: 17 03 00 00  	auipc	t1, 0
80000604: 67 00 03 d9  	jr	-624(t1)
; }
80000608: 67 80 00 00  	ret

Disassembly of section .init:

80000610 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000610: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000614: 93 81 81 cb  	addi	gp, gp, -840

80000618 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000618: 97 00 00 00  	auipc	ra, 0
8000061c: e7 80 40 3c  	jalr	964(ra)

80000620 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000620: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000624: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000628: 97 00 00 00  	auipc	ra, 0
8000062c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000630: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000634: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000638: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000063c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000640: 63 92 02 02  	bnez	t0, 0x80000664 <snrt.crt0.init_registers>

80000644 <.Lpcrel_hi0>:
;     la        t0, _edata
80000644: 97 02 00 00  	auipc	t0, 0
80000648: 93 82 42 49  	addi	t0, t0, 1172

8000064c <.Lpcrel_hi1>:
;     la        t1, _end
8000064c: 17 03 00 00  	auipc	t1, 0
80000650: 13 03 03 49  	addi	t1, t1, 1168
;     bge       t0, t1, 2f
80000654: 63 d8 62 00  	bge	t0, t1, 0x80000664 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000658: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000065c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000660: e3 cc 62 fe  	blt	t0, t1, 0x80000658 <.Lpcrel_hi1+0xc>

80000664 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000664: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000668: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000066c: 63 82 02 08  	beqz	t0, 0x800006f0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000670: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000674: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000678: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000067c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000680: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000684: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000688: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000068c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000690: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000694: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000698: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000069c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800006a0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800006a4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800006a8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800006ac: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800006b0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800006b4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800006b8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800006bc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
800006c0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
800006c4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
800006c8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
800006cc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
800006d0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
800006d4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
800006d8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
800006dc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800006e0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800006e4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800006e8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800006ec: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800006f0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800006f0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800006f4: 23 a0 06 00  	sw	zero, 0(a3)

800006f8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800006f8: 97 02 00 00  	auipc	t0, 0
800006fc: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80000700: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000704: 93 87 06 00  	mv	a5, a3

80000708 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000708: 97 03 00 00  	auipc	t2, 0
8000070c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80000710: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000714: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000718: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000071c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000720: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000724: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000728: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000072c: b3 86 66 40  	sub	a3, a3, t1

80000730 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000730: 97 02 00 00  	auipc	t0, 0
80000734: 93 82 82 39  	addi	t0, t0, 920

80000738 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000738: 17 03 00 00  	auipc	t1, 0
8000073c: 13 03 03 39  	addi	t1, t1, 912

80000740 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000740: 97 03 00 00  	auipc	t2, 0
80000744: 93 83 83 38  	addi	t2, t2, 904

80000748 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000748: 17 0e 00 00  	auipc	t3, 0
8000074c: 13 0e 0e 39  	addi	t3, t3, 912
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000750: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000754: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000758: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000075c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000760: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000764: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000768: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000076c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000770: 63 dc 62 00  	bge	t0, t1, 0x80000788 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000774: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000778: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000077c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000780: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000784: e3 c8 62 fe  	blt	t0, t1, 0x80000774 <.Lpcrel_hi7+0x2c>

80000788 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000788: 97 02 00 00  	auipc	t0, 0
8000078c: 93 82 02 34  	addi	t0, t0, 832

80000790 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000790: 17 03 00 00  	auipc	t1, 0
80000794: 13 03 83 34  	addi	t1, t1, 840
;     bge       t0, t1, 2f
80000798: 63 da 62 00  	bge	t0, t1, 0x800007ac <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000079c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800007a0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800007a4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800007a8: e3 ca 72 fe  	blt	t0, t2, 0x8000079c <.Lpcrel_hi9+0xc>

800007ac <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800007ac: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800007b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800007b4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800007b8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800007bc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
800007c0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
800007c4: 97 00 00 00  	auipc	ra, 0
800007c8: e7 80 00 bf  	jalr	-1040(ra)
;     lw        a0, 0(sp)
800007cc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
800007d0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
800007d4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
800007d8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
800007dc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
800007e0: 13 01 41 01  	addi	sp, sp, 20

800007e4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
800007e4: 97 02 00 00  	auipc	t0, 0
800007e8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
800007ec: 73 90 52 30  	csrw	mtvec, t0

800007f0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
800007f0: 97 00 00 00  	auipc	ra, 0
800007f4: e7 80 00 22  	jalr	544(ra)

800007f8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
800007f8: 97 00 00 00  	auipc	ra, 0
800007fc: e7 80 80 80  	jalr	-2040(ra)
;     mv        s0, a0 # store return value in s0
80000800: 13 04 05 00  	mv	s0, a0

80000804 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000804: 97 00 00 00  	auipc	ra, 0
80000808: e7 80 c0 20  	jalr	524(ra)

8000080c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000080c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000810: 97 00 00 00  	auipc	ra, 0
80000814: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000818: 73 00 50 10  	wfi	
;     j       1b
8000081c: 6f f0 df ff  	j	0x80000818 <snrt.crt0.end+0xc>

80000820 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000820: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000824: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000828: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000082c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000830: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000834: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000838: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000083c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000840: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000844: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000848: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000084c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000850: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000854: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000858: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000085c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000860: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000864: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000868: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000086c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000870: 63 84 02 08  	beqz	t0, 0x800008f8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000874: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000878: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000087c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000880: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000884: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000888: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000088c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000890: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000894: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000898: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000089c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800008a0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800008a4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800008a8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800008ac: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800008b0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800008b4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800008b8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800008bc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
800008c0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
800008c4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
800008c8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
800008cc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
800008d0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
800008d4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
800008d8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
800008dc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
800008e0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
800008e4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
800008e8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
800008ec: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
800008f0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
800008f4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
800008f8: 97 00 00 00  	auipc	ra, 0
800008fc: e7 80 c0 c5  	jalr	-932(ra)
;     csrr    t0, misa
80000900: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000904: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000908: 63 84 02 08  	beqz	t0, 0x80000990 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000090c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000910: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000914: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000918: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000091c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000920: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000924: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000928: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000092c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000930: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000934: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000938: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
8000093c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000940: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000944: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000948: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
8000094c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000950: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000954: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000958: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
8000095c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000960: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000964: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000968: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000096c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000970: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000974: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000978: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000097c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000980: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000984: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000988: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000098c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000990: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000994: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000998: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000099c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
800009a0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
800009a4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
800009a8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
800009ac: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
800009b0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
800009b4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
800009b8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
800009bc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
800009c0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
800009c4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
800009c8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
800009cc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
800009d0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
800009d4: 13 01 01 05  	addi	sp, sp, 80
;     mret
800009d8: 73 00 20 30  	mret	

800009dc <_snrt_init_core_info>:
;     mv        a4, a1
800009dc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
800009e0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
800009e4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
800009e8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
800009ec: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
800009f0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
800009f4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
800009f8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
800009fc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000a00: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000a04: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000a08: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000a0c: 67 80 00 00  	ret

80000a10 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000a10: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000a14: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000a18: 97 00 00 00  	auipc	ra, 0
80000a1c: e7 80 40 b2  	jalr	-1244(ra)
;     lw        a0, 0(a0)
80000a20: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000a24: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000a28: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000a2c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000a30: 67 80 00 00  	ret

80000a34 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000a34: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000a38: 67 80 00 00  	ret

80000a3c <_snrt_exit>:
;     addi      sp, sp, -8
80000a3c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000a40: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000a44: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000a48: 97 00 00 00  	auipc	ra, 0
80000a4c: e7 80 40 ad  	jalr	-1324(ra)
;     lw        t0, 0(sp)
80000a50: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000a54: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000a58: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000a5c: 63 1c 05 00  	bnez	a0, 0x80000a74 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000a60: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000a64: 93 e2 12 00  	ori	t0, t0, 1

80000a68 <.Lpcrel_hi11>:
;     la        t1, tohost
80000a68: 17 03 00 00  	auipc	t1, 0
80000a6c: 13 03 83 01  	addi	t1, t1, 24
;     sw        t0, 0(t1)
80000a70: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000a74: 67 80 00 00  	ret
