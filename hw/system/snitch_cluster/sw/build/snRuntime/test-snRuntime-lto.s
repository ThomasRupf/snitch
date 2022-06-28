
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-lto:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             0000027c 80000000 TEXT
  2 .init             00000468 80000280 TEXT
  3 .rodata           00000008 800006e8 DATA
  4 .htif             00000048 80000700 DATA
  5 .tdata            00000000 80000748 DATA
  6 .tbss             00000010 80000748 BSS
  7 .tbssend          00000000 80000758 DATA
  8 .sdata            00000000 80000758 DATA
  9 .data             00000000 80000758 DATA
 10 .sbss             00000004 80000758 BSS
 11 .bss              00000000 8000075c BSS
 12 .dram             00000000 8000075c DATA
 13 .debug_info       00002a91 00000000 
 14 .debug_abbrev     00000951 00000000 
 15 .debug_aranges    00000040 00000000 
 16 .debug_line       00002373 00000000 
 17 .debug_loc        00002694 00000000 
 18 .debug_ranges     00000320 00000000 
 19 .debug_str        000009ac 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      0000024c 00000000 
 23 .symtab           00001670 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000043e 00000000 


Disassembly of section .text:

80000000 <main>:
;     size_t t0 = read_csr(minstret);
80000000: 73 25 20 b0  	csrr	a0, minstret
;     size_t t1 = read_csr(minstret);
80000004: f3 25 20 b0  	csrr	a1, minstret
;     return (t1 - t0 - 1);
80000008: 13 45 f5 ff  	not	a0, a0
8000000c: 33 85 a5 00  	add	a0, a1, a0
80000010: 67 80 00 00  	ret

80000014 <_snrt_init_team>:
;     team->base.root = team;
80000014: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80000018: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
8000001c: 03 23 87 00  	lw	t1, 8(a4)
80000020: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000024: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80000028: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
8000002c: 83 22 47 00  	lw	t0, 4(a4)
80000030: 33 88 08 03  	mul	a6, a7, a6
80000034: 33 05 58 02  	mul	a0, a6, t0
80000038: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000003c: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000040: 33 85 68 40  	sub	a0, a7, t1
80000044: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80000048: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
8000004c: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000050: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80000054: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80000058: 03 25 87 01  	lw	a0, 24(a4)
8000005c: b7 05 00 10  	lui	a1, 65536
80000060: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000064: 23 a2 07 02  	sw	zero, 36(a5)
80000068: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
8000006c: 03 25 07 02  	lw	a0, 32(a4)
80000070: 83 25 47 02  	lw	a1, 36(a4)
80000074: 23 a4 a7 02  	sw	a0, 40(a5)
80000078: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
8000007c: 23 a8 c7 02  	sw	a2, 48(a5)
80000080: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000084: 23 ac d7 02  	sw	a3, 56(a5)
80000088: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
8000008c: 03 25 07 01  	lw	a0, 16(a4)
80000090: 33 08 a6 00  	add	a6, a2, a0
80000094: 93 05 08 19  	addi	a1, a6, 400
80000098: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
8000009c: b3 32 a8 00  	sltu	t0, a6, a0
800000a0: 93 55 15 00  	srli	a1, a0, 1
800000a4: 33 03 b8 00  	add	t1, a6, a1
800000a8: b3 35 03 01  	sltu	a1, t1, a6
800000ac: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
800000b0: 23 a0 67 04  	sw	t1, 64(a5)
800000b4: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
800000b8: 13 15 15 00  	slli	a0, a0, 1
800000bc: b3 05 c5 00  	add	a1, a0, a2
800000c0: 33 b5 a5 00  	sltu	a0, a1, a0
800000c4: 23 a4 b7 04  	sw	a1, 72(a5)
800000c8: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800000cc: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800000d0: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800000d4: 37 05 00 00  	lui	a0, 0
800000d8: 33 05 45 00  	add	a0, a0, tp
800000dc: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800000e0: 03 a5 07 00  	lw	a0, 0(a5)
800000e4: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800000e8: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800000ec: b3 85 b8 40  	sub	a1, a7, a1
800000f0: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800000f4: b7 05 00 00  	lui	a1, 0
800000f8: b3 85 45 00  	add	a1, a1, tp
800000fc: 23 a2 a5 00  	sw	a0, 4(a1)
80000100: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80000104: 33 85 a8 02  	mul	a0, a7, a0

80000108 <.LBB0_1>:
80000108: 97 05 00 00  	auipc	a1, 0
8000010c: 93 85 45 65  	addi	a1, a1, 1620
80000110: 33 05 b5 00  	add	a0, a0, a1
80000114: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80000118: 83 28 07 03  	lw	a7, 48(a4)
8000011c: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80000120: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80000124: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80000128: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
8000012c: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000130: 13 05 76 00  	addi	a0, a2, 7
80000134: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80000138: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
8000013c: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000140: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80000144: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80000148: 03 a5 05 00  	lw	a0, 0(a1)
8000014c: 13 05 f5 44  	addi	a0, a0, 1103
80000150: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80000154: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80000158: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
8000015c: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000160: 37 05 00 00  	lui	a0, 0
80000164: 33 05 45 00  	add	a0, a0, tp
80000168: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
8000016c: 37 05 00 00  	lui	a0, 0
80000170: 33 05 45 00  	add	a0, a0, tp
80000174: 23 26 e5 00  	sw	a4, 12(a0)
; }
80000178: 67 80 00 00  	ret

8000017c <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000017c: 37 05 00 00  	lui	a0, 0
80000180: 33 05 45 00  	add	a0, a0, tp
80000184: 03 25 05 00  	lw	a0, 0(a0)
80000188: 03 25 05 00  	lw	a0, 0(a0)
8000018c: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000190: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000194: 33 85 a5 40  	sub	a0, a1, a0
80000198: 67 80 00 00  	ret

8000019c <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
8000019c: 37 05 00 00  	lui	a0, 0
800001a0: 33 05 45 00  	add	a0, a0, tp
800001a4: 03 25 05 00  	lw	a0, 0(a0)
800001a8: 03 25 05 00  	lw	a0, 0(a0)
800001ac: 03 25 05 07  	lw	a0, 112(a0)
800001b0: 67 80 00 00  	ret

800001b4 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
800001b4: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
800001b8: 63 44 05 00  	bltz	a0, 0x800001c0 <__snrt_isr+0xc>
;         while (1)
800001bc: 6f 00 00 00  	j	0x800001bc <__snrt_isr+0x8>
800001c0: b7 05 00 80  	lui	a1, 524288
800001c4: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
800001c8: 33 75 b5 00  	and	a0, a0, a1
800001cc: 13 05 d5 ff  	addi	a0, a0, -3
800001d0: 93 55 25 00  	srli	a1, a0, 2
800001d4: 13 15 e5 01  	slli	a0, a0, 30
800001d8: 33 65 b5 00  	or	a0, a0, a1
800001dc: 93 05 40 00  	addi	a1, zero, 4
800001e0: 63 0a b5 06  	beq	a0, a1, 0x80000254 <.LBB1_7+0x58>
800001e4: 63 1a 05 08  	bnez	a0, 0x80000278 <.LBB1_7+0x7c>
800001e8: 37 05 00 00  	lui	a0, 0
800001ec: 33 05 45 00  	add	a0, a0, tp
800001f0: 03 25 05 00  	lw	a0, 0(a0)
800001f4: 03 25 05 00  	lw	a0, 0(a0)
800001f8: f3 25 40 f1  	csrr	a1, mhartid

800001fc <.LBB1_7>:
;     asm volatile(
800001fc: 17 06 00 00  	auipc	a2, 0
80000200: 13 06 c6 55  	addi	a2, a2, 1372
80000204: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000208: 93 06 06 00  	mv	a3, a2
8000020c: 93 02 10 00  	addi	t0, zero, 1
80000210: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80000214: e3 9e 02 fe  	bnez	t0, 0x80000210 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000218: b7 06 00 00  	lui	a3, 0
8000021c: b3 86 46 00  	add	a3, a3, tp
80000220: 83 a6 86 00  	lw	a3, 8(a3)
80000224: 33 85 a5 40  	sub	a0, a1, a0
80000228: 93 55 35 00  	srli	a1, a0, 3
8000022c: 93 f5 c5 ff  	andi	a1, a1, -4
80000230: b3 85 b6 00  	add	a1, a3, a1
80000234: 83 a6 05 00  	lw	a3, 0(a1)
80000238: 13 07 10 00  	addi	a4, zero, 1
8000023c: 33 15 a7 00  	sll	a0, a4, a0
80000240: 13 45 f5 ff  	not	a0, a0
80000244: 33 f5 a6 00  	and	a0, a3, a0
80000248: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
8000024c: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80000250: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000254: 37 05 00 00  	lui	a0, 0
80000258: 33 05 45 00  	add	a0, a0, tp
8000025c: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000260: b7 05 00 00  	lui	a1, 0
80000264: b3 85 45 00  	add	a1, a1, tp
80000268: 83 a5 c5 00  	lw	a1, 12(a1)
8000026c: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80000270: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80000274: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80000278: 67 80 00 00  	ret

Disassembly of section .init:

80000280 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000280: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000284: 93 81 81 cc  	addi	gp, gp, -824

80000288 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000288: 97 00 00 00  	auipc	ra, 0
8000028c: e7 80 40 3c  	jalr	964(ra)

80000290 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000290: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000294: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000298: 97 00 00 00  	auipc	ra, 0
8000029c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
800002a0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
800002a4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
800002a8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
800002ac: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
800002b0: 63 92 02 02  	bnez	t0, 0x800002d4 <snrt.crt0.init_registers>

800002b4 <.Lpcrel_hi0>:
;     la        t0, _edata
800002b4: 97 02 00 00  	auipc	t0, 0
800002b8: 93 82 42 4a  	addi	t0, t0, 1188

800002bc <.Lpcrel_hi1>:
;     la        t1, _end
800002bc: 17 03 00 00  	auipc	t1, 0
800002c0: 13 03 03 4a  	addi	t1, t1, 1184
;     bge       t0, t1, 2f
800002c4: 63 d8 62 00  	bge	t0, t1, 0x800002d4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
800002c8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
800002cc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800002d0: e3 cc 62 fe  	blt	t0, t1, 0x800002c8 <.Lpcrel_hi1+0xc>

800002d4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800002d4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800002d8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800002dc: 63 82 02 08  	beqz	t0, 0x80000360 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800002e0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800002e4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800002e8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800002ec: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800002f0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800002f4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800002f8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800002fc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80000300: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80000304: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80000308: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
8000030c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80000310: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80000314: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80000318: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
8000031c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80000320: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80000324: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80000328: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
8000032c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000330: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000334: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000338: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000033c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000340: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000344: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000348: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000034c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80000350: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80000354: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80000358: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000035c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80000360 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80000360: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80000364: 23 a0 06 00  	sw	zero, 0(a3)

80000368 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80000368: 97 02 00 00  	auipc	t0, 0
8000036c: 83 a2 42 38  	lw	t0, 900(t0)
;     sub       a3, a3, t0
80000370: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000374: 93 87 06 00  	mv	a5, a3

80000378 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000378: 97 03 00 00  	auipc	t2, 0
8000037c: 83 a3 03 37  	lw	t2, 880(t2)
;     sll       t0, a0, t2  # this hart
80000380: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000384: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000388: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000038c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000390: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000394: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000398: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000039c: b3 86 66 40  	sub	a3, a3, t1

800003a0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
800003a0: 97 02 00 00  	auipc	t0, 0
800003a4: 93 82 82 3a  	addi	t0, t0, 936

800003a8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
800003a8: 17 03 00 00  	auipc	t1, 0
800003ac: 13 03 03 3a  	addi	t1, t1, 928

800003b0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
800003b0: 97 03 00 00  	auipc	t2, 0
800003b4: 93 83 83 39  	addi	t2, t2, 920

800003b8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
800003b8: 17 0e 00 00  	auipc	t3, 0
800003bc: 13 0e 0e 3a  	addi	t3, t3, 928
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
800003c0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
800003c4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
800003c8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
800003cc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800003d0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800003d4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800003d8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800003dc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800003e0: 63 dc 62 00  	bge	t0, t1, 0x800003f8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800003e4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800003e8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800003ec: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800003f0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800003f4: e3 c8 62 fe  	blt	t0, t1, 0x800003e4 <.Lpcrel_hi7+0x2c>

800003f8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800003f8: 97 02 00 00  	auipc	t0, 0
800003fc: 93 82 02 35  	addi	t0, t0, 848

80000400 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80000400: 17 03 00 00  	auipc	t1, 0
80000404: 13 03 83 35  	addi	t1, t1, 856
;     bge       t0, t1, 2f
80000408: 63 da 62 00  	bge	t0, t1, 0x8000041c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
8000040c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80000410: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80000414: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80000418: e3 ca 72 fe  	blt	t0, t2, 0x8000040c <.Lpcrel_hi9+0xc>

8000041c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
8000041c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80000420: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80000424: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80000428: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
8000042c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000430: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000434: 97 00 00 00  	auipc	ra, 0
80000438: e7 80 00 be  	jalr	-1056(ra)
;     lw        a0, 0(sp)
8000043c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000440: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000444: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000448: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000044c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000450: 13 01 41 01  	addi	sp, sp, 20

80000454 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000454: 97 02 00 00  	auipc	t0, 0
80000458: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000045c: 73 90 52 30  	csrw	mtvec, t0

80000460 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000460: 97 00 00 00  	auipc	ra, 0
80000464: e7 80 00 22  	jalr	544(ra)

80000468 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000468: 97 00 00 00  	auipc	ra, 0
8000046c: e7 80 80 b9  	jalr	-1128(ra)
;     mv        s0, a0 # store return value in s0
80000470: 13 04 05 00  	mv	s0, a0

80000474 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000474: 97 00 00 00  	auipc	ra, 0
80000478: e7 80 c0 20  	jalr	524(ra)

8000047c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000047c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000480: 97 00 00 00  	auipc	ra, 0
80000484: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000488: 73 00 50 10  	wfi	
;     j       1b
8000048c: 6f f0 df ff  	j	0x80000488 <snrt.crt0.end+0xc>

80000490 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000490: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000494: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000498: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000049c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
800004a0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
800004a4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
800004a8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
800004ac: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
800004b0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
800004b4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
800004b8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
800004bc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
800004c0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
800004c4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
800004c8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
800004cc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800004d0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800004d4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800004d8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800004dc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800004e0: 63 84 02 08  	beqz	t0, 0x80000568 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800004e4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800004e8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800004ec: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800004f0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800004f4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800004f8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800004fc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80000500: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80000504: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80000508: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
8000050c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80000510: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80000514: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80000518: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
8000051c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80000520: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80000524: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80000528: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
8000052c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000530: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000534: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000538: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
8000053c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000540: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000544: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000548: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
8000054c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000550: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000554: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000558: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
8000055c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000560: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000564: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000568: 97 00 00 00  	auipc	ra, 0
8000056c: e7 80 c0 c4  	jalr	-948(ra)
;     csrr    t0, misa
80000570: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000574: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000578: 63 84 02 08  	beqz	t0, 0x80000600 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
8000057c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000580: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000584: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000588: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
8000058c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000590: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000594: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000598: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
8000059c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
800005a0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
800005a4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
800005a8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
800005ac: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
800005b0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
800005b4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
800005b8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
800005bc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
800005c0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
800005c4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
800005c8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
800005cc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
800005d0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
800005d4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
800005d8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
800005dc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
800005e0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
800005e4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
800005e8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
800005ec: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
800005f0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
800005f4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
800005f8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
800005fc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000600: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000604: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000608: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000060c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000610: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000614: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000618: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000061c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000620: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000624: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000628: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000062c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000630: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000634: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000638: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000063c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000640: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000644: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000648: 73 00 20 30  	mret	

8000064c <_snrt_init_core_info>:
;     mv        a4, a1
8000064c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000650: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000654: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000658: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000065c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000660: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000664: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000668: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000066c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000670: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000674: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000678: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000067c: 67 80 00 00  	ret

80000680 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000680: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000684: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000688: 97 00 00 00  	auipc	ra, 0
8000068c: e7 80 40 b1  	jalr	-1260(ra)
;     lw        a0, 0(a0)
80000690: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000694: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000698: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000069c: 13 01 41 00  	addi	sp, sp, 4
;     ret
800006a0: 67 80 00 00  	ret

800006a4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800006a4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800006a8: 67 80 00 00  	ret

800006ac <_snrt_exit>:
;     addi      sp, sp, -8
800006ac: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800006b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800006b4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800006b8: 97 00 00 00  	auipc	ra, 0
800006bc: e7 80 40 ac  	jalr	-1340(ra)
;     lw        t0, 0(sp)
800006c0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800006c4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800006c8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800006cc: 63 1c 05 00  	bnez	a0, 0x800006e4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800006d0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800006d4: 93 e2 12 00  	ori	t0, t0, 1

800006d8 <.Lpcrel_hi11>:
;     la        t1, tohost
800006d8: 17 03 00 00  	auipc	t1, 0
800006dc: 13 03 83 02  	addi	t1, t1, 40
;     sw        t0, 0(t1)
800006e0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800006e4: 67 80 00 00  	ret
