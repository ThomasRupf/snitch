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
       0     1581        M 0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1584        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1585        M 0x80000664 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1588        M                                           #; (lsu) a0  <-- 0x00100000
       0     1589        M 0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1592        M                                           #; (lsu) a1  <-- 0x00100000
       0     1593        M 0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1596        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1597        M 0x80000670 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
       0     1598        M 0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1599        M 0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000690
       0     1635        M 0x80000690 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1636        M 0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1637        M 0x80000698 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
       0     1638        M 0x8000069c mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1647        M 0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000688
       0     1648        M 0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1649        M 0x8000068c j       pc + 0x1c              #; goto 0x800006a8
       0     1650        M 0x800006a8 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
       0     1651        M 0x800006ac snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1662        M 0x800006b0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1663        M 0x800006b4 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1664        M 0x800006b8 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1665        M 0x800006bc and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1674        M 0x800006c0 beqz    a2, pc + 204           #; a2  = 1, not taken
       0     1675        M 0x800006c4 li      a6, 8                  #; (wrb) a6  <-- 8
       0     1676        M 0x800006c8 li      a4, 9                  #; (wrb) a4  <-- 9
       0     1677        M 0x800006cc li      a5, 64                 #; (wrb) a5  <-- 64
       0     1686        M 0x800006d0 li      a3, 192                #; (wrb) a3  <-- 192
       0     1687        M 0x800006d4 scfgw   a4, a5                 #; a4  = 9, a5  = 64
       0     1688        M 0x800006d8 scfgw   a6, a3                 #; a6  = 8, a3  = 192
       0     1689        M 0x800006dc li      a3, 32                 #; (wrb) a3  <-- 32
       0     1698        M 0x800006e0 scfgw   zero, a3               #; a3  = 32
       0     1699        M 0x800006e4 scfgwi  a1, 896                #; a1  = 0x00100000
       0     1701        M 0x800006ec auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036ec
                         M 0x800006e8 csrrsi  a3, ssr, 1             #; 
       0     1710        M 0x800006f0 addi    a3, a3, -1620          #; a3  = 0x800036ec, (wrb) a3  <-- 0x80003098
       0     1713        M 0x800006f4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003098]
       0     1714        M 0x800006f8 fcvt.d.w ft4, zero             #; ac1  = 0
       0     1715        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1716        M 0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1717        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1722        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1723        M 0x80000704 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003704
       0     1724        M 0x80000708 addi    a3, a3, -1636          #; a3  = 0x80003704, (wrb) a3  <-- 0x800030a0
                         M 0x80000700 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1725        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1727        M 0x8000070c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030a0]
       0     1734        M 0x80000710 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003710
       0     1735        M 0x80000714 addi    a3, a3, -1640          #; a3  = 0x80003710, (wrb) a3  <-- 0x800030a8
       0     1736        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1737        M 0x8000071c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000371c
       0     1738        M 0x80000718 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030a8]
       0     1746        M 0x80000720 addi    a3, a3, -1644          #; a3  = 0x8000371c, (wrb) a3  <-- 0x800030b0
       0     1747        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1748        M 0x80000728 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003728
       0     1749        M 0x8000072c addi    a3, a3, -1648          #; a3  = 0x80003728, (wrb) a3  <-- 0x800030b8
                         M 0x80000724 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030b0]
       0     1758        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1760        M 0x80000730 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030b8]
       0     1761        M 0x80000734 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1762        M 0x80000738 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0, (f:fpu) ft0  <-- 2.0
       0     1763        M 0x8000073c fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
       0     1764        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1769        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1771        M 0x80000744 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003744
       0     1772        M 0x80000748 addi    a3, a3, -1668          #; a3  = 0x80003744, (wrb) a3  <-- 0x800030c0
                         M 0x80000740 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0
       0     1773        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1775        M 0x8000074c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030c0]
       0     1782        M 0x80000750 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003750
       0     1783        M 0x80000754 addi    a3, a3, -1672          #; a3  = 0x80003750, (wrb) a3  <-- 0x800030c8
       0     1784        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1785        M 0x8000075c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000375c
       0     1786        M 0x80000758 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030c8]
       0     1794        M 0x80000760 addi    a3, a3, -1676          #; a3  = 0x8000375c, (wrb) a3  <-- 0x800030d0
       0     1795        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1796        M 0x80000768 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003768
       0     1797        M 0x8000076c addi    a3, a3, -1680          #; a3  = 0x80003768, (wrb) a3  <-- 0x800030d8
                         M 0x80000764 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030d0]
       0     1806        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1808        M 0x80000770 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030d8]
       0     1809        M 0x80000774 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1810        M 0x80000778 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0, (f:fpu) ft0  <-- 6.0
       0     1811        M 0x8000077c fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
       0     1812        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1817        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1820        M 0x80000788 j       pc + 0x78              #; goto 0x80000800
                         M 0x80000780 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0
       0     1821        M 0x80000784 csrrci  a3, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1830        M 0x80000800 srli    a3, a0, 20             #; a0  = 0x00100050, (wrb) a3  <-- 1
       0     1831        M 0x80000804 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1832        M 0x80000808 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1833        M 0x8000080c addi    a4, a4, -71            #; a4  = 0x00120000, (wrb) a4  <-- 0x0011ffb9
       0     1842        M 0x80000810 sltu    a4, a0, a4             #; a0  = 0x00100050, a4  = 0x0011ffb9, (wrb) a4  <-- 1
       0     1843        M 0x80000814 and     a5, a3, a4             #; a3  = 1, a4  = 1, (wrb) a5  <-- 1
       0     1844        M 0x80000818 beqz    a5, pc + 328           #; a5  = 1, not taken
       0     1845        M 0x8000081c li      a6, 8                  #; (wrb) a6  <-- 8
       0     1854        M 0x80000820 li      a7, 9                  #; (wrb) a7  <-- 9
       0     1855        M 0x80000824 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1856        M 0x80000828 li      a4, 192                #; (wrb) a4  <-- 192
       0     1857        M 0x8000082c scfgw   a7, a3                 #; a7  = 9, a3  = 64
       0     1866        M 0x80000830 scfgw   a6, a4                 #; a6  = 8, a4  = 192
       0     1867        M 0x80000834 li      a3, 32                 #; (wrb) a3  <-- 32
       0     1868        M 0x80000838 scfgw   zero, a3               #; a3  = 32
       0     1869        M 0x8000083c scfgwi  a0, 896                #; a0  = 0x00100050
       0     1879        M 0x80000844 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003844
                         M 0x80000840 csrrsi  a3, ssr, 1             #; 
       0     1880        M 0x80000848 addi    a3, a3, -1964          #; a3  = 0x80003844, (wrb) a3  <-- 0x80003098
       0     1883        M 0x8000084c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003098]
       0     1891        M 0x80000850 fcvt.d.w ft4, zero             #; ac1  = 0
       0     1892        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1893        M 0x8000085c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000385c
                         M 0x80000854 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0, (f:lsu) ft3  <-- 1.0
       0     1894        M 0x80000858 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
       0     1895        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1902        M 0x80000860 addi    a3, a3, -1980          #; a3  = 0x8000385c, (wrb) a3  <-- 0x800030a0
       0     1904        M 0x80000868 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003868
       0     1905        M 0x8000086c addi    a3, a3, -1984          #; a3  = 0x80003868, (wrb) a3  <-- 0x800030a8
                         M 0x80000864 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030a0]
       0     1914        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1915        M 0x80000874 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003874
       0     1916        M 0x80000878 addi    a3, a3, -1988          #; a3  = 0x80003874, (wrb) a3  <-- 0x800030b0
                         M 0x80000870 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030a8]
       0     1919        M 0x8000087c fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030b0]
       0     1925        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1926        M 0x80000880 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003880
       0     1927        M 0x80000884 addi    a3, a3, -1992          #; a3  = 0x80003880, (wrb) a3  <-- 0x800030b8
       0     1928        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1930        M 0x80000888 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030b8]
       0     1931        M 0x8000088c fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1932        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1939        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1940        M 0x80000890 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1941        M 0x8000089c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000389c
                         M 0x80000894 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
       0     1942        M 0x80000898 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1943        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1950        M 0x800008a0 addi    a3, a3, -2012          #; a3  = 0x8000389c, (wrb) a3  <-- 0x800030c0
       0     1952        M 0x800008a8 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800038a8
       0     1953        M 0x800008ac addi    a3, a3, -2016          #; a3  = 0x800038a8, (wrb) a3  <-- 0x800030c8
                         M 0x800008a4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030c0]
       0     1962        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1963        M 0x800008b4 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800038b4
       0     1964        M 0x800008b8 addi    a3, a3, -2020          #; a3  = 0x800038b4, (wrb) a3  <-- 0x800030d0
                         M 0x800008b0 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030c8]
       0     1967        M 0x800008bc fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030d0]
       0     1973        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1974        M 0x800008c0 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800038c0
       0     1975        M 0x800008c4 addi    a3, a3, -2024          #; a3  = 0x800038c0, (wrb) a3  <-- 0x800030d8
       0     1976        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1978        M 0x800008c8 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030d8]
       0     1979        M 0x800008cc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1980        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1987        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1988        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1989        M 0x800008d4 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
       0     1990        M 0x800008d8 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1991        M 0x800008dc csrrci  a3, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1998        M 0x800008e0 and     a3, a2, a5             #; a2  = 1, a5  = 1, (wrb) a3  <-- 1
       0     1999        M 0x800008e4 csrr    a2, mcycle             #; mcycle = 1998, (wrb) a2  <-- 1998
       0     2000        M 0x800008e8 beqz    a3, pc + 240           #; a3  = 1, not taken
       0     2001        M 0x800008ec li      a3, 64                 #; (wrb) a3  <-- 64
       0     2010        M 0x800008f0 li      a4, 192                #; (wrb) a4  <-- 192
       0     2011        M 0x800008f4 scfgw   a7, a3                 #; a7  = 9, a3  = 64
       0     2012        M 0x800008f8 scfgw   a6, a4                 #; a6  = 8, a4  = 192
       0     2013        M 0x800008fc li      a3, 32                 #; (wrb) a3  <-- 32
       0     2022        M 0x80000900 scfgw   zero, a3               #; a3  = 32
       0     2023        M 0x80000904 scfgwi  a1, 768                #; a1  = 0x00100000
       0     2024        M 0x80000908 li      a1, 1                  #; (wrb) a1  <-- 1
       0     2025        M 0x8000090c addi    a3, a1, 64             #; a1  = 1, (wrb) a3  <-- 65
       0     2034        M 0x80000910 addi    a4, a1, 192            #; a1  = 1, (wrb) a4  <-- 193
       0     2035        M 0x80000914 scfgw   a7, a3                 #; a7  = 9, a3  = 65
       0     2036        M 0x80000918 scfgw   a6, a4                 #; a6  = 8, a4  = 193
       0     2037        M 0x8000091c addi    a1, a1, 32             #; a1  = 1, (wrb) a1  <-- 33
       0     2046        M 0x80000920 scfgw   zero, a1               #; a1  = 33
       0     2047        M 0x80000924 scfgwi  a0, 769                #; a0  = 0x00100050
       0     2049        M                                           #; (acc) gp  <-- 0x220001d3
                         M 0x80000928 csrrsi  a0, ssr, 1             #; 
       0     2051        M 0x8000092c fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2052        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2060        M 0x80000930 fmul.d  ft3, ft1, ft3          #; ft1  = 0.0, ft3  = 0.0
       0     2063        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2064        M 0x80000934 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 1.0, ft0  = 1.0, ft3  = 0.0
       0     2067        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2068        M 0x80000938 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 2.0, ft0  = 2.0, ft3  = 1.0
       0     2071        M                                           #; (f:fpu) ft3  <-- 5.0
       0     2072        M 0x8000093c fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 3.0, ft0  = 3.0, ft3  = 5.0
       0     2075        M                                           #; (f:fpu) ft3  <-- 14.0
       0     2076        M 0x80000940 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 4.0, ft0  = 4.0, ft3  = 14.0
       0     2079        M                                           #; (f:fpu) ft3  <-- 30.0
       0     2080        M 0x80000944 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 5.0, ft0  = 5.0, ft3  = 30.0
       0     2083        M                                           #; (f:fpu) ft3  <-- 55.0
       0     2084        M 0x80000948 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 6.0, ft0  = 6.0, ft3  = 55.0
       0     2085        M 0x8000095c j       pc + 0xf4              #; goto 0x80000a50
       0     2087        M                                           #; (f:fpu) ft3  <-- 91.0
       0     2088        M 0x8000094c fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 7.0, ft0  = 7.0, ft3  = 91.0
       0     2091        M                                           #; (f:fpu) ft3  <-- 140.0
       0     2092        M 0x80000950 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 8.0, ft0  = 8.0, ft3  = 140.0
       0     2094        M 0x80000a50 csrr    a0, mcycle             #; mcycle = 2093, (wrb) a0  <-- 2093
       0     2095        M 0x80000a54 sub     a1, a0, a2             #; a0  = 2093, a2  = 1998, (wrb) a1  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 204.0
       0     2096        M 0x80000a58 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a58
                         M 0x80000954 fmadd.d fs0, ft1, ft0, ft3     #; ft1  = 9.0, ft0  = 9.0, ft3  = 204.0
       0     2097        M 0x80000a5c addi    a0, a0, 937            #; a0  = 0x80002a58, (wrb) a0  <-- 0x80002e01
                         M 0x80000958 csrrci  a0, ssr, 1             #; 
       0     2099        M                                           #; (f:fpu) fs0  <-- 285.0
       0     2106        M 0x80000a60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a60
       0     2107        M 0x80000a64 jalr    ra, ra, 88             #; ra  = 0x80000a60, (wrb) ra  <-- 0x80000a68, goto 0x80000ab8
       0     2120        M 0x80000ab8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2121        M 0x80000abc sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a68 ~~> Word[0x0011ff1c]
       0     2123        M 0x80000ac0 mv      t0, a0                 #; a0  = 0x80002e01, (wrb) t0  <-- 0x80002e01
       0     2124        M 0x80000ac4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
       0     2125        M 0x80000ac8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff38]
       0     2126        M 0x80000acc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff34]
       0     2135        M 0x80000ad0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff30]
       0     2136        M 0x80000ad4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff2c]
       0     2137        M 0x80000ad8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 1998 ~~> Word[0x0011ff28]
       0     2138        M 0x80000adc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 95 ~~> Word[0x0011ff24]
       0     2147        M 0x80000ae0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2148        M 0x80000ae4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2149        M 0x80000ae8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae8
       0     2150        M 0x80000aec addi    a0, a0, -988           #; a0  = 0x80001ae8, (wrb) a0  <-- 0x8000170c
       0     2159        M 0x80000af0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2160        M 0x80000af4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2161        M 0x80000af8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2162        M 0x80000afc mv      a3, t0                 #; t0  = 0x80002e01, (wrb) a3  <-- 0x80002e01
       0     2171        M 0x80000b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b00
       0     2172        M 0x80000b04 jalr    ra, ra, 20             #; ra  = 0x80000b00, (wrb) ra  <-- 0x80000b08, goto 0x80000b14
       0     2183        M 0x80000b14 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2184        M 0x80000b18 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b08 ~~> Word[0x0011ff0c]
       0     2185        M 0x80000b1c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2195        M 0x80000b20 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2196        M 0x80000b24 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2197        M 0x80000b28 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2198        M 0x80000b2c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2207        M 0x80000b30 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2208        M 0x80000b34 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2209        M 0x80000b38 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2210        M 0x80000b3c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2219        M 0x80000b40 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2220        M 0x80000b44 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2221        M 0x80000b48 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2222        M 0x80000b4c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2231        M 0x80000b50 mv      s0, a3                 #; a3  = 0x80002e01, (wrb) s0  <-- 0x80002e01
       0     2232        M 0x80000b54 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2233        M 0x80000b58 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2234        M 0x80000b5c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2243        M 0x80000b60 mv      s2, a0                 #; a0  = 0x8000170c, (wrb) s2  <-- 0x8000170c
       0     2244        M 0x80000b64 j       pc + 0xc               #; goto 0x80000b70
       0     2255        M 0x80000b70 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2256        M 0x80000b74 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2257        M 0x80000b78 li      s11, 16                #; (wrb) s11 <-- 16
       0     2258        M 0x80000b7c li      s7, 46                 #; (wrb) s7  <-- 46
       0     2267        M 0x80000b80 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2268        M 0x80000b84 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2269        M 0x80000b88 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2270        M 0x80000b8c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2279        M 0x80000b90 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2280        M 0x80000b94 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2281        M 0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002e01, (wrb) s10 <-- 0x80002e03
       0     2282        M 0x80000b9c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2291        M 0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2292        M 0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002e01, a0  <~~ Byte[0x80002e01]
       0     2303        M                                           #; (lsu) a0  <-- 99
       0     2304        M 0x80000ba8 beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     2305        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     2306        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2307        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2308        M 0x80000bb8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2309        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2318        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2341        M 0x8000170c beqz    a0, pc + 168           #; a0  = 99, not taken
       0     2353        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2354        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2355        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2356        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2365        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2366        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2367        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2378        M                                           #; (lsu) a4  <-- 0
       0     2379        M 0x8000172c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2380        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
       0     2381        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
       0     2382        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319c, 99 ~~> Byte[0x800031e4]
       0     2383        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2404        M                                           #; (lsu) a4  <-- 1
       0     2405        M 0x80001740 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2406        M 0x80001744 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2407        M 0x80001748 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     2408        M 0x8000174c snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     2409        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2410        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2432        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2446        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e01, (wrb) s0  <-- 0x80002e02
       0     2447        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e03, (wrb) s10 <-- 0x80002e04
       0     2448        M 0x80000bcc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2449        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e02, a0  <~~ Byte[0x80002e02]
       0     2460        M                                           #; (lsu) a0  <-- 121
       0     2461        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000bac
       0     2462        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     2465        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2466        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2467        M 0x80000bb8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2468        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2469        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2472        M 0x8000170c beqz    a0, pc + 168           #; a0  = 121, not taken
       0     2475        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2476        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2477        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2478        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2479        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2480        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2481        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2482        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2493        M                                           #; (lsu) a4  <-- 1
       0     2494        M 0x8000172c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2495        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
       0     2496        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
       0     2497        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319d, 121 ~~> Byte[0x800031e5]
       0     2498        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2519        M                                           #; (lsu) a4  <-- 2
       0     2520        M 0x80001740 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2521        M 0x80001744 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2522        M 0x80001748 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     2523        M 0x8000174c snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     2524        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2525        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2529        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2534        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e02, (wrb) s0  <-- 0x80002e03
       0     2535        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e04, (wrb) s10 <-- 0x80002e05
       0     2536        M 0x80000bcc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2537        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e03, a0  <~~ Byte[0x80002e03]
       0     2548        M                                           #; (lsu) a0  <-- 99
       0     2549        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000bac
       0     2550        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     2553        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2554        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2555        M 0x80000bb8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2556        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2557        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2560        M 0x8000170c beqz    a0, pc + 168           #; a0  = 99, not taken
       0     2563        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2564        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2565        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2566        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2567        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2568        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2569        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2570        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2581        M                                           #; (lsu) a4  <-- 2
       0     2582        M 0x8000172c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2583        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
       0     2584        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
       0     2585        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319e, 99 ~~> Byte[0x800031e6]
       0     2586        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2607        M                                           #; (lsu) a4  <-- 3
       0     2608        M 0x80001740 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2609        M 0x80001744 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2610        M 0x80001748 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     2611        M 0x8000174c snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     2612        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2613        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2617        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2622        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e03, (wrb) s0  <-- 0x80002e04
       0     2623        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e05, (wrb) s10 <-- 0x80002e06
       0     2624        M 0x80000bcc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2625        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e04, a0  <~~ Byte[0x80002e04]
       0     2636        M                                           #; (lsu) a0  <-- 108
       0     2637        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000bac
       0     2638        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     2641        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2642        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2643        M 0x80000bb8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2644        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2645        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2648        M 0x8000170c beqz    a0, pc + 168           #; a0  = 108, not taken
       0     2651        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2652        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2653        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2654        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2655        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2656        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2657        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2658        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2669        M                                           #; (lsu) a4  <-- 3
       0     2670        M 0x8000172c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2671        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
       0     2672        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
       0     2673        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319f, 108 ~~> Byte[0x800031e7]
       0     2674        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2695        M                                           #; (lsu) a4  <-- 4
       0     2696        M 0x80001740 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2697        M 0x80001744 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2698        M 0x80001748 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     2699        M 0x8000174c snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     2700        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2701        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2705        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2710        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e04, (wrb) s0  <-- 0x80002e05
       0     2711        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e06, (wrb) s10 <-- 0x80002e07
       0     2712        M 0x80000bcc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2713        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e05, a0  <~~ Byte[0x80002e05]
       0     2724        M                                           #; (lsu) a0  <-- 101
       0     2725        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000bac
       0     2726        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2729        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2730        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2731        M 0x80000bb8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2732        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2733        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2736        M 0x8000170c beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2739        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2740        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2741        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2742        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2743        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2744        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2745        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2746        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2757        M                                           #; (lsu) a4  <-- 4
       0     2758        M 0x8000172c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2759        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
       0     2760        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
       0     2761        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a0, 101 ~~> Byte[0x800031e8]
       0     2762        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2783        M                                           #; (lsu) a4  <-- 5
       0     2784        M 0x80001740 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2785        M 0x80001744 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2786        M 0x80001748 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2787        M 0x8000174c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2788        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2789        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2793        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2798        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e05, (wrb) s0  <-- 0x80002e06
       0     2799        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e07, (wrb) s10 <-- 0x80002e08
       0     2800        M 0x80000bcc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2801        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e06, a0  <~~ Byte[0x80002e06]
       0     2812        M                                           #; (lsu) a0  <-- 115
       0     2813        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000bac
       0     2814        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     2817        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2818        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2819        M 0x80000bb8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2820        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2821        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2824        M 0x8000170c beqz    a0, pc + 168           #; a0  = 115, not taken
       0     2827        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2828        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2829        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2830        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2831        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2832        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2833        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2834        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2845        M                                           #; (lsu) a4  <-- 5
       0     2846        M 0x8000172c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2847        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
       0     2848        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
       0     2849        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a1, 115 ~~> Byte[0x800031e9]
       0     2850        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2871        M                                           #; (lsu) a4  <-- 6
       0     2872        M 0x80001740 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2873        M 0x80001744 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2874        M 0x80001748 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     2875        M 0x8000174c snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     2876        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2877        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2881        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2886        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e06, (wrb) s0  <-- 0x80002e07
       0     2887        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e08, (wrb) s10 <-- 0x80002e09
       0     2888        M 0x80000bcc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2889        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e07, a0  <~~ Byte[0x80002e07]
       0     2900        M                                           #; (lsu) a0  <-- 32
       0     2901        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
       0     2902        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2905        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2906        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2907        M 0x80000bb8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2908        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2909        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     2912        M 0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2915        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2916        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2917        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2918        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     2919        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     2920        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2921        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2922        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2933        M                                           #; (lsu) a4  <-- 6
       0     2934        M 0x8000172c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2935        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
       0     2936        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
       0     2937        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a2, 32 ~~> Byte[0x800031ea]
       0     2938        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2959        M                                           #; (lsu) a4  <-- 7
       0     2960        M 0x80001740 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2961        M 0x80001744 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2962        M 0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2963        M 0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2964        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2965        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     2969        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     2974        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e07, (wrb) s0  <-- 0x80002e08
       0     2975        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e09, (wrb) s10 <-- 0x80002e0a
       0     2976        M 0x80000bcc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2977        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e08, a0  <~~ Byte[0x80002e08]
       0     2988        M                                           #; (lsu) a0  <-- 61
       0     2989        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000bac
       0     2990        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2993        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2994        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2995        M 0x80000bb8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2996        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2997        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     3000        M 0x8000170c beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3003        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3004        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3005        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3006        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     3007        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     3008        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3009        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3010        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3021        M                                           #; (lsu) a4  <-- 7
       0     3022        M 0x8000172c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3023        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
       0     3024        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
       0     3025        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a3, 61 ~~> Byte[0x800031eb]
       0     3026        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3047        M                                           #; (lsu) a4  <-- 8
       0     3048        M 0x80001740 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3049        M 0x80001744 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3050        M 0x80001748 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3051        M 0x8000174c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3052        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3053        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     3057        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     3062        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e08, (wrb) s0  <-- 0x80002e09
       0     3063        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e0a, (wrb) s10 <-- 0x80002e0b
       0     3064        M 0x80000bcc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3065        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e09, a0  <~~ Byte[0x80002e09]
       0     3076        M                                           #; (lsu) a0  <-- 32
       0     3077        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
       0     3078        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3081        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     3082        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3083        M 0x80000bb8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3084        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3085        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     3088        M 0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3091        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3092        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3093        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3094        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     3095        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     3096        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3097        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3098        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3109        M                                           #; (lsu) a4  <-- 8
       0     3110        M 0x8000172c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     3111        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
       0     3112        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
       0     3113        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a4, 32 ~~> Byte[0x800031ec]
       0     3114        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3135        M                                           #; (lsu) a4  <-- 9
       0     3136        M 0x80001740 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     3137        M 0x80001744 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     3138        M 0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3139        M 0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3140        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3141        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     3145        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     3150        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e09, (wrb) s0  <-- 0x80002e0a
       0     3151        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e0b, (wrb) s10 <-- 0x80002e0c
       0     3152        M 0x80000bcc mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     3153        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e0a, a0  <~~ Byte[0x80002e0a]
       0     3164        M                                           #; (lsu) a0  <-- 37
       0     3165        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000bac
       0     3166        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bdc
       0     3167        M 0x80000bdc li      s0, 0                  #; (wrb) s0  <-- 0
       0     3180        M 0x80000be0 j       pc + 0x10              #; goto 0x80000bf0
       0     3192        M 0x80000bf0 lbu     a0, -1(s10)            #; s10 = 0x80002e0c, a0  <~~ Byte[0x80002e0b]
       0     3203        M                                           #; (lsu) a0  <-- 108
       0     3204        M 0x80000bf4 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
       0     3205        M 0x80000bf8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000c30
       0     3217        M 0x80000c30 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
       0     3218        M 0x80000c34 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
       0     3219        M 0x80000c38 addi    a1, s10, -1            #; s10 = 0x80002e0c, (wrb) a1  <-- 0x80002e0b
       0     3220        M 0x80000c3c li      a3, 9                  #; (wrb) a3  <-- 9
       0     3229        M 0x80000c40 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000cbc
       0     3252        M 0x80000cbc li      a2, 42                 #; (wrb) a2  <-- 42
       0     3264        M 0x80000cc0 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000d10
       0     3287        M 0x80000d10 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3288        M 0x80000d14 mv      s10, a1                #; a1  = 0x80002e0b, (wrb) s10 <-- 0x80002e0b
       0     3289        M 0x80000d18 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
       0     3290        M 0x80000d1c li      s7, 0                  #; (wrb) s7  <-- 0
       0     3310        M 0x80000d20 j       pc + 0xc               #; goto 0x80000d2c
       0     3311        M 0x80000d2c addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
       0     3323        M 0x80000d30 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
       0     3324        M 0x80000d34 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
       0     3325        M 0x80000d38 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
       0     3326        M 0x80000d3c li      a2, 9                  #; (wrb) a2  <-- 9
       0     3335        M 0x80000d40 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
       0     3336        M 0x80000d44 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
       0     3337        M 0x80000d48 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d48
       0     3338        M 0x80000d4c addi    a2, a2, 272            #; a2  = 0x80002d48, (wrb) a2  <-- 0x80002e58
       0     3347        M 0x80000d50 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002e58, (wrb) a1  <-- 0x80002e60
       0     3348        M 0x80000d54 lw      a3, 0(a1)              #; a1  = 0x80002e60, a3  <~~ Word[0x80002e60]
       0     3349        M 0x80000d58 li      a1, 1                  #; (wrb) a1  <-- 1
       0     3350        M 0x80000d5c li      a2, 256                #; (wrb) a2  <-- 256
       0     3359        M                                           #; (lsu) a3  <-- 0x80000d84
       0     3360        M 0x80000d60 jr      a3                     #; a3  = 0x80000d84, goto 0x80000d84
       0     3382        M 0x80000d84 lbu     a0, 1(s10)             #; s10 = 0x80002e0b, a0  <~~ Byte[0x80002e0c]
       0     3383        M 0x80000d88 li      a1, 108                #; (wrb) a1  <-- 108
       0     3393        M                                           #; (lsu) a0  <-- 117
       0     3394        M 0x80000d8c bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000e9c
       0     3406        M 0x80000e9c ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
       0     3418        M 0x80000ea0 addi    s10, s10, 1            #; s10 = 0x80002e0b, (wrb) s10 <-- 0x80002e0c
       0     3419        M 0x80000ea4 j       pc - 0x100             #; goto 0x80000da4
       0     3430        M 0x80000da4 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
       0     3431        M 0x80000da8 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3432        M 0x80000dac bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
       0     3442        M 0x80000db0 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
       0     3443        M 0x80000db4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db4
       0     3444        M 0x80000db8 addi    a2, a2, 204            #; a2  = 0x80002db4, (wrb) a2  <-- 0x80002e80
       0     3445        M 0x80000dbc add     a1, a1, a2             #; a1  = 320, a2  = 0x80002e80, (wrb) a1  <-- 0x80002fc0
       0     3454        M 0x80000dc0 lw      a2, 0(a1)              #; a1  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     3455        M 0x80000dc4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3456        M 0x80000dc8 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3465        M                                           #; (lsu) a2  <-- 0x80000dd0
       0     3466        M 0x80000dcc jr      a2                     #; a2  = 0x80000dd0
       0     3467        M 0x80000dd0 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
       0     3468        M 0x80000dd4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3469        M 0x80000dd8 li      a1, 88                 #; (wrb) a1  <-- 88
       0     3470        M 0x80000ddc bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000de4
       0     3479        M 0x80000de4 li      a1, 100                #; (wrb) a1  <-- 100
       0     3480        M 0x80000de8 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
       0     3481        M 0x80000dec mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
       0     3491        M 0x80000df0 li      a2, 105                #; (wrb) a2  <-- 105
       0     3492        M 0x80000df4 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
       0     3493        M 0x80000df8 j       pc + 0xd8              #; goto 0x80000ed0
       0     3503        M 0x80000ed0 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
       0     3504        M 0x80000ed4 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
       0     3505        M 0x80000ed8 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
       0     3506        M 0x80000edc beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000ee4
       0     3515        M 0x80000ee4 li      a1, 105                #; (wrb) a1  <-- 105
       0     3516        M 0x80000ee8 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
       0     3517        M 0x80000eec li      a1, 100                #; (wrb) a1  <-- 100
       0     3527        M 0x80000ef0 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80001028
       0     3550        M 0x80001028 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
       0     3551        M 0x8000102c bnez    a0, pc + 196           #; a0  = 0, not taken
       0     3562        M 0x80001030 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
       0     3563        M 0x80001034 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x800014b0
       0     3585        M 0x800014b0 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
       0     3588        M                                           #; (lsu) a0  <-- 95
       0     3589        M 0x800014b4 bnez    a0, pc + 8             #; a0  = 95, taken, goto 0x800014bc
       0     3590        M 0x800014bc seqz    a1, a0                 #; a0  = 95, (wrb) a1  <-- 0
       0     3597        M 0x800014c0 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
       0     3598        M 0x800014c4 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
       0     3599        M 0x800014c8 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     3600        M 0x800014cc li      a5, 0                  #; (wrb) a5  <-- 0
       0     3609        M 0x800014d0 bnez    a1, pc + 248           #; a1  = 0, not taken
       0     3610        M 0x800014d4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3611        M 0x800014d8 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
       0     3612        M 0x800014dc xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
       0     3621        M 0x800014e0 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
       0     3622        M 0x800014e4 j       pc + 0x34              #; goto 0x80001518
       0     3633        M 0x80001518 divu    a3, a0, s8             #; a0  = 95, s8  = 10
       0     3640        M                                           #; (acc) a4  <-- 0x03868733
       0     3641        M 0x8000151c mul     a4, a3, s8             #; a3  = 9, s8  = 10
       0     3645        M 0x80001520 sub     a4, a0, a4             #; a0  = 95, a4  = 90, (wrb) a4  <-- 5
       0     3646        M 0x80001524 andi    s1, a4, 254            #; a4  = 5, (wrb) s1  <-- 4
       0     3647        M 0x80001528 li      a5, 48                 #; (wrb) a5  <-- 48
       0     3648        M 0x8000152c li      a1, 10                 #; (wrb) a1  <-- 10
       0     3657        M 0x80001530 bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x800014e8
       0     3658        M 0x800014e8 add     a4, a5, a4             #; a5  = 48, a4  = 5, (wrb) a4  <-- 53
       0     3659        M 0x800014ec addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
       0     3670        M 0x800014f0 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     3671        M 0x800014f4 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
       0     3672        M 0x800014f8 sltu    a0, a0, s8             #; a0  = 95, s8  = 10, (wrb) a0  <-- 0
       0     3673        M 0x800014fc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3682        M 0x80001500 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
       0     3683        M 0x80001504 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     3684        M 0x80001508 sb      a4, 0(s1)              #; s1  = 0x0011febc, 53 ~~> Byte[0x0011febc]
       0     3685        M 0x8000150c mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
       0     3686        M 0x80001510 mv      a0, a3                 #; a3  = 9, (wrb) a0  <-- 9
       0     3687        M 0x80001514 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     3688        M 0x80001518 divu    a3, a0, s8             #; a0  = 9, s8  = 10
       0     3692        M                                           #; (acc) a4  <-- 0x03868733
       0     3693        M 0x8000151c mul     a4, a3, s8             #; a3  = 0, s8  = 10
       0     3696        M                                           #; (acc) a4  <-- 0x40e50733
       0     3697        M 0x80001520 sub     a4, a0, a4             #; a0  = 9, a4  = 0, (wrb) a4  <-- 9
       0     3698        M 0x80001524 andi    s1, a4, 254            #; a4  = 9, (wrb) s1  <-- 8
       0     3699        M 0x80001528 li      a5, 48                 #; (wrb) a5  <-- 48
       0     3700        M 0x8000152c li      a1, 10                 #; (wrb) a1  <-- 10
       0     3701        M 0x80001530 bltu    s1, a1, pc - 72        #; s1  = 8, a1  = 10, taken, goto 0x800014e8
       0     3702        M 0x800014e8 add     a4, a5, a4             #; a5  = 48, a4  = 9, (wrb) a4  <-- 57
       0     3703        M 0x800014ec addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
       0     3704        M 0x800014f0 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     3705        M 0x800014f4 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
       0     3706        M 0x800014f8 sltu    a0, a0, s8             #; a0  = 9, s8  = 10, (wrb) a0  <-- 1
       0     3707        M 0x800014fc xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
       0     3708        M 0x80001500 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
       0     3709        M 0x80001504 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
       0     3710        M 0x80001508 sb      a4, 0(s1)              #; s1  = 0x0011febd, 57 ~~> Byte[0x0011febd]
       0     3711        M 0x8000150c mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
       0     3712        M 0x80001510 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
       0     3713        M 0x80001514 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x800015c8
       0     3725        M 0x800015c8 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
       0     3726        M 0x800015cc addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
       0     3737        M 0x800015d0 mv      a0, s2                 #; s2  = 0x8000170c, (wrb) a0  <-- 0x8000170c
       0     3738        M 0x800015d4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3739        M 0x800015d8 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     3740        M 0x800015dc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3749        M 0x800015e0 li      a6, 0                  #; (wrb) a6  <-- 0
       0     3750        M 0x800015e4 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
       0     3751        M 0x800015e8 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
       0     3752        M 0x800015ec mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
       0     3761        M 0x800015f0 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
       0     3762        M 0x800015f4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800025f4
       0     3763        M 0x800015f8 jalr    ra, ra, -620           #; ra  = 0x800025f4, (wrb) ra  <-- 0x800015fc, goto 0x80002388
       0     3784        M 0x80002388 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
       0     3785        M 0x8000238c sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x800015fc ~~> Word[0x0011fe9c]
       0     3796        M 0x80002390 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
       0     3797        M 0x80002394 sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febd ~~> Word[0x0011fe94]
       0     3798        M 0x80002398 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x8000170c ~~> Word[0x0011fe90]
       0     3799        M 0x8000239c sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
       0     3808        M 0x800023a0 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3809        M 0x800023a4 sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
       0     3810        M 0x800023a8 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
       0     3811        M 0x800023ac sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
       0     3820        M 0x800023b0 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
       0     3821        M 0x800023b4 sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
       0     3822        M 0x800023b8 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002e0c ~~> Word[0x0011fe70]
       0     3823        M 0x800023bc sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
       0     3832        M 0x800023c0 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
       0     3833        M 0x800023c4 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
       0     3834        M 0x800023c8 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
       0     3835        M 0x800023cc mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
       0     3844        M 0x800023d0 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
       0     3845        M 0x800023d4 mv      s8, a5                 #; a5  = 2, (wrb) s8  <-- 2
       0     3846        M 0x800023d8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     3847        M 0x800023dc mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     3856        M 0x800023e0 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3857        M 0x800023e4 mv      s11, a0                #; a0  = 0x8000170c, (wrb) s11 <-- 0x8000170c
       0     3858        M 0x800023e8 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
       0     3859        M 0x800023ec bnez    s5, pc + 220           #; s5  = 0, not taken
       0     3868        M 0x800023f0 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
       0     3869        M 0x800023f4 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002410
       0     3891        M 0x80002410 li      s2, 0                  #; (wrb) s2  <-- 0
       0     3892        M 0x80002414 sltu    a0, s8, s10            #; s8  = 2, s10 = 0, (wrb) a0  <-- 0
       0     3893        M 0x80002418 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
       0     3894        M 0x8000241c li      a0, 31                 #; (wrb) a0  <-- 31
       0     3903        M 0x80002420 sltu    a2, a0, s8             #; a0  = 31, s8  = 2, (wrb) a2  <-- 0
       0     3904        M 0x80002424 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
       0     3905        M 0x80002428 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x80002470
       0     3926        M 0x80002470 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x800024c8
       0     3949        M 0x800024c8 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
       0     3950        M 0x800024cc beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x800025b0
       0     3972        M 0x800025b0 li      a0, 31                 #; (wrb) a0  <-- 31
       0     3973        M 0x800025b4 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 2, not taken
       0     3974        M 0x800025b8 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x800025cc
       0     3984        M 0x800025cc andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
       0     3996        M 0x800025d0 bnez    a0, pc + 28            #; a0  = 0, not taken
       0     3997        M 0x800025d4 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
       0     3998        M 0x800025d8 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x800025fc
       0     4019        M 0x800025fc andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
       0     4031        M 0x80002600 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     4032        M 0x80002604 sltu    a1, s8, s2             #; s8  = 2, s2  = 0, (wrb) a1  <-- 0
       0     4033        M 0x80002608 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4034        M 0x8000260c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4043        M 0x80002610 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     4044        M 0x80002614 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002640
       0     4066        M 0x80002640 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
       0     4067        M 0x80002644 beqz    s8, pc + 60            #; s8  = 2, not taken
       0     4068        M 0x80002648 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
       0     4071        M                                           #; (lsu) a0  <-- 0x0011febc
       0     4072        M 0x8000264c addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
       0     4078        M 0x80002650 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
       0     4079        M 0x80002654 lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
       0     4080        M 0x80002658 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
       0     4081        M 0x8000265c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4082        M                                           #; (lsu) a0  <-- 57
       0     4090        M 0x80002660 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4091        M 0x80002664 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4092        M 0x80002668 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4093        M 0x8000266c jalr    s11                    #; s11 = 0x8000170c, (wrb) ra  <-- 0x80002670, goto 0x8000170c
       0     4104        M 0x8000170c beqz    a0, pc + 168           #; a0  = 57, not taken
       0     4107        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4108        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4109        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4110        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4111        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4112        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4113        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4114        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4125        M                                           #; (lsu) a4  <-- 9
       0     4126        M 0x8000172c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4127        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
       0     4128        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
       0     4129        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a5, 57 ~~> Byte[0x800031ed]
       0     4130        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4151        M                                           #; (lsu) a4  <-- 10
       0     4152        M 0x80001740 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4153        M 0x80001744 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4154        M 0x80001748 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     4155        M 0x8000174c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     4156        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4157        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4161        M 0x800017b4 ret                            #; ra  = 0x80002670, goto 0x80002670
       0     4166        M 0x80002670 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4167        M 0x80002674 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
       0     4168        M 0x80002678 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x80002650
       0     4169        M 0x80002650 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
       0     4170        M 0x80002654 lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
       0     4171        M 0x80002658 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
       0     4172        M 0x8000265c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4173        M 0x80002660 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4174        M 0x80002664 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4175        M 0x80002668 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4176        M 0x8000266c jalr    s11                    #; s11 = 0x8000170c, (wrb) ra  <-- 0x80002670, goto 0x8000170c
       0     4177        M                                           #; (lsu) a0  <-- 53
       0     4179        M 0x8000170c beqz    a0, pc + 168           #; a0  = 53, not taken
       0     4182        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4183        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4184        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4185        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4186        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4187        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4188        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4189        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4200        M                                           #; (lsu) a4  <-- 10
       0     4201        M 0x8000172c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4202        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
       0     4203        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
       0     4204        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a6, 53 ~~> Byte[0x800031ee]
       0     4205        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4226        M                                           #; (lsu) a4  <-- 11
       0     4227        M 0x80001740 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4228        M 0x80001744 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4229        M 0x80001748 addi    a0, a0, -10            #; a0  = 53, (wrb) a0  <-- 43
       0     4230        M 0x8000174c snez    a0, a0                 #; a0  = 43, (wrb) a0  <-- 1
       0     4231        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4232        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4236        M 0x800017b4 ret                            #; ra  = 0x80002670, goto 0x80002670
       0     4241        M 0x80002670 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4242        M 0x80002674 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
       0     4243        M 0x80002678 bnez    s9, pc - 40            #; s9  = 0, not taken
       0     4244        M 0x8000267c j       pc + 0x8               #; goto 0x80002684
       0     4256        M 0x80002684 sub     a0, s1, s4             #; s1  = 11, s4  = 9, (wrb) a0  <-- 2
       0     4257        M 0x80002688 sltu    a0, a0, s2             #; a0  = 2, s2  = 0, (wrb) a0  <-- 0
       0     4258        M 0x8000268c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4268        M 0x80002690 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4269        M 0x80002694 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4270        M 0x80002698 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800026c8
       0     4291        M 0x800026c8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4292        M 0x800026cc mv      a0, s0                 #; s0  = 11, (wrb) a0  <-- 11
       0     4303        M 0x800026d0 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
       0     4306        M                                           #; (lsu) s11 <-- 16
       0     4307        M 0x800026d4 lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
       0     4310        M                                           #; (lsu) s10 <-- 0x80002e0c
       0     4311        M 0x800026d8 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
       0     4314        M                                           #; (lsu) s9  <-- 9
       0     4315        M 0x800026dc lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
       0     4318        M                                           #; (lsu) s8  <-- 10
       0     4319        M 0x800026e0 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
       0     4322        M                                           #; (lsu) s7  <-- 0
       0     4323        M 0x800026e4 lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
       0     4326        M                                           #; (lsu) s6  <-- 0
       0     4327        M 0x800026e8 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
       0     4330        M                                           #; (lsu) s5  <-- -1
       0     4331        M 0x800026ec lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
       0     4334        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4335        M 0x800026f0 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
       0     4338        M                                           #; (lsu) s3  <-- 0x0011ff28
       0     4339        M 0x800026f4 lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
       0     4342        M                                           #; (lsu) s2  <-- 0x8000170c
       0     4343        M 0x800026f8 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
       0     4346        M                                           #; (lsu) s1  <-- 0x0011febd
       0     4347        M 0x800026fc lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
       0     4350        M                                           #; (lsu) s0  <-- 256
       0     4351        M 0x80002700 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
       0     4352        M 0x80002704 addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
       0     4354        M                                           #; (lsu) ra  <-- 0x800015fc
       0     4355        M 0x80002708 ret                            #; ra  = 0x800015fc, goto 0x800015fc
       0     4371        M 0x800015fc mv      s8, a0                 #; a0  = 11, (wrb) s8  <-- 11
       0     4383        M 0x80001600 li      s6, 37                 #; (wrb) s6  <-- 37
       0     4384        M 0x80001604 li      s7, 46                 #; (wrb) s7  <-- 46
       0     4385        M 0x80001608 addi    s0, s10, 1             #; s10 = 0x80002e0c, (wrb) s0  <-- 0x80002e0d
       0     4386        M 0x8000160c j       pc - 0xa74             #; goto 0x80000b98
       0     4387        M 0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002e0d, (wrb) s10 <-- 0x80002e0f
       0     4388        M 0x80000b9c mv      s9, s8                 #; s8  = 11, (wrb) s9  <-- 11
       0     4390        M 0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     4391        M 0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002e0d, a0  <~~ Byte[0x80002e0d]
       0     4402        M                                           #; (lsu) a0  <-- 10
       0     4403        M 0x80000ba8 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     4404        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     4405        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 11, (wrb) s1  <-- 12
       0     4406        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4407        M 0x80000bb8 mv      a2, s9                 #; s9  = 11, (wrb) a2  <-- 11
       0     4408        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4409        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     4423        M 0x8000170c beqz    a0, pc + 168           #; a0  = 10, not taken
       0     4435        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4436        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4437        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4438        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4439        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4440        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4441        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4442        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4453        M                                           #; (lsu) a4  <-- 11
       0     4454        M 0x8000172c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4455        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
       0     4456        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
       0     4457        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a7, 10 ~~> Byte[0x800031ef]
       0     4458        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4479        M                                           #; (lsu) a4  <-- 12
       0     4480        M 0x80001740 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4481        M 0x80001744 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4482        M 0x80001748 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     4483        M 0x8000174c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     4484        M 0x80001750 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     4485        M 0x80001754 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     4486        M 0x80001758 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
       0     4487        M 0x8000175c addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
       0     4488        M 0x80001760 sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
       0     4489        M 0x80001764 li      a3, 64                 #; (wrb) a3  <-- 64
       0     4490        M 0x80001768 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
       0     4491        M 0x8000176c sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
       0     4500        M 0x80001770 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4501        M 0x80001774 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
       0     4502        M 0x80001778 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
       0     4504        M 0x8000177c sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
       0     4514        M 0x80001780 lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
       0     4515        M 0x80001784 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
       0     4516        M 0x80001788 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
       0     4536        M                                           #; (lsu) a2  <-- 12
       0     4537        M 0x8000178c sw      a2, 32(a0)             #; a0  = 0x8000319c, 12 ~~> Word[0x800031bc]
       0     4538        M 0x80001790 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003790
       0     4539        M 0x80001794 addi    a0, a0, -1872          #; a0  = 0x80003790, (wrb) a0  <-- 0x80003040
       0     4540        M 0x80001798 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
       0     4541        M 0x8000179c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000379c
       0     4550        M 0x800017a0 addi    a0, a0, -1820          #; a0  = 0x8000379c, (wrb) a0  <-- 0x80003080
       0     4551        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     4566        M                                           #; (lsu) a2  <-- 0
       0     4567        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     4568        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     4579        M                                           #; (lsu) a2  <-- 0
       0     4580        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     4581        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     4592        M                                           #; (lsu) a2  <-- 0
       0     4593        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     4594        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     4605        M                                           #; (lsu) a2  <-- 1
       0     4606        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     4607        M 0x800017ac sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
       0     4610        M 0x800017b0 sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     4611        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     4615        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e0d, (wrb) s0  <-- 0x80002e0e
       0     4616        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e0f, (wrb) s10 <-- 0x80002e10
       0     4617        M 0x80000bcc mv      s9, s1                 #; s1  = 12, (wrb) s9  <-- 12
       0     4618        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e0e, a0  <~~ Byte[0x80002e0e]
       0     4631        M                                           #; (lsu) a0  <-- 0
       0     4632        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     4633        M 0x80000bd8 j       pc + 0xad8             #; goto 0x800016b0
       0     4645        M 0x800016b0 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
       0     4646        M 0x800016b4 bltu    s9, s5, pc + 8         #; s9  = 12, s5  = -1, taken, goto 0x800016bc
       0     4647        M 0x800016bc li      a0, 0                  #; (wrb) a0  <-- 0
       0     4657        M 0x800016c0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4658        M 0x800016c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4659        M 0x800016c8 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x800016cc, goto 0x8000170c
       0     4671        M 0x8000170c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b4
       0     4676        M 0x800017b4 ret                            #; ra  = 0x800016cc, goto 0x800016cc
       0     4677        M 0x800016cc mv      a0, s9                 #; s9  = 12, (wrb) a0  <-- 12
       0     4678        M 0x800016d0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     4681        M                                           #; (lsu) s11 <-- 0
       0     4682        M 0x800016d4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     4685        M                                           #; (lsu) s10 <-- 0
       0     4686        M 0x800016d8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     4689        M                                           #; (lsu) s9  <-- 0
       0     4690        M 0x800016dc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     4693        M                                           #; (lsu) s8  <-- 0
       0     4694        M 0x800016e0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     4697        M                                           #; (lsu) s7  <-- 0
       0     4698        M 0x800016e4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     4701        M                                           #; (lsu) s6  <-- 0
       0     4702        M 0x800016e8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     4705        M                                           #; (lsu) s5  <-- 0
       0     4706        M 0x800016ec lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     4709        M                                           #; (lsu) s4  <-- 0
       0     4710        M 0x800016f0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     4713        M                                           #; (lsu) s3  <-- 0
       0     4714        M 0x800016f4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     4717        M                                           #; (lsu) s2  <-- 0
       0     4718        M 0x800016f8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     4721        M                                           #; (lsu) s1  <-- 0
       0     4722        M 0x800016fc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     4725        M                                           #; (lsu) s0  <-- 0
       0     4726        M 0x80001700 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     4727        M 0x80001704 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     4729        M                                           #; (lsu) ra  <-- 0x80000b08
       0     4730        M 0x80001708 ret                            #; ra  = 0x80000b08, goto 0x80000b08
       0     4733        M 0x80000b08 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     4734        M 0x80000b0c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     4736        M                                           #; (lsu) ra  <-- 0x80000a68
       0     4737        M 0x80000b10 ret                            #; ra  = 0x80000a68, goto 0x80000a68
       0     4741        M 0x80000a68 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a68
       0     4742        M 0x80000a6c addi    a0, a0, 1656           #; a0  = 0x80002a68, (wrb) a0  <-- 0x800030e0
       0     4746        M 0x80000a70 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e0]
       0     4755        M                                           #; (f:lsu) ft3  <-- -285.0
       0     4756        M 0x80000a80 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x80000a74 fadd.d  ft3, fs0, ft3          #; fs0  = 285.0, ft3  = -285.0
       0     4759        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4760        M 0x80000a84 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x80000a78 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     4761        M 0x80000a88 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a88
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     4762        M 0x80000a8c addi    a0, a0, 877            #; a0  = 0x80002a88, (wrb) a0  <-- 0x80002df5
                         M 0x80000a7c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     4763        M                                           #; (lsu) a3  <-- 0
       0     4768        M 0x80000a90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a90
       0     4769        M 0x80000a94 jalr    ra, ra, 40             #; ra  = 0x80000a90, (wrb) ra  <-- 0x80000a98, goto 0x80000ab8
       0     4773        M 0x80000ab8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     4774        M 0x80000abc sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a98 ~~> Word[0x0011ff1c]
       0     4776        M 0x80000ac0 mv      t0, a0                 #; a0  = 0x80002df5, (wrb) t0  <-- 0x80002df5
       0     4777        M 0x80000ac4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
       0     4778        M 0x80000ac8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
       0     4779        M 0x80000acc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 12 ~~> Word[0x0011ff34]
       0     4780        M 0x80000ad0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     4781        M 0x80000ad4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     4782        M 0x80000ad8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     4783        M 0x80000adc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     4784        M 0x80000ae0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     4785        M 0x80000ae4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     4786        M 0x80000ae8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae8
       0     4787        M 0x80000aec addi    a0, a0, -988           #; a0  = 0x80001ae8, (wrb) a0  <-- 0x8000170c
       0     4788        M 0x80000af0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     4789        M 0x80000af4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     4790        M 0x80000af8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     4791        M 0x80000afc mv      a3, t0                 #; t0  = 0x80002df5, (wrb) a3  <-- 0x80002df5
       0     4792        M 0x80000b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b00
       0     4793        M 0x80000b04 jalr    ra, ra, 20             #; ra  = 0x80000b00, (wrb) ra  <-- 0x80000b08, goto 0x80000b14
       0     4795        M 0x80000b14 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     4796        M 0x80000b18 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b08 ~~> Word[0x0011ff0c]
       0     4797        M 0x80000b1c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     4798        M 0x80000b20 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     4799        M 0x80000b24 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     4800        M 0x80000b28 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     4801        M 0x80000b2c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     4802        M 0x80000b30 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     4803        M 0x80000b34 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     4804        M 0x80000b38 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     4805        M 0x80000b3c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     4806        M 0x80000b40 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     4807        M 0x80000b44 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     4808        M 0x80000b48 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     4809        M 0x80000b4c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     4810        M 0x80000b50 mv      s0, a3                 #; a3  = 0x80002df5, (wrb) s0  <-- 0x80002df5
       0     4811        M 0x80000b54 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     4812        M 0x80000b58 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     4813        M 0x80000b5c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     4814        M 0x80000b60 mv      s2, a0                 #; a0  = 0x8000170c, (wrb) s2  <-- 0x8000170c
       0     4815        M 0x80000b64 j       pc + 0xc               #; goto 0x80000b70
       0     4817        M 0x80000b70 li      s8, 0                  #; (wrb) s8  <-- 0
       0     4818        M 0x80000b74 li      s6, 37                 #; (wrb) s6  <-- 37
       0     4819        M 0x80000b78 li      s11, 16                #; (wrb) s11 <-- 16
       0     4820        M 0x80000b7c li      s7, 46                 #; (wrb) s7  <-- 46
       0     4821        M 0x80000b80 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     4822        M 0x80000b84 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     4823        M 0x80000b88 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     4824        M 0x80000b8c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     4825        M 0x80000b90 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     4826        M 0x80000b94 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     4827        M 0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002df5, (wrb) s10 <-- 0x80002df7
       0     4828        M 0x80000b9c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     4829        M 0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     4830        M 0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002df5, a0  <~~ Byte[0x80002df5]
       0     4841        M                                           #; (lsu) a0  <-- 101
       0     4842        M 0x80000ba8 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     4843        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     4844        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     4845        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4846        M 0x80000bb8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     4847        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4848        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     4853        M 0x8000170c beqz    a0, pc + 168           #; a0  = 101, not taken
       0     4856        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4857        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4858        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4859        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4860        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4861        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4862        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4863        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4874        M                                           #; (lsu) a4  <-- 0
       0     4875        M 0x8000172c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     4876        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
       0     4877        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
       0     4878        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
       0     4879        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4900        M                                           #; (lsu) a4  <-- 1
       0     4901        M 0x80001740 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     4902        M 0x80001744 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     4903        M 0x80001748 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     4904        M 0x8000174c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     4905        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4906        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4910        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     4915        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df5, (wrb) s0  <-- 0x80002df6
       0     4916        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df7, (wrb) s10 <-- 0x80002df8
       0     4917        M 0x80000bcc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     4918        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df6, a0  <~~ Byte[0x80002df6]
       0     4929        M                                           #; (lsu) a0  <-- 114
       0     4930        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
       0     4931        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4934        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     4935        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4936        M 0x80000bb8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     4937        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4938        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     4941        M 0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4944        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4945        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4946        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4947        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     4948        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     4949        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4950        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4951        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4962        M                                           #; (lsu) a4  <-- 1
       0     4963        M 0x8000172c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     4964        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
       0     4965        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
       0     4966        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
       0     4967        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4988        M                                           #; (lsu) a4  <-- 2
       0     4989        M 0x80001740 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     4990        M 0x80001744 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     4991        M 0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4992        M 0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4993        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4994        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     4998        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5003        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df6, (wrb) s0  <-- 0x80002df7
       0     5004        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df8, (wrb) s10 <-- 0x80002df9
       0     5005        M 0x80000bcc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5006        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df7, a0  <~~ Byte[0x80002df7]
       0     5017        M                                           #; (lsu) a0  <-- 114
       0     5018        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
       0     5019        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5022        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5023        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5024        M 0x80000bb8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5025        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5026        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5029        M 0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5032        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5033        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5034        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5035        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5036        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5037        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5038        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5039        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5050        M                                           #; (lsu) a4  <-- 2
       0     5051        M 0x8000172c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5052        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
       0     5053        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
       0     5054        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
       0     5055        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5076        M                                           #; (lsu) a4  <-- 3
       0     5077        M 0x80001740 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5078        M 0x80001744 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5079        M 0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5080        M 0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5081        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5082        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     5086        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5091        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df7, (wrb) s0  <-- 0x80002df8
       0     5092        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df9, (wrb) s10 <-- 0x80002dfa
       0     5093        M 0x80000bcc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5094        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df8, a0  <~~ Byte[0x80002df8]
       0     5105        M                                           #; (lsu) a0  <-- 111
       0     5106        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000bac
       0     5107        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     5110        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5111        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5112        M 0x80000bb8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5113        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5114        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5117        M 0x8000170c beqz    a0, pc + 168           #; a0  = 111, not taken
       0     5120        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5121        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5122        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5123        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5124        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5125        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5126        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5127        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5138        M                                           #; (lsu) a4  <-- 3
       0     5139        M 0x8000172c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5140        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
       0     5141        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
       0     5142        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
       0     5143        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5164        M                                           #; (lsu) a4  <-- 4
       0     5165        M 0x80001740 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5166        M 0x80001744 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5167        M 0x80001748 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     5168        M 0x8000174c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     5169        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5170        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     5174        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5179        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df8, (wrb) s0  <-- 0x80002df9
       0     5180        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfa, (wrb) s10 <-- 0x80002dfb
       0     5181        M 0x80000bcc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5182        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df9, a0  <~~ Byte[0x80002df9]
       0     5193        M                                           #; (lsu) a0  <-- 114
       0     5194        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
       0     5195        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5198        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5199        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5200        M 0x80000bb8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5201        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5202        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5205        M 0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5208        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5209        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5210        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5211        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5212        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5213        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5214        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5215        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5226        M                                           #; (lsu) a4  <-- 4
       0     5227        M 0x8000172c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5228        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
       0     5229        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
       0     5230        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
       0     5231        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5252        M                                           #; (lsu) a4  <-- 5
       0     5253        M 0x80001740 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5254        M 0x80001744 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5255        M 0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5256        M 0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5257        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5258        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     5262        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5267        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df9, (wrb) s0  <-- 0x80002dfa
       0     5268        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfb, (wrb) s10 <-- 0x80002dfc
       0     5269        M 0x80000bcc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5270        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfa, a0  <~~ Byte[0x80002dfa]
       0     5281        M                                           #; (lsu) a0  <-- 32
       0     5282        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
       0     5283        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5286        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5287        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5288        M 0x80000bb8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5289        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5290        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5293        M 0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5296        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5297        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5298        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5299        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5300        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5301        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5302        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5303        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5314        M                                           #; (lsu) a4  <-- 5
       0     5315        M 0x8000172c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     5316        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
       0     5317        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
       0     5318        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
       0     5319        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5340        M                                           #; (lsu) a4  <-- 6
       0     5341        M 0x80001740 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     5342        M 0x80001744 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     5343        M 0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5344        M 0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5345        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5346        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     5350        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5355        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfa, (wrb) s0  <-- 0x80002dfb
       0     5356        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfc, (wrb) s10 <-- 0x80002dfd
       0     5357        M 0x80000bcc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     5358        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfb, a0  <~~ Byte[0x80002dfb]
       0     5369        M                                           #; (lsu) a0  <-- 61
       0     5370        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000bac
       0     5371        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     5374        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     5375        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5376        M 0x80000bb8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     5377        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5378        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5381        M 0x8000170c beqz    a0, pc + 168           #; a0  = 61, not taken
       0     5384        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5385        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5386        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5387        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5388        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5389        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5390        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5391        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5402        M                                           #; (lsu) a4  <-- 6
       0     5403        M 0x8000172c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     5404        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
       0     5405        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
       0     5406        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
       0     5407        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5428        M                                           #; (lsu) a4  <-- 7
       0     5429        M 0x80001740 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     5430        M 0x80001744 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     5431        M 0x80001748 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     5432        M 0x8000174c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     5433        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5434        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     5438        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5443        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfb, (wrb) s0  <-- 0x80002dfc
       0     5444        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfd, (wrb) s10 <-- 0x80002dfe
       0     5445        M 0x80000bcc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     5446        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfc, a0  <~~ Byte[0x80002dfc]
       0     5457        M                                           #; (lsu) a0  <-- 32
       0     5458        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
       0     5459        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5462        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     5463        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5464        M 0x80000bb8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     5465        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5466        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     5469        M 0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5472        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5473        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5474        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5475        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     5476        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     5477        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5478        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5479        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5490        M                                           #; (lsu) a4  <-- 7
       0     5491        M 0x8000172c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     5492        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
       0     5493        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
       0     5494        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
       0     5495        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5516        M                                           #; (lsu) a4  <-- 8
       0     5517        M 0x80001740 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     5518        M 0x80001744 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     5519        M 0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5520        M 0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5521        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5522        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     5526        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     5531        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfc, (wrb) s0  <-- 0x80002dfd
       0     5532        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfe, (wrb) s10 <-- 0x80002dff
       0     5533        M 0x80000bcc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     5534        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfd, a0  <~~ Byte[0x80002dfd]
       0     5545        M                                           #; (lsu) a0  <-- 37
       0     5546        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000bac
       0     5547        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bdc
       0     5548        M 0x80000bdc li      s0, 0                  #; (wrb) s0  <-- 0
       0     5552        M 0x80000be0 j       pc + 0x10              #; goto 0x80000bf0
       0     5555        M 0x80000bf0 lbu     a0, -1(s10)            #; s10 = 0x80002dff, a0  <~~ Byte[0x80002dfe]
       0     5566        M                                           #; (lsu) a0  <-- 102
       0     5567        M 0x80000bf4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     5568        M 0x80000bf8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c30
       0     5571        M 0x80000c30 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     5572        M 0x80000c34 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     5573        M 0x80000c38 addi    a1, s10, -1            #; s10 = 0x80002dff, (wrb) a1  <-- 0x80002dfe
       0     5574        M 0x80000c3c li      a3, 9                  #; (wrb) a3  <-- 9
       0     5575        M 0x80000c40 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cbc
       0     5580        M 0x80000cbc li      a2, 42                 #; (wrb) a2  <-- 42
       0     5583        M 0x80000cc0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d10
       0     5588        M 0x80000d10 li      s6, 0                  #; (wrb) s6  <-- 0
       0     5589        M 0x80000d14 mv      s10, a1                #; a1  = 0x80002dfe, (wrb) s10 <-- 0x80002dfe
       0     5590        M 0x80000d18 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     5591        M 0x80000d1c li      s7, 0                  #; (wrb) s7  <-- 0
       0     5594        M 0x80000d20 j       pc + 0xc               #; goto 0x80000d2c
       0     5595        M 0x80000d2c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     5598        M 0x80000d30 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     5599        M 0x80000d34 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     5600        M 0x80000d38 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     5601        M 0x80000d3c li      a2, 9                  #; (wrb) a2  <-- 9
       0     5602        M 0x80000d40 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000da4
       0     5607        M 0x80000da4 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     5608        M 0x80000da8 li      a2, 83                 #; (wrb) a2  <-- 83
       0     5609        M 0x80000dac bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     5610        M 0x80000db0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     5611        M 0x80000db4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db4
       0     5612        M 0x80000db8 addi    a2, a2, 204            #; a2  = 0x80002db4, (wrb) a2  <-- 0x80002e80
       0     5613        M 0x80000dbc add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e80, (wrb) a1  <-- 0x80002f84
       0     5614        M 0x80000dc0 lw      a2, 0(a1)              #; a1  = 0x80002f84, a2  <~~ Word[0x80002f84]
       0     5615        M 0x80000dc4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     5616        M 0x80000dc8 li      s8, 16                 #; (wrb) s8  <-- 16
       0     5625        M                                           #; (lsu) a2  <-- 0x80000dfc
       0     5626        M 0x80000dcc jr      a2                     #; a2  = 0x80000dfc, goto 0x80000dfc
       0     5629        M 0x80000dfc li      a1, 70                 #; (wrb) a1  <-- 70
       0     5641        M 0x80000e00 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e08
       0     5642        M 0x80000e08 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     5643        M 0x80000e0c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     5654        M 0x80000e14 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     5655        M 0x80000e18 mv      a0, s2                 #; s2  = 0x8000170c, (wrb) a0  <-- 0x8000170c
                         M 0x80000e10 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     5656        M 0x80000e1c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     5665        M 0x80000e20 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     5666        M 0x80000e24 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5667        M 0x80000e28 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     5668        M 0x80000e2c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     5677        M 0x80000e30 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     5678        M 0x80000e34 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e34
       0     5679        M 0x80000e38 jalr    ra, ra, -1656          #; ra  = 0x80001e34, (wrb) ra  <-- 0x80000e3c, goto 0x800017bc
       0     5682        M 0x800017bc addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     5685        M 0x800017c0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e3c ~~> Word[0x0011fe9c]
       0     5686        M 0x800017c4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     5687        M 0x800017c8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     5688        M 0x800017cc sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000170c ~~> Word[0x0011fe90]
       0     5697        M 0x800017d0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     5698        M 0x800017d4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     5699        M 0x800017d8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     5700        M 0x800017dc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     5709        M 0x800017e0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     5710        M 0x800017e4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     5711        M 0x800017e8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     5712        M 0x800017ec sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dfe ~~> Word[0x0011fe70]
       0     5723        M 0x800017f0 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     5724        M 0x800017fc auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037fc
                         M 0x800017f4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     5725        M 0x800017f8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     5733        M 0x80001800 addi    s1, s1, -1804          #; s1  = 0x800037fc, (wrb) s1  <-- 0x800030f0
       0     5736        M 0x8000180c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001804 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
       0     5745        M 0x80001810 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5746        M 0x80001814 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001808 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     5747        M 0x80001818 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     5748        M 0x8000181c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     5757        M 0x80001820 mv      s7, a0                 #; a0  = 0x8000170c, (wrb) s7  <-- 0x8000170c
       0     5758        M 0x80001824 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001914
       0     5781        M 0x80001918 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002918
       0     5782        M 0x8000191c addi    a0, a0, 2016           #; a0  = 0x80002918, (wrb) a0  <-- 0x800030f8
                         M 0x80001914 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     5783        M                                           #; (f:fpu) fs0  <-- 0.0
       0     5794        M 0x80001920 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
       0     5803        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5804        M 0x80001924 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5806        M                                           #; (acc) t3  <-- 0x00051e63
       0     5807        M 0x80001928 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001944
       0     5819        M 0x80001944 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002944
       0     5820        M 0x80001948 addi    a0, a0, 1980           #; a0  = 0x80002944, (wrb) a0  <-- 0x80003100
       0     5823        M 0x8000194c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
       0     5831        M 0x80001950 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002950
       0     5832        M 0x80001954 addi    a0, a0, 1976           #; a0  = 0x80002950, (wrb) a0  <-- 0x80003108
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     5835        M 0x80001958 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
       0     5836        M 0x8000195c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     5844        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     5845        M 0x80001960 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     5847        M                                           #; (acc) a0  <-- 0x00b57533
       0     5848        M 0x80001964 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5849        M 0x80001968 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a64
       0     5866        M 0x80001a64 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     5867        M 0x80001a68 li      s8, 6                  #; (wrb) s8  <-- 6
       0     5868        M 0x80001a6c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a74
       0     5878        M 0x80001a74 li      a0, 10                 #; (wrb) a0  <-- 10
       0     5880        M 0x80001a7c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ab4
       0     5881        M 0x80001a78 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     5882        M                                           #; (f:fpu) fs2  <-- 0.0
       0     5901        M 0x80001ab4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     5902        M 0x80001ab8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     5903        M 0x80001abc auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002abc
       0     5913        M 0x80001ac0 addi    a1, a1, 1300           #; a1  = 0x80002abc, (wrb) a1  <-- 0x80002fd0
       0     5914        M 0x80001ac4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fd0, (wrb) a0  <-- 0x80003000
       0     5917        M 0x80001ac8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003000]
       0     5918        M 0x80001acc fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     5926        M 0x80001ad0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     5927        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5928        M 0x80001adc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002adc
                         M 0x80001ad4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5931        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5932        M 0x80001ad8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     5935        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5937        M 0x80001ae0 addi    a0, a0, 1588           #; a0  = 0x80002adc, (wrb) a0  <-- 0x80003110
       0     5940        M 0x80001ae4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
       0     5941        M 0x80001ae8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     5943        M                                           #; (acc) gp  <-- 0xd21501d3
       0     5945        M 0x80001aec fcvt.d.wu ft3, a0              #; ac1  = 0
       0     5946        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5949        M                                           #; (f:lsu) ft0  <-- 0.5
       0     5951        M 0x80001af0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     5954        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5955        M 0x80001af4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5958        M 0x80001af8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b18
       0     5973        M 0x80001b18 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5975        M                                           #; (acc) s4  <-- 0x00059a63
       0     5976        M 0x80001b1c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b30
       0     5996        M 0x80001b34 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001b30 fcvt.d.w fs1, zero             #; ac1  = 0
       0     5997        M 0x80001b38 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     5998        M 0x80001b3c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6007        M 0x80001b40 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     6008        M 0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
       0     6009        M 0x80001b48 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     6010        M 0x80001b4c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     6019        M 0x80001b50 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     6020        M 0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
       0     6021        M 0x80001b58 li      a7, 9                  #; (wrb) a7  <-- 9
       0     6022        M 0x80001b5c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     6031        M 0x80001b60 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     6032        M 0x80001b64 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     6035        M                                           #; (acc) a0  <-- 0x00355513
       0     6036        M 0x80001b68 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     6037        M 0x80001b6c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     6043        M 0x80001b70 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     6044        M 0x80001b74 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     6045        M 0x80001b78 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     6046        M 0x80001b7c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     6055        M 0x80001b80 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     6056        M 0x80001b84 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     6057        M 0x80001b88 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     6058        M 0x80001b8c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     6069        M 0x80001b90 li      a3, 30                 #; (wrb) a3  <-- 30
       0     6070        M 0x80001b94 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     6071        M 0x80001b98 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     6072        M 0x80001b9c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     6081        M 0x80001ba0 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     6082        M 0x80001ba4 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     6083        M 0x80001ba8 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     6084        M 0x80001bac add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     6093        M 0x80001bb0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     6094        M 0x80001bb4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     6095        M 0x80001bb8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     6096        M 0x80001bbc li      a1, 31                 #; (wrb) a1  <-- 31
       0     6105        M 0x80001bc0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     6106        M 0x80001bc4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     6107        M 0x80001bc8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     6108        M 0x80001bcc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bd4
       0     6117        M 0x80001bd4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     6118        M 0x80001bd8 li      a1, 48                 #; (wrb) a1  <-- 48
       0     6119        M 0x80001bdc auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000bdc
       0     6129        M 0x80001be0 jalr    ra, ra, -1668          #; ra  = 0x80000bdc, (wrb) ra  <-- 0x80001be4, goto 0x80000558
       0     6152        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     6153        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     6164        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     6187        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     6199        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     6200        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     6201        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     6202        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     6222        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     6223        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     6234        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     6235        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     6236        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     6237        M 0x800005ec ret                            #; ra  = 0x80001be4, goto 0x80001be4
       0     6248        M 0x80001be4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6249        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     6250        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     6251        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     6252        M 0x80001bf4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     6253        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6254        M 0x80001bfc addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6263        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     6264        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     6265        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     6266        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     6267        M 0x80001bf4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     6268        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6269        M 0x80001bfc addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     6270        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     6271        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     6272        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     6273        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     6274        M 0x80001bf4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     6275        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6276        M 0x80001bfc addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     6277        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     6278        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     6279        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     6280        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     6281        M 0x80001bf4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     6282        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6283        M 0x80001bfc addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     6284        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
       0     6285        M 0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     6286        M 0x80001bec sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     6287        M 0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     6288        M 0x80001bf4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     6289        M 0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     6290        M 0x80001bfc addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     6291        M 0x80001c00 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     6292        M 0x80001c04 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     6293        M 0x80001c08 j       pc + 0x28              #; goto 0x80001c30
       0     6304        M 0x80001c30 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     6305        M 0x80001c34 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     6306        M 0x80001c38 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6307        M 0x80001c3c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     6316        M 0x80001c40 li      a1, 46                 #; (wrb) a1  <-- 46
       0     6317        M 0x80001c44 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     6318        M 0x80001c48 j       pc + 0x8               #; goto 0x80001c50
       0     6328        M 0x80001c50 li      a0, 32                 #; (wrb) a0  <-- 32
       0     6329        M 0x80001c54 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     6330        M 0x80001c58 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     6331        M 0x80001c5c li      t0, 32                 #; (wrb) t0  <-- 32
       0     6341        M 0x80001c64 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001c60 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     6342        M 0x80001c68 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     6343        M 0x80001c6c li      a6, 10                 #; (wrb) a6  <-- 10
       0     6352        M 0x80001c70 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     6353        M 0x80001c74 li      a4, 18                 #; (wrb) a4  <-- 18
       0     6354        M 0x80001c78 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     6355        M 0x80001c7c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     6364        M 0x80001c80 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     6365        M 0x80001c84 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     6366        M 0x80001c88 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     6367        M 0x80001c8c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     6376        M 0x80001c90 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     6377        M 0x80001c94 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     6378        M 0x80001c98 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     6379        M 0x80001c9c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     6388        M 0x80001ca0 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     6389        M 0x80001ca4 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     6390        M 0x80001ca8 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     6391        M 0x80001cac mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     6400        M 0x80001cb0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     6401        M 0x80001cb4 j       pc + 0x8               #; goto 0x80001cbc
       0     6402        M 0x80001cbc andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     6414        M 0x80001cc0 li      a0, 1                  #; (wrb) a0  <-- 1
       0     6415        M 0x80001cc4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d30
       0     6437        M 0x80001d30 li      a0, 31                 #; (wrb) a0  <-- 31
       0     6438        M 0x80001d34 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     6439        M 0x80001d38 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d50
       0     6460        M 0x80001d50 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     6461        M 0x80001d54 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     6462        M 0x80001d58 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     6463        M 0x80001d5c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d88
       0     6483        M 0x80001d88 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     6484        M 0x80001d8c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     6495        M 0x80001d90 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     6496        M 0x80001d94 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     6497        M 0x80001d98 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     6498        M 0x80001d9c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     6507        M 0x80001da0 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dcc
       0     6530        M 0x80001dcc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     6542        M 0x80001dd0 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     6543        M 0x80001dd4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     6544        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     6545        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     6548        M                                           #; (lsu) a0  <-- 48
       0     6554        M 0x80001de0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     6555        M 0x80001de4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     6556        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6557        M 0x80001dec mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     6566        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6567        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     6580        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6583        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6584        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6585        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6586        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     6587        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     6588        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6589        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     6590        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6601        M                                           #; (lsu) a4  <-- 8
       0     6602        M 0x8000172c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6603        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
       0     6604        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
       0     6605        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a4, 48 ~~> Byte[0x800031ec]
       0     6606        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6627        M                                           #; (lsu) a4  <-- 9
       0     6628        M 0x80001740 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6629        M 0x80001744 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6630        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6631        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6632        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6633        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     6637        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     6642        M 0x80001df8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     6643        M 0x80001dfc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     6645        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001dd8
       0     6648        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     6649        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     6651        M 0x80001de0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     6652        M 0x80001de4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     6653        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6654        M 0x80001dec mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     6655        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6656        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     6657        M                                           #; (lsu) a0  <-- 46
       0     6659        M 0x8000170c beqz    a0, pc + 168           #; a0  = 46, not taken
       0     6662        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6663        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6664        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6665        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     6666        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     6667        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6668        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     6669        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6680        M                                           #; (lsu) a4  <-- 9
       0     6681        M 0x8000172c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     6682        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
       0     6683        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
       0     6684        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a5, 46 ~~> Byte[0x800031ed]
       0     6685        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6706        M                                           #; (lsu) a4  <-- 10
       0     6707        M 0x80001740 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     6708        M 0x80001744 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     6709        M 0x80001748 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     6710        M 0x8000174c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     6711        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6712        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     6716        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     6721        M 0x80001df8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     6722        M 0x80001dfc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     6724        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001dd8
       0     6727        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     6728        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     6730        M 0x80001de0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     6731        M 0x80001de4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     6732        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6733        M 0x80001dec mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     6734        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6735        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     6736        M                                           #; (lsu) a0  <-- 48
       0     6738        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6741        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6742        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6743        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6744        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     6745        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     6746        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6747        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     6748        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6759        M                                           #; (lsu) a4  <-- 10
       0     6760        M 0x8000172c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     6761        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
       0     6762        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
       0     6763        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a6, 48 ~~> Byte[0x800031ee]
       0     6764        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6785        M                                           #; (lsu) a4  <-- 11
       0     6786        M 0x80001740 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     6787        M 0x80001744 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     6788        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6789        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6790        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6791        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     6795        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     6800        M 0x80001df8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     6801        M 0x80001dfc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     6803        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001dd8
       0     6806        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     6807        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     6809        M 0x80001de0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     6810        M 0x80001de4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     6811        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6812        M 0x80001dec mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     6813        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6814        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     6815        M                                           #; (lsu) a0  <-- 48
       0     6817        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6820        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6821        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6822        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6823        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     6824        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     6825        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6826        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     6827        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6838        M                                           #; (lsu) a4  <-- 11
       0     6839        M 0x8000172c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6840        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
       0     6841        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
       0     6842        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a7, 48 ~~> Byte[0x800031ef]
       0     6843        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6864        M                                           #; (lsu) a4  <-- 12
       0     6865        M 0x80001740 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     6866        M 0x80001744 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     6867        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6868        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6869        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6870        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     6874        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     6879        M 0x80001df8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     6880        M 0x80001dfc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     6882        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001dd8
       0     6885        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     6886        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     6888        M 0x80001de0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     6889        M 0x80001de4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     6890        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6891        M 0x80001dec mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     6892        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6893        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     6894        M                                           #; (lsu) a0  <-- 48
       0     6896        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6899        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6900        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6901        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6902        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     6903        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     6904        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6905        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     6906        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6917        M                                           #; (lsu) a4  <-- 12
       0     6918        M 0x8000172c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     6919        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
       0     6920        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
       0     6921        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a8, 48 ~~> Byte[0x800031f0]
       0     6922        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6943        M                                           #; (lsu) a4  <-- 13
       0     6944        M 0x80001740 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     6945        M 0x80001744 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     6946        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6947        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6948        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6949        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     6953        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     6958        M 0x80001df8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     6959        M 0x80001dfc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     6961        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001dd8
       0     6964        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     6965        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     6967        M 0x80001de0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     6968        M 0x80001de4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     6969        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6970        M 0x80001dec mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     6971        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6972        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     6973        M                                           #; (lsu) a0  <-- 48
       0     6975        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6978        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6979        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6980        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6981        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     6982        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     6983        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6984        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     6985        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     6996        M                                           #; (lsu) a4  <-- 13
       0     6997        M 0x8000172c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     6998        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
       0     6999        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
       0     7000        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
       0     7001        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7022        M                                           #; (lsu) a4  <-- 14
       0     7023        M 0x80001740 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7024        M 0x80001744 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7025        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7026        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7027        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7028        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     7032        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     7037        M 0x80001df8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7038        M 0x80001dfc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7040        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001dd8
       0     7043        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     7044        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     7046        M 0x80001de0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7047        M 0x80001de4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7048        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7049        M 0x80001dec mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7050        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7051        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     7052        M                                           #; (lsu) a0  <-- 48
       0     7054        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7057        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7058        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7059        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7060        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     7061        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     7062        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7063        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     7064        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7075        M                                           #; (lsu) a4  <-- 14
       0     7076        M 0x8000172c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     7077        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
       0     7078        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
       0     7079        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031aa, 48 ~~> Byte[0x800031f2]
       0     7080        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7101        M                                           #; (lsu) a4  <-- 15
       0     7102        M 0x80001740 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     7103        M 0x80001744 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     7104        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7105        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7106        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7107        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     7111        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     7116        M 0x80001df8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     7117        M 0x80001dfc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     7119        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001dd8
       0     7122        M 0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     7123        M 0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     7125        M 0x80001de0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     7126        M 0x80001de4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     7127        M 0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7128        M 0x80001dec mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     7129        M 0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7130        M 0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
       0     7131        M                                           #; (lsu) a0  <-- 48
       0     7133        M 0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7136        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7137        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7138        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7139        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     7140        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     7141        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7142        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     7143        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7154        M                                           #; (lsu) a4  <-- 15
       0     7155        M 0x8000172c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     7156        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
       0     7157        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
       0     7158        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
       0     7159        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7180        M                                           #; (lsu) a4  <-- 16
       0     7181        M 0x80001740 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     7182        M 0x80001744 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     7183        M 0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7184        M 0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7185        M 0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7186        M 0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
       0     7190        M 0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
       0     7195        M 0x80001df8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7196        M 0x80001dfc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     7198        M 0x80001e00 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     7199        M 0x80001e04 j       pc + 0x8               #; goto 0x80001e0c
       0     7200        M 0x80001e0c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     7212        M 0x80001e10 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     7213        M 0x80001e14 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7214        M 0x80001e18 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7215        M 0x80001e1c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7224        M 0x80001e20 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e50
       0     7247        M 0x80001e50 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7248        M 0x80001e54 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     7251        M 0x80001e58 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     7252        M 0x80001e5c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     7253        M                                           #; (f:lsu) fs1  <-- 0.0
       0     7260        M 0x80001e64 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     7261        M 0x80001e60 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0     7262        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7264        M                                           #; (lsu) s10 <-- 0x80002dfe
       0     7265        M 0x80001e68 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     7268        M                                           #; (lsu) s9  <-- 8
       0     7269        M 0x80001e6c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     7272        M                                           #; (lsu) s8  <-- 16
       0     7273        M 0x80001e70 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     7276        M                                           #; (lsu) s7  <-- 0
       0     7277        M 0x80001e74 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     7280        M                                           #; (lsu) s6  <-- 0
       0     7281        M 0x80001e78 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     7284        M                                           #; (lsu) s5  <-- -1
       0     7285        M 0x80001e7c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     7288        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7289        M 0x80001e80 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     7292        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     7293        M 0x80001e84 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     7296        M                                           #; (lsu) s2  <-- 0x8000170c
       0     7297        M 0x80001e88 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     7300        M                                           #; (lsu) s1  <-- 8
       0     7301        M 0x80001e8c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     7304        M                                           #; (lsu) s0  <-- 0
       0     7305        M 0x80001e90 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     7306        M 0x80001e94 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     7308        M                                           #; (lsu) ra  <-- 0x80000e3c
       0     7309        M 0x80001e98 ret                            #; ra  = 0x80000e3c, goto 0x80000e3c
       0     7317        M 0x80000e3c j       pc + 0x7c0             #; goto 0x800015fc
       0     7320        M 0x800015fc mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     7323        M 0x80001600 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7324        M 0x80001604 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7325        M 0x80001608 addi    s0, s10, 1             #; s10 = 0x80002dfe, (wrb) s0  <-- 0x80002dff
       0     7326        M 0x8000160c j       pc - 0xa74             #; goto 0x80000b98
       0     7327        M 0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002dff, (wrb) s10 <-- 0x80002e01
       0     7328        M 0x80000b9c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     7330        M 0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7331        M 0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002dff, a0  <~~ Byte[0x80002dff]
       0     7342        M                                           #; (lsu) a0  <-- 10
       0     7343        M 0x80000ba8 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7344        M 0x80000bac beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7345        M 0x80000bb0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     7346        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7347        M 0x80000bb8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     7348        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7349        M 0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
       0     7354        M 0x8000170c beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7357        M 0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7358        M 0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7359        M 0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7360        M 0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
       0     7361        M 0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
       0     7362        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7363        M 0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     7364        M 0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7375        M                                           #; (lsu) a4  <-- 16
       0     7376        M 0x8000172c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     7377        M 0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
       0     7378        M 0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
       0     7379        M 0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031ac, 10 ~~> Byte[0x800031f4]
       0     7380        M 0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     7401        M                                           #; (lsu) a4  <-- 17
       0     7402        M 0x80001740 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     7403        M 0x80001744 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     7404        M 0x80001748 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7405        M 0x8000174c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7406        M 0x80001750 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7407        M 0x80001754 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7408        M 0x80001758 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
       0     7409        M 0x8000175c addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
       0     7410        M 0x80001760 sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
       0     7411        M 0x80001764 li      a3, 64                 #; (wrb) a3  <-- 64
       0     7412        M 0x80001768 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
       0     7413        M 0x8000176c sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
       0     7414        M 0x80001770 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7415        M 0x80001774 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
       0     7424        M 0x80001778 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
       0     7426        M 0x8000177c sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
       0     7436        M 0x80001780 lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
       0     7437        M 0x80001784 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
       0     7438        M 0x80001788 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
       0     7458        M                                           #; (lsu) a2  <-- 17
       0     7459        M 0x8000178c sw      a2, 32(a0)             #; a0  = 0x8000319c, 17 ~~> Word[0x800031bc]
       0     7460        M 0x80001790 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003790
       0     7461        M 0x80001794 addi    a0, a0, -1872          #; a0  = 0x80003790, (wrb) a0  <-- 0x80003040
       0     7462        M 0x80001798 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
       0     7463        M 0x8000179c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000379c
       0     7464        M 0x800017a0 addi    a0, a0, -1820          #; a0  = 0x8000379c, (wrb) a0  <-- 0x80003080
       0     7465        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     7488        M                                           #; (lsu) a2  <-- 0
       0     7489        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     7490        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     7501        M                                           #; (lsu) a2  <-- 0
       0     7502        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
       0     7503        M 0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     7514        M                                           #; (lsu) a2  <-- 1
       0     7515        M 0x800017a8 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     7516        M 0x800017ac sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
       0     7519        M 0x800017b0 sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     7520        M 0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
       0     7524        M 0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dff, (wrb) s0  <-- 0x80002e00
       0     7525        M 0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e01, (wrb) s10 <-- 0x80002e02
       0     7526        M 0x80000bcc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     7527        M 0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e00, a0  <~~ Byte[0x80002e00]
       0     7540        M                                           #; (lsu) a0  <-- 0
       0     7541        M 0x80000bd4 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     7542        M 0x80000bd8 j       pc + 0xad8             #; goto 0x800016b0
       0     7545        M 0x800016b0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     7546        M 0x800016b4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016bc
       0     7547        M 0x800016bc li      a0, 0                  #; (wrb) a0  <-- 0
       0     7548        M 0x800016c0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7549        M 0x800016c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7550        M 0x800016c8 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x800016cc, goto 0x8000170c
       0     7553        M 0x8000170c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b4
       0     7558        M 0x800017b4 ret                            #; ra  = 0x800016cc, goto 0x800016cc
       0     7559        M 0x800016cc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     7560        M 0x800016d0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     7563        M                                           #; (lsu) s11 <-- 0
       0     7564        M 0x800016d4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     7567        M                                           #; (lsu) s10 <-- 0
       0     7568        M 0x800016d8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     7571        M                                           #; (lsu) s9  <-- 0
       0     7572        M 0x800016dc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     7575        M                                           #; (lsu) s8  <-- 0
       0     7576        M 0x800016e0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     7579        M                                           #; (lsu) s7  <-- 0
       0     7580        M 0x800016e4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     7583        M                                           #; (lsu) s6  <-- 0
       0     7584        M 0x800016e8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     7587        M                                           #; (lsu) s5  <-- 0
       0     7588        M 0x800016ec lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     7591        M                                           #; (lsu) s4  <-- 0
       0     7592        M 0x800016f0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     7595        M                                           #; (lsu) s3  <-- 0
       0     7596        M 0x800016f4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     7599        M                                           #; (lsu) s2  <-- 0
       0     7600        M 0x800016f8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     7603        M                                           #; (lsu) s1  <-- 0
       0     7604        M 0x800016fc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     7607        M                                           #; (lsu) s0  <-- 0
       0     7608        M 0x80001700 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     7609        M 0x80001704 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     7611        M                                           #; (lsu) ra  <-- 0x80000b08
       0     7612        M 0x80001708 ret                            #; ra  = 0x80000b08, goto 0x80000b08
       0     7615        M 0x80000b08 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     7616        M 0x80000b0c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     7618        M                                           #; (lsu) ra  <-- 0x80000a98
       0     7619        M 0x80000b10 ret                            #; ra  = 0x80000a98, goto 0x80000a98
       0     7623        M 0x80000a98 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a98
       0     7624        M 0x80000a9c addi    a0, a0, 1616           #; a0  = 0x80002a98, (wrb) a0  <-- 0x800030e8
       0     7628        M 0x80000aa0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e8]
       0     7629        M 0x80000aac lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     7630        M 0x80000ab0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     7637        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     7638        M 0x80000aa4 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     7639        M                                           #; (lsu) ra  <-- 0x80002b70
       0     7640        M 0x80000ab4 ret                            #; ra  = 0x80002b70, goto 0x80002b70
                         M 0x80000aa8 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     7641        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7653        M 0x80002b70 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     7654        M 0x80002b74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b74
       0     7655        M 0x80002b78 jalr    ra, ra, 524            #; ra  = 0x80002b74, (wrb) ra  <-- 0x80002b7c, goto 0x80002d80
       0     7667        M 0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7668        M 0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b7c ~~> Word[0x0011ff5c]
       0     7669        M 0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
       0     7670        M 0x80002d8c jalr    ra, ra, -1268          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x80002894
       0     7681        M 0x80002894 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7682        M 0x80002898 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7683        M 0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7686        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7687        M 0x800028a0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7690        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7691        M 0x800028a4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7692        M 0x800028a8 ret                            #; ra  = 0x80002d90, goto 0x80002d90
       0     7694        M                                           #; (lsu) a0  <-- 0x00120190
       0     7695        M 0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7705        M                                           #; (lsu) a0  <-- 0
       0     7706        M 0x80002d94 mv      zero, a0               #; a0  = 0
       0     7707        M 0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7708        M 0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7710        M                                           #; (lsu) ra  <-- 0x80002b7c
       0     7711        M 0x80002da0 ret                            #; ra  = 0x80002b7c, goto 0x80002b7c
       0     7714        M 0x80002b7c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     7718        M 0x80002b80 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b80
       0     7719        M 0x80002b84 jalr    ra, ra, 556            #; ra  = 0x80002b80, (wrb) ra  <-- 0x80002b88, goto 0x80002dac
       0     7720        M 0x80002dac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7721        M 0x80002db0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     7722        M 0x80002db4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b88 ~~> Word[0x0011ff5c]
       0     7723        M 0x80002db8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002db8
       0     7724        M 0x80002dbc jalr    ra, ra, -1348          #; ra  = 0x80002db8, (wrb) ra  <-- 0x80002dc0, goto 0x80002874
       0     7737        M 0x80002874 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7738        M 0x80002878 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7739        M 0x8000287c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7742        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7743        M 0x80002880 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7746        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7747        M 0x80002884 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7748        M 0x80002888 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7750        M                                           #; (lsu) a0  <-- 0
       0     7751        M 0x8000288c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7752        M 0x80002890 ret                            #; ra  = 0x80002dc0, goto 0x80002dc0
       0     7753        M 0x80002dc0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7756        M                                           #; (lsu) t0  <-- 0
       0     7757        M 0x80002dc4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7758        M 0x80002dc8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7759        M 0x80002dcc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7760        M                                           #; (lsu) ra  <-- 0x80002b88
       0     7767        M 0x80002dd0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     7768        M 0x80002dd4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     7769        M 0x80002dd8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dd8
       0     7770        M 0x80002ddc addi    t1, t1, 616            #; t1  = 0x80002dd8, (wrb) t1  <-- 0x80003040
       0     7778        M 0x80002de0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
       0     7779        M 0x80002de4 ret                            #; ra  = 0x80002b88, goto 0x80002b88
       0     7793        M 0x80002b88 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 1998):
snitch_loads                                    38
snitch_stores                                   50
fpss_stores                                      1
fpss_loads                                      18
snitch_avg_load_latency                    17.9737
snitch_occupancy                            0.1545
snitch_fseq_rel_offloads                    0.2005
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                       9.0556
fpss_occupancy                              0.0388
fpss_fpu_occupancy                          0.0272
fpss_fpu_rel_occupancy                      0.7013
cycles                                        1987
total_ipc                                   0.1933

Performance metrics for section 1 @ (2000, 2093):
snitch_loads                                     0
fpss_loads                                       0
snitch_avg_load_latency                          0
snitch_occupancy                            0.1837
snitch_fseq_rel_offloads                    0.4194
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             4
fpss_avg_fpu_latency                        3.4444
fpss_avg_load_latency                            0
fpss_occupancy                              0.1327
fpss_fpu_occupancy                          0.0918
fpss_fpu_rel_occupancy                      0.6923
cycles                                          98
total_ipc                                   0.3163

Performance metrics for section 2 @ (2095, 7793):
snitch_stores                                  168
snitch_loads                                   174
fpss_loads                                      13
fpss_stores                                      4
snitch_avg_load_latency                     9.6322
snitch_occupancy                            0.2960
snitch_fseq_rel_offloads                    0.0215
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8182
fpss_avg_load_latency                       5.9231
fpss_occupancy                              0.0065
fpss_fpu_occupancy                          0.0039
fpss_fpu_rel_occupancy                      0.5946
cycles                                        5699
total_ipc                                   0.3025
