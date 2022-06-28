
/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/snRuntime/test-snRuntime-atomics:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00000750 80000000 TEXT
  2 .init             00000468 80000750 TEXT
  3 .rodata           00000008 80000bb8 DATA
  4 .htif             00000048 80000bc0 DATA
  5 .tdata            00000000 80000c08 DATA
  6 .tbss             00000010 80000c08 BSS
  7 .tbssend          00000000 80000c18 DATA
  8 .sdata            00000000 80000c18 DATA
  9 .data             00000000 80000c18 DATA
 10 .sbss             00000004 80000c18 BSS
 11 .bss              00000000 80000c1c BSS
 12 .dram             00000000 80000c1c DATA
 13 .debug_info       00001e51 00000000 
 14 .debug_abbrev     000006a3 00000000 
 15 .debug_aranges    00000020 00000000 
 16 .debug_line       0000152d 00000000 
 17 .debug_loc        00000c65 00000000 
 18 .debug_ranges     000002d8 00000000 
 19 .debug_str        000007a8 00000000 
 20 .comment          00000029 00000000 
 21 .riscv.attributes 00000037 00000000 
 22 .debug_frame      00000140 00000000 
 23 .symtab           00000e40 00000000 
 24 .shstrtab         000000ea 00000000 
 25 .strtab           0000041d 00000000 


Disassembly of section .text:

80000000 <main>:
; int main() {
80000000: 13 01 01 fd  	addi	sp, sp, -48
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80000004: 23 26 81 02  	sw	s0, 44(sp)
80000008: 23 24 91 02  	sw	s1, 40(sp)
8000000c: 23 22 21 03  	sw	s2, 36(sp)
80000010: 23 20 31 03  	sw	s3, 32(sp)
80000014: 23 2e 41 01  	sw	s4, 28(sp)
80000018: 23 2c 51 01  	sw	s5, 24(sp)
8000001c: 23 2a 61 01  	sw	s6, 20(sp)
80000020: 23 28 71 01  	sw	s7, 16(sp)
80000024: 23 26 81 01  	sw	s8, 12(sp)
80000028: 23 24 91 01  	sw	s9, 8(sp)
8000002c: 23 22 a1 01  	sw	s10, 4(sp)
80000030: 37 05 00 00  	lui	a0, 0
80000034: 33 05 45 00  	add	a0, a0, tp
80000038: 83 25 45 00  	lw	a1, 4(a0)
8000003c: 13 05 00 00  	mv	a0, zero
;     if (core_id == 0) {
80000040: 63 9a 05 46  	bnez	a1, 0x800004b4 <main+0x4b4>
;     return _snrt_team_current->root;
80000044: 37 05 00 00  	lui	a0, 0
80000048: 33 05 45 00  	add	a0, a0, tp
8000004c: 03 25 05 00  	lw	a0, 0(a0)
80000050: 83 25 05 00  	lw	a1, 0(a0)
;     if (alloc->next + size > alloc->base + alloc->size) {
80000054: 83 a6 85 05  	lw	a3, 88(a1)
80000058: 03 a6 05 05  	lw	a2, 80(a1)
8000005c: 03 a7 45 05  	lw	a4, 84(a1)
80000060: 13 85 86 00  	addi	a0, a3, 8
80000064: 33 06 c7 00  	add	a2, a4, a2
80000068: 63 76 a6 00  	bgeu	a2, a0, 0x80000074 <main+0x74>
8000006c: 93 06 00 00  	mv	a3, zero
80000070: 6f 00 80 00  	j	0x80000078 <main+0x78>
;     alloc->next += size;
80000074: 23 ac a5 04  	sw	a0, 88(a1)
;     void *ret = (void *)alloc->next;
80000078: 03 a5 45 06  	lw	a0, 100(a1)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
8000007c: 13 06 00 00  	mv	a2, zero
;     alloc->next += size;
80000080: 13 07 85 00  	addi	a4, a0, 8
80000084: 23 a2 e5 06  	sw	a4, 100(a1)
;     *atomic_var = 0;
80000088: 23 a0 06 00  	sw	zero, 0(a3)
;     expected_val = *atomic_var;
8000008c: 83 a5 06 00  	lw	a1, 0(a3)
80000090: 13 0e a0 02  	addi	t3, zero, 42
;     asm volatile("sc.w %[err], %[data], (%[addr])"
80000094: 2f a6 c6 19  	sc.w	a2, t3, (a3)
;     if (*atomic_var != expected_val) nerrors++;
80000098: 03 a7 06 00  	lw	a4, 0(a3)
;     if (!tmp) nerrors++;
8000009c: 93 3e 16 00  	seqz	t4, a2
;     if (*atomic_var != expected_val) nerrors++;
800000a0: 63 04 b7 00  	beq	a4, a1, 0x800000a8 <main+0xa8>
800000a4: 93 8e 1e 00  	addi	t4, t4, 1
;     asm volatile("lr.w %[data], (%[addr])"
800000a8: 93 08 00 00  	mv	a7, zero
;     expected_val = *atomic_var;
800000ac: 03 a8 06 00  	lw	a6, 0(a3)
;     asm volatile("lr.w %[data], (%[addr])"
800000b0: af a8 06 10  	lr.w	a7, (a3)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800000b4: 93 02 00 00  	mv	t0, zero
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
800000b8: 13 0f 00 00  	mv	t5, zero
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
800000bc: 93 09 00 00  	mv	s3, zero
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800000c0: 93 07 00 00  	mv	a5, zero
800000c4: af a2 c6 19  	sc.w	t0, t3, (a3)
;     if (*atomic_var != expected_val) nerrors++;
800000c8: 03 a7 06 00  	lw	a4, 0(a3)
;     if (tmp != expected_val) nerrors++;
800000cc: b3 c5 08 01  	xor	a1, a7, a6
800000d0: 33 3a b0 00  	snez	s4, a1
;     if (tmp) nerrors++;
800000d4: b3 3f 50 00  	snez	t6, t0
;     if (*atomic_var != expected_val) nerrors++;
800000d8: 13 07 67 fd  	addi	a4, a4, -42
800000dc: 13 03 10 00  	addi	t1, zero, 1
;     __atomic_add_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800000e0: 2f a4 66 00  	amoadd.w	s0, t1, (a3)
;     if (*atomic_var != expected_val) nerrors++;
800000e4: 03 a4 06 00  	lw	s0, 0(a3)
;     __atomic_sub_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800000e8: 33 09 60 40  	neg	s2, t1
800000ec: af a4 26 01  	amoadd.w	s1, s2, (a3)
;     if (*atomic_var != expected_val) nerrors++;
800000f0: 83 a4 06 00  	lw	s1, 0(a3)
;     if (*atomic_var != expected_val) nerrors++;
800000f4: b3 3a e0 00  	snez	s5, a4
;     if (*atomic_var != expected_val) nerrors++;
800000f8: 13 04 54 fd  	addi	s0, s0, -43
800000fc: 33 3b 80 00  	snez	s6, s0
;     if (*atomic_var != expected_val) nerrors++;
80000100: 93 84 64 fd  	addi	s1, s1, -42
80000104: 93 08 d0 ff  	addi	a7, zero, -3
;     __atomic_and_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000108: 2f a6 16 61  	amoand.w	a2, a7, (a3)
;     if (*atomic_var != expected_val) nerrors++;
8000010c: 03 a6 06 00  	lw	a2, 0(a3)
80000110: 93 03 20 00  	addi	t2, zero, 2
;     __atomic_or_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000114: af a5 76 40  	amoor.w	a1, t2, (a3)
;     if (*atomic_var != expected_val) nerrors++;
80000118: 83 a5 06 00  	lw	a1, 0(a3)
;     if (*atomic_var != expected_val) nerrors++;
8000011c: b3 3b 90 00  	snez	s7, s1
;     if (*atomic_var != expected_val) nerrors++;
80000120: 13 06 86 fd  	addi	a2, a2, -40
80000124: 33 3c c0 00  	snez	s8, a2
;     if (*atomic_var != expected_val) nerrors++;
80000128: 93 85 65 fd  	addi	a1, a1, -42
;     __atomic_xor_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
8000012c: 2f a7 76 20  	amoxor.w	a4, t2, (a3)
;     if (*atomic_var != expected_val) nerrors++;
80000130: 03 a7 06 00  	lw	a4, 0(a3)
80000134: 93 02 90 02  	addi	t0, zero, 41
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
80000138: 2f af 56 e0  	amomaxu.w	t5, t0, (a3)
;     if (*atomic_var != expected_val) nerrors++;
8000013c: 03 a4 06 00  	lw	s0, 0(a3)
;     if (*atomic_var != expected_val) nerrors++;
80000140: 33 3f b0 00  	snez	t5, a1
;     if (*atomic_var != expected_val) nerrors++;
80000144: 13 07 87 fd  	addi	a4, a4, -40
80000148: b3 3c e0 00  	snez	s9, a4
;     if (*atomic_var != expected_val) nerrors++;
8000014c: 13 04 74 fd  	addi	s0, s0, -41
80000150: 13 08 80 02  	addi	a6, zero, 40
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
80000154: af a9 06 c1  	amominu.w	s3, a6, (a3)
;     if (*atomic_var != expected_val) nerrors++;
80000158: 83 a4 06 00  	lw	s1, 0(a3)
;     __atomic_exchange_n(atomic_var, amo_operand, __ATOMIC_RELAXED);
8000015c: 2f a6 c6 09  	amoswap.w	a2, t3, (a3)
;     if (tmp) nerrors++;
80000160: 33 86 4e 01  	add	a2, t4, s4
;     if (*atomic_var != expected_val) nerrors++;
80000164: 83 a5 06 00  	lw	a1, 0(a3)
;     if (*atomic_var != expected_val) nerrors++;
80000168: b3 3e 80 00  	snez	t4, s0
;     if (*atomic_var != expected_val) nerrors++;
8000016c: 93 84 84 fd  	addi	s1, s1, -40
80000170: b3 39 90 00  	snez	s3, s1
;     if (*atomic_var != expected_val) nerrors++;
80000174: 93 85 65 fd  	addi	a1, a1, -42
80000178: 33 37 b0 00  	snez	a4, a1
;     if (*atomic_var != expected_val) nerrors++;
8000017c: b3 05 f6 01  	add	a1, a2, t6
;     if (*atomic_var != expected_val) nerrors++;
80000180: b3 85 55 01  	add	a1, a1, s5
;     if (*atomic_var != expected_val) nerrors++;
80000184: b3 85 65 01  	add	a1, a1, s6
;     if (*atomic_var != expected_val) nerrors++;
80000188: b3 85 75 01  	add	a1, a1, s7
;     if (*atomic_var != expected_val) nerrors++;
8000018c: b3 85 85 01  	add	a1, a1, s8
;     if (*atomic_var != expected_val) nerrors++;
80000190: b3 85 e5 01  	add	a1, a1, t5
;     if (*atomic_var != expected_val) nerrors++;
80000194: 33 86 95 01  	add	a2, a1, s9
;             nerrors += test_atomics(&l1_a[i]);
80000198: 93 85 46 00  	addi	a1, a3, 4
;     *atomic_var = 0;
8000019c: 23 a2 06 00  	sw	zero, 4(a3)
;     expected_val = *atomic_var;
800001a0: 03 a4 46 00  	lw	s0, 4(a3)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800001a4: af a7 c5 19  	sc.w	a5, t3, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800001a8: 83 a4 46 00  	lw	s1, 4(a3)
;     if (*atomic_var != expected_val) nerrors++;
800001ac: 33 06 d6 01  	add	a2, a2, t4
;     if (*atomic_var != expected_val) nerrors++;
800001b0: 33 06 36 01  	add	a2, a2, s3
;             nerrors += test_atomics(&l1_a[i]);
800001b4: b3 0e e6 00  	add	t4, a2, a4
;     if (!tmp) nerrors++;
800001b8: 93 bf 17 00  	seqz	t6, a5
;     if (*atomic_var != expected_val) nerrors++;
800001bc: 63 84 84 00  	beq	s1, s0, 0x800001c4 <main+0x1c4>
800001c0: 93 8f 1f 00  	addi	t6, t6, 1
;     asm volatile("lr.w %[data], (%[addr])"
800001c4: 13 07 00 00  	mv	a4, zero
;     expected_val = *atomic_var;
800001c8: 03 af 46 00  	lw	t5, 4(a3)
;     asm volatile("lr.w %[data], (%[addr])"
800001cc: 2f a7 05 10  	lr.w	a4, (a1)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800001d0: 13 0a 00 00  	mv	s4, zero
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
800001d4: 93 09 00 00  	mv	s3, zero
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
800001d8: 93 0a 00 00  	mv	s5, zero
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800001dc: 93 07 00 00  	mv	a5, zero
;     if (tmp != expected_val) nerrors++;
800001e0: 33 47 e7 01  	xor	a4, a4, t5
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800001e4: 2f aa c5 19  	sc.w	s4, t3, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800001e8: 03 af 46 00  	lw	t5, 4(a3)
;     __atomic_add_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800001ec: 2f a4 65 00  	amoadd.w	s0, t1, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800001f0: 03 a4 46 00  	lw	s0, 4(a3)
;     __atomic_sub_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800001f4: af a4 25 01  	amoadd.w	s1, s2, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800001f8: 83 a4 46 00  	lw	s1, 4(a3)
;     __atomic_and_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800001fc: 2f a6 15 61  	amoand.w	a2, a7, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000200: 03 ab 46 00  	lw	s6, 4(a3)
;     __atomic_or_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000204: 2f a6 75 40  	amoor.w	a2, t2, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000208: 83 ab 46 00  	lw	s7, 4(a3)
;     __atomic_xor_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
8000020c: 2f a6 75 20  	amoxor.w	a2, t2, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000210: 03 a6 46 00  	lw	a2, 4(a3)
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
80000214: af a9 55 e0  	amomaxu.w	s3, t0, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000218: 83 a9 46 00  	lw	s3, 4(a3)
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
8000021c: af aa 05 c1  	amominu.w	s5, a6, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000220: 83 aa 46 00  	lw	s5, 4(a3)
;     __atomic_exchange_n(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000224: af a5 c5 09  	amoswap.w	a1, t3, (a1)
;     if (tmp != expected_val) nerrors++;
80000228: 33 3c e0 00  	snez	s8, a4
;     if (tmp) nerrors++;
8000022c: 33 3a 40 01  	snez	s4, s4
;     if (*atomic_var != expected_val) nerrors++;
80000230: 93 05 6f fd  	addi	a1, t5, -42
80000234: 33 3f b0 00  	snez	t5, a1
;     if (*atomic_var != expected_val) nerrors++;
80000238: 13 04 54 fd  	addi	s0, s0, -43
8000023c: b3 3c 80 00  	snez	s9, s0
;     if (*atomic_var != expected_val) nerrors++;
80000240: 93 84 64 fd  	addi	s1, s1, -42
80000244: 33 3d 90 00  	snez	s10, s1
;     if (*atomic_var != expected_val) nerrors++;
80000248: 13 07 8b fd  	addi	a4, s6, -40
8000024c: 33 37 e0 00  	snez	a4, a4
;     if (*atomic_var != expected_val) nerrors++;
80000250: 93 85 6b fd  	addi	a1, s7, -42
80000254: b3 35 b0 00  	snez	a1, a1
;     if (*atomic_var != expected_val) nerrors++;
80000258: 13 06 86 fd  	addi	a2, a2, -40
8000025c: 33 36 c0 00  	snez	a2, a2
;     if (*atomic_var != expected_val) nerrors++;
80000260: 13 84 79 fd  	addi	s0, s3, -41
;     if (*atomic_var != expected_val) nerrors++;
80000264: 83 a6 46 00  	lw	a3, 4(a3)
;     if (*atomic_var != expected_val) nerrors++;
80000268: b3 39 80 00  	snez	s3, s0
;     if (*atomic_var != expected_val) nerrors++;
8000026c: 13 84 8a fd  	addi	s0, s5, -40
80000270: 33 34 80 00  	snez	s0, s0
;     if (*atomic_var != expected_val) nerrors++;
80000274: 93 86 66 fd  	addi	a3, a3, -42
80000278: b3 36 d0 00  	snez	a3, a3
;     if (tmp != expected_val) nerrors++;
8000027c: b3 84 fe 01  	add	s1, t4, t6
;     if (tmp) nerrors++;
80000280: b3 84 84 01  	add	s1, s1, s8
;     if (*atomic_var != expected_val) nerrors++;
80000284: b3 84 44 01  	add	s1, s1, s4
;     if (*atomic_var != expected_val) nerrors++;
80000288: b3 84 e4 01  	add	s1, s1, t5
;     if (*atomic_var != expected_val) nerrors++;
8000028c: b3 84 94 01  	add	s1, s1, s9
;     if (*atomic_var != expected_val) nerrors++;
80000290: b3 84 a4 01  	add	s1, s1, s10
;     if (*atomic_var != expected_val) nerrors++;
80000294: 33 87 e4 00  	add	a4, s1, a4
;     if (*atomic_var != expected_val) nerrors++;
80000298: b3 05 b7 00  	add	a1, a4, a1
;     if (*atomic_var != expected_val) nerrors++;
8000029c: b3 85 c5 00  	add	a1, a1, a2
;     *atomic_var = 0;
800002a0: 23 20 05 00  	sw	zero, 0(a0)
;     expected_val = *atomic_var;
800002a4: 03 27 05 00  	lw	a4, 0(a0)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800002a8: af 27 c5 19  	sc.w	a5, t3, (a0)
;     if (*atomic_var != expected_val) nerrors++;
800002ac: 83 24 05 00  	lw	s1, 0(a0)
;     if (*atomic_var != expected_val) nerrors++;
800002b0: b3 85 35 01  	add	a1, a1, s3
;     if (*atomic_var != expected_val) nerrors++;
800002b4: b3 85 85 00  	add	a1, a1, s0
;             nerrors += test_atomics(&l1_a[i]);
800002b8: b3 8e d5 00  	add	t4, a1, a3
;     if (!tmp) nerrors++;
800002bc: 93 bf 17 00  	seqz	t6, a5
;     if (*atomic_var != expected_val) nerrors++;
800002c0: 63 84 e4 00  	beq	s1, a4, 0x800002c8 <main+0x2c8>
800002c4: 93 8f 1f 00  	addi	t6, t6, 1
;     asm volatile("lr.w %[data], (%[addr])"
800002c8: 93 05 00 00  	mv	a1, zero
;     expected_val = *atomic_var;
800002cc: 03 2f 05 00  	lw	t5, 0(a0)
;     asm volatile("lr.w %[data], (%[addr])"
800002d0: af 25 05 10  	lr.w	a1, (a0)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800002d4: 93 07 00 00  	mv	a5, zero
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
800002d8: 93 09 00 00  	mv	s3, zero
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
800002dc: 13 0a 00 00  	mv	s4, zero
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800002e0: 13 06 00 00  	mv	a2, zero
800002e4: af 27 c5 19  	sc.w	a5, t3, (a0)
;     if (*atomic_var != expected_val) nerrors++;
800002e8: 03 27 05 00  	lw	a4, 0(a0)
;     if (tmp != expected_val) nerrors++;
800002ec: b3 c5 e5 01  	xor	a1, a1, t5
800002f0: 33 3f b0 00  	snez	t5, a1
;     if (tmp) nerrors++;
800002f4: b3 3a f0 00  	snez	s5, a5
;     if (*atomic_var != expected_val) nerrors++;
800002f8: 13 07 67 fd  	addi	a4, a4, -42
;     __atomic_add_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800002fc: af 26 65 00  	amoadd.w	a3, t1, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000300: 83 26 05 00  	lw	a3, 0(a0)
;     __atomic_sub_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000304: af 24 25 01  	amoadd.w	s1, s2, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000308: 83 24 05 00  	lw	s1, 0(a0)
;     if (*atomic_var != expected_val) nerrors++;
8000030c: 33 3b e0 00  	snez	s6, a4
;     if (*atomic_var != expected_val) nerrors++;
80000310: 93 86 56 fd  	addi	a3, a3, -43
80000314: b3 3b d0 00  	snez	s7, a3
;     if (*atomic_var != expected_val) nerrors++;
80000318: 93 84 64 fd  	addi	s1, s1, -42
;     __atomic_and_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
8000031c: 2f 24 15 61  	amoand.w	s0, a7, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000320: 03 24 05 00  	lw	s0, 0(a0)
;     __atomic_or_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000324: af 25 75 40  	amoor.w	a1, t2, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000328: 83 25 05 00  	lw	a1, 0(a0)
;     if (*atomic_var != expected_val) nerrors++;
8000032c: 33 3c 90 00  	snez	s8, s1
;     if (*atomic_var != expected_val) nerrors++;
80000330: 13 04 84 fd  	addi	s0, s0, -40
80000334: b3 3c 80 00  	snez	s9, s0
;     if (*atomic_var != expected_val) nerrors++;
80000338: 93 85 65 fd  	addi	a1, a1, -42
;     __atomic_xor_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
8000033c: af 27 75 20  	amoxor.w	a5, t2, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000340: 83 27 05 00  	lw	a5, 0(a0)
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
80000344: af 29 55 e0  	amomaxu.w	s3, t0, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000348: 03 27 05 00  	lw	a4, 0(a0)
;     if (*atomic_var != expected_val) nerrors++;
8000034c: b3 35 b0 00  	snez	a1, a1
;     if (*atomic_var != expected_val) nerrors++;
80000350: 93 87 87 fd  	addi	a5, a5, -40
80000354: b3 37 f0 00  	snez	a5, a5
;     if (*atomic_var != expected_val) nerrors++;
80000358: 13 07 77 fd  	addi	a4, a4, -41
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
8000035c: 2f 2a 05 c1  	amominu.w	s4, a6, (a0)
;     if (*atomic_var != expected_val) nerrors++;
80000360: 83 26 05 00  	lw	a3, 0(a0)
;     __atomic_exchange_n(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000364: af 24 c5 09  	amoswap.w	s1, t3, (a0)
;     if (tmp != expected_val) nerrors++;
80000368: b3 84 fe 01  	add	s1, t4, t6
;     if (*atomic_var != expected_val) nerrors++;
8000036c: 03 24 05 00  	lw	s0, 0(a0)
;     if (*atomic_var != expected_val) nerrors++;
80000370: b3 3e e0 00  	snez	t4, a4
;     if (*atomic_var != expected_val) nerrors++;
80000374: 93 86 86 fd  	addi	a3, a3, -40
80000378: b3 36 d0 00  	snez	a3, a3
;     if (*atomic_var != expected_val) nerrors++;
8000037c: 13 04 64 fd  	addi	s0, s0, -42
80000380: 33 34 80 00  	snez	s0, s0
;     if (tmp) nerrors++;
80000384: b3 84 e4 01  	add	s1, s1, t5
;     if (*atomic_var != expected_val) nerrors++;
80000388: b3 84 54 01  	add	s1, s1, s5
;     if (*atomic_var != expected_val) nerrors++;
8000038c: b3 84 64 01  	add	s1, s1, s6
;     if (*atomic_var != expected_val) nerrors++;
80000390: b3 84 74 01  	add	s1, s1, s7
;     if (*atomic_var != expected_val) nerrors++;
80000394: b3 84 84 01  	add	s1, s1, s8
;     if (*atomic_var != expected_val) nerrors++;
80000398: b3 84 94 01  	add	s1, s1, s9
;     if (*atomic_var != expected_val) nerrors++;
8000039c: b3 85 b4 00  	add	a1, s1, a1
;     if (*atomic_var != expected_val) nerrors++;
800003a0: b3 87 f5 00  	add	a5, a1, a5
;             nerrors += test_atomics(&l3_a[i]);
800003a4: 93 05 45 00  	addi	a1, a0, 4
;     *atomic_var = 0;
800003a8: 23 22 05 00  	sw	zero, 4(a0)
;     expected_val = *atomic_var;
800003ac: 83 24 45 00  	lw	s1, 4(a0)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800003b0: 2f a6 c5 19  	sc.w	a2, t3, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800003b4: 03 27 45 00  	lw	a4, 4(a0)
;     if (*atomic_var != expected_val) nerrors++;
800003b8: b3 87 d7 01  	add	a5, a5, t4
;     if (*atomic_var != expected_val) nerrors++;
800003bc: b3 86 d7 00  	add	a3, a5, a3
;             nerrors += test_atomics(&l3_a[i]);
800003c0: b3 8e 86 00  	add	t4, a3, s0
;     if (!tmp) nerrors++;
800003c4: 13 3f 16 00  	seqz	t5, a2
;     if (*atomic_var != expected_val) nerrors++;
800003c8: 63 04 97 00  	beq	a4, s1, 0x800003d0 <main+0x3d0>
800003cc: 13 0f 1f 00  	addi	t5, t5, 1
;     asm volatile("lr.w %[data], (%[addr])"
800003d0: 13 06 00 00  	mv	a2, zero
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800003d4: 13 07 00 00  	mv	a4, zero
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
800003d8: 93 04 00 00  	mv	s1, zero
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
800003dc: 13 04 00 00  	mv	s0, zero
;     expected_val = *atomic_var;
800003e0: 83 27 45 00  	lw	a5, 4(a0)
;     asm volatile("lr.w %[data], (%[addr])"
800003e4: 2f a6 05 10  	lr.w	a2, (a1)
;     asm volatile("sc.w %[err], %[data], (%[addr])"
800003e8: 2f a7 c5 19  	sc.w	a4, t3, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800003ec: 83 2f 45 00  	lw	t6, 4(a0)
;     __atomic_add_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800003f0: af a6 65 00  	amoadd.w	a3, t1, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800003f4: 03 23 45 00  	lw	t1, 4(a0)
;     __atomic_sub_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
800003f8: af a6 25 01  	amoadd.w	a3, s2, (a1)
;     if (*atomic_var != expected_val) nerrors++;
800003fc: 03 29 45 00  	lw	s2, 4(a0)
;     __atomic_and_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000400: af a6 15 61  	amoand.w	a3, a7, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000404: 83 28 45 00  	lw	a7, 4(a0)
;     __atomic_or_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000408: af a6 75 40  	amoor.w	a3, t2, (a1)
;     if (*atomic_var != expected_val) nerrors++;
8000040c: 83 29 45 00  	lw	s3, 4(a0)
;     __atomic_xor_fetch(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000410: af a6 75 20  	amoxor.w	a3, t2, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000414: 83 26 45 00  	lw	a3, 4(a0)
;     asm volatile("amomaxu.w %[prev], %[data], (%[addr])"
80000418: af a4 55 e0  	amomaxu.w	s1, t0, (a1)
;     if (tmp != expected_val) nerrors++;
8000041c: 33 46 f6 00  	xor	a2, a2, a5
80000420: b3 32 c0 00  	snez	t0, a2
;     if (tmp) nerrors++;
80000424: b3 33 e0 00  	snez	t2, a4
;     if (*atomic_var != expected_val) nerrors++;
80000428: 93 87 6f fd  	addi	a5, t6, -42
8000042c: b3 3f f0 00  	snez	t6, a5
;     if (*atomic_var != expected_val) nerrors++;
80000430: 93 04 53 fd  	addi	s1, t1, -43
80000434: 33 33 90 00  	snez	t1, s1
;     if (*atomic_var != expected_val) nerrors++;
80000438: 13 06 69 fd  	addi	a2, s2, -42
8000043c: 33 36 c0 00  	snez	a2, a2
;     if (*atomic_var != expected_val) nerrors++;
80000440: 13 87 88 fd  	addi	a4, a7, -40
80000444: 33 37 e0 00  	snez	a4, a4
;     if (*atomic_var != expected_val) nerrors++;
80000448: 93 87 69 fd  	addi	a5, s3, -42
;     if (*atomic_var != expected_val) nerrors++;
8000044c: 83 24 45 00  	lw	s1, 4(a0)
;     if (*atomic_var != expected_val) nerrors++;
80000450: b3 37 f0 00  	snez	a5, a5
;     if (*atomic_var != expected_val) nerrors++;
80000454: 93 86 86 fd  	addi	a3, a3, -40
80000458: b3 36 d0 00  	snez	a3, a3
;     if (*atomic_var != expected_val) nerrors++;
8000045c: 93 84 74 fd  	addi	s1, s1, -41
;     asm volatile("amominu.w %[prev], %[data], (%[addr])"
80000460: 2f a4 05 c1  	amominu.w	s0, a6, (a1)
;     if (*atomic_var != expected_val) nerrors++;
80000464: 03 24 45 00  	lw	s0, 4(a0)
;     __atomic_exchange_n(atomic_var, amo_operand, __ATOMIC_RELAXED);
80000468: af a5 c5 09  	amoswap.w	a1, t3, (a1)
;     if (*atomic_var != expected_val) nerrors++;
8000046c: 03 25 45 00  	lw	a0, 4(a0)
;     if (*atomic_var != expected_val) nerrors++;
80000470: b3 35 90 00  	snez	a1, s1
;     if (*atomic_var != expected_val) nerrors++;
80000474: 93 04 84 fd  	addi	s1, s0, -40
80000478: b3 34 90 00  	snez	s1, s1
;     if (*atomic_var != expected_val) nerrors++;
8000047c: 13 05 65 fd  	addi	a0, a0, -42
80000480: 33 35 a0 00  	snez	a0, a0
;     if (tmp != expected_val) nerrors++;
80000484: 33 84 ee 01  	add	s0, t4, t5
;     if (tmp) nerrors++;
80000488: 33 04 54 00  	add	s0, s0, t0
;     if (*atomic_var != expected_val) nerrors++;
8000048c: 33 04 74 00  	add	s0, s0, t2
;     if (*atomic_var != expected_val) nerrors++;
80000490: 33 04 f4 01  	add	s0, s0, t6
;     if (*atomic_var != expected_val) nerrors++;
80000494: 33 04 64 00  	add	s0, s0, t1
;     if (*atomic_var != expected_val) nerrors++;
80000498: 33 06 c4 00  	add	a2, s0, a2
;     if (*atomic_var != expected_val) nerrors++;
8000049c: 33 06 e6 00  	add	a2, a2, a4
;     if (*atomic_var != expected_val) nerrors++;
800004a0: 33 06 f6 00  	add	a2, a2, a5
;     if (*atomic_var != expected_val) nerrors++;
800004a4: 33 06 d6 00  	add	a2, a2, a3
;     if (*atomic_var != expected_val) nerrors++;
800004a8: b3 05 b6 00  	add	a1, a2, a1
;     if (*atomic_var != expected_val) nerrors++;
800004ac: b3 85 95 00  	add	a1, a1, s1
;             nerrors += test_atomics(&l3_a[i]);
800004b0: 33 85 a5 00  	add	a0, a1, a0
; }
800004b4: 03 2d 41 00  	lw	s10, 4(sp)
800004b8: 83 2c 81 00  	lw	s9, 8(sp)
800004bc: 03 2c c1 00  	lw	s8, 12(sp)
800004c0: 83 2b 01 01  	lw	s7, 16(sp)
800004c4: 03 2b 41 01  	lw	s6, 20(sp)
800004c8: 83 2a 81 01  	lw	s5, 24(sp)
800004cc: 03 2a c1 01  	lw	s4, 28(sp)
800004d0: 83 29 01 02  	lw	s3, 32(sp)
800004d4: 03 29 41 02  	lw	s2, 36(sp)
800004d8: 83 24 81 02  	lw	s1, 40(sp)
800004dc: 03 24 c1 02  	lw	s0, 44(sp)
800004e0: 13 01 01 03  	addi	sp, sp, 48
800004e4: 67 80 00 00  	ret

800004e8 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800004e8: 37 05 00 00  	lui	a0, 0
800004ec: 33 05 45 00  	add	a0, a0, tp
800004f0: 03 25 05 00  	lw	a0, 0(a0)
800004f4: 03 25 05 00  	lw	a0, 0(a0)
800004f8: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
800004fc: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000500: 33 85 a5 40  	sub	a0, a1, a0
80000504: 67 80 00 00  	ret

80000508 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80000508: 37 05 00 00  	lui	a0, 0
8000050c: 33 05 45 00  	add	a0, a0, tp
80000510: 03 25 05 00  	lw	a0, 0(a0)
80000514: 03 25 05 00  	lw	a0, 0(a0)
80000518: 03 25 05 07  	lw	a0, 112(a0)
8000051c: 67 80 00 00  	ret

80000520 <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80000520: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80000524: 63 44 05 00  	bltz	a0, 0x8000052c <__snrt_isr+0xc>
;         while (1)
80000528: 6f 00 00 00  	j	0x80000528 <__snrt_isr+0x8>
8000052c: b7 05 00 80  	lui	a1, 524288
80000530: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80000534: 33 75 b5 00  	and	a0, a0, a1
80000538: 13 05 d5 ff  	addi	a0, a0, -3
8000053c: 93 55 25 00  	srli	a1, a0, 2
80000540: 13 15 e5 01  	slli	a0, a0, 30
80000544: 33 65 b5 00  	or	a0, a0, a1
80000548: 93 05 40 00  	addi	a1, zero, 4
8000054c: 63 0a b5 06  	beq	a0, a1, 0x800005c0 <.LBB1_7+0x58>
80000550: 63 1a 05 08  	bnez	a0, 0x800005e4 <.LBB1_7+0x7c>
80000554: 37 05 00 00  	lui	a0, 0
80000558: 33 05 45 00  	add	a0, a0, tp
8000055c: 03 25 05 00  	lw	a0, 0(a0)
80000560: 03 25 05 00  	lw	a0, 0(a0)
80000564: f3 25 40 f1  	csrr	a1, mhartid

80000568 <.LBB1_7>:
;     asm volatile(
80000568: 17 06 00 00  	auipc	a2, 0
8000056c: 13 06 06 6b  	addi	a2, a2, 1712
80000570: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80000574: 93 06 06 00  	mv	a3, a2
80000578: 93 02 10 00  	addi	t0, zero, 1
8000057c: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80000580: e3 9e 02 fe  	bnez	t0, 0x8000057c <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80000584: b7 06 00 00  	lui	a3, 0
80000588: b3 86 46 00  	add	a3, a3, tp
8000058c: 83 a6 86 00  	lw	a3, 8(a3)
80000590: 33 85 a5 40  	sub	a0, a1, a0
80000594: 93 55 35 00  	srli	a1, a0, 3
80000598: 93 f5 c5 ff  	andi	a1, a1, -4
8000059c: b3 85 b6 00  	add	a1, a3, a1
800005a0: 83 a6 05 00  	lw	a3, 0(a1)
800005a4: 13 07 10 00  	addi	a4, zero, 1
800005a8: 33 15 a7 00  	sll	a0, a4, a0
800005ac: 13 45 f5 ff  	not	a0, a0
800005b0: 33 f5 a6 00  	and	a0, a3, a0
800005b4: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
800005b8: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
800005bc: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800005c0: 37 05 00 00  	lui	a0, 0
800005c4: 33 05 45 00  	add	a0, a0, tp
800005c8: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800005cc: b7 05 00 00  	lui	a1, 0
800005d0: b3 85 45 00  	add	a1, a1, tp
800005d4: 83 a5 c5 00  	lw	a1, 12(a1)
800005d8: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
800005dc: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
800005e0: 23 a4 a5 00  	sw	a0, 8(a1)
; }
800005e4: 67 80 00 00  	ret

800005e8 <_snrt_init_team>:
;     team->base.root = team;
800005e8: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
800005ec: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
800005f0: 03 23 87 00  	lw	t1, 8(a4)
800005f4: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
800005f8: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
800005fc: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80000600: 83 22 47 00  	lw	t0, 4(a4)
80000604: 33 88 08 03  	mul	a6, a7, a6
80000608: 33 05 58 02  	mul	a0, a6, t0
8000060c: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80000610: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80000614: 33 85 68 40  	sub	a0, a7, t1
80000618: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
8000061c: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80000620: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80000624: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80000628: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
8000062c: 03 25 87 01  	lw	a0, 24(a4)
80000630: b7 05 00 10  	lui	a1, 65536
80000634: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80000638: 23 a2 07 02  	sw	zero, 36(a5)
8000063c: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80000640: 03 25 07 02  	lw	a0, 32(a4)
80000644: 83 25 47 02  	lw	a1, 36(a4)
80000648: 23 a4 a7 02  	sw	a0, 40(a5)
8000064c: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80000650: 23 a8 c7 02  	sw	a2, 48(a5)
80000654: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80000658: 23 ac d7 02  	sw	a3, 56(a5)
8000065c: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80000660: 03 25 07 01  	lw	a0, 16(a4)
80000664: 33 08 a6 00  	add	a6, a2, a0
80000668: 93 05 08 19  	addi	a1, a6, 400
8000066c: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80000670: b3 32 a8 00  	sltu	t0, a6, a0
80000674: 93 55 15 00  	srli	a1, a0, 1
80000678: 33 03 b8 00  	add	t1, a6, a1
8000067c: b3 35 03 01  	sltu	a1, t1, a6
80000680: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80000684: 23 a0 67 04  	sw	t1, 64(a5)
80000688: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
8000068c: 13 15 15 00  	slli	a0, a0, 1
80000690: b3 05 c5 00  	add	a1, a0, a2
80000694: 33 b5 a5 00  	sltu	a0, a1, a0
80000698: 23 a4 b7 04  	sw	a1, 72(a5)
8000069c: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
800006a0: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
800006a4: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
800006a8: 37 05 00 00  	lui	a0, 0
800006ac: 33 05 45 00  	add	a0, a0, tp
800006b0: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800006b4: 03 a5 07 00  	lw	a0, 0(a5)
800006b8: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
800006bc: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
800006c0: b3 85 b8 40  	sub	a1, a7, a1
800006c4: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
800006c8: b7 05 00 00  	lui	a1, 0
800006cc: b3 85 45 00  	add	a1, a1, tp
800006d0: 23 a2 a5 00  	sw	a0, 4(a1)
800006d4: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
800006d8: 33 85 a8 02  	mul	a0, a7, a0

800006dc <.LBB0_1>:
800006dc: 97 05 00 00  	auipc	a1, 0
800006e0: 93 85 05 54  	addi	a1, a1, 1344
800006e4: 33 05 b5 00  	add	a0, a0, a1
800006e8: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
800006ec: 83 28 07 03  	lw	a7, 48(a4)
800006f0: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
800006f4: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
800006f8: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
800006fc: 13 07 08 18  	addi	a4, a6, 384
;     team->peripherals.cl_clint =
80000700: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80000704: 13 05 76 00  	addi	a0, a2, 7
80000708: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
8000070c: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80000710: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80000714: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80000718: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
8000071c: 03 a5 05 00  	lw	a0, 0(a1)
80000720: 13 05 f5 44  	addi	a0, a0, 1103
80000724: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80000728: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
8000072c: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80000730: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80000734: 37 05 00 00  	lui	a0, 0
80000738: 33 05 45 00  	add	a0, a0, tp
8000073c: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80000740: 37 05 00 00  	lui	a0, 0
80000744: 33 05 45 00  	add	a0, a0, tp
80000748: 23 26 e5 00  	sw	a4, 12(a0)
; }
8000074c: 67 80 00 00  	ret

Disassembly of section .init:

80000750 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80000750: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80000754: 93 81 81 cb  	addi	gp, gp, -840

80000758 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80000758: 97 00 00 00  	auipc	ra, 0
8000075c: e7 80 40 3c  	jalr	964(ra)

80000760 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80000760: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80000764: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80000768: 97 00 00 00  	auipc	ra, 0
8000076c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80000770: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80000774: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80000778: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
8000077c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80000780: 63 92 02 02  	bnez	t0, 0x800007a4 <snrt.crt0.init_registers>

80000784 <.Lpcrel_hi0>:
;     la        t0, _edata
80000784: 97 02 00 00  	auipc	t0, 0
80000788: 93 82 42 49  	addi	t0, t0, 1172

8000078c <.Lpcrel_hi1>:
;     la        t1, _end
8000078c: 17 03 00 00  	auipc	t1, 0
80000790: 13 03 03 49  	addi	t1, t1, 1168
;     bge       t0, t1, 2f
80000794: 63 d8 62 00  	bge	t0, t1, 0x800007a4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80000798: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
8000079c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
800007a0: e3 cc 62 fe  	blt	t0, t1, 0x80000798 <.Lpcrel_hi1+0xc>

800007a4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
800007a4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
800007a8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
800007ac: 63 82 02 08  	beqz	t0, 0x80000830 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
800007b0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
800007b4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
800007b8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
800007bc: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
800007c0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
800007c4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
800007c8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
800007cc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
800007d0: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
800007d4: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
800007d8: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
800007dc: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
800007e0: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
800007e4: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
800007e8: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
800007ec: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
800007f0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
800007f4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
800007f8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
800007fc: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80000800: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80000804: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80000808: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
8000080c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80000810: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80000814: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80000818: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
8000081c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80000820: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80000824: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80000828: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
8000082c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80000830 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80000830: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80000834: 23 a0 06 00  	sw	zero, 0(a3)

80000838 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80000838: 97 02 00 00  	auipc	t0, 0
8000083c: 83 a2 02 38  	lw	t0, 896(t0)
;     sub       a3, a3, t0
80000840: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80000844: 93 87 06 00  	mv	a5, a3

80000848 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80000848: 97 03 00 00  	auipc	t2, 0
8000084c: 83 a3 43 37  	lw	t2, 884(t2)
;     sll       t0, a0, t2  # this hart
80000850: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80000854: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80000858: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
8000085c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80000860: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80000864: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80000868: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
8000086c: b3 86 66 40  	sub	a3, a3, t1

80000870 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80000870: 97 02 00 00  	auipc	t0, 0
80000874: 93 82 82 39  	addi	t0, t0, 920

80000878 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80000878: 17 03 00 00  	auipc	t1, 0
8000087c: 13 03 03 39  	addi	t1, t1, 912

80000880 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80000880: 97 03 00 00  	auipc	t2, 0
80000884: 93 83 83 38  	addi	t2, t2, 904

80000888 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80000888: 17 0e 00 00  	auipc	t3, 0
8000088c: 13 0e 0e 39  	addi	t3, t3, 912
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80000890: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80000894: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80000898: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
8000089c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
800008a0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
800008a4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
800008a8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
800008ac: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
800008b0: 63 dc 62 00  	bge	t0, t1, 0x800008c8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
800008b4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
800008b8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
800008bc: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800008c0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
800008c4: e3 c8 62 fe  	blt	t0, t1, 0x800008b4 <.Lpcrel_hi7+0x2c>

800008c8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
800008c8: 97 02 00 00  	auipc	t0, 0
800008cc: 93 82 02 34  	addi	t0, t0, 832

800008d0 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
800008d0: 17 03 00 00  	auipc	t1, 0
800008d4: 13 03 83 34  	addi	t1, t1, 840
;     bge       t0, t1, 2f
800008d8: 63 da 62 00  	bge	t0, t1, 0x800008ec <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
800008dc: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
800008e0: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
800008e4: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
800008e8: e3 ca 72 fe  	blt	t0, t2, 0x800008dc <.Lpcrel_hi9+0xc>

800008ec <snrt.crt0.init_team>:
;     addi      sp, sp, -20
800008ec: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
800008f0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
800008f4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
800008f8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
800008fc: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80000900: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80000904: 97 00 00 00  	auipc	ra, 0
80000908: e7 80 40 ce  	jalr	-796(ra)
;     lw        a0, 0(sp)
8000090c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80000910: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80000914: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80000918: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
8000091c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80000920: 13 01 41 01  	addi	sp, sp, 20

80000924 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80000924: 97 02 00 00  	auipc	t0, 0
80000928: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
8000092c: 73 90 52 30  	csrw	mtvec, t0

80000930 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80000930: 97 00 00 00  	auipc	ra, 0
80000934: e7 80 00 22  	jalr	544(ra)

80000938 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80000938: 97 f0 ff ff  	auipc	ra, 1048575
8000093c: e7 80 80 6c  	jalr	1736(ra)
;     mv        s0, a0 # store return value in s0
80000940: 13 04 05 00  	mv	s0, a0

80000944 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80000944: 97 00 00 00  	auipc	ra, 0
80000948: e7 80 c0 20  	jalr	524(ra)

8000094c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
8000094c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80000950: 97 00 00 00  	auipc	ra, 0
80000954: e7 80 c0 22  	jalr	556(ra)
;     wfi
80000958: 73 00 50 10  	wfi	
;     j       1b
8000095c: 6f f0 df ff  	j	0x80000958 <snrt.crt0.end+0xc>

80000960 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80000960: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80000964: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80000968: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
8000096c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80000970: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80000974: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80000978: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
8000097c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80000980: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80000984: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80000988: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
8000098c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80000990: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80000994: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80000998: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
8000099c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
800009a0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
800009a4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
800009a8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
800009ac: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
800009b0: 63 84 02 08  	beqz	t0, 0x80000a38 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
800009b4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
800009b8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
800009bc: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
800009c0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
800009c4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
800009c8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
800009cc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
800009d0: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
800009d4: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
800009d8: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
800009dc: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
800009e0: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
800009e4: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
800009e8: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
800009ec: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
800009f0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
800009f4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
800009f8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
800009fc: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80000a00: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80000a04: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80000a08: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80000a0c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80000a10: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80000a14: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80000a18: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80000a1c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80000a20: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80000a24: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80000a28: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80000a2c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80000a30: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80000a34: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80000a38: 97 00 00 00  	auipc	ra, 0
80000a3c: e7 80 80 ae  	jalr	-1304(ra)
;     csrr    t0, misa
80000a40: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80000a44: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80000a48: 63 84 02 08  	beqz	t0, 0x80000ad0 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80000a4c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80000a50: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80000a54: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80000a58: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80000a5c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80000a60: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80000a64: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80000a68: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80000a6c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80000a70: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80000a74: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80000a78: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80000a7c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80000a80: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80000a84: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80000a88: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80000a8c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80000a90: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80000a94: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80000a98: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80000a9c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80000aa0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80000aa4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80000aa8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80000aac: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80000ab0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80000ab4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80000ab8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80000abc: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80000ac0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80000ac4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80000ac8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80000acc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80000ad0: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80000ad4: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80000ad8: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
80000adc: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80000ae0: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80000ae4: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80000ae8: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
80000aec: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80000af0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80000af4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80000af8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
80000afc: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80000b00: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80000b04: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80000b08: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
80000b0c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80000b10: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80000b14: 13 01 01 05  	addi	sp, sp, 80
;     mret
80000b18: 73 00 20 30  	mret	

80000b1c <_snrt_init_core_info>:
;     mv        a4, a1
80000b1c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80000b20: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80000b24: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80000b28: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
80000b2c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80000b30: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80000b34: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80000b38: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
80000b3c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80000b40: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80000b44: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80000b48: 33 75 b5 02  	remu	a0, a0, a1
;     ret
80000b4c: 67 80 00 00  	ret

80000b50 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80000b50: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80000b54: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80000b58: 97 00 00 00  	auipc	ra, 0
80000b5c: e7 80 00 9b  	jalr	-1616(ra)
;     lw        a0, 0(a0)
80000b60: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80000b64: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80000b68: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
80000b6c: 13 01 41 00  	addi	sp, sp, 4
;     ret
80000b70: 67 80 00 00  	ret

80000b74 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
80000b74: 03 25 85 00  	lw	a0, 8(a0)
;     ret
80000b78: 67 80 00 00  	ret

80000b7c <_snrt_exit>:
;     addi      sp, sp, -8
80000b7c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
80000b80: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
80000b84: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
80000b88: 97 00 00 00  	auipc	ra, 0
80000b8c: e7 80 00 96  	jalr	-1696(ra)
;     lw        t0, 0(sp)
80000b90: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
80000b94: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
80000b98: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
80000b9c: 63 1c 05 00  	bnez	a0, 0x80000bb4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
80000ba0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
80000ba4: 93 e2 12 00  	ori	t0, t0, 1

80000ba8 <.Lpcrel_hi11>:
;     la        t1, tohost
80000ba8: 17 03 00 00  	auipc	t1, 0
80000bac: 13 03 83 01  	addi	t1, t1, 24
;     sw        t0, 0(t1)
80000bb0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
80000bb4: 67 80 00 00  	ret
