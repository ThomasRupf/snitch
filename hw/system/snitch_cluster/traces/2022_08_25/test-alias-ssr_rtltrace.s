       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002980
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002980, (wrb) ra  <-- 4120, goto 0x80002980
       0      269        M 0x80002980 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003980
       0      270        M 0x80002984 addi    gp, gp, -248           #; gp  = 0x80003980, (wrb) gp  <-- 0x80003888
       0      271        M 0x80002988 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002988
       0      272        M 0x8000298c jalr    ra, ra, 964            #; ra  = 0x80002988, (wrb) ra  <-- 0x80002990, goto 0x80002d4c
       0      292        M 0x80002d4c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002d50 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002d54 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002d58 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002d5c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002d60 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002d64 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002d68 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002d6c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002d70 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002d74 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002d78 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002d7c ret                            #; ra  = 0x80002990, goto 0x80002990
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002990 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002994 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002998 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002998
       0      508        M 0x8000299c jalr    ra, ra, 1036           #; ra  = 0x80002998, (wrb) ra  <-- 0x800029a0, goto 0x80002da4
       0      523        M 0x80002da4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002da8 ret                            #; ra  = 0x800029a0, goto 0x800029a0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800029a0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800029a4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800029a8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800029ac sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800029b0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800029b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029b4
       0      551        M 0x800029b8 addi    t0, t0, 2020           #; t0  = 0x800029b4, (wrb) t0  <-- 0x80003198
       0      552        M 0x800029bc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029bc
       0      562        M 0x800029c0 addi    t1, t1, 2016           #; t1  = 0x800029bc, (wrb) t1  <-- 0x8000319c
       0      563        M 0x800029c4 bge     t0, t1, pc + 16        #; t0  = 0x80003198, t1  = 0x8000319c, not taken
       0      564        M 0x800029c8 sw      zero, 0(t0)            #; t0  = 0x80003198, 0 ~~> Word[0x80003198]
       0      565        M 0x800029cc addi    t0, t0, 4              #; t0  = 0x80003198, (wrb) t0  <-- 0x8000319c
       0      573        M 0x800029d0 blt     t0, t1, pc - 8         #; t0  = 0x8000319c, t1  = 0x8000319c, not taken
       0      574        M 0x800029d4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800029d8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800029dc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800029e0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800029e4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800029e8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800029ec fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800029f0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800029f4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800029f8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800029fc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002a00 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002a04 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002a08 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002a0c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002a10 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002a14 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002a18 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002a1c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002a20 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002a24 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002a28 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002a2c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002a30 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002a34 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002a38 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002a3c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002a40 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002a44 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002a48 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002a4c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002a50 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002a54 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002a58 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002a5c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002a60 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002a64 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002a68 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a68
       0      684        M 0x80002a6c lw      t0, 900(t0)            #; t0  = 0x80002a68, t0  <~~ Word[0x80002dec]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002a70 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002a74 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002a78 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a78
       0      708        M 0x80002a7c lw      t2, 880(t2)            #; t2  = 0x80002a78, t2  <~~ Word[0x80002de8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002a80 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002a84 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002a88 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002a8c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002a90 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002a94 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002a98 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002a9c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002aa0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa0
       0      762        M 0x80002aa4 addi    t0, t0, 1512           #; t0  = 0x80002aa0, (wrb) t0  <-- 0x80003088
       0      763        M 0x80002aa8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aa8
       0      764        M 0x80002aac addi    t1, t1, 1504           #; t1  = 0x80002aa8, (wrb) t1  <-- 0x80003088
       0      775        M 0x80002ab0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ab0
       0      776        M 0x80002ab4 addi    t2, t2, 1496           #; t2  = 0x80002ab0, (wrb) t2  <-- 0x80003088
       0      777        M 0x80002ab8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002ab8
       0      778        M 0x80002abc addi    t3, t3, 1504           #; t3  = 0x80002ab8, (wrb) t3  <-- 0x80003098
       0      787        M 0x80002ac0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003088, (wrb) sp  <-- 0x80122ff8
       0      788        M 0x80002ac4 sub     sp, sp, t1             #; sp  = 0x80122ff8, t1  = 0x80003088, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002ac8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003088, (wrb) sp  <-- 0x80122ff8
       0      790        M 0x80002acc sub     sp, sp, t3             #; sp  = 0x80122ff8, t3  = 0x80003098, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002ad0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002ad4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002ad8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002adc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002ae0 bge     t0, t1, pc + 24        #; t0  = 0x80003088, t1  = 0x80003088, taken, goto 0x80002af8
       0      823        M 0x80002af8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af8
       0      824        M 0x80002afc addi    t0, t0, 1424           #; t0  = 0x80002af8, (wrb) t0  <-- 0x80003088
       0      835        M 0x80002b00 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b00
       0      836        M 0x80002b04 addi    t1, t1, 1432           #; t1  = 0x80002b00, (wrb) t1  <-- 0x80003098
       0      837        M 0x80002b08 bge     t0, t1, pc + 20        #; t0  = 0x80003088, t1  = 0x80003098, not taken
       0      838        M 0x80002b0c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002b10 addi    t0, t0, 4              #; t0  = 0x80003088, (wrb) t0  <-- 0x8000308c
       0      848        M 0x80002b14 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002b18 blt     t0, t2, pc - 12        #; t0  = 0x8000308c, t2  = 0x80003088, not taken
       0      850        M 0x80002b1c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002b20 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002b24 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002b28 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002b2c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002b30 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002b34 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b34
       0      877        M 0x80002b38 jalr    ra, ra, -1064          #; ra  = 0x80002b34, (wrb) ra  <-- 0x80002b3c, goto 0x8000270c
       0      899        M 0x8000270c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x80002710 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x80002714 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x80002718 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x8000271c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x80002720 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x80002724 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x80002728 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x8000272c mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x80002730 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x80002734 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x80002738 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x8000273c divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x80002740 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x80002744 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x80002748 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x8000274c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x80002750 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x80002754 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002758 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x8000275c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80002760 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002764 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002768 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x8000276c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80002770 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80002774 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80002778 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x8000277c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002780 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002784 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002788 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000278c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002790 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002794 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002798 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000279c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x800027a0 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x800027a4 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x800027a8 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x800027ac sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x800027b0 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x800027b4 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x800027b8 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800027bc sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x800027c0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x800027c4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x800027c8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x800027cc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x800027d0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x800027d4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x800027d8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x800027dc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x800027e0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x800027e4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x800027e8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x800027ec lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x800027f0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x800027f4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x800027f8 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800027fc mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x80002800 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003800
       0     1289        M 0x80002804 addi    a1, a1, -1636          #; a1  = 0x80003800, (wrb) a1  <-- 0x8000319c
       0     1290        M 0x80002808 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
       0     1291        M 0x8000280c sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     1300        M 0x80002810 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x80002814 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x80002818 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x8000281c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x80002820 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x80002824 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x80002828 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x8000282c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x80002830 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x80002834 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x80002838 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x8000283c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x80002840 lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x80002844 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x80002848 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x8000284c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x80002850 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x80002854 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x80002858 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x8000285c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80002860 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002864 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002868 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x8000286c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80002870 ret                            #; ra  = 0x80002b3c, goto 0x80002b3c
       0     1421        M 0x80002b3c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x80002b40 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x80002b44 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x80002b48 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x80002b4c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x80002b50 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x80002b54 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b54
       0     1440        M 0x80002b58 addi    t0, t0, 60             #; t0  = 0x80002b54, (wrb) t0  <-- 0x80002b90
       0     1441        M 0x80002b5c csrw    mtvec, t0              #; t0  = 0x80002b90, (lsu) a4  <-- 4132
       0     1449        M 0x80002b60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b60
       0     1450        M 0x80002b64 jalr    ra, ra, 544            #; ra  = 0x80002b60, (wrb) ra  <-- 0x80002b68, goto 0x80002d80
       0     1466        M 0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b68 ~~> Word[0x0011ff5c]
       0     1468        M 0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
       0     1469        M 0x80002d8c jalr    ra, ra, -1268          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x80002894
       0     1487        M 0x80002894 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002898 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x800028a0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x800028a4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x800028a8 ret                            #; ra  = 0x80002d90, goto 0x80002d90
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80002d94 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x80002b68
       0     1543        M 0x80002da0 ret                            #; ra  = 0x80002b68, goto 0x80002b68
       0     1547        M 0x80002b68 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b68
       0     1548        M 0x80002b6c jalr    ra, ra, -1332          #; ra  = 0x80000b68, (wrb) ra  <-- 0x80002b70, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1554        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b70 ~~> Word[0x0011ff5c]
       0     1556        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1557        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1558        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1559        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1561        M                                           #; (lsu) a1  <-- 0
       0     1569        M 0x80000650 bnez    a1, pc + 1112          #; a1  = 0, not taken
       0     1570        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1571        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1572        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1575        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1581        M 0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1584        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1585        M 0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1588        M                                           #; (lsu) a0  <-- 0x00100000
       0     1589        M 0x80000668 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1592        M                                           #; (lsu) a3  <-- 0x00100000
       0     1593        M 0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1596        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1597        M 0x80000670 addi    a2, a0, 80             #; a0  = 0x00100000, (wrb) a2  <-- 0x00100050
       0     1598        M 0x80000674 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1599        M 0x80000678 bgeu    a3, a2, pc + 16        #; a3  = 0x0011df30, a2  = 0x00100050, taken, goto 0x80000688
       0     1610        M 0x80000688 addi    a6, a0, 72             #; a0  = 0x00100000, (wrb) a6  <-- 0x00100048
       0     1611        M 0x8000068c srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1635        M 0x80000690 seqz    a5, a3                 #; a3  = 1, (wrb) a5  <-- 0
       0     1636        M 0x80000694 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1637        M 0x80000698 sltu    a4, a4, a6             #; a4  = 0x00120000, a6  = 0x00100048, (wrb) a4  <-- 0
       0     1638        M 0x8000069c or      a4, a5, a4             #; a5  = 0, a4  = 0, (wrb) a4  <-- 0
       0     1647        M 0x800006a0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1648        M 0x800006a4 bnez    a4, pc + 456           #; a4  = 0, not taken
       0     1649        M 0x800006a8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1650        M 0x800006ac li      a2, 9                  #; (wrb) a2  <-- 9
       0     1659        M 0x800006b0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1660        M 0x800006b4 li      a4, 192                #; (wrb) a4  <-- 192
       0     1661        M 0x800006b8 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1662        M 0x800006bc scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1671        M 0x800006c0 li      a3, 32                 #; (wrb) a3  <-- 32
       0     1672        M 0x800006c4 scfgw   zero, a3               #; a3  = 32
       0     1673        M 0x800006c8 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1674        M 0x800006cc auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036cc
       0     1683        M 0x800006d0 addi    a3, a3, -1588          #; a3  = 0x800036cc, (wrb) a3  <-- 0x80003098
       0     1686        M 0x800006d4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003098]
       0     1687        M 0x800006d8 csrrsi  a3, ssr, 1             #; 
       0     1688        M 0x800006dc fcvt.d.w ft4, zero             #; ac1  = 0
       0     1689        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1695        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1697        M 0x800006e8 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036e8
                         M 0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1698        M 0x800006ec addi    a3, a3, -1608          #; a3  = 0x800036e8, (wrb) a3  <-- 0x800030a0
                         M 0x800006e4 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
       0     1699        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1708        M 0x800006f4 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036f4
       0     1709        M 0x800006f8 addi    a3, a3, -1612          #; a3  = 0x800036f4, (wrb) a3  <-- 0x800030a8
                         M 0x800006f0 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030a0]
       0     1712        M 0x800006fc fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030a8]
       0     1718        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1719        M 0x80000700 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003700
       0     1720        M 0x80000704 addi    a3, a3, -1616          #; a3  = 0x80003700, (wrb) a3  <-- 0x800030b0
       0     1721        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1722        M 0x8000070c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000370c
       0     1723        M 0x80000708 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030b0]
       0     1731        M 0x80000710 addi    a3, a3, -1620          #; a3  = 0x8000370c, (wrb) a3  <-- 0x800030b8
       0     1732        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1734        M 0x80000714 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030b8]
       0     1735        M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1736        M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0, (f:fpu) ft0  <-- 2.0
       0     1737        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1743        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1745        M 0x80000728 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003728
                         M 0x80000720 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0
       0     1746        M 0x8000072c addi    a3, a3, -1640          #; a3  = 0x80003728, (wrb) a3  <-- 0x800030c0
                         M 0x80000724 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1747        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1756        M 0x80000734 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003734
       0     1757        M 0x80000738 addi    a3, a3, -1644          #; a3  = 0x80003734, (wrb) a3  <-- 0x800030c8
                         M 0x80000730 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030c0]
       0     1760        M 0x8000073c fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030c8]
       0     1766        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1767        M 0x80000740 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003740
       0     1768        M 0x80000744 addi    a3, a3, -1648          #; a3  = 0x80003740, (wrb) a3  <-- 0x800030d0
       0     1769        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1770        M 0x8000074c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000374c
       0     1771        M 0x80000748 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030d0]
       0     1779        M 0x80000750 addi    a3, a3, -1652          #; a3  = 0x8000374c, (wrb) a3  <-- 0x800030d8
       0     1780        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1782        M 0x80000754 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030d8]
       0     1783        M 0x80000758 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1784        M 0x8000075c fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0, (f:fpu) ft0  <-- 6.0
       0     1785        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1791        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1793        M 0x80000768 li      a3, -72                #; (wrb) a3  <-- -72
                         M 0x80000760 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0
       0     1794        M 0x80000764 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1795        M 0x8000076c csrrci  a4, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1803        M 0x80000770 bltu    a0, a3, pc + 112       #; a0  = 0x00100000, a3  = -72, taken, goto 0x800007e0
       0     1826        M 0x800007e0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1827        M 0x800007e4 li      a4, 192                #; (wrb) a4  <-- 192
       0     1828        M 0x800007e8 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1829        M 0x800007ec scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1838        M 0x800007f0 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1839        M 0x800007f4 scfgw   zero, a1               #; a1  = 32
       0     1840        M 0x800007f8 scfgwi  a0, 768                #; a0  = 0x00100000
       0     1842        M 0x800007fc csrrsi  a1, ssr, 1             #; 
       0     1852        M 0x80000800 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     1853        M 0x80000804 fsgnj.d ft4, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0, (f:fpu) ft3  <-- 0.0
       0     1854        M 0x80000808 fsgnj.d ft5, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0, (f:fpu) ft4  <-- 1.0
       0     1855        M 0x8000080c fsgnj.d ft6, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 2.0
       0     1856        M                                           #; (f:fpu) ft6  <-- 3.0
       0     1864        M 0x80000810 fsgnj.d ft7, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0
       0     1865        M 0x80000814 fsgnj.d fa0, ft0, ft0          #; ft0  = 5.0, ft0  = 5.0, (f:fpu) ft7  <-- 4.0
       0     1866        M 0x80000818 fsgnj.d fa1, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa0  <-- 5.0
       0     1867        M 0x8000081c fsgnj.d fa2, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa1  <-- 6.0
       0     1868        M                                           #; (f:fpu) fa2  <-- 7.0
       0     1874        M 0x80000820 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003820
       0     1875        M 0x80000824 addi    a1, a1, -1856          #; a1  = 0x80003820, (wrb) a1  <-- 0x800030e0
       0     1878        M 0x80000828 fld     fa3, 0(a1)             #; fa3  <~~ Doub[0x800030e0]
       0     1879        M 0x8000082c fsgnj.d fa4, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0
       0     1880        M                                           #; (f:fpu) fa4  <-- 8.0
       0     1887        M                                           #; (f:lsu) fa3  <-- -45.0
       0     1888        M 0x80000830 fsgnj.d fa5, ft0, ft0          #; ft0  = 9.0, ft0  = 9.0
       0     1889        M 0x80000834 csrrci  a1, ssr, 1             #; (f:fpu) fa5  <-- 9.0
       0     1891        M 0x80000838 fadd.d  ft3, ft3, fa3          #; ft3  = 0.0, fa3  = -45.0
       0     1894        M                                           #; (f:fpu) ft3  <-- -45.0
       0     1895        M 0x8000083c fadd.d  ft3, ft3, ft4          #; ft3  = -45.0, ft4  = 1.0
       0     1898        M                                           #; (f:fpu) ft3  <-- -44.0
       0     1900        M 0x80000840 fadd.d  ft3, ft3, ft5          #; ft3  = -44.0, ft5  = 2.0
       0     1903        M                                           #; (f:fpu) ft3  <-- -42.0
       0     1904        M 0x80000844 fadd.d  ft3, ft3, ft6          #; ft3  = -42.0, ft6  = 3.0
       0     1907        M                                           #; (f:fpu) ft3  <-- -39.0
       0     1908        M 0x80000848 fadd.d  ft3, ft3, ft7          #; ft3  = -39.0, ft7  = 4.0
       0     1911        M                                           #; (f:fpu) ft3  <-- -35.0
       0     1912        M 0x8000084c fadd.d  ft3, ft3, fa0          #; ft3  = -35.0, fa0  = 5.0
       0     1915        M                                           #; (f:fpu) ft3  <-- -30.0
       0     1916        M 0x80000850 fadd.d  ft3, ft3, fa1          #; ft3  = -30.0, fa1  = 6.0
       0     1919        M                                           #; (f:fpu) ft3  <-- -24.0
       0     1920        M 0x80000854 fadd.d  ft3, ft3, fa2          #; ft3  = -24.0, fa2  = 7.0
       0     1922        M 0x80000860 li      a6, 1                  #; (wrb) a6  <-- 1
       0     1923        M 0x80000864 li      a7, 1                  #; (wrb) a7  <-- 1
                         M                                           #; (f:fpu) ft3  <-- -17.0
       0     1924        M 0x80000868 j       pc + 0x84              #; goto 0x800008ec
                         M 0x80000858 fadd.d  ft3, ft3, fa4          #; ft3  = -17.0, fa4  = 8.0
       0     1927        M                                           #; (f:fpu) ft3  <-- -9.0
       0     1928        M 0x8000085c fadd.d  ft3, ft3, fa5          #; ft3  = -9.0, fa5  = 9.0
       0     1931        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1934        M 0x800008ec addi    a3, a0, 8              #; a0  = 0x00100000, (wrb) a3  <-- 0x00100008
       0     1946        M 0x800008f0 addi    a4, a0, 64             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100040
       0     1947        M 0x800008f4 addi    a5, a0, 72             #; a0  = 0x00100000, (wrb) a5  <-- 0x00100048
       0     1948        M 0x800008f8 sltu    a1, a4, a3             #; a4  = 0x00100040, a3  = 0x00100008, (wrb) a1  <-- 0
       0     1949        M 0x800008fc sltu    a2, a5, a0             #; a5  = 0x00100048, a0  = 0x00100000, (wrb) a2  <-- 0
       0     1958        M 0x80000900 or      a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1959        M 0x80000904 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1960        M 0x80000908 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1961        M 0x8000090c sltu    a4, a4, a2             #; a4  = 0x00100040, a2  = 0x00120001, (wrb) a4  <-- 1
       0     1970        M 0x80000910 and     a4, a7, a4             #; a7  = 1, a4  = 1, (wrb) a4  <-- 1
       0     1971        M 0x80000914 and     a1, a4, a1             #; a4  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1972        M 0x80000918 srli    a4, a3, 20             #; a3  = 0x00100008, (wrb) a4  <-- 1
       0     1973        M 0x8000091c snez    a4, a4                 #; a4  = 1, (wrb) a4  <-- 1
       0     1982        M 0x80000920 sltu    a2, a5, a2             #; a5  = 0x00100048, a2  = 0x00120001, (wrb) a2  <-- 1
       0     1983        M 0x80000924 and     a2, a4, a2             #; a4  = 1, a2  = 1, (wrb) a2  <-- 1
       0     1984        M 0x80000928 and     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1985        M 0x8000092c beqz    a1, pc + 196           #; a1  = 0, taken, goto 0x800009f0
       0     2007        M 0x800009f0 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x00100000]
       0     2008        M                                           #; (f:lsu) ft4  <-- 0.0
       0     2009        M 0x800009f4 fsd     ft4, 8(a0)             #; 0.0 ~~> Doub[0x00100008]
       0     2010        M 0x800009f8 fsd     ft4, 16(a0)            #; 0.0 ~~> Doub[0x00100010]
       0     2011        M 0x800009fc fsd     ft4, 24(a0)            #; 0.0 ~~> Doub[0x00100018]
       0     2019        M 0x80000a00 fsd     ft4, 32(a0)            #; 0.0 ~~> Doub[0x00100020]
       0     2020        M 0x80000a04 fsd     ft4, 40(a0)            #; 0.0 ~~> Doub[0x00100028]
       0     2021        M 0x80000a08 fsd     ft4, 48(a0)            #; 0.0 ~~> Doub[0x00100030]
       0     2022        M 0x80000a0c fsd     ft4, 56(a0)            #; 0.0 ~~> Doub[0x00100038]
       0     2031        M 0x80000a18 beqz    a6, pc - 120           #; a6  = 1, not taken
                         M 0x80000a10 fsd     ft4, 64(a0)            #; 0.0 ~~> Doub[0x00100040]
       0     2032        M 0x80000a1c li      a1, 8                  #; (wrb) a1  <-- 8
                         M 0x80000a14 fsd     ft4, 72(a0)            #; 0.0 ~~> Doub[0x00100048]
       0     2052        M 0x80000a20 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2053        M 0x80000a24 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2054        M 0x80000a28 li      a4, 192                #; (wrb) a4  <-- 192
       0     2055        M 0x80000a2c scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2064        M 0x80000a30 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2065        M 0x80000a34 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2066        M 0x80000a38 scfgw   zero, a1               #; a1  = 32
       0     2067        M 0x80000a3c scfgwi  a0, 768                #; a0  = 0x00100000
       0     2077        M 0x80000a40 csrrsi  a0, ssr, 1             #; 
       0     2079        M 0x80000a44 fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2080        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2081        M 0x80000a48 fadd.d  ft4, ft0, ft4          #; ft0  = 0.0, ft4  = 0.0
       0     2084        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2085        M 0x80000a4c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2088        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2090        M 0x80000a50 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2093        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2094        M 0x80000a54 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2097        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2098        M 0x80000a58 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2101        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2102        M 0x80000a5c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2105        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2106        M 0x80000a60 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2109        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2110        M 0x80000a64 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2113        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2114        M 0x80000a68 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2115        M 0x80000a6c csrrci  a0, ssr, 1             #; 
       0     2117        M 0x80000a70 fsgnjx.d ft3, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft4  <-- 0.0
       0     2118        M 0x80000a74 fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0
       0     2119        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2120        M 0x80000a78 fadd.d  fs0, ft4, ft3          #; ft4  = 0.0, ft3  = 0.0
       0     2123        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2124        M 0x80000a80 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x80000a7c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2127        M                                           #; (lsu) a2  <-- 0
       0     2128        M 0x80000a84 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2129        M 0x80000a88 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a88
       0     2130        M 0x80000a8c addi    a0, a0, 877            #; a0  = 0x80002a88, (wrb) a0  <-- 0x80002df5
       0     2131        M                                           #; (lsu) a3  <-- 0
       0     2136        M 0x80000a90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a90
       0     2137        M 0x80000a94 jalr    ra, ra, 40             #; ra  = 0x80000a90, (wrb) ra  <-- 0x80000a98, goto 0x80000ab8
       0     2141        M 0x80000ab8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2142        M 0x80000abc sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a98 ~~> Word[0x0011ff1c]
       0     2144        M 0x80000ac0 mv      t0, a0                 #; a0  = 0x80002df5, (wrb) t0  <-- 0x80002df5
       0     2145        M 0x80000ac4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2146        M 0x80000ac8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2147        M 0x80000acc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100048 ~~> Word[0x0011ff34]
       0     2156        M 0x80000ad0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
       0     2157        M 0x80000ad4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2158        M 0x80000ad8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2159        M 0x80000adc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     2168        M 0x80000ae0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2169        M 0x80000ae4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2170        M 0x80000ae8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae8
       0     2171        M 0x80000aec addi    a0, a0, -988           #; a0  = 0x80001ae8, (wrb) a0  <-- 0x8000170c
       0     2180        M 0x80000af0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2181        M 0x80000af4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2182        M 0x80000af8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2183        M 0x80000afc mv      a3, t0                 #; t0  = 0x80002df5, (wrb) a3  <-- 0x80002df5
       0     2192        M 0x80000b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b00
       0     2193        M 0x80000b04 jalr    ra, ra, 20             #; ra  = 0x80000b00, (wrb) ra  <-- 0x80000b08, goto 0x80000b14
       0     2204        M 0x80000b14 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2205        M 0x80000b18 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b08 ~~> Word[0x0011ff0c]
       0     2206        M 0x80000b1c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2216        M 0x80000b20 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2217        M 0x80000b24 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2218        M 0x80000b28 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2219        M 0x80000b2c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2228        M 0x80000b30 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2229        M 0x80000b34 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2230        M 0x80000b38 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2231        M 0x80000b3c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2240        M 0x80000b40 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2241        M 0x80000b44 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2242        M 0x80000b48 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2243        M 0x80000b4c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2252        M 0x80000b50 mv      s0, a3                 #; a3  = 0x80002df5, (wrb) s0  <-- 0x80002df5
       0     2253        M 0x80000b54 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2254        M 0x80000b58 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2255        M 0x80000b5c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2264        M 0x80000b60 mv      s2, a0                 #; a0  = 0x8000170c, (wrb) s2  <-- 0x8000170c
       0     2265        M 0x80000b64 j       pc + 0xc               #; goto 0x80000b70
       0     2276        M 0x80000b70 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2277        M 0x80000b74 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2278        M 0x80000b78 li      s11, 16                #; (wrb) s11 <-- 16
       0     2279        M 0x80000b7c li      s7, 46                 #; (wrb) s7  <-- 46
       0     2288        M 0x80000b80 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2289        M 0x80000b84 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2290        M 0x80000b88 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2291        M 0x80000b8c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2300        M 0x80000b90 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2301        M 0x80000b94 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2302        M 0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002df5, (wrb) s10 <-- 0x80002df7
       0     2303        M 0x80000b9c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2312        M 0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2313        M 0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002df5, a0  <~~ Byte[0x80002df5]
       0     2324        M                                           #; (lsu) a0  <-- 101
       0     2325        M 0x80000ba8 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2326        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2327        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2328        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2329        M 0x80000bb8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2330        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2339        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2362        M 0x8000170c beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2374        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2375        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2376        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2377        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2386        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2387        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2388        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2399        M                                           #; (lsu) a4  <-- 0
       0     2400        M 0x8000172c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2401        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
       0     2402        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
       0     2403        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
       0     2404        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2425        M                                           #; (lsu) a4  <-- 1
       0     2426        M 0x80001740 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2427        M 0x80001744 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2428        M 0x80001748 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2429        M 0x8000174c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2430        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2431        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2453        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2467        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df5, (wrb) s0  <-- 0x80002df6
       0     2468        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df7, (wrb) s10 <-- 0x80002df8
       0     2469        M 0x80000bcc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2470        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df6, a0  <~~ Byte[0x80002df6]
       0     2481        M                                           #; (lsu) a0  <-- 114
       0     2482        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
       0     2483        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2486        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2487        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2488        M 0x80000bb8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2489        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2490        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2493        M 0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2496        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2497        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2498        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2499        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2500        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2501        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2502        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2503        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2514        M                                           #; (lsu) a4  <-- 1
       0     2515        M 0x8000172c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2516        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
       0     2517        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
       0     2518        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
       0     2519        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2540        M                                           #; (lsu) a4  <-- 2
       0     2541        M 0x80001740 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2542        M 0x80001744 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2543        M 0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2544        M 0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2545        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2546        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2550        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2555        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df6, (wrb) s0  <-- 0x80002df7
       0     2556        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df8, (wrb) s10 <-- 0x80002df9
       0     2557        M 0x80000bcc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2558        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df7, a0  <~~ Byte[0x80002df7]
       0     2569        M                                           #; (lsu) a0  <-- 114
       0     2570        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
       0     2571        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2574        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2575        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2576        M 0x80000bb8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2577        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2578        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2581        M 0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2584        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2585        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2586        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2587        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2588        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2589        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2590        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2591        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2602        M                                           #; (lsu) a4  <-- 2
       0     2603        M 0x8000172c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2604        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
       0     2605        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
       0     2606        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
       0     2607        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2628        M                                           #; (lsu) a4  <-- 3
       0     2629        M 0x80001740 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2630        M 0x80001744 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2631        M 0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2632        M 0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2633        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2634        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2638        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2643        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df7, (wrb) s0  <-- 0x80002df8
       0     2644        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df9, (wrb) s10 <-- 0x80002dfa
       0     2645        M 0x80000bcc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2646        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df8, a0  <~~ Byte[0x80002df8]
       0     2657        M                                           #; (lsu) a0  <-- 111
       0     2658        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000bac
       0     2659        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2662        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2663        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2664        M 0x80000bb8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2665        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2666        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2669        M 0x8000170c beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2672        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2673        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2674        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2675        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2676        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2677        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2678        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2679        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2690        M                                           #; (lsu) a4  <-- 3
       0     2691        M 0x8000172c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2692        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
       0     2693        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
       0     2694        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
       0     2695        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2716        M                                           #; (lsu) a4  <-- 4
       0     2717        M 0x80001740 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2718        M 0x80001744 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2719        M 0x80001748 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2720        M 0x8000174c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2721        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2722        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2726        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2731        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df8, (wrb) s0  <-- 0x80002df9
       0     2732        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfa, (wrb) s10 <-- 0x80002dfb
       0     2733        M 0x80000bcc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2734        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df9, a0  <~~ Byte[0x80002df9]
       0     2745        M                                           #; (lsu) a0  <-- 114
       0     2746        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
       0     2747        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2750        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2751        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2752        M 0x80000bb8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2753        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2754        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2757        M 0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2760        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2761        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2762        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2763        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2764        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2765        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2766        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2767        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2778        M                                           #; (lsu) a4  <-- 4
       0     2779        M 0x8000172c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2780        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
       0     2781        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
       0     2782        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
       0     2783        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2804        M                                           #; (lsu) a4  <-- 5
       0     2805        M 0x80001740 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2806        M 0x80001744 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2807        M 0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2808        M 0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2809        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2810        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2814        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2819        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df9, (wrb) s0  <-- 0x80002dfa
       0     2820        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfb, (wrb) s10 <-- 0x80002dfc
       0     2821        M 0x80000bcc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2822        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfa, a0  <~~ Byte[0x80002dfa]
       0     2833        M                                           #; (lsu) a0  <-- 32
       0     2834        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
       0     2835        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2838        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2839        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2840        M 0x80000bb8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2841        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2842        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2845        M 0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2848        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2849        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2850        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2851        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2852        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2853        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2854        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2855        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2866        M                                           #; (lsu) a4  <-- 5
       0     2867        M 0x8000172c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2868        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
       0     2869        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
       0     2870        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
       0     2871        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2892        M                                           #; (lsu) a4  <-- 6
       0     2893        M 0x80001740 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2894        M 0x80001744 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2895        M 0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2896        M 0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2897        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2898        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2902        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2907        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfa, (wrb) s0  <-- 0x80002dfb
       0     2908        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfc, (wrb) s10 <-- 0x80002dfd
       0     2909        M 0x80000bcc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2910        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfb, a0  <~~ Byte[0x80002dfb]
       0     2921        M                                           #; (lsu) a0  <-- 61
       0     2922        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000bac
       0     2923        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2926        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2927        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2928        M 0x80000bb8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2929        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2930        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2933        M 0x8000170c beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2936        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2937        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2938        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2939        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2940        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2941        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2942        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2943        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2954        M                                           #; (lsu) a4  <-- 6
       0     2955        M 0x8000172c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2956        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
       0     2957        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
       0     2958        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
       0     2959        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2980        M                                           #; (lsu) a4  <-- 7
       0     2981        M 0x80001740 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2982        M 0x80001744 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2983        M 0x80001748 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2984        M 0x8000174c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2985        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2986        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2990        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2995        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfb, (wrb) s0  <-- 0x80002dfc
       0     2996        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfd, (wrb) s10 <-- 0x80002dfe
       0     2997        M 0x80000bcc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2998        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfc, a0  <~~ Byte[0x80002dfc]
       0     3009        M                                           #; (lsu) a0  <-- 32
       0     3010        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
       0     3011        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3014        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3015        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3016        M 0x80000bb8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3017        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3018        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     3021        M 0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3024        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3025        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3026        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3027        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     3028        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     3029        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3030        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3031        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3042        M                                           #; (lsu) a4  <-- 7
       0     3043        M 0x8000172c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3044        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
       0     3045        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
       0     3046        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
       0     3047        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3068        M                                           #; (lsu) a4  <-- 8
       0     3069        M 0x80001740 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3070        M 0x80001744 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3071        M 0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3072        M 0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3073        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3074        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     3078        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     3083        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfc, (wrb) s0  <-- 0x80002dfd
       0     3084        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfe, (wrb) s10 <-- 0x80002dff
       0     3085        M 0x80000bcc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3086        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfd, a0  <~~ Byte[0x80002dfd]
       0     3097        M                                           #; (lsu) a0  <-- 37
       0     3098        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000bac
       0     3099        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bdc
       0     3100        M 0x80000bdc li      s0, 0                  #; (wrb) s0  <-- 0
       0     3113        M 0x80000be0 j       pc + 0x10              #; goto 0x80000bf0
       0     3125        M 0x80000bf0 lbu     a0, -1(s10)            #; s10 = 0x80002dff, a0  <~~ Byte[0x80002dfe]
       0     3136        M                                           #; (lsu) a0  <-- 102
       0     3137        M 0x80000bf4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3138        M 0x80000bf8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c30
       0     3150        M 0x80000c30 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3151        M 0x80000c34 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3152        M 0x80000c38 addi    a1, s10, -1            #; s10 = 0x80002dff, (wrb) a1  <-- 0x80002dfe
       0     3153        M 0x80000c3c li      a3, 9                  #; (wrb) a3  <-- 9
       0     3162        M 0x80000c40 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cbc
       0     3185        M 0x80000cbc li      a2, 42                 #; (wrb) a2  <-- 42
       0     3197        M 0x80000cc0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d10
       0     3220        M 0x80000d10 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3221        M 0x80000d14 mv      s10, a1                #; a1  = 0x80002dfe, (wrb) s10 <-- 0x80002dfe
       0     3222        M 0x80000d18 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3223        M 0x80000d1c li      s7, 0                  #; (wrb) s7  <-- 0
       0     3243        M 0x80000d20 j       pc + 0xc               #; goto 0x80000d2c
       0     3244        M 0x80000d2c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3256        M 0x80000d30 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3257        M 0x80000d34 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3258        M 0x80000d38 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3259        M 0x80000d3c li      a2, 9                  #; (wrb) a2  <-- 9
       0     3268        M 0x80000d40 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000da4
       0     3291        M 0x80000da4 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3292        M 0x80000da8 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3293        M 0x80000dac bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3303        M 0x80000db0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3304        M 0x80000db4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db4
       0     3305        M 0x80000db8 addi    a2, a2, 192            #; a2  = 0x80002db4, (wrb) a2  <-- 0x80002e74
       0     3306        M 0x80000dbc add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e74, (wrb) a1  <-- 0x80002f78
       0     3315        M 0x80000dc0 lw      a2, 0(a1)              #; a1  = 0x80002f78, a2  <~~ Word[0x80002f78]
       0     3316        M 0x80000dc4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3317        M 0x80000dc8 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3326        M                                           #; (lsu) a2  <-- 0x80000dfc
       0     3327        M 0x80000dcc jr      a2                     #; a2  = 0x80000dfc, goto 0x80000dfc
       0     3339        M 0x80000dfc li      a1, 70                 #; (wrb) a1  <-- 70
       0     3351        M 0x80000e00 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e08
       0     3352        M 0x80000e08 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3353        M 0x80000e0c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3364        M 0x80000e14 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3365        M 0x80000e18 mv      a0, s2                 #; s2  = 0x8000170c, (wrb) a0  <-- 0x8000170c
                         M 0x80000e10 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3366        M 0x80000e1c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     3375        M 0x80000e20 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3376        M 0x80000e24 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3377        M 0x80000e28 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3378        M 0x80000e2c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3387        M 0x80000e30 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3388        M 0x80000e34 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e34
       0     3389        M 0x80000e38 jalr    ra, ra, -1656          #; ra  = 0x80001e34, (wrb) ra  <-- 0x80000e3c, goto 0x800017bc
       0     3401        M 0x800017bc addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3404        M 0x800017c0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e3c ~~> Word[0x0011fe9c]
       0     3405        M 0x800017c4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3406        M 0x800017c8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3407        M 0x800017cc sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000170c ~~> Word[0x0011fe90]
       0     3416        M 0x800017d0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3417        M 0x800017d4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3418        M 0x800017d8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3419        M 0x800017dc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3428        M 0x800017e0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3429        M 0x800017e4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3430        M 0x800017e8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3431        M 0x800017ec sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dfe ~~> Word[0x0011fe70]
       0     3442        M 0x800017f0 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3443        M 0x800017fc auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037fc
                         M 0x800017f4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3444        M 0x800017f8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3452        M 0x80001800 addi    s1, s1, -1804          #; s1  = 0x800037fc, (wrb) s1  <-- 0x800030f0
       0     3455        M 0x8000180c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001804 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
       0     3464        M 0x80001810 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3465        M 0x80001814 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001808 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3466        M 0x80001818 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3467        M 0x8000181c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3476        M 0x80001820 mv      s7, a0                 #; a0  = 0x8000170c, (wrb) s7  <-- 0x8000170c
       0     3477        M 0x80001824 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001914
       0     3500        M 0x80001918 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002918
       0     3501        M 0x8000191c addi    a0, a0, 2016           #; a0  = 0x80002918, (wrb) a0  <-- 0x800030f8
                         M 0x80001914 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3502        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3513        M 0x80001920 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
       0     3522        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3523        M 0x80001924 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3525        M                                           #; (acc) t3  <-- 0x00051e63
       0     3526        M 0x80001928 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001944
       0     3538        M 0x80001944 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002944
       0     3539        M 0x80001948 addi    a0, a0, 1980           #; a0  = 0x80002944, (wrb) a0  <-- 0x80003100
       0     3542        M 0x8000194c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
       0     3550        M 0x80001950 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002950
       0     3551        M 0x80001954 addi    a0, a0, 1976           #; a0  = 0x80002950, (wrb) a0  <-- 0x80003108
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3554        M 0x80001958 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
       0     3555        M 0x8000195c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3563        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3564        M 0x80001960 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3566        M                                           #; (acc) a0  <-- 0x00b57533
       0     3567        M 0x80001964 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3568        M 0x80001968 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a64
       0     3585        M 0x80001a64 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3586        M 0x80001a68 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3587        M 0x80001a6c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a74
       0     3597        M 0x80001a74 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3599        M 0x80001a7c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ab4
       0     3600        M 0x80001a78 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3601        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3620        M 0x80001ab4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3621        M 0x80001ab8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3622        M 0x80001abc auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002abc
       0     3632        M 0x80001ac0 addi    a1, a1, 1292           #; a1  = 0x80002abc, (wrb) a1  <-- 0x80002fc8
       0     3633        M 0x80001ac4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fc8, (wrb) a0  <-- 0x80002ff8
       0     3636        M 0x80001ac8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ff8]
       0     3637        M 0x80001acc fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3645        M 0x80001ad0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     3646        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3647        M 0x80001adc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002adc
                         M 0x80001ad4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3650        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3651        M 0x80001ad8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3654        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3656        M 0x80001ae0 addi    a0, a0, 1588           #; a0  = 0x80002adc, (wrb) a0  <-- 0x80003110
       0     3659        M 0x80001ae4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
       0     3660        M 0x80001ae8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3662        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3664        M 0x80001aec fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3665        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3668        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3670        M 0x80001af0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3673        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3674        M 0x80001af4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3677        M 0x80001af8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b18
       0     3692        M 0x80001b18 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3694        M                                           #; (acc) s4  <-- 0x00059a63
       0     3695        M 0x80001b1c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b30
       0     3715        M 0x80001b34 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001b30 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3716        M 0x80001b38 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     3717        M 0x80001b3c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3726        M 0x80001b40 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3727        M 0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3728        M 0x80001b48 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3729        M 0x80001b4c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3738        M 0x80001b50 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3739        M 0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3740        M 0x80001b58 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3741        M 0x80001b5c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3750        M 0x80001b60 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3751        M 0x80001b64 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3754        M                                           #; (acc) a0  <-- 0x00355513
       0     3755        M 0x80001b68 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3756        M 0x80001b6c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3762        M 0x80001b70 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3763        M 0x80001b74 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3764        M 0x80001b78 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3765        M 0x80001b7c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3774        M 0x80001b80 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3775        M 0x80001b84 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3776        M 0x80001b88 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3777        M 0x80001b8c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3788        M 0x80001b90 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3789        M 0x80001b94 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3790        M 0x80001b98 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3791        M 0x80001b9c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3800        M 0x80001ba0 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3801        M 0x80001ba4 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3802        M 0x80001ba8 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3803        M 0x80001bac add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3812        M 0x80001bb0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3813        M 0x80001bb4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3814        M 0x80001bb8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3815        M 0x80001bbc li      a1, 31                 #; (wrb) a1  <-- 31
       0     3824        M 0x80001bc0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3825        M 0x80001bc4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3826        M 0x80001bc8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3827        M 0x80001bcc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bd4
       0     3836        M 0x80001bd4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3837        M 0x80001bd8 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3838        M 0x80001bdc auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000bdc
       0     3848        M 0x80001be0 jalr    ra, ra, -1668          #; ra  = 0x80000bdc, (wrb) ra  <-- 0x80001be4, goto 0x80000558
       0     3871        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3872        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3883        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3906        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3918        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3919        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3920        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3921        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3941        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3942        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3953        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3954        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3955        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3956        M 0x800005ec ret                            #; ra  = 0x80001be4, goto 0x80001be4
       0     3967        M 0x80001be4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3968        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3969        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3970        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3971        M 0x80001bf4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3972        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3973        M 0x80001bfc addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3982        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     3983        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3984        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3985        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3986        M 0x80001bf4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3987        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3988        M 0x80001bfc addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3989        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     3990        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3991        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3992        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3993        M 0x80001bf4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3994        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3995        M 0x80001bfc addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3996        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     3997        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3998        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3999        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4000        M 0x80001bf4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4001        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4002        M 0x80001bfc addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4003        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     4004        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4005        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4006        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4007        M 0x80001bf4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4008        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4009        M 0x80001bfc addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4010        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4011        M 0x80001c04 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4012        M 0x80001c08 j       pc + 0x28              #; goto 0x80001c30
       0     4023        M 0x80001c30 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4024        M 0x80001c34 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4025        M 0x80001c38 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4026        M 0x80001c3c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4035        M 0x80001c40 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4036        M 0x80001c44 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4037        M 0x80001c48 j       pc + 0x8               #; goto 0x80001c50
       0     4047        M 0x80001c50 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4048        M 0x80001c54 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4049        M 0x80001c58 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4050        M 0x80001c5c li      t0, 32                 #; (wrb) t0  <-- 32
       0     4060        M 0x80001c64 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001c60 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4061        M 0x80001c68 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4062        M 0x80001c6c li      a6, 10                 #; (wrb) a6  <-- 10
       0     4071        M 0x80001c70 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4072        M 0x80001c74 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4073        M 0x80001c78 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4074        M 0x80001c7c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4083        M 0x80001c80 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4084        M 0x80001c84 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4085        M 0x80001c88 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4086        M 0x80001c8c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4095        M 0x80001c90 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4096        M 0x80001c94 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4097        M 0x80001c98 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4098        M 0x80001c9c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4107        M 0x80001ca0 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4108        M 0x80001ca4 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4109        M 0x80001ca8 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4110        M 0x80001cac mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4119        M 0x80001cb0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4120        M 0x80001cb4 j       pc + 0x8               #; goto 0x80001cbc
       0     4121        M 0x80001cbc andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4133        M 0x80001cc0 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4134        M 0x80001cc4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d30
       0     4156        M 0x80001d30 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4157        M 0x80001d34 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4158        M 0x80001d38 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d50
       0     4179        M 0x80001d50 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4180        M 0x80001d54 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4181        M 0x80001d58 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4182        M 0x80001d5c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d88
       0     4202        M 0x80001d88 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4203        M 0x80001d8c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4214        M 0x80001d90 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4215        M 0x80001d94 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4216        M 0x80001d98 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4217        M 0x80001d9c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4226        M 0x80001da0 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dcc
       0     4249        M 0x80001dcc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4261        M 0x80001dd0 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4262        M 0x80001dd4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4263        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4264        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4267        M                                           #; (lsu) a0  <-- 48
       0     4273        M 0x80001de0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4274        M 0x80001de4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4275        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4276        M 0x80001dec mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4285        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4286        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4299        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4302        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4303        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4304        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4305        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4306        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4307        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4308        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4309        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4320        M                                           #; (lsu) a4  <-- 8
       0     4321        M 0x8000172c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4322        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
       0     4323        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
       0     4324        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a4, 48 ~~> Byte[0x800031ec]
       0     4325        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4346        M                                           #; (lsu) a4  <-- 9
       0     4347        M 0x80001740 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4348        M 0x80001744 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4349        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4350        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4351        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4352        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4356        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4361        M 0x80001df8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4362        M 0x80001dfc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4364        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001dd8
       0     4367        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4368        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4370        M 0x80001de0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4371        M 0x80001de4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4372        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4373        M 0x80001dec mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4374        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4375        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4376        M                                           #; (lsu) a0  <-- 46
       0     4378        M 0x8000170c beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4381        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4382        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4383        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4384        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4385        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4386        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4387        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4388        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4399        M                                           #; (lsu) a4  <-- 9
       0     4400        M 0x8000172c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4401        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
       0     4402        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
       0     4403        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a5, 46 ~~> Byte[0x800031ed]
       0     4404        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4425        M                                           #; (lsu) a4  <-- 10
       0     4426        M 0x80001740 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4427        M 0x80001744 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4428        M 0x80001748 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4429        M 0x8000174c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4430        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4431        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4435        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4440        M 0x80001df8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4441        M 0x80001dfc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4443        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001dd8
       0     4446        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4447        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4449        M 0x80001de0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4450        M 0x80001de4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4451        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4452        M 0x80001dec mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4453        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4454        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4455        M                                           #; (lsu) a0  <-- 48
       0     4457        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4460        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4461        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4462        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4463        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4464        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4465        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4466        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4467        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4478        M                                           #; (lsu) a4  <-- 10
       0     4479        M 0x8000172c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4480        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
       0     4481        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
       0     4482        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a6, 48 ~~> Byte[0x800031ee]
       0     4483        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4504        M                                           #; (lsu) a4  <-- 11
       0     4505        M 0x80001740 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4506        M 0x80001744 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4507        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4508        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4509        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4510        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4514        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4519        M 0x80001df8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4520        M 0x80001dfc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4522        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001dd8
       0     4525        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4526        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4528        M 0x80001de0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4529        M 0x80001de4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4530        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4531        M 0x80001dec mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4532        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4533        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4534        M                                           #; (lsu) a0  <-- 48
       0     4536        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4539        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4540        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4541        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4542        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4543        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4544        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4545        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4546        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4557        M                                           #; (lsu) a4  <-- 11
       0     4558        M 0x8000172c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4559        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
       0     4560        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
       0     4561        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a7, 48 ~~> Byte[0x800031ef]
       0     4562        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4583        M                                           #; (lsu) a4  <-- 12
       0     4584        M 0x80001740 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4585        M 0x80001744 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4586        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4587        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4588        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4589        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4593        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4598        M 0x80001df8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4599        M 0x80001dfc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4601        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001dd8
       0     4604        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4605        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4607        M 0x80001de0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4608        M 0x80001de4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4609        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4610        M 0x80001dec mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4611        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4612        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4613        M                                           #; (lsu) a0  <-- 48
       0     4615        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4618        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4619        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4620        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4621        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4622        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4623        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4624        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4625        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4636        M                                           #; (lsu) a4  <-- 12
       0     4637        M 0x8000172c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4638        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
       0     4639        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
       0     4640        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a8, 48 ~~> Byte[0x800031f0]
       0     4641        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4662        M                                           #; (lsu) a4  <-- 13
       0     4663        M 0x80001740 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4664        M 0x80001744 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4665        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4666        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4667        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4668        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4672        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4677        M 0x80001df8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4678        M 0x80001dfc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4680        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001dd8
       0     4683        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4684        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4686        M 0x80001de0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4687        M 0x80001de4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4688        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4689        M 0x80001dec mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4690        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4691        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4692        M                                           #; (lsu) a0  <-- 48
       0     4694        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4697        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4698        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4699        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4700        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4701        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4702        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4703        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4704        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4715        M                                           #; (lsu) a4  <-- 13
       0     4716        M 0x8000172c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4717        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
       0     4718        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
       0     4719        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
       0     4720        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4741        M                                           #; (lsu) a4  <-- 14
       0     4742        M 0x80001740 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4743        M 0x80001744 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4744        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4745        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4746        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4747        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4751        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4756        M 0x80001df8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4757        M 0x80001dfc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4759        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001dd8
       0     4762        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4763        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4765        M 0x80001de0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4766        M 0x80001de4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4767        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4768        M 0x80001dec mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4769        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4770        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4771        M                                           #; (lsu) a0  <-- 48
       0     4773        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4776        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4777        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4778        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4779        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4780        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4781        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4782        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4783        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4794        M                                           #; (lsu) a4  <-- 14
       0     4795        M 0x8000172c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4796        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
       0     4797        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
       0     4798        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031aa, 48 ~~> Byte[0x800031f2]
       0     4799        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4820        M                                           #; (lsu) a4  <-- 15
       0     4821        M 0x80001740 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4822        M 0x80001744 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4823        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4824        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4825        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4826        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4830        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4835        M 0x80001df8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4836        M 0x80001dfc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4838        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001dd8
       0     4841        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4842        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4844        M 0x80001de0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4845        M 0x80001de4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4846        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4847        M 0x80001dec mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4848        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4849        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     4850        M                                           #; (lsu) a0  <-- 48
       0     4852        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4855        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4856        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4857        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4858        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4859        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4860        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4861        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4862        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4873        M                                           #; (lsu) a4  <-- 15
       0     4874        M 0x8000172c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4875        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
       0     4876        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
       0     4877        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
       0     4878        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4899        M                                           #; (lsu) a4  <-- 16
       0     4900        M 0x80001740 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4901        M 0x80001744 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4902        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4903        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4904        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4905        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4909        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     4914        M 0x80001df8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4915        M 0x80001dfc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4917        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4918        M 0x80001e04 j       pc + 0x8               #; goto 0x80001e0c
       0     4919        M 0x80001e0c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4931        M 0x80001e10 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4932        M 0x80001e14 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4933        M 0x80001e18 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4934        M 0x80001e1c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4943        M 0x80001e20 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e50
       0     4966        M 0x80001e50 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4967        M 0x80001e54 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4970        M 0x80001e58 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4971        M 0x80001e5c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4972        M                                           #; (f:lsu) fs1  <-- 0.0
       0     4979        M 0x80001e64 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     4980        M 0x80001e60 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0     4981        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4983        M                                           #; (lsu) s10 <-- 0x80002dfe
       0     4984        M 0x80001e68 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4987        M                                           #; (lsu) s9  <-- 8
       0     4988        M 0x80001e6c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4991        M                                           #; (lsu) s8  <-- 16
       0     4992        M 0x80001e70 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4995        M                                           #; (lsu) s7  <-- 0
       0     4996        M 0x80001e74 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4999        M                                           #; (lsu) s6  <-- 0
       0     5000        M 0x80001e78 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5003        M                                           #; (lsu) s5  <-- -1
       0     5004        M 0x80001e7c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5007        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5008        M 0x80001e80 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5011        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5012        M 0x80001e84 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5015        M                                           #; (lsu) s2  <-- 0x8000170c
       0     5016        M 0x80001e88 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5019        M                                           #; (lsu) s1  <-- 8
       0     5020        M 0x80001e8c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5023        M                                           #; (lsu) s0  <-- 0
       0     5024        M 0x80001e90 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5025        M 0x80001e94 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5027        M                                           #; (lsu) ra  <-- 0x80000e3c
       0     5028        M 0x80001e98 ret                            #; ra  = 0x80000e3c, goto 0x80000e3c
       0     5045        M 0x80000e3c j       pc + 0x7c0             #; goto 0x800015fc
       0     5048        M 0x800015fc mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5060        M 0x80001600 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5061        M 0x80001604 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5062        M 0x80001608 addi    s0, s10, 1             #; s10 = 0x80002dfe, (wrb) s0  <-- 0x80002dff
       0     5063        M 0x8000160c j       pc - 0xa74             #; goto 0x80000b98
       0     5072        M 0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002dff, (wrb) s10 <-- 0x80002e01
       0     5073        M 0x80000b9c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5084        M 0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5085        M 0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002dff, a0  <~~ Byte[0x80002dff]
       0     5096        M                                           #; (lsu) a0  <-- 10
       0     5097        M 0x80000ba8 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5098        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5099        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5100        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5101        M 0x80000bb8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5102        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5111        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5125        M 0x8000170c beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5128        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5129        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5130        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5131        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5132        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5133        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5134        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5135        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5146        M                                           #; (lsu) a4  <-- 16
       0     5147        M 0x8000172c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5148        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
       0     5149        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
       0     5150        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031ac, 10 ~~> Byte[0x800031f4]
       0     5151        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5172        M                                           #; (lsu) a4  <-- 17
       0     5173        M 0x80001740 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5174        M 0x80001744 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5175        M 0x80001748 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5176        M 0x8000174c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5177        M 0x80001750 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5178        M 0x80001754 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5179        M 0x80001758 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
       0     5180        M 0x8000175c addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
       0     5181        M 0x80001760 sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
       0     5182        M 0x80001764 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5183        M 0x80001768 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
       0     5184        M 0x8000176c sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
       0     5193        M 0x80001770 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5194        M 0x80001774 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
       0     5195        M 0x80001778 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
       0     5197        M 0x8000177c sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
       0     5207        M 0x80001780 lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
       0     5208        M 0x80001784 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
       0     5209        M 0x80001788 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
       0     5229        M                                           #; (lsu) a2  <-- 17
       0     5230        M 0x8000178c sw      a2, 32(a0)             #; a0  = 0x8000319c, 17 ~~> Word[0x800031bc]
       0     5231        M 0x80001790 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003790
       0     5232        M 0x80001794 addi    a0, a0, -1872          #; a0  = 0x80003790, (wrb) a0  <-- 0x80003040
       0     5233        M 0x80001798 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
       0     5234        M 0x8000179c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000379c
       0     5243        M 0x800017a0 addi    a0, a0, -1820          #; a0  = 0x8000379c, (wrb) a0  <-- 0x80003080
       0     5244        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5259        M                                           #; (lsu) a2  <-- 0
       0     5260        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     5261        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5272        M                                           #; (lsu) a2  <-- 0
       0     5273        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     5274        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5285        M                                           #; (lsu) a2  <-- 0
       0     5286        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     5287        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5298        M                                           #; (lsu) a2  <-- 0
       0     5299        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     5300        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5311        M                                           #; (lsu) a2  <-- 1
       0     5312        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5313        M 0x800017ac sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
       0     5316        M 0x800017b0 sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     5317        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5321        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dff, (wrb) s0  <-- 0x80002e00
       0     5322        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e01, (wrb) s10 <-- 0x80002e02
       0     5323        M 0x80000bcc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5324        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e00, a0  <~~ Byte[0x80002e00]
       0     5337        M                                           #; (lsu) a0  <-- 0
       0     5338        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5339        M 0x80000bd8 j       pc + 0xad8             #; goto 0x800016b0
       0     5351        M 0x800016b0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5352        M 0x800016b4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016bc
       0     5353        M 0x800016bc li      a0, 0                  #; (wrb) a0  <-- 0
       0     5363        M 0x800016c0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5364        M 0x800016c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5365        M 0x800016c8 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x800016cc, goto 0x8000170c
       0     5377        M 0x8000170c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b4
       0     5382        M 0x800017b4 ret                            #; ra  = 0x800016cc, goto 0x800016cc
       0     5383        M 0x800016cc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5384        M 0x800016d0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5387        M                                           #; (lsu) s11 <-- 0
       0     5388        M 0x800016d4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5391        M                                           #; (lsu) s10 <-- 0
       0     5392        M 0x800016d8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5395        M                                           #; (lsu) s9  <-- 0
       0     5396        M 0x800016dc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5399        M                                           #; (lsu) s8  <-- 0
       0     5400        M 0x800016e0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5403        M                                           #; (lsu) s7  <-- 0
       0     5404        M 0x800016e4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5407        M                                           #; (lsu) s6  <-- 0
       0     5408        M 0x800016e8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5411        M                                           #; (lsu) s5  <-- 0
       0     5412        M 0x800016ec lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5415        M                                           #; (lsu) s4  <-- 0
       0     5416        M 0x800016f0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5419        M                                           #; (lsu) s3  <-- 0
       0     5420        M 0x800016f4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5423        M                                           #; (lsu) s2  <-- 0
       0     5424        M 0x800016f8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5427        M                                           #; (lsu) s1  <-- 0
       0     5428        M 0x800016fc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5431        M                                           #; (lsu) s0  <-- 0
       0     5432        M 0x80001700 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5433        M 0x80001704 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5435        M                                           #; (lsu) ra  <-- 0x80000b08
       0     5436        M 0x80001708 ret                            #; ra  = 0x80000b08, goto 0x80000b08
       0     5448        M 0x80000b08 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5449        M 0x80000b0c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5451        M                                           #; (lsu) ra  <-- 0x80000a98
       0     5460        M 0x80000b10 ret                            #; ra  = 0x80000a98, goto 0x80000a98
       0     5474        M 0x80000a98 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a98
       0     5475        M 0x80000a9c addi    a0, a0, 1616           #; a0  = 0x80002a98, (wrb) a0  <-- 0x800030e8
       0     5479        M 0x80000aa0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e8]
       0     5480        M 0x80000aac lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5488        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5489        M 0x80000ab0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x80000aa4 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     5490        M                                           #; (lsu) ra  <-- 0x80002b70
       0     5491        M 0x80000ab4 ret                            #; ra  = 0x80002b70, goto 0x80002b70
                         M 0x80000aa8 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5492        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5494        M 0x80002b70 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5495        M 0x80002b74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b74
       0     5496        M 0x80002b78 jalr    ra, ra, 524            #; ra  = 0x80002b74, (wrb) ra  <-- 0x80002b7c, goto 0x80002d80
       0     5517        M 0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5518        M 0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b7c ~~> Word[0x0011ff5c]
       0     5519        M 0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
       0     5520        M 0x80002d8c jalr    ra, ra, -1268          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x80002894
       0     5523        M 0x80002894 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5524        M 0x80002898 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5525        M 0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5528        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5529        M 0x800028a0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5532        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5533        M 0x800028a4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5534        M 0x800028a8 ret                            #; ra  = 0x80002d90, goto 0x80002d90
       0     5536        M                                           #; (lsu) a0  <-- 0x00120190
       0     5537        M 0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5547        M                                           #; (lsu) a0  <-- 0
       0     5548        M 0x80002d94 mv      zero, a0               #; a0  = 0
       0     5549        M 0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5550        M 0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5552        M                                           #; (lsu) ra  <-- 0x80002b7c
       0     5553        M 0x80002da0 ret                            #; ra  = 0x80002b7c, goto 0x80002b7c
       0     5567        M 0x80002b7c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5571        M 0x80002b80 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b80
       0     5572        M 0x80002b84 jalr    ra, ra, 556            #; ra  = 0x80002b80, (wrb) ra  <-- 0x80002b88, goto 0x80002dac
       0     5573        M 0x80002dac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5574        M 0x80002db0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5575        M 0x80002db4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b88 ~~> Word[0x0011ff5c]
       0     5576        M 0x80002db8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002db8
       0     5577        M 0x80002dbc jalr    ra, ra, -1348          #; ra  = 0x80002db8, (wrb) ra  <-- 0x80002dc0, goto 0x80002874
       0     5588        M 0x80002874 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5589        M 0x80002878 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5590        M 0x8000287c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5593        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5594        M 0x80002880 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5597        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5598        M 0x80002884 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5599        M 0x80002888 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5601        M                                           #; (lsu) a0  <-- 0
       0     5602        M 0x8000288c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5603        M 0x80002890 ret                            #; ra  = 0x80002dc0, goto 0x80002dc0
       0     5604        M 0x80002dc0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5607        M                                           #; (lsu) t0  <-- 0
       0     5608        M 0x80002dc4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5609        M 0x80002dc8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5610        M 0x80002dcc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5611        M                                           #; (lsu) ra  <-- 0x80002b88
       0     5617        M 0x80002dd0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5618        M 0x80002dd4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5619        M 0x80002dd8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dd8
       0     5620        M 0x80002ddc addi    t1, t1, 616            #; t1  = 0x80002dd8, (wrb) t1  <-- 0x80003040
       0     5629        M 0x80002de0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
       0     5630        M 0x80002de4 ret                            #; ra  = 0x80002b88, goto 0x80002b88
       0     5644        M 0x80002b88 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5644):
snitch_loads                                   138
snitch_stores                                  142
fpss_stores                                     14
fpss_loads                                      23
snitch_avg_load_latency                    11.9130
snitch_occupancy                            0.2271
snitch_fseq_rel_offloads                    0.0968
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.3830
fpss_avg_load_latency                       6.9130
fpss_occupancy                              0.0243
fpss_fpu_occupancy                          0.0167
fpss_fpu_rel_occupancy                      0.6861
cycles                                        5633
total_ipc                                   0.2514
