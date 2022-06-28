
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-data_mover:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00000ea4 80000000 TEXT
  2 .init             00000468 80000eb0 TEXT
  3 .rodata           00000008 80001318 DATA
  4 .htif             00000048 80001340 DATA
  5 .tdata            00000000 80001388 DATA
  6 .tbss             00000014 80001388 BSS
  7 .tbssend          00000000 8000139c DATA
  8 .sdata            00000000 8000139c DATA
  9 .data             00000000 8000139c DATA
 10 .sbss             00000008 8000139c BSS
 11 .bss              00000000 800013a4 BSS
 12 .dram             00000000 800013a4 DATA
 13 .debug_info       000033fb 00000000 
 14 .debug_abbrev     00000b63 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       0000251d 00000000 
 17 .debug_loc        00000a9a 00000000 
 18 .debug_ranges     00000568 00000000 
 19 .debug_str        000009b5 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000208 00000000 
 23 .symtab           00001bd0 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           000004ec 00000000 


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
;     return _snrt_team_current->root->cluster_core_num;
800000e0: 23 2e 11 00  	sw	ra, 28(sp)
800000e4: 23 2c 81 00  	sw	s0, 24(sp)
800000e8: 23 2a 91 00  	sw	s1, 20(sp)
800000ec: 23 28 21 01  	sw	s2, 16(sp)
800000f0: 23 26 31 01  	sw	s3, 12(sp)
800000f4: 37 05 00 00  	lui	a0, 0
800000f8: 33 05 45 00  	add	a0, a0, tp
800000fc: 83 29 05 00  	lw	s3, 0(a0)
80000100: 83 a5 09 00  	lw	a1, 0(s3)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000104: 37 06 00 00  	lui	a2, 0
80000108: 33 06 46 00  	add	a2, a2, tp
;     return _snrt_team_current->root->cluster_core_num;
8000010c: 83 a5 c5 01  	lw	a1, 28(a1)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000110: 03 29 46 00  	lw	s2, 4(a2)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000114: 93 85 f5 ff  	addi	a1, a1, -1

80000118 <.LBB0_104>:
80000118: 97 14 00 00  	auipc	s1, 1
8000011c: 93 84 44 28  	addi	s1, s1, 644
;     if (snrt_is_dm_core()) {
80000120: 63 76 b9 04  	bgeu	s2, a1, 0x8000016c <.LBB0_104+0x54>
;         while (!dm_p_global)
80000124: 03 a5 04 00  	lw	a0, 0(s1)
80000128: e3 0e 05 fe  	beqz	a0, 0x80000124 <.LBB0_104+0xc>
;         dm_p = dm_p_global;
8000012c: 03 a4 04 00  	lw	s0, 0(s1)
80000130: 37 05 00 00  	lui	a0, 0
80000134: 33 05 45 00  	add	a0, a0, tp
80000138: 23 24 85 00  	sw	s0, 8(a0)
;     if (core_idx == 0) {
8000013c: 63 06 09 08  	beqz	s2, 0x800001c8 <.LBB0_104+0xb0>
;     return _snrt_team_current->root->cluster_core_num;
80000140: 03 a5 09 00  	lw	a0, 0(s3)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000144: b7 05 00 00  	lui	a1, 0
80000148: b3 85 45 00  	add	a1, a1, tp
;     return _snrt_team_current->root->cluster_core_num;
8000014c: 03 25 c5 01  	lw	a0, 28(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000150: 83 a5 45 00  	lw	a1, 4(a1)
;     return snrt_cluster_core_idx() < snrt_cluster_core_num() - 1;
80000154: 13 05 f5 ff  	addi	a0, a0, -1
;     } else if (snrt_is_dm_core()) {
80000158: 63 e6 a5 00  	bltu	a1, a0, 0x80000164 <.LBB0_104+0x4c>
;         dm_main();
8000015c: 97 10 00 00  	auipc	ra, 1
80000160: e7 80 c0 9a  	jalr	-1620(ra)
80000164: 13 05 00 00  	mv	a0, zero
80000168: 6f 00 d0 14  	j	0x80000ab4 <.LBB0_104+0x99c>
8000016c: b7 05 08 00  	lui	a1, 128
;     set_csr(mie, 1 << irq);
80000170: f3 a5 45 30  	csrrs	a1, mie, a1
;     return _snrt_team_current->root;
80000174: 83 29 05 00  	lw	s3, 0(a0)
80000178: 03 a5 09 00  	lw	a0, 0(s3)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000017c: 03 24 85 05  	lw	s0, 88(a0)
80000180: 03 26 05 05  	lw	a2, 80(a0)
80000184: 83 26 45 05  	lw	a3, 84(a0)
80000188: 93 05 04 0c  	addi	a1, s0, 192
8000018c: 33 86 c6 00  	add	a2, a3, a2
80000190: 63 76 b6 00  	bgeu	a2, a1, 0x8000019c <.LBB0_104+0x84>
80000194: 13 04 00 00  	mv	s0, zero
80000198: 6f 00 80 00  	j	0x800001a0 <.LBB0_104+0x88>
;     alloc->next += size;
8000019c: 23 2c b5 04  	sw	a1, 88(a0)
;         dm_p = (dm_t *)snrt_l1alloc(sizeof(dm_t));
800001a0: 37 05 00 00  	lui	a0, 0
800001a4: 33 05 45 00  	add	a0, a0, tp
800001a8: 23 24 85 00  	sw	s0, 8(a0)
;         *((uint8_t *)ptr + i) = (unsigned char)value;
800001ac: 13 06 00 0c  	addi	a2, zero, 192
800001b0: 13 05 04 00  	mv	a0, s0
800001b4: 93 05 00 00  	mv	a1, zero
800001b8: 97 00 00 00  	auipc	ra, 0
800001bc: e7 80 80 e4  	jalr	-440(ra)
;         dm_p_global = dm_p;
800001c0: 23 a0 84 00  	sw	s0, 0(s1)
;     if (core_idx == 0) {
800001c4: e3 1e 09 f6  	bnez	s2, 0x80000140 <.LBB0_104+0x28>
;     _dm_mtx_lock();
800001c8: 13 05 c4 0a  	addi	a0, s0, 172
;     asm volatile(
800001cc: 93 02 10 00  	addi	t0, zero, 1
800001d0: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
800001d4: e3 9e 02 fe  	bnez	t0, 0x800001d0 <.LBB0_104+0xb8>
;     dm_p->stat_pvalid = 0;
800001d8: 37 05 00 00  	lui	a0, 0
800001dc: 33 05 45 00  	add	a0, a0, tp
800001e0: 03 25 85 00  	lw	a0, 8(a0)
800001e4: 23 2c 05 0a  	sw	zero, 184(a0)
800001e8: 93 05 30 00  	addi	a1, zero, 3
;     dm_p->stat_q = STAT_READY;
800001ec: 23 28 b5 0a  	sw	a1, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800001f0: 83 25 c5 0b  	lw	a1, 188(a0)
800001f4: e3 8e 05 fe  	beqz	a1, 0x800001f0 <.LBB0_104+0xd8>
;     return _snrt_team_current->root->cluster_core_num;
800001f8: b7 05 00 00  	lui	a1, 0
800001fc: b3 85 45 00  	add	a1, a1, tp
80000200: 83 a5 05 00  	lw	a1, 0(a1)
80000204: 83 a5 05 00  	lw	a1, 0(a1)
80000208: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000020c: 37 06 00 00  	lui	a2, 0
80000210: 33 06 46 00  	add	a2, a2, tp
80000214: 03 26 06 01  	lw	a2, 16(a2)
;     return snrt_cluster_core_num() - 1;
80000218: 93 85 f5 ff  	addi	a1, a1, -1
8000021c: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000220: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000224: 23 20 b6 00  	sw	a1, 0(a2)
;     while (!dm_p->stat_pvalid)
80000228: 83 25 85 0b  	lw	a1, 184(a0)
8000022c: e3 8e 05 fe  	beqz	a1, 0x80000228 <.LBB0_104+0x110>
;     _dm_mtx_release();
80000230: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000234: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
;     return _snrt_team_current->root;
80000238: 37 05 00 00  	lui	a0, 0
8000023c: 33 05 45 00  	add	a0, a0, tp
80000240: 03 25 05 00  	lw	a0, 0(a0)
80000244: 03 25 05 00  	lw	a0, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000248: 83 23 85 05  	lw	t2, 88(a0)
8000024c: 83 25 05 05  	lw	a1, 80(a0)
80000250: 03 26 45 05  	lw	a2, 84(a0)
80000254: 13 87 03 20  	addi	a4, t2, 512
80000258: 33 06 b6 00  	add	a2, a2, a1
8000025c: 63 74 e6 04  	bgeu	a2, a4, 0x800002a4 <.LBB0_104+0x18c>
80000260: 93 05 00 00  	mv	a1, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
80000264: 93 06 07 00  	mv	a3, a4
80000268: 63 68 d6 04  	bltu	a2, a3, 0x800002b8 <.LBB0_104+0x1a0>
;     void *ret = (void *)alloc->next;
8000026c: 93 87 03 00  	mv	a5, t2
;     alloc->next += size;
80000270: 23 2c d5 04  	sw	a3, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000274: 13 84 06 20  	addi	s0, a3, 512
80000278: 93 83 06 00  	mv	t2, a3
8000027c: 63 64 86 04  	bltu	a2, s0, 0x800002c4 <.LBB0_104+0x1ac>
;     void *ret = (void *)alloc->next;
80000280: 13 8e 03 00  	mv	t3, t2
;     alloc->next += size;
80000284: 23 2c 85 04  	sw	s0, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000288: 93 04 04 20  	addi	s1, s0, 512
8000028c: 93 03 04 00  	mv	t2, s0
80000290: 63 60 96 04  	bltu	a2, s1, 0x800002d0 <.LBB0_104+0x1b8>
;     void *ret = (void *)alloc->next;
80000294: 93 8e 03 00  	mv	t4, t2
;     alloc->next += size;
80000298: 23 2c 95 04  	sw	s1, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
8000029c: 93 83 04 00  	mv	t2, s1
800002a0: 6f 00 40 03  	j	0x800002d4 <.LBB0_104+0x1bc>
;     void *ret = (void *)alloc->next;
800002a4: 93 85 03 00  	mv	a1, t2
;     alloc->next += size;
800002a8: 23 2c e5 04  	sw	a4, 88(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
800002ac: 93 86 03 40  	addi	a3, t2, 1024
800002b0: 93 03 07 00  	mv	t2, a4
800002b4: e3 7c d6 fa  	bgeu	a2, a3, 0x8000026c <.LBB0_104+0x154>
800002b8: 93 07 00 00  	mv	a5, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800002bc: 13 84 06 00  	mv	s0, a3
800002c0: e3 70 86 fc  	bgeu	a2, s0, 0x80000280 <.LBB0_104+0x168>
800002c4: 13 0e 00 00  	mv	t3, zero
;     if (alloc->next + size > alloc->base + alloc->size) {
800002c8: 93 04 04 00  	mv	s1, s0
800002cc: e3 74 96 fc  	bgeu	a2, s1, 0x80000294 <.LBB0_104+0x17c>
800002d0: 93 0e 00 00  	mv	t4, zero
800002d4: b7 16 00 00  	lui	a3, 1
800002d8: 93 84 06 80  	addi	s1, a3, -2048
;     if (alloc->next + size > alloc->base + alloc->size) {
800002dc: b3 86 93 00  	add	a3, t2, s1
800002e0: 63 76 d6 00  	bgeu	a2, a3, 0x800002ec <.LBB0_104+0x1d4>
800002e4: 93 03 00 00  	mv	t2, zero
800002e8: 6f 00 80 00  	j	0x800002f0 <.LBB0_104+0x1d8>
;     alloc->next += size;
800002ec: 23 2c d5 04  	sw	a3, 88(a0)
;     void *ret = (void *)alloc->next;
800002f0: 03 26 45 06  	lw	a2, 100(a0)
800002f4: 13 04 00 00  	mv	s0, zero
;     alloc->next += size;
800002f8: b3 86 c4 00  	add	a3, s1, a2
800002fc: 93 86 06 20  	addi	a3, a3, 512
80000300: 23 22 d5 06  	sw	a3, 100(a0)
80000304: 13 05 00 08  	addi	a0, zero, 128
80000308: 93 86 05 00  	mv	a3, a1
;     for (uint32_t i = 0; i < n_elem; ++i) l1_a[i] = i;
8000030c: 23 a0 86 00  	sw	s0, 0(a3)
80000310: 13 04 14 00  	addi	s0, s0, 1
80000314: 93 86 46 00  	addi	a3, a3, 4
80000318: e3 1a a4 fe  	bne	s0, a0, 0x8000030c <.LBB0_104+0x1f4>
8000031c: 37 05 00 00  	lui	a0, 0
80000320: 33 05 45 00  	add	a0, a0, tp
80000324: 03 25 85 00  	lw	a0, 8(a0)
;     alloc->next += size;
80000328: 13 03 06 20  	addi	t1, a2, 512
8000032c: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000330: 83 26 85 0a  	lw	a3, 168(a0)
80000334: e3 6e d6 fe  	bltu	a2, a3, 0x80000330 <.LBB0_104+0x218>
;     _dm_mtx_lock();
80000338: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
8000033c: 93 02 10 00  	addi	t0, zero, 1
80000340: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000344: e3 9e 02 fe  	bnez	t0, 0x80000340 <.LBB0_104+0x228>
;     t = &dm_p->queue[dm_p->queue_front];
80000348: 37 05 00 00  	lui	a0, 0
8000034c: 33 05 45 00  	add	a0, a0, tp
80000350: 03 26 85 00  	lw	a2, 8(a0)
80000354: 83 26 46 0a  	lw	a3, 164(a2)
80000358: 93 04 80 02  	addi	s1, zero, 40
;     t->src = (uint64_t)src;
8000035c: b3 86 96 02  	mul	a3, a3, s1
80000360: b3 06 d6 00  	add	a3, a2, a3
80000364: 23 a2 06 00  	sw	zero, 4(a3)
80000368: 23 a0 b6 00  	sw	a1, 0(a3)
;     t->dst = (uint64_t)dest;
8000036c: 23 a6 06 00  	sw	zero, 12(a3)
80000370: 23 a4 f6 00  	sw	a5, 8(a3)
80000374: 93 04 00 20  	addi	s1, zero, 512
;     t->size = (uint32_t)n;
80000378: 23 a8 96 00  	sw	s1, 16(a3)
;     t->twod = 0;
8000037c: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
80000380: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000384: 93 06 86 0a  	addi	a3, a2, 168
80000388: 93 04 10 00  	addi	s1, zero, 1
8000038c: af a6 96 00  	amoadd.w	a3, s1, (a3)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000390: 83 26 46 0a  	lw	a3, 164(a2)
80000394: 93 86 16 00  	addi	a3, a3, 1
80000398: 93 f6 36 00  	andi	a3, a3, 3
8000039c: 23 22 d6 0a  	sw	a3, 164(a2)
;     _dm_mtx_release();
800003a0: 13 06 c6 0a  	addi	a2, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800003a4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
800003a8: 03 25 85 00  	lw	a0, 8(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800003ac: 03 26 c5 0b  	lw	a2, 188(a0)
800003b0: e3 0e 06 fe  	beqz	a2, 0x800003ac <.LBB0_104+0x294>
;     return _snrt_team_current->root->cluster_core_num;
800003b4: 37 06 00 00  	lui	a2, 0
800003b8: 33 06 46 00  	add	a2, a2, tp
800003bc: 03 26 06 00  	lw	a2, 0(a2)
800003c0: 03 26 06 00  	lw	a2, 0(a2)
800003c4: 03 26 c6 01  	lw	a2, 28(a2)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800003c8: b7 06 00 00  	lui	a3, 0
800003cc: b3 86 46 00  	add	a3, a3, tp
800003d0: 83 a6 06 01  	lw	a3, 16(a3)
;     return snrt_cluster_core_num() - 1;
800003d4: 13 06 f6 ff  	addi	a2, a2, -1
800003d8: 93 04 10 00  	addi	s1, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800003dc: 33 96 c4 00  	sll	a2, s1, a2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800003e0: 23 a0 c6 00  	sw	a2, 0(a3)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800003e4: 03 26 85 0a  	lw	a2, 168(a0)
800003e8: e3 1e 06 fe  	bnez	a2, 0x800003e4 <.LBB0_104+0x2cc>
;     while (dm_p->stat_q)
800003ec: 03 26 05 0b  	lw	a2, 176(a0)
800003f0: e3 1e 06 fe  	bnez	a2, 0x800003ec <.LBB0_104+0x2d4>
;     _dm_mtx_lock();
800003f4: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
800003f8: 93 02 10 00  	addi	t0, zero, 1
800003fc: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000400: e3 9e 02 fe  	bnez	t0, 0x800003fc <.LBB0_104+0x2e4>
;     dm_p->stat_pvalid = 0;
80000404: 37 05 00 00  	lui	a0, 0
80000408: 33 05 45 00  	add	a0, a0, tp
8000040c: 03 25 85 00  	lw	a0, 8(a0)
80000410: 23 2c 05 0a  	sw	zero, 184(a0)
80000414: 13 06 10 00  	addi	a2, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
80000418: 23 28 c5 0a  	sw	a2, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
8000041c: 03 26 c5 0b  	lw	a2, 188(a0)
80000420: e3 0e 06 fe  	beqz	a2, 0x8000041c <.LBB0_104+0x304>
;     return _snrt_team_current->root->cluster_core_num;
80000424: 37 06 00 00  	lui	a2, 0
80000428: 33 06 46 00  	add	a2, a2, tp
8000042c: 03 26 06 00  	lw	a2, 0(a2)
80000430: 03 26 06 00  	lw	a2, 0(a2)
80000434: 03 26 c6 01  	lw	a2, 28(a2)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000438: b7 06 00 00  	lui	a3, 0
8000043c: b3 86 46 00  	add	a3, a3, tp
80000440: 83 a6 06 01  	lw	a3, 16(a3)
;     return snrt_cluster_core_num() - 1;
80000444: 13 06 f6 ff  	addi	a2, a2, -1
80000448: 93 04 10 00  	addi	s1, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
8000044c: 33 96 c4 00  	sll	a2, s1, a2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000450: 23 a0 c6 00  	sw	a2, 0(a3)
;     while (!dm_p->stat_pvalid)
80000454: 03 26 85 0b  	lw	a2, 184(a0)
80000458: e3 0e 06 fe  	beqz	a2, 0x80000454 <.LBB0_104+0x33c>
8000045c: 93 04 00 00  	mv	s1, zero
80000460: 13 06 00 00  	mv	a2, zero
;     _dm_mtx_release();
80000464: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000468: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
8000046c: 13 05 00 20  	addi	a0, zero, 512
;         if (a[i] != b[i]) {
80000470: b3 86 95 00  	add	a3, a1, s1
80000474: 83 a6 06 00  	lw	a3, 0(a3)
80000478: 33 84 97 00  	add	s0, a5, s1
8000047c: 03 24 04 00  	lw	s0, 0(s0)
80000480: b3 c6 86 00  	xor	a3, a3, s0
80000484: b3 36 d0 00  	snez	a3, a3
;     for (uint32_t i = 0; i < n; ++i) {
80000488: 93 84 44 00  	addi	s1, s1, 4
;         if (a[i] != b[i]) {
8000048c: 33 06 d6 00  	add	a2, a2, a3
80000490: e3 90 a4 fe  	bne	s1, a0, 0x80000470 <.LBB0_104+0x358>
80000494: 13 05 10 00  	addi	a0, zero, 1
80000498: 93 04 10 08  	addi	s1, zero, 129
8000049c: 93 86 07 00  	mv	a3, a5
;     for (uint32_t i = 0; i < n_elem; ++i) l1_b[i] = i + 1;
800004a0: 23 a0 a6 00  	sw	a0, 0(a3)
800004a4: 13 05 15 00  	addi	a0, a0, 1
800004a8: 93 86 46 00  	addi	a3, a3, 4
800004ac: e3 1a 95 fe  	bne	a0, s1, 0x800004a0 <.LBB0_104+0x388>
800004b0: 37 05 00 00  	lui	a0, 0
800004b4: 33 05 45 00  	add	a0, a0, tp
800004b8: 03 25 85 00  	lw	a0, 8(a0)
;     if (mismatch) {
800004bc: 13 38 16 00  	seqz	a6, a2
800004c0: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800004c4: 83 26 85 0a  	lw	a3, 168(a0)
800004c8: e3 6e d6 fe  	bltu	a2, a3, 0x800004c4 <.LBB0_104+0x3ac>
;     _dm_mtx_lock();
800004cc: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
800004d0: 93 02 10 00  	addi	t0, zero, 1
800004d4: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
800004d8: e3 9e 02 fe  	bnez	t0, 0x800004d4 <.LBB0_104+0x3bc>
;     t = &dm_p->queue[dm_p->queue_front];
800004dc: 37 05 00 00  	lui	a0, 0
800004e0: 33 05 45 00  	add	a0, a0, tp
800004e4: 03 26 85 00  	lw	a2, 8(a0)
800004e8: 83 26 46 0a  	lw	a3, 164(a2)
800004ec: 93 04 80 02  	addi	s1, zero, 40
;     t->src = (uint64_t)src;
800004f0: b3 86 96 02  	mul	a3, a3, s1
800004f4: b3 06 d6 00  	add	a3, a2, a3
800004f8: 23 a2 06 00  	sw	zero, 4(a3)
800004fc: 23 a0 f6 00  	sw	a5, 0(a3)
;     t->dst = (uint64_t)dest;
80000500: 23 a6 06 00  	sw	zero, 12(a3)
80000504: 23 a4 b6 00  	sw	a1, 8(a3)
80000508: 93 04 00 20  	addi	s1, zero, 512
;     t->size = (uint32_t)n;
8000050c: 23 a8 96 00  	sw	s1, 16(a3)
;     t->twod = 0;
80000510: 23 a2 06 02  	sw	zero, 36(a3)
;     t->cfg = 0;
80000514: 23 a0 06 02  	sw	zero, 32(a3)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000518: 93 06 86 0a  	addi	a3, a2, 168
8000051c: 93 04 10 00  	addi	s1, zero, 1
80000520: af a6 96 00  	amoadd.w	a3, s1, (a3)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000524: 83 26 46 0a  	lw	a3, 164(a2)
80000528: 93 86 16 00  	addi	a3, a3, 1
8000052c: 93 f6 36 00  	andi	a3, a3, 3
80000530: 23 22 d6 0a  	sw	a3, 164(a2)
;     _dm_mtx_release();
80000534: 13 06 c6 0a  	addi	a2, a2, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000538: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
8000053c: 03 25 85 00  	lw	a0, 8(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000540: 03 26 c5 0b  	lw	a2, 188(a0)
80000544: e3 0e 06 fe  	beqz	a2, 0x80000540 <.LBB0_104+0x428>
;     return _snrt_team_current->root->cluster_core_num;
80000548: 37 06 00 00  	lui	a2, 0
8000054c: 33 06 46 00  	add	a2, a2, tp
80000550: 03 26 06 00  	lw	a2, 0(a2)
80000554: 03 26 06 00  	lw	a2, 0(a2)
80000558: 03 26 c6 01  	lw	a2, 28(a2)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000055c: b7 06 00 00  	lui	a3, 0
80000560: b3 86 46 00  	add	a3, a3, tp
80000564: 83 a6 06 01  	lw	a3, 16(a3)
;     return snrt_cluster_core_num() - 1;
80000568: 13 06 f6 ff  	addi	a2, a2, -1
8000056c: 93 04 10 00  	addi	s1, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000570: 33 96 c4 00  	sll	a2, s1, a2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000574: 23 a0 c6 00  	sw	a2, 0(a3)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000578: 03 26 85 0a  	lw	a2, 168(a0)
8000057c: e3 1e 06 fe  	bnez	a2, 0x80000578 <.LBB0_104+0x460>
;     while (dm_p->stat_q)
80000580: 03 26 05 0b  	lw	a2, 176(a0)
80000584: e3 1e 06 fe  	bnez	a2, 0x80000580 <.LBB0_104+0x468>
;     _dm_mtx_lock();
80000588: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile(
8000058c: 93 02 10 00  	addi	t0, zero, 1
80000590: af 22 55 0c  	amoswap.w.aq	t0, t0, (a0)
80000594: e3 9e 02 fe  	bnez	t0, 0x80000590 <.LBB0_104+0x478>
;     dm_p->stat_pvalid = 0;
80000598: 37 05 00 00  	lui	a0, 0
8000059c: 33 05 45 00  	add	a0, a0, tp
800005a0: 03 25 85 00  	lw	a0, 8(a0)
800005a4: 23 2c 05 0a  	sw	zero, 184(a0)
800005a8: 13 06 10 00  	addi	a2, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
800005ac: 23 28 c5 0a  	sw	a2, 176(a0)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800005b0: 03 26 c5 0b  	lw	a2, 188(a0)
800005b4: e3 0e 06 fe  	beqz	a2, 0x800005b0 <.LBB0_104+0x498>
;     return _snrt_team_current->root->cluster_core_num;
800005b8: 37 06 00 00  	lui	a2, 0
800005bc: 33 06 46 00  	add	a2, a2, tp
800005c0: 03 26 06 00  	lw	a2, 0(a2)
800005c4: 03 26 06 00  	lw	a2, 0(a2)
800005c8: 03 26 c6 01  	lw	a2, 28(a2)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800005cc: b7 06 00 00  	lui	a3, 0
800005d0: b3 86 46 00  	add	a3, a3, tp
800005d4: 83 a6 06 01  	lw	a3, 16(a3)
;     return snrt_cluster_core_num() - 1;
800005d8: 13 06 f6 ff  	addi	a2, a2, -1
800005dc: 93 04 10 00  	addi	s1, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800005e0: 33 96 c4 00  	sll	a2, s1, a2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800005e4: 23 a0 c6 00  	sw	a2, 0(a3)
;     while (!dm_p->stat_pvalid)
800005e8: 03 26 85 0b  	lw	a2, 184(a0)
800005ec: e3 0e 06 fe  	beqz	a2, 0x800005e8 <.LBB0_104+0x4d0>
800005f0: 93 04 00 00  	mv	s1, zero
800005f4: 13 06 00 00  	mv	a2, zero
;     _dm_mtx_release();
800005f8: 13 05 c5 0a  	addi	a0, a0, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800005fc: 2f 20 05 0a  	amoswap.w.rl	zero, zero, (a0)
80000600: 13 05 00 20  	addi	a0, zero, 512
;         if (a[i] != b[i]) {
80000604: b3 86 95 00  	add	a3, a1, s1
80000608: 83 a6 06 00  	lw	a3, 0(a3)
8000060c: 33 84 97 00  	add	s0, a5, s1
80000610: 03 24 04 00  	lw	s0, 0(s0)
80000614: b3 c6 86 00  	xor	a3, a3, s0
80000618: b3 36 d0 00  	snez	a3, a3
;     for (uint32_t i = 0; i < n; ++i) {
8000061c: 93 84 44 00  	addi	s1, s1, 4
;         if (a[i] != b[i]) {
80000620: 33 06 d6 00  	add	a2, a2, a3
80000624: e3 90 a4 fe  	bne	s1, a0, 0x80000604 <.LBB0_104+0x4ec>
;     if (mismatch) {
80000628: 13 05 00 00  	mv	a0, zero
8000062c: 93 04 20 00  	addi	s1, zero, 2
80000630: 63 14 08 00  	bnez	a6, 0x80000638 <.LBB0_104+0x520>
80000634: 13 05 20 00  	addi	a0, zero, 2
80000638: 13 04 20 08  	addi	s0, zero, 130
8000063c: 93 86 05 00  	mv	a3, a1
;     for (uint32_t i = 0; i < n_elem; ++i) l1_a[i] = i + 2;
80000640: 23 a0 96 00  	sw	s1, 0(a3)
80000644: 93 84 14 00  	addi	s1, s1, 1
80000648: 93 86 46 00  	addi	a3, a3, 4
8000064c: e3 9a 84 fe  	bne	s1, s0, 0x80000640 <.LBB0_104+0x528>
80000650: 13 68 45 00  	ori	a6, a0, 4
80000654: 93 04 30 00  	addi	s1, zero, 3
80000658: 13 04 30 08  	addi	s0, zero, 131
8000065c: 93 06 0e 00  	mv	a3, t3
;     for (uint32_t i = 0; i < n_elem; ++i) l1_c[i] = i + 3;
80000660: 23 a0 96 00  	sw	s1, 0(a3)
80000664: 93 84 14 00  	addi	s1, s1, 1
80000668: 93 86 46 00  	addi	a3, a3, 4
8000066c: e3 9a 84 fe  	bne	s1, s0, 0x80000660 <.LBB0_104+0x548>
80000670: b7 06 00 00  	lui	a3, 0
80000674: b3 86 46 00  	add	a3, a3, tp
80000678: 83 a6 86 00  	lw	a3, 8(a3)
;     if (mismatch) {
8000067c: 93 38 16 00  	seqz	a7, a2
80000680: 13 06 30 00  	addi	a2, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000684: 83 a4 86 0a  	lw	s1, 168(a3)
80000688: e3 6e 96 fe  	bltu	a2, s1, 0x80000684 <.LBB0_104+0x56c>
;     _dm_mtx_lock();
8000068c: 13 86 c6 0a  	addi	a2, a3, 172
;     asm volatile(
80000690: 93 02 10 00  	addi	t0, zero, 1
80000694: af 22 56 0c  	amoswap.w.aq	t0, t0, (a2)
80000698: e3 9e 02 fe  	bnez	t0, 0x80000694 <.LBB0_104+0x57c>
;     t = &dm_p->queue[dm_p->queue_front];
8000069c: 37 06 00 00  	lui	a2, 0
800006a0: 33 06 46 00  	add	a2, a2, tp
800006a4: 83 26 86 00  	lw	a3, 8(a2)
800006a8: 83 a4 46 0a  	lw	s1, 164(a3)
800006ac: 13 04 80 02  	addi	s0, zero, 40
;     t->src = (uint64_t)src;
800006b0: b3 84 84 02  	mul	s1, s1, s0
800006b4: b3 84 96 00  	add	s1, a3, s1
800006b8: 23 a2 04 00  	sw	zero, 4(s1)
800006bc: 23 a0 b4 00  	sw	a1, 0(s1)
;     t->dst = (uint64_t)dest;
800006c0: 23 a6 04 00  	sw	zero, 12(s1)
800006c4: 23 a4 f4 00  	sw	a5, 8(s1)
800006c8: 13 04 00 20  	addi	s0, zero, 512
;     t->size = (uint32_t)n;
800006cc: 23 a8 84 00  	sw	s0, 16(s1)
;     t->twod = 0;
800006d0: 23 a2 04 02  	sw	zero, 36(s1)
;     t->cfg = 0;
800006d4: 23 a0 04 02  	sw	zero, 32(s1)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
800006d8: 93 84 86 0a  	addi	s1, a3, 168
800006dc: 13 04 10 00  	addi	s0, zero, 1
800006e0: af a4 84 00  	amoadd.w	s1, s0, (s1)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
800006e4: 83 a4 46 0a  	lw	s1, 164(a3)
800006e8: 93 84 14 00  	addi	s1, s1, 1
800006ec: 93 f4 34 00  	andi	s1, s1, 3
800006f0: 23 a2 96 0a  	sw	s1, 164(a3)
;     _dm_mtx_release();
800006f4: 93 86 c6 0a  	addi	a3, a3, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800006f8: 2f a0 06 0a  	amoswap.w.rl	zero, zero, (a3)
800006fc: 03 26 86 00  	lw	a2, 8(a2)
80000700: 93 06 30 00  	addi	a3, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
80000704: 83 24 86 0a  	lw	s1, 168(a2)
80000708: e3 ee 96 fe  	bltu	a3, s1, 0x80000704 <.LBB0_104+0x5ec>
;     _dm_mtx_lock();
8000070c: 13 06 c6 0a  	addi	a2, a2, 172
;     asm volatile(
80000710: 93 02 10 00  	addi	t0, zero, 1
80000714: af 22 56 0c  	amoswap.w.aq	t0, t0, (a2)
80000718: e3 9e 02 fe  	bnez	t0, 0x80000714 <.LBB0_104+0x5fc>
;     t = &dm_p->queue[dm_p->queue_front];
8000071c: 37 06 00 00  	lui	a2, 0
80000720: 33 06 46 00  	add	a2, a2, tp
80000724: 83 26 86 00  	lw	a3, 8(a2)
80000728: 83 a4 46 0a  	lw	s1, 164(a3)
8000072c: 13 04 80 02  	addi	s0, zero, 40
;     t->src = (uint64_t)src;
80000730: b3 84 84 02  	mul	s1, s1, s0
80000734: b3 84 96 00  	add	s1, a3, s1
80000738: 23 a2 04 00  	sw	zero, 4(s1)
8000073c: 23 a0 c4 01  	sw	t3, 0(s1)
;     t->dst = (uint64_t)dest;
80000740: 23 a6 04 00  	sw	zero, 12(s1)
80000744: 23 a4 d4 01  	sw	t4, 8(s1)
80000748: 13 04 00 20  	addi	s0, zero, 512
;     t->size = (uint32_t)n;
8000074c: 23 a8 84 00  	sw	s0, 16(s1)
;     t->twod = 0;
80000750: 23 a2 04 02  	sw	zero, 36(s1)
;     t->cfg = 0;
80000754: 23 a0 04 02  	sw	zero, 32(s1)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
80000758: 93 84 86 0a  	addi	s1, a3, 168
8000075c: 13 04 10 00  	addi	s0, zero, 1
80000760: af a4 84 00  	amoadd.w	s1, s0, (s1)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000764: 83 a4 46 0a  	lw	s1, 164(a3)
80000768: 93 84 14 00  	addi	s1, s1, 1
8000076c: 93 f4 34 00  	andi	s1, s1, 3
80000770: 23 a2 96 0a  	sw	s1, 164(a3)
;     _dm_mtx_release();
80000774: 93 86 c6 0a  	addi	a3, a3, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000778: 2f a0 06 0a  	amoswap.w.rl	zero, zero, (a3)
8000077c: 03 26 86 00  	lw	a2, 8(a2)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000780: 83 26 c6 0b  	lw	a3, 188(a2)
80000784: e3 8e 06 fe  	beqz	a3, 0x80000780 <.LBB0_104+0x668>
;     return _snrt_team_current->root->cluster_core_num;
80000788: b7 06 00 00  	lui	a3, 0
8000078c: b3 86 46 00  	add	a3, a3, tp
80000790: 83 a6 06 00  	lw	a3, 0(a3)
80000794: 83 a6 06 00  	lw	a3, 0(a3)
80000798: 83 a6 c6 01  	lw	a3, 28(a3)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000079c: b7 04 00 00  	lui	s1, 0
800007a0: b3 84 44 00  	add	s1, s1, tp
800007a4: 83 a4 04 01  	lw	s1, 16(s1)
;     return snrt_cluster_core_num() - 1;
800007a8: 93 86 f6 ff  	addi	a3, a3, -1
800007ac: 13 04 10 00  	addi	s0, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
800007b0: b3 16 d4 00  	sll	a3, s0, a3
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800007b4: 23 a0 d4 00  	sw	a3, 0(s1)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800007b8: 83 26 86 0a  	lw	a3, 168(a2)
800007bc: e3 9e 06 fe  	bnez	a3, 0x800007b8 <.LBB0_104+0x6a0>
;     while (dm_p->stat_q)
800007c0: 83 26 06 0b  	lw	a3, 176(a2)
800007c4: e3 9e 06 fe  	bnez	a3, 0x800007c0 <.LBB0_104+0x6a8>
;     _dm_mtx_lock();
800007c8: 13 06 c6 0a  	addi	a2, a2, 172
;     asm volatile(
800007cc: 93 02 10 00  	addi	t0, zero, 1
800007d0: af 22 56 0c  	amoswap.w.aq	t0, t0, (a2)
800007d4: e3 9e 02 fe  	bnez	t0, 0x800007d0 <.LBB0_104+0x6b8>
;     dm_p->stat_pvalid = 0;
800007d8: 37 06 00 00  	lui	a2, 0
800007dc: 33 06 46 00  	add	a2, a2, tp
800007e0: 83 24 86 00  	lw	s1, 8(a2)
800007e4: 23 ac 04 0a  	sw	zero, 184(s1)
800007e8: 13 06 10 00  	addi	a2, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
800007ec: 23 a8 c4 0a  	sw	a2, 176(s1)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800007f0: 03 a6 c4 0b  	lw	a2, 188(s1)
800007f4: e3 0e 06 fe  	beqz	a2, 0x800007f0 <.LBB0_104+0x6d8>
;     return _snrt_team_current->root->cluster_core_num;
800007f8: 37 06 00 00  	lui	a2, 0
800007fc: 33 06 46 00  	add	a2, a2, tp
80000800: 03 26 06 00  	lw	a2, 0(a2)
80000804: 03 26 06 00  	lw	a2, 0(a2)
80000808: 03 26 c6 01  	lw	a2, 28(a2)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000080c: b7 06 00 00  	lui	a3, 0
80000810: b3 86 46 00  	add	a3, a3, tp
80000814: 83 a6 06 01  	lw	a3, 16(a3)
;     return snrt_cluster_core_num() - 1;
80000818: 13 06 f6 ff  	addi	a2, a2, -1
8000081c: 13 04 10 00  	addi	s0, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000820: 33 16 c4 00  	sll	a2, s0, a2
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000824: 23 a0 c6 00  	sw	a2, 0(a3)
;     while (!dm_p->stat_pvalid)
80000828: 03 a6 84 0b  	lw	a2, 184(s1)
8000082c: e3 0e 06 fe  	beqz	a2, 0x80000828 <.LBB0_104+0x710>
80000830: 13 04 00 00  	mv	s0, zero
80000834: 13 06 00 00  	mv	a2, zero
;     _dm_mtx_release();
80000838: 93 86 c4 0a  	addi	a3, s1, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000083c: 2f a0 06 0a  	amoswap.w.rl	zero, zero, (a3)
80000840: 93 04 00 20  	addi	s1, zero, 512
;         if (a[i] != b[i]) {
80000844: b3 86 85 00  	add	a3, a1, s0
80000848: 83 a6 06 00  	lw	a3, 0(a3)
8000084c: 33 87 87 00  	add	a4, a5, s0
80000850: 03 27 07 00  	lw	a4, 0(a4)
80000854: b3 c6 e6 00  	xor	a3, a3, a4
80000858: b3 36 d0 00  	snez	a3, a3
;     for (uint32_t i = 0; i < n; ++i) {
8000085c: 13 04 44 00  	addi	s0, s0, 4
;         if (a[i] != b[i]) {
80000860: 33 06 d6 00  	add	a2, a2, a3
80000864: e3 10 94 fe  	bne	s0, s1, 0x80000844 <.LBB0_104+0x72c>
80000868: 93 07 00 00  	mv	a5, zero
8000086c: 93 06 00 00  	mv	a3, zero
80000870: 93 04 00 20  	addi	s1, zero, 512
;         if (a[i] != b[i]) {
80000874: b3 05 fe 00  	add	a1, t3, a5
80000878: 83 a5 05 00  	lw	a1, 0(a1)
8000087c: 33 87 fe 00  	add	a4, t4, a5
80000880: 03 27 07 00  	lw	a4, 0(a4)
80000884: b3 c5 e5 00  	xor	a1, a1, a4
80000888: b3 35 b0 00  	snez	a1, a1
;     for (uint32_t i = 0; i < n; ++i) {
8000088c: 93 87 47 00  	addi	a5, a5, 4
;         if (a[i] != b[i]) {
80000890: b3 86 b6 00  	add	a3, a3, a1
80000894: e3 90 97 fe  	bne	a5, s1, 0x80000874 <.LBB0_104+0x75c>
;     if (mismatch) {
80000898: b3 06 d0 40  	neg	a3, a3
8000089c: 93 05 40 00  	addi	a1, zero, 4
800008a0: 13 07 40 20  	addi	a4, zero, 516
800008a4: 93 87 03 00  	mv	a5, t2
;     for (uint32_t i = 0; i < n_elem * n_rep; ++i) l1_2d_a[i] = i + 4;
800008a8: 23 a0 b7 00  	sw	a1, 0(a5)
800008ac: 93 85 15 00  	addi	a1, a1, 1
800008b0: 93 87 47 00  	addi	a5, a5, 4
800008b4: e3 9a e5 fe  	bne	a1, a4, 0x800008a8 <.LBB0_104+0x790>
800008b8: 63 94 08 00  	bnez	a7, 0x800008c0 <.LBB0_104+0x7a8>
;     if (mismatch) {
800008bc: 13 05 08 00  	mv	a0, a6
800008c0: b7 05 00 00  	lui	a1, 0
800008c4: b3 85 45 00  	add	a1, a1, tp
800008c8: 03 a7 85 00  	lw	a4, 8(a1)
800008cc: 93 65 85 00  	ori	a1, a0, 8
800008d0: 93 07 30 00  	addi	a5, zero, 3
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800008d4: 83 24 87 0a  	lw	s1, 168(a4)
800008d8: e3 ee 97 fe  	bltu	a5, s1, 0x800008d4 <.LBB0_104+0x7bc>
;     _dm_mtx_lock();
800008dc: 13 07 c7 0a  	addi	a4, a4, 172
;     asm volatile(
800008e0: 93 02 10 00  	addi	t0, zero, 1
800008e4: af 22 57 0c  	amoswap.w.aq	t0, t0, (a4)
800008e8: e3 9e 02 fe  	bnez	t0, 0x800008e4 <.LBB0_104+0x7cc>
;     t = &dm_p->queue[dm_p->queue_front];
800008ec: 37 07 00 00  	lui	a4, 0
800008f0: 33 07 47 00  	add	a4, a4, tp
800008f4: 83 27 87 00  	lw	a5, 8(a4)
800008f8: 83 a4 47 0a  	lw	s1, 164(a5)
800008fc: 13 04 80 02  	addi	s0, zero, 40
;     t->src = src;
80000900: b3 84 84 02  	mul	s1, s1, s0
80000904: b3 84 97 00  	add	s1, a5, s1
80000908: 23 a2 04 00  	sw	zero, 4(s1)
8000090c: 23 a0 74 00  	sw	t2, 0(s1)
;     t->dst = dst;
80000910: 23 a6 04 00  	sw	zero, 12(s1)
80000914: 23 a4 64 00  	sw	t1, 8(s1)
80000918: 13 04 00 20  	addi	s0, zero, 512
;     t->size = size;
8000091c: 23 a8 84 00  	sw	s0, 16(s1)
;     t->sstrd = sstrd;
80000920: 23 aa 84 00  	sw	s0, 20(s1)
;     t->dstrd = dstrd;
80000924: 23 ac 84 00  	sw	s0, 24(s1)
80000928: 13 04 40 00  	addi	s0, zero, 4
;     t->nreps = nreps;
8000092c: 23 ae 84 00  	sw	s0, 28(s1)
80000930: 13 04 10 00  	addi	s0, zero, 1
;     t->twod = 1;
80000934: 23 a2 84 02  	sw	s0, 36(s1)
;     t->cfg = cfg;
80000938: 23 a0 04 02  	sw	zero, 32(s1)
;     __atomic_add_fetch(&dm_p->queue_fill, 1, __ATOMIC_RELAXED);
8000093c: 93 84 87 0a  	addi	s1, a5, 168
80000940: af a4 84 00  	amoadd.w	s1, s0, (s1)
;     dm_p->queue_front = (dm_p->queue_front + 1) % DM_TASK_QUEUE_SIZE;
80000944: 83 a4 47 0a  	lw	s1, 164(a5)
80000948: 93 84 14 00  	addi	s1, s1, 1
8000094c: 93 f4 34 00  	andi	s1, s1, 3
80000950: 23 a2 97 0a  	sw	s1, 164(a5)
;     _dm_mtx_release();
80000954: 93 87 c7 0a  	addi	a5, a5, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000958: 2f a0 07 0a  	amoswap.w.rl	zero, zero, (a5)
8000095c: 03 27 87 00  	lw	a4, 8(a4)
;     if (mismatch) {
80000960: 33 46 d6 00  	xor	a2, a2, a3
80000964: 13 36 16 00  	seqz	a2, a2
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000968: 83 26 c7 0b  	lw	a3, 188(a4)
8000096c: e3 8e 06 fe  	beqz	a3, 0x80000968 <.LBB0_104+0x850>
;     return _snrt_team_current->root->cluster_core_num;
80000970: b7 06 00 00  	lui	a3, 0
80000974: b3 86 46 00  	add	a3, a3, tp
80000978: 83 a6 06 00  	lw	a3, 0(a3)
8000097c: 83 a6 06 00  	lw	a3, 0(a3)
80000980: 83 a6 c6 01  	lw	a3, 28(a3)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000984: b7 07 00 00  	lui	a5, 0
80000988: b3 87 47 00  	add	a5, a5, tp
8000098c: 83 a7 07 01  	lw	a5, 16(a5)
;     return snrt_cluster_core_num() - 1;
80000990: 93 86 f6 ff  	addi	a3, a3, -1
80000994: 93 04 10 00  	addi	s1, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000998: b3 96 d4 00  	sll	a3, s1, a3
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
8000099c: 23 a0 d7 00  	sw	a3, 0(a5)
;         s = __atomic_load_n(&dm_p->queue_fill, __ATOMIC_RELAXED);
800009a0: 83 26 87 0a  	lw	a3, 168(a4)
800009a4: e3 9e 06 fe  	bnez	a3, 0x800009a0 <.LBB0_104+0x888>
;     while (dm_p->stat_q)
800009a8: 83 26 07 0b  	lw	a3, 176(a4)
800009ac: e3 9e 06 fe  	bnez	a3, 0x800009a8 <.LBB0_104+0x890>
;     _dm_mtx_lock();
800009b0: 93 06 c7 0a  	addi	a3, a4, 172
;     asm volatile(
800009b4: 93 02 10 00  	addi	t0, zero, 1
800009b8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
800009bc: e3 9e 02 fe  	bnez	t0, 0x800009b8 <.LBB0_104+0x8a0>
;     dm_p->stat_pvalid = 0;
800009c0: b7 06 00 00  	lui	a3, 0
800009c4: b3 86 46 00  	add	a3, a3, tp
800009c8: 03 a7 86 00  	lw	a4, 8(a3)
800009cc: 23 2c 07 0a  	sw	zero, 184(a4)
800009d0: 93 06 10 00  	addi	a3, zero, 1
;     dm_p->stat_q = STAT_WAIT_IDLE;
800009d4: 23 28 d7 0a  	sw	a3, 176(a4)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
800009d8: 83 26 c7 0b  	lw	a3, 188(a4)
800009dc: e3 8e 06 fe  	beqz	a3, 0x800009d8 <.LBB0_104+0x8c0>
;     return _snrt_team_current->root->cluster_core_num;
800009e0: b7 06 00 00  	lui	a3, 0
800009e4: b3 86 46 00  	add	a3, a3, tp
800009e8: 83 a6 06 00  	lw	a3, 0(a3)
800009ec: 83 a6 06 00  	lw	a3, 0(a3)
800009f0: 83 a6 c6 01  	lw	a3, 28(a3)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
800009f4: b7 07 00 00  	lui	a5, 0
800009f8: b3 87 47 00  	add	a5, a5, tp
800009fc: 83 a7 07 01  	lw	a5, 16(a5)
;     return snrt_cluster_core_num() - 1;
80000a00: 93 86 f6 ff  	addi	a3, a3, -1
80000a04: 93 04 10 00  	addi	s1, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000a08: b3 96 d4 00  	sll	a3, s1, a3
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000a0c: 23 a0 d7 00  	sw	a3, 0(a5)
;     while (!dm_p->stat_pvalid)
80000a10: 83 26 87 0b  	lw	a3, 184(a4)
80000a14: e3 8e 06 fe  	beqz	a3, 0x80000a10 <.LBB0_104+0x8f8>
80000a18: 93 07 00 00  	mv	a5, zero
80000a1c: 93 06 00 00  	mv	a3, zero
;     _dm_mtx_release();
80000a20: 13 07 c7 0a  	addi	a4, a4, 172
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000a24: 2f 20 07 0a  	amoswap.w.rl	zero, zero, (a4)
80000a28: 37 17 00 00  	lui	a4, 1
80000a2c: 13 07 07 80  	addi	a4, a4, -2048
;         if (a[i] != b[i]) {
80000a30: b3 84 f3 00  	add	s1, t2, a5
80000a34: 83 a4 04 00  	lw	s1, 0(s1)
80000a38: 33 04 f3 00  	add	s0, t1, a5
80000a3c: 03 24 04 00  	lw	s0, 0(s0)
80000a40: b3 c4 84 00  	xor	s1, s1, s0
80000a44: b3 34 90 00  	snez	s1, s1
;     for (uint32_t i = 0; i < n; ++i) {
80000a48: 93 87 47 00  	addi	a5, a5, 4
;         if (a[i] != b[i]) {
80000a4c: b3 86 96 00  	add	a3, a3, s1
80000a50: e3 90 e7 fe  	bne	a5, a4, 0x80000a30 <.LBB0_104+0x918>
80000a54: 63 14 06 00  	bnez	a2, 0x80000a5c <.LBB0_104+0x944>
;     if (mismatch) {
80000a58: 13 85 05 00  	mv	a0, a1
;     dm_p->stat_q = STAT_EXIT;
80000a5c: b7 05 00 00  	lui	a1, 0
80000a60: b3 85 45 00  	add	a1, a1, tp
80000a64: 03 a6 85 00  	lw	a2, 8(a1)
80000a68: 93 65 05 01  	ori	a1, a0, 16
80000a6c: 13 07 20 00  	addi	a4, zero, 2
80000a70: 23 28 e6 0a  	sw	a4, 176(a2)
;     while (!__atomic_load_n(&dm_p->dm_wfi, __ATOMIC_RELAXED))
80000a74: 03 27 c6 0b  	lw	a4, 188(a2)
80000a78: e3 0e 07 fe  	beqz	a4, 0x80000a74 <.LBB0_104+0x95c>
80000a7c: 63 84 06 00  	beqz	a3, 0x80000a84 <.LBB0_104+0x96c>
;     if (mismatch) {
80000a80: 13 85 05 00  	mv	a0, a1
;     return _snrt_team_current->root->cluster_core_num;
80000a84: b7 05 00 00  	lui	a1, 0
80000a88: b3 85 45 00  	add	a1, a1, tp
80000a8c: 83 a5 05 00  	lw	a1, 0(a1)
80000a90: 83 a5 05 00  	lw	a1, 0(a1)
80000a94: 83 a5 c5 01  	lw	a1, 28(a1)
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000a98: 37 06 00 00  	lui	a2, 0
80000a9c: 33 06 46 00  	add	a2, a2, tp
80000aa0: 03 26 06 01  	lw	a2, 16(a2)
;     return snrt_cluster_core_num() - 1;
80000aa4: 93 85 f5 ff  	addi	a1, a1, -1
80000aa8: 93 06 10 00  	addi	a3, zero, 1
;     snrt_int_cluster_set(1 << snrt_cluster_dm_core_idx());
80000aac: b3 95 b6 00  	sll	a1, a3, a1
; void snrt_int_cluster_set(uint32_t mask) { cl_clint_set(mask); }
80000ab0: 23 20 b6 00  	sw	a1, 0(a2)
; }
80000ab4: 83 29 c1 00  	lw	s3, 12(sp)
80000ab8: 03 29 01 01  	lw	s2, 16(sp)
80000abc: 83 24 41 01  	lw	s1, 20(sp)
80000ac0: 03 24 81 01  	lw	s0, 24(sp)
80000ac4: 83 20 c1 01  	lw	ra, 28(sp)
80000ac8: 13 01 01 02  	addi	sp, sp, 32
80000acc: 67 80 00 00  	ret

80000ad0 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000ad0: 37 05 00 00  	lui	a0, 0
80000ad4: 33 05 45 00  	add	a0, a0, tp
80000ad8: 03 25 05 00  	lw	a0, 0(a0)
80000adc: 03 25 05 00  	lw	a0, 0(a0)
80000ae0: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000ae4: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000ae8: 33 85 a5 40  	sub	a0, a1, a0
80000aec: 67 80 00 00  	ret

80000af0 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80000af0: 37 05 00 00  	lui	a0, 0
80000af4: 33 05 45 00  	add	a0, a0, tp
80000af8: 03 25 05 00  	lw	a0, 0(a0)
80000afc: 03 25 05 00  	lw	a0, 0(a0)
80000b00: 03 25 05 07  	lw	a0, 112(a0)
80000b04: 67 80 00 00  	ret

80000b08 <dm_main>:
; void dm_main(void) {
80000b08: 13 01 01 ff  	addi	sp, sp, -16
80000b0c: 23 26 81 00  	sw	s0, 12(sp)
80000b10: 23 24 91 00  	sw	s1, 8(sp)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000b14: 37 05 00 00  	lui	a0, 0
80000b18: 33 05 45 00  	add	a0, a0, tp
80000b1c: 03 25 45 00  	lw	a0, 4(a0)
80000b20: 93 02 10 00  	addi	t0, zero, 1
80000b24: 33 98 a2 00  	sll	a6, t0, a0
;         if (dm_p->queue_fill) {
80000b28: 37 05 00 00  	lui	a0, 0
80000b2c: b3 0e 45 00  	add	t4, a0, tp
80000b30: 03 a5 8e 00  	lw	a0, 8(t4)
80000b34: b7 05 00 00  	lui	a1, 0
80000b38: b3 88 45 00  	add	a7, a1, tp
80000b3c: 13 0e f0 ff  	addi	t3, zero, -1
80000b40: 93 07 30 00  	addi	a5, zero, 3
80000b44: 13 03 20 00  	addi	t1, zero, 2
80000b48: 93 03 80 02  	addi	t2, zero, 40
80000b4c: 6f 00 c0 01  	j	0x80000b68 <dm_main+0x60>
80000b50: 93 05 10 00  	addi	a1, zero, 1
80000b54: 23 2c b5 0a  	sw	a1, 184(a0)
80000b58: 23 28 05 0a  	sw	zero, 176(a0)
;         if (!dm_p->queue_fill && !dm_p->stat_q) {
80000b5c: 03 26 85 0a  	lw	a2, 168(a0)
80000b60: 63 06 06 06  	beqz	a2, 0x80000bcc <dm_main+0xc4>
;     while (!do_exit) {
80000b64: 63 8c 05 0e  	beqz	a1, 0x80000c5c <dm_main+0x154>
;         if (dm_p->queue_fill) {
80000b68: 83 25 85 0a  	lw	a1, 168(a0)
80000b6c: 63 8e 05 0a  	beqz	a1, 0x80000c28 <dm_main+0x120>
;             while (__builtin_sdma_stat(DM_STATUS_WOULD_BLOCK))
80000b70: 2b 05 f0 0a  	dmstat	a0, a5
80000b74: e3 1e 05 fe  	bnez	a0, 0x80000b70 <dm_main+0x68>
;             t = &dm_p->queue[dm_p->queue_back];
80000b78: 03 a5 8e 00  	lw	a0, 8(t4)
80000b7c: 83 25 05 0a  	lw	a1, 160(a0)
;             if (t->twod) {
80000b80: b3 85 75 02  	mul	a1, a1, t2
80000b84: 33 05 b5 00  	add	a0, a0, a1
80000b88: 83 25 45 02  	lw	a1, 36(a0)
80000b8c: 83 2f 45 00  	lw	t6, 4(a0)
80000b90: 03 27 05 00  	lw	a4, 0(a0)
80000b94: 83 26 c5 00  	lw	a3, 12(a0)
80000b98: 03 26 85 00  	lw	a2, 8(a0)
80000b9c: 03 2f 05 01  	lw	t5, 16(a0)
;             if (t->twod) {
80000ba0: 63 8c 05 04  	beqz	a1, 0x80000bf8 <dm_main+0xf0>
;                 __builtin_sdma_start_twod(t->src, t->dst, t->size, t->sstrd,
80000ba4: 83 25 45 01  	lw	a1, 20(a0)
;                                           t->dstrd, t->nreps, t->cfg);
80000ba8: 03 24 85 01  	lw	s0, 24(a0)
80000bac: 83 24 c5 01  	lw	s1, 28(a0)
80000bb0: 03 25 05 02  	lw	a0, 32(a0)
;                 __builtin_sdma_start_twod(t->src, t->dst, t->size, t->sstrd,
80000bb4: 13 65 25 00  	ori	a0, a0, 2
80000bb8: 2b 00 f7 01  	dmsrc	a4, t6
80000bbc: 2b 00 d6 02  	dmdst	a2, a3
80000bc0: 2b 80 85 0c  	dmstr	a1, s0
80000bc4: 2b 80 04 0e  	dmrep	s1
80000bc8: 6f 00 00 04  	j	0x80000c08 <dm_main+0x100>
;         if (!dm_p->queue_fill && !dm_p->stat_q) {
80000bcc: 03 26 05 0b  	lw	a2, 176(a0)
80000bd0: e3 1a 06 f8  	bnez	a2, 0x80000b64 <dm_main+0x5c>
;     __atomic_add_fetch(&dm_p->dm_wfi, 1, __ATOMIC_RELAXED);
80000bd4: 13 05 c5 0b  	addi	a0, a0, 188
80000bd8: 2f 25 55 00  	amoadd.w	a0, t0, (a0)
; static inline void snrt_wfi() { asm volatile("wfi"); }
80000bdc: 73 00 50 10  	wfi	
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000be0: 03 a5 08 01  	lw	a0, 16(a7)
80000be4: 23 24 05 01  	sw	a6, 8(a0)
;     __atomic_add_fetch(&dm_p->dm_wfi, -1, __ATOMIC_RELAXED);
80000be8: 03 a5 8e 00  	lw	a0, 8(t4)
80000bec: 13 06 c5 0b  	addi	a2, a0, 188
80000bf0: 2f 26 c6 01  	amoadd.w	a2, t3, (a2)
80000bf4: 6f f0 1f f7  	j	0x80000b64 <dm_main+0x5c>
;                 __builtin_sdma_start_oned(t->src, t->dst, t->size, t->cfg);
80000bf8: 03 25 05 02  	lw	a0, 32(a0)
80000bfc: 13 75 d5 ff  	andi	a0, a0, -3
80000c00: 2b 00 f7 01  	dmsrc	a4, t6
80000c04: 2b 00 d6 02  	dmdst	a2, a3
80000c08: 2b 05 af 06  	dmcpy	a0, t5, a0
;             dm_p->queue_back = (dm_p->queue_back + 1) % DM_TASK_QUEUE_SIZE;
80000c0c: 03 a5 8e 00  	lw	a0, 8(t4)
80000c10: 83 25 05 0a  	lw	a1, 160(a0)
80000c14: 93 85 15 00  	addi	a1, a1, 1
80000c18: 93 f5 35 00  	andi	a1, a1, 3
80000c1c: 23 20 b5 0a  	sw	a1, 160(a0)
;             __atomic_add_fetch(&dm_p->queue_fill, -1, __ATOMIC_RELAXED);
80000c20: 93 05 85 0a  	addi	a1, a0, 168
80000c24: af a5 c5 01  	amoadd.w	a1, t3, (a1)
;         if (dm_p->stat_q) {
80000c28: 03 26 05 0b  	lw	a2, 176(a0)
80000c2c: 93 05 10 00  	addi	a1, zero, 1
80000c30: e3 06 06 f2  	beqz	a2, 0x80000b5c <dm_main+0x54>
;             switch (dm_p->stat_q) {
80000c34: 03 26 05 0b  	lw	a2, 176(a0)
80000c38: e3 0c f6 f0  	beq	a2, a5, 0x80000b50 <dm_main+0x48>
80000c3c: 63 0c 66 00  	beq	a2, t1, 0x80000c54 <dm_main+0x14c>
80000c40: e3 1e 56 f0  	bne	a2, t0, 0x80000b5c <dm_main+0x54>
;                     if (__builtin_sdma_stat(DM_STATUS_BUSY) == 0) {
80000c44: 2b 06 60 0a  	dmstat	a2, t1
80000c48: 03 a5 8e 00  	lw	a0, 8(t4)
80000c4c: e3 18 06 f0  	bnez	a2, 0x80000b5c <dm_main+0x54>
80000c50: 6f f0 1f f0  	j	0x80000b50 <dm_main+0x48>
80000c54: 93 05 00 00  	mv	a1, zero
80000c58: 6f f0 5f f0  	j	0x80000b5c <dm_main+0x54>
80000c5c: 37 05 08 00  	lui	a0, 128
;     clear_csr(mie, 1 << irq);
80000c60: 73 35 45 30  	csrrc	a0, mie, a0
; }
80000c64: 83 24 81 00  	lw	s1, 8(sp)
80000c68: 03 24 c1 00  	lw	s0, 12(sp)
80000c6c: 13 01 01 01  	addi	sp, sp, 16
80000c70: 67 80 00 00  	ret

80000c74 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000c74: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000c78: 63 44 05 00  	bltz	a0, 0x80000c80 <__snrt_isr+0xc>
;         while (1)
80000c7c: 6f 00 00 00  	j	0x80000c7c <__snrt_isr+0x8>
80000c80: b7 05 00 80  	lui	a1, 524288
80000c84: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80000c88: 33 75 b5 00  	and	a0, a0, a1
80000c8c: 13 05 d5 ff  	addi	a0, a0, -3
80000c90: 93 55 25 00  	srli	a1, a0, 2
80000c94: 13 15 e5 01  	slli	a0, a0, 30
80000c98: 33 65 b5 00  	or	a0, a0, a1
80000c9c: 93 05 40 00  	addi	a1, zero, 4
80000ca0: 63 0a b5 06  	beq	a0, a1, 0x80000d14 <.LBB2_7+0x58>
80000ca4: 63 1a 05 08  	bnez	a0, 0x80000d38 <.LBB2_7+0x7c>
80000ca8: 37 05 00 00  	lui	a0, 0
80000cac: 33 05 45 00  	add	a0, a0, tp
80000cb0: 03 25 05 00  	lw	a0, 0(a0)
80000cb4: 03 25 05 00  	lw	a0, 0(a0)
80000cb8: f3 25 40 f1  	csrr	a1, mhartid

80000cbc <.LBB2_7>:
;     asm volatile(
80000cbc: 17 06 00 00  	auipc	a2, 0
80000cc0: 13 06 46 6e  	addi	a2, a2, 1764
80000cc4: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000cc8: 93 06 06 00  	mv	a3, a2
80000ccc: 93 02 10 00  	addi	t0, zero, 1
80000cd0: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80000cd4: e3 9e 02 fe  	bnez	t0, 0x80000cd0 <.LBB2_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000cd8: b7 06 00 00  	lui	a3, 0
80000cdc: b3 86 46 00  	add	a3, a3, tp
80000ce0: 83 a6 c6 00  	lw	a3, 12(a3)
80000ce4: 33 85 a5 40  	sub	a0, a1, a0
80000ce8: 93 55 35 00  	srli	a1, a0, 3
80000cec: 93 f5 c5 ff  	andi	a1, a1, -4
80000cf0: b3 85 b6 00  	add	a1, a3, a1
80000cf4: 83 a6 05 00  	lw	a3, 0(a1)
80000cf8: 13 07 10 00  	addi	a4, zero, 1
80000cfc: 33 15 a7 00  	sll	a0, a4, a0
80000d00: 13 45 f5 ff  	not	a0, a0
80000d04: 33 f5 a6 00  	and	a0, a3, a0
80000d08: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80000d0c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000d10: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000d14: 37 05 00 00  	lui	a0, 0
80000d18: 33 05 45 00  	add	a0, a0, tp
80000d1c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000d20: b7 05 00 00  	lui	a1, 0
80000d24: b3 85 45 00  	add	a1, a1, tp
80000d28: 83 a5 05 01  	lw	a1, 16(a1)
80000d2c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000d30: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000d34: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000d38: 67 80 00 00  	ret

80000d3c <_snrt_init_team>:
;     team->base.root = team;
80000d3c: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000d40: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80000d44: 03 23 87 00  	lw	t1, 8(a4)
80000d48: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000d4c: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80000d50: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000d54: 83 22 47 00  	lw	t0, 4(a4)
80000d58: 33 88 08 03  	mul	a6, a7, a6
80000d5c: 33 05 58 02  	mul	a0, a6, t0
80000d60: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000d64: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000d68: 33 85 68 40  	sub	a0, a7, t1
80000d6c: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80000d70: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000d74: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000d78: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80000d7c: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80000d80: 03 25 87 01  	lw	a0, 24(a4)
80000d84: b7 05 00 10  	lui	a1, 65536
80000d88: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000d8c: 23 a2 07 02  	sw	zero, 36(a5)
80000d90: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80000d94: 03 25 07 02  	lw	a0, 32(a4)
80000d98: 83 25 47 02  	lw	a1, 36(a4)
80000d9c: 23 a4 a7 02  	sw	a0, 40(a5)
80000da0: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80000da4: 23 a8 c7 02  	sw	a2, 48(a5)
80000da8: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000dac: 23 ac d7 02  	sw	a3, 56(a5)
80000db0: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000db4: 03 25 07 01  	lw	a0, 16(a4)
80000db8: 33 08 a6 00  	add	a6, a2, a0
80000dbc: 93 05 08 19  	addi	a1, a6, 400
80000dc0: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000dc4: b3 32 a8 00  	sltu	t0, a6, a0
80000dc8: 93 55 15 00  	srli	a1, a0, 1
80000dcc: 33 03 b8 00  	add	t1, a6, a1
80000dd0: b3 35 03 01  	sltu	a1, t1, a6
80000dd4: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000dd8: 23 a0 67 04  	sw	t1, 64(a5)
80000ddc: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80000de0: 13 15 15 00  	slli	a0, a0, 1
80000de4: b3 05 c5 00  	add	a1, a0, a2
80000de8: 33 b5 a5 00  	sltu	a0, a1, a0
80000dec: 23 a4 b7 04  	sw	a1, 72(a5)
80000df0: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80000df4: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80000df8: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80000dfc: 37 05 00 00  	lui	a0, 0
80000e00: 33 05 45 00  	add	a0, a0, tp
80000e04: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000e08: 03 a5 07 00  	lw	a0, 0(a5)
80000e0c: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80000e10: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80000e14: b3 85 b8 40  	sub	a1, a7, a1
80000e18: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80000e1c: b7 05 00 00  	lui	a1, 0
80000e20: b3 85 45 00  	add	a1, a1, tp
80000e24: 23 a2 a5 00  	sw	a0, 4(a1)
80000e28: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000e2c: 33 85 a8 02  	mul	a0, a7, a0

80000e30 <.LBB0_1>:
80000e30: 97 05 00 00  	auipc	a1, 0
80000e34: 93 85 45 57  	addi	a1, a1, 1396
80000e38: 33 05 b5 00  	add	a0, a0, a1
80000e3c: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000e40: 83 28 07 03  	lw	a7, 48(a4)
80000e44: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000e48: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80000e4c: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80000e50: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000e54: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000e58: 13 05 76 00  	addi	a0, a2, 7
80000e5c: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80000e60: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000e64: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000e68: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80000e6c: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80000e70: 03 a5 05 00  	lw	a0, 0(a1)
80000e74: 13 05 f5 44  	addi	a0, a0, 1103
80000e78: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80000e7c: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80000e80: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80000e84: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000e88: 37 05 00 00  	lui	a0, 0
80000e8c: 33 05 45 00  	add	a0, a0, tp
80000e90: 23 26 15 01  	sw	a7, 12(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80000e94: 37 05 00 00  	lui	a0, 0
80000e98: 33 05 45 00  	add	a0, a0, tp
80000e9c: 23 28 e5 00  	sw	a4, 16(a0)
; }
80000ea0: 67 80 00 00  	ret

Disassembly of section .init:

80000eb0 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000eb0: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000eb4: 93 81 c1 cd  	addi	gp, gp, -804

80000eb8 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000eb8: 97 00 00 00  	auipc	ra, 0
80000ebc: e7 80 40 3c  	jalr	964(ra)

80000ec0 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000ec0: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000ec4: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000ec8: 97 00 00 00  	auipc	ra, 0
80000ecc: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000ed0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000ed4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000ed8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80000edc: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000ee0: 63 92 02 02  	bnez	t0, 0x80000f04 <snrt.crt0.init_registers>

80000ee4 <.Lpcrel_hi0>:
;     la        t0, _edata
80000ee4: 97 02 00 00  	auipc	t0, 0
80000ee8: 93 82 82 4b  	addi	t0, t0, 1208

80000eec <.Lpcrel_hi1>:
;     la        t1, _end
80000eec: 17 03 00 00  	auipc	t1, 0
80000ef0: 13 03 83 4b  	addi	t1, t1, 1208
;     bge       t0, t1, 2f
80000ef4: 63 d8 62 00  	bge	t0, t1, 0x80000f04 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000ef8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80000efc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80000f00: e3 cc 62 fe  	blt	t0, t1, 0x80000ef8 <.Lpcrel_hi1+0xc>

80000f04 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80000f04: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80000f08: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80000f0c: 63 82 02 08  	beqz	t0, 0x80000f90 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80000f10: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80000f14: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80000f18: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80000f1c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80000f20: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80000f24: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80000f28: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80000f2c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000f30: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000f34: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000f38: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80000f3c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000f40: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000f44: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000f48: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80000f4c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000f50: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000f54: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000f58: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80000f5c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000f60: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000f64: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000f68: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80000f6c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000f70: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000f74: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000f78: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80000f7c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80000f80: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80000f84: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80000f88: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80000f8c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80000f90 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80000f90: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80000f94: 23 a0 06 00  	sw	zero, 0(a3)

80000f98 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80000f98: 97 02 00 00  	auipc	t0, 0
80000f9c: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
80000fa0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000fa4: 93 87 06 00  	mv	a5, a3

80000fa8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000fa8: 97 03 00 00  	auipc	t2, 0
80000fac: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
80000fb0: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000fb4: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000fb8: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80000fbc: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000fc0: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000fc4: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000fc8: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80000fcc: b3 86 66 40  	sub	a3, a3, t1

80000fd0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000fd0: 97 02 00 00  	auipc	t0, 0
80000fd4: 93 82 82 3b  	addi	t0, t0, 952

80000fd8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000fd8: 17 03 00 00  	auipc	t1, 0
80000fdc: 13 03 03 3b  	addi	t1, t1, 944

80000fe0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000fe0: 97 03 00 00  	auipc	t2, 0
80000fe4: 93 83 83 3a  	addi	t2, t2, 936

80000fe8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000fe8: 17 0e 00 00  	auipc	t3, 0
80000fec: 13 0e 4e 3b  	addi	t3, t3, 948
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000ff0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000ff4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000ff8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80000ffc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80001000: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80001004: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80001008: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
8000100c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80001010: 63 dc 62 00  	bge	t0, t1, 0x80001028 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80001014: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80001018: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
8000101c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80001020: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80001024: e3 c8 62 fe  	blt	t0, t1, 0x80001014 <.Lpcrel_hi7+0x2c>

80001028 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80001028: 97 02 00 00  	auipc	t0, 0
8000102c: 93 82 02 36  	addi	t0, t0, 864

80001030 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80001030: 17 03 00 00  	auipc	t1, 0
80001034: 13 03 c3 36  	addi	t1, t1, 876
;     bge       t0, t1, 2f
80001038: 63 da 62 00  	bge	t0, t1, 0x8000104c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000103c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80001040: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80001044: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80001048: e3 ca 72 fe  	blt	t0, t2, 0x8000103c <.Lpcrel_hi9+0xc>

8000104c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000104c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80001050: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80001054: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80001058: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000105c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80001060: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80001064: 97 00 00 00  	auipc	ra, 0
80001068: e7 80 80 cd  	jalr	-808(ra)
;     lw        a0, 0(sp)
8000106c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80001070: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80001074: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80001078: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000107c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80001080: 13 01 41 01  	addi	sp, sp, 20

80001084 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80001084: 97 02 00 00  	auipc	t0, 0
80001088: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000108c: 73 90 52 30  	csrw	mtvec, t0

80001090 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80001090: 97 00 00 00  	auipc	ra, 0
80001094: e7 80 00 22  	jalr	544(ra)

80001098 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80001098: 97 f0 ff ff  	auipc	ra, 1048575
8000109c: e7 80 40 04  	jalr	68(ra)
;     mv        s0, a0 # store return value in s0
800010a0: 13 04 05 00  	mv	s0, a0

800010a4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
800010a4: 97 00 00 00  	auipc	ra, 0
800010a8: e7 80 c0 20  	jalr	524(ra)

800010ac <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
800010ac: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
800010b0: 97 00 00 00  	auipc	ra, 0
800010b4: e7 80 c0 22  	jalr	556(ra)
;     wfi
800010b8: 73 00 50 10  	wfi	
;     j       1b
800010bc: 6f f0 df ff  	j	0x800010b8 <snrt.crt0.end+0xc>

800010c0 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
800010c0: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
800010c4: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
800010c8: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
800010cc: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800010d0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800010d4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800010d8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800010dc: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800010e0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800010e4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800010e8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800010ec: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800010f0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800010f4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800010f8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800010fc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80001100: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80001104: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80001108: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
8000110c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80001110: 63 84 02 08  	beqz	t0, 0x80001198 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80001114: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80001118: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
8000111c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80001120: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80001124: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80001128: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
8000112c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80001130: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80001134: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80001138: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000113c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80001140: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80001144: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80001148: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000114c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80001150: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80001154: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80001158: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000115c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80001160: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80001164: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80001168: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000116c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80001170: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80001174: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80001178: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000117c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80001180: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80001184: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80001188: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000118c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80001190: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80001194: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80001198: 97 00 00 00  	auipc	ra, 0
8000119c: e7 80 c0 ad  	jalr	-1316(ra)
;     csrr    t0, misa
800011a0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800011a4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800011a8: 63 84 02 08  	beqz	t0, 0x80001230 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
800011ac: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
800011b0: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
800011b4: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
800011b8: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
800011bc: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
800011c0: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
800011c4: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
800011c8: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
800011cc: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800011d0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800011d4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800011d8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800011dc: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800011e0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800011e4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800011e8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800011ec: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800011f0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800011f4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800011f8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800011fc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80001200: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80001204: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80001208: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
8000120c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80001210: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80001214: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80001218: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
8000121c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80001220: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80001224: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80001228: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
8000122c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80001230: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80001234: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80001238: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000123c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80001240: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80001244: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80001248: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000124c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80001250: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80001254: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80001258: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000125c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80001260: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80001264: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80001268: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000126c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80001270: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80001274: 13 01 01 05  	addi	sp, sp, 80
;     mret
80001278: 73 00 20 30  	mret	

8000127c <_snrt_init_core_info>:
;     mv        a4, a1
8000127c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80001280: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80001284: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80001288: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000128c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80001290: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80001294: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80001298: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000129c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
800012a0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
800012a4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
800012a8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
800012ac: 67 80 00 00  	ret

800012b0 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
800012b0: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
800012b4: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
800012b8: 97 00 00 00  	auipc	ra, 0
800012bc: e7 80 80 83  	jalr	-1992(ra)
;     lw        a0, 0(a0)
800012c0: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
800012c4: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
800012c8: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
800012cc: 13 01 41 00  	addi	sp, sp, 4
;     ret
800012d0: 67 80 00 00  	ret

800012d4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800012d4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800012d8: 67 80 00 00  	ret

800012dc <_snrt_exit>:
;     addi      sp, sp, -8
800012dc: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800012e0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800012e4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800012e8: 97 f0 ff ff  	auipc	ra, 1048575
800012ec: e7 80 80 7e  	jalr	2024(ra)
;     lw        t0, 0(sp)
800012f0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800012f4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800012f8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800012fc: 63 1c 05 00  	bnez	a0, 0x80001314 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80001300: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80001304: 93 e2 12 00  	ori	t0, t0, 1

80001308 <.Lpcrel_hi11>:
;     la        t1, tohost
80001308: 17 03 00 00  	auipc	t1, 0
8000130c: 13 03 83 03  	addi	t1, t1, 56
;     sw        t0, 0(t1)
80001310: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80001314: 67 80 00 00  	ret
