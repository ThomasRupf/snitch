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
       0      551        M 0x80002898 addi    t0, t0, 1988           #; t0  = 0x80002894, (wrb) t0  <-- 0x80003058
       0      552        M 0x8000289c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000289c
       0      562        M 0x800028a0 addi    t1, t1, 1984           #; t1  = 0x8000289c, (wrb) t1  <-- 0x8000305c
       0      563        M 0x800028a4 bge     t0, t1, pc + 16        #; t0  = 0x80003058, t1  = 0x8000305c, not taken
       0      564        M 0x800028a8 sw      zero, 0(t0)            #; t0  = 0x80003058, 0 ~~> Word[0x80003058]
       0      565        M 0x800028ac addi    t0, t0, 4              #; t0  = 0x80003058, (wrb) t0  <-- 0x8000305c
       0      573        M 0x800028b0 blt     t0, t1, pc - 8         #; t0  = 0x8000305c, t1  = 0x8000305c, not taken
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
       0      877        M 0x80002a18 jalr    ra, ra, -1056          #; ra  = 0x80002a14, (wrb) ra  <-- 0x80002a1c, goto 0x800025f4
       0      899        M 0x800025f4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800025f8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800025fc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002600 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002604 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002608 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x8000260c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002610 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002614 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002618 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x8000261c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002620 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002624 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002628 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x8000262c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002630 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002634 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002638 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x8000263c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002640 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002644 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002648 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x8000264c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002650 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002654 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002658 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x8000265c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002660 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002664 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002668 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x8000266c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002670 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002674 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002678 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000267c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002680 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002684 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002688 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x8000268c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002690 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002694 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002698 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x8000269c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800026a0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x800026a4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x800026a8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x800026ac sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x800026b0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x800026b4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x800026b8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x800026bc sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800026c0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x800026c4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x800026c8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x800026cc sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x800026d0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x800026d4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x800026d8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x800026dc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x800026e0 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x800026e4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x800026e8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800036e8
       0     1273        M 0x800026ec addi    a1, a1, -1676          #; a1  = 0x800036e8, (wrb) a1  <-- 0x8000305c
       0     1282        M 0x800026f0 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000305c, (wrb) a0  <-- 0x8000305c
       0     1283        M 0x800026f4 sw      zero, 0(a0)            #; a0  = 0x8000305c, 0 ~~> Word[0x8000305c]
       0     1284        M 0x800026f8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x800026fc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002700 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002704 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002708 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x8000270c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002710 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002714 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002718 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x8000271c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002720 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002724 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002728 lw      a0, 0(a1)              #; a1  = 0x8000305c, a0  <~~ Word[0x8000305c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x8000272c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002730 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002734 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002738 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x8000273c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002740 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002744 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002748 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x8000274c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002750 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002754 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002758 ret                            #; ra  = 0x80002a1c, goto 0x80002a1c
       0     1406        M 0x80002a1c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002a20 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002a24 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002a28 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002a2c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002a30 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002a34 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a34
       0     1425        M 0x80002a38 addi    t0, t0, 60             #; t0  = 0x80002a34, (wrb) t0  <-- 0x80002a70
       0     1426        M 0x80002a3c csrw    mtvec, t0              #; t0  = 0x80002a70, (lsu) a4  <-- 4132
       0     1434        M 0x80002a40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a40
       0     1435        M 0x80002a44 jalr    ra, ra, 544            #; ra  = 0x80002a40, (wrb) ra  <-- 0x80002a48, goto 0x80002c60
       0     1451        M 0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a48 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
       0     1454        M 0x80002c6c jalr    ra, ra, -1260          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x8000277c
       0     1472        M 0x8000277c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002780 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002784 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002788 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x8000278c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002790 ret                            #; ra  = 0x80002c70, goto 0x80002c70
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002c70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002c74 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002c78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002c7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002a48
       0     1533        M 0x80002c80 ret                            #; ra  = 0x80002a48, goto 0x80002a48
       0     1537        M 0x80002a48 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a48
       0     1538        M 0x80002a4c jalr    ra, ra, -696           #; ra  = 0x80000a48, (wrb) ra  <-- 0x80002a50, goto 0x80000790
       0     1543        M 0x80000790 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000794 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a50 ~~> Word[0x0011ff5c]
       0     1545        M 0x80000798 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1546        M 0x8000079c sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1549        M 0x800007a0 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1551        M 0x800007a8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1552        M 0x800007ac add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x800007a4 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1561        M 0x800007b0 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1562        M 0x800007b4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1564        M                                           #; (lsu) a1  <-- 0
       0     1565        M 0x800007b8 bnez    a1, pc + 228           #; a1  = 0, not taken
       0     1566        M 0x800007bc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1573        M 0x800007c0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1574        M 0x800007c4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1577        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1578        M 0x800007c8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1581        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1582        M 0x800007cc lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1585        M                                           #; (lsu) s0  <-- 0x00100000
       0     1589        M 0x800007d0 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1592        M                                           #; (lsu) a1  <-- 0x00100000
       0     1593        M 0x800007d4 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1594        M 0x800007d8 addi    a2, s0, 80             #; s0  = 0x00100000, (wrb) a2  <-- 0x00100050
       0     1596        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1597        M 0x800007dc add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1602        M 0x800007e0 bgeu    a1, a2, pc + 24        #; a1  = 0x0011df30, a2  = 0x00100050, taken, goto 0x800007f8
       0     1615        M 0x800007f8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1616        M 0x800007fc mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1628        M 0x80000800 addi    a3, s0, 160            #; s0  = 0x00100000, (wrb) a3  <-- 0x001000a0
       0     1629        M 0x80000804 mv      s0, a2                 #; a2  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1630        M 0x80000808 bgeu    a1, a3, pc - 24        #; a1  = 0x0011df30, a3  = 0x001000a0, taken, goto 0x800007f0
       0     1631        M 0x800007f0 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1632        M 0x800007f4 j       pc + 0x1c              #; goto 0x80000810
       0     1654        M 0x80000810 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1655        M 0x80000814 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000814
       0     1656        M 0x80000818 jalr    ra, ra, -480           #; ra  = 0x80000814, (wrb) ra  <-- 0x8000081c, goto 0x80000634
       0     1677        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1678        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1679        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1689        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1690        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1691        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1692        M 0x8000064c beqz    a1, pc + 204           #; a1  = 1, not taken
       0     1701        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1702        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1703        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1704        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1713        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1714        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1715        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1716        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1725        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1727        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1728        M 0x8000067c addi    a0, a0, -1824          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f58
       0     1739        M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f58]
       0     1740        M 0x80000684 fcvt.d.w ft4, zero             #; ac1  = 0
       0     1741        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1742        M 0x80000688 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1743        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1748        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1749        M 0x80000690 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003690
                         M 0x8000068c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1750        M 0x80000694 addi    a0, a0, -1840          #; a0  = 0x80003690, (wrb) a0  <-- 0x80002f60
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1752        M 0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
       0     1753        M 0x80000698 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f60]
       0     1761        M 0x800006a0 addi    a0, a0, -1844          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80002f68
       0     1762        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1764        M 0x800006a4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f68]
       0     1765        M 0x800006a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1766        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1773        M 0x800006b0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b0
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     1774        M 0x800006b4 addi    a0, a0, -1856          #; a0  = 0x800036b0, (wrb) a0  <-- 0x80002f70
                         M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1775        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1776        M 0x800006bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036bc
       0     1777        M 0x800006b8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f70]
       0     1785        M 0x800006c0 addi    a0, a0, -1860          #; a0  = 0x800036bc, (wrb) a0  <-- 0x80002f78
       0     1786        M                                           #; (f:lsu) ft3  <-- 4.0
       0     1788        M 0x800006c4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f78]
       0     1789        M 0x800006c8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1790        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1797        M 0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     1798        M 0x800006d4 addi    a0, a0, -1872          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80002f80
                         M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.0, ft4  = 5.0
       0     1799        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1800        M 0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
       0     1801        M 0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f80]
       0     1809        M 0x800006e0 addi    a0, a0, -1876          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80002f88
       0     1810        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1812        M 0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f88]
       0     1813        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1814        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1821        M 0x800006f0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f0
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     1822        M 0x800006f4 addi    a0, a0, -1888          #; a0  = 0x800036f0, (wrb) a0  <-- 0x80002f90
                         M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1823        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1824        M 0x800006fc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036fc
       0     1825        M 0x800006f8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f90]
       0     1833        M 0x80000700 addi    a0, a0, -1892          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80002f98
       0     1834        M                                           #; (f:lsu) ft3  <-- 8.0
       0     1836        M 0x80000704 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f98]
       0     1837        M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1838        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1845        M                                           #; (f:lsu) ft4  <-- 9.0
       0     1846        M 0x80000714 ret                            #; ra  = 0x8000081c, goto 0x8000081c
                         M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.0, ft4  = 9.0
       0     1847        M 0x80000710 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1859        M 0x8000081c mv      a0, s0                 #; s0  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1862        M 0x80000820 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000820
       0     1863        M 0x80000824 jalr    ra, ra, -492           #; ra  = 0x80000820, (wrb) ra  <-- 0x80000828, goto 0x80000634
       0     1876        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100050, (wrb) a1  <-- 1
       0     1877        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1878        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1879        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1880        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1881        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1882        M 0x8000064c beqz    a1, pc + 204           #; a1  = 1, not taken
       0     1883        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1884        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1885        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1886        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1887        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1888        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1889        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1890        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1891        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
       0     1893        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1894        M 0x8000067c addi    a0, a0, -1824          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f58
       0     1895        M                                           #; (acc) gp  <-- 0x00053187
       0     1896        M                                           #; (acc) tp  <-- 0xd2000253
       0     1897        M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f58]
       0     1898        M 0x80000684 fcvt.d.w ft4, zero             #; ac1  = 0
       0     1899        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1900        M 0x80000690 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003690
                         M 0x80000688 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1901        M 0x80000694 addi    a0, a0, -1840          #; a0  = 0x80003690, (wrb) a0  <-- 0x80002f60
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1903        M 0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
       0     1904        M 0x800006a0 addi    a0, a0, -1844          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80002f68
       0     1906        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1907        M 0x8000068c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1908        M 0x800006b0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b0
                         M 0x80000698 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f60], (f:fpu) ft0  <-- 1.0
       0     1909        M 0x800006b4 addi    a0, a0, -1856          #; a0  = 0x800036b0, (wrb) a0  <-- 0x80002f70
                         M 0x800006a4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f68]
       0     1911        M 0x800006bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036bc
       0     1912        M 0x800006c0 addi    a0, a0, -1860          #; a0  = 0x800036bc, (wrb) a0  <-- 0x80002f78
       0     1916        M 0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
       0     1917        M 0x800006d4 addi    a0, a0, -1872          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80002f80
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     1918        M 0x800006a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0, (f:lsu) ft4  <-- 3.0
       0     1919        M 0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
                         M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0, (f:fpu) ft0  <-- 2.0
       0     1920        M 0x800006e0 addi    a0, a0, -1876          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80002f88
                         M 0x800006b8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f70], (f:fpu) ft0  <-- 3.0
       0     1921        M 0x800006c4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f78]
       0     1924        M 0x800006f0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f0
       0     1925        M 0x800006f4 addi    a0, a0, -1888          #; a0  = 0x800036f0, (wrb) a0  <-- 0x80002f90
       0     1927        M 0x800006fc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036fc
       0     1928        M 0x80000700 addi    a0, a0, -1892          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80002f98
       0     1929        M                                           #; (f:lsu) ft3  <-- 4.0
       0     1930        M 0x800006c8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0, (f:lsu) ft4  <-- 5.0
       0     1931        M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.0, ft4  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1932        M 0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f80], (f:fpu) ft0  <-- 5.0
       0     1933        M 0x80000714 ret                            #; ra  = 0x80000828, goto 0x80000828
                         M 0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f88]
       0     1937        M 0x80000828 csrr    s1, mcycle             #; mcycle = 1936, (wrb) s1  <-- 1936
       0     1938        M 0x8000082c li      a2, 10                 #; (wrb) a2  <-- 10
       0     1940        M 0x80000830 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1941        M 0x80000834 mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     1942        M 0x80000838 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000838
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0, (f:lsu) ft4  <-- 7.0
       0     1943        M 0x8000083c jalr    ra, ra, 128            #; ra  = 0x80000838, (wrb) ra  <-- 0x80000840, goto 0x800008b8
                         M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0, (f:fpu) ft0  <-- 6.0
       0     1944        M 0x800006f8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f90], (f:fpu) ft0  <-- 7.0
       0     1945        M 0x80000704 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f98]
       0     1953        M                                           #; (f:lsu) ft3  <-- 8.0
       0     1954        M 0x800008b8 li      a3, 1                  #; (wrb) a3  <-- 1
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0, (f:lsu) ft4  <-- 9.0
       0     1955        M 0x800008bc blt     a2, a3, pc + 48        #; a2  = 10, a3  = 1, not taken
                         M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.0, ft4  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1956        M 0x80000710 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1957        M 0x800008c0 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
       0     1958        M 0x800008c4 slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
       0     1959        M 0x800008c8 add     a3, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) a3  <-- 0x00100048
       0     1960        M 0x800008cc add     t1, a4, a1             #; a4  = 72, a1  = 0x00100050, (wrb) t1  <-- 0x00100098
       0     1969        M 0x800008d0 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
       0     1970        M 0x800008d4 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
       0     1971        M 0x800008d8 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1972        M 0x800008dc addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     1981        M 0x800008e0 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x800008f4
       0     1993        M 0x800008f4 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
       0     1994        M 0x800008f8 and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
       0     1995        M 0x800008fc srli    a3, a1, 20             #; a1  = 0x00100050, (wrb) a3  <-- 1
       0     2005        M 0x80000900 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2006        M 0x80000904 bgeu    t1, a4, pc + 12        #; t1  = 0x00100098, a4  = 72, taken, goto 0x80000910
       0     2017        M 0x80000910 sltu    a4, t1, a7             #; t1  = 0x00100098, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2018        M 0x80000914 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2019        M 0x80000918 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2020        M 0x8000091c beqz    a3, pc + 96            #; a3  = 1, not taken
       0     2029        M 0x80000920 li      a3, 8                  #; (wrb) a3  <-- 8
       0     2030        M 0x80000924 li      a4, 64                 #; (wrb) a4  <-- 64
       0     2031        M 0x80000928 li      a5, 192                #; (wrb) a5  <-- 192
       0     2032        M 0x8000092c scfgw   a6, a4                 #; a6  = 9, a4  = 64
       0     2041        M 0x80000930 scfgw   a3, a5                 #; a3  = 8, a5  = 192
       0     2042        M 0x80000934 li      a4, 32                 #; (wrb) a4  <-- 32
       0     2043        M 0x80000938 scfgw   zero, a4               #; a4  = 32
       0     2044        M 0x8000093c scfgwi  a0, 768                #; a0  = 0x00100000
       0     2053        M 0x80000940 li      a0, 1                  #; (wrb) a0  <-- 1
       0     2054        M 0x80000944 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
       0     2055        M 0x80000948 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
       0     2056        M 0x8000094c scfgw   a6, a4                 #; a6  = 9, a4  = 65
       0     2065        M 0x80000950 scfgw   a3, a5                 #; a3  = 8, a5  = 193
       0     2066        M 0x80000954 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
       0     2067        M 0x80000958 scfgw   zero, a0               #; a0  = 33
       0     2068        M 0x8000095c scfgwi  a1, 769                #; a1  = 0x00100050
       0     2078        M 0x80000960 csrrsi  a0, ssr, 1             #; 
       0     2079        M 0x80000968 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M 0x80000964 fcvt.d.w fa0, zero             #; ac1  = 0
       0     2080        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2082        M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
       0     2085        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2089        M 0x80000970 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x80000968
       0     2090        M 0x80000968 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2092        M 0x80000970 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x80000968
       0     2093        M 0x80000968 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 0.0
       0     2095        M 0x80000970 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x80000968
       0     2096        M 0x80000968 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 1.0
       0     2097        M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1.0
       0     2098        M 0x80000970 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x80000968
       0     2099        M 0x80000968 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     2100        M                                           #; (f:fpu) fa0  <-- 5.0
       0     2101        M 0x80000970 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000968
                         M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 5.0
       0     2102        M 0x80000968 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     2104        M 0x80000970 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000968
                         M                                           #; (f:fpu) fa0  <-- 14.0
       0     2105        M 0x80000968 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 14.0
       0     2107        M 0x80000970 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000968
       0     2108        M 0x80000968 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 30.0
       0     2109        M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 30.0
       0     2110        M 0x80000970 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000968
       0     2111        M 0x80000968 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     2112        M                                           #; (f:fpu) fa0  <-- 55.0
       0     2113        M 0x80000970 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000968
                         M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 55.0
       0     2114        M 0x80000968 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     2116        M 0x80000970 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 91.0
       0     2117        M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 91.0
       0     2118        M 0x80000978 j       pc + 0x24              #; goto 0x8000099c
       0     2120        M                                           #; (f:fpu) fa0  <-- 140.0
       0     2121        M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 140.0
       0     2124        M                                           #; (f:fpu) fa0  <-- 204.0
       0     2125        M 0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 204.0
       0     2126        M 0x80000974 csrrci  a0, ssr, 1             #; 
       0     2128        M                                           #; (f:fpu) fa0  <-- 285.0
       0     2129        M 0x8000099c ret                            #; ra  = 0x80000840, goto 0x80000840
       0     2144        M 0x80000844 csrr    a0, mcycle             #; mcycle = 2143, (wrb) a0  <-- 2143
       0     2145        M 0x80000848 sub     a1, a0, s1             #; a0  = 2143, s1  = 1936, (wrb) a1  <-- 207
                         M 0x80000840 fsgnj.d fs0, fa0, fa0          #; fa0  = 285.0, fa0  = 285.0
       0     2146        M 0x8000084c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000284c
                         M                                           #; (f:fpu) fs0  <-- 285.0
       0     2155        M 0x80000850 addi    a0, a0, 1161           #; a0  = 0x8000284c, (wrb) a0  <-- 0x80002cd5
       0     2156        M 0x80000854 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000854
       0     2157        M 0x80000858 jalr    ra, ra, 332            #; ra  = 0x80000854, (wrb) ra  <-- 0x8000085c, goto 0x800009a0
       0     2158        M 0x800009a0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2159        M 0x800009a4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000085c ~~> Word[0x0011ff1c]
       0     2160        M 0x800009a8 mv      t0, a0                 #; a0  = 0x80002cd5, (wrb) t0  <-- 0x80002cd5
       0     2161        M 0x800009ac sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
       0     2178        M 0x800009b0 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff38]
       0     2179        M 0x800009b4 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
       0     2180        M 0x800009b8 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
       0     2181        M 0x800009bc sw      a3, 28(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff2c]
       0     2190        M 0x800009c0 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2191        M 0x800009c4 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 207 ~~> Word[0x0011ff24]
       0     2192        M 0x800009c8 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2193        M 0x800009cc sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2202        M 0x800009d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800019d0
       0     2203        M 0x800009d4 addi    a0, a0, -988           #; a0  = 0x800019d0, (wrb) a0  <-- 0x800015f4
       0     2204        M 0x800009d8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2205        M 0x800009dc li      a2, -1                 #; (wrb) a2  <-- -1
       0     2214        M 0x800009e0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2215        M 0x800009e4 mv      a3, t0                 #; t0  = 0x80002cd5, (wrb) a3  <-- 0x80002cd5
       0     2216        M 0x800009e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e8
       0     2217        M 0x800009ec jalr    ra, ra, 20             #; ra  = 0x800009e8, (wrb) ra  <-- 0x800009f0, goto 0x800009fc
       0     2226        M 0x800009fc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2238        M 0x80000a00 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009f0 ~~> Word[0x0011ff0c]
       0     2239        M 0x80000a04 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
       0     2240        M 0x80000a08 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 1936 ~~> Word[0x0011ff04]
       0     2241        M 0x80000a0c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     2250        M 0x80000a10 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2251        M 0x80000a14 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2252        M 0x80000a18 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2253        M 0x80000a1c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2262        M 0x80000a20 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2263        M 0x80000a24 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2264        M 0x80000a28 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2265        M 0x80000a2c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2274        M 0x80000a30 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2275        M 0x80000a34 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2276        M 0x80000a38 mv      s0, a3                 #; a3  = 0x80002cd5, (wrb) s0  <-- 0x80002cd5
       0     2277        M 0x80000a3c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2286        M 0x80000a40 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2287        M 0x80000a44 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2288        M 0x80000a48 mv      s2, a0                 #; a0  = 0x800015f4, (wrb) s2  <-- 0x800015f4
       0     2289        M 0x80000a4c j       pc + 0xc               #; goto 0x80000a58
       0     2298        M 0x80000a58 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2299        M 0x80000a5c li      s6, 37                 #; (wrb) s6  <-- 37
       0     2310        M 0x80000a60 li      s11, 16                #; (wrb) s11 <-- 16
       0     2311        M 0x80000a64 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2312        M 0x80000a68 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2313        M 0x80000a6c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2322        M 0x80000a70 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2323        M 0x80000a74 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2324        M 0x80000a78 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2325        M 0x80000a7c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2334        M 0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002cd5, (wrb) s10 <-- 0x80002cd7
       0     2335        M 0x80000a84 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2336        M 0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2337        M 0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002cd5, a0  <~~ Byte[0x80002cd5]
       0     2348        M                                           #; (lsu) a0  <-- 99
       0     2349        M 0x80000a90 beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     2350        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     2351        M 0x80000a98 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2352        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2358        M 0x80000aa0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2359        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2360        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2381        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     2382        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2383        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2393        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2394        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2395        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2396        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2397        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2405        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2416        M                                           #; (lsu) a4  <-- 0
       0     2417        M 0x80001614 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2418        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 1 ~~> Word[0x8000305c]
       0     2419        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 0, (wrb) a4  <-- 0x8000305c
       0     2420        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305c, 99 ~~> Byte[0x800030a4]
       0     2421        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2442        M                                           #; (lsu) a4  <-- 1
       0     2443        M 0x80001628 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2444        M 0x8000162c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2445        M 0x80001630 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     2446        M 0x80001634 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     2447        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2448        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2468        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2482        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd5, (wrb) s0  <-- 0x80002cd6
       0     2485        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cd7, (wrb) s10 <-- 0x80002cd8
       0     2486        M 0x80000ab4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2487        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd6, a0  <~~ Byte[0x80002cd6]
       0     2498        M                                           #; (lsu) a0  <-- 121
       0     2499        M 0x80000abc bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a94
       0     2500        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     2501        M 0x80000a98 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2502        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2503        M 0x80000aa0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2504        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2505        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2508        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     2509        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2510        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2511        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2512        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2513        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2514        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2515        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2516        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2527        M                                           #; (lsu) a4  <-- 1
       0     2528        M 0x80001614 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2529        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 2 ~~> Word[0x8000305c]
       0     2530        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 1, (wrb) a4  <-- 0x8000305d
       0     2531        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305d, 121 ~~> Byte[0x800030a5]
       0     2532        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2553        M                                           #; (lsu) a4  <-- 2
       0     2554        M 0x80001628 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2555        M 0x8000162c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2556        M 0x80001630 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     2557        M 0x80001634 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     2558        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2559        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2562        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2567        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd6, (wrb) s0  <-- 0x80002cd7
       0     2570        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cd8, (wrb) s10 <-- 0x80002cd9
       0     2571        M 0x80000ab4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2572        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd7, a0  <~~ Byte[0x80002cd7]
       0     2583        M                                           #; (lsu) a0  <-- 99
       0     2584        M 0x80000abc bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a94
       0     2585        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     2586        M 0x80000a98 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2587        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2588        M 0x80000aa0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2589        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2590        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2593        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     2594        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2595        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2596        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2597        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2598        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2599        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2600        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2601        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2612        M                                           #; (lsu) a4  <-- 2
       0     2613        M 0x80001614 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2614        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 3 ~~> Word[0x8000305c]
       0     2615        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 2, (wrb) a4  <-- 0x8000305e
       0     2616        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305e, 99 ~~> Byte[0x800030a6]
       0     2617        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2638        M                                           #; (lsu) a4  <-- 3
       0     2639        M 0x80001628 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2640        M 0x8000162c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2641        M 0x80001630 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     2642        M 0x80001634 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     2643        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2644        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2647        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2652        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd7, (wrb) s0  <-- 0x80002cd8
       0     2655        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cd9, (wrb) s10 <-- 0x80002cda
       0     2656        M 0x80000ab4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2657        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd8, a0  <~~ Byte[0x80002cd8]
       0     2668        M                                           #; (lsu) a0  <-- 108
       0     2669        M 0x80000abc bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a94
       0     2670        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     2671        M 0x80000a98 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2672        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2673        M 0x80000aa0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2674        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2675        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2678        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     2679        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2680        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2681        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2682        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2683        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2684        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2685        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2686        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2697        M                                           #; (lsu) a4  <-- 3
       0     2698        M 0x80001614 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2699        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 4 ~~> Word[0x8000305c]
       0     2700        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 3, (wrb) a4  <-- 0x8000305f
       0     2701        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305f, 108 ~~> Byte[0x800030a7]
       0     2702        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2723        M                                           #; (lsu) a4  <-- 4
       0     2724        M 0x80001628 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2725        M 0x8000162c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2726        M 0x80001630 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     2727        M 0x80001634 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     2728        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2729        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2732        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2737        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd8, (wrb) s0  <-- 0x80002cd9
       0     2740        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cda, (wrb) s10 <-- 0x80002cdb
       0     2741        M 0x80000ab4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2742        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd9, a0  <~~ Byte[0x80002cd9]
       0     2753        M                                           #; (lsu) a0  <-- 101
       0     2754        M 0x80000abc bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a94
       0     2755        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2756        M 0x80000a98 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2757        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2758        M 0x80000aa0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2759        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2760        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2763        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2764        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2765        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2766        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2767        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2768        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2769        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2770        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2771        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2782        M                                           #; (lsu) a4  <-- 4
       0     2783        M 0x80001614 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2784        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 5 ~~> Word[0x8000305c]
       0     2785        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 4, (wrb) a4  <-- 0x80003060
       0     2786        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003060, 101 ~~> Byte[0x800030a8]
       0     2787        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2808        M                                           #; (lsu) a4  <-- 5
       0     2809        M 0x80001628 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2810        M 0x8000162c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2811        M 0x80001630 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2812        M 0x80001634 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2813        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2814        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2817        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2822        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd9, (wrb) s0  <-- 0x80002cda
       0     2825        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdb, (wrb) s10 <-- 0x80002cdc
       0     2826        M 0x80000ab4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2827        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cda, a0  <~~ Byte[0x80002cda]
       0     2838        M                                           #; (lsu) a0  <-- 115
       0     2839        M 0x80000abc bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a94
       0     2840        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     2841        M 0x80000a98 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2842        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2843        M 0x80000aa0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2844        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2845        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2848        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     2849        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2850        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2851        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2852        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2853        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2854        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2855        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2856        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2867        M                                           #; (lsu) a4  <-- 5
       0     2868        M 0x80001614 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2869        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 6 ~~> Word[0x8000305c]
       0     2870        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 5, (wrb) a4  <-- 0x80003061
       0     2871        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003061, 115 ~~> Byte[0x800030a9]
       0     2872        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2893        M                                           #; (lsu) a4  <-- 6
       0     2894        M 0x80001628 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2895        M 0x8000162c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2896        M 0x80001630 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     2897        M 0x80001634 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     2898        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2899        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2902        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2907        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cda, (wrb) s0  <-- 0x80002cdb
       0     2910        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdc, (wrb) s10 <-- 0x80002cdd
       0     2911        M 0x80000ab4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2912        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cdb, a0  <~~ Byte[0x80002cdb]
       0     2923        M                                           #; (lsu) a0  <-- 32
       0     2924        M 0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
       0     2925        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2926        M 0x80000a98 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2927        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2928        M 0x80000aa0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2929        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2930        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     2933        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2934        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2935        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2936        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2937        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     2938        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     2939        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2940        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     2941        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2952        M                                           #; (lsu) a4  <-- 6
       0     2953        M 0x80001614 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2954        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 7 ~~> Word[0x8000305c]
       0     2955        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 6, (wrb) a4  <-- 0x80003062
       0     2956        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003062, 32 ~~> Byte[0x800030aa]
       0     2957        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     2978        M                                           #; (lsu) a4  <-- 7
       0     2979        M 0x80001628 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2980        M 0x8000162c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2981        M 0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2982        M 0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2983        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2984        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     2987        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     2992        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cdb, (wrb) s0  <-- 0x80002cdc
       0     2995        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdd, (wrb) s10 <-- 0x80002cde
       0     2996        M 0x80000ab4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2997        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cdc, a0  <~~ Byte[0x80002cdc]
       0     3008        M                                           #; (lsu) a0  <-- 61
       0     3009        M 0x80000abc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a94
       0     3010        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3011        M 0x80000a98 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3012        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3013        M 0x80000aa0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3014        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3015        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     3018        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3019        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3020        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3021        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3022        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     3023        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     3024        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3025        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     3026        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     3037        M                                           #; (lsu) a4  <-- 7
       0     3038        M 0x80001614 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3039        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 8 ~~> Word[0x8000305c]
       0     3040        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 7, (wrb) a4  <-- 0x80003063
       0     3041        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003063, 61 ~~> Byte[0x800030ab]
       0     3042        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     3063        M                                           #; (lsu) a4  <-- 8
       0     3064        M 0x80001628 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3065        M 0x8000162c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3066        M 0x80001630 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3067        M 0x80001634 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3068        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3069        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     3072        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     3077        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cdc, (wrb) s0  <-- 0x80002cdd
       0     3080        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cde, (wrb) s10 <-- 0x80002cdf
       0     3081        M 0x80000ab4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3082        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cdd, a0  <~~ Byte[0x80002cdd]
       0     3093        M                                           #; (lsu) a0  <-- 32
       0     3094        M 0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
       0     3095        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3096        M 0x80000a98 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     3097        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3098        M 0x80000aa0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3099        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3100        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     3103        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3104        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3105        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3106        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3107        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     3108        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     3109        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3110        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     3111        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     3122        M                                           #; (lsu) a4  <-- 8
       0     3123        M 0x80001614 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     3124        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 9 ~~> Word[0x8000305c]
       0     3125        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 8, (wrb) a4  <-- 0x80003064
       0     3126        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003064, 32 ~~> Byte[0x800030ac]
       0     3127        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     3148        M                                           #; (lsu) a4  <-- 9
       0     3149        M 0x80001628 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     3150        M 0x8000162c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     3151        M 0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3152        M 0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3153        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3154        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     3157        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     3162        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cdd, (wrb) s0  <-- 0x80002cde
       0     3165        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdf, (wrb) s10 <-- 0x80002ce0
       0     3166        M 0x80000ab4 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     3167        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cde, a0  <~~ Byte[0x80002cde]
       0     3178        M                                           #; (lsu) a0  <-- 37
       0     3179        M 0x80000abc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a94
       0     3180        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000ac4
       0     3192        M 0x80000ac4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3193        M 0x80000ac8 j       pc + 0x10              #; goto 0x80000ad8
       0     3204        M 0x80000ad8 lbu     a0, -1(s10)            #; s10 = 0x80002ce0, a0  <~~ Byte[0x80002cdf]
       0     3215        M                                           #; (lsu) a0  <-- 102
       0     3216        M 0x80000adc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3217        M 0x80000ae0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b18
       0     3240        M 0x80000b18 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3241        M 0x80000b1c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3252        M 0x80000b20 addi    a1, s10, -1            #; s10 = 0x80002ce0, (wrb) a1  <-- 0x80002cdf
       0     3253        M 0x80000b24 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3254        M 0x80000b28 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000ba4
       0     3275        M 0x80000ba4 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3276        M 0x80000ba8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bf8
       0     3298        M 0x80000bf8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3299        M 0x80000bfc mv      s10, a1                #; a1  = 0x80002cdf, (wrb) s10 <-- 0x80002cdf
       0     3310        M 0x80000c00 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3311        M 0x80000c04 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3312        M 0x80000c08 j       pc + 0xc               #; goto 0x80000c14
       0     3333        M 0x80000c14 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3334        M 0x80000c18 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3335        M 0x80000c1c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3345        M 0x80000c20 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3346        M 0x80000c24 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3347        M 0x80000c28 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c8c
       0     3368        M 0x80000c8c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3380        M 0x80000c90 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3381        M 0x80000c94 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3382        M 0x80000c98 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3383        M 0x80000c9c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c9c
       0     3392        M 0x80000ca0 addi    a2, a2, 196            #; a2  = 0x80002c9c, (wrb) a2  <-- 0x80002d60
       0     3393        M 0x80000ca4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d60, (wrb) a1  <-- 0x80002e64
       0     3394        M 0x80000ca8 lw      a2, 0(a1)              #; a1  = 0x80002e64, a2  <~~ Word[0x80002e64]
       0     3395        M 0x80000cac li      a1, 8                  #; (wrb) a1  <-- 8
       0     3404        M 0x80000cb0 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3405        M                                           #; (lsu) a2  <-- 0x80000ce4
       0     3406        M 0x80000cb4 jr      a2                     #; a2  = 0x80000ce4, goto 0x80000ce4
       0     3427        M 0x80000ce4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3428        M 0x80000ce8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000cf0
       0     3439        M 0x80000cf0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3440        M 0x80000cf4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3442        M 0x80000cfc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3443        M 0x80000cf8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3444        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     3451        M 0x80000d00 mv      a0, s2                 #; s2  = 0x800015f4, (wrb) a0  <-- 0x800015f4
       0     3452        M 0x80000d04 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3453        M 0x80000d08 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     3454        M 0x80000d0c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3463        M 0x80000d10 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3464        M 0x80000d14 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3465        M 0x80000d18 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3466        M 0x80000d1c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d1c
       0     3475        M 0x80000d20 jalr    ra, ra, -1656          #; ra  = 0x80001d1c, (wrb) ra  <-- 0x80000d24, goto 0x800016a4
       0     3489        M 0x800016a4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3490        M 0x800016a8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d24 ~~> Word[0x0011fe9c]
       0     3491        M 0x800016ac sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3501        M 0x800016b0 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
       0     3502        M 0x800016b4 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015f4 ~~> Word[0x0011fe90]
       0     3503        M 0x800016b8 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3504        M 0x800016bc sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3513        M 0x800016c0 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3514        M 0x800016c4 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3515        M 0x800016c8 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3516        M 0x800016cc sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3525        M 0x800016d0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
       0     3526        M 0x800016d4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002cdf ~~> Word[0x0011fe70]
       0     3529        M 0x800016d8 fsd     fs0, 56(sp)            #; 285.0 ~~> Doub[0x0011fe68]
       0     3530        M 0x800016dc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3538        M 0x800016e4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800036e4
       0     3539        M 0x800016e8 addi    s1, s1, -1844          #; s1  = 0x800036e4, (wrb) s1  <-- 0x80002fb0
                         M 0x800016e0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3542        M 0x800016ec fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002fb0]
       0     3550        M 0x800016f4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3551        M 0x800016f8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3552        M 0x800016fc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800016f0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     3561        M 0x80001700 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     3562        M 0x80001704 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3563        M 0x80001708 mv      s7, a0                 #; a0  = 0x800015f4, (wrb) s7  <-- 0x800015f4
       0     3564        M 0x8000170c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017fc
       0     3586        M 0x800017fc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     3587        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     3596        M 0x80001800 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002800
       0     3597        M 0x80001804 addi    a0, a0, 1976           #; a0  = 0x80002800, (wrb) a0  <-- 0x80002fb8
       0     3600        M 0x80001808 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fb8]
       0     3609        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3610        M 0x8000180c fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3612        M                                           #; (acc) t3  <-- 0x00051e63
       0     3613        M 0x80001810 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000182c
       0     3620        M 0x8000182c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000282c
       0     3632        M 0x80001830 addi    a0, a0, 1940           #; a0  = 0x8000282c, (wrb) a0  <-- 0x80002fc0
       0     3634        M 0x80001838 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002838
       0     3635        M 0x8000183c addi    a0, a0, 1936           #; a0  = 0x80002838, (wrb) a0  <-- 0x80002fc8
                         M 0x80001834 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fc0]
       0     3644        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3646        M 0x80001840 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fc8]
       0     3647        M 0x80001844 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     3649        M                                           #; (acc) a0  <-- 0x00b57533
       0     3655        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3656        M 0x80001848 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     3658        M                                           #; (acc) a0  <-- 0x00b57533
       0     3659        M 0x8000184c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3660        M 0x80001850 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000194c
       0     3683        M 0x8000194c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3695        M 0x80001950 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3696        M 0x80001954 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000195c
       0     3697        M 0x8000195c li      a0, 10                 #; (wrb) a0  <-- 10
       0     3708        M 0x80001964 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000199c
       0     3709        M 0x80001960 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     3710        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     3730        M 0x8000199c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3742        M 0x800019a0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3743        M 0x800019a4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800029a4
       0     3744        M 0x800019a8 addi    a1, a1, 1292           #; a1  = 0x800029a4, (wrb) a1  <-- 0x80002eb0
       0     3745        M 0x800019ac add     a0, a0, a1             #; a0  = 48, a1  = 0x80002eb0, (wrb) a0  <-- 0x80002ee0
       0     3756        M 0x800019b0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ee0]
       0     3757        M 0x800019b4 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     3761        M 0x800019b8 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3762        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3763        M 0x800019bc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     3765        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3766        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     3767        M 0x800019c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029c4
       0     3768        M 0x800019c8 addi    a0, a0, 1548           #; a0  = 0x800029c4, (wrb) a0  <-- 0x80002fd0
                         M 0x800019c0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     3771        M 0x800019cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fd0], (f:fpu) ft2  <-- 0.0000000
       0     3779        M 0x800019d0 fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
       0     3780        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3781        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3783        M 0x800019d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3784        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3785        M 0x800019d8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0
       0     3788        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     3789        M 0x800019dc fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     3792        M 0x800019e0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a00
       0     3814        M 0x80001a00 flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     3816        M                                           #; (acc) s4  <-- 0x00059a63
       0     3817        M 0x80001a04 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a18
       0     3826        M 0x80001a1c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001a18 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3827        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3837        M 0x80001a20 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3838        M 0x80001a24 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3839        M 0x80001a28 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3840        M 0x80001a2c li      t0, 32                 #; (wrb) t0  <-- 32
       0     3849        M 0x80001a30 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3850        M 0x80001a34 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3851        M 0x80001a38 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3852        M 0x80001a3c li      a6, 10                 #; (wrb) a6  <-- 10
       0     3861        M 0x80001a40 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3862        M 0x80001a44 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3863        M 0x80001a48 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3864        M 0x80001a4c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3873        M 0x80001a50 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3874        M 0x80001a54 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3877        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3878        M 0x80001a58 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3879        M 0x80001a5c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3885        M 0x80001a60 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3886        M 0x80001a64 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3887        M 0x80001a68 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3888        M 0x80001a6c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3900        M 0x80001a70 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3901        M 0x80001a74 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3902        M 0x80001a78 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3903        M 0x80001a7c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3912        M 0x80001a80 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3913        M 0x80001a84 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3914        M 0x80001a88 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3915        M 0x80001a8c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3924        M 0x80001a90 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3925        M 0x80001a94 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3926        M 0x80001a98 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3927        M 0x80001a9c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3936        M 0x80001aa0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3937        M 0x80001aa4 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3938        M 0x80001aa8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3939        M 0x80001aac add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3948        M 0x80001ab0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3949        M 0x80001ab4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001abc
       0     3950        M 0x80001abc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3960        M 0x80001ac0 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3961        M 0x80001ac4 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000ac4
       0     3962        M 0x80001ac8 jalr    ra, ra, -1388          #; ra  = 0x80000ac4, (wrb) ra  <-- 0x80001acc, goto 0x80000558
       0     3983        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3984        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3995        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4018        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4030        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4031        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4032        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4033        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4053        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4054        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4065        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4066        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4067        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4068        M 0x800005ec ret                            #; ra  = 0x80001acc, goto 0x80001acc
       0     4079        M 0x80001acc li      a0, 0                  #; (wrb) a0  <-- 0
       0     4082        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4083        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4084        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4085        M 0x80001adc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4094        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4095        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4096        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     4097        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4098        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4099        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4100        M 0x80001adc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4101        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4102        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4103        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     4104        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4105        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4106        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4107        M 0x80001adc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4108        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4109        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4110        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     4111        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4112        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4113        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4114        M 0x80001adc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4115        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4116        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4117        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     4118        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4119        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4120        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4121        M 0x80001adc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4122        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4123        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4124        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4125        M 0x80001aec add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4137        M 0x80001af0 j       pc + 0x28              #; goto 0x80001b18
       0     4149        M 0x80001b18 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4150        M 0x80001b1c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4161        M 0x80001b20 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4162        M 0x80001b24 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4163        M 0x80001b28 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4164        M 0x80001b2c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4173        M 0x80001b30 j       pc + 0x8               #; goto 0x80001b38
       0     4174        M 0x80001b38 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4175        M 0x80001b3c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4186        M 0x80001b40 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4187        M 0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4189        M 0x80001b4c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001b48 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     4198        M 0x80001b50 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4199        M 0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4200        M 0x80001b58 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4201        M 0x80001b5c li      a4, 18                 #; (wrb) a4  <-- 18
       0     4210        M 0x80001b60 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4211        M 0x80001b64 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4214        M                                           #; (acc) a5  <-- 0x01f55793
       0     4215        M 0x80001b68 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4216        M 0x80001b6c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4222        M 0x80001b70 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4223        M 0x80001b74 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4226        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4227        M 0x80001b78 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4228        M 0x80001b7c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4234        M 0x80001b80 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4235        M 0x80001b84 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4236        M 0x80001b88 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4237        M 0x80001b8c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4246        M 0x80001b90 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4247        M 0x80001b94 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4248        M 0x80001b98 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4249        M 0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
       0     4261        M 0x80001ba4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4262        M 0x80001ba8 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4263        M 0x80001bac bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c18
       0     4284        M 0x80001c18 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4285        M 0x80001c1c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4296        M 0x80001c20 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c38
       0     4308        M 0x80001c38 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4309        M 0x80001c3c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4320        M 0x80001c40 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4321        M 0x80001c44 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c70
       0     4343        M 0x80001c70 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4344        M 0x80001c74 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4345        M 0x80001c78 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4346        M 0x80001c7c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4355        M 0x80001c80 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4356        M 0x80001c84 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     4357        M 0x80001c88 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001cb4
       0     4378        M 0x80001cb4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4379        M 0x80001cb8 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4380        M 0x80001cbc addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4390        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4391        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4392        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4393        M 0x80001ccc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4394        M                                           #; (lsu) a0  <-- 48
       0     4402        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4403        M 0x80001cd4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4404        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4405        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4425        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4426        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4427        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4428        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4429        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4430        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4431        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4432        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4433        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4444        M                                           #; (lsu) a4  <-- 9
       0     4445        M 0x80001614 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4446        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 10 ~~> Word[0x8000305c]
       0     4447        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 9, (wrb) a4  <-- 0x80003065
       0     4448        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003065, 48 ~~> Byte[0x800030ad]
       0     4449        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4470        M                                           #; (lsu) a4  <-- 10
       0     4471        M 0x80001628 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4472        M 0x8000162c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4473        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4474        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4475        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4476        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4479        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4484        M 0x80001ce0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4485        M 0x80001ce4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4486        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001cc0
       0     4487        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4488        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4489        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4490        M 0x80001ccc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4491        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4492        M 0x80001cd4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4493        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4494        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4495        M                                           #; (lsu) a0  <-- 46
       0     4497        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4498        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4499        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4500        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4501        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4502        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4503        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4504        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4505        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4516        M                                           #; (lsu) a4  <-- 10
       0     4517        M 0x80001614 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4518        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 11 ~~> Word[0x8000305c]
       0     4519        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 10, (wrb) a4  <-- 0x80003066
       0     4520        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003066, 46 ~~> Byte[0x800030ae]
       0     4521        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4542        M                                           #; (lsu) a4  <-- 11
       0     4543        M 0x80001628 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4544        M 0x8000162c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4545        M 0x80001630 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4546        M 0x80001634 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4547        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4548        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4551        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4556        M 0x80001ce0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4557        M 0x80001ce4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4558        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001cc0
       0     4559        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4560        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4561        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4562        M 0x80001ccc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4563        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4564        M 0x80001cd4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4565        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4566        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4567        M                                           #; (lsu) a0  <-- 48
       0     4569        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4570        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4571        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4572        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4573        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4574        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4575        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4576        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4577        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4588        M                                           #; (lsu) a4  <-- 11
       0     4589        M 0x80001614 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4590        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 12 ~~> Word[0x8000305c]
       0     4591        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 11, (wrb) a4  <-- 0x80003067
       0     4592        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003067, 48 ~~> Byte[0x800030af]
       0     4593        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4614        M                                           #; (lsu) a4  <-- 12
       0     4615        M 0x80001628 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4616        M 0x8000162c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4617        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4618        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4619        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4620        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4623        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4628        M 0x80001ce0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4629        M 0x80001ce4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4630        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001cc0
       0     4631        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4632        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4633        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4634        M 0x80001ccc addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4635        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4636        M 0x80001cd4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4637        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4638        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4639        M                                           #; (lsu) a0  <-- 48
       0     4641        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4642        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4643        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4644        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4645        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4646        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4647        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4648        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4649        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4660        M                                           #; (lsu) a4  <-- 12
       0     4661        M 0x80001614 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4662        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 13 ~~> Word[0x8000305c]
       0     4663        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 12, (wrb) a4  <-- 0x80003068
       0     4664        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003068, 48 ~~> Byte[0x800030b0]
       0     4665        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4686        M                                           #; (lsu) a4  <-- 13
       0     4687        M 0x80001628 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4688        M 0x8000162c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4689        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4690        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4691        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4692        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4695        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4700        M 0x80001ce0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4701        M 0x80001ce4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4702        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001cc0
       0     4703        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4704        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4705        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4706        M 0x80001ccc addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4707        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4708        M 0x80001cd4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4709        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4710        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4711        M                                           #; (lsu) a0  <-- 48
       0     4713        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4714        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4715        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4716        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4717        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4718        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4719        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4720        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4721        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4732        M                                           #; (lsu) a4  <-- 13
       0     4733        M 0x80001614 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4734        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 14 ~~> Word[0x8000305c]
       0     4735        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 13, (wrb) a4  <-- 0x80003069
       0     4736        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003069, 48 ~~> Byte[0x800030b1]
       0     4737        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4758        M                                           #; (lsu) a4  <-- 14
       0     4759        M 0x80001628 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4760        M 0x8000162c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4761        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4762        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4763        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4764        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4767        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4772        M 0x80001ce0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4773        M 0x80001ce4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4774        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001cc0
       0     4775        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4776        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4777        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4778        M 0x80001ccc addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4779        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4780        M 0x80001cd4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4781        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4782        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4783        M                                           #; (lsu) a0  <-- 48
       0     4785        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4786        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4787        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4788        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4789        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4790        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4791        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4792        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4793        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4804        M                                           #; (lsu) a4  <-- 14
       0     4805        M 0x80001614 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4806        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 15 ~~> Word[0x8000305c]
       0     4807        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 14, (wrb) a4  <-- 0x8000306a
       0     4808        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306a, 48 ~~> Byte[0x800030b2]
       0     4809        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4830        M                                           #; (lsu) a4  <-- 15
       0     4831        M 0x80001628 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4832        M 0x8000162c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4833        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4834        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4835        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4836        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4839        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4844        M 0x80001ce0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4845        M 0x80001ce4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4846        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001cc0
       0     4847        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4848        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4849        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4850        M 0x80001ccc addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4851        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4852        M 0x80001cd4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4853        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4854        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4855        M                                           #; (lsu) a0  <-- 48
       0     4857        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4858        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4859        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4860        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4861        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4862        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4863        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4864        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4865        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4876        M                                           #; (lsu) a4  <-- 15
       0     4877        M 0x80001614 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4878        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 16 ~~> Word[0x8000305c]
       0     4879        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 15, (wrb) a4  <-- 0x8000306b
       0     4880        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306b, 48 ~~> Byte[0x800030b3]
       0     4881        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4902        M                                           #; (lsu) a4  <-- 16
       0     4903        M 0x80001628 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4904        M 0x8000162c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4905        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4906        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4907        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4908        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4911        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4916        M 0x80001ce0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4917        M 0x80001ce4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4918        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001cc0
       0     4919        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4920        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4921        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4922        M 0x80001ccc addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     4923        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4924        M 0x80001cd4 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     4925        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4926        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     4927        M                                           #; (lsu) a0  <-- 48
       0     4929        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4930        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4931        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4932        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4933        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     4934        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     4935        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4936        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     4937        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4948        M                                           #; (lsu) a4  <-- 16
       0     4949        M 0x80001614 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     4950        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 17 ~~> Word[0x8000305c]
       0     4951        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 16, (wrb) a4  <-- 0x8000306c
       0     4952        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306c, 48 ~~> Byte[0x800030b4]
       0     4953        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     4974        M                                           #; (lsu) a4  <-- 17
       0     4975        M 0x80001628 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     4976        M 0x8000162c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     4977        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4978        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4979        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4980        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     4983        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     4988        M 0x80001ce0 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     4989        M 0x80001ce4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4990        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4991        M 0x80001cec j       pc + 0x8               #; goto 0x80001cf4
       0     5003        M 0x80001cf4 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
       0     5004        M 0x80001cf8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5005        M 0x80001cfc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5015        M 0x80001d00 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5016        M 0x80001d04 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5017        M 0x80001d08 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d38
       0     5038        M 0x80001d38 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5039        M 0x80001d3c mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
       0     5052        M 0x80001d40 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5053        M 0x80001d4c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001d44 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5054        M 0x80001d48 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5055        M                                           #; (f:lsu) fs0  <-- 285.0
       0     5057        M                                           #; (lsu) s10 <-- 0x80002cdf
       0     5062        M 0x80001d50 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5065        M                                           #; (lsu) s9  <-- 9
       0     5066        M 0x80001d54 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5069        M                                           #; (lsu) s8  <-- 16
       0     5070        M 0x80001d58 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5073        M                                           #; (lsu) s7  <-- 0
       0     5074        M 0x80001d5c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5077        M                                           #; (lsu) s6  <-- 0
       0     5078        M 0x80001d60 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5081        M                                           #; (lsu) s5  <-- -1
       0     5082        M 0x80001d64 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5085        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5086        M 0x80001d68 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5089        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5090        M 0x80001d6c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5093        M                                           #; (lsu) s2  <-- 0x800015f4
       0     5094        M 0x80001d70 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5097        M                                           #; (lsu) s1  <-- 9
       0     5098        M 0x80001d74 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5101        M                                           #; (lsu) s0  <-- 0
       0     5102        M 0x80001d78 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5103        M 0x80001d7c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5105        M                                           #; (lsu) ra  <-- 0x80000d24
       0     5106        M 0x80001d80 ret                            #; ra  = 0x80000d24, goto 0x80000d24
       0     5118        M 0x80000d24 j       pc + 0x7c0             #; goto 0x800014e4
       0     5121        M 0x800014e4 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
       0     5122        M 0x800014e8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5123        M 0x800014ec li      s7, 46                 #; (wrb) s7  <-- 46
       0     5133        M 0x800014f0 addi    s0, s10, 1             #; s10 = 0x80002cdf, (wrb) s0  <-- 0x80002ce0
       0     5134        M 0x800014f4 j       pc - 0xa74             #; goto 0x80000a80
       0     5145        M 0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002ce0, (wrb) s10 <-- 0x80002ce2
       0     5146        M 0x80000a84 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
       0     5147        M 0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5148        M 0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002ce0, a0  <~~ Byte[0x80002ce0]
       0     5159        M                                           #; (lsu) a0  <-- 10
       0     5160        M 0x80000a90 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5161        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5162        M 0x80000a98 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
       0     5163        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5169        M 0x80000aa0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5170        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5171        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     5183        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5184        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5185        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5186        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5187        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     5188        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     5189        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5190        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     5191        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     5202        M                                           #; (lsu) a4  <-- 17
       0     5203        M 0x80001614 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     5204        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 18 ~~> Word[0x8000305c]
       0     5205        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 17, (wrb) a4  <-- 0x8000306d
       0     5206        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306d, 10 ~~> Byte[0x800030b5]
       0     5207        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     5228        M                                           #; (lsu) a4  <-- 18
       0     5229        M 0x80001628 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     5230        M 0x8000162c snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     5231        M 0x80001630 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5232        M 0x80001634 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5233        M 0x80001638 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5234        M 0x8000163c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5235        M 0x80001640 add     a0, a3, a2             #; a3  = 0x8000305c, a2  = 0, (wrb) a0  <-- 0x8000305c
       0     5236        M 0x80001644 addi    a2, a0, 72             #; a0  = 0x8000305c, (wrb) a2  <-- 0x800030a4
       0     5237        M 0x80001648 sw      zero, 12(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003068]
       0     5238        M 0x8000164c li      a3, 64                 #; (wrb) a3  <-- 64
       0     5247        M 0x80001650 sw      a3, 8(a0)              #; a0  = 0x8000305c, 64 ~~> Word[0x80003064]
       0     5248        M 0x80001654 sw      zero, 20(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003070]
       0     5249        M 0x80001658 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5250        M 0x8000165c sw      a3, 16(a0)             #; a0  = 0x8000305c, 1 ~~> Word[0x8000306c]
       0     5259        M 0x80001660 sw      zero, 28(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003078]
       0     5260        M 0x80001664 sw      a2, 24(a0)             #; a0  = 0x8000305c, 0x800030a4 ~~> Word[0x80003074]
       0     5262        M 0x80001668 lw      a2, 0(a1)              #; a1  = 0x8000305c, a2  <~~ Word[0x8000305c]
       0     5263        M 0x8000166c addi    a3, a0, 8              #; a0  = 0x8000305c, (wrb) a3  <-- 0x80003064
       0     5272        M 0x80001670 sw      zero, 36(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003080]
       0     5291        M                                           #; (lsu) a2  <-- 18
       0     5292        M 0x80001674 sw      a2, 32(a0)             #; a0  = 0x8000305c, 18 ~~> Word[0x8000307c]
       0     5293        M 0x80001678 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003678
       0     5294        M 0x8000167c addi    a0, a0, -1912          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f00
       0     5295        M 0x80001680 sw      a3, 0(a0)              #; a0  = 0x80002f00, 0x80003064 ~~> Word[0x80002f00]
       0     5296        M 0x80001684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003684
       0     5297        M 0x80001688 addi    a0, a0, -1860          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002f40
       0     5298        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5321        M                                           #; (lsu) a2  <-- 0
       0     5322        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5323        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5334        M                                           #; (lsu) a2  <-- 0
       0     5335        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5336        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5347        M                                           #; (lsu) a2  <-- 0
       0     5348        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5349        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5360        M                                           #; (lsu) a2  <-- 0
       0     5361        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5362        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5373        M                                           #; (lsu) a2  <-- 0
       0     5374        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5375        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5386        M                                           #; (lsu) a2  <-- 0
       0     5387        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5388        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5399        M                                           #; (lsu) a2  <-- 0
       0     5400        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     5401        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     5412        M                                           #; (lsu) a2  <-- 1
       0     5413        M 0x80001690 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5414        M 0x80001694 sw      zero, 0(a0)            #; a0  = 0x80002f40, 0 ~~> Word[0x80002f40]
       0     5415        M 0x80001698 sw      zero, 0(a1)            #; a1  = 0x8000305c, 0 ~~> Word[0x8000305c]
       0     5416        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     5419        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce0, (wrb) s0  <-- 0x80002ce1
       0     5422        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce2, (wrb) s10 <-- 0x80002ce3
       0     5423        M 0x80000ab4 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
       0     5424        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce1, a0  <~~ Byte[0x80002ce1]
       0     5437        M                                           #; (lsu) a0  <-- 0
       0     5438        M 0x80000abc bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5450        M 0x80000ac0 j       pc + 0xad8             #; goto 0x80001598
       0     5462        M 0x80001598 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5463        M 0x8000159c bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x800015a4
       0     5474        M 0x800015a4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5475        M 0x800015a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5476        M 0x800015ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5486        M 0x800015b0 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x800015b4, goto 0x800015f4
       0     5500        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000169c
       0     5505        M 0x8000169c ret                            #; ra  = 0x800015b4, goto 0x800015b4
       0     5506        M 0x800015b4 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
       0     5507        M 0x800015b8 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5510        M                                           #; (lsu) s11 <-- 0
       0     5511        M 0x800015bc lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5514        M                                           #; (lsu) s10 <-- 0
       0     5515        M 0x800015c0 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5518        M                                           #; (lsu) s9  <-- 0
       0     5519        M 0x800015c4 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5522        M                                           #; (lsu) s8  <-- 0
       0     5523        M 0x800015c8 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5526        M                                           #; (lsu) s7  <-- 0
       0     5527        M 0x800015cc lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5530        M                                           #; (lsu) s6  <-- 0
       0     5531        M 0x800015d0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5534        M                                           #; (lsu) s5  <-- 0
       0     5535        M 0x800015d4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5538        M                                           #; (lsu) s4  <-- 0
       0     5539        M 0x800015d8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5542        M                                           #; (lsu) s3  <-- 0
       0     5543        M 0x800015dc lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5546        M                                           #; (lsu) s2  <-- 0x00100000
       0     5547        M 0x800015e0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5550        M                                           #; (lsu) s1  <-- 1936
       0     5551        M 0x800015e4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5554        M                                           #; (lsu) s0  <-- 0x00100050
       0     5555        M 0x800015e8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5556        M 0x800015ec addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5558        M                                           #; (lsu) ra  <-- 0x800009f0
       0     5559        M 0x800015f0 ret                            #; ra  = 0x800009f0, goto 0x800009f0
       0     5571        M 0x800009f0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5572        M 0x800009f4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5574        M                                           #; (lsu) ra  <-- 0x8000085c
       0     5575        M 0x800009f8 ret                            #; ra  = 0x8000085c, goto 0x8000085c
       0     5594        M 0x8000085c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000285c
       0     5606        M 0x80000860 addi    a0, a0, 1860           #; a0  = 0x8000285c, (wrb) a0  <-- 0x80002fa0
       0     5609        M 0x80000864 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fa0]
       0     5618        M                                           #; (f:lsu) ft0  <-- 285.0
       0     5619        M 0x80000874 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                         M 0x80000868 fadd.d  ft0, fs0, ft0          #; fs0  = 285.0, ft0  = 285.0
       0     5622        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 570.0
       0     5623        M 0x80000878 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                         M 0x8000086c fsgnjx.d fs0, ft0, ft0         #; ft0  = 570.0, ft0  = 570.0
       0     5624        M 0x8000087c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000287c
                         M                                           #; (f:fpu) fs0  <-- 570.0
       0     5625        M 0x80000870 fsd     fs0, 0(sp)             #; 570.0 ~~> Doub[0x0011ff40]
       0     5626        M                                           #; (lsu) a3  <-- 0
       0     5630        M 0x80000880 addi    a0, a0, 1126           #; a0  = 0x8000287c, (wrb) a0  <-- 0x80002ce2
       0     5631        M 0x80000884 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000884
       0     5632        M 0x80000888 jalr    ra, ra, 284            #; ra  = 0x80000884, (wrb) ra  <-- 0x8000088c, goto 0x800009a0
       0     5644        M 0x800009a0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5645        M 0x800009a4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000088c ~~> Word[0x0011ff1c]
       0     5646        M 0x800009a8 mv      t0, a0                 #; a0  = 0x80002ce2, (wrb) t0  <-- 0x80002ce2
       0     5647        M 0x800009ac sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
       0     5656        M 0x800009b0 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
       0     5657        M 0x800009b4 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
       0     5658        M 0x800009b8 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     5659        M 0x800009bc sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     5668        M 0x800009c0 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     5669        M 0x800009c4 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     5670        M 0x800009c8 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5671        M 0x800009cc sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5680        M 0x800009d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800019d0
       0     5681        M 0x800009d4 addi    a0, a0, -988           #; a0  = 0x800019d0, (wrb) a0  <-- 0x800015f4
       0     5682        M 0x800009d8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5683        M 0x800009dc li      a2, -1                 #; (wrb) a2  <-- -1
       0     5692        M 0x800009e0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5693        M 0x800009e4 mv      a3, t0                 #; t0  = 0x80002ce2, (wrb) a3  <-- 0x80002ce2
       0     5694        M 0x800009e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e8
       0     5695        M 0x800009ec jalr    ra, ra, 20             #; ra  = 0x800009e8, (wrb) ra  <-- 0x800009f0, goto 0x800009fc
       0     5696        M 0x800009fc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5699        M 0x80000a00 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009f0 ~~> Word[0x0011ff0c]
       0     5700        M 0x80000a04 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
       0     5701        M 0x80000a08 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 1936 ~~> Word[0x0011ff04]
       0     5702        M 0x80000a0c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     5711        M 0x80000a10 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5712        M 0x80000a14 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5713        M 0x80000a18 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5714        M 0x80000a1c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5723        M 0x80000a20 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5724        M 0x80000a24 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5725        M 0x80000a28 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5726        M 0x80000a2c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5735        M 0x80000a30 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5736        M 0x80000a34 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5737        M 0x80000a38 mv      s0, a3                 #; a3  = 0x80002ce2, (wrb) s0  <-- 0x80002ce2
       0     5738        M 0x80000a3c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5747        M 0x80000a40 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5748        M 0x80000a44 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5749        M 0x80000a48 mv      s2, a0                 #; a0  = 0x800015f4, (wrb) s2  <-- 0x800015f4
       0     5750        M 0x80000a4c j       pc + 0xc               #; goto 0x80000a58
       0     5759        M 0x80000a58 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5760        M 0x80000a5c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5771        M 0x80000a60 li      s11, 16                #; (wrb) s11 <-- 16
       0     5772        M 0x80000a64 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5773        M 0x80000a68 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5774        M 0x80000a6c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5783        M 0x80000a70 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5784        M 0x80000a74 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5785        M 0x80000a78 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5786        M 0x80000a7c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5787        M 0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002ce2, (wrb) s10 <-- 0x80002ce4
       0     5788        M 0x80000a84 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5789        M 0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5790        M 0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002ce2, a0  <~~ Byte[0x80002ce2]
       0     5801        M                                           #; (lsu) a0  <-- 101
       0     5802        M 0x80000a90 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     5803        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5804        M 0x80000a98 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5805        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5806        M 0x80000aa0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5807        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5808        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     5811        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5812        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5813        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5814        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5815        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     5816        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     5817        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5818        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     5819        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     5830        M                                           #; (lsu) a4  <-- 0
       0     5831        M 0x80001614 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5832        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 1 ~~> Word[0x8000305c]
       0     5833        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 0, (wrb) a4  <-- 0x8000305c
       0     5834        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305c, 101 ~~> Byte[0x800030a4]
       0     5835        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     5856        M                                           #; (lsu) a4  <-- 1
       0     5857        M 0x80001628 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5858        M 0x8000162c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5859        M 0x80001630 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5860        M 0x80001634 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5861        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5862        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     5865        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     5870        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce2, (wrb) s0  <-- 0x80002ce3
       0     5873        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce4, (wrb) s10 <-- 0x80002ce5
       0     5874        M 0x80000ab4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5875        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce3, a0  <~~ Byte[0x80002ce3]
       0     5886        M                                           #; (lsu) a0  <-- 114
       0     5887        M 0x80000abc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a94
       0     5888        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5889        M 0x80000a98 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5890        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5891        M 0x80000aa0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5892        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5893        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     5896        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5897        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5898        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5899        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5900        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     5901        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     5902        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5903        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     5904        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     5915        M                                           #; (lsu) a4  <-- 1
       0     5916        M 0x80001614 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5917        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 2 ~~> Word[0x8000305c]
       0     5918        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 1, (wrb) a4  <-- 0x8000305d
       0     5919        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305d, 114 ~~> Byte[0x800030a5]
       0     5920        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     5941        M                                           #; (lsu) a4  <-- 2
       0     5942        M 0x80001628 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5943        M 0x8000162c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5944        M 0x80001630 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5945        M 0x80001634 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5946        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5947        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     5950        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     5955        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce3, (wrb) s0  <-- 0x80002ce4
       0     5958        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce5, (wrb) s10 <-- 0x80002ce6
       0     5959        M 0x80000ab4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5960        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce4, a0  <~~ Byte[0x80002ce4]
       0     5971        M                                           #; (lsu) a0  <-- 114
       0     5972        M 0x80000abc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a94
       0     5973        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5974        M 0x80000a98 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5975        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5976        M 0x80000aa0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5977        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5978        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     5981        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5982        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5983        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5984        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5985        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     5986        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     5987        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5988        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     5989        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6000        M                                           #; (lsu) a4  <-- 2
       0     6001        M 0x80001614 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     6002        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 3 ~~> Word[0x8000305c]
       0     6003        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 2, (wrb) a4  <-- 0x8000305e
       0     6004        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305e, 114 ~~> Byte[0x800030a6]
       0     6005        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6026        M                                           #; (lsu) a4  <-- 3
       0     6027        M 0x80001628 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     6028        M 0x8000162c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     6029        M 0x80001630 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6030        M 0x80001634 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6031        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6032        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     6035        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     6040        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce4, (wrb) s0  <-- 0x80002ce5
       0     6043        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce6, (wrb) s10 <-- 0x80002ce7
       0     6044        M 0x80000ab4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     6045        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce5, a0  <~~ Byte[0x80002ce5]
       0     6056        M                                           #; (lsu) a0  <-- 111
       0     6057        M 0x80000abc bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a94
       0     6058        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     6059        M 0x80000a98 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     6060        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6061        M 0x80000aa0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     6062        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6063        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     6066        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     6067        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6068        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6069        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6070        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     6071        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     6072        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6073        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     6074        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6085        M                                           #; (lsu) a4  <-- 3
       0     6086        M 0x80001614 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     6087        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 4 ~~> Word[0x8000305c]
       0     6088        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 3, (wrb) a4  <-- 0x8000305f
       0     6089        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305f, 111 ~~> Byte[0x800030a7]
       0     6090        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6111        M                                           #; (lsu) a4  <-- 4
       0     6112        M 0x80001628 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     6113        M 0x8000162c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     6114        M 0x80001630 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     6115        M 0x80001634 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     6116        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6117        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     6120        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     6125        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce5, (wrb) s0  <-- 0x80002ce6
       0     6128        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce7, (wrb) s10 <-- 0x80002ce8
       0     6129        M 0x80000ab4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     6130        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce6, a0  <~~ Byte[0x80002ce6]
       0     6141        M                                           #; (lsu) a0  <-- 114
       0     6142        M 0x80000abc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a94
       0     6143        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6144        M 0x80000a98 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6145        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6146        M 0x80000aa0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6147        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6148        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     6151        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6152        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6153        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6154        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6155        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     6156        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     6157        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6158        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     6159        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6170        M                                           #; (lsu) a4  <-- 4
       0     6171        M 0x80001614 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6172        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 5 ~~> Word[0x8000305c]
       0     6173        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 4, (wrb) a4  <-- 0x80003060
       0     6174        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003060, 114 ~~> Byte[0x800030a8]
       0     6175        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6196        M                                           #; (lsu) a4  <-- 5
       0     6197        M 0x80001628 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6198        M 0x8000162c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6199        M 0x80001630 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6200        M 0x80001634 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6201        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6202        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     6205        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     6210        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce6, (wrb) s0  <-- 0x80002ce7
       0     6213        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce8, (wrb) s10 <-- 0x80002ce9
       0     6214        M 0x80000ab4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6215        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce7, a0  <~~ Byte[0x80002ce7]
       0     6226        M                                           #; (lsu) a0  <-- 32
       0     6227        M 0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
       0     6228        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6229        M 0x80000a98 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6230        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6231        M 0x80000aa0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6232        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6233        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     6236        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6237        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6238        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6239        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6240        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     6241        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     6242        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6243        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     6244        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6255        M                                           #; (lsu) a4  <-- 5
       0     6256        M 0x80001614 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6257        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 6 ~~> Word[0x8000305c]
       0     6258        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 5, (wrb) a4  <-- 0x80003061
       0     6259        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003061, 32 ~~> Byte[0x800030a9]
       0     6260        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6281        M                                           #; (lsu) a4  <-- 6
       0     6282        M 0x80001628 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6283        M 0x8000162c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6284        M 0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6285        M 0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6286        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6287        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     6290        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     6295        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce7, (wrb) s0  <-- 0x80002ce8
       0     6298        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce9, (wrb) s10 <-- 0x80002cea
       0     6299        M 0x80000ab4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6300        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce8, a0  <~~ Byte[0x80002ce8]
       0     6311        M                                           #; (lsu) a0  <-- 61
       0     6312        M 0x80000abc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a94
       0     6313        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6314        M 0x80000a98 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6315        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6316        M 0x80000aa0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6317        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6318        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     6321        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6322        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6323        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6324        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6325        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     6326        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     6327        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6328        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     6329        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6340        M                                           #; (lsu) a4  <-- 6
       0     6341        M 0x80001614 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6342        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 7 ~~> Word[0x8000305c]
       0     6343        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 6, (wrb) a4  <-- 0x80003062
       0     6344        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003062, 61 ~~> Byte[0x800030aa]
       0     6345        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6366        M                                           #; (lsu) a4  <-- 7
       0     6367        M 0x80001628 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6368        M 0x8000162c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6369        M 0x80001630 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6370        M 0x80001634 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6371        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6372        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     6375        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     6380        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce8, (wrb) s0  <-- 0x80002ce9
       0     6383        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cea, (wrb) s10 <-- 0x80002ceb
       0     6384        M 0x80000ab4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6385        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce9, a0  <~~ Byte[0x80002ce9]
       0     6396        M                                           #; (lsu) a0  <-- 32
       0     6397        M 0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
       0     6398        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6399        M 0x80000a98 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6400        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6401        M 0x80000aa0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6402        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6403        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     6406        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6407        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6408        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6409        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6410        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     6411        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     6412        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6413        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     6414        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6425        M                                           #; (lsu) a4  <-- 7
       0     6426        M 0x80001614 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6427        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 8 ~~> Word[0x8000305c]
       0     6428        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 7, (wrb) a4  <-- 0x80003063
       0     6429        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003063, 32 ~~> Byte[0x800030ab]
       0     6430        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     6451        M                                           #; (lsu) a4  <-- 8
       0     6452        M 0x80001628 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6453        M 0x8000162c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6454        M 0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6455        M 0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6456        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6457        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     6460        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     6465        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce9, (wrb) s0  <-- 0x80002cea
       0     6468        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ceb, (wrb) s10 <-- 0x80002cec
       0     6469        M 0x80000ab4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6470        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cea, a0  <~~ Byte[0x80002cea]
       0     6481        M                                           #; (lsu) a0  <-- 37
       0     6482        M 0x80000abc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a94
       0     6483        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000ac4
       0     6486        M 0x80000ac4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6487        M 0x80000ac8 j       pc + 0x10              #; goto 0x80000ad8
       0     6498        M 0x80000ad8 lbu     a0, -1(s10)            #; s10 = 0x80002cec, a0  <~~ Byte[0x80002ceb]
       0     6509        M                                           #; (lsu) a0  <-- 102
       0     6510        M 0x80000adc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6511        M 0x80000ae0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b18
       0     6516        M 0x80000b18 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6517        M 0x80000b1c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6519        M 0x80000b20 addi    a1, s10, -1            #; s10 = 0x80002cec, (wrb) a1  <-- 0x80002ceb
       0     6520        M 0x80000b24 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6521        M 0x80000b28 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000ba4
       0     6524        M 0x80000ba4 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6525        M 0x80000ba8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bf8
       0     6529        M 0x80000bf8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6530        M 0x80000bfc mv      s10, a1                #; a1  = 0x80002ceb, (wrb) s10 <-- 0x80002ceb
       0     6532        M 0x80000c00 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6533        M 0x80000c04 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6534        M 0x80000c08 j       pc + 0xc               #; goto 0x80000c14
       0     6555        M 0x80000c14 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6556        M 0x80000c18 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6557        M 0x80000c1c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6567        M 0x80000c20 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6568        M 0x80000c24 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6569        M 0x80000c28 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c8c
       0     6581        M 0x80000c8c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6584        M 0x80000c90 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6585        M 0x80000c94 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6586        M 0x80000c98 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6587        M 0x80000c9c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c9c
       0     6588        M 0x80000ca0 addi    a2, a2, 196            #; a2  = 0x80002c9c, (wrb) a2  <-- 0x80002d60
       0     6589        M 0x80000ca4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d60, (wrb) a1  <-- 0x80002e64
       0     6590        M 0x80000ca8 lw      a2, 0(a1)              #; a1  = 0x80002e64, a2  <~~ Word[0x80002e64]
       0     6591        M 0x80000cac li      a1, 8                  #; (wrb) a1  <-- 8
       0     6600        M 0x80000cb0 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6601        M                                           #; (lsu) a2  <-- 0x80000ce4
       0     6602        M 0x80000cb4 jr      a2                     #; a2  = 0x80000ce4, goto 0x80000ce4
       0     6614        M 0x80000ce4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6615        M 0x80000ce8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000cf0
       0     6626        M 0x80000cf0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     6627        M 0x80000cf4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     6629        M 0x80000cfc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     6630        M 0x80000cf8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     6631        M                                           #; (f:lsu) fa0  <-- 0.0
       0     6638        M 0x80000d00 mv      a0, s2                 #; s2  = 0x800015f4, (wrb) a0  <-- 0x800015f4
       0     6639        M 0x80000d04 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6640        M 0x80000d08 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6641        M 0x80000d0c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6650        M 0x80000d10 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6651        M 0x80000d14 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6652        M 0x80000d18 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6653        M 0x80000d1c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d1c
       0     6654        M 0x80000d20 jalr    ra, ra, -1656          #; ra  = 0x80001d1c, (wrb) ra  <-- 0x80000d24, goto 0x800016a4
       0     6659        M 0x800016a4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     6660        M 0x800016a8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d24 ~~> Word[0x0011fe9c]
       0     6661        M 0x800016ac sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     6662        M 0x800016b0 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     6663        M 0x800016b4 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015f4 ~~> Word[0x0011fe90]
       0     6664        M 0x800016b8 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     6665        M 0x800016bc sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6666        M 0x800016c0 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     6667        M 0x800016c4 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     6668        M 0x800016c8 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     6669        M 0x800016cc sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     6670        M 0x800016d0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     6671        M 0x800016d4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002ceb ~~> Word[0x0011fe70]
       0     6674        M 0x800016d8 fsd     fs0, 56(sp)            #; 570.0 ~~> Doub[0x0011fe68]
       0     6675        M 0x800016e4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800036e4
                         M 0x800016dc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     6676        M 0x800016e8 addi    s1, s1, -1844          #; s1  = 0x800036e4, (wrb) s1  <-- 0x80002fb0
                         M 0x800016e0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     6679        M 0x800016f4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x800016ec fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002fb0]
       0     6680        M 0x800016f8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     6681        M 0x800016fc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     6682        M 0x80001700 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     6683        M 0x80001704 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     6684        M 0x80001708 mv      s7, a0                 #; a0  = 0x800015f4, (wrb) s7  <-- 0x800015f4
       0     6688        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6689        M 0x800016f0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     6691        M                                           #; (acc) a6  <-- 0x0e049863
       0     6692        M 0x8000170c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017fc
       0     6697        M 0x800017fc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     6698        M 0x80001800 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002800
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     6699        M 0x80001804 addi    a0, a0, 1976           #; a0  = 0x80002800, (wrb) a0  <-- 0x80002fb8
       0     6702        M 0x80001808 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fb8]
       0     6711        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6712        M 0x8000180c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6714        M                                           #; (acc) t3  <-- 0x00051e63
       0     6715        M 0x80001810 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000182c
       0     6716        M 0x8000182c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000282c
       0     6719        M 0x80001830 addi    a0, a0, 1940           #; a0  = 0x8000282c, (wrb) a0  <-- 0x80002fc0
       0     6721        M 0x80001838 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002838
       0     6722        M 0x8000183c addi    a0, a0, 1936           #; a0  = 0x80002838, (wrb) a0  <-- 0x80002fc8
                         M 0x80001834 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fc0]
       0     6725        M 0x80001840 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fc8]
       0     6731        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6732        M 0x80001844 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     6734        M                                           #; (acc) a0  <-- 0x00b57533
                         M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6735        M 0x80001848 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     6737        M                                           #; (acc) a0  <-- 0x00b57533
       0     6738        M 0x8000184c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6739        M 0x80001850 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000194c
       0     6753        M 0x8000194c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6756        M 0x80001950 li      s8, 6                  #; (wrb) s8  <-- 6
       0     6757        M 0x80001954 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000195c
       0     6758        M 0x8000195c li      a0, 10                 #; (wrb) a0  <-- 10
       0     6760        M 0x80001964 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000199c
       0     6761        M 0x80001960 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     6762        M                                           #; (f:fpu) fs2  <-- 0.0
       0     6764        M 0x8000199c li      s0, 0                  #; (wrb) s0  <-- 0
       0     6767        M 0x800019a0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6768        M 0x800019a4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800029a4
       0     6769        M 0x800019a8 addi    a1, a1, 1292           #; a1  = 0x800029a4, (wrb) a1  <-- 0x80002eb0
       0     6770        M 0x800019ac add     a0, a0, a1             #; a0  = 48, a1  = 0x80002eb0, (wrb) a0  <-- 0x80002ee0
       0     6773        M 0x800019b0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ee0]
       0     6774        M 0x800019b4 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     6778        M 0x800019b8 fcvt.d.w ft0, s1               #; ac1  = 0
       0     6779        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6780        M 0x800019c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029c4
                         M 0x800019bc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     6781        M 0x800019c8 addi    a0, a0, 1548           #; a0  = 0x800029c4, (wrb) a0  <-- 0x80002fd0
       0     6782        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     6783        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6784        M 0x800019c0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     6785        M 0x800019cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fd0]
       0     6787        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6788        M 0x800019d0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     6790        M                                           #; (acc) gp  <-- 0xd21501d3
       0     6792        M 0x800019d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     6793        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6794        M 0x800019d8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
       0     6797        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6798        M 0x800019dc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6801        M 0x800019e0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a00
       0     6818        M 0x80001a00 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6820        M                                           #; (acc) s4  <-- 0x00059a63
       0     6821        M 0x80001a04 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a18
       0     6823        M 0x80001a1c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001a18 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6824        M                                           #; (f:fpu) fs1  <-- 0.0
       0     6825        M 0x80001a20 li      a2, 0                  #; (wrb) a2  <-- 0
       0     6826        M 0x80001a24 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6827        M 0x80001a28 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     6828        M 0x80001a2c li      t0, 32                 #; (wrb) t0  <-- 32
       0     6829        M 0x80001a30 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     6830        M 0x80001a34 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     6831        M 0x80001a38 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     6832        M 0x80001a3c li      a6, 10                 #; (wrb) a6  <-- 10
       0     6833        M 0x80001a40 li      a7, 9                  #; (wrb) a7  <-- 9
       0     6834        M 0x80001a44 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     6835        M 0x80001a48 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     6836        M 0x80001a4c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     6839        M                                           #; (acc) a0  <-- 0x00355513
       0     6840        M 0x80001a50 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     6841        M 0x80001a54 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     6844        M                                           #; (acc) a3  <-- 0x40d586b3
       0     6845        M 0x80001a58 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     6846        M 0x80001a5c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     6847        M 0x80001a60 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     6848        M 0x80001a64 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     6849        M 0x80001a68 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     6850        M 0x80001a6c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     6853        M 0x80001a70 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     6854        M 0x80001a74 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     6855        M 0x80001a78 li      a3, 30                 #; (wrb) a3  <-- 30
       0     6856        M 0x80001a7c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     6865        M 0x80001a80 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     6866        M 0x80001a84 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     6867        M 0x80001a88 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     6868        M 0x80001a8c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     6877        M 0x80001a90 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     6878        M 0x80001a94 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     6879        M 0x80001a98 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     6880        M 0x80001a9c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     6889        M 0x80001aa0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     6890        M 0x80001aa4 li      a1, 31                 #; (wrb) a1  <-- 31
       0     6891        M 0x80001aa8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     6892        M 0x80001aac add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     6901        M 0x80001ab0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     6902        M 0x80001ab4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001abc
       0     6903        M 0x80001abc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     6913        M 0x80001ac0 li      a1, 48                 #; (wrb) a1  <-- 48
       0     6914        M 0x80001ac4 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000ac4
       0     6915        M 0x80001ac8 jalr    ra, ra, -1388          #; ra  = 0x80000ac4, (wrb) ra  <-- 0x80001acc, goto 0x80000558
       0     6927        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     6928        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     6930        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     6944        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     6956        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     6957        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     6958        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     6959        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     6970        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     6971        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     6973        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     6974        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     6975        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     6976        M 0x800005ec ret                            #; ra  = 0x80001acc, goto 0x80001acc
       0     6987        M 0x80001acc li      a0, 0                  #; (wrb) a0  <-- 0
       0     6990        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     6991        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     6992        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     6993        M 0x80001adc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     6994        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6995        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6996        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     6997        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     6998        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     6999        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     7000        M 0x80001adc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     7001        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7002        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     7003        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     7004        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     7005        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     7006        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     7007        M 0x80001adc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     7008        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7009        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     7010        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     7011        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     7012        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     7013        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     7014        M 0x80001adc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     7015        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7016        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     7017        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
       0     7018        M 0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     7019        M 0x80001ad4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     7020        M 0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     7021        M 0x80001adc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     7022        M 0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     7023        M 0x80001ae4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     7024        M 0x80001ae8 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     7025        M 0x80001aec add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     7028        M 0x80001af0 j       pc + 0x28              #; goto 0x80001b18
       0     7031        M 0x80001b18 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     7032        M 0x80001b1c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     7034        M 0x80001b20 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     7035        M 0x80001b24 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     7036        M 0x80001b28 li      a1, 46                 #; (wrb) a1  <-- 46
       0     7037        M 0x80001b2c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     7038        M 0x80001b30 j       pc + 0x8               #; goto 0x80001b38
       0     7039        M 0x80001b38 li      a0, 32                 #; (wrb) a0  <-- 32
       0     7040        M 0x80001b3c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     7042        M 0x80001b40 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     7043        M 0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7045        M 0x80001b4c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001b48 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     7046        M 0x80001b50 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7047        M 0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7048        M 0x80001b58 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     7049        M 0x80001b5c li      a4, 18                 #; (wrb) a4  <-- 18
       0     7050        M 0x80001b60 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7051        M 0x80001b64 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7054        M                                           #; (acc) a5  <-- 0x01f55793
       0     7055        M 0x80001b68 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7056        M 0x80001b6c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7057        M 0x80001b70 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7058        M 0x80001b74 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7061        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7062        M 0x80001b78 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7063        M 0x80001b7c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7064        M 0x80001b80 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7065        M 0x80001b84 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     7066        M 0x80001b88 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7067        M 0x80001b8c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     7068        M 0x80001b90 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7069        M 0x80001b94 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7070        M 0x80001b98 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7071        M 0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
       0     7074        M 0x80001ba4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7075        M 0x80001ba8 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7076        M 0x80001bac bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c18
       0     7079        M 0x80001c18 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7080        M 0x80001c1c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7082        M 0x80001c20 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c38
       0     7085        M 0x80001c38 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7086        M 0x80001c3c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7088        M 0x80001c40 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7089        M 0x80001c44 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c70
       0     7093        M 0x80001c70 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     7094        M 0x80001c74 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     7095        M 0x80001c78 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7096        M 0x80001c7c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7097        M 0x80001c80 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     7098        M 0x80001c84 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     7099        M 0x80001c88 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001cb4
       0     7111        M 0x80001cb4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7112        M 0x80001cb8 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7113        M 0x80001cbc addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     7123        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     7124        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     7125        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7126        M 0x80001ccc addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     7127        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7128        M 0x80001cd4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     7129        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7130        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7131        M                                           #; (lsu) a0  <-- 48
       0     7142        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7143        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7144        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7145        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7146        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7147        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7148        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7149        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7150        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7161        M                                           #; (lsu) a4  <-- 8
       0     7162        M 0x80001614 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     7163        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 9 ~~> Word[0x8000305c]
       0     7164        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 8, (wrb) a4  <-- 0x80003064
       0     7165        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003064, 48 ~~> Byte[0x800030ac]
       0     7166        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7187        M                                           #; (lsu) a4  <-- 9
       0     7188        M 0x80001628 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     7189        M 0x8000162c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     7190        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7191        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7192        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7193        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7196        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7201        M 0x80001ce0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     7202        M 0x80001ce4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7203        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001cc0
       0     7204        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     7205        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     7206        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7207        M 0x80001ccc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7208        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7209        M 0x80001cd4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7210        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7211        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7212        M                                           #; (lsu) a0  <-- 46
       0     7214        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7215        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7216        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7217        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7218        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7219        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7220        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7221        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7222        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7233        M                                           #; (lsu) a4  <-- 9
       0     7234        M 0x80001614 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7235        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 10 ~~> Word[0x8000305c]
       0     7236        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 9, (wrb) a4  <-- 0x80003065
       0     7237        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003065, 46 ~~> Byte[0x800030ad]
       0     7238        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7259        M                                           #; (lsu) a4  <-- 10
       0     7260        M 0x80001628 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7261        M 0x8000162c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7262        M 0x80001630 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7263        M 0x80001634 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7264        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7265        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7268        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7273        M 0x80001ce0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7274        M 0x80001ce4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     7275        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001cc0
       0     7276        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     7277        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     7278        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     7279        M 0x80001ccc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7280        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7281        M 0x80001cd4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7282        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7283        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7284        M                                           #; (lsu) a0  <-- 48
       0     7286        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7287        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7288        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7289        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7290        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7291        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7292        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7293        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7294        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7305        M                                           #; (lsu) a4  <-- 10
       0     7306        M 0x80001614 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7307        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 11 ~~> Word[0x8000305c]
       0     7308        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 10, (wrb) a4  <-- 0x80003066
       0     7309        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003066, 48 ~~> Byte[0x800030ae]
       0     7310        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7331        M                                           #; (lsu) a4  <-- 11
       0     7332        M 0x80001628 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7333        M 0x8000162c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7334        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7335        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7336        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7337        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7340        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7345        M 0x80001ce0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7346        M 0x80001ce4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     7347        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001cc0
       0     7348        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     7349        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     7350        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     7351        M 0x80001ccc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7352        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7353        M 0x80001cd4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7354        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7355        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7356        M                                           #; (lsu) a0  <-- 48
       0     7358        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7359        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7360        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7361        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7362        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7363        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7364        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7365        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7366        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7377        M                                           #; (lsu) a4  <-- 11
       0     7378        M 0x80001614 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7379        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 12 ~~> Word[0x8000305c]
       0     7380        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 11, (wrb) a4  <-- 0x80003067
       0     7381        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003067, 48 ~~> Byte[0x800030af]
       0     7382        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7403        M                                           #; (lsu) a4  <-- 12
       0     7404        M 0x80001628 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7405        M 0x8000162c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7406        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7407        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7408        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7409        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7412        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7417        M 0x80001ce0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7418        M 0x80001ce4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7419        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001cc0
       0     7420        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     7421        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     7422        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7423        M 0x80001ccc addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7424        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7425        M 0x80001cd4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7426        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7427        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7428        M                                           #; (lsu) a0  <-- 48
       0     7430        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7431        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7432        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7433        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7434        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7435        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7436        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7437        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7438        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7449        M                                           #; (lsu) a4  <-- 12
       0     7450        M 0x80001614 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7451        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 13 ~~> Word[0x8000305c]
       0     7452        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 12, (wrb) a4  <-- 0x80003068
       0     7453        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003068, 48 ~~> Byte[0x800030b0]
       0     7454        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7475        M                                           #; (lsu) a4  <-- 13
       0     7476        M 0x80001628 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7477        M 0x8000162c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7478        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7479        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7480        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7481        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7484        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7489        M 0x80001ce0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7490        M 0x80001ce4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7491        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001cc0
       0     7492        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     7493        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     7494        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7495        M 0x80001ccc addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7496        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7497        M 0x80001cd4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7498        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7499        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7500        M                                           #; (lsu) a0  <-- 48
       0     7502        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7503        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7504        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7505        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7506        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7507        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7508        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7509        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7510        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7521        M                                           #; (lsu) a4  <-- 13
       0     7522        M 0x80001614 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7523        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 14 ~~> Word[0x8000305c]
       0     7524        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 13, (wrb) a4  <-- 0x80003069
       0     7525        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003069, 48 ~~> Byte[0x800030b1]
       0     7526        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7547        M                                           #; (lsu) a4  <-- 14
       0     7548        M 0x80001628 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7549        M 0x8000162c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7550        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7551        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7552        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7553        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7556        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7561        M 0x80001ce0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7562        M 0x80001ce4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7563        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001cc0
       0     7564        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     7565        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     7566        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7567        M 0x80001ccc addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7568        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7569        M 0x80001cd4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7570        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7571        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7572        M                                           #; (lsu) a0  <-- 48
       0     7574        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7575        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7576        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7577        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7578        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7579        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7580        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7581        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7582        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7593        M                                           #; (lsu) a4  <-- 14
       0     7594        M 0x80001614 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     7595        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 15 ~~> Word[0x8000305c]
       0     7596        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 14, (wrb) a4  <-- 0x8000306a
       0     7597        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306a, 48 ~~> Byte[0x800030b2]
       0     7598        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7619        M                                           #; (lsu) a4  <-- 15
       0     7620        M 0x80001628 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     7621        M 0x8000162c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     7622        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7623        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7624        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7625        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7628        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7633        M 0x80001ce0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     7634        M 0x80001ce4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     7635        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001cc0
       0     7636        M 0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     7637        M 0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     7638        M 0x80001cc8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     7639        M 0x80001ccc addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     7640        M 0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7641        M 0x80001cd4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     7642        M 0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7643        M 0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
       0     7644        M                                           #; (lsu) a0  <-- 48
       0     7646        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7647        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7648        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7649        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7650        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7651        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7652        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7653        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7654        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7665        M                                           #; (lsu) a4  <-- 15
       0     7666        M 0x80001614 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     7667        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 16 ~~> Word[0x8000305c]
       0     7668        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 15, (wrb) a4  <-- 0x8000306b
       0     7669        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306b, 48 ~~> Byte[0x800030b3]
       0     7670        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7691        M                                           #; (lsu) a4  <-- 16
       0     7692        M 0x80001628 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     7693        M 0x8000162c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     7694        M 0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7695        M 0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7696        M 0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7697        M 0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
       0     7700        M 0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
       0     7705        M 0x80001ce0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7706        M 0x80001ce4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     7707        M 0x80001ce8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     7708        M 0x80001cec j       pc + 0x8               #; goto 0x80001cf4
       0     7711        M 0x80001cf4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     7712        M 0x80001cf8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     7713        M 0x80001cfc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7714        M 0x80001d00 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7715        M 0x80001d04 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7716        M 0x80001d08 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d38
       0     7719        M 0x80001d38 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7720        M 0x80001d3c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     7724        M 0x80001d40 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     7725        M 0x80001d4c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001d44 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     7726        M 0x80001d48 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     7727        M                                           #; (f:lsu) fs0  <-- 570.0
       0     7729        M                                           #; (lsu) s10 <-- 0x80002ceb
       0     7730        M 0x80001d50 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     7733        M                                           #; (lsu) s9  <-- 8
       0     7734        M 0x80001d54 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     7737        M                                           #; (lsu) s8  <-- 16
       0     7738        M 0x80001d58 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     7741        M                                           #; (lsu) s7  <-- 0
       0     7742        M 0x80001d5c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     7745        M                                           #; (lsu) s6  <-- 0
       0     7746        M 0x80001d60 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     7749        M                                           #; (lsu) s5  <-- -1
       0     7750        M 0x80001d64 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     7753        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7754        M 0x80001d68 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     7757        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     7758        M 0x80001d6c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     7761        M                                           #; (lsu) s2  <-- 0x800015f4
       0     7762        M 0x80001d70 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     7765        M                                           #; (lsu) s1  <-- 8
       0     7766        M 0x80001d74 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     7769        M                                           #; (lsu) s0  <-- 0
       0     7770        M 0x80001d78 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     7771        M 0x80001d7c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     7773        M                                           #; (lsu) ra  <-- 0x80000d24
       0     7774        M 0x80001d80 ret                            #; ra  = 0x80000d24, goto 0x80000d24
       0     7777        M 0x80000d24 j       pc + 0x7c0             #; goto 0x800014e4
       0     7780        M 0x800014e4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     7781        M 0x800014e8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7782        M 0x800014ec li      s7, 46                 #; (wrb) s7  <-- 46
       0     7783        M 0x800014f0 addi    s0, s10, 1             #; s10 = 0x80002ceb, (wrb) s0  <-- 0x80002cec
       0     7784        M 0x800014f4 j       pc - 0xa74             #; goto 0x80000a80
       0     7786        M 0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002cec, (wrb) s10 <-- 0x80002cee
       0     7787        M 0x80000a84 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     7788        M 0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7789        M 0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002cec, a0  <~~ Byte[0x80002cec]
       0     7800        M                                           #; (lsu) a0  <-- 10
       0     7801        M 0x80000a90 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7802        M 0x80000a94 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7803        M 0x80000a98 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     7804        M 0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7805        M 0x80000aa0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     7806        M 0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7807        M 0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
       0     7810        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7811        M 0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7812        M 0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7813        M 0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7814        M 0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
       0     7815        M 0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
       0     7816        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7817        M 0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
       0     7818        M 0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7829        M                                           #; (lsu) a4  <-- 16
       0     7830        M 0x80001614 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     7831        M 0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 17 ~~> Word[0x8000305c]
       0     7832        M 0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 16, (wrb) a4  <-- 0x8000306c
       0     7833        M 0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306c, 10 ~~> Byte[0x800030b4]
       0     7834        M 0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
       0     7855        M                                           #; (lsu) a4  <-- 17
       0     7856        M 0x80001628 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     7857        M 0x8000162c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     7858        M 0x80001630 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7859        M 0x80001634 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7860        M 0x80001638 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7861        M 0x8000163c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7862        M 0x80001640 add     a0, a3, a2             #; a3  = 0x8000305c, a2  = 0, (wrb) a0  <-- 0x8000305c
       0     7863        M 0x80001644 addi    a2, a0, 72             #; a0  = 0x8000305c, (wrb) a2  <-- 0x800030a4
       0     7864        M 0x80001648 sw      zero, 12(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003068]
       0     7865        M 0x8000164c li      a3, 64                 #; (wrb) a3  <-- 64
       0     7866        M 0x80001650 sw      a3, 8(a0)              #; a0  = 0x8000305c, 64 ~~> Word[0x80003064]
       0     7867        M 0x80001654 sw      zero, 20(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003070]
       0     7868        M 0x80001658 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7869        M 0x8000165c sw      a3, 16(a0)             #; a0  = 0x8000305c, 1 ~~> Word[0x8000306c]
       0     7878        M 0x80001660 sw      zero, 28(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003078]
       0     7880        M 0x80001664 sw      a2, 24(a0)             #; a0  = 0x8000305c, 0x800030a4 ~~> Word[0x80003074]
       0     7890        M 0x80001668 lw      a2, 0(a1)              #; a1  = 0x8000305c, a2  <~~ Word[0x8000305c]
       0     7891        M 0x8000166c addi    a3, a0, 8              #; a0  = 0x8000305c, (wrb) a3  <-- 0x80003064
       0     7892        M 0x80001670 sw      zero, 36(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003080]
       0     7912        M                                           #; (lsu) a2  <-- 17
       0     7913        M 0x80001674 sw      a2, 32(a0)             #; a0  = 0x8000305c, 17 ~~> Word[0x8000307c]
       0     7914        M 0x80001678 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003678
       0     7915        M 0x8000167c addi    a0, a0, -1912          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f00
       0     7916        M 0x80001680 sw      a3, 0(a0)              #; a0  = 0x80002f00, 0x80003064 ~~> Word[0x80002f00]
       0     7917        M 0x80001684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003684
       0     7918        M 0x80001688 addi    a0, a0, -1860          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002f40
       0     7919        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7942        M                                           #; (lsu) a2  <-- 0
       0     7943        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     7944        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7955        M                                           #; (lsu) a2  <-- 0
       0     7956        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     7957        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7968        M                                           #; (lsu) a2  <-- 0
       0     7969        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     7970        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7981        M                                           #; (lsu) a2  <-- 0
       0     7982        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     7983        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     7994        M                                           #; (lsu) a2  <-- 0
       0     7995        M 0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
       0     7996        M 0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
       0     8007        M                                           #; (lsu) a2  <-- 1
       0     8008        M 0x80001690 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8009        M 0x80001694 sw      zero, 0(a0)            #; a0  = 0x80002f40, 0 ~~> Word[0x80002f40]
       0     8010        M 0x80001698 sw      zero, 0(a1)            #; a1  = 0x8000305c, 0 ~~> Word[0x8000305c]
       0     8011        M 0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
       0     8014        M 0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cec, (wrb) s0  <-- 0x80002ced
       0     8017        M 0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cee, (wrb) s10 <-- 0x80002cef
       0     8018        M 0x80000ab4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     8019        M 0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ced, a0  <~~ Byte[0x80002ced]
       0     8032        M                                           #; (lsu) a0  <-- 0
       0     8033        M 0x80000abc bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8036        M 0x80000ac0 j       pc + 0xad8             #; goto 0x80001598
       0     8048        M 0x80001598 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8049        M 0x8000159c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800015a4
       0     8060        M 0x800015a4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8061        M 0x800015a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8062        M 0x800015ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8072        M 0x800015b0 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x800015b4, goto 0x800015f4
       0     8077        M 0x800015f4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000169c
       0     8082        M 0x8000169c ret                            #; ra  = 0x800015b4, goto 0x800015b4
       0     8083        M 0x800015b4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     8084        M 0x800015b8 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     8087        M                                           #; (lsu) s11 <-- 0
       0     8088        M 0x800015bc lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     8091        M                                           #; (lsu) s10 <-- 0
       0     8092        M 0x800015c0 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     8095        M                                           #; (lsu) s9  <-- 0
       0     8096        M 0x800015c4 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8099        M                                           #; (lsu) s8  <-- 0
       0     8100        M 0x800015c8 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8103        M                                           #; (lsu) s7  <-- 0
       0     8104        M 0x800015cc lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8107        M                                           #; (lsu) s6  <-- 0
       0     8108        M 0x800015d0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8111        M                                           #; (lsu) s5  <-- 0
       0     8112        M 0x800015d4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8115        M                                           #; (lsu) s4  <-- 0
       0     8116        M 0x800015d8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8119        M                                           #; (lsu) s3  <-- 0
       0     8120        M 0x800015dc lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8123        M                                           #; (lsu) s2  <-- 0x00100000
       0     8124        M 0x800015e0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8127        M                                           #; (lsu) s1  <-- 1936
       0     8128        M 0x800015e4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8131        M                                           #; (lsu) s0  <-- 0x00100050
       0     8132        M 0x800015e8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8133        M 0x800015ec addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8135        M                                           #; (lsu) ra  <-- 0x800009f0
       0     8136        M 0x800015f0 ret                            #; ra  = 0x800009f0, goto 0x800009f0
       0     8148        M 0x800009f0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8149        M 0x800009f4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8151        M                                           #; (lsu) ra  <-- 0x8000088c
       0     8152        M 0x800009f8 ret                            #; ra  = 0x8000088c, goto 0x8000088c
       0     8162        M 0x8000088c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000288c
       0     8165        M 0x80000890 addi    a0, a0, 1820           #; a0  = 0x8000288c, (wrb) a0  <-- 0x80002fa8
       0     8168        M 0x80000894 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fa8]
       0     8169        M 0x800008a0 lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
       0     8177        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     8178        M 0x80000898 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 570.0
       0     8179        M                                           #; (lsu) s2  <-- 0
       0     8180        M 0x800008a4 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
                         M 0x8000089c fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     8181        M                                           #; (f:lsu) fs0  <-- 0.0
       0     8183        M                                           #; (lsu) s1  <-- 0
       0     8184        M 0x800008a8 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     8187        M                                           #; (lsu) s0  <-- 0
       0     8188        M 0x800008ac lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     8189        M 0x800008b0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     8191        M                                           #; (lsu) ra  <-- 0x80002a50
       0     8192        M 0x800008b4 ret                            #; ra  = 0x80002a50, goto 0x80002a50
       0     8204        M 0x80002a50 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
       0     8205        M 0x80002a54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a54
       0     8206        M 0x80002a58 jalr    ra, ra, 524            #; ra  = 0x80002a54, (wrb) ra  <-- 0x80002a5c, goto 0x80002c60
       0     8218        M 0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     8219        M 0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a5c ~~> Word[0x0011ff5c]
       0     8220        M 0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
       0     8221        M 0x80002c6c jalr    ra, ra, -1260          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x8000277c
       0     8232        M 0x8000277c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8235        M 0x80002780 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8236        M 0x80002784 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8239        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8240        M 0x80002788 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8243        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8244        M 0x8000278c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     8245        M 0x80002790 ret                            #; ra  = 0x80002c70, goto 0x80002c70
       0     8247        M                                           #; (lsu) a0  <-- 0x00120190
       0     8248        M 0x80002c70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     8258        M                                           #; (lsu) a0  <-- 0
       0     8259        M 0x80002c74 mv      zero, a0               #; a0  = 0
       0     8260        M 0x80002c78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     8261        M 0x80002c7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     8263        M                                           #; (lsu) ra  <-- 0x80002a5c
       0     8264        M 0x80002c80 ret                            #; ra  = 0x80002a5c, goto 0x80002a5c
       0     8278        M 0x80002a5c mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
       0     8282        M 0x80002a60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a60
       0     8283        M 0x80002a64 jalr    ra, ra, 556            #; ra  = 0x80002a60, (wrb) ra  <-- 0x80002a68, goto 0x80002c8c
       0     8284        M 0x80002c8c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     8285        M 0x80002c90 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
       0     8286        M 0x80002c94 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a68 ~~> Word[0x0011ff5c]
       0     8287        M 0x80002c98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c98
       0     8288        M 0x80002c9c jalr    ra, ra, -1340          #; ra  = 0x80002c98, (wrb) ra  <-- 0x80002ca0, goto 0x8000275c
       0     8299        M 0x8000275c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8303        M 0x80002760 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8304        M 0x80002764 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8307        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8308        M 0x80002768 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8311        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8312        M 0x8000276c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     8313        M 0x80002770 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8315        M                                           #; (lsu) a0  <-- 0
       0     8316        M 0x80002774 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     8317        M 0x80002778 ret                            #; ra  = 0x80002ca0, goto 0x80002ca0
       0     8318        M 0x80002ca0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     8321        M                                           #; (lsu) t0  <-- 1
       0     8322        M 0x80002ca4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     8323        M 0x80002ca8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     8324        M 0x80002cac bnez    a0, pc + 24            #; a0  = 0, not taken
       0     8325        M                                           #; (lsu) ra  <-- 0x80002a68
       0     8329        M 0x80002cb0 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
       0     8330        M 0x80002cb4 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
       0     8331        M 0x80002cb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002cb8
       0     8332        M 0x80002cbc addi    t1, t1, 584            #; t1  = 0x80002cb8, (wrb) t1  <-- 0x80002f00
       0     8340        M 0x80002cc0 sw      t0, 0(t1)              #; t1  = 0x80002f00, 3 ~~> Word[0x80002f00]
       0     8341        M 0x80002cc4 ret                            #; ra  = 0x80002a68, goto 0x80002a68
       0     8354        M 0x80002a68 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 1936):
snitch_loads                                    38
snitch_stores                                   53
fpss_stores                                      1
fpss_loads                                      18
snitch_avg_load_latency                    18.2105
snitch_occupancy                            0.1625
snitch_fseq_rel_offloads                    0.1959
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                            20
fpss_avg_fpu_latency                          1.08
fpss_avg_load_latency                          9.0
fpss_occupancy                              0.0396
fpss_fpu_occupancy                          0.0257
fpss_fpu_rel_occupancy                      0.6494
cycles                                        1945
total_ipc                                   0.2021

Performance metrics for section 1 @ (1938, 2143):
snitch_loads                                     0
fpss_loads                                       0
snitch_avg_load_latency                          0
snitch_occupancy                            0.3077
snitch_fseq_rel_offloads                    0.1795
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             2
fpss_avg_fpu_latency                        2.1333
fpss_avg_load_latency                            0
fpss_occupancy                              0.0673
fpss_fpu_occupancy                          0.0721
fpss_fpu_rel_occupancy                      1.0714
cycles                                         208
total_ipc                                    0.375

Performance metrics for section 2 @ (2145, 8354):
snitch_stores                                  184
snitch_loads                                   197
fpss_loads                                      23
fpss_stores                                      7
snitch_avg_load_latency                    10.0406
snitch_occupancy                            0.3124
snitch_fseq_rel_offloads                    0.0334
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8421
fpss_avg_load_latency                       5.8696
fpss_occupancy                              0.0108
fpss_fpu_occupancy                          0.0061
fpss_fpu_rel_occupancy                      0.5672
cycles                                        6210
total_ipc                                   0.3232
