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
       0      877        M 0x80002b38 jalr    ra, ra, -1056          #; ra  = 0x80002b34, (wrb) ra  <-- 0x80002b3c, goto 0x80002714
       0      899        M 0x80002714 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002718 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x8000271c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002720 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002724 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002728 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x8000272c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002730 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002734 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002738 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x8000273c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002740 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002744 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002748 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x8000274c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002750 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002754 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002758 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x8000275c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002760 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002764 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002768 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x8000276c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002770 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002774 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002778 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x8000277c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002780 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002784 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002788 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x8000278c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002790 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002794 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002798 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000279c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800027a0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x800027a4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x800027a8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x800027ac add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800027b0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x800027b4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x800027b8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x800027bc add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800027c0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x800027c4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x800027c8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x800027cc sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x800027d0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x800027d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x800027d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x800027dc sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800027e0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x800027e4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x800027e8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x800027ec sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x800027f0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x800027f4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x800027f8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x800027fc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002800 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002804 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002808 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003808
       0     1273        M 0x8000280c addi    a1, a1, -1644          #; a1  = 0x80003808, (wrb) a1  <-- 0x8000319c
       0     1282        M 0x80002810 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
       0     1283        M 0x80002814 sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     1284        M 0x80002818 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x8000281c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002820 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002824 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002828 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x8000282c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002830 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002834 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002838 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x8000283c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002840 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002844 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002848 lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x8000284c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002850 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002854 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002858 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x8000285c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002860 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002864 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002868 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x8000286c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002870 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002874 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002878 ret                            #; ra  = 0x80002b3c, goto 0x80002b3c
       0     1406        M 0x80002b3c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002b40 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002b44 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002b48 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002b4c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002b50 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002b54 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b54
       0     1425        M 0x80002b58 addi    t0, t0, 60             #; t0  = 0x80002b54, (wrb) t0  <-- 0x80002b90
       0     1426        M 0x80002b5c csrw    mtvec, t0              #; t0  = 0x80002b90, (lsu) a4  <-- 4132
       0     1434        M 0x80002b60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b60
       0     1435        M 0x80002b64 jalr    ra, ra, 544            #; ra  = 0x80002b60, (wrb) ra  <-- 0x80002b68, goto 0x80002d80
       0     1451        M 0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b68 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
       0     1454        M 0x80002d8c jalr    ra, ra, -1260          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x8000289c
       0     1472        M 0x8000289c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x800028a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x800028a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x800028a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x800028ac lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x800028b0 ret                            #; ra  = 0x80002d90, goto 0x80002d90
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002d94 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002b68
       0     1533        M 0x80002da0 ret                            #; ra  = 0x80002b68, goto 0x80002b68
       0     1537        M 0x80002b68 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b68
       0     1538        M 0x80002b6c jalr    ra, ra, -1332          #; ra  = 0x80000b68, (wrb) ra  <-- 0x80002b70, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b70 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1549        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1559        M 0x80000650 bnez    a1, pc + 1120          #; a1  = 0, not taken
       0     1560        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1561        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1562        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1565        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1571        M 0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1574        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1575        M 0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1578        M                                           #; (lsu) a0  <-- 0x00100000
       0     1579        M 0x80000668 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1582        M                                           #; (lsu) a3  <-- 0x00100000
       0     1583        M 0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1586        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1587        M 0x80000670 addi    a2, a0, 80             #; a0  = 0x00100000, (wrb) a2  <-- 0x00100050
       0     1588        M 0x80000674 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1589        M 0x80000678 bgeu    a3, a2, pc + 16        #; a3  = 0x0011df30, a2  = 0x00100050, taken, goto 0x80000688
       0     1612        M 0x80000688 addi    a6, a0, 72             #; a0  = 0x00100000, (wrb) a6  <-- 0x00100048
       0     1613        M 0x8000068c srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1624        M 0x80000690 seqz    a5, a3                 #; a3  = 1, (wrb) a5  <-- 0
       0     1625        M 0x80000694 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1626        M 0x80000698 sltu    a4, a4, a6             #; a4  = 0x00120000, a6  = 0x00100048, (wrb) a4  <-- 0
       0     1627        M 0x8000069c or      a4, a5, a4             #; a5  = 0, a4  = 0, (wrb) a4  <-- 0
       0     1636        M 0x800006a0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1637        M 0x800006a4 bnez    a4, pc + 460           #; a4  = 0, not taken
       0     1638        M 0x800006a8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1639        M 0x800006ac li      a2, 9                  #; (wrb) a2  <-- 9
       0     1648        M 0x800006b0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1649        M 0x800006b4 li      a4, 192                #; (wrb) a4  <-- 192
       0     1650        M 0x800006b8 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1651        M 0x800006bc scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1660        M 0x800006c0 li      a3, 32                 #; (wrb) a3  <-- 32
       0     1661        M 0x800006c4 scfgw   zero, a3               #; a3  = 32
       0     1662        M 0x800006c8 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1663        M 0x800006cc auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036cc
       0     1672        M 0x800006d0 addi    a3, a3, -1588          #; a3  = 0x800036cc, (wrb) a3  <-- 0x80003098
       0     1675        M 0x800006d4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003098]
       0     1676        M 0x800006d8 csrrsi  a3, ssr, 1             #; 
       0     1677        M 0x800006dc fcvt.d.w ft4, zero             #; ac1  = 0
       0     1678        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1684        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1686        M 0x800006e8 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036e8
                         M 0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1687        M 0x800006ec addi    a3, a3, -1608          #; a3  = 0x800036e8, (wrb) a3  <-- 0x800030a0
                         M 0x800006e4 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
       0     1688        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1697        M 0x800006f4 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036f4
       0     1698        M 0x800006f8 addi    a3, a3, -1612          #; a3  = 0x800036f4, (wrb) a3  <-- 0x800030a8
                         M 0x800006f0 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030a0]
       0     1701        M 0x800006fc fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030a8]
       0     1707        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1708        M 0x80000700 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003700
       0     1709        M 0x80000704 addi    a3, a3, -1616          #; a3  = 0x80003700, (wrb) a3  <-- 0x800030b0
       0     1710        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1711        M 0x8000070c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000370c
       0     1712        M 0x80000708 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030b0]
       0     1720        M 0x80000710 addi    a3, a3, -1620          #; a3  = 0x8000370c, (wrb) a3  <-- 0x800030b8
       0     1721        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1723        M 0x80000714 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030b8]
       0     1724        M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1725        M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0, (f:fpu) ft0  <-- 2.0
       0     1726        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1732        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1734        M 0x80000728 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003728
                         M 0x80000720 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0
       0     1735        M 0x8000072c addi    a3, a3, -1640          #; a3  = 0x80003728, (wrb) a3  <-- 0x800030c0
                         M 0x80000724 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1736        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1745        M 0x80000734 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003734
       0     1746        M 0x80000738 addi    a3, a3, -1644          #; a3  = 0x80003734, (wrb) a3  <-- 0x800030c8
                         M 0x80000730 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030c0]
       0     1749        M 0x8000073c fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030c8]
       0     1755        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1756        M 0x80000740 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003740
       0     1757        M 0x80000744 addi    a3, a3, -1648          #; a3  = 0x80003740, (wrb) a3  <-- 0x800030d0
       0     1758        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1759        M 0x8000074c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000374c
       0     1760        M 0x80000748 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030d0]
       0     1768        M 0x80000750 addi    a3, a3, -1652          #; a3  = 0x8000374c, (wrb) a3  <-- 0x800030d8
       0     1769        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1771        M 0x80000754 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030d8]
       0     1772        M 0x80000758 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1773        M 0x8000075c fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0, (f:fpu) ft0  <-- 6.0
       0     1774        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1780        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1782        M 0x80000768 li      a3, -72                #; (wrb) a3  <-- -72
                         M 0x80000760 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0
       0     1783        M 0x80000764 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1784        M 0x8000076c csrrci  a4, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1792        M 0x80000770 bltu    a0, a3, pc + 116       #; a0  = 0x00100000, a3  = -72, taken, goto 0x800007e4
       0     1815        M 0x800007e4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1816        M 0x800007e8 li      a4, 192                #; (wrb) a4  <-- 192
       0     1817        M 0x800007ec scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1827        M 0x800007f0 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1828        M 0x800007f4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1829        M 0x800007f8 scfgw   zero, a1               #; a1  = 32
       0     1830        M 0x800007fc scfgwi  a0, 768                #; a0  = 0x00100000
       0     1840        M 0x80000800 csrrsi  a1, ssr, 1             #; 
       0     1842        M 0x80000804 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     1843        M 0x80000808 fsgnj.d ft4, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0, (f:fpu) ft3  <-- 0.0
       0     1844        M 0x8000080c fsgnj.d ft5, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0, (f:fpu) ft4  <-- 1.0
       0     1845        M                                           #; (f:fpu) ft5  <-- 2.0
       0     1853        M 0x80000810 fsgnj.d ft6, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0
       0     1854        M 0x80000814 fsgnj.d ft7, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0, (f:fpu) ft6  <-- 3.0
       0     1855        M 0x80000818 fsgnj.d fa0, ft0, ft0          #; ft0  = 5.0, ft0  = 5.0, (f:fpu) ft7  <-- 4.0
       0     1856        M 0x8000081c fsgnj.d fa1, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa0  <-- 5.0
       0     1857        M                                           #; (f:fpu) fa1  <-- 6.0
       0     1864        M 0x80000824 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003824
       0     1865        M 0x80000828 addi    a1, a1, -1860          #; a1  = 0x80003824, (wrb) a1  <-- 0x800030e0
                         M 0x80000820 fsgnj.d fa2, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0
       0     1866        M                                           #; (f:fpu) fa2  <-- 7.0
       0     1868        M 0x8000082c fld     fa3, 0(a1)             #; fa3  <~~ Doub[0x800030e0]
       0     1877        M 0x80000830 fsgnj.d fa4, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0, (f:lsu) fa3  <-- -45.0
       0     1878        M 0x80000834 fsgnj.d fa5, ft0, ft0          #; ft0  = 9.0, ft0  = 9.0, (f:fpu) fa4  <-- 8.0
       0     1879        M 0x80000838 csrrci  a1, ssr, 1             #; (f:fpu) fa5  <-- 9.0
       0     1881        M 0x8000083c fadd.d  ft3, ft3, fa3          #; ft3  = 0.0, fa3  = -45.0
       0     1884        M                                           #; (f:fpu) ft3  <-- -45.0
       0     1889        M 0x80000840 fadd.d  ft3, ft3, ft4          #; ft3  = -45.0, ft4  = 1.0
       0     1892        M                                           #; (f:fpu) ft3  <-- -44.0
       0     1893        M 0x80000844 fadd.d  ft3, ft3, ft5          #; ft3  = -44.0, ft5  = 2.0
       0     1896        M                                           #; (f:fpu) ft3  <-- -42.0
       0     1897        M 0x80000848 fadd.d  ft3, ft3, ft6          #; ft3  = -42.0, ft6  = 3.0
       0     1900        M                                           #; (f:fpu) ft3  <-- -39.0
       0     1901        M 0x8000084c fadd.d  ft3, ft3, ft7          #; ft3  = -39.0, ft7  = 4.0
       0     1904        M                                           #; (f:fpu) ft3  <-- -35.0
       0     1905        M 0x80000850 fadd.d  ft3, ft3, fa0          #; ft3  = -35.0, fa0  = 5.0
       0     1908        M                                           #; (f:fpu) ft3  <-- -30.0
       0     1909        M 0x80000854 fadd.d  ft3, ft3, fa1          #; ft3  = -30.0, fa1  = 6.0
       0     1912        M 0x80000864 li      a6, 1                  #; (wrb) a6  <-- 1
                         M                                           #; (f:fpu) ft3  <-- -24.0
       0     1913        M 0x80000868 li      a7, 1                  #; (wrb) a7  <-- 1
                         M 0x80000858 fadd.d  ft3, ft3, fa2          #; ft3  = -24.0, fa2  = 7.0
       0     1914        M 0x8000086c j       pc + 0x84              #; goto 0x800008f0
       0     1916        M                                           #; (f:fpu) ft3  <-- -17.0
       0     1917        M 0x8000085c fadd.d  ft3, ft3, fa4          #; ft3  = -17.0, fa4  = 8.0
       0     1920        M                                           #; (f:fpu) ft3  <-- -9.0
       0     1921        M 0x80000860 fadd.d  ft3, ft3, fa5          #; ft3  = -9.0, fa5  = 9.0
       0     1923        M 0x800008f0 addi    a3, a0, 8              #; a0  = 0x00100000, (wrb) a3  <-- 0x00100008
       0     1924        M 0x800008f4 addi    a4, a0, 64             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100040
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1925        M 0x800008f8 addi    a5, a0, 72             #; a0  = 0x00100000, (wrb) a5  <-- 0x00100048
       0     1926        M 0x800008fc sltu    a1, a4, a3             #; a4  = 0x00100040, a3  = 0x00100008, (wrb) a1  <-- 0
       0     1935        M 0x80000900 sltu    a2, a5, a0             #; a5  = 0x00100048, a0  = 0x00100000, (wrb) a2  <-- 0
       0     1936        M 0x80000904 or      a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1937        M 0x80000908 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1938        M 0x8000090c addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1947        M 0x80000910 sltu    a4, a4, a2             #; a4  = 0x00100040, a2  = 0x00120001, (wrb) a4  <-- 1
       0     1948        M 0x80000914 and     a4, a7, a4             #; a7  = 1, a4  = 1, (wrb) a4  <-- 1
       0     1949        M 0x80000918 and     a1, a4, a1             #; a4  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1950        M 0x8000091c srli    a4, a3, 20             #; a3  = 0x00100008, (wrb) a4  <-- 1
       0     1959        M 0x80000920 snez    a4, a4                 #; a4  = 1, (wrb) a4  <-- 1
       0     1960        M 0x80000924 sltu    a2, a5, a2             #; a5  = 0x00100048, a2  = 0x00120001, (wrb) a2  <-- 1
       0     1961        M 0x80000928 and     a2, a4, a2             #; a4  = 1, a2  = 1, (wrb) a2  <-- 1
       0     1962        M 0x8000092c and     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1971        M 0x80000930 beqz    a1, pc + 200           #; a1  = 0, taken, goto 0x800009f8
       0     1996        M 0x800009f8 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x00100000]
       0     1997        M                                           #; (f:lsu) ft4  <-- 0.0
       0     1998        M 0x800009fc fsd     ft4, 8(a0)             #; 0.0 ~~> Doub[0x00100008]
       0     2008        M 0x80000a00 fsd     ft4, 16(a0)            #; 0.0 ~~> Doub[0x00100010]
       0     2009        M 0x80000a04 fsd     ft4, 24(a0)            #; 0.0 ~~> Doub[0x00100018]
       0     2010        M 0x80000a08 fsd     ft4, 32(a0)            #; 0.0 ~~> Doub[0x00100020]
       0     2011        M 0x80000a0c fsd     ft4, 40(a0)            #; 0.0 ~~> Doub[0x00100028]
       0     2020        M 0x80000a10 fsd     ft4, 48(a0)            #; 0.0 ~~> Doub[0x00100030]
       0     2021        M 0x80000a14 fsd     ft4, 56(a0)            #; 0.0 ~~> Doub[0x00100038]
       0     2022        M 0x80000a18 fsd     ft4, 64(a0)            #; 0.0 ~~> Doub[0x00100040]
       0     2023        M 0x80000a1c fsd     ft4, 72(a0)            #; 0.0 ~~> Doub[0x00100048]
       0     2030        M 0x80000a20 beqz    a6, pc - 120           #; a6  = 1, not taken
       0     2031        M 0x80000a24 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2032        M 0x80000a28 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2033        M 0x80000a2c li      a3, 64                 #; (wrb) a3  <-- 64
       0     2053        M 0x80000a30 li      a4, 192                #; (wrb) a4  <-- 192
       0     2054        M 0x80000a34 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2055        M 0x80000a38 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2056        M 0x80000a3c li      a1, 32                 #; (wrb) a1  <-- 32
       0     2065        M 0x80000a40 scfgw   zero, a1               #; a1  = 32
       0     2066        M 0x80000a44 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2068        M                                           #; (acc) tp  <-- 0x22000253
                         M 0x80000a48 csrrsi  a0, ssr, 1             #; 
       0     2070        M 0x80000a4c fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2071        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2079        M 0x80000a50 fadd.d  ft4, ft0, ft4          #; ft0  = 0.0, ft4  = 0.0
       0     2082        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2083        M 0x80000a54 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2086        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2087        M 0x80000a58 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2090        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2091        M 0x80000a5c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2094        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2095        M 0x80000a60 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2098        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2099        M 0x80000a64 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2102        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2103        M 0x80000a68 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2106        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2107        M 0x80000a6c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2110        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2111        M 0x80000a70 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2112        M 0x80000a74 csrrci  a0, ssr, 1             #; 
       0     2114        M 0x80000a78 fsgnjx.d ft3, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft4  <-- 0.0
       0     2115        M 0x80000a7c fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0
       0     2116        M 0x80000a88 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     2117        M 0x80000a80 fadd.d  fs0, ft4, ft3          #; ft4  = 0.0, ft3  = 0.0
       0     2119        M                                           #; (lsu) a2  <-- 0
       0     2120        M 0x80000a8c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     2122        M 0x80000a84 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2123        M                                           #; (lsu) a3  <-- 0
       0     2126        M 0x80000a90 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a90
       0     2127        M 0x80000a94 addi    a0, a0, 869            #; a0  = 0x80002a90, (wrb) a0  <-- 0x80002df5
       0     2128        M 0x80000a98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a98
       0     2129        M 0x80000a9c jalr    ra, ra, 40             #; ra  = 0x80000a98, (wrb) ra  <-- 0x80000aa0, goto 0x80000ac0
       0     2140        M 0x80000ac0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2141        M 0x80000ac4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000aa0 ~~> Word[0x0011ff1c]
       0     2142        M 0x80000ac8 mv      t0, a0                 #; a0  = 0x80002df5, (wrb) t0  <-- 0x80002df5
       0     2143        M 0x80000acc sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2152        M 0x80000ad0 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2153        M 0x80000ad4 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100048 ~~> Word[0x0011ff34]
       0     2154        M 0x80000ad8 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
       0     2155        M 0x80000adc sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2164        M 0x80000ae0 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2165        M 0x80000ae4 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     2166        M 0x80000ae8 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2167        M 0x80000aec sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2176        M 0x80000af0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001af0
       0     2177        M 0x80000af4 addi    a0, a0, -988           #; a0  = 0x80001af0, (wrb) a0  <-- 0x80001714
       0     2178        M 0x80000af8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2179        M 0x80000afc li      a2, -1                 #; (wrb) a2  <-- -1
       0     2188        M 0x80000b00 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2189        M 0x80000b04 mv      a3, t0                 #; t0  = 0x80002df5, (wrb) a3  <-- 0x80002df5
       0     2190        M 0x80000b08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b08
       0     2191        M 0x80000b0c jalr    ra, ra, 20             #; ra  = 0x80000b08, (wrb) ra  <-- 0x80000b10, goto 0x80000b1c
       0     2200        M 0x80000b1c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2212        M 0x80000b20 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b10 ~~> Word[0x0011ff0c]
       0     2213        M 0x80000b24 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2214        M 0x80000b28 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2215        M 0x80000b2c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2224        M 0x80000b30 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2225        M 0x80000b34 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2226        M 0x80000b38 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2227        M 0x80000b3c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2236        M 0x80000b40 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2237        M 0x80000b44 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2238        M 0x80000b48 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2239        M 0x80000b4c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2248        M 0x80000b50 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2249        M 0x80000b54 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2250        M 0x80000b58 mv      s0, a3                 #; a3  = 0x80002df5, (wrb) s0  <-- 0x80002df5
       0     2251        M 0x80000b5c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2260        M 0x80000b60 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2261        M 0x80000b64 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2262        M 0x80000b68 mv      s2, a0                 #; a0  = 0x80001714, (wrb) s2  <-- 0x80001714
       0     2263        M 0x80000b6c j       pc + 0xc               #; goto 0x80000b78
       0     2272        M 0x80000b78 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2273        M 0x80000b7c li      s6, 37                 #; (wrb) s6  <-- 37
       0     2284        M 0x80000b80 li      s11, 16                #; (wrb) s11 <-- 16
       0     2285        M 0x80000b84 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2286        M 0x80000b88 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2287        M 0x80000b8c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2296        M 0x80000b90 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2297        M 0x80000b94 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2298        M 0x80000b98 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2299        M 0x80000b9c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2308        M 0x80000ba0 addi    s10, s0, 2             #; s0  = 0x80002df5, (wrb) s10 <-- 0x80002df7
       0     2309        M 0x80000ba4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2310        M 0x80000ba8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2311        M 0x80000bac lbu     a0, 0(s0)              #; s0  = 0x80002df5, a0  <~~ Byte[0x80002df5]
       0     2322        M                                           #; (lsu) a0  <-- 101
       0     2323        M 0x80000bb0 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2324        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2325        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2326        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2332        M 0x80000bc0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2333        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2334        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2355        M 0x80001714 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2356        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2357        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2367        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2368        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2369        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2370        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2371        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2379        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2390        M                                           #; (lsu) a4  <-- 0
       0     2391        M 0x80001734 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2392        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
       0     2393        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
       0     2394        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
       0     2395        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2416        M                                           #; (lsu) a4  <-- 1
       0     2417        M 0x80001748 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2418        M 0x8000174c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2419        M 0x80001750 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2420        M 0x80001754 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2421        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2422        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2442        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2456        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002df5, (wrb) s0  <-- 0x80002df6
       0     2459        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002df7, (wrb) s10 <-- 0x80002df8
       0     2460        M 0x80000bd4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2461        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002df6, a0  <~~ Byte[0x80002df6]
       0     2472        M                                           #; (lsu) a0  <-- 114
       0     2473        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bb4
       0     2474        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2475        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2476        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2477        M 0x80000bc0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2478        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2479        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2482        M 0x80001714 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2483        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2484        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2485        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2486        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2487        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2488        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2489        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2490        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2501        M                                           #; (lsu) a4  <-- 1
       0     2502        M 0x80001734 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2503        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
       0     2504        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
       0     2505        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
       0     2506        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2527        M                                           #; (lsu) a4  <-- 2
       0     2528        M 0x80001748 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2529        M 0x8000174c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2530        M 0x80001750 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2531        M 0x80001754 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2532        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2533        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2536        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2541        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002df6, (wrb) s0  <-- 0x80002df7
       0     2544        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002df8, (wrb) s10 <-- 0x80002df9
       0     2545        M 0x80000bd4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2546        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002df7, a0  <~~ Byte[0x80002df7]
       0     2557        M                                           #; (lsu) a0  <-- 114
       0     2558        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bb4
       0     2559        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2560        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2561        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2562        M 0x80000bc0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2563        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2564        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2567        M 0x80001714 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2568        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2569        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2570        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2571        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2572        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2573        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2574        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2575        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2586        M                                           #; (lsu) a4  <-- 2
       0     2587        M 0x80001734 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2588        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
       0     2589        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
       0     2590        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
       0     2591        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2612        M                                           #; (lsu) a4  <-- 3
       0     2613        M 0x80001748 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2614        M 0x8000174c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2615        M 0x80001750 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2616        M 0x80001754 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2617        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2618        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2621        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2626        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002df7, (wrb) s0  <-- 0x80002df8
       0     2629        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002df9, (wrb) s10 <-- 0x80002dfa
       0     2630        M 0x80000bd4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2631        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002df8, a0  <~~ Byte[0x80002df8]
       0     2642        M                                           #; (lsu) a0  <-- 111
       0     2643        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000bb4
       0     2644        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2645        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2646        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2647        M 0x80000bc0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2648        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2649        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2652        M 0x80001714 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2653        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2654        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2655        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2656        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2657        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2658        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2659        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2660        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2671        M                                           #; (lsu) a4  <-- 3
       0     2672        M 0x80001734 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2673        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
       0     2674        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
       0     2675        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
       0     2676        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2697        M                                           #; (lsu) a4  <-- 4
       0     2698        M 0x80001748 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2699        M 0x8000174c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2700        M 0x80001750 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2701        M 0x80001754 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2702        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2703        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2706        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2711        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002df8, (wrb) s0  <-- 0x80002df9
       0     2714        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002dfa, (wrb) s10 <-- 0x80002dfb
       0     2715        M 0x80000bd4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2716        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002df9, a0  <~~ Byte[0x80002df9]
       0     2727        M                                           #; (lsu) a0  <-- 114
       0     2728        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bb4
       0     2729        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2730        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2731        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2732        M 0x80000bc0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2733        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2734        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2737        M 0x80001714 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2738        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2739        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2740        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2741        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2742        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2743        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2744        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2745        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2756        M                                           #; (lsu) a4  <-- 4
       0     2757        M 0x80001734 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2758        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
       0     2759        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
       0     2760        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
       0     2761        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2782        M                                           #; (lsu) a4  <-- 5
       0     2783        M 0x80001748 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2784        M 0x8000174c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2785        M 0x80001750 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2786        M 0x80001754 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2787        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2788        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2791        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2796        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002df9, (wrb) s0  <-- 0x80002dfa
       0     2799        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002dfb, (wrb) s10 <-- 0x80002dfc
       0     2800        M 0x80000bd4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2801        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002dfa, a0  <~~ Byte[0x80002dfa]
       0     2812        M                                           #; (lsu) a0  <-- 32
       0     2813        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bb4
       0     2814        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2815        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2816        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2817        M 0x80000bc0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2818        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2819        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2822        M 0x80001714 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2823        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2824        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2825        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2826        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2827        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2828        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2829        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2830        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2841        M                                           #; (lsu) a4  <-- 5
       0     2842        M 0x80001734 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2843        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
       0     2844        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
       0     2845        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
       0     2846        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2867        M                                           #; (lsu) a4  <-- 6
       0     2868        M 0x80001748 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2869        M 0x8000174c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2870        M 0x80001750 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2871        M 0x80001754 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2872        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2873        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2876        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2881        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002dfa, (wrb) s0  <-- 0x80002dfb
       0     2884        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002dfc, (wrb) s10 <-- 0x80002dfd
       0     2885        M 0x80000bd4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2886        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002dfb, a0  <~~ Byte[0x80002dfb]
       0     2897        M                                           #; (lsu) a0  <-- 61
       0     2898        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000bb4
       0     2899        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2900        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2901        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2902        M 0x80000bc0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2903        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2904        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2907        M 0x80001714 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2908        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2909        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2910        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2911        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2912        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2913        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2914        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2915        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2926        M                                           #; (lsu) a4  <-- 6
       0     2927        M 0x80001734 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2928        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
       0     2929        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
       0     2930        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
       0     2931        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2952        M                                           #; (lsu) a4  <-- 7
       0     2953        M 0x80001748 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2954        M 0x8000174c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2955        M 0x80001750 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2956        M 0x80001754 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2957        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2958        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     2961        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2966        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002dfb, (wrb) s0  <-- 0x80002dfc
       0     2969        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002dfd, (wrb) s10 <-- 0x80002dfe
       0     2970        M 0x80000bd4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2971        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002dfc, a0  <~~ Byte[0x80002dfc]
       0     2982        M                                           #; (lsu) a0  <-- 32
       0     2983        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bb4
       0     2984        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2985        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2986        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2987        M 0x80000bc0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2988        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2989        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     2992        M 0x80001714 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2993        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2994        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2995        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2996        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     2997        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     2998        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2999        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3000        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3011        M                                           #; (lsu) a4  <-- 7
       0     3012        M 0x80001734 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3013        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
       0     3014        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
       0     3015        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
       0     3016        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3037        M                                           #; (lsu) a4  <-- 8
       0     3038        M 0x80001748 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3039        M 0x8000174c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3040        M 0x80001750 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3041        M 0x80001754 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3042        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3043        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     3046        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     3051        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002dfc, (wrb) s0  <-- 0x80002dfd
       0     3054        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002dfe, (wrb) s10 <-- 0x80002dff
       0     3055        M 0x80000bd4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3056        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002dfd, a0  <~~ Byte[0x80002dfd]
       0     3067        M                                           #; (lsu) a0  <-- 37
       0     3068        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000bb4
       0     3069        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000be4
       0     3081        M 0x80000be4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3082        M 0x80000be8 j       pc + 0x10              #; goto 0x80000bf8
       0     3093        M 0x80000bf8 lbu     a0, -1(s10)            #; s10 = 0x80002dff, a0  <~~ Byte[0x80002dfe]
       0     3104        M                                           #; (lsu) a0  <-- 102
       0     3105        M 0x80000bfc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3106        M 0x80000c00 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c38
       0     3129        M 0x80000c38 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3130        M 0x80000c3c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3141        M 0x80000c40 addi    a1, s10, -1            #; s10 = 0x80002dff, (wrb) a1  <-- 0x80002dfe
       0     3142        M 0x80000c44 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3143        M 0x80000c48 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cc4
       0     3164        M 0x80000cc4 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3165        M 0x80000cc8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d18
       0     3187        M 0x80000d18 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3188        M 0x80000d1c mv      s10, a1                #; a1  = 0x80002dfe, (wrb) s10 <-- 0x80002dfe
       0     3199        M 0x80000d20 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3200        M 0x80000d24 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3201        M 0x80000d28 j       pc + 0xc               #; goto 0x80000d34
       0     3222        M 0x80000d34 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3223        M 0x80000d38 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3224        M 0x80000d3c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3234        M 0x80000d40 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3235        M 0x80000d44 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3236        M 0x80000d48 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000dac
       0     3257        M 0x80000dac addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3269        M 0x80000db0 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3270        M 0x80000db4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3271        M 0x80000db8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3272        M 0x80000dbc auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002dbc
       0     3281        M 0x80000dc0 addi    a2, a2, 184            #; a2  = 0x80002dbc, (wrb) a2  <-- 0x80002e74
       0     3282        M 0x80000dc4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e74, (wrb) a1  <-- 0x80002f78
       0     3283        M 0x80000dc8 lw      a2, 0(a1)              #; a1  = 0x80002f78, a2  <~~ Word[0x80002f78]
       0     3284        M 0x80000dcc li      a1, 8                  #; (wrb) a1  <-- 8
       0     3293        M 0x80000dd0 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3294        M                                           #; (lsu) a2  <-- 0x80000e04
       0     3295        M 0x80000dd4 jr      a2                     #; a2  = 0x80000e04, goto 0x80000e04
       0     3316        M 0x80000e04 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3317        M 0x80000e08 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e10
       0     3328        M 0x80000e10 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3329        M 0x80000e14 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3331        M 0x80000e1c addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3332        M 0x80000e18 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3333        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3340        M 0x80000e20 mv      a0, s2                 #; s2  = 0x80001714, (wrb) a0  <-- 0x80001714
       0     3341        M 0x80000e24 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3342        M 0x80000e28 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3343        M 0x80000e2c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3352        M 0x80000e30 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3353        M 0x80000e34 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3354        M 0x80000e38 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3355        M 0x80000e3c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e3c
       0     3364        M 0x80000e40 jalr    ra, ra, -1656          #; ra  = 0x80001e3c, (wrb) ra  <-- 0x80000e44, goto 0x800017c4
       0     3378        M 0x800017c4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3379        M 0x800017c8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e44 ~~> Word[0x0011fe9c]
       0     3380        M 0x800017cc sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3390        M 0x800017d0 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3391        M 0x800017d4 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001714 ~~> Word[0x0011fe90]
       0     3392        M 0x800017d8 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3393        M 0x800017dc sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3402        M 0x800017e0 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3403        M 0x800017e4 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3404        M 0x800017e8 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3405        M 0x800017ec sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3414        M 0x800017f0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3415        M 0x800017f4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dfe ~~> Word[0x0011fe70]
       0     3418        M 0x800017f8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3419        M 0x800017fc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3427        M 0x80001804 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003804
       0     3428        M 0x80001808 addi    s1, s1, -1812          #; s1  = 0x80003804, (wrb) s1  <-- 0x800030f0
                         M 0x80001800 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3431        M 0x8000180c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
       0     3439        M 0x80001814 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3440        M 0x80001818 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3441        M 0x8000181c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001810 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3450        M 0x80001820 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3451        M 0x80001824 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3452        M 0x80001828 mv      s7, a0                 #; a0  = 0x80001714, (wrb) s7  <-- 0x80001714
       0     3453        M 0x8000182c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000191c
       0     3475        M 0x8000191c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3476        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3485        M 0x80001920 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002920
       0     3486        M 0x80001924 addi    a0, a0, 2008           #; a0  = 0x80002920, (wrb) a0  <-- 0x800030f8
       0     3489        M 0x80001928 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
       0     3498        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3499        M 0x8000192c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3501        M                                           #; (acc) t3  <-- 0x00051e63
       0     3502        M 0x80001930 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000194c
       0     3509        M 0x8000194c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000294c
       0     3521        M 0x80001950 addi    a0, a0, 1972           #; a0  = 0x8000294c, (wrb) a0  <-- 0x80003100
       0     3523        M 0x80001958 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002958
       0     3524        M 0x8000195c addi    a0, a0, 1968           #; a0  = 0x80002958, (wrb) a0  <-- 0x80003108
                         M 0x80001954 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
       0     3533        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3535        M 0x80001960 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
       0     3536        M 0x80001964 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3538        M                                           #; (acc) a0  <-- 0x00b57533
       0     3544        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3545        M 0x80001968 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3547        M                                           #; (acc) a0  <-- 0x00b57533
       0     3548        M 0x8000196c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3549        M 0x80001970 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a6c
       0     3572        M 0x80001a6c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3584        M 0x80001a70 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3585        M 0x80001a74 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a7c
       0     3586        M 0x80001a7c li      a0, 10                 #; (wrb) a0  <-- 10
       0     3597        M 0x80001a84 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001abc
       0     3598        M 0x80001a80 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3599        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3619        M 0x80001abc li      s0, 0                  #; (wrb) s0  <-- 0
       0     3631        M 0x80001ac0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3632        M 0x80001ac4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ac4
       0     3633        M 0x80001ac8 addi    a1, a1, 1284           #; a1  = 0x80002ac4, (wrb) a1  <-- 0x80002fc8
       0     3634        M 0x80001acc add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fc8, (wrb) a0  <-- 0x80002ff8
       0     3645        M 0x80001ad0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ff8]
       0     3646        M 0x80001ad4 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3650        M 0x80001ad8 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3651        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3652        M 0x80001adc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3654        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3655        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3656        M 0x80001ae4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002ae4
       0     3657        M 0x80001ae8 addi    a0, a0, 1580           #; a0  = 0x80002ae4, (wrb) a0  <-- 0x80003110
                         M 0x80001ae0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3660        M 0x80001aec fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110], (f:fpu) ft2  <-- 0.0
       0     3668        M 0x80001af0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3669        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3670        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3672        M 0x80001af4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3673        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3674        M 0x80001af8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3677        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3678        M 0x80001afc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3681        M 0x80001b00 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b20
       0     3703        M 0x80001b20 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3705        M                                           #; (acc) s4  <-- 0x00059a63
       0     3706        M 0x80001b24 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b38
       0     3715        M 0x80001b3c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001b38 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3716        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3726        M 0x80001b40 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3727        M 0x80001b44 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3728        M 0x80001b48 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3729        M 0x80001b4c li      t0, 32                 #; (wrb) t0  <-- 32
       0     3738        M 0x80001b50 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3739        M 0x80001b54 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3740        M 0x80001b58 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3741        M 0x80001b5c li      a6, 10                 #; (wrb) a6  <-- 10
       0     3750        M 0x80001b60 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3751        M 0x80001b64 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3752        M 0x80001b68 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3753        M 0x80001b6c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3762        M 0x80001b70 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3763        M 0x80001b74 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3766        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3767        M 0x80001b78 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3768        M 0x80001b7c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3774        M 0x80001b80 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3775        M 0x80001b84 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3776        M 0x80001b88 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3777        M 0x80001b8c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3789        M 0x80001b90 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3790        M 0x80001b94 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3791        M 0x80001b98 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3792        M 0x80001b9c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3801        M 0x80001ba0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3802        M 0x80001ba4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3803        M 0x80001ba8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3804        M 0x80001bac bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3813        M 0x80001bb0 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3814        M 0x80001bb4 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3815        M 0x80001bb8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3816        M 0x80001bbc add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3825        M 0x80001bc0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3826        M 0x80001bc4 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3827        M 0x80001bc8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3828        M 0x80001bcc add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3837        M 0x80001bd0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3838        M 0x80001bd4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bdc
       0     3839        M 0x80001bdc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3849        M 0x80001be0 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3850        M 0x80001be4 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000be4
       0     3851        M 0x80001be8 jalr    ra, ra, -1676          #; ra  = 0x80000be4, (wrb) ra  <-- 0x80001bec, goto 0x80000558
       0     3872        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3873        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3884        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3907        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3919        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3920        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3921        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3922        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3942        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3943        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3954        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3955        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3956        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3957        M 0x800005ec ret                            #; ra  = 0x80001bec, goto 0x80001bec
       0     3968        M 0x80001bec li      a0, 0                  #; (wrb) a0  <-- 0
       0     3971        M 0x80001bf0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3972        M 0x80001bf4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3973        M 0x80001bf8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3974        M 0x80001bfc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3983        M 0x80001c00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3984        M 0x80001c04 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3985        M 0x80001c08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bf0
       0     3986        M 0x80001bf0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3987        M 0x80001bf4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3988        M 0x80001bf8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3989        M 0x80001bfc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3990        M 0x80001c00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3991        M 0x80001c04 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3992        M 0x80001c08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bf0
       0     3993        M 0x80001bf0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3994        M 0x80001bf4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3995        M 0x80001bf8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3996        M 0x80001bfc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3997        M 0x80001c00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3998        M 0x80001c04 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3999        M 0x80001c08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bf0
       0     4000        M 0x80001bf0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4001        M 0x80001bf4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4002        M 0x80001bf8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4003        M 0x80001bfc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4004        M 0x80001c00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4005        M 0x80001c04 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4006        M 0x80001c08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001bf0
       0     4007        M 0x80001bf0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4008        M 0x80001bf4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4009        M 0x80001bf8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4010        M 0x80001bfc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4011        M 0x80001c00 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4012        M 0x80001c04 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4013        M 0x80001c08 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4014        M 0x80001c0c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4026        M 0x80001c10 j       pc + 0x28              #; goto 0x80001c38
       0     4038        M 0x80001c38 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4039        M 0x80001c3c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4050        M 0x80001c40 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4051        M 0x80001c44 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4052        M 0x80001c48 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4053        M 0x80001c4c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4062        M 0x80001c50 j       pc + 0x8               #; goto 0x80001c58
       0     4063        M 0x80001c58 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4064        M 0x80001c5c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4075        M 0x80001c60 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4076        M 0x80001c64 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4078        M 0x80001c6c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001c68 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4087        M 0x80001c70 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4088        M 0x80001c74 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4089        M 0x80001c78 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4090        M 0x80001c7c li      a4, 18                 #; (wrb) a4  <-- 18
       0     4099        M 0x80001c80 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4100        M 0x80001c84 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4103        M                                           #; (acc) a5  <-- 0x01f55793
       0     4104        M 0x80001c88 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4105        M 0x80001c8c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4111        M 0x80001c90 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4112        M 0x80001c94 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4115        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4116        M 0x80001c98 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4117        M 0x80001c9c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4123        M 0x80001ca0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4124        M 0x80001ca4 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4125        M 0x80001ca8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4126        M 0x80001cac sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4135        M 0x80001cb0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4136        M 0x80001cb4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4137        M 0x80001cb8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4138        M 0x80001cbc j       pc + 0x8               #; goto 0x80001cc4
       0     4150        M 0x80001cc4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4151        M 0x80001cc8 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4152        M 0x80001ccc bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d38
       0     4173        M 0x80001d38 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4174        M 0x80001d3c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4185        M 0x80001d40 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d58
       0     4197        M 0x80001d58 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4198        M 0x80001d5c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4209        M 0x80001d60 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4210        M 0x80001d64 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d90
       0     4232        M 0x80001d90 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4233        M 0x80001d94 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4234        M 0x80001d98 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4235        M 0x80001d9c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4244        M 0x80001da0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4245        M 0x80001da4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4246        M 0x80001da8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dd4
       0     4267        M 0x80001dd4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4268        M 0x80001dd8 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4269        M 0x80001ddc addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4279        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4280        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4281        M 0x80001de8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4282        M 0x80001dec addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4283        M                                           #; (lsu) a0  <-- 48
       0     4291        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4292        M 0x80001df4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4293        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4294        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4305        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4306        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4307        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4308        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4309        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4310        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4311        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4312        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4313        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4324        M                                           #; (lsu) a4  <-- 8
       0     4325        M 0x80001734 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4326        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
       0     4327        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
       0     4328        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a4, 48 ~~> Byte[0x800031ec]
       0     4329        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4350        M                                           #; (lsu) a4  <-- 9
       0     4351        M 0x80001748 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4352        M 0x8000174c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4353        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4354        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4355        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4356        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4359        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4364        M 0x80001e00 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4365        M 0x80001e04 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4366        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001de0
       0     4367        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4368        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4369        M 0x80001de8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4370        M 0x80001dec addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4371        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4372        M 0x80001df4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4373        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4374        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4375        M                                           #; (lsu) a0  <-- 46
       0     4377        M 0x80001714 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4378        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4379        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4380        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4381        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4382        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4383        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4384        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4385        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4396        M                                           #; (lsu) a4  <-- 9
       0     4397        M 0x80001734 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4398        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
       0     4399        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
       0     4400        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a5, 46 ~~> Byte[0x800031ed]
       0     4401        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4422        M                                           #; (lsu) a4  <-- 10
       0     4423        M 0x80001748 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4424        M 0x8000174c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4425        M 0x80001750 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4426        M 0x80001754 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4427        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4428        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4431        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4436        M 0x80001e00 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4437        M 0x80001e04 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4438        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001de0
       0     4439        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4440        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4441        M 0x80001de8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4442        M 0x80001dec addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4443        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4444        M 0x80001df4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4445        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4446        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4447        M                                           #; (lsu) a0  <-- 48
       0     4449        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4450        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4451        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4452        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4453        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4454        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4455        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4456        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4457        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4468        M                                           #; (lsu) a4  <-- 10
       0     4469        M 0x80001734 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4470        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
       0     4471        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
       0     4472        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a6, 48 ~~> Byte[0x800031ee]
       0     4473        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4494        M                                           #; (lsu) a4  <-- 11
       0     4495        M 0x80001748 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4496        M 0x8000174c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4497        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4498        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4499        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4500        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4503        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4508        M 0x80001e00 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4509        M 0x80001e04 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4510        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001de0
       0     4511        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4512        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4513        M 0x80001de8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4514        M 0x80001dec addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4515        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4516        M 0x80001df4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4517        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4518        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4519        M                                           #; (lsu) a0  <-- 48
       0     4521        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4522        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4523        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4524        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4525        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4526        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4527        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4528        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4529        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4540        M                                           #; (lsu) a4  <-- 11
       0     4541        M 0x80001734 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4542        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
       0     4543        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
       0     4544        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a7, 48 ~~> Byte[0x800031ef]
       0     4545        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4566        M                                           #; (lsu) a4  <-- 12
       0     4567        M 0x80001748 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4568        M 0x8000174c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4569        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4570        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4571        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4572        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4575        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4580        M 0x80001e00 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4581        M 0x80001e04 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4582        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001de0
       0     4583        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4584        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4585        M 0x80001de8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4586        M 0x80001dec addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4587        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4588        M 0x80001df4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4589        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4590        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4591        M                                           #; (lsu) a0  <-- 48
       0     4593        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4594        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4595        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4596        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4597        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4598        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4599        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4600        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4601        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4612        M                                           #; (lsu) a4  <-- 12
       0     4613        M 0x80001734 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4614        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
       0     4615        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
       0     4616        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a8, 48 ~~> Byte[0x800031f0]
       0     4617        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4638        M                                           #; (lsu) a4  <-- 13
       0     4639        M 0x80001748 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4640        M 0x8000174c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4641        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4642        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4643        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4644        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4647        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4652        M 0x80001e00 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4653        M 0x80001e04 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4654        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001de0
       0     4655        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4656        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4657        M 0x80001de8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4658        M 0x80001dec addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4659        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4660        M 0x80001df4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4661        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4662        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4663        M                                           #; (lsu) a0  <-- 48
       0     4665        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4666        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4667        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4668        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4669        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4670        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4671        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4672        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4673        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4684        M                                           #; (lsu) a4  <-- 13
       0     4685        M 0x80001734 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4686        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
       0     4687        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
       0     4688        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
       0     4689        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4710        M                                           #; (lsu) a4  <-- 14
       0     4711        M 0x80001748 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4712        M 0x8000174c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4713        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4714        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4715        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4716        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4719        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4724        M 0x80001e00 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4725        M 0x80001e04 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4726        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001de0
       0     4727        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4728        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4729        M 0x80001de8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4730        M 0x80001dec addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4731        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4732        M 0x80001df4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4733        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4734        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4735        M                                           #; (lsu) a0  <-- 48
       0     4737        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4738        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4739        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4740        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4741        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4742        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4743        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4744        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4745        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4756        M                                           #; (lsu) a4  <-- 14
       0     4757        M 0x80001734 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4758        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
       0     4759        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
       0     4760        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031aa, 48 ~~> Byte[0x800031f2]
       0     4761        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4782        M                                           #; (lsu) a4  <-- 15
       0     4783        M 0x80001748 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4784        M 0x8000174c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4785        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4786        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4787        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4788        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4791        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4796        M 0x80001e00 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4797        M 0x80001e04 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4798        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001de0
       0     4799        M 0x80001de0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4800        M 0x80001de4 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4801        M 0x80001de8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4802        M 0x80001dec addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4803        M 0x80001df0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4804        M 0x80001df4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4805        M 0x80001df8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4806        M 0x80001dfc jalr    s7                     #; s7  = 0x80001714, (wrb) ra  <-- 0x80001e00, goto 0x80001714
       0     4807        M                                           #; (lsu) a0  <-- 48
       0     4809        M 0x80001714 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4810        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4811        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4812        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4813        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     4814        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     4815        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4816        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4817        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4828        M                                           #; (lsu) a4  <-- 15
       0     4829        M 0x80001734 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4830        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
       0     4831        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
       0     4832        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
       0     4833        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4854        M                                           #; (lsu) a4  <-- 16
       0     4855        M 0x80001748 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4856        M 0x8000174c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4857        M 0x80001750 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4858        M 0x80001754 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4859        M 0x80001758 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4860        M 0x8000175c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017bc
       0     4863        M 0x800017bc ret                            #; ra  = 0x80001e00, goto 0x80001e00
       0     4868        M 0x80001e00 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4869        M 0x80001e04 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4870        M 0x80001e08 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4871        M 0x80001e0c j       pc + 0x8               #; goto 0x80001e14
       0     4883        M 0x80001e14 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4884        M 0x80001e18 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4885        M 0x80001e1c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4895        M 0x80001e20 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4896        M 0x80001e24 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4897        M 0x80001e28 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e58
       0     4918        M 0x80001e58 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4919        M 0x80001e5c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4932        M 0x80001e60 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4933        M 0x80001e6c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001e64 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4934        M 0x80001e68 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4935        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4937        M                                           #; (lsu) s10 <-- 0x80002dfe
       0     4942        M 0x80001e70 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4945        M                                           #; (lsu) s9  <-- 8
       0     4946        M 0x80001e74 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4949        M                                           #; (lsu) s8  <-- 16
       0     4950        M 0x80001e78 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4953        M                                           #; (lsu) s7  <-- 0
       0     4954        M 0x80001e7c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4957        M                                           #; (lsu) s6  <-- 0
       0     4958        M 0x80001e80 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4961        M                                           #; (lsu) s5  <-- -1
       0     4962        M 0x80001e84 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4965        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4966        M 0x80001e88 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4969        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4970        M 0x80001e8c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4973        M                                           #; (lsu) s2  <-- 0x80001714
       0     4974        M 0x80001e90 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4977        M                                           #; (lsu) s1  <-- 8
       0     4978        M 0x80001e94 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4981        M                                           #; (lsu) s0  <-- 0
       0     4982        M 0x80001e98 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4983        M 0x80001e9c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     4985        M                                           #; (lsu) ra  <-- 0x80000e44
       0     4986        M 0x80001ea0 ret                            #; ra  = 0x80000e44, goto 0x80000e44
       0     4998        M 0x80000e44 j       pc + 0x7c0             #; goto 0x80001604
       0     5001        M 0x80001604 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5002        M 0x80001608 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5003        M 0x8000160c li      s7, 46                 #; (wrb) s7  <-- 46
       0     5013        M 0x80001610 addi    s0, s10, 1             #; s10 = 0x80002dfe, (wrb) s0  <-- 0x80002dff
       0     5014        M 0x80001614 j       pc - 0xa74             #; goto 0x80000ba0
       0     5025        M 0x80000ba0 addi    s10, s0, 2             #; s0  = 0x80002dff, (wrb) s10 <-- 0x80002e01
       0     5026        M 0x80000ba4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5027        M 0x80000ba8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5028        M 0x80000bac lbu     a0, 0(s0)              #; s0  = 0x80002dff, a0  <~~ Byte[0x80002dff]
       0     5039        M                                           #; (lsu) a0  <-- 10
       0     5040        M 0x80000bb0 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5041        M 0x80000bb4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5042        M 0x80000bb8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5043        M 0x80000bbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5049        M 0x80000bc0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5050        M 0x80000bc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5051        M 0x80000bc8 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x80000bcc, goto 0x80001714
       0     5063        M 0x80001714 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5064        M 0x80001718 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5065        M 0x8000171c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5066        M 0x80001720 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5067        M 0x80001724 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003724
       0     5068        M 0x80001728 addi    a3, a3, -1416          #; a3  = 0x80003724, (wrb) a3  <-- 0x8000319c
       0     5069        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5070        M 0x8000172c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5071        M 0x80001730 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5082        M                                           #; (lsu) a4  <-- 16
       0     5083        M 0x80001734 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5084        M 0x80001738 sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
       0     5085        M 0x8000173c add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
       0     5086        M 0x80001740 sb      a0, 72(a4)             #; a4  = 0x800031ac, 10 ~~> Byte[0x800031f4]
       0     5087        M 0x80001744 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5108        M                                           #; (lsu) a4  <-- 17
       0     5109        M 0x80001748 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5110        M 0x8000174c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5111        M 0x80001750 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5112        M 0x80001754 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5113        M 0x80001758 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5114        M 0x8000175c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5115        M 0x80001760 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
       0     5116        M 0x80001764 addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
       0     5117        M 0x80001768 sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
       0     5118        M 0x8000176c li      a3, 64                 #; (wrb) a3  <-- 64
       0     5127        M 0x80001770 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
       0     5128        M 0x80001774 sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
       0     5129        M 0x80001778 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5130        M 0x8000177c sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
       0     5139        M 0x80001780 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
       0     5140        M 0x80001784 sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
       0     5142        M 0x80001788 lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
       0     5143        M 0x8000178c addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
       0     5152        M 0x80001790 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
       0     5171        M                                           #; (lsu) a2  <-- 17
       0     5172        M 0x80001794 sw      a2, 32(a0)             #; a0  = 0x8000319c, 17 ~~> Word[0x800031bc]
       0     5173        M 0x80001798 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003798
       0     5174        M 0x8000179c addi    a0, a0, -1880          #; a0  = 0x80003798, (wrb) a0  <-- 0x80003040
       0     5175        M 0x800017a0 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
       0     5176        M 0x800017a4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037a4
       0     5177        M 0x800017a8 addi    a0, a0, -1828          #; a0  = 0x800037a4, (wrb) a0  <-- 0x80003080
       0     5178        M 0x800017ac lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5201        M                                           #; (lsu) a2  <-- 0
       0     5202        M 0x800017b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017ac
       0     5203        M 0x800017ac lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
       0     5214        M                                           #; (lsu) a2  <-- 1
       0     5215        M 0x800017b0 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5216        M 0x800017b4 sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
       0     5217        M 0x800017b8 sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     5218        M 0x800017bc ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     5221        M 0x80000bcc addi    s0, s0, 1              #; s0  = 0x80002dff, (wrb) s0  <-- 0x80002e00
       0     5224        M 0x80000bd0 addi    s10, s10, 1            #; s10 = 0x80002e01, (wrb) s10 <-- 0x80002e02
       0     5225        M 0x80000bd4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5226        M 0x80000bd8 lbu     a0, 0(s0)              #; s0  = 0x80002e00, a0  <~~ Byte[0x80002e00]
       0     5239        M                                           #; (lsu) a0  <-- 0
       0     5240        M 0x80000bdc bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5252        M 0x80000be0 j       pc + 0xad8             #; goto 0x800016b8
       0     5264        M 0x800016b8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5265        M 0x800016bc bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016c4
       0     5276        M 0x800016c4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5277        M 0x800016c8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5278        M 0x800016cc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5288        M 0x800016d0 jalr    s2                     #; s2  = 0x80001714, (wrb) ra  <-- 0x800016d4, goto 0x80001714
       0     5302        M 0x80001714 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017bc
       0     5307        M 0x800017bc ret                            #; ra  = 0x800016d4, goto 0x800016d4
       0     5308        M 0x800016d4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5309        M 0x800016d8 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5312        M                                           #; (lsu) s11 <-- 0
       0     5313        M 0x800016dc lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5316        M                                           #; (lsu) s10 <-- 0
       0     5317        M 0x800016e0 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5320        M                                           #; (lsu) s9  <-- 0
       0     5321        M 0x800016e4 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5324        M                                           #; (lsu) s8  <-- 0
       0     5325        M 0x800016e8 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5328        M                                           #; (lsu) s7  <-- 0
       0     5329        M 0x800016ec lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5332        M                                           #; (lsu) s6  <-- 0
       0     5333        M 0x800016f0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5336        M                                           #; (lsu) s5  <-- 0
       0     5337        M 0x800016f4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5340        M                                           #; (lsu) s4  <-- 0
       0     5341        M 0x800016f8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5344        M                                           #; (lsu) s3  <-- 0
       0     5345        M 0x800016fc lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5348        M                                           #; (lsu) s2  <-- 0
       0     5349        M 0x80001700 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5352        M                                           #; (lsu) s1  <-- 0
       0     5353        M 0x80001704 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5356        M                                           #; (lsu) s0  <-- 0
       0     5357        M 0x80001708 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5358        M 0x8000170c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5360        M                                           #; (lsu) ra  <-- 0x80000b10
       0     5361        M 0x80001710 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     5373        M 0x80000b10 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5374        M 0x80000b14 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5376        M                                           #; (lsu) ra  <-- 0x80000aa0
       0     5377        M 0x80000b18 ret                            #; ra  = 0x80000aa0, goto 0x80000aa0
       0     5387        M 0x80000aa0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002aa0
       0     5388        M 0x80000aa4 addi    a0, a0, 1608           #; a0  = 0x80002aa0, (wrb) a0  <-- 0x800030e8
       0     5391        M 0x80000aa8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e8]
       0     5400        M 0x80000ab4 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                         M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5401        M 0x80000ab8 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x80000aac flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     5403        M                                           #; (lsu) ra  <-- 0x80002b70
                         M 0x80000ab0 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5404        M 0x80000abc ret                            #; ra  = 0x80002b70, goto 0x80002b70
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5407        M 0x80002b70 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5408        M 0x80002b74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b74
       0     5409        M 0x80002b78 jalr    ra, ra, 524            #; ra  = 0x80002b74, (wrb) ra  <-- 0x80002b7c, goto 0x80002d80
       0     5421        M 0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5422        M 0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b7c ~~> Word[0x0011ff5c]
       0     5423        M 0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
       0     5424        M 0x80002d8c jalr    ra, ra, -1260          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x8000289c
       0     5435        M 0x8000289c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5438        M 0x800028a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5439        M 0x800028a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5442        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5443        M 0x800028a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5446        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5447        M 0x800028ac lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5448        M 0x800028b0 ret                            #; ra  = 0x80002d90, goto 0x80002d90
       0     5450        M                                           #; (lsu) a0  <-- 0x00120190
       0     5451        M 0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5461        M                                           #; (lsu) a0  <-- 0
       0     5462        M 0x80002d94 mv      zero, a0               #; a0  = 0
       0     5463        M 0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5464        M 0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5466        M                                           #; (lsu) ra  <-- 0x80002b7c
       0     5467        M 0x80002da0 ret                            #; ra  = 0x80002b7c, goto 0x80002b7c
       0     5481        M 0x80002b7c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5485        M 0x80002b80 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b80
       0     5486        M 0x80002b84 jalr    ra, ra, 556            #; ra  = 0x80002b80, (wrb) ra  <-- 0x80002b88, goto 0x80002dac
       0     5487        M 0x80002dac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5488        M 0x80002db0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5489        M 0x80002db4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b88 ~~> Word[0x0011ff5c]
       0     5490        M 0x80002db8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002db8
       0     5491        M 0x80002dbc jalr    ra, ra, -1340          #; ra  = 0x80002db8, (wrb) ra  <-- 0x80002dc0, goto 0x8000287c
       0     5502        M 0x8000287c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5506        M 0x80002880 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5507        M 0x80002884 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5510        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5511        M 0x80002888 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5514        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5515        M 0x8000288c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5516        M 0x80002890 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5518        M                                           #; (lsu) a0  <-- 0
       0     5519        M 0x80002894 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5520        M 0x80002898 ret                            #; ra  = 0x80002dc0, goto 0x80002dc0
       0     5521        M 0x80002dc0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5524        M                                           #; (lsu) t0  <-- 0
       0     5525        M 0x80002dc4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5526        M 0x80002dc8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5527        M 0x80002dcc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5528        M                                           #; (lsu) ra  <-- 0x80002b88
       0     5532        M 0x80002dd0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5533        M 0x80002dd4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5534        M 0x80002dd8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dd8
       0     5535        M 0x80002ddc addi    t1, t1, 616            #; t1  = 0x80002dd8, (wrb) t1  <-- 0x80003040
       0     5543        M 0x80002de0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
       0     5544        M 0x80002de4 ret                            #; ra  = 0x80002b88, goto 0x80002b88
       0     5558        M 0x80002b88 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5558):
snitch_loads                                   135
snitch_stores                                  142
fpss_stores                                     14
fpss_loads                                      23
snitch_avg_load_latency                    12.0074
snitch_occupancy                            0.2295
snitch_fseq_rel_offloads                    0.0972
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.3830
fpss_avg_load_latency                       6.9130
fpss_occupancy                              0.0247
fpss_fpu_occupancy                          0.0169
fpss_fpu_rel_occupancy                      0.6861
cycles                                        5547
total_ipc                                   0.2542
