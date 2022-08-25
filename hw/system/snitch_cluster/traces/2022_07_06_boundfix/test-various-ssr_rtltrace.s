       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800028a0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800028a0, (wrb) ra  <-- 4120, goto 0x800028a0
       0      269        M 0x800028a0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038a0
       0      270        M 0x800028a4 addi    gp, gp, -280           #; gp  = 0x800038a0, (wrb) gp  <-- 0x80003788
       0      271        M 0x800028a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028a8
       0      272        M 0x800028ac jalr    ra, ra, 964            #; ra  = 0x800028a8, (wrb) ra  <-- 0x800028b0, goto 0x80002c6c
       0      292        M 0x80002c6c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002c70 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002c74 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002c78 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002c7c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002c80 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002c84 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002c88 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002c8c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002c90 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002c94 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002c98 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002c9c ret                            #; ra  = 0x800028b0, goto 0x800028b0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800028b0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800028b4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800028b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028b8
       0      508        M 0x800028bc jalr    ra, ra, 1036           #; ra  = 0x800028b8, (wrb) ra  <-- 0x800028c0, goto 0x80002cc4
       0      523        M 0x80002cc4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002cc8 ret                            #; ra  = 0x800028c0, goto 0x800028c0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800028c0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800028c4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800028c8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800028cc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800028d0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800028d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d4
       0      551        M 0x800028d8 addi    t0, t0, 1940           #; t0  = 0x800028d4, (wrb) t0  <-- 0x80003068
       0      552        M 0x800028dc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028dc
       0      562        M 0x800028e0 addi    t1, t1, 1936           #; t1  = 0x800028dc, (wrb) t1  <-- 0x8000306c
       0      563        M 0x800028e4 bge     t0, t1, pc + 16        #; t0  = 0x80003068, t1  = 0x8000306c, not taken
       0      564        M 0x800028e8 sw      zero, 0(t0)            #; t0  = 0x80003068, 0 ~~> Word[0x80003068]
       0      565        M 0x800028ec addi    t0, t0, 4              #; t0  = 0x80003068, (wrb) t0  <-- 0x8000306c
       0      573        M 0x800028f0 blt     t0, t1, pc - 8         #; t0  = 0x8000306c, t1  = 0x8000306c, not taken
       0      574        M 0x800028f4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800028f8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800028fc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002900 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002904 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002908 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000290c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002910 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002914 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002918 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000291c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002920 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002924 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002928 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000292c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002930 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002934 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002938 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000293c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002940 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002944 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002948 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000294c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002950 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002954 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002958 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000295c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002960 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002964 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002968 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000296c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002970 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002974 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002978 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000297c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002980 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002984 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002988 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002988
       0      684        M 0x8000298c lw      t0, 896(t0)            #; t0  = 0x80002988, t0  <~~ Word[0x80002d08]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002990 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002994 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002998 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002998
       0      708        M 0x8000299c lw      t2, 884(t2)            #; t2  = 0x80002998, t2  <~~ Word[0x80002d0c]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800029a0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800029a4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800029a8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800029ac sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800029b0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800029b4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800029b8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800029bc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800029c0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029c0
       0      762        M 0x800029c4 addi    t0, t0, 1480           #; t0  = 0x800029c0, (wrb) t0  <-- 0x80002f88
       0      763        M 0x800029c8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029c8
       0      764        M 0x800029cc addi    t1, t1, 1472           #; t1  = 0x800029c8, (wrb) t1  <-- 0x80002f88
       0      775        M 0x800029d0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029d0
       0      776        M 0x800029d4 addi    t2, t2, 1464           #; t2  = 0x800029d0, (wrb) t2  <-- 0x80002f88
       0      777        M 0x800029d8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800029d8
       0      778        M 0x800029dc addi    t3, t3, 1472           #; t3  = 0x800029d8, (wrb) t3  <-- 0x80002f98
       0      787        M 0x800029e0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f88, (wrb) sp  <-- 0x80122ef8
       0      788        M 0x800029e4 sub     sp, sp, t1             #; sp  = 0x80122ef8, t1  = 0x80002f88, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800029e8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f88, (wrb) sp  <-- 0x80122ef8
       0      790        M 0x800029ec sub     sp, sp, t3             #; sp  = 0x80122ef8, t3  = 0x80002f98, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800029f0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800029f4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800029f8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800029fc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a00 bge     t0, t1, pc + 24        #; t0  = 0x80002f88, t1  = 0x80002f88, taken, goto 0x80002a18
       0      823        M 0x80002a18 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a18
       0      824        M 0x80002a1c addi    t0, t0, 1392           #; t0  = 0x80002a18, (wrb) t0  <-- 0x80002f88
       0      835        M 0x80002a20 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a20
       0      836        M 0x80002a24 addi    t1, t1, 1400           #; t1  = 0x80002a20, (wrb) t1  <-- 0x80002f98
       0      837        M 0x80002a28 bge     t0, t1, pc + 20        #; t0  = 0x80002f88, t1  = 0x80002f98, not taken
       0      838        M 0x80002a2c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002a30 addi    t0, t0, 4              #; t0  = 0x80002f88, (wrb) t0  <-- 0x80002f8c
       0      848        M 0x80002a34 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002a38 blt     t0, t2, pc - 12        #; t0  = 0x80002f8c, t2  = 0x80002f88, not taken
       0      850        M 0x80002a3c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002a40 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002a44 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002a48 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002a4c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002a50 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002a54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a54
       0      877        M 0x80002a58 jalr    ra, ra, -796           #; ra  = 0x80002a54, (wrb) ra  <-- 0x80002a5c, goto 0x80002738
       0      899        M 0x80002738 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000273c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002740 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002744 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002748 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000274c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002750 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002754 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002758 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000275c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x80002760 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x80002764 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x80002768 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x8000276c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x80002770 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x80002774 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x80002778 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x8000277c lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x80002780 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002784 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x80002788 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x8000278c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002790 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002794 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x80002798 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x8000279c sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800027a0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800027a4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800027a8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800027ac sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x800027b0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x800027b4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x800027b8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x800027bc sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x800027c0 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x800027c4 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x800027c8 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x800027cc sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x800027d0 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x800027d4 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x800027d8 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x800027dc slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x800027e0 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x800027e4 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x800027e8 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x800027ec sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x800027f0 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x800027f4 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x800027f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x800027fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002800 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002804 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002808 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000280c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002810 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002814 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002818 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000281c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002820 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002824 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002828 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000282c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000382c
       0     1293        M 0x80002830 addi    a1, a1, -1984          #; a1  = 0x8000382c, (wrb) a1  <-- 0x8000306c
       0     1294        M 0x80002834 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000306c, (wrb) a0  <-- 0x8000306c
       0     1295        M 0x80002838 sw      zero, 0(a0)            #; a0  = 0x8000306c, 0 ~~> Word[0x8000306c]
       0     1296        M 0x8000283c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002840 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002844 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002848 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000284c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002850 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002854 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002858 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000285c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1361        M 0x80002860 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1362        M 0x80002864 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1363        M 0x80002868 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1364        M 0x8000286c lw      a0, 0(a1)              #; a1  = 0x8000306c, a0  <~~ Word[0x8000306c]
       0     1376        M                                           #; (lsu) a0  <-- 0
       0     1377        M 0x80002870 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1378        M 0x80002874 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1379        M 0x80002878 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1380        M 0x8000287c sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1385        M 0x80002880 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1386        M 0x80002884 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1387        M 0x80002888 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1388        M 0x8000288c sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1397        M 0x80002890 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1398        M 0x80002894 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1399        M 0x80002898 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1400        M 0x8000289c ret                            #; ra  = 0x80002a5c, goto 0x80002a5c
       0     1406        M 0x80002a5c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002a60 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002a64 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002a68 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002a6c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002a70 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002a74 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a74
       0     1425        M 0x80002a78 addi    t0, t0, 60             #; t0  = 0x80002a74, (wrb) t0  <-- 0x80002ab0
       0     1426        M 0x80002a7c csrw    mtvec, t0              #; t0  = 0x80002ab0, (lsu) a4  <-- 4132
       0     1433        M 0x80002a80 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a80
       0     1434        M 0x80002a84 jalr    ra, ra, 544            #; ra  = 0x80002a80, (wrb) ra  <-- 0x80002a88, goto 0x80002ca0
       0     1447        M 0x80002ca0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1448        M 0x80002ca4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a88 ~~> Word[0x0011ff5c]
       0     1449        M 0x80002ca8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ca8
       0     1450        M 0x80002cac jalr    ra, ra, -1584          #; ra  = 0x80000ca8, (wrb) ra  <-- 0x80002cb0, goto 0x80000678
       0     1471        M 0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1472        M 0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1483        M 0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1486        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1487        M 0x80000684 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1491        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80000688 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x8000068c ret                            #; ra  = 0x80002cb0, goto 0x80002cb0
       0     1495        M                                           #; (lsu) a0  <-- 0x00120190
       0     1496        M 0x80002cb0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1529        M                                           #; (lsu) a0  <-- 0
       0     1530        M 0x80002cb4 mv      zero, a0               #; a0  = 0
       0     1531        M 0x80002cb8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1532        M 0x80002cbc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1534        M                                           #; (lsu) ra  <-- 0x80002a88
       0     1535        M 0x80002cc0 ret                            #; ra  = 0x80002a88, goto 0x80002a88
       0     1539        M 0x80002a88 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a88
       0     1540        M 0x80002a8c jalr    ra, ra, -1108          #; ra  = 0x80000a88, (wrb) ra  <-- 0x80002a90, goto 0x80000634
       0     1546        M 0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1548        M 0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1551        M                                           #; (lsu) a0  <-- 0
       0     1552        M 0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
       0     1553        M 0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
       0     1557        M 0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
       0     1558        M 0x80000654 jalr    zero, t1, 64           #; t1  = 0x80000650, goto 0x80000690
       0     1574        M 0x80000690 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1575        M 0x80000694 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a90 ~~> Word[0x0011ff5c]
       0     1577        M 0x8000069c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1578        M 0x80000698 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1586        M 0x800006a0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1587        M 0x800006a4 lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
       0     1590        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1591        M 0x800006a8 lw      a1, 0(a1)              #; a1  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1594        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1595        M 0x800006ac lw      t2, 88(a1)             #; a1  = 0x0011ff70, t2  <~~ Word[0x0011ffc8]
       0     1598        M                                           #; (lsu) t2  <-- 0x00100000
       0     1599        M 0x800006b0 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1602        M                                           #; (lsu) a3  <-- 0x00100000
       0     1603        M 0x800006b4 lw      a5, 84(a1)             #; a1  = 0x0011ff70, a5  <~~ Word[0x0011ffc4]
       0     1604        M 0x800006b8 slli    a2, a0, 3              #; a0  = 25, (wrb) a2  <-- 200
       0     1605        M 0x800006bc add     a2, t2, a2             #; t2  = 0x00100000, a2  = 200, (wrb) a2  <-- 0x001000c8
       0     1606        M                                           #; (lsu) a5  <-- 0x0001df30
       0     1611        M 0x800006c0 add     a3, a5, a3             #; a5  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1612        M 0x800006c4 bgeu    a3, a2, pc + 36        #; a3  = 0x0011df30, a2  = 0x001000c8, taken, goto 0x800006e8
       0     1634        M 0x800006e8 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
       0     1635        M 0x800006ec li      a1, 1                  #; (wrb) a1  <-- 1
       0     1646        M 0x800006f0 blt     a0, a1, pc - 28        #; a0  = 25, a1  = 1, not taken
       0     1647        M 0x800006f4 addi    t0, a0, -1             #; a0  = 25, (wrb) t0  <-- 24
       0     1648        M 0x800006f8 slli    a1, t0, 3              #; t0  = 24, (wrb) a1  <-- 192
       0     1649        M 0x800006fc add     a1, a1, t2             #; a1  = 192, t2  = 0x00100000, (wrb) a1  <-- 0x001000c0
       0     1659        M 0x80000700 srli    a2, t2, 20             #; t2  = 0x00100000, (wrb) a2  <-- 1
       0     1660        M 0x80000704 snez    a6, a2                 #; a2  = 1, (wrb) a6  <-- 1
       0     1661        M 0x80000708 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1662        M 0x8000070c addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1671        M 0x80000710 sltu    a1, a1, a2             #; a1  = 0x001000c0, a2  = 0x00120001, (wrb) a1  <-- 1
       0     1672        M 0x80000714 and     a7, a6, a1             #; a6  = 1, a1  = 1, (wrb) a7  <-- 1
       0     1673        M 0x80000718 beqz    a7, pc + 132           #; a7  = 1, not taken
       0     1674        M 0x8000071c li      a5, 0                  #; (wrb) a5  <-- 0
       0     1683        M 0x80000720 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1684        M 0x80000724 li      a2, 64                 #; (wrb) a2  <-- 64
       0     1685        M 0x80000728 scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     1686        M 0x8000072c li      a2, 192                #; (wrb) a2  <-- 192
       0     1695        M 0x80000730 scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     1696        M 0x80000734 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1697        M 0x80000738 scfgw   zero, a1               #; a1  = 32
       0     1698        M 0x8000073c scfgwi  t2, 896                #; t2  = 0x00100000
       0     1707        M 0x80000740 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003740
       0     1708        M 0x80000744 addi    a1, a1, -1960          #; a1  = 0x80003740, (wrb) a1  <-- 0x80002f98
       0     1711        M 0x80000748 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f98]
       0     1712        M 0x8000074c csrrsi  a1, ssr, 1             #; 
       0     1719        M 0x80000750 lui     a1, 0x8421             #; (wrb) a1  <-- 0x08421000
       0     1720        M 0x80000754 addi    a1, a1, 133            #; a1  = 0x08421000, (wrb) a1  <-- 0x08421085
                         M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1721        M 0x80000758 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
       0     1722        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 0, a1  = 0x08421085
       0     1731        M 0x80000760 sub     a4, a5, a2             #; a5  = 0, a2  = 0, (wrb) a4  <-- 0
       0     1732        M 0x80000764 srli    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 0
       0     1733        M 0x80000768 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1734        M 0x8000076c srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1743        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1744        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1745        M 0x80000778 add     a2, a5, a2             #; a5  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1747        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 0
       0     1748        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1757        M 0x80000788 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
       0     1758        M 0x8000078c addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
       0     1760        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1761        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1762        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1767        M 0x80000790 bnez    a3, pc - 52            #; a3  = 24, taken, goto 0x8000075c
       0     1768        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 1, a1  = 0x08421085
       0     1771        M                                           #; (acc) a4  <-- 0x40c78733
       0     1772        M 0x80000760 sub     a4, a5, a2             #; a5  = 1, a2  = 0, (wrb) a4  <-- 1
       0     1773        M 0x80000764 srli    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 0
       0     1774        M 0x80000768 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1775        M 0x8000076c srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1776        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1777        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1778        M 0x80000778 add     a2, a5, a2             #; a5  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1780        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 1
       0     1781        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1782        M 0x80000788 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1783        M 0x8000078c addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
       0     1784        M 0x80000790 bnez    a3, pc - 52            #; a3  = 23, taken, goto 0x8000075c
       0     1785        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 2, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1786        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1787        M                                           #; (f:fpu) ft0  <-- 1.4142
       0     1788        M                                           #; (acc) a4  <-- 0x40c78733
       0     1789        M 0x80000760 sub     a4, a5, a2             #; a5  = 2, a2  = 0, (wrb) a4  <-- 2
       0     1790        M 0x80000764 srli    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 1
       0     1791        M 0x80000768 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1792        M 0x8000076c srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1793        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1794        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1795        M 0x80000778 add     a2, a5, a2             #; a5  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1797        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 2
       0     1798        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1799        M 0x80000788 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1800        M 0x8000078c addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
       0     1801        M 0x80000790 bnez    a3, pc - 52            #; a3  = 22, taken, goto 0x8000075c
       0     1802        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 3, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1803        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1804        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1805        M                                           #; (acc) a4  <-- 0x40c78733
       0     1806        M 0x80000760 sub     a4, a5, a2             #; a5  = 3, a2  = 0, (wrb) a4  <-- 3
       0     1807        M 0x80000764 srli    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 1
       0     1808        M 0x80000768 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1809        M 0x8000076c srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1810        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1811        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1812        M 0x80000778 add     a2, a5, a2             #; a5  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1814        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 3
       0     1815        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1816        M 0x80000788 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1817        M 0x8000078c addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
       0     1818        M 0x80000790 bnez    a3, pc - 52            #; a3  = 21, taken, goto 0x8000075c
       0     1819        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 4, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1820        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1821        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     1822        M                                           #; (acc) a4  <-- 0x40c78733
       0     1823        M 0x80000760 sub     a4, a5, a2             #; a5  = 4, a2  = 0, (wrb) a4  <-- 4
       0     1824        M 0x80000764 srli    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 2
       0     1825        M 0x80000768 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1826        M 0x8000076c srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1827        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1828        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1829        M 0x80000778 add     a2, a5, a2             #; a5  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1831        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 4
       0     1832        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1833        M 0x80000788 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1834        M 0x8000078c addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
       0     1835        M 0x80000790 bnez    a3, pc - 52            #; a3  = 20, taken, goto 0x8000075c
       0     1836        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 5, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1837        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1838        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1839        M                                           #; (acc) a4  <-- 0x40c78733
       0     1840        M 0x80000760 sub     a4, a5, a2             #; a5  = 5, a2  = 0, (wrb) a4  <-- 5
       0     1841        M 0x80000764 srli    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 2
       0     1842        M 0x80000768 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1843        M 0x8000076c srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1844        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1845        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1846        M 0x80000778 add     a2, a5, a2             #; a5  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1848        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 5
       0     1849        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1850        M 0x80000788 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1851        M 0x8000078c addi    a5, a5, 1              #; a5  = 5, (wrb) a5  <-- 6
       0     1852        M 0x80000790 bnez    a3, pc - 52            #; a3  = 19, taken, goto 0x8000075c
       0     1853        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 6, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 7.071
       0     1854        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1855        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1856        M                                           #; (acc) a4  <-- 0x40c78733
       0     1857        M 0x80000760 sub     a4, a5, a2             #; a5  = 6, a2  = 0, (wrb) a4  <-- 6
       0     1858        M 0x80000764 srli    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 3
       0     1859        M 0x80000768 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1860        M 0x8000076c srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1861        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1862        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1863        M 0x80000778 add     a2, a5, a2             #; a5  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1865        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 6
       0     1866        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1867        M 0x80000788 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1868        M 0x8000078c addi    a5, a5, 1              #; a5  = 6, (wrb) a5  <-- 7
       0     1869        M 0x80000790 bnez    a3, pc - 52            #; a3  = 18, taken, goto 0x8000075c
       0     1870        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 7, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1871        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1872        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1873        M                                           #; (acc) a4  <-- 0x40c78733
       0     1874        M 0x80000760 sub     a4, a5, a2             #; a5  = 7, a2  = 0, (wrb) a4  <-- 7
       0     1875        M 0x80000764 srli    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 3
       0     1876        M 0x80000768 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1877        M 0x8000076c srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1878        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1879        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1880        M 0x80000778 add     a2, a5, a2             #; a5  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1882        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 7
       0     1883        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1884        M 0x80000788 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1885        M 0x8000078c addi    a5, a5, 1              #; a5  = 7, (wrb) a5  <-- 8
       0     1886        M 0x80000790 bnez    a3, pc - 52            #; a3  = 17, taken, goto 0x8000075c
       0     1887        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 8, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1888        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1889        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     1890        M                                           #; (acc) a4  <-- 0x40c78733
       0     1891        M 0x80000760 sub     a4, a5, a2             #; a5  = 8, a2  = 0, (wrb) a4  <-- 8
       0     1892        M 0x80000764 srli    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 4
       0     1893        M 0x80000768 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1894        M 0x8000076c srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1895        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1896        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1897        M 0x80000778 add     a2, a5, a2             #; a5  = 8, a2  = 0, (wrb) a2  <-- 8
       0     1899        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 8
       0     1900        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1901        M 0x80000788 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1902        M 0x8000078c addi    a5, a5, 1              #; a5  = 8, (wrb) a5  <-- 9
       0     1903        M 0x80000790 bnez    a3, pc - 52            #; a3  = 16, taken, goto 0x8000075c
       0     1904        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 9, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1905        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1906        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1907        M                                           #; (acc) a4  <-- 0x40c78733
       0     1908        M 0x80000760 sub     a4, a5, a2             #; a5  = 9, a2  = 0, (wrb) a4  <-- 9
       0     1909        M 0x80000764 srli    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 4
       0     1910        M 0x80000768 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1911        M 0x8000076c srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1912        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1913        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1914        M 0x80000778 add     a2, a5, a2             #; a5  = 9, a2  = 0, (wrb) a2  <-- 9
       0     1916        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 9
       0     1917        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1918        M 0x80000788 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1919        M 0x8000078c addi    a5, a5, 1              #; a5  = 9, (wrb) a5  <-- 10
       0     1920        M 0x80000790 bnez    a3, pc - 52            #; a3  = 15, taken, goto 0x8000075c
       0     1921        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 10, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1922        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1923        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1924        M                                           #; (acc) a4  <-- 0x40c78733
       0     1925        M 0x80000760 sub     a4, a5, a2             #; a5  = 10, a2  = 0, (wrb) a4  <-- 10
       0     1926        M 0x80000764 srli    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 5
       0     1927        M 0x80000768 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1928        M 0x8000076c srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1929        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1930        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1931        M 0x80000778 add     a2, a5, a2             #; a5  = 10, a2  = 0, (wrb) a2  <-- 10
       0     1933        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 10
       0     1934        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1935        M 0x80000788 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1936        M 0x8000078c addi    a5, a5, 1              #; a5  = 10, (wrb) a5  <-- 11
       0     1937        M 0x80000790 bnez    a3, pc - 52            #; a3  = 14, taken, goto 0x8000075c
       0     1938        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 11, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 14.142
       0     1939        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     1940        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1941        M                                           #; (acc) a4  <-- 0x40c78733
       0     1942        M 0x80000760 sub     a4, a5, a2             #; a5  = 11, a2  = 0, (wrb) a4  <-- 11
       0     1943        M 0x80000764 srli    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 5
       0     1944        M 0x80000768 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1945        M 0x8000076c srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1946        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1947        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1948        M 0x80000778 add     a2, a5, a2             #; a5  = 11, a2  = 0, (wrb) a2  <-- 11
       0     1950        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 11
       0     1951        M                                           #; (f:fpu) ft4  <-- 11.0
       0     1952        M 0x80000788 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     1953        M 0x8000078c addi    a5, a5, 1              #; a5  = 11, (wrb) a5  <-- 12
       0     1954        M 0x80000790 bnez    a3, pc - 52            #; a3  = 13, taken, goto 0x8000075c
       0     1955        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 12, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     1956        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     1957        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     1958        M                                           #; (acc) a4  <-- 0x40c78733
       0     1959        M 0x80000760 sub     a4, a5, a2             #; a5  = 12, a2  = 0, (wrb) a4  <-- 12
       0     1960        M 0x80000764 srli    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 6
       0     1961        M 0x80000768 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1962        M 0x8000076c srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1963        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1964        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1965        M 0x80000778 add     a2, a5, a2             #; a5  = 12, a2  = 0, (wrb) a2  <-- 12
       0     1967        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 12
       0     1968        M                                           #; (f:fpu) ft4  <-- 12.0
       0     1969        M 0x80000788 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     1970        M 0x8000078c addi    a5, a5, 1              #; a5  = 12, (wrb) a5  <-- 13
       0     1971        M 0x80000790 bnez    a3, pc - 52            #; a3  = 12, taken, goto 0x8000075c
       0     1972        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 13, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     1973        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
       0     1974        M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     1975        M                                           #; (acc) a4  <-- 0x40c78733
       0     1976        M 0x80000760 sub     a4, a5, a2             #; a5  = 13, a2  = 0, (wrb) a4  <-- 13
       0     1977        M 0x80000764 srli    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 6
       0     1978        M 0x80000768 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1979        M 0x8000076c srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1980        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1981        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1982        M 0x80000778 add     a2, a5, a2             #; a5  = 13, a2  = 0, (wrb) a2  <-- 13
       0     1984        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 13
       0     1985        M                                           #; (f:fpu) ft4  <-- 13.0
       0     1986        M 0x80000788 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
       0     1987        M 0x8000078c addi    a5, a5, 1              #; a5  = 13, (wrb) a5  <-- 14
       0     1988        M 0x80000790 bnez    a3, pc - 52            #; a3  = 11, taken, goto 0x8000075c
       0     1989        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 14, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 18.3846
       0     1990        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
       0     1991        M                                           #; (f:fpu) ft0  <-- 18.3846
       0     1992        M                                           #; (acc) a4  <-- 0x40c78733
       0     1993        M 0x80000760 sub     a4, a5, a2             #; a5  = 14, a2  = 0, (wrb) a4  <-- 14
       0     1994        M 0x80000764 srli    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 7
       0     1995        M 0x80000768 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1996        M 0x8000076c srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     1997        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1998        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1999        M 0x80000778 add     a2, a5, a2             #; a5  = 14, a2  = 0, (wrb) a2  <-- 14
       0     2001        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 14
       0     2002        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2003        M 0x80000788 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
       0     2004        M 0x8000078c addi    a5, a5, 1              #; a5  = 14, (wrb) a5  <-- 15
       0     2005        M 0x80000790 bnez    a3, pc - 52            #; a3  = 10, taken, goto 0x8000075c
       0     2006        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 15, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 19.7988
       0     2007        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
       0     2008        M                                           #; (f:fpu) ft0  <-- 19.7988
       0     2009        M                                           #; (acc) a4  <-- 0x40c78733
       0     2010        M 0x80000760 sub     a4, a5, a2             #; a5  = 15, a2  = 0, (wrb) a4  <-- 15
       0     2011        M 0x80000764 srli    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 7
       0     2012        M 0x80000768 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     2013        M 0x8000076c srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     2014        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2015        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2016        M 0x80000778 add     a2, a5, a2             #; a5  = 15, a2  = 0, (wrb) a2  <-- 15
       0     2018        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 15
       0     2019        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2020        M 0x80000788 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
       0     2021        M 0x8000078c addi    a5, a5, 1              #; a5  = 15, (wrb) a5  <-- 16
       0     2022        M 0x80000790 bnez    a3, pc - 52            #; a3  = 9, taken, goto 0x8000075c
       0     2023        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 16, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 21.2130000
       0     2024        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
       0     2025        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2026        M                                           #; (acc) a4  <-- 0x40c78733
       0     2027        M 0x80000760 sub     a4, a5, a2             #; a5  = 16, a2  = 0, (wrb) a4  <-- 16
       0     2028        M 0x80000764 srli    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 8
       0     2029        M 0x80000768 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     2030        M 0x8000076c srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2031        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2032        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2033        M 0x80000778 add     a2, a5, a2             #; a5  = 16, a2  = 0, (wrb) a2  <-- 16
       0     2035        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 16
       0     2036        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2037        M 0x80000788 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
       0     2038        M 0x8000078c addi    a5, a5, 1              #; a5  = 16, (wrb) a5  <-- 17
       0     2039        M 0x80000790 bnez    a3, pc - 52            #; a3  = 8, taken, goto 0x8000075c
       0     2040        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 17, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 22.6272
       0     2041        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
       0     2042        M                                           #; (f:fpu) ft0  <-- 22.6272
       0     2043        M                                           #; (acc) a4  <-- 0x40c78733
       0     2044        M 0x80000760 sub     a4, a5, a2             #; a5  = 17, a2  = 0, (wrb) a4  <-- 17
       0     2045        M 0x80000764 srli    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 8
       0     2046        M 0x80000768 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     2047        M 0x8000076c srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2048        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2049        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2050        M 0x80000778 add     a2, a5, a2             #; a5  = 17, a2  = 0, (wrb) a2  <-- 17
       0     2052        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 17
       0     2053        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2054        M 0x80000788 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
       0     2055        M 0x8000078c addi    a5, a5, 1              #; a5  = 17, (wrb) a5  <-- 18
       0     2056        M 0x80000790 bnez    a3, pc - 52            #; a3  = 7, taken, goto 0x8000075c
       0     2057        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 18, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 24.0414
       0     2058        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
       0     2059        M                                           #; (f:fpu) ft0  <-- 24.0414
       0     2060        M                                           #; (acc) a4  <-- 0x40c78733
       0     2061        M 0x80000760 sub     a4, a5, a2             #; a5  = 18, a2  = 0, (wrb) a4  <-- 18
       0     2062        M 0x80000764 srli    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 9
       0     2063        M 0x80000768 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     2064        M 0x8000076c srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2065        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2066        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2067        M 0x80000778 add     a2, a5, a2             #; a5  = 18, a2  = 0, (wrb) a2  <-- 18
       0     2069        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 18
       0     2070        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2071        M 0x80000788 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
       0     2072        M 0x8000078c addi    a5, a5, 1              #; a5  = 18, (wrb) a5  <-- 19
       0     2073        M 0x80000790 bnez    a3, pc - 52            #; a3  = 6, taken, goto 0x8000075c
       0     2074        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 19, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 25.4556000
       0     2075        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
       0     2076        M                                           #; (f:fpu) ft0  <-- 25.4556000
       0     2077        M                                           #; (acc) a4  <-- 0x40c78733
       0     2078        M 0x80000760 sub     a4, a5, a2             #; a5  = 19, a2  = 0, (wrb) a4  <-- 19
       0     2079        M 0x80000764 srli    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 9
       0     2080        M 0x80000768 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     2081        M 0x8000076c srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2082        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2083        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2084        M 0x80000778 add     a2, a5, a2             #; a5  = 19, a2  = 0, (wrb) a2  <-- 19
       0     2086        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 19
       0     2087        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2088        M 0x80000788 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
       0     2089        M 0x8000078c addi    a5, a5, 1              #; a5  = 19, (wrb) a5  <-- 20
       0     2090        M 0x80000790 bnez    a3, pc - 52            #; a3  = 5, taken, goto 0x8000075c
       0     2091        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 20, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 26.8698000
       0     2092        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
       0     2093        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2094        M                                           #; (acc) a4  <-- 0x40c78733
       0     2095        M 0x80000760 sub     a4, a5, a2             #; a5  = 20, a2  = 0, (wrb) a4  <-- 20
       0     2096        M 0x80000764 srli    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 10
       0     2097        M 0x80000768 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     2098        M 0x8000076c srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2099        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2100        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2101        M 0x80000778 add     a2, a5, a2             #; a5  = 20, a2  = 0, (wrb) a2  <-- 20
       0     2103        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 20
       0     2104        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2105        M 0x80000788 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
       0     2106        M 0x8000078c addi    a5, a5, 1              #; a5  = 20, (wrb) a5  <-- 21
       0     2107        M 0x80000790 bnez    a3, pc - 52            #; a3  = 4, taken, goto 0x8000075c
       0     2108        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 21, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2109        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
       0     2110        M                                           #; (f:fpu) ft0  <-- 28.284
       0     2111        M                                           #; (acc) a4  <-- 0x40c78733
       0     2112        M 0x80000760 sub     a4, a5, a2             #; a5  = 21, a2  = 0, (wrb) a4  <-- 21
       0     2113        M 0x80000764 srli    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 10
       0     2114        M 0x80000768 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     2115        M 0x8000076c srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2116        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2117        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2118        M 0x80000778 add     a2, a5, a2             #; a5  = 21, a2  = 0, (wrb) a2  <-- 21
       0     2120        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 21
       0     2121        M                                           #; (f:fpu) ft4  <-- 21.0
       0     2122        M 0x80000788 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
       0     2123        M 0x8000078c addi    a5, a5, 1              #; a5  = 21, (wrb) a5  <-- 22
       0     2124        M 0x80000790 bnez    a3, pc - 52            #; a3  = 3, taken, goto 0x8000075c
       0     2125        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 22, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 29.6982000
       0     2126        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
       0     2127        M                                           #; (f:fpu) ft0  <-- 29.6982000
       0     2128        M                                           #; (acc) a4  <-- 0x40c78733
       0     2129        M 0x80000760 sub     a4, a5, a2             #; a5  = 22, a2  = 0, (wrb) a4  <-- 22
       0     2130        M 0x80000764 srli    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 11
       0     2131        M 0x80000768 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     2132        M 0x8000076c srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2133        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2134        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2135        M 0x80000778 add     a2, a5, a2             #; a5  = 22, a2  = 0, (wrb) a2  <-- 22
       0     2137        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 22
       0     2138        M                                           #; (f:fpu) ft4  <-- 22.0
       0     2139        M 0x80000788 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
       0     2140        M 0x8000078c addi    a5, a5, 1              #; a5  = 22, (wrb) a5  <-- 23
       0     2141        M 0x80000790 bnez    a3, pc - 52            #; a3  = 2, taken, goto 0x8000075c
       0     2142        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 23, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 31.1124000
       0     2143        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
       0     2144        M                                           #; (f:fpu) ft0  <-- 31.1124000
       0     2145        M                                           #; (acc) a4  <-- 0x40c78733
       0     2146        M 0x80000760 sub     a4, a5, a2             #; a5  = 23, a2  = 0, (wrb) a4  <-- 23
       0     2147        M 0x80000764 srli    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 11
       0     2148        M 0x80000768 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     2149        M 0x8000076c srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2150        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2151        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2152        M 0x80000778 add     a2, a5, a2             #; a5  = 23, a2  = 0, (wrb) a2  <-- 23
       0     2154        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 23
       0     2155        M                                           #; (f:fpu) ft4  <-- 23.0
       0     2156        M 0x80000788 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
       0     2157        M 0x8000078c addi    a5, a5, 1              #; a5  = 23, (wrb) a5  <-- 24
       0     2158        M 0x80000790 bnez    a3, pc - 52            #; a3  = 1, taken, goto 0x8000075c
       0     2159        M 0x8000075c mulhu   a2, a5, a1             #; a5  = 24, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 32.5266000
       0     2160        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
       0     2161        M                                           #; (f:fpu) ft0  <-- 32.5266000
       0     2162        M                                           #; (acc) a4  <-- 0x40c78733
       0     2163        M 0x80000760 sub     a4, a5, a2             #; a5  = 24, a2  = 0, (wrb) a4  <-- 24
       0     2164        M 0x80000764 srli    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 12
       0     2165        M 0x80000768 add     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
       0     2166        M 0x8000076c srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
       0     2167        M 0x80000770 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2168        M 0x80000774 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2169        M 0x80000778 add     a2, a5, a2             #; a5  = 24, a2  = 0, (wrb) a2  <-- 24
       0     2171        M 0x8000077c fcvt.d.w ft4, a2               #; ac1  = 24
       0     2172        M                                           #; (f:fpu) ft4  <-- 24.0
       0     2173        M 0x80000788 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
       0     2174        M 0x8000078c addi    a5, a5, 1              #; a5  = 24, (wrb) a5  <-- 25
       0     2175        M 0x80000790 bnez    a3, pc - 52            #; a3  = 0, not taken
       0     2176        M                                           #; (f:fpu) ft4  <-- 33.9408000
       0     2177        M 0x80000798 j       pc + 0x60              #; goto 0x800007f8
                         M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
       0     2178        M 0x80000794 csrrci  a1, ssr, 1             #; (f:fpu) ft0  <-- 33.9408000
       0     2188        M 0x800007f8 beqz    a7, pc + 68            #; a7  = 1, not taken
       0     2189        M 0x800007fc li      a1, 8                  #; (wrb) a1  <-- 8
       0     2200        M 0x80000800 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2201        M 0x80000804 li      a3, 192                #; (wrb) a3  <-- 192
       0     2202        M 0x80000808 scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     2203        M 0x8000080c scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2212        M 0x80000810 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2213        M 0x80000814 scfgw   zero, a1               #; a1  = 32
       0     2214        M 0x80000818 scfgwi  t2, 768                #; t2  = 0x00100000
       0     2216        M 0x8000081c csrrsi  a1, ssr, 1             #; 
       0     2225        M 0x80000824 mv      a1, a0                 #; a0  = 25, (wrb) a1  <-- 25
                         M 0x80000820 fcvt.d.w ft3, zero             #; ac1  = 0
       0     2226        M 0x80000828 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2229        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 0.0, ft0  = 0.0, ft3  = 0.0
       0     2232        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2236        M 0x80000830 bnez    a1, pc - 8             #; a1  = 24, taken, goto 0x80000828
       0     2237        M 0x80000828 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
       0     2239        M 0x80000830 bnez    a1, pc - 8             #; a1  = 23, taken, goto 0x80000828
       0     2240        M 0x80000828 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 1.4142, ft0  = 1.4142, ft3  = 0.0
       0     2242        M 0x80000830 bnez    a1, pc - 8             #; a1  = 22, taken, goto 0x80000828
       0     2243        M 0x80000828 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 1.9999616
       0     2244        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 2.8284, ft0  = 2.8284, ft3  = 1.9999616
       0     2245        M 0x80000830 bnez    a1, pc - 8             #; a1  = 21, taken, goto 0x80000828
       0     2246        M 0x80000828 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
       0     2247        M                                           #; (f:fpu) ft3  <-- 9.9998082
       0     2248        M 0x80000830 bnez    a1, pc - 8             #; a1  = 20, taken, goto 0x80000828
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 4.2426000, ft0  = 4.2426000, ft3  = 9.9998082
       0     2249        M 0x80000828 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
       0     2251        M 0x80000830 bnez    a1, pc - 8             #; a1  = 19, taken, goto 0x80000828
                         M                                           #; (f:fpu) ft3  <-- 27.9994630
       0     2252        M 0x80000828 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 5.6568, ft0  = 5.6568, ft3  = 27.9994630
       0     2254        M 0x80000830 bnez    a1, pc - 8             #; a1  = 18, taken, goto 0x80000828
       0     2255        M 0x80000828 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 59.9988492
       0     2256        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 7.071, ft0  = 7.071, ft3  = 59.9988492
       0     2257        M 0x80000830 bnez    a1, pc - 8             #; a1  = 17, taken, goto 0x80000828
       0     2258        M 0x80000828 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
       0     2259        M                                           #; (f:fpu) ft3  <-- 109.9978902
       0     2260        M 0x80000830 bnez    a1, pc - 8             #; a1  = 16, taken, goto 0x80000828
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 8.4852000, ft0  = 8.4852000, ft3  = 109.9978902
       0     2261        M 0x80000828 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
       0     2263        M 0x80000830 bnez    a1, pc - 8             #; a1  = 15, taken, goto 0x80000828
                         M                                           #; (f:fpu) ft3  <-- 181.9965092
       0     2264        M 0x80000828 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 9.8994, ft0  = 9.8994, ft3  = 181.9965092
       0     2266        M 0x80000830 bnez    a1, pc - 8             #; a1  = 14, taken, goto 0x80000828
       0     2267        M 0x80000828 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 279.9946296
       0     2268        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 11.3136, ft0  = 11.3136, ft3  = 279.9946296
       0     2269        M 0x80000830 bnez    a1, pc - 8             #; a1  = 13, taken, goto 0x80000828
       0     2270        M 0x80000828 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
       0     2271        M                                           #; (f:fpu) ft3  <-- 407.9921746
       0     2272        M 0x80000830 bnez    a1, pc - 8             #; a1  = 12, taken, goto 0x80000828
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 12.7278000, ft0  = 12.7278000, ft3  = 407.9921746
       0     2273        M 0x80000828 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
       0     2275        M 0x80000830 bnez    a1, pc - 8             #; a1  = 11, taken, goto 0x80000828
                         M                                           #; (f:fpu) ft3  <-- 569.9890674
       0     2276        M 0x80000828 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 14.142, ft0  = 14.142, ft3  = 569.9890674
       0     2278        M 0x80000830 bnez    a1, pc - 8             #; a1  = 10, taken, goto 0x80000828
       0     2279        M 0x80000828 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 769.9852314
       0     2280        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 15.5562000, ft0  = 15.5562000, ft3  = 769.9852314
       0     2281        M 0x80000830 bnez    a1, pc - 8             #; a1  = 9, taken, goto 0x80000828
       0     2282        M 0x80000828 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
       0     2283        M                                           #; (f:fpu) ft3  <-- 1011.9805898
       0     2284        M 0x80000830 bnez    a1, pc - 8             #; a1  = 8, taken, goto 0x80000828
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 16.9704000, ft0  = 16.9704000, ft3  = 1011.9805898
       0     2285        M 0x80000828 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
       0     2287        M 0x80000830 bnez    a1, pc - 8             #; a1  = 7, taken, goto 0x80000828
                         M                                           #; (f:fpu) ft3  <-- 1299.9750660
       0     2288        M 0x80000828 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 18.3846, ft0  = 18.3846, ft3  = 1299.9750660
       0     2290        M 0x80000830 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000828
       0     2291        M 0x80000828 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 1637.9685832
       0     2292        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 19.7988, ft0  = 19.7988, ft3  = 1637.9685832
       0     2293        M 0x80000830 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000828
       0     2294        M 0x80000828 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     2295        M                                           #; (f:fpu) ft3  <-- 2029.9610646
       0     2296        M 0x80000830 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000828
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 21.2130000, ft0  = 21.2130000, ft3  = 2029.9610646
       0     2297        M 0x80000828 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     2299        M 0x80000830 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000828
                         M                                           #; (f:fpu) ft3  <-- 2479.9524336
       0     2300        M 0x80000828 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 22.6272, ft0  = 22.6272, ft3  = 2479.9524336
       0     2302        M 0x80000830 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000828
       0     2303        M 0x80000828 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 2991.9426134
       0     2304        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 24.0414, ft0  = 24.0414, ft3  = 2991.9426134
       0     2305        M 0x80000830 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000828
       0     2306        M 0x80000828 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     2307        M                                           #; (f:fpu) ft3  <-- 3569.9315274
       0     2308        M 0x80000830 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 25.4556000, ft0  = 25.4556000, ft3  = 3569.9315274
       0     2310        M 0x80000838 j       pc + 0x24              #; goto 0x8000085c
       0     2311        M                                           #; (f:fpu) ft3  <-- 4217.9190988
       0     2312        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 26.8698000, ft0  = 26.8698000, ft3  = 4217.9190988
       0     2315        M                                           #; (f:fpu) ft3  <-- 4939.9052508
       0     2316        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 28.284, ft0  = 28.284, ft3  = 4939.9052508
       0     2319        M                                           #; (f:fpu) ft3  <-- 5739.8899068
       0     2320        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 29.6982000, ft0  = 29.6982000, ft3  = 5739.8899068
       0     2321        M 0x8000085c li      a5, 0                  #; (wrb) a5  <-- 0
       0     2323        M                                           #; (f:fpu) ft3  <-- 6621.8729900
       0     2324        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 31.1124000, ft0  = 31.1124000, ft3  = 6621.8729900
       0     2327        M                                           #; (f:fpu) ft3  <-- 7589.8544238
       0     2328        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 32.5266000, ft0  = 32.5266000, ft3  = 7589.8544238
       0     2331        M                                           #; (f:fpu) ft3  <-- 8647.8341314
       0     2332        M 0x8000082c fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 33.9408000, ft0  = 33.9408000, ft3  = 8647.8341314
       0     2333        M 0x80000834 csrrci  a1, ssr, 1             #; 
       0     2334        M 0x80000864 mv      a1, t2                 #; t2  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M 0x80000860 fcvt.d.w ft4, zero             #; ac1  = 0
       0     2335        M 0x80000868 j       pc + 0x10              #; goto 0x80000878
                         M                                           #; (f:fpu) ft3  <-- 9799.8120360
       0     2336        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2345        M 0x80000878 andi    a2, a5, 1              #; a5  = 0, (wrb) a2  <-- 0
       0     2346        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2360        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100000]
       0     2361        M 0x8000086c addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
                         M                                           #; (f:lsu) ft5  <-- 0.0
       0     2362        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 0.0, ft4  = 0.0
       0     2363        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 1, not taken
       0     2364        M 0x80000878 andi    a2, a5, 1              #; a5  = 1, (wrb) a2  <-- 1
       0     2365        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     2366        M 0x8000086c addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
       0     2367        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
       0     2368        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 2, not taken
       0     2369        M 0x80000878 andi    a2, a5, 1              #; a5  = 2, (wrb) a2  <-- 0
       0     2370        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2373        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100010]
       0     2374        M 0x8000086c addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
                         M                                           #; (f:lsu) ft5  <-- 2.8284
       0     2375        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 2.8284, ft4  = 0.0
       0     2376        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 3, not taken
       0     2377        M 0x80000878 andi    a2, a5, 1              #; a5  = 3, (wrb) a2  <-- 1
       0     2378        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     2379        M 0x8000086c addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
       0     2380        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
       0     2381        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 4, not taken
       0     2382        M 0x80000878 andi    a2, a5, 1              #; a5  = 4, (wrb) a2  <-- 0
       0     2383        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2386        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100020]
       0     2387        M 0x8000086c addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
                         M                                           #; (f:lsu) ft5  <-- 5.6568
       0     2388        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 5.6568, ft4  = 2.8284
       0     2389        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 5, not taken
       0     2390        M 0x80000878 andi    a2, a5, 1              #; a5  = 5, (wrb) a2  <-- 1
       0     2391        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2392        M 0x8000086c addi    a5, a5, 1              #; a5  = 5, (wrb) a5  <-- 6
       0     2393        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
       0     2394        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 6, not taken
       0     2395        M 0x80000878 andi    a2, a5, 1              #; a5  = 6, (wrb) a2  <-- 0
       0     2396        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2399        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100030]
       0     2400        M 0x8000086c addi    a5, a5, 1              #; a5  = 6, (wrb) a5  <-- 7
                         M                                           #; (f:lsu) ft5  <-- 8.4852000
       0     2401        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 8.4852000, ft4  = 8.4852000
       0     2402        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 7, not taken
       0     2403        M 0x80000878 andi    a2, a5, 1              #; a5  = 7, (wrb) a2  <-- 1
       0     2404        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     2405        M 0x8000086c addi    a5, a5, 1              #; a5  = 7, (wrb) a5  <-- 8
       0     2406        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
       0     2407        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 8, not taken
       0     2408        M 0x80000878 andi    a2, a5, 1              #; a5  = 8, (wrb) a2  <-- 0
       0     2409        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2412        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100040]
       0     2413        M 0x8000086c addi    a5, a5, 1              #; a5  = 8, (wrb) a5  <-- 9
                         M                                           #; (f:lsu) ft5  <-- 11.3136
       0     2414        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 11.3136, ft4  = 16.9704000
       0     2415        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 9, not taken
       0     2416        M 0x80000878 andi    a2, a5, 1              #; a5  = 9, (wrb) a2  <-- 1
       0     2417        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2418        M 0x8000086c addi    a5, a5, 1              #; a5  = 9, (wrb) a5  <-- 10
       0     2419        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
       0     2420        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 10, not taken
       0     2421        M 0x80000878 andi    a2, a5, 1              #; a5  = 10, (wrb) a2  <-- 0
       0     2422        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2425        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100050]
       0     2426        M 0x8000086c addi    a5, a5, 1              #; a5  = 10, (wrb) a5  <-- 11
                         M                                           #; (f:lsu) ft5  <-- 14.142
       0     2427        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 14.142, ft4  = 28.284
       0     2428        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 11, not taken
       0     2429        M 0x80000878 andi    a2, a5, 1              #; a5  = 11, (wrb) a2  <-- 1
       0     2430        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 42.426
       0     2431        M 0x8000086c addi    a5, a5, 1              #; a5  = 11, (wrb) a5  <-- 12
       0     2432        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
       0     2433        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 12, not taken
       0     2434        M 0x80000878 andi    a2, a5, 1              #; a5  = 12, (wrb) a2  <-- 0
       0     2435        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2438        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100060]
       0     2439        M 0x8000086c addi    a5, a5, 1              #; a5  = 12, (wrb) a5  <-- 13
                         M                                           #; (f:lsu) ft5  <-- 16.9704000
       0     2440        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 16.9704000, ft4  = 42.426
       0     2441        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 13, not taken
       0     2442        M 0x80000878 andi    a2, a5, 1              #; a5  = 13, (wrb) a2  <-- 1
       0     2443        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 59.3964
       0     2444        M 0x8000086c addi    a5, a5, 1              #; a5  = 13, (wrb) a5  <-- 14
       0     2445        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
       0     2446        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 14, not taken
       0     2447        M 0x80000878 andi    a2, a5, 1              #; a5  = 14, (wrb) a2  <-- 0
       0     2448        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2451        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100070]
       0     2452        M 0x8000086c addi    a5, a5, 1              #; a5  = 14, (wrb) a5  <-- 15
                         M                                           #; (f:lsu) ft5  <-- 19.7988
       0     2453        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 19.7988, ft4  = 59.3964
       0     2454        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 15, not taken
       0     2455        M 0x80000878 andi    a2, a5, 1              #; a5  = 15, (wrb) a2  <-- 1
       0     2456        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 79.1952
       0     2457        M 0x8000086c addi    a5, a5, 1              #; a5  = 15, (wrb) a5  <-- 16
       0     2458        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
       0     2459        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 16, not taken
       0     2460        M 0x80000878 andi    a2, a5, 1              #; a5  = 16, (wrb) a2  <-- 0
       0     2461        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2464        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100080]
       0     2465        M 0x8000086c addi    a5, a5, 1              #; a5  = 16, (wrb) a5  <-- 17
                         M                                           #; (f:lsu) ft5  <-- 22.6272
       0     2466        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 22.6272, ft4  = 79.1952
       0     2467        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 17, not taken
       0     2468        M 0x80000878 andi    a2, a5, 1              #; a5  = 17, (wrb) a2  <-- 1
       0     2469        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 101.8224
       0     2470        M 0x8000086c addi    a5, a5, 1              #; a5  = 17, (wrb) a5  <-- 18
       0     2471        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
       0     2472        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 18, not taken
       0     2473        M 0x80000878 andi    a2, a5, 1              #; a5  = 18, (wrb) a2  <-- 0
       0     2474        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2477        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100090]
       0     2478        M 0x8000086c addi    a5, a5, 1              #; a5  = 18, (wrb) a5  <-- 19
                         M                                           #; (f:lsu) ft5  <-- 25.4556000
       0     2479        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 25.4556000, ft4  = 101.8224
       0     2480        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 19, not taken
       0     2481        M 0x80000878 andi    a2, a5, 1              #; a5  = 19, (wrb) a2  <-- 1
       0     2482        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 127.2780000
       0     2483        M 0x8000086c addi    a5, a5, 1              #; a5  = 19, (wrb) a5  <-- 20
       0     2484        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
       0     2485        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 20, not taken
       0     2486        M 0x80000878 andi    a2, a5, 1              #; a5  = 20, (wrb) a2  <-- 0
       0     2487        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2490        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x001000a0]
       0     2491        M 0x8000086c addi    a5, a5, 1              #; a5  = 20, (wrb) a5  <-- 21
                         M                                           #; (f:lsu) ft5  <-- 28.284
       0     2492        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 28.284, ft4  = 127.2780000
       0     2493        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 21, not taken
       0     2494        M 0x80000878 andi    a2, a5, 1              #; a5  = 21, (wrb) a2  <-- 1
       0     2495        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 155.5620000
       0     2496        M 0x8000086c addi    a5, a5, 1              #; a5  = 21, (wrb) a5  <-- 22
       0     2497        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
       0     2498        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 22, not taken
       0     2499        M 0x80000878 andi    a2, a5, 1              #; a5  = 22, (wrb) a2  <-- 0
       0     2500        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2503        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x001000b0]
       0     2504        M 0x8000086c addi    a5, a5, 1              #; a5  = 22, (wrb) a5  <-- 23
                         M                                           #; (f:lsu) ft5  <-- 31.1124000
       0     2505        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 31.1124000, ft4  = 155.5620000
       0     2506        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 23, not taken
       0     2507        M 0x80000878 andi    a2, a5, 1              #; a5  = 23, (wrb) a2  <-- 1
       0     2508        M 0x8000087c bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x8000086c
                         M                                           #; (f:fpu) ft4  <-- 186.6744
       0     2509        M 0x8000086c addi    a5, a5, 1              #; a5  = 23, (wrb) a5  <-- 24
       0     2510        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
       0     2511        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 24, not taken
       0     2512        M 0x80000878 andi    a2, a5, 1              #; a5  = 24, (wrb) a2  <-- 0
       0     2513        M 0x8000087c bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2516        M 0x80000888 j       pc - 0x1c              #; goto 0x8000086c
                         M 0x80000880 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x001000c0]
       0     2517        M 0x8000086c addi    a5, a5, 1              #; a5  = 24, (wrb) a5  <-- 25
                         M                                           #; (f:lsu) ft5  <-- 33.9408000
       0     2518        M 0x80000870 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
                         M 0x80000884 fadd.d  ft4, ft5, ft4          #; ft5  = 33.9408000, ft4  = 186.6744
       0     2519        M 0x80000874 beq     a0, a5, pc + 24        #; a0  = 25, a5  = 25, taken, goto 0x8000088c
       0     2520        M 0x8000088c li      a1, 10                 #; (wrb) a1  <-- 10
       0     2521        M                                           #; (f:fpu) ft4  <-- 220.6152
       0     2532        M 0x80000890 mv      a5, t0                 #; t0  = 24, (wrb) a5  <-- 24
       0     2533        M 0x80000894 bltu    t0, a1, pc + 8         #; t0  = 24, a1  = 10, not taken
       0     2534        M 0x80000898 li      a5, 10                 #; (wrb) a5  <-- 10
       0     2535        M 0x8000089c slli    a1, a5, 3              #; a5  = 10, (wrb) a1  <-- 80
       0     2544        M 0x800008a0 add     a1, a1, t2             #; a1  = 80, t2  = 0x00100000, (wrb) a1  <-- 0x00100050
       0     2545        M 0x800008a4 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2546        M 0x800008a8 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     2547        M 0x800008ac sltu    a1, a1, a2             #; a1  = 0x00100050, a2  = 0x00120001, (wrb) a1  <-- 1
       0     2556        M 0x800008b0 and     a1, a6, a1             #; a6  = 1, a1  = 1, (wrb) a1  <-- 1
       0     2557        M 0x800008b4 beqz    a1, pc + 68            #; a1  = 1, not taken
       0     2558        M 0x800008b8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2559        M 0x800008bc li      a2, 64                 #; (wrb) a2  <-- 64
       0     2568        M 0x800008c0 li      a3, 192                #; (wrb) a3  <-- 192
       0     2569        M 0x800008c4 scfgw   a5, a2                 #; a5  = 10, a2  = 64
       0     2570        M 0x800008c8 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2571        M 0x800008cc li      a1, 32                 #; (wrb) a1  <-- 32
       0     2580        M 0x800008d0 scfgw   zero, a1               #; a1  = 32
       0     2581        M 0x800008d4 scfgwi  t2, 768                #; t2  = 0x00100000
       0     2583        M 0x800008dc addi    a1, a5, 1              #; a5  = 10, (wrb) a1  <-- 11
                         M 0x800008d8 csrrsi  a1, ssr, 1             #; 
       0     2593        M 0x800008e4 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
                         M 0x800008e0 fcvt.d.w ft5, zero             #; ac1  = 0
       0     2594        M                                           #; (f:fpu) ft5  <-- 0.0
       0     2595        M 0x800008ec bnez    a1, pc - 8             #; a1  = 10, taken, goto 0x800008e4
       0     2596        M 0x800008e4 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
                         M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 0.0, ft5  = 0.0
       0     2598        M 0x800008ec bnez    a1, pc - 8             #; a1  = 9, taken, goto 0x800008e4
       0     2599        M 0x800008e4 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
                         M                                           #; (f:fpu) ft5  <-- 0.0
       0     2600        M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 1.4142, ft5  = 0.0
       0     2601        M 0x800008ec bnez    a1, pc - 8             #; a1  = 8, taken, goto 0x800008e4
       0     2602        M 0x800008e4 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
       0     2603        M                                           #; (f:fpu) ft5  <-- 1.4142
       0     2604        M 0x800008ec bnez    a1, pc - 8             #; a1  = 7, taken, goto 0x800008e4
                         M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 2.8284, ft5  = 1.4142
       0     2605        M 0x800008e4 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     2607        M 0x800008ec bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x800008e4
                         M                                           #; (f:fpu) ft5  <-- 4.2426000
       0     2608        M 0x800008e4 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 4.2426000, ft5  = 4.2426000
       0     2610        M 0x800008ec bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x800008e4
       0     2611        M 0x800008e4 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft5  <-- 8.4852000
       0     2612        M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 5.6568, ft5  = 8.4852000
       0     2613        M 0x800008ec bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x800008e4
       0     2614        M 0x800008e4 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     2615        M                                           #; (f:fpu) ft5  <-- 14.142
       0     2616        M 0x800008ec bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x800008e4
                         M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 7.071, ft5  = 14.142
       0     2617        M 0x800008e4 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     2619        M 0x800008ec bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x800008e4
                         M                                           #; (f:fpu) ft5  <-- 21.213
       0     2620        M 0x800008e4 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 8.4852000, ft5  = 21.213
       0     2622        M 0x800008ec bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x800008e4
       0     2623        M 0x800008e4 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft5  <-- 29.6982
       0     2624        M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 9.8994, ft5  = 29.6982
       0     2625        M 0x800008ec bnez    a1, pc - 8             #; a1  = 0, not taken
       0     2627        M                                           #; (f:fpu) ft5  <-- 39.5976
       0     2628        M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 11.3136, ft5  = 39.5976
       0     2631        M                                           #; (f:fpu) ft5  <-- 50.9112
       0     2632        M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 12.7278000, ft5  = 50.9112
       0     2635        M                                           #; (f:fpu) ft5  <-- 63.6390000
       0     2636        M 0x800008e8 fadd.d  ft5, ft0, ft5          #; ft0  = 14.142, ft5  = 63.6390000
       0     2638        M 0x800008f4 j       pc + 0x24              #; goto 0x80000918
                         M 0x800008f0 csrrci  a1, ssr, 1             #; 
       0     2639        M                                           #; (f:fpu) ft5  <-- 77.7810000
       0     2649        M 0x80000918 beqz    a7, pc + 96            #; a7  = 1, not taken
       0     2650        M 0x8000091c li      a1, 8                  #; (wrb) a1  <-- 8
       0     2661        M 0x80000920 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2662        M 0x80000924 li      a3, 192                #; (wrb) a3  <-- 192
       0     2663        M 0x80000928 scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     2664        M 0x8000092c scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2673        M 0x80000930 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2674        M 0x80000934 scfgw   zero, a2               #; a2  = 32
       0     2675        M 0x80000938 scfgwi  t2, 768                #; t2  = 0x00100000
       0     2676        M 0x8000093c li      a2, 1                  #; (wrb) a2  <-- 1
       0     2685        M 0x80000940 addi    a3, a2, 64             #; a2  = 1, (wrb) a3  <-- 65
       0     2686        M 0x80000944 addi    a4, a2, 192            #; a2  = 1, (wrb) a4  <-- 193
       0     2687        M 0x80000948 scfgw   t0, a3                 #; t0  = 24, a3  = 65
       0     2688        M 0x8000094c scfgw   a1, a4                 #; a1  = 8, a4  = 193
       0     2697        M 0x80000950 addi    a1, a2, 32             #; a2  = 1, (wrb) a1  <-- 33
       0     2698        M 0x80000954 scfgw   zero, a1               #; a1  = 33
       0     2699        M 0x80000958 scfgwi  t2, 769                #; t2  = 0x00100000
       0     2701        M 0x8000095c csrrsi  a1, ssr, 1             #; 
       0     2710        M 0x80000964 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M 0x80000960 fcvt.d.w ft6, zero             #; ac1  = 0
       0     2711        M                                           #; (f:fpu) ft6  <-- 0.0
       0     2712        M 0x8000096c bnez    a0, pc - 8             #; a0  = 24, taken, goto 0x80000964
       0     2713        M 0x80000964 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 0.0, ft0  = 0.0, ft6  = 0.0
       0     2715        M 0x8000096c bnez    a0, pc - 8             #; a0  = 23, taken, goto 0x80000964
       0     2716        M 0x80000964 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft6  <-- 0.0
       0     2717        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 1.4142, ft0  = 1.4142, ft6  = 0.0
       0     2718        M 0x8000096c bnez    a0, pc - 8             #; a0  = 22, taken, goto 0x80000964
       0     2719        M 0x80000964 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
       0     2720        M                                           #; (f:fpu) ft6  <-- 1.9999616
       0     2721        M 0x8000096c bnez    a0, pc - 8             #; a0  = 21, taken, goto 0x80000964
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 2.8284, ft0  = 2.8284, ft6  = 1.9999616
       0     2722        M 0x80000964 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
       0     2724        M 0x8000096c bnez    a0, pc - 8             #; a0  = 20, taken, goto 0x80000964
                         M                                           #; (f:fpu) ft6  <-- 9.9998082
       0     2725        M 0x80000964 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 4.2426000, ft0  = 4.2426000, ft6  = 9.9998082
       0     2727        M 0x8000096c bnez    a0, pc - 8             #; a0  = 19, taken, goto 0x80000964
       0     2728        M 0x80000964 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft6  <-- 27.9994630
       0     2729        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 5.6568, ft0  = 5.6568, ft6  = 27.9994630
       0     2730        M 0x8000096c bnez    a0, pc - 8             #; a0  = 18, taken, goto 0x80000964
       0     2731        M 0x80000964 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
       0     2732        M                                           #; (f:fpu) ft6  <-- 59.9988492
       0     2733        M 0x8000096c bnez    a0, pc - 8             #; a0  = 17, taken, goto 0x80000964
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 7.071, ft0  = 7.071, ft6  = 59.9988492
       0     2734        M 0x80000964 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
       0     2736        M 0x8000096c bnez    a0, pc - 8             #; a0  = 16, taken, goto 0x80000964
                         M                                           #; (f:fpu) ft6  <-- 109.9978902
       0     2737        M 0x80000964 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 8.4852000, ft0  = 8.4852000, ft6  = 109.9978902
       0     2739        M 0x8000096c bnez    a0, pc - 8             #; a0  = 15, taken, goto 0x80000964
       0     2740        M 0x80000964 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft6  <-- 181.9965092
       0     2741        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 9.8994, ft0  = 9.8994, ft6  = 181.9965092
       0     2742        M 0x8000096c bnez    a0, pc - 8             #; a0  = 14, taken, goto 0x80000964
       0     2743        M 0x80000964 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
       0     2744        M                                           #; (f:fpu) ft6  <-- 279.9946296
       0     2745        M 0x8000096c bnez    a0, pc - 8             #; a0  = 13, taken, goto 0x80000964
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 11.3136, ft0  = 11.3136, ft6  = 279.9946296
       0     2746        M 0x80000964 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
       0     2748        M 0x8000096c bnez    a0, pc - 8             #; a0  = 12, taken, goto 0x80000964
                         M                                           #; (f:fpu) ft6  <-- 407.9921746
       0     2749        M 0x80000964 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 12.7278000, ft0  = 12.7278000, ft6  = 407.9921746
       0     2751        M 0x8000096c bnez    a0, pc - 8             #; a0  = 11, taken, goto 0x80000964
       0     2752        M 0x80000964 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft6  <-- 569.9890674
       0     2753        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 14.142, ft0  = 14.142, ft6  = 569.9890674
       0     2754        M 0x8000096c bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x80000964
       0     2755        M 0x80000964 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
       0     2756        M                                           #; (f:fpu) ft6  <-- 769.9852314
       0     2757        M 0x8000096c bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x80000964
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 15.5562000, ft0  = 15.5562000, ft6  = 769.9852314
       0     2758        M 0x80000964 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
       0     2760        M 0x8000096c bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x80000964
                         M                                           #; (f:fpu) ft6  <-- 1011.9805898
       0     2761        M 0x80000964 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 16.9704000, ft0  = 16.9704000, ft6  = 1011.9805898
       0     2763        M 0x8000096c bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x80000964
       0     2764        M 0x80000964 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft6  <-- 1299.9750660
       0     2765        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 18.3846, ft0  = 18.3846, ft6  = 1299.9750660
       0     2766        M 0x8000096c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000964
       0     2767        M 0x80000964 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     2768        M                                           #; (f:fpu) ft6  <-- 1637.9685832
       0     2769        M 0x8000096c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000964
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 19.7988, ft0  = 19.7988, ft6  = 1637.9685832
       0     2770        M 0x80000964 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     2772        M 0x8000096c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000964
                         M                                           #; (f:fpu) ft6  <-- 2029.9610646
       0     2773        M 0x80000964 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 21.2130000, ft0  = 21.2130000, ft6  = 2029.9610646
       0     2775        M 0x8000096c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000964
       0     2776        M 0x80000964 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft6  <-- 2479.9524336
       0     2777        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 22.6272, ft0  = 22.6272, ft6  = 2479.9524336
       0     2778        M 0x8000096c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000964
       0     2779        M 0x80000964 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     2780        M                                           #; (f:fpu) ft6  <-- 2991.9426134
       0     2781        M 0x8000096c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000964
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 24.0414, ft0  = 24.0414, ft6  = 2991.9426134
       0     2782        M 0x80000964 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     2784        M 0x8000096c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3569.9315274
       0     2785        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 25.4556000, ft0  = 25.4556000, ft6  = 3569.9315274
       0     2788        M                                           #; (f:fpu) ft6  <-- 4217.9190988
       0     2789        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 26.8698000, ft0  = 26.8698000, ft6  = 4217.9190988
       0     2792        M                                           #; (f:fpu) ft6  <-- 4939.9052508
       0     2793        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 28.284, ft0  = 28.284, ft6  = 4939.9052508
       0     2796        M                                           #; (f:fpu) ft6  <-- 5739.8899068
       0     2797        M 0x80000974 j       pc + 0x1c              #; goto 0x80000990
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 29.6982000, ft0  = 29.6982000, ft6  = 5739.8899068
       0     2800        M                                           #; (f:fpu) ft6  <-- 6621.8729900
       0     2801        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 31.1124000, ft0  = 31.1124000, ft6  = 6621.8729900
       0     2804        M                                           #; (f:fpu) ft6  <-- 7589.8544238
       0     2805        M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 32.5266000, ft0  = 32.5266000, ft6  = 7589.8544238
       0     2808        M 0x80000990 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002990
                         M                                           #; (f:fpu) ft6  <-- 8647.8341314
       0     2809        M 0x80000994 addi    a0, a0, 1560           #; a0  = 0x80002990, (wrb) a0  <-- 0x80002fa8
                         M 0x80000968 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 33.9408000, ft0  = 33.9408000, ft6  = 8647.8341314
       0     2810        M 0x80000970 csrrci  a0, ssr, 1             #; 
       0     2811        M 0x8000099c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000299c
       0     2812        M 0x80000998 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002fa8], (f:fpu) ft6  <-- 9799.8120360
       0     2820        M 0x800009a0 addi    a0, a0, 1540           #; a0  = 0x8000299c, (wrb) a0  <-- 0x80002fa0
       0     2821        M                                           #; (f:lsu) ft7  <-- -220.6152000
       0     2823        M 0x800009ac auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029ac
                         M 0x800009a4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80002fa0]
       0     2824        M 0x800009a8 fadd.d  ft4, ft4, ft7          #; ft4  = 220.6152, ft7  = -220.6152000
       0     2827        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2832        M 0x800009b0 addi    a0, a0, 1540           #; a0  = 0x800029ac, (wrb) a0  <-- 0x80002fb0
                         M                                           #; (f:lsu) fa0  <-- -9799.8120360
       0     2835        M 0x800009b4 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002fb0]
       0     2836        M 0x800009b8 fadd.d  ft3, ft3, fa0          #; ft3  = 9799.8120360, fa0  = -9799.8120360
       0     2839        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     2840        M 0x800009bc fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     2841        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2844        M                                           #; (f:lsu) ft7  <-- -77.781
       0     2846        M 0x800009c0 fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0
       0     2847        M 0x800009c4 fadd.d  ft5, ft5, ft7          #; ft5  = 77.7810000, ft7  = -77.781, (f:fpu) ft4  <-- 0.0
       0     2850        M                                           #; (f:fpu) ft5  <-- -0.0000000
       0     2851        M 0x800009c8 fsgnjx.d ft5, ft5, ft5         #; ft5  = -0.0000000, ft5  = -0.0000000
       0     2852        M 0x800009cc fadd.d  ft6, ft6, fa0          #; ft6  = 9799.8120360, fa0  = -9799.8120360, (f:fpu) ft5  <-- 0.0000000
       0     2855        M                                           #; (f:fpu) ft6  <-- -0.0000000
       0     2858        M 0x800009d0 fsgnjx.d ft6, ft6, ft6         #; ft6  = -0.0000000, ft6  = -0.0000000
       0     2859        M 0x800009d4 fadd.d  ft3, ft3, ft5          #; ft3  = 0.0000000, ft5  = 0.0000000, (f:fpu) ft6  <-- 0.0000000
       0     2862        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2863        M 0x800009d8 fadd.d  ft3, ft3, ft4          #; ft3  = 0.0000000, ft4  = 0.0
       0     2866        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2867        M 0x800009dc fadd.d  fs0, ft3, ft6          #; ft3  = 0.0000000, ft6  = 0.0000000
       0     2869        M 0x800009e4 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2870        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2871        M 0x800009e0 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
       0     2872        M                                           #; (lsu) a2  <-- 0
       0     2873        M 0x800009e8 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2874        M 0x800009ec auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029ec
       0     2876        M                                           #; (lsu) a3  <-- 0x3d901000
       0     2880        M 0x800009f0 addi    a0, a0, 809            #; a0  = 0x800029ec, (wrb) a0  <-- 0x80002d15
       0     2881        M 0x800009f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009f4
       0     2882        M 0x800009f8 jalr    ra, ra, 40             #; ra  = 0x800009f4, (wrb) ra  <-- 0x800009fc, goto 0x80000a1c
       0     2903        M 0x80000a1c addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2915        M 0x80000a20 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800009fc ~~> Word[0x0011ff1c]
       0     2916        M 0x80000a24 mv      t0, a0                 #; a0  = 0x80002d15, (wrb) t0  <-- 0x80002d15
       0     2917        M 0x80000a28 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2918        M 0x80000a2c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2927        M 0x80000a30 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff34]
       0     2928        M 0x80000a34 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff30]
       0     2929        M 0x80000a38 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
       0     2930        M 0x80000a3c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2939        M 0x80000a40 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
       0     2940        M 0x80000a44 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2941        M 0x80000a48 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2942        M 0x80000a4c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a4c
       0     2951        M 0x80000a50 addi    a0, a0, -988           #; a0  = 0x80001a4c, (wrb) a0  <-- 0x80001670
       0     2952        M 0x80000a54 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2953        M 0x80000a58 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2954        M 0x80000a5c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2963        M 0x80000a60 mv      a3, t0                 #; t0  = 0x80002d15, (wrb) a3  <-- 0x80002d15
       0     2964        M 0x80000a64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a64
       0     2965        M 0x80000a68 jalr    ra, ra, 20             #; ra  = 0x80000a64, (wrb) ra  <-- 0x80000a6c, goto 0x80000a78
       0     2975        M 0x80000a78 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2976        M 0x80000a7c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a6c ~~> Word[0x0011ff0c]
       0     2987        M 0x80000a80 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2988        M 0x80000a84 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2989        M 0x80000a88 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2990        M 0x80000a8c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2999        M 0x80000a90 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     3000        M 0x80000a94 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     3001        M 0x80000a98 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     3002        M 0x80000a9c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     3011        M 0x80000aa0 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     3012        M 0x80000aa4 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     3013        M 0x80000aa8 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     3014        M 0x80000aac sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     3023        M 0x80000ab0 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     3024        M 0x80000ab4 mv      s0, a3                 #; a3  = 0x80002d15, (wrb) s0  <-- 0x80002d15
       0     3025        M 0x80000ab8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3026        M 0x80000abc mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     3035        M 0x80000ac0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     3036        M 0x80000ac4 mv      s2, a0                 #; a0  = 0x80001670, (wrb) s2  <-- 0x80001670
       0     3037        M 0x80000ac8 j       pc + 0xc               #; goto 0x80000ad4
       0     3047        M 0x80000ad4 li      s8, 0                  #; (wrb) s8  <-- 0
       0     3048        M 0x80000ad8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3049        M 0x80000adc li      s11, 16                #; (wrb) s11 <-- 16
       0     3059        M 0x80000ae0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3060        M 0x80000ae4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3061        M 0x80000ae8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3062        M 0x80000aec sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     3071        M 0x80000af0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3072        M 0x80000af4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3073        M 0x80000af8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     3074        M 0x80000afc addi    s10, s0, 2             #; s0  = 0x80002d15, (wrb) s10 <-- 0x80002d17
       0     3083        M 0x80000b00 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3084        M 0x80000b04 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3085        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d15, a0  <~~ Byte[0x80002d15]
       0     3096        M                                           #; (lsu) a0  <-- 101
       0     3097        M 0x80000b0c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3098        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3099        M 0x80000b14 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3100        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3101        M 0x80000b1c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3110        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3111        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3133        M 0x80001670 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3134        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3135        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3136        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3145        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3146        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3147        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3148        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3159        M                                           #; (lsu) a4  <-- 0
       0     3160        M 0x80001690 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3161        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 1 ~~> Word[0x8000306c]
       0     3162        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 0, (wrb) a4  <-- 0x8000306c
       0     3163        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000306c, 101 ~~> Byte[0x800030b4]
       0     3169        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3185        M                                           #; (lsu) a4  <-- 1
       0     3186        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3187        M 0x800016a8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3188        M 0x800016ac addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3189        M 0x800016b0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3190        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3191        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3212        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3226        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d15, (wrb) s0  <-- 0x80002d16
       0     3227        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d17, (wrb) s10 <-- 0x80002d18
       0     3229        M 0x80000b30 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3230        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d16, a0  <~~ Byte[0x80002d16]
       0     3241        M                                           #; (lsu) a0  <-- 114
       0     3242        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b10
       0     3243        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3244        M 0x80000b14 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3245        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3246        M 0x80000b1c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3247        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3248        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3251        M 0x80001670 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3252        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3253        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3254        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3255        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3256        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3257        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3258        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3259        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3270        M                                           #; (lsu) a4  <-- 1
       0     3271        M 0x80001690 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3272        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 2 ~~> Word[0x8000306c]
       0     3273        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 1, (wrb) a4  <-- 0x8000306d
       0     3274        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000306d, 114 ~~> Byte[0x800030b5]
       0     3275        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3296        M                                           #; (lsu) a4  <-- 2
       0     3297        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3298        M 0x800016a8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3299        M 0x800016ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3300        M 0x800016b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3301        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3302        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3305        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3310        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d16, (wrb) s0  <-- 0x80002d17
       0     3311        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d18, (wrb) s10 <-- 0x80002d19
       0     3313        M 0x80000b30 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3314        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d17, a0  <~~ Byte[0x80002d17]
       0     3325        M                                           #; (lsu) a0  <-- 114
       0     3326        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b10
       0     3327        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3328        M 0x80000b14 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3329        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3330        M 0x80000b1c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3331        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3332        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3335        M 0x80001670 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3336        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3337        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3338        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3339        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3340        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3341        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3342        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3343        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3354        M                                           #; (lsu) a4  <-- 2
       0     3355        M 0x80001690 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3356        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 3 ~~> Word[0x8000306c]
       0     3357        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 2, (wrb) a4  <-- 0x8000306e
       0     3358        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000306e, 114 ~~> Byte[0x800030b6]
       0     3359        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3380        M                                           #; (lsu) a4  <-- 3
       0     3381        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3382        M 0x800016a8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3383        M 0x800016ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3384        M 0x800016b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3385        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3386        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3389        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3394        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d17, (wrb) s0  <-- 0x80002d18
       0     3395        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d19, (wrb) s10 <-- 0x80002d1a
       0     3397        M 0x80000b30 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3398        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d18, a0  <~~ Byte[0x80002d18]
       0     3409        M                                           #; (lsu) a0  <-- 111
       0     3410        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b10
       0     3411        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3412        M 0x80000b14 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3413        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3414        M 0x80000b1c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3415        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3416        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3419        M 0x80001670 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3420        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3421        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3422        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3423        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3424        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3425        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3426        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3427        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3438        M                                           #; (lsu) a4  <-- 3
       0     3439        M 0x80001690 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3440        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 4 ~~> Word[0x8000306c]
       0     3441        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 3, (wrb) a4  <-- 0x8000306f
       0     3442        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000306f, 111 ~~> Byte[0x800030b7]
       0     3443        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3464        M                                           #; (lsu) a4  <-- 4
       0     3465        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3466        M 0x800016a8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3467        M 0x800016ac addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3468        M 0x800016b0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3469        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3470        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3473        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3478        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d18, (wrb) s0  <-- 0x80002d19
       0     3479        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d1a, (wrb) s10 <-- 0x80002d1b
       0     3481        M 0x80000b30 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3482        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d19, a0  <~~ Byte[0x80002d19]
       0     3493        M                                           #; (lsu) a0  <-- 114
       0     3494        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b10
       0     3495        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3496        M 0x80000b14 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3497        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3498        M 0x80000b1c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3499        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3500        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3503        M 0x80001670 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3504        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3505        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3506        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3507        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3508        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3509        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3510        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3511        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3522        M                                           #; (lsu) a4  <-- 4
       0     3523        M 0x80001690 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3524        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 5 ~~> Word[0x8000306c]
       0     3525        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 4, (wrb) a4  <-- 0x80003070
       0     3526        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003070, 114 ~~> Byte[0x800030b8]
       0     3527        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3548        M                                           #; (lsu) a4  <-- 5
       0     3549        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3550        M 0x800016a8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3551        M 0x800016ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3552        M 0x800016b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3553        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3554        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3557        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3562        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d19, (wrb) s0  <-- 0x80002d1a
       0     3563        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d1b, (wrb) s10 <-- 0x80002d1c
       0     3565        M 0x80000b30 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3566        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d1a, a0  <~~ Byte[0x80002d1a]
       0     3577        M                                           #; (lsu) a0  <-- 32
       0     3578        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b10
       0     3579        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3580        M 0x80000b14 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3581        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3582        M 0x80000b1c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3583        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3584        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3587        M 0x80001670 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3588        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3589        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3590        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3591        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3592        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3593        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3594        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3595        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3606        M                                           #; (lsu) a4  <-- 5
       0     3607        M 0x80001690 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3608        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 6 ~~> Word[0x8000306c]
       0     3609        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 5, (wrb) a4  <-- 0x80003071
       0     3610        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003071, 32 ~~> Byte[0x800030b9]
       0     3611        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3632        M                                           #; (lsu) a4  <-- 6
       0     3633        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3634        M 0x800016a8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3635        M 0x800016ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3636        M 0x800016b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3637        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3638        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3641        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3646        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d1a, (wrb) s0  <-- 0x80002d1b
       0     3647        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d1c, (wrb) s10 <-- 0x80002d1d
       0     3649        M 0x80000b30 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3650        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d1b, a0  <~~ Byte[0x80002d1b]
       0     3661        M                                           #; (lsu) a0  <-- 61
       0     3662        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b10
       0     3663        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3664        M 0x80000b14 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3665        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3666        M 0x80000b1c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3667        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3668        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3671        M 0x80001670 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3672        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3673        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3674        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3675        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3676        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3677        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3678        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3679        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3690        M                                           #; (lsu) a4  <-- 6
       0     3691        M 0x80001690 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3692        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 7 ~~> Word[0x8000306c]
       0     3693        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 6, (wrb) a4  <-- 0x80003072
       0     3694        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003072, 61 ~~> Byte[0x800030ba]
       0     3695        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3716        M                                           #; (lsu) a4  <-- 7
       0     3717        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3718        M 0x800016a8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3719        M 0x800016ac addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3720        M 0x800016b0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3721        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3722        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3725        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3730        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d1b, (wrb) s0  <-- 0x80002d1c
       0     3731        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d1d, (wrb) s10 <-- 0x80002d1e
       0     3733        M 0x80000b30 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3734        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d1c, a0  <~~ Byte[0x80002d1c]
       0     3745        M                                           #; (lsu) a0  <-- 32
       0     3746        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b10
       0     3747        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3748        M 0x80000b14 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3749        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3750        M 0x80000b1c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3751        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3752        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     3755        M 0x80001670 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3756        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3757        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3758        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3759        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     3760        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     3761        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3762        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     3763        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3774        M                                           #; (lsu) a4  <-- 7
       0     3775        M 0x80001690 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3776        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 8 ~~> Word[0x8000306c]
       0     3777        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 7, (wrb) a4  <-- 0x80003073
       0     3778        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003073, 32 ~~> Byte[0x800030bb]
       0     3779        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     3800        M                                           #; (lsu) a4  <-- 8
       0     3801        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3802        M 0x800016a8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3803        M 0x800016ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3804        M 0x800016b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3805        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3806        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     3809        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     3814        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d1c, (wrb) s0  <-- 0x80002d1d
       0     3815        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d1e, (wrb) s10 <-- 0x80002d1f
       0     3817        M 0x80000b30 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3818        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d1d, a0  <~~ Byte[0x80002d1d]
       0     3829        M                                           #; (lsu) a0  <-- 37
       0     3830        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b10
       0     3831        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b40
       0     3843        M 0x80000b40 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3844        M 0x80000b44 j       pc + 0x10              #; goto 0x80000b54
       0     3855        M 0x80000b54 lbu     a0, -1(s10)            #; s10 = 0x80002d1f, a0  <~~ Byte[0x80002d1e]
       0     3866        M                                           #; (lsu) a0  <-- 102
       0     3867        M 0x80000b58 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3868        M 0x80000b5c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b94
       0     3880        M 0x80000b94 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3881        M 0x80000b98 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3882        M 0x80000b9c addi    a1, s10, -1            #; s10 = 0x80002d1f, (wrb) a1  <-- 0x80002d1e
       0     3892        M 0x80000ba0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3893        M 0x80000ba4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c20
       0     3915        M 0x80000c20 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3916        M 0x80000c24 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c74
       0     3938        M 0x80000c74 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3939        M 0x80000c78 mv      s10, a1                #; a1  = 0x80002d1e, (wrb) s10 <-- 0x80002d1e
       0     3940        M 0x80000c7c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3961        M 0x80000c80 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3962        M 0x80000c84 j       pc + 0xc               #; goto 0x80000c90
       0     3973        M 0x80000c90 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3974        M 0x80000c94 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3975        M 0x80000c98 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3976        M 0x80000c9c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3985        M 0x80000ca0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3986        M 0x80000ca4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d08
       0     4008        M 0x80000d08 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4009        M 0x80000d0c li      a2, 83                 #; (wrb) a2  <-- 83
       0     4020        M 0x80000d10 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4021        M 0x80000d14 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4022        M 0x80000d18 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d18
       0     4023        M 0x80000d1c addi    a2, a2, 124            #; a2  = 0x80002d18, (wrb) a2  <-- 0x80002d94
       0     4032        M 0x80000d20 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d94, (wrb) a1  <-- 0x80002e98
       0     4033        M 0x80000d24 lw      a2, 0(a1)              #; a1  = 0x80002e98, a2  <~~ Word[0x80002e98]
       0     4034        M 0x80000d28 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4035        M 0x80000d2c li      s8, 16                 #; (wrb) s8  <-- 16
       0     4044        M                                           #; (lsu) a2  <-- 0x80000d60
       0     4045        M 0x80000d30 jr      a2                     #; a2  = 0x80000d60, goto 0x80000d60
       0     4067        M 0x80000d60 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4068        M 0x80000d64 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d6c
       0     4069        M 0x80000d6c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     4079        M 0x80000d70 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     4081        M 0x80000d78 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     4082        M 0x80000d7c mv      a0, s2                 #; s2  = 0x80001670, (wrb) a0  <-- 0x80001670
                         M 0x80000d74 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     4083        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     4091        M 0x80000d80 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4092        M 0x80000d84 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4093        M 0x80000d88 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4094        M 0x80000d8c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4103        M 0x80000d90 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4104        M 0x80000d94 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4105        M 0x80000d98 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d98
       0     4106        M 0x80000d9c jalr    ra, ra, -1656          #; ra  = 0x80001d98, (wrb) ra  <-- 0x80000da0, goto 0x80001720
       0     4117        M 0x80001720 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     4118        M 0x80001724 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000da0 ~~> Word[0x0011fe9c]
       0     4119        M 0x80001728 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     4120        M 0x8000172c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     4129        M 0x80001730 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001670 ~~> Word[0x0011fe90]
       0     4130        M 0x80001734 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     4131        M 0x80001738 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     4132        M 0x8000173c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     4141        M 0x80001740 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     4142        M 0x80001744 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     4143        M 0x80001748 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     4144        M 0x8000174c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     4153        M 0x80001750 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d1e ~~> Word[0x0011fe70]
       0     4156        M 0x80001754 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     4157        M 0x80001758 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     4158        M 0x8000175c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     4165        M 0x80001760 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003760
       0     4166        M 0x80001764 addi    s1, s1, -1952          #; s1  = 0x80003760, (wrb) s1  <-- 0x80002fc0
       0     4169        M 0x80001768 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002fc0]
       0     4177        M 0x80001770 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     4178        M 0x80001774 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4179        M 0x80001778 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000176c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     4180        M 0x8000177c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4189        M 0x80001780 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     4190        M 0x80001784 mv      s7, a0                 #; a0  = 0x80001670, (wrb) s7  <-- 0x80001670
       0     4191        M 0x80001788 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001878
       0     4213        M 0x8000187c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000287c
       0     4214        M 0x80001878 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     4215        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4224        M 0x80001880 addi    a0, a0, 1868           #; a0  = 0x8000287c, (wrb) a0  <-- 0x80002fc8
       0     4227        M 0x80001884 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fc8]
       0     4236        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4237        M 0x80001888 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4239        M                                           #; (acc) t3  <-- 0x00051e63
       0     4240        M 0x8000188c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018a8
       0     4252        M 0x800018a8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028a8
       0     4253        M 0x800018ac addi    a0, a0, 1832           #; a0  = 0x800028a8, (wrb) a0  <-- 0x80002fd0
       0     4265        M 0x800018b4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028b4
       0     4266        M 0x800018b8 addi    a0, a0, 1828           #; a0  = 0x800028b4, (wrb) a0  <-- 0x80002fd8
                         M 0x800018b0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fd0]
       0     4269        M 0x800018bc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fd8]
       0     4275        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4277        M 0x800018c0 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     4278        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4279        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x800018c4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     4281        M                                           #; (acc) a0  <-- 0x00b57533
       0     4282        M 0x800018c8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4283        M 0x800018cc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019c8
       0     4299        M 0x800019c8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4300        M 0x800019cc li      s8, 6                  #; (wrb) s8  <-- 6
       0     4311        M 0x800019d0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019d8
       0     4312        M 0x800019d8 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4315        M 0x800019dc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     4316        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4323        M 0x800019e0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a18
       0     4346        M 0x80001a18 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4347        M 0x80001a1c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4358        M 0x80001a20 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a20
       0     4359        M 0x80001a24 addi    a1, a1, 1224           #; a1  = 0x80002a20, (wrb) a1  <-- 0x80002ee8
       0     4360        M 0x80001a28 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002ee8, (wrb) a0  <-- 0x80002f18
       0     4363        M 0x80001a2c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f18]
       0     4371        M 0x80001a30 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4372        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4375        M 0x80001a34 fcvt.d.w ft0, s1               #; ac1  = 0
       0     4376        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4377        M 0x80001a38 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4380        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4381        M 0x80001a3c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4382        M 0x80001a40 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a40
       0     4383        M 0x80001a44 addi    a0, a0, 1440           #; a0  = 0x80002a40, (wrb) a0  <-- 0x80002fe0
       0     4384        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4386        M 0x80001a48 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fe0]
       0     4387        M 0x80001a4c fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
       0     4395        M 0x80001a50 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     4396        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4397        M 0x80001a54 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
       0     4400        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4401        M 0x80001a58 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4404        M 0x80001a5c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a7c
       0     4418        M 0x80001a7c flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4429        M 0x80001a80 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a94
       0     4442        M 0x80001a98 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001a94 fcvt.d.w fs1, zero             #; ac1  = 0
       0     4443        M 0x80001a9c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     4453        M 0x80001aa0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4454        M 0x80001aa4 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4455        M 0x80001aa8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4456        M 0x80001aac sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4465        M 0x80001ab0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4466        M 0x80001ab4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4467        M 0x80001ab8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4468        M 0x80001abc li      a7, 9                  #; (wrb) a7  <-- 9
       0     4477        M 0x80001ac0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4478        M 0x80001ac4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4479        M 0x80001ac8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4482        M                                           #; (acc) a0  <-- 0x00355513
       0     4483        M 0x80001acc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4489        M 0x80001ad0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4492        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4493        M 0x80001ad4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4494        M 0x80001ad8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4495        M 0x80001adc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4501        M 0x80001ae0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4502        M 0x80001ae4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4503        M 0x80001ae8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4504        M 0x80001aec add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4516        M 0x80001af0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4517        M 0x80001af4 li      a3, 30                 #; (wrb) a3  <-- 30
       0     4518        M 0x80001af8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4519        M 0x80001afc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4528        M 0x80001b00 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4529        M 0x80001b04 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4530        M 0x80001b08 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4531        M 0x80001b0c addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4540        M 0x80001b10 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4541        M 0x80001b14 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4542        M 0x80001b18 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4543        M 0x80001b1c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4552        M 0x80001b20 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4553        M 0x80001b24 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4554        M 0x80001b28 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4555        M 0x80001b2c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4564        M 0x80001b30 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b38
       0     4565        M 0x80001b38 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4566        M 0x80001b3c li      a1, 48                 #; (wrb) a1  <-- 48
       0     4576        M 0x80001b40 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b40
       0     4577        M 0x80001b44 jalr    ra, ra, -1512          #; ra  = 0x80000b40, (wrb) ra  <-- 0x80001b48, goto 0x80000558
       0     4599        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4600        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4611        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4634        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4646        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4647        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4648        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4649        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4669        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4670        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4681        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4682        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4683        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4684        M 0x800005ec ret                            #; ra  = 0x80001b48, goto 0x80001b48
       0     4695        M 0x80001b48 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4696        M 0x80001b4c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4698        M 0x80001b50 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4699        M 0x80001b54 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4700        M 0x80001b58 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4701        M 0x80001b5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4710        M 0x80001b60 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4711        M 0x80001b64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b4c
       0     4712        M 0x80001b4c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4713        M 0x80001b50 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4714        M 0x80001b54 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4715        M 0x80001b58 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4716        M 0x80001b5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4717        M 0x80001b60 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4718        M 0x80001b64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b4c
       0     4719        M 0x80001b4c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4720        M 0x80001b50 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4721        M 0x80001b54 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4722        M 0x80001b58 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4723        M 0x80001b5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4724        M 0x80001b60 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4725        M 0x80001b64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b4c
       0     4726        M 0x80001b4c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4727        M 0x80001b50 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4728        M 0x80001b54 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4729        M 0x80001b58 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4730        M 0x80001b5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4731        M 0x80001b60 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4732        M 0x80001b64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b4c
       0     4733        M 0x80001b4c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4734        M 0x80001b50 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4735        M 0x80001b54 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4736        M 0x80001b58 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4737        M 0x80001b5c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4738        M 0x80001b60 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4739        M 0x80001b64 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4740        M 0x80001b68 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4741        M 0x80001b6c j       pc + 0x28              #; goto 0x80001b94
       0     4752        M 0x80001b94 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4753        M 0x80001b98 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4754        M 0x80001b9c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4764        M 0x80001ba0 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4765        M 0x80001ba4 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4766        M 0x80001ba8 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4767        M 0x80001bac j       pc + 0x8               #; goto 0x80001bb4
       0     4776        M 0x80001bb4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4777        M 0x80001bb8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4778        M 0x80001bbc bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4788        M 0x80001bc0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4790        M 0x80001bc8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001bc4 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     4791        M 0x80001bcc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4800        M 0x80001bd0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4801        M 0x80001bd4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4802        M 0x80001bd8 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4803        M 0x80001bdc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4812        M 0x80001be0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4815        M                                           #; (acc) a5  <-- 0x01f55793
       0     4816        M 0x80001be4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4817        M 0x80001be8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4818        M 0x80001bec add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4824        M 0x80001bf0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4827        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4828        M 0x80001bf4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4829        M 0x80001bf8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4830        M 0x80001bfc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4836        M 0x80001c00 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4837        M 0x80001c04 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4838        M 0x80001c08 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4839        M 0x80001c0c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4848        M 0x80001c10 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4849        M 0x80001c14 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4850        M 0x80001c18 j       pc + 0x8               #; goto 0x80001c20
       0     4862        M 0x80001c20 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4863        M 0x80001c24 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4864        M 0x80001c28 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c94
       0     4885        M 0x80001c94 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4886        M 0x80001c98 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4887        M 0x80001c9c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001cb4
       0     4908        M 0x80001cb4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4909        M 0x80001cb8 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4910        M 0x80001cbc andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4920        M 0x80001cc0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001cec
       0     4943        M 0x80001cec snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4955        M 0x80001cf0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4956        M 0x80001cf4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4957        M 0x80001cf8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4958        M 0x80001cfc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4967        M 0x80001d00 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4968        M 0x80001d04 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d30
       0     4990        M 0x80001d30 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4991        M 0x80001d34 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4992        M 0x80001d38 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4993        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     5002        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     5003        M 0x80001d44 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5004        M 0x80001d48 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5005        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5006        M                                           #; (lsu) a0  <-- 48
       0     5014        M 0x80001d50 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5015        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5016        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5028        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5029        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5030        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5031        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5032        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5033        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5034        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5035        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5036        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5047        M                                           #; (lsu) a4  <-- 8
       0     5048        M 0x80001690 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5049        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 9 ~~> Word[0x8000306c]
       0     5050        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 8, (wrb) a4  <-- 0x80003074
       0     5051        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003074, 48 ~~> Byte[0x800030bc]
       0     5052        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5073        M                                           #; (lsu) a4  <-- 9
       0     5074        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5075        M 0x800016a8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5076        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5077        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5078        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5079        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5082        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5087        M 0x80001d5c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5090        M 0x80001d60 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5091        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d3c
       0     5093        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     5096        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     5097        M 0x80001d44 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5098        M 0x80001d48 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5099        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5100        M 0x80001d50 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5101        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5102        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5103        M                                           #; (lsu) a0  <-- 46
       0     5105        M 0x80001670 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5106        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5107        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5108        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5109        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5110        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5111        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5112        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5113        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5124        M                                           #; (lsu) a4  <-- 9
       0     5125        M 0x80001690 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5126        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 10 ~~> Word[0x8000306c]
       0     5127        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 9, (wrb) a4  <-- 0x80003075
       0     5128        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003075, 46 ~~> Byte[0x800030bd]
       0     5129        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5150        M                                           #; (lsu) a4  <-- 10
       0     5151        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5152        M 0x800016a8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5153        M 0x800016ac addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5154        M 0x800016b0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5155        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5156        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5159        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5164        M 0x80001d5c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5167        M 0x80001d60 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5168        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d3c
       0     5170        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     5173        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     5174        M 0x80001d44 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5175        M 0x80001d48 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5176        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5177        M 0x80001d50 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5178        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5179        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5180        M                                           #; (lsu) a0  <-- 48
       0     5182        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5183        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5184        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5185        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5186        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5187        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5188        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5189        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5190        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5201        M                                           #; (lsu) a4  <-- 10
       0     5202        M 0x80001690 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5203        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 11 ~~> Word[0x8000306c]
       0     5204        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 10, (wrb) a4  <-- 0x80003076
       0     5205        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003076, 48 ~~> Byte[0x800030be]
       0     5206        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5227        M                                           #; (lsu) a4  <-- 11
       0     5228        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5229        M 0x800016a8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5230        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5231        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5232        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5233        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5236        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5241        M 0x80001d5c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5244        M 0x80001d60 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5245        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d3c
       0     5247        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5250        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5251        M 0x80001d44 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5252        M 0x80001d48 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5253        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5254        M 0x80001d50 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5255        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5256        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5257        M                                           #; (lsu) a0  <-- 48
       0     5259        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5260        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5261        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5262        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5263        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5264        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5265        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5266        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5267        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5278        M                                           #; (lsu) a4  <-- 11
       0     5279        M 0x80001690 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     5280        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 12 ~~> Word[0x8000306c]
       0     5281        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 11, (wrb) a4  <-- 0x80003077
       0     5282        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003077, 48 ~~> Byte[0x800030bf]
       0     5283        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5304        M                                           #; (lsu) a4  <-- 12
       0     5305        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5306        M 0x800016a8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5307        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5308        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5309        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5310        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5313        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5318        M 0x80001d5c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5321        M 0x80001d60 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5322        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d3c
       0     5324        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5327        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5328        M 0x80001d44 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5329        M 0x80001d48 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5330        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5331        M 0x80001d50 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5332        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5333        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5334        M                                           #; (lsu) a0  <-- 48
       0     5336        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5337        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5338        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5339        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5340        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5341        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5342        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5343        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5344        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5355        M                                           #; (lsu) a4  <-- 12
       0     5356        M 0x80001690 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5357        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 13 ~~> Word[0x8000306c]
       0     5358        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 12, (wrb) a4  <-- 0x80003078
       0     5359        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003078, 48 ~~> Byte[0x800030c0]
       0     5360        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5381        M                                           #; (lsu) a4  <-- 13
       0     5382        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5383        M 0x800016a8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5384        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5385        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5386        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5387        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5390        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5395        M 0x80001d5c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5398        M 0x80001d60 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5399        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d3c
       0     5401        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5404        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5405        M 0x80001d44 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5406        M 0x80001d48 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5407        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5408        M 0x80001d50 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5409        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5410        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5411        M                                           #; (lsu) a0  <-- 48
       0     5413        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5414        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5415        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5416        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5417        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5418        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5419        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5420        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5421        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5432        M                                           #; (lsu) a4  <-- 13
       0     5433        M 0x80001690 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5434        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 14 ~~> Word[0x8000306c]
       0     5435        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 13, (wrb) a4  <-- 0x80003079
       0     5436        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x80003079, 48 ~~> Byte[0x800030c1]
       0     5437        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5458        M                                           #; (lsu) a4  <-- 14
       0     5459        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5460        M 0x800016a8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5461        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5462        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5463        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5464        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5467        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5472        M 0x80001d5c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5475        M 0x80001d60 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5476        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d3c
       0     5478        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5481        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5482        M 0x80001d44 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5483        M 0x80001d48 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5484        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5485        M 0x80001d50 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5486        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5487        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5488        M                                           #; (lsu) a0  <-- 48
       0     5490        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5491        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5492        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5493        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5494        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5495        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5496        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5497        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5498        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5509        M                                           #; (lsu) a4  <-- 14
       0     5510        M 0x80001690 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5511        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 15 ~~> Word[0x8000306c]
       0     5512        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 14, (wrb) a4  <-- 0x8000307a
       0     5513        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000307a, 48 ~~> Byte[0x800030c2]
       0     5514        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5535        M                                           #; (lsu) a4  <-- 15
       0     5536        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5537        M 0x800016a8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5538        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5539        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5540        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5541        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5544        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5549        M 0x80001d5c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5552        M 0x80001d60 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5553        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d3c
       0     5555        M 0x80001d3c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5558        M 0x80001d40 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5559        M 0x80001d44 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5560        M 0x80001d48 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5561        M 0x80001d4c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5562        M 0x80001d50 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5563        M 0x80001d54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5564        M 0x80001d58 jalr    s7                     #; s7  = 0x80001670, (wrb) ra  <-- 0x80001d5c, goto 0x80001670
       0     5565        M                                           #; (lsu) a0  <-- 48
       0     5567        M 0x80001670 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5568        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5569        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5570        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5571        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5572        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5573        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5574        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5575        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5586        M                                           #; (lsu) a4  <-- 15
       0     5587        M 0x80001690 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5588        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 16 ~~> Word[0x8000306c]
       0     5589        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 15, (wrb) a4  <-- 0x8000307b
       0     5590        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000307b, 48 ~~> Byte[0x800030c3]
       0     5591        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5612        M                                           #; (lsu) a4  <-- 16
       0     5613        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5614        M 0x800016a8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5615        M 0x800016ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5616        M 0x800016b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5617        M 0x800016b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5618        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001718
       0     5621        M 0x80001718 ret                            #; ra  = 0x80001d5c, goto 0x80001d5c
       0     5626        M 0x80001d5c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5629        M 0x80001d60 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5630        M 0x80001d64 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5631        M 0x80001d68 j       pc + 0x8               #; goto 0x80001d70
       0     5643        M 0x80001d70 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5644        M 0x80001d74 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5645        M 0x80001d78 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5646        M 0x80001d7c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5655        M 0x80001d80 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5656        M 0x80001d84 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001db4
       0     5678        M 0x80001db4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5679        M 0x80001db8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5682        M 0x80001dbc fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5683        M                                           #; (f:lsu) fs2  <-- 0.0
       0     5692        M 0x80001dc8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001dc0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0     5693        M 0x80001dc4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5694        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5696        M                                           #; (lsu) s10 <-- 0x80002d1e
       0     5697        M 0x80001dcc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5700        M                                           #; (lsu) s9  <-- 8
       0     5702        M 0x80001dd0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5705        M                                           #; (lsu) s8  <-- 16
       0     5706        M 0x80001dd4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5709        M                                           #; (lsu) s7  <-- 0
       0     5710        M 0x80001dd8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5713        M                                           #; (lsu) s6  <-- 0
       0     5714        M 0x80001ddc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5717        M                                           #; (lsu) s5  <-- -1
       0     5718        M 0x80001de0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5721        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5722        M 0x80001de4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5725        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5726        M 0x80001de8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5729        M                                           #; (lsu) s2  <-- 0x80001670
       0     5730        M 0x80001dec lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5733        M                                           #; (lsu) s1  <-- 8
       0     5734        M 0x80001df0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5737        M                                           #; (lsu) s0  <-- 0
       0     5738        M 0x80001df4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5739        M 0x80001df8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5741        M                                           #; (lsu) ra  <-- 0x80000da0
       0     5742        M 0x80001dfc ret                            #; ra  = 0x80000da0, goto 0x80000da0
       0     5745        M 0x80000da0 j       pc + 0x7c0             #; goto 0x80001560
       0     5757        M 0x80001560 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5758        M 0x80001564 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5759        M 0x80001568 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5760        M 0x8000156c addi    s0, s10, 1             #; s10 = 0x80002d1e, (wrb) s0  <-- 0x80002d1f
       0     5769        M 0x80001570 j       pc - 0xa74             #; goto 0x80000afc
       0     5772        M 0x80000afc addi    s10, s0, 2             #; s0  = 0x80002d1f, (wrb) s10 <-- 0x80002d21
       0     5775        M 0x80000b00 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5776        M 0x80000b04 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5777        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d1f, a0  <~~ Byte[0x80002d1f]
       0     5788        M                                           #; (lsu) a0  <-- 10
       0     5789        M 0x80000b0c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5790        M 0x80000b10 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5791        M 0x80000b14 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5792        M 0x80000b18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5793        M 0x80000b1c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5794        M 0x80000b20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5795        M 0x80000b24 jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80000b28, goto 0x80001670
       0     5799        M 0x80001670 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5800        M 0x80001674 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5801        M 0x80001678 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5802        M 0x8000167c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5803        M 0x80001680 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003680
       0     5804        M 0x80001684 addi    a3, a3, -1556          #; a3  = 0x80003680, (wrb) a3  <-- 0x8000306c
       0     5805        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5806        M 0x80001688 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000306c, (wrb) a1  <-- 0x8000306c
       0     5807        M 0x8000168c lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5818        M                                           #; (lsu) a4  <-- 16
       0     5819        M 0x80001690 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5820        M 0x80001694 sw      a5, 0(a1)              #; a1  = 0x8000306c, 17 ~~> Word[0x8000306c]
       0     5821        M 0x80001698 add     a4, a1, a4             #; a1  = 0x8000306c, a4  = 16, (wrb) a4  <-- 0x8000307c
       0     5822        M 0x8000169c sb      a0, 72(a4)             #; a4  = 0x8000307c, 10 ~~> Byte[0x800030c4]
       0     5823        M 0x800016a0 lw      a4, 0(a1)              #; a1  = 0x8000306c, a4  <~~ Word[0x8000306c]
       0     5844        M                                           #; (lsu) a4  <-- 17
       0     5845        M 0x800016a4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5846        M 0x800016a8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5847        M 0x800016ac addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5848        M 0x800016b0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5849        M 0x800016b4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5850        M 0x800016b8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5851        M 0x800016bc add     a0, a3, a2             #; a3  = 0x8000306c, a2  = 0, (wrb) a0  <-- 0x8000306c
       0     5852        M 0x800016c0 addi    a2, a0, 72             #; a0  = 0x8000306c, (wrb) a2  <-- 0x800030b4
       0     5853        M 0x800016c4 sw      zero, 12(a0)           #; a0  = 0x8000306c, 0 ~~> Word[0x80003078]
       0     5854        M 0x800016c8 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5855        M 0x800016cc sw      a3, 8(a0)              #; a0  = 0x8000306c, 64 ~~> Word[0x80003074]
       0     5864        M 0x800016d0 sw      zero, 20(a0)           #; a0  = 0x8000306c, 0 ~~> Word[0x80003080]
       0     5865        M 0x800016d4 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5866        M 0x800016d8 sw      a3, 16(a0)             #; a0  = 0x8000306c, 1 ~~> Word[0x8000307c]
       0     5867        M 0x800016dc sw      zero, 28(a0)           #; a0  = 0x8000306c, 0 ~~> Word[0x80003088]
       0     5876        M 0x800016e0 sw      a2, 24(a0)             #; a0  = 0x8000306c, 0x800030b4 ~~> Word[0x80003084]
       0     5879        M 0x800016e4 lw      a2, 0(a1)              #; a1  = 0x8000306c, a2  <~~ Word[0x8000306c]
       0     5880        M 0x800016e8 addi    a3, a0, 8              #; a0  = 0x8000306c, (wrb) a3  <-- 0x80003074
       0     5881        M 0x800016ec sw      zero, 36(a0)           #; a0  = 0x8000306c, 0 ~~> Word[0x80003090]
       0     5901        M                                           #; (lsu) a2  <-- 17
       0     5902        M 0x800016f0 sw      a2, 32(a0)             #; a0  = 0x8000306c, 17 ~~> Word[0x8000308c]
       0     5903        M 0x800016f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036f4
       0     5904        M 0x800016f8 addi    a0, a0, -1972          #; a0  = 0x800036f4, (wrb) a0  <-- 0x80002f40
       0     5905        M 0x800016fc sw      a3, 0(a0)              #; a0  = 0x80002f40, 0x80003074 ~~> Word[0x80002f40]
       0     5906        M 0x80001700 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003700
       0     5907        M 0x80001704 addi    a0, a0, -1920          #; a0  = 0x80003700, (wrb) a0  <-- 0x80002f80
       0     5908        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     5931        M                                           #; (lsu) a2  <-- 0
       0     5932        M 0x8000170c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001708
       0     5933        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     5944        M                                           #; (lsu) a2  <-- 0
       0     5945        M 0x8000170c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001708
       0     5946        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     5957        M                                           #; (lsu) a2  <-- 0
       0     5958        M 0x8000170c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001708
       0     5959        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     5970        M                                           #; (lsu) a2  <-- 0
       0     5971        M 0x8000170c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001708
       0     5972        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     5983        M                                           #; (lsu) a2  <-- 0
       0     5984        M 0x8000170c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001708
       0     5985        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     5996        M                                           #; (lsu) a2  <-- 0
       0     5997        M 0x8000170c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001708
       0     5998        M 0x80001708 lw      a2, 0(a0)              #; a0  = 0x80002f80, a2  <~~ Word[0x80002f80]
       0     6009        M                                           #; (lsu) a2  <-- 1
       0     6010        M 0x8000170c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6013        M 0x80001710 sw      zero, 0(a0)            #; a0  = 0x80002f80, 0 ~~> Word[0x80002f80]
       0     6014        M 0x80001714 sw      zero, 0(a1)            #; a1  = 0x8000306c, 0 ~~> Word[0x8000306c]
       0     6015        M 0x80001718 ret                            #; ra  = 0x80000b28, goto 0x80000b28
       0     6018        M 0x80000b28 addi    s0, s0, 1              #; s0  = 0x80002d1f, (wrb) s0  <-- 0x80002d20
       0     6019        M 0x80000b2c addi    s10, s10, 1            #; s10 = 0x80002d21, (wrb) s10 <-- 0x80002d22
       0     6021        M 0x80000b30 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6022        M 0x80000b34 lbu     a0, 0(s0)              #; s0  = 0x80002d20, a0  <~~ Byte[0x80002d20]
       0     6036        M                                           #; (lsu) a0  <-- 0
       0     6037        M 0x80000b38 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6038        M 0x80000b3c j       pc + 0xad8             #; goto 0x80001614
       0     6050        M 0x80001614 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6051        M 0x80001618 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001620
       0     6062        M 0x80001620 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6063        M 0x80001624 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6064        M 0x80001628 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6065        M 0x8000162c jalr    s2                     #; s2  = 0x80001670, (wrb) ra  <-- 0x80001630, goto 0x80001670
       0     6076        M 0x80001670 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001718
       0     6081        M 0x80001718 ret                            #; ra  = 0x80001630, goto 0x80001630
       0     6082        M 0x80001630 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6083        M 0x80001634 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     6086        M                                           #; (lsu) s11 <-- 0
       0     6087        M 0x80001638 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     6090        M                                           #; (lsu) s10 <-- 0
       0     6091        M 0x8000163c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     6094        M                                           #; (lsu) s9  <-- 0
       0     6096        M 0x80001640 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     6099        M                                           #; (lsu) s8  <-- 0
       0     6100        M 0x80001644 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     6103        M                                           #; (lsu) s7  <-- 0
       0     6104        M 0x80001648 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     6107        M                                           #; (lsu) s6  <-- 0
       0     6108        M 0x8000164c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     6111        M                                           #; (lsu) s5  <-- 0
       0     6112        M 0x80001650 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     6115        M                                           #; (lsu) s4  <-- 0
       0     6116        M 0x80001654 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     6119        M                                           #; (lsu) s3  <-- 0
       0     6120        M 0x80001658 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     6123        M                                           #; (lsu) s2  <-- 0
       0     6124        M 0x8000165c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     6127        M                                           #; (lsu) s1  <-- 0
       0     6128        M 0x80001660 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     6131        M                                           #; (lsu) s0  <-- 0
       0     6132        M 0x80001664 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     6133        M 0x80001668 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     6135        M                                           #; (lsu) ra  <-- 0x80000a6c
       0     6136        M 0x8000166c ret                            #; ra  = 0x80000a6c, goto 0x80000a6c
       0     6139        M 0x80000a6c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     6142        M 0x80000a70 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     6143        M                                           #; (lsu) ra  <-- 0x800009fc
       0     6144        M 0x80000a74 ret                            #; ra  = 0x800009fc, goto 0x800009fc
       0     6156        M 0x800009fc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029fc
       0     6159        M 0x80000a00 addi    a0, a0, 1468           #; a0  = 0x800029fc, (wrb) a0  <-- 0x80002fb8
       0     6162        M 0x80000a04 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fb8]
       0     6163        M 0x80000a10 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     6164        M 0x80000a14 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     6171        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     6172        M 0x80000a08 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     6173        M                                           #; (lsu) ra  <-- 0x80002a90
       0     6174        M 0x80000a18 ret                            #; ra  = 0x80002a90, goto 0x80002a90
                         M 0x80000a0c fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     6175        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6186        M 0x80002a90 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6187        M 0x80002a94 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a94
       0     6188        M 0x80002a98 jalr    ra, ra, 524            #; ra  = 0x80002a94, (wrb) ra  <-- 0x80002a9c, goto 0x80002ca0
       0     6209        M 0x80002ca0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6210        M 0x80002ca4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a9c ~~> Word[0x0011ff5c]
       0     6211        M 0x80002ca8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ca8
       0     6212        M 0x80002cac jalr    ra, ra, -1584          #; ra  = 0x80000ca8, (wrb) ra  <-- 0x80002cb0, goto 0x80000678
       0     6232        M 0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6233        M 0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6244        M 0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6247        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6248        M 0x80000684 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6251        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6252        M 0x80000688 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6253        M 0x8000068c ret                            #; ra  = 0x80002cb0, goto 0x80002cb0
       0     6255        M                                           #; (lsu) a0  <-- 0x00120190
       0     6256        M 0x80002cb0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6266        M                                           #; (lsu) a0  <-- 0
       0     6267        M 0x80002cb4 mv      zero, a0               #; a0  = 0
       0     6268        M 0x80002cb8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6269        M 0x80002cbc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6271        M                                           #; (lsu) ra  <-- 0x80002a9c
       0     6272        M 0x80002cc0 ret                            #; ra  = 0x80002a9c, goto 0x80002a9c
       0     6286        M 0x80002a9c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6290        M 0x80002aa0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa0
       0     6291        M 0x80002aa4 jalr    ra, ra, 556            #; ra  = 0x80002aa0, (wrb) ra  <-- 0x80002aa8, goto 0x80002ccc
       0     6292        M 0x80002ccc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6293        M 0x80002cd0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6294        M 0x80002cd4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002aa8 ~~> Word[0x0011ff5c]
       0     6295        M 0x80002cd8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000cd8
       0     6296        M 0x80002cdc jalr    ra, ra, -1664          #; ra  = 0x80000cd8, (wrb) ra  <-- 0x80002ce0, goto 0x80000658
       0     6307        M 0x80000658 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6308        M 0x8000065c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6311        M 0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6314        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6315        M 0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6318        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6319        M 0x80000668 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6320        M 0x8000066c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6322        M                                           #; (lsu) a0  <-- 0
       0     6323        M 0x80000670 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6324        M 0x80000674 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
       0     6325        M 0x80002ce0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6328        M                                           #; (lsu) t0  <-- 0
       0     6329        M 0x80002ce4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6330        M 0x80002ce8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6331        M 0x80002cec bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6332        M                                           #; (lsu) ra  <-- 0x80002aa8
       0     6336        M 0x80002cf0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6337        M 0x80002cf4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6338        M 0x80002cf8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002cf8
       0     6339        M 0x80002cfc addi    t1, t1, 584            #; t1  = 0x80002cf8, (wrb) t1  <-- 0x80002f40
       0     6347        M 0x80002d00 sw      t0, 0(t1)              #; t1  = 0x80002f40, 1 ~~> Word[0x80002f40]
       0     6348        M 0x80002d04 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     6361        M 0x80002aa8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6361):
snitch_loads                                   140
snitch_stores                                  142
fpss_stores                                      5
fpss_loads                                      29
snitch_avg_load_latency                    11.8214
snitch_occupancy                            0.2885
snitch_fseq_rel_offloads                    0.1226
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.9766
fpss_avg_load_latency                       4.0345
fpss_occupancy                              0.0403
fpss_fpu_occupancy                          0.0337
fpss_fpu_rel_occupancy                      0.8359
cycles                                        6350
total_ipc                                   0.3288
