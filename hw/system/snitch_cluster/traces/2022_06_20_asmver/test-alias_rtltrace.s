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
       0      551        M 0x800029a8 addi    t0, t0, 2036           #; t0  = 0x800029a4, (wrb) t0  <-- 0x80003198
       0      552        M 0x800029ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029ac
       0      562        M 0x800029b0 addi    t1, t1, 2032           #; t1  = 0x800029ac, (wrb) t1  <-- 0x8000319c
       0      563        M 0x800029b4 bge     t0, t1, pc + 16        #; t0  = 0x80003198, t1  = 0x8000319c, not taken
       0      564        M 0x800029b8 sw      zero, 0(t0)            #; t0  = 0x80003198, 0 ~~> Word[0x80003198]
       0      565        M 0x800029bc addi    t0, t0, 4              #; t0  = 0x80003198, (wrb) t0  <-- 0x8000319c
       0      573        M 0x800029c0 blt     t0, t1, pc - 8         #; t0  = 0x8000319c, t1  = 0x8000319c, not taken
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
       0      877        M 0x80002b28 jalr    ra, ra, -1052          #; ra  = 0x80002b24, (wrb) ra  <-- 0x80002b2c, goto 0x80002708
       0      899        M 0x80002708 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000270c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002710 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002714 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002718 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000271c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002720 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002724 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002728 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000272c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x80002730 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x80002734 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x80002738 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x8000273c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x80002740 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x80002744 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x80002748 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x8000274c lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x80002750 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002754 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x80002758 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x8000275c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002760 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002764 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x80002768 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x8000276c sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x80002770 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x80002774 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x80002778 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x8000277c sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x80002780 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x80002784 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x80002788 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x8000278c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x80002790 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x80002794 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x80002798 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x8000279c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x800027a0 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x800027a4 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x800027a8 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x800027ac slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x800027b0 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x800027b4 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x800027b8 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x800027bc sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x800027c0 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x800027c4 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x800027c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x800027cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x800027d0 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x800027d4 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x800027d8 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x800027dc lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x800027e0 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x800027e4 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x800027e8 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x800027ec add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x800027f0 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x800027f4 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x800027f8 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x800027fc auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037fc
       0     1293        M 0x80002800 addi    a1, a1, -1632          #; a1  = 0x800037fc, (wrb) a1  <-- 0x8000319c
       0     1294        M 0x80002804 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
       0     1295        M 0x80002808 sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     1296        M 0x8000280c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002810 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002814 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002818 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000281c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002820 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002824 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002828 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000282c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x80002830 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x80002834 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x80002838 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x8000283c lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002840 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002844 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002848 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x8000284c sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x80002850 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x80002854 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x80002858 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x8000285c sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002860 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002864 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x80002868 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x8000286c ret                            #; ra  = 0x80002b2c, goto 0x80002b2c
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
       0     1442        M 0x80002b50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b50
       0     1443        M 0x80002b54 jalr    ra, ra, 544            #; ra  = 0x80002b50, (wrb) ra  <-- 0x80002b58, goto 0x80002d70
       0     1456        M 0x80002d70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002d74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b58 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002d78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d78
       0     1459        M 0x80002d7c jalr    ra, ra, -1256          #; ra  = 0x80002d78, (wrb) ra  <-- 0x80002d80, goto 0x80002890
       0     1480        M 0x80002890 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x80002894 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x80002898 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x800028a0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x800028a4 ret                            #; ra  = 0x80002d80, goto 0x80002d80
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002d80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002d84 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002d88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002d8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002b58
       0     1532        M 0x80002d90 ret                            #; ra  = 0x80002b58, goto 0x80002b58
       0     1536        M 0x80002b58 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b58
       0     1537        M 0x80002b5c jalr    ra, ra, -1316          #; ra  = 0x80000b58, (wrb) ra  <-- 0x80002b60, goto 0x80000634
       0     1542        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1543        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b60 ~~> Word[0x0011ff5c]
       0     1545        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1546        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1547        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1548        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1550        M                                           #; (lsu) a1  <-- 0
       0     1558        M 0x80000650 bnez    a1, pc + 1108          #; a1  = 0, not taken
       0     1559        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1560        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1561        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1564        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1570        M 0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1573        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1574        M 0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1577        M                                           #; (lsu) a0  <-- 0x00100000
       0     1578        M 0x80000668 lw      a2, 80(a1)             #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1581        M                                           #; (lsu) a2  <-- 0x00100000
       0     1582        M 0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1585        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1586        M 0x80000670 addi    a3, a0, 80             #; a0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1587        M 0x80000674 add     a2, a4, a2             #; a4  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1588        M 0x80000678 bgeu    a2, a3, pc + 16        #; a2  = 0x0011df30, a3  = 0x00100050, taken, goto 0x80000688
       0     1599        M 0x80000688 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     1600        M 0x8000068c snez    a7, a2                 #; a2  = 1, (wrb) a7  <-- 1
       0     1621        M 0x80000690 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1622        M 0x80000694 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1623        M 0x80000698 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1624        M 0x8000069c and     a2, a7, a2             #; a7  = 1, a2  = 1, (wrb) a2  <-- 1
       0     1633        M 0x800006a0 sw      a3, 88(a1)             #; a1  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1634        M 0x800006a4 beqz    a2, pc + 344           #; a2  = 1, not taken
       0     1635        M 0x800006a8 li      t0, 0                  #; (wrb) t0  <-- 0
       0     1636        M 0x800006ac li      a2, 8                  #; (wrb) a2  <-- 8
       0     1645        M 0x800006b0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1646        M 0x800006b4 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1647        M 0x800006b8 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1648        M 0x800006bc li      a4, 192                #; (wrb) a4  <-- 192
       0     1657        M 0x800006c0 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     1658        M 0x800006c4 li      a4, 32                 #; (wrb) a4  <-- 32
       0     1659        M 0x800006c8 scfgw   zero, a4               #; a4  = 32
       0     1660        M 0x800006cc scfgwi  a0, 896                #; a0  = 0x00100000
       0     1669        M 0x800006d0 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036d0
       0     1670        M 0x800006d4 addi    a4, a4, -1592          #; a4  = 0x800036d0, (wrb) a4  <-- 0x80003098
       0     1673        M 0x800006d8 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003098]
       0     1674        M 0x800006dc csrsi   ssr, 1                 #; 
       0     1682        M 0x800006e0 fcvt.d.w ft4, zero             #; ac1  = 0, (f:lsu) ft3  <-- 1.0
       0     1683        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1684        M 0x800006ec auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036ec
                         M 0x800006e4 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1685        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
       0     1686        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1693        M 0x800006f0 addi    a4, a4, -1612          #; a4  = 0x800036ec, (wrb) a4  <-- 0x800030a0
       0     1695        M 0x800006f8 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036f8
       0     1696        M 0x800006fc addi    a4, a4, -1616          #; a4  = 0x800036f8, (wrb) a4  <-- 0x800030a8
                         M 0x800006f4 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x800030a0]
       0     1705        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1706        M 0x80000704 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003704
       0     1707        M 0x80000708 addi    a4, a4, -1620          #; a4  = 0x80003704, (wrb) a4  <-- 0x800030b0
                         M 0x80000700 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x800030a8]
       0     1710        M 0x8000070c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x800030b0]
       0     1716        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1717        M 0x80000710 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003710
       0     1718        M 0x80000714 addi    a4, a4, -1624          #; a4  = 0x80003710, (wrb) a4  <-- 0x800030b8
       0     1719        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1721        M 0x80000718 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x800030b8]
       0     1722        M 0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1723        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1730        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1731        M 0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1732        M 0x8000072c auipc   a4, 0x3                #; (wrb) a4  <-- 0x8000372c
                         M 0x80000724 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
       0     1733        M 0x80000728 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1734        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1741        M 0x80000730 addi    a4, a4, -1644          #; a4  = 0x8000372c, (wrb) a4  <-- 0x800030c0
       0     1743        M 0x80000738 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003738
       0     1744        M 0x8000073c addi    a4, a4, -1648          #; a4  = 0x80003738, (wrb) a4  <-- 0x800030c8
                         M 0x80000734 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x800030c0]
       0     1753        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1754        M 0x80000744 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003744
       0     1755        M 0x80000748 addi    a4, a4, -1652          #; a4  = 0x80003744, (wrb) a4  <-- 0x800030d0
                         M 0x80000740 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x800030c8]
       0     1758        M 0x8000074c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x800030d0]
       0     1764        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1765        M 0x80000750 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003750
       0     1766        M 0x80000754 addi    a4, a4, -1656          #; a4  = 0x80003750, (wrb) a4  <-- 0x800030d8
       0     1767        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1769        M 0x80000758 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x800030d8]
       0     1770        M 0x8000075c fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1771        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1778        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1779        M 0x80000760 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1780        M 0x80000764 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
       0     1781        M 0x80000768 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1782        M 0x8000076c csrci   ssr, 1                 #; (f:fpu) ft0  <-- 9.0
       0     1789        M 0x80000770 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1790        M 0x80000774 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1791        M 0x80000778 li      a3, 192                #; (wrb) a3  <-- 192
       0     1792        M 0x8000077c scfgw   a2, a3                 #; a2  = 8, a3  = 192
       0     1801        M 0x80000780 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1802        M 0x80000784 scfgw   zero, a2               #; a2  = 32
       0     1803        M 0x80000788 scfgwi  a0, 768                #; a0  = 0x00100000
       0     1805        M 0x8000078c csrsi   ssr, 1                 #; 
       0     1815        M 0x80000790 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     1816        M 0x80000794 fsgnj.d ft4, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0, (f:fpu) ft3  <-- 0.0
       0     1817        M 0x80000798 fsgnj.d ft5, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0, (f:fpu) ft4  <-- 1.0
       0     1818        M 0x8000079c fsgnj.d ft6, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 2.0
       0     1819        M                                           #; (f:fpu) ft6  <-- 3.0
       0     1827        M 0x800007a0 fsgnj.d ft7, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0
       0     1828        M 0x800007a4 fsgnj.d fa0, ft0, ft0          #; ft0  = 5.0, ft0  = 5.0, (f:fpu) ft7  <-- 4.0
       0     1829        M 0x800007a8 fsgnj.d fa1, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa0  <-- 5.0
       0     1830        M 0x800007ac fsgnj.d fa2, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa1  <-- 6.0
       0     1831        M                                           #; (f:fpu) fa2  <-- 7.0
       0     1837        M 0x800007b0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037b0
       0     1838        M 0x800007b4 addi    a2, a2, -1744          #; a2  = 0x800037b0, (wrb) a2  <-- 0x800030e0
       0     1841        M 0x800007b8 fld     fa3, 0(a2)             #; fa3  <~~ Doub[0x800030e0]
       0     1842        M 0x800007bc fsgnj.d fa4, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0
       0     1843        M                                           #; (f:fpu) fa4  <-- 8.0
       0     1850        M                                           #; (f:lsu) fa3  <-- -45.0
       0     1851        M 0x800007c0 fsgnj.d fa5, ft0, ft0          #; ft0  = 9.0, ft0  = 9.0
       0     1852        M 0x800007c4 csrci   ssr, 1                 #; (f:fpu) fa5  <-- 9.0
       0     1854        M 0x800007c8 fadd.d  ft0, ft3, fa3          #; ft3  = 0.0, fa3  = -45.0
       0     1857        M                                           #; (f:fpu) ft0  <-- -45.0
       0     1858        M 0x800007cc fadd.d  ft0, ft0, ft4          #; ft0  = -45.0, ft4  = 1.0
       0     1861        M                                           #; (f:fpu) ft0  <-- -44.0
       0     1863        M 0x800007d0 fadd.d  ft0, ft0, ft5          #; ft0  = -44.0, ft5  = 2.0
       0     1866        M                                           #; (f:fpu) ft0  <-- -42.0
       0     1867        M 0x800007d4 fadd.d  ft0, ft0, ft6          #; ft0  = -42.0, ft6  = 3.0
       0     1870        M                                           #; (f:fpu) ft0  <-- -39.0
       0     1871        M 0x800007d8 fadd.d  ft0, ft0, ft7          #; ft0  = -39.0, ft7  = 4.0
       0     1874        M                                           #; (f:fpu) ft0  <-- -35.0
       0     1875        M 0x800007dc fadd.d  ft0, ft0, fa0          #; ft0  = -35.0, fa0  = 5.0
       0     1878        M                                           #; (f:fpu) ft0  <-- -30.0
       0     1879        M 0x800007e0 fadd.d  ft0, ft0, fa1          #; ft0  = -30.0, fa1  = 6.0
       0     1882        M                                           #; (f:fpu) ft0  <-- -24.0
       0     1883        M 0x800007e4 fadd.d  ft0, ft0, fa2          #; ft0  = -24.0, fa2  = 7.0
       0     1885        M 0x800007f0 li      a6, 1                  #; (wrb) a6  <-- 1
       0     1886        M 0x800007f4 li      a7, 1                  #; (wrb) a7  <-- 1
                         M                                           #; (f:fpu) ft0  <-- -17.0
       0     1887        M 0x800007f8 j       pc + 0x84              #; goto 0x8000087c
                         M 0x800007e8 fadd.d  ft0, ft0, fa4          #; ft0  = -17.0, fa4  = 8.0
       0     1890        M                                           #; (f:fpu) ft0  <-- -9.0
       0     1891        M 0x800007ec fadd.d  ft3, ft0, fa5          #; ft0  = -9.0, fa5  = 9.0
       0     1894        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1897        M 0x8000087c addi    a4, a0, 8              #; a0  = 0x00100000, (wrb) a4  <-- 0x00100008
       0     1909        M 0x80000880 addi    a5, a0, 64             #; a0  = 0x00100000, (wrb) a5  <-- 0x00100040
       0     1910        M 0x80000884 sltu    a2, a5, a0             #; a5  = 0x00100040, a0  = 0x00100000, (wrb) a2  <-- 0
       0     1911        M 0x80000888 add     a1, t0, a2             #; t0  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1912        M 0x8000088c addi    a3, a0, 72             #; a0  = 0x00100000, (wrb) a3  <-- 0x00100048
       0     1921        M 0x80000890 sltu    a2, a3, a4             #; a3  = 0x00100048, a4  = 0x00100008, (wrb) a2  <-- 0
       0     1922        M 0x80000894 beqz    a1, pc + 20            #; a1  = 0, taken, goto 0x800008a8
       0     1933        M 0x800008a8 sltu    a5, a5, a4             #; a5  = 0x00100040, a4  = 0x00100008, (wrb) a5  <-- 0
       0     1934        M 0x800008ac beq     a2, t0, pc - 12        #; a2  = 0, t0  = 0, taken, goto 0x800008a0
       0     1935        M 0x800008a0 sltu    a1, a3, a0             #; a3  = 0x00100048, a0  = 0x00100000, (wrb) a1  <-- 0
       0     1936        M 0x800008a4 j       pc + 0x10              #; goto 0x800008b4
       0     1947        M 0x800008b4 or      a1, a5, a1             #; a5  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1948        M 0x800008b8 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1949        M 0x800008bc addi    a2, a2, -63            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffc1
       0     1959        M 0x800008c0 sltu    a3, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffc1, (wrb) a3  <-- 1
       0     1960        M 0x800008c4 and     a3, a7, a3             #; a7  = 1, a3  = 1, (wrb) a3  <-- 1
       0     1961        M 0x800008c8 and     a1, a3, a1             #; a3  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1962        M 0x800008cc srli    a3, a4, 20             #; a4  = 0x00100008, (wrb) a3  <-- 1
       0     1971        M 0x800008d0 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1972        M 0x800008d4 sltu    a2, a4, a2             #; a4  = 0x00100008, a2  = 0x0011ffc1, (wrb) a2  <-- 1
       0     1973        M 0x800008d8 and     a2, a3, a2             #; a3  = 1, a2  = 1, (wrb) a2  <-- 1
       0     1974        M 0x800008dc and     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1983        M 0x800008e0 beqz    a1, pc + 232           #; a1  = 0, taken, goto 0x800009c8
       0     2008        M 0x800009c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
       0     2009        M                                           #; (f:lsu) ft0  <-- 0.0
       0     2010        M 0x800009cc fsd     ft0, 8(a0)             #; 0.0 ~~> Doub[0x00100008]
       0     2020        M 0x800009d0 fsd     ft0, 16(a0)            #; 0.0 ~~> Doub[0x00100010]
       0     2021        M 0x800009d4 fsd     ft0, 24(a0)            #; 0.0 ~~> Doub[0x00100018]
       0     2022        M 0x800009d8 fsd     ft0, 32(a0)            #; 0.0 ~~> Doub[0x00100020]
       0     2023        M 0x800009dc fsd     ft0, 40(a0)            #; 0.0 ~~> Doub[0x00100028]
       0     2032        M 0x800009e0 fsd     ft0, 48(a0)            #; 0.0 ~~> Doub[0x00100030]
       0     2033        M 0x800009e4 fsd     ft0, 56(a0)            #; 0.0 ~~> Doub[0x00100038]
       0     2034        M 0x800009e8 fsd     ft0, 64(a0)            #; 0.0 ~~> Doub[0x00100040]
       0     2035        M 0x800009ec fsd     ft0, 72(a0)            #; 0.0 ~~> Doub[0x00100048]
       0     2042        M 0x800009f0 beqz    a6, pc - 120           #; a6  = 1, not taken
       0     2043        M 0x800009f4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2044        M 0x800009f8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2045        M 0x800009fc li      a3, 64                 #; (wrb) a3  <-- 64
       0     2065        M 0x80000a00 li      a4, 192                #; (wrb) a4  <-- 192
       0     2066        M 0x80000a04 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2067        M 0x80000a08 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2068        M 0x80000a0c li      a1, 32                 #; (wrb) a1  <-- 32
       0     2077        M 0x80000a10 scfgw   zero, a1               #; a1  = 32
       0     2078        M 0x80000a14 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2080        M                                           #; (acc) tp  <-- 0x22000253
                         M 0x80000a18 csrsi   ssr, 1                 #; 
       0     2082        M 0x80000a1c fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2083        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2091        M 0x80000a20 fsgnj.d ft5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2092        M 0x80000a24 fsgnj.d ft6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft5  <-- 0.0
       0     2093        M 0x80000a28 fsgnj.d ft7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft6  <-- 0.0
       0     2094        M 0x80000a2c fsgnj.d fa0, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft7  <-- 0.0
       0     2095        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2103        M 0x80000a30 fsgnj.d fa1, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2104        M 0x80000a34 fsgnj.d fa2, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa1  <-- 0.0
       0     2105        M 0x80000a38 fsgnj.d fa3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa2  <-- 0.0
       0     2106        M 0x80000a3c fsgnj.d fa4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa3  <-- 0.0
       0     2107        M                                           #; (f:fpu) fa4  <-- 0.0
       0     2115        M 0x80000a40 fsgnj.d fa5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2116        M 0x80000a44 csrci   ssr, 1                 #; (f:fpu) fa5  <-- 0.0
       0     2118        M 0x80000a48 fadd.d  ft0, ft5, ft4          #; ft5  = 0.0, ft4  = 0.0
       0     2121        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2122        M 0x80000a4c fadd.d  ft0, ft0, ft6          #; ft0  = 0.0, ft6  = 0.0
       0     2125        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2127        M 0x80000a50 fadd.d  ft0, ft0, ft7          #; ft0  = 0.0, ft7  = 0.0
       0     2130        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2131        M 0x80000a54 fadd.d  ft0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     2134        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2135        M 0x80000a58 fadd.d  ft0, ft0, fa1          #; ft0  = 0.0, fa1  = 0.0
       0     2138        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2139        M 0x80000a5c fadd.d  ft0, ft0, fa2          #; ft0  = 0.0, fa2  = 0.0
       0     2142        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2143        M 0x80000a60 fadd.d  ft0, ft0, fa3          #; ft0  = 0.0, fa3  = 0.0
       0     2146        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2147        M 0x80000a64 fadd.d  ft0, ft0, fa4          #; ft0  = 0.0, fa4  = 0.0
       0     2150        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2151        M 0x80000a68 fadd.d  ft0, ft0, fa5          #; ft0  = 0.0, fa5  = 0.0
       0     2152        M 0x80000a7c lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x80000a6c fsgnjx.d ft1, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     2153        M                                           #; (f:fpu) ft1  <-- 0.0
       0     2154        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2155        M                                           #; (lsu) a2  <-- 0
                         M 0x80000a70 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2156        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2157        M 0x80000a74 fadd.d  fs0, ft0, ft1          #; ft0  = 0.0, ft1  = 0.0
       0     2160        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2161        M 0x80000a80 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x80000a78 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2162        M 0x80000a84 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a84
       0     2163        M 0x80000a88 addi    a0, a0, 865            #; a0  = 0x80002a84, (wrb) a0  <-- 0x80002de5
       0     2164        M 0x80000a8c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a8c
       0     2165        M                                           #; (lsu) a3  <-- 0
       0     2173        M 0x80000a90 jalr    ra, ra, 40             #; ra  = 0x80000a8c, (wrb) ra  <-- 0x80000a94, goto 0x80000ab4
       0     2178        M 0x80000ab4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2179        M 0x80000ab8 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a94 ~~> Word[0x0011ff1c]
       0     2180        M 0x80000abc mv      t0, a0                 #; a0  = 0x80002de5, (wrb) t0  <-- 0x80002de5
       0     2181        M 0x80000ac0 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2182        M 0x80000ac4 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2183        M 0x80000ac8 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
       0     2184        M 0x80000acc sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
       0     2193        M 0x80000ad0 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2194        M 0x80000ad4 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2195        M 0x80000ad8 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     2196        M 0x80000adc addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2205        M 0x80000ae0 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2206        M 0x80000ae4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae4
       0     2207        M 0x80000ae8 addi    a0, a0, -988           #; a0  = 0x80001ae4, (wrb) a0  <-- 0x80001708
       0     2208        M 0x80000aec addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2217        M 0x80000af0 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2218        M 0x80000af4 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2219        M 0x80000af8 mv      a3, t0                 #; t0  = 0x80002de5, (wrb) a3  <-- 0x80002de5
       0     2220        M 0x80000afc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000afc
       0     2229        M 0x80000b00 jalr    ra, ra, 20             #; ra  = 0x80000afc, (wrb) ra  <-- 0x80000b04, goto 0x80000b10
       0     2241        M 0x80000b10 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2242        M 0x80000b14 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b04 ~~> Word[0x0011ff0c]
       0     2243        M 0x80000b18 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2244        M 0x80000b1c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2253        M 0x80000b20 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2254        M 0x80000b24 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2255        M 0x80000b28 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2256        M 0x80000b2c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2265        M 0x80000b30 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2266        M 0x80000b34 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2267        M 0x80000b38 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2268        M 0x80000b3c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2277        M 0x80000b40 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2278        M 0x80000b44 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2279        M 0x80000b48 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2280        M 0x80000b4c mv      s0, a3                 #; a3  = 0x80002de5, (wrb) s0  <-- 0x80002de5
       0     2289        M 0x80000b50 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2290        M 0x80000b54 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2291        M 0x80000b58 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2292        M 0x80000b5c mv      s2, a0                 #; a0  = 0x80001708, (wrb) s2  <-- 0x80001708
       0     2301        M 0x80000b60 j       pc + 0xc               #; goto 0x80000b6c
       0     2302        M 0x80000b6c li      s8, 0                  #; (wrb) s8  <-- 0
       0     2314        M 0x80000b70 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2315        M 0x80000b74 li      s11, 16                #; (wrb) s11 <-- 16
       0     2316        M 0x80000b78 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2317        M 0x80000b7c lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2326        M 0x80000b80 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2327        M 0x80000b84 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2328        M 0x80000b88 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2329        M 0x80000b8c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2338        M 0x80000b90 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2339        M 0x80000b94 addi    s10, s0, 2             #; s0  = 0x80002de5, (wrb) s10 <-- 0x80002de7
       0     2340        M 0x80000b98 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2341        M 0x80000b9c li      s8, 10                 #; (wrb) s8  <-- 10
       0     2350        M 0x80000ba0 lbu     a0, 0(s0)              #; s0  = 0x80002de5, a0  <~~ Byte[0x80002de5]
       0     2361        M                                           #; (lsu) a0  <-- 101
       0     2362        M 0x80000ba4 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2363        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2364        M 0x80000bac addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2365        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2366        M 0x80000bb4 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2367        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2368        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2388        M 0x80001708 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2389        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2400        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2401        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2402        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2403        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2412        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2413        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2424        M                                           #; (lsu) a4  <-- 0
       0     2425        M 0x80001728 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2426        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
       0     2427        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
       0     2428        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
       0     2429        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2450        M                                           #; (lsu) a4  <-- 1
       0     2451        M 0x8000173c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2452        M 0x80001740 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2453        M 0x80001744 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2454        M 0x80001748 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2455        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2464        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     2487        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     2501        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de5, (wrb) s0  <-- 0x80002de6
       0     2502        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002de7, (wrb) s10 <-- 0x80002de8
       0     2503        M 0x80000bc8 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2504        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de6, a0  <~~ Byte[0x80002de6]
       0     2515        M                                           #; (lsu) a0  <-- 114
       0     2516        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba8
       0     2517        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2518        M 0x80000bac addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2520        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2521        M 0x80000bb4 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2522        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2523        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2526        M 0x80001708 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2527        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2529        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2530        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2531        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2532        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2533        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2534        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2535        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2546        M                                           #; (lsu) a4  <-- 1
       0     2547        M 0x80001728 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2548        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
       0     2549        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
       0     2550        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
       0     2551        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2572        M                                           #; (lsu) a4  <-- 2
       0     2573        M 0x8000173c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2574        M 0x80001740 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2575        M 0x80001744 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2576        M 0x80001748 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2577        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2578        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     2583        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     2588        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de6, (wrb) s0  <-- 0x80002de7
       0     2589        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002de8, (wrb) s10 <-- 0x80002de9
       0     2590        M 0x80000bc8 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2591        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de7, a0  <~~ Byte[0x80002de7]
       0     2602        M                                           #; (lsu) a0  <-- 114
       0     2603        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba8
       0     2604        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2605        M 0x80000bac addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2607        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2608        M 0x80000bb4 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2609        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2610        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2613        M 0x80001708 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2614        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2616        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2617        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2618        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2619        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2620        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2621        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2622        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2633        M                                           #; (lsu) a4  <-- 2
       0     2634        M 0x80001728 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2635        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
       0     2636        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
       0     2637        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
       0     2638        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2659        M                                           #; (lsu) a4  <-- 3
       0     2660        M 0x8000173c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2661        M 0x80001740 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2662        M 0x80001744 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2663        M 0x80001748 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2664        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2665        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     2670        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     2675        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de7, (wrb) s0  <-- 0x80002de8
       0     2676        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002de9, (wrb) s10 <-- 0x80002dea
       0     2677        M 0x80000bc8 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2678        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de8, a0  <~~ Byte[0x80002de8]
       0     2689        M                                           #; (lsu) a0  <-- 111
       0     2690        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ba8
       0     2691        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2692        M 0x80000bac addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2694        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2695        M 0x80000bb4 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2696        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2697        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2700        M 0x80001708 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2701        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2703        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2704        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2705        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2706        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2707        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2708        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2709        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2720        M                                           #; (lsu) a4  <-- 3
       0     2721        M 0x80001728 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2722        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
       0     2723        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
       0     2724        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
       0     2725        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2746        M                                           #; (lsu) a4  <-- 4
       0     2747        M 0x8000173c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2748        M 0x80001740 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2749        M 0x80001744 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2750        M 0x80001748 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2751        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2752        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     2757        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     2762        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de8, (wrb) s0  <-- 0x80002de9
       0     2763        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002dea, (wrb) s10 <-- 0x80002deb
       0     2764        M 0x80000bc8 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2765        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de9, a0  <~~ Byte[0x80002de9]
       0     2776        M                                           #; (lsu) a0  <-- 114
       0     2777        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba8
       0     2778        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2779        M 0x80000bac addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2781        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2782        M 0x80000bb4 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2783        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2784        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2787        M 0x80001708 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2788        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2790        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2791        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2792        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2793        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2794        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2795        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2796        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2807        M                                           #; (lsu) a4  <-- 4
       0     2808        M 0x80001728 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2809        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
       0     2810        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
       0     2811        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
       0     2812        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2833        M                                           #; (lsu) a4  <-- 5
       0     2834        M 0x8000173c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2835        M 0x80001740 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2836        M 0x80001744 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2837        M 0x80001748 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2838        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2839        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     2844        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     2849        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de9, (wrb) s0  <-- 0x80002dea
       0     2850        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002deb, (wrb) s10 <-- 0x80002dec
       0     2851        M 0x80000bc8 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2852        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002dea, a0  <~~ Byte[0x80002dea]
       0     2863        M                                           #; (lsu) a0  <-- 32
       0     2864        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ba8
       0     2865        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2866        M 0x80000bac addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2868        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2869        M 0x80000bb4 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2870        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2871        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2874        M 0x80001708 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2875        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2877        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2878        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2879        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2880        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2881        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2882        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2883        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2894        M                                           #; (lsu) a4  <-- 5
       0     2895        M 0x80001728 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2896        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
       0     2897        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
       0     2898        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
       0     2899        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2920        M                                           #; (lsu) a4  <-- 6
       0     2921        M 0x8000173c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2922        M 0x80001740 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2923        M 0x80001744 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2924        M 0x80001748 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2925        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2926        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     2931        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     2936        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002dea, (wrb) s0  <-- 0x80002deb
       0     2937        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002dec, (wrb) s10 <-- 0x80002ded
       0     2938        M 0x80000bc8 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2939        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002deb, a0  <~~ Byte[0x80002deb]
       0     2950        M                                           #; (lsu) a0  <-- 61
       0     2951        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ba8
       0     2952        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2953        M 0x80000bac addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2955        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2956        M 0x80000bb4 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2957        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2958        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     2961        M 0x80001708 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2962        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2964        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2965        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2966        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     2967        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     2968        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2969        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2970        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2981        M                                           #; (lsu) a4  <-- 6
       0     2982        M 0x80001728 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2983        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
       0     2984        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
       0     2985        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
       0     2986        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3007        M                                           #; (lsu) a4  <-- 7
       0     3008        M 0x8000173c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3009        M 0x80001740 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3010        M 0x80001744 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3011        M 0x80001748 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3012        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3013        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     3018        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     3023        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002deb, (wrb) s0  <-- 0x80002dec
       0     3024        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002ded, (wrb) s10 <-- 0x80002dee
       0     3025        M 0x80000bc8 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3026        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002dec, a0  <~~ Byte[0x80002dec]
       0     3037        M                                           #; (lsu) a0  <-- 32
       0     3038        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ba8
       0     3039        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3040        M 0x80000bac addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3042        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3043        M 0x80000bb4 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3044        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3045        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     3048        M 0x80001708 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3049        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3051        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3052        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3053        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     3054        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     3055        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3056        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3057        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3068        M                                           #; (lsu) a4  <-- 7
       0     3069        M 0x80001728 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3070        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
       0     3071        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
       0     3072        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
       0     3073        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3094        M                                           #; (lsu) a4  <-- 8
       0     3095        M 0x8000173c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3096        M 0x80001740 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3097        M 0x80001744 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3098        M 0x80001748 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3099        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3100        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     3105        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     3110        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002dec, (wrb) s0  <-- 0x80002ded
       0     3111        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002dee, (wrb) s10 <-- 0x80002def
       0     3112        M 0x80000bc8 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3113        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002ded, a0  <~~ Byte[0x80002ded]
       0     3124        M                                           #; (lsu) a0  <-- 37
       0     3125        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ba8
       0     3126        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bd8
       0     3127        M 0x80000bd8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3128        M 0x80000bdc j       pc + 0x10              #; goto 0x80000bec
       0     3140        M 0x80000bec lbu     a0, -1(s10)            #; s10 = 0x80002def, a0  <~~ Byte[0x80002dee]
       0     3151        M                                           #; (lsu) a0  <-- 102
       0     3152        M 0x80000bf0 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3153        M 0x80000bf4 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c2c
       0     3175        M 0x80000c2c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3187        M 0x80000c30 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3188        M 0x80000c34 addi    a1, s10, -1            #; s10 = 0x80002def, (wrb) a1  <-- 0x80002dee
       0     3189        M 0x80000c38 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3190        M 0x80000c3c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cb8
       0     3210        M 0x80000cb8 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3211        M 0x80000cbc bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d0c
       0     3233        M 0x80000d0c li      s6, 0                  #; (wrb) s6  <-- 0
       0     3245        M 0x80000d10 mv      s10, a1                #; a1  = 0x80002dee, (wrb) s10 <-- 0x80002dee
       0     3246        M 0x80000d14 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3247        M 0x80000d18 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3248        M 0x80000d1c j       pc + 0xc               #; goto 0x80000d28
       0     3268        M 0x80000d28 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3269        M 0x80000d2c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3280        M 0x80000d30 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3281        M 0x80000d34 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3282        M 0x80000d38 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3283        M 0x80000d3c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000da0
       0     3303        M 0x80000da0 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3304        M 0x80000da4 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3305        M 0x80000da8 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3306        M 0x80000dac slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3315        M 0x80000db0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db0
       0     3316        M 0x80000db4 addi    a2, a2, 180            #; a2  = 0x80002db0, (wrb) a2  <-- 0x80002e64
       0     3317        M 0x80000db8 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e64, (wrb) a1  <-- 0x80002f68
       0     3318        M 0x80000dbc lw      a2, 0(a1)              #; a1  = 0x80002f68, a2  <~~ Word[0x80002f68]
       0     3327        M 0x80000dc0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3328        M 0x80000dc4 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3329        M                                           #; (lsu) a2  <-- 0x80000df8
       0     3330        M 0x80000dc8 jr      a2                     #; a2  = 0x80000df8, goto 0x80000df8
       0     3350        M 0x80000df8 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3351        M 0x80000dfc bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e04
       0     3362        M 0x80000e04 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3363        M 0x80000e08 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3366        M 0x80000e0c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3367        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3374        M 0x80000e10 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3375        M 0x80000e14 mv      a0, s2                 #; s2  = 0x80001708, (wrb) a0  <-- 0x80001708
       0     3376        M 0x80000e18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3377        M 0x80000e1c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3386        M 0x80000e20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3387        M 0x80000e24 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3388        M 0x80000e28 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3389        M 0x80000e2c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3398        M 0x80000e30 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e30
       0     3399        M 0x80000e34 jalr    ra, ra, -1656          #; ra  = 0x80001e30, (wrb) ra  <-- 0x80000e38, goto 0x800017b8
       0     3412        M 0x800017b8 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3413        M 0x800017bc sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e38 ~~> Word[0x0011fe9c]
       0     3415        M 0x800017c0 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3416        M 0x800017c4 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3417        M 0x800017c8 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001708 ~~> Word[0x0011fe90]
       0     3418        M 0x800017cc sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3427        M 0x800017d0 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3428        M 0x800017d4 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3429        M 0x800017d8 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3430        M 0x800017dc sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3439        M 0x800017e0 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3440        M 0x800017e4 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3441        M 0x800017e8 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dee ~~> Word[0x0011fe70]
       0     3444        M 0x800017ec fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3453        M 0x800017f8 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037f8
                         M 0x800017f0 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3454        M 0x800017fc addi    s1, s1, -1800          #; s1  = 0x800037f8, (wrb) s1  <-- 0x800030f0
                         M 0x800017f4 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3465        M 0x80001808 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001800 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
       0     3466        M 0x8000180c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     3474        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3475        M 0x80001810 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001804 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3476        M 0x80001814 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3477        M 0x80001818 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3478        M 0x8000181c mv      s7, a0                 #; a0  = 0x80001708, (wrb) s7  <-- 0x80001708
       0     3487        M 0x80001820 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001910
       0     3511        M 0x80001914 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002914
       0     3512        M 0x80001918 addi    a0, a0, 2020           #; a0  = 0x80002914, (wrb) a0  <-- 0x800030f8
                         M 0x80001910 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3513        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3515        M 0x8000191c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
       0     3524        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3525        M 0x80001920 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3527        M                                           #; (acc) t3  <-- 0x00051e63
       0     3528        M 0x80001924 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001940
       0     3545        M 0x80001940 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002940
       0     3546        M 0x80001944 addi    a0, a0, 1984           #; a0  = 0x80002940, (wrb) a0  <-- 0x80003100
       0     3548        M 0x8000194c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000294c
       0     3549        M 0x80001948 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
       0     3557        M 0x80001950 addi    a0, a0, 1980           #; a0  = 0x8000294c, (wrb) a0  <-- 0x80003108
       0     3558        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3560        M 0x80001954 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
       0     3561        M 0x80001958 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3569        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3570        M 0x8000195c fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3572        M                                           #; (acc) a0  <-- 0x00b57533
       0     3573        M 0x80001960 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3574        M 0x80001964 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a60
       0     3592        M 0x80001a60 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3593        M 0x80001a64 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3594        M 0x80001a68 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a70
       0     3604        M 0x80001a70 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3606        M 0x80001a78 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ab0
       0     3607        M 0x80001a74 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3608        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3627        M 0x80001ab0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3628        M 0x80001ab4 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3629        M 0x80001ab8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ab8
       0     3630        M 0x80001abc addi    a1, a1, 1280           #; a1  = 0x80002ab8, (wrb) a1  <-- 0x80002fb8
       0     3639        M 0x80001ac0 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fb8, (wrb) a0  <-- 0x80002fe8
       0     3642        M 0x80001ac4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fe8]
       0     3643        M 0x80001ac8 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3647        M 0x80001acc fcvt.d.w ft0, s1               #; ac1  = 0
       0     3648        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3651        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3653        M 0x80001ad8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002ad8
                         M 0x80001ad0 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3654        M 0x80001adc addi    a0, a0, 1592           #; a0  = 0x80002ad8, (wrb) a0  <-- 0x80003110
       0     3656        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3657        M 0x80001ad4 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3660        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3665        M 0x80001ae0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
       0     3666        M 0x80001ae4 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3668        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3670        M 0x80001ae8 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3671        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3672        M 0x80001aec fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3674        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3675        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3676        M 0x80001af0 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3679        M 0x80001af4 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b14
       0     3699        M 0x80001b14 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3701        M                                           #; (acc) s4  <-- 0x00059a63
       0     3702        M 0x80001b18 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b2c
       0     3711        M 0x80001b2c fcvt.d.w fs1, zero             #; ac1  = 0
       0     3712        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3722        M 0x80001b30 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     3723        M 0x80001b34 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3724        M 0x80001b38 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3725        M 0x80001b3c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3734        M 0x80001b40 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3735        M 0x80001b44 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3736        M 0x80001b48 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3737        M 0x80001b4c addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3746        M 0x80001b50 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3747        M 0x80001b54 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3748        M 0x80001b58 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3749        M 0x80001b5c mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3758        M 0x80001b60 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3761        M                                           #; (acc) a0  <-- 0x00355513
       0     3762        M 0x80001b64 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3763        M 0x80001b68 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3766        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3767        M 0x80001b6c sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3770        M 0x80001b70 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3771        M 0x80001b74 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3772        M 0x80001b78 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3773        M 0x80001b7c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3782        M 0x80001b80 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3783        M 0x80001b84 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3784        M 0x80001b88 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3785        M 0x80001b8c li      a3, 30                 #; (wrb) a3  <-- 30
       0     3795        M 0x80001b90 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3796        M 0x80001b94 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3797        M 0x80001b98 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3798        M 0x80001b9c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3807        M 0x80001ba0 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3808        M 0x80001ba4 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3809        M 0x80001ba8 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3810        M 0x80001bac not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3819        M 0x80001bb0 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3820        M 0x80001bb4 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3821        M 0x80001bb8 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3822        M 0x80001bbc sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3831        M 0x80001bc0 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3832        M 0x80001bc4 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3833        M 0x80001bc8 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bd0
       0     3843        M 0x80001bd0 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3844        M 0x80001bd4 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3845        M 0x80001bd8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000bd8
       0     3846        M 0x80001bdc jalr    ra, ra, -1664          #; ra  = 0x80000bd8, (wrb) ra  <-- 0x80001be0, goto 0x80000558
       0     3866        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3867        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3878        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3901        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3913        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3914        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3915        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3916        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3936        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3937        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3948        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3949        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3950        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3951        M 0x800005ec ret                            #; ra  = 0x80001be0, goto 0x80001be0
       0     3962        M 0x80001be0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3963        M 0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3964        M 0x80001be8 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3965        M 0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3974        M 0x80001bf0 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3975        M 0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3976        M 0x80001bf8 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3977        M 0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
       0     3978        M 0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3979        M 0x80001be8 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3980        M 0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3981        M 0x80001bf0 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3982        M 0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3983        M 0x80001bf8 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3984        M 0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
       0     3985        M 0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3986        M 0x80001be8 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3987        M 0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3988        M 0x80001bf0 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3989        M 0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3990        M 0x80001bf8 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3991        M 0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
       0     3992        M 0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3993        M 0x80001be8 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3994        M 0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     3995        M 0x80001bf0 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     3996        M 0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3997        M 0x80001bf8 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3998        M 0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
       0     3999        M 0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4000        M 0x80001be8 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4001        M 0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4002        M 0x80001bf0 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4003        M 0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4004        M 0x80001bf8 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4005        M 0x80001bfc bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4017        M 0x80001c00 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4018        M 0x80001c04 j       pc + 0x28              #; goto 0x80001c2c
       0     4029        M 0x80001c2c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4041        M 0x80001c30 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4042        M 0x80001c34 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4043        M 0x80001c38 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4044        M 0x80001c3c li      a1, 46                 #; (wrb) a1  <-- 46
       0     4053        M 0x80001c40 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4054        M 0x80001c44 j       pc + 0x8               #; goto 0x80001c4c
       0     4055        M 0x80001c4c li      a0, 32                 #; (wrb) a0  <-- 32
       0     4067        M 0x80001c50 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4068        M 0x80001c54 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4069        M 0x80001c58 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4071        M 0x80001c5c flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4079        M 0x80001c60 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4080        M 0x80001c64 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4081        M 0x80001c68 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4082        M 0x80001c6c addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4091        M 0x80001c70 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4092        M 0x80001c74 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4093        M 0x80001c78 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4096        M                                           #; (acc) a5  <-- 0x01f55793
       0     4097        M 0x80001c7c srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4103        M 0x80001c80 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4104        M 0x80001c84 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4105        M 0x80001c88 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4108        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4109        M 0x80001c8c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4115        M 0x80001c90 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4116        M 0x80001c94 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4117        M 0x80001c98 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4118        M 0x80001c9c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4127        M 0x80001ca0 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4128        M 0x80001ca4 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4129        M 0x80001ca8 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4130        M 0x80001cac bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4142        M 0x80001cb0 j       pc + 0x8               #; goto 0x80001cb8
       0     4143        M 0x80001cb8 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4144        M 0x80001cbc li      a0, 1                  #; (wrb) a0  <-- 1
       0     4155        M 0x80001cc0 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d2c
       0     4178        M 0x80001d2c li      a0, 31                 #; (wrb) a0  <-- 31
       0     4190        M 0x80001d30 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4191        M 0x80001d34 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d4c
       0     4202        M 0x80001d4c andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4214        M 0x80001d50 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4215        M 0x80001d54 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4216        M 0x80001d58 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d84
       0     4237        M 0x80001d84 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4238        M 0x80001d88 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4239        M 0x80001d8c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4249        M 0x80001d90 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4250        M 0x80001d94 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4251        M 0x80001d98 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4252        M 0x80001d9c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dc8
       0     4272        M 0x80001dc8 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4273        M 0x80001dcc beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4284        M 0x80001dd0 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4285        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4286        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4287        M 0x80001ddc addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4289        M                                           #; (lsu) a0  <-- 48
       0     4296        M 0x80001de0 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4297        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4298        M 0x80001de8 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4299        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4308        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4311        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4312        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4314        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4315        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4316        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4317        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4318        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4319        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4320        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4331        M                                           #; (lsu) a4  <-- 8
       0     4332        M 0x80001728 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4333        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
       0     4334        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
       0     4335        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a4, 48 ~~> Byte[0x800031ec]
       0     4336        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4357        M                                           #; (lsu) a4  <-- 9
       0     4358        M 0x8000173c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4359        M 0x80001740 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4360        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4361        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4362        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4363        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4368        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4373        M 0x80001df4 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4374        M 0x80001df8 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4375        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001dd4
       0     4376        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4377        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4378        M 0x80001ddc addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4379        M 0x80001de0 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4380        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4381        M 0x80001de8 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4382        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4383        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4384        M                                           #; (lsu) a0  <-- 46
       0     4386        M 0x80001708 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4387        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4389        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4390        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4391        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4392        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4393        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4394        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4395        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4406        M                                           #; (lsu) a4  <-- 9
       0     4407        M 0x80001728 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4408        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
       0     4409        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
       0     4410        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a5, 46 ~~> Byte[0x800031ed]
       0     4411        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4432        M                                           #; (lsu) a4  <-- 10
       0     4433        M 0x8000173c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4434        M 0x80001740 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4435        M 0x80001744 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4436        M 0x80001748 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4437        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4438        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4443        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4448        M 0x80001df4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4449        M 0x80001df8 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4450        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001dd4
       0     4451        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4452        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4453        M 0x80001ddc addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4454        M 0x80001de0 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4455        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4456        M 0x80001de8 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4457        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4458        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4459        M                                           #; (lsu) a0  <-- 48
       0     4461        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4462        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4464        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4465        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4466        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4467        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4468        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4469        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4470        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4481        M                                           #; (lsu) a4  <-- 10
       0     4482        M 0x80001728 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4483        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
       0     4484        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
       0     4485        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a6, 48 ~~> Byte[0x800031ee]
       0     4486        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4507        M                                           #; (lsu) a4  <-- 11
       0     4508        M 0x8000173c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4509        M 0x80001740 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4510        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4511        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4512        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4513        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4518        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4523        M 0x80001df4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4524        M 0x80001df8 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4525        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001dd4
       0     4526        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4527        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4528        M 0x80001ddc addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4529        M 0x80001de0 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4530        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4531        M 0x80001de8 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4532        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4533        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4534        M                                           #; (lsu) a0  <-- 48
       0     4536        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4537        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4539        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4540        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4541        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4542        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4543        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4544        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4545        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4556        M                                           #; (lsu) a4  <-- 11
       0     4557        M 0x80001728 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4558        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
       0     4559        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
       0     4560        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a7, 48 ~~> Byte[0x800031ef]
       0     4561        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4582        M                                           #; (lsu) a4  <-- 12
       0     4583        M 0x8000173c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4584        M 0x80001740 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4585        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4586        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4587        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4588        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4593        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4598        M 0x80001df4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4599        M 0x80001df8 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4600        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001dd4
       0     4601        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4602        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4603        M 0x80001ddc addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4604        M 0x80001de0 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4605        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4606        M 0x80001de8 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4607        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4608        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4609        M                                           #; (lsu) a0  <-- 48
       0     4611        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4612        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4614        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4615        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4616        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4617        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4618        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4619        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4620        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4631        M                                           #; (lsu) a4  <-- 12
       0     4632        M 0x80001728 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4633        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
       0     4634        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
       0     4635        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a8, 48 ~~> Byte[0x800031f0]
       0     4636        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4657        M                                           #; (lsu) a4  <-- 13
       0     4658        M 0x8000173c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4659        M 0x80001740 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4660        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4661        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4662        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4663        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4668        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4673        M 0x80001df4 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4674        M 0x80001df8 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4675        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001dd4
       0     4676        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4677        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4678        M 0x80001ddc addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4679        M 0x80001de0 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4680        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4681        M 0x80001de8 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4682        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4683        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4684        M                                           #; (lsu) a0  <-- 48
       0     4686        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4687        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4689        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4690        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4691        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4692        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4693        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4694        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4695        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4706        M                                           #; (lsu) a4  <-- 13
       0     4707        M 0x80001728 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4708        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
       0     4709        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
       0     4710        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
       0     4711        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4732        M                                           #; (lsu) a4  <-- 14
       0     4733        M 0x8000173c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4734        M 0x80001740 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4735        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4736        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4737        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4738        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4743        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4748        M 0x80001df4 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4749        M 0x80001df8 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4750        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001dd4
       0     4751        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4752        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4753        M 0x80001ddc addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4754        M 0x80001de0 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4755        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4756        M 0x80001de8 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4757        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4758        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4759        M                                           #; (lsu) a0  <-- 48
       0     4761        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4762        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4764        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4765        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4766        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4767        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4768        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4769        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4770        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4781        M                                           #; (lsu) a4  <-- 14
       0     4782        M 0x80001728 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4783        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
       0     4784        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
       0     4785        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031aa, 48 ~~> Byte[0x800031f2]
       0     4786        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4807        M                                           #; (lsu) a4  <-- 15
       0     4808        M 0x8000173c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4809        M 0x80001740 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4810        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4811        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4812        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4813        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4818        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4823        M 0x80001df4 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4824        M 0x80001df8 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4825        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001dd4
       0     4826        M 0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4827        M 0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4828        M 0x80001ddc addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4829        M 0x80001de0 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4830        M 0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4831        M 0x80001de8 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4832        M 0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4833        M 0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
       0     4834        M                                           #; (lsu) a0  <-- 48
       0     4836        M 0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4837        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4839        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4840        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4841        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     4842        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     4843        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4844        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4845        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4856        M                                           #; (lsu) a4  <-- 15
       0     4857        M 0x80001728 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4858        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
       0     4859        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
       0     4860        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
       0     4861        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4882        M                                           #; (lsu) a4  <-- 16
       0     4883        M 0x8000173c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4884        M 0x80001740 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4885        M 0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4886        M 0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4887        M 0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4888        M 0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
       0     4893        M 0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
       0     4898        M 0x80001df4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4899        M 0x80001df8 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4900        M 0x80001dfc bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4912        M 0x80001e00 j       pc + 0x8               #; goto 0x80001e08
       0     4913        M 0x80001e08 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4914        M 0x80001e0c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4925        M 0x80001e10 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4926        M 0x80001e14 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4927        M 0x80001e18 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4928        M 0x80001e1c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e4c
       0     4948        M 0x80001e4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4960        M 0x80001e50 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4963        M 0x80001e54 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4964        M 0x80001e58 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4965        M 0x80001e5c fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4966        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4972        M 0x80001e60 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     4975        M                                           #; (lsu) s10 <-- 0x80002dee
       0     4976        M 0x80001e64 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4979        M                                           #; (lsu) s9  <-- 8
       0     4980        M 0x80001e68 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4983        M                                           #; (lsu) s8  <-- 16
       0     4984        M 0x80001e6c lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4987        M                                           #; (lsu) s7  <-- 0
       0     4988        M 0x80001e70 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4991        M                                           #; (lsu) s6  <-- 0
       0     4992        M 0x80001e74 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4995        M                                           #; (lsu) s5  <-- -1
       0     4996        M 0x80001e78 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4999        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5000        M 0x80001e7c lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5003        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5004        M 0x80001e80 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5007        M                                           #; (lsu) s2  <-- 0x80001708
       0     5008        M 0x80001e84 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5011        M                                           #; (lsu) s1  <-- 8
       0     5012        M 0x80001e88 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5015        M                                           #; (lsu) s0  <-- 0
       0     5016        M 0x80001e8c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5017        M 0x80001e90 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5019        M                                           #; (lsu) ra  <-- 0x80000e38
       0     5020        M 0x80001e94 ret                            #; ra  = 0x80000e38, goto 0x80000e38
       0     5031        M 0x80000e38 j       pc + 0x7c0             #; goto 0x800015f8
       0     5043        M 0x800015f8 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5044        M 0x800015fc li      s6, 37                 #; (wrb) s6  <-- 37
       0     5055        M 0x80001600 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5056        M 0x80001604 addi    s0, s10, 1             #; s10 = 0x80002dee, (wrb) s0  <-- 0x80002def
       0     5057        M 0x80001608 j       pc - 0xa74             #; goto 0x80000b94
       0     5058        M 0x80000b94 addi    s10, s0, 2             #; s0  = 0x80002def, (wrb) s10 <-- 0x80002df1
       0     5059        M 0x80000b98 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5060        M 0x80000b9c li      s8, 10                 #; (wrb) s8  <-- 10
       0     5061        M 0x80000ba0 lbu     a0, 0(s0)              #; s0  = 0x80002def, a0  <~~ Byte[0x80002def]
       0     5072        M                                           #; (lsu) a0  <-- 10
       0     5073        M 0x80000ba4 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5074        M 0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5075        M 0x80000bac addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5076        M 0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5077        M 0x80000bb4 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5078        M 0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5079        M 0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
       0     5082        M 0x80001708 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5083        M 0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5085        M 0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5086        M 0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5087        M 0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
       0     5088        M 0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
       0     5089        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5090        M 0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5091        M 0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5102        M                                           #; (lsu) a4  <-- 16
       0     5103        M 0x80001728 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5104        M 0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
       0     5105        M 0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
       0     5106        M 0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031ac, 10 ~~> Byte[0x800031f4]
       0     5107        M 0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5128        M                                           #; (lsu) a4  <-- 17
       0     5129        M 0x8000173c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5130        M 0x80001740 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5131        M 0x80001744 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5132        M 0x80001748 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5133        M 0x8000174c and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5134        M 0x80001750 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5135        M 0x80001754 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
       0     5136        M 0x80001758 addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
       0     5137        M 0x8000175c sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
       0     5138        M 0x80001760 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5139        M 0x80001764 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
       0     5140        M 0x80001768 sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
       0     5141        M 0x8000176c li      a3, 1                  #; (wrb) a3  <-- 1
       0     5150        M 0x80001770 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
       0     5151        M 0x80001774 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
       0     5153        M 0x80001778 sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
       0     5163        M 0x8000177c lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
       0     5164        M 0x80001780 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
       0     5165        M 0x80001784 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
       0     5185        M                                           #; (lsu) a2  <-- 17
       0     5186        M 0x80001788 sw      a2, 32(a0)             #; a0  = 0x8000319c, 17 ~~> Word[0x800031bc]
       0     5187        M 0x8000178c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000378c
       0     5188        M 0x80001790 addi    a0, a0, -1868          #; a0  = 0x8000378c, (wrb) a0  <-- 0x80003040
       0     5189        M 0x80001794 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
       0     5190        M 0x80001798 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003798
       0     5191        M 0x8000179c addi    a0, a0, -1816          #; a0  = 0x80003798, (wrb) a0  <-- 0x80003080
       0     5200        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5215        M                                           #; (lsu) a2  <-- 0
       0     5216        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5217        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5228        M                                           #; (lsu) a2  <-- 0
       0     5229        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5230        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5241        M                                           #; (lsu) a2  <-- 0
       0     5242        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5243        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5254        M                                           #; (lsu) a2  <-- 0
       0     5255        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5256        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5267        M                                           #; (lsu) a2  <-- 0
       0     5268        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5269        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5280        M                                           #; (lsu) a2  <-- 0
       0     5281        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5282        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5293        M                                           #; (lsu) a2  <-- 0
       0     5294        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
       0     5295        M 0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5306        M                                           #; (lsu) a2  <-- 1
       0     5307        M 0x800017a4 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5308        M 0x800017a8 sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
       0     5309        M 0x800017ac sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     5311        M 0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
       0     5316        M 0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002def, (wrb) s0  <-- 0x80002df0
       0     5317        M 0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002df1, (wrb) s10 <-- 0x80002df2
       0     5318        M 0x80000bc8 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5319        M 0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002df0, a0  <~~ Byte[0x80002df0]
       0     5331        M                                           #; (lsu) a0  <-- 0
       0     5332        M 0x80000bd0 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5333        M 0x80000bd4 j       pc + 0xad8             #; goto 0x800016ac
       0     5345        M 0x800016ac mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5357        M 0x800016b0 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016b8
       0     5358        M 0x800016b8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5359        M 0x800016bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5369        M 0x800016c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5370        M 0x800016c4 jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x800016c8, goto 0x80001708
       0     5383        M 0x80001708 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b0
       0     5388        M 0x800017b0 ret                            #; ra  = 0x800016c8, goto 0x800016c8
       0     5389        M 0x800016c8 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5390        M 0x800016cc lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5393        M                                           #; (lsu) s11 <-- 0
       0     5394        M 0x800016d0 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5397        M                                           #; (lsu) s10 <-- 0
       0     5398        M 0x800016d4 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5401        M                                           #; (lsu) s9  <-- 0
       0     5402        M 0x800016d8 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5405        M                                           #; (lsu) s8  <-- 0
       0     5406        M 0x800016dc lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5409        M                                           #; (lsu) s7  <-- 0
       0     5410        M 0x800016e0 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5413        M                                           #; (lsu) s6  <-- 0
       0     5414        M 0x800016e4 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5417        M                                           #; (lsu) s5  <-- 0
       0     5418        M 0x800016e8 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5421        M                                           #; (lsu) s4  <-- 0
       0     5422        M 0x800016ec lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5425        M                                           #; (lsu) s3  <-- 0
       0     5426        M 0x800016f0 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5429        M                                           #; (lsu) s2  <-- 0
       0     5430        M 0x800016f4 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5433        M                                           #; (lsu) s1  <-- 0
       0     5434        M 0x800016f8 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5437        M                                           #; (lsu) s0  <-- 0
       0     5438        M 0x800016fc lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5439        M 0x80001700 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5441        M                                           #; (lsu) ra  <-- 0x80000b04
       0     5442        M 0x80001704 ret                            #; ra  = 0x80000b04, goto 0x80000b04
       0     5445        M 0x80000b04 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5446        M 0x80000b08 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5448        M                                           #; (lsu) ra  <-- 0x80000a94
       0     5449        M 0x80000b0c ret                            #; ra  = 0x80000a94, goto 0x80000a94
       0     5452        M 0x80000a94 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a94
       0     5453        M 0x80000a98 addi    a0, a0, 1620           #; a0  = 0x80002a94, (wrb) a0  <-- 0x800030e8
       0     5456        M 0x80000a9c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030e8]
       0     5457        M 0x80000aa8 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5458        M 0x80000aac addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5465        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5466        M 0x80000aa0 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5467        M                                           #; (lsu) ra  <-- 0x80002b60
       0     5468        M 0x80000ab0 ret                            #; ra  = 0x80002b60, goto 0x80002b60
                         M 0x80000aa4 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5469        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5482        M 0x80002b60 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5483        M 0x80002b64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b64
       0     5484        M 0x80002b68 jalr    ra, ra, 524            #; ra  = 0x80002b64, (wrb) ra  <-- 0x80002b6c, goto 0x80002d70
       0     5496        M 0x80002d70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5497        M 0x80002d74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b6c ~~> Word[0x0011ff5c]
       0     5498        M 0x80002d78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d78
       0     5499        M 0x80002d7c jalr    ra, ra, -1256          #; ra  = 0x80002d78, (wrb) ra  <-- 0x80002d80, goto 0x80002890
       0     5502        M 0x80002890 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5503        M 0x80002894 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5504        M 0x80002898 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5507        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5508        M 0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5511        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5512        M 0x800028a0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5513        M 0x800028a4 ret                            #; ra  = 0x80002d80, goto 0x80002d80
       0     5515        M                                           #; (lsu) a0  <-- 0x00120190
       0     5516        M 0x80002d80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5526        M                                           #; (lsu) a0  <-- 0
       0     5527        M 0x80002d84 mv      zero, a0               #; a0  = 0
       0     5528        M 0x80002d88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5529        M 0x80002d8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5531        M                                           #; (lsu) ra  <-- 0x80002b6c
       0     5532        M 0x80002d90 ret                            #; ra  = 0x80002b6c, goto 0x80002b6c
       0     5546        M 0x80002b6c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5550        M 0x80002b70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b70
       0     5551        M 0x80002b74 jalr    ra, ra, 556            #; ra  = 0x80002b70, (wrb) ra  <-- 0x80002b78, goto 0x80002d9c
       0     5552        M 0x80002d9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5553        M 0x80002da0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5554        M 0x80002da4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b78 ~~> Word[0x0011ff5c]
       0     5555        M 0x80002da8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002da8
       0     5556        M 0x80002dac jalr    ra, ra, -1336          #; ra  = 0x80002da8, (wrb) ra  <-- 0x80002db0, goto 0x80002870
       0     5575        M 0x80002870 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5576        M 0x80002874 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5577        M 0x80002878 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5580        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5581        M 0x8000287c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5584        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5587        M 0x80002880 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5588        M 0x80002884 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5590        M                                           #; (lsu) a0  <-- 0
       0     5591        M 0x80002888 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5592        M 0x8000288c ret                            #; ra  = 0x80002db0, goto 0x80002db0
       0     5593        M 0x80002db0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5596        M                                           #; (lsu) t0  <-- 0
       0     5597        M 0x80002db4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5598        M 0x80002db8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5599        M 0x80002dbc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5600        M                                           #; (lsu) ra  <-- 0x80002b78
       0     5605        M 0x80002dc0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5606        M 0x80002dc4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5607        M 0x80002dc8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dc8
       0     5608        M 0x80002dcc addi    t1, t1, 632            #; t1  = 0x80002dc8, (wrb) t1  <-- 0x80003040
       0     5616        M 0x80002dd0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
       0     5617        M 0x80002dd4 ret                            #; ra  = 0x80002b78, goto 0x80002b78
       0     5618        M 0x80002b78 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5618):
snitch_loads                                   141
snitch_stores                                  142
fpss_stores                                     14
fpss_loads                                      23
snitch_avg_load_latency                    11.7376
snitch_occupancy                            0.2301
snitch_fseq_rel_offloads                    0.1017
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.3495
fpss_avg_load_latency                       6.9130
fpss_occupancy                              0.0260
fpss_fpu_occupancy                          0.0184
fpss_fpu_rel_occupancy                      0.7055
cycles                                        5607
total_ipc                                   0.2561
