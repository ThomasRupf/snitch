       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002970
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002970, (wrb) ra  <-- 4120, goto 0x80002970
       0      269        M 0x80002970 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003970
       0      270        M 0x80002974 addi    gp, gp, -232           #; gp  = 0x80003970, (wrb) gp  <-- 0x80003888
       0      271        M 0x80002978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002978
       0      272        M 0x8000297c jalr    ra, ra, 964            #; ra  = 0x80002978, (wrb) ra  <-- 0x80002980, goto 0x80002d3c
       0      292        M 0x80002d3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002d40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002d44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002d48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002d4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002d50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002d54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002d58 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002d5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002d60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002d64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002d68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002d6c ret                            #; ra  = 0x80002980, goto 0x80002980
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002980 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002984 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002988 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002988
       0      508        M 0x8000298c jalr    ra, ra, 1036           #; ra  = 0x80002988, (wrb) ra  <-- 0x80002990, goto 0x80002d94
       0      523        M 0x80002d94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002d98 ret                            #; ra  = 0x80002990, goto 0x80002990
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002990 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002994 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002998 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000299c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800029a0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800029a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029a4
       0      551        M 0x800029a8 addi    t0, t0, 1972           #; t0  = 0x800029a4, (wrb) t0  <-- 0x80003158
       0      552        M 0x800029ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029ac
       0      562        M 0x800029b0 addi    t1, t1, 1968           #; t1  = 0x800029ac, (wrb) t1  <-- 0x8000315c
       0      563        M 0x800029b4 bge     t0, t1, pc + 16        #; t0  = 0x80003158, t1  = 0x8000315c, not taken
       0      564        M 0x800029b8 sw      zero, 0(t0)            #; t0  = 0x80003158, 0 ~~> Word[0x80003158]
       0      565        M 0x800029bc addi    t0, t0, 4              #; t0  = 0x80003158, (wrb) t0  <-- 0x8000315c
       0      573        M 0x800029c0 blt     t0, t1, pc - 8         #; t0  = 0x8000315c, t1  = 0x8000315c, not taken
       0      574        M 0x800029c4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800029c8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800029cc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800029d0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800029d4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800029d8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800029dc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800029e0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800029e4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800029e8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800029ec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800029f0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800029f4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800029f8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800029fc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002a00 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002a04 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002a08 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002a0c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002a10 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002a14 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002a18 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002a1c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002a20 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002a24 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002a28 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002a2c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002a30 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002a34 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002a38 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002a3c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002a40 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002a44 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002a48 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002a4c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002a50 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002a54 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002a58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a58
       0      684        M 0x80002a5c lw      t0, 900(t0)            #; t0  = 0x80002a58, t0  <~~ Word[0x80002ddc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002a60 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002a64 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002a68 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a68
       0      708        M 0x80002a6c lw      t2, 880(t2)            #; t2  = 0x80002a68, t2  <~~ Word[0x80002dd8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002a70 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002a74 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002a78 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002a7c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002a80 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002a84 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002a88 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002a8c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002a90 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a90
       0      762        M 0x80002a94 addi    t0, t0, 1528           #; t0  = 0x80002a90, (wrb) t0  <-- 0x80003088
       0      763        M 0x80002a98 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a98
       0      764        M 0x80002a9c addi    t1, t1, 1520           #; t1  = 0x80002a98, (wrb) t1  <-- 0x80003088
       0      775        M 0x80002aa0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002aa0
       0      776        M 0x80002aa4 addi    t2, t2, 1512           #; t2  = 0x80002aa0, (wrb) t2  <-- 0x80003088
       0      777        M 0x80002aa8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002aa8
       0      778        M 0x80002aac addi    t3, t3, 1520           #; t3  = 0x80002aa8, (wrb) t3  <-- 0x80003098
       0      787        M 0x80002ab0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003088, (wrb) sp  <-- 0x80122ff8
       0      788        M 0x80002ab4 sub     sp, sp, t1             #; sp  = 0x80122ff8, t1  = 0x80003088, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002ab8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003088, (wrb) sp  <-- 0x80122ff8
       0      790        M 0x80002abc sub     sp, sp, t3             #; sp  = 0x80122ff8, t3  = 0x80003098, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002ac0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002ac4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002ac8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002acc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002ad0 bge     t0, t1, pc + 24        #; t0  = 0x80003088, t1  = 0x80003088, taken, goto 0x80002ae8
       0      823        M 0x80002ae8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ae8
       0      824        M 0x80002aec addi    t0, t0, 1440           #; t0  = 0x80002ae8, (wrb) t0  <-- 0x80003088
       0      835        M 0x80002af0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002af0
       0      836        M 0x80002af4 addi    t1, t1, 1448           #; t1  = 0x80002af0, (wrb) t1  <-- 0x80003098
       0      837        M 0x80002af8 bge     t0, t1, pc + 20        #; t0  = 0x80003088, t1  = 0x80003098, not taken
       0      838        M 0x80002afc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002b00 addi    t0, t0, 4              #; t0  = 0x80003088, (wrb) t0  <-- 0x8000308c
       0      848        M 0x80002b04 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002b08 blt     t0, t2, pc - 12        #; t0  = 0x8000308c, t2  = 0x80003088, not taken
       0      850        M 0x80002b0c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002b10 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002b14 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002b18 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002b1c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002b20 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002b24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b24
       0      877        M 0x80002b28 jalr    ra, ra, -1060          #; ra  = 0x80002b24, (wrb) ra  <-- 0x80002b2c, goto 0x80002700
       0      898        M 0x80002700 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002704 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002708 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000270c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002710 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002714 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002718 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000271c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002720 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002724 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002728 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000272c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002730 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002734 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002738 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000273c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002740 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002744 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002748 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000274c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002750 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002754 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002758 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000275c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002760 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002764 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002768 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000276c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002770 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002774 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002778 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000277c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002780 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002784 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002788 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000278c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002790 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002794 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002798 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000279c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800027a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800027a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800027a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800027ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800027b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800027b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800027b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800027bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x800027c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x800027c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x800027c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800027cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x800027d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x800027d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x800027d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x800027dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x800027e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x800027e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x800027e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x800027ec li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800027f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x800027f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037f4
       0     1281        M 0x800027f8 addi    a1, a1, -1688          #; a1  = 0x800037f4, (wrb) a1  <-- 0x8000315c
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x800027fc add     a0, a0, a1             #; a0  = 0, a1  = 0x8000315c, (wrb) a0  <-- 0x8000315c
       0     1291        M 0x80002800 sw      zero, 0(a0)            #; a0  = 0x8000315c, 0 ~~> Word[0x8000315c]
       0     1292        M 0x80002804 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002808 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000280c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002810 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002814 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002818 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000281c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002820 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002824 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002828 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000282c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002830 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002834 lw      a0, 0(a1)              #; a1  = 0x8000315c, a0  <~~ Word[0x8000315c]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002838 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000283c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002840 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002844 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002848 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000284c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002850 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002854 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002858 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000285c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002860 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002864 ret                            #; ra  = 0x80002b2c, goto 0x80002b2c
       0     1415        M 0x80002b2c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002b30 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002b34 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002b38 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002b3c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002b40 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002b44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b44
       0     1434        M 0x80002b48 addi    t0, t0, 60             #; t0  = 0x80002b44, (wrb) t0  <-- 0x80002b80
       0     1435        M 0x80002b4c csrw    mtvec, t0              #; t0  = 0x80002b80, (lsu) a4  <-- 4132
       0     1443        M 0x80002b50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b50
       0     1444        M 0x80002b54 jalr    ra, ra, 544            #; ra  = 0x80002b50, (wrb) ra  <-- 0x80002b58, goto 0x80002d70
       0     1460        M 0x80002d70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002d74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b58 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002d78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d78
       0     1463        M 0x80002d7c jalr    ra, ra, -1264          #; ra  = 0x80002d78, (wrb) ra  <-- 0x80002d80, goto 0x80002888
       0     1481        M 0x80002888 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000288c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002890 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002894 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002898 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000289c ret                            #; ra  = 0x80002d80, goto 0x80002d80
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002d80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002d84 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002d88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002d8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002b58
       0     1541        M 0x80002d90 ret                            #; ra  = 0x80002b58, goto 0x80002b58
       0     1545        M 0x80002b58 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b58
       0     1546        M 0x80002b5c jalr    ra, ra, -900           #; ra  = 0x80000b58, (wrb) ra  <-- 0x80002b60, goto 0x800007d4
       0     1551        M 0x800007d4 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1552        M 0x800007d8 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b60 ~~> Word[0x0011ff5c]
       0     1553        M 0x800007dc sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1554        M 0x800007e0 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1555        M 0x800007e4 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1557        M 0x800007ec lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1558        M 0x800007e8 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1567        M 0x800007f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1568        M 0x800007f4 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1569        M 0x800007f8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1571        M                                           #; (lsu) a1  <-- 0
       0     1572        M 0x800007fc bnez    a1, pc + 640           #; a1  = 0, not taken
       0     1579        M 0x80000800 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1580        M 0x80000804 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1581        M 0x80000808 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1584        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1585        M 0x8000080c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1588        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1595        M 0x80000810 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1598        M                                           #; (lsu) s0  <-- 0x00100000
       0     1599        M 0x80000814 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1602        M                                           #; (lsu) a1  <-- 0x00100000
       0     1603        M 0x80000818 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1604        M 0x8000081c addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1606        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1608        M 0x80000820 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1609        M 0x80000824 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x80000850
       0     1634        M 0x80000850 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1635        M 0x80000854 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1636        M 0x80000858 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
       0     1637        M 0x8000085c mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1660        M 0x80000860 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x80000834
       0     1661        M 0x80000834 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1662        M 0x80000838 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
       0     1663        M 0x8000083c addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
       0     1673        M 0x80000840 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
       0     1674        M 0x80000844 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
       0     1675        M 0x80000848 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1676        M 0x8000084c j       pc + 0x28              #; goto 0x80000874
       0     1685        M 0x80000874 li      a1, 1                  #; (wrb) a1  <-- 1
       0     1686        M 0x80000878 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1687        M 0x8000087c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000087c
       0     1697        M 0x80000880 jalr    ra, ra, -584           #; ra  = 0x8000087c, (wrb) ra  <-- 0x80000884, goto 0x80000634
       0     1720        M 0x80000634 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     1721        M 0x80000638 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1722        M 0x8000063c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1732        M 0x80000640 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1733        M 0x80000644 sltu    a3, a0, a3             #; a0  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1734        M 0x80000648 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1735        M 0x8000064c beqz    a2, pc + 220           #; a2  = 1, not taken
       0     1744        M 0x80000650 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1745        M 0x80000654 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1746        M 0x80000658 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1747        M 0x8000065c li      a5, 192                #; (wrb) a5  <-- 192
       0     1756        M 0x80000660 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1757        M 0x80000664 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1758        M 0x80000668 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1759        M 0x8000066c scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     1768        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1769        M 0x80000674 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003674
       0     1770        M 0x80000678 addi    a0, a0, -1500          #; a0  = 0x80003674, (wrb) a0  <-- 0x80003098
       0     1771        M                                           #; (acc) gp  <-- 0x00053187
       0     1773        M 0x8000067c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003098]
       0     1781        M 0x80000680 csrrsi  a0, ssr, 1             #; 
       0     1782        M 0x80000684 fcvt.d.wu ft4, a1              #; ac1  = 1, (f:lsu) ft3  <-- 1.4142
       0     1783        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1784        M 0x80000688 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1787        M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1788        M 0x8000068c fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1789        M                                           #; (f:fpu) ft0  <-- 1.4142
       0     1792        M 0x80000690 addi    a0, a1, 1              #; a1  = 1, (wrb) a0  <-- 2
       0     1794        M 0x80000694 fcvt.d.wu ft4, a0              #; ac1  = 2
       0     1795        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1796        M 0x80000698 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1799        M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1800        M 0x8000069c fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1801        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1804        M 0x800006a0 addi    a0, a1, 2              #; a1  = 1, (wrb) a0  <-- 3
       0     1806        M 0x800006a4 fcvt.d.wu ft4, a0              #; ac1  = 3
       0     1807        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1808        M 0x800006a8 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1811        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1812        M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1813        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     1816        M 0x800006b0 addi    a0, a1, 3              #; a1  = 1, (wrb) a0  <-- 4
       0     1818        M 0x800006b4 fcvt.d.wu ft4, a0              #; ac1  = 4
       0     1819        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1820        M 0x800006b8 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1823        M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1824        M 0x800006bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1825        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1828        M 0x800006c0 addi    a0, a1, 4              #; a1  = 1, (wrb) a0  <-- 5
       0     1830        M 0x800006c4 fcvt.d.wu ft4, a0              #; ac1  = 5
       0     1831        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1832        M 0x800006c8 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1835        M                                           #; (f:fpu) ft4  <-- 7.071
       0     1836        M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1837        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1840        M 0x800006d0 addi    a0, a1, 5              #; a1  = 1, (wrb) a0  <-- 6
       0     1842        M 0x800006d4 fcvt.d.wu ft4, a0              #; ac1  = 6
       0     1843        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1844        M 0x800006d8 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1847        M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1848        M 0x800006dc fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1849        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1852        M 0x800006e0 addi    a0, a1, 6              #; a1  = 1, (wrb) a0  <-- 7
       0     1854        M 0x800006e4 fcvt.d.wu ft4, a0              #; ac1  = 7
       0     1855        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1856        M 0x800006e8 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1859        M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1860        M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1861        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     1864        M 0x800006f0 addi    a0, a1, 7              #; a1  = 1, (wrb) a0  <-- 8
       0     1866        M 0x800006f4 fcvt.d.wu ft4, a0              #; ac1  = 8
       0     1867        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1868        M 0x800006f8 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1871        M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1872        M 0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1873        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1876        M 0x80000700 addi    a0, a1, 8              #; a1  = 1, (wrb) a0  <-- 9
       0     1878        M 0x80000704 fcvt.d.wu ft4, a0              #; ac1  = 9
       0     1879        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1880        M 0x80000708 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1883        M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1884        M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1885        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1888        M 0x80000710 addi    a0, a1, 9              #; a1  = 1, (wrb) a0  <-- 10
       0     1890        M 0x80000714 fcvt.d.wu ft4, a0              #; ac1  = 10
       0     1891        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1892        M 0x80000718 fmul.d  ft3, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1895        M                                           #; (f:fpu) ft3  <-- 14.142
       0     1896        M 0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 14.142, ft3  = 14.142
       0     1897        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1901        M 0x80000724 ret                            #; ra  = 0x80000884, goto 0x80000884
                         M 0x80000720 csrrci  a0, ssr, 1             #; 
       0     1914        M 0x80000884 li      a1, 2                  #; (wrb) a1  <-- 2
       0     1915        M 0x80000888 mv      a0, s1                 #; s1  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1916        M 0x8000088c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000088c
       0     1917        M 0x80000890 jalr    ra, ra, -600           #; ra  = 0x8000088c, (wrb) ra  <-- 0x80000894, goto 0x80000634
       0     1931        M 0x80000634 srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
       0     1932        M 0x80000638 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1933        M 0x8000063c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1934        M 0x80000640 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1935        M 0x80000644 sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1936        M 0x80000648 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1937        M 0x8000064c beqz    a2, pc + 220           #; a2  = 1, not taken
       0     1938        M 0x80000650 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1939        M 0x80000654 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1940        M 0x80000658 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1941        M 0x8000065c li      a5, 192                #; (wrb) a5  <-- 192
       0     1942        M 0x80000660 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1943        M 0x80000664 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1944        M 0x80000668 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1945        M 0x8000066c scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     1946        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
       0     1947        M 0x80000674 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003674
       0     1948        M 0x80000678 addi    a0, a0, -1500          #; a0  = 0x80003674, (wrb) a0  <-- 0x80003098
       0     1949        M                                           #; (acc) gp  <-- 0x00053187
       0     1950        M                                           #; (acc) a0  <-- 0x7c00e573
       0     1951        M 0x8000067c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003098]
       0     1952        M 0x80000680 csrrsi  a0, ssr, 1             #; 
       0     1953        M 0x80000684 fcvt.d.wu ft4, a1              #; ac1  = 2
       0     1954        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1955        M 0x80000690 addi    a0, a1, 1              #; a1  = 2, (wrb) a0  <-- 3
       0     1960        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1961        M 0x80000688 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1964        M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1965        M 0x8000068c fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1966        M 0x80000694 fcvt.d.wu ft4, a0              #; ac1  = 3, (f:fpu) ft0  <-- 2.8284
       0     1967        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1968        M 0x800006a0 addi    a0, a1, 2              #; a1  = 2, (wrb) a0  <-- 4
                         M 0x80000698 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1971        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1972        M 0x8000069c fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1973        M 0x800006a4 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
       0     1974        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1975        M 0x800006b0 addi    a0, a1, 3              #; a1  = 2, (wrb) a0  <-- 5
                         M 0x800006a8 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1978        M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1979        M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1980        M 0x800006b4 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
       0     1981        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1982        M 0x800006c0 addi    a0, a1, 4              #; a1  = 2, (wrb) a0  <-- 6
                         M 0x800006b8 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1985        M                                           #; (f:fpu) ft4  <-- 7.071
       0     1986        M 0x800006bc fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1987        M 0x800006c4 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
       0     1988        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1989        M 0x800006d0 addi    a0, a1, 5              #; a1  = 2, (wrb) a0  <-- 7
                         M 0x800006c8 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1992        M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1993        M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1994        M 0x800006d4 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
       0     1995        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1996        M 0x800006e0 addi    a0, a1, 6              #; a1  = 2, (wrb) a0  <-- 8
                         M 0x800006d8 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1999        M                                           #; (f:fpu) ft4  <-- 9.8994
       0     2000        M 0x800006dc fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     2001        M 0x800006e4 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
       0     2002        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2003        M 0x800006f0 addi    a0, a1, 7              #; a1  = 2, (wrb) a0  <-- 9
                         M 0x800006e8 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     2006        M                                           #; (f:fpu) ft4  <-- 11.3136
       0     2007        M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     2008        M 0x800006f4 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
       0     2009        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2010        M 0x80000700 addi    a0, a1, 8              #; a1  = 2, (wrb) a0  <-- 10
                         M 0x800006f8 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     2013        M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     2014        M 0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     2015        M 0x80000704 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
       0     2016        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2017        M 0x80000710 addi    a0, a1, 9              #; a1  = 2, (wrb) a0  <-- 11
                         M 0x80000708 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     2020        M                                           #; (f:fpu) ft4  <-- 14.142
       0     2021        M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     2022        M 0x80000714 fcvt.d.wu ft4, a0              #; ac1  = 11, (f:fpu) ft0  <-- 14.142
       0     2023        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2024        M 0x80000718 fmul.d  ft3, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     2025        M 0x80000724 ret                            #; ra  = 0x80000894, goto 0x80000894
       0     2027        M                                           #; (f:fpu) ft3  <-- 15.5562000
       0     2028        M 0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 15.5562000, ft3  = 15.5562000
       0     2029        M 0x80000894 li      a1, 3                  #; (wrb) a1  <-- 3
                         M 0x80000720 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
       0     2030        M 0x80000898 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2031        M 0x8000089c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000089c
       0     2032        M 0x800008a0 jalr    ra, ra, -616           #; ra  = 0x8000089c, (wrb) ra  <-- 0x800008a4, goto 0x80000634
       0     2046        M 0x80000634 srli    a2, a0, 20             #; a0  = 0x001000a0, (wrb) a2  <-- 1
       0     2047        M 0x80000638 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     2048        M 0x8000063c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     2049        M 0x80000640 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     2050        M 0x80000644 sltu    a3, a0, a3             #; a0  = 0x001000a0, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     2051        M 0x80000648 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     2052        M 0x8000064c beqz    a2, pc + 220           #; a2  = 1, not taken
       0     2053        M 0x80000650 li      a2, 8                  #; (wrb) a2  <-- 8
       0     2054        M 0x80000654 li      a3, 9                  #; (wrb) a3  <-- 9
       0     2055        M 0x80000658 li      a4, 64                 #; (wrb) a4  <-- 64
       0     2056        M 0x8000065c li      a5, 192                #; (wrb) a5  <-- 192
       0     2057        M 0x80000660 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     2058        M 0x80000664 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     2059        M 0x80000668 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2060        M 0x8000066c scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     2061        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x001000a0
       0     2062        M 0x80000674 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003674
       0     2063        M 0x80000678 addi    a0, a0, -1500          #; a0  = 0x80003674, (wrb) a0  <-- 0x80003098
       0     2064        M                                           #; (acc) gp  <-- 0x00053187
       0     2065        M                                           #; (acc) a0  <-- 0x7c00e573
       0     2066        M 0x8000067c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003098]
       0     2067        M 0x80000680 csrrsi  a0, ssr, 1             #; 
       0     2068        M 0x80000684 fcvt.d.wu ft4, a1              #; ac1  = 3
       0     2069        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2070        M 0x80000690 addi    a0, a1, 1              #; a1  = 3, (wrb) a0  <-- 4
       0     2075        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     2076        M 0x80000688 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     2079        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     2080        M 0x8000068c fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     2081        M 0x80000694 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
       0     2082        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2083        M 0x800006a0 addi    a0, a1, 2              #; a1  = 3, (wrb) a0  <-- 5
                         M 0x80000698 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     2086        M                                           #; (f:fpu) ft4  <-- 5.6568
       0     2087        M 0x8000069c fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     2088        M 0x800006a4 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
       0     2089        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2090        M 0x800006b0 addi    a0, a1, 3              #; a1  = 3, (wrb) a0  <-- 6
                         M 0x800006a8 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     2093        M                                           #; (f:fpu) ft4  <-- 7.071
       0     2094        M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     2095        M 0x800006b4 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
       0     2096        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2097        M 0x800006c0 addi    a0, a1, 4              #; a1  = 3, (wrb) a0  <-- 7
                         M 0x800006b8 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     2100        M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2101        M 0x800006bc fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     2102        M 0x800006c4 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
       0     2103        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2104        M 0x800006d0 addi    a0, a1, 5              #; a1  = 3, (wrb) a0  <-- 8
                         M 0x800006c8 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     2107        M                                           #; (f:fpu) ft4  <-- 9.8994
       0     2108        M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     2109        M 0x800006d4 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
       0     2110        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2111        M 0x800006e0 addi    a0, a1, 6              #; a1  = 3, (wrb) a0  <-- 9
                         M 0x800006d8 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     2114        M                                           #; (f:fpu) ft4  <-- 11.3136
       0     2115        M 0x800006dc fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     2116        M 0x800006e4 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
       0     2117        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2118        M 0x800006f0 addi    a0, a1, 7              #; a1  = 3, (wrb) a0  <-- 10
                         M 0x800006e8 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     2121        M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     2122        M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     2123        M 0x800006f4 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
       0     2124        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2125        M 0x80000700 addi    a0, a1, 8              #; a1  = 3, (wrb) a0  <-- 11
                         M 0x800006f8 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     2128        M                                           #; (f:fpu) ft4  <-- 14.142
       0     2129        M 0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     2130        M 0x80000704 fcvt.d.wu ft4, a0              #; ac1  = 11, (f:fpu) ft0  <-- 14.142
       0     2131        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2132        M 0x80000710 addi    a0, a1, 9              #; a1  = 3, (wrb) a0  <-- 12
                         M 0x80000708 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     2135        M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     2136        M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     2137        M 0x80000714 fcvt.d.wu ft4, a0              #; ac1  = 12, (f:fpu) ft0  <-- 15.5562000
       0     2138        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2139        M 0x80000718 fmul.d  ft3, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     2140        M 0x80000724 ret                            #; ra  = 0x800008a4, goto 0x800008a4
       0     2142        M                                           #; (f:fpu) ft3  <-- 16.9704000
       0     2143        M 0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 16.9704000, ft3  = 16.9704000
       0     2144        M 0x800008a4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000720 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 16.9704000
       0     2145        M 0x800008a8 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2146        M 0x800008ac auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008ac
       0     2147        M 0x800008b0 jalr    ra, ra, 492            #; ra  = 0x800008ac, (wrb) ra  <-- 0x800008b4, goto 0x80000a98
       0     2161        M 0x80000a98 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
       0     2162        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
       0     2164        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
       0     2165        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
       0     2166        M 0x80000aa8 ret                            #; ra  = 0x800008b4, goto 0x800008b4
       0     2169        M 0x800008b4 fld     ft0, 0(s2)             #; ft0  <~~ Doub[0x00100000]
       0     2170        M 0x800008b8 fld     ft1, 0(s1)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 1.4142
       0     2171        M 0x800008bc fld     ft2, 0(s0)             #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 2.8284
       0     2172        M 0x800008c8 li      a1, 1                  #; (wrb) a1  <-- 1
                         M 0x800008c0 fadd.d  ft0, ft0, ft1          #; ft0  = 1.4142, ft1  = 2.8284, (f:lsu) ft2  <-- 0.0
       0     2173        M 0x800008cc mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2175        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     2176        M 0x800008c4 fadd.d  fs0, ft0, ft2          #; ft0  = 4.2426000, ft2  = 0.0
       0     2179        M                                           #; (f:fpu) fs0  <-- 4.2426000
       0     2187        M 0x800008d0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d0
       0     2188        M 0x800008d4 jalr    ra, ra, 456            #; ra  = 0x800008d0, (wrb) ra  <-- 0x800008d8, goto 0x80000a98
       0     2189        M 0x80000a98 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
       0     2190        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
       0     2191        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
       0     2192        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
       0     2193        M 0x80000aa8 ret                            #; ra  = 0x800008d8, goto 0x800008d8
       0     2196        M 0x800008d8 fld     ft0, 8(s2)             #; ft0  <~~ Doub[0x00100008]
       0     2197        M 0x800008dc fld     ft1, 8(s1)             #; ft1  <~~ Doub[0x00100058], (f:lsu) ft0  <-- 2.8284
       0     2198        M                                           #; (f:lsu) ft1  <-- 4.2426000
       0     2201        M 0x800008e0 fld     ft2, 8(s0)             #; ft2  <~~ Doub[0x001000a8]
       0     2202        M 0x800008e4 fadd.d  ft0, ft0, fs0          #; ft0  = 2.8284, fs0  = 4.2426000, (f:lsu) ft2  <-- 0.0
       0     2205        M                                           #; (f:fpu) ft0  <-- 7.071
       0     2206        M 0x800008e8 fadd.d  ft0, ft0, ft1          #; ft0  = 7.071, ft1  = 4.2426000
       0     2209        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     2210        M 0x800008ec fadd.d  fs0, ft0, ft2          #; ft0  = 11.3136, ft2  = 0.0
       0     2211        M 0x800008f0 li      a1, 2                  #; (wrb) a1  <-- 2
       0     2212        M 0x800008f4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2213        M 0x800008f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f8
                         M                                           #; (f:fpu) fs0  <-- 11.3136
       0     2214        M 0x800008fc jalr    ra, ra, 416            #; ra  = 0x800008f8, (wrb) ra  <-- 0x80000900, goto 0x80000a98
       0     2215        M 0x80000a98 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
       0     2216        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
       0     2217        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
       0     2218        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
       0     2219        M 0x80000aa8 ret                            #; ra  = 0x80000900, goto 0x80000900
       0     2225        M 0x80000900 fld     ft0, 16(s2)            #; ft0  <~~ Doub[0x00100010]
       0     2226        M 0x80000904 fld     ft1, 16(s1)            #; ft1  <~~ Doub[0x00100060], (f:lsu) ft0  <-- 4.2426000
       0     2227        M 0x80000908 fld     ft2, 16(s0)            #; ft2  <~~ Doub[0x001000b0], (f:lsu) ft1  <-- 5.6568
       0     2228        M 0x8000090c fadd.d  ft0, ft0, fs0          #; ft0  = 4.2426000, fs0  = 11.3136, (f:lsu) ft2  <-- 0.0
       0     2231        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     2237        M 0x80000918 li      a1, 3                  #; (wrb) a1  <-- 3
                         M 0x80000910 fadd.d  ft0, ft0, ft1          #; ft0  = 15.5562000, ft1  = 5.6568
       0     2238        M 0x8000091c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2240        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2241        M 0x80000914 fadd.d  fs0, ft0, ft2          #; ft0  = 21.2130000, ft2  = 0.0
       0     2244        M                                           #; (f:fpu) fs0  <-- 21.2130000
       0     2247        M 0x80000920 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000920
       0     2248        M 0x80000924 jalr    ra, ra, 376            #; ra  = 0x80000920, (wrb) ra  <-- 0x80000928, goto 0x80000a98
       0     2261        M 0x80000a98 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
       0     2262        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
       0     2264        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
       0     2265        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
       0     2266        M 0x80000aa8 ret                            #; ra  = 0x80000928, goto 0x80000928
       0     2269        M 0x80000928 fld     ft0, 24(s2)            #; ft0  <~~ Doub[0x00100018]
       0     2270        M 0x8000092c fld     ft1, 24(s1)            #; ft1  <~~ Doub[0x00100068], (f:lsu) ft0  <-- 5.6568
       0     2271        M 0x80000930 fld     ft2, 24(s0)            #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 7.071
       0     2272        M 0x80000934 fadd.d  ft0, ft0, fs0          #; ft0  = 5.6568, fs0  = 21.2130000, (f:lsu) ft2  <-- 0.0
       0     2275        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2276        M 0x80000938 fadd.d  ft0, ft0, ft1          #; ft0  = 26.8698000, ft1  = 7.071
       0     2279        M                                           #; (f:fpu) ft0  <-- 33.9408000
       0     2280        M 0x8000093c fadd.d  fs0, ft0, ft2          #; ft0  = 33.9408000, ft2  = 0.0
       0     2281        M 0x80000940 li      a1, 4                  #; (wrb) a1  <-- 4
       0     2282        M 0x80000944 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2283        M 0x80000948 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000948
                         M                                           #; (f:fpu) fs0  <-- 33.9408000
       0     2284        M 0x8000094c jalr    ra, ra, 336            #; ra  = 0x80000948, (wrb) ra  <-- 0x80000950, goto 0x80000a98
       0     2285        M 0x80000a98 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
       0     2286        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
       0     2287        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
       0     2288        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
       0     2289        M 0x80000aa8 ret                            #; ra  = 0x80000950, goto 0x80000950
       0     2295        M 0x80000950 fld     ft0, 32(s2)            #; ft0  <~~ Doub[0x00100020]
       0     2296        M 0x80000954 fld     ft1, 32(s1)            #; ft1  <~~ Doub[0x00100070], (f:lsu) ft0  <-- 7.071
       0     2297        M 0x80000958 fld     ft2, 32(s0)            #; ft2  <~~ Doub[0x001000c0], (f:lsu) ft1  <-- 8.4852000
       0     2298        M 0x8000095c fadd.d  ft0, ft0, fs0          #; ft0  = 7.071, fs0  = 33.9408000, (f:lsu) ft2  <-- 0.0
       0     2301        M                                           #; (f:fpu) ft0  <-- 41.0118000
       0     2307        M 0x80000968 li      a1, 5                  #; (wrb) a1  <-- 5
                         M 0x80000960 fadd.d  ft0, ft0, ft1          #; ft0  = 41.0118000, ft1  = 8.4852000
       0     2308        M 0x8000096c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2310        M                                           #; (f:fpu) ft0  <-- 49.4970000
       0     2311        M 0x80000964 fadd.d  fs0, ft0, ft2          #; ft0  = 49.4970000, ft2  = 0.0
       0     2314        M                                           #; (f:fpu) fs0  <-- 49.4970000
       0     2317        M 0x80000970 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000970
       0     2318        M 0x80000974 jalr    ra, ra, 296            #; ra  = 0x80000970, (wrb) ra  <-- 0x80000978, goto 0x80000a98
       0     2319        M 0x80000a98 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
       0     2320        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
       0     2321        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
       0     2322        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
       0     2323        M 0x80000aa8 ret                            #; ra  = 0x80000978, goto 0x80000978
       0     2326        M 0x80000978 fld     ft0, 40(s2)            #; ft0  <~~ Doub[0x00100028]
       0     2327        M 0x8000097c fld     ft1, 40(s1)            #; ft1  <~~ Doub[0x00100078], (f:lsu) ft0  <-- 8.4852000
       0     2328        M                                           #; (f:lsu) ft1  <-- 9.8994
       0     2331        M 0x80000980 fld     ft2, 40(s0)            #; ft2  <~~ Doub[0x001000c8]
       0     2332        M 0x80000984 fadd.d  ft0, ft0, fs0          #; ft0  = 8.4852000, fs0  = 49.4970000, (f:lsu) ft2  <-- 0.0
       0     2335        M                                           #; (f:fpu) ft0  <-- 57.9822000
       0     2336        M 0x80000988 fadd.d  ft0, ft0, ft1          #; ft0  = 57.9822000, ft1  = 9.8994
       0     2339        M                                           #; (f:fpu) ft0  <-- 67.8816000
       0     2340        M 0x8000098c fadd.d  fs0, ft0, ft2          #; ft0  = 67.8816000, ft2  = 0.0
       0     2341        M 0x80000990 li      a1, 6                  #; (wrb) a1  <-- 6
       0     2342        M 0x80000994 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2343        M 0x80000998 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000998
                         M                                           #; (f:fpu) fs0  <-- 67.8816000
       0     2344        M 0x8000099c jalr    ra, ra, 256            #; ra  = 0x80000998, (wrb) ra  <-- 0x800009a0, goto 0x80000a98
       0     2355        M 0x80000a98 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
       0     2356        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
       0     2358        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
       0     2359        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
       0     2360        M 0x80000aa8 ret                            #; ra  = 0x800009a0, goto 0x800009a0
       0     2363        M 0x800009a0 fld     ft0, 48(s2)            #; ft0  <~~ Doub[0x00100030]
       0     2364        M 0x800009a4 fld     ft1, 48(s1)            #; ft1  <~~ Doub[0x00100080], (f:lsu) ft0  <-- 9.8994
       0     2365        M 0x800009a8 fld     ft2, 48(s0)            #; ft2  <~~ Doub[0x001000d0], (f:lsu) ft1  <-- 11.3136
       0     2366        M 0x800009ac fadd.d  ft0, ft0, fs0          #; ft0  = 9.8994, fs0  = 67.8816000, (f:lsu) ft2  <-- 0.0
       0     2369        M                                           #; (f:fpu) ft0  <-- 77.7810000
       0     2375        M 0x800009b8 li      a1, 7                  #; (wrb) a1  <-- 7
                         M 0x800009b0 fadd.d  ft0, ft0, ft1          #; ft0  = 77.7810000, ft1  = 11.3136
       0     2376        M 0x800009bc mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2378        M                                           #; (f:fpu) ft0  <-- 89.0946000
       0     2379        M 0x800009b4 fadd.d  fs0, ft0, ft2          #; ft0  = 89.0946000, ft2  = 0.0
       0     2382        M                                           #; (f:fpu) fs0  <-- 89.0946000
       0     2385        M 0x800009c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009c0
       0     2386        M 0x800009c4 jalr    ra, ra, 216            #; ra  = 0x800009c0, (wrb) ra  <-- 0x800009c8, goto 0x80000a98
       0     2387        M 0x80000a98 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
       0     2388        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
       0     2389        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
       0     2390        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
       0     2391        M 0x80000aa8 ret                            #; ra  = 0x800009c8, goto 0x800009c8
       0     2394        M 0x800009c8 fld     ft0, 56(s2)            #; ft0  <~~ Doub[0x00100038]
       0     2395        M 0x800009cc fld     ft1, 56(s1)            #; ft1  <~~ Doub[0x00100088], (f:lsu) ft0  <-- 11.3136
       0     2396        M                                           #; (f:lsu) ft1  <-- 12.7278000
       0     2399        M 0x800009d0 fld     ft2, 56(s0)            #; ft2  <~~ Doub[0x001000d8]
       0     2400        M 0x800009d4 fadd.d  ft0, ft0, fs0          #; ft0  = 11.3136, fs0  = 89.0946000, (f:lsu) ft2  <-- 0.0
       0     2403        M                                           #; (f:fpu) ft0  <-- 100.4082000
       0     2404        M 0x800009d8 fadd.d  ft0, ft0, ft1          #; ft0  = 100.4082000, ft1  = 12.7278000
       0     2407        M                                           #; (f:fpu) ft0  <-- 113.1360000
       0     2408        M 0x800009dc fadd.d  fs0, ft0, ft2          #; ft0  = 113.1360000, ft2  = 0.0
       0     2409        M 0x800009e0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2410        M 0x800009e4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2411        M 0x800009e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e8
                         M                                           #; (f:fpu) fs0  <-- 113.1360000
       0     2412        M 0x800009ec jalr    ra, ra, 176            #; ra  = 0x800009e8, (wrb) ra  <-- 0x800009f0, goto 0x80000a98
       0     2413        M 0x80000a98 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
       0     2414        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
       0     2415        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
       0     2416        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
       0     2417        M 0x80000aa8 ret                            #; ra  = 0x800009f0, goto 0x800009f0
       0     2423        M 0x800009f0 fld     ft0, 64(s2)            #; ft0  <~~ Doub[0x00100040]
       0     2424        M 0x800009f4 fld     ft1, 64(s1)            #; ft1  <~~ Doub[0x00100090], (f:lsu) ft0  <-- 12.7278000
       0     2425        M 0x800009f8 fld     ft2, 64(s0)            #; ft2  <~~ Doub[0x001000e0], (f:lsu) ft1  <-- 14.142
       0     2426        M 0x800009fc fadd.d  ft0, ft0, fs0          #; ft0  = 12.7278000, fs0  = 113.1360000, (f:lsu) ft2  <-- 0.0
       0     2429        M                                           #; (f:fpu) ft0  <-- 125.8638000
       0     2435        M 0x80000a08 li      a1, 9                  #; (wrb) a1  <-- 9
                         M 0x80000a00 fadd.d  ft0, ft0, ft1          #; ft0  = 125.8638000, ft1  = 14.142
       0     2436        M 0x80000a0c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2438        M                                           #; (f:fpu) ft0  <-- 140.0058
       0     2439        M 0x80000a04 fadd.d  fs0, ft0, ft2          #; ft0  = 140.0058, ft2  = 0.0
       0     2442        M                                           #; (f:fpu) fs0  <-- 140.0058
       0     2445        M 0x80000a10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a10
       0     2446        M 0x80000a14 jalr    ra, ra, 136            #; ra  = 0x80000a10, (wrb) ra  <-- 0x80000a18, goto 0x80000a98
       0     2459        M 0x80000a98 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
       0     2460        M 0x80000a9c add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
       0     2462        M 0x80000aa0 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
       0     2463        M 0x80000aa4 sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
       0     2464        M 0x80000aa8 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     2467        M 0x80000a18 fld     ft0, 72(s2)            #; ft0  <~~ Doub[0x00100048]
       0     2468        M 0x80000a24 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a24
                         M 0x80000a1c fld     ft1, 72(s1)            #; ft1  <~~ Doub[0x00100098], (f:lsu) ft0  <-- 14.142
       0     2469        M 0x80000a28 addi    a0, a0, 1660           #; a0  = 0x80002a24, (wrb) a0  <-- 0x800030a0
                         M 0x80000a20 fld     ft2, 72(s0)            #; ft2  <~~ Doub[0x001000e8], (f:lsu) ft1  <-- 15.5562000
       0     2470        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2472        M 0x80000a2c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030a0]
       0     2481        M 0x80000a30 fadd.d  ft0, ft0, fs0          #; ft0  = 14.142, fs0  = 140.0058, (f:lsu) ft3  <-- -169.704
       0     2484        M                                           #; (f:fpu) ft0  <-- 154.1478
       0     2485        M 0x80000a34 fadd.d  ft0, ft0, ft1          #; ft0  = 154.1478, ft1  = 15.5562000
       0     2488        M                                           #; (f:fpu) ft0  <-- 169.7040000
       0     2489        M 0x80000a38 fadd.d  ft0, ft0, ft2          #; ft0  = 169.7040000, ft2  = 0.0
       0     2492        M                                           #; (f:fpu) ft0  <-- 169.7040000
       0     2493        M 0x80000a48 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                         M 0x80000a3c fadd.d  ft1, ft0, ft3          #; ft0  = 169.7040000, ft3  = -169.704
       0     2496        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft1  <-- -0.0000000
       0     2497        M 0x80000a4c lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                         M 0x80000a40 fsgnjx.d fs0, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
       0     2498        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2499        M 0x80000a44 fsd     ft0, 0(sp)             #; 169.7040000 ~~> Doub[0x0011ff40]
       0     2500        M                                           #; (lsu) a3  <-- 0
       0     2504        M 0x80000a54 lw      a4, 0(sp)              #; sp  = 0x0011ff40, a4  <~~ Word[0x0011ff40]
       0     2505        M 0x80000a50 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
       0     2508        M                                           #; (lsu) a4  <-- 0
       0     2509        M 0x80000a58 lw      a5, 4(sp)              #; sp  = 0x0011ff40, a5  <~~ Word[0x0011ff44]
       0     2510        M 0x80000a5c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a5c
       0     2512        M                                           #; (lsu) a5  <-- 0x3d200000
       0     2515        M 0x80000a60 addi    a0, a0, 905            #; a0  = 0x80002a5c, (wrb) a0  <-- 0x80002de5
       0     2516        M 0x80000a64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a64
       0     2517        M 0x80000a68 jalr    ra, ra, 72             #; ra  = 0x80000a64, (wrb) ra  <-- 0x80000a6c, goto 0x80000aac
       0     2518        M 0x80000aac addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2519        M 0x80000ab0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a6c ~~> Word[0x0011ff1c]
       0     2520        M 0x80000ab4 mv      t0, a0                 #; a0  = 0x80002de5, (wrb) t0  <-- 0x80002de5
       0     2521        M 0x80000ab8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
       0     2522        M 0x80000abc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
       0     2531        M 0x80000ac0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x3d200000 ~~> Word[0x0011ff34]
       0     2532        M 0x80000ac4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
       0     2533        M 0x80000ac8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2534        M 0x80000acc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2543        M 0x80000ad0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 72 ~~> Word[0x0011ff24]
       0     2544        M 0x80000ad4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2545        M 0x80000ad8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2546        M 0x80000adc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001adc
       0     2555        M 0x80000ae0 addi    a0, a0, -988           #; a0  = 0x80001adc, (wrb) a0  <-- 0x80001700
       0     2556        M 0x80000ae4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2557        M 0x80000ae8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2558        M 0x80000aec addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2567        M 0x80000af0 mv      a3, t0                 #; t0  = 0x80002de5, (wrb) a3  <-- 0x80002de5
       0     2568        M 0x80000af4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000af4
       0     2569        M 0x80000af8 jalr    ra, ra, 20             #; ra  = 0x80000af4, (wrb) ra  <-- 0x80000afc, goto 0x80000b08
       0     2579        M 0x80000b08 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2580        M 0x80000b0c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000afc ~~> Word[0x0011ff0c]
       0     2591        M 0x80000b10 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x001000a0 ~~> Word[0x0011ff08]
       0     2592        M 0x80000b14 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff04]
       0     2593        M 0x80000b18 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     2594        M 0x80000b1c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2603        M 0x80000b20 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2604        M 0x80000b24 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2605        M 0x80000b28 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2606        M 0x80000b2c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2615        M 0x80000b30 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2616        M 0x80000b34 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2617        M 0x80000b38 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2618        M 0x80000b3c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2627        M 0x80000b40 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2628        M 0x80000b44 mv      s0, a3                 #; a3  = 0x80002de5, (wrb) s0  <-- 0x80002de5
       0     2629        M 0x80000b48 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2630        M 0x80000b4c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2639        M 0x80000b50 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2640        M 0x80000b54 mv      s2, a0                 #; a0  = 0x80001700, (wrb) s2  <-- 0x80001700
       0     2641        M 0x80000b58 j       pc + 0xc               #; goto 0x80000b64
       0     2651        M 0x80000b64 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2652        M 0x80000b68 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2653        M 0x80000b6c li      s11, 16                #; (wrb) s11 <-- 16
       0     2663        M 0x80000b70 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2664        M 0x80000b74 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2665        M 0x80000b78 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2666        M 0x80000b7c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2675        M 0x80000b80 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2676        M 0x80000b84 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2677        M 0x80000b88 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2678        M 0x80000b8c addi    s10, s0, 2             #; s0  = 0x80002de5, (wrb) s10 <-- 0x80002de7
       0     2687        M 0x80000b90 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2688        M 0x80000b94 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2689        M 0x80000b98 lbu     a0, 0(s0)              #; s0  = 0x80002de5, a0  <~~ Byte[0x80002de5]
       0     2700        M                                           #; (lsu) a0  <-- 101
       0     2701        M 0x80000b9c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2702        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2703        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2704        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2705        M 0x80000bac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2714        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2715        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     2737        M 0x80001700 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2738        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2739        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2740        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2749        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     2750        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     2751        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2752        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2763        M                                           #; (lsu) a4  <-- 0
       0     2764        M 0x80001720 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2765        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 1 ~~> Word[0x8000315c]
       0     2766        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 0, (wrb) a4  <-- 0x8000315c
       0     2767        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000315c, 101 ~~> Byte[0x800031a4]
       0     2773        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2789        M                                           #; (lsu) a4  <-- 1
       0     2790        M 0x80001734 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2791        M 0x80001738 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2792        M 0x8000173c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2793        M 0x80001740 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2794        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2795        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     2816        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     2830        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002de5, (wrb) s0  <-- 0x80002de6
       0     2831        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002de7, (wrb) s10 <-- 0x80002de8
       0     2833        M 0x80000bc0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2834        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002de6, a0  <~~ Byte[0x80002de6]
       0     2845        M                                           #; (lsu) a0  <-- 114
       0     2846        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba0
       0     2847        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2848        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2849        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2850        M 0x80000bac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2851        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2852        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     2855        M 0x80001700 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2856        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2857        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2858        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2859        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     2860        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     2861        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2862        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2863        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2874        M                                           #; (lsu) a4  <-- 1
       0     2875        M 0x80001720 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2876        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 2 ~~> Word[0x8000315c]
       0     2877        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 1, (wrb) a4  <-- 0x8000315d
       0     2878        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000315d, 114 ~~> Byte[0x800031a5]
       0     2879        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2900        M                                           #; (lsu) a4  <-- 2
       0     2901        M 0x80001734 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2902        M 0x80001738 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2903        M 0x8000173c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2904        M 0x80001740 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2905        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2906        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     2909        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     2914        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002de6, (wrb) s0  <-- 0x80002de7
       0     2915        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002de8, (wrb) s10 <-- 0x80002de9
       0     2917        M 0x80000bc0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2918        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002de7, a0  <~~ Byte[0x80002de7]
       0     2929        M                                           #; (lsu) a0  <-- 114
       0     2930        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba0
       0     2931        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2932        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2933        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2934        M 0x80000bac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2935        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2936        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     2939        M 0x80001700 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2940        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2941        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2942        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2943        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     2944        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     2945        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2946        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2947        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2958        M                                           #; (lsu) a4  <-- 2
       0     2959        M 0x80001720 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2960        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 3 ~~> Word[0x8000315c]
       0     2961        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 2, (wrb) a4  <-- 0x8000315e
       0     2962        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000315e, 114 ~~> Byte[0x800031a6]
       0     2963        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2984        M                                           #; (lsu) a4  <-- 3
       0     2985        M 0x80001734 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2986        M 0x80001738 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2987        M 0x8000173c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2988        M 0x80001740 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2989        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2990        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     2993        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     2998        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002de7, (wrb) s0  <-- 0x80002de8
       0     2999        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002de9, (wrb) s10 <-- 0x80002dea
       0     3001        M 0x80000bc0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3002        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002de8, a0  <~~ Byte[0x80002de8]
       0     3013        M                                           #; (lsu) a0  <-- 111
       0     3014        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ba0
       0     3015        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3016        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3017        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3018        M 0x80000bac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3019        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3020        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     3023        M 0x80001700 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3024        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3025        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3026        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3027        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     3028        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     3029        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3030        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     3031        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3042        M                                           #; (lsu) a4  <-- 3
       0     3043        M 0x80001720 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3044        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 4 ~~> Word[0x8000315c]
       0     3045        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 3, (wrb) a4  <-- 0x8000315f
       0     3046        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000315f, 111 ~~> Byte[0x800031a7]
       0     3047        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3068        M                                           #; (lsu) a4  <-- 4
       0     3069        M 0x80001734 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3070        M 0x80001738 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3071        M 0x8000173c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3072        M 0x80001740 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3073        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3074        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     3077        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     3082        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002de8, (wrb) s0  <-- 0x80002de9
       0     3083        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002dea, (wrb) s10 <-- 0x80002deb
       0     3085        M 0x80000bc0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3086        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002de9, a0  <~~ Byte[0x80002de9]
       0     3097        M                                           #; (lsu) a0  <-- 114
       0     3098        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba0
       0     3099        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3100        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3101        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3102        M 0x80000bac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3103        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3104        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     3107        M 0x80001700 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3108        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3109        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3110        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3111        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     3112        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     3113        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3114        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     3115        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3126        M                                           #; (lsu) a4  <-- 4
       0     3127        M 0x80001720 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3128        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 5 ~~> Word[0x8000315c]
       0     3129        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 4, (wrb) a4  <-- 0x80003160
       0     3130        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003160, 114 ~~> Byte[0x800031a8]
       0     3131        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3152        M                                           #; (lsu) a4  <-- 5
       0     3153        M 0x80001734 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3154        M 0x80001738 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3155        M 0x8000173c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3156        M 0x80001740 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3157        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3158        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     3161        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     3166        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002de9, (wrb) s0  <-- 0x80002dea
       0     3167        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002deb, (wrb) s10 <-- 0x80002dec
       0     3169        M 0x80000bc0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3170        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002dea, a0  <~~ Byte[0x80002dea]
       0     3181        M                                           #; (lsu) a0  <-- 32
       0     3182        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ba0
       0     3183        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3184        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3185        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3186        M 0x80000bac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3187        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3188        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     3191        M 0x80001700 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3192        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3193        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3194        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3195        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     3196        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     3197        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3198        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     3199        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3210        M                                           #; (lsu) a4  <-- 5
       0     3211        M 0x80001720 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3212        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 6 ~~> Word[0x8000315c]
       0     3213        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 5, (wrb) a4  <-- 0x80003161
       0     3214        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003161, 32 ~~> Byte[0x800031a9]
       0     3215        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3236        M                                           #; (lsu) a4  <-- 6
       0     3237        M 0x80001734 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3238        M 0x80001738 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3239        M 0x8000173c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3240        M 0x80001740 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3241        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3242        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     3245        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     3250        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002dea, (wrb) s0  <-- 0x80002deb
       0     3251        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002dec, (wrb) s10 <-- 0x80002ded
       0     3253        M 0x80000bc0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3254        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002deb, a0  <~~ Byte[0x80002deb]
       0     3265        M                                           #; (lsu) a0  <-- 61
       0     3266        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ba0
       0     3267        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3268        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3269        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3270        M 0x80000bac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3271        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3272        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     3275        M 0x80001700 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3276        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3277        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3278        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3279        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     3280        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     3281        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3282        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     3283        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3294        M                                           #; (lsu) a4  <-- 6
       0     3295        M 0x80001720 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3296        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 7 ~~> Word[0x8000315c]
       0     3297        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 6, (wrb) a4  <-- 0x80003162
       0     3298        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003162, 61 ~~> Byte[0x800031aa]
       0     3299        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3320        M                                           #; (lsu) a4  <-- 7
       0     3321        M 0x80001734 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3322        M 0x80001738 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3323        M 0x8000173c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3324        M 0x80001740 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3325        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3326        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     3329        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     3334        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002deb, (wrb) s0  <-- 0x80002dec
       0     3335        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002ded, (wrb) s10 <-- 0x80002dee
       0     3337        M 0x80000bc0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3338        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002dec, a0  <~~ Byte[0x80002dec]
       0     3349        M                                           #; (lsu) a0  <-- 32
       0     3350        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ba0
       0     3351        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3352        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3353        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3354        M 0x80000bac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3355        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3356        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     3359        M 0x80001700 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3360        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3361        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3362        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3363        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     3364        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     3365        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3366        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     3367        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3378        M                                           #; (lsu) a4  <-- 7
       0     3379        M 0x80001720 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3380        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 8 ~~> Word[0x8000315c]
       0     3381        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 7, (wrb) a4  <-- 0x80003163
       0     3382        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003163, 32 ~~> Byte[0x800031ab]
       0     3383        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3404        M                                           #; (lsu) a4  <-- 8
       0     3405        M 0x80001734 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3406        M 0x80001738 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3407        M 0x8000173c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3408        M 0x80001740 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3409        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3410        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     3413        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     3418        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002dec, (wrb) s0  <-- 0x80002ded
       0     3419        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002dee, (wrb) s10 <-- 0x80002def
       0     3421        M 0x80000bc0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3422        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002ded, a0  <~~ Byte[0x80002ded]
       0     3433        M                                           #; (lsu) a0  <-- 37
       0     3434        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ba0
       0     3435        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bd0
       0     3447        M 0x80000bd0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3448        M 0x80000bd4 j       pc + 0x10              #; goto 0x80000be4
       0     3459        M 0x80000be4 lbu     a0, -1(s10)            #; s10 = 0x80002def, a0  <~~ Byte[0x80002dee]
       0     3470        M                                           #; (lsu) a0  <-- 102
       0     3471        M 0x80000be8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3472        M 0x80000bec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c24
       0     3484        M 0x80000c24 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3485        M 0x80000c28 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3486        M 0x80000c2c addi    a1, s10, -1            #; s10 = 0x80002def, (wrb) a1  <-- 0x80002dee
       0     3496        M 0x80000c30 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3497        M 0x80000c34 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cb0
       0     3519        M 0x80000cb0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3520        M 0x80000cb4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d04
       0     3542        M 0x80000d04 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3543        M 0x80000d08 mv      s10, a1                #; a1  = 0x80002dee, (wrb) s10 <-- 0x80002dee
       0     3544        M 0x80000d0c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3565        M 0x80000d10 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3566        M 0x80000d14 j       pc + 0xc               #; goto 0x80000d20
       0     3577        M 0x80000d20 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3578        M 0x80000d24 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3579        M 0x80000d28 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3580        M 0x80000d2c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3589        M 0x80000d30 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3590        M 0x80000d34 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d98
       0     3612        M 0x80000d98 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3613        M 0x80000d9c li      a2, 83                 #; (wrb) a2  <-- 83
       0     3624        M 0x80000da0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3625        M 0x80000da4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3626        M 0x80000da8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002da8
       0     3627        M 0x80000dac addi    a2, a2, 188            #; a2  = 0x80002da8, (wrb) a2  <-- 0x80002e64
       0     3636        M 0x80000db0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e64, (wrb) a1  <-- 0x80002f68
       0     3637        M 0x80000db4 lw      a2, 0(a1)              #; a1  = 0x80002f68, a2  <~~ Word[0x80002f68]
       0     3638        M 0x80000db8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3639        M 0x80000dbc li      s8, 16                 #; (wrb) s8  <-- 16
       0     3648        M                                           #; (lsu) a2  <-- 0x80000df0
       0     3649        M 0x80000dc0 jr      a2                     #; a2  = 0x80000df0, goto 0x80000df0
       0     3671        M 0x80000df0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3672        M 0x80000df4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000dfc
       0     3673        M 0x80000dfc addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3683        M 0x80000e00 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3685        M 0x80000e08 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3686        M 0x80000e0c mv      a0, s2                 #; s2  = 0x80001700, (wrb) a0  <-- 0x80001700
                         M 0x80000e04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3687        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3695        M 0x80000e10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3696        M 0x80000e14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3697        M 0x80000e18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3698        M 0x80000e1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3707        M 0x80000e20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3708        M 0x80000e24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3709        M 0x80000e28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e28
       0     3710        M 0x80000e2c jalr    ra, ra, -1656          #; ra  = 0x80001e28, (wrb) ra  <-- 0x80000e30, goto 0x800017b0
       0     3721        M 0x800017b0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3722        M 0x800017b4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e30 ~~> Word[0x0011fe9c]
       0     3723        M 0x800017b8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3724        M 0x800017bc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3733        M 0x800017c0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001700 ~~> Word[0x0011fe90]
       0     3734        M 0x800017c4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3735        M 0x800017c8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3736        M 0x800017cc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3745        M 0x800017d0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3746        M 0x800017d4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3747        M 0x800017d8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3748        M 0x800017dc sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3757        M 0x800017e0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dee ~~> Word[0x0011fe70]
       0     3760        M 0x800017e4 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     3761        M 0x800017e8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3762        M 0x800017ec fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3769        M 0x800017f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037f0
       0     3770        M 0x800017f4 addi    s1, s1, -1856          #; s1  = 0x800037f0, (wrb) s1  <-- 0x800030b0
       0     3773        M 0x800017f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030b0]
       0     3781        M 0x80001800 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3782        M 0x80001804 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3783        M 0x80001808 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800017fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3784        M 0x8000180c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3793        M 0x80001810 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3794        M 0x80001814 mv      s7, a0                 #; a0  = 0x80001700, (wrb) s7  <-- 0x80001700
       0     3795        M 0x80001818 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001908
       0     3817        M 0x8000190c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000290c
       0     3818        M 0x80001908 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3819        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3828        M 0x80001910 addi    a0, a0, 1964           #; a0  = 0x8000290c, (wrb) a0  <-- 0x800030b8
       0     3831        M 0x80001914 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030b8]
       0     3840        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3841        M 0x80001918 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3843        M                                           #; (acc) t3  <-- 0x00051e63
       0     3844        M 0x8000191c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001938
       0     3856        M 0x80001938 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002938
       0     3857        M 0x8000193c addi    a0, a0, 1928           #; a0  = 0x80002938, (wrb) a0  <-- 0x800030c0
       0     3869        M 0x80001944 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002944
       0     3870        M 0x80001948 addi    a0, a0, 1924           #; a0  = 0x80002944, (wrb) a0  <-- 0x800030c8
                         M 0x80001940 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030c0]
       0     3873        M 0x8000194c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030c8]
       0     3879        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3881        M 0x80001950 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3882        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3883        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001954 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3885        M                                           #; (acc) a0  <-- 0x00b57533
       0     3886        M 0x80001958 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3887        M 0x8000195c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a58
       0     3903        M 0x80001a58 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3904        M 0x80001a5c li      s8, 6                  #; (wrb) s8  <-- 6
       0     3915        M 0x80001a60 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a68
       0     3916        M 0x80001a68 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3919        M 0x80001a6c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3920        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3927        M 0x80001a70 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001aa8
       0     3950        M 0x80001aa8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3951        M 0x80001aac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3962        M 0x80001ab0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ab0
       0     3963        M 0x80001ab4 addi    a1, a1, 1288           #; a1  = 0x80002ab0, (wrb) a1  <-- 0x80002fb8
       0     3964        M 0x80001ab8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fb8, (wrb) a0  <-- 0x80002fe8
       0     3967        M 0x80001abc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fe8]
       0     3975        M 0x80001ac0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3976        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3979        M 0x80001ac4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3980        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3981        M 0x80001ac8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3984        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3985        M 0x80001acc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3986        M 0x80001ad0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002ad0
       0     3987        M 0x80001ad4 addi    a0, a0, 1536           #; a0  = 0x80002ad0, (wrb) a0  <-- 0x800030d0
       0     3988        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3990        M 0x80001ad8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030d0]
       0     3991        M 0x80001adc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3999        M 0x80001ae0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     4000        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4001        M 0x80001ae4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     4004        M                                           #; (f:fpu) ft2  <-- 0.0
       0     4005        M 0x80001ae8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     4008        M 0x80001aec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b0c
       0     4022        M 0x80001b0c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     4033        M 0x80001b10 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b24
       0     4046        M 0x80001b28 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001b24 fcvt.d.w fs1, zero             #; ac1  = 0
       0     4047        M 0x80001b2c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     4057        M 0x80001b30 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4058        M 0x80001b34 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4059        M 0x80001b38 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4060        M 0x80001b3c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4069        M 0x80001b40 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4070        M 0x80001b44 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4071        M 0x80001b48 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4072        M 0x80001b4c li      a7, 9                  #; (wrb) a7  <-- 9
       0     4081        M 0x80001b50 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4082        M 0x80001b54 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4083        M 0x80001b58 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4086        M                                           #; (acc) a0  <-- 0x00355513
       0     4087        M 0x80001b5c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4093        M 0x80001b60 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4096        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4097        M 0x80001b64 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4098        M 0x80001b68 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4099        M 0x80001b6c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4105        M 0x80001b70 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4106        M 0x80001b74 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4107        M 0x80001b78 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4108        M 0x80001b7c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4120        M 0x80001b80 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4121        M 0x80001b84 li      a3, 30                 #; (wrb) a3  <-- 30
       0     4122        M 0x80001b88 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4123        M 0x80001b8c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4132        M 0x80001b90 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4133        M 0x80001b94 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4134        M 0x80001b98 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4135        M 0x80001b9c addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4144        M 0x80001ba0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4145        M 0x80001ba4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4146        M 0x80001ba8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4147        M 0x80001bac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4156        M 0x80001bb0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4157        M 0x80001bb4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4158        M 0x80001bb8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4159        M 0x80001bbc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4168        M 0x80001bc0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bc8
       0     4169        M 0x80001bc8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4170        M 0x80001bcc li      a1, 48                 #; (wrb) a1  <-- 48
       0     4180        M 0x80001bd0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000bd0
       0     4181        M 0x80001bd4 jalr    ra, ra, -1656          #; ra  = 0x80000bd0, (wrb) ra  <-- 0x80001bd8, goto 0x80000558
       0     4203        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4204        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4215        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4238        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4250        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4251        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4252        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4253        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4273        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4274        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4285        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4286        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4287        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4288        M 0x800005ec ret                            #; ra  = 0x80001bd8, goto 0x80001bd8
       0     4299        M 0x80001bd8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4300        M 0x80001bdc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4302        M 0x80001be0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4303        M 0x80001be4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4304        M 0x80001be8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4305        M 0x80001bec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4314        M 0x80001bf0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4315        M 0x80001bf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bdc
       0     4316        M 0x80001bdc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4317        M 0x80001be0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4318        M 0x80001be4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4319        M 0x80001be8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4320        M 0x80001bec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4321        M 0x80001bf0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4322        M 0x80001bf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bdc
       0     4323        M 0x80001bdc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4324        M 0x80001be0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4325        M 0x80001be4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4326        M 0x80001be8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4327        M 0x80001bec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4328        M 0x80001bf0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4329        M 0x80001bf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bdc
       0     4330        M 0x80001bdc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4331        M 0x80001be0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4332        M 0x80001be4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4333        M 0x80001be8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4334        M 0x80001bec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4335        M 0x80001bf0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4336        M 0x80001bf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bdc
       0     4337        M 0x80001bdc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4338        M 0x80001be0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4339        M 0x80001be4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4340        M 0x80001be8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4341        M 0x80001bec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4342        M 0x80001bf0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4343        M 0x80001bf4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4344        M 0x80001bf8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4345        M 0x80001bfc j       pc + 0x28              #; goto 0x80001c24
       0     4356        M 0x80001c24 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4357        M 0x80001c28 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4358        M 0x80001c2c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4368        M 0x80001c30 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4369        M 0x80001c34 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4370        M 0x80001c38 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4371        M 0x80001c3c j       pc + 0x8               #; goto 0x80001c44
       0     4380        M 0x80001c44 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4381        M 0x80001c48 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4382        M 0x80001c4c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4392        M 0x80001c50 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4394        M 0x80001c58 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001c54 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4395        M 0x80001c5c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4404        M 0x80001c60 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4405        M 0x80001c64 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4406        M 0x80001c68 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4407        M 0x80001c6c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4416        M 0x80001c70 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4419        M                                           #; (acc) a5  <-- 0x01f55793
       0     4420        M 0x80001c74 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4421        M 0x80001c78 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4422        M 0x80001c7c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4428        M 0x80001c80 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4431        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4432        M 0x80001c84 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4433        M 0x80001c88 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4434        M 0x80001c8c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4440        M 0x80001c90 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4441        M 0x80001c94 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4442        M 0x80001c98 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4443        M 0x80001c9c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4452        M 0x80001ca0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4453        M 0x80001ca4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4454        M 0x80001ca8 j       pc + 0x8               #; goto 0x80001cb0
       0     4466        M 0x80001cb0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4467        M 0x80001cb4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4468        M 0x80001cb8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d24
       0     4489        M 0x80001d24 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4490        M 0x80001d28 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4491        M 0x80001d2c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d44
       0     4512        M 0x80001d44 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4513        M 0x80001d48 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4514        M 0x80001d4c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4524        M 0x80001d50 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d7c
       0     4547        M 0x80001d7c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4559        M 0x80001d80 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4560        M 0x80001d84 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4561        M 0x80001d88 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4562        M 0x80001d8c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4571        M 0x80001d90 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4572        M 0x80001d94 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dc0
       0     4594        M 0x80001dc0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4595        M 0x80001dc4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4596        M 0x80001dc8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4597        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4606        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4607        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4608        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4609        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4610        M                                           #; (lsu) a0  <-- 48
       0     4618        M 0x80001de0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4619        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4620        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     4632        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4633        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4634        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4635        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4636        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     4637        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     4638        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4639        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4640        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4651        M                                           #; (lsu) a4  <-- 8
       0     4652        M 0x80001720 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4653        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 9 ~~> Word[0x8000315c]
       0     4654        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 8, (wrb) a4  <-- 0x80003164
       0     4655        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003164, 48 ~~> Byte[0x800031ac]
       0     4656        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4677        M                                           #; (lsu) a4  <-- 9
       0     4678        M 0x80001734 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4679        M 0x80001738 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4680        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4681        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4682        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4683        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     4686        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     4691        M 0x80001dec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4694        M 0x80001df0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4695        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001dcc
       0     4697        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4700        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4701        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4702        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4703        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4704        M 0x80001de0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4705        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4706        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     4707        M                                           #; (lsu) a0  <-- 46
       0     4709        M 0x80001700 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4710        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4711        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4712        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4713        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     4714        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     4715        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4716        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4717        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4728        M                                           #; (lsu) a4  <-- 9
       0     4729        M 0x80001720 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4730        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 10 ~~> Word[0x8000315c]
       0     4731        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 9, (wrb) a4  <-- 0x80003165
       0     4732        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003165, 46 ~~> Byte[0x800031ad]
       0     4733        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4754        M                                           #; (lsu) a4  <-- 10
       0     4755        M 0x80001734 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4756        M 0x80001738 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4757        M 0x8000173c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4758        M 0x80001740 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4759        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4760        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     4763        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     4768        M 0x80001dec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4771        M 0x80001df0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4772        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001dcc
       0     4774        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4777        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4778        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4779        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4780        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4781        M 0x80001de0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4782        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4783        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     4784        M                                           #; (lsu) a0  <-- 48
       0     4786        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4787        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4788        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4789        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4790        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     4791        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     4792        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4793        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4794        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4805        M                                           #; (lsu) a4  <-- 10
       0     4806        M 0x80001720 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4807        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 11 ~~> Word[0x8000315c]
       0     4808        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 10, (wrb) a4  <-- 0x80003166
       0     4809        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003166, 48 ~~> Byte[0x800031ae]
       0     4810        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4831        M                                           #; (lsu) a4  <-- 11
       0     4832        M 0x80001734 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4833        M 0x80001738 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4834        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4835        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4836        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4837        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     4840        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     4845        M 0x80001dec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4848        M 0x80001df0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4849        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001dcc
       0     4851        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4854        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4855        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4856        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4857        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4858        M 0x80001de0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4859        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4860        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     4861        M                                           #; (lsu) a0  <-- 48
       0     4863        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4864        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4865        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4866        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4867        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     4868        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     4869        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4870        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4871        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4882        M                                           #; (lsu) a4  <-- 11
       0     4883        M 0x80001720 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4884        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 12 ~~> Word[0x8000315c]
       0     4885        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 11, (wrb) a4  <-- 0x80003167
       0     4886        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003167, 48 ~~> Byte[0x800031af]
       0     4887        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4908        M                                           #; (lsu) a4  <-- 12
       0     4909        M 0x80001734 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4910        M 0x80001738 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4911        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4912        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4913        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4914        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     4917        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     4922        M 0x80001dec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4925        M 0x80001df0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4926        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001dcc
       0     4928        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4931        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4932        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4933        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4934        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4935        M 0x80001de0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4936        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4937        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     4938        M                                           #; (lsu) a0  <-- 48
       0     4940        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4941        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4942        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4943        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4944        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     4945        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     4946        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4947        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4948        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4959        M                                           #; (lsu) a4  <-- 12
       0     4960        M 0x80001720 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4961        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 13 ~~> Word[0x8000315c]
       0     4962        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 12, (wrb) a4  <-- 0x80003168
       0     4963        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003168, 48 ~~> Byte[0x800031b0]
       0     4964        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4985        M                                           #; (lsu) a4  <-- 13
       0     4986        M 0x80001734 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4987        M 0x80001738 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4988        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4989        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4990        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4991        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     4994        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     4999        M 0x80001dec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5002        M 0x80001df0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5003        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001dcc
       0     5005        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5008        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5009        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5010        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5011        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5012        M 0x80001de0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5013        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5014        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     5015        M                                           #; (lsu) a0  <-- 48
       0     5017        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5018        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5019        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5020        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5021        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     5022        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     5023        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5024        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     5025        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5036        M                                           #; (lsu) a4  <-- 13
       0     5037        M 0x80001720 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5038        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 14 ~~> Word[0x8000315c]
       0     5039        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 13, (wrb) a4  <-- 0x80003169
       0     5040        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x80003169, 48 ~~> Byte[0x800031b1]
       0     5041        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5062        M                                           #; (lsu) a4  <-- 14
       0     5063        M 0x80001734 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5064        M 0x80001738 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5065        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5066        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5067        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5068        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     5071        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     5076        M 0x80001dec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5079        M 0x80001df0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5080        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001dcc
       0     5082        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5085        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5086        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5087        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5088        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5089        M 0x80001de0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5090        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5091        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     5092        M                                           #; (lsu) a0  <-- 48
       0     5094        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5095        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5096        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5097        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5098        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     5099        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     5100        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5101        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     5102        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5113        M                                           #; (lsu) a4  <-- 14
       0     5114        M 0x80001720 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5115        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 15 ~~> Word[0x8000315c]
       0     5116        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 14, (wrb) a4  <-- 0x8000316a
       0     5117        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000316a, 48 ~~> Byte[0x800031b2]
       0     5118        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5139        M                                           #; (lsu) a4  <-- 15
       0     5140        M 0x80001734 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5141        M 0x80001738 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5142        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5143        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5144        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5145        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     5148        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     5153        M 0x80001dec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5156        M 0x80001df0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5157        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001dcc
       0     5159        M 0x80001dcc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5162        M 0x80001dd0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5163        M 0x80001dd4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5164        M 0x80001dd8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5165        M 0x80001ddc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5166        M 0x80001de0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5167        M 0x80001de4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5168        M 0x80001de8 jalr    s7                     #; s7  = 0x80001700, (wrb) ra  <-- 0x80001dec, goto 0x80001700
       0     5169        M                                           #; (lsu) a0  <-- 48
       0     5171        M 0x80001700 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5172        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5173        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5174        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5175        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     5176        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     5177        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5178        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     5179        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5190        M                                           #; (lsu) a4  <-- 15
       0     5191        M 0x80001720 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5192        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 16 ~~> Word[0x8000315c]
       0     5193        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 15, (wrb) a4  <-- 0x8000316b
       0     5194        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000316b, 48 ~~> Byte[0x800031b3]
       0     5195        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5216        M                                           #; (lsu) a4  <-- 16
       0     5217        M 0x80001734 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5218        M 0x80001738 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5219        M 0x8000173c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5220        M 0x80001740 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5221        M 0x80001744 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5222        M 0x80001748 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017a8
       0     5225        M 0x800017a8 ret                            #; ra  = 0x80001dec, goto 0x80001dec
       0     5230        M 0x80001dec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5233        M 0x80001df0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5234        M 0x80001df4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5235        M 0x80001df8 j       pc + 0x8               #; goto 0x80001e00
       0     5247        M 0x80001e00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5248        M 0x80001e04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5249        M 0x80001e08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5250        M 0x80001e0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5259        M 0x80001e10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5260        M 0x80001e14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e44
       0     5282        M 0x80001e44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5283        M 0x80001e48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5286        M 0x80001e4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5287        M                                           #; (f:lsu) fs2  <-- 0.0
       0     5296        M 0x80001e58 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001e50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0     5297        M 0x80001e54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5298        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5300        M                                           #; (lsu) s10 <-- 0x80002dee
       0     5301        M 0x80001e5c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5304        M                                           #; (lsu) s9  <-- 8
       0     5306        M 0x80001e60 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5309        M                                           #; (lsu) s8  <-- 16
       0     5310        M 0x80001e64 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5313        M                                           #; (lsu) s7  <-- 0
       0     5314        M 0x80001e68 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5317        M                                           #; (lsu) s6  <-- 0
       0     5318        M 0x80001e6c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5321        M                                           #; (lsu) s5  <-- -1
       0     5322        M 0x80001e70 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5325        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5326        M 0x80001e74 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5329        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5330        M 0x80001e78 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5333        M                                           #; (lsu) s2  <-- 0x80001700
       0     5334        M 0x80001e7c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5337        M                                           #; (lsu) s1  <-- 8
       0     5338        M 0x80001e80 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5341        M                                           #; (lsu) s0  <-- 0
       0     5342        M 0x80001e84 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5343        M 0x80001e88 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5345        M                                           #; (lsu) ra  <-- 0x80000e30
       0     5346        M 0x80001e8c ret                            #; ra  = 0x80000e30, goto 0x80000e30
       0     5349        M 0x80000e30 j       pc + 0x7c0             #; goto 0x800015f0
       0     5361        M 0x800015f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5362        M 0x800015f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5363        M 0x800015f8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5364        M 0x800015fc addi    s0, s10, 1             #; s10 = 0x80002dee, (wrb) s0  <-- 0x80002def
       0     5373        M 0x80001600 j       pc - 0xa74             #; goto 0x80000b8c
       0     5376        M 0x80000b8c addi    s10, s0, 2             #; s0  = 0x80002def, (wrb) s10 <-- 0x80002df1
       0     5379        M 0x80000b90 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5380        M 0x80000b94 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5381        M 0x80000b98 lbu     a0, 0(s0)              #; s0  = 0x80002def, a0  <~~ Byte[0x80002def]
       0     5392        M                                           #; (lsu) a0  <-- 10
       0     5393        M 0x80000b9c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5394        M 0x80000ba0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5395        M 0x80000ba4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5396        M 0x80000ba8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5397        M 0x80000bac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5398        M 0x80000bb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5399        M 0x80000bb4 jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x80000bb8, goto 0x80001700
       0     5403        M 0x80001700 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5404        M 0x80001704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5405        M 0x80001708 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5406        M 0x8000170c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5407        M 0x80001710 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003710
       0     5408        M 0x80001714 addi    a3, a3, -1460          #; a3  = 0x80003710, (wrb) a3  <-- 0x8000315c
       0     5409        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5410        M 0x80001718 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     5411        M 0x8000171c lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5422        M                                           #; (lsu) a4  <-- 16
       0     5423        M 0x80001720 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5424        M 0x80001724 sw      a5, 0(a1)              #; a1  = 0x8000315c, 17 ~~> Word[0x8000315c]
       0     5425        M 0x80001728 add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 16, (wrb) a4  <-- 0x8000316c
       0     5426        M 0x8000172c sb      a0, 72(a4)             #; a4  = 0x8000316c, 10 ~~> Byte[0x800031b4]
       0     5427        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5448        M                                           #; (lsu) a4  <-- 17
       0     5449        M 0x80001734 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5450        M 0x80001738 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5451        M 0x8000173c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5452        M 0x80001740 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5453        M 0x80001744 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5454        M 0x80001748 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5455        M 0x8000174c add     a0, a3, a2             #; a3  = 0x8000315c, a2  = 0, (wrb) a0  <-- 0x8000315c
       0     5456        M 0x80001750 addi    a2, a0, 72             #; a0  = 0x8000315c, (wrb) a2  <-- 0x800031a4
       0     5457        M 0x80001754 sw      zero, 12(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003168]
       0     5458        M 0x80001758 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5459        M 0x8000175c sw      a3, 8(a0)              #; a0  = 0x8000315c, 64 ~~> Word[0x80003164]
       0     5468        M 0x80001760 sw      zero, 20(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003170]
       0     5469        M 0x80001764 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5470        M 0x80001768 sw      a3, 16(a0)             #; a0  = 0x8000315c, 1 ~~> Word[0x8000316c]
       0     5471        M 0x8000176c sw      zero, 28(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003178]
       0     5480        M 0x80001770 sw      a2, 24(a0)             #; a0  = 0x8000315c, 0x800031a4 ~~> Word[0x80003174]
       0     5483        M 0x80001774 lw      a2, 0(a1)              #; a1  = 0x8000315c, a2  <~~ Word[0x8000315c]
       0     5484        M 0x80001778 addi    a3, a0, 8              #; a0  = 0x8000315c, (wrb) a3  <-- 0x80003164
       0     5485        M 0x8000177c sw      zero, 36(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003180]
       0     5505        M                                           #; (lsu) a2  <-- 17
       0     5506        M 0x80001780 sw      a2, 32(a0)             #; a0  = 0x8000315c, 17 ~~> Word[0x8000317c]
       0     5507        M 0x80001784 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003784
       0     5508        M 0x80001788 addi    a0, a0, -1860          #; a0  = 0x80003784, (wrb) a0  <-- 0x80003040
       0     5509        M 0x8000178c sw      a3, 0(a0)              #; a0  = 0x80003040, 0x80003164 ~~> Word[0x80003040]
       0     5510        M 0x80001790 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003790
       0     5511        M 0x80001794 addi    a0, a0, -1808          #; a0  = 0x80003790, (wrb) a0  <-- 0x80003080
       0     5512        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5535        M                                           #; (lsu) a2  <-- 0
       0     5536        M 0x8000179c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001798
       0     5537        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5548        M                                           #; (lsu) a2  <-- 0
       0     5549        M 0x8000179c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001798
       0     5550        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5561        M                                           #; (lsu) a2  <-- 0
       0     5562        M 0x8000179c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001798
       0     5563        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5574        M                                           #; (lsu) a2  <-- 0
       0     5575        M 0x8000179c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001798
       0     5576        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5587        M                                           #; (lsu) a2  <-- 0
       0     5588        M 0x8000179c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001798
       0     5589        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5600        M                                           #; (lsu) a2  <-- 0
       0     5601        M 0x8000179c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001798
       0     5602        M 0x80001798 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5613        M                                           #; (lsu) a2  <-- 1
       0     5614        M 0x8000179c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5617        M 0x800017a0 sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
       0     5618        M 0x800017a4 sw      zero, 0(a1)            #; a1  = 0x8000315c, 0 ~~> Word[0x8000315c]
       0     5619        M 0x800017a8 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     5622        M 0x80000bb8 addi    s0, s0, 1              #; s0  = 0x80002def, (wrb) s0  <-- 0x80002df0
       0     5623        M 0x80000bbc addi    s10, s10, 1            #; s10 = 0x80002df1, (wrb) s10 <-- 0x80002df2
       0     5625        M 0x80000bc0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5626        M 0x80000bc4 lbu     a0, 0(s0)              #; s0  = 0x80002df0, a0  <~~ Byte[0x80002df0]
       0     5640        M                                           #; (lsu) a0  <-- 0
       0     5641        M 0x80000bc8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5642        M 0x80000bcc j       pc + 0xad8             #; goto 0x800016a4
       0     5654        M 0x800016a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5655        M 0x800016a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016b0
       0     5666        M 0x800016b0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5667        M 0x800016b4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5668        M 0x800016b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5669        M 0x800016bc jalr    s2                     #; s2  = 0x80001700, (wrb) ra  <-- 0x800016c0, goto 0x80001700
       0     5680        M 0x80001700 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017a8
       0     5685        M 0x800017a8 ret                            #; ra  = 0x800016c0, goto 0x800016c0
       0     5686        M 0x800016c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5687        M 0x800016c4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5690        M                                           #; (lsu) s11 <-- 0
       0     5691        M 0x800016c8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5694        M                                           #; (lsu) s10 <-- 0
       0     5695        M 0x800016cc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5698        M                                           #; (lsu) s9  <-- 0
       0     5700        M 0x800016d0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5703        M                                           #; (lsu) s8  <-- 0
       0     5704        M 0x800016d4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5707        M                                           #; (lsu) s7  <-- 0
       0     5708        M 0x800016d8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5711        M                                           #; (lsu) s6  <-- 0
       0     5712        M 0x800016dc lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5715        M                                           #; (lsu) s5  <-- 0
       0     5716        M 0x800016e0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5719        M                                           #; (lsu) s4  <-- 0
       0     5720        M 0x800016e4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5723        M                                           #; (lsu) s3  <-- 0
       0     5724        M 0x800016e8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5727        M                                           #; (lsu) s2  <-- 0x00100000
       0     5728        M 0x800016ec lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5731        M                                           #; (lsu) s1  <-- 0x00100050
       0     5732        M 0x800016f0 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5735        M                                           #; (lsu) s0  <-- 0x001000a0
       0     5736        M 0x800016f4 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5737        M 0x800016f8 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5739        M                                           #; (lsu) ra  <-- 0x80000afc
       0     5740        M 0x800016fc ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     5743        M 0x80000afc lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5746        M 0x80000b00 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5747        M                                           #; (lsu) ra  <-- 0x80000a6c
       0     5748        M 0x80000b04 ret                            #; ra  = 0x80000a6c, goto 0x80000a6c
       0     5751        M 0x80000a6c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a6c
       0     5763        M 0x80000a70 addi    a0, a0, 1596           #; a0  = 0x80002a6c, (wrb) a0  <-- 0x800030a8
       0     5766        M 0x80000a74 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030a8]
       0     5767        M 0x80000a80 lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
       0     5775        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5776        M 0x80000a78 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     5777        M                                           #; (lsu) s2  <-- 0
       0     5778        M 0x80000a84 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
                         M 0x80000a7c fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     5779        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5781        M                                           #; (lsu) s1  <-- 0
       0     5782        M 0x80000a88 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5785        M                                           #; (lsu) s0  <-- 0
       0     5786        M 0x80000a8c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5787        M 0x80000a90 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5789        M                                           #; (lsu) ra  <-- 0x80002b60
       0     5790        M 0x80000a94 ret                            #; ra  = 0x80002b60, goto 0x80002b60
       0     5810        M 0x80002b60 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5811        M 0x80002b64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b64
       0     5812        M 0x80002b68 jalr    ra, ra, 524            #; ra  = 0x80002b64, (wrb) ra  <-- 0x80002b6c, goto 0x80002d70
       0     5833        M 0x80002d70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5834        M 0x80002d74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b6c ~~> Word[0x0011ff5c]
       0     5835        M 0x80002d78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d78
       0     5836        M 0x80002d7c jalr    ra, ra, -1264          #; ra  = 0x80002d78, (wrb) ra  <-- 0x80002d80, goto 0x80002888
       0     5847        M 0x80002888 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5848        M 0x8000288c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5850        M 0x80002890 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5853        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5854        M 0x80002894 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5857        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5858        M 0x80002898 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5859        M 0x8000289c ret                            #; ra  = 0x80002d80, goto 0x80002d80
       0     5861        M                                           #; (lsu) a0  <-- 0x00120190
       0     5862        M 0x80002d80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5872        M                                           #; (lsu) a0  <-- 0
       0     5873        M 0x80002d84 mv      zero, a0               #; a0  = 0
       0     5874        M 0x80002d88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5875        M 0x80002d8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5877        M                                           #; (lsu) ra  <-- 0x80002b6c
       0     5878        M 0x80002d90 ret                            #; ra  = 0x80002b6c, goto 0x80002b6c
       0     5892        M 0x80002b6c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5896        M 0x80002b70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b70
       0     5897        M 0x80002b74 jalr    ra, ra, 556            #; ra  = 0x80002b70, (wrb) ra  <-- 0x80002b78, goto 0x80002d9c
       0     5898        M 0x80002d9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5899        M 0x80002da0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5900        M 0x80002da4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b78 ~~> Word[0x0011ff5c]
       0     5901        M 0x80002da8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002da8
       0     5902        M 0x80002dac jalr    ra, ra, -1344          #; ra  = 0x80002da8, (wrb) ra  <-- 0x80002db0, goto 0x80002868
       0     5921        M 0x80002868 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5922        M 0x8000286c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5926        M 0x80002870 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5929        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5930        M 0x80002874 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5934        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5935        M 0x80002878 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5936        M 0x8000287c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5938        M                                           #; (lsu) a0  <-- 0
       0     5939        M 0x80002880 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5940        M 0x80002884 ret                            #; ra  = 0x80002db0, goto 0x80002db0
       0     5941        M 0x80002db0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5944        M                                           #; (lsu) t0  <-- 0
       0     5945        M 0x80002db4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5946        M 0x80002db8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5947        M 0x80002dbc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5948        M                                           #; (lsu) ra  <-- 0x80002b78
       0     5951        M 0x80002dc0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5952        M 0x80002dc4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5953        M 0x80002dc8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dc8
       0     5954        M 0x80002dcc addi    t1, t1, 632            #; t1  = 0x80002dc8, (wrb) t1  <-- 0x80003040
       0     5962        M 0x80002dd0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
       0     5963        M 0x80002dd4 ret                            #; ra  = 0x80002b78, goto 0x80002b78
       0     5977        M 0x80002b78 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5977):
snitch_loads                                   145
snitch_stores                                  167
fpss_stores                                      6
fpss_loads                                      46
snitch_avg_load_latency                    11.6759
snitch_occupancy                            0.2372
snitch_fseq_rel_offloads                    0.1393
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.6784
fpss_avg_load_latency                       2.9130
fpss_occupancy                              0.0384
fpss_fpu_occupancy                          0.0287
fpss_fpu_rel_occupancy                      0.7467
cycles                                        5966
total_ipc                                   0.2756
