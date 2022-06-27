       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800027f0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800027f0, (wrb) ra  <-- 4120, goto 0x800027f0
       0      269        M 0x800027f0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037f0
       0      270        M 0x800027f4 addi    gp, gp, -232           #; gp  = 0x800037f0, (wrb) gp  <-- 0x80003708
       0      271        M 0x800027f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027f8
       0      272        M 0x800027fc jalr    ra, ra, 964            #; ra  = 0x800027f8, (wrb) ra  <-- 0x80002800, goto 0x80002bbc
       0      292        M 0x80002bbc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002bc0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002bc4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002bc8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002bcc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002bd0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002bd4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002bd8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002bdc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002be0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002be4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002be8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002bec ret                            #; ra  = 0x80002800, goto 0x80002800
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002800 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002804 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002808 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002808
       0      508        M 0x8000280c jalr    ra, ra, 1036           #; ra  = 0x80002808, (wrb) ra  <-- 0x80002810, goto 0x80002c14
       0      523        M 0x80002c14 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002c18 ret                            #; ra  = 0x80002810, goto 0x80002810
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002810 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002814 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002818 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000281c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002820 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002824 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002824
       0      551        M 0x80002828 addi    t0, t0, 2028           #; t0  = 0x80002824, (wrb) t0  <-- 0x80003010
       0      552        M 0x8000282c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000282c
       0      562        M 0x80002830 addi    t1, t1, 2024           #; t1  = 0x8000282c, (wrb) t1  <-- 0x80003014
       0      563        M 0x80002834 bge     t0, t1, pc + 16        #; t0  = 0x80003010, t1  = 0x80003014, not taken
       0      564        M 0x80002838 sw      zero, 0(t0)            #; t0  = 0x80003010, 0 ~~> Word[0x80003010]
       0      565        M 0x8000283c addi    t0, t0, 4              #; t0  = 0x80003010, (wrb) t0  <-- 0x80003014
       0      573        M 0x80002840 blt     t0, t1, pc - 8         #; t0  = 0x80003014, t1  = 0x80003014, not taken
       0      574        M 0x80002844 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002848 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000284c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002850 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002854 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002858 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000285c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002860 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002864 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002868 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000286c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002870 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002874 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002878 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000287c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002880 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002884 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002888 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000288c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002890 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002894 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002898 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000289c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800028a0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800028a4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800028a8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800028ac fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800028b0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800028b4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800028b8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800028bc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800028c0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800028c4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800028c8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800028cc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800028d0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800028d4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800028d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d8
       0      684        M 0x800028dc lw      t0, 900(t0)            #; t0  = 0x800028d8, t0  <~~ Word[0x80002c5c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800028e0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800028e4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800028e8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028e8
       0      708        M 0x800028ec lw      t2, 880(t2)            #; t2  = 0x800028e8, t2  <~~ Word[0x80002c58]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800028f0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800028f4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800028f8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800028fc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002900 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002904 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002908 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000290c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002910 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002910
       0      762        M 0x80002914 addi    t0, t0, 1528           #; t0  = 0x80002910, (wrb) t0  <-- 0x80002f08
       0      763        M 0x80002918 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002918
       0      764        M 0x8000291c addi    t1, t1, 1520           #; t1  = 0x80002918, (wrb) t1  <-- 0x80002f08
       0      775        M 0x80002920 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002920
       0      776        M 0x80002924 addi    t2, t2, 1512           #; t2  = 0x80002920, (wrb) t2  <-- 0x80002f08
       0      777        M 0x80002928 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002928
       0      778        M 0x8000292c addi    t3, t3, 1520           #; t3  = 0x80002928, (wrb) t3  <-- 0x80002f18
       0      787        M 0x80002930 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f08, (wrb) sp  <-- 0x80122e78
       0      788        M 0x80002934 sub     sp, sp, t1             #; sp  = 0x80122e78, t1  = 0x80002f08, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002938 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f08, (wrb) sp  <-- 0x80122e78
       0      790        M 0x8000293c sub     sp, sp, t3             #; sp  = 0x80122e78, t3  = 0x80002f18, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002940 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002944 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002948 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000294c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002950 bge     t0, t1, pc + 24        #; t0  = 0x80002f08, t1  = 0x80002f08, taken, goto 0x80002968
       0      823        M 0x80002968 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002968
       0      824        M 0x8000296c addi    t0, t0, 1440           #; t0  = 0x80002968, (wrb) t0  <-- 0x80002f08
       0      835        M 0x80002970 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002970
       0      836        M 0x80002974 addi    t1, t1, 1448           #; t1  = 0x80002970, (wrb) t1  <-- 0x80002f18
       0      837        M 0x80002978 bge     t0, t1, pc + 20        #; t0  = 0x80002f08, t1  = 0x80002f18, not taken
       0      838        M 0x8000297c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002980 addi    t0, t0, 4              #; t0  = 0x80002f08, (wrb) t0  <-- 0x80002f0c
       0      848        M 0x80002984 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002988 blt     t0, t2, pc - 12        #; t0  = 0x80002f0c, t2  = 0x80002f08, not taken
       0      850        M 0x8000298c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002990 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002994 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002998 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000299c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800029a0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800029a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a4
       0      877        M 0x800029a8 jalr    ra, ra, -1052          #; ra  = 0x800029a4, (wrb) ra  <-- 0x800029ac, goto 0x80002588
       0      899        M 0x80002588 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000258c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002590 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002594 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002598 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000259c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x800025a0 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x800025a4 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x800025a8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x800025ac sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x800025b0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x800025b4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x800025b8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x800025bc sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x800025c0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x800025c4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x800025c8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x800025cc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x800025d0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800025d4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800025d8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800025dc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800025e0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800025e4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800025e8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x800025ec sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800025f0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800025f4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800025f8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800025fc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x80002600 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x80002604 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x80002608 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x8000260c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x80002610 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x80002614 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x80002618 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x8000261c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x80002620 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x80002624 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x80002628 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x8000262c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002630 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002634 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002638 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000263c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002640 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002644 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002648 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000264c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002650 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002654 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002658 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000265c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002660 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002664 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002668 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000266c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002670 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002674 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002678 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000267c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000367c
       0     1293        M 0x80002680 addi    a1, a1, -1640          #; a1  = 0x8000367c, (wrb) a1  <-- 0x80003014
       0     1294        M 0x80002684 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003014, (wrb) a0  <-- 0x80003014
       0     1295        M 0x80002688 sw      zero, 0(a0)            #; a0  = 0x80003014, 0 ~~> Word[0x80003014]
       0     1296        M 0x8000268c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002690 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002694 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002698 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000269c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x800026a0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x800026a4 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x800026a8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x800026ac sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x800026b0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x800026b4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x800026b8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800026bc lw      a0, 0(a1)              #; a1  = 0x80003014, a0  <~~ Word[0x80003014]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800026c0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800026c4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800026c8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800026cc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x800026d0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x800026d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x800026d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x800026dc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800026e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800026e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800026e8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x800026ec ret                            #; ra  = 0x800029ac, goto 0x800029ac
       0     1415        M 0x800029ac lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x800029b0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x800029b4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x800029b8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x800029bc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x800029c0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x800029c4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029c4
       0     1434        M 0x800029c8 addi    t0, t0, 60             #; t0  = 0x800029c4, (wrb) t0  <-- 0x80002a00
       0     1435        M 0x800029cc csrw    mtvec, t0              #; t0  = 0x80002a00, (lsu) a4  <-- 4132
       0     1442        M 0x800029d0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d0
       0     1443        M 0x800029d4 jalr    ra, ra, 544            #; ra  = 0x800029d0, (wrb) ra  <-- 0x800029d8, goto 0x80002bf0
       0     1456        M 0x80002bf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002bf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029d8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
       0     1459        M 0x80002bfc jalr    ra, ra, -1256          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x80002710
       0     1480        M 0x80002710 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x80002714 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80002720 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x80002724 ret                            #; ra  = 0x80002c00, goto 0x80002c00
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002c00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002c04 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002c08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002c0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x800029d8
       0     1532        M 0x80002c10 ret                            #; ra  = 0x800029d8, goto 0x800029d8
       0     1536        M 0x800029d8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009d8
       0     1537        M 0x800029dc jalr    ra, ra, -932           #; ra  = 0x800009d8, (wrb) ra  <-- 0x800029e0, goto 0x80000634
       0     1542        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1543        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029e0 ~~> Word[0x0011ff5c]
       0     1545        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1546        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1547        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1548        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1550        M                                           #; (lsu) a1  <-- 0
       0     1558        M 0x80000650 bnez    a1, pc + 724           #; a1  = 0, not taken
       0     1559        M 0x80000654 lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
       0     1560        M 0x80000658 lui     a1, 0x3ff00            #; (wrb) a1  <-- 0x3ff00000
       0     1561        M 0x8000065c sw      a1, 4(a0)              #; a0  = 0x00100000, 0x3ff00000 ~~> Word[0x00100004]
       0     1570        M 0x80000660 sw      zero, 0(a0)            #; a0  = 0x00100000, 0 ~~> Word[0x00100000]
       0     1571        M 0x80000664 lui     a1, 0x3ff03            #; (wrb) a1  <-- 0x3ff03000
       0     1572        M 0x80000668 addi    a1, a1, -1803          #; a1  = 0x3ff03000, (wrb) a1  <-- 0x3ff028f5
       0     1573        M 0x8000066c sw      a1, 12(a0)             #; a0  = 0x00100000, 0x3ff028f5 ~~> Word[0x0010000c]
       0     1586        M 0x80000670 lui     a1, 0xc28f6            #; (wrb) a1  <-- 0xc28f6000
       0     1587        M 0x80000674 addi    a1, a1, -983           #; a1  = 0xc28f6000, (wrb) a1  <-- 0xc28f5c29
       0     1588        M 0x80000678 sw      a1, 8(a0)              #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100008]
       0     1589        M 0x8000067c lui     a2, 0x3ff05            #; (wrb) a2  <-- 0x3ff05000
       0     1599        M 0x80000680 addi    a2, a2, 491            #; a2  = 0x3ff05000, (wrb) a2  <-- 0x3ff051eb
       0     1600        M 0x80000684 sw      a2, 20(a0)             #; a0  = 0x00100000, 0x3ff051eb ~~> Word[0x00100014]
       0     1601        M 0x80000688 lui     a2, 0x851ec            #; (wrb) a2  <-- 0x851ec000
       0     1602        M 0x8000068c addi    a2, a2, -1966          #; a2  = 0x851ec000, (wrb) a2  <-- 0x851eb852
       0     1621        M 0x80000690 sw      a2, 16(a0)             #; a0  = 0x00100000, 0x851eb852 ~~> Word[0x00100010]
       0     1622        M 0x80000694 lui     a2, 0x3ff08            #; (wrb) a2  <-- 0x3ff08000
       0     1623        M 0x80000698 addi    a2, a2, -1311          #; a2  = 0x3ff08000, (wrb) a2  <-- 0x3ff07ae1
       0     1624        M 0x8000069c sw      a2, 28(a0)             #; a0  = 0x00100000, 0x3ff07ae1 ~~> Word[0x0010001c]
       0     1633        M 0x800006a0 lui     a2, 0x47ae1            #; (wrb) a2  <-- 0x47ae1000
       0     1634        M 0x800006a4 addi    a2, a2, 1147           #; a2  = 0x47ae1000, (wrb) a2  <-- 0x47ae147b
       0     1635        M 0x800006a8 sw      a2, 24(a0)             #; a0  = 0x00100000, 0x47ae147b ~~> Word[0x00100018]
       0     1636        M 0x800006ac lui     a2, 0x3ff0a            #; (wrb) a2  <-- 0x3ff0a000
       0     1645        M 0x800006b0 addi    a2, a2, 983            #; a2  = 0x3ff0a000, (wrb) a2  <-- 0x3ff0a3d7
       0     1646        M 0x800006b4 sw      a2, 36(a0)             #; a0  = 0x00100000, 0x3ff0a3d7 ~~> Word[0x00100024]
       0     1647        M 0x800006b8 lui     a2, 0xa3d7             #; (wrb) a2  <-- 0x0a3d7000
       0     1648        M 0x800006bc addi    a2, a2, 164            #; a2  = 0x0a3d7000, (wrb) a2  <-- 0x0a3d70a4
       0     1657        M 0x800006c0 sw      a2, 32(a0)             #; a0  = 0x00100000, 0x0a3d70a4 ~~> Word[0x00100020]
       0     1658        M 0x800006c4 lui     a3, 0x3ff0d            #; (wrb) a3  <-- 0x3ff0d000
       0     1659        M 0x800006c8 addi    a3, a3, -820           #; a3  = 0x3ff0d000, (wrb) a3  <-- 0x3ff0cccc
       0     1660        M 0x800006cc sw      a3, 44(a0)             #; a0  = 0x00100000, 0x3ff0cccc ~~> Word[0x0010002c]
       0     1669        M 0x800006d0 lui     a3, 0xccccd            #; (wrb) a3  <-- 0xccccd000
       0     1670        M 0x800006d4 addi    a3, a3, -819           #; a3  = 0xccccd000, (wrb) a3  <-- 0xcccccccd
       0     1671        M 0x800006d8 sw      a3, 40(a0)             #; a0  = 0x00100000, 0xcccccccd ~~> Word[0x00100028]
       0     1672        M 0x800006dc lui     a3, 0x3ff0f            #; (wrb) a3  <-- 0x3ff0f000
       0     1681        M 0x800006e0 addi    a3, a3, 1474           #; a3  = 0x3ff0f000, (wrb) a3  <-- 0x3ff0f5c2
       0     1682        M 0x800006e4 sw      a3, 52(a0)             #; a0  = 0x00100000, 0x3ff0f5c2 ~~> Word[0x00100034]
       0     1683        M 0x800006e8 lui     a3, 0x8f5c3            #; (wrb) a3  <-- 0x8f5c3000
       0     1684        M 0x800006ec addi    a3, a3, -1802          #; a3  = 0x8f5c3000, (wrb) a3  <-- 0x8f5c28f6
       0     1693        M 0x800006f0 sw      a3, 48(a0)             #; a0  = 0x00100000, 0x8f5c28f6 ~~> Word[0x00100030]
       0     1694        M 0x800006f4 lui     a3, 0x3ff12            #; (wrb) a3  <-- 0x3ff12000
       0     1695        M 0x800006f8 addi    a3, a3, -328           #; a3  = 0x3ff12000, (wrb) a3  <-- 0x3ff11eb8
       0     1696        M 0x800006fc sw      a3, 60(a0)             #; a0  = 0x00100000, 0x3ff11eb8 ~~> Word[0x0010003c]
       0     1705        M 0x80000700 lui     a3, 0x51eb8            #; (wrb) a3  <-- 0x51eb8000
       0     1706        M 0x80000704 addi    a3, a3, 1311           #; a3  = 0x51eb8000, (wrb) a3  <-- 0x51eb851f
       0     1707        M 0x80000708 sw      a3, 56(a0)             #; a0  = 0x00100000, 0x51eb851f ~~> Word[0x00100038]
       0     1708        M 0x8000070c lui     a4, 0x3ff14            #; (wrb) a4  <-- 0x3ff14000
       0     1717        M 0x80000710 addi    a4, a4, 1966           #; a4  = 0x3ff14000, (wrb) a4  <-- 0x3ff147ae
       0     1718        M 0x80000714 sw      a4, 68(a0)             #; a0  = 0x00100000, 0x3ff147ae ~~> Word[0x00100044]
       0     1719        M 0x80000718 lui     a4, 0x147ae            #; (wrb) a4  <-- 0x147ae000
       0     1720        M 0x8000071c addi    a4, a4, 328            #; a4  = 0x147ae000, (wrb) a4  <-- 0x147ae148
       0     1729        M 0x80000720 sw      a4, 64(a0)             #; a0  = 0x00100000, 0x147ae148 ~~> Word[0x00100040]
       0     1730        M 0x80000724 lui     a4, 0x3ff17            #; (wrb) a4  <-- 0x3ff17000
       0     1731        M 0x80000728 addi    a4, a4, 163            #; a4  = 0x3ff17000, (wrb) a4  <-- 0x3ff170a3
       0     1732        M 0x8000072c sw      a4, 76(a0)             #; a0  = 0x00100000, 0x3ff170a3 ~~> Word[0x0010004c]
       0     1741        M 0x80000730 lui     a4, 0xd70a4            #; (wrb) a4  <-- 0xd70a4000
       0     1742        M 0x80000734 addi    a4, a4, -655           #; a4  = 0xd70a4000, (wrb) a4  <-- 0xd70a3d71
       0     1743        M 0x80000738 sw      a4, 72(a0)             #; a0  = 0x00100000, 0xd70a3d71 ~~> Word[0x00100048]
       0     1744        M 0x8000073c lui     a4, 0x40240            #; (wrb) a4  <-- 0x40240000
       0     1753        M 0x80000740 sw      a4, 84(a0)             #; a0  = 0x00100000, 0x40240000 ~~> Word[0x00100054]
       0     1754        M 0x80000744 sw      zero, 80(a0)           #; a0  = 0x00100000, 0 ~~> Word[0x00100050]
       0     1755        M 0x80000748 addi    a4, a4, 1310           #; a4  = 0x40240000, (wrb) a4  <-- 0x4024051e
       0     1756        M 0x8000074c sw      a4, 92(a0)             #; a0  = 0x00100000, 0x4024051e ~~> Word[0x0010005c]
       0     1765        M 0x80000750 lui     a4, 0xb851f            #; (wrb) a4  <-- 0xb851f000
       0     1766        M 0x80000754 addi    a4, a4, -1147          #; a4  = 0xb851f000, (wrb) a4  <-- 0xb851eb85
       0     1767        M 0x80000758 sw      a4, 88(a0)             #; a0  = 0x00100000, 0xb851eb85 ~~> Word[0x00100058]
       0     1768        M 0x8000075c lui     a4, 0x40241            #; (wrb) a4  <-- 0x40241000
       0     1777        M 0x80000760 addi    a5, a4, -1475          #; a4  = 0x40241000, (wrb) a5  <-- 0x40240a3d
       0     1778        M 0x80000764 sw      a5, 100(a0)            #; a0  = 0x00100000, 0x40240a3d ~~> Word[0x00100064]
       0     1779        M 0x80000768 lui     a5, 0x70a3d            #; (wrb) a5  <-- 0x70a3d000
       0     1780        M 0x8000076c addi    a5, a5, 1802           #; a5  = 0x70a3d000, (wrb) a5  <-- 0x70a3d70a
       0     1789        M 0x80000770 sw      a5, 96(a0)             #; a0  = 0x00100000, 0x70a3d70a ~~> Word[0x00100060]
       0     1790        M 0x80000774 addi    a5, a4, -164           #; a4  = 0x40241000, (wrb) a5  <-- 0x40240f5c
       0     1791        M 0x80000778 sw      a5, 108(a0)            #; a0  = 0x00100000, 0x40240f5c ~~> Word[0x0010006c]
       0     1792        M 0x8000077c lui     a5, 0x28f5c            #; (wrb) a5  <-- 0x28f5c000
       0     1801        M 0x80000780 addi    a5, a5, 655            #; a5  = 0x28f5c000, (wrb) a5  <-- 0x28f5c28f
       0     1802        M 0x80000784 sw      a5, 104(a0)            #; a0  = 0x00100000, 0x28f5c28f ~~> Word[0x00100068]
       0     1803        M 0x80000788 addi    a4, a4, 1146           #; a4  = 0x40241000, (wrb) a4  <-- 0x4024147a
       0     1804        M 0x8000078c sw      a4, 116(a0)            #; a0  = 0x00100000, 0x4024147a ~~> Word[0x00100074]
       0     1813        M 0x80000790 lui     a4, 0xe147b            #; (wrb) a4  <-- 0xe147b000
       0     1814        M 0x80000794 addi    a4, a4, -492           #; a4  = 0xe147b000, (wrb) a4  <-- 0xe147ae14
       0     1815        M 0x80000798 sw      a4, 112(a0)            #; a0  = 0x00100000, 0xe147ae14 ~~> Word[0x00100070]
       0     1816        M 0x8000079c lui     a4, 0x40242            #; (wrb) a4  <-- 0x40242000
       0     1825        M 0x800007a0 addi    a5, a4, -1639          #; a4  = 0x40242000, (wrb) a5  <-- 0x40241999
       0     1826        M 0x800007a4 sw      a5, 124(a0)            #; a0  = 0x00100000, 0x40241999 ~~> Word[0x0010007c]
       0     1827        M 0x800007a8 lui     a5, 0x9999a            #; (wrb) a5  <-- 0x9999a000
       0     1828        M 0x800007ac addi    a5, a5, -1638          #; a5  = 0x9999a000, (wrb) a5  <-- 0x9999999a
       0     1837        M 0x800007b0 sw      a5, 120(a0)            #; a0  = 0x00100000, 0x9999999a ~~> Word[0x00100078]
       0     1838        M 0x800007b4 addi    a5, a4, -328           #; a4  = 0x40242000, (wrb) a5  <-- 0x40241eb8
       0     1839        M 0x800007b8 sw      a5, 132(a0)            #; a0  = 0x00100000, 0x40241eb8 ~~> Word[0x00100084]
       0     1840        M 0x800007bc sw      a3, 128(a0)            #; a0  = 0x00100000, 0x51eb851f ~~> Word[0x00100080]
       0     1849        M 0x800007c0 addi    a3, a4, 983            #; a4  = 0x40242000, (wrb) a3  <-- 0x402423d7
       0     1850        M 0x800007c4 sw      a3, 140(a0)            #; a0  = 0x00100000, 0x402423d7 ~~> Word[0x0010008c]
       0     1851        M 0x800007c8 sw      a2, 136(a0)            #; a0  = 0x00100000, 0x0a3d70a4 ~~> Word[0x00100088]
       0     1852        M 0x800007cc lui     a2, 0x40243            #; (wrb) a2  <-- 0x40243000
       0     1861        M 0x800007d0 addi    a3, a2, -1803          #; a2  = 0x40243000, (wrb) a3  <-- 0x402428f5
       0     1862        M 0x800007d4 sw      a3, 148(a0)            #; a0  = 0x00100000, 0x402428f5 ~~> Word[0x00100094]
       0     1863        M 0x800007d8 sw      a1, 144(a0)            #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100090]
       0     1864        M 0x800007dc addi    a1, a2, -492           #; a2  = 0x40243000, (wrb) a1  <-- 0x40242e14
       0     1873        M 0x800007e0 sw      a1, 156(a0)            #; a0  = 0x00100000, 0x40242e14 ~~> Word[0x0010009c]
       0     1875        M 0x800007e8 lui     a1, 0x7ae14            #; (wrb) a1  <-- 0x7ae14000
       0     1876        M 0x800007ec addi    a1, a1, 1966           #; a1  = 0x7ae14000, (wrb) a1  <-- 0x7ae147ae
                         M 0x800007e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
       0     1877        M                                           #; (f:lsu) ft0  <-- 1.0
       0     1885        M 0x800007f0 sw      a1, 152(a0)            #; a0  = 0x00100000, 0x7ae147ae ~~> Word[0x00100098]
       0     1887        M 0x800007f8 auipc   a1, 0x2                #; (wrb) a1  <-- 0x800027f8
       0     1888        M 0x800007fc addi    a1, a1, 1824           #; a1  = 0x800027f8, (wrb) a1  <-- 0x80002f18
                         M 0x800007f4 fadd.d  ft1, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     1891        M                                           #; (f:fpu) ft1  <-- 2.0
       0     1898        M 0x80000804 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002804
       0     1899        M 0x80000808 addi    a1, a1, 1820           #; a1  = 0x80002804, (wrb) a1  <-- 0x80002f20
                         M 0x80000800 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f18]
       0     1902        M 0x8000080c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f20]
       0     1908        M                                           #; (f:lsu) ft2  <-- 4.0
       0     1911        M 0x80000810 fsd     ft1, 8(a0)             #; 2.0 ~~> Doub[0x00100008], (f:lsu) ft3  <-- 8.0
       0     1912        M 0x80000814 fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 4.0
       0     1915        M                                           #; (f:fpu) ft1  <-- 4.0
       0     1916        M 0x80000818 fsd     ft1, 16(a0)            #; 4.0 ~~> Doub[0x00100010]
       0     1917        M 0x8000081c fmul.d  ft1, ft0, ft3          #; ft0  = 1.0, ft3  = 8.0
       0     1920        M                                           #; (f:fpu) ft1  <-- 8.0
       0     1921        M 0x80000820 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002820
       0     1922        M 0x80000824 addi    a1, a1, 1800           #; a1  = 0x80002820, (wrb) a1  <-- 0x80002f28
       0     1924        M 0x8000082c auipc   a1, 0x2                #; (wrb) a1  <-- 0x8000282c
       0     1925        M 0x80000828 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f28]
       0     1933        M 0x80000830 addi    a1, a1, 1796           #; a1  = 0x8000282c, (wrb) a1  <-- 0x80002f30
       0     1934        M                                           #; (f:lsu) ft2  <-- 16.0
       0     1936        M 0x80000834 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f30]
       0     1937        M 0x80000838 fsd     ft1, 24(a0)            #; 8.0 ~~> Doub[0x00100018]
       0     1938        M 0x8000083c fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 16.0
       0     1941        M                                           #; (f:fpu) ft1  <-- 16.0
       0     1945        M                                           #; (f:lsu) ft3  <-- 32.0
       0     1947        M 0x80000848 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002848
                         M 0x80000840 fsd     ft1, 32(a0)            #; 16.0 ~~> Doub[0x00100020]
       0     1948        M 0x8000084c addi    a1, a1, 1776           #; a1  = 0x80002848, (wrb) a1  <-- 0x80002f38
                         M 0x80000844 fmul.d  ft1, ft0, ft3          #; ft0  = 1.0, ft3  = 32.0
       0     1951        M                                           #; (f:fpu) ft1  <-- 32.0
       0     1958        M 0x80000854 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002854
       0     1959        M 0x80000858 addi    a1, a1, 1772           #; a1  = 0x80002854, (wrb) a1  <-- 0x80002f40
                         M 0x80000850 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f38]
       0     1962        M 0x8000085c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f40]
       0     1968        M                                           #; (f:lsu) ft2  <-- 64.0
       0     1971        M 0x80000860 fsd     ft1, 40(a0)            #; 32.0 ~~> Doub[0x00100028], (f:lsu) ft3  <-- 128.0
       0     1972        M 0x80000864 fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 64.0
       0     1975        M                                           #; (f:fpu) ft1  <-- 64.0
       0     1976        M 0x80000868 fsd     ft1, 48(a0)            #; 64.0 ~~> Doub[0x00100030]
       0     1977        M 0x8000086c fmul.d  ft1, ft0, ft3          #; ft0  = 1.0, ft3  = 128.0
       0     1980        M                                           #; (f:fpu) ft1  <-- 128.0
       0     1981        M 0x80000870 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002870
       0     1982        M 0x80000874 addi    a1, a1, 1752           #; a1  = 0x80002870, (wrb) a1  <-- 0x80002f48
       0     1984        M 0x8000087c auipc   a1, 0x2                #; (wrb) a1  <-- 0x8000287c
       0     1985        M 0x80000878 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f48]
       0     1993        M 0x80000880 addi    a1, a1, 1748           #; a1  = 0x8000287c, (wrb) a1  <-- 0x80002f50
       0     1994        M                                           #; (f:lsu) ft2  <-- 256.0
       0     1996        M 0x80000884 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f50]
       0     1997        M 0x80000888 fsd     ft1, 56(a0)            #; 128.0 ~~> Doub[0x00100038]
       0     1998        M 0x8000088c fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 256.0
       0     2001        M                                           #; (f:fpu) ft1  <-- 256.0
       0     2005        M                                           #; (f:lsu) ft3  <-- 512.0
       0     2007        M 0x80000890 fsd     ft1, 64(a0)            #; 256.0 ~~> Doub[0x00100040]
       0     2008        M 0x80000894 fmul.d  ft0, ft0, ft3          #; ft0  = 1.0, ft3  = 512.0
       0     2011        M                                           #; (f:fpu) ft0  <-- 512.0
       0     2012        M 0x80000898 fsd     ft0, 72(a0)            #; 512.0 ~~> Doub[0x00100048]
       0     2013        M 0x8000089c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x00100000]
       0     2014        M                                           #; (f:lsu) ft1  <-- 1.0
       0     2019        M 0x800008a0 fld     ft2, 8(a0)             #; ft2  <~~ Doub[0x00100008]
       0     2020        M 0x800008a4 fld     ft3, 16(a0)            #; ft3  <~~ Doub[0x00100010], (f:lsu) ft2  <-- 2.0
       0     2021        M 0x800008a8 fld     ft4, 24(a0)            #; ft4  <~~ Doub[0x00100018], (f:lsu) ft3  <-- 4.0
       0     2022        M 0x800008ac fld     ft5, 32(a0)            #; ft5  <~~ Doub[0x00100020], (f:lsu) ft4  <-- 8.0
       0     2023        M                                           #; (f:lsu) ft5  <-- 16.0
       0     2030        M 0x800008b4 auipc   a1, 0x2                #; (wrb) a1  <-- 0x800028b4
       0     2031        M 0x800008b8 addi    a1, a1, 1700           #; a1  = 0x800028b4, (wrb) a1  <-- 0x80002f58
                         M 0x800008b0 fld     ft6, 40(a0)            #; ft6  <~~ Doub[0x00100028]
       0     2032        M                                           #; (f:lsu) ft6  <-- 32.0
       0     2034        M 0x800008bc fld     ft7, 0(a1)             #; ft7  <~~ Doub[0x80002f58]
       0     2043        M 0x800008c0 fld     fa0, 48(a0)            #; fa0  <~~ Doub[0x00100030], (f:lsu) ft7  <-- -1023.0
       0     2044        M 0x800008c4 fld     fa1, 56(a0)            #; fa1  <~~ Doub[0x00100038], (f:lsu) fa0  <-- 64.0
       0     2045        M 0x800008c8 fld     fa2, 64(a0)            #; fa2  <~~ Doub[0x00100040], (f:lsu) fa1  <-- 128.0
       0     2046        M 0x800008cc fadd.d  ft1, ft1, ft7          #; ft1  = 1.0, ft7  = -1023.0, (f:lsu) fa2  <-- 256.0
       0     2049        M                                           #; (f:fpu) ft1  <-- -1022.0
       0     2055        M 0x800008d0 fadd.d  ft1, ft1, ft2          #; ft1  = -1022.0, ft2  = 2.0
       0     2058        M                                           #; (f:fpu) ft1  <-- -1020.0
       0     2059        M 0x800008d4 fadd.d  ft1, ft1, ft3          #; ft1  = -1020.0, ft3  = 4.0
       0     2062        M                                           #; (f:fpu) ft1  <-- -1016.0
       0     2063        M 0x800008d8 fadd.d  ft1, ft1, ft4          #; ft1  = -1016.0, ft4  = 8.0
       0     2066        M                                           #; (f:fpu) ft1  <-- -1008.0
       0     2067        M 0x800008dc fadd.d  ft1, ft1, ft5          #; ft1  = -1008.0, ft5  = 16.0
       0     2070        M                                           #; (f:fpu) ft1  <-- -992.0
       0     2071        M 0x800008e0 fadd.d  ft1, ft1, ft6          #; ft1  = -992.0, ft6  = 32.0
       0     2074        M                                           #; (f:fpu) ft1  <-- -960.0
       0     2075        M 0x800008e4 fadd.d  ft1, ft1, fa0          #; ft1  = -960.0, fa0  = 64.0
       0     2078        M                                           #; (f:fpu) ft1  <-- -896.0
       0     2079        M 0x800008e8 fadd.d  ft1, ft1, fa1          #; ft1  = -896.0, fa1  = 128.0
       0     2080        M 0x800008fc lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2082        M                                           #; (f:fpu) ft1  <-- -768.0
       0     2083        M                                           #; (lsu) a2  <-- 0
                         M 0x800008ec fadd.d  ft1, ft1, fa2          #; ft1  = -768.0, fa2  = 256.0
       0     2086        M                                           #; (f:fpu) ft1  <-- -512.0
       0     2087        M 0x800008f0 fadd.d  ft0, ft1, ft0          #; ft1  = -512.0, ft0  = 512.0
       0     2089        M 0x80000900 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2090        M 0x80000904 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002904
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2091        M 0x80000908 addi    a0, a0, 865            #; a0  = 0x80002904, (wrb) a0  <-- 0x80002c65
                         M 0x800008f4 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2092        M 0x8000090c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000090c
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     2093        M                                           #; (lsu) a3  <-- 0
                         M 0x800008f8 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2101        M 0x80000910 jalr    ra, ra, 40             #; ra  = 0x8000090c, (wrb) ra  <-- 0x80000914, goto 0x80000934
       0     2106        M 0x80000934 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2107        M 0x80000938 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000914 ~~> Word[0x0011ff1c]
       0     2108        M 0x8000093c mv      t0, a0                 #; a0  = 0x80002c65, (wrb) t0  <-- 0x80002c65
       0     2109        M 0x80000940 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
       0     2110        M 0x80000944 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
       0     2111        M 0x80000948 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x40241eb8 ~~> Word[0x0011ff34]
       0     2112        M 0x8000094c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0x40242000 ~~> Word[0x0011ff30]
       0     2121        M 0x80000950 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2122        M 0x80000954 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2123        M 0x80000958 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x80002f58 ~~> Word[0x0011ff24]
       0     2124        M 0x8000095c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2133        M 0x80000960 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2134        M 0x80000964 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001964
       0     2135        M 0x80000968 addi    a0, a0, -988           #; a0  = 0x80001964, (wrb) a0  <-- 0x80001588
       0     2136        M 0x8000096c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2145        M 0x80000970 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2146        M 0x80000974 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2147        M 0x80000978 mv      a3, t0                 #; t0  = 0x80002c65, (wrb) a3  <-- 0x80002c65
       0     2148        M 0x8000097c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000097c
       0     2157        M 0x80000980 jalr    ra, ra, 20             #; ra  = 0x8000097c, (wrb) ra  <-- 0x80000984, goto 0x80000990
       0     2169        M 0x80000990 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2170        M 0x80000994 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000984 ~~> Word[0x0011ff0c]
       0     2171        M 0x80000998 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2172        M 0x8000099c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2181        M 0x800009a0 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2182        M 0x800009a4 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2183        M 0x800009a8 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2184        M 0x800009ac sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2193        M 0x800009b0 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2194        M 0x800009b4 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2195        M 0x800009b8 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2196        M 0x800009bc sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2205        M 0x800009c0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2206        M 0x800009c4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2207        M 0x800009c8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2208        M 0x800009cc mv      s0, a3                 #; a3  = 0x80002c65, (wrb) s0  <-- 0x80002c65
       0     2217        M 0x800009d0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2218        M 0x800009d4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2219        M 0x800009d8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2220        M 0x800009dc mv      s2, a0                 #; a0  = 0x80001588, (wrb) s2  <-- 0x80001588
       0     2229        M 0x800009e0 j       pc + 0xc               #; goto 0x800009ec
       0     2230        M 0x800009ec li      s8, 0                  #; (wrb) s8  <-- 0
       0     2242        M 0x800009f0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2243        M 0x800009f4 li      s11, 16                #; (wrb) s11 <-- 16
       0     2244        M 0x800009f8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2245        M 0x800009fc lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2254        M 0x80000a00 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2255        M 0x80000a04 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2256        M 0x80000a08 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2257        M 0x80000a0c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2266        M 0x80000a10 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2267        M 0x80000a14 addi    s10, s0, 2             #; s0  = 0x80002c65, (wrb) s10 <-- 0x80002c67
       0     2268        M 0x80000a18 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2269        M 0x80000a1c li      s8, 10                 #; (wrb) s8  <-- 10
       0     2278        M 0x80000a20 lbu     a0, 0(s0)              #; s0  = 0x80002c65, a0  <~~ Byte[0x80002c65]
       0     2289        M                                           #; (lsu) a0  <-- 101
       0     2290        M 0x80000a24 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2291        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2292        M 0x80000a2c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2293        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2294        M 0x80000a34 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2295        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2296        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2316        M 0x80001588 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2317        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2328        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2329        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2330        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2331        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2340        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2341        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2352        M                                           #; (lsu) a4  <-- 0
       0     2353        M 0x800015a8 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2354        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 1 ~~> Word[0x80003014]
       0     2355        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 0, (wrb) a4  <-- 0x80003014
       0     2356        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003014, 101 ~~> Byte[0x8000305c]
       0     2357        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2378        M                                           #; (lsu) a4  <-- 1
       0     2379        M 0x800015bc addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2380        M 0x800015c0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2381        M 0x800015c4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2382        M 0x800015c8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2383        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2392        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2415        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2429        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c65, (wrb) s0  <-- 0x80002c66
       0     2430        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c67, (wrb) s10 <-- 0x80002c68
       0     2431        M 0x80000a48 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2432        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c66, a0  <~~ Byte[0x80002c66]
       0     2443        M                                           #; (lsu) a0  <-- 114
       0     2444        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a28
       0     2445        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2446        M 0x80000a2c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2448        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2449        M 0x80000a34 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2450        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2451        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2454        M 0x80001588 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2455        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2457        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2458        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2459        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2460        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2461        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2462        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2463        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2474        M                                           #; (lsu) a4  <-- 1
       0     2475        M 0x800015a8 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2476        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 2 ~~> Word[0x80003014]
       0     2477        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 1, (wrb) a4  <-- 0x80003015
       0     2478        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003015, 114 ~~> Byte[0x8000305d]
       0     2479        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2500        M                                           #; (lsu) a4  <-- 2
       0     2501        M 0x800015bc addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2502        M 0x800015c0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2503        M 0x800015c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2504        M 0x800015c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2505        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2506        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2511        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2516        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c66, (wrb) s0  <-- 0x80002c67
       0     2517        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c68, (wrb) s10 <-- 0x80002c69
       0     2518        M 0x80000a48 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2519        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c67, a0  <~~ Byte[0x80002c67]
       0     2530        M                                           #; (lsu) a0  <-- 114
       0     2531        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a28
       0     2532        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2533        M 0x80000a2c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2535        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2536        M 0x80000a34 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2537        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2538        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2541        M 0x80001588 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2542        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2544        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2545        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2546        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2547        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2548        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2549        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2550        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2561        M                                           #; (lsu) a4  <-- 2
       0     2562        M 0x800015a8 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2563        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 3 ~~> Word[0x80003014]
       0     2564        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 2, (wrb) a4  <-- 0x80003016
       0     2565        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003016, 114 ~~> Byte[0x8000305e]
       0     2566        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2587        M                                           #; (lsu) a4  <-- 3
       0     2588        M 0x800015bc addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2589        M 0x800015c0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2590        M 0x800015c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2591        M 0x800015c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2592        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2593        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2598        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2603        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c67, (wrb) s0  <-- 0x80002c68
       0     2604        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c69, (wrb) s10 <-- 0x80002c6a
       0     2605        M 0x80000a48 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2606        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c68, a0  <~~ Byte[0x80002c68]
       0     2617        M                                           #; (lsu) a0  <-- 111
       0     2618        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a28
       0     2619        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2620        M 0x80000a2c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2622        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2623        M 0x80000a34 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2624        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2625        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2628        M 0x80001588 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2629        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2631        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2632        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2633        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2634        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2635        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2636        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2637        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2648        M                                           #; (lsu) a4  <-- 3
       0     2649        M 0x800015a8 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2650        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 4 ~~> Word[0x80003014]
       0     2651        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 3, (wrb) a4  <-- 0x80003017
       0     2652        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003017, 111 ~~> Byte[0x8000305f]
       0     2653        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2674        M                                           #; (lsu) a4  <-- 4
       0     2675        M 0x800015bc addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2676        M 0x800015c0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2677        M 0x800015c4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2678        M 0x800015c8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2679        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2680        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2685        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2690        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c68, (wrb) s0  <-- 0x80002c69
       0     2691        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6a, (wrb) s10 <-- 0x80002c6b
       0     2692        M 0x80000a48 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2693        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c69, a0  <~~ Byte[0x80002c69]
       0     2704        M                                           #; (lsu) a0  <-- 114
       0     2705        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a28
       0     2706        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2707        M 0x80000a2c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2709        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2710        M 0x80000a34 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2711        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2712        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2715        M 0x80001588 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2716        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2718        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2719        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2720        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2721        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2722        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2723        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2724        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2735        M                                           #; (lsu) a4  <-- 4
       0     2736        M 0x800015a8 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2737        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 5 ~~> Word[0x80003014]
       0     2738        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 4, (wrb) a4  <-- 0x80003018
       0     2739        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003018, 114 ~~> Byte[0x80003060]
       0     2740        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2761        M                                           #; (lsu) a4  <-- 5
       0     2762        M 0x800015bc addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2763        M 0x800015c0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2764        M 0x800015c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2765        M 0x800015c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2766        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2767        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2772        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2777        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c69, (wrb) s0  <-- 0x80002c6a
       0     2778        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
       0     2779        M 0x80000a48 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2780        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6a, a0  <~~ Byte[0x80002c6a]
       0     2791        M                                           #; (lsu) a0  <-- 32
       0     2792        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a28
       0     2793        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2794        M 0x80000a2c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2796        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2797        M 0x80000a34 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2798        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2799        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2802        M 0x80001588 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2803        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2805        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2806        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2807        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2808        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2809        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2810        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2811        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2822        M                                           #; (lsu) a4  <-- 5
       0     2823        M 0x800015a8 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2824        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 6 ~~> Word[0x80003014]
       0     2825        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 5, (wrb) a4  <-- 0x80003019
       0     2826        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003019, 32 ~~> Byte[0x80003061]
       0     2827        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2848        M                                           #; (lsu) a4  <-- 6
       0     2849        M 0x800015bc addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2850        M 0x800015c0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2851        M 0x800015c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2852        M 0x800015c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2853        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2854        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2859        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2864        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6a, (wrb) s0  <-- 0x80002c6b
       0     2865        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6c, (wrb) s10 <-- 0x80002c6d
       0     2866        M 0x80000a48 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2867        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6b, a0  <~~ Byte[0x80002c6b]
       0     2878        M                                           #; (lsu) a0  <-- 61
       0     2879        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a28
       0     2880        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2881        M 0x80000a2c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2883        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2884        M 0x80000a34 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2885        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2886        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2889        M 0x80001588 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2890        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2892        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2893        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2894        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2895        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2896        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2897        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2898        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2909        M                                           #; (lsu) a4  <-- 6
       0     2910        M 0x800015a8 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2911        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 7 ~~> Word[0x80003014]
       0     2912        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 6, (wrb) a4  <-- 0x8000301a
       0     2913        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301a, 61 ~~> Byte[0x80003062]
       0     2914        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2935        M                                           #; (lsu) a4  <-- 7
       0     2936        M 0x800015bc addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2937        M 0x800015c0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2938        M 0x800015c4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2939        M 0x800015c8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2940        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2941        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     2946        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     2951        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6b, (wrb) s0  <-- 0x80002c6c
       0     2952        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6d, (wrb) s10 <-- 0x80002c6e
       0     2953        M 0x80000a48 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2954        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6c, a0  <~~ Byte[0x80002c6c]
       0     2965        M                                           #; (lsu) a0  <-- 32
       0     2966        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a28
       0     2967        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2968        M 0x80000a2c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2970        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2971        M 0x80000a34 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2972        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2973        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     2976        M 0x80001588 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2977        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2979        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2980        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2981        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     2982        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     2983        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2984        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     2985        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     2996        M                                           #; (lsu) a4  <-- 7
       0     2997        M 0x800015a8 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     2998        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 8 ~~> Word[0x80003014]
       0     2999        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 7, (wrb) a4  <-- 0x8000301b
       0     3000        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301b, 32 ~~> Byte[0x80003063]
       0     3001        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     3022        M                                           #; (lsu) a4  <-- 8
       0     3023        M 0x800015bc addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3024        M 0x800015c0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3025        M 0x800015c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3026        M 0x800015c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3027        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3028        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     3033        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     3038        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6c, (wrb) s0  <-- 0x80002c6d
       0     3039        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6e, (wrb) s10 <-- 0x80002c6f
       0     3040        M 0x80000a48 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3041        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6d, a0  <~~ Byte[0x80002c6d]
       0     3052        M                                           #; (lsu) a0  <-- 37
       0     3053        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a28
       0     3054        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a58
       0     3055        M 0x80000a58 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3056        M 0x80000a5c j       pc + 0x10              #; goto 0x80000a6c
       0     3068        M 0x80000a6c lbu     a0, -1(s10)            #; s10 = 0x80002c6f, a0  <~~ Byte[0x80002c6e]
       0     3079        M                                           #; (lsu) a0  <-- 102
       0     3080        M 0x80000a70 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3081        M 0x80000a74 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000aac
       0     3103        M 0x80000aac addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3115        M 0x80000ab0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3116        M 0x80000ab4 addi    a1, s10, -1            #; s10 = 0x80002c6f, (wrb) a1  <-- 0x80002c6e
       0     3117        M 0x80000ab8 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3118        M 0x80000abc bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b38
       0     3138        M 0x80000b38 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3139        M 0x80000b3c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b8c
       0     3161        M 0x80000b8c li      s6, 0                  #; (wrb) s6  <-- 0
       0     3173        M 0x80000b90 mv      s10, a1                #; a1  = 0x80002c6e, (wrb) s10 <-- 0x80002c6e
       0     3174        M 0x80000b94 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3175        M 0x80000b98 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3176        M 0x80000b9c j       pc + 0xc               #; goto 0x80000ba8
       0     3196        M 0x80000ba8 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3197        M 0x80000bac srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3208        M 0x80000bb0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3209        M 0x80000bb4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3210        M 0x80000bb8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3211        M 0x80000bbc bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c20
       0     3231        M 0x80000c20 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3232        M 0x80000c24 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3233        M 0x80000c28 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3234        M 0x80000c2c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3243        M 0x80000c30 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c30
       0     3244        M 0x80000c34 addi    a2, a2, 180            #; a2  = 0x80002c30, (wrb) a2  <-- 0x80002ce4
       0     3245        M 0x80000c38 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ce4, (wrb) a1  <-- 0x80002de8
       0     3246        M 0x80000c3c lw      a2, 0(a1)              #; a1  = 0x80002de8, a2  <~~ Word[0x80002de8]
       0     3255        M 0x80000c40 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3256        M 0x80000c44 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3257        M                                           #; (lsu) a2  <-- 0x80000c78
       0     3258        M 0x80000c48 jr      a2                     #; a2  = 0x80000c78, goto 0x80000c78
       0     3278        M 0x80000c78 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3279        M 0x80000c7c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c84
       0     3290        M 0x80000c84 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3291        M 0x80000c88 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3294        M 0x80000c8c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3295        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3302        M 0x80000c90 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3303        M 0x80000c94 mv      a0, s2                 #; s2  = 0x80001588, (wrb) a0  <-- 0x80001588
       0     3304        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3305        M 0x80000c9c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3314        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3315        M 0x80000ca4 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3316        M 0x80000ca8 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3317        M 0x80000cac mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3326        M 0x80000cb0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cb0
       0     3327        M 0x80000cb4 jalr    ra, ra, -1656          #; ra  = 0x80001cb0, (wrb) ra  <-- 0x80000cb8, goto 0x80001638
       0     3340        M 0x80001638 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3341        M 0x8000163c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cb8 ~~> Word[0x0011fe9c]
       0     3343        M 0x80001640 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3344        M 0x80001644 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3345        M 0x80001648 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001588 ~~> Word[0x0011fe90]
       0     3346        M 0x8000164c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3355        M 0x80001650 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3356        M 0x80001654 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3357        M 0x80001658 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3358        M 0x8000165c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3367        M 0x80001660 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3368        M 0x80001664 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3369        M 0x80001668 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c6e ~~> Word[0x0011fe70]
       0     3372        M 0x8000166c fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3381        M 0x80001678 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003678
                         M 0x80001670 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3382        M 0x8000167c addi    s1, s1, -1808          #; s1  = 0x80003678, (wrb) s1  <-- 0x80002f68
                         M 0x80001674 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3393        M 0x80001688 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001680 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f68]
       0     3394        M 0x8000168c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     3402        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3403        M 0x80001690 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001684 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3404        M 0x80001694 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3405        M 0x80001698 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3406        M 0x8000169c mv      s7, a0                 #; a0  = 0x80001588, (wrb) s7  <-- 0x80001588
       0     3415        M 0x800016a0 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001790
       0     3439        M 0x80001794 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002794
       0     3440        M 0x80001798 addi    a0, a0, 2012           #; a0  = 0x80002794, (wrb) a0  <-- 0x80002f70
                         M 0x80001790 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3441        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3443        M 0x8000179c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f70]
       0     3452        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3453        M 0x800017a0 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3455        M                                           #; (acc) t3  <-- 0x00051e63
       0     3456        M 0x800017a4 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017c0
       0     3473        M 0x800017c0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027c0
       0     3474        M 0x800017c4 addi    a0, a0, 1976           #; a0  = 0x800027c0, (wrb) a0  <-- 0x80002f78
       0     3476        M 0x800017cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027cc
       0     3477        M 0x800017c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f78]
       0     3485        M 0x800017d0 addi    a0, a0, 1972           #; a0  = 0x800027cc, (wrb) a0  <-- 0x80002f80
       0     3486        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3488        M 0x800017d4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f80]
       0     3489        M 0x800017d8 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3497        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3498        M 0x800017dc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3500        M                                           #; (acc) a0  <-- 0x00b57533
       0     3501        M 0x800017e0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3502        M 0x800017e4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018e0
       0     3520        M 0x800018e0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3521        M 0x800018e4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3522        M 0x800018e8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018f0
       0     3532        M 0x800018f0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3534        M 0x800018f8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001930
       0     3535        M 0x800018f4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3536        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3555        M 0x80001930 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3556        M 0x80001934 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3557        M 0x80001938 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002938
       0     3558        M 0x8000193c addi    a1, a1, 1280           #; a1  = 0x80002938, (wrb) a1  <-- 0x80002e38
       0     3567        M 0x80001940 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e38, (wrb) a0  <-- 0x80002e68
       0     3570        M 0x80001944 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e68]
       0     3571        M 0x80001948 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3575        M 0x8000194c fcvt.d.w ft0, s1               #; ac1  = 0
       0     3576        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3579        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3581        M 0x80001958 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002958
                         M 0x80001950 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3582        M 0x8000195c addi    a0, a0, 1584           #; a0  = 0x80002958, (wrb) a0  <-- 0x80002f88
       0     3584        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3585        M 0x80001954 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3588        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3593        M 0x80001960 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f88]
       0     3594        M 0x80001964 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3596        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3598        M 0x80001968 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3599        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3600        M 0x8000196c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3602        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3603        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3604        M 0x80001970 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3607        M 0x80001974 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001994
       0     3627        M 0x80001994 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3629        M                                           #; (acc) s4  <-- 0x00059a63
       0     3630        M 0x80001998 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019ac
       0     3639        M 0x800019ac fcvt.d.w fs1, zero             #; ac1  = 0
       0     3640        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3650        M 0x800019b0 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     3651        M 0x800019b4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3652        M 0x800019b8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3653        M 0x800019bc add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3662        M 0x800019c0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3663        M 0x800019c4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3664        M 0x800019c8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3665        M 0x800019cc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3674        M 0x800019d0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3675        M 0x800019d4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3676        M 0x800019d8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3677        M 0x800019dc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3686        M 0x800019e0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3689        M                                           #; (acc) a0  <-- 0x00355513
       0     3690        M 0x800019e4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3691        M 0x800019e8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3694        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3695        M 0x800019ec sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3698        M 0x800019f0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3699        M 0x800019f4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3700        M 0x800019f8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3701        M 0x800019fc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3710        M 0x80001a00 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3711        M 0x80001a04 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3712        M 0x80001a08 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3713        M 0x80001a0c li      a3, 30                 #; (wrb) a3  <-- 30
       0     3723        M 0x80001a10 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3724        M 0x80001a14 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3725        M 0x80001a18 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3726        M 0x80001a1c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3735        M 0x80001a20 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3736        M 0x80001a24 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3737        M 0x80001a28 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3738        M 0x80001a2c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3747        M 0x80001a30 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3748        M 0x80001a34 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3749        M 0x80001a38 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3750        M 0x80001a3c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3759        M 0x80001a40 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3760        M 0x80001a44 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3761        M 0x80001a48 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a50
       0     3771        M 0x80001a50 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3772        M 0x80001a54 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3773        M 0x80001a58 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a58
       0     3774        M 0x80001a5c jalr    ra, ra, -1280          #; ra  = 0x80000a58, (wrb) ra  <-- 0x80001a60, goto 0x80000558
       0     3794        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3795        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3806        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3829        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3841        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3842        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3843        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3844        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3864        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3865        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3876        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3877        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3878        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3879        M 0x800005ec ret                            #; ra  = 0x80001a60, goto 0x80001a60
       0     3890        M 0x80001a60 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3891        M 0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3892        M 0x80001a68 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3893        M 0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3902        M 0x80001a70 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3903        M 0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3904        M 0x80001a78 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3905        M 0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
       0     3906        M 0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3907        M 0x80001a68 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3908        M 0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3909        M 0x80001a70 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3910        M 0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3911        M 0x80001a78 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3912        M 0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
       0     3913        M 0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3914        M 0x80001a68 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3915        M 0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3916        M 0x80001a70 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3917        M 0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3918        M 0x80001a78 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3919        M 0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
       0     3920        M 0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3921        M 0x80001a68 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3922        M 0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     3923        M 0x80001a70 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     3924        M 0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3925        M 0x80001a78 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3926        M 0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
       0     3927        M 0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     3928        M 0x80001a68 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     3929        M 0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     3930        M 0x80001a70 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     3931        M 0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     3932        M 0x80001a78 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3933        M 0x80001a7c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     3945        M 0x80001a80 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     3946        M 0x80001a84 j       pc + 0x28              #; goto 0x80001aac
       0     3957        M 0x80001aac beqz    a1, pc + 28            #; a1  = 1, not taken
       0     3969        M 0x80001ab0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     3970        M 0x80001ab4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3971        M 0x80001ab8 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     3972        M 0x80001abc li      a1, 46                 #; (wrb) a1  <-- 46
       0     3981        M 0x80001ac0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     3982        M 0x80001ac4 j       pc + 0x8               #; goto 0x80001acc
       0     3983        M 0x80001acc li      a0, 32                 #; (wrb) a0  <-- 32
       0     3995        M 0x80001ad0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     3996        M 0x80001ad4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     3997        M 0x80001ad8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3999        M 0x80001adc flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4007        M 0x80001ae0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4008        M 0x80001ae4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4009        M 0x80001ae8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4010        M 0x80001aec addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4019        M 0x80001af0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4020        M 0x80001af4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4021        M 0x80001af8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4024        M                                           #; (acc) a5  <-- 0x01f55793
       0     4025        M 0x80001afc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4031        M 0x80001b00 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4032        M 0x80001b04 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4033        M 0x80001b08 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4036        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4037        M 0x80001b0c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4043        M 0x80001b10 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4044        M 0x80001b14 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4045        M 0x80001b18 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4046        M 0x80001b1c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4055        M 0x80001b20 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4056        M 0x80001b24 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4057        M 0x80001b28 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4058        M 0x80001b2c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4070        M 0x80001b30 j       pc + 0x8               #; goto 0x80001b38
       0     4071        M 0x80001b38 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4072        M 0x80001b3c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4083        M 0x80001b40 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001bac
       0     4106        M 0x80001bac li      a0, 31                 #; (wrb) a0  <-- 31
       0     4118        M 0x80001bb0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4119        M 0x80001bb4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bcc
       0     4130        M 0x80001bcc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4142        M 0x80001bd0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4143        M 0x80001bd4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4144        M 0x80001bd8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c04
       0     4165        M 0x80001c04 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4166        M 0x80001c08 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4167        M 0x80001c0c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4177        M 0x80001c10 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4178        M 0x80001c14 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4179        M 0x80001c18 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4180        M 0x80001c1c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c48
       0     4200        M 0x80001c48 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4201        M 0x80001c4c beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4212        M 0x80001c50 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4213        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4214        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4215        M 0x80001c5c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4217        M                                           #; (lsu) a0  <-- 48
       0     4224        M 0x80001c60 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4225        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4226        M 0x80001c68 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4227        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4236        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4239        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4240        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4242        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4243        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4244        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4245        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4246        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4247        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4248        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4259        M                                           #; (lsu) a4  <-- 8
       0     4260        M 0x800015a8 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4261        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 9 ~~> Word[0x80003014]
       0     4262        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 8, (wrb) a4  <-- 0x8000301c
       0     4263        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301c, 48 ~~> Byte[0x80003064]
       0     4264        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4285        M                                           #; (lsu) a4  <-- 9
       0     4286        M 0x800015bc addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4287        M 0x800015c0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4288        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4289        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4290        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4299        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4313        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4318        M 0x80001c74 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4319        M 0x80001c78 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4320        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c54
       0     4321        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4322        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4323        M 0x80001c5c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4324        M 0x80001c60 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4325        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4326        M 0x80001c68 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4327        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4328        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4329        M                                           #; (lsu) a0  <-- 46
       0     4331        M 0x80001588 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4332        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4334        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4335        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4336        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4337        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4338        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4339        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4340        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4351        M                                           #; (lsu) a4  <-- 9
       0     4352        M 0x800015a8 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4353        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 10 ~~> Word[0x80003014]
       0     4354        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 9, (wrb) a4  <-- 0x8000301d
       0     4355        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301d, 46 ~~> Byte[0x80003065]
       0     4356        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4377        M                                           #; (lsu) a4  <-- 10
       0     4378        M 0x800015bc addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4379        M 0x800015c0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4380        M 0x800015c4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4381        M 0x800015c8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4382        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4383        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4388        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4393        M 0x80001c74 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4394        M 0x80001c78 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4395        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c54
       0     4396        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4397        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4398        M 0x80001c5c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4399        M 0x80001c60 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4400        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4401        M 0x80001c68 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4402        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4403        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4404        M                                           #; (lsu) a0  <-- 48
       0     4406        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4407        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4409        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4410        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4411        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4412        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4413        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4414        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4415        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4426        M                                           #; (lsu) a4  <-- 10
       0     4427        M 0x800015a8 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4428        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 11 ~~> Word[0x80003014]
       0     4429        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 10, (wrb) a4  <-- 0x8000301e
       0     4430        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301e, 48 ~~> Byte[0x80003066]
       0     4431        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4452        M                                           #; (lsu) a4  <-- 11
       0     4453        M 0x800015bc addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4454        M 0x800015c0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4455        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4456        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4457        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4458        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4463        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4468        M 0x80001c74 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4469        M 0x80001c78 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4470        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c54
       0     4471        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4472        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4473        M 0x80001c5c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4474        M 0x80001c60 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4475        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4476        M 0x80001c68 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4477        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4478        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4479        M                                           #; (lsu) a0  <-- 48
       0     4481        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4482        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4484        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4485        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4486        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4487        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4488        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4489        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4490        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4501        M                                           #; (lsu) a4  <-- 11
       0     4502        M 0x800015a8 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4503        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 12 ~~> Word[0x80003014]
       0     4504        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 11, (wrb) a4  <-- 0x8000301f
       0     4505        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301f, 48 ~~> Byte[0x80003067]
       0     4506        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4527        M                                           #; (lsu) a4  <-- 12
       0     4528        M 0x800015bc addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4529        M 0x800015c0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4530        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4531        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4532        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4533        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4538        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4543        M 0x80001c74 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4544        M 0x80001c78 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4545        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c54
       0     4546        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4547        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4548        M 0x80001c5c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4549        M 0x80001c60 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4550        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4551        M 0x80001c68 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4552        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4553        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4554        M                                           #; (lsu) a0  <-- 48
       0     4556        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4557        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4559        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4560        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4561        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4562        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4563        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4564        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4565        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4576        M                                           #; (lsu) a4  <-- 12
       0     4577        M 0x800015a8 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4578        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 13 ~~> Word[0x80003014]
       0     4579        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 12, (wrb) a4  <-- 0x80003020
       0     4580        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003020, 48 ~~> Byte[0x80003068]
       0     4581        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4602        M                                           #; (lsu) a4  <-- 13
       0     4603        M 0x800015bc addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4604        M 0x800015c0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4605        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4606        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4607        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4608        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4613        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4618        M 0x80001c74 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4619        M 0x80001c78 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4620        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c54
       0     4621        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4622        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4623        M 0x80001c5c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4624        M 0x80001c60 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4625        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4626        M 0x80001c68 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4627        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4628        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4629        M                                           #; (lsu) a0  <-- 48
       0     4631        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4632        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4634        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4635        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4636        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4637        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4638        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4639        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4640        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4651        M                                           #; (lsu) a4  <-- 13
       0     4652        M 0x800015a8 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4653        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 14 ~~> Word[0x80003014]
       0     4654        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 13, (wrb) a4  <-- 0x80003021
       0     4655        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003021, 48 ~~> Byte[0x80003069]
       0     4656        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4677        M                                           #; (lsu) a4  <-- 14
       0     4678        M 0x800015bc addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4679        M 0x800015c0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4680        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4681        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4682        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4683        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4688        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4693        M 0x80001c74 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4694        M 0x80001c78 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4695        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c54
       0     4696        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4697        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4698        M 0x80001c5c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4699        M 0x80001c60 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4700        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4701        M 0x80001c68 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4702        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4703        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4704        M                                           #; (lsu) a0  <-- 48
       0     4706        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4707        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4709        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4710        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4711        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4712        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4713        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4714        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4715        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4726        M                                           #; (lsu) a4  <-- 14
       0     4727        M 0x800015a8 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4728        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 15 ~~> Word[0x80003014]
       0     4729        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 14, (wrb) a4  <-- 0x80003022
       0     4730        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003022, 48 ~~> Byte[0x8000306a]
       0     4731        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4752        M                                           #; (lsu) a4  <-- 15
       0     4753        M 0x800015bc addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4754        M 0x800015c0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4755        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4756        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4757        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4758        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4763        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4768        M 0x80001c74 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4769        M 0x80001c78 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4770        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c54
       0     4771        M 0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4772        M 0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4773        M 0x80001c5c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4774        M 0x80001c60 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4775        M 0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4776        M 0x80001c68 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4777        M 0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4778        M 0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
       0     4779        M                                           #; (lsu) a0  <-- 48
       0     4781        M 0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4782        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4784        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4785        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4786        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     4787        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     4788        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4789        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     4790        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4801        M                                           #; (lsu) a4  <-- 15
       0     4802        M 0x800015a8 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4803        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 16 ~~> Word[0x80003014]
       0     4804        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 15, (wrb) a4  <-- 0x80003023
       0     4805        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003023, 48 ~~> Byte[0x8000306b]
       0     4806        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     4827        M                                           #; (lsu) a4  <-- 16
       0     4828        M 0x800015bc addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4829        M 0x800015c0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4830        M 0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4831        M 0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4832        M 0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4833        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
       0     4838        M 0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
       0     4843        M 0x80001c74 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4844        M 0x80001c78 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4845        M 0x80001c7c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4857        M 0x80001c80 j       pc + 0x8               #; goto 0x80001c88
       0     4858        M 0x80001c88 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4859        M 0x80001c8c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4870        M 0x80001c90 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4871        M 0x80001c94 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4872        M 0x80001c98 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4873        M 0x80001c9c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ccc
       0     4893        M 0x80001ccc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4905        M 0x80001cd0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4908        M 0x80001cd4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4909        M 0x80001cd8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4910        M 0x80001cdc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4911        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4917        M 0x80001ce0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     4920        M                                           #; (lsu) s10 <-- 0x80002c6e
       0     4921        M 0x80001ce4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4924        M                                           #; (lsu) s9  <-- 8
       0     4925        M 0x80001ce8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4928        M                                           #; (lsu) s8  <-- 16
       0     4929        M 0x80001cec lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4932        M                                           #; (lsu) s7  <-- 0
       0     4933        M 0x80001cf0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4936        M                                           #; (lsu) s6  <-- 0
       0     4937        M 0x80001cf4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4940        M                                           #; (lsu) s5  <-- -1
       0     4941        M 0x80001cf8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4944        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4945        M 0x80001cfc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4948        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4949        M 0x80001d00 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4952        M                                           #; (lsu) s2  <-- 0x80001588
       0     4953        M 0x80001d04 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4956        M                                           #; (lsu) s1  <-- 8
       0     4957        M 0x80001d08 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4960        M                                           #; (lsu) s0  <-- 0
       0     4961        M 0x80001d0c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4962        M 0x80001d10 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     4964        M                                           #; (lsu) ra  <-- 0x80000cb8
       0     4965        M 0x80001d14 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     4976        M 0x80000cb8 j       pc + 0x7c0             #; goto 0x80001478
       0     4979        M 0x80001478 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     4980        M 0x8000147c li      s6, 37                 #; (wrb) s6  <-- 37
       0     4991        M 0x80001480 li      s7, 46                 #; (wrb) s7  <-- 46
       0     4992        M 0x80001484 addi    s0, s10, 1             #; s10 = 0x80002c6e, (wrb) s0  <-- 0x80002c6f
       0     4993        M 0x80001488 j       pc - 0xa74             #; goto 0x80000a14
       0     4994        M 0x80000a14 addi    s10, s0, 2             #; s0  = 0x80002c6f, (wrb) s10 <-- 0x80002c71
       0     4995        M 0x80000a18 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     4996        M 0x80000a1c li      s8, 10                 #; (wrb) s8  <-- 10
       0     4997        M 0x80000a20 lbu     a0, 0(s0)              #; s0  = 0x80002c6f, a0  <~~ Byte[0x80002c6f]
       0     5008        M                                           #; (lsu) a0  <-- 10
       0     5009        M 0x80000a24 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5010        M 0x80000a28 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5011        M 0x80000a2c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5012        M 0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5013        M 0x80000a34 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5014        M 0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5015        M 0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
       0     5018        M 0x80001588 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5019        M 0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5021        M 0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5022        M 0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5023        M 0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
       0     5024        M 0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
       0     5025        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5026        M 0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
       0     5027        M 0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     5038        M                                           #; (lsu) a4  <-- 16
       0     5039        M 0x800015a8 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5040        M 0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 17 ~~> Word[0x80003014]
       0     5041        M 0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 16, (wrb) a4  <-- 0x80003024
       0     5042        M 0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003024, 10 ~~> Byte[0x8000306c]
       0     5043        M 0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
       0     5064        M                                           #; (lsu) a4  <-- 17
       0     5065        M 0x800015bc addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5066        M 0x800015c0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5067        M 0x800015c4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5068        M 0x800015c8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5069        M 0x800015cc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5070        M 0x800015d0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5071        M 0x800015d4 add     a0, a3, a2             #; a3  = 0x80003014, a2  = 0, (wrb) a0  <-- 0x80003014
       0     5072        M 0x800015d8 addi    a2, a0, 72             #; a0  = 0x80003014, (wrb) a2  <-- 0x8000305c
       0     5073        M 0x800015dc sw      zero, 12(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003020]
       0     5074        M 0x800015e0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5075        M 0x800015e4 sw      a3, 8(a0)              #; a0  = 0x80003014, 64 ~~> Word[0x8000301c]
       0     5076        M 0x800015e8 sw      zero, 20(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003028]
       0     5077        M 0x800015ec li      a3, 1                  #; (wrb) a3  <-- 1
       0     5086        M 0x800015f0 sw      a3, 16(a0)             #; a0  = 0x80003014, 1 ~~> Word[0x80003024]
       0     5087        M 0x800015f4 sw      zero, 28(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003030]
       0     5089        M 0x800015f8 sw      a2, 24(a0)             #; a0  = 0x80003014, 0x8000305c ~~> Word[0x8000302c]
       0     5099        M 0x800015fc lw      a2, 0(a1)              #; a1  = 0x80003014, a2  <~~ Word[0x80003014]
       0     5100        M 0x80001600 addi    a3, a0, 8              #; a0  = 0x80003014, (wrb) a3  <-- 0x8000301c
       0     5101        M 0x80001604 sw      zero, 36(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003038]
       0     5121        M                                           #; (lsu) a2  <-- 17
       0     5122        M 0x80001608 sw      a2, 32(a0)             #; a0  = 0x80003014, 17 ~~> Word[0x80003034]
       0     5123        M 0x8000160c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000360c
       0     5124        M 0x80001610 addi    a0, a0, -1868          #; a0  = 0x8000360c, (wrb) a0  <-- 0x80002ec0
       0     5125        M 0x80001614 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x8000301c ~~> Word[0x80002ec0]
       0     5126        M 0x80001618 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003618
       0     5127        M 0x8000161c addi    a0, a0, -1816          #; a0  = 0x80003618, (wrb) a0  <-- 0x80002f00
       0     5136        M 0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5151        M                                           #; (lsu) a2  <-- 0
       0     5152        M 0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
       0     5153        M 0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5164        M                                           #; (lsu) a2  <-- 0
       0     5165        M 0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
       0     5166        M 0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5177        M                                           #; (lsu) a2  <-- 0
       0     5178        M 0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
       0     5179        M 0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5190        M                                           #; (lsu) a2  <-- 0
       0     5191        M 0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
       0     5192        M 0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5203        M                                           #; (lsu) a2  <-- 0
       0     5204        M 0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
       0     5205        M 0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5216        M                                           #; (lsu) a2  <-- 1
       0     5217        M 0x80001624 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5218        M 0x80001628 sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
       0     5219        M 0x8000162c sw      zero, 0(a1)            #; a1  = 0x80003014, 0 ~~> Word[0x80003014]
       0     5221        M 0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     5226        M 0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6f, (wrb) s0  <-- 0x80002c70
       0     5227        M 0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c71, (wrb) s10 <-- 0x80002c72
       0     5228        M 0x80000a48 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5229        M 0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c70, a0  <~~ Byte[0x80002c70]
       0     5241        M                                           #; (lsu) a0  <-- 0
       0     5242        M 0x80000a50 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5243        M 0x80000a54 j       pc + 0xad8             #; goto 0x8000152c
       0     5255        M 0x8000152c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5267        M 0x80001530 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001538
       0     5268        M 0x80001538 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5269        M 0x8000153c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5279        M 0x80001540 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5280        M 0x80001544 jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80001548, goto 0x80001588
       0     5293        M 0x80001588 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001630
       0     5298        M 0x80001630 ret                            #; ra  = 0x80001548, goto 0x80001548
       0     5299        M 0x80001548 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5300        M 0x8000154c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5303        M                                           #; (lsu) s11 <-- 0
       0     5304        M 0x80001550 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5307        M                                           #; (lsu) s10 <-- 0
       0     5308        M 0x80001554 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5311        M                                           #; (lsu) s9  <-- 0
       0     5312        M 0x80001558 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5315        M                                           #; (lsu) s8  <-- 0
       0     5316        M 0x8000155c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5319        M                                           #; (lsu) s7  <-- 0
       0     5320        M 0x80001560 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5323        M                                           #; (lsu) s6  <-- 0
       0     5324        M 0x80001564 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5327        M                                           #; (lsu) s5  <-- 0
       0     5328        M 0x80001568 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5331        M                                           #; (lsu) s4  <-- 0
       0     5332        M 0x8000156c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5335        M                                           #; (lsu) s3  <-- 0
       0     5336        M 0x80001570 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5339        M                                           #; (lsu) s2  <-- 0
       0     5340        M 0x80001574 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5343        M                                           #; (lsu) s1  <-- 0
       0     5344        M 0x80001578 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5347        M                                           #; (lsu) s0  <-- 0
       0     5348        M 0x8000157c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5349        M 0x80001580 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5351        M                                           #; (lsu) ra  <-- 0x80000984
       0     5352        M 0x80001584 ret                            #; ra  = 0x80000984, goto 0x80000984
       0     5355        M 0x80000984 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5356        M 0x80000988 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5358        M                                           #; (lsu) ra  <-- 0x80000914
       0     5359        M 0x8000098c ret                            #; ra  = 0x80000914, goto 0x80000914
       0     5362        M 0x80000914 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002914
       0     5363        M 0x80000918 addi    a0, a0, 1612           #; a0  = 0x80002914, (wrb) a0  <-- 0x80002f60
       0     5366        M 0x8000091c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f60]
       0     5367        M 0x80000928 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5368        M 0x8000092c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5375        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5376        M 0x80000920 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5377        M                                           #; (lsu) ra  <-- 0x800029e0
       0     5378        M 0x80000930 ret                            #; ra  = 0x800029e0, goto 0x800029e0
                         M 0x80000924 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5379        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5392        M 0x800029e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5393        M 0x800029e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e4
       0     5394        M 0x800029e8 jalr    ra, ra, 524            #; ra  = 0x800029e4, (wrb) ra  <-- 0x800029ec, goto 0x80002bf0
       0     5406        M 0x80002bf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5407        M 0x80002bf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029ec ~~> Word[0x0011ff5c]
       0     5408        M 0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
       0     5409        M 0x80002bfc jalr    ra, ra, -1256          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x80002710
       0     5421        M 0x80002710 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5422        M 0x80002714 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5423        M 0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5426        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5427        M 0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5430        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5433        M 0x80002720 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5434        M 0x80002724 ret                            #; ra  = 0x80002c00, goto 0x80002c00
       0     5436        M                                           #; (lsu) a0  <-- 0x00120190
       0     5437        M 0x80002c00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5447        M                                           #; (lsu) a0  <-- 0
       0     5448        M 0x80002c04 mv      zero, a0               #; a0  = 0
       0     5449        M 0x80002c08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5450        M 0x80002c0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5452        M                                           #; (lsu) ra  <-- 0x800029ec
       0     5453        M 0x80002c10 ret                            #; ra  = 0x800029ec, goto 0x800029ec
       0     5467        M 0x800029ec mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5471        M 0x800029f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029f0
       0     5472        M 0x800029f4 jalr    ra, ra, 556            #; ra  = 0x800029f0, (wrb) ra  <-- 0x800029f8, goto 0x80002c1c
       0     5473        M 0x80002c1c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5474        M 0x80002c20 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5475        M 0x80002c24 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029f8 ~~> Word[0x0011ff5c]
       0     5476        M 0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
       0     5477        M 0x80002c2c jalr    ra, ra, -1336          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x800026f0
       0     5488        M 0x800026f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5489        M 0x800026f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5490        M 0x800026f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5494        M 0x800026fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5497        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5500        M 0x80002700 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5501        M 0x80002704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5503        M                                           #; (lsu) a0  <-- 0
       0     5504        M 0x80002708 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5505        M 0x8000270c ret                            #; ra  = 0x80002c30, goto 0x80002c30
       0     5506        M 0x80002c30 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5509        M                                           #; (lsu) t0  <-- 0
       0     5510        M 0x80002c34 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5511        M 0x80002c38 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5512        M 0x80002c3c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5513        M                                           #; (lsu) ra  <-- 0x800029f8
       0     5518        M 0x80002c40 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5519        M 0x80002c44 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5520        M 0x80002c48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c48
       0     5521        M 0x80002c4c addi    t1, t1, 632            #; t1  = 0x80002c48, (wrb) t1  <-- 0x80002ec0
       0     5530        M 0x80002c50 sw      t0, 0(t1)              #; t1  = 0x80002ec0, 1 ~~> Word[0x80002ec0]
       0     5531        M 0x80002c54 ret                            #; ra  = 0x800029f8, goto 0x800029f8
       0     5532        M 0x800029f8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5532):
snitch_loads                                   134
snitch_stores                                  181
fpss_stores                                     14
fpss_loads                                      31
snitch_avg_load_latency                    12.0746
snitch_occupancy                            0.2384
snitch_fseq_rel_offloads                    0.0804
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.4857
fpss_avg_load_latency                       5.1290
fpss_occupancy                              0.0208
fpss_fpu_occupancy                          0.0127
fpss_fpu_rel_occupancy                      0.6087
cycles                                        5521
total_ipc                                   0.2592
