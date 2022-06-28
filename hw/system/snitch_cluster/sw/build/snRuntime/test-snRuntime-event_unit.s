
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-event_unit:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             000008c4 80000000 TEXT
  2 .init             00000468 800008d0 TEXT
  3 .rodata           00000008 80000d38 DATA
  4 .htif             00000048 80000d40 DATA
  5 .tdata            00000000 80000d88 DATA
  6 .tbss             00000014 80000d88 BSS
  7 .tbssend          00000000 80000d9c DATA
  8 .sdata            00000000 80000d9c DATA
  9 .data             00000000 80000d9c DATA
 10 .sbss             00000010 80000d9c BSS
 11 .bss              00000000 80000dac BSS
 12 .dram             00000000 80000dac DATA
 13 .debug_info       00002ab1 00000000 
 14 .debug_abbrev     00000af7 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002056 00000000 
 17 .debug_loc        00000834 00000000 
 18 .debug_ranges     00000290 00000000 
 19 .debug_str        00000920 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000218 00000000 
 23 .symtab           00001920 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000052b 00000000 


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
800000dc: 13 01 01 fe  	addi	sp, sp, -32
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800000e0: 23 2e 11 00  	sw	ra, 28(sp)
800000e4: 23 2c 81 00  	sw	s0, 24(sp)
800000e8: 23 2a 91 00  	sw	s1, 20(sp)
800000ec: 23 28 21 01  	sw	s2, 16(sp)
800000f0: 23 26 31 01  	sw	s3, 12(sp)
800000f4: 23 24 41 01  	sw	s4, 8(sp)
800000f8: 23 22 51 01  	sw	s5, 4(sp)
800000fc: 23 20 61 01  	sw	s6, 0(sp)
80000100: 37 05 00 00  	lui	a0, 0
80000104: 33 05 45 00  	add	a0, a0, tp
80000108: 83 24 45 00  	lw	s1, 4(a0)
;     if (snrt_cluster_core_idx() == 0) {
8000010c: 63 8c 04 06  	beqz	s1, 0x80000184 <.LBB0_59+0x70>
80000110: 13 b5 14 00  	seqz	a0, s1

80000114 <.LBB0_59>:
80000114: 97 15 00 00  	auipc	a1, 1
80000118: 93 85 05 c9  	addi	a1, a1, -880
;         while (!eu_p_global)
8000011c: 03 a6 05 00  	lw	a2, 0(a1)
80000120: e3 0e 06 fe  	beqz	a2, 0x8000011c <.LBB0_59+0x8>
;         eu_p = eu_p_global;
80000124: 03 a4 05 00  	lw	s0, 0(a1)
80000128: b7 05 00 00  	lui	a1, 0
8000012c: b3 85 45 00  	add	a1, a1, tp
80000130: 23 a4 85 00  	sw	s0, 8(a1)
80000134: 63 1c 05 0a  	bnez	a0, 0x800001ec <.LBB0_60+0xc>
;     return _snrt_team_current->root->cluster_core_num;
80000138: 37 05 00 00  	lui	a0, 0
8000013c: 33 05 45 00  	add	a0, a0, tp
80000140: 03 25 05 00  	lw	a0, 0(a0)
80000144: 03 25 05 00  	lw	a0, 0(a0)
80000148: 03 25 c5 01  	lw	a0, 28(a0)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
8000014c: 13 05 f5 ff  	addi	a0, a0, -1
80000150: 63 f2 a4 06  	bgeu	s1, a0, 0x800001b4 <.LBB0_59+0xa0>
80000154: 93 09 10 00  	addi	s3, zero, 1
;     __atomic_add_fetch(&eu_p->workers_in_loop, 1, __ATOMIC_RELAXED);
80000158: 2f 25 34 01  	amoadd.w	a0, s3, (s0)
8000015c: 37 09 08 00  	lui	s2, 128
;     set_csr(mie, 1 << irq);
80000160: 73 25 49 30  	csrrs	a0, mie, s2
;         if (eu_p->exit_flag) {
80000164: 37 05 00 00  	lui	a0, 0
80000168: 33 04 45 00  	add	s0, a0, tp
8000016c: 83 25 84 00  	lw	a1, 8(s0)
80000170: 03 a5 45 00  	lw	a0, 4(a1)
80000174: 63 06 05 34  	beqz	a0, 0x800004c0 <.LBB0_63+0x288>
80000178: 13 04 00 00  	mv	s0, zero
;     set_csr(mie, 1 << irq);
8000017c: 73 25 49 30  	csrrs	a0, mie, s2
80000180: 6f 00 40 31  	j	0x80000494 <.LBB0_63+0x25c>
;     return _snrt_team_current->root;
80000184: 37 05 00 00  	lui	a0, 0
80000188: 33 05 45 00  	add	a0, a0, tp
8000018c: 03 25 05 00  	lw	a0, 0(a0)
80000190: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000194: 03 24 85 05  	lw	s0, 88(a0)
80000198: 03 26 05 05  	lw	a2, 80(a0)
8000019c: 83 26 45 05  	lw	a3, 84(a0)
800001a0: 93 05 84 02  	addi	a1, s0, 40
800001a4: 33 86 c6 00  	add	a2, a3, a2
800001a8: 63 7a b6 00  	bgeu	a2, a1, 0x800001bc <.LBB0_59+0xa8>
800001ac: 13 04 00 00  	mv	s0, zero
800001b0: 6f 00 00 01  	j	0x800001c0 <.LBB0_59+0xac>
800001b4: 13 04 00 00  	mv	s0, zero
800001b8: 6f 00 c0 2d  	j	0x80000494 <.LBB0_63+0x25c>
;     alloc->next += size;
800001bc: 23 2c b5 04  	sw	a1, 88(a0)
;         eu_p = snrt_l1alloc(sizeof(eu_t));
800001c0: 37 05 00 00  	lui	a0, 0
800001c4: 33 05 45 00  	add	a0, a0, tp
800001c8: 23 24 85 00  	sw	s0, 8(a0)
;         *((uint8_t *)ptr + i) = (unsigned char)value;
800001cc: 13 06 40 02  	addi	a2, zero, 36
800001d0: 13 05 04 00  	mv	a0, s0
800001d4: 93 05 00 00  	mv	a1, zero
800001d8: 97 00 00 00  	auipc	ra, 0
800001dc: e7 80 80 e2  	jalr	-472(ra)

800001e0 <.LBB0_60>:
;         eu_p_global = eu_p;
800001e0: 17 15 00 00  	auipc	a0, 1
800001e4: 13 05 45 bc  	addi	a0, a0, -1084
800001e8: 23 20 85 00  	sw	s0, 0(a0)
800001ec: 37 05 00 00  	lui	a0, 0
800001f0: 33 05 45 00  	add	a0, a0, tp
800001f4: 03 25 05 00  	lw	a0, 0(a0)
800001f8: 03 25 05 00  	lw	a0, 0(a0)
800001fc: 03 25 c5 01  	lw	a0, 28(a0)
80000200: 93 05 e5 ff  	addi	a1, a0, -2
;     return __atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED);
80000204: 03 26 c4 00  	lw	a2, 12(s0)
;         while (eu_get_workers_in_wfi() != (snrt_cluster_compute_core_num() - 1))
80000208: e3 1e b6 fe  	bne	a2, a1, 0x80000204 <.LBB0_60+0x24>

8000020c <.LBB0_61>:
;     sum = 0;
8000020c: 17 19 00 00  	auipc	s2, 1
80000210: 13 09 49 b9  	addi	s2, s2, -1132
80000214: 23 20 09 00  	sw	zero, 0(s2)

80000218 <.LBB0_62>:
;     arg = 10;
80000218: 97 14 00 00  	auipc	s1, 1
8000021c: 93 84 44 b8  	addi	s1, s1, -1148
80000220: 93 05 a0 00  	addi	a1, zero, 10
80000224: 23 a0 b4 00  	sw	a1, 0(s1)
;     uint32_t scratch = eu_p->workers_in_loop;
80000228: 83 25 04 00  	lw	a1, 0(s0)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
8000022c: 03 26 c4 00  	lw	a2, 12(s0)
80000230: e3 1e b6 fe  	bne	a2, a1, 0x8000022c <.LBB0_62+0x14>
;     return snrt_cluster_core_num() - 1;
80000234: 13 05 f5 ff  	addi	a0, a0, -1

80000238 <.LBB0_63>:
;     eu_p->e.fn = fn;
80000238: 97 09 00 00  	auipc	s3, 0
8000023c: 93 89 09 2f  	addi	s3, s3, 752
80000240: 23 28 34 01  	sw	s3, 16(s0)
;     eu_p->e.data = data;
80000244: 23 2a 94 00  	sw	s1, 20(s0)
80000248: 13 06 10 00  	addi	a2, zero, 1
;     eu_p->e.argc = argc;
8000024c: 23 2c c4 00  	sw	a2, 24(s0)
;     eu_p->e.nthreads = nthreads;
80000250: 23 2e a4 00  	sw	a0, 28(s0)
;     scratch = eu_p->e.nthreads;
80000254: 83 26 c4 01  	lw	a3, 28(s0)
80000258: 63 88 06 08  	beqz	a3, 0x800002e8 <.LBB0_63+0xb0>
;     eu_p->e.fini_count = 0;
8000025c: 23 20 04 02  	sw	zero, 32(s0)
;     if (scratch > 1) wake_workers();
80000260: 93 85 f6 ff  	addi	a1, a3, -1
80000264: 63 88 c6 02  	beq	a3, a2, 0x80000294 <.LBB0_63+0x5c>
;     uint32_t scratch = eu_p->workers_in_loop;
80000268: 03 26 04 00  	lw	a2, 0(s0)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
8000026c: 83 26 c4 00  	lw	a3, 12(s0)
80000270: e3 9e c6 fe  	bne	a3, a2, 0x8000026c <.LBB0_63+0x34>
80000274: 13 06 f0 ff  	addi	a2, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000278: b7 06 00 00  	lui	a3, 0
8000027c: b3 86 46 00  	add	a3, a3, tp
80000280: 83 a6 06 01  	lw	a3, 16(a3)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
80000284: 33 15 a6 00  	sll	a0, a2, a0
80000288: 13 45 f5 ff  	not	a0, a0
8000028c: 13 75 e5 ff  	andi	a0, a0, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000290: 23 a0 a6 00  	sw	a0, 0(a3)
;     if (core_idx < eu_p->e.nthreads) {
80000294: 03 25 c4 01  	lw	a0, 28(s0)
80000298: 13 ba 15 00  	seqz	s4, a1
8000029c: 63 0a 05 00  	beqz	a0, 0x800002b0 <.LBB0_63+0x78>
;         eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
800002a0: 03 26 04 01  	lw	a2, 16(s0)
800002a4: 03 25 44 01  	lw	a0, 20(s0)
800002a8: 83 25 84 01  	lw	a1, 24(s0)
800002ac: e7 00 06 00  	jalr	a2
800002b0: 37 05 00 00  	lui	a0, 0
800002b4: 33 05 45 00  	add	a0, a0, tp
800002b8: 03 24 85 00  	lw	s0, 8(a0)
800002bc: 63 18 0a 00  	bnez	s4, 0x800002cc <.LBB0_63+0x94>
;     return __atomic_load_n(&eu_p->workers_in_loop, __ATOMIC_RELAXED);
800002c0: 03 25 04 00  	lw	a0, 0(s0)
;         while (__atomic_load_n(&eu_p->e.fini_count, __ATOMIC_RELAXED) !=
800002c4: 83 25 04 02  	lw	a1, 32(s0)
800002c8: e3 9e a5 fe  	bne	a1, a0, 0x800002c4 <.LBB0_63+0x8c>
;     eu_p->e.nthreads = 0;
800002cc: 23 2e 04 00  	sw	zero, 28(s0)
;     return _snrt_team_current->root->cluster_core_num;
800002d0: 37 05 00 00  	lui	a0, 0
800002d4: 33 05 45 00  	add	a0, a0, tp
800002d8: 03 25 05 00  	lw	a0, 0(a0)
800002dc: 03 25 05 00  	lw	a0, 0(a0)
800002e0: 03 25 c5 01  	lw	a0, 28(a0)
;     return snrt_cluster_core_num() - 1;
800002e4: 13 05 f5 ff  	addi	a0, a0, -1
;     err |= (sum != snrt_cluster_compute_core_num()) << 0;
800002e8: 03 26 09 00  	lw	a2, 0(s2)
;     sum = 0;
800002ec: 23 20 09 00  	sw	zero, 0(s2)
800002f0: 93 05 40 01  	addi	a1, zero, 20
;     arg = 20;
800002f4: 23 a0 b4 00  	sw	a1, 0(s1)
;     uint32_t scratch = eu_p->workers_in_loop;
800002f8: 83 25 04 00  	lw	a1, 0(s0)
;     err |= (sum != snrt_cluster_compute_core_num()) << 0;
800002fc: 33 46 a6 00  	xor	a2, a2, a0
80000300: 33 3a c0 00  	snez	s4, a2
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
80000304: 03 26 c4 00  	lw	a2, 12(s0)
80000308: e3 1e b6 fe  	bne	a2, a1, 0x80000304 <.LBB0_63+0xcc>
;     eu_p->e.fn = fn;
8000030c: 23 28 34 01  	sw	s3, 16(s0)
;     eu_p->e.data = data;
80000310: 23 2a 94 00  	sw	s1, 20(s0)
80000314: 13 06 10 00  	addi	a2, zero, 1
;     eu_p->e.argc = argc;
80000318: 23 2c c4 00  	sw	a2, 24(s0)
8000031c: 93 05 40 00  	addi	a1, zero, 4
;     eu_p->e.nthreads = nthreads;
80000320: 23 2e b4 00  	sw	a1, 28(s0)
;     scratch = eu_p->e.nthreads;
80000324: 83 26 c4 01  	lw	a3, 28(s0)
80000328: 63 8c 06 06  	beqz	a3, 0x800003a0 <.LBB0_63+0x168>
;     eu_p->e.fini_count = 0;
8000032c: 23 20 04 02  	sw	zero, 32(s0)
;     if (scratch > 1) wake_workers();
80000330: 93 85 f6 ff  	addi	a1, a3, -1
80000334: 63 88 c6 02  	beq	a3, a2, 0x80000364 <.LBB0_63+0x12c>
;     uint32_t scratch = eu_p->workers_in_loop;
80000338: 03 26 04 00  	lw	a2, 0(s0)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
8000033c: 83 26 c4 00  	lw	a3, 12(s0)
80000340: e3 9e c6 fe  	bne	a3, a2, 0x8000033c <.LBB0_63+0x104>
80000344: 13 06 f0 ff  	addi	a2, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000348: b7 06 00 00  	lui	a3, 0
8000034c: b3 86 46 00  	add	a3, a3, tp
80000350: 83 a6 06 01  	lw	a3, 16(a3)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
80000354: 33 15 a6 00  	sll	a0, a2, a0
80000358: 13 45 f5 ff  	not	a0, a0
8000035c: 13 75 e5 ff  	andi	a0, a0, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000360: 23 a0 a6 00  	sw	a0, 0(a3)
;     if (core_idx < eu_p->e.nthreads) {
80000364: 03 25 c4 01  	lw	a0, 28(s0)
80000368: 93 ba 15 00  	seqz	s5, a1
8000036c: 63 0a 05 00  	beqz	a0, 0x80000380 <.LBB0_63+0x148>
;         eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
80000370: 03 26 04 01  	lw	a2, 16(s0)
80000374: 03 25 44 01  	lw	a0, 20(s0)
80000378: 83 25 84 01  	lw	a1, 24(s0)
8000037c: e7 00 06 00  	jalr	a2
80000380: 37 05 00 00  	lui	a0, 0
80000384: 33 05 45 00  	add	a0, a0, tp
80000388: 03 24 85 00  	lw	s0, 8(a0)
8000038c: 63 98 0a 00  	bnez	s5, 0x8000039c <.LBB0_63+0x164>
;     return __atomic_load_n(&eu_p->workers_in_loop, __ATOMIC_RELAXED);
80000390: 03 25 04 00  	lw	a0, 0(s0)
;         while (__atomic_load_n(&eu_p->e.fini_count, __ATOMIC_RELAXED) !=
80000394: 83 25 04 02  	lw	a1, 32(s0)
80000398: e3 9e a5 fe  	bne	a1, a0, 0x80000394 <.LBB0_63+0x15c>
;     eu_p->e.nthreads = 0;
8000039c: 23 2e 04 00  	sw	zero, 28(s0)
;     err |= (sum != 4) << 1;
800003a0: 03 25 09 00  	lw	a0, 0(s2)
;     sum = 0;
800003a4: 23 20 09 00  	sw	zero, 0(s2)
800003a8: 93 05 e0 01  	addi	a1, zero, 30
;     arg = 30;
800003ac: 23 a0 b4 00  	sw	a1, 0(s1)
;     uint32_t scratch = eu_p->workers_in_loop;
800003b0: 83 25 04 00  	lw	a1, 0(s0)
;     err |= (sum != 4) << 1;
800003b4: 13 05 c5 ff  	addi	a0, a0, -4
800003b8: 33 35 a0 00  	snez	a0, a0
800003bc: 13 15 15 00  	slli	a0, a0, 1
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
800003c0: 03 26 c4 00  	lw	a2, 12(s0)
800003c4: e3 1e b6 fe  	bne	a2, a1, 0x800003c0 <.LBB0_63+0x188>
;     eu_p->e.fn = fn;
800003c8: 23 28 34 01  	sw	s3, 16(s0)
;     eu_p->e.data = data;
800003cc: 23 2a 94 00  	sw	s1, 20(s0)
800003d0: 93 05 10 00  	addi	a1, zero, 1
;     eu_p->e.argc = argc;
800003d4: 23 2c b4 00  	sw	a1, 24(s0)
;     eu_p->e.nthreads = nthreads;
800003d8: 23 2e b4 00  	sw	a1, 28(s0)
;     scratch = eu_p->e.nthreads;
800003dc: 03 26 c4 01  	lw	a2, 28(s0)
;     err |= (sum != 4) << 1;
800003e0: b3 69 45 01  	or	s3, a0, s4
800003e4: 63 08 06 08  	beqz	a2, 0x80000474 <.LBB0_63+0x23c>
;     eu_p->e.fini_count = 0;
800003e8: 23 20 04 02  	sw	zero, 32(s0)
;     if (scratch > 1) wake_workers();
800003ec: 13 05 f6 ff  	addi	a0, a2, -1
800003f0: 63 04 b6 04  	beq	a2, a1, 0x80000438 <.LBB0_63+0x200>
;     uint32_t scratch = eu_p->workers_in_loop;
800003f4: 83 25 04 00  	lw	a1, 0(s0)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
800003f8: 03 26 c4 00  	lw	a2, 12(s0)
800003fc: e3 1e b6 fe  	bne	a2, a1, 0x800003f8 <.LBB0_63+0x1c0>
;     return _snrt_team_current->root->cluster_core_num;
80000400: b7 05 00 00  	lui	a1, 0
80000404: b3 85 45 00  	add	a1, a1, tp
80000408: 83 a5 05 00  	lw	a1, 0(a1)
8000040c: 83 a5 05 00  	lw	a1, 0(a1)
80000410: 83 a5 c5 01  	lw	a1, 28(a1)
;     return snrt_cluster_core_num() - 1;
80000414: 93 85 f5 ff  	addi	a1, a1, -1
80000418: 13 06 f0 ff  	addi	a2, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000041c: b7 06 00 00  	lui	a3, 0
80000420: b3 86 46 00  	add	a3, a3, tp
80000424: 83 a6 06 01  	lw	a3, 16(a3)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
80000428: b3 15 b6 00  	sll	a1, a2, a1
8000042c: 93 c5 f5 ff  	not	a1, a1
80000430: 93 f5 e5 ff  	andi	a1, a1, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000434: 23 a0 b6 00  	sw	a1, 0(a3)
;     if (core_idx < eu_p->e.nthreads) {
80000438: 83 25 c4 01  	lw	a1, 28(s0)
8000043c: 93 34 15 00  	seqz	s1, a0
80000440: 63 8a 05 00  	beqz	a1, 0x80000454 <.LBB0_63+0x21c>
;         eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
80000444: 03 26 04 01  	lw	a2, 16(s0)
80000448: 03 25 44 01  	lw	a0, 20(s0)
8000044c: 83 25 84 01  	lw	a1, 24(s0)
80000450: e7 00 06 00  	jalr	a2
80000454: 37 05 00 00  	lui	a0, 0
80000458: 33 05 45 00  	add	a0, a0, tp
8000045c: 03 25 85 00  	lw	a0, 8(a0)
80000460: 63 98 04 00  	bnez	s1, 0x80000470 <.LBB0_63+0x238>
;     return __atomic_load_n(&eu_p->workers_in_loop, __ATOMIC_RELAXED);
80000464: 83 25 05 00  	lw	a1, 0(a0)
;         while (__atomic_load_n(&eu_p->e.fini_count, __ATOMIC_RELAXED) !=
80000468: 03 26 05 02  	lw	a2, 32(a0)
8000046c: e3 1e b6 fe  	bne	a2, a1, 0x80000468 <.LBB0_63+0x230>
;     eu_p->e.nthreads = 0;
80000470: 23 2e 05 00  	sw	zero, 28(a0)
;     err |= (sum != 1) << 2;
80000474: 03 25 09 00  	lw	a0, 0(s2)
80000478: 13 05 f5 ff  	addi	a0, a0, -1
8000047c: 33 35 a0 00  	snez	a0, a0
80000480: 13 15 25 00  	slli	a0, a0, 2
80000484: 33 e4 a9 00  	or	s0, s3, a0
;     eu_exit(core_idx);
80000488: 13 05 00 00  	mv	a0, zero
8000048c: 97 00 00 00  	auipc	ra, 0
80000490: e7 80 80 0e  	jalr	232(ra)
; }
80000494: 13 05 04 00  	mv	a0, s0
80000498: 03 2b 01 00  	lw	s6, 0(sp)
8000049c: 83 2a 41 00  	lw	s5, 4(sp)
800004a0: 03 2a 81 00  	lw	s4, 8(sp)
800004a4: 83 29 c1 00  	lw	s3, 12(sp)
800004a8: 03 29 01 01  	lw	s2, 16(sp)
800004ac: 83 24 41 01  	lw	s1, 20(sp)
800004b0: 03 24 81 01  	lw	s0, 24(sp)
800004b4: 83 20 c1 01  	lw	ra, 28(sp)
800004b8: 13 01 01 02  	addi	sp, sp, 32
800004bc: 67 80 00 00  	ret
800004c0: 33 9a 99 00  	sll	s4, s3, s1
800004c4: 37 05 00 00  	lui	a0, 0
800004c8: b3 0a 45 00  	add	s5, a0, tp
800004cc: 13 0b f0 ff  	addi	s6, zero, -1
800004d0: 6f 00 40 03  	j	0x80000504 <.LBB0_63+0x2cc>
;         __atomic_add_fetch(&eu_p->e.fini_count, 1, __ATOMIC_RELAXED);
800004d4: 13 85 05 02  	addi	a0, a1, 32
800004d8: 2f 25 35 01  	amoadd.w	a0, s3, (a0)
;     __atomic_add_fetch(&eu_p->workers_wfi, 1, __ATOMIC_RELAXED);
800004dc: 13 85 c5 00  	addi	a0, a1, 12
800004e0: 2f 25 35 01  	amoadd.w	a0, s3, (a0)
; static inline void snrt_wfi() { asm volatile("wfi"); }
800004e4: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800004e8: 03 a5 0a 01  	lw	a0, 16(s5)
800004ec: 23 24 45 01  	sw	s4, 8(a0)
;     __atomic_add_fetch(&eu_p->workers_wfi, -1, __ATOMIC_RELAXED);
800004f0: 83 25 84 00  	lw	a1, 8(s0)
800004f4: 13 85 c5 00  	addi	a0, a1, 12
800004f8: 2f 25 65 01  	amoadd.w	a0, s6, (a0)
;         if (eu_p->exit_flag) {
800004fc: 03 a5 45 00  	lw	a0, 4(a1)
80000500: e3 1c 05 c6  	bnez	a0, 0x80000178 <.LBB0_59+0x64>
;         if (cluster_core_idx < eu_p->e.nthreads) {
80000504: 03 a5 c5 01  	lw	a0, 28(a1)
80000508: e3 f6 a4 fc  	bgeu	s1, a0, 0x800004d4 <.LBB0_63+0x29c>
;             nthds = eu_p->e.nthreads;
8000050c: 03 a5 c5 01  	lw	a0, 28(a1)
;             eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
80000510: 03 a6 05 01  	lw	a2, 16(a1)
80000514: 03 a5 45 01  	lw	a0, 20(a1)
80000518: 83 a5 85 01  	lw	a1, 24(a1)
8000051c: e7 00 06 00  	jalr	a2
;         __atomic_add_fetch(&eu_p->e.fini_count, 1, __ATOMIC_RELAXED);
80000520: 83 25 84 00  	lw	a1, 8(s0)
80000524: 6f f0 1f fb  	j	0x800004d4 <.LBB0_63+0x29c>

80000528 <task>:
;     __atomic_add_fetch(&sum, 1, __ATOMIC_RELAXED);
80000528: 17 15 00 00  	auipc	a0, 1
8000052c: 13 05 85 87  	addi	a0, a0, -1928
80000530: 93 05 10 00  	addi	a1, zero, 1
80000534: 2f 25 b5 00  	amoadd.w	a0, a1, (a0)
; }
80000538: 67 80 00 00  	ret

8000053c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000053c: 37 05 00 00  	lui	a0, 0
80000540: 33 05 45 00  	add	a0, a0, tp
80000544: 03 25 05 00  	lw	a0, 0(a0)
80000548: 03 25 05 00  	lw	a0, 0(a0)
8000054c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000550: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000554: 33 85 a5 40  	sub	a0, a1, a0
80000558: 67 80 00 00  	ret

8000055c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
8000055c: 37 05 00 00  	lui	a0, 0
80000560: 33 05 45 00  	add	a0, a0, tp
80000564: 03 25 05 00  	lw	a0, 0(a0)
80000568: 03 25 05 00  	lw	a0, 0(a0)
8000056c: 03 25 05 07  	lw	a0, 112(a0)
80000570: 67 80 00 00  	ret

80000574 <eu_exit>:
; void eu_exit(uint32_t core_idx) {
80000574: 13 01 01 ff  	addi	sp, sp, -16
;     if (!eu_p->e.nthreads) eu_run_empty(core_idx);
80000578: 23 26 11 00  	sw	ra, 12(sp)
8000057c: 23 24 81 00  	sw	s0, 8(sp)
80000580: b7 05 00 00  	lui	a1, 0
80000584: b3 85 45 00  	add	a1, a1, tp
80000588: 83 a5 85 00  	lw	a1, 8(a1)
8000058c: 03 a6 c5 01  	lw	a2, 28(a1)
80000590: 63 1e 06 08  	bnez	a2, 0x8000062c <eu_exit+0xb8>
;     scratch = eu_p->e.nthreads;
80000594: 83 a6 c5 01  	lw	a3, 28(a1)
;     if (!scratch) return;
80000598: 63 8a 06 08  	beqz	a3, 0x8000062c <eu_exit+0xb8>
;     eu_p->e.fini_count = 0;
8000059c: 23 a0 05 02  	sw	zero, 32(a1)
800005a0: 13 07 10 00  	addi	a4, zero, 1
;     if (scratch > 1) wake_workers();
800005a4: 13 86 f6 ff  	addi	a2, a3, -1
800005a8: 63 84 e6 04  	beq	a3, a4, 0x800005f0 <eu_exit+0x7c>
;     uint32_t scratch = eu_p->workers_in_loop;
800005ac: 83 a6 05 00  	lw	a3, 0(a1)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
800005b0: 03 a7 c5 00  	lw	a4, 12(a1)
800005b4: e3 1e d7 fe  	bne	a4, a3, 0x800005b0 <eu_exit+0x3c>
;     return _snrt_team_current->root->cluster_core_num;
800005b8: b7 06 00 00  	lui	a3, 0
800005bc: b3 86 46 00  	add	a3, a3, tp
800005c0: 83 a6 06 00  	lw	a3, 0(a3)
800005c4: 83 a6 06 00  	lw	a3, 0(a3)
800005c8: 83 a6 c6 01  	lw	a3, 28(a3)
;     return snrt_cluster_core_num() - 1;
800005cc: 93 86 f6 ff  	addi	a3, a3, -1
800005d0: 13 07 f0 ff  	addi	a4, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800005d4: b7 07 00 00  	lui	a5, 0
800005d8: b3 87 47 00  	add	a5, a5, tp
800005dc: 83 a7 07 01  	lw	a5, 16(a5)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
800005e0: b3 16 d7 00  	sll	a3, a4, a3
800005e4: 93 c6 f6 ff  	not	a3, a3
800005e8: 93 f6 e6 ff  	andi	a3, a3, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800005ec: 23 a0 d7 00  	sw	a3, 0(a5)
;     if (core_idx < eu_p->e.nthreads) {
800005f0: 83 a6 c5 01  	lw	a3, 28(a1)
800005f4: 13 34 16 00  	seqz	s0, a2
;     if (core_idx < eu_p->e.nthreads) {
800005f8: 63 7a d5 00  	bgeu	a0, a3, 0x8000060c <eu_exit+0x98>
;         eu_p->e.fn(eu_p->e.data, eu_p->e.argc);
800005fc: 03 a6 05 01  	lw	a2, 16(a1)
80000600: 03 a5 45 01  	lw	a0, 20(a1)
80000604: 83 a5 85 01  	lw	a1, 24(a1)
80000608: e7 00 06 00  	jalr	a2
8000060c: 37 05 00 00  	lui	a0, 0
80000610: 33 05 45 00  	add	a0, a0, tp
80000614: 83 25 85 00  	lw	a1, 8(a0)
;     if (scratch > 1) {
80000618: 63 18 04 00  	bnez	s0, 0x80000628 <eu_exit+0xb4>
;     return __atomic_load_n(&eu_p->workers_in_loop, __ATOMIC_RELAXED);
8000061c: 03 a5 05 00  	lw	a0, 0(a1)
;         while (__atomic_load_n(&eu_p->e.fini_count, __ATOMIC_RELAXED) !=
80000620: 03 a6 05 02  	lw	a2, 32(a1)
80000624: e3 1e a6 fe  	bne	a2, a0, 0x80000620 <eu_exit+0xac>
;     eu_p->e.nthreads = 0;
80000628: 23 ae 05 00  	sw	zero, 28(a1)
;     uint32_t scratch = eu_p->workers_in_loop;
8000062c: 03 a5 05 00  	lw	a0, 0(a1)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
80000630: 03 a6 c5 00  	lw	a2, 12(a1)
80000634: e3 1e a6 fe  	bne	a2, a0, 0x80000630 <eu_exit+0xbc>
80000638: 13 05 10 00  	addi	a0, zero, 1
;     eu_p->exit_flag = 1;
8000063c: 23 a2 a5 00  	sw	a0, 4(a1)
;     uint32_t scratch = eu_p->workers_in_loop;
80000640: 03 a5 05 00  	lw	a0, 0(a1)
;     while (__atomic_load_n(&eu_p->workers_wfi, __ATOMIC_RELAXED) != scratch)
80000644: 03 a6 c5 00  	lw	a2, 12(a1)
80000648: e3 1e a6 fe  	bne	a2, a0, 0x80000644 <eu_exit+0xd0>
;     return _snrt_team_current->root->cluster_core_num;
8000064c: 37 05 00 00  	lui	a0, 0
80000650: 33 05 45 00  	add	a0, a0, tp
80000654: 03 25 05 00  	lw	a0, 0(a0)
80000658: 03 25 05 00  	lw	a0, 0(a0)
8000065c: 03 25 c5 01  	lw	a0, 28(a0)
;     return snrt_cluster_core_num() - 1;
80000660: 13 05 f5 ff  	addi	a0, a0, -1
80000664: 93 05 f0 ff  	addi	a1, zero, -1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000668: 37 06 00 00  	lui	a2, 0
8000066c: 33 06 46 00  	add	a2, a2, tp
80000670: 03 26 06 01  	lw	a2, 16(a2)
;     snrt_int_cluster_set(~0x1 & ((1 << numcores) - 1));
80000674: 33 95 a5 00  	sll	a0, a1, a0
80000678: 13 45 f5 ff  	not	a0, a0
8000067c: 13 75 e5 ff  	andi	a0, a0, -2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000680: 23 20 a6 00  	sw	a0, 0(a2)
; }
80000684: 03 24 81 00  	lw	s0, 8(sp)
80000688: 83 20 c1 00  	lw	ra, 12(sp)
8000068c: 13 01 01 01  	addi	sp, sp, 16
80000690: 67 80 00 00  	ret

80000694 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000694: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000698: 63 44 05 00  	bltz	a0, 0x800006a0 <__snrt_isr+0xc>
;         while (1)
8000069c: 6f 00 00 00  	j	0x8000069c <__snrt_isr+0x8>
800006a0: b7 05 00 80  	lui	a1, 524288
800006a4: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800006a8: 33 75 b5 00  	and	a0, a0, a1
800006ac: 13 05 d5 ff  	addi	a0, a0, -3
800006b0: 93 55 25 00  	srli	a1, a0, 2
800006b4: 13 15 e5 01  	slli	a0, a0, 30
800006b8: 33 65 b5 00  	or	a0, a0, a1
800006bc: 93 05 40 00  	addi	a1, zero, 4
800006c0: 63 0a b5 06  	beq	a0, a1, 0x80000734 <.LBB2_7+0x58>
800006c4: 63 1a 05 08  	bnez	a0, 0x80000758 <.LBB2_7+0x7c>
800006c8: 37 05 00 00  	lui	a0, 0
800006cc: 33 05 45 00  	add	a0, a0, tp
800006d0: 03 25 05 00  	lw	a0, 0(a0)
800006d4: 03 25 05 00  	lw	a0, 0(a0)
800006d8: f3 25 40 f1  	csrr	a1, mhartid

800006dc <.LBB2_7>:
;     asm volatile(
800006dc: 17 06 00 00  	auipc	a2, 0
800006e0: 13 06 c6 6c  	addi	a2, a2, 1740
800006e4: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
800006e8: 93 06 06 00  	mv	a3, a2
800006ec: 93 02 10 00  	addi	t0, zero, 1
800006f0: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800006f4: e3 9e 02 fe  	bnez	t0, 0x800006f0 <.LBB2_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
800006f8: b7 06 00 00  	lui	a3, 0
800006fc: b3 86 46 00  	add	a3, a3, tp
80000700: 83 a6 c6 00  	lw	a3, 12(a3)
80000704: 33 85 a5 40  	sub	a0, a1, a0
80000708: 93 55 35 00  	srli	a1, a0, 3
8000070c: 93 f5 c5 ff  	andi	a1, a1, -4
80000710: b3 85 b6 00  	add	a1, a3, a1
80000714: 83 a6 05 00  	lw	a3, 0(a1)
80000718: 13 07 10 00  	addi	a4, zero, 1
8000071c: 33 15 a7 00  	sll	a0, a4, a0
80000720: 13 45 f5 ff  	not	a0, a0
80000724: 33 f5 a6 00  	and	a0, a3, a0
80000728: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000072c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000730: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000734: 37 05 00 00  	lui	a0, 0
80000738: 33 05 45 00  	add	a0, a0, tp
8000073c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000740: b7 05 00 00  	lui	a1, 0
80000744: b3 85 45 00  	add	a1, a1, tp
80000748: 83 a5 05 01  	lw	a1, 16(a1)
8000074c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000750: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000754: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000758: 67 80 00 00  	ret

8000075c <_snrt_init_team>:
;     team->base.root = team;
8000075c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000760: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000764: 03 23 87 00  	lw	t1, 8(a4)
80000768: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000076c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80000770: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000774: 83 22 47 00  	lw	t0, 4(a4)
80000778: 33 88 08 03  	mul	a6, a7, a6
8000077c: 33 05 58 02  	mul	a0, a6, t0
80000780: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000784: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000788: 33 85 68 40  	sub	a0, a7, t1
8000078c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80000790: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000794: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000798: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
8000079c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
800007a0: 03 25 87 01  	lw	a0, 24(a4)
800007a4: b7 05 00 10  	lui	a1, 65536
800007a8: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
800007ac: 23 a2 07 02  	sw	zero, 36(a5)
800007b0: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
800007b4: 03 25 07 02  	lw	a0, 32(a4)
800007b8: 83 25 47 02  	lw	a1, 36(a4)
800007bc: 23 a4 a7 02  	sw	a0, 40(a5)
800007c0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
800007c4: 23 a8 c7 02  	sw	a2, 48(a5)
800007c8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
800007cc: 23 ac d7 02  	sw	a3, 56(a5)
800007d0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
800007d4: 03 25 07 01  	lw	a0, 16(a4)
800007d8: 33 08 a6 00  	add	a6, a2, a0
800007dc: 93 05 08 19  	addi	a1, a6, 400
800007e0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
800007e4: b3 32 a8 00  	sltu	t0, a6, a0
800007e8: 93 55 15 00  	srli	a1, a0, 1
800007ec: 33 03 b8 00  	add	t1, a6, a1
800007f0: b3 35 03 01  	sltu	a1, t1, a6
800007f4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800007f8: 23 a0 67 04  	sw	t1, 64(a5)
800007fc: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000800: 13 15 15 00  	slli	a0, a0, 1
80000804: b3 05 c5 00  	add	a1, a0, a2
80000808: 33 b5 a5 00  	sltu	a0, a1, a0
8000080c: 23 a4 b7 04  	sw	a1, 72(a5)
80000810: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000814: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000818: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
8000081c: 37 05 00 00  	lui	a0, 0
80000820: 33 05 45 00  	add	a0, a0, tp
80000824: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000828: 03 a5 07 00  	lw	a0, 0(a5)
8000082c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000830: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000834: b3 85 b8 40  	sub	a1, a7, a1
80000838: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
8000083c: b7 05 00 00  	lui	a1, 0
80000840: b3 85 45 00  	add	a1, a1, tp
80000844: 23 a2 a5 00  	sw	a0, 4(a1)
80000848: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
8000084c: 33 85 a8 02  	mul	a0, a7, a0

80000850 <.LBB0_1>:
80000850: 97 05 00 00  	auipc	a1, 0
80000854: 93 85 c5 55  	addi	a1, a1, 1372
80000858: 33 05 b5 00  	add	a0, a0, a1
8000085c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000860: 83 28 07 03  	lw	a7, 48(a4)
80000864: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000868: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
8000086c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80000870: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000874: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000878: 13 05 76 00  	addi	a0, a2, 7
8000087c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80000880: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000884: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000888: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
8000088c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80000890: 03 a5 05 00  	lw	a0, 0(a1)
80000894: 13 05 f5 44  	addi	a0, a0, 1103
80000898: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
8000089c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
800008a0: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
800008a4: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
800008a8: 37 05 00 00  	lui	a0, 0
800008ac: 33 05 45 00  	add	a0, a0, tp
800008b0: 23 26 15 01  	sw	a7, 12(a0)
;     cl_clint_p = team->peripherals.cl_clint;
800008b4: 37 05 00 00  	lui	a0, 0
800008b8: 33 05 45 00  	add	a0, a0, tp
800008bc: 23 28 e5 00  	sw	a4, 16(a0)
; }
800008c0: 67 80 00 00  	ret

Disassembly of section .init:

800008d0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
800008d0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
800008d4: 93 81 c1 cb  	addi	gp, gp, -836

800008d8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
800008d8: 97 00 00 00  	auipc	ra, 0
800008dc: e7 80 40 3c  	jalr	964(ra)

800008e0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
800008e0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
800008e4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
800008e8: 97 00 00 00  	auipc	ra, 0
800008ec: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800008f0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800008f4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800008f8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800008fc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000900: 63 92 02 02  	bnez	t0, 0x80000924 <snrt.crt0.init_registers>

80000904 <.Lpcrel_hi0>:
;     la        t0, _edata
80000904: 97 02 00 00  	auipc	t0, 0
80000908: 93 82 82 49  	addi	t0, t0, 1176

8000090c <.Lpcrel_hi1>:
;     la        t1, _end
8000090c: 17 03 00 00  	auipc	t1, 0
80000910: 13 03 03 4a  	addi	t1, t1, 1184
;     bge       t0, t1, 2f
80000914: 63 d8 62 00  	bge	t0, t1, 0x80000924 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000918: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000091c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000920: e3 cc 62 fe  	blt	t0, t1, 0x80000918 <.Lpcrel_hi1+0xc>

80000924 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000924: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000928: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
8000092c: 63 82 02 08  	beqz	t0, 0x800009b0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000930: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000934: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000938: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
8000093c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000940: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000944: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000948: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
8000094c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000950: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000954: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000958: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000095c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000960: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000964: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000968: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000096c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000970: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000974: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000978: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000097c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000980: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000984: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000988: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000098c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000990: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000994: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000998: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000099c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
800009a0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
800009a4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
800009a8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
800009ac: d3 0f 00 d2  	fcvt.d.w	ft11, zero

800009b0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
800009b0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
800009b4: 23 a0 06 00  	sw	zero, 0(a3)

800009b8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
800009b8: 97 02 00 00  	auipc	t0, 0
800009bc: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
800009c0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
800009c4: 93 87 06 00  	mv	a5, a3

800009c8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
800009c8: 97 03 00 00  	auipc	t2, 0
800009cc: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
800009d0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
800009d4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
800009d8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
800009dc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
800009e0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
800009e4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
800009e8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
800009ec: b3 86 66 40  	sub	a3, a3, t1

800009f0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800009f0: 97 02 00 00  	auipc	t0, 0
800009f4: 93 82 82 39  	addi	t0, t0, 920

800009f8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800009f8: 17 03 00 00  	auipc	t1, 0
800009fc: 13 03 03 39  	addi	t1, t1, 912

80000a00 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000a00: 97 03 00 00  	auipc	t2, 0
80000a04: 93 83 83 38  	addi	t2, t2, 904

80000a08 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000a08: 17 0e 00 00  	auipc	t3, 0
80000a0c: 13 0e 4e 39  	addi	t3, t3, 916
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000a10: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000a14: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000a18: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80000a1c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80000a20: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80000a24: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80000a28: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80000a2c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80000a30: 63 dc 62 00  	bge	t0, t1, 0x80000a48 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80000a34: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80000a38: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80000a3c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a40: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80000a44: e3 c8 62 fe  	blt	t0, t1, 0x80000a34 <.Lpcrel_hi7+0x2c>

80000a48 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80000a48: 97 02 00 00  	auipc	t0, 0
80000a4c: 93 82 02 34  	addi	t0, t0, 832

80000a50 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000a50: 17 03 00 00  	auipc	t1, 0
80000a54: 13 03 c3 34  	addi	t1, t1, 844
;     bge       t0, t1, 2f
80000a58: 63 da 62 00  	bge	t0, t1, 0x80000a6c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80000a5c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000a60: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000a64: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000a68: e3 ca 72 fe  	blt	t0, t2, 0x80000a5c <.Lpcrel_hi9+0xc>

80000a6c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80000a6c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000a70: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000a74: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000a78: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80000a7c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000a80: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000a84: 97 00 00 00  	auipc	ra, 0
80000a88: e7 80 80 cd  	jalr	-808(ra)
;     lw        a0, 0(sp)
80000a8c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000a90: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000a94: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000a98: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80000a9c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000aa0: 13 01 41 01  	addi	sp, sp, 20

80000aa4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000aa4: 97 02 00 00  	auipc	t0, 0
80000aa8: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80000aac: 73 90 52 30  	csrw	mtvec, t0

80000ab0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000ab0: 97 00 00 00  	auipc	ra, 0
80000ab4: e7 80 00 22  	jalr	544(ra)

80000ab8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000ab8: 97 f0 ff ff  	auipc	ra, 1048575
80000abc: e7 80 40 62  	jalr	1572(ra)
;     mv        s0, a0 # store return value in s0
80000ac0: 13 04 05 00  	mv	s0, a0

80000ac4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000ac4: 97 00 00 00  	auipc	ra, 0
80000ac8: e7 80 c0 20  	jalr	524(ra)

80000acc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80000acc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000ad0: 97 00 00 00  	auipc	ra, 0
80000ad4: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000ad8: 73 00 50 10  	wfi	
;     j       1b
80000adc: 6f f0 df ff  	j	0x80000ad8 <snrt.crt0.end+0xc>

80000ae0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000ae0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000ae4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000ae8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80000aec: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000af0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000af4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000af8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80000afc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000b00: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000b04: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000b08: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80000b0c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000b10: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000b14: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000b18: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80000b1c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80000b20: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80000b24: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80000b28: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000b2c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000b30: 63 84 02 08  	beqz	t0, 0x80000bb8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80000b34: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80000b38: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80000b3c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80000b40: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80000b44: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80000b48: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80000b4c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000b50: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000b54: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000b58: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80000b5c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000b60: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000b64: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000b68: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80000b6c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000b70: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000b74: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000b78: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80000b7c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000b80: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000b84: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000b88: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80000b8c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000b90: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000b94: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000b98: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80000b9c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000ba0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000ba4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000ba8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80000bac: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000bb0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000bb4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000bb8: 97 00 00 00  	auipc	ra, 0
80000bbc: e7 80 c0 ad  	jalr	-1316(ra)
;     csrr    t0, misa
80000bc0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000bc4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000bc8: 63 84 02 08  	beqz	t0, 0x80000c50 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000bcc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000bd0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000bd4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000bd8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000bdc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000be0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000be4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000be8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000bec: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000bf0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000bf4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000bf8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000bfc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000c00: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000c04: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000c08: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000c0c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000c10: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000c14: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000c18: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000c1c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000c20: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000c24: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000c28: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000c2c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000c30: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000c34: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000c38: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000c3c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000c40: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000c44: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000c48: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000c4c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000c50: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000c54: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000c58: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000c5c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000c60: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000c64: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000c68: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000c6c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000c70: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000c74: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000c78: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000c7c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000c80: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000c84: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000c88: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000c8c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000c90: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000c94: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000c98: 73 00 20 30  	mret	

80000c9c <_snrt_init_core_info>:
;     mv        a4, a1
80000c9c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000ca0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000ca4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000ca8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000cac: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000cb0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000cb4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000cb8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000cbc: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000cc0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000cc4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000cc8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000ccc: 67 80 00 00  	ret

80000cd0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000cd0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000cd4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000cd8: 97 00 00 00  	auipc	ra, 0
80000cdc: e7 80 40 88  	jalr	-1916(ra)
;     lw        a0, 0(a0)
80000ce0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000ce4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000ce8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000cec: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000cf0: 67 80 00 00  	ret

80000cf4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000cf4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000cf8: 67 80 00 00  	ret

80000cfc <_snrt_exit>:
;     addi      sp, sp, -8
80000cfc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000d00: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000d04: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000d08: 97 00 00 00  	auipc	ra, 0
80000d0c: e7 80 40 83  	jalr	-1996(ra)
;     lw        t0, 0(sp)
80000d10: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000d14: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000d18: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000d1c: 63 1c 05 00  	bnez	a0, 0x80000d34 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000d20: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000d24: 93 e2 12 00  	ori	t0, t0, 1

80000d28 <.Lpcrel_hi11>:
;     la        t1, tohost
80000d28: 17 03 00 00  	auipc	t1, 0
80000d2c: 13 03 83 01  	addi	t1, t1, 24
;     sw        t0, 0(t1)
80000d30: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000d34: 67 80 00 00  	ret
