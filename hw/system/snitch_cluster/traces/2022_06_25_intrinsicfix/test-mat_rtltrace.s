       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002860
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002860, (wrb) ra  <-- 4120, goto 0x80002860
       0      269        M 0x80002860 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003860
       0      270        M 0x80002864 addi    gp, gp, -280           #; gp  = 0x80003860, (wrb) gp  <-- 0x80003748
       0      271        M 0x80002868 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002868
       0      272        M 0x8000286c jalr    ra, ra, 964            #; ra  = 0x80002868, (wrb) ra  <-- 0x80002870, goto 0x80002c2c
       0      292        M 0x80002c2c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002c30 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002c34 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002c38 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002c3c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002c40 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002c44 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002c48 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002c4c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002c50 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002c54 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002c58 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002c5c ret                            #; ra  = 0x80002870, goto 0x80002870
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002870 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002874 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002878 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002878
       0      508        M 0x8000287c jalr    ra, ra, 1036           #; ra  = 0x80002878, (wrb) ra  <-- 0x80002880, goto 0x80002c84
       0      523        M 0x80002c84 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002c88 ret                            #; ra  = 0x80002880, goto 0x80002880
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002880 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002884 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002888 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000288c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002890 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002894 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002894
       0      551        M 0x80002898 addi    t0, t0, 1924           #; t0  = 0x80002894, (wrb) t0  <-- 0x80003018
       0      552        M 0x8000289c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000289c
       0      562        M 0x800028a0 addi    t1, t1, 1920           #; t1  = 0x8000289c, (wrb) t1  <-- 0x8000301c
       0      563        M 0x800028a4 bge     t0, t1, pc + 16        #; t0  = 0x80003018, t1  = 0x8000301c, not taken
       0      564        M 0x800028a8 sw      zero, 0(t0)            #; t0  = 0x80003018, 0 ~~> Word[0x80003018]
       0      565        M 0x800028ac addi    t0, t0, 4              #; t0  = 0x80003018, (wrb) t0  <-- 0x8000301c
       0      573        M 0x800028b0 blt     t0, t1, pc - 8         #; t0  = 0x8000301c, t1  = 0x8000301c, not taken
       0      574        M 0x800028b4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800028b8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800028bc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800028c0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800028c4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800028c8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800028cc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800028d0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800028d4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800028d8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800028dc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800028e0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800028e4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800028e8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800028ec fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800028f0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800028f4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800028f8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800028fc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002900 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002904 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002908 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000290c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002910 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002914 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002918 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000291c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002920 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002924 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002928 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000292c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002930 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002934 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002938 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000293c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002940 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002944 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002948 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002948
       0      684        M 0x8000294c lw      t0, 900(t0)            #; t0  = 0x80002948, t0  <~~ Word[0x80002ccc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002950 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002954 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002958 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002958
       0      708        M 0x8000295c lw      t2, 880(t2)            #; t2  = 0x80002958, t2  <~~ Word[0x80002cc8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002960 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002964 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002968 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000296c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002970 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002974 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002978 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000297c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002980 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002980
       0      762        M 0x80002984 addi    t0, t0, 1480           #; t0  = 0x80002980, (wrb) t0  <-- 0x80002f48
       0      763        M 0x80002988 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002988
       0      764        M 0x8000298c addi    t1, t1, 1472           #; t1  = 0x80002988, (wrb) t1  <-- 0x80002f48
       0      775        M 0x80002990 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002990
       0      776        M 0x80002994 addi    t2, t2, 1464           #; t2  = 0x80002990, (wrb) t2  <-- 0x80002f48
       0      777        M 0x80002998 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002998
       0      778        M 0x8000299c addi    t3, t3, 1472           #; t3  = 0x80002998, (wrb) t3  <-- 0x80002f58
       0      787        M 0x800029a0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f48, (wrb) sp  <-- 0x80122eb8
       0      788        M 0x800029a4 sub     sp, sp, t1             #; sp  = 0x80122eb8, t1  = 0x80002f48, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800029a8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f48, (wrb) sp  <-- 0x80122eb8
       0      790        M 0x800029ac sub     sp, sp, t3             #; sp  = 0x80122eb8, t3  = 0x80002f58, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800029b0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800029b4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800029b8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800029bc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800029c0 bge     t0, t1, pc + 24        #; t0  = 0x80002f48, t1  = 0x80002f48, taken, goto 0x800029d8
       0      823        M 0x800029d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d8
       0      824        M 0x800029dc addi    t0, t0, 1392           #; t0  = 0x800029d8, (wrb) t0  <-- 0x80002f48
       0      835        M 0x800029e0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029e0
       0      836        M 0x800029e4 addi    t1, t1, 1400           #; t1  = 0x800029e0, (wrb) t1  <-- 0x80002f58
       0      837        M 0x800029e8 bge     t0, t1, pc + 20        #; t0  = 0x80002f48, t1  = 0x80002f58, not taken
       0      838        M 0x800029ec sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800029f0 addi    t0, t0, 4              #; t0  = 0x80002f48, (wrb) t0  <-- 0x80002f4c
       0      848        M 0x800029f4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800029f8 blt     t0, t2, pc - 12        #; t0  = 0x80002f4c, t2  = 0x80002f48, not taken
       0      850        M 0x800029fc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002a00 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002a04 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002a08 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002a0c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002a10 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002a14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a14
       0      877        M 0x80002a18 jalr    ra, ra, -1064          #; ra  = 0x80002a14, (wrb) ra  <-- 0x80002a1c, goto 0x800025ec
       0      899        M 0x800025ec sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x800025f0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x800025f4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x800025f8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x800025fc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x80002600 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x80002604 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x80002608 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x8000260c mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x80002610 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x80002614 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x80002618 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x8000261c divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x80002620 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x80002624 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x80002628 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x8000262c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x80002630 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x80002634 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002638 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x8000263c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80002640 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002644 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002648 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x8000264c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80002650 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80002654 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80002658 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x8000265c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002660 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002664 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002668 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000266c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002670 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002674 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002678 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000267c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002680 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002684 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002688 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x8000268c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80002690 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80002694 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002698 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x8000269c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x800026a0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x800026a4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x800026a8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x800026ac lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x800026b0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x800026b4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x800026b8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x800026bc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x800026c0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x800026c4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x800026c8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x800026cc lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x800026d0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x800026d4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x800026d8 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800026dc mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x800026e0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800036e0
       0     1289        M 0x800026e4 addi    a1, a1, -1732          #; a1  = 0x800036e0, (wrb) a1  <-- 0x8000301c
       0     1290        M 0x800026e8 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000301c, (wrb) a0  <-- 0x8000301c
       0     1291        M 0x800026ec sw      zero, 0(a0)            #; a0  = 0x8000301c, 0 ~~> Word[0x8000301c]
       0     1300        M 0x800026f0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x800026f4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x800026f8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x800026fc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x80002700 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x80002704 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x80002708 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x8000270c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x80002710 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x80002714 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x80002718 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x8000271c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x80002720 lw      a0, 0(a1)              #; a1  = 0x8000301c, a0  <~~ Word[0x8000301c]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x80002724 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x80002728 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x8000272c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x80002730 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x80002734 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x80002738 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x8000273c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80002740 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002744 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002748 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x8000274c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80002750 ret                            #; ra  = 0x80002a1c, goto 0x80002a1c
       0     1421        M 0x80002a1c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x80002a20 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x80002a24 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x80002a28 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x80002a2c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x80002a30 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x80002a34 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a34
       0     1440        M 0x80002a38 addi    t0, t0, 60             #; t0  = 0x80002a34, (wrb) t0  <-- 0x80002a70
       0     1441        M 0x80002a3c csrw    mtvec, t0              #; t0  = 0x80002a70, (lsu) a4  <-- 4132
       0     1449        M 0x80002a40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a40
       0     1450        M 0x80002a44 jalr    ra, ra, 544            #; ra  = 0x80002a40, (wrb) ra  <-- 0x80002a48, goto 0x80002c60
       0     1466        M 0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a48 ~~> Word[0x0011ff5c]
       0     1468        M 0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
       0     1469        M 0x80002c6c jalr    ra, ra, -1268          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x80002774
       0     1487        M 0x80002774 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002778 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000277c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80002780 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80002784 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80002788 ret                            #; ra  = 0x80002c70, goto 0x80002c70
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80002c70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80002c74 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80002c78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80002c7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x80002a48
       0     1543        M 0x80002c80 ret                            #; ra  = 0x80002a48, goto 0x80002a48
       0     1547        M 0x80002a48 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a48
       0     1548        M 0x80002a4c jalr    ra, ra, -1044          #; ra  = 0x80000a48, (wrb) ra  <-- 0x80002a50, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1554        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a50 ~~> Word[0x0011ff5c]
       0     1555        M 0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1556        M 0x80000640 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1558        M 0x80000648 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1559        M 0x8000064c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000644 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1569        M 0x80000650 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1570        M 0x80000654 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1572        M                                           #; (lsu) a1  <-- 0
       0     1573        M 0x80000658 bnez    a1, pc + 808           #; a1  = 0, not taken
       0     1574        M 0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1581        M 0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1582        M 0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1585        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1586        M 0x80000668 lw      a3, 0(a0)              #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ff70]
       0     1589        M                                           #; (lsu) a3  <-- 0x0011ff70
       0     1590        M 0x8000066c lw      a0, 88(a3)             #; a3  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1593        M                                           #; (lsu) a0  <-- 0x00100000
       0     1597        M 0x80000670 lw      a2, 80(a3)             #; a3  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1600        M                                           #; (lsu) a2  <-- 0x00100000
       0     1601        M 0x80000674 lw      a4, 84(a3)             #; a3  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1602        M 0x80000678 addi    a1, a0, 240            #; a0  = 0x00100000, (wrb) a1  <-- 0x001000f0
       0     1604        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1605        M 0x8000067c add     a4, a4, a2             #; a4  = 0x0001df30, a2  = 0x00100000, (wrb) a4  <-- 0x0011df30
       0     1610        M 0x80000680 bgeu    a4, a1, pc + 44        #; a4  = 0x0011df30, a1  = 0x001000f0, taken, goto 0x800006ac
       0     1646        M 0x800006ac sw      a1, 88(a3)             #; a3  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1658        M 0x800006b0 mv      t0, a0                 #; a0  = 0x00100000, (wrb) t0  <-- 0x00100000
       0     1659        M 0x800006b4 mv      a0, a1                 #; a1  = 0x001000f0, (wrb) a0  <-- 0x001000f0
       0     1660        M 0x800006b8 addi    a1, a0, 336            #; a0  = 0x001000f0, (wrb) a1  <-- 0x00100240
       0     1661        M 0x800006bc bgeu    a4, a1, pc - 44        #; a4  = 0x0011df30, a1  = 0x00100240, taken, goto 0x80000690
       0     1662        M 0x80000690 sw      a1, 88(a3)             #; a3  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
       0     1663        M 0x80000694 mv      a6, a0                 #; a0  = 0x001000f0, (wrb) a6  <-- 0x001000f0
       0     1664        M 0x80000698 mv      a0, a1                 #; a1  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     1665        M 0x8000069c addi    a1, a0, 280            #; a0  = 0x00100240, (wrb) a1  <-- 0x00100358
       0     1666        M 0x800006a0 bltu    a4, a1, pc + 44        #; a4  = 0x0011df30, a1  = 0x00100358, not taken
       0     1667        M 0x800006a4 sw      a1, 88(a3)             #; a3  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
       0     1668        M 0x800006a8 j       pc + 0x28              #; goto 0x800006d0
       0     1678        M 0x800006d0 li      a1, 0                  #; (wrb) a1  <-- 0
       0     1679        M 0x800006d4 li      a3, 0                  #; (wrb) a3  <-- 0
       0     1680        M 0x800006d8 li      a4, 1                  #; (wrb) a4  <-- 1
       0     1681        M 0x800006dc lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
       0     1690        M 0x800006e0 auipc   a5, 0x3                #; (wrb) a5  <-- 0x800036e0
       0     1691        M 0x800006e4 addi    a5, a5, -1928          #; a5  = 0x800036e0, (wrb) a5  <-- 0x80002f58
       0     1693        M 0x800006ec addi    a5, a2, -819           #; a2  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
       0     1694        M 0x800006e8 fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x80002f58]
       0     1702        M 0x800006f0 li      a7, 20                 #; (wrb) a7  <-- 20
       0     1703        M 0x800006f4 li      s0, 240                #; (wrb) s0  <-- 240
                         M                                           #; (f:lsu) ft0  <-- 3.141
       0     1704        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 0, a5  = 0xcccccccd
       0     1707        M                                           #; (acc) a2  <-- 0x00465613
       0     1708        M 0x800006fc srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1714        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1717        M                                           #; (acc) a2  <-- 0x40c70633
       0     1718        M 0x80000704 sub     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1720        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 1
       0     1721        M                                           #; (f:fpu) ft1  <-- 1.0
       0     1722        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
       0     1725        M                                           #; (f:fpu) ft1  <-- 3.141
       0     1726        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 0, (wrb) a2  <-- 0x00100000
       0     1728        M 0x80000718 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     1729        M 0x8000071c addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 3.141 ~~> Doub[0x00100000]
       0     1738        M 0x80000720 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
       0     1739        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 8, s0  = 240, taken, goto 0x800006f8
       0     1740        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 1, a5  = 0xcccccccd
       0     1743        M                                           #; (acc) a2  <-- 0x00465613
       0     1744        M 0x800006fc srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1745        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1748        M                                           #; (acc) a2  <-- 0x40c70633
       0     1749        M 0x80000704 sub     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1751        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 2
       0     1752        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 8, (wrb) a2  <-- 0x00100008
                         M                                           #; (f:fpu) ft1  <-- 2.0
       0     1753        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
       0     1754        M 0x80000718 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
       0     1755        M 0x8000071c addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
       0     1756        M 0x80000720 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M                                           #; (f:fpu) ft1  <-- 6.282
       0     1757        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 16, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 6.282 ~~> Doub[0x00100008]
       0     1758        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 2, a5  = 0xcccccccd
       0     1761        M                                           #; (acc) a2  <-- 0x00465613
       0     1762        M 0x800006fc srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1763        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1766        M                                           #; (acc) a2  <-- 0x40c70633
       0     1767        M 0x80000704 sub     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1769        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 3
       0     1770        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 16, (wrb) a2  <-- 0x00100010
                         M                                           #; (f:fpu) ft1  <-- 3.0
       0     1771        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
       0     1772        M 0x80000718 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     1773        M 0x8000071c addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
       0     1774        M 0x80000720 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                         M                                           #; (f:fpu) ft1  <-- 9.423
       0     1775        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 24, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 9.423 ~~> Doub[0x00100010]
       0     1776        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 3, a5  = 0xcccccccd
       0     1779        M                                           #; (acc) a2  <-- 0x00465613
       0     1780        M 0x800006fc srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1781        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1784        M                                           #; (acc) a2  <-- 0x40c70633
       0     1785        M 0x80000704 sub     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1787        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 4
       0     1788        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 24, (wrb) a2  <-- 0x00100018
                         M                                           #; (f:fpu) ft1  <-- 4.0
       0     1789        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
       0     1790        M 0x80000718 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     1791        M 0x8000071c addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
       0     1792        M 0x80000720 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M                                           #; (f:fpu) ft1  <-- 12.564
       0     1793        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 32, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 12.564 ~~> Doub[0x00100018]
       0     1794        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 4, a5  = 0xcccccccd
       0     1797        M                                           #; (acc) a2  <-- 0x00465613
       0     1798        M 0x800006fc srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1799        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1802        M                                           #; (acc) a2  <-- 0x40c70633
       0     1803        M 0x80000704 sub     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1805        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 5
       0     1806        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 32, (wrb) a2  <-- 0x00100020
                         M                                           #; (f:fpu) ft1  <-- 5.0
       0     1807        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
       0     1808        M 0x80000718 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     1809        M 0x8000071c addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
       0     1810        M 0x80000720 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                         M                                           #; (f:fpu) ft1  <-- 15.705
       0     1811        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 40, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 15.705 ~~> Doub[0x00100020]
       0     1812        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 5, a5  = 0xcccccccd
       0     1815        M                                           #; (acc) a2  <-- 0x00465613
       0     1816        M 0x800006fc srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1817        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1820        M                                           #; (acc) a2  <-- 0x40c70633
       0     1821        M 0x80000704 sub     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1823        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 6
       0     1824        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 40, (wrb) a2  <-- 0x00100028
                         M                                           #; (f:fpu) ft1  <-- 6.0
       0     1825        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
       0     1826        M 0x80000718 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     1827        M 0x8000071c addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
       0     1828        M 0x80000720 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M                                           #; (f:fpu) ft1  <-- 18.846
       0     1829        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 48, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 18.846 ~~> Doub[0x00100028]
       0     1830        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 6, a5  = 0xcccccccd
       0     1833        M                                           #; (acc) a2  <-- 0x00465613
       0     1834        M 0x800006fc srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1835        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1838        M                                           #; (acc) a2  <-- 0x40c70633
       0     1839        M 0x80000704 sub     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1841        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 7
       0     1842        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 48, (wrb) a2  <-- 0x00100030
                         M                                           #; (f:fpu) ft1  <-- 7.0
       0     1843        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
       0     1844        M 0x80000718 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     1845        M 0x8000071c addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
       0     1846        M 0x80000720 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                         M                                           #; (f:fpu) ft1  <-- 21.9870000
       0     1847        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 56, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 21.9870000 ~~> Doub[0x00100030]
       0     1848        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 7, a5  = 0xcccccccd
       0     1851        M                                           #; (acc) a2  <-- 0x00465613
       0     1852        M 0x800006fc srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1853        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1856        M                                           #; (acc) a2  <-- 0x40c70633
       0     1857        M 0x80000704 sub     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     1859        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 8
       0     1860        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 56, (wrb) a2  <-- 0x00100038
                         M                                           #; (f:fpu) ft1  <-- 8.0
       0     1861        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
       0     1862        M 0x80000718 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     1863        M 0x8000071c addi    a1, a1, 8              #; a1  = 56, (wrb) a1  <-- 64
       0     1864        M 0x80000720 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M                                           #; (f:fpu) ft1  <-- 25.128
       0     1865        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 64, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 25.128 ~~> Doub[0x00100038]
       0     1866        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 8, a5  = 0xcccccccd
       0     1869        M                                           #; (acc) a2  <-- 0x00465613
       0     1870        M 0x800006fc srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1871        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1874        M                                           #; (acc) a2  <-- 0x40c70633
       0     1875        M 0x80000704 sub     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     1877        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 9
       0     1878        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 64, (wrb) a2  <-- 0x00100040
                         M                                           #; (f:fpu) ft1  <-- 9.0
       0     1879        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
       0     1880        M 0x80000718 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     1881        M 0x8000071c addi    a1, a1, 8              #; a1  = 64, (wrb) a1  <-- 72
       0     1882        M 0x80000720 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                         M                                           #; (f:fpu) ft1  <-- 28.269
       0     1883        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 72, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 28.269 ~~> Doub[0x00100040]
       0     1884        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 9, a5  = 0xcccccccd
       0     1887        M                                           #; (acc) a2  <-- 0x00465613
       0     1888        M 0x800006fc srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     1889        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1892        M                                           #; (acc) a2  <-- 0x40c70633
       0     1893        M 0x80000704 sub     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     1895        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 10
       0     1896        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 72, (wrb) a2  <-- 0x00100048
                         M                                           #; (f:fpu) ft1  <-- 10.0
       0     1897        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
       0     1898        M 0x80000718 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     1899        M 0x8000071c addi    a1, a1, 8              #; a1  = 72, (wrb) a1  <-- 80
       0     1900        M 0x80000720 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M                                           #; (f:fpu) ft1  <-- 31.41
       0     1901        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 80, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 31.41 ~~> Doub[0x00100048]
       0     1902        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 10, a5  = 0xcccccccd
       0     1905        M                                           #; (acc) a2  <-- 0x00465613
       0     1906        M 0x800006fc srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     1907        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1910        M                                           #; (acc) a2  <-- 0x40c70633
       0     1911        M 0x80000704 sub     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     1913        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 11
       0     1914        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 80, (wrb) a2  <-- 0x00100050
                         M                                           #; (f:fpu) ft1  <-- 11.0
       0     1915        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 3.141
       0     1916        M 0x80000718 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     1917        M 0x8000071c addi    a1, a1, 8              #; a1  = 80, (wrb) a1  <-- 88
       0     1918        M 0x80000720 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                         M                                           #; (f:fpu) ft1  <-- 34.551
       0     1919        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 88, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 34.551 ~~> Doub[0x00100050]
       0     1920        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 11, a5  = 0xcccccccd
       0     1923        M                                           #; (acc) a2  <-- 0x00465613
       0     1924        M 0x800006fc srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     1925        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1928        M                                           #; (acc) a2  <-- 0x40c70633
       0     1929        M 0x80000704 sub     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
       0     1931        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 12
       0     1932        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 88, (wrb) a2  <-- 0x00100058
                         M                                           #; (f:fpu) ft1  <-- 12.0
       0     1933        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 3.141
       0     1934        M 0x80000718 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     1935        M 0x8000071c addi    a1, a1, 8              #; a1  = 88, (wrb) a1  <-- 96
       0     1936        M 0x80000720 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M                                           #; (f:fpu) ft1  <-- 37.692
       0     1937        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 96, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 37.692 ~~> Doub[0x00100058]
       0     1938        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 12, a5  = 0xcccccccd
       0     1941        M                                           #; (acc) a2  <-- 0x00465613
       0     1942        M 0x800006fc srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     1943        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1946        M                                           #; (acc) a2  <-- 0x40c70633
       0     1947        M 0x80000704 sub     a2, a4, a2             #; a4  = 13, a2  = 0, (wrb) a2  <-- 13
       0     1949        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 13
       0     1950        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 96, (wrb) a2  <-- 0x00100060
                         M                                           #; (f:fpu) ft1  <-- 13.0
       0     1951        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 3.141
       0     1952        M 0x80000718 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     1953        M 0x8000071c addi    a1, a1, 8              #; a1  = 96, (wrb) a1  <-- 104
       0     1954        M 0x80000720 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                         M                                           #; (f:fpu) ft1  <-- 40.833
       0     1955        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 104, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 40.833 ~~> Doub[0x00100060]
       0     1956        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 13, a5  = 0xcccccccd
       0     1959        M                                           #; (acc) a2  <-- 0x00465613
       0     1960        M 0x800006fc srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     1961        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1964        M                                           #; (acc) a2  <-- 0x40c70633
       0     1965        M 0x80000704 sub     a2, a4, a2             #; a4  = 14, a2  = 0, (wrb) a2  <-- 14
       0     1967        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 14
       0     1968        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 104, (wrb) a2  <-- 0x00100068
                         M                                           #; (f:fpu) ft1  <-- 14.0
       0     1969        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 3.141
       0     1970        M 0x80000718 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     1971        M 0x8000071c addi    a1, a1, 8              #; a1  = 104, (wrb) a1  <-- 112
       0     1972        M 0x80000720 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M                                           #; (f:fpu) ft1  <-- 43.9740000
       0     1973        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 112, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 43.9740000 ~~> Doub[0x00100068]
       0     1974        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 14, a5  = 0xcccccccd
       0     1977        M                                           #; (acc) a2  <-- 0x00465613
       0     1978        M 0x800006fc srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     1979        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     1982        M                                           #; (acc) a2  <-- 0x40c70633
       0     1983        M 0x80000704 sub     a2, a4, a2             #; a4  = 15, a2  = 0, (wrb) a2  <-- 15
       0     1985        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 15
       0     1986        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 112, (wrb) a2  <-- 0x00100070
                         M                                           #; (f:fpu) ft1  <-- 15.0
       0     1987        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 3.141
       0     1988        M 0x80000718 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     1989        M 0x8000071c addi    a1, a1, 8              #; a1  = 112, (wrb) a1  <-- 120
       0     1990        M 0x80000720 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                         M                                           #; (f:fpu) ft1  <-- 47.115
       0     1991        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 120, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 47.115 ~~> Doub[0x00100070]
       0     1992        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 15, a5  = 0xcccccccd
       0     1995        M                                           #; (acc) a2  <-- 0x00465613
       0     1996        M 0x800006fc srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
       0     1997        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     2000        M                                           #; (acc) a2  <-- 0x40c70633
       0     2001        M 0x80000704 sub     a2, a4, a2             #; a4  = 16, a2  = 0, (wrb) a2  <-- 16
       0     2003        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 16
       0     2004        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 120, (wrb) a2  <-- 0x00100078
                         M                                           #; (f:fpu) ft1  <-- 16.0
       0     2005        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 3.141
       0     2006        M 0x80000718 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2007        M 0x8000071c addi    a1, a1, 8              #; a1  = 120, (wrb) a1  <-- 128
       0     2008        M 0x80000720 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M                                           #; (f:fpu) ft1  <-- 50.256
       0     2009        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 128, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 50.256 ~~> Doub[0x00100078]
       0     2010        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 16, a5  = 0xcccccccd
       0     2013        M                                           #; (acc) a2  <-- 0x00465613
       0     2014        M 0x800006fc srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
       0     2015        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     2018        M                                           #; (acc) a2  <-- 0x40c70633
       0     2019        M 0x80000704 sub     a2, a4, a2             #; a4  = 17, a2  = 0, (wrb) a2  <-- 17
       0     2021        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 17
       0     2022        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 128, (wrb) a2  <-- 0x00100080
                         M                                           #; (f:fpu) ft1  <-- 17.0
       0     2023        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 3.141
       0     2024        M 0x80000718 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2025        M 0x8000071c addi    a1, a1, 8              #; a1  = 128, (wrb) a1  <-- 136
       0     2026        M 0x80000720 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                         M                                           #; (f:fpu) ft1  <-- 53.397
       0     2027        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 136, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 53.397 ~~> Doub[0x00100080]
       0     2028        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 17, a5  = 0xcccccccd
       0     2031        M                                           #; (acc) a2  <-- 0x00465613
       0     2032        M 0x800006fc srli    a2, a2, 4              #; a2  = 13, (wrb) a2  <-- 0
       0     2033        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     2036        M                                           #; (acc) a2  <-- 0x40c70633
       0     2037        M 0x80000704 sub     a2, a4, a2             #; a4  = 18, a2  = 0, (wrb) a2  <-- 18
       0     2039        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 18
       0     2040        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 136, (wrb) a2  <-- 0x00100088
                         M                                           #; (f:fpu) ft1  <-- 18.0
       0     2041        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 3.141
       0     2042        M 0x80000718 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2043        M 0x8000071c addi    a1, a1, 8              #; a1  = 136, (wrb) a1  <-- 144
       0     2044        M 0x80000720 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M                                           #; (f:fpu) ft1  <-- 56.538
       0     2045        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 144, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 56.538 ~~> Doub[0x00100088]
       0     2046        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 18, a5  = 0xcccccccd
       0     2049        M                                           #; (acc) a2  <-- 0x00465613
       0     2050        M 0x800006fc srli    a2, a2, 4              #; a2  = 14, (wrb) a2  <-- 0
       0     2051        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     2054        M                                           #; (acc) a2  <-- 0x40c70633
       0     2055        M 0x80000704 sub     a2, a4, a2             #; a4  = 19, a2  = 0, (wrb) a2  <-- 19
       0     2057        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 19
       0     2058        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 144, (wrb) a2  <-- 0x00100090
                         M                                           #; (f:fpu) ft1  <-- 19.0
       0     2059        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 3.141
       0     2060        M 0x80000718 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2061        M 0x8000071c addi    a1, a1, 8              #; a1  = 144, (wrb) a1  <-- 152
       0     2062        M 0x80000720 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                         M                                           #; (f:fpu) ft1  <-- 59.679
       0     2063        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 152, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 59.679 ~~> Doub[0x00100090]
       0     2064        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 19, a5  = 0xcccccccd
       0     2067        M                                           #; (acc) a2  <-- 0x00465613
       0     2068        M 0x800006fc srli    a2, a2, 4              #; a2  = 15, (wrb) a2  <-- 0
       0     2069        M 0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
       0     2072        M                                           #; (acc) a2  <-- 0x40c70633
       0     2073        M 0x80000704 sub     a2, a4, a2             #; a4  = 20, a2  = 0, (wrb) a2  <-- 20
       0     2075        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 20
       0     2076        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 152, (wrb) a2  <-- 0x00100098
                         M                                           #; (f:fpu) ft1  <-- 20.0
       0     2077        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 3.141
       0     2078        M 0x80000718 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2079        M 0x8000071c addi    a1, a1, 8              #; a1  = 152, (wrb) a1  <-- 160
       0     2080        M 0x80000720 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M                                           #; (f:fpu) ft1  <-- 62.82
       0     2081        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 160, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 62.82 ~~> Doub[0x00100098]
       0     2082        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 20, a5  = 0xcccccccd
       0     2085        M                                           #; (acc) a2  <-- 0x00465613
       0     2086        M 0x800006fc srli    a2, a2, 4              #; a2  = 16, (wrb) a2  <-- 1
       0     2087        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2090        M                                           #; (acc) a2  <-- 0x40c70633
       0     2091        M 0x80000704 sub     a2, a4, a2             #; a4  = 21, a2  = 20, (wrb) a2  <-- 1
       0     2093        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 1
       0     2094        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 160, (wrb) a2  <-- 0x001000a0
                         M                                           #; (f:fpu) ft1  <-- 1.0
       0     2095        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
       0     2096        M 0x80000718 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2097        M 0x8000071c addi    a1, a1, 8              #; a1  = 160, (wrb) a1  <-- 168
       0     2098        M 0x80000720 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                         M                                           #; (f:fpu) ft1  <-- 3.141
       0     2099        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 168, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 3.141 ~~> Doub[0x001000a0]
       0     2100        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 21, a5  = 0xcccccccd
       0     2103        M                                           #; (acc) a2  <-- 0x00465613
       0     2104        M 0x800006fc srli    a2, a2, 4              #; a2  = 16, (wrb) a2  <-- 1
       0     2105        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2108        M                                           #; (acc) a2  <-- 0x40c70633
       0     2109        M 0x80000704 sub     a2, a4, a2             #; a4  = 22, a2  = 20, (wrb) a2  <-- 2
       0     2111        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 2
       0     2112        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 168, (wrb) a2  <-- 0x001000a8
                         M                                           #; (f:fpu) ft1  <-- 2.0
       0     2113        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
       0     2114        M 0x80000718 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2115        M 0x8000071c addi    a1, a1, 8              #; a1  = 168, (wrb) a1  <-- 176
       0     2116        M 0x80000720 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M                                           #; (f:fpu) ft1  <-- 6.282
       0     2117        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 176, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 6.282 ~~> Doub[0x001000a8]
       0     2118        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 22, a5  = 0xcccccccd
       0     2121        M                                           #; (acc) a2  <-- 0x00465613
       0     2122        M 0x800006fc srli    a2, a2, 4              #; a2  = 17, (wrb) a2  <-- 1
       0     2123        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2126        M                                           #; (acc) a2  <-- 0x40c70633
       0     2127        M 0x80000704 sub     a2, a4, a2             #; a4  = 23, a2  = 20, (wrb) a2  <-- 3
       0     2129        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 3
       0     2130        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 176, (wrb) a2  <-- 0x001000b0
                         M                                           #; (f:fpu) ft1  <-- 3.0
       0     2131        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
       0     2132        M 0x80000718 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2133        M 0x8000071c addi    a1, a1, 8              #; a1  = 176, (wrb) a1  <-- 184
       0     2134        M 0x80000720 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                         M                                           #; (f:fpu) ft1  <-- 9.423
       0     2135        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 184, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 9.423 ~~> Doub[0x001000b0]
       0     2136        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 23, a5  = 0xcccccccd
       0     2139        M                                           #; (acc) a2  <-- 0x00465613
       0     2140        M 0x800006fc srli    a2, a2, 4              #; a2  = 18, (wrb) a2  <-- 1
       0     2141        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2144        M                                           #; (acc) a2  <-- 0x40c70633
       0     2145        M 0x80000704 sub     a2, a4, a2             #; a4  = 24, a2  = 20, (wrb) a2  <-- 4
       0     2147        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 4
       0     2148        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 184, (wrb) a2  <-- 0x001000b8
                         M                                           #; (f:fpu) ft1  <-- 4.0
       0     2149        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
       0     2150        M 0x80000718 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2151        M 0x8000071c addi    a1, a1, 8              #; a1  = 184, (wrb) a1  <-- 192
       0     2152        M 0x80000720 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M                                           #; (f:fpu) ft1  <-- 12.564
       0     2153        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 192, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 12.564 ~~> Doub[0x001000b8]
       0     2154        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 24, a5  = 0xcccccccd
       0     2157        M                                           #; (acc) a2  <-- 0x00465613
       0     2158        M 0x800006fc srli    a2, a2, 4              #; a2  = 19, (wrb) a2  <-- 1
       0     2159        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2162        M                                           #; (acc) a2  <-- 0x40c70633
       0     2163        M 0x80000704 sub     a2, a4, a2             #; a4  = 25, a2  = 20, (wrb) a2  <-- 5
       0     2165        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 5
       0     2166        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 192, (wrb) a2  <-- 0x001000c0
                         M                                           #; (f:fpu) ft1  <-- 5.0
       0     2167        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
       0     2168        M 0x80000718 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2169        M 0x8000071c addi    a1, a1, 8              #; a1  = 192, (wrb) a1  <-- 200
       0     2170        M 0x80000720 addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
                         M                                           #; (f:fpu) ft1  <-- 15.705
       0     2171        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 200, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 15.705 ~~> Doub[0x001000c0]
       0     2172        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 25, a5  = 0xcccccccd
       0     2175        M                                           #; (acc) a2  <-- 0x00465613
       0     2176        M 0x800006fc srli    a2, a2, 4              #; a2  = 20, (wrb) a2  <-- 1
       0     2177        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2180        M                                           #; (acc) a2  <-- 0x40c70633
       0     2181        M 0x80000704 sub     a2, a4, a2             #; a4  = 26, a2  = 20, (wrb) a2  <-- 6
       0     2183        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 6
       0     2184        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 200, (wrb) a2  <-- 0x001000c8
                         M                                           #; (f:fpu) ft1  <-- 6.0
       0     2185        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
       0     2186        M 0x80000718 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2187        M 0x8000071c addi    a1, a1, 8              #; a1  = 200, (wrb) a1  <-- 208
       0     2188        M 0x80000720 addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
                         M                                           #; (f:fpu) ft1  <-- 18.846
       0     2189        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 208, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 18.846 ~~> Doub[0x001000c8]
       0     2190        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 26, a5  = 0xcccccccd
       0     2193        M                                           #; (acc) a2  <-- 0x00465613
       0     2194        M 0x800006fc srli    a2, a2, 4              #; a2  = 20, (wrb) a2  <-- 1
       0     2195        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2198        M                                           #; (acc) a2  <-- 0x40c70633
       0     2199        M 0x80000704 sub     a2, a4, a2             #; a4  = 27, a2  = 20, (wrb) a2  <-- 7
       0     2201        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 7
       0     2202        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 208, (wrb) a2  <-- 0x001000d0
                         M                                           #; (f:fpu) ft1  <-- 7.0
       0     2203        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
       0     2204        M 0x80000718 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2205        M 0x8000071c addi    a1, a1, 8              #; a1  = 208, (wrb) a1  <-- 216
       0     2206        M 0x80000720 addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
                         M                                           #; (f:fpu) ft1  <-- 21.9870000
       0     2207        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 216, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 21.9870000 ~~> Doub[0x001000d0]
       0     2208        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 27, a5  = 0xcccccccd
       0     2211        M                                           #; (acc) a2  <-- 0x00465613
       0     2212        M 0x800006fc srli    a2, a2, 4              #; a2  = 21, (wrb) a2  <-- 1
       0     2213        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2216        M                                           #; (acc) a2  <-- 0x40c70633
       0     2217        M 0x80000704 sub     a2, a4, a2             #; a4  = 28, a2  = 20, (wrb) a2  <-- 8
       0     2219        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 8
       0     2220        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 216, (wrb) a2  <-- 0x001000d8
                         M                                           #; (f:fpu) ft1  <-- 8.0
       0     2221        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
       0     2222        M 0x80000718 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2223        M 0x8000071c addi    a1, a1, 8              #; a1  = 216, (wrb) a1  <-- 224
       0     2224        M 0x80000720 addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
                         M                                           #; (f:fpu) ft1  <-- 25.128
       0     2225        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 224, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 25.128 ~~> Doub[0x001000d8]
       0     2226        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 28, a5  = 0xcccccccd
       0     2229        M                                           #; (acc) a2  <-- 0x00465613
       0     2230        M 0x800006fc srli    a2, a2, 4              #; a2  = 22, (wrb) a2  <-- 1
       0     2231        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2234        M                                           #; (acc) a2  <-- 0x40c70633
       0     2235        M 0x80000704 sub     a2, a4, a2             #; a4  = 29, a2  = 20, (wrb) a2  <-- 9
       0     2237        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 9
       0     2238        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 224, (wrb) a2  <-- 0x001000e0
                         M                                           #; (f:fpu) ft1  <-- 9.0
       0     2239        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
       0     2240        M 0x80000718 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2241        M 0x8000071c addi    a1, a1, 8              #; a1  = 224, (wrb) a1  <-- 232
       0     2242        M 0x80000720 addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
                         M                                           #; (f:fpu) ft1  <-- 28.269
       0     2243        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 232, s0  = 240, taken, goto 0x800006f8
                         M 0x80000714 fsd     ft1, 0(a2)             #; 28.269 ~~> Doub[0x001000e0]
       0     2244        M 0x800006f8 mulhu   a2, a3, a5             #; a3  = 29, a5  = 0xcccccccd
       0     2247        M                                           #; (acc) a2  <-- 0x00465613
       0     2248        M 0x800006fc srli    a2, a2, 4              #; a2  = 23, (wrb) a2  <-- 1
       0     2249        M 0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
       0     2252        M                                           #; (acc) a2  <-- 0x40c70633
       0     2253        M 0x80000704 sub     a2, a4, a2             #; a4  = 30, a2  = 20, (wrb) a2  <-- 10
       0     2255        M 0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 10
       0     2256        M 0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 232, (wrb) a2  <-- 0x001000e8
                         M                                           #; (f:fpu) ft1  <-- 10.0
       0     2257        M 0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
       0     2258        M 0x80000718 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2259        M 0x8000071c addi    a1, a1, 8              #; a1  = 232, (wrb) a1  <-- 240
       0     2260        M 0x80000720 addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
                         M                                           #; (f:fpu) ft1  <-- 31.41
       0     2261        M 0x80000724 bne     a1, s0, pc - 44        #; a1  = 240, s0  = 240, not taken
                         M 0x80000714 fsd     ft1, 0(a2)             #; 31.41 ~~> Doub[0x001000e8]
       0     2262        M 0x80000728 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2263        M 0x8000072c li      a3, 0                  #; (wrb) a3  <-- 0
       0     2274        M 0x80000730 li      a4, 1                  #; (wrb) a4  <-- 1
       0     2275        M 0x80000734 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
       0     2276        M 0x80000738 addi    a5, a2, -819           #; a2  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
       0     2277        M 0x8000073c li      a7, 20                 #; (wrb) a7  <-- 20
       0     2286        M 0x80000740 li      a2, 336                #; (wrb) a2  <-- 336
       0     2287        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 0, a5  = 0xcccccccd
       0     2290        M                                           #; (acc) s0  <-- 0x00445413
       0     2291        M 0x80000748 srli    s0, s0, 4              #; s0  = 0, (wrb) s0  <-- 0
       0     2292        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2298        M 0x80000750 sub     s0, a4, s0             #; a4  = 1, s0  = 0, (wrb) s0  <-- 1
       0     2300        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 1
       0     2301        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 0, (wrb) s0  <-- 0x001000f0
                         M                                           #; (f:fpu) ft1  <-- 1.0
       0     2302        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
       0     2305        M                                           #; (f:fpu) ft1  <-- 3.141
       0     2311        M 0x80000764 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     2312        M 0x80000768 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M 0x80000760 fsd     ft1, 0(s0)             #; 3.141 ~~> Doub[0x001000f0]
       0     2313        M 0x8000076c addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
       0     2322        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 8, a2  = 336, taken, goto 0x80000744
       0     2323        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 1, a5  = 0xcccccccd
       0     2326        M                                           #; (acc) s0  <-- 0x00445413
       0     2327        M 0x80000748 srli    s0, s0, 4              #; s0  = 0, (wrb) s0  <-- 0
       0     2328        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2331        M                                           #; (acc) s0  <-- 0x40870433
       0     2332        M 0x80000750 sub     s0, a4, s0             #; a4  = 2, s0  = 0, (wrb) s0  <-- 2
       0     2334        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 2
       0     2335        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 8, (wrb) s0  <-- 0x001000f8
                         M                                           #; (f:fpu) ft1  <-- 2.0
       0     2336        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
       0     2337        M 0x80000764 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
       0     2338        M 0x80000768 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
       0     2339        M 0x8000076c addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M                                           #; (f:fpu) ft1  <-- 6.282
       0     2340        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 16, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 6.282 ~~> Doub[0x001000f8]
       0     2341        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 2, a5  = 0xcccccccd
       0     2344        M                                           #; (acc) s0  <-- 0x00445413
       0     2345        M 0x80000748 srli    s0, s0, 4              #; s0  = 1, (wrb) s0  <-- 0
       0     2346        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2349        M                                           #; (acc) s0  <-- 0x40870433
       0     2350        M 0x80000750 sub     s0, a4, s0             #; a4  = 3, s0  = 0, (wrb) s0  <-- 3
       0     2352        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 3
       0     2353        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 16, (wrb) s0  <-- 0x00100100
                         M                                           #; (f:fpu) ft1  <-- 3.0
       0     2354        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
       0     2355        M 0x80000764 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     2356        M 0x80000768 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
       0     2357        M 0x8000076c addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                         M                                           #; (f:fpu) ft1  <-- 9.423
       0     2358        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 24, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 9.423 ~~> Doub[0x00100100]
       0     2359        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 3, a5  = 0xcccccccd
       0     2362        M                                           #; (acc) s0  <-- 0x00445413
       0     2363        M 0x80000748 srli    s0, s0, 4              #; s0  = 2, (wrb) s0  <-- 0
       0     2364        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2367        M                                           #; (acc) s0  <-- 0x40870433
       0     2368        M 0x80000750 sub     s0, a4, s0             #; a4  = 4, s0  = 0, (wrb) s0  <-- 4
       0     2370        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 4
       0     2371        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 24, (wrb) s0  <-- 0x00100108
                         M                                           #; (f:fpu) ft1  <-- 4.0
       0     2372        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
       0     2373        M 0x80000764 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     2374        M 0x80000768 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
       0     2375        M 0x8000076c addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M                                           #; (f:fpu) ft1  <-- 12.564
       0     2376        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 32, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 12.564 ~~> Doub[0x00100108]
       0     2377        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 4, a5  = 0xcccccccd
       0     2380        M                                           #; (acc) s0  <-- 0x00445413
       0     2381        M 0x80000748 srli    s0, s0, 4              #; s0  = 3, (wrb) s0  <-- 0
       0     2382        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2385        M                                           #; (acc) s0  <-- 0x40870433
       0     2386        M 0x80000750 sub     s0, a4, s0             #; a4  = 5, s0  = 0, (wrb) s0  <-- 5
       0     2388        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 5
       0     2389        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 32, (wrb) s0  <-- 0x00100110
                         M                                           #; (f:fpu) ft1  <-- 5.0
       0     2390        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
       0     2391        M 0x80000764 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     2392        M 0x80000768 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
       0     2393        M 0x8000076c addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                         M                                           #; (f:fpu) ft1  <-- 15.705
       0     2394        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 40, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 15.705 ~~> Doub[0x00100110]
       0     2395        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 5, a5  = 0xcccccccd
       0     2398        M                                           #; (acc) s0  <-- 0x00445413
       0     2399        M 0x80000748 srli    s0, s0, 4              #; s0  = 4, (wrb) s0  <-- 0
       0     2400        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2403        M                                           #; (acc) s0  <-- 0x40870433
       0     2404        M 0x80000750 sub     s0, a4, s0             #; a4  = 6, s0  = 0, (wrb) s0  <-- 6
       0     2406        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 6
       0     2407        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 40, (wrb) s0  <-- 0x00100118
                         M                                           #; (f:fpu) ft1  <-- 6.0
       0     2408        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
       0     2409        M 0x80000764 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     2410        M 0x80000768 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
       0     2411        M 0x8000076c addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M                                           #; (f:fpu) ft1  <-- 18.846
       0     2412        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 48, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 18.846 ~~> Doub[0x00100118]
       0     2413        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 6, a5  = 0xcccccccd
       0     2416        M                                           #; (acc) s0  <-- 0x00445413
       0     2417        M 0x80000748 srli    s0, s0, 4              #; s0  = 4, (wrb) s0  <-- 0
       0     2418        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2421        M                                           #; (acc) s0  <-- 0x40870433
       0     2422        M 0x80000750 sub     s0, a4, s0             #; a4  = 7, s0  = 0, (wrb) s0  <-- 7
       0     2424        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 7
       0     2425        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 48, (wrb) s0  <-- 0x00100120
                         M                                           #; (f:fpu) ft1  <-- 7.0
       0     2426        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
       0     2427        M 0x80000764 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     2428        M 0x80000768 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
       0     2429        M 0x8000076c addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                         M                                           #; (f:fpu) ft1  <-- 21.9870000
       0     2430        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 56, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 21.9870000 ~~> Doub[0x00100120]
       0     2431        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 7, a5  = 0xcccccccd
       0     2434        M                                           #; (acc) s0  <-- 0x00445413
       0     2435        M 0x80000748 srli    s0, s0, 4              #; s0  = 5, (wrb) s0  <-- 0
       0     2436        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2439        M                                           #; (acc) s0  <-- 0x40870433
       0     2440        M 0x80000750 sub     s0, a4, s0             #; a4  = 8, s0  = 0, (wrb) s0  <-- 8
       0     2442        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 8
       0     2443        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 56, (wrb) s0  <-- 0x00100128
                         M                                           #; (f:fpu) ft1  <-- 8.0
       0     2444        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
       0     2445        M 0x80000764 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     2446        M 0x80000768 addi    a1, a1, 8              #; a1  = 56, (wrb) a1  <-- 64
       0     2447        M 0x8000076c addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M                                           #; (f:fpu) ft1  <-- 25.128
       0     2448        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 64, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 25.128 ~~> Doub[0x00100128]
       0     2449        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 8, a5  = 0xcccccccd
       0     2452        M                                           #; (acc) s0  <-- 0x00445413
       0     2453        M 0x80000748 srli    s0, s0, 4              #; s0  = 6, (wrb) s0  <-- 0
       0     2454        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2457        M                                           #; (acc) s0  <-- 0x40870433
       0     2458        M 0x80000750 sub     s0, a4, s0             #; a4  = 9, s0  = 0, (wrb) s0  <-- 9
       0     2460        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 9
       0     2461        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 64, (wrb) s0  <-- 0x00100130
                         M                                           #; (f:fpu) ft1  <-- 9.0
       0     2462        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
       0     2463        M 0x80000764 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     2464        M 0x80000768 addi    a1, a1, 8              #; a1  = 64, (wrb) a1  <-- 72
       0     2465        M 0x8000076c addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                         M                                           #; (f:fpu) ft1  <-- 28.269
       0     2466        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 72, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 28.269 ~~> Doub[0x00100130]
       0     2467        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 9, a5  = 0xcccccccd
       0     2470        M                                           #; (acc) s0  <-- 0x00445413
       0     2471        M 0x80000748 srli    s0, s0, 4              #; s0  = 7, (wrb) s0  <-- 0
       0     2472        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2475        M                                           #; (acc) s0  <-- 0x40870433
       0     2476        M 0x80000750 sub     s0, a4, s0             #; a4  = 10, s0  = 0, (wrb) s0  <-- 10
       0     2478        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 10
       0     2479        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 72, (wrb) s0  <-- 0x00100138
                         M                                           #; (f:fpu) ft1  <-- 10.0
       0     2480        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
       0     2481        M 0x80000764 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     2482        M 0x80000768 addi    a1, a1, 8              #; a1  = 72, (wrb) a1  <-- 80
       0     2483        M 0x8000076c addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M                                           #; (f:fpu) ft1  <-- 31.41
       0     2484        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 80, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 31.41 ~~> Doub[0x00100138]
       0     2485        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 10, a5  = 0xcccccccd
       0     2488        M                                           #; (acc) s0  <-- 0x00445413
       0     2489        M 0x80000748 srli    s0, s0, 4              #; s0  = 8, (wrb) s0  <-- 0
       0     2490        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2493        M                                           #; (acc) s0  <-- 0x40870433
       0     2494        M 0x80000750 sub     s0, a4, s0             #; a4  = 11, s0  = 0, (wrb) s0  <-- 11
       0     2496        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 11
       0     2497        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 80, (wrb) s0  <-- 0x00100140
                         M                                           #; (f:fpu) ft1  <-- 11.0
       0     2498        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 3.141
       0     2499        M 0x80000764 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     2500        M 0x80000768 addi    a1, a1, 8              #; a1  = 80, (wrb) a1  <-- 88
       0     2501        M 0x8000076c addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                         M                                           #; (f:fpu) ft1  <-- 34.551
       0     2502        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 88, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 34.551 ~~> Doub[0x00100140]
       0     2503        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 11, a5  = 0xcccccccd
       0     2506        M                                           #; (acc) s0  <-- 0x00445413
       0     2507        M 0x80000748 srli    s0, s0, 4              #; s0  = 8, (wrb) s0  <-- 0
       0     2508        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2511        M                                           #; (acc) s0  <-- 0x40870433
       0     2512        M 0x80000750 sub     s0, a4, s0             #; a4  = 12, s0  = 0, (wrb) s0  <-- 12
       0     2514        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 12
       0     2515        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 88, (wrb) s0  <-- 0x00100148
                         M                                           #; (f:fpu) ft1  <-- 12.0
       0     2516        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 3.141
       0     2517        M 0x80000764 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     2518        M 0x80000768 addi    a1, a1, 8              #; a1  = 88, (wrb) a1  <-- 96
       0     2519        M 0x8000076c addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M                                           #; (f:fpu) ft1  <-- 37.692
       0     2520        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 96, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 37.692 ~~> Doub[0x00100148]
       0     2521        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 12, a5  = 0xcccccccd
       0     2524        M                                           #; (acc) s0  <-- 0x00445413
       0     2525        M 0x80000748 srli    s0, s0, 4              #; s0  = 9, (wrb) s0  <-- 0
       0     2526        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2529        M                                           #; (acc) s0  <-- 0x40870433
       0     2530        M 0x80000750 sub     s0, a4, s0             #; a4  = 13, s0  = 0, (wrb) s0  <-- 13
       0     2532        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 13
       0     2533        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 96, (wrb) s0  <-- 0x00100150
                         M                                           #; (f:fpu) ft1  <-- 13.0
       0     2534        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 3.141
       0     2535        M 0x80000764 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2536        M 0x80000768 addi    a1, a1, 8              #; a1  = 96, (wrb) a1  <-- 104
       0     2537        M 0x8000076c addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                         M                                           #; (f:fpu) ft1  <-- 40.833
       0     2538        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 104, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 40.833 ~~> Doub[0x00100150]
       0     2539        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 13, a5  = 0xcccccccd
       0     2542        M                                           #; (acc) s0  <-- 0x00445413
       0     2543        M 0x80000748 srli    s0, s0, 4              #; s0  = 10, (wrb) s0  <-- 0
       0     2544        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2547        M                                           #; (acc) s0  <-- 0x40870433
       0     2548        M 0x80000750 sub     s0, a4, s0             #; a4  = 14, s0  = 0, (wrb) s0  <-- 14
       0     2550        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 14
       0     2551        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 104, (wrb) s0  <-- 0x00100158
                         M                                           #; (f:fpu) ft1  <-- 14.0
       0     2552        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 3.141
       0     2553        M 0x80000764 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2554        M 0x80000768 addi    a1, a1, 8              #; a1  = 104, (wrb) a1  <-- 112
       0     2555        M 0x8000076c addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M                                           #; (f:fpu) ft1  <-- 43.9740000
       0     2556        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 112, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 43.9740000 ~~> Doub[0x00100158]
       0     2557        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 14, a5  = 0xcccccccd
       0     2560        M                                           #; (acc) s0  <-- 0x00445413
       0     2561        M 0x80000748 srli    s0, s0, 4              #; s0  = 11, (wrb) s0  <-- 0
       0     2562        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2565        M                                           #; (acc) s0  <-- 0x40870433
       0     2566        M 0x80000750 sub     s0, a4, s0             #; a4  = 15, s0  = 0, (wrb) s0  <-- 15
       0     2568        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 15
       0     2569        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 112, (wrb) s0  <-- 0x00100160
                         M                                           #; (f:fpu) ft1  <-- 15.0
       0     2570        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 3.141
       0     2571        M 0x80000764 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2572        M 0x80000768 addi    a1, a1, 8              #; a1  = 112, (wrb) a1  <-- 120
       0     2573        M 0x8000076c addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                         M                                           #; (f:fpu) ft1  <-- 47.115
       0     2574        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 120, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 47.115 ~~> Doub[0x00100160]
       0     2575        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 15, a5  = 0xcccccccd
       0     2578        M                                           #; (acc) s0  <-- 0x00445413
       0     2579        M 0x80000748 srli    s0, s0, 4              #; s0  = 12, (wrb) s0  <-- 0
       0     2580        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2583        M                                           #; (acc) s0  <-- 0x40870433
       0     2584        M 0x80000750 sub     s0, a4, s0             #; a4  = 16, s0  = 0, (wrb) s0  <-- 16
       0     2586        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 16
       0     2587        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 120, (wrb) s0  <-- 0x00100168
                         M                                           #; (f:fpu) ft1  <-- 16.0
       0     2588        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 3.141
       0     2589        M 0x80000764 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2590        M 0x80000768 addi    a1, a1, 8              #; a1  = 120, (wrb) a1  <-- 128
       0     2591        M 0x8000076c addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M                                           #; (f:fpu) ft1  <-- 50.256
       0     2592        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 128, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 50.256 ~~> Doub[0x00100168]
       0     2593        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 16, a5  = 0xcccccccd
       0     2596        M                                           #; (acc) s0  <-- 0x00445413
       0     2597        M 0x80000748 srli    s0, s0, 4              #; s0  = 12, (wrb) s0  <-- 0
       0     2598        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2601        M                                           #; (acc) s0  <-- 0x40870433
       0     2602        M 0x80000750 sub     s0, a4, s0             #; a4  = 17, s0  = 0, (wrb) s0  <-- 17
       0     2604        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 17
       0     2605        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 128, (wrb) s0  <-- 0x00100170
                         M                                           #; (f:fpu) ft1  <-- 17.0
       0     2606        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 3.141
       0     2607        M 0x80000764 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2608        M 0x80000768 addi    a1, a1, 8              #; a1  = 128, (wrb) a1  <-- 136
       0     2609        M 0x8000076c addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                         M                                           #; (f:fpu) ft1  <-- 53.397
       0     2610        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 136, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 53.397 ~~> Doub[0x00100170]
       0     2611        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 17, a5  = 0xcccccccd
       0     2614        M                                           #; (acc) s0  <-- 0x00445413
       0     2615        M 0x80000748 srli    s0, s0, 4              #; s0  = 13, (wrb) s0  <-- 0
       0     2616        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2619        M                                           #; (acc) s0  <-- 0x40870433
       0     2620        M 0x80000750 sub     s0, a4, s0             #; a4  = 18, s0  = 0, (wrb) s0  <-- 18
       0     2622        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 18
       0     2623        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 136, (wrb) s0  <-- 0x00100178
                         M                                           #; (f:fpu) ft1  <-- 18.0
       0     2624        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 3.141
       0     2625        M 0x80000764 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2626        M 0x80000768 addi    a1, a1, 8              #; a1  = 136, (wrb) a1  <-- 144
       0     2627        M 0x8000076c addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M                                           #; (f:fpu) ft1  <-- 56.538
       0     2628        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 144, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 56.538 ~~> Doub[0x00100178]
       0     2629        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 18, a5  = 0xcccccccd
       0     2632        M                                           #; (acc) s0  <-- 0x00445413
       0     2633        M 0x80000748 srli    s0, s0, 4              #; s0  = 14, (wrb) s0  <-- 0
       0     2634        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2637        M                                           #; (acc) s0  <-- 0x40870433
       0     2638        M 0x80000750 sub     s0, a4, s0             #; a4  = 19, s0  = 0, (wrb) s0  <-- 19
       0     2640        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 19
       0     2641        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 144, (wrb) s0  <-- 0x00100180
                         M                                           #; (f:fpu) ft1  <-- 19.0
       0     2642        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 3.141
       0     2643        M 0x80000764 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2644        M 0x80000768 addi    a1, a1, 8              #; a1  = 144, (wrb) a1  <-- 152
       0     2645        M 0x8000076c addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                         M                                           #; (f:fpu) ft1  <-- 59.679
       0     2646        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 152, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 59.679 ~~> Doub[0x00100180]
       0     2647        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 19, a5  = 0xcccccccd
       0     2650        M                                           #; (acc) s0  <-- 0x00445413
       0     2651        M 0x80000748 srli    s0, s0, 4              #; s0  = 15, (wrb) s0  <-- 0
       0     2652        M 0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
       0     2655        M                                           #; (acc) s0  <-- 0x40870433
       0     2656        M 0x80000750 sub     s0, a4, s0             #; a4  = 20, s0  = 0, (wrb) s0  <-- 20
       0     2658        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 20
       0     2659        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 152, (wrb) s0  <-- 0x00100188
                         M                                           #; (f:fpu) ft1  <-- 20.0
       0     2660        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 3.141
       0     2661        M 0x80000764 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2662        M 0x80000768 addi    a1, a1, 8              #; a1  = 152, (wrb) a1  <-- 160
       0     2663        M 0x8000076c addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M                                           #; (f:fpu) ft1  <-- 62.82
       0     2664        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 160, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 62.82 ~~> Doub[0x00100188]
       0     2665        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 20, a5  = 0xcccccccd
       0     2668        M                                           #; (acc) s0  <-- 0x00445413
       0     2669        M 0x80000748 srli    s0, s0, 4              #; s0  = 16, (wrb) s0  <-- 1
       0     2670        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2673        M                                           #; (acc) s0  <-- 0x40870433
       0     2674        M 0x80000750 sub     s0, a4, s0             #; a4  = 21, s0  = 20, (wrb) s0  <-- 1
       0     2676        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 1
       0     2677        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 160, (wrb) s0  <-- 0x00100190
                         M                                           #; (f:fpu) ft1  <-- 1.0
       0     2678        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
       0     2679        M 0x80000764 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2680        M 0x80000768 addi    a1, a1, 8              #; a1  = 160, (wrb) a1  <-- 168
       0     2681        M 0x8000076c addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                         M                                           #; (f:fpu) ft1  <-- 3.141
       0     2682        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 168, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 3.141 ~~> Doub[0x00100190]
       0     2683        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 21, a5  = 0xcccccccd
       0     2686        M                                           #; (acc) s0  <-- 0x00445413
       0     2687        M 0x80000748 srli    s0, s0, 4              #; s0  = 16, (wrb) s0  <-- 1
       0     2688        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2691        M                                           #; (acc) s0  <-- 0x40870433
       0     2692        M 0x80000750 sub     s0, a4, s0             #; a4  = 22, s0  = 20, (wrb) s0  <-- 2
       0     2694        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 2
       0     2695        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 168, (wrb) s0  <-- 0x00100198
                         M                                           #; (f:fpu) ft1  <-- 2.0
       0     2696        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
       0     2697        M 0x80000764 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2698        M 0x80000768 addi    a1, a1, 8              #; a1  = 168, (wrb) a1  <-- 176
       0     2699        M 0x8000076c addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M                                           #; (f:fpu) ft1  <-- 6.282
       0     2700        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 176, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 6.282 ~~> Doub[0x00100198]
       0     2701        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 22, a5  = 0xcccccccd
       0     2704        M                                           #; (acc) s0  <-- 0x00445413
       0     2705        M 0x80000748 srli    s0, s0, 4              #; s0  = 17, (wrb) s0  <-- 1
       0     2706        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2709        M                                           #; (acc) s0  <-- 0x40870433
       0     2710        M 0x80000750 sub     s0, a4, s0             #; a4  = 23, s0  = 20, (wrb) s0  <-- 3
       0     2712        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 3
       0     2713        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 176, (wrb) s0  <-- 0x001001a0
                         M                                           #; (f:fpu) ft1  <-- 3.0
       0     2714        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
       0     2715        M 0x80000764 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2716        M 0x80000768 addi    a1, a1, 8              #; a1  = 176, (wrb) a1  <-- 184
       0     2717        M 0x8000076c addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                         M                                           #; (f:fpu) ft1  <-- 9.423
       0     2718        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 184, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 9.423 ~~> Doub[0x001001a0]
       0     2719        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 23, a5  = 0xcccccccd
       0     2722        M                                           #; (acc) s0  <-- 0x00445413
       0     2723        M 0x80000748 srli    s0, s0, 4              #; s0  = 18, (wrb) s0  <-- 1
       0     2724        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2727        M                                           #; (acc) s0  <-- 0x40870433
       0     2728        M 0x80000750 sub     s0, a4, s0             #; a4  = 24, s0  = 20, (wrb) s0  <-- 4
       0     2730        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 4
       0     2731        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 184, (wrb) s0  <-- 0x001001a8
                         M                                           #; (f:fpu) ft1  <-- 4.0
       0     2732        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
       0     2733        M 0x80000764 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2734        M 0x80000768 addi    a1, a1, 8              #; a1  = 184, (wrb) a1  <-- 192
       0     2735        M 0x8000076c addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M                                           #; (f:fpu) ft1  <-- 12.564
       0     2736        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 192, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 12.564 ~~> Doub[0x001001a8]
       0     2737        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 24, a5  = 0xcccccccd
       0     2740        M                                           #; (acc) s0  <-- 0x00445413
       0     2741        M 0x80000748 srli    s0, s0, 4              #; s0  = 19, (wrb) s0  <-- 1
       0     2742        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2745        M                                           #; (acc) s0  <-- 0x40870433
       0     2746        M 0x80000750 sub     s0, a4, s0             #; a4  = 25, s0  = 20, (wrb) s0  <-- 5
       0     2748        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 5
       0     2749        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 192, (wrb) s0  <-- 0x001001b0
                         M                                           #; (f:fpu) ft1  <-- 5.0
       0     2750        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
       0     2751        M 0x80000764 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2752        M 0x80000768 addi    a1, a1, 8              #; a1  = 192, (wrb) a1  <-- 200
       0     2753        M 0x8000076c addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
                         M                                           #; (f:fpu) ft1  <-- 15.705
       0     2754        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 200, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 15.705 ~~> Doub[0x001001b0]
       0     2755        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 25, a5  = 0xcccccccd
       0     2758        M                                           #; (acc) s0  <-- 0x00445413
       0     2759        M 0x80000748 srli    s0, s0, 4              #; s0  = 20, (wrb) s0  <-- 1
       0     2760        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2763        M                                           #; (acc) s0  <-- 0x40870433
       0     2764        M 0x80000750 sub     s0, a4, s0             #; a4  = 26, s0  = 20, (wrb) s0  <-- 6
       0     2766        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 6
       0     2767        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 200, (wrb) s0  <-- 0x001001b8
                         M                                           #; (f:fpu) ft1  <-- 6.0
       0     2768        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
       0     2769        M 0x80000764 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2770        M 0x80000768 addi    a1, a1, 8              #; a1  = 200, (wrb) a1  <-- 208
       0     2771        M 0x8000076c addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
                         M                                           #; (f:fpu) ft1  <-- 18.846
       0     2772        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 208, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 18.846 ~~> Doub[0x001001b8]
       0     2773        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 26, a5  = 0xcccccccd
       0     2776        M                                           #; (acc) s0  <-- 0x00445413
       0     2777        M 0x80000748 srli    s0, s0, 4              #; s0  = 20, (wrb) s0  <-- 1
       0     2778        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2781        M                                           #; (acc) s0  <-- 0x40870433
       0     2782        M 0x80000750 sub     s0, a4, s0             #; a4  = 27, s0  = 20, (wrb) s0  <-- 7
       0     2784        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 7
       0     2785        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 208, (wrb) s0  <-- 0x001001c0
                         M                                           #; (f:fpu) ft1  <-- 7.0
       0     2786        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
       0     2787        M 0x80000764 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2788        M 0x80000768 addi    a1, a1, 8              #; a1  = 208, (wrb) a1  <-- 216
       0     2789        M 0x8000076c addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
                         M                                           #; (f:fpu) ft1  <-- 21.9870000
       0     2790        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 216, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 21.9870000 ~~> Doub[0x001001c0]
       0     2791        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 27, a5  = 0xcccccccd
       0     2794        M                                           #; (acc) s0  <-- 0x00445413
       0     2795        M 0x80000748 srli    s0, s0, 4              #; s0  = 21, (wrb) s0  <-- 1
       0     2796        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2799        M                                           #; (acc) s0  <-- 0x40870433
       0     2800        M 0x80000750 sub     s0, a4, s0             #; a4  = 28, s0  = 20, (wrb) s0  <-- 8
       0     2802        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 8
       0     2803        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 216, (wrb) s0  <-- 0x001001c8
                         M                                           #; (f:fpu) ft1  <-- 8.0
       0     2804        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
       0     2805        M 0x80000764 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2806        M 0x80000768 addi    a1, a1, 8              #; a1  = 216, (wrb) a1  <-- 224
       0     2807        M 0x8000076c addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
                         M                                           #; (f:fpu) ft1  <-- 25.128
       0     2808        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 224, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 25.128 ~~> Doub[0x001001c8]
       0     2809        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 28, a5  = 0xcccccccd
       0     2812        M                                           #; (acc) s0  <-- 0x00445413
       0     2813        M 0x80000748 srli    s0, s0, 4              #; s0  = 22, (wrb) s0  <-- 1
       0     2814        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2817        M                                           #; (acc) s0  <-- 0x40870433
       0     2818        M 0x80000750 sub     s0, a4, s0             #; a4  = 29, s0  = 20, (wrb) s0  <-- 9
       0     2820        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 9
       0     2821        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 224, (wrb) s0  <-- 0x001001d0
                         M                                           #; (f:fpu) ft1  <-- 9.0
       0     2822        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
       0     2823        M 0x80000764 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2824        M 0x80000768 addi    a1, a1, 8              #; a1  = 224, (wrb) a1  <-- 232
       0     2825        M 0x8000076c addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
                         M                                           #; (f:fpu) ft1  <-- 28.269
       0     2826        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 232, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 28.269 ~~> Doub[0x001001d0]
       0     2827        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 29, a5  = 0xcccccccd
       0     2830        M                                           #; (acc) s0  <-- 0x00445413
       0     2831        M 0x80000748 srli    s0, s0, 4              #; s0  = 23, (wrb) s0  <-- 1
       0     2832        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2835        M                                           #; (acc) s0  <-- 0x40870433
       0     2836        M 0x80000750 sub     s0, a4, s0             #; a4  = 30, s0  = 20, (wrb) s0  <-- 10
       0     2838        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 10
       0     2839        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 232, (wrb) s0  <-- 0x001001d8
                         M                                           #; (f:fpu) ft1  <-- 10.0
       0     2840        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
       0     2841        M 0x80000764 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2842        M 0x80000768 addi    a1, a1, 8              #; a1  = 232, (wrb) a1  <-- 240
       0     2843        M 0x8000076c addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
                         M                                           #; (f:fpu) ft1  <-- 31.41
       0     2844        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 240, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 31.41 ~~> Doub[0x001001d8]
       0     2845        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 30, a5  = 0xcccccccd
       0     2848        M                                           #; (acc) s0  <-- 0x00445413
       0     2849        M 0x80000748 srli    s0, s0, 4              #; s0  = 24, (wrb) s0  <-- 1
       0     2850        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2853        M                                           #; (acc) s0  <-- 0x40870433
       0     2854        M 0x80000750 sub     s0, a4, s0             #; a4  = 31, s0  = 20, (wrb) s0  <-- 11
       0     2856        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 11
       0     2857        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 240, (wrb) s0  <-- 0x001001e0
                         M                                           #; (f:fpu) ft1  <-- 11.0
       0     2858        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 3.141
       0     2859        M 0x80000764 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
       0     2860        M 0x80000768 addi    a1, a1, 8              #; a1  = 240, (wrb) a1  <-- 248
       0     2861        M 0x8000076c addi    a4, a4, 1              #; a4  = 31, (wrb) a4  <-- 32
                         M                                           #; (f:fpu) ft1  <-- 34.551
       0     2862        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 248, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 34.551 ~~> Doub[0x001001e0]
       0     2863        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 31, a5  = 0xcccccccd
       0     2866        M                                           #; (acc) s0  <-- 0x00445413
       0     2867        M 0x80000748 srli    s0, s0, 4              #; s0  = 24, (wrb) s0  <-- 1
       0     2868        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2871        M                                           #; (acc) s0  <-- 0x40870433
       0     2872        M 0x80000750 sub     s0, a4, s0             #; a4  = 32, s0  = 20, (wrb) s0  <-- 12
       0     2874        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 12
       0     2875        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 248, (wrb) s0  <-- 0x001001e8
                         M                                           #; (f:fpu) ft1  <-- 12.0
       0     2876        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 3.141
       0     2877        M 0x80000764 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
       0     2878        M 0x80000768 addi    a1, a1, 8              #; a1  = 248, (wrb) a1  <-- 256
       0     2879        M 0x8000076c addi    a4, a4, 1              #; a4  = 32, (wrb) a4  <-- 33
                         M                                           #; (f:fpu) ft1  <-- 37.692
       0     2880        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 256, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 37.692 ~~> Doub[0x001001e8]
       0     2881        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 32, a5  = 0xcccccccd
       0     2884        M                                           #; (acc) s0  <-- 0x00445413
       0     2885        M 0x80000748 srli    s0, s0, 4              #; s0  = 25, (wrb) s0  <-- 1
       0     2886        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2889        M                                           #; (acc) s0  <-- 0x40870433
       0     2890        M 0x80000750 sub     s0, a4, s0             #; a4  = 33, s0  = 20, (wrb) s0  <-- 13
       0     2892        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 13
       0     2893        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 256, (wrb) s0  <-- 0x001001f0
                         M                                           #; (f:fpu) ft1  <-- 13.0
       0     2894        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 3.141
       0     2895        M 0x80000764 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
       0     2896        M 0x80000768 addi    a1, a1, 8              #; a1  = 256, (wrb) a1  <-- 264
       0     2897        M 0x8000076c addi    a4, a4, 1              #; a4  = 33, (wrb) a4  <-- 34
                         M                                           #; (f:fpu) ft1  <-- 40.833
       0     2898        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 264, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 40.833 ~~> Doub[0x001001f0]
       0     2899        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 33, a5  = 0xcccccccd
       0     2902        M                                           #; (acc) s0  <-- 0x00445413
       0     2903        M 0x80000748 srli    s0, s0, 4              #; s0  = 26, (wrb) s0  <-- 1
       0     2904        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2907        M                                           #; (acc) s0  <-- 0x40870433
       0     2908        M 0x80000750 sub     s0, a4, s0             #; a4  = 34, s0  = 20, (wrb) s0  <-- 14
       0     2910        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 14
       0     2911        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 264, (wrb) s0  <-- 0x001001f8
                         M                                           #; (f:fpu) ft1  <-- 14.0
       0     2912        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 3.141
       0     2913        M 0x80000764 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
       0     2914        M 0x80000768 addi    a1, a1, 8              #; a1  = 264, (wrb) a1  <-- 272
       0     2915        M 0x8000076c addi    a4, a4, 1              #; a4  = 34, (wrb) a4  <-- 35
                         M                                           #; (f:fpu) ft1  <-- 43.9740000
       0     2916        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 272, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 43.9740000 ~~> Doub[0x001001f8]
       0     2917        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 34, a5  = 0xcccccccd
       0     2920        M                                           #; (acc) s0  <-- 0x00445413
       0     2921        M 0x80000748 srli    s0, s0, 4              #; s0  = 27, (wrb) s0  <-- 1
       0     2922        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2925        M                                           #; (acc) s0  <-- 0x40870433
       0     2926        M 0x80000750 sub     s0, a4, s0             #; a4  = 35, s0  = 20, (wrb) s0  <-- 15
       0     2928        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 15
       0     2929        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 272, (wrb) s0  <-- 0x00100200
                         M                                           #; (f:fpu) ft1  <-- 15.0
       0     2930        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 3.141
       0     2931        M 0x80000764 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
       0     2932        M 0x80000768 addi    a1, a1, 8              #; a1  = 272, (wrb) a1  <-- 280
       0     2933        M 0x8000076c addi    a4, a4, 1              #; a4  = 35, (wrb) a4  <-- 36
                         M                                           #; (f:fpu) ft1  <-- 47.115
       0     2934        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 280, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 47.115 ~~> Doub[0x00100200]
       0     2935        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 35, a5  = 0xcccccccd
       0     2938        M                                           #; (acc) s0  <-- 0x00445413
       0     2939        M 0x80000748 srli    s0, s0, 4              #; s0  = 28, (wrb) s0  <-- 1
       0     2940        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2943        M                                           #; (acc) s0  <-- 0x40870433
       0     2944        M 0x80000750 sub     s0, a4, s0             #; a4  = 36, s0  = 20, (wrb) s0  <-- 16
       0     2946        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 16
       0     2947        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 280, (wrb) s0  <-- 0x00100208
                         M                                           #; (f:fpu) ft1  <-- 16.0
       0     2948        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 3.141
       0     2949        M 0x80000764 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
       0     2950        M 0x80000768 addi    a1, a1, 8              #; a1  = 280, (wrb) a1  <-- 288
       0     2951        M 0x8000076c addi    a4, a4, 1              #; a4  = 36, (wrb) a4  <-- 37
                         M                                           #; (f:fpu) ft1  <-- 50.256
       0     2952        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 288, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 50.256 ~~> Doub[0x00100208]
       0     2953        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 36, a5  = 0xcccccccd
       0     2956        M                                           #; (acc) s0  <-- 0x00445413
       0     2957        M 0x80000748 srli    s0, s0, 4              #; s0  = 28, (wrb) s0  <-- 1
       0     2958        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2961        M                                           #; (acc) s0  <-- 0x40870433
       0     2962        M 0x80000750 sub     s0, a4, s0             #; a4  = 37, s0  = 20, (wrb) s0  <-- 17
       0     2964        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 17
       0     2965        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 288, (wrb) s0  <-- 0x00100210
                         M                                           #; (f:fpu) ft1  <-- 17.0
       0     2966        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 3.141
       0     2967        M 0x80000764 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
       0     2968        M 0x80000768 addi    a1, a1, 8              #; a1  = 288, (wrb) a1  <-- 296
       0     2969        M 0x8000076c addi    a4, a4, 1              #; a4  = 37, (wrb) a4  <-- 38
                         M                                           #; (f:fpu) ft1  <-- 53.397
       0     2970        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 296, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 53.397 ~~> Doub[0x00100210]
       0     2971        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 37, a5  = 0xcccccccd
       0     2974        M                                           #; (acc) s0  <-- 0x00445413
       0     2975        M 0x80000748 srli    s0, s0, 4              #; s0  = 29, (wrb) s0  <-- 1
       0     2976        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2979        M                                           #; (acc) s0  <-- 0x40870433
       0     2980        M 0x80000750 sub     s0, a4, s0             #; a4  = 38, s0  = 20, (wrb) s0  <-- 18
       0     2982        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 18
       0     2983        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 296, (wrb) s0  <-- 0x00100218
                         M                                           #; (f:fpu) ft1  <-- 18.0
       0     2984        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 3.141
       0     2985        M 0x80000764 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
       0     2986        M 0x80000768 addi    a1, a1, 8              #; a1  = 296, (wrb) a1  <-- 304
       0     2987        M 0x8000076c addi    a4, a4, 1              #; a4  = 38, (wrb) a4  <-- 39
                         M                                           #; (f:fpu) ft1  <-- 56.538
       0     2988        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 304, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 56.538 ~~> Doub[0x00100218]
       0     2989        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 38, a5  = 0xcccccccd
       0     2992        M                                           #; (acc) s0  <-- 0x00445413
       0     2993        M 0x80000748 srli    s0, s0, 4              #; s0  = 30, (wrb) s0  <-- 1
       0     2994        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     2997        M                                           #; (acc) s0  <-- 0x40870433
       0     2998        M 0x80000750 sub     s0, a4, s0             #; a4  = 39, s0  = 20, (wrb) s0  <-- 19
       0     3000        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 19
       0     3001        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 304, (wrb) s0  <-- 0x00100220
                         M                                           #; (f:fpu) ft1  <-- 19.0
       0     3002        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 3.141
       0     3003        M 0x80000764 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
       0     3004        M 0x80000768 addi    a1, a1, 8              #; a1  = 304, (wrb) a1  <-- 312
       0     3005        M 0x8000076c addi    a4, a4, 1              #; a4  = 39, (wrb) a4  <-- 40
                         M                                           #; (f:fpu) ft1  <-- 59.679
       0     3006        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 312, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 59.679 ~~> Doub[0x00100220]
       0     3007        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 39, a5  = 0xcccccccd
       0     3010        M                                           #; (acc) s0  <-- 0x00445413
       0     3011        M 0x80000748 srli    s0, s0, 4              #; s0  = 31, (wrb) s0  <-- 1
       0     3012        M 0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
       0     3015        M                                           #; (acc) s0  <-- 0x40870433
       0     3016        M 0x80000750 sub     s0, a4, s0             #; a4  = 40, s0  = 20, (wrb) s0  <-- 20
       0     3018        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 20
       0     3019        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 312, (wrb) s0  <-- 0x00100228
                         M                                           #; (f:fpu) ft1  <-- 20.0
       0     3020        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 3.141
       0     3021        M 0x80000764 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
       0     3022        M 0x80000768 addi    a1, a1, 8              #; a1  = 312, (wrb) a1  <-- 320
       0     3023        M 0x8000076c addi    a4, a4, 1              #; a4  = 40, (wrb) a4  <-- 41
                         M                                           #; (f:fpu) ft1  <-- 62.82
       0     3024        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 320, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 62.82 ~~> Doub[0x00100228]
       0     3025        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 40, a5  = 0xcccccccd
       0     3028        M                                           #; (acc) s0  <-- 0x00445413
       0     3029        M 0x80000748 srli    s0, s0, 4              #; s0  = 32, (wrb) s0  <-- 2
       0     3030        M 0x8000074c mul     s0, s0, a7             #; s0  = 2, a7  = 20
       0     3033        M                                           #; (acc) s0  <-- 0x40870433
       0     3034        M 0x80000750 sub     s0, a4, s0             #; a4  = 41, s0  = 40, (wrb) s0  <-- 1
       0     3036        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 1
       0     3037        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 320, (wrb) s0  <-- 0x00100230
                         M                                           #; (f:fpu) ft1  <-- 1.0
       0     3038        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
       0     3039        M 0x80000764 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
       0     3040        M 0x80000768 addi    a1, a1, 8              #; a1  = 320, (wrb) a1  <-- 328
       0     3041        M 0x8000076c addi    a4, a4, 1              #; a4  = 41, (wrb) a4  <-- 42
                         M                                           #; (f:fpu) ft1  <-- 3.141
       0     3042        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 328, a2  = 336, taken, goto 0x80000744
                         M 0x80000760 fsd     ft1, 0(s0)             #; 3.141 ~~> Doub[0x00100230]
       0     3043        M 0x80000744 mulhu   s0, a3, a5             #; a3  = 41, a5  = 0xcccccccd
       0     3046        M                                           #; (acc) s0  <-- 0x00445413
       0     3047        M 0x80000748 srli    s0, s0, 4              #; s0  = 32, (wrb) s0  <-- 2
       0     3048        M 0x8000074c mul     s0, s0, a7             #; s0  = 2, a7  = 20
       0     3051        M                                           #; (acc) s0  <-- 0x40870433
       0     3052        M 0x80000750 sub     s0, a4, s0             #; a4  = 42, s0  = 40, (wrb) s0  <-- 2
       0     3054        M 0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 2
       0     3055        M 0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 328, (wrb) s0  <-- 0x00100238
                         M                                           #; (f:fpu) ft1  <-- 2.0
       0     3056        M 0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
       0     3057        M 0x80000764 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
       0     3058        M 0x80000768 addi    a1, a1, 8              #; a1  = 328, (wrb) a1  <-- 336
       0     3059        M 0x8000076c addi    a4, a4, 1              #; a4  = 42, (wrb) a4  <-- 43
                         M                                           #; (f:fpu) ft1  <-- 6.282
       0     3060        M 0x80000770 bne     a1, a2, pc - 44        #; a1  = 336, a2  = 336, not taken
                         M 0x80000760 fsd     ft1, 0(s0)             #; 6.282 ~~> Doub[0x00100238]
       0     3061        M 0x80000774 li      t1, 0                  #; (wrb) t1  <-- 0
       0     3062        M 0x80000778 li      t2, 0                  #; (wrb) t2  <-- 0
       0     3063        M 0x8000077c addi    t4, a6, 168            #; a6  = 0x001000f0, (wrb) t4  <-- 0x00100198
       0     3073        M 0x80000780 li      a6, 48                 #; (wrb) a6  <-- 48
       0     3074        M 0x80000784 li      t3, 56                 #; (wrb) t3  <-- 56
       0     3075        M 0x80000788 li      a7, 5                  #; (wrb) a7  <-- 5
       0     3076        M 0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
       0     3085        M 0x80000790 mul     a2, t2, a6             #; t2  = 0, a6  = 48
       0     3088        M                                           #; (acc) a3  <-- 0x00c286b3
       0     3089        M 0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 0, (wrb) a3  <-- 0x00100000
       0     3090        M 0x80000798 ori     a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
       0     3091        M 0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 8, (wrb) t5  <-- 0x00100008
       0     3097        M 0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100000, (wrb) t6  <-- 0x00100010
       0     3098        M 0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100000, (wrb) a2  <-- 0x00100018
       0     3099        M 0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100000, (wrb) a4  <-- 0x00100020
       0     3100        M 0x800007ac addi    a5, a3, 40             #; a3  = 0x00100000, (wrb) a5  <-- 0x00100028
       0     3109        M 0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 0, (wrb) s0  <-- 0x00100240
       0     3111        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
       0     3112        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3113        M                                           #; (f:lsu) ft0  <-- 3.141
       0     3114        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0]
       0     3115        M                                           #; (f:lsu) ft1  <-- 3.141
       0     3123        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008]
       0     3124        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 6.282
       0     3125        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 3.141, (f:lsu) ft3  <-- 25.128
       0     3128        M                                           #; (f:fpu) ft0  <-- 9.865881
       0     3129        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 6.282, ft0  = 9.865881
       0     3132        M                                           #; (f:fpu) ft0  <-- 167.7199770
       0     3135        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3136        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 9.423
       0     3137        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:lsu) ft2  <-- 47.115
       0     3138        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft3  <-- 12.564
       0     3139        M                                           #; (f:lsu) ft4  <-- 6.282
       0     3147        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020]
       0     3148        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 15.705
       0     3149        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft6  <-- 28.269
       0     3150        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft7  <-- 18.846
       0     3151        M                                           #; (f:lsu) fa0  <-- 50.256
       0     3159        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 9.423, ft0  = 167.7199770
       0     3162        M                                           #; (f:fpu) ft0  <-- 611.6846220
       0     3163        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 12.564, ft0  = 611.6846220
       0     3166        M                                           #; (f:fpu) ft0  <-- 690.6116700
       0     3167        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 15.705, ft0  = 690.6116700
       0     3169        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 0, (wrb) s1  <-- 0x00100240
       0     3170        M 0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M                                           #; (f:fpu) ft0  <-- 1134.5763150
       0     3171        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 18.846, ft0  = 1134.5763150
       0     3172        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
       0     3174        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
                         M                                           #; (f:fpu) ft0  <-- 2081.7008910
       0     3175        M 0x80000808 fsd     ft0, 0(s1)             #; 2081.7008910 ~~> Doub[0x00100240]
       0     3176        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3177        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 3.141
       0     3178        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 6.282
       0     3179        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 6.282
       0     3180        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 3.141, (f:lsu) ft3  <-- 28.269
       0     3183        M                                           #; (f:fpu) ft0  <-- 19.7317620
       0     3184        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 6.282, ft0  = 19.7317620
       0     3185        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3186        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 9.423
       0     3187        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 197.3176200
       0     3188        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
       0     3189        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
       0     3190        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
       0     3191        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
       0     3192        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 8, (wrb) s1  <-- 0x00100248
                         M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
       0     3193        M 0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
                         M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 9.423, ft0  = 197.3176200, (f:lsu) ft7  <-- 18.846
       0     3194        M                                           #; (f:lsu) fa0  <-- 53.397
       0     3195        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
       0     3196        M                                           #; (f:fpu) ft0  <-- 670.8799080
       0     3197        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                         M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 12.564, ft0  = 670.8799080
       0     3200        M                                           #; (f:fpu) ft0  <-- 789.2704800
       0     3201        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 15.705, ft0  = 789.2704800
       0     3204        M                                           #; (f:fpu) ft0  <-- 1282.5645300
       0     3205        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 18.846, ft0  = 1282.5645300
       0     3208        M                                           #; (f:fpu) ft0  <-- 2288.8843920
       0     3209        M 0x80000808 fsd     ft0, 0(s1)             #; 2288.8843920 ~~> Doub[0x00100248]
       0     3210        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3211        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 3.141
       0     3212        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 9.423
       0     3213        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 6.282
       0     3214        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 3.141, (f:lsu) ft3  <-- 31.41
       0     3215        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 16, (wrb) s1  <-- 0x00100250
       0     3216        M 0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
       0     3217        M                                           #; (f:fpu) ft0  <-- 29.5976430
       0     3218        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
                         M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 6.282, ft0  = 29.5976430
       0     3219        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3220        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                         M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 9.423
       0     3221        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 226.9152630
       0     3222        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
       0     3223        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
       0     3224        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
       0     3225        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
       0     3226        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
       0     3227        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 9.423, ft0  = 226.9152630, (f:lsu) ft7  <-- 18.846
       0     3228        M                                           #; (f:lsu) fa0  <-- 56.538
       0     3230        M                                           #; (f:fpu) ft0  <-- 730.0751940
       0     3231        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 12.564, ft0  = 730.0751940
       0     3234        M                                           #; (f:fpu) ft0  <-- 887.9292900
       0     3235        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 15.705, ft0  = 887.9292900
       0     3238        M                                           #; (f:fpu) ft0  <-- 1430.5527450
       0     3239        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 18.846, ft0  = 1430.5527450
       0     3242        M                                           #; (f:fpu) ft0  <-- 2496.0678930
       0     3243        M 0x80000808 fsd     ft0, 0(s1)             #; 2496.0678930 ~~> Doub[0x00100250]
       0     3244        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3245        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 3.141
       0     3246        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 24, (wrb) s1  <-- 0x00100258
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 12.564
       0     3247        M 0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 6.282
       0     3248        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 3.141, (f:lsu) ft3  <-- 34.551
       0     3249        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
       0     3251        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:fpu) ft0  <-- 39.4635240
       0     3252        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 6.282, ft0  = 39.4635240
       0     3253        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3254        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 9.423
       0     3255        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 256.5129060
       0     3256        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
       0     3257        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
       0     3258        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
       0     3259        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
       0     3260        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
       0     3261        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 9.423, ft0  = 256.5129060, (f:lsu) ft7  <-- 18.846
       0     3262        M                                           #; (f:lsu) fa0  <-- 59.679
       0     3264        M                                           #; (f:fpu) ft0  <-- 789.2704800
       0     3265        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 12.564, ft0  = 789.2704800
       0     3268        M                                           #; (f:fpu) ft0  <-- 986.5881000
       0     3269        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 15.705, ft0  = 986.5881000
       0     3272        M                                           #; (f:fpu) ft0  <-- 1578.5409600
       0     3273        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 18.846, ft0  = 1578.5409600
       0     3276        M                                           #; (f:fpu) ft0  <-- 2703.2513940
       0     3277        M 0x80000808 fsd     ft0, 0(s1)             #; 2703.2513940 ~~> Doub[0x00100258]
       0     3278        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3279        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 3.141
       0     3280        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 32, (wrb) s1  <-- 0x00100260
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 15.705
       0     3281        M 0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 6.282
       0     3282        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 3.141, (f:lsu) ft3  <-- 37.692
       0     3283        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
       0     3285        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:fpu) ft0  <-- 49.3294050
       0     3286        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 6.282, ft0  = 49.3294050
       0     3287        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3288        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 9.423
       0     3289        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 286.1105490
       0     3290        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
       0     3291        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
       0     3292        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
       0     3293        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
       0     3294        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
       0     3295        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 9.423, ft0  = 286.1105490, (f:lsu) ft7  <-- 18.846
       0     3296        M                                           #; (f:lsu) fa0  <-- 62.82
       0     3298        M                                           #; (f:fpu) ft0  <-- 848.4657660
       0     3299        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 12.564, ft0  = 848.4657660
       0     3302        M                                           #; (f:fpu) ft0  <-- 1085.2469100
       0     3303        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 15.705, ft0  = 1085.2469100
       0     3306        M                                           #; (f:fpu) ft0  <-- 1726.5291750
       0     3307        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 18.846, ft0  = 1726.5291750
       0     3310        M                                           #; (f:fpu) ft0  <-- 2910.4348950
       0     3311        M 0x80000808 fsd     ft0, 0(s1)             #; 2910.4348950 ~~> Doub[0x00100260]
       0     3312        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3313        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 3.141
       0     3314        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 40, (wrb) s1  <-- 0x00100268
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 18.846
       0     3315        M 0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 6.282
       0     3316        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 3.141, (f:lsu) ft3  <-- 40.833
       0     3317        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
       0     3319        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:fpu) ft0  <-- 59.1952860
       0     3320        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 6.282, ft0  = 59.1952860
       0     3321        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3322        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 9.423
       0     3323        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 315.7081920
       0     3324        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
       0     3325        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
       0     3326        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
       0     3327        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
       0     3328        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
       0     3329        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 9.423, ft0  = 315.7081920, (f:lsu) ft7  <-- 18.846
       0     3330        M                                           #; (f:lsu) fa0  <-- 3.141
       0     3332        M                                           #; (f:fpu) ft0  <-- 907.6610520
       0     3333        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 12.564, ft0  = 907.6610520
       0     3336        M                                           #; (f:fpu) ft0  <-- 1183.9057200
       0     3337        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 15.705, ft0  = 1183.9057200
       0     3340        M                                           #; (f:fpu) ft0  <-- 1874.5173900
       0     3341        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 18.846, ft0  = 1874.5173900
       0     3344        M                                           #; (f:fpu) ft0  <-- 1933.7126760
       0     3345        M 0x80000808 fsd     ft0, 0(s1)             #; 1933.7126760 ~~> Doub[0x00100268]
       0     3346        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     3347        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 3.141
       0     3348        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 48, (wrb) s1  <-- 0x00100270
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 21.9870000
       0     3349        M 0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 6.282
       0     3350        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 3.141, (f:lsu) ft3  <-- 43.9740000
       0     3351        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
       0     3353        M                                           #; (f:fpu) ft0  <-- 69.0611670
       0     3354        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 6.282, ft0  = 69.0611670
       0     3355        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
       0     3356        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 9.423
       0     3357        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 345.3058350
       0     3358        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
       0     3359        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
       0     3360        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
       0     3361        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
       0     3362        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
       0     3363        M 0x80000810 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
                         M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 9.423, ft0  = 345.3058350, (f:lsu) ft7  <-- 18.846
       0     3364        M 0x80000814 addi    t1, t1, 56             #; t1  = 0, (wrb) t1  <-- 56
                         M                                           #; (f:lsu) fa0  <-- 6.282
       0     3365        M 0x80000818 bne     t2, a7, pc - 140       #; t2  = 1, a7  = 5, taken, goto 0x8000078c
       0     3366        M 0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 374.9034780
       0     3367        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 12.564, ft0  = 374.9034780
       0     3369        M 0x80000790 mul     a2, t2, a6             #; t2  = 1, a6  = 48
       0     3370        M                                           #; (f:fpu) ft0  <-- 690.6116700
       0     3371        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 15.705, ft0  = 690.6116700
       0     3372        M                                           #; (acc) a3  <-- 0x00c286b3
       0     3373        M 0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 48, (wrb) a3  <-- 0x00100030
       0     3374        M 0x80000798 ori     a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
                         M                                           #; (f:fpu) ft0  <-- 1430.5527450
       0     3375        M 0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 56, (wrb) t5  <-- 0x00100038
                         M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 18.846, ft0  = 1430.5527450
       0     3376        M 0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100030, (wrb) t6  <-- 0x00100040
       0     3377        M 0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100030, (wrb) a2  <-- 0x00100048
       0     3378        M 0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100030, (wrb) a4  <-- 0x00100050
                         M                                           #; (f:fpu) ft0  <-- 1548.9433170
       0     3379        M 0x800007ac addi    a5, a3, 40             #; a3  = 0x00100030, (wrb) a5  <-- 0x00100058
                         M 0x80000808 fsd     ft0, 0(s1)             #; 1548.9433170 ~~> Doub[0x00100270]
       0     3380        M 0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 56, (wrb) s0  <-- 0x00100278
       0     3382        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
       0     3383        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3384        M                                           #; (f:lsu) ft0  <-- 21.9870000
       0     3385        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0]
       0     3386        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 3.141
       0     3387        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 25.128
       0     3388        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 21.9870000, (f:lsu) ft3  <-- 25.128
       0     3391        M                                           #; (f:fpu) ft0  <-- 69.0611670
       0     3392        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 25.128, ft0  = 69.0611670
       0     3393        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3394        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 28.269
       0     3395        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 700.4775510
       0     3396        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
       0     3397        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3398        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
       0     3399        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3400        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 0, (wrb) s1  <-- 0x00100278
                         M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
       0     3401        M 0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 28.269, ft0  = 700.4775510, (f:lsu) ft7  <-- 37.692
       0     3402        M                                           #; (f:lsu) fa0  <-- 50.256
       0     3403        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
       0     3404        M                                           #; (f:fpu) ft0  <-- 2032.3714860
       0     3405        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
                         M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 31.41, ft0  = 2032.3714860
       0     3408        M                                           #; (f:fpu) ft0  <-- 2229.6891060
       0     3409        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 34.551, ft0  = 2229.6891060
       0     3412        M                                           #; (f:fpu) ft0  <-- 3206.4113250
       0     3413        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 37.692, ft0  = 3206.4113250
       0     3416        M                                           #; (f:fpu) ft0  <-- 5100.6604770
       0     3417        M 0x80000808 fsd     ft0, 0(s1)             #; 5100.6604770 ~~> Doub[0x00100278]
       0     3418        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3419        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 21.9870000
       0     3420        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 6.282
       0     3421        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 25.128
       0     3422        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 21.9870000, (f:lsu) ft3  <-- 28.269
       0     3423        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 8, (wrb) s1  <-- 0x00100280
       0     3424        M 0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
       0     3425        M                                           #; (f:fpu) ft0  <-- 138.1223340
       0     3426        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
                         M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 25.128, ft0  = 138.1223340
       0     3427        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3428        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                         M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 28.269
       0     3429        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 848.4657660
       0     3430        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
       0     3431        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3432        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
       0     3433        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3434        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
       0     3435        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 28.269, ft0  = 848.4657660, (f:lsu) ft7  <-- 37.692
       0     3436        M                                           #; (f:lsu) fa0  <-- 53.397
       0     3438        M                                           #; (f:fpu) ft0  <-- 2269.1526300
       0     3439        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 31.41, ft0  = 2269.1526300
       0     3442        M                                           #; (f:fpu) ft0  <-- 2565.1290600
       0     3443        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 34.551, ft0  = 2565.1290600
       0     3446        M                                           #; (f:fpu) ft0  <-- 3650.3759700
       0     3447        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 37.692, ft0  = 3650.3759700
       0     3450        M                                           #; (f:fpu) ft0  <-- 5663.0156940
       0     3451        M 0x80000808 fsd     ft0, 0(s1)             #; 5663.0156940 ~~> Doub[0x00100280]
       0     3452        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3453        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 21.9870000
       0     3454        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 16, (wrb) s1  <-- 0x00100288
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 9.423
       0     3455        M 0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 25.128
       0     3456        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 21.9870000, (f:lsu) ft3  <-- 31.41
       0     3457        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
       0     3459        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:fpu) ft0  <-- 207.1835010
       0     3460        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 25.128, ft0  = 207.1835010
       0     3461        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3462        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 28.269
       0     3463        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 996.4539810
       0     3464        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
       0     3465        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3466        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
       0     3467        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3468        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
       0     3469        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 28.269, ft0  = 996.4539810, (f:lsu) ft7  <-- 37.692
       0     3470        M                                           #; (f:lsu) fa0  <-- 56.538
       0     3472        M                                           #; (f:fpu) ft0  <-- 2505.9337740
       0     3473        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 31.41, ft0  = 2505.9337740
       0     3476        M                                           #; (f:fpu) ft0  <-- 2900.5690140
       0     3477        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 34.551, ft0  = 2900.5690140
       0     3480        M                                           #; (f:fpu) ft0  <-- 4094.3406150
       0     3481        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 37.692, ft0  = 4094.3406150
       0     3484        M                                           #; (f:fpu) ft0  <-- 6225.3709110
       0     3485        M 0x80000808 fsd     ft0, 0(s1)             #; 6225.3709110 ~~> Doub[0x00100288]
       0     3486        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3487        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 21.9870000
       0     3488        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 24, (wrb) s1  <-- 0x00100290
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 12.564
       0     3489        M 0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 25.128
       0     3490        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 21.9870000, (f:lsu) ft3  <-- 34.551
       0     3491        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
       0     3493        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:fpu) ft0  <-- 276.2446680
       0     3494        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 25.128, ft0  = 276.2446680
       0     3495        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3496        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 28.269
       0     3497        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1144.4421960
       0     3498        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
       0     3499        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3500        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
       0     3501        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3502        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
       0     3503        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 28.269, ft0  = 1144.4421960, (f:lsu) ft7  <-- 37.692
       0     3504        M                                           #; (f:lsu) fa0  <-- 59.679
       0     3506        M                                           #; (f:fpu) ft0  <-- 2742.7149180
       0     3507        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 31.41, ft0  = 2742.7149180
       0     3510        M                                           #; (f:fpu) ft0  <-- 3236.0089680
       0     3511        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 34.551, ft0  = 3236.0089680
       0     3514        M                                           #; (f:fpu) ft0  <-- 4538.3052600
       0     3515        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 37.692, ft0  = 4538.3052600
       0     3518        M                                           #; (f:fpu) ft0  <-- 6787.7261280
       0     3519        M 0x80000808 fsd     ft0, 0(s1)             #; 6787.7261280 ~~> Doub[0x00100290]
       0     3520        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3521        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 21.9870000
       0     3522        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 32, (wrb) s1  <-- 0x00100298
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 15.705
       0     3523        M 0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 25.128
       0     3524        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 21.9870000, (f:lsu) ft3  <-- 37.692
       0     3525        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
       0     3527        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:fpu) ft0  <-- 345.3058350
       0     3528        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 25.128, ft0  = 345.3058350
       0     3529        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3530        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 28.269
       0     3531        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1292.4304110
       0     3532        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
       0     3533        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3534        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
       0     3535        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3536        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
       0     3537        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 28.269, ft0  = 1292.4304110, (f:lsu) ft7  <-- 37.692
       0     3538        M                                           #; (f:lsu) fa0  <-- 62.82
       0     3540        M                                           #; (f:fpu) ft0  <-- 2979.4960620
       0     3541        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 31.41, ft0  = 2979.4960620
       0     3544        M                                           #; (f:fpu) ft0  <-- 3571.4489220
       0     3545        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 34.551, ft0  = 3571.4489220
       0     3548        M                                           #; (f:fpu) ft0  <-- 4982.2699050
       0     3549        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 37.692, ft0  = 4982.2699050
       0     3552        M                                           #; (f:fpu) ft0  <-- 7350.0813450
       0     3553        M 0x80000808 fsd     ft0, 0(s1)             #; 7350.0813450 ~~> Doub[0x00100298]
       0     3554        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3555        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 21.9870000
       0     3556        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 40, (wrb) s1  <-- 0x001002a0
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 18.846
       0     3557        M 0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 25.128
       0     3558        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 21.9870000, (f:lsu) ft3  <-- 40.833
       0     3559        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
       0     3561        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:fpu) ft0  <-- 414.3670020
       0     3562        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 25.128, ft0  = 414.3670020
       0     3563        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3564        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 28.269
       0     3565        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1440.4186260
       0     3566        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
       0     3567        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3568        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
       0     3569        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3570        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
       0     3571        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 28.269, ft0  = 1440.4186260, (f:lsu) ft7  <-- 37.692
       0     3572        M                                           #; (f:lsu) fa0  <-- 3.141
       0     3574        M                                           #; (f:fpu) ft0  <-- 3216.2772060
       0     3575        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 31.41, ft0  = 3216.2772060
       0     3578        M                                           #; (f:fpu) ft0  <-- 3906.8888760
       0     3579        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 34.551, ft0  = 3906.8888760
       0     3582        M                                           #; (f:fpu) ft0  <-- 5426.2345500
       0     3583        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 37.692, ft0  = 5426.2345500
       0     3586        M                                           #; (f:fpu) ft0  <-- 5544.6251220
       0     3587        M 0x80000808 fsd     ft0, 0(s1)             #; 5544.6251220 ~~> Doub[0x001002a0]
       0     3588        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     3589        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 21.9870000
       0     3590        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 48, (wrb) s1  <-- 0x001002a8
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 21.9870000
       0     3591        M 0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 25.128
       0     3592        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 21.9870000, (f:lsu) ft3  <-- 43.9740000
       0     3593        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
       0     3595        M                                           #; (f:fpu) ft0  <-- 483.4281690
       0     3596        M 0x80000810 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
                         M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 25.128, ft0  = 483.4281690
       0     3597        M 0x80000814 addi    t1, t1, 56             #; t1  = 56, (wrb) t1  <-- 112
                         M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
       0     3598        M 0x80000818 bne     t2, a7, pc - 140       #; t2  = 2, a7  = 5, taken, goto 0x8000078c
                         M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 28.269
       0     3599        M 0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1588.4068410
       0     3600        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
       0     3601        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
       0     3602        M 0x80000790 mul     a2, t2, a6             #; t2  = 2, a6  = 48
                         M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
       0     3603        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
       0     3604        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
       0     3605        M                                           #; (acc) a3  <-- 0x00c286b3
                         M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 28.269, ft0  = 1588.4068410, (f:lsu) ft7  <-- 37.692
       0     3606        M 0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 96, (wrb) a3  <-- 0x00100060
                         M                                           #; (f:lsu) fa0  <-- 6.282
       0     3607        M 0x80000798 ori     a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
       0     3608        M 0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 104, (wrb) t5  <-- 0x00100068
                         M                                           #; (f:fpu) ft0  <-- 1677.1997700
       0     3609        M 0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100060, (wrb) t6  <-- 0x00100070
                         M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 31.41, ft0  = 1677.1997700
       0     3610        M 0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100060, (wrb) a2  <-- 0x00100078
       0     3611        M 0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100060, (wrb) a4  <-- 0x00100080
       0     3612        M 0x800007ac addi    a5, a3, 40             #; a3  = 0x00100060, (wrb) a5  <-- 0x00100088
                         M                                           #; (f:fpu) ft0  <-- 2466.4702500
       0     3613        M 0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 112, (wrb) s0  <-- 0x001002b0
                         M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 34.551, ft0  = 2466.4702500
       0     3615        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
       0     3616        M                                           #; (f:fpu) ft0  <-- 4094.3406150
       0     3617        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 37.692, ft0  = 4094.3406150
       0     3620        M                                           #; (f:fpu) ft0  <-- 4331.1217590
       0     3621        M 0x80000808 fsd     ft0, 0(s1)             #; 4331.1217590 ~~> Doub[0x001002a8]
       0     3622        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3623        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0], (f:lsu) ft0  <-- 40.833
       0     3624        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 3.141
       0     3625        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 43.9740000
       0     3626        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 40.833, (f:lsu) ft3  <-- 25.128
       0     3629        M                                           #; (f:fpu) ft0  <-- 128.2564530
       0     3630        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 43.9740000, ft0  = 128.2564530
       0     3631        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3632        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 47.115
       0     3633        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 0, (wrb) s1  <-- 0x001002b0
                         M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 1233.2351250
       0     3634        M 0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
       0     3635        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3636        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
                         M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
       0     3637        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3638        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
                         M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
       0     3639        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 47.115, ft0  = 1233.2351250, (f:lsu) ft7  <-- 56.538
       0     3640        M                                           #; (f:lsu) fa0  <-- 50.256
       0     3642        M                                           #; (f:fpu) ft0  <-- 3453.0583500
       0     3643        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 50.256, ft0  = 3453.0583500
       0     3646        M                                           #; (f:fpu) ft0  <-- 3768.7665420
       0     3647        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 53.397, ft0  = 3768.7665420
       0     3650        M                                           #; (f:fpu) ft0  <-- 5278.2463350
       0     3651        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 56.538, ft0  = 5278.2463350
       0     3654        M                                           #; (f:fpu) ft0  <-- 8119.6200630
       0     3655        M 0x80000808 fsd     ft0, 0(s1)             #; 8119.6200630 ~~> Doub[0x001002b0]
       0     3656        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3657        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 40.833
       0     3658        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 8, (wrb) s1  <-- 0x001002b8
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 6.282
       0     3659        M 0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 43.9740000
       0     3660        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 40.833, (f:lsu) ft3  <-- 28.269
       0     3661        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
       0     3663        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:fpu) ft0  <-- 256.5129060
       0     3664        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 43.9740000, ft0  = 256.5129060
       0     3665        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3666        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 47.115
       0     3667        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 1499.6139120
       0     3668        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
       0     3669        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3670        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
       0     3671        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3672        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
       0     3673        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 47.115, ft0  = 1499.6139120, (f:lsu) ft7  <-- 56.538
       0     3674        M                                           #; (f:lsu) fa0  <-- 53.397
       0     3676        M                                           #; (f:fpu) ft0  <-- 3867.4253520
       0     3677        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 50.256, ft0  = 3867.4253520
       0     3680        M                                           #; (f:fpu) ft0  <-- 4340.9876400
       0     3681        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 53.397, ft0  = 4340.9876400
       0     3684        M                                           #; (f:fpu) ft0  <-- 6018.1874100
       0     3685        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 56.538, ft0  = 6018.1874100
       0     3688        M                                           #; (f:fpu) ft0  <-- 9037.1469960
       0     3689        M 0x80000808 fsd     ft0, 0(s1)             #; 9037.1469960 ~~> Doub[0x001002b8]
       0     3690        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3691        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 40.833
       0     3692        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 16, (wrb) s1  <-- 0x001002c0
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 9.423
       0     3693        M 0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 43.9740000
       0     3694        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 40.833, (f:lsu) ft3  <-- 31.41
       0     3695        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
       0     3697        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:fpu) ft0  <-- 384.7693590
       0     3698        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 43.9740000, ft0  = 384.7693590
       0     3699        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3700        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 47.115
       0     3701        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 1765.9926990
       0     3702        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
       0     3703        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3704        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
       0     3705        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3706        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
       0     3707        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 47.115, ft0  = 1765.9926990, (f:lsu) ft7  <-- 56.538
       0     3708        M                                           #; (f:lsu) fa0  <-- 56.538
       0     3710        M                                           #; (f:fpu) ft0  <-- 4281.7923540
       0     3711        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 50.256, ft0  = 4281.7923540
       0     3714        M                                           #; (f:fpu) ft0  <-- 4913.2087380
       0     3715        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 53.397, ft0  = 4913.2087380
       0     3718        M                                           #; (f:fpu) ft0  <-- 6758.1284850
       0     3719        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 56.538, ft0  = 6758.1284850
       0     3722        M                                           #; (f:fpu) ft0  <-- 9954.6739290
       0     3723        M 0x80000808 fsd     ft0, 0(s1)             #; 9954.6739290 ~~> Doub[0x001002c0]
       0     3724        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3725        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 40.833
       0     3726        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 24, (wrb) s1  <-- 0x001002c8
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 12.564
       0     3727        M 0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 43.9740000
       0     3728        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 40.833, (f:lsu) ft3  <-- 34.551
       0     3729        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
       0     3731        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:fpu) ft0  <-- 513.0258120
       0     3732        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 43.9740000, ft0  = 513.0258120
       0     3733        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3734        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 47.115
       0     3735        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2032.3714860
       0     3736        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
       0     3737        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3738        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
       0     3739        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3740        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
       0     3741        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 47.115, ft0  = 2032.3714860, (f:lsu) ft7  <-- 56.538
       0     3742        M                                           #; (f:lsu) fa0  <-- 59.679
       0     3744        M                                           #; (f:fpu) ft0  <-- 4696.1593560
       0     3745        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 50.256, ft0  = 4696.1593560
       0     3748        M                                           #; (f:fpu) ft0  <-- 5485.4298360
       0     3749        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 53.397, ft0  = 5485.4298360
       0     3752        M                                           #; (f:fpu) ft0  <-- 7498.0695600
       0     3753        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 56.538, ft0  = 7498.0695600
       0     3756        M                                           #; (f:fpu) ft0  <-- 10872.2008620
       0     3757        M 0x80000808 fsd     ft0, 0(s1)             #; 10872.2008620 ~~> Doub[0x001002c8]
       0     3758        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3759        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 40.833
       0     3760        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 32, (wrb) s1  <-- 0x001002d0
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 15.705
       0     3761        M 0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 43.9740000
       0     3762        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 40.833, (f:lsu) ft3  <-- 37.692
       0     3763        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
       0     3765        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:fpu) ft0  <-- 641.2822650
       0     3766        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 43.9740000, ft0  = 641.2822650
       0     3767        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3768        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 47.115
       0     3769        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2298.7502730
       0     3770        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
       0     3771        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3772        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
       0     3773        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3774        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
       0     3775        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 47.115, ft0  = 2298.7502730, (f:lsu) ft7  <-- 56.538
       0     3776        M                                           #; (f:lsu) fa0  <-- 62.82
       0     3778        M                                           #; (f:fpu) ft0  <-- 5110.5263580
       0     3779        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 50.256, ft0  = 5110.5263580
       0     3782        M                                           #; (f:fpu) ft0  <-- 6057.6509340
       0     3783        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 53.397, ft0  = 6057.6509340
       0     3786        M                                           #; (f:fpu) ft0  <-- 8238.0106350
       0     3787        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 56.538, ft0  = 8238.0106350
       0     3790        M                                           #; (f:fpu) ft0  <-- 11789.7277950
       0     3791        M 0x80000808 fsd     ft0, 0(s1)             #; 11789.7277950 ~~> Doub[0x001002d0]
       0     3792        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3793        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 40.833
       0     3794        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 40, (wrb) s1  <-- 0x001002d8
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 18.846
       0     3795        M 0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 43.9740000
       0     3796        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 40.833, (f:lsu) ft3  <-- 40.833
       0     3797        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
       0     3799        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:fpu) ft0  <-- 769.5387180
       0     3800        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 43.9740000, ft0  = 769.5387180
       0     3801        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3802        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 47.115
       0     3803        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2565.1290600
       0     3804        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
       0     3805        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3806        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
       0     3807        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3808        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
       0     3809        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 47.115, ft0  = 2565.1290600, (f:lsu) ft7  <-- 56.538
       0     3810        M                                           #; (f:lsu) fa0  <-- 3.141
       0     3812        M                                           #; (f:fpu) ft0  <-- 5524.8933600
       0     3813        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 50.256, ft0  = 5524.8933600
       0     3816        M                                           #; (f:fpu) ft0  <-- 6629.8720320
       0     3817        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 53.397, ft0  = 6629.8720320
       0     3820        M                                           #; (f:fpu) ft0  <-- 8977.9517100
       0     3821        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 56.538, ft0  = 8977.9517100
       0     3824        M                                           #; (f:fpu) ft0  <-- 9155.5375680
       0     3825        M 0x80000808 fsd     ft0, 0(s1)             #; 9155.5375680 ~~> Doub[0x001002d8]
       0     3826        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     3827        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 40.833
       0     3828        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 48, (wrb) s1  <-- 0x001002e0
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 21.9870000
       0     3829        M 0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 43.9740000
       0     3830        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 40.833, (f:lsu) ft3  <-- 43.9740000
       0     3831        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
       0     3833        M                                           #; (f:fpu) ft0  <-- 897.7951710
       0     3834        M 0x80000810 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
                         M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 43.9740000, ft0  = 897.7951710
       0     3835        M 0x80000814 addi    t1, t1, 56             #; t1  = 112, (wrb) t1  <-- 168
                         M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
       0     3836        M 0x80000818 bne     t2, a7, pc - 140       #; t2  = 3, a7  = 5, taken, goto 0x8000078c
                         M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 47.115
       0     3837        M 0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2831.5078470
       0     3838        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
       0     3839        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
       0     3840        M 0x80000790 mul     a2, t2, a6             #; t2  = 3, a6  = 48
                         M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
       0     3841        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
       0     3842        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
       0     3843        M                                           #; (acc) a3  <-- 0x00c286b3
                         M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 47.115, ft0  = 2831.5078470, (f:lsu) ft7  <-- 56.538
       0     3844        M 0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 144, (wrb) a3  <-- 0x00100090
                         M                                           #; (f:lsu) fa0  <-- 6.282
       0     3845        M 0x80000798 ori     a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
       0     3846        M 0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 152, (wrb) t5  <-- 0x00100098
                         M                                           #; (f:fpu) ft0  <-- 2979.4960620
       0     3847        M 0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100090, (wrb) t6  <-- 0x001000a0
                         M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 50.256, ft0  = 2979.4960620
       0     3848        M 0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100090, (wrb) a2  <-- 0x001000a8
       0     3849        M 0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100090, (wrb) a4  <-- 0x001000b0
       0     3850        M 0x800007ac addi    a5, a3, 40             #; a3  = 0x00100090, (wrb) a5  <-- 0x001000b8
                         M                                           #; (f:fpu) ft0  <-- 4242.3288300
       0     3851        M 0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 168, (wrb) s0  <-- 0x001002e8
                         M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 53.397, ft0  = 4242.3288300
       0     3853        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
       0     3854        M                                           #; (f:fpu) ft0  <-- 6758.1284850
       0     3855        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 56.538, ft0  = 6758.1284850
       0     3858        M                                           #; (f:fpu) ft0  <-- 7113.3002010
       0     3859        M 0x80000808 fsd     ft0, 0(s1)             #; 7113.3002010 ~~> Doub[0x001002e0]
       0     3860        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     3861        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0], (f:lsu) ft0  <-- 59.679
       0     3862        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 3.141
       0     3863        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 62.82
       0     3864        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 59.679, (f:lsu) ft3  <-- 25.128
       0     3867        M                                           #; (f:fpu) ft0  <-- 187.4517390
       0     3868        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 62.82, ft0  = 187.4517390
       0     3869        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     3870        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 3.141
       0     3871        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 0, (wrb) s1  <-- 0x001002e8
                         M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 1765.9926990
       0     3872        M 0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
       0     3873        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     3874        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
                         M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
       0     3875        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     3876        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
                         M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
       0     3877        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 3.141, ft0  = 1765.9926990, (f:lsu) ft7  <-- 12.564
       0     3878        M                                           #; (f:lsu) fa0  <-- 50.256
       0     3880        M                                           #; (f:fpu) ft0  <-- 1913.9809140
       0     3881        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 6.282, ft0  = 1913.9809140
       0     3884        M                                           #; (f:fpu) ft0  <-- 1953.4444380
       0     3885        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 9.423, ft0  = 1953.4444380
       0     3888        M                                           #; (f:fpu) ft0  <-- 2219.8232250
       0     3889        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 12.564, ft0  = 2219.8232250
       0     3892        M                                           #; (f:fpu) ft0  <-- 2851.2396090
       0     3893        M 0x80000808 fsd     ft0, 0(s1)             #; 2851.2396090 ~~> Doub[0x001002e8]
       0     3894        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     3895        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 59.679
       0     3896        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 8, (wrb) s1  <-- 0x001002f0
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 6.282
       0     3897        M 0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 62.82
       0     3898        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 59.679, (f:lsu) ft3  <-- 28.269
       0     3899        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
       0     3901        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:fpu) ft0  <-- 374.9034780
       0     3902        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 62.82, ft0  = 374.9034780
       0     3903        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     3904        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 3.141
       0     3905        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 2150.7620580
       0     3906        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
       0     3907        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     3908        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
       0     3909        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     3910        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
       0     3911        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 3.141, ft0  = 2150.7620580, (f:lsu) ft7  <-- 12.564
       0     3912        M                                           #; (f:lsu) fa0  <-- 53.397
       0     3914        M                                           #; (f:fpu) ft0  <-- 2308.6161540
       0     3915        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 6.282, ft0  = 2308.6161540
       0     3918        M                                           #; (f:fpu) ft0  <-- 2367.8114400
       0     3919        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 9.423, ft0  = 2367.8114400
       0     3922        M                                           #; (f:fpu) ft0  <-- 2663.7878700
       0     3923        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 12.564, ft0  = 2663.7878700
       0     3926        M                                           #; (f:fpu) ft0  <-- 3334.6677780
       0     3927        M 0x80000808 fsd     ft0, 0(s1)             #; 3334.6677780 ~~> Doub[0x001002f0]
       0     3928        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     3929        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 59.679
       0     3930        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 16, (wrb) s1  <-- 0x001002f8
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 9.423
       0     3931        M 0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 62.82
       0     3932        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 59.679, (f:lsu) ft3  <-- 31.41
       0     3933        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
       0     3935        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:fpu) ft0  <-- 562.3552170
       0     3936        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 62.82, ft0  = 562.3552170
       0     3937        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     3938        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 3.141
       0     3939        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 2535.5314170
       0     3940        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
       0     3941        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     3942        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
       0     3943        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     3944        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
       0     3945        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 3.141, ft0  = 2535.5314170, (f:lsu) ft7  <-- 12.564
       0     3946        M                                           #; (f:lsu) fa0  <-- 56.538
       0     3948        M                                           #; (f:fpu) ft0  <-- 2703.2513940
       0     3949        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 6.282, ft0  = 2703.2513940
       0     3952        M                                           #; (f:fpu) ft0  <-- 2782.1784420
       0     3953        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 9.423, ft0  = 2782.1784420
       0     3956        M                                           #; (f:fpu) ft0  <-- 3107.7525150
       0     3957        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 12.564, ft0  = 3107.7525150
       0     3960        M                                           #; (f:fpu) ft0  <-- 3818.0959470
       0     3961        M 0x80000808 fsd     ft0, 0(s1)             #; 3818.0959470 ~~> Doub[0x001002f8]
       0     3962        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     3963        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 59.679
       0     3964        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 24, (wrb) s1  <-- 0x00100300
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 12.564
       0     3965        M 0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 62.82
       0     3966        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 59.679, (f:lsu) ft3  <-- 34.551
       0     3967        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
       0     3969        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:fpu) ft0  <-- 749.8069560
       0     3970        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 62.82, ft0  = 749.8069560
       0     3971        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     3972        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 3.141
       0     3973        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 2920.3007760
       0     3974        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
       0     3975        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     3976        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
       0     3977        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     3978        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
       0     3979        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 3.141, ft0  = 2920.3007760, (f:lsu) ft7  <-- 12.564
       0     3980        M                                           #; (f:lsu) fa0  <-- 59.679
       0     3982        M                                           #; (f:fpu) ft0  <-- 3097.8866340
       0     3983        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 6.282, ft0  = 3097.8866340
       0     3986        M                                           #; (f:fpu) ft0  <-- 3196.5454440
       0     3987        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 9.423, ft0  = 3196.5454440
       0     3990        M                                           #; (f:fpu) ft0  <-- 3551.7171600
       0     3991        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 12.564, ft0  = 3551.7171600
       0     3994        M                                           #; (f:fpu) ft0  <-- 4301.5241160
       0     3995        M 0x80000808 fsd     ft0, 0(s1)             #; 4301.5241160 ~~> Doub[0x00100300]
       0     3996        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     3997        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 59.679
       0     3998        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 32, (wrb) s1  <-- 0x00100308
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 15.705
       0     3999        M 0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 62.82
       0     4000        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 59.679, (f:lsu) ft3  <-- 37.692
       0     4001        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
       0     4003        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:fpu) ft0  <-- 937.2586950
       0     4004        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 62.82, ft0  = 937.2586950
       0     4005        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     4006        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 3.141
       0     4007        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 3305.0701350
       0     4008        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
       0     4009        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     4010        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
       0     4011        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     4012        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
       0     4013        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 3.141, ft0  = 3305.0701350, (f:lsu) ft7  <-- 12.564
       0     4014        M                                           #; (f:lsu) fa0  <-- 62.82
       0     4016        M                                           #; (f:fpu) ft0  <-- 3492.5218740
       0     4017        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 6.282, ft0  = 3492.5218740
       0     4020        M                                           #; (f:fpu) ft0  <-- 3610.9124460
       0     4021        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 9.423, ft0  = 3610.9124460
       0     4024        M                                           #; (f:fpu) ft0  <-- 3995.6818050
       0     4025        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 12.564, ft0  = 3995.6818050
       0     4028        M                                           #; (f:fpu) ft0  <-- 4784.9522850
       0     4029        M 0x80000808 fsd     ft0, 0(s1)             #; 4784.9522850 ~~> Doub[0x00100308]
       0     4030        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     4031        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 59.679
       0     4032        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 40, (wrb) s1  <-- 0x00100310
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 18.846
       0     4033        M 0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 62.82
       0     4034        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 59.679, (f:lsu) ft3  <-- 40.833
       0     4035        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
       0     4037        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:fpu) ft0  <-- 1124.7104340
       0     4038        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 62.82, ft0  = 1124.7104340
       0     4039        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     4040        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 3.141
       0     4041        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 3689.8394940
       0     4042        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
       0     4043        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     4044        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
       0     4045        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     4046        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
       0     4047        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 3.141, ft0  = 3689.8394940, (f:lsu) ft7  <-- 12.564
       0     4048        M                                           #; (f:lsu) fa0  <-- 3.141
       0     4050        M                                           #; (f:fpu) ft0  <-- 3887.1571140
       0     4051        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 6.282, ft0  = 3887.1571140
       0     4054        M                                           #; (f:fpu) ft0  <-- 4025.2794480
       0     4055        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 9.423, ft0  = 4025.2794480
       0     4058        M                                           #; (f:fpu) ft0  <-- 4439.6464500
       0     4059        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 12.564, ft0  = 4439.6464500
       0     4062        M                                           #; (f:fpu) ft0  <-- 4479.1099740
       0     4063        M 0x80000808 fsd     ft0, 0(s1)             #; 4479.1099740 ~~> Doub[0x00100310]
       0     4064        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     4065        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 59.679
       0     4066        M 0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 48, (wrb) s1  <-- 0x00100318
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 21.9870000
       0     4067        M 0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 62.82
       0     4068        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 59.679, (f:lsu) ft3  <-- 43.9740000
       0     4069        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
       0     4071        M                                           #; (f:fpu) ft0  <-- 1312.1621730
       0     4072        M 0x80000810 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
                         M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 62.82, ft0  = 1312.1621730
       0     4073        M 0x80000814 addi    t1, t1, 56             #; t1  = 168, (wrb) t1  <-- 224
                         M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
       0     4074        M 0x80000818 bne     t2, a7, pc - 140       #; t2  = 4, a7  = 5, taken, goto 0x8000078c
                         M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 3.141
       0     4075        M 0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 4074.6088530
       0     4076        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
       0     4077        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
       0     4078        M 0x80000790 mul     a2, t2, a6             #; t2  = 4, a6  = 48
                         M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
       0     4079        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
       0     4080        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
       0     4081        M                                           #; (acc) a3  <-- 0x00c286b3
                         M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 3.141, ft0  = 4074.6088530, (f:lsu) ft7  <-- 12.564
       0     4082        M 0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 192, (wrb) a3  <-- 0x001000c0
                         M                                           #; (f:lsu) fa0  <-- 6.282
       0     4083        M 0x80000798 ori     a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
       0     4084        M 0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 200, (wrb) t5  <-- 0x001000c8
                         M                                           #; (f:fpu) ft0  <-- 4084.4747340
       0     4085        M 0x800007a0 addi    t6, a3, 16             #; a3  = 0x001000c0, (wrb) t6  <-- 0x001000d0
                         M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 6.282, ft0  = 4084.4747340
       0     4086        M 0x800007a4 addi    a2, a3, 24             #; a3  = 0x001000c0, (wrb) a2  <-- 0x001000d8
       0     4087        M 0x800007a8 addi    a4, a3, 32             #; a3  = 0x001000c0, (wrb) a4  <-- 0x001000e0
       0     4088        M 0x800007ac addi    a5, a3, 40             #; a3  = 0x001000c0, (wrb) a5  <-- 0x001000e8
                         M                                           #; (f:fpu) ft0  <-- 4242.3288300
       0     4089        M 0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 224, (wrb) s0  <-- 0x00100320
                         M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 9.423, ft0  = 4242.3288300
       0     4091        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
       0     4092        M                                           #; (f:fpu) ft0  <-- 4686.2934750
       0     4093        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 12.564, ft0  = 4686.2934750
       0     4096        M                                           #; (f:fpu) ft0  <-- 4765.2205230
       0     4097        M 0x80000808 fsd     ft0, 0(s1)             #; 4765.2205230 ~~> Doub[0x00100318]
       0     4098        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4099        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0], (f:lsu) ft0  <-- 15.705
       0     4100        M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 3.141
       0     4101        M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 18.846
       0     4102        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 15.705, (f:lsu) ft3  <-- 25.128
       0     4105        M                                           #; (f:fpu) ft0  <-- 49.3294050
       0     4106        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 18.846, ft0  = 49.3294050
       0     4107        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4108        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 21.9870000
       0     4109        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 0, (wrb) s1  <-- 0x00100320
                         M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 522.8916930
       0     4110        M 0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                         M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
       0     4111        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4112        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
                         M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
       0     4113        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4114        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
                         M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
       0     4115        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 21.9870000, ft0  = 522.8916930, (f:lsu) ft7  <-- 31.41
       0     4116        M                                           #; (f:lsu) fa0  <-- 50.256
       0     4118        M                                           #; (f:fpu) ft0  <-- 1558.8091980
       0     4119        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 25.128, ft0  = 1558.8091980
       0     4122        M                                           #; (f:fpu) ft0  <-- 1716.6632940
       0     4123        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 28.269, ft0  = 1716.6632940
       0     4126        M                                           #; (f:fpu) ft0  <-- 2515.7996550
       0     4127        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 31.41, ft0  = 2515.7996550
       0     4130        M                                           #; (f:fpu) ft0  <-- 4094.3406150
       0     4131        M 0x80000808 fsd     ft0, 0(s1)             #; 4094.3406150 ~~> Doub[0x00100320]
       0     4132        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4133        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 15.705
       0     4134        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 8, (wrb) s1  <-- 0x00100328
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 6.282
       0     4135        M 0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 18.846
       0     4136        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 15.705, (f:lsu) ft3  <-- 28.269
       0     4137        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
       0     4139        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:fpu) ft0  <-- 98.65881
       0     4140        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 18.846, ft0  = 98.65881
       0     4141        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4142        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 21.9870000
       0     4143        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 631.4163840
       0     4144        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
       0     4145        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4146        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
       0     4147        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4148        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
       0     4149        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 21.9870000, ft0  = 631.4163840, (f:lsu) ft7  <-- 31.41
       0     4150        M                                           #; (f:lsu) fa0  <-- 53.397
       0     4152        M                                           #; (f:fpu) ft0  <-- 1736.3950560
       0     4153        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 25.128, ft0  = 1736.3950560
       0     4156        M                                           #; (f:fpu) ft0  <-- 1973.1762000
       0     4157        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 28.269, ft0  = 1973.1762000
       0     4160        M                                           #; (f:fpu) ft0  <-- 2861.1054900
       0     4161        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 31.41, ft0  = 2861.1054900
       0     4164        M                                           #; (f:fpu) ft0  <-- 4538.3052600
       0     4165        M 0x80000808 fsd     ft0, 0(s1)             #; 4538.3052600 ~~> Doub[0x00100328]
       0     4166        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4167        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 15.705
       0     4168        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 16, (wrb) s1  <-- 0x00100330
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 9.423
       0     4169        M 0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 18.846
       0     4170        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 15.705, (f:lsu) ft3  <-- 31.41
       0     4171        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
       0     4173        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:fpu) ft0  <-- 147.9882150
       0     4174        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 18.846, ft0  = 147.9882150
       0     4175        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4176        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 21.9870000
       0     4177        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 739.9410750
       0     4178        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
       0     4179        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4180        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
       0     4181        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4182        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
       0     4183        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 21.9870000, ft0  = 739.9410750, (f:lsu) ft7  <-- 31.41
       0     4184        M                                           #; (f:lsu) fa0  <-- 56.538
       0     4186        M                                           #; (f:fpu) ft0  <-- 1913.9809140
       0     4187        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 25.128, ft0  = 1913.9809140
       0     4190        M                                           #; (f:fpu) ft0  <-- 2229.6891060
       0     4191        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 28.269, ft0  = 2229.6891060
       0     4194        M                                           #; (f:fpu) ft0  <-- 3206.4113250
       0     4195        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 31.41, ft0  = 3206.4113250
       0     4198        M                                           #; (f:fpu) ft0  <-- 4982.2699050
       0     4199        M 0x80000808 fsd     ft0, 0(s1)             #; 4982.2699050 ~~> Doub[0x00100330]
       0     4200        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4201        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 15.705
       0     4202        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 24, (wrb) s1  <-- 0x00100338
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 12.564
       0     4203        M 0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 18.846
       0     4204        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 15.705, (f:lsu) ft3  <-- 34.551
       0     4205        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
       0     4207        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:fpu) ft0  <-- 197.3176200
       0     4208        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 18.846, ft0  = 197.3176200
       0     4209        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4210        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 21.9870000
       0     4211        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 848.4657660
       0     4212        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
       0     4213        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4214        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
       0     4215        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4216        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
       0     4217        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 21.9870000, ft0  = 848.4657660, (f:lsu) ft7  <-- 31.41
       0     4218        M                                           #; (f:lsu) fa0  <-- 59.679
       0     4220        M                                           #; (f:fpu) ft0  <-- 2091.5667720
       0     4221        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 25.128, ft0  = 2091.5667720
       0     4224        M                                           #; (f:fpu) ft0  <-- 2486.2020120
       0     4225        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 28.269, ft0  = 2486.2020120
       0     4228        M                                           #; (f:fpu) ft0  <-- 3551.7171600
       0     4229        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 31.41, ft0  = 3551.7171600
       0     4232        M                                           #; (f:fpu) ft0  <-- 5426.2345500
       0     4233        M 0x80000808 fsd     ft0, 0(s1)             #; 5426.2345500 ~~> Doub[0x00100338]
       0     4234        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4235        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 15.705
       0     4236        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 32, (wrb) s1  <-- 0x00100340
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 15.705
       0     4237        M 0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 18.846
       0     4238        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 15.705, (f:lsu) ft3  <-- 37.692
       0     4239        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
       0     4241        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:fpu) ft0  <-- 246.6470250
       0     4242        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 18.846, ft0  = 246.6470250
       0     4243        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4244        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 21.9870000
       0     4245        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 956.9904570
       0     4246        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
       0     4247        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4248        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
       0     4249        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4250        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
       0     4251        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 21.9870000, ft0  = 956.9904570, (f:lsu) ft7  <-- 31.41
       0     4252        M                                           #; (f:lsu) fa0  <-- 62.82
       0     4254        M                                           #; (f:fpu) ft0  <-- 2269.1526300
       0     4255        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 25.128, ft0  = 2269.1526300
       0     4258        M                                           #; (f:fpu) ft0  <-- 2742.7149180
       0     4259        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 28.269, ft0  = 2742.7149180
       0     4262        M                                           #; (f:fpu) ft0  <-- 3897.0229950
       0     4263        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 31.41, ft0  = 3897.0229950
       0     4266        M                                           #; (f:fpu) ft0  <-- 5870.1991950
       0     4267        M 0x80000808 fsd     ft0, 0(s1)             #; 5870.1991950 ~~> Doub[0x00100340]
       0     4268        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4269        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 15.705
       0     4270        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 40, (wrb) s1  <-- 0x00100348
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 18.846
       0     4271        M 0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 18.846
       0     4272        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 15.705, (f:lsu) ft3  <-- 40.833
       0     4273        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
       0     4275        M 0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:fpu) ft0  <-- 295.9764300
       0     4276        M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 18.846, ft0  = 295.9764300
       0     4277        M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4278        M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 21.9870000
       0     4279        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 1065.5151480
       0     4280        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
       0     4281        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4282        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
       0     4283        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4284        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
       0     4285        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 21.9870000, ft0  = 1065.5151480, (f:lsu) ft7  <-- 31.41
       0     4286        M                                           #; (f:lsu) fa0  <-- 3.141
       0     4288        M                                           #; (f:fpu) ft0  <-- 2446.7384880
       0     4289        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 25.128, ft0  = 2446.7384880
       0     4292        M                                           #; (f:fpu) ft0  <-- 2999.2278240
       0     4293        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 28.269, ft0  = 2999.2278240
       0     4296        M                                           #; (f:fpu) ft0  <-- 4242.3288300
       0     4297        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 31.41, ft0  = 4242.3288300
       0     4300        M                                           #; (f:fpu) ft0  <-- 4340.9876400
       0     4301        M 0x80000808 fsd     ft0, 0(s1)             #; 4340.9876400 ~~> Doub[0x00100348]
       0     4302        M 0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     4303        M 0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 15.705
       0     4304        M 0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 48, (wrb) s1  <-- 0x00100350
                         M 0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 21.9870000
       0     4305        M 0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
                         M 0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 18.846
       0     4306        M 0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 15.705, (f:lsu) ft3  <-- 43.9740000
       0     4307        M 0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
       0     4309        M                                           #; (f:fpu) ft0  <-- 345.3058350
       0     4310        M 0x80000810 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
                         M 0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 18.846, ft0  = 345.3058350
       0     4311        M 0x80000814 addi    t1, t1, 56             #; t1  = 224, (wrb) t1  <-- 280
                         M 0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
       0     4312        M 0x80000818 bne     t2, a7, pc - 140       #; t2  = 5, a7  = 5, not taken
                         M 0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 21.9870000
       0     4313        M 0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 1174.0398390
       0     4314        M 0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
       0     4315        M 0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
       0     4316        M 0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
       0     4317        M 0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
       0     4318        M 0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
       0     4319        M 0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 21.9870000, ft0  = 1174.0398390, (f:lsu) ft7  <-- 31.41
       0     4320        M                                           #; (f:lsu) fa0  <-- 6.282
       0     4322        M                                           #; (f:fpu) ft0  <-- 1243.1010060
       0     4323        M 0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 25.128, ft0  = 1243.1010060
       0     4326        M                                           #; (f:fpu) ft0  <-- 1874.5173900
       0     4327        M 0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 28.269, ft0  = 1874.5173900
       0     4330        M                                           #; (f:fpu) ft0  <-- 3206.4113250
       0     4331        M 0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 31.41, ft0  = 3206.4113250
       0     4334        M                                           #; (f:fpu) ft0  <-- 3403.7289450
       0     4335        M 0x80000808 fsd     ft0, 0(s1)             #; 3403.7289450 ~~> Doub[0x00100350]
       0     4336        M 0x8000081c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100240]
       0     4337        M 0x80000820 fld     ft1, 8(a0)             #; ft1  <~~ Doub[0x00100248], (f:lsu) ft0  <-- 2081.7008910
       0     4338        M 0x80000824 fld     ft2, 16(a0)            #; ft2  <~~ Doub[0x00100250], (f:lsu) ft1  <-- 2288.8843920
       0     4339        M 0x80000828 fadd.d  ft0, ft1, ft0          #; ft1  = 2288.8843920, ft0  = 2081.7008910, (f:lsu) ft2  <-- 2496.0678930
       0     4342        M                                           #; (f:fpu) ft0  <-- 4370.5852830
       0     4343        M 0x8000082c fadd.d  ft0, ft2, ft0          #; ft2  = 2496.0678930, ft0  = 4370.5852830
       0     4344        M 0x80000830 fld     ft1, 24(a0)            #; ft1  <~~ Doub[0x00100258]
       0     4345        M 0x80000834 fld     ft2, 32(a0)            #; ft2  <~~ Doub[0x00100260], (f:lsu) ft1  <-- 2703.2513940
       0     4346        M 0x80000838 fld     ft3, 40(a0)            #; ft3  <~~ Doub[0x00100268], (f:fpu) ft0  <-- 6866.6531760
       0     4347        M 0x8000083c fld     ft4, 48(a0)            #; ft4  <~~ Doub[0x00100270], (f:lsu) ft2  <-- 2910.4348950
       0     4348        M                                           #; (f:lsu) ft3  <-- 1933.7126760
       0     4349        M                                           #; (f:lsu) ft4  <-- 1548.9433170
       0     4351        M 0x80000840 fadd.d  ft0, ft1, ft0          #; ft1  = 2703.2513940, ft0  = 6866.6531760
       0     4354        M                                           #; (f:fpu) ft0  <-- 9569.9045700
       0     4355        M 0x80000844 fadd.d  ft0, ft2, ft0          #; ft2  = 2910.4348950, ft0  = 9569.9045700
       0     4358        M                                           #; (f:fpu) ft0  <-- 12480.3394650
       0     4359        M 0x80000848 fadd.d  ft0, ft3, ft0          #; ft3  = 1933.7126760, ft0  = 12480.3394650
       0     4362        M                                           #; (f:fpu) ft0  <-- 14414.0521410
       0     4363        M 0x8000084c fadd.d  ft0, ft4, ft0          #; ft4  = 1548.9433170, ft0  = 14414.0521410
       0     4364        M 0x80000850 fld     ft1, 56(a0)            #; ft1  <~~ Doub[0x00100278]
       0     4365        M 0x80000854 fld     ft2, 64(a0)            #; ft2  <~~ Doub[0x00100280], (f:lsu) ft1  <-- 5100.6604770
       0     4366        M 0x80000858 fld     ft3, 72(a0)            #; ft3  <~~ Doub[0x00100288], (f:fpu) ft0  <-- 15962.9954580
       0     4367        M 0x8000085c fld     ft4, 80(a0)            #; ft4  <~~ Doub[0x00100290], (f:lsu) ft2  <-- 5663.0156940
       0     4368        M                                           #; (f:lsu) ft3  <-- 6225.3709110
       0     4369        M                                           #; (f:lsu) ft4  <-- 6787.7261280
       0     4375        M 0x80000860 fadd.d  ft0, ft1, ft0          #; ft1  = 5100.6604770, ft0  = 15962.9954580
       0     4378        M                                           #; (f:fpu) ft0  <-- 21063.6559350
       0     4379        M 0x80000864 fadd.d  ft0, ft2, ft0          #; ft2  = 5663.0156940, ft0  = 21063.6559350
       0     4382        M                                           #; (f:fpu) ft0  <-- 26726.6716290
       0     4383        M 0x80000868 fadd.d  ft0, ft3, ft0          #; ft3  = 6225.3709110, ft0  = 26726.6716290
       0     4386        M                                           #; (f:fpu) ft0  <-- 32952.0425400
       0     4387        M 0x8000086c fadd.d  ft0, ft4, ft0          #; ft4  = 6787.7261280, ft0  = 32952.0425400
       0     4388        M 0x80000870 fld     ft1, 88(a0)            #; ft1  <~~ Doub[0x00100298]
       0     4389        M 0x80000874 fld     ft2, 96(a0)            #; ft2  <~~ Doub[0x001002a0], (f:lsu) ft1  <-- 7350.0813450
       0     4390        M 0x80000878 fld     ft3, 104(a0)           #; ft3  <~~ Doub[0x001002a8], (f:fpu) ft0  <-- 39739.7686680
       0     4391        M 0x8000087c fld     ft4, 112(a0)           #; ft4  <~~ Doub[0x001002b0], (f:lsu) ft2  <-- 5544.6251220
       0     4392        M                                           #; (f:lsu) ft3  <-- 4331.1217590
       0     4393        M                                           #; (f:lsu) ft4  <-- 8119.6200630
       0     4399        M 0x80000880 fadd.d  ft0, ft1, ft0          #; ft1  = 7350.0813450, ft0  = 39739.7686680
       0     4402        M                                           #; (f:fpu) ft0  <-- 47089.8500130
       0     4403        M 0x80000884 fadd.d  ft0, ft2, ft0          #; ft2  = 5544.6251220, ft0  = 47089.8500130
       0     4406        M                                           #; (f:fpu) ft0  <-- 52634.4751350
       0     4407        M 0x80000888 fadd.d  ft0, ft3, ft0          #; ft3  = 4331.1217590, ft0  = 52634.4751350
       0     4410        M                                           #; (f:fpu) ft0  <-- 56965.5968940
       0     4411        M 0x8000088c fadd.d  ft0, ft4, ft0          #; ft4  = 8119.6200630, ft0  = 56965.5968940
       0     4412        M 0x80000890 fld     ft1, 120(a0)           #; ft1  <~~ Doub[0x001002b8]
       0     4413        M 0x80000894 fld     ft2, 128(a0)           #; ft2  <~~ Doub[0x001002c0], (f:lsu) ft1  <-- 9037.1469960
       0     4414        M 0x80000898 fld     ft3, 136(a0)           #; ft3  <~~ Doub[0x001002c8], (f:fpu) ft0  <-- 65085.2169570
       0     4415        M 0x8000089c fld     ft4, 144(a0)           #; ft4  <~~ Doub[0x001002d0], (f:lsu) ft2  <-- 9954.6739290
       0     4416        M                                           #; (f:lsu) ft3  <-- 10872.2008620
       0     4417        M                                           #; (f:lsu) ft4  <-- 11789.7277950
       0     4423        M 0x800008a0 fadd.d  ft0, ft1, ft0          #; ft1  = 9037.1469960, ft0  = 65085.2169570
       0     4426        M                                           #; (f:fpu) ft0  <-- 74122.3639530
       0     4427        M 0x800008a4 fadd.d  ft0, ft2, ft0          #; ft2  = 9954.6739290, ft0  = 74122.3639530
       0     4430        M                                           #; (f:fpu) ft0  <-- 84077.0378820
       0     4431        M 0x800008a8 fadd.d  ft0, ft3, ft0          #; ft3  = 10872.2008620, ft0  = 84077.0378820
       0     4434        M                                           #; (f:fpu) ft0  <-- 94949.2387440
       0     4435        M 0x800008ac fadd.d  ft0, ft4, ft0          #; ft4  = 11789.7277950, ft0  = 94949.2387440
       0     4436        M 0x800008b0 fld     ft1, 152(a0)           #; ft1  <~~ Doub[0x001002d8]
       0     4437        M 0x800008b4 fld     ft2, 160(a0)           #; ft2  <~~ Doub[0x001002e0], (f:lsu) ft1  <-- 9155.5375680
       0     4438        M 0x800008b8 fld     ft3, 168(a0)           #; ft3  <~~ Doub[0x001002e8], (f:fpu) ft0  <-- 106738.9665390
       0     4439        M 0x800008bc fld     ft4, 176(a0)           #; ft4  <~~ Doub[0x001002f0], (f:lsu) ft2  <-- 7113.3002010
       0     4440        M                                           #; (f:lsu) ft3  <-- 2851.2396090
       0     4441        M                                           #; (f:lsu) ft4  <-- 3334.6677780
       0     4447        M 0x800008c0 fadd.d  ft0, ft1, ft0          #; ft1  = 9155.5375680, ft0  = 106738.9665390
       0     4450        M                                           #; (f:fpu) ft0  <-- 115894.5041070
       0     4451        M 0x800008c4 fadd.d  ft0, ft2, ft0          #; ft2  = 7113.3002010, ft0  = 115894.5041070
       0     4454        M                                           #; (f:fpu) ft0  <-- 123007.8043080
       0     4455        M 0x800008c8 fadd.d  ft0, ft3, ft0          #; ft3  = 2851.2396090, ft0  = 123007.8043080
       0     4458        M                                           #; (f:fpu) ft0  <-- 125859.0439170
       0     4459        M 0x800008cc fadd.d  ft0, ft4, ft0          #; ft4  = 3334.6677780, ft0  = 125859.0439170
       0     4460        M 0x800008d0 fld     ft1, 184(a0)           #; ft1  <~~ Doub[0x001002f8]
       0     4461        M 0x800008d4 fld     ft2, 192(a0)           #; ft2  <~~ Doub[0x00100300], (f:lsu) ft1  <-- 3818.0959470
       0     4462        M 0x800008d8 fld     ft3, 200(a0)           #; ft3  <~~ Doub[0x00100308], (f:fpu) ft0  <-- 129193.7116950
       0     4463        M 0x800008dc fld     ft4, 208(a0)           #; ft4  <~~ Doub[0x00100310], (f:lsu) ft2  <-- 4301.5241160
       0     4464        M                                           #; (f:lsu) ft3  <-- 4784.9522850
       0     4465        M                                           #; (f:lsu) ft4  <-- 4479.1099740
       0     4471        M 0x800008e0 fadd.d  ft0, ft1, ft0          #; ft1  = 3818.0959470, ft0  = 129193.7116950
       0     4474        M                                           #; (f:fpu) ft0  <-- 133011.8076420
       0     4475        M 0x800008e4 fadd.d  ft0, ft2, ft0          #; ft2  = 4301.5241160, ft0  = 133011.8076420
       0     4478        M                                           #; (f:fpu) ft0  <-- 137313.3317580
       0     4479        M 0x800008e8 fadd.d  ft0, ft3, ft0          #; ft3  = 4784.9522850, ft0  = 137313.3317580
       0     4482        M                                           #; (f:fpu) ft0  <-- 142098.2840430
       0     4483        M 0x800008ec fadd.d  ft0, ft4, ft0          #; ft4  = 4479.1099740, ft0  = 142098.2840430
       0     4484        M 0x800008f0 fld     ft1, 216(a0)           #; ft1  <~~ Doub[0x00100318]
       0     4485        M 0x800008f4 fld     ft2, 224(a0)           #; ft2  <~~ Doub[0x00100320], (f:lsu) ft1  <-- 4765.2205230
       0     4486        M 0x800008f8 fld     ft3, 232(a0)           #; ft3  <~~ Doub[0x00100328], (f:fpu) ft0  <-- 146577.3940170
       0     4487        M 0x800008fc fld     ft4, 240(a0)           #; ft4  <~~ Doub[0x00100330], (f:lsu) ft2  <-- 4094.3406150
       0     4488        M                                           #; (f:lsu) ft3  <-- 4538.3052600
       0     4489        M                                           #; (f:lsu) ft4  <-- 4982.2699050
       0     4495        M 0x80000900 fadd.d  ft0, ft1, ft0          #; ft1  = 4765.2205230, ft0  = 146577.3940170
       0     4498        M                                           #; (f:fpu) ft0  <-- 151342.6145400
       0     4499        M 0x80000904 fadd.d  ft0, ft2, ft0          #; ft2  = 4094.3406150, ft0  = 151342.6145400
       0     4502        M                                           #; (f:fpu) ft0  <-- 155436.9551550
       0     4503        M 0x80000908 fadd.d  ft0, ft3, ft0          #; ft3  = 4538.3052600, ft0  = 155436.9551550
       0     4506        M                                           #; (f:fpu) ft0  <-- 159975.2604150
       0     4507        M 0x8000090c fadd.d  ft0, ft4, ft0          #; ft4  = 4982.2699050, ft0  = 159975.2604150
       0     4508        M 0x80000910 fld     ft1, 248(a0)           #; ft1  <~~ Doub[0x00100338]
       0     4509        M 0x80000914 fld     ft2, 256(a0)           #; ft2  <~~ Doub[0x00100340], (f:lsu) ft1  <-- 5426.2345500
       0     4510        M 0x80000918 fld     ft3, 264(a0)           #; ft3  <~~ Doub[0x00100348], (f:fpu) ft0  <-- 164957.5303200
       0     4511        M 0x8000091c fld     ft4, 272(a0)           #; ft4  <~~ Doub[0x00100350], (f:lsu) ft2  <-- 5870.1991950
       0     4512        M                                           #; (f:lsu) ft3  <-- 4340.9876400
       0     4513        M                                           #; (f:lsu) ft4  <-- 3403.7289450
       0     4519        M 0x80000920 fadd.d  ft0, ft1, ft0          #; ft1  = 5426.2345500, ft0  = 164957.5303200
       0     4522        M                                           #; (f:fpu) ft0  <-- 170383.7648700
       0     4523        M 0x80000924 fadd.d  ft0, ft2, ft0          #; ft2  = 5870.1991950, ft0  = 170383.7648700
       0     4526        M                                           #; (f:fpu) ft0  <-- 176253.9640650
       0     4527        M 0x80000928 fadd.d  ft0, ft3, ft0          #; ft3  = 4340.9876400, ft0  = 176253.9640650
       0     4529        M 0x80000930 li      a2, 280                #; (wrb) a2  <-- 280
       0     4530        M 0x80000934 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 180594.9517050
       0     4531        M 0x80000938 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x7ffff938
                         M 0x8000092c fadd.d  fs0, ft4, ft0          #; ft4  = 3403.7289450, ft0  = 180594.9517050
       0     4532        M 0x8000093c jalr    ra, ra, 1736           #; ra  = 0x7ffff938, (wrb) ra  <-- 0x80000940, goto 0x80000000
       0     4534        M                                           #; (f:fpu) fs0  <-- 183998.6806500
       0     4552        M 0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4553        M 0x80000004 mv      a4, a0                 #; a0  = 0x00100240, (wrb) a4  <-- 0x00100240
       0     4554        M 0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 280, not taken
       0     4555        M 0x8000000c andi    a5, a4, 15             #; a4  = 0x00100240, (wrb) a5  <-- 0
       0     4564        M 0x80000010 bnez    a5, pc + 160           #; a5  = 0, not taken
       0     4565        M 0x80000014 bnez    a1, pc + 132           #; a1  = 0, not taken
       0     4566        M 0x80000018 andi    a3, a2, -16            #; a2  = 280, (wrb) a3  <-- 272
       0     4567        M 0x8000001c andi    a2, a2, 15             #; a2  = 280, (wrb) a2  <-- 8
       0     4576        M 0x80000020 add     a3, a3, a4             #; a3  = 272, a4  = 0x00100240, (wrb) a3  <-- 0x00100350
       0     4577        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100240, 0 ~~> Word[0x00100240]
       0     4578        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100240, 0 ~~> Word[0x00100244]
       0     4579        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100240, 0 ~~> Word[0x00100248]
       0     4588        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100240, 0 ~~> Word[0x0010024c]
       0     4589        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100240, (wrb) a4  <-- 0x00100250
       0     4590        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100250, a3  = 0x00100350, taken, goto 0x80000024
       0     4591        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100250, 0 ~~> Word[0x00100250]
       0     4592        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100250, 0 ~~> Word[0x00100254]
       0     4593        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100250, 0 ~~> Word[0x00100258]
       0     4594        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100250, 0 ~~> Word[0x0010025c]
       0     4595        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100250, (wrb) a4  <-- 0x00100260
       0     4596        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100260, a3  = 0x00100350, taken, goto 0x80000024
       0     4597        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100260, 0 ~~> Word[0x00100260]
       0     4598        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100260, 0 ~~> Word[0x00100264]
       0     4599        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100260, 0 ~~> Word[0x00100268]
       0     4600        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100260, 0 ~~> Word[0x0010026c]
       0     4601        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100260, (wrb) a4  <-- 0x00100270
       0     4602        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100270, a3  = 0x00100350, taken, goto 0x80000024
       0     4603        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100270, 0 ~~> Word[0x00100270]
       0     4604        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100270, 0 ~~> Word[0x00100274]
       0     4605        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100270, 0 ~~> Word[0x00100278]
       0     4606        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100270, 0 ~~> Word[0x0010027c]
       0     4607        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100270, (wrb) a4  <-- 0x00100280
       0     4608        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100280, a3  = 0x00100350, taken, goto 0x80000024
       0     4609        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100280, 0 ~~> Word[0x00100280]
       0     4610        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100280, 0 ~~> Word[0x00100284]
       0     4611        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100280, 0 ~~> Word[0x00100288]
       0     4612        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100280, 0 ~~> Word[0x0010028c]
       0     4613        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100280, (wrb) a4  <-- 0x00100290
       0     4614        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100290, a3  = 0x00100350, taken, goto 0x80000024
       0     4615        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100290, 0 ~~> Word[0x00100290]
       0     4616        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100290, 0 ~~> Word[0x00100294]
       0     4617        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100290, 0 ~~> Word[0x00100298]
       0     4618        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100290, 0 ~~> Word[0x0010029c]
       0     4619        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100290, (wrb) a4  <-- 0x001002a0
       0     4620        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002a0, a3  = 0x00100350, taken, goto 0x80000024
       0     4621        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002a0, 0 ~~> Word[0x001002a0]
       0     4622        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002a0, 0 ~~> Word[0x001002a4]
       0     4623        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002a0, 0 ~~> Word[0x001002a8]
       0     4624        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002a0, 0 ~~> Word[0x001002ac]
       0     4625        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x001002a0, (wrb) a4  <-- 0x001002b0
       0     4626        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002b0, a3  = 0x00100350, taken, goto 0x80000024
       0     4627        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002b0, 0 ~~> Word[0x001002b0]
       0     4628        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002b0, 0 ~~> Word[0x001002b4]
       0     4629        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002b0, 0 ~~> Word[0x001002b8]
       0     4630        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002b0, 0 ~~> Word[0x001002bc]
       0     4631        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x001002b0, (wrb) a4  <-- 0x001002c0
       0     4632        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002c0, a3  = 0x00100350, taken, goto 0x80000024
       0     4633        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002c0, 0 ~~> Word[0x001002c0]
       0     4634        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002c0, 0 ~~> Word[0x001002c4]
       0     4635        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002c0, 0 ~~> Word[0x001002c8]
       0     4636        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002c0, 0 ~~> Word[0x001002cc]
       0     4637        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x001002c0, (wrb) a4  <-- 0x001002d0
       0     4638        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002d0, a3  = 0x00100350, taken, goto 0x80000024
       0     4639        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002d0, 0 ~~> Word[0x001002d0]
       0     4640        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002d0, 0 ~~> Word[0x001002d4]
       0     4641        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002d0, 0 ~~> Word[0x001002d8]
       0     4642        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002d0, 0 ~~> Word[0x001002dc]
       0     4643        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x001002d0, (wrb) a4  <-- 0x001002e0
       0     4644        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002e0, a3  = 0x00100350, taken, goto 0x80000024
       0     4645        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002e0, 0 ~~> Word[0x001002e0]
       0     4646        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002e0, 0 ~~> Word[0x001002e4]
       0     4647        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002e0, 0 ~~> Word[0x001002e8]
       0     4648        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002e0, 0 ~~> Word[0x001002ec]
       0     4649        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x001002e0, (wrb) a4  <-- 0x001002f0
       0     4650        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002f0, a3  = 0x00100350, taken, goto 0x80000024
       0     4651        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002f0, 0 ~~> Word[0x001002f0]
       0     4652        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002f0, 0 ~~> Word[0x001002f4]
       0     4653        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002f0, 0 ~~> Word[0x001002f8]
       0     4654        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002f0, 0 ~~> Word[0x001002fc]
       0     4655        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x001002f0, (wrb) a4  <-- 0x00100300
       0     4656        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100300, a3  = 0x00100350, taken, goto 0x80000024
       0     4657        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100300, 0 ~~> Word[0x00100300]
       0     4658        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100300, 0 ~~> Word[0x00100304]
       0     4659        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100300, 0 ~~> Word[0x00100308]
       0     4660        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100300, 0 ~~> Word[0x0010030c]
       0     4661        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100300, (wrb) a4  <-- 0x00100310
       0     4662        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100310, a3  = 0x00100350, taken, goto 0x80000024
       0     4663        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100310, 0 ~~> Word[0x00100310]
       0     4664        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100310, 0 ~~> Word[0x00100314]
       0     4665        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100310, 0 ~~> Word[0x00100318]
       0     4666        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100310, 0 ~~> Word[0x0010031c]
       0     4667        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100310, (wrb) a4  <-- 0x00100320
       0     4668        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100320, a3  = 0x00100350, taken, goto 0x80000024
       0     4669        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100320, 0 ~~> Word[0x00100320]
       0     4670        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100320, 0 ~~> Word[0x00100324]
       0     4671        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100320, 0 ~~> Word[0x00100328]
       0     4672        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100320, 0 ~~> Word[0x0010032c]
       0     4673        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100320, (wrb) a4  <-- 0x00100330
       0     4674        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100330, a3  = 0x00100350, taken, goto 0x80000024
       0     4675        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100330, 0 ~~> Word[0x00100330]
       0     4676        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100330, 0 ~~> Word[0x00100334]
       0     4677        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100330, 0 ~~> Word[0x00100338]
       0     4678        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100330, 0 ~~> Word[0x0010033c]
       0     4679        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100330, (wrb) a4  <-- 0x00100340
       0     4680        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100340, a3  = 0x00100350, taken, goto 0x80000024
       0     4681        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100340, 0 ~~> Word[0x00100340]
       0     4682        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100340, 0 ~~> Word[0x00100344]
       0     4683        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100340, 0 ~~> Word[0x00100348]
       0     4684        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100340, 0 ~~> Word[0x0010034c]
       0     4685        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100340, (wrb) a4  <-- 0x00100350
       0     4686        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100350, a3  = 0x00100350, not taken
       0     4687        M 0x8000003c bnez    a2, pc + 8             #; a2  = 8, taken, goto 0x80000044
       0     4699        M 0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 8, (wrb) a3  <-- 7
       0     4700        M 0x80000048 slli    a3, a3, 2              #; a3  = 7, (wrb) a3  <-- 28
       0     4701        M 0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
       0     4711        M 0x80000050 add     a3, a3, t0             #; a3  = 28, t0  = 0x8000004c, (wrb) a3  <-- 0x80000068
       0     4712        M 0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000068, goto 0x80000074
       0     4734        M 0x80000074 sb      a1, 7(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100357]
       0     4735        M 0x80000078 sb      a1, 6(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100356]
       0     4736        M 0x8000007c sb      a1, 5(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100355]
       0     4746        M 0x80000080 sb      a1, 4(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100354]
       0     4747        M 0x80000084 sb      a1, 3(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100353]
       0     4748        M 0x80000088 sb      a1, 2(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100352]
       0     4749        M 0x8000008c sb      a1, 1(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100351]
       0     4758        M 0x80000090 sb      a1, 0(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100350]
       0     4759        M 0x80000094 ret                            #; ra  = 0x80000940, goto 0x80000940
       0     4772        M 0x80000940 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002940
       0     4773        M 0x80000944 addi    a0, a0, 1568           #; a0  = 0x80002940, (wrb) a0  <-- 0x80002f60
       0     4776        M 0x80000948 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f60]
       0     4785        M                                           #; (f:lsu) ft0  <-- -183998.6806500
       0     4786        M 0x80000958 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                         M 0x8000094c fadd.d  ft0, fs0, ft0          #; fs0  = 183998.6806500, ft0  = -183998.6806500
       0     4789        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft0  <-- -0.0000000
       0     4790        M 0x8000095c lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                         M 0x80000950 fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
       0     4791        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4792        M 0x80000954 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
       0     4793        M                                           #; (lsu) a3  <-- 0
       0     4796        M 0x80000960 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002960
       0     4797        M 0x80000964 addi    a0, a0, 885            #; a0  = 0x80002960, (wrb) a0  <-- 0x80002cd5
       0     4798        M 0x80000968 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000968
       0     4799        M 0x8000096c jalr    ra, ra, 48             #; ra  = 0x80000968, (wrb) ra  <-- 0x80000970, goto 0x80000998
       0     4810        M 0x80000998 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     4811        M 0x8000099c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000970 ~~> Word[0x0011ff1c]
       0     4813        M 0x800009a0 mv      t0, a0                 #; a0  = 0x80002cd5, (wrb) t0  <-- 0x80002cd5
       0     4814        M 0x800009a4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff3c]
       0     4815        M 0x800009a8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 48 ~~> Word[0x0011ff38]
       0     4816        M 0x800009ac sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
       0     4825        M 0x800009b0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0x00100350 ~~> Word[0x0011ff30]
       0     4826        M 0x800009b4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     4827        M 0x800009b8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     4828        M 0x800009bc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     4837        M 0x800009c0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     4838        M 0x800009c4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     4839        M 0x800009c8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800019c8
       0     4840        M 0x800009cc addi    a0, a0, -988           #; a0  = 0x800019c8, (wrb) a0  <-- 0x800015ec
       0     4849        M 0x800009d0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     4850        M 0x800009d4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     4851        M 0x800009d8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     4852        M 0x800009dc mv      a3, t0                 #; t0  = 0x80002cd5, (wrb) a3  <-- 0x80002cd5
       0     4861        M 0x800009e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e0
       0     4862        M 0x800009e4 jalr    ra, ra, 20             #; ra  = 0x800009e0, (wrb) ra  <-- 0x800009e8, goto 0x800009f4
       0     4873        M 0x800009f4 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     4874        M 0x800009f8 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009e8 ~~> Word[0x0011ff0c]
       0     4875        M 0x800009fc sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100320 ~~> Word[0x0011ff08]
       0     4885        M 0x80000a00 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100350 ~~> Word[0x0011ff04]
       0     4886        M 0x80000a04 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     4887        M 0x80000a08 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     4888        M 0x80000a0c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     4897        M 0x80000a10 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     4898        M 0x80000a14 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     4899        M 0x80000a18 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     4900        M 0x80000a1c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     4909        M 0x80000a20 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     4910        M 0x80000a24 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     4911        M 0x80000a28 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     4912        M 0x80000a2c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     4921        M 0x80000a30 mv      s0, a3                 #; a3  = 0x80002cd5, (wrb) s0  <-- 0x80002cd5
       0     4922        M 0x80000a34 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     4923        M 0x80000a38 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     4924        M 0x80000a3c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     4933        M 0x80000a40 mv      s2, a0                 #; a0  = 0x800015ec, (wrb) s2  <-- 0x800015ec
       0     4934        M 0x80000a44 j       pc + 0xc               #; goto 0x80000a50
       0     4945        M 0x80000a50 li      s8, 0                  #; (wrb) s8  <-- 0
       0     4946        M 0x80000a54 li      s6, 37                 #; (wrb) s6  <-- 37
       0     4947        M 0x80000a58 li      s11, 16                #; (wrb) s11 <-- 16
       0     4948        M 0x80000a5c li      s7, 46                 #; (wrb) s7  <-- 46
       0     4957        M 0x80000a60 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     4958        M 0x80000a64 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     4959        M 0x80000a68 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     4960        M 0x80000a6c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     4969        M 0x80000a70 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     4970        M 0x80000a74 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     4971        M 0x80000a78 addi    s10, s0, 2             #; s0  = 0x80002cd5, (wrb) s10 <-- 0x80002cd7
       0     4972        M 0x80000a7c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     4981        M 0x80000a80 li      s8, 10                 #; (wrb) s8  <-- 10
       0     4982        M 0x80000a84 lbu     a0, 0(s0)              #; s0  = 0x80002cd5, a0  <~~ Byte[0x80002cd5]
       0     4993        M                                           #; (lsu) a0  <-- 101
       0     4994        M 0x80000a88 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     4995        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     4996        M 0x80000a90 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     4997        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4998        M 0x80000a98 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     4999        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5008        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5031        M 0x800015ec beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5043        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5044        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5045        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5046        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5055        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5056        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5057        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5068        M                                           #; (lsu) a4  <-- 0
       0     5069        M 0x8000160c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5070        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 1 ~~> Word[0x8000301c]
       0     5071        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 0, (wrb) a4  <-- 0x8000301c
       0     5072        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301c, 101 ~~> Byte[0x80003064]
       0     5073        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5094        M                                           #; (lsu) a4  <-- 1
       0     5095        M 0x80001620 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5096        M 0x80001624 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5097        M 0x80001628 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5098        M 0x8000162c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5099        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5100        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5122        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5136        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd5, (wrb) s0  <-- 0x80002cd6
       0     5137        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cd7, (wrb) s10 <-- 0x80002cd8
       0     5138        M 0x80000aac mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5139        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd6, a0  <~~ Byte[0x80002cd6]
       0     5150        M                                           #; (lsu) a0  <-- 114
       0     5151        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a8c
       0     5152        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5155        M 0x80000a90 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5156        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5157        M 0x80000a98 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5158        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5159        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5162        M 0x800015ec beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5165        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5166        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5167        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5168        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5169        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5170        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5171        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5172        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5183        M                                           #; (lsu) a4  <-- 1
       0     5184        M 0x8000160c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5185        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 2 ~~> Word[0x8000301c]
       0     5186        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 1, (wrb) a4  <-- 0x8000301d
       0     5187        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301d, 114 ~~> Byte[0x80003065]
       0     5188        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5209        M                                           #; (lsu) a4  <-- 2
       0     5210        M 0x80001620 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5211        M 0x80001624 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5212        M 0x80001628 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5213        M 0x8000162c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5214        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5215        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5219        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5224        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd6, (wrb) s0  <-- 0x80002cd7
       0     5225        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cd8, (wrb) s10 <-- 0x80002cd9
       0     5226        M 0x80000aac mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5227        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd7, a0  <~~ Byte[0x80002cd7]
       0     5238        M                                           #; (lsu) a0  <-- 114
       0     5239        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a8c
       0     5240        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5243        M 0x80000a90 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5244        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5245        M 0x80000a98 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5246        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5247        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5250        M 0x800015ec beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5253        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5254        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5255        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5256        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5257        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5258        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5259        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5260        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5271        M                                           #; (lsu) a4  <-- 2
       0     5272        M 0x8000160c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5273        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 3 ~~> Word[0x8000301c]
       0     5274        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 2, (wrb) a4  <-- 0x8000301e
       0     5275        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301e, 114 ~~> Byte[0x80003066]
       0     5276        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5297        M                                           #; (lsu) a4  <-- 3
       0     5298        M 0x80001620 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5299        M 0x80001624 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5300        M 0x80001628 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5301        M 0x8000162c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5302        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5303        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5307        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5312        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd7, (wrb) s0  <-- 0x80002cd8
       0     5313        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cd9, (wrb) s10 <-- 0x80002cda
       0     5314        M 0x80000aac mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5315        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd8, a0  <~~ Byte[0x80002cd8]
       0     5326        M                                           #; (lsu) a0  <-- 111
       0     5327        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a8c
       0     5328        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     5331        M 0x80000a90 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5332        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5333        M 0x80000a98 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5334        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5335        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5338        M 0x800015ec beqz    a0, pc + 168           #; a0  = 111, not taken
       0     5341        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5342        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5343        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5344        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5345        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5346        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5347        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5348        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5359        M                                           #; (lsu) a4  <-- 3
       0     5360        M 0x8000160c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5361        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 4 ~~> Word[0x8000301c]
       0     5362        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 3, (wrb) a4  <-- 0x8000301f
       0     5363        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301f, 111 ~~> Byte[0x80003067]
       0     5364        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5385        M                                           #; (lsu) a4  <-- 4
       0     5386        M 0x80001620 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5387        M 0x80001624 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5388        M 0x80001628 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     5389        M 0x8000162c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     5390        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5391        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5395        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5400        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd8, (wrb) s0  <-- 0x80002cd9
       0     5401        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cda, (wrb) s10 <-- 0x80002cdb
       0     5402        M 0x80000aac mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5403        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd9, a0  <~~ Byte[0x80002cd9]
       0     5414        M                                           #; (lsu) a0  <-- 114
       0     5415        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a8c
       0     5416        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5419        M 0x80000a90 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5420        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5421        M 0x80000a98 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5422        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5423        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5426        M 0x800015ec beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5429        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5430        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5431        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5432        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5433        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5434        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5435        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5436        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5447        M                                           #; (lsu) a4  <-- 4
       0     5448        M 0x8000160c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5449        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 5 ~~> Word[0x8000301c]
       0     5450        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 4, (wrb) a4  <-- 0x80003020
       0     5451        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003020, 114 ~~> Byte[0x80003068]
       0     5452        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5473        M                                           #; (lsu) a4  <-- 5
       0     5474        M 0x80001620 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5475        M 0x80001624 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5476        M 0x80001628 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5477        M 0x8000162c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5478        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5479        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5483        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5488        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd9, (wrb) s0  <-- 0x80002cda
       0     5489        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cdb, (wrb) s10 <-- 0x80002cdc
       0     5490        M 0x80000aac mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5491        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cda, a0  <~~ Byte[0x80002cda]
       0     5502        M                                           #; (lsu) a0  <-- 32
       0     5503        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a8c
       0     5504        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5507        M 0x80000a90 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5508        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5509        M 0x80000a98 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5510        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5511        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5514        M 0x800015ec beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5517        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5518        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5519        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5520        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5521        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5522        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5523        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5524        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5535        M                                           #; (lsu) a4  <-- 5
       0     5536        M 0x8000160c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     5537        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 6 ~~> Word[0x8000301c]
       0     5538        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 5, (wrb) a4  <-- 0x80003021
       0     5539        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003021, 32 ~~> Byte[0x80003069]
       0     5540        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5561        M                                           #; (lsu) a4  <-- 6
       0     5562        M 0x80001620 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     5563        M 0x80001624 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     5564        M 0x80001628 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5565        M 0x8000162c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5566        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5567        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5571        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5576        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cda, (wrb) s0  <-- 0x80002cdb
       0     5577        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cdc, (wrb) s10 <-- 0x80002cdd
       0     5578        M 0x80000aac mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     5579        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cdb, a0  <~~ Byte[0x80002cdb]
       0     5590        M                                           #; (lsu) a0  <-- 61
       0     5591        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a8c
       0     5592        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     5595        M 0x80000a90 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     5596        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5597        M 0x80000a98 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     5598        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5599        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5602        M 0x800015ec beqz    a0, pc + 168           #; a0  = 61, not taken
       0     5605        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5606        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5607        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5608        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5609        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5610        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5611        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5612        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5623        M                                           #; (lsu) a4  <-- 6
       0     5624        M 0x8000160c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     5625        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 7 ~~> Word[0x8000301c]
       0     5626        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 6, (wrb) a4  <-- 0x80003022
       0     5627        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003022, 61 ~~> Byte[0x8000306a]
       0     5628        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5649        M                                           #; (lsu) a4  <-- 7
       0     5650        M 0x80001620 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     5651        M 0x80001624 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     5652        M 0x80001628 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     5653        M 0x8000162c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     5654        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5655        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5659        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5664        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cdb, (wrb) s0  <-- 0x80002cdc
       0     5665        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cdd, (wrb) s10 <-- 0x80002cde
       0     5666        M 0x80000aac mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     5667        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cdc, a0  <~~ Byte[0x80002cdc]
       0     5678        M                                           #; (lsu) a0  <-- 32
       0     5679        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a8c
       0     5680        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5683        M 0x80000a90 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     5684        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5685        M 0x80000a98 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     5686        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5687        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     5690        M 0x800015ec beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5693        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5694        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5695        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5696        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     5697        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     5698        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5699        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5700        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5711        M                                           #; (lsu) a4  <-- 7
       0     5712        M 0x8000160c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     5713        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 8 ~~> Word[0x8000301c]
       0     5714        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 7, (wrb) a4  <-- 0x80003023
       0     5715        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003023, 32 ~~> Byte[0x8000306b]
       0     5716        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5737        M                                           #; (lsu) a4  <-- 8
       0     5738        M 0x80001620 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     5739        M 0x80001624 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     5740        M 0x80001628 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5741        M 0x8000162c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5742        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5743        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     5747        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     5752        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cdc, (wrb) s0  <-- 0x80002cdd
       0     5753        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cde, (wrb) s10 <-- 0x80002cdf
       0     5754        M 0x80000aac mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     5755        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cdd, a0  <~~ Byte[0x80002cdd]
       0     5766        M                                           #; (lsu) a0  <-- 37
       0     5767        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a8c
       0     5768        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000abc
       0     5769        M 0x80000abc li      s0, 0                  #; (wrb) s0  <-- 0
       0     5782        M 0x80000ac0 j       pc + 0x10              #; goto 0x80000ad0
       0     5794        M 0x80000ad0 lbu     a0, -1(s10)            #; s10 = 0x80002cdf, a0  <~~ Byte[0x80002cde]
       0     5805        M                                           #; (lsu) a0  <-- 102
       0     5806        M 0x80000ad4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     5807        M 0x80000ad8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b10
       0     5819        M 0x80000b10 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     5820        M 0x80000b14 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     5821        M 0x80000b18 addi    a1, s10, -1            #; s10 = 0x80002cdf, (wrb) a1  <-- 0x80002cde
       0     5822        M 0x80000b1c li      a3, 9                  #; (wrb) a3  <-- 9
       0     5831        M 0x80000b20 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b9c
       0     5854        M 0x80000b9c li      a2, 42                 #; (wrb) a2  <-- 42
       0     5866        M 0x80000ba0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bf0
       0     5889        M 0x80000bf0 li      s6, 0                  #; (wrb) s6  <-- 0
       0     5890        M 0x80000bf4 mv      s10, a1                #; a1  = 0x80002cde, (wrb) s10 <-- 0x80002cde
       0     5891        M 0x80000bf8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     5892        M 0x80000bfc li      s7, 0                  #; (wrb) s7  <-- 0
       0     5912        M 0x80000c00 j       pc + 0xc               #; goto 0x80000c0c
       0     5913        M 0x80000c0c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     5925        M 0x80000c10 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     5926        M 0x80000c14 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     5927        M 0x80000c18 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     5928        M 0x80000c1c li      a2, 9                  #; (wrb) a2  <-- 9
       0     5937        M 0x80000c20 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c84
       0     5960        M 0x80000c84 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     5961        M 0x80000c88 li      a2, 83                 #; (wrb) a2  <-- 83
       0     5962        M 0x80000c8c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     5972        M 0x80000c90 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     5973        M 0x80000c94 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c94
       0     5974        M 0x80000c98 addi    a2, a2, 192            #; a2  = 0x80002c94, (wrb) a2  <-- 0x80002d54
       0     5975        M 0x80000c9c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d54, (wrb) a1  <-- 0x80002e58
       0     5984        M 0x80000ca0 lw      a2, 0(a1)              #; a1  = 0x80002e58, a2  <~~ Word[0x80002e58]
       0     5985        M 0x80000ca4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     5986        M 0x80000ca8 li      s8, 16                 #; (wrb) s8  <-- 16
       0     5995        M                                           #; (lsu) a2  <-- 0x80000cdc
       0     5996        M 0x80000cac jr      a2                     #; a2  = 0x80000cdc, goto 0x80000cdc
       0     6008        M 0x80000cdc li      a1, 70                 #; (wrb) a1  <-- 70
       0     6020        M 0x80000ce0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ce8
       0     6021        M 0x80000ce8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     6022        M 0x80000cec andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     6033        M 0x80000cf4 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     6034        M 0x80000cf8 mv      a0, s2                 #; s2  = 0x800015ec, (wrb) a0  <-- 0x800015ec
                         M 0x80000cf0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     6035        M 0x80000cfc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     6044        M 0x80000d00 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6045        M 0x80000d04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6046        M 0x80000d08 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6047        M 0x80000d0c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6056        M 0x80000d10 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6057        M 0x80000d14 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d14
       0     6058        M 0x80000d18 jalr    ra, ra, -1656          #; ra  = 0x80001d14, (wrb) ra  <-- 0x80000d1c, goto 0x8000169c
       0     6070        M 0x8000169c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     6073        M 0x800016a0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d1c ~~> Word[0x0011fe9c]
       0     6074        M 0x800016a4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     6075        M 0x800016a8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     6076        M 0x800016ac sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015ec ~~> Word[0x0011fe90]
       0     6085        M 0x800016b0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     6086        M 0x800016b4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6087        M 0x800016b8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     6088        M 0x800016bc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     6097        M 0x800016c0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     6098        M 0x800016c4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     6099        M 0x800016c8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     6100        M 0x800016cc sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002cde ~~> Word[0x0011fe70]
       0     6111        M 0x800016d0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     6112        M 0x800016dc auipc   s1, 0x2                #; (wrb) s1  <-- 0x800036dc
                         M 0x800016d4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     6113        M 0x800016d8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     6121        M 0x800016e0 addi    s1, s1, -1900          #; s1  = 0x800036dc, (wrb) s1  <-- 0x80002f70
       0     6124        M 0x800016ec mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x800016e4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f70]
       0     6133        M 0x800016f0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6134        M 0x800016f4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800016e8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     6135        M 0x800016f8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     6136        M 0x800016fc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     6145        M 0x80001700 mv      s7, a0                 #; a0  = 0x800015ec, (wrb) s7  <-- 0x800015ec
       0     6146        M 0x80001704 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017f4
       0     6169        M 0x800017f8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027f8
       0     6170        M 0x800017fc addi    a0, a0, 1920           #; a0  = 0x800027f8, (wrb) a0  <-- 0x80002f78
                         M 0x800017f4 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     6171        M                                           #; (f:fpu) fs0  <-- 0.0
       0     6182        M 0x80001800 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f78]
       0     6191        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6192        M 0x80001804 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6194        M                                           #; (acc) t3  <-- 0x00051e63
       0     6195        M 0x80001808 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001824
       0     6207        M 0x80001824 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002824
       0     6208        M 0x80001828 addi    a0, a0, 1884           #; a0  = 0x80002824, (wrb) a0  <-- 0x80002f80
       0     6211        M 0x8000182c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f80]
       0     6219        M 0x80001830 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002830
       0     6220        M 0x80001834 addi    a0, a0, 1880           #; a0  = 0x80002830, (wrb) a0  <-- 0x80002f88
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6223        M 0x80001838 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f88]
       0     6224        M 0x8000183c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     6232        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6233        M 0x80001840 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     6235        M                                           #; (acc) a0  <-- 0x00b57533
       0     6236        M 0x80001844 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6237        M 0x80001848 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001944
       0     6254        M 0x80001944 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6255        M 0x80001948 li      s8, 6                  #; (wrb) s8  <-- 6
       0     6256        M 0x8000194c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001954
       0     6266        M 0x80001954 li      a0, 10                 #; (wrb) a0  <-- 10
       0     6268        M 0x8000195c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001994
       0     6269        M 0x80001958 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     6270        M                                           #; (f:fpu) fs2  <-- 0.0
       0     6289        M 0x80001994 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6290        M 0x80001998 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6291        M 0x8000199c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000299c
       0     6301        M 0x800019a0 addi    a1, a1, 1292           #; a1  = 0x8000299c, (wrb) a1  <-- 0x80002ea8
       0     6302        M 0x800019a4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002ea8, (wrb) a0  <-- 0x80002ed8
       0     6305        M 0x800019a8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ed8]
       0     6306        M 0x800019ac fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     6314        M 0x800019b0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     6315        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6316        M 0x800019bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029bc
                         M 0x800019b4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     6319        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6320        M 0x800019b8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     6323        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6325        M 0x800019c0 addi    a0, a0, 1492           #; a0  = 0x800029bc, (wrb) a0  <-- 0x80002f90
       0     6328        M 0x800019c4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f90]
       0     6329        M 0x800019c8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     6331        M                                           #; (acc) gp  <-- 0xd21501d3
       0     6333        M 0x800019cc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     6334        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6337        M                                           #; (f:lsu) ft0  <-- 0.5
       0     6339        M 0x800019d0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     6342        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6343        M 0x800019d4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6346        M 0x800019d8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800019f8
       0     6361        M 0x800019f8 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6363        M                                           #; (acc) s4  <-- 0x00059a63
       0     6364        M 0x800019fc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a10
       0     6384        M 0x80001a14 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001a10 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6385        M 0x80001a18 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     6386        M 0x80001a1c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6395        M 0x80001a20 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     6396        M 0x80001a24 li      t0, 32                 #; (wrb) t0  <-- 32
       0     6397        M 0x80001a28 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     6398        M 0x80001a2c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     6407        M 0x80001a30 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     6408        M 0x80001a34 li      a6, 10                 #; (wrb) a6  <-- 10
       0     6409        M 0x80001a38 li      a7, 9                  #; (wrb) a7  <-- 9
       0     6410        M 0x80001a3c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     6419        M 0x80001a40 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     6420        M 0x80001a44 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     6423        M                                           #; (acc) a0  <-- 0x00355513
       0     6424        M 0x80001a48 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     6425        M 0x80001a4c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     6431        M 0x80001a50 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     6432        M 0x80001a54 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     6433        M 0x80001a58 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     6434        M 0x80001a5c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     6443        M 0x80001a60 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     6444        M 0x80001a64 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     6445        M 0x80001a68 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     6446        M 0x80001a6c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     6457        M 0x80001a70 li      a3, 30                 #; (wrb) a3  <-- 30
       0     6458        M 0x80001a74 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     6459        M 0x80001a78 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     6460        M 0x80001a7c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     6469        M 0x80001a80 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     6470        M 0x80001a84 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     6471        M 0x80001a88 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     6472        M 0x80001a8c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     6481        M 0x80001a90 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     6482        M 0x80001a94 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     6483        M 0x80001a98 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     6484        M 0x80001a9c li      a1, 31                 #; (wrb) a1  <-- 31
       0     6493        M 0x80001aa0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     6494        M 0x80001aa4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     6495        M 0x80001aa8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     6496        M 0x80001aac bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001ab4
       0     6505        M 0x80001ab4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     6506        M 0x80001ab8 li      a1, 48                 #; (wrb) a1  <-- 48
       0     6507        M 0x80001abc auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7ffffabc
       0     6517        M 0x80001ac0 jalr    ra, ra, 1348           #; ra  = 0x7ffffabc, (wrb) ra  <-- 0x80001ac4, goto 0x80000000
       0     6531        M 0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
       0     6532        M 0x80000004 mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     6533        M 0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x80000044
       0     6536        M 0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     6537        M 0x80000048 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     6538        M 0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
       0     6539        M 0x80000050 add     a3, a3, t0             #; a3  = 40, t0  = 0x8000004c, (wrb) a3  <-- 0x80000074
       0     6540        M 0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000074, goto 0x80000080
       0     6544        M 0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     6545        M 0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     6546        M 0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     6547        M 0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     6548        M 0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     6549        M 0x80000094 ret                            #; ra  = 0x80001ac4, goto 0x80001ac4
       0     6553        M 0x80001ac4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6554        M 0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     6555        M 0x80001acc sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     6556        M 0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     6557        M 0x80001ad4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     6558        M 0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6559        M 0x80001adc addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6568        M 0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
       0     6569        M 0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     6570        M 0x80001acc sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     6571        M 0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     6572        M 0x80001ad4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     6573        M 0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6574        M 0x80001adc addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     6575        M 0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
       0     6576        M 0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     6577        M 0x80001acc sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     6578        M 0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     6579        M 0x80001ad4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     6580        M 0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6581        M 0x80001adc addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     6582        M 0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
       0     6583        M 0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     6584        M 0x80001acc sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     6585        M 0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     6586        M 0x80001ad4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     6587        M 0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6588        M 0x80001adc addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     6589        M 0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
       0     6590        M 0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     6591        M 0x80001acc sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     6592        M 0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     6593        M 0x80001ad4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     6594        M 0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     6595        M 0x80001adc addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     6596        M 0x80001ae0 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     6597        M 0x80001ae4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     6598        M 0x80001ae8 j       pc + 0x28              #; goto 0x80001b10
       0     6609        M 0x80001b10 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     6610        M 0x80001b14 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     6611        M 0x80001b18 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6612        M 0x80001b1c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     6621        M 0x80001b20 li      a1, 46                 #; (wrb) a1  <-- 46
       0     6622        M 0x80001b24 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     6623        M 0x80001b28 j       pc + 0x8               #; goto 0x80001b30
       0     6633        M 0x80001b30 li      a0, 32                 #; (wrb) a0  <-- 32
       0     6634        M 0x80001b34 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     6635        M 0x80001b38 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     6636        M 0x80001b3c li      t0, 32                 #; (wrb) t0  <-- 32
       0     6646        M 0x80001b44 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001b40 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     6647        M 0x80001b48 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     6648        M 0x80001b4c li      a6, 10                 #; (wrb) a6  <-- 10
       0     6657        M 0x80001b50 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     6658        M 0x80001b54 li      a4, 18                 #; (wrb) a4  <-- 18
       0     6659        M 0x80001b58 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     6660        M 0x80001b5c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     6669        M 0x80001b60 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     6670        M 0x80001b64 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     6671        M 0x80001b68 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     6672        M 0x80001b6c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     6681        M 0x80001b70 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     6682        M 0x80001b74 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     6683        M 0x80001b78 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     6684        M 0x80001b7c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     6693        M 0x80001b80 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     6694        M 0x80001b84 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     6695        M 0x80001b88 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     6696        M 0x80001b8c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     6705        M 0x80001b90 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     6706        M 0x80001b94 j       pc + 0x8               #; goto 0x80001b9c
       0     6707        M 0x80001b9c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     6719        M 0x80001ba0 li      a0, 1                  #; (wrb) a0  <-- 1
       0     6720        M 0x80001ba4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c10
       0     6742        M 0x80001c10 li      a0, 31                 #; (wrb) a0  <-- 31
       0     6743        M 0x80001c14 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     6744        M 0x80001c18 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c30
       0     6765        M 0x80001c30 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     6766        M 0x80001c34 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     6767        M 0x80001c38 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     6768        M 0x80001c3c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c68
       0     6788        M 0x80001c68 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     6789        M 0x80001c6c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     6800        M 0x80001c70 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     6801        M 0x80001c74 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     6802        M 0x80001c78 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     6803        M 0x80001c7c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     6812        M 0x80001c80 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001cac
       0     6835        M 0x80001cac srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     6847        M 0x80001cb0 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     6848        M 0x80001cb4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     6849        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     6850        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     6853        M                                           #; (lsu) a0  <-- 48
       0     6859        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     6860        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     6861        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6862        M 0x80001ccc mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     6871        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6872        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     6885        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6888        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6889        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6890        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6891        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     6892        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     6893        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6894        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     6895        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     6906        M                                           #; (lsu) a4  <-- 8
       0     6907        M 0x8000160c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6908        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 9 ~~> Word[0x8000301c]
       0     6909        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 8, (wrb) a4  <-- 0x80003024
       0     6910        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003024, 48 ~~> Byte[0x8000306c]
       0     6911        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     6932        M                                           #; (lsu) a4  <-- 9
       0     6933        M 0x80001620 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6934        M 0x80001624 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6935        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6936        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6937        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6938        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     6942        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     6947        M 0x80001cd8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     6948        M 0x80001cdc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     6950        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001cb8
       0     6953        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     6954        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     6956        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     6957        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     6958        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6959        M 0x80001ccc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     6960        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6961        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     6962        M                                           #; (lsu) a0  <-- 46
       0     6964        M 0x800015ec beqz    a0, pc + 168           #; a0  = 46, not taken
       0     6967        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6968        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6969        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6970        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     6971        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     6972        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6973        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     6974        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     6985        M                                           #; (lsu) a4  <-- 9
       0     6986        M 0x8000160c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     6987        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 10 ~~> Word[0x8000301c]
       0     6988        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 9, (wrb) a4  <-- 0x80003025
       0     6989        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003025, 46 ~~> Byte[0x8000306d]
       0     6990        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7011        M                                           #; (lsu) a4  <-- 10
       0     7012        M 0x80001620 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7013        M 0x80001624 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7014        M 0x80001628 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7015        M 0x8000162c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7016        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7017        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7021        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7026        M 0x80001cd8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7027        M 0x80001cdc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     7029        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001cb8
       0     7032        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     7033        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     7035        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     7036        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7037        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7038        M 0x80001ccc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7039        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7040        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     7041        M                                           #; (lsu) a0  <-- 48
       0     7043        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7046        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7047        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7048        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7049        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7050        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7051        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7052        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7053        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7064        M                                           #; (lsu) a4  <-- 10
       0     7065        M 0x8000160c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7066        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 11 ~~> Word[0x8000301c]
       0     7067        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 10, (wrb) a4  <-- 0x80003026
       0     7068        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003026, 48 ~~> Byte[0x8000306e]
       0     7069        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7090        M                                           #; (lsu) a4  <-- 11
       0     7091        M 0x80001620 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7092        M 0x80001624 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7093        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7094        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7095        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7096        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7100        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7105        M 0x80001cd8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7106        M 0x80001cdc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     7108        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001cb8
       0     7111        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     7112        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     7114        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     7115        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7116        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7117        M 0x80001ccc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7118        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7119        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     7120        M                                           #; (lsu) a0  <-- 48
       0     7122        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7125        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7126        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7127        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7128        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7129        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7130        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7131        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7132        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7143        M                                           #; (lsu) a4  <-- 11
       0     7144        M 0x8000160c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7145        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 12 ~~> Word[0x8000301c]
       0     7146        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 11, (wrb) a4  <-- 0x80003027
       0     7147        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003027, 48 ~~> Byte[0x8000306f]
       0     7148        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7169        M                                           #; (lsu) a4  <-- 12
       0     7170        M 0x80001620 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7171        M 0x80001624 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7172        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7173        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7174        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7175        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7179        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7184        M 0x80001cd8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7185        M 0x80001cdc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7187        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001cb8
       0     7190        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     7191        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     7193        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7194        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7195        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7196        M 0x80001ccc mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7197        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7198        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     7199        M                                           #; (lsu) a0  <-- 48
       0     7201        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7204        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7205        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7206        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7207        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7208        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7209        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7210        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7211        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7222        M                                           #; (lsu) a4  <-- 12
       0     7223        M 0x8000160c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7224        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 13 ~~> Word[0x8000301c]
       0     7225        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 12, (wrb) a4  <-- 0x80003028
       0     7226        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003028, 48 ~~> Byte[0x80003070]
       0     7227        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7248        M                                           #; (lsu) a4  <-- 13
       0     7249        M 0x80001620 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7250        M 0x80001624 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7251        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7252        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7253        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7254        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7258        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7263        M 0x80001cd8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7264        M 0x80001cdc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7266        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001cb8
       0     7269        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     7270        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     7272        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7273        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7274        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7275        M 0x80001ccc mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7276        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7277        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     7278        M                                           #; (lsu) a0  <-- 48
       0     7280        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7283        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7284        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7285        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7286        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7287        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7288        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7289        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7290        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7301        M                                           #; (lsu) a4  <-- 13
       0     7302        M 0x8000160c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7303        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 14 ~~> Word[0x8000301c]
       0     7304        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 13, (wrb) a4  <-- 0x80003029
       0     7305        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003029, 48 ~~> Byte[0x80003071]
       0     7306        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7327        M                                           #; (lsu) a4  <-- 14
       0     7328        M 0x80001620 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7329        M 0x80001624 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7330        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7331        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7332        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7333        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7337        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7342        M 0x80001cd8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7343        M 0x80001cdc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7345        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001cb8
       0     7348        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     7349        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     7351        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7352        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7353        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7354        M 0x80001ccc mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7355        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7356        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     7357        M                                           #; (lsu) a0  <-- 48
       0     7359        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7362        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7363        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7364        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7365        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7366        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7367        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7368        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7369        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7380        M                                           #; (lsu) a4  <-- 14
       0     7381        M 0x8000160c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     7382        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 15 ~~> Word[0x8000301c]
       0     7383        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 14, (wrb) a4  <-- 0x8000302a
       0     7384        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000302a, 48 ~~> Byte[0x80003072]
       0     7385        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7406        M                                           #; (lsu) a4  <-- 15
       0     7407        M 0x80001620 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     7408        M 0x80001624 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     7409        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7410        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7411        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7412        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7416        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7421        M 0x80001cd8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     7422        M 0x80001cdc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     7424        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001cb8
       0     7427        M 0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     7428        M 0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     7430        M 0x80001cc0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     7431        M 0x80001cc4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     7432        M 0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7433        M 0x80001ccc mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     7434        M 0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7435        M 0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
       0     7436        M                                           #; (lsu) a0  <-- 48
       0     7438        M 0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7441        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7442        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7443        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7444        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7445        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7446        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7447        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7448        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7459        M                                           #; (lsu) a4  <-- 15
       0     7460        M 0x8000160c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     7461        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 16 ~~> Word[0x8000301c]
       0     7462        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 15, (wrb) a4  <-- 0x8000302b
       0     7463        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000302b, 48 ~~> Byte[0x80003073]
       0     7464        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7485        M                                           #; (lsu) a4  <-- 16
       0     7486        M 0x80001620 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     7487        M 0x80001624 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     7488        M 0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7489        M 0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7490        M 0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7491        M 0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
       0     7495        M 0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     7500        M 0x80001cd8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7501        M 0x80001cdc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     7503        M 0x80001ce0 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     7504        M 0x80001ce4 j       pc + 0x8               #; goto 0x80001cec
       0     7505        M 0x80001cec sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     7517        M 0x80001cf0 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     7518        M 0x80001cf4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7519        M 0x80001cf8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7520        M 0x80001cfc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7529        M 0x80001d00 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d30
       0     7552        M 0x80001d30 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7553        M 0x80001d34 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     7556        M 0x80001d38 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     7557        M 0x80001d3c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     7558        M                                           #; (f:lsu) fs1  <-- 0.0
       0     7565        M 0x80001d44 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     7566        M 0x80001d40 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0     7567        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     7569        M                                           #; (lsu) s10 <-- 0x80002cde
       0     7570        M 0x80001d48 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     7573        M                                           #; (lsu) s9  <-- 8
       0     7574        M 0x80001d4c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     7577        M                                           #; (lsu) s8  <-- 16
       0     7578        M 0x80001d50 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     7581        M                                           #; (lsu) s7  <-- 0
       0     7582        M 0x80001d54 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     7585        M                                           #; (lsu) s6  <-- 0
       0     7586        M 0x80001d58 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     7589        M                                           #; (lsu) s5  <-- -1
       0     7590        M 0x80001d5c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     7593        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7594        M 0x80001d60 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     7597        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     7598        M 0x80001d64 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     7601        M                                           #; (lsu) s2  <-- 0x800015ec
       0     7602        M 0x80001d68 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     7605        M                                           #; (lsu) s1  <-- 8
       0     7606        M 0x80001d6c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     7609        M                                           #; (lsu) s0  <-- 0
       0     7610        M 0x80001d70 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     7611        M 0x80001d74 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     7613        M                                           #; (lsu) ra  <-- 0x80000d1c
       0     7614        M 0x80001d78 ret                            #; ra  = 0x80000d1c, goto 0x80000d1c
       0     7622        M 0x80000d1c j       pc + 0x7c0             #; goto 0x800014dc
       0     7625        M 0x800014dc mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     7637        M 0x800014e0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7638        M 0x800014e4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7639        M 0x800014e8 addi    s0, s10, 1             #; s10 = 0x80002cde, (wrb) s0  <-- 0x80002cdf
       0     7640        M 0x800014ec j       pc - 0xa74             #; goto 0x80000a78
       0     7649        M 0x80000a78 addi    s10, s0, 2             #; s0  = 0x80002cdf, (wrb) s10 <-- 0x80002ce1
       0     7650        M 0x80000a7c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     7661        M 0x80000a80 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7662        M 0x80000a84 lbu     a0, 0(s0)              #; s0  = 0x80002cdf, a0  <~~ Byte[0x80002cdf]
       0     7673        M                                           #; (lsu) a0  <-- 10
       0     7674        M 0x80000a88 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7675        M 0x80000a8c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7676        M 0x80000a90 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     7677        M 0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7678        M 0x80000a98 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     7679        M 0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7688        M 0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
       0     7702        M 0x800015ec beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7705        M 0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7706        M 0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7707        M 0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7708        M 0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
       0     7709        M 0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
       0     7710        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7711        M 0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     7712        M 0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7723        M                                           #; (lsu) a4  <-- 16
       0     7724        M 0x8000160c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     7725        M 0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 17 ~~> Word[0x8000301c]
       0     7726        M 0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 16, (wrb) a4  <-- 0x8000302c
       0     7727        M 0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000302c, 10 ~~> Byte[0x80003074]
       0     7728        M 0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     7749        M                                           #; (lsu) a4  <-- 17
       0     7750        M 0x80001620 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     7751        M 0x80001624 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     7752        M 0x80001628 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7753        M 0x8000162c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7754        M 0x80001630 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7755        M 0x80001634 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7756        M 0x80001638 add     a0, a3, a2             #; a3  = 0x8000301c, a2  = 0, (wrb) a0  <-- 0x8000301c
       0     7757        M 0x8000163c addi    a2, a0, 72             #; a0  = 0x8000301c, (wrb) a2  <-- 0x80003064
       0     7758        M 0x80001640 sw      zero, 12(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003028]
       0     7759        M 0x80001644 li      a3, 64                 #; (wrb) a3  <-- 64
       0     7760        M 0x80001648 sw      a3, 8(a0)              #; a0  = 0x8000301c, 64 ~~> Word[0x80003024]
       0     7761        M 0x8000164c sw      zero, 20(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003030]
       0     7770        M 0x80001650 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7771        M 0x80001654 sw      a3, 16(a0)             #; a0  = 0x8000301c, 1 ~~> Word[0x8000302c]
       0     7772        M 0x80001658 sw      zero, 28(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003038]
       0     7774        M 0x8000165c sw      a2, 24(a0)             #; a0  = 0x8000301c, 0x80003064 ~~> Word[0x80003034]
       0     7784        M 0x80001660 lw      a2, 0(a1)              #; a1  = 0x8000301c, a2  <~~ Word[0x8000301c]
       0     7785        M 0x80001664 addi    a3, a0, 8              #; a0  = 0x8000301c, (wrb) a3  <-- 0x80003024
       0     7786        M 0x80001668 sw      zero, 36(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003040]
       0     7806        M                                           #; (lsu) a2  <-- 17
       0     7807        M 0x8000166c sw      a2, 32(a0)             #; a0  = 0x8000301c, 17 ~~> Word[0x8000303c]
       0     7808        M 0x80001670 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003670
       0     7809        M 0x80001674 addi    a0, a0, -1904          #; a0  = 0x80003670, (wrb) a0  <-- 0x80002f00
       0     7810        M 0x80001678 sw      a3, 0(a0)              #; a0  = 0x80002f00, 0x80003024 ~~> Word[0x80002f00]
       0     7811        M 0x8000167c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000367c
       0     7820        M 0x80001680 addi    a0, a0, -1852          #; a0  = 0x8000367c, (wrb) a0  <-- 0x80002f40
       0     7821        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7836        M                                           #; (lsu) a2  <-- 0
       0     7837        M 0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
       0     7838        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7849        M                                           #; (lsu) a2  <-- 0
       0     7850        M 0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
       0     7851        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7862        M                                           #; (lsu) a2  <-- 0
       0     7863        M 0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
       0     7864        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7875        M                                           #; (lsu) a2  <-- 0
       0     7876        M 0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
       0     7877        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7888        M                                           #; (lsu) a2  <-- 0
       0     7889        M 0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
       0     7890        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7901        M                                           #; (lsu) a2  <-- 0
       0     7902        M 0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
       0     7903        M 0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7914        M                                           #; (lsu) a2  <-- 1
       0     7915        M 0x80001688 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     7916        M 0x8000168c sw      zero, 0(a0)            #; a0  = 0x80002f40, 0 ~~> Word[0x80002f40]
       0     7919        M 0x80001690 sw      zero, 0(a1)            #; a1  = 0x8000301c, 0 ~~> Word[0x8000301c]
       0     7920        M 0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
       0     7924        M 0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cdf, (wrb) s0  <-- 0x80002ce0
       0     7925        M 0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002ce1, (wrb) s10 <-- 0x80002ce2
       0     7926        M 0x80000aac mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     7927        M 0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002ce0, a0  <~~ Byte[0x80002ce0]
       0     7940        M                                           #; (lsu) a0  <-- 0
       0     7941        M 0x80000ab4 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     7942        M 0x80000ab8 j       pc + 0xad8             #; goto 0x80001590
       0     7954        M 0x80001590 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     7955        M 0x80001594 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000159c
       0     7956        M 0x8000159c li      a0, 0                  #; (wrb) a0  <-- 0
       0     7966        M 0x800015a0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7967        M 0x800015a4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7968        M 0x800015a8 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x800015ac, goto 0x800015ec
       0     7980        M 0x800015ec beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001694
       0     7985        M 0x80001694 ret                            #; ra  = 0x800015ac, goto 0x800015ac
       0     7986        M 0x800015ac mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     7987        M 0x800015b0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     7990        M                                           #; (lsu) s11 <-- 0
       0     7991        M 0x800015b4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     7994        M                                           #; (lsu) s10 <-- 0
       0     7995        M 0x800015b8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     7998        M                                           #; (lsu) s9  <-- 0
       0     7999        M 0x800015bc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8002        M                                           #; (lsu) s8  <-- 0
       0     8003        M 0x800015c0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8006        M                                           #; (lsu) s7  <-- 0
       0     8007        M 0x800015c4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8010        M                                           #; (lsu) s6  <-- 0
       0     8011        M 0x800015c8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8014        M                                           #; (lsu) s5  <-- 0
       0     8015        M 0x800015cc lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8018        M                                           #; (lsu) s4  <-- 0
       0     8019        M 0x800015d0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8022        M                                           #; (lsu) s3  <-- 0
       0     8023        M 0x800015d4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8026        M                                           #; (lsu) s2  <-- 0
       0     8027        M 0x800015d8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8030        M                                           #; (lsu) s1  <-- 0x00100350
       0     8031        M 0x800015dc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8034        M                                           #; (lsu) s0  <-- 0x00100320
       0     8035        M 0x800015e0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8036        M 0x800015e4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8038        M                                           #; (lsu) ra  <-- 0x800009e8
       0     8039        M 0x800015e8 ret                            #; ra  = 0x800009e8, goto 0x800009e8
       0     8051        M 0x800009e8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8052        M 0x800009ec addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8054        M                                           #; (lsu) ra  <-- 0x80000970
       0     8063        M 0x800009f0 ret                            #; ra  = 0x80000970, goto 0x80000970
       0     8077        M 0x80000970 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002970
       0     8078        M 0x80000974 addi    a0, a0, 1528           #; a0  = 0x80002970, (wrb) a0  <-- 0x80002f68
       0     8081        M 0x80000978 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f68]
       0     8082        M 0x80000984 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
       0     8090        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     8091        M 0x8000097c flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     8092        M                                           #; (lsu) s1  <-- 0
       0     8093        M 0x80000988 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58], (acc) s0  <-- 0x01812403
                         M 0x80000980 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     8094        M                                           #; (f:lsu) fs0  <-- 0.0
       0     8096        M                                           #; (lsu) s0  <-- 0
       0     8097        M 0x8000098c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     8098        M 0x80000990 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     8100        M                                           #; (lsu) ra  <-- 0x80002a50
       0     8101        M 0x80000994 ret                            #; ra  = 0x80002a50, goto 0x80002a50
       0     8104        M 0x80002a50 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     8105        M 0x80002a54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a54
       0     8106        M 0x80002a58 jalr    ra, ra, 524            #; ra  = 0x80002a54, (wrb) ra  <-- 0x80002a5c, goto 0x80002c60
       0     8118        M 0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     8119        M 0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a5c ~~> Word[0x0011ff5c]
       0     8120        M 0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
       0     8121        M 0x80002c6c jalr    ra, ra, -1268          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x80002774
       0     8132        M 0x80002774 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8133        M 0x80002778 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8134        M 0x8000277c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8137        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8138        M 0x80002780 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8141        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8142        M 0x80002784 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     8143        M 0x80002788 ret                            #; ra  = 0x80002c70, goto 0x80002c70
       0     8145        M                                           #; (lsu) a0  <-- 0x00120190
       0     8146        M 0x80002c70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     8156        M                                           #; (lsu) a0  <-- 0
       0     8157        M 0x80002c74 mv      zero, a0               #; a0  = 0
       0     8158        M 0x80002c78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     8159        M 0x80002c7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     8161        M                                           #; (lsu) ra  <-- 0x80002a5c
       0     8162        M 0x80002c80 ret                            #; ra  = 0x80002a5c, goto 0x80002a5c
       0     8165        M 0x80002a5c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     8169        M 0x80002a60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a60
       0     8170        M 0x80002a64 jalr    ra, ra, 556            #; ra  = 0x80002a60, (wrb) ra  <-- 0x80002a68, goto 0x80002c8c
       0     8171        M 0x80002c8c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     8172        M 0x80002c90 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     8173        M 0x80002c94 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a68 ~~> Word[0x0011ff5c]
       0     8174        M 0x80002c98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c98
       0     8175        M 0x80002c9c jalr    ra, ra, -1348          #; ra  = 0x80002c98, (wrb) ra  <-- 0x80002ca0, goto 0x80002754
       0     8188        M 0x80002754 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8189        M 0x80002758 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8190        M 0x8000275c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8193        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8194        M 0x80002760 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8197        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8198        M 0x80002764 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     8199        M 0x80002768 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8201        M                                           #; (lsu) a0  <-- 0
       0     8202        M 0x8000276c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     8203        M 0x80002770 ret                            #; ra  = 0x80002ca0, goto 0x80002ca0
       0     8204        M 0x80002ca0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     8207        M                                           #; (lsu) t0  <-- 0
       0     8208        M 0x80002ca4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     8209        M 0x80002ca8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     8210        M 0x80002cac bnez    a0, pc + 24            #; a0  = 0, not taken
       0     8211        M                                           #; (lsu) ra  <-- 0x80002a68
       0     8218        M 0x80002cb0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     8219        M 0x80002cb4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     8220        M 0x80002cb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002cb8
       0     8221        M 0x80002cbc addi    t1, t1, 584            #; t1  = 0x80002cb8, (wrb) t1  <-- 0x80002f00
       0     8229        M 0x80002cc0 sw      t0, 0(t1)              #; t1  = 0x80002f00, 1 ~~> Word[0x80002f00]
       0     8230        M 0x80002cc4 ret                            #; ra  = 0x80002a68, goto 0x80002a68
       0     8244        M 0x80002a68 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 8244):
snitch_loads                                   142
snitch_stores                                  222
fpss_stores                                    112
fpss_loads                                     469
snitch_avg_load_latency                    11.7746
snitch_occupancy                            0.2709
snitch_fseq_rel_offloads                    0.3141
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.4318
fpss_avg_load_latency                       1.7122
fpss_occupancy                              0.1240
fpss_fpu_occupancy                          0.0534
fpss_fpu_rel_occupancy                      0.4310
cycles                                        8233
total_ipc                                   0.3949
