       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002800
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002800, (wrb) ra  <-- 4120, goto 0x80002800
       0      269        M 0x80002800 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003800
       0      270        M 0x80002804 addi    gp, gp, -248           #; gp  = 0x80003800, (wrb) gp  <-- 0x80003708
       0      271        M 0x80002808 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002808
       0      272        M 0x8000280c jalr    ra, ra, 964            #; ra  = 0x80002808, (wrb) ra  <-- 0x80002810, goto 0x80002bcc
       0      292        M 0x80002bcc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002bd0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002bd4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002bd8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002bdc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002be0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002be4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002be8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002bec mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002bf0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002bf4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002bf8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002bfc ret                            #; ra  = 0x80002810, goto 0x80002810
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002810 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002814 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002818 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002818
       0      508        M 0x8000281c jalr    ra, ra, 1036           #; ra  = 0x80002818, (wrb) ra  <-- 0x80002820, goto 0x80002c24
       0      523        M 0x80002c24 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002c28 ret                            #; ra  = 0x80002820, goto 0x80002820
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002820 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002824 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002828 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000282c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002830 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002834 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002834
       0      551        M 0x80002838 addi    t0, t0, 1948           #; t0  = 0x80002834, (wrb) t0  <-- 0x80002fd0
       0      552        M 0x8000283c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000283c
       0      562        M 0x80002840 addi    t1, t1, 1944           #; t1  = 0x8000283c, (wrb) t1  <-- 0x80002fd4
       0      563        M 0x80002844 bge     t0, t1, pc + 16        #; t0  = 0x80002fd0, t1  = 0x80002fd4, not taken
       0      564        M 0x80002848 sw      zero, 0(t0)            #; t0  = 0x80002fd0, 0 ~~> Word[0x80002fd0]
       0      565        M 0x8000284c addi    t0, t0, 4              #; t0  = 0x80002fd0, (wrb) t0  <-- 0x80002fd4
       0      573        M 0x80002850 blt     t0, t1, pc - 8         #; t0  = 0x80002fd4, t1  = 0x80002fd4, not taken
       0      574        M 0x80002854 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002858 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000285c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002860 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002864 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002868 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000286c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002870 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002874 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002878 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000287c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002880 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002884 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002888 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000288c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002890 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002894 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002898 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000289c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800028a0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800028a4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800028a8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800028ac fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800028b0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800028b4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800028b8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800028bc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800028c0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800028c4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800028c8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800028cc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800028d0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800028d4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800028d8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800028dc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800028e0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800028e4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800028e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e8
       0      684        M 0x800028ec lw      t0, 900(t0)            #; t0  = 0x800028e8, t0  <~~ Word[0x80002c6c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800028f0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800028f4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800028f8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028f8
       0      708        M 0x800028fc lw      t2, 880(t2)            #; t2  = 0x800028f8, t2  <~~ Word[0x80002c68]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002900 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002904 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002908 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000290c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002910 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002914 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002918 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000291c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002920 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002920
       0      762        M 0x80002924 addi    t0, t0, 1512           #; t0  = 0x80002920, (wrb) t0  <-- 0x80002f08
       0      763        M 0x80002928 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002928
       0      764        M 0x8000292c addi    t1, t1, 1504           #; t1  = 0x80002928, (wrb) t1  <-- 0x80002f08
       0      775        M 0x80002930 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002930
       0      776        M 0x80002934 addi    t2, t2, 1496           #; t2  = 0x80002930, (wrb) t2  <-- 0x80002f08
       0      777        M 0x80002938 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002938
       0      778        M 0x8000293c addi    t3, t3, 1504           #; t3  = 0x80002938, (wrb) t3  <-- 0x80002f18
       0      787        M 0x80002940 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f08, (wrb) sp  <-- 0x80122e78
       0      788        M 0x80002944 sub     sp, sp, t1             #; sp  = 0x80122e78, t1  = 0x80002f08, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002948 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f08, (wrb) sp  <-- 0x80122e78
       0      790        M 0x8000294c sub     sp, sp, t3             #; sp  = 0x80122e78, t3  = 0x80002f18, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002950 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002954 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002958 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000295c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002960 bge     t0, t1, pc + 24        #; t0  = 0x80002f08, t1  = 0x80002f08, taken, goto 0x80002978
       0      823        M 0x80002978 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002978
       0      824        M 0x8000297c addi    t0, t0, 1424           #; t0  = 0x80002978, (wrb) t0  <-- 0x80002f08
       0      835        M 0x80002980 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002980
       0      836        M 0x80002984 addi    t1, t1, 1432           #; t1  = 0x80002980, (wrb) t1  <-- 0x80002f18
       0      837        M 0x80002988 bge     t0, t1, pc + 20        #; t0  = 0x80002f08, t1  = 0x80002f18, not taken
       0      838        M 0x8000298c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002990 addi    t0, t0, 4              #; t0  = 0x80002f08, (wrb) t0  <-- 0x80002f0c
       0      848        M 0x80002994 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002998 blt     t0, t2, pc - 12        #; t0  = 0x80002f0c, t2  = 0x80002f08, not taken
       0      850        M 0x8000299c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800029a0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800029a4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800029a8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800029ac sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800029b0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800029b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b4
       0      877        M 0x800029b8 jalr    ra, ra, -1064          #; ra  = 0x800029b4, (wrb) ra  <-- 0x800029bc, goto 0x8000258c
       0      899        M 0x8000258c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x80002590 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x80002594 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x80002598 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x8000259c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x800025a0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x800025a4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x800025a8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x800025ac mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x800025b0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x800025b4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x800025b8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x800025bc divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x800025c0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x800025c4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x800025c8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x800025cc sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x800025d0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x800025d4 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800025d8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800025dc sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800025e0 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800025e4 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800025e8 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800025ec sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x800025f0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x800025f4 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x800025f8 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x800025fc sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002600 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002604 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002608 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000260c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002610 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002614 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002618 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000261c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002620 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002624 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002628 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x8000262c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80002630 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80002634 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002638 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x8000263c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002640 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x80002644 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x80002648 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x8000264c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x80002650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x80002654 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x80002658 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x8000265c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002660 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002664 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x80002668 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x8000266c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002670 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x80002674 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x80002678 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x8000267c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x80002680 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003680
       0     1289        M 0x80002684 addi    a1, a1, -1708          #; a1  = 0x80003680, (wrb) a1  <-- 0x80002fd4
       0     1290        M 0x80002688 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002fd4, (wrb) a0  <-- 0x80002fd4
       0     1291        M 0x8000268c sw      zero, 0(a0)            #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
       0     1300        M 0x80002690 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x80002694 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x80002698 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x8000269c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x800026a0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x800026a4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x800026a8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x800026ac andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x800026b0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x800026b4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x800026b8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x800026bc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x800026c0 lw      a0, 0(a1)              #; a1  = 0x80002fd4, a0  <~~ Word[0x80002fd4]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x800026c4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x800026c8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x800026cc sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x800026d0 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x800026d4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x800026e0 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800026e4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800026e8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800026ec sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x800026f0 ret                            #; ra  = 0x800029bc, goto 0x800029bc
       0     1421        M 0x800029bc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x800029c0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x800029c4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x800029c8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x800029cc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x800029d0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x800029d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d4
       0     1440        M 0x800029d8 addi    t0, t0, 60             #; t0  = 0x800029d4, (wrb) t0  <-- 0x80002a10
       0     1441        M 0x800029dc csrw    mtvec, t0              #; t0  = 0x80002a10, (lsu) a4  <-- 4132
       0     1449        M 0x800029e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e0
       0     1450        M 0x800029e4 jalr    ra, ra, 544            #; ra  = 0x800029e0, (wrb) ra  <-- 0x800029e8, goto 0x80002c00
       0     1466        M 0x80002c00 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80002c04 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029e8 ~~> Word[0x0011ff5c]
       0     1468        M 0x80002c08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c08
       0     1469        M 0x80002c0c jalr    ra, ra, -1268          #; ra  = 0x80002c08, (wrb) ra  <-- 0x80002c10, goto 0x80002714
       0     1487        M 0x80002714 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002718 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80002720 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80002724 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80002728 ret                            #; ra  = 0x80002c10, goto 0x80002c10
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80002c10 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80002c14 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80002c18 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80002c1c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x800029e8
       0     1543        M 0x80002c20 ret                            #; ra  = 0x800029e8, goto 0x800029e8
       0     1547        M 0x800029e8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009e8
       0     1548        M 0x800029ec jalr    ra, ra, -948           #; ra  = 0x800009e8, (wrb) ra  <-- 0x800029f0, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1554        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029f0 ~~> Word[0x0011ff5c]
       0     1556        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1557        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1558        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1559        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1561        M                                           #; (lsu) a1  <-- 0
       0     1569        M 0x80000650 bnez    a1, pc + 728           #; a1  = 0, not taken
       0     1570        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1571        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1572        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1575        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1581        M 0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1584        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1585        M 0x80000664 lw      t1, 88(a2)             #; a2  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
       0     1588        M                                           #; (lsu) t1  <-- 0x00100000
       0     1589        M 0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1592        M                                           #; (lsu) a1  <-- 0x00100000
       0     1593        M 0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1596        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1597        M 0x80000670 addi    a4, t1, 800            #; t1  = 0x00100000, (wrb) a4  <-- 0x00100320
       0     1598        M 0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1599        M 0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000690
       0     1635        M 0x80000690 mv      t0, t1                 #; t1  = 0x00100000, (wrb) t0  <-- 0x00100000
       0     1636        M 0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1637        M 0x80000698 addi    a1, t1, 1600           #; t1  = 0x00100000, (wrb) a1  <-- 0x00100640
       0     1638        M 0x8000069c mv      t1, a4                 #; a4  = 0x00100320, (wrb) t1  <-- 0x00100320
       0     1647        M 0x800006a0 bgeu    a3, a1, pc - 24        #; a3  = 0x0011df30, a1  = 0x00100640, taken, goto 0x80000688
       0     1648        M 0x80000688 sw      a1, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1649        M 0x8000068c j       pc + 0x1c              #; goto 0x800006a8
       0     1650        M 0x800006a8 addi    a1, t0, 792            #; t0  = 0x00100000, (wrb) a1  <-- 0x00100318
       0     1651        M 0x800006ac srli    a2, t0, 20             #; t0  = 0x00100000, (wrb) a2  <-- 1
       0     1662        M 0x800006b0 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1663        M 0x800006b4 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1664        M 0x800006b8 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     1665        M 0x800006bc sltu    a1, a1, a3             #; a1  = 0x00100318, a3  = 0x00120001, (wrb) a1  <-- 1
       0     1674        M 0x800006c0 and     a6, a2, a1             #; a2  = 1, a1  = 1, (wrb) a6  <-- 1
       0     1675        M 0x800006c4 beqz    a6, pc + 108           #; a6  = 1, not taken
       0     1676        M 0x800006c8 li      a3, 0                  #; (wrb) a3  <-- 0
       0     1677        M 0x800006cc li      a1, 8                  #; (wrb) a1  <-- 8
       0     1686        M 0x800006d0 li      a2, 99                 #; (wrb) a2  <-- 99
       0     1687        M 0x800006d4 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1688        M 0x800006d8 scfgw   a2, a4                 #; a2  = 99, a4  = 64
       0     1689        M 0x800006dc li      a2, 192                #; (wrb) a2  <-- 192
       0     1698        M 0x800006e0 scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     1699        M 0x800006e4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1700        M 0x800006e8 scfgw   zero, a1               #; a1  = 32
       0     1701        M 0x800006ec scfgwi  t0, 896                #; t0  = 0x00100000
       0     1711        M 0x800006f4 li      a4, 100                #; (wrb) a4  <-- 100
                         M 0x800006f0 csrrsi  a1, ssr, 1             #; 
       0     1712        M 0x800006f8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     1713        M 0x800006fc addi    a5, a1, -819           #; a1  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
       0     1722        M 0x80000700 li      a2, 10                 #; (wrb) a2  <-- 10
       0     1723        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 0, a5  = 0xcccccccd
       0     1726        M                                           #; (acc) a0  <-- 0x00355513
       0     1727        M 0x80000708 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     1728        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1734        M 0x80000710 sub     a0, a3, a0             #; a3  = 0, a0  = 0, (wrb) a0  <-- 0
       0     1736        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     1737        M 0x8000071c addi    a4, a4, -1             #; a4  = 100, (wrb) a4  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1738        M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1739        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1746        M 0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     1747        M 0x80000724 bnez    a4, pc - 32            #; a4  = 99, taken, goto 0x80000704
       0     1748        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 1, a5  = 0xcccccccd
       0     1751        M                                           #; (acc) a0  <-- 0x00355513
       0     1752        M 0x80000708 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     1753        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1756        M                                           #; (acc) a0  <-- 0x40a68533
       0     1757        M 0x80000710 sub     a0, a3, a0             #; a3  = 1, a0  = 0, (wrb) a0  <-- 1
       0     1759        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     1760        M 0x8000071c addi    a4, a4, -1             #; a4  = 99, (wrb) a4  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1761        M 0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1762        M 0x80000724 bnez    a4, pc - 32            #; a4  = 98, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1763        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 2, a5  = 0xcccccccd
       0     1766        M                                           #; (acc) a0  <-- 0x00355513
       0     1767        M 0x80000708 srli    a0, a0, 3              #; a0  = 1, (wrb) a0  <-- 0
       0     1768        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1771        M                                           #; (acc) a0  <-- 0x40a68533
       0     1772        M 0x80000710 sub     a0, a3, a0             #; a3  = 2, a0  = 0, (wrb) a0  <-- 2
       0     1774        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     1775        M 0x8000071c addi    a4, a4, -1             #; a4  = 98, (wrb) a4  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1776        M 0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1777        M 0x80000724 bnez    a4, pc - 32            #; a4  = 97, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1778        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 3, a5  = 0xcccccccd
       0     1781        M                                           #; (acc) a0  <-- 0x00355513
       0     1782        M 0x80000708 srli    a0, a0, 3              #; a0  = 2, (wrb) a0  <-- 0
       0     1783        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1786        M                                           #; (acc) a0  <-- 0x40a68533
       0     1787        M 0x80000710 sub     a0, a3, a0             #; a3  = 3, a0  = 0, (wrb) a0  <-- 3
       0     1789        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     1790        M 0x8000071c addi    a4, a4, -1             #; a4  = 97, (wrb) a4  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1791        M 0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1792        M 0x80000724 bnez    a4, pc - 32            #; a4  = 96, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1793        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 4, a5  = 0xcccccccd
       0     1796        M                                           #; (acc) a0  <-- 0x00355513
       0     1797        M 0x80000708 srli    a0, a0, 3              #; a0  = 3, (wrb) a0  <-- 0
       0     1798        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1801        M                                           #; (acc) a0  <-- 0x40a68533
       0     1802        M 0x80000710 sub     a0, a3, a0             #; a3  = 4, a0  = 0, (wrb) a0  <-- 4
       0     1804        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     1805        M 0x8000071c addi    a4, a4, -1             #; a4  = 96, (wrb) a4  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1806        M 0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1807        M 0x80000724 bnez    a4, pc - 32            #; a4  = 95, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1808        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 5, a5  = 0xcccccccd
       0     1811        M                                           #; (acc) a0  <-- 0x00355513
       0     1812        M 0x80000708 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     1813        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1816        M                                           #; (acc) a0  <-- 0x40a68533
       0     1817        M 0x80000710 sub     a0, a3, a0             #; a3  = 5, a0  = 0, (wrb) a0  <-- 5
       0     1819        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     1820        M 0x8000071c addi    a4, a4, -1             #; a4  = 95, (wrb) a4  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1821        M 0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1822        M 0x80000724 bnez    a4, pc - 32            #; a4  = 94, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1823        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 6, a5  = 0xcccccccd
       0     1826        M                                           #; (acc) a0  <-- 0x00355513
       0     1827        M 0x80000708 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     1828        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1831        M                                           #; (acc) a0  <-- 0x40a68533
       0     1832        M 0x80000710 sub     a0, a3, a0             #; a3  = 6, a0  = 0, (wrb) a0  <-- 6
       0     1834        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     1835        M 0x8000071c addi    a4, a4, -1             #; a4  = 94, (wrb) a4  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1836        M 0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1837        M 0x80000724 bnez    a4, pc - 32            #; a4  = 93, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1838        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 7, a5  = 0xcccccccd
       0     1841        M                                           #; (acc) a0  <-- 0x00355513
       0     1842        M 0x80000708 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     1843        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1846        M                                           #; (acc) a0  <-- 0x40a68533
       0     1847        M 0x80000710 sub     a0, a3, a0             #; a3  = 7, a0  = 0, (wrb) a0  <-- 7
       0     1849        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     1850        M 0x8000071c addi    a4, a4, -1             #; a4  = 93, (wrb) a4  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1851        M 0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1852        M 0x80000724 bnez    a4, pc - 32            #; a4  = 92, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1853        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 8, a5  = 0xcccccccd
       0     1856        M                                           #; (acc) a0  <-- 0x00355513
       0     1857        M 0x80000708 srli    a0, a0, 3              #; a0  = 6, (wrb) a0  <-- 0
       0     1858        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1861        M                                           #; (acc) a0  <-- 0x40a68533
       0     1862        M 0x80000710 sub     a0, a3, a0             #; a3  = 8, a0  = 0, (wrb) a0  <-- 8
       0     1864        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     1865        M 0x8000071c addi    a4, a4, -1             #; a4  = 92, (wrb) a4  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1866        M 0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1867        M 0x80000724 bnez    a4, pc - 32            #; a4  = 91, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     1868        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 9, a5  = 0xcccccccd
       0     1871        M                                           #; (acc) a0  <-- 0x00355513
       0     1872        M 0x80000708 srli    a0, a0, 3              #; a0  = 7, (wrb) a0  <-- 0
       0     1873        M 0x8000070c mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1876        M                                           #; (acc) a0  <-- 0x40a68533
       0     1877        M 0x80000710 sub     a0, a3, a0             #; a3  = 9, a0  = 0, (wrb) a0  <-- 9
       0     1879        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     1880        M 0x8000071c addi    a4, a4, -1             #; a4  = 91, (wrb) a4  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1881        M 0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1882        M 0x80000724 bnez    a4, pc - 32            #; a4  = 90, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     1883        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 10, a5  = 0xcccccccd
       0     1886        M                                           #; (acc) a0  <-- 0x00355513
       0     1887        M 0x80000708 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     1888        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1891        M                                           #; (acc) a0  <-- 0x40a68533
       0     1892        M 0x80000710 sub     a0, a3, a0             #; a3  = 10, a0  = 10, (wrb) a0  <-- 0
       0     1894        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     1895        M 0x8000071c addi    a4, a4, -1             #; a4  = 90, (wrb) a4  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1896        M 0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1897        M 0x80000724 bnez    a4, pc - 32            #; a4  = 89, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1898        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 11, a5  = 0xcccccccd
       0     1901        M                                           #; (acc) a0  <-- 0x00355513
       0     1902        M 0x80000708 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     1903        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1906        M                                           #; (acc) a0  <-- 0x40a68533
       0     1907        M 0x80000710 sub     a0, a3, a0             #; a3  = 11, a0  = 10, (wrb) a0  <-- 1
       0     1909        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     1910        M 0x8000071c addi    a4, a4, -1             #; a4  = 89, (wrb) a4  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1911        M 0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1912        M 0x80000724 bnez    a4, pc - 32            #; a4  = 88, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1913        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 12, a5  = 0xcccccccd
       0     1916        M                                           #; (acc) a0  <-- 0x00355513
       0     1917        M 0x80000708 srli    a0, a0, 3              #; a0  = 9, (wrb) a0  <-- 1
       0     1918        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1921        M                                           #; (acc) a0  <-- 0x40a68533
       0     1922        M 0x80000710 sub     a0, a3, a0             #; a3  = 12, a0  = 10, (wrb) a0  <-- 2
       0     1924        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     1925        M 0x8000071c addi    a4, a4, -1             #; a4  = 88, (wrb) a4  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1926        M 0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1927        M 0x80000724 bnez    a4, pc - 32            #; a4  = 87, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1928        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 13, a5  = 0xcccccccd
       0     1931        M                                           #; (acc) a0  <-- 0x00355513
       0     1932        M 0x80000708 srli    a0, a0, 3              #; a0  = 10, (wrb) a0  <-- 1
       0     1933        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1936        M                                           #; (acc) a0  <-- 0x40a68533
       0     1937        M 0x80000710 sub     a0, a3, a0             #; a3  = 13, a0  = 10, (wrb) a0  <-- 3
       0     1939        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     1940        M 0x8000071c addi    a4, a4, -1             #; a4  = 87, (wrb) a4  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1941        M 0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1942        M 0x80000724 bnez    a4, pc - 32            #; a4  = 86, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1943        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 14, a5  = 0xcccccccd
       0     1946        M                                           #; (acc) a0  <-- 0x00355513
       0     1947        M 0x80000708 srli    a0, a0, 3              #; a0  = 11, (wrb) a0  <-- 1
       0     1948        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1951        M                                           #; (acc) a0  <-- 0x40a68533
       0     1952        M 0x80000710 sub     a0, a3, a0             #; a3  = 14, a0  = 10, (wrb) a0  <-- 4
       0     1954        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     1955        M 0x8000071c addi    a4, a4, -1             #; a4  = 86, (wrb) a4  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1956        M 0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1957        M 0x80000724 bnez    a4, pc - 32            #; a4  = 85, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1958        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 15, a5  = 0xcccccccd
       0     1961        M                                           #; (acc) a0  <-- 0x00355513
       0     1962        M 0x80000708 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     1963        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1966        M                                           #; (acc) a0  <-- 0x40a68533
       0     1967        M 0x80000710 sub     a0, a3, a0             #; a3  = 15, a0  = 10, (wrb) a0  <-- 5
       0     1969        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     1970        M 0x8000071c addi    a4, a4, -1             #; a4  = 85, (wrb) a4  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1971        M 0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1972        M 0x80000724 bnez    a4, pc - 32            #; a4  = 84, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1973        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 16, a5  = 0xcccccccd
       0     1976        M                                           #; (acc) a0  <-- 0x00355513
       0     1977        M 0x80000708 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     1978        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1981        M                                           #; (acc) a0  <-- 0x40a68533
       0     1982        M 0x80000710 sub     a0, a3, a0             #; a3  = 16, a0  = 10, (wrb) a0  <-- 6
       0     1984        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     1985        M 0x8000071c addi    a4, a4, -1             #; a4  = 84, (wrb) a4  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1986        M 0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1987        M 0x80000724 bnez    a4, pc - 32            #; a4  = 83, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1988        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 17, a5  = 0xcccccccd
       0     1991        M                                           #; (acc) a0  <-- 0x00355513
       0     1992        M 0x80000708 srli    a0, a0, 3              #; a0  = 13, (wrb) a0  <-- 1
       0     1993        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1996        M                                           #; (acc) a0  <-- 0x40a68533
       0     1997        M 0x80000710 sub     a0, a3, a0             #; a3  = 17, a0  = 10, (wrb) a0  <-- 7
       0     1999        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2000        M 0x8000071c addi    a4, a4, -1             #; a4  = 83, (wrb) a4  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2001        M 0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2002        M 0x80000724 bnez    a4, pc - 32            #; a4  = 82, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2003        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 18, a5  = 0xcccccccd
       0     2006        M                                           #; (acc) a0  <-- 0x00355513
       0     2007        M 0x80000708 srli    a0, a0, 3              #; a0  = 14, (wrb) a0  <-- 1
       0     2008        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     2011        M                                           #; (acc) a0  <-- 0x40a68533
       0     2012        M 0x80000710 sub     a0, a3, a0             #; a3  = 18, a0  = 10, (wrb) a0  <-- 8
       0     2014        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2015        M 0x8000071c addi    a4, a4, -1             #; a4  = 82, (wrb) a4  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2016        M 0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2017        M 0x80000724 bnez    a4, pc - 32            #; a4  = 81, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2018        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 19, a5  = 0xcccccccd
       0     2021        M                                           #; (acc) a0  <-- 0x00355513
       0     2022        M 0x80000708 srli    a0, a0, 3              #; a0  = 15, (wrb) a0  <-- 1
       0     2023        M 0x8000070c mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     2026        M                                           #; (acc) a0  <-- 0x40a68533
       0     2027        M 0x80000710 sub     a0, a3, a0             #; a3  = 19, a0  = 10, (wrb) a0  <-- 9
       0     2029        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2030        M 0x8000071c addi    a4, a4, -1             #; a4  = 81, (wrb) a4  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2031        M 0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2032        M 0x80000724 bnez    a4, pc - 32            #; a4  = 80, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2033        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 20, a5  = 0xcccccccd
       0     2036        M                                           #; (acc) a0  <-- 0x00355513
       0     2037        M 0x80000708 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     2038        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2041        M                                           #; (acc) a0  <-- 0x40a68533
       0     2042        M 0x80000710 sub     a0, a3, a0             #; a3  = 20, a0  = 20, (wrb) a0  <-- 0
       0     2044        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2045        M 0x8000071c addi    a4, a4, -1             #; a4  = 80, (wrb) a4  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2046        M 0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2047        M 0x80000724 bnez    a4, pc - 32            #; a4  = 79, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2048        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 21, a5  = 0xcccccccd
       0     2051        M                                           #; (acc) a0  <-- 0x00355513
       0     2052        M 0x80000708 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     2053        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2056        M                                           #; (acc) a0  <-- 0x40a68533
       0     2057        M 0x80000710 sub     a0, a3, a0             #; a3  = 21, a0  = 20, (wrb) a0  <-- 1
       0     2059        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2060        M 0x8000071c addi    a4, a4, -1             #; a4  = 79, (wrb) a4  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2061        M 0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2062        M 0x80000724 bnez    a4, pc - 32            #; a4  = 78, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2063        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 22, a5  = 0xcccccccd
       0     2066        M                                           #; (acc) a0  <-- 0x00355513
       0     2067        M 0x80000708 srli    a0, a0, 3              #; a0  = 17, (wrb) a0  <-- 2
       0     2068        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2071        M                                           #; (acc) a0  <-- 0x40a68533
       0     2072        M 0x80000710 sub     a0, a3, a0             #; a3  = 22, a0  = 20, (wrb) a0  <-- 2
       0     2074        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2075        M 0x8000071c addi    a4, a4, -1             #; a4  = 78, (wrb) a4  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2076        M 0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2077        M 0x80000724 bnez    a4, pc - 32            #; a4  = 77, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2078        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 23, a5  = 0xcccccccd
       0     2081        M                                           #; (acc) a0  <-- 0x00355513
       0     2082        M 0x80000708 srli    a0, a0, 3              #; a0  = 18, (wrb) a0  <-- 2
       0     2083        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2086        M                                           #; (acc) a0  <-- 0x40a68533
       0     2087        M 0x80000710 sub     a0, a3, a0             #; a3  = 23, a0  = 20, (wrb) a0  <-- 3
       0     2089        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2090        M 0x8000071c addi    a4, a4, -1             #; a4  = 77, (wrb) a4  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2091        M 0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2092        M 0x80000724 bnez    a4, pc - 32            #; a4  = 76, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2093        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 24, a5  = 0xcccccccd
       0     2096        M                                           #; (acc) a0  <-- 0x00355513
       0     2097        M 0x80000708 srli    a0, a0, 3              #; a0  = 19, (wrb) a0  <-- 2
       0     2098        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2101        M                                           #; (acc) a0  <-- 0x40a68533
       0     2102        M 0x80000710 sub     a0, a3, a0             #; a3  = 24, a0  = 20, (wrb) a0  <-- 4
       0     2104        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2105        M 0x8000071c addi    a4, a4, -1             #; a4  = 76, (wrb) a4  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2106        M 0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2107        M 0x80000724 bnez    a4, pc - 32            #; a4  = 75, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2108        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 25, a5  = 0xcccccccd
       0     2111        M                                           #; (acc) a0  <-- 0x00355513
       0     2112        M 0x80000708 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     2113        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2116        M                                           #; (acc) a0  <-- 0x40a68533
       0     2117        M 0x80000710 sub     a0, a3, a0             #; a3  = 25, a0  = 20, (wrb) a0  <-- 5
       0     2119        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2120        M 0x8000071c addi    a4, a4, -1             #; a4  = 75, (wrb) a4  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2121        M 0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2122        M 0x80000724 bnez    a4, pc - 32            #; a4  = 74, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2123        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 26, a5  = 0xcccccccd
       0     2126        M                                           #; (acc) a0  <-- 0x00355513
       0     2127        M 0x80000708 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     2128        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2131        M                                           #; (acc) a0  <-- 0x40a68533
       0     2132        M 0x80000710 sub     a0, a3, a0             #; a3  = 26, a0  = 20, (wrb) a0  <-- 6
       0     2134        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2135        M 0x8000071c addi    a4, a4, -1             #; a4  = 74, (wrb) a4  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2136        M 0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2137        M 0x80000724 bnez    a4, pc - 32            #; a4  = 73, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2138        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 27, a5  = 0xcccccccd
       0     2141        M                                           #; (acc) a0  <-- 0x00355513
       0     2142        M 0x80000708 srli    a0, a0, 3              #; a0  = 21, (wrb) a0  <-- 2
       0     2143        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2146        M                                           #; (acc) a0  <-- 0x40a68533
       0     2147        M 0x80000710 sub     a0, a3, a0             #; a3  = 27, a0  = 20, (wrb) a0  <-- 7
       0     2149        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2150        M 0x8000071c addi    a4, a4, -1             #; a4  = 73, (wrb) a4  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2151        M 0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2152        M 0x80000724 bnez    a4, pc - 32            #; a4  = 72, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2153        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 28, a5  = 0xcccccccd
       0     2156        M                                           #; (acc) a0  <-- 0x00355513
       0     2157        M 0x80000708 srli    a0, a0, 3              #; a0  = 22, (wrb) a0  <-- 2
       0     2158        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2161        M                                           #; (acc) a0  <-- 0x40a68533
       0     2162        M 0x80000710 sub     a0, a3, a0             #; a3  = 28, a0  = 20, (wrb) a0  <-- 8
       0     2164        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2165        M 0x8000071c addi    a4, a4, -1             #; a4  = 72, (wrb) a4  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2166        M 0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2167        M 0x80000724 bnez    a4, pc - 32            #; a4  = 71, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2168        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 29, a5  = 0xcccccccd
       0     2171        M                                           #; (acc) a0  <-- 0x00355513
       0     2172        M 0x80000708 srli    a0, a0, 3              #; a0  = 23, (wrb) a0  <-- 2
       0     2173        M 0x8000070c mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2176        M                                           #; (acc) a0  <-- 0x40a68533
       0     2177        M 0x80000710 sub     a0, a3, a0             #; a3  = 29, a0  = 20, (wrb) a0  <-- 9
       0     2179        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2180        M 0x8000071c addi    a4, a4, -1             #; a4  = 71, (wrb) a4  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2181        M 0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2182        M 0x80000724 bnez    a4, pc - 32            #; a4  = 70, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2183        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 30, a5  = 0xcccccccd
       0     2186        M                                           #; (acc) a0  <-- 0x00355513
       0     2187        M 0x80000708 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     2188        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2191        M                                           #; (acc) a0  <-- 0x40a68533
       0     2192        M 0x80000710 sub     a0, a3, a0             #; a3  = 30, a0  = 30, (wrb) a0  <-- 0
       0     2194        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2195        M 0x8000071c addi    a4, a4, -1             #; a4  = 70, (wrb) a4  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2196        M 0x80000720 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2197        M 0x80000724 bnez    a4, pc - 32            #; a4  = 69, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2198        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 31, a5  = 0xcccccccd
       0     2201        M                                           #; (acc) a0  <-- 0x00355513
       0     2202        M 0x80000708 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     2203        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2206        M                                           #; (acc) a0  <-- 0x40a68533
       0     2207        M 0x80000710 sub     a0, a3, a0             #; a3  = 31, a0  = 30, (wrb) a0  <-- 1
       0     2209        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2210        M 0x8000071c addi    a4, a4, -1             #; a4  = 69, (wrb) a4  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2211        M 0x80000720 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2212        M 0x80000724 bnez    a4, pc - 32            #; a4  = 68, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2213        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 32, a5  = 0xcccccccd
       0     2216        M                                           #; (acc) a0  <-- 0x00355513
       0     2217        M 0x80000708 srli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 3
       0     2218        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2221        M                                           #; (acc) a0  <-- 0x40a68533
       0     2222        M 0x80000710 sub     a0, a3, a0             #; a3  = 32, a0  = 30, (wrb) a0  <-- 2
       0     2224        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2225        M 0x8000071c addi    a4, a4, -1             #; a4  = 68, (wrb) a4  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2226        M 0x80000720 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2227        M 0x80000724 bnez    a4, pc - 32            #; a4  = 67, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2228        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 33, a5  = 0xcccccccd
       0     2231        M                                           #; (acc) a0  <-- 0x00355513
       0     2232        M 0x80000708 srli    a0, a0, 3              #; a0  = 26, (wrb) a0  <-- 3
       0     2233        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2236        M                                           #; (acc) a0  <-- 0x40a68533
       0     2237        M 0x80000710 sub     a0, a3, a0             #; a3  = 33, a0  = 30, (wrb) a0  <-- 3
       0     2239        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2240        M 0x8000071c addi    a4, a4, -1             #; a4  = 67, (wrb) a4  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2241        M 0x80000720 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2242        M 0x80000724 bnez    a4, pc - 32            #; a4  = 66, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2243        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 34, a5  = 0xcccccccd
       0     2246        M                                           #; (acc) a0  <-- 0x00355513
       0     2247        M 0x80000708 srli    a0, a0, 3              #; a0  = 27, (wrb) a0  <-- 3
       0     2248        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2251        M                                           #; (acc) a0  <-- 0x40a68533
       0     2252        M 0x80000710 sub     a0, a3, a0             #; a3  = 34, a0  = 30, (wrb) a0  <-- 4
       0     2254        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2255        M 0x8000071c addi    a4, a4, -1             #; a4  = 66, (wrb) a4  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2256        M 0x80000720 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2257        M 0x80000724 bnez    a4, pc - 32            #; a4  = 65, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2258        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 35, a5  = 0xcccccccd
       0     2261        M                                           #; (acc) a0  <-- 0x00355513
       0     2262        M 0x80000708 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     2263        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2266        M                                           #; (acc) a0  <-- 0x40a68533
       0     2267        M 0x80000710 sub     a0, a3, a0             #; a3  = 35, a0  = 30, (wrb) a0  <-- 5
       0     2269        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2270        M 0x8000071c addi    a4, a4, -1             #; a4  = 65, (wrb) a4  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2271        M 0x80000720 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2272        M 0x80000724 bnez    a4, pc - 32            #; a4  = 64, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2273        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 36, a5  = 0xcccccccd
       0     2276        M                                           #; (acc) a0  <-- 0x00355513
       0     2277        M 0x80000708 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     2278        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2281        M                                           #; (acc) a0  <-- 0x40a68533
       0     2282        M 0x80000710 sub     a0, a3, a0             #; a3  = 36, a0  = 30, (wrb) a0  <-- 6
       0     2284        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2285        M 0x8000071c addi    a4, a4, -1             #; a4  = 64, (wrb) a4  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2286        M 0x80000720 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2287        M 0x80000724 bnez    a4, pc - 32            #; a4  = 63, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2288        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 37, a5  = 0xcccccccd
       0     2291        M                                           #; (acc) a0  <-- 0x00355513
       0     2292        M 0x80000708 srli    a0, a0, 3              #; a0  = 29, (wrb) a0  <-- 3
       0     2293        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2296        M                                           #; (acc) a0  <-- 0x40a68533
       0     2297        M 0x80000710 sub     a0, a3, a0             #; a3  = 37, a0  = 30, (wrb) a0  <-- 7
       0     2299        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2300        M 0x8000071c addi    a4, a4, -1             #; a4  = 63, (wrb) a4  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2301        M 0x80000720 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2302        M 0x80000724 bnez    a4, pc - 32            #; a4  = 62, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2303        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 38, a5  = 0xcccccccd
       0     2306        M                                           #; (acc) a0  <-- 0x00355513
       0     2307        M 0x80000708 srli    a0, a0, 3              #; a0  = 30, (wrb) a0  <-- 3
       0     2308        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2311        M                                           #; (acc) a0  <-- 0x40a68533
       0     2312        M 0x80000710 sub     a0, a3, a0             #; a3  = 38, a0  = 30, (wrb) a0  <-- 8
       0     2314        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2315        M 0x8000071c addi    a4, a4, -1             #; a4  = 62, (wrb) a4  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2316        M 0x80000720 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2317        M 0x80000724 bnez    a4, pc - 32            #; a4  = 61, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2318        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 39, a5  = 0xcccccccd
       0     2321        M                                           #; (acc) a0  <-- 0x00355513
       0     2322        M 0x80000708 srli    a0, a0, 3              #; a0  = 31, (wrb) a0  <-- 3
       0     2323        M 0x8000070c mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2326        M                                           #; (acc) a0  <-- 0x40a68533
       0     2327        M 0x80000710 sub     a0, a3, a0             #; a3  = 39, a0  = 30, (wrb) a0  <-- 9
       0     2329        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2330        M 0x8000071c addi    a4, a4, -1             #; a4  = 61, (wrb) a4  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2331        M 0x80000720 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2332        M 0x80000724 bnez    a4, pc - 32            #; a4  = 60, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2333        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 40, a5  = 0xcccccccd
       0     2336        M                                           #; (acc) a0  <-- 0x00355513
       0     2337        M 0x80000708 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     2338        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2341        M                                           #; (acc) a0  <-- 0x40a68533
       0     2342        M 0x80000710 sub     a0, a3, a0             #; a3  = 40, a0  = 40, (wrb) a0  <-- 0
       0     2344        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2345        M 0x8000071c addi    a4, a4, -1             #; a4  = 60, (wrb) a4  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2346        M 0x80000720 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2347        M 0x80000724 bnez    a4, pc - 32            #; a4  = 59, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2348        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 41, a5  = 0xcccccccd
       0     2351        M                                           #; (acc) a0  <-- 0x00355513
       0     2352        M 0x80000708 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     2353        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2356        M                                           #; (acc) a0  <-- 0x40a68533
       0     2357        M 0x80000710 sub     a0, a3, a0             #; a3  = 41, a0  = 40, (wrb) a0  <-- 1
       0     2359        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2360        M 0x8000071c addi    a4, a4, -1             #; a4  = 59, (wrb) a4  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2361        M 0x80000720 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2362        M 0x80000724 bnez    a4, pc - 32            #; a4  = 58, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2363        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 42, a5  = 0xcccccccd
       0     2366        M                                           #; (acc) a0  <-- 0x00355513
       0     2367        M 0x80000708 srli    a0, a0, 3              #; a0  = 33, (wrb) a0  <-- 4
       0     2368        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2371        M                                           #; (acc) a0  <-- 0x40a68533
       0     2372        M 0x80000710 sub     a0, a3, a0             #; a3  = 42, a0  = 40, (wrb) a0  <-- 2
       0     2374        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2375        M 0x8000071c addi    a4, a4, -1             #; a4  = 58, (wrb) a4  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2376        M 0x80000720 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2377        M 0x80000724 bnez    a4, pc - 32            #; a4  = 57, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2378        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 43, a5  = 0xcccccccd
       0     2381        M                                           #; (acc) a0  <-- 0x00355513
       0     2382        M 0x80000708 srli    a0, a0, 3              #; a0  = 34, (wrb) a0  <-- 4
       0     2383        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2386        M                                           #; (acc) a0  <-- 0x40a68533
       0     2387        M 0x80000710 sub     a0, a3, a0             #; a3  = 43, a0  = 40, (wrb) a0  <-- 3
       0     2389        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2390        M 0x8000071c addi    a4, a4, -1             #; a4  = 57, (wrb) a4  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2391        M 0x80000720 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2392        M 0x80000724 bnez    a4, pc - 32            #; a4  = 56, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2393        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 44, a5  = 0xcccccccd
       0     2396        M                                           #; (acc) a0  <-- 0x00355513
       0     2397        M 0x80000708 srli    a0, a0, 3              #; a0  = 35, (wrb) a0  <-- 4
       0     2398        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2401        M                                           #; (acc) a0  <-- 0x40a68533
       0     2402        M 0x80000710 sub     a0, a3, a0             #; a3  = 44, a0  = 40, (wrb) a0  <-- 4
       0     2404        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2405        M 0x8000071c addi    a4, a4, -1             #; a4  = 56, (wrb) a4  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2406        M 0x80000720 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2407        M 0x80000724 bnez    a4, pc - 32            #; a4  = 55, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2408        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 45, a5  = 0xcccccccd
       0     2411        M                                           #; (acc) a0  <-- 0x00355513
       0     2412        M 0x80000708 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     2413        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2416        M                                           #; (acc) a0  <-- 0x40a68533
       0     2417        M 0x80000710 sub     a0, a3, a0             #; a3  = 45, a0  = 40, (wrb) a0  <-- 5
       0     2419        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2420        M 0x8000071c addi    a4, a4, -1             #; a4  = 55, (wrb) a4  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2421        M 0x80000720 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2422        M 0x80000724 bnez    a4, pc - 32            #; a4  = 54, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2423        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 46, a5  = 0xcccccccd
       0     2426        M                                           #; (acc) a0  <-- 0x00355513
       0     2427        M 0x80000708 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     2428        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2431        M                                           #; (acc) a0  <-- 0x40a68533
       0     2432        M 0x80000710 sub     a0, a3, a0             #; a3  = 46, a0  = 40, (wrb) a0  <-- 6
       0     2434        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2435        M 0x8000071c addi    a4, a4, -1             #; a4  = 54, (wrb) a4  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2436        M 0x80000720 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2437        M 0x80000724 bnez    a4, pc - 32            #; a4  = 53, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2438        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 47, a5  = 0xcccccccd
       0     2441        M                                           #; (acc) a0  <-- 0x00355513
       0     2442        M 0x80000708 srli    a0, a0, 3              #; a0  = 37, (wrb) a0  <-- 4
       0     2443        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2446        M                                           #; (acc) a0  <-- 0x40a68533
       0     2447        M 0x80000710 sub     a0, a3, a0             #; a3  = 47, a0  = 40, (wrb) a0  <-- 7
       0     2449        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2450        M 0x8000071c addi    a4, a4, -1             #; a4  = 53, (wrb) a4  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2451        M 0x80000720 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2452        M 0x80000724 bnez    a4, pc - 32            #; a4  = 52, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2453        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 48, a5  = 0xcccccccd
       0     2456        M                                           #; (acc) a0  <-- 0x00355513
       0     2457        M 0x80000708 srli    a0, a0, 3              #; a0  = 38, (wrb) a0  <-- 4
       0     2458        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2461        M                                           #; (acc) a0  <-- 0x40a68533
       0     2462        M 0x80000710 sub     a0, a3, a0             #; a3  = 48, a0  = 40, (wrb) a0  <-- 8
       0     2464        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2465        M 0x8000071c addi    a4, a4, -1             #; a4  = 52, (wrb) a4  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2466        M 0x80000720 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2467        M 0x80000724 bnez    a4, pc - 32            #; a4  = 51, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2468        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 49, a5  = 0xcccccccd
       0     2471        M                                           #; (acc) a0  <-- 0x00355513
       0     2472        M 0x80000708 srli    a0, a0, 3              #; a0  = 39, (wrb) a0  <-- 4
       0     2473        M 0x8000070c mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2476        M                                           #; (acc) a0  <-- 0x40a68533
       0     2477        M 0x80000710 sub     a0, a3, a0             #; a3  = 49, a0  = 40, (wrb) a0  <-- 9
       0     2479        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2480        M 0x8000071c addi    a4, a4, -1             #; a4  = 51, (wrb) a4  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2481        M 0x80000720 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2482        M 0x80000724 bnez    a4, pc - 32            #; a4  = 50, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2483        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 50, a5  = 0xcccccccd
       0     2486        M                                           #; (acc) a0  <-- 0x00355513
       0     2487        M 0x80000708 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     2488        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2491        M                                           #; (acc) a0  <-- 0x40a68533
       0     2492        M 0x80000710 sub     a0, a3, a0             #; a3  = 50, a0  = 50, (wrb) a0  <-- 0
       0     2494        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2495        M 0x8000071c addi    a4, a4, -1             #; a4  = 50, (wrb) a4  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2496        M 0x80000720 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2497        M 0x80000724 bnez    a4, pc - 32            #; a4  = 49, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2498        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 51, a5  = 0xcccccccd
       0     2501        M                                           #; (acc) a0  <-- 0x00355513
       0     2502        M 0x80000708 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     2503        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2506        M                                           #; (acc) a0  <-- 0x40a68533
       0     2507        M 0x80000710 sub     a0, a3, a0             #; a3  = 51, a0  = 50, (wrb) a0  <-- 1
       0     2509        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2510        M 0x8000071c addi    a4, a4, -1             #; a4  = 49, (wrb) a4  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2511        M 0x80000720 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2512        M 0x80000724 bnez    a4, pc - 32            #; a4  = 48, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2513        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 52, a5  = 0xcccccccd
       0     2516        M                                           #; (acc) a0  <-- 0x00355513
       0     2517        M 0x80000708 srli    a0, a0, 3              #; a0  = 41, (wrb) a0  <-- 5
       0     2518        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2521        M                                           #; (acc) a0  <-- 0x40a68533
       0     2522        M 0x80000710 sub     a0, a3, a0             #; a3  = 52, a0  = 50, (wrb) a0  <-- 2
       0     2524        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2525        M 0x8000071c addi    a4, a4, -1             #; a4  = 48, (wrb) a4  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2526        M 0x80000720 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2527        M 0x80000724 bnez    a4, pc - 32            #; a4  = 47, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2528        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 53, a5  = 0xcccccccd
       0     2531        M                                           #; (acc) a0  <-- 0x00355513
       0     2532        M 0x80000708 srli    a0, a0, 3              #; a0  = 42, (wrb) a0  <-- 5
       0     2533        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2536        M                                           #; (acc) a0  <-- 0x40a68533
       0     2537        M 0x80000710 sub     a0, a3, a0             #; a3  = 53, a0  = 50, (wrb) a0  <-- 3
       0     2539        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2540        M 0x8000071c addi    a4, a4, -1             #; a4  = 47, (wrb) a4  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2541        M 0x80000720 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2542        M 0x80000724 bnez    a4, pc - 32            #; a4  = 46, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2543        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 54, a5  = 0xcccccccd
       0     2546        M                                           #; (acc) a0  <-- 0x00355513
       0     2547        M 0x80000708 srli    a0, a0, 3              #; a0  = 43, (wrb) a0  <-- 5
       0     2548        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2551        M                                           #; (acc) a0  <-- 0x40a68533
       0     2552        M 0x80000710 sub     a0, a3, a0             #; a3  = 54, a0  = 50, (wrb) a0  <-- 4
       0     2554        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2555        M 0x8000071c addi    a4, a4, -1             #; a4  = 46, (wrb) a4  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2556        M 0x80000720 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2557        M 0x80000724 bnez    a4, pc - 32            #; a4  = 45, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2558        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 55, a5  = 0xcccccccd
       0     2561        M                                           #; (acc) a0  <-- 0x00355513
       0     2562        M 0x80000708 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     2563        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2566        M                                           #; (acc) a0  <-- 0x40a68533
       0     2567        M 0x80000710 sub     a0, a3, a0             #; a3  = 55, a0  = 50, (wrb) a0  <-- 5
       0     2569        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2570        M 0x8000071c addi    a4, a4, -1             #; a4  = 45, (wrb) a4  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2571        M 0x80000720 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2572        M 0x80000724 bnez    a4, pc - 32            #; a4  = 44, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2573        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 56, a5  = 0xcccccccd
       0     2576        M                                           #; (acc) a0  <-- 0x00355513
       0     2577        M 0x80000708 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     2578        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2581        M                                           #; (acc) a0  <-- 0x40a68533
       0     2582        M 0x80000710 sub     a0, a3, a0             #; a3  = 56, a0  = 50, (wrb) a0  <-- 6
       0     2584        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2585        M 0x8000071c addi    a4, a4, -1             #; a4  = 44, (wrb) a4  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2586        M 0x80000720 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2587        M 0x80000724 bnez    a4, pc - 32            #; a4  = 43, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2588        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 57, a5  = 0xcccccccd
       0     2591        M                                           #; (acc) a0  <-- 0x00355513
       0     2592        M 0x80000708 srli    a0, a0, 3              #; a0  = 45, (wrb) a0  <-- 5
       0     2593        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2596        M                                           #; (acc) a0  <-- 0x40a68533
       0     2597        M 0x80000710 sub     a0, a3, a0             #; a3  = 57, a0  = 50, (wrb) a0  <-- 7
       0     2599        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2600        M 0x8000071c addi    a4, a4, -1             #; a4  = 43, (wrb) a4  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2601        M 0x80000720 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2602        M 0x80000724 bnez    a4, pc - 32            #; a4  = 42, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2603        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 58, a5  = 0xcccccccd
       0     2606        M                                           #; (acc) a0  <-- 0x00355513
       0     2607        M 0x80000708 srli    a0, a0, 3              #; a0  = 46, (wrb) a0  <-- 5
       0     2608        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2611        M                                           #; (acc) a0  <-- 0x40a68533
       0     2612        M 0x80000710 sub     a0, a3, a0             #; a3  = 58, a0  = 50, (wrb) a0  <-- 8
       0     2614        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2615        M 0x8000071c addi    a4, a4, -1             #; a4  = 42, (wrb) a4  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2616        M 0x80000720 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2617        M 0x80000724 bnez    a4, pc - 32            #; a4  = 41, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2618        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 59, a5  = 0xcccccccd
       0     2621        M                                           #; (acc) a0  <-- 0x00355513
       0     2622        M 0x80000708 srli    a0, a0, 3              #; a0  = 47, (wrb) a0  <-- 5
       0     2623        M 0x8000070c mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2626        M                                           #; (acc) a0  <-- 0x40a68533
       0     2627        M 0x80000710 sub     a0, a3, a0             #; a3  = 59, a0  = 50, (wrb) a0  <-- 9
       0     2629        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2630        M 0x8000071c addi    a4, a4, -1             #; a4  = 41, (wrb) a4  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2631        M 0x80000720 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2632        M 0x80000724 bnez    a4, pc - 32            #; a4  = 40, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2633        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 60, a5  = 0xcccccccd
       0     2636        M                                           #; (acc) a0  <-- 0x00355513
       0     2637        M 0x80000708 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     2638        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2641        M                                           #; (acc) a0  <-- 0x40a68533
       0     2642        M 0x80000710 sub     a0, a3, a0             #; a3  = 60, a0  = 60, (wrb) a0  <-- 0
       0     2644        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2645        M 0x8000071c addi    a4, a4, -1             #; a4  = 40, (wrb) a4  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2646        M 0x80000720 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2647        M 0x80000724 bnez    a4, pc - 32            #; a4  = 39, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2648        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 61, a5  = 0xcccccccd
       0     2651        M                                           #; (acc) a0  <-- 0x00355513
       0     2652        M 0x80000708 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     2653        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2656        M                                           #; (acc) a0  <-- 0x40a68533
       0     2657        M 0x80000710 sub     a0, a3, a0             #; a3  = 61, a0  = 60, (wrb) a0  <-- 1
       0     2659        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2660        M 0x8000071c addi    a4, a4, -1             #; a4  = 39, (wrb) a4  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2661        M 0x80000720 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2662        M 0x80000724 bnez    a4, pc - 32            #; a4  = 38, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2663        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 62, a5  = 0xcccccccd
       0     2666        M                                           #; (acc) a0  <-- 0x00355513
       0     2667        M 0x80000708 srli    a0, a0, 3              #; a0  = 49, (wrb) a0  <-- 6
       0     2668        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2671        M                                           #; (acc) a0  <-- 0x40a68533
       0     2672        M 0x80000710 sub     a0, a3, a0             #; a3  = 62, a0  = 60, (wrb) a0  <-- 2
       0     2674        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2675        M 0x8000071c addi    a4, a4, -1             #; a4  = 38, (wrb) a4  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2676        M 0x80000720 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2677        M 0x80000724 bnez    a4, pc - 32            #; a4  = 37, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2678        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 63, a5  = 0xcccccccd
       0     2681        M                                           #; (acc) a0  <-- 0x00355513
       0     2682        M 0x80000708 srli    a0, a0, 3              #; a0  = 50, (wrb) a0  <-- 6
       0     2683        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2686        M                                           #; (acc) a0  <-- 0x40a68533
       0     2687        M 0x80000710 sub     a0, a3, a0             #; a3  = 63, a0  = 60, (wrb) a0  <-- 3
       0     2689        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2690        M 0x8000071c addi    a4, a4, -1             #; a4  = 37, (wrb) a4  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2691        M 0x80000720 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2692        M 0x80000724 bnez    a4, pc - 32            #; a4  = 36, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2693        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 64, a5  = 0xcccccccd
       0     2696        M                                           #; (acc) a0  <-- 0x00355513
       0     2697        M 0x80000708 srli    a0, a0, 3              #; a0  = 51, (wrb) a0  <-- 6
       0     2698        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2701        M                                           #; (acc) a0  <-- 0x40a68533
       0     2702        M 0x80000710 sub     a0, a3, a0             #; a3  = 64, a0  = 60, (wrb) a0  <-- 4
       0     2704        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2705        M 0x8000071c addi    a4, a4, -1             #; a4  = 36, (wrb) a4  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2706        M 0x80000720 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2707        M 0x80000724 bnez    a4, pc - 32            #; a4  = 35, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2708        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 65, a5  = 0xcccccccd
       0     2711        M                                           #; (acc) a0  <-- 0x00355513
       0     2712        M 0x80000708 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     2713        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2716        M                                           #; (acc) a0  <-- 0x40a68533
       0     2717        M 0x80000710 sub     a0, a3, a0             #; a3  = 65, a0  = 60, (wrb) a0  <-- 5
       0     2719        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2720        M 0x8000071c addi    a4, a4, -1             #; a4  = 35, (wrb) a4  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2721        M 0x80000720 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2722        M 0x80000724 bnez    a4, pc - 32            #; a4  = 34, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2723        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 66, a5  = 0xcccccccd
       0     2726        M                                           #; (acc) a0  <-- 0x00355513
       0     2727        M 0x80000708 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     2728        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2731        M                                           #; (acc) a0  <-- 0x40a68533
       0     2732        M 0x80000710 sub     a0, a3, a0             #; a3  = 66, a0  = 60, (wrb) a0  <-- 6
       0     2734        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2735        M 0x8000071c addi    a4, a4, -1             #; a4  = 34, (wrb) a4  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2736        M 0x80000720 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2737        M 0x80000724 bnez    a4, pc - 32            #; a4  = 33, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2738        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 67, a5  = 0xcccccccd
       0     2741        M                                           #; (acc) a0  <-- 0x00355513
       0     2742        M 0x80000708 srli    a0, a0, 3              #; a0  = 53, (wrb) a0  <-- 6
       0     2743        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2746        M                                           #; (acc) a0  <-- 0x40a68533
       0     2747        M 0x80000710 sub     a0, a3, a0             #; a3  = 67, a0  = 60, (wrb) a0  <-- 7
       0     2749        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2750        M 0x8000071c addi    a4, a4, -1             #; a4  = 33, (wrb) a4  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2751        M 0x80000720 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2752        M 0x80000724 bnez    a4, pc - 32            #; a4  = 32, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2753        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 68, a5  = 0xcccccccd
       0     2756        M                                           #; (acc) a0  <-- 0x00355513
       0     2757        M 0x80000708 srli    a0, a0, 3              #; a0  = 54, (wrb) a0  <-- 6
       0     2758        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2761        M                                           #; (acc) a0  <-- 0x40a68533
       0     2762        M 0x80000710 sub     a0, a3, a0             #; a3  = 68, a0  = 60, (wrb) a0  <-- 8
       0     2764        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2765        M 0x8000071c addi    a4, a4, -1             #; a4  = 32, (wrb) a4  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2766        M 0x80000720 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2767        M 0x80000724 bnez    a4, pc - 32            #; a4  = 31, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2768        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 69, a5  = 0xcccccccd
       0     2771        M                                           #; (acc) a0  <-- 0x00355513
       0     2772        M 0x80000708 srli    a0, a0, 3              #; a0  = 55, (wrb) a0  <-- 6
       0     2773        M 0x8000070c mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2776        M                                           #; (acc) a0  <-- 0x40a68533
       0     2777        M 0x80000710 sub     a0, a3, a0             #; a3  = 69, a0  = 60, (wrb) a0  <-- 9
       0     2779        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2780        M 0x8000071c addi    a4, a4, -1             #; a4  = 31, (wrb) a4  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2781        M 0x80000720 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2782        M 0x80000724 bnez    a4, pc - 32            #; a4  = 30, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2783        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 70, a5  = 0xcccccccd
       0     2786        M                                           #; (acc) a0  <-- 0x00355513
       0     2787        M 0x80000708 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     2788        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2791        M                                           #; (acc) a0  <-- 0x40a68533
       0     2792        M 0x80000710 sub     a0, a3, a0             #; a3  = 70, a0  = 70, (wrb) a0  <-- 0
       0     2794        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2795        M 0x8000071c addi    a4, a4, -1             #; a4  = 30, (wrb) a4  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2796        M 0x80000720 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2797        M 0x80000724 bnez    a4, pc - 32            #; a4  = 29, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2798        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 71, a5  = 0xcccccccd
       0     2801        M                                           #; (acc) a0  <-- 0x00355513
       0     2802        M 0x80000708 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     2803        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2806        M                                           #; (acc) a0  <-- 0x40a68533
       0     2807        M 0x80000710 sub     a0, a3, a0             #; a3  = 71, a0  = 70, (wrb) a0  <-- 1
       0     2809        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2810        M 0x8000071c addi    a4, a4, -1             #; a4  = 29, (wrb) a4  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2811        M 0x80000720 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2812        M 0x80000724 bnez    a4, pc - 32            #; a4  = 28, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2813        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 72, a5  = 0xcccccccd
       0     2816        M                                           #; (acc) a0  <-- 0x00355513
       0     2817        M 0x80000708 srli    a0, a0, 3              #; a0  = 57, (wrb) a0  <-- 7
       0     2818        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2821        M                                           #; (acc) a0  <-- 0x40a68533
       0     2822        M 0x80000710 sub     a0, a3, a0             #; a3  = 72, a0  = 70, (wrb) a0  <-- 2
       0     2824        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2825        M 0x8000071c addi    a4, a4, -1             #; a4  = 28, (wrb) a4  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2826        M 0x80000720 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2827        M 0x80000724 bnez    a4, pc - 32            #; a4  = 27, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2828        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 73, a5  = 0xcccccccd
       0     2831        M                                           #; (acc) a0  <-- 0x00355513
       0     2832        M 0x80000708 srli    a0, a0, 3              #; a0  = 58, (wrb) a0  <-- 7
       0     2833        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2836        M                                           #; (acc) a0  <-- 0x40a68533
       0     2837        M 0x80000710 sub     a0, a3, a0             #; a3  = 73, a0  = 70, (wrb) a0  <-- 3
       0     2839        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2840        M 0x8000071c addi    a4, a4, -1             #; a4  = 27, (wrb) a4  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2841        M 0x80000720 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2842        M 0x80000724 bnez    a4, pc - 32            #; a4  = 26, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2843        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 74, a5  = 0xcccccccd
       0     2846        M                                           #; (acc) a0  <-- 0x00355513
       0     2847        M 0x80000708 srli    a0, a0, 3              #; a0  = 59, (wrb) a0  <-- 7
       0     2848        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2851        M                                           #; (acc) a0  <-- 0x40a68533
       0     2852        M 0x80000710 sub     a0, a3, a0             #; a3  = 74, a0  = 70, (wrb) a0  <-- 4
       0     2854        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2855        M 0x8000071c addi    a4, a4, -1             #; a4  = 26, (wrb) a4  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2856        M 0x80000720 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2857        M 0x80000724 bnez    a4, pc - 32            #; a4  = 25, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2858        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 75, a5  = 0xcccccccd
       0     2861        M                                           #; (acc) a0  <-- 0x00355513
       0     2862        M 0x80000708 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     2863        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2866        M                                           #; (acc) a0  <-- 0x40a68533
       0     2867        M 0x80000710 sub     a0, a3, a0             #; a3  = 75, a0  = 70, (wrb) a0  <-- 5
       0     2869        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2870        M 0x8000071c addi    a4, a4, -1             #; a4  = 25, (wrb) a4  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2871        M 0x80000720 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2872        M 0x80000724 bnez    a4, pc - 32            #; a4  = 24, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2873        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 76, a5  = 0xcccccccd
       0     2876        M                                           #; (acc) a0  <-- 0x00355513
       0     2877        M 0x80000708 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     2878        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2881        M                                           #; (acc) a0  <-- 0x40a68533
       0     2882        M 0x80000710 sub     a0, a3, a0             #; a3  = 76, a0  = 70, (wrb) a0  <-- 6
       0     2884        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2885        M 0x8000071c addi    a4, a4, -1             #; a4  = 24, (wrb) a4  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2886        M 0x80000720 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2887        M 0x80000724 bnez    a4, pc - 32            #; a4  = 23, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2888        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 77, a5  = 0xcccccccd
       0     2891        M                                           #; (acc) a0  <-- 0x00355513
       0     2892        M 0x80000708 srli    a0, a0, 3              #; a0  = 61, (wrb) a0  <-- 7
       0     2893        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2896        M                                           #; (acc) a0  <-- 0x40a68533
       0     2897        M 0x80000710 sub     a0, a3, a0             #; a3  = 77, a0  = 70, (wrb) a0  <-- 7
       0     2899        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2900        M 0x8000071c addi    a4, a4, -1             #; a4  = 23, (wrb) a4  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2901        M 0x80000720 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2902        M 0x80000724 bnez    a4, pc - 32            #; a4  = 22, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2903        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 78, a5  = 0xcccccccd
       0     2906        M                                           #; (acc) a0  <-- 0x00355513
       0     2907        M 0x80000708 srli    a0, a0, 3              #; a0  = 62, (wrb) a0  <-- 7
       0     2908        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2911        M                                           #; (acc) a0  <-- 0x40a68533
       0     2912        M 0x80000710 sub     a0, a3, a0             #; a3  = 78, a0  = 70, (wrb) a0  <-- 8
       0     2914        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2915        M 0x8000071c addi    a4, a4, -1             #; a4  = 22, (wrb) a4  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2916        M 0x80000720 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2917        M 0x80000724 bnez    a4, pc - 32            #; a4  = 21, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2918        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 79, a5  = 0xcccccccd
       0     2921        M                                           #; (acc) a0  <-- 0x00355513
       0     2922        M 0x80000708 srli    a0, a0, 3              #; a0  = 63, (wrb) a0  <-- 7
       0     2923        M 0x8000070c mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2926        M                                           #; (acc) a0  <-- 0x40a68533
       0     2927        M 0x80000710 sub     a0, a3, a0             #; a3  = 79, a0  = 70, (wrb) a0  <-- 9
       0     2929        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2930        M 0x8000071c addi    a4, a4, -1             #; a4  = 21, (wrb) a4  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2931        M 0x80000720 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2932        M 0x80000724 bnez    a4, pc - 32            #; a4  = 20, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2933        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 80, a5  = 0xcccccccd
       0     2936        M                                           #; (acc) a0  <-- 0x00355513
       0     2937        M 0x80000708 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     2938        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2941        M                                           #; (acc) a0  <-- 0x40a68533
       0     2942        M 0x80000710 sub     a0, a3, a0             #; a3  = 80, a0  = 80, (wrb) a0  <-- 0
       0     2944        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2945        M 0x8000071c addi    a4, a4, -1             #; a4  = 20, (wrb) a4  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2946        M 0x80000720 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2947        M 0x80000724 bnez    a4, pc - 32            #; a4  = 19, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2948        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 81, a5  = 0xcccccccd
       0     2951        M                                           #; (acc) a0  <-- 0x00355513
       0     2952        M 0x80000708 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     2953        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2956        M                                           #; (acc) a0  <-- 0x40a68533
       0     2957        M 0x80000710 sub     a0, a3, a0             #; a3  = 81, a0  = 80, (wrb) a0  <-- 1
       0     2959        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2960        M 0x8000071c addi    a4, a4, -1             #; a4  = 19, (wrb) a4  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2961        M 0x80000720 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2962        M 0x80000724 bnez    a4, pc - 32            #; a4  = 18, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2963        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 82, a5  = 0xcccccccd
       0     2966        M                                           #; (acc) a0  <-- 0x00355513
       0     2967        M 0x80000708 srli    a0, a0, 3              #; a0  = 65, (wrb) a0  <-- 8
       0     2968        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2971        M                                           #; (acc) a0  <-- 0x40a68533
       0     2972        M 0x80000710 sub     a0, a3, a0             #; a3  = 82, a0  = 80, (wrb) a0  <-- 2
       0     2974        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2975        M 0x8000071c addi    a4, a4, -1             #; a4  = 18, (wrb) a4  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2976        M 0x80000720 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2977        M 0x80000724 bnez    a4, pc - 32            #; a4  = 17, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2978        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 83, a5  = 0xcccccccd
       0     2981        M                                           #; (acc) a0  <-- 0x00355513
       0     2982        M 0x80000708 srli    a0, a0, 3              #; a0  = 66, (wrb) a0  <-- 8
       0     2983        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2986        M                                           #; (acc) a0  <-- 0x40a68533
       0     2987        M 0x80000710 sub     a0, a3, a0             #; a3  = 83, a0  = 80, (wrb) a0  <-- 3
       0     2989        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2990        M 0x8000071c addi    a4, a4, -1             #; a4  = 17, (wrb) a4  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2991        M 0x80000720 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2992        M 0x80000724 bnez    a4, pc - 32            #; a4  = 16, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2993        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 84, a5  = 0xcccccccd
       0     2996        M                                           #; (acc) a0  <-- 0x00355513
       0     2997        M 0x80000708 srli    a0, a0, 3              #; a0  = 67, (wrb) a0  <-- 8
       0     2998        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3001        M                                           #; (acc) a0  <-- 0x40a68533
       0     3002        M 0x80000710 sub     a0, a3, a0             #; a3  = 84, a0  = 80, (wrb) a0  <-- 4
       0     3004        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3005        M 0x8000071c addi    a4, a4, -1             #; a4  = 16, (wrb) a4  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3006        M 0x80000720 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3007        M 0x80000724 bnez    a4, pc - 32            #; a4  = 15, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3008        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 85, a5  = 0xcccccccd
       0     3011        M                                           #; (acc) a0  <-- 0x00355513
       0     3012        M 0x80000708 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     3013        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3016        M                                           #; (acc) a0  <-- 0x40a68533
       0     3017        M 0x80000710 sub     a0, a3, a0             #; a3  = 85, a0  = 80, (wrb) a0  <-- 5
       0     3019        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3020        M 0x8000071c addi    a4, a4, -1             #; a4  = 15, (wrb) a4  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3021        M 0x80000720 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3022        M 0x80000724 bnez    a4, pc - 32            #; a4  = 14, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3023        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 86, a5  = 0xcccccccd
       0     3026        M                                           #; (acc) a0  <-- 0x00355513
       0     3027        M 0x80000708 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     3028        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3031        M                                           #; (acc) a0  <-- 0x40a68533
       0     3032        M 0x80000710 sub     a0, a3, a0             #; a3  = 86, a0  = 80, (wrb) a0  <-- 6
       0     3034        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3035        M 0x8000071c addi    a4, a4, -1             #; a4  = 14, (wrb) a4  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3036        M 0x80000720 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3037        M 0x80000724 bnez    a4, pc - 32            #; a4  = 13, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3038        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 87, a5  = 0xcccccccd
       0     3041        M                                           #; (acc) a0  <-- 0x00355513
       0     3042        M 0x80000708 srli    a0, a0, 3              #; a0  = 69, (wrb) a0  <-- 8
       0     3043        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3046        M                                           #; (acc) a0  <-- 0x40a68533
       0     3047        M 0x80000710 sub     a0, a3, a0             #; a3  = 87, a0  = 80, (wrb) a0  <-- 7
       0     3049        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3050        M 0x8000071c addi    a4, a4, -1             #; a4  = 13, (wrb) a4  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3051        M 0x80000720 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3052        M 0x80000724 bnez    a4, pc - 32            #; a4  = 12, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3053        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 88, a5  = 0xcccccccd
       0     3056        M                                           #; (acc) a0  <-- 0x00355513
       0     3057        M 0x80000708 srli    a0, a0, 3              #; a0  = 70, (wrb) a0  <-- 8
       0     3058        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3061        M                                           #; (acc) a0  <-- 0x40a68533
       0     3062        M 0x80000710 sub     a0, a3, a0             #; a3  = 88, a0  = 80, (wrb) a0  <-- 8
       0     3064        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3065        M 0x8000071c addi    a4, a4, -1             #; a4  = 12, (wrb) a4  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3066        M 0x80000720 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3067        M 0x80000724 bnez    a4, pc - 32            #; a4  = 11, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3068        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 89, a5  = 0xcccccccd
       0     3071        M                                           #; (acc) a0  <-- 0x00355513
       0     3072        M 0x80000708 srli    a0, a0, 3              #; a0  = 71, (wrb) a0  <-- 8
       0     3073        M 0x8000070c mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3076        M                                           #; (acc) a0  <-- 0x40a68533
       0     3077        M 0x80000710 sub     a0, a3, a0             #; a3  = 89, a0  = 80, (wrb) a0  <-- 9
       0     3079        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3080        M 0x8000071c addi    a4, a4, -1             #; a4  = 11, (wrb) a4  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3081        M 0x80000720 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3082        M 0x80000724 bnez    a4, pc - 32            #; a4  = 10, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3083        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 90, a5  = 0xcccccccd
       0     3086        M                                           #; (acc) a0  <-- 0x00355513
       0     3087        M 0x80000708 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     3088        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3091        M                                           #; (acc) a0  <-- 0x40a68533
       0     3092        M 0x80000710 sub     a0, a3, a0             #; a3  = 90, a0  = 90, (wrb) a0  <-- 0
       0     3094        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3095        M 0x8000071c addi    a4, a4, -1             #; a4  = 10, (wrb) a4  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3096        M 0x80000720 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3097        M 0x80000724 bnez    a4, pc - 32            #; a4  = 9, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3098        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 91, a5  = 0xcccccccd
       0     3101        M                                           #; (acc) a0  <-- 0x00355513
       0     3102        M 0x80000708 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     3103        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3106        M                                           #; (acc) a0  <-- 0x40a68533
       0     3107        M 0x80000710 sub     a0, a3, a0             #; a3  = 91, a0  = 90, (wrb) a0  <-- 1
       0     3109        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3110        M 0x8000071c addi    a4, a4, -1             #; a4  = 9, (wrb) a4  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3111        M 0x80000720 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3112        M 0x80000724 bnez    a4, pc - 32            #; a4  = 8, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3113        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 92, a5  = 0xcccccccd
       0     3116        M                                           #; (acc) a0  <-- 0x00355513
       0     3117        M 0x80000708 srli    a0, a0, 3              #; a0  = 73, (wrb) a0  <-- 9
       0     3118        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3121        M                                           #; (acc) a0  <-- 0x40a68533
       0     3122        M 0x80000710 sub     a0, a3, a0             #; a3  = 92, a0  = 90, (wrb) a0  <-- 2
       0     3124        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3125        M 0x8000071c addi    a4, a4, -1             #; a4  = 8, (wrb) a4  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3126        M 0x80000720 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3127        M 0x80000724 bnez    a4, pc - 32            #; a4  = 7, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3128        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 93, a5  = 0xcccccccd
       0     3131        M                                           #; (acc) a0  <-- 0x00355513
       0     3132        M 0x80000708 srli    a0, a0, 3              #; a0  = 74, (wrb) a0  <-- 9
       0     3133        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3136        M                                           #; (acc) a0  <-- 0x40a68533
       0     3137        M 0x80000710 sub     a0, a3, a0             #; a3  = 93, a0  = 90, (wrb) a0  <-- 3
       0     3139        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3140        M 0x8000071c addi    a4, a4, -1             #; a4  = 7, (wrb) a4  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3141        M 0x80000720 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3142        M 0x80000724 bnez    a4, pc - 32            #; a4  = 6, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3143        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 94, a5  = 0xcccccccd
       0     3146        M                                           #; (acc) a0  <-- 0x00355513
       0     3147        M 0x80000708 srli    a0, a0, 3              #; a0  = 75, (wrb) a0  <-- 9
       0     3148        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3151        M                                           #; (acc) a0  <-- 0x40a68533
       0     3152        M 0x80000710 sub     a0, a3, a0             #; a3  = 94, a0  = 90, (wrb) a0  <-- 4
       0     3154        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3155        M 0x8000071c addi    a4, a4, -1             #; a4  = 6, (wrb) a4  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3156        M 0x80000720 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3157        M 0x80000724 bnez    a4, pc - 32            #; a4  = 5, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3158        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 95, a5  = 0xcccccccd
       0     3161        M                                           #; (acc) a0  <-- 0x00355513
       0     3162        M 0x80000708 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     3163        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3166        M                                           #; (acc) a0  <-- 0x40a68533
       0     3167        M 0x80000710 sub     a0, a3, a0             #; a3  = 95, a0  = 90, (wrb) a0  <-- 5
       0     3169        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3170        M 0x8000071c addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3171        M 0x80000720 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3172        M 0x80000724 bnez    a4, pc - 32            #; a4  = 4, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3173        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 96, a5  = 0xcccccccd
       0     3176        M                                           #; (acc) a0  <-- 0x00355513
       0     3177        M 0x80000708 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     3178        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3181        M                                           #; (acc) a0  <-- 0x40a68533
       0     3182        M 0x80000710 sub     a0, a3, a0             #; a3  = 96, a0  = 90, (wrb) a0  <-- 6
       0     3184        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3185        M 0x8000071c addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3186        M 0x80000720 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3187        M 0x80000724 bnez    a4, pc - 32            #; a4  = 3, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3188        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 97, a5  = 0xcccccccd
       0     3191        M                                           #; (acc) a0  <-- 0x00355513
       0     3192        M 0x80000708 srli    a0, a0, 3              #; a0  = 77, (wrb) a0  <-- 9
       0     3193        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3196        M                                           #; (acc) a0  <-- 0x40a68533
       0     3197        M 0x80000710 sub     a0, a3, a0             #; a3  = 97, a0  = 90, (wrb) a0  <-- 7
       0     3199        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3200        M 0x8000071c addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3201        M 0x80000720 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3202        M 0x80000724 bnez    a4, pc - 32            #; a4  = 2, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3203        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 98, a5  = 0xcccccccd
       0     3206        M                                           #; (acc) a0  <-- 0x00355513
       0     3207        M 0x80000708 srli    a0, a0, 3              #; a0  = 78, (wrb) a0  <-- 9
       0     3208        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3211        M                                           #; (acc) a0  <-- 0x40a68533
       0     3212        M 0x80000710 sub     a0, a3, a0             #; a3  = 98, a0  = 90, (wrb) a0  <-- 8
       0     3214        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3215        M 0x8000071c addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3216        M 0x80000720 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3217        M 0x80000724 bnez    a4, pc - 32            #; a4  = 1, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3218        M 0x80000704 mulhu   a0, a3, a5             #; a3  = 99, a5  = 0xcccccccd
       0     3221        M                                           #; (acc) a0  <-- 0x00355513
       0     3222        M 0x80000708 srli    a0, a0, 3              #; a0  = 79, (wrb) a0  <-- 9
       0     3223        M 0x8000070c mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3226        M                                           #; (acc) a0  <-- 0x40a68533
       0     3227        M 0x80000710 sub     a0, a3, a0             #; a3  = 99, a0  = 90, (wrb) a0  <-- 9
       0     3229        M 0x80000714 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3230        M 0x8000071c addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3231        M 0x80000720 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3232        M 0x80000724 bnez    a4, pc - 32            #; a4  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3234        M 0x8000072c j       pc + 0x44              #; goto 0x80000770
                         M 0x80000728 csrrci  a1, ssr, 1             #; 
       0     3245        M 0x80000770 addi    a0, t1, 792            #; t1  = 0x00100320, (wrb) a0  <-- 0x00100638
       0     3246        M 0x80000774 srli    a1, t1, 20             #; t1  = 0x00100320, (wrb) a1  <-- 1
       0     3247        M 0x80000778 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     3248        M 0x8000077c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     3257        M 0x80000780 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     3258        M 0x80000784 sltu    a0, a0, a2             #; a0  = 0x00100638, a2  = 0x00120001, (wrb) a0  <-- 1
       0     3259        M 0x80000788 and     a7, a1, a0             #; a1  = 1, a0  = 1, (wrb) a7  <-- 1
       0     3260        M 0x8000078c beqz    a7, pc + 108           #; a7  = 1, not taken
       0     3269        M 0x80000790 li      a4, 0                  #; (wrb) a4  <-- 0
       0     3270        M 0x80000794 li      a0, 8                  #; (wrb) a0  <-- 8
       0     3271        M 0x80000798 li      a1, 99                 #; (wrb) a1  <-- 99
       0     3272        M 0x8000079c li      a2, 64                 #; (wrb) a2  <-- 64
       0     3281        M 0x800007a0 scfgw   a1, a2                 #; a1  = 99, a2  = 64
       0     3282        M 0x800007a4 li      a1, 192                #; (wrb) a1  <-- 192
       0     3283        M 0x800007a8 scfgw   a0, a1                 #; a0  = 8, a1  = 192
       0     3284        M 0x800007ac li      a0, 32                 #; (wrb) a0  <-- 32
       0     3293        M 0x800007b0 scfgw   zero, a0               #; a0  = 32
       0     3294        M 0x800007b4 scfgwi  t1, 896                #; t1  = 0x00100320
       0     3296        M 0x800007bc li      a5, 100                #; (wrb) a5  <-- 100
                         M 0x800007b8 csrrsi  a0, ssr, 1             #; 
       0     3305        M 0x800007c0 lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     3306        M 0x800007c4 addi    a2, a0, -819           #; a0  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
       0     3307        M 0x800007c8 li      a3, 10                 #; (wrb) a3  <-- 10
       0     3308        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 0, a2  = 0xcccccccd
       0     3317        M 0x800007d0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3318        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3321        M                                           #; (acc) a0  <-- 0x40a70533
       0     3322        M 0x800007d8 sub     a0, a4, a0             #; a4  = 0, a0  = 0, (wrb) a0  <-- 0
       0     3324        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3325        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3330        M 0x800007e4 addi    a5, a5, -1             #; a5  = 100, (wrb) a5  <-- 99
       0     3331        M 0x800007e8 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3332        M 0x800007ec bnez    a5, pc - 32            #; a5  = 99, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3333        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 1, a2  = 0xcccccccd
       0     3336        M                                           #; (acc) a0  <-- 0x00355513
       0     3337        M 0x800007d0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3338        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3341        M                                           #; (acc) a0  <-- 0x40a70533
       0     3342        M 0x800007d8 sub     a0, a4, a0             #; a4  = 1, a0  = 0, (wrb) a0  <-- 1
       0     3344        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3345        M 0x800007e4 addi    a5, a5, -1             #; a5  = 99, (wrb) a5  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3346        M 0x800007e8 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3347        M 0x800007ec bnez    a5, pc - 32            #; a5  = 98, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3348        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 2, a2  = 0xcccccccd
       0     3351        M                                           #; (acc) a0  <-- 0x00355513
       0     3352        M 0x800007d0 srli    a0, a0, 3              #; a0  = 1, (wrb) a0  <-- 0
       0     3353        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3356        M                                           #; (acc) a0  <-- 0x40a70533
       0     3357        M 0x800007d8 sub     a0, a4, a0             #; a4  = 2, a0  = 0, (wrb) a0  <-- 2
       0     3359        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3360        M 0x800007e4 addi    a5, a5, -1             #; a5  = 98, (wrb) a5  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3361        M 0x800007e8 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3362        M 0x800007ec bnez    a5, pc - 32            #; a5  = 97, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3363        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 3, a2  = 0xcccccccd
       0     3366        M                                           #; (acc) a0  <-- 0x00355513
       0     3367        M 0x800007d0 srli    a0, a0, 3              #; a0  = 2, (wrb) a0  <-- 0
       0     3368        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3371        M                                           #; (acc) a0  <-- 0x40a70533
       0     3372        M 0x800007d8 sub     a0, a4, a0             #; a4  = 3, a0  = 0, (wrb) a0  <-- 3
       0     3374        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3375        M 0x800007e4 addi    a5, a5, -1             #; a5  = 97, (wrb) a5  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3376        M 0x800007e8 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3377        M 0x800007ec bnez    a5, pc - 32            #; a5  = 96, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3378        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 4, a2  = 0xcccccccd
       0     3381        M                                           #; (acc) a0  <-- 0x00355513
       0     3382        M 0x800007d0 srli    a0, a0, 3              #; a0  = 3, (wrb) a0  <-- 0
       0     3383        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3386        M                                           #; (acc) a0  <-- 0x40a70533
       0     3387        M 0x800007d8 sub     a0, a4, a0             #; a4  = 4, a0  = 0, (wrb) a0  <-- 4
       0     3389        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3390        M 0x800007e4 addi    a5, a5, -1             #; a5  = 96, (wrb) a5  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3391        M 0x800007e8 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3392        M 0x800007ec bnez    a5, pc - 32            #; a5  = 95, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3393        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 5, a2  = 0xcccccccd
       0     3396        M                                           #; (acc) a0  <-- 0x00355513
       0     3397        M 0x800007d0 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     3398        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3401        M                                           #; (acc) a0  <-- 0x40a70533
       0     3402        M 0x800007d8 sub     a0, a4, a0             #; a4  = 5, a0  = 0, (wrb) a0  <-- 5
       0     3404        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3405        M 0x800007e4 addi    a5, a5, -1             #; a5  = 95, (wrb) a5  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3406        M 0x800007e8 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3407        M 0x800007ec bnez    a5, pc - 32            #; a5  = 94, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3408        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 6, a2  = 0xcccccccd
       0     3411        M                                           #; (acc) a0  <-- 0x00355513
       0     3412        M 0x800007d0 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     3413        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3416        M                                           #; (acc) a0  <-- 0x40a70533
       0     3417        M 0x800007d8 sub     a0, a4, a0             #; a4  = 6, a0  = 0, (wrb) a0  <-- 6
       0     3419        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3420        M 0x800007e4 addi    a5, a5, -1             #; a5  = 94, (wrb) a5  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3421        M 0x800007e8 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3422        M 0x800007ec bnez    a5, pc - 32            #; a5  = 93, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3423        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 7, a2  = 0xcccccccd
       0     3426        M                                           #; (acc) a0  <-- 0x00355513
       0     3427        M 0x800007d0 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     3428        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3431        M                                           #; (acc) a0  <-- 0x40a70533
       0     3432        M 0x800007d8 sub     a0, a4, a0             #; a4  = 7, a0  = 0, (wrb) a0  <-- 7
       0     3434        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3435        M 0x800007e4 addi    a5, a5, -1             #; a5  = 93, (wrb) a5  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3436        M 0x800007e8 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3437        M 0x800007ec bnez    a5, pc - 32            #; a5  = 92, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3438        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 8, a2  = 0xcccccccd
       0     3441        M                                           #; (acc) a0  <-- 0x00355513
       0     3442        M 0x800007d0 srli    a0, a0, 3              #; a0  = 6, (wrb) a0  <-- 0
       0     3443        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3446        M                                           #; (acc) a0  <-- 0x40a70533
       0     3447        M 0x800007d8 sub     a0, a4, a0             #; a4  = 8, a0  = 0, (wrb) a0  <-- 8
       0     3449        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3450        M 0x800007e4 addi    a5, a5, -1             #; a5  = 92, (wrb) a5  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3451        M 0x800007e8 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3452        M 0x800007ec bnez    a5, pc - 32            #; a5  = 91, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3453        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 9, a2  = 0xcccccccd
       0     3456        M                                           #; (acc) a0  <-- 0x00355513
       0     3457        M 0x800007d0 srli    a0, a0, 3              #; a0  = 7, (wrb) a0  <-- 0
       0     3458        M 0x800007d4 mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3461        M                                           #; (acc) a0  <-- 0x40a70533
       0     3462        M 0x800007d8 sub     a0, a4, a0             #; a4  = 9, a0  = 0, (wrb) a0  <-- 9
       0     3464        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3465        M 0x800007e4 addi    a5, a5, -1             #; a5  = 91, (wrb) a5  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3466        M 0x800007e8 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3467        M 0x800007ec bnez    a5, pc - 32            #; a5  = 90, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3468        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 10, a2  = 0xcccccccd
       0     3471        M                                           #; (acc) a0  <-- 0x00355513
       0     3472        M 0x800007d0 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     3473        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3476        M                                           #; (acc) a0  <-- 0x40a70533
       0     3477        M 0x800007d8 sub     a0, a4, a0             #; a4  = 10, a0  = 10, (wrb) a0  <-- 0
       0     3479        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3480        M 0x800007e4 addi    a5, a5, -1             #; a5  = 90, (wrb) a5  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3481        M 0x800007e8 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3482        M 0x800007ec bnez    a5, pc - 32            #; a5  = 89, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3483        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 11, a2  = 0xcccccccd
       0     3486        M                                           #; (acc) a0  <-- 0x00355513
       0     3487        M 0x800007d0 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     3488        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3491        M                                           #; (acc) a0  <-- 0x40a70533
       0     3492        M 0x800007d8 sub     a0, a4, a0             #; a4  = 11, a0  = 10, (wrb) a0  <-- 1
       0     3494        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3495        M 0x800007e4 addi    a5, a5, -1             #; a5  = 89, (wrb) a5  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3496        M 0x800007e8 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3497        M 0x800007ec bnez    a5, pc - 32            #; a5  = 88, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3498        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 12, a2  = 0xcccccccd
       0     3501        M                                           #; (acc) a0  <-- 0x00355513
       0     3502        M 0x800007d0 srli    a0, a0, 3              #; a0  = 9, (wrb) a0  <-- 1
       0     3503        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3506        M                                           #; (acc) a0  <-- 0x40a70533
       0     3507        M 0x800007d8 sub     a0, a4, a0             #; a4  = 12, a0  = 10, (wrb) a0  <-- 2
       0     3509        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3510        M 0x800007e4 addi    a5, a5, -1             #; a5  = 88, (wrb) a5  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3511        M 0x800007e8 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3512        M 0x800007ec bnez    a5, pc - 32            #; a5  = 87, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3513        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 13, a2  = 0xcccccccd
       0     3516        M                                           #; (acc) a0  <-- 0x00355513
       0     3517        M 0x800007d0 srli    a0, a0, 3              #; a0  = 10, (wrb) a0  <-- 1
       0     3518        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3521        M                                           #; (acc) a0  <-- 0x40a70533
       0     3522        M 0x800007d8 sub     a0, a4, a0             #; a4  = 13, a0  = 10, (wrb) a0  <-- 3
       0     3524        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3525        M 0x800007e4 addi    a5, a5, -1             #; a5  = 87, (wrb) a5  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3526        M 0x800007e8 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3527        M 0x800007ec bnez    a5, pc - 32            #; a5  = 86, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3528        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 14, a2  = 0xcccccccd
       0     3531        M                                           #; (acc) a0  <-- 0x00355513
       0     3532        M 0x800007d0 srli    a0, a0, 3              #; a0  = 11, (wrb) a0  <-- 1
       0     3533        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3536        M                                           #; (acc) a0  <-- 0x40a70533
       0     3537        M 0x800007d8 sub     a0, a4, a0             #; a4  = 14, a0  = 10, (wrb) a0  <-- 4
       0     3539        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3540        M 0x800007e4 addi    a5, a5, -1             #; a5  = 86, (wrb) a5  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3541        M 0x800007e8 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3542        M 0x800007ec bnez    a5, pc - 32            #; a5  = 85, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3543        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 15, a2  = 0xcccccccd
       0     3546        M                                           #; (acc) a0  <-- 0x00355513
       0     3547        M 0x800007d0 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     3548        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3551        M                                           #; (acc) a0  <-- 0x40a70533
       0     3552        M 0x800007d8 sub     a0, a4, a0             #; a4  = 15, a0  = 10, (wrb) a0  <-- 5
       0     3554        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3555        M 0x800007e4 addi    a5, a5, -1             #; a5  = 85, (wrb) a5  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3556        M 0x800007e8 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3557        M 0x800007ec bnez    a5, pc - 32            #; a5  = 84, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3558        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 16, a2  = 0xcccccccd
       0     3561        M                                           #; (acc) a0  <-- 0x00355513
       0     3562        M 0x800007d0 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     3563        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3566        M                                           #; (acc) a0  <-- 0x40a70533
       0     3567        M 0x800007d8 sub     a0, a4, a0             #; a4  = 16, a0  = 10, (wrb) a0  <-- 6
       0     3569        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3570        M 0x800007e4 addi    a5, a5, -1             #; a5  = 84, (wrb) a5  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3571        M 0x800007e8 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3572        M 0x800007ec bnez    a5, pc - 32            #; a5  = 83, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3573        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 17, a2  = 0xcccccccd
       0     3576        M                                           #; (acc) a0  <-- 0x00355513
       0     3577        M 0x800007d0 srli    a0, a0, 3              #; a0  = 13, (wrb) a0  <-- 1
       0     3578        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3581        M                                           #; (acc) a0  <-- 0x40a70533
       0     3582        M 0x800007d8 sub     a0, a4, a0             #; a4  = 17, a0  = 10, (wrb) a0  <-- 7
       0     3584        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3585        M 0x800007e4 addi    a5, a5, -1             #; a5  = 83, (wrb) a5  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3586        M 0x800007e8 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3587        M 0x800007ec bnez    a5, pc - 32            #; a5  = 82, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3588        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 18, a2  = 0xcccccccd
       0     3591        M                                           #; (acc) a0  <-- 0x00355513
       0     3592        M 0x800007d0 srli    a0, a0, 3              #; a0  = 14, (wrb) a0  <-- 1
       0     3593        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3596        M                                           #; (acc) a0  <-- 0x40a70533
       0     3597        M 0x800007d8 sub     a0, a4, a0             #; a4  = 18, a0  = 10, (wrb) a0  <-- 8
       0     3599        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3600        M 0x800007e4 addi    a5, a5, -1             #; a5  = 82, (wrb) a5  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3601        M 0x800007e8 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3602        M 0x800007ec bnez    a5, pc - 32            #; a5  = 81, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3603        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 19, a2  = 0xcccccccd
       0     3606        M                                           #; (acc) a0  <-- 0x00355513
       0     3607        M 0x800007d0 srli    a0, a0, 3              #; a0  = 15, (wrb) a0  <-- 1
       0     3608        M 0x800007d4 mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3611        M                                           #; (acc) a0  <-- 0x40a70533
       0     3612        M 0x800007d8 sub     a0, a4, a0             #; a4  = 19, a0  = 10, (wrb) a0  <-- 9
       0     3614        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3615        M 0x800007e4 addi    a5, a5, -1             #; a5  = 81, (wrb) a5  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3616        M 0x800007e8 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3617        M 0x800007ec bnez    a5, pc - 32            #; a5  = 80, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3618        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 20, a2  = 0xcccccccd
       0     3621        M                                           #; (acc) a0  <-- 0x00355513
       0     3622        M 0x800007d0 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     3623        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3626        M                                           #; (acc) a0  <-- 0x40a70533
       0     3627        M 0x800007d8 sub     a0, a4, a0             #; a4  = 20, a0  = 20, (wrb) a0  <-- 0
       0     3629        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3630        M 0x800007e4 addi    a5, a5, -1             #; a5  = 80, (wrb) a5  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3631        M 0x800007e8 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3632        M 0x800007ec bnez    a5, pc - 32            #; a5  = 79, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3633        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 21, a2  = 0xcccccccd
       0     3636        M                                           #; (acc) a0  <-- 0x00355513
       0     3637        M 0x800007d0 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     3638        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3641        M                                           #; (acc) a0  <-- 0x40a70533
       0     3642        M 0x800007d8 sub     a0, a4, a0             #; a4  = 21, a0  = 20, (wrb) a0  <-- 1
       0     3644        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3645        M 0x800007e4 addi    a5, a5, -1             #; a5  = 79, (wrb) a5  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3646        M 0x800007e8 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3647        M 0x800007ec bnez    a5, pc - 32            #; a5  = 78, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3648        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 22, a2  = 0xcccccccd
       0     3651        M                                           #; (acc) a0  <-- 0x00355513
       0     3652        M 0x800007d0 srli    a0, a0, 3              #; a0  = 17, (wrb) a0  <-- 2
       0     3653        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3656        M                                           #; (acc) a0  <-- 0x40a70533
       0     3657        M 0x800007d8 sub     a0, a4, a0             #; a4  = 22, a0  = 20, (wrb) a0  <-- 2
       0     3659        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3660        M 0x800007e4 addi    a5, a5, -1             #; a5  = 78, (wrb) a5  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3661        M 0x800007e8 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3662        M 0x800007ec bnez    a5, pc - 32            #; a5  = 77, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3663        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 23, a2  = 0xcccccccd
       0     3666        M                                           #; (acc) a0  <-- 0x00355513
       0     3667        M 0x800007d0 srli    a0, a0, 3              #; a0  = 18, (wrb) a0  <-- 2
       0     3668        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3671        M                                           #; (acc) a0  <-- 0x40a70533
       0     3672        M 0x800007d8 sub     a0, a4, a0             #; a4  = 23, a0  = 20, (wrb) a0  <-- 3
       0     3674        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3675        M 0x800007e4 addi    a5, a5, -1             #; a5  = 77, (wrb) a5  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3676        M 0x800007e8 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3677        M 0x800007ec bnez    a5, pc - 32            #; a5  = 76, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3678        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 24, a2  = 0xcccccccd
       0     3681        M                                           #; (acc) a0  <-- 0x00355513
       0     3682        M 0x800007d0 srli    a0, a0, 3              #; a0  = 19, (wrb) a0  <-- 2
       0     3683        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3686        M                                           #; (acc) a0  <-- 0x40a70533
       0     3687        M 0x800007d8 sub     a0, a4, a0             #; a4  = 24, a0  = 20, (wrb) a0  <-- 4
       0     3689        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3690        M 0x800007e4 addi    a5, a5, -1             #; a5  = 76, (wrb) a5  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3691        M 0x800007e8 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3692        M 0x800007ec bnez    a5, pc - 32            #; a5  = 75, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3693        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 25, a2  = 0xcccccccd
       0     3696        M                                           #; (acc) a0  <-- 0x00355513
       0     3697        M 0x800007d0 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     3698        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3701        M                                           #; (acc) a0  <-- 0x40a70533
       0     3702        M 0x800007d8 sub     a0, a4, a0             #; a4  = 25, a0  = 20, (wrb) a0  <-- 5
       0     3704        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3705        M 0x800007e4 addi    a5, a5, -1             #; a5  = 75, (wrb) a5  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3706        M 0x800007e8 addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3707        M 0x800007ec bnez    a5, pc - 32            #; a5  = 74, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3708        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 26, a2  = 0xcccccccd
       0     3711        M                                           #; (acc) a0  <-- 0x00355513
       0     3712        M 0x800007d0 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     3713        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3716        M                                           #; (acc) a0  <-- 0x40a70533
       0     3717        M 0x800007d8 sub     a0, a4, a0             #; a4  = 26, a0  = 20, (wrb) a0  <-- 6
       0     3719        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3720        M 0x800007e4 addi    a5, a5, -1             #; a5  = 74, (wrb) a5  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3721        M 0x800007e8 addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3722        M 0x800007ec bnez    a5, pc - 32            #; a5  = 73, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3723        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 27, a2  = 0xcccccccd
       0     3726        M                                           #; (acc) a0  <-- 0x00355513
       0     3727        M 0x800007d0 srli    a0, a0, 3              #; a0  = 21, (wrb) a0  <-- 2
       0     3728        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3731        M                                           #; (acc) a0  <-- 0x40a70533
       0     3732        M 0x800007d8 sub     a0, a4, a0             #; a4  = 27, a0  = 20, (wrb) a0  <-- 7
       0     3734        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3735        M 0x800007e4 addi    a5, a5, -1             #; a5  = 73, (wrb) a5  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3736        M 0x800007e8 addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3737        M 0x800007ec bnez    a5, pc - 32            #; a5  = 72, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3738        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 28, a2  = 0xcccccccd
       0     3741        M                                           #; (acc) a0  <-- 0x00355513
       0     3742        M 0x800007d0 srli    a0, a0, 3              #; a0  = 22, (wrb) a0  <-- 2
       0     3743        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3746        M                                           #; (acc) a0  <-- 0x40a70533
       0     3747        M 0x800007d8 sub     a0, a4, a0             #; a4  = 28, a0  = 20, (wrb) a0  <-- 8
       0     3749        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3750        M 0x800007e4 addi    a5, a5, -1             #; a5  = 72, (wrb) a5  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3751        M 0x800007e8 addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3752        M 0x800007ec bnez    a5, pc - 32            #; a5  = 71, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3753        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 29, a2  = 0xcccccccd
       0     3756        M                                           #; (acc) a0  <-- 0x00355513
       0     3757        M 0x800007d0 srli    a0, a0, 3              #; a0  = 23, (wrb) a0  <-- 2
       0     3758        M 0x800007d4 mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3761        M                                           #; (acc) a0  <-- 0x40a70533
       0     3762        M 0x800007d8 sub     a0, a4, a0             #; a4  = 29, a0  = 20, (wrb) a0  <-- 9
       0     3764        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3765        M 0x800007e4 addi    a5, a5, -1             #; a5  = 71, (wrb) a5  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3766        M 0x800007e8 addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3767        M 0x800007ec bnez    a5, pc - 32            #; a5  = 70, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3768        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 30, a2  = 0xcccccccd
       0     3771        M                                           #; (acc) a0  <-- 0x00355513
       0     3772        M 0x800007d0 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     3773        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3776        M                                           #; (acc) a0  <-- 0x40a70533
       0     3777        M 0x800007d8 sub     a0, a4, a0             #; a4  = 30, a0  = 30, (wrb) a0  <-- 0
       0     3779        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3780        M 0x800007e4 addi    a5, a5, -1             #; a5  = 70, (wrb) a5  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3781        M 0x800007e8 addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3782        M 0x800007ec bnez    a5, pc - 32            #; a5  = 69, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3783        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 31, a2  = 0xcccccccd
       0     3786        M                                           #; (acc) a0  <-- 0x00355513
       0     3787        M 0x800007d0 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     3788        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3791        M                                           #; (acc) a0  <-- 0x40a70533
       0     3792        M 0x800007d8 sub     a0, a4, a0             #; a4  = 31, a0  = 30, (wrb) a0  <-- 1
       0     3794        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3795        M 0x800007e4 addi    a5, a5, -1             #; a5  = 69, (wrb) a5  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3796        M 0x800007e8 addi    a4, a4, 1              #; a4  = 31, (wrb) a4  <-- 32
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3797        M 0x800007ec bnez    a5, pc - 32            #; a5  = 68, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3798        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 32, a2  = 0xcccccccd
       0     3801        M                                           #; (acc) a0  <-- 0x00355513
       0     3802        M 0x800007d0 srli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 3
       0     3803        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3806        M                                           #; (acc) a0  <-- 0x40a70533
       0     3807        M 0x800007d8 sub     a0, a4, a0             #; a4  = 32, a0  = 30, (wrb) a0  <-- 2
       0     3809        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3810        M 0x800007e4 addi    a5, a5, -1             #; a5  = 68, (wrb) a5  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3811        M 0x800007e8 addi    a4, a4, 1              #; a4  = 32, (wrb) a4  <-- 33
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3812        M 0x800007ec bnez    a5, pc - 32            #; a5  = 67, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3813        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 33, a2  = 0xcccccccd
       0     3816        M                                           #; (acc) a0  <-- 0x00355513
       0     3817        M 0x800007d0 srli    a0, a0, 3              #; a0  = 26, (wrb) a0  <-- 3
       0     3818        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3821        M                                           #; (acc) a0  <-- 0x40a70533
       0     3822        M 0x800007d8 sub     a0, a4, a0             #; a4  = 33, a0  = 30, (wrb) a0  <-- 3
       0     3824        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3825        M 0x800007e4 addi    a5, a5, -1             #; a5  = 67, (wrb) a5  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3826        M 0x800007e8 addi    a4, a4, 1              #; a4  = 33, (wrb) a4  <-- 34
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3827        M 0x800007ec bnez    a5, pc - 32            #; a5  = 66, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3828        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 34, a2  = 0xcccccccd
       0     3831        M                                           #; (acc) a0  <-- 0x00355513
       0     3832        M 0x800007d0 srli    a0, a0, 3              #; a0  = 27, (wrb) a0  <-- 3
       0     3833        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3836        M                                           #; (acc) a0  <-- 0x40a70533
       0     3837        M 0x800007d8 sub     a0, a4, a0             #; a4  = 34, a0  = 30, (wrb) a0  <-- 4
       0     3839        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3840        M 0x800007e4 addi    a5, a5, -1             #; a5  = 66, (wrb) a5  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3841        M 0x800007e8 addi    a4, a4, 1              #; a4  = 34, (wrb) a4  <-- 35
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3842        M 0x800007ec bnez    a5, pc - 32            #; a5  = 65, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3843        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 35, a2  = 0xcccccccd
       0     3846        M                                           #; (acc) a0  <-- 0x00355513
       0     3847        M 0x800007d0 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     3848        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3851        M                                           #; (acc) a0  <-- 0x40a70533
       0     3852        M 0x800007d8 sub     a0, a4, a0             #; a4  = 35, a0  = 30, (wrb) a0  <-- 5
       0     3854        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3855        M 0x800007e4 addi    a5, a5, -1             #; a5  = 65, (wrb) a5  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3856        M 0x800007e8 addi    a4, a4, 1              #; a4  = 35, (wrb) a4  <-- 36
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3857        M 0x800007ec bnez    a5, pc - 32            #; a5  = 64, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3858        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 36, a2  = 0xcccccccd
       0     3861        M                                           #; (acc) a0  <-- 0x00355513
       0     3862        M 0x800007d0 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     3863        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3866        M                                           #; (acc) a0  <-- 0x40a70533
       0     3867        M 0x800007d8 sub     a0, a4, a0             #; a4  = 36, a0  = 30, (wrb) a0  <-- 6
       0     3869        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3870        M 0x800007e4 addi    a5, a5, -1             #; a5  = 64, (wrb) a5  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3871        M 0x800007e8 addi    a4, a4, 1              #; a4  = 36, (wrb) a4  <-- 37
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3872        M 0x800007ec bnez    a5, pc - 32            #; a5  = 63, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3873        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 37, a2  = 0xcccccccd
       0     3876        M                                           #; (acc) a0  <-- 0x00355513
       0     3877        M 0x800007d0 srli    a0, a0, 3              #; a0  = 29, (wrb) a0  <-- 3
       0     3878        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3881        M                                           #; (acc) a0  <-- 0x40a70533
       0     3882        M 0x800007d8 sub     a0, a4, a0             #; a4  = 37, a0  = 30, (wrb) a0  <-- 7
       0     3884        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3885        M 0x800007e4 addi    a5, a5, -1             #; a5  = 63, (wrb) a5  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3886        M 0x800007e8 addi    a4, a4, 1              #; a4  = 37, (wrb) a4  <-- 38
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3887        M 0x800007ec bnez    a5, pc - 32            #; a5  = 62, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3888        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 38, a2  = 0xcccccccd
       0     3891        M                                           #; (acc) a0  <-- 0x00355513
       0     3892        M 0x800007d0 srli    a0, a0, 3              #; a0  = 30, (wrb) a0  <-- 3
       0     3893        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3896        M                                           #; (acc) a0  <-- 0x40a70533
       0     3897        M 0x800007d8 sub     a0, a4, a0             #; a4  = 38, a0  = 30, (wrb) a0  <-- 8
       0     3899        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3900        M 0x800007e4 addi    a5, a5, -1             #; a5  = 62, (wrb) a5  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3901        M 0x800007e8 addi    a4, a4, 1              #; a4  = 38, (wrb) a4  <-- 39
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3902        M 0x800007ec bnez    a5, pc - 32            #; a5  = 61, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3903        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 39, a2  = 0xcccccccd
       0     3906        M                                           #; (acc) a0  <-- 0x00355513
       0     3907        M 0x800007d0 srli    a0, a0, 3              #; a0  = 31, (wrb) a0  <-- 3
       0     3908        M 0x800007d4 mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3911        M                                           #; (acc) a0  <-- 0x40a70533
       0     3912        M 0x800007d8 sub     a0, a4, a0             #; a4  = 39, a0  = 30, (wrb) a0  <-- 9
       0     3914        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3915        M 0x800007e4 addi    a5, a5, -1             #; a5  = 61, (wrb) a5  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3916        M 0x800007e8 addi    a4, a4, 1              #; a4  = 39, (wrb) a4  <-- 40
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3917        M 0x800007ec bnez    a5, pc - 32            #; a5  = 60, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3918        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 40, a2  = 0xcccccccd
       0     3921        M                                           #; (acc) a0  <-- 0x00355513
       0     3922        M 0x800007d0 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     3923        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3926        M                                           #; (acc) a0  <-- 0x40a70533
       0     3927        M 0x800007d8 sub     a0, a4, a0             #; a4  = 40, a0  = 40, (wrb) a0  <-- 0
       0     3929        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3930        M 0x800007e4 addi    a5, a5, -1             #; a5  = 60, (wrb) a5  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3931        M 0x800007e8 addi    a4, a4, 1              #; a4  = 40, (wrb) a4  <-- 41
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3932        M 0x800007ec bnez    a5, pc - 32            #; a5  = 59, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3933        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 41, a2  = 0xcccccccd
       0     3936        M                                           #; (acc) a0  <-- 0x00355513
       0     3937        M 0x800007d0 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     3938        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3941        M                                           #; (acc) a0  <-- 0x40a70533
       0     3942        M 0x800007d8 sub     a0, a4, a0             #; a4  = 41, a0  = 40, (wrb) a0  <-- 1
       0     3944        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3945        M 0x800007e4 addi    a5, a5, -1             #; a5  = 59, (wrb) a5  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3946        M 0x800007e8 addi    a4, a4, 1              #; a4  = 41, (wrb) a4  <-- 42
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3947        M 0x800007ec bnez    a5, pc - 32            #; a5  = 58, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3948        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 42, a2  = 0xcccccccd
       0     3951        M                                           #; (acc) a0  <-- 0x00355513
       0     3952        M 0x800007d0 srli    a0, a0, 3              #; a0  = 33, (wrb) a0  <-- 4
       0     3953        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3956        M                                           #; (acc) a0  <-- 0x40a70533
       0     3957        M 0x800007d8 sub     a0, a4, a0             #; a4  = 42, a0  = 40, (wrb) a0  <-- 2
       0     3959        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3960        M 0x800007e4 addi    a5, a5, -1             #; a5  = 58, (wrb) a5  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3961        M 0x800007e8 addi    a4, a4, 1              #; a4  = 42, (wrb) a4  <-- 43
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3962        M 0x800007ec bnez    a5, pc - 32            #; a5  = 57, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3963        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 43, a2  = 0xcccccccd
       0     3966        M                                           #; (acc) a0  <-- 0x00355513
       0     3967        M 0x800007d0 srli    a0, a0, 3              #; a0  = 34, (wrb) a0  <-- 4
       0     3968        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3971        M                                           #; (acc) a0  <-- 0x40a70533
       0     3972        M 0x800007d8 sub     a0, a4, a0             #; a4  = 43, a0  = 40, (wrb) a0  <-- 3
       0     3974        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3975        M 0x800007e4 addi    a5, a5, -1             #; a5  = 57, (wrb) a5  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3976        M 0x800007e8 addi    a4, a4, 1              #; a4  = 43, (wrb) a4  <-- 44
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3977        M 0x800007ec bnez    a5, pc - 32            #; a5  = 56, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3978        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 44, a2  = 0xcccccccd
       0     3981        M                                           #; (acc) a0  <-- 0x00355513
       0     3982        M 0x800007d0 srli    a0, a0, 3              #; a0  = 35, (wrb) a0  <-- 4
       0     3983        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3986        M                                           #; (acc) a0  <-- 0x40a70533
       0     3987        M 0x800007d8 sub     a0, a4, a0             #; a4  = 44, a0  = 40, (wrb) a0  <-- 4
       0     3989        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3990        M 0x800007e4 addi    a5, a5, -1             #; a5  = 56, (wrb) a5  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3991        M 0x800007e8 addi    a4, a4, 1              #; a4  = 44, (wrb) a4  <-- 45
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3992        M 0x800007ec bnez    a5, pc - 32            #; a5  = 55, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3993        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 45, a2  = 0xcccccccd
       0     3996        M                                           #; (acc) a0  <-- 0x00355513
       0     3997        M 0x800007d0 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     3998        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4001        M                                           #; (acc) a0  <-- 0x40a70533
       0     4002        M 0x800007d8 sub     a0, a4, a0             #; a4  = 45, a0  = 40, (wrb) a0  <-- 5
       0     4004        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4005        M 0x800007e4 addi    a5, a5, -1             #; a5  = 55, (wrb) a5  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4006        M 0x800007e8 addi    a4, a4, 1              #; a4  = 45, (wrb) a4  <-- 46
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4007        M 0x800007ec bnez    a5, pc - 32            #; a5  = 54, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4008        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 46, a2  = 0xcccccccd
       0     4011        M                                           #; (acc) a0  <-- 0x00355513
       0     4012        M 0x800007d0 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     4013        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4016        M                                           #; (acc) a0  <-- 0x40a70533
       0     4017        M 0x800007d8 sub     a0, a4, a0             #; a4  = 46, a0  = 40, (wrb) a0  <-- 6
       0     4019        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4020        M 0x800007e4 addi    a5, a5, -1             #; a5  = 54, (wrb) a5  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4021        M 0x800007e8 addi    a4, a4, 1              #; a4  = 46, (wrb) a4  <-- 47
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4022        M 0x800007ec bnez    a5, pc - 32            #; a5  = 53, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4023        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 47, a2  = 0xcccccccd
       0     4026        M                                           #; (acc) a0  <-- 0x00355513
       0     4027        M 0x800007d0 srli    a0, a0, 3              #; a0  = 37, (wrb) a0  <-- 4
       0     4028        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4031        M                                           #; (acc) a0  <-- 0x40a70533
       0     4032        M 0x800007d8 sub     a0, a4, a0             #; a4  = 47, a0  = 40, (wrb) a0  <-- 7
       0     4034        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4035        M 0x800007e4 addi    a5, a5, -1             #; a5  = 53, (wrb) a5  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4036        M 0x800007e8 addi    a4, a4, 1              #; a4  = 47, (wrb) a4  <-- 48
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4037        M 0x800007ec bnez    a5, pc - 32            #; a5  = 52, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4038        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 48, a2  = 0xcccccccd
       0     4041        M                                           #; (acc) a0  <-- 0x00355513
       0     4042        M 0x800007d0 srli    a0, a0, 3              #; a0  = 38, (wrb) a0  <-- 4
       0     4043        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4046        M                                           #; (acc) a0  <-- 0x40a70533
       0     4047        M 0x800007d8 sub     a0, a4, a0             #; a4  = 48, a0  = 40, (wrb) a0  <-- 8
       0     4049        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4050        M 0x800007e4 addi    a5, a5, -1             #; a5  = 52, (wrb) a5  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4051        M 0x800007e8 addi    a4, a4, 1              #; a4  = 48, (wrb) a4  <-- 49
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4052        M 0x800007ec bnez    a5, pc - 32            #; a5  = 51, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4053        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 49, a2  = 0xcccccccd
       0     4056        M                                           #; (acc) a0  <-- 0x00355513
       0     4057        M 0x800007d0 srli    a0, a0, 3              #; a0  = 39, (wrb) a0  <-- 4
       0     4058        M 0x800007d4 mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4061        M                                           #; (acc) a0  <-- 0x40a70533
       0     4062        M 0x800007d8 sub     a0, a4, a0             #; a4  = 49, a0  = 40, (wrb) a0  <-- 9
       0     4064        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4065        M 0x800007e4 addi    a5, a5, -1             #; a5  = 51, (wrb) a5  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4066        M 0x800007e8 addi    a4, a4, 1              #; a4  = 49, (wrb) a4  <-- 50
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4067        M 0x800007ec bnez    a5, pc - 32            #; a5  = 50, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4068        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 50, a2  = 0xcccccccd
       0     4071        M                                           #; (acc) a0  <-- 0x00355513
       0     4072        M 0x800007d0 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     4073        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4076        M                                           #; (acc) a0  <-- 0x40a70533
       0     4077        M 0x800007d8 sub     a0, a4, a0             #; a4  = 50, a0  = 50, (wrb) a0  <-- 0
       0     4079        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4080        M 0x800007e4 addi    a5, a5, -1             #; a5  = 50, (wrb) a5  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4081        M 0x800007e8 addi    a4, a4, 1              #; a4  = 50, (wrb) a4  <-- 51
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4082        M 0x800007ec bnez    a5, pc - 32            #; a5  = 49, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4083        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 51, a2  = 0xcccccccd
       0     4086        M                                           #; (acc) a0  <-- 0x00355513
       0     4087        M 0x800007d0 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     4088        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4091        M                                           #; (acc) a0  <-- 0x40a70533
       0     4092        M 0x800007d8 sub     a0, a4, a0             #; a4  = 51, a0  = 50, (wrb) a0  <-- 1
       0     4094        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4095        M 0x800007e4 addi    a5, a5, -1             #; a5  = 49, (wrb) a5  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4096        M 0x800007e8 addi    a4, a4, 1              #; a4  = 51, (wrb) a4  <-- 52
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4097        M 0x800007ec bnez    a5, pc - 32            #; a5  = 48, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4098        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 52, a2  = 0xcccccccd
       0     4101        M                                           #; (acc) a0  <-- 0x00355513
       0     4102        M 0x800007d0 srli    a0, a0, 3              #; a0  = 41, (wrb) a0  <-- 5
       0     4103        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4106        M                                           #; (acc) a0  <-- 0x40a70533
       0     4107        M 0x800007d8 sub     a0, a4, a0             #; a4  = 52, a0  = 50, (wrb) a0  <-- 2
       0     4109        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4110        M 0x800007e4 addi    a5, a5, -1             #; a5  = 48, (wrb) a5  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4111        M 0x800007e8 addi    a4, a4, 1              #; a4  = 52, (wrb) a4  <-- 53
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4112        M 0x800007ec bnez    a5, pc - 32            #; a5  = 47, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4113        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 53, a2  = 0xcccccccd
       0     4116        M                                           #; (acc) a0  <-- 0x00355513
       0     4117        M 0x800007d0 srli    a0, a0, 3              #; a0  = 42, (wrb) a0  <-- 5
       0     4118        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4121        M                                           #; (acc) a0  <-- 0x40a70533
       0     4122        M 0x800007d8 sub     a0, a4, a0             #; a4  = 53, a0  = 50, (wrb) a0  <-- 3
       0     4124        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4125        M 0x800007e4 addi    a5, a5, -1             #; a5  = 47, (wrb) a5  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4126        M 0x800007e8 addi    a4, a4, 1              #; a4  = 53, (wrb) a4  <-- 54
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4127        M 0x800007ec bnez    a5, pc - 32            #; a5  = 46, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4128        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 54, a2  = 0xcccccccd
       0     4131        M                                           #; (acc) a0  <-- 0x00355513
       0     4132        M 0x800007d0 srli    a0, a0, 3              #; a0  = 43, (wrb) a0  <-- 5
       0     4133        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4136        M                                           #; (acc) a0  <-- 0x40a70533
       0     4137        M 0x800007d8 sub     a0, a4, a0             #; a4  = 54, a0  = 50, (wrb) a0  <-- 4
       0     4139        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4140        M 0x800007e4 addi    a5, a5, -1             #; a5  = 46, (wrb) a5  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4141        M 0x800007e8 addi    a4, a4, 1              #; a4  = 54, (wrb) a4  <-- 55
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4142        M 0x800007ec bnez    a5, pc - 32            #; a5  = 45, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4143        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 55, a2  = 0xcccccccd
       0     4146        M                                           #; (acc) a0  <-- 0x00355513
       0     4147        M 0x800007d0 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     4148        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4151        M                                           #; (acc) a0  <-- 0x40a70533
       0     4152        M 0x800007d8 sub     a0, a4, a0             #; a4  = 55, a0  = 50, (wrb) a0  <-- 5
       0     4154        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4155        M 0x800007e4 addi    a5, a5, -1             #; a5  = 45, (wrb) a5  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4156        M 0x800007e8 addi    a4, a4, 1              #; a4  = 55, (wrb) a4  <-- 56
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4157        M 0x800007ec bnez    a5, pc - 32            #; a5  = 44, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4158        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 56, a2  = 0xcccccccd
       0     4161        M                                           #; (acc) a0  <-- 0x00355513
       0     4162        M 0x800007d0 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     4163        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4166        M                                           #; (acc) a0  <-- 0x40a70533
       0     4167        M 0x800007d8 sub     a0, a4, a0             #; a4  = 56, a0  = 50, (wrb) a0  <-- 6
       0     4169        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4170        M 0x800007e4 addi    a5, a5, -1             #; a5  = 44, (wrb) a5  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4171        M 0x800007e8 addi    a4, a4, 1              #; a4  = 56, (wrb) a4  <-- 57
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4172        M 0x800007ec bnez    a5, pc - 32            #; a5  = 43, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4173        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 57, a2  = 0xcccccccd
       0     4176        M                                           #; (acc) a0  <-- 0x00355513
       0     4177        M 0x800007d0 srli    a0, a0, 3              #; a0  = 45, (wrb) a0  <-- 5
       0     4178        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4181        M                                           #; (acc) a0  <-- 0x40a70533
       0     4182        M 0x800007d8 sub     a0, a4, a0             #; a4  = 57, a0  = 50, (wrb) a0  <-- 7
       0     4184        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4185        M 0x800007e4 addi    a5, a5, -1             #; a5  = 43, (wrb) a5  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4186        M 0x800007e8 addi    a4, a4, 1              #; a4  = 57, (wrb) a4  <-- 58
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4187        M 0x800007ec bnez    a5, pc - 32            #; a5  = 42, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4188        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 58, a2  = 0xcccccccd
       0     4191        M                                           #; (acc) a0  <-- 0x00355513
       0     4192        M 0x800007d0 srli    a0, a0, 3              #; a0  = 46, (wrb) a0  <-- 5
       0     4193        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4196        M                                           #; (acc) a0  <-- 0x40a70533
       0     4197        M 0x800007d8 sub     a0, a4, a0             #; a4  = 58, a0  = 50, (wrb) a0  <-- 8
       0     4199        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4200        M 0x800007e4 addi    a5, a5, -1             #; a5  = 42, (wrb) a5  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4201        M 0x800007e8 addi    a4, a4, 1              #; a4  = 58, (wrb) a4  <-- 59
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4202        M 0x800007ec bnez    a5, pc - 32            #; a5  = 41, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4203        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 59, a2  = 0xcccccccd
       0     4206        M                                           #; (acc) a0  <-- 0x00355513
       0     4207        M 0x800007d0 srli    a0, a0, 3              #; a0  = 47, (wrb) a0  <-- 5
       0     4208        M 0x800007d4 mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4211        M                                           #; (acc) a0  <-- 0x40a70533
       0     4212        M 0x800007d8 sub     a0, a4, a0             #; a4  = 59, a0  = 50, (wrb) a0  <-- 9
       0     4214        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4215        M 0x800007e4 addi    a5, a5, -1             #; a5  = 41, (wrb) a5  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4216        M 0x800007e8 addi    a4, a4, 1              #; a4  = 59, (wrb) a4  <-- 60
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4217        M 0x800007ec bnez    a5, pc - 32            #; a5  = 40, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4218        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 60, a2  = 0xcccccccd
       0     4221        M                                           #; (acc) a0  <-- 0x00355513
       0     4222        M 0x800007d0 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     4223        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4226        M                                           #; (acc) a0  <-- 0x40a70533
       0     4227        M 0x800007d8 sub     a0, a4, a0             #; a4  = 60, a0  = 60, (wrb) a0  <-- 0
       0     4229        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4230        M 0x800007e4 addi    a5, a5, -1             #; a5  = 40, (wrb) a5  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4231        M 0x800007e8 addi    a4, a4, 1              #; a4  = 60, (wrb) a4  <-- 61
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4232        M 0x800007ec bnez    a5, pc - 32            #; a5  = 39, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4233        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 61, a2  = 0xcccccccd
       0     4236        M                                           #; (acc) a0  <-- 0x00355513
       0     4237        M 0x800007d0 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     4238        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4241        M                                           #; (acc) a0  <-- 0x40a70533
       0     4242        M 0x800007d8 sub     a0, a4, a0             #; a4  = 61, a0  = 60, (wrb) a0  <-- 1
       0     4244        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4245        M 0x800007e4 addi    a5, a5, -1             #; a5  = 39, (wrb) a5  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4246        M 0x800007e8 addi    a4, a4, 1              #; a4  = 61, (wrb) a4  <-- 62
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4247        M 0x800007ec bnez    a5, pc - 32            #; a5  = 38, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4248        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 62, a2  = 0xcccccccd
       0     4251        M                                           #; (acc) a0  <-- 0x00355513
       0     4252        M 0x800007d0 srli    a0, a0, 3              #; a0  = 49, (wrb) a0  <-- 6
       0     4253        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4256        M                                           #; (acc) a0  <-- 0x40a70533
       0     4257        M 0x800007d8 sub     a0, a4, a0             #; a4  = 62, a0  = 60, (wrb) a0  <-- 2
       0     4259        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4260        M 0x800007e4 addi    a5, a5, -1             #; a5  = 38, (wrb) a5  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4261        M 0x800007e8 addi    a4, a4, 1              #; a4  = 62, (wrb) a4  <-- 63
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4262        M 0x800007ec bnez    a5, pc - 32            #; a5  = 37, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4263        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 63, a2  = 0xcccccccd
       0     4266        M                                           #; (acc) a0  <-- 0x00355513
       0     4267        M 0x800007d0 srli    a0, a0, 3              #; a0  = 50, (wrb) a0  <-- 6
       0     4268        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4271        M                                           #; (acc) a0  <-- 0x40a70533
       0     4272        M 0x800007d8 sub     a0, a4, a0             #; a4  = 63, a0  = 60, (wrb) a0  <-- 3
       0     4274        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4275        M 0x800007e4 addi    a5, a5, -1             #; a5  = 37, (wrb) a5  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4276        M 0x800007e8 addi    a4, a4, 1              #; a4  = 63, (wrb) a4  <-- 64
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4277        M 0x800007ec bnez    a5, pc - 32            #; a5  = 36, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4278        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 64, a2  = 0xcccccccd
       0     4281        M                                           #; (acc) a0  <-- 0x00355513
       0     4282        M 0x800007d0 srli    a0, a0, 3              #; a0  = 51, (wrb) a0  <-- 6
       0     4283        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4286        M                                           #; (acc) a0  <-- 0x40a70533
       0     4287        M 0x800007d8 sub     a0, a4, a0             #; a4  = 64, a0  = 60, (wrb) a0  <-- 4
       0     4289        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4290        M 0x800007e4 addi    a5, a5, -1             #; a5  = 36, (wrb) a5  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4291        M 0x800007e8 addi    a4, a4, 1              #; a4  = 64, (wrb) a4  <-- 65
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4292        M 0x800007ec bnez    a5, pc - 32            #; a5  = 35, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4293        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 65, a2  = 0xcccccccd
       0     4296        M                                           #; (acc) a0  <-- 0x00355513
       0     4297        M 0x800007d0 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     4298        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4301        M                                           #; (acc) a0  <-- 0x40a70533
       0     4302        M 0x800007d8 sub     a0, a4, a0             #; a4  = 65, a0  = 60, (wrb) a0  <-- 5
       0     4304        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4305        M 0x800007e4 addi    a5, a5, -1             #; a5  = 35, (wrb) a5  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4306        M 0x800007e8 addi    a4, a4, 1              #; a4  = 65, (wrb) a4  <-- 66
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4307        M 0x800007ec bnez    a5, pc - 32            #; a5  = 34, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4308        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 66, a2  = 0xcccccccd
       0     4311        M                                           #; (acc) a0  <-- 0x00355513
       0     4312        M 0x800007d0 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     4313        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4316        M                                           #; (acc) a0  <-- 0x40a70533
       0     4317        M 0x800007d8 sub     a0, a4, a0             #; a4  = 66, a0  = 60, (wrb) a0  <-- 6
       0     4319        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4320        M 0x800007e4 addi    a5, a5, -1             #; a5  = 34, (wrb) a5  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4321        M 0x800007e8 addi    a4, a4, 1              #; a4  = 66, (wrb) a4  <-- 67
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4322        M 0x800007ec bnez    a5, pc - 32            #; a5  = 33, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4323        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 67, a2  = 0xcccccccd
       0     4326        M                                           #; (acc) a0  <-- 0x00355513
       0     4327        M 0x800007d0 srli    a0, a0, 3              #; a0  = 53, (wrb) a0  <-- 6
       0     4328        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4331        M                                           #; (acc) a0  <-- 0x40a70533
       0     4332        M 0x800007d8 sub     a0, a4, a0             #; a4  = 67, a0  = 60, (wrb) a0  <-- 7
       0     4334        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4335        M 0x800007e4 addi    a5, a5, -1             #; a5  = 33, (wrb) a5  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4336        M 0x800007e8 addi    a4, a4, 1              #; a4  = 67, (wrb) a4  <-- 68
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4337        M 0x800007ec bnez    a5, pc - 32            #; a5  = 32, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4338        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 68, a2  = 0xcccccccd
       0     4341        M                                           #; (acc) a0  <-- 0x00355513
       0     4342        M 0x800007d0 srli    a0, a0, 3              #; a0  = 54, (wrb) a0  <-- 6
       0     4343        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4346        M                                           #; (acc) a0  <-- 0x40a70533
       0     4347        M 0x800007d8 sub     a0, a4, a0             #; a4  = 68, a0  = 60, (wrb) a0  <-- 8
       0     4349        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4350        M 0x800007e4 addi    a5, a5, -1             #; a5  = 32, (wrb) a5  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4351        M 0x800007e8 addi    a4, a4, 1              #; a4  = 68, (wrb) a4  <-- 69
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4352        M 0x800007ec bnez    a5, pc - 32            #; a5  = 31, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4353        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 69, a2  = 0xcccccccd
       0     4356        M                                           #; (acc) a0  <-- 0x00355513
       0     4357        M 0x800007d0 srli    a0, a0, 3              #; a0  = 55, (wrb) a0  <-- 6
       0     4358        M 0x800007d4 mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4361        M                                           #; (acc) a0  <-- 0x40a70533
       0     4362        M 0x800007d8 sub     a0, a4, a0             #; a4  = 69, a0  = 60, (wrb) a0  <-- 9
       0     4364        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4365        M 0x800007e4 addi    a5, a5, -1             #; a5  = 31, (wrb) a5  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4366        M 0x800007e8 addi    a4, a4, 1              #; a4  = 69, (wrb) a4  <-- 70
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4367        M 0x800007ec bnez    a5, pc - 32            #; a5  = 30, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4368        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 70, a2  = 0xcccccccd
       0     4371        M                                           #; (acc) a0  <-- 0x00355513
       0     4372        M 0x800007d0 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4373        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4376        M                                           #; (acc) a0  <-- 0x40a70533
       0     4377        M 0x800007d8 sub     a0, a4, a0             #; a4  = 70, a0  = 70, (wrb) a0  <-- 0
       0     4379        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4380        M 0x800007e4 addi    a5, a5, -1             #; a5  = 30, (wrb) a5  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4381        M 0x800007e8 addi    a4, a4, 1              #; a4  = 70, (wrb) a4  <-- 71
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4382        M 0x800007ec bnez    a5, pc - 32            #; a5  = 29, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4383        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 71, a2  = 0xcccccccd
       0     4386        M                                           #; (acc) a0  <-- 0x00355513
       0     4387        M 0x800007d0 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4388        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4391        M                                           #; (acc) a0  <-- 0x40a70533
       0     4392        M 0x800007d8 sub     a0, a4, a0             #; a4  = 71, a0  = 70, (wrb) a0  <-- 1
       0     4394        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4395        M 0x800007e4 addi    a5, a5, -1             #; a5  = 29, (wrb) a5  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4396        M 0x800007e8 addi    a4, a4, 1              #; a4  = 71, (wrb) a4  <-- 72
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4397        M 0x800007ec bnez    a5, pc - 32            #; a5  = 28, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4398        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 72, a2  = 0xcccccccd
       0     4401        M                                           #; (acc) a0  <-- 0x00355513
       0     4402        M 0x800007d0 srli    a0, a0, 3              #; a0  = 57, (wrb) a0  <-- 7
       0     4403        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4406        M                                           #; (acc) a0  <-- 0x40a70533
       0     4407        M 0x800007d8 sub     a0, a4, a0             #; a4  = 72, a0  = 70, (wrb) a0  <-- 2
       0     4409        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4410        M 0x800007e4 addi    a5, a5, -1             #; a5  = 28, (wrb) a5  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4411        M 0x800007e8 addi    a4, a4, 1              #; a4  = 72, (wrb) a4  <-- 73
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4412        M 0x800007ec bnez    a5, pc - 32            #; a5  = 27, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4413        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 73, a2  = 0xcccccccd
       0     4416        M                                           #; (acc) a0  <-- 0x00355513
       0     4417        M 0x800007d0 srli    a0, a0, 3              #; a0  = 58, (wrb) a0  <-- 7
       0     4418        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4421        M                                           #; (acc) a0  <-- 0x40a70533
       0     4422        M 0x800007d8 sub     a0, a4, a0             #; a4  = 73, a0  = 70, (wrb) a0  <-- 3
       0     4424        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4425        M 0x800007e4 addi    a5, a5, -1             #; a5  = 27, (wrb) a5  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4426        M 0x800007e8 addi    a4, a4, 1              #; a4  = 73, (wrb) a4  <-- 74
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4427        M 0x800007ec bnez    a5, pc - 32            #; a5  = 26, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4428        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 74, a2  = 0xcccccccd
       0     4431        M                                           #; (acc) a0  <-- 0x00355513
       0     4432        M 0x800007d0 srli    a0, a0, 3              #; a0  = 59, (wrb) a0  <-- 7
       0     4433        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4436        M                                           #; (acc) a0  <-- 0x40a70533
       0     4437        M 0x800007d8 sub     a0, a4, a0             #; a4  = 74, a0  = 70, (wrb) a0  <-- 4
       0     4439        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4440        M 0x800007e4 addi    a5, a5, -1             #; a5  = 26, (wrb) a5  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4441        M 0x800007e8 addi    a4, a4, 1              #; a4  = 74, (wrb) a4  <-- 75
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4442        M 0x800007ec bnez    a5, pc - 32            #; a5  = 25, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4443        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 75, a2  = 0xcccccccd
       0     4446        M                                           #; (acc) a0  <-- 0x00355513
       0     4447        M 0x800007d0 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     4448        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4451        M                                           #; (acc) a0  <-- 0x40a70533
       0     4452        M 0x800007d8 sub     a0, a4, a0             #; a4  = 75, a0  = 70, (wrb) a0  <-- 5
       0     4454        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4455        M 0x800007e4 addi    a5, a5, -1             #; a5  = 25, (wrb) a5  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4456        M 0x800007e8 addi    a4, a4, 1              #; a4  = 75, (wrb) a4  <-- 76
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4457        M 0x800007ec bnez    a5, pc - 32            #; a5  = 24, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4458        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 76, a2  = 0xcccccccd
       0     4461        M                                           #; (acc) a0  <-- 0x00355513
       0     4462        M 0x800007d0 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     4463        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4466        M                                           #; (acc) a0  <-- 0x40a70533
       0     4467        M 0x800007d8 sub     a0, a4, a0             #; a4  = 76, a0  = 70, (wrb) a0  <-- 6
       0     4469        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4470        M 0x800007e4 addi    a5, a5, -1             #; a5  = 24, (wrb) a5  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4471        M 0x800007e8 addi    a4, a4, 1              #; a4  = 76, (wrb) a4  <-- 77
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4472        M 0x800007ec bnez    a5, pc - 32            #; a5  = 23, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4473        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 77, a2  = 0xcccccccd
       0     4476        M                                           #; (acc) a0  <-- 0x00355513
       0     4477        M 0x800007d0 srli    a0, a0, 3              #; a0  = 61, (wrb) a0  <-- 7
       0     4478        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4481        M                                           #; (acc) a0  <-- 0x40a70533
       0     4482        M 0x800007d8 sub     a0, a4, a0             #; a4  = 77, a0  = 70, (wrb) a0  <-- 7
       0     4484        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4485        M 0x800007e4 addi    a5, a5, -1             #; a5  = 23, (wrb) a5  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4486        M 0x800007e8 addi    a4, a4, 1              #; a4  = 77, (wrb) a4  <-- 78
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4487        M 0x800007ec bnez    a5, pc - 32            #; a5  = 22, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4488        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 78, a2  = 0xcccccccd
       0     4491        M                                           #; (acc) a0  <-- 0x00355513
       0     4492        M 0x800007d0 srli    a0, a0, 3              #; a0  = 62, (wrb) a0  <-- 7
       0     4493        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4496        M                                           #; (acc) a0  <-- 0x40a70533
       0     4497        M 0x800007d8 sub     a0, a4, a0             #; a4  = 78, a0  = 70, (wrb) a0  <-- 8
       0     4499        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4500        M 0x800007e4 addi    a5, a5, -1             #; a5  = 22, (wrb) a5  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4501        M 0x800007e8 addi    a4, a4, 1              #; a4  = 78, (wrb) a4  <-- 79
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4502        M 0x800007ec bnez    a5, pc - 32            #; a5  = 21, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4503        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 79, a2  = 0xcccccccd
       0     4506        M                                           #; (acc) a0  <-- 0x00355513
       0     4507        M 0x800007d0 srli    a0, a0, 3              #; a0  = 63, (wrb) a0  <-- 7
       0     4508        M 0x800007d4 mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4511        M                                           #; (acc) a0  <-- 0x40a70533
       0     4512        M 0x800007d8 sub     a0, a4, a0             #; a4  = 79, a0  = 70, (wrb) a0  <-- 9
       0     4514        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4515        M 0x800007e4 addi    a5, a5, -1             #; a5  = 21, (wrb) a5  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4516        M 0x800007e8 addi    a4, a4, 1              #; a4  = 79, (wrb) a4  <-- 80
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4517        M 0x800007ec bnez    a5, pc - 32            #; a5  = 20, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4518        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 80, a2  = 0xcccccccd
       0     4521        M                                           #; (acc) a0  <-- 0x00355513
       0     4522        M 0x800007d0 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     4523        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4526        M                                           #; (acc) a0  <-- 0x40a70533
       0     4527        M 0x800007d8 sub     a0, a4, a0             #; a4  = 80, a0  = 80, (wrb) a0  <-- 0
       0     4529        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4530        M 0x800007e4 addi    a5, a5, -1             #; a5  = 20, (wrb) a5  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4531        M 0x800007e8 addi    a4, a4, 1              #; a4  = 80, (wrb) a4  <-- 81
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4532        M 0x800007ec bnez    a5, pc - 32            #; a5  = 19, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4533        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 81, a2  = 0xcccccccd
       0     4536        M                                           #; (acc) a0  <-- 0x00355513
       0     4537        M 0x800007d0 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     4538        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4541        M                                           #; (acc) a0  <-- 0x40a70533
       0     4542        M 0x800007d8 sub     a0, a4, a0             #; a4  = 81, a0  = 80, (wrb) a0  <-- 1
       0     4544        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4545        M 0x800007e4 addi    a5, a5, -1             #; a5  = 19, (wrb) a5  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4546        M 0x800007e8 addi    a4, a4, 1              #; a4  = 81, (wrb) a4  <-- 82
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4547        M 0x800007ec bnez    a5, pc - 32            #; a5  = 18, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4548        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 82, a2  = 0xcccccccd
       0     4551        M                                           #; (acc) a0  <-- 0x00355513
       0     4552        M 0x800007d0 srli    a0, a0, 3              #; a0  = 65, (wrb) a0  <-- 8
       0     4553        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4556        M                                           #; (acc) a0  <-- 0x40a70533
       0     4557        M 0x800007d8 sub     a0, a4, a0             #; a4  = 82, a0  = 80, (wrb) a0  <-- 2
       0     4559        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4560        M 0x800007e4 addi    a5, a5, -1             #; a5  = 18, (wrb) a5  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4561        M 0x800007e8 addi    a4, a4, 1              #; a4  = 82, (wrb) a4  <-- 83
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4562        M 0x800007ec bnez    a5, pc - 32            #; a5  = 17, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4563        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 83, a2  = 0xcccccccd
       0     4566        M                                           #; (acc) a0  <-- 0x00355513
       0     4567        M 0x800007d0 srli    a0, a0, 3              #; a0  = 66, (wrb) a0  <-- 8
       0     4568        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4571        M                                           #; (acc) a0  <-- 0x40a70533
       0     4572        M 0x800007d8 sub     a0, a4, a0             #; a4  = 83, a0  = 80, (wrb) a0  <-- 3
       0     4574        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4575        M 0x800007e4 addi    a5, a5, -1             #; a5  = 17, (wrb) a5  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4576        M 0x800007e8 addi    a4, a4, 1              #; a4  = 83, (wrb) a4  <-- 84
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4577        M 0x800007ec bnez    a5, pc - 32            #; a5  = 16, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4578        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 84, a2  = 0xcccccccd
       0     4581        M                                           #; (acc) a0  <-- 0x00355513
       0     4582        M 0x800007d0 srli    a0, a0, 3              #; a0  = 67, (wrb) a0  <-- 8
       0     4583        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4586        M                                           #; (acc) a0  <-- 0x40a70533
       0     4587        M 0x800007d8 sub     a0, a4, a0             #; a4  = 84, a0  = 80, (wrb) a0  <-- 4
       0     4589        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4590        M 0x800007e4 addi    a5, a5, -1             #; a5  = 16, (wrb) a5  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4591        M 0x800007e8 addi    a4, a4, 1              #; a4  = 84, (wrb) a4  <-- 85
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4592        M 0x800007ec bnez    a5, pc - 32            #; a5  = 15, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4593        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 85, a2  = 0xcccccccd
       0     4596        M                                           #; (acc) a0  <-- 0x00355513
       0     4597        M 0x800007d0 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     4598        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4601        M                                           #; (acc) a0  <-- 0x40a70533
       0     4602        M 0x800007d8 sub     a0, a4, a0             #; a4  = 85, a0  = 80, (wrb) a0  <-- 5
       0     4604        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4605        M 0x800007e4 addi    a5, a5, -1             #; a5  = 15, (wrb) a5  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4606        M 0x800007e8 addi    a4, a4, 1              #; a4  = 85, (wrb) a4  <-- 86
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4607        M 0x800007ec bnez    a5, pc - 32            #; a5  = 14, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4608        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 86, a2  = 0xcccccccd
       0     4611        M                                           #; (acc) a0  <-- 0x00355513
       0     4612        M 0x800007d0 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     4613        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4616        M                                           #; (acc) a0  <-- 0x40a70533
       0     4617        M 0x800007d8 sub     a0, a4, a0             #; a4  = 86, a0  = 80, (wrb) a0  <-- 6
       0     4619        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4620        M 0x800007e4 addi    a5, a5, -1             #; a5  = 14, (wrb) a5  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4621        M 0x800007e8 addi    a4, a4, 1              #; a4  = 86, (wrb) a4  <-- 87
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4622        M 0x800007ec bnez    a5, pc - 32            #; a5  = 13, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4623        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 87, a2  = 0xcccccccd
       0     4626        M                                           #; (acc) a0  <-- 0x00355513
       0     4627        M 0x800007d0 srli    a0, a0, 3              #; a0  = 69, (wrb) a0  <-- 8
       0     4628        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4631        M                                           #; (acc) a0  <-- 0x40a70533
       0     4632        M 0x800007d8 sub     a0, a4, a0             #; a4  = 87, a0  = 80, (wrb) a0  <-- 7
       0     4634        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4635        M 0x800007e4 addi    a5, a5, -1             #; a5  = 13, (wrb) a5  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4636        M 0x800007e8 addi    a4, a4, 1              #; a4  = 87, (wrb) a4  <-- 88
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4637        M 0x800007ec bnez    a5, pc - 32            #; a5  = 12, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4638        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 88, a2  = 0xcccccccd
       0     4641        M                                           #; (acc) a0  <-- 0x00355513
       0     4642        M 0x800007d0 srli    a0, a0, 3              #; a0  = 70, (wrb) a0  <-- 8
       0     4643        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4646        M                                           #; (acc) a0  <-- 0x40a70533
       0     4647        M 0x800007d8 sub     a0, a4, a0             #; a4  = 88, a0  = 80, (wrb) a0  <-- 8
       0     4649        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4650        M 0x800007e4 addi    a5, a5, -1             #; a5  = 12, (wrb) a5  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4651        M 0x800007e8 addi    a4, a4, 1              #; a4  = 88, (wrb) a4  <-- 89
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4652        M 0x800007ec bnez    a5, pc - 32            #; a5  = 11, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4653        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 89, a2  = 0xcccccccd
       0     4656        M                                           #; (acc) a0  <-- 0x00355513
       0     4657        M 0x800007d0 srli    a0, a0, 3              #; a0  = 71, (wrb) a0  <-- 8
       0     4658        M 0x800007d4 mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4661        M                                           #; (acc) a0  <-- 0x40a70533
       0     4662        M 0x800007d8 sub     a0, a4, a0             #; a4  = 89, a0  = 80, (wrb) a0  <-- 9
       0     4664        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4665        M 0x800007e4 addi    a5, a5, -1             #; a5  = 11, (wrb) a5  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4666        M 0x800007e8 addi    a4, a4, 1              #; a4  = 89, (wrb) a4  <-- 90
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4667        M 0x800007ec bnez    a5, pc - 32            #; a5  = 10, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4668        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 90, a2  = 0xcccccccd
       0     4671        M                                           #; (acc) a0  <-- 0x00355513
       0     4672        M 0x800007d0 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     4673        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4676        M                                           #; (acc) a0  <-- 0x40a70533
       0     4677        M 0x800007d8 sub     a0, a4, a0             #; a4  = 90, a0  = 90, (wrb) a0  <-- 0
       0     4679        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4680        M 0x800007e4 addi    a5, a5, -1             #; a5  = 10, (wrb) a5  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4681        M 0x800007e8 addi    a4, a4, 1              #; a4  = 90, (wrb) a4  <-- 91
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4682        M 0x800007ec bnez    a5, pc - 32            #; a5  = 9, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4683        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 91, a2  = 0xcccccccd
       0     4686        M                                           #; (acc) a0  <-- 0x00355513
       0     4687        M 0x800007d0 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     4688        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4691        M                                           #; (acc) a0  <-- 0x40a70533
       0     4692        M 0x800007d8 sub     a0, a4, a0             #; a4  = 91, a0  = 90, (wrb) a0  <-- 1
       0     4694        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4695        M 0x800007e4 addi    a5, a5, -1             #; a5  = 9, (wrb) a5  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4696        M 0x800007e8 addi    a4, a4, 1              #; a4  = 91, (wrb) a4  <-- 92
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4697        M 0x800007ec bnez    a5, pc - 32            #; a5  = 8, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4698        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 92, a2  = 0xcccccccd
       0     4701        M                                           #; (acc) a0  <-- 0x00355513
       0     4702        M 0x800007d0 srli    a0, a0, 3              #; a0  = 73, (wrb) a0  <-- 9
       0     4703        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4706        M                                           #; (acc) a0  <-- 0x40a70533
       0     4707        M 0x800007d8 sub     a0, a4, a0             #; a4  = 92, a0  = 90, (wrb) a0  <-- 2
       0     4709        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4710        M 0x800007e4 addi    a5, a5, -1             #; a5  = 8, (wrb) a5  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4711        M 0x800007e8 addi    a4, a4, 1              #; a4  = 92, (wrb) a4  <-- 93
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4712        M 0x800007ec bnez    a5, pc - 32            #; a5  = 7, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4713        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 93, a2  = 0xcccccccd
       0     4716        M                                           #; (acc) a0  <-- 0x00355513
       0     4717        M 0x800007d0 srli    a0, a0, 3              #; a0  = 74, (wrb) a0  <-- 9
       0     4718        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4721        M                                           #; (acc) a0  <-- 0x40a70533
       0     4722        M 0x800007d8 sub     a0, a4, a0             #; a4  = 93, a0  = 90, (wrb) a0  <-- 3
       0     4724        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4725        M 0x800007e4 addi    a5, a5, -1             #; a5  = 7, (wrb) a5  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4726        M 0x800007e8 addi    a4, a4, 1              #; a4  = 93, (wrb) a4  <-- 94
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4727        M 0x800007ec bnez    a5, pc - 32            #; a5  = 6, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4728        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 94, a2  = 0xcccccccd
       0     4731        M                                           #; (acc) a0  <-- 0x00355513
       0     4732        M 0x800007d0 srli    a0, a0, 3              #; a0  = 75, (wrb) a0  <-- 9
       0     4733        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4736        M                                           #; (acc) a0  <-- 0x40a70533
       0     4737        M 0x800007d8 sub     a0, a4, a0             #; a4  = 94, a0  = 90, (wrb) a0  <-- 4
       0     4739        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4740        M 0x800007e4 addi    a5, a5, -1             #; a5  = 6, (wrb) a5  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4741        M 0x800007e8 addi    a4, a4, 1              #; a4  = 94, (wrb) a4  <-- 95
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4742        M 0x800007ec bnez    a5, pc - 32            #; a5  = 5, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4743        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 95, a2  = 0xcccccccd
       0     4746        M                                           #; (acc) a0  <-- 0x00355513
       0     4747        M 0x800007d0 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     4748        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4751        M                                           #; (acc) a0  <-- 0x40a70533
       0     4752        M 0x800007d8 sub     a0, a4, a0             #; a4  = 95, a0  = 90, (wrb) a0  <-- 5
       0     4754        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4755        M 0x800007e4 addi    a5, a5, -1             #; a5  = 5, (wrb) a5  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4756        M 0x800007e8 addi    a4, a4, 1              #; a4  = 95, (wrb) a4  <-- 96
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4757        M 0x800007ec bnez    a5, pc - 32            #; a5  = 4, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4758        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 96, a2  = 0xcccccccd
       0     4761        M                                           #; (acc) a0  <-- 0x00355513
       0     4762        M 0x800007d0 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     4763        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4766        M                                           #; (acc) a0  <-- 0x40a70533
       0     4767        M 0x800007d8 sub     a0, a4, a0             #; a4  = 96, a0  = 90, (wrb) a0  <-- 6
       0     4769        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4770        M 0x800007e4 addi    a5, a5, -1             #; a5  = 4, (wrb) a5  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4771        M 0x800007e8 addi    a4, a4, 1              #; a4  = 96, (wrb) a4  <-- 97
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4772        M 0x800007ec bnez    a5, pc - 32            #; a5  = 3, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4773        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 97, a2  = 0xcccccccd
       0     4776        M                                           #; (acc) a0  <-- 0x00355513
       0     4777        M 0x800007d0 srli    a0, a0, 3              #; a0  = 77, (wrb) a0  <-- 9
       0     4778        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4781        M                                           #; (acc) a0  <-- 0x40a70533
       0     4782        M 0x800007d8 sub     a0, a4, a0             #; a4  = 97, a0  = 90, (wrb) a0  <-- 7
       0     4784        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4785        M 0x800007e4 addi    a5, a5, -1             #; a5  = 3, (wrb) a5  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4786        M 0x800007e8 addi    a4, a4, 1              #; a4  = 97, (wrb) a4  <-- 98
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4787        M 0x800007ec bnez    a5, pc - 32            #; a5  = 2, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4788        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 98, a2  = 0xcccccccd
       0     4791        M                                           #; (acc) a0  <-- 0x00355513
       0     4792        M 0x800007d0 srli    a0, a0, 3              #; a0  = 78, (wrb) a0  <-- 9
       0     4793        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4796        M                                           #; (acc) a0  <-- 0x40a70533
       0     4797        M 0x800007d8 sub     a0, a4, a0             #; a4  = 98, a0  = 90, (wrb) a0  <-- 8
       0     4799        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4800        M 0x800007e4 addi    a5, a5, -1             #; a5  = 2, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4801        M 0x800007e8 addi    a4, a4, 1              #; a4  = 98, (wrb) a4  <-- 99
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4802        M 0x800007ec bnez    a5, pc - 32            #; a5  = 1, taken, goto 0x800007cc
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4803        M 0x800007cc mulhu   a0, a4, a2             #; a4  = 99, a2  = 0xcccccccd
       0     4806        M                                           #; (acc) a0  <-- 0x00355513
       0     4807        M 0x800007d0 srli    a0, a0, 3              #; a0  = 79, (wrb) a0  <-- 9
       0     4808        M 0x800007d4 mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4811        M                                           #; (acc) a0  <-- 0x40a70533
       0     4812        M 0x800007d8 sub     a0, a4, a0             #; a4  = 99, a0  = 90, (wrb) a0  <-- 9
       0     4814        M 0x800007dc fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4815        M 0x800007e4 addi    a5, a5, -1             #; a5  = 1, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4816        M 0x800007e8 addi    a4, a4, 1              #; a4  = 99, (wrb) a4  <-- 100
                         M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4817        M 0x800007ec bnez    a5, pc - 32            #; a5  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4830        M 0x800007f4 j       pc + 0x44              #; goto 0x80000838
                         M 0x800007f0 csrrci  a0, ssr, 1             #; 
       0     4841        M 0x80000838 and     a0, a6, a7             #; a6  = 1, a7  = 1, (wrb) a0  <-- 1
       0     4842        M 0x8000083c csrr    a2, mcycle             #; mcycle = 4841, (wrb) a2  <-- 4841
       0     4853        M 0x80000840 beqz    a0, pc + 104           #; a0  = 1, not taken
       0     4854        M 0x80000844 li      a0, 8                  #; (wrb) a0  <-- 8
       0     4855        M 0x80000848 li      a1, 99                 #; (wrb) a1  <-- 99
       0     4856        M 0x8000084c li      a3, 64                 #; (wrb) a3  <-- 64
       0     4865        M 0x80000850 li      a4, 192                #; (wrb) a4  <-- 192
       0     4866        M 0x80000854 scfgw   a1, a3                 #; a1  = 99, a3  = 64
       0     4867        M 0x80000858 scfgw   a0, a4                 #; a0  = 8, a4  = 192
       0     4868        M 0x8000085c li      a3, 32                 #; (wrb) a3  <-- 32
       0     4877        M 0x80000860 scfgw   zero, a3               #; a3  = 32
       0     4878        M 0x80000864 scfgwi  t0, 768                #; t0  = 0x00100000
       0     4879        M 0x80000868 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4880        M 0x8000086c addi    a4, a3, 64             #; a3  = 1, (wrb) a4  <-- 65
       0     4889        M 0x80000870 addi    a5, a3, 192            #; a3  = 1, (wrb) a5  <-- 193
       0     4890        M 0x80000874 scfgw   a1, a4                 #; a1  = 99, a4  = 65
       0     4891        M 0x80000878 scfgw   a0, a5                 #; a0  = 8, a5  = 193
       0     4892        M 0x8000087c addi    a0, a3, 32             #; a3  = 1, (wrb) a0  <-- 33
       0     4901        M 0x80000880 scfgw   zero, a0               #; a0  = 33
       0     4902        M 0x80000884 scfgwi  t1, 769                #; t1  = 0x00100320
       0     4904        M                                           #; (acc) s0  <-- 0xd2000453
                         M 0x80000888 csrrsi  a0, ssr, 1             #; 
       0     4905        M 0x8000088c fcvt.d.w fs0, zero             #; ac1  = 0
       0     4906        M                                           #; (f:fpu) fs0  <-- 0.0
       0     4913        M 0x80000890 li      a0, 100                #; (wrb) a0  <-- 100
       0     4914        M 0x80000894 addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
       0     4916        M 0x8000089c bnez    a0, pc - 8             #; a0  = 99, taken, goto 0x80000894
       0     4917        M 0x80000894 addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 0.0
       0     4919        M 0x8000089c bnez    a0, pc - 8             #; a0  = 98, taken, goto 0x80000894
       0     4920        M 0x80000894 addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     4921        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 0.0
       0     4922        M 0x8000089c bnez    a0, pc - 8             #; a0  = 97, taken, goto 0x80000894
       0     4923        M 0x80000894 addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
       0     4924        M                                           #; (f:fpu) fs0  <-- 1.0
       0     4925        M 0x8000089c bnez    a0, pc - 8             #; a0  = 96, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1.0
       0     4926        M 0x80000894 addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
       0     4928        M 0x8000089c bnez    a0, pc - 8             #; a0  = 95, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 5.0
       0     4929        M 0x80000894 addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 5.0
       0     4931        M 0x8000089c bnez    a0, pc - 8             #; a0  = 94, taken, goto 0x80000894
       0     4932        M 0x80000894 addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                         M                                           #; (f:fpu) fs0  <-- 14.0
       0     4933        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 14.0
       0     4934        M 0x8000089c bnez    a0, pc - 8             #; a0  = 93, taken, goto 0x80000894
       0     4935        M 0x80000894 addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
       0     4936        M                                           #; (f:fpu) fs0  <-- 30.0
       0     4937        M 0x8000089c bnez    a0, pc - 8             #; a0  = 92, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 30.0
       0     4938        M 0x80000894 addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
       0     4940        M 0x8000089c bnez    a0, pc - 8             #; a0  = 91, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 55.0
       0     4941        M 0x80000894 addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 55.0
       0     4943        M 0x8000089c bnez    a0, pc - 8             #; a0  = 90, taken, goto 0x80000894
       0     4944        M 0x80000894 addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                         M                                           #; (f:fpu) fs0  <-- 91.0
       0     4945        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 91.0
       0     4946        M 0x8000089c bnez    a0, pc - 8             #; a0  = 89, taken, goto 0x80000894
       0     4947        M 0x80000894 addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
       0     4948        M                                           #; (f:fpu) fs0  <-- 140.0
       0     4949        M 0x8000089c bnez    a0, pc - 8             #; a0  = 88, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 140.0
       0     4950        M 0x80000894 addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
       0     4952        M 0x8000089c bnez    a0, pc - 8             #; a0  = 87, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 204.0
       0     4953        M 0x80000894 addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 204.0
       0     4955        M 0x8000089c bnez    a0, pc - 8             #; a0  = 86, taken, goto 0x80000894
       0     4956        M 0x80000894 addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                         M                                           #; (f:fpu) fs0  <-- 285.0
       0     4957        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 285.0
       0     4958        M 0x8000089c bnez    a0, pc - 8             #; a0  = 85, taken, goto 0x80000894
       0     4959        M 0x80000894 addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
       0     4960        M                                           #; (f:fpu) fs0  <-- 285.0
       0     4961        M 0x8000089c bnez    a0, pc - 8             #; a0  = 84, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 285.0
       0     4962        M 0x80000894 addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
       0     4964        M 0x8000089c bnez    a0, pc - 8             #; a0  = 83, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 286.0
       0     4965        M 0x80000894 addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 286.0
       0     4967        M 0x8000089c bnez    a0, pc - 8             #; a0  = 82, taken, goto 0x80000894
       0     4968        M 0x80000894 addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                         M                                           #; (f:fpu) fs0  <-- 290.0
       0     4969        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 290.0
       0     4970        M 0x8000089c bnez    a0, pc - 8             #; a0  = 81, taken, goto 0x80000894
       0     4971        M 0x80000894 addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
       0     4972        M                                           #; (f:fpu) fs0  <-- 299.0
       0     4973        M 0x8000089c bnez    a0, pc - 8             #; a0  = 80, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 299.0
       0     4974        M 0x80000894 addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
       0     4976        M 0x8000089c bnez    a0, pc - 8             #; a0  = 79, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 315.0
       0     4977        M 0x80000894 addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 315.0
       0     4979        M 0x8000089c bnez    a0, pc - 8             #; a0  = 78, taken, goto 0x80000894
       0     4980        M 0x80000894 addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                         M                                           #; (f:fpu) fs0  <-- 340.0
       0     4981        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 340.0
       0     4982        M 0x8000089c bnez    a0, pc - 8             #; a0  = 77, taken, goto 0x80000894
       0     4983        M 0x80000894 addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
       0     4984        M                                           #; (f:fpu) fs0  <-- 376.0
       0     4985        M 0x8000089c bnez    a0, pc - 8             #; a0  = 76, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 376.0
       0     4986        M 0x80000894 addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
       0     4988        M 0x8000089c bnez    a0, pc - 8             #; a0  = 75, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 425.0
       0     4989        M 0x80000894 addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 425.0
       0     4991        M 0x8000089c bnez    a0, pc - 8             #; a0  = 74, taken, goto 0x80000894
       0     4992        M 0x80000894 addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                         M                                           #; (f:fpu) fs0  <-- 489.0
       0     4993        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 489.0
       0     4994        M 0x8000089c bnez    a0, pc - 8             #; a0  = 73, taken, goto 0x80000894
       0     4995        M 0x80000894 addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
       0     4996        M                                           #; (f:fpu) fs0  <-- 570.0
       0     4997        M 0x8000089c bnez    a0, pc - 8             #; a0  = 72, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 570.0
       0     4998        M 0x80000894 addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
       0     5000        M 0x8000089c bnez    a0, pc - 8             #; a0  = 71, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 570.0
       0     5001        M 0x80000894 addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 570.0
       0     5003        M 0x8000089c bnez    a0, pc - 8             #; a0  = 70, taken, goto 0x80000894
       0     5004        M 0x80000894 addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                         M                                           #; (f:fpu) fs0  <-- 571.0
       0     5005        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 571.0
       0     5006        M 0x8000089c bnez    a0, pc - 8             #; a0  = 69, taken, goto 0x80000894
       0     5007        M 0x80000894 addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
       0     5008        M                                           #; (f:fpu) fs0  <-- 575.0
       0     5009        M 0x8000089c bnez    a0, pc - 8             #; a0  = 68, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 575.0
       0     5010        M 0x80000894 addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
       0     5012        M 0x8000089c bnez    a0, pc - 8             #; a0  = 67, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 584.0
       0     5013        M 0x80000894 addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 584.0
       0     5015        M 0x8000089c bnez    a0, pc - 8             #; a0  = 66, taken, goto 0x80000894
       0     5016        M 0x80000894 addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                         M                                           #; (f:fpu) fs0  <-- 600.0
       0     5017        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 600.0
       0     5018        M 0x8000089c bnez    a0, pc - 8             #; a0  = 65, taken, goto 0x80000894
       0     5019        M 0x80000894 addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
       0     5020        M                                           #; (f:fpu) fs0  <-- 625.0
       0     5021        M 0x8000089c bnez    a0, pc - 8             #; a0  = 64, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 625.0
       0     5022        M 0x80000894 addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
       0     5024        M 0x8000089c bnez    a0, pc - 8             #; a0  = 63, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 661.0
       0     5025        M 0x80000894 addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 661.0
       0     5027        M 0x8000089c bnez    a0, pc - 8             #; a0  = 62, taken, goto 0x80000894
       0     5028        M 0x80000894 addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                         M                                           #; (f:fpu) fs0  <-- 710.0
       0     5029        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 710.0
       0     5030        M 0x8000089c bnez    a0, pc - 8             #; a0  = 61, taken, goto 0x80000894
       0     5031        M 0x80000894 addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
       0     5032        M                                           #; (f:fpu) fs0  <-- 774.0
       0     5033        M 0x8000089c bnez    a0, pc - 8             #; a0  = 60, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 774.0
       0     5034        M 0x80000894 addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
       0     5036        M 0x8000089c bnez    a0, pc - 8             #; a0  = 59, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 855.0
       0     5037        M 0x80000894 addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 855.0
       0     5039        M 0x8000089c bnez    a0, pc - 8             #; a0  = 58, taken, goto 0x80000894
       0     5040        M 0x80000894 addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                         M                                           #; (f:fpu) fs0  <-- 855.0
       0     5041        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 855.0
       0     5042        M 0x8000089c bnez    a0, pc - 8             #; a0  = 57, taken, goto 0x80000894
       0     5043        M 0x80000894 addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
       0     5044        M                                           #; (f:fpu) fs0  <-- 856.0
       0     5045        M 0x8000089c bnez    a0, pc - 8             #; a0  = 56, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 856.0
       0     5046        M 0x80000894 addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
       0     5048        M 0x8000089c bnez    a0, pc - 8             #; a0  = 55, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 860.0
       0     5049        M 0x80000894 addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 860.0
       0     5051        M 0x8000089c bnez    a0, pc - 8             #; a0  = 54, taken, goto 0x80000894
       0     5052        M 0x80000894 addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                         M                                           #; (f:fpu) fs0  <-- 869.0
       0     5053        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 869.0
       0     5054        M 0x8000089c bnez    a0, pc - 8             #; a0  = 53, taken, goto 0x80000894
       0     5055        M 0x80000894 addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
       0     5056        M                                           #; (f:fpu) fs0  <-- 885.0
       0     5057        M 0x8000089c bnez    a0, pc - 8             #; a0  = 52, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 885.0
       0     5058        M 0x80000894 addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
       0     5060        M 0x8000089c bnez    a0, pc - 8             #; a0  = 51, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 910.0
       0     5061        M 0x80000894 addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 910.0
       0     5063        M 0x8000089c bnez    a0, pc - 8             #; a0  = 50, taken, goto 0x80000894
       0     5064        M 0x80000894 addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                         M                                           #; (f:fpu) fs0  <-- 946.0
       0     5065        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 946.0
       0     5066        M 0x8000089c bnez    a0, pc - 8             #; a0  = 49, taken, goto 0x80000894
       0     5067        M 0x80000894 addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
       0     5068        M                                           #; (f:fpu) fs0  <-- 995.0
       0     5069        M 0x8000089c bnez    a0, pc - 8             #; a0  = 48, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 995.0
       0     5070        M 0x80000894 addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
       0     5072        M 0x8000089c bnez    a0, pc - 8             #; a0  = 47, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1059.0
       0     5073        M 0x80000894 addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1059.0
       0     5075        M 0x8000089c bnez    a0, pc - 8             #; a0  = 46, taken, goto 0x80000894
       0     5076        M 0x80000894 addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                         M                                           #; (f:fpu) fs0  <-- 1140.0
       0     5077        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1140.0
       0     5078        M 0x8000089c bnez    a0, pc - 8             #; a0  = 45, taken, goto 0x80000894
       0     5079        M 0x80000894 addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
       0     5080        M                                           #; (f:fpu) fs0  <-- 1140.0
       0     5081        M 0x8000089c bnez    a0, pc - 8             #; a0  = 44, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1140.0
       0     5082        M 0x80000894 addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
       0     5084        M 0x8000089c bnez    a0, pc - 8             #; a0  = 43, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1141.0
       0     5085        M 0x80000894 addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1141.0
       0     5087        M 0x8000089c bnez    a0, pc - 8             #; a0  = 42, taken, goto 0x80000894
       0     5088        M 0x80000894 addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                         M                                           #; (f:fpu) fs0  <-- 1145.0
       0     5089        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1145.0
       0     5090        M 0x8000089c bnez    a0, pc - 8             #; a0  = 41, taken, goto 0x80000894
       0     5091        M 0x80000894 addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
       0     5092        M                                           #; (f:fpu) fs0  <-- 1154.0
       0     5093        M 0x8000089c bnez    a0, pc - 8             #; a0  = 40, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1154.0
       0     5094        M 0x80000894 addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
       0     5096        M 0x8000089c bnez    a0, pc - 8             #; a0  = 39, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1170.0
       0     5097        M 0x80000894 addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1170.0
       0     5099        M 0x8000089c bnez    a0, pc - 8             #; a0  = 38, taken, goto 0x80000894
       0     5100        M 0x80000894 addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                         M                                           #; (f:fpu) fs0  <-- 1195.0
       0     5101        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1195.0
       0     5102        M 0x8000089c bnez    a0, pc - 8             #; a0  = 37, taken, goto 0x80000894
       0     5103        M 0x80000894 addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
       0     5104        M                                           #; (f:fpu) fs0  <-- 1231.0
       0     5105        M 0x8000089c bnez    a0, pc - 8             #; a0  = 36, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1231.0
       0     5106        M 0x80000894 addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
       0     5108        M 0x8000089c bnez    a0, pc - 8             #; a0  = 35, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1280.0
       0     5109        M 0x80000894 addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1280.0
       0     5111        M 0x8000089c bnez    a0, pc - 8             #; a0  = 34, taken, goto 0x80000894
       0     5112        M 0x80000894 addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                         M                                           #; (f:fpu) fs0  <-- 1344.0
       0     5113        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1344.0
       0     5114        M 0x8000089c bnez    a0, pc - 8             #; a0  = 33, taken, goto 0x80000894
       0     5115        M 0x80000894 addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
       0     5116        M                                           #; (f:fpu) fs0  <-- 1425.0
       0     5117        M 0x8000089c bnez    a0, pc - 8             #; a0  = 32, taken, goto 0x80000894
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1425.0
       0     5118        M 0x80000894 addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
       0     5120        M 0x8000089c bnez    a0, pc - 8             #; a0  = 31, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1425.0
       0     5121        M 0x80000894 addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1425.0
       0     5124        M 0x8000089c bnez    a0, pc - 8             #; a0  = 30, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1426.0
       0     5125        M 0x80000894 addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1426.0
       0     5128        M 0x8000089c bnez    a0, pc - 8             #; a0  = 29, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1430.0
       0     5129        M 0x80000894 addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1430.0
       0     5132        M 0x8000089c bnez    a0, pc - 8             #; a0  = 28, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1439.0
       0     5133        M 0x80000894 addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1439.0
       0     5136        M 0x8000089c bnez    a0, pc - 8             #; a0  = 27, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1455.0
       0     5137        M 0x80000894 addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1455.0
       0     5140        M 0x8000089c bnez    a0, pc - 8             #; a0  = 26, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1480.0
       0     5141        M 0x80000894 addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1480.0
       0     5144        M 0x8000089c bnez    a0, pc - 8             #; a0  = 25, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1516.0
       0     5145        M 0x80000894 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1516.0
       0     5148        M 0x8000089c bnez    a0, pc - 8             #; a0  = 24, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1565.0
       0     5149        M 0x80000894 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1565.0
       0     5152        M 0x8000089c bnez    a0, pc - 8             #; a0  = 23, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1629.0
       0     5153        M 0x80000894 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1629.0
       0     5156        M 0x8000089c bnez    a0, pc - 8             #; a0  = 22, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1710.0
       0     5157        M 0x80000894 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1710.0
       0     5160        M 0x8000089c bnez    a0, pc - 8             #; a0  = 21, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1710.0
       0     5161        M 0x80000894 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1710.0
       0     5164        M 0x8000089c bnez    a0, pc - 8             #; a0  = 20, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1711.0
       0     5165        M 0x80000894 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1711.0
       0     5168        M 0x8000089c bnez    a0, pc - 8             #; a0  = 19, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1715.0
       0     5169        M 0x80000894 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1715.0
       0     5172        M 0x8000089c bnez    a0, pc - 8             #; a0  = 18, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1724.0
       0     5173        M 0x80000894 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1724.0
       0     5176        M 0x8000089c bnez    a0, pc - 8             #; a0  = 17, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1740.0
       0     5177        M 0x80000894 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1740.0
       0     5180        M 0x8000089c bnez    a0, pc - 8             #; a0  = 16, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1765.0
       0     5181        M 0x80000894 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1765.0
       0     5184        M 0x8000089c bnez    a0, pc - 8             #; a0  = 15, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1801.0
       0     5185        M 0x80000894 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1801.0
       0     5188        M 0x8000089c bnez    a0, pc - 8             #; a0  = 14, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1850.0
       0     5189        M 0x80000894 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1850.0
       0     5192        M 0x8000089c bnez    a0, pc - 8             #; a0  = 13, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1914.0
       0     5193        M 0x80000894 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1914.0
       0     5196        M 0x8000089c bnez    a0, pc - 8             #; a0  = 12, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1995.0
       0     5197        M 0x80000894 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1995.0
       0     5200        M 0x8000089c bnez    a0, pc - 8             #; a0  = 11, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1995.0
       0     5201        M 0x80000894 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1995.0
       0     5204        M 0x8000089c bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 1996.0
       0     5205        M 0x80000894 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1996.0
       0     5208        M 0x8000089c bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2000.0
       0     5209        M 0x80000894 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2000.0
       0     5212        M 0x8000089c bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2009.0
       0     5213        M 0x80000894 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2009.0
       0     5216        M 0x8000089c bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2025.0
       0     5217        M 0x80000894 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2025.0
       0     5220        M 0x8000089c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2050.0
       0     5221        M 0x80000894 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2050.0
       0     5224        M 0x8000089c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2086.0
       0     5225        M 0x80000894 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2086.0
       0     5228        M 0x8000089c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2135.0
       0     5229        M 0x80000894 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2135.0
       0     5232        M 0x8000089c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2199.0
       0     5233        M 0x80000894 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2199.0
       0     5236        M 0x8000089c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2280.0
       0     5237        M 0x80000894 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2280.0
       0     5240        M 0x8000089c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000894
                         M                                           #; (f:fpu) fs0  <-- 2280.0
       0     5241        M 0x80000894 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2280.0
       0     5244        M 0x8000089c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) fs0  <-- 2281.0
       0     5245        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2281.0
       0     5248        M                                           #; (f:fpu) fs0  <-- 2285.0
       0     5249        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2285.0
       0     5252        M                                           #; (f:fpu) fs0  <-- 2294.0
       0     5253        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2294.0
       0     5256        M                                           #; (f:fpu) fs0  <-- 2310.0
       0     5257        M 0x800008a4 j       pc + 0x2c              #; goto 0x800008d0
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2310.0
       0     5260        M                                           #; (f:fpu) fs0  <-- 2335.0
       0     5261        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2335.0
       0     5264        M                                           #; (f:fpu) fs0  <-- 2371.0
       0     5265        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2371.0
       0     5268        M 0x800008d0 csrr    a0, mcycle             #; mcycle = 5267, (wrb) a0  <-- 5267
                         M                                           #; (f:fpu) fs0  <-- 2420.0
       0     5269        M 0x800008d4 sub     a1, a0, a2             #; a0  = 5267, a2  = 4841, (wrb) a1  <-- 426
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2420.0
       0     5270        M 0x800008d8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d8
       0     5271        M 0x800008dc addi    a0, a0, 937            #; a0  = 0x800028d8, (wrb) a0  <-- 0x80002c81
       0     5272        M                                           #; (f:fpu) fs0  <-- 2484.0
       0     5273        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2484.0
       0     5276        M                                           #; (f:fpu) fs0  <-- 2565.0
       0     5277        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2565.0
       0     5280        M 0x800008e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008e0
                         M                                           #; (f:fpu) fs0  <-- 2565.0
       0     5281        M 0x800008e4 jalr    ra, ra, 88             #; ra  = 0x800008e0, (wrb) ra  <-- 0x800008e8, goto 0x80000938
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2565.0
       0     5284        M                                           #; (f:fpu) fs0  <-- 2566.0
       0     5285        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2566.0
       0     5288        M                                           #; (f:fpu) fs0  <-- 2570.0
       0     5289        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2570.0
       0     5292        M                                           #; (f:fpu) fs0  <-- 2579.0
       0     5293        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2579.0
       0     5294        M 0x80000938 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5295        M 0x8000093c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008e8 ~~> Word[0x0011ff1c]
       0     5296        M                                           #; (f:fpu) fs0  <-- 2595.0
       0     5297        M 0x80000940 mv      t0, a0                 #; a0  = 0x80002c81, (wrb) t0  <-- 0x80002c81
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2595.0
       0     5298        M 0x80000944 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     5299        M 0x80000948 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     5300        M 0x8000094c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
                         M                                           #; (f:fpu) fs0  <-- 2620.0
       0     5301        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2620.0
       0     5304        M                                           #; (f:fpu) fs0  <-- 2656.0
       0     5305        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2656.0
       0     5308        M                                           #; (f:fpu) fs0  <-- 2705.0
       0     5309        M 0x80000950 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
                         M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2705.0
       0     5310        M 0x80000954 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff2c]
       0     5311        M 0x80000958 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 4841 ~~> Word[0x0011ff28]
       0     5312        M 0x8000095c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 426 ~~> Word[0x0011ff24]
                         M                                           #; (f:fpu) fs0  <-- 2769.0
       0     5313        M 0x80000898 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2769.0
       0     5314        M 0x800008a0 csrrci  a0, ssr, 1             #; 
       0     5316        M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5321        M 0x80000960 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5322        M 0x80000964 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5323        M 0x80000968 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001968
       0     5324        M 0x8000096c addi    a0, a0, -988           #; a0  = 0x80001968, (wrb) a0  <-- 0x8000158c
       0     5333        M 0x80000970 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5334        M 0x80000974 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5335        M 0x80000978 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5336        M 0x8000097c mv      a3, t0                 #; t0  = 0x80002c81, (wrb) a3  <-- 0x80002c81
       0     5345        M 0x80000980 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000980
       0     5346        M 0x80000984 jalr    ra, ra, 20             #; ra  = 0x80000980, (wrb) ra  <-- 0x80000988, goto 0x80000994
       0     5357        M 0x80000994 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5358        M 0x80000998 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000988 ~~> Word[0x0011ff0c]
       0     5359        M 0x8000099c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     5369        M 0x800009a0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     5370        M 0x800009a4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     5371        M 0x800009a8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5372        M 0x800009ac sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5381        M 0x800009b0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5382        M 0x800009b4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5383        M 0x800009b8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5384        M 0x800009bc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5393        M 0x800009c0 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5394        M 0x800009c4 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5395        M 0x800009c8 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5396        M 0x800009cc mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5405        M 0x800009d0 mv      s0, a3                 #; a3  = 0x80002c81, (wrb) s0  <-- 0x80002c81
       0     5406        M 0x800009d4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5407        M 0x800009d8 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5408        M 0x800009dc beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5417        M 0x800009e0 mv      s2, a0                 #; a0  = 0x8000158c, (wrb) s2  <-- 0x8000158c
       0     5418        M 0x800009e4 j       pc + 0xc               #; goto 0x800009f0
       0     5429        M 0x800009f0 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5430        M 0x800009f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5431        M 0x800009f8 li      s11, 16                #; (wrb) s11 <-- 16
       0     5432        M 0x800009fc li      s7, 46                 #; (wrb) s7  <-- 46
       0     5441        M 0x80000a00 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5442        M 0x80000a04 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5443        M 0x80000a08 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5444        M 0x80000a0c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5453        M 0x80000a10 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5454        M 0x80000a14 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5455        M 0x80000a18 addi    s10, s0, 2             #; s0  = 0x80002c81, (wrb) s10 <-- 0x80002c83
       0     5456        M 0x80000a1c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5465        M 0x80000a20 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5466        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c81, a0  <~~ Byte[0x80002c81]
       0     5477        M                                           #; (lsu) a0  <-- 99
       0     5478        M 0x80000a28 beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5479        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5480        M 0x80000a30 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5481        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5482        M 0x80000a38 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5483        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5492        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     5515        M 0x8000158c beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5527        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5528        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5529        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5530        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     5539        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     5540        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5541        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5552        M                                           #; (lsu) a4  <-- 0
       0     5553        M 0x800015ac addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5554        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 1 ~~> Word[0x80002fd4]
       0     5555        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 0, (wrb) a4  <-- 0x80002fd4
       0     5556        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd4, 99 ~~> Byte[0x8000301c]
       0     5557        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5578        M                                           #; (lsu) a4  <-- 1
       0     5579        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5580        M 0x800015c4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5581        M 0x800015c8 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5582        M 0x800015cc snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5583        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5584        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     5606        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     5620        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c81, (wrb) s0  <-- 0x80002c82
       0     5621        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c83, (wrb) s10 <-- 0x80002c84
       0     5622        M 0x80000a4c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5623        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c82, a0  <~~ Byte[0x80002c82]
       0     5634        M                                           #; (lsu) a0  <-- 121
       0     5635        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a2c
       0     5636        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     5639        M 0x80000a30 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5640        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5641        M 0x80000a38 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5642        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5643        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     5646        M 0x8000158c beqz    a0, pc + 168           #; a0  = 121, not taken
       0     5649        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5650        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5651        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5652        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     5653        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     5654        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5655        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5656        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5667        M                                           #; (lsu) a4  <-- 1
       0     5668        M 0x800015ac addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5669        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 2 ~~> Word[0x80002fd4]
       0     5670        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 1, (wrb) a4  <-- 0x80002fd5
       0     5671        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd5, 121 ~~> Byte[0x8000301d]
       0     5672        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5693        M                                           #; (lsu) a4  <-- 2
       0     5694        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5695        M 0x800015c4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5696        M 0x800015c8 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     5697        M 0x800015cc snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     5698        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5699        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     5703        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     5708        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c82, (wrb) s0  <-- 0x80002c83
       0     5709        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c84, (wrb) s10 <-- 0x80002c85
       0     5710        M 0x80000a4c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5711        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c83, a0  <~~ Byte[0x80002c83]
       0     5722        M                                           #; (lsu) a0  <-- 99
       0     5723        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a2c
       0     5724        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5727        M 0x80000a30 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5728        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5729        M 0x80000a38 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5730        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5731        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     5734        M 0x8000158c beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5737        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5738        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5739        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5740        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     5741        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     5742        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5743        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5744        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5755        M                                           #; (lsu) a4  <-- 2
       0     5756        M 0x800015ac addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5757        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 3 ~~> Word[0x80002fd4]
       0     5758        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 2, (wrb) a4  <-- 0x80002fd6
       0     5759        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd6, 99 ~~> Byte[0x8000301e]
       0     5760        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5781        M                                           #; (lsu) a4  <-- 3
       0     5782        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5783        M 0x800015c4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5784        M 0x800015c8 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5785        M 0x800015cc snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5786        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5787        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     5791        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     5796        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c83, (wrb) s0  <-- 0x80002c84
       0     5797        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c85, (wrb) s10 <-- 0x80002c86
       0     5798        M 0x80000a4c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5799        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c84, a0  <~~ Byte[0x80002c84]
       0     5810        M                                           #; (lsu) a0  <-- 108
       0     5811        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a2c
       0     5812        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     5815        M 0x80000a30 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5816        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5817        M 0x80000a38 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5818        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5819        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     5822        M 0x8000158c beqz    a0, pc + 168           #; a0  = 108, not taken
       0     5825        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5826        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5827        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5828        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     5829        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     5830        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5831        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5832        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5843        M                                           #; (lsu) a4  <-- 3
       0     5844        M 0x800015ac addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5845        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 4 ~~> Word[0x80002fd4]
       0     5846        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 3, (wrb) a4  <-- 0x80002fd7
       0     5847        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd7, 108 ~~> Byte[0x8000301f]
       0     5848        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5869        M                                           #; (lsu) a4  <-- 4
       0     5870        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5871        M 0x800015c4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5872        M 0x800015c8 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     5873        M 0x800015cc snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     5874        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5875        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     5879        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     5884        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c84, (wrb) s0  <-- 0x80002c85
       0     5885        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c86, (wrb) s10 <-- 0x80002c87
       0     5886        M 0x80000a4c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5887        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c85, a0  <~~ Byte[0x80002c85]
       0     5898        M                                           #; (lsu) a0  <-- 101
       0     5899        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a2c
       0     5900        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5903        M 0x80000a30 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5904        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5905        M 0x80000a38 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5906        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5907        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     5910        M 0x8000158c beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5913        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5914        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5915        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5916        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     5917        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     5918        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5919        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5920        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5931        M                                           #; (lsu) a4  <-- 4
       0     5932        M 0x800015ac addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5933        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 5 ~~> Word[0x80002fd4]
       0     5934        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 4, (wrb) a4  <-- 0x80002fd8
       0     5935        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd8, 101 ~~> Byte[0x80003020]
       0     5936        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5957        M                                           #; (lsu) a4  <-- 5
       0     5958        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5959        M 0x800015c4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5960        M 0x800015c8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5961        M 0x800015cc snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5962        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5963        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     5967        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     5972        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c85, (wrb) s0  <-- 0x80002c86
       0     5973        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c87, (wrb) s10 <-- 0x80002c88
       0     5974        M 0x80000a4c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5975        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c86, a0  <~~ Byte[0x80002c86]
       0     5986        M                                           #; (lsu) a0  <-- 115
       0     5987        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a2c
       0     5988        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     5991        M 0x80000a30 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5992        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5993        M 0x80000a38 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5994        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5995        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     5998        M 0x8000158c beqz    a0, pc + 168           #; a0  = 115, not taken
       0     6001        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6002        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6003        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6004        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     6005        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     6006        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6007        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6008        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6019        M                                           #; (lsu) a4  <-- 5
       0     6020        M 0x800015ac addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6021        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 6 ~~> Word[0x80002fd4]
       0     6022        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 5, (wrb) a4  <-- 0x80002fd9
       0     6023        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd9, 115 ~~> Byte[0x80003021]
       0     6024        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6045        M                                           #; (lsu) a4  <-- 6
       0     6046        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6047        M 0x800015c4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6048        M 0x800015c8 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     6049        M 0x800015cc snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     6050        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6051        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     6055        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     6060        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c86, (wrb) s0  <-- 0x80002c87
       0     6061        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c88, (wrb) s10 <-- 0x80002c89
       0     6062        M 0x80000a4c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6063        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c87, a0  <~~ Byte[0x80002c87]
       0     6074        M                                           #; (lsu) a0  <-- 32
       0     6075        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a2c
       0     6076        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6079        M 0x80000a30 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6080        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6081        M 0x80000a38 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6082        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6083        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     6086        M 0x8000158c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6089        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6090        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6091        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6092        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     6093        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     6094        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6095        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6096        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6107        M                                           #; (lsu) a4  <-- 6
       0     6108        M 0x800015ac addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6109        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 7 ~~> Word[0x80002fd4]
       0     6110        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 6, (wrb) a4  <-- 0x80002fda
       0     6111        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fda, 32 ~~> Byte[0x80003022]
       0     6112        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6133        M                                           #; (lsu) a4  <-- 7
       0     6134        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6135        M 0x800015c4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6136        M 0x800015c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6137        M 0x800015cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6138        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6139        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     6143        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     6148        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c87, (wrb) s0  <-- 0x80002c88
       0     6149        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c89, (wrb) s10 <-- 0x80002c8a
       0     6150        M 0x80000a4c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6151        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c88, a0  <~~ Byte[0x80002c88]
       0     6162        M                                           #; (lsu) a0  <-- 61
       0     6163        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a2c
       0     6164        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6167        M 0x80000a30 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6168        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6169        M 0x80000a38 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6170        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6171        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     6174        M 0x8000158c beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6177        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6178        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6179        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6180        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     6181        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     6182        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6183        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6184        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6195        M                                           #; (lsu) a4  <-- 7
       0     6196        M 0x800015ac addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6197        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 8 ~~> Word[0x80002fd4]
       0     6198        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 7, (wrb) a4  <-- 0x80002fdb
       0     6199        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdb, 61 ~~> Byte[0x80003023]
       0     6200        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6221        M                                           #; (lsu) a4  <-- 8
       0     6222        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6223        M 0x800015c4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6224        M 0x800015c8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6225        M 0x800015cc snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6226        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6227        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     6231        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     6236        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c88, (wrb) s0  <-- 0x80002c89
       0     6237        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c8a, (wrb) s10 <-- 0x80002c8b
       0     6238        M 0x80000a4c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6239        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c89, a0  <~~ Byte[0x80002c89]
       0     6250        M                                           #; (lsu) a0  <-- 32
       0     6251        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a2c
       0     6252        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6255        M 0x80000a30 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6256        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6257        M 0x80000a38 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6258        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6259        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     6262        M 0x8000158c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6265        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6266        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6267        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6268        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     6269        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     6270        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6271        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6272        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6283        M                                           #; (lsu) a4  <-- 8
       0     6284        M 0x800015ac addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6285        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 9 ~~> Word[0x80002fd4]
       0     6286        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 8, (wrb) a4  <-- 0x80002fdc
       0     6287        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdc, 32 ~~> Byte[0x80003024]
       0     6288        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6309        M                                           #; (lsu) a4  <-- 9
       0     6310        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6311        M 0x800015c4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6312        M 0x800015c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6313        M 0x800015cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6314        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6315        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     6319        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     6324        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c89, (wrb) s0  <-- 0x80002c8a
       0     6325        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c8b, (wrb) s10 <-- 0x80002c8c
       0     6326        M 0x80000a4c mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6327        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c8a, a0  <~~ Byte[0x80002c8a]
       0     6338        M                                           #; (lsu) a0  <-- 37
       0     6339        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a2c
       0     6340        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a5c
       0     6341        M 0x80000a5c li      s0, 0                  #; (wrb) s0  <-- 0
       0     6354        M 0x80000a60 j       pc + 0x10              #; goto 0x80000a70
       0     6366        M 0x80000a70 lbu     a0, -1(s10)            #; s10 = 0x80002c8c, a0  <~~ Byte[0x80002c8b]
       0     6377        M                                           #; (lsu) a0  <-- 108
       0     6378        M 0x80000a74 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
       0     6379        M 0x80000a78 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000ab0
       0     6391        M 0x80000ab0 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
       0     6392        M 0x80000ab4 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
       0     6393        M 0x80000ab8 addi    a1, s10, -1            #; s10 = 0x80002c8c, (wrb) a1  <-- 0x80002c8b
       0     6394        M 0x80000abc li      a3, 9                  #; (wrb) a3  <-- 9
       0     6403        M 0x80000ac0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000b3c
       0     6426        M 0x80000b3c li      a2, 42                 #; (wrb) a2  <-- 42
       0     6438        M 0x80000b40 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000b90
       0     6461        M 0x80000b90 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6462        M 0x80000b94 mv      s10, a1                #; a1  = 0x80002c8b, (wrb) s10 <-- 0x80002c8b
       0     6463        M 0x80000b98 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
       0     6464        M 0x80000b9c li      s7, 0                  #; (wrb) s7  <-- 0
       0     6484        M 0x80000ba0 j       pc + 0xc               #; goto 0x80000bac
       0     6485        M 0x80000bac addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
       0     6497        M 0x80000bb0 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
       0     6498        M 0x80000bb4 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
       0     6499        M 0x80000bb8 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
       0     6500        M 0x80000bbc li      a2, 9                  #; (wrb) a2  <-- 9
       0     6509        M 0x80000bc0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
       0     6510        M 0x80000bc4 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
       0     6511        M 0x80000bc8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bc8
       0     6512        M 0x80000bcc addi    a2, a2, 272            #; a2  = 0x80002bc8, (wrb) a2  <-- 0x80002cd8
       0     6521        M 0x80000bd0 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002cd8, (wrb) a1  <-- 0x80002ce0
       0     6522        M 0x80000bd4 lw      a3, 0(a1)              #; a1  = 0x80002ce0, a3  <~~ Word[0x80002ce0]
       0     6523        M 0x80000bd8 li      a1, 1                  #; (wrb) a1  <-- 1
       0     6524        M 0x80000bdc li      a2, 256                #; (wrb) a2  <-- 256
       0     6533        M                                           #; (lsu) a3  <-- 0x80000c04
       0     6534        M 0x80000be0 jr      a3                     #; a3  = 0x80000c04, goto 0x80000c04
       0     6556        M 0x80000c04 lbu     a0, 1(s10)             #; s10 = 0x80002c8b, a0  <~~ Byte[0x80002c8c]
       0     6557        M 0x80000c08 li      a1, 108                #; (wrb) a1  <-- 108
       0     6567        M                                           #; (lsu) a0  <-- 117
       0     6568        M 0x80000c0c bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000d1c
       0     6580        M 0x80000d1c ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
       0     6592        M 0x80000d20 addi    s10, s10, 1            #; s10 = 0x80002c8b, (wrb) s10 <-- 0x80002c8c
       0     6593        M 0x80000d24 j       pc - 0x100             #; goto 0x80000c24
       0     6604        M 0x80000c24 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
       0     6605        M 0x80000c28 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6606        M 0x80000c2c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
       0     6616        M 0x80000c30 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
       0     6617        M 0x80000c34 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c34
       0     6618        M 0x80000c38 addi    a2, a2, 204            #; a2  = 0x80002c34, (wrb) a2  <-- 0x80002d00
       0     6619        M 0x80000c3c add     a1, a1, a2             #; a1  = 320, a2  = 0x80002d00, (wrb) a1  <-- 0x80002e40
       0     6628        M 0x80000c40 lw      a2, 0(a1)              #; a1  = 0x80002e40, a2  <~~ Word[0x80002e40]
       0     6629        M 0x80000c44 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6630        M 0x80000c48 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6639        M                                           #; (lsu) a2  <-- 0x80000c50
       0     6640        M 0x80000c4c jr      a2                     #; a2  = 0x80000c50
       0     6641        M 0x80000c50 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
       0     6642        M 0x80000c54 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6643        M 0x80000c58 li      a1, 88                 #; (wrb) a1  <-- 88
       0     6644        M 0x80000c5c bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000c64
       0     6653        M 0x80000c64 li      a1, 100                #; (wrb) a1  <-- 100
       0     6654        M 0x80000c68 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
       0     6655        M 0x80000c6c mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
       0     6665        M 0x80000c70 li      a2, 105                #; (wrb) a2  <-- 105
       0     6666        M 0x80000c74 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
       0     6667        M 0x80000c78 j       pc + 0xd8              #; goto 0x80000d50
       0     6677        M 0x80000d50 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
       0     6678        M 0x80000d54 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
       0     6679        M 0x80000d58 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
       0     6680        M 0x80000d5c beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000d64
       0     6689        M 0x80000d64 li      a1, 105                #; (wrb) a1  <-- 105
       0     6690        M 0x80000d68 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
       0     6691        M 0x80000d6c li      a1, 100                #; (wrb) a1  <-- 100
       0     6701        M 0x80000d70 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000ea8
       0     6724        M 0x80000ea8 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
       0     6725        M 0x80000eac bnez    a0, pc + 196           #; a0  = 0, not taken
       0     6736        M 0x80000eb0 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
       0     6737        M 0x80000eb4 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x80001330
       0     6759        M 0x80001330 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
       0     6762        M                                           #; (lsu) a0  <-- 426
       0     6763        M 0x80001334 bnez    a0, pc + 8             #; a0  = 426, taken, goto 0x8000133c
       0     6764        M 0x8000133c seqz    a1, a0                 #; a0  = 426, (wrb) a1  <-- 0
       0     6771        M 0x80001340 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
       0     6772        M 0x80001344 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
       0     6773        M 0x80001348 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     6774        M 0x8000134c li      a5, 0                  #; (wrb) a5  <-- 0
       0     6783        M 0x80001350 bnez    a1, pc + 248           #; a1  = 0, not taken
       0     6784        M 0x80001354 li      a2, 0                  #; (wrb) a2  <-- 0
       0     6785        M 0x80001358 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
       0     6786        M 0x8000135c xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
       0     6795        M 0x80001360 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
       0     6796        M 0x80001364 j       pc + 0x34              #; goto 0x80001398
       0     6807        M 0x80001398 divu    a3, a0, s8             #; a0  = 426, s8  = 10
       0     6816        M                                           #; (acc) a4  <-- 0x03868733
       0     6817        M 0x8000139c mul     a4, a3, s8             #; a3  = 42, s8  = 10
       0     6820        M                                           #; (acc) a4  <-- 0x40e50733
       0     6821        M 0x800013a0 sub     a4, a0, a4             #; a0  = 426, a4  = 420, (wrb) a4  <-- 6
       0     6822        M 0x800013a4 andi    s1, a4, 254            #; a4  = 6, (wrb) s1  <-- 6
       0     6823        M 0x800013a8 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6824        M 0x800013ac li      a1, 10                 #; (wrb) a1  <-- 10
       0     6831        M 0x800013b0 bltu    s1, a1, pc - 72        #; s1  = 6, a1  = 10, taken, goto 0x80001368
       0     6832        M 0x80001368 add     a4, a5, a4             #; a5  = 48, a4  = 6, (wrb) a4  <-- 54
       0     6833        M 0x8000136c addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
       0     6844        M 0x80001370 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6845        M 0x80001374 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
       0     6846        M 0x80001378 sltu    a0, a0, s8             #; a0  = 426, s8  = 10, (wrb) a0  <-- 0
       0     6847        M 0x8000137c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6856        M 0x80001380 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
       0     6857        M 0x80001384 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     6858        M 0x80001388 sb      a4, 0(s1)              #; s1  = 0x0011febc, 54 ~~> Byte[0x0011febc]
       0     6859        M 0x8000138c mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
       0     6860        M 0x80001390 mv      a0, a3                 #; a3  = 42, (wrb) a0  <-- 42
       0     6861        M 0x80001394 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     6862        M 0x80001398 divu    a3, a0, s8             #; a0  = 42, s8  = 10
       0     6868        M                                           #; (acc) a4  <-- 0x03868733
       0     6869        M 0x8000139c mul     a4, a3, s8             #; a3  = 4, s8  = 10
       0     6872        M                                           #; (acc) a4  <-- 0x40e50733
       0     6873        M 0x800013a0 sub     a4, a0, a4             #; a0  = 42, a4  = 40, (wrb) a4  <-- 2
       0     6874        M 0x800013a4 andi    s1, a4, 254            #; a4  = 2, (wrb) s1  <-- 2
       0     6875        M 0x800013a8 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6876        M 0x800013ac li      a1, 10                 #; (wrb) a1  <-- 10
       0     6877        M 0x800013b0 bltu    s1, a1, pc - 72        #; s1  = 2, a1  = 10, taken, goto 0x80001368
       0     6878        M 0x80001368 add     a4, a5, a4             #; a5  = 48, a4  = 2, (wrb) a4  <-- 50
       0     6879        M 0x8000136c addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
       0     6880        M 0x80001370 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6881        M 0x80001374 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
       0     6882        M 0x80001378 sltu    a0, a0, s8             #; a0  = 42, s8  = 10, (wrb) a0  <-- 0
       0     6883        M 0x8000137c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6884        M 0x80001380 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
       0     6885        M 0x80001384 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     6886        M 0x80001388 sb      a4, 0(s1)              #; s1  = 0x0011febd, 50 ~~> Byte[0x0011febd]
       0     6887        M 0x8000138c mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
       0     6888        M 0x80001390 mv      a0, a3                 #; a3  = 4, (wrb) a0  <-- 4
       0     6889        M 0x80001394 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     6890        M 0x80001398 divu    a3, a0, s8             #; a0  = 4, s8  = 10
       0     6893        M                                           #; (acc) a4  <-- 0x03868733
       0     6894        M 0x8000139c mul     a4, a3, s8             #; a3  = 0, s8  = 10
       0     6897        M                                           #; (acc) a4  <-- 0x40e50733
       0     6898        M 0x800013a0 sub     a4, a0, a4             #; a0  = 4, a4  = 0, (wrb) a4  <-- 4
       0     6899        M 0x800013a4 andi    s1, a4, 254            #; a4  = 4, (wrb) s1  <-- 4
       0     6900        M 0x800013a8 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6901        M 0x800013ac li      a1, 10                 #; (wrb) a1  <-- 10
       0     6902        M 0x800013b0 bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x80001368
       0     6903        M 0x80001368 add     a4, a5, a4             #; a5  = 48, a4  = 4, (wrb) a4  <-- 52
       0     6904        M 0x8000136c addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
       0     6905        M 0x80001370 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6906        M 0x80001374 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 2, (wrb) s1  <-- 0x0011febe
       0     6907        M 0x80001378 sltu    a0, a0, s8             #; a0  = 4, s8  = 10, (wrb) a0  <-- 1
       0     6908        M 0x8000137c xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
       0     6909        M 0x80001380 sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
       0     6910        M 0x80001384 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
       0     6911        M 0x80001388 sb      a4, 0(s1)              #; s1  = 0x0011febe, 52 ~~> Byte[0x0011febe]
       0     6912        M 0x8000138c mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
       0     6913        M 0x80001390 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
       0     6914        M 0x80001394 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x80001448
       0     6926        M 0x80001448 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
       0     6927        M 0x8000144c addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
       0     6938        M 0x80001450 mv      a0, s2                 #; s2  = 0x8000158c, (wrb) a0  <-- 0x8000158c
       0     6939        M 0x80001454 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6940        M 0x80001458 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     6941        M 0x8000145c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6950        M 0x80001460 li      a6, 0                  #; (wrb) a6  <-- 0
       0     6951        M 0x80001464 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
       0     6952        M 0x80001468 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
       0     6953        M 0x8000146c mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
       0     6962        M 0x80001470 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
       0     6963        M 0x80001474 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002474
       0     6964        M 0x80001478 jalr    ra, ra, -620           #; ra  = 0x80002474, (wrb) ra  <-- 0x8000147c, goto 0x80002208
       0     6985        M 0x80002208 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
       0     6986        M 0x8000220c sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x8000147c ~~> Word[0x0011fe9c]
       0     6997        M 0x80002210 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
       0     6998        M 0x80002214 sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febe ~~> Word[0x0011fe94]
       0     6999        M 0x80002218 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x8000158c ~~> Word[0x0011fe90]
       0     7000        M 0x8000221c sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
       0     7009        M 0x80002220 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
       0     7010        M 0x80002224 sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
       0     7011        M 0x80002228 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
       0     7012        M 0x8000222c sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
       0     7021        M 0x80002230 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
       0     7022        M 0x80002234 sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
       0     7023        M 0x80002238 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002c8c ~~> Word[0x0011fe70]
       0     7024        M 0x8000223c sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
       0     7033        M 0x80002240 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
       0     7034        M 0x80002244 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
       0     7035        M 0x80002248 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
       0     7036        M 0x8000224c mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
       0     7045        M 0x80002250 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
       0     7046        M 0x80002254 mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
       0     7047        M 0x80002258 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     7048        M 0x8000225c mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     7057        M 0x80002260 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     7058        M 0x80002264 mv      s11, a0                #; a0  = 0x8000158c, (wrb) s11 <-- 0x8000158c
       0     7059        M 0x80002268 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
       0     7060        M 0x8000226c bnez    s5, pc + 220           #; s5  = 0, not taken
       0     7069        M 0x80002270 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
       0     7070        M 0x80002274 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002290
       0     7092        M 0x80002290 li      s2, 0                  #; (wrb) s2  <-- 0
       0     7093        M 0x80002294 sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
       0     7094        M 0x80002298 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
       0     7095        M 0x8000229c li      a0, 31                 #; (wrb) a0  <-- 31
       0     7104        M 0x800022a0 sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
       0     7105        M 0x800022a4 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
       0     7106        M 0x800022a8 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x800022f0
       0     7127        M 0x800022f0 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x80002348
       0     7150        M 0x80002348 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
       0     7151        M 0x8000234c beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x80002430
       0     7173        M 0x80002430 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7174        M 0x80002434 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
       0     7175        M 0x80002438 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x8000244c
       0     7185        M 0x8000244c andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
       0     7197        M 0x80002450 bnez    a0, pc + 28            #; a0  = 0, not taken
       0     7198        M 0x80002454 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
       0     7199        M 0x80002458 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x8000247c
       0     7220        M 0x8000247c andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
       0     7232        M 0x80002480 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7233        M 0x80002484 sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
       0     7234        M 0x80002488 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7235        M 0x8000248c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7244        M 0x80002490 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7245        M 0x80002494 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800024c0
       0     7267        M 0x800024c0 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
       0     7268        M 0x800024c4 beqz    s8, pc + 60            #; s8  = 3, not taken
       0     7269        M 0x800024c8 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
       0     7272        M                                           #; (lsu) a0  <-- 0x0011febc
       0     7273        M 0x800024cc addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
       0     7279        M 0x800024d0 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 3, (wrb) a0  <-- 0x0011febe
       0     7280        M 0x800024d4 lbu     a0, 0(a0)              #; a0  = 0x0011febe, a0  <~~ Byte[0x0011febe]
       0     7281        M 0x800024d8 addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
       0     7282        M 0x800024dc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7283        M                                           #; (lsu) a0  <-- 52
       0     7291        M 0x800024e0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7292        M 0x800024e4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7293        M 0x800024e8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7294        M 0x800024ec jalr    s11                    #; s11 = 0x8000158c, (wrb) ra  <-- 0x800024f0, goto 0x8000158c
       0     7305        M 0x8000158c beqz    a0, pc + 168           #; a0  = 52, not taken
       0     7308        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7309        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7310        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7311        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     7312        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     7313        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7314        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7315        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7326        M                                           #; (lsu) a4  <-- 9
       0     7327        M 0x800015ac addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7328        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 10 ~~> Word[0x80002fd4]
       0     7329        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 9, (wrb) a4  <-- 0x80002fdd
       0     7330        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdd, 52 ~~> Byte[0x80003025]
       0     7331        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7352        M                                           #; (lsu) a4  <-- 10
       0     7353        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7354        M 0x800015c4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7355        M 0x800015c8 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
       0     7356        M 0x800015cc snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
       0     7357        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7358        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     7362        M 0x80001634 ret                            #; ra  = 0x800024f0, goto 0x800024f0
       0     7367        M 0x800024f0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7368        M 0x800024f4 mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
       0     7369        M 0x800024f8 bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x800024d0
       0     7370        M 0x800024d0 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
       0     7371        M 0x800024d4 lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
       0     7372        M 0x800024d8 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
       0     7373        M 0x800024dc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7374        M 0x800024e0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7375        M 0x800024e4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7376        M 0x800024e8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7377        M 0x800024ec jalr    s11                    #; s11 = 0x8000158c, (wrb) ra  <-- 0x800024f0, goto 0x8000158c
       0     7378        M                                           #; (lsu) a0  <-- 50
       0     7380        M 0x8000158c beqz    a0, pc + 168           #; a0  = 50, not taken
       0     7383        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7384        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7385        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7386        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     7387        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     7388        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7389        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7390        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7401        M                                           #; (lsu) a4  <-- 10
       0     7402        M 0x800015ac addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7403        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 11 ~~> Word[0x80002fd4]
       0     7404        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 10, (wrb) a4  <-- 0x80002fde
       0     7405        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fde, 50 ~~> Byte[0x80003026]
       0     7406        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7427        M                                           #; (lsu) a4  <-- 11
       0     7428        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7429        M 0x800015c4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7430        M 0x800015c8 addi    a0, a0, -10            #; a0  = 50, (wrb) a0  <-- 40
       0     7431        M 0x800015cc snez    a0, a0                 #; a0  = 40, (wrb) a0  <-- 1
       0     7432        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7433        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     7437        M 0x80001634 ret                            #; ra  = 0x800024f0, goto 0x800024f0
       0     7442        M 0x800024f0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7443        M 0x800024f4 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
       0     7444        M 0x800024f8 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x800024d0
       0     7445        M 0x800024d0 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
       0     7446        M 0x800024d4 lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
       0     7447        M 0x800024d8 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
       0     7448        M 0x800024dc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7449        M 0x800024e0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7450        M 0x800024e4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7451        M 0x800024e8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7452        M 0x800024ec jalr    s11                    #; s11 = 0x8000158c, (wrb) ra  <-- 0x800024f0, goto 0x8000158c
       0     7453        M                                           #; (lsu) a0  <-- 54
       0     7455        M 0x8000158c beqz    a0, pc + 168           #; a0  = 54, not taken
       0     7458        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7459        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7460        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7461        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     7462        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     7463        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7464        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7465        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7476        M                                           #; (lsu) a4  <-- 11
       0     7477        M 0x800015ac addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7478        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 12 ~~> Word[0x80002fd4]
       0     7479        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 11, (wrb) a4  <-- 0x80002fdf
       0     7480        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdf, 54 ~~> Byte[0x80003027]
       0     7481        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7502        M                                           #; (lsu) a4  <-- 12
       0     7503        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7504        M 0x800015c4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7505        M 0x800015c8 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
       0     7506        M 0x800015cc snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
       0     7507        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7508        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     7512        M 0x80001634 ret                            #; ra  = 0x800024f0, goto 0x800024f0
       0     7517        M 0x800024f0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7518        M 0x800024f4 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
       0     7519        M 0x800024f8 bnez    s9, pc - 40            #; s9  = 0, not taken
       0     7520        M 0x800024fc j       pc + 0x8               #; goto 0x80002504
       0     7532        M 0x80002504 sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
       0     7533        M 0x80002508 sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
       0     7534        M 0x8000250c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7544        M 0x80002510 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7545        M 0x80002514 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7546        M 0x80002518 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002548
       0     7567        M 0x80002548 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7568        M 0x8000254c mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
       0     7579        M 0x80002550 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
       0     7582        M                                           #; (lsu) s11 <-- 16
       0     7583        M 0x80002554 lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
       0     7586        M                                           #; (lsu) s10 <-- 0x80002c8c
       0     7587        M 0x80002558 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
       0     7590        M                                           #; (lsu) s9  <-- 9
       0     7591        M 0x8000255c lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
       0     7594        M                                           #; (lsu) s8  <-- 10
       0     7595        M 0x80002560 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
       0     7598        M                                           #; (lsu) s7  <-- 0
       0     7599        M 0x80002564 lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
       0     7602        M                                           #; (lsu) s6  <-- 0
       0     7603        M 0x80002568 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
       0     7606        M                                           #; (lsu) s5  <-- -1
       0     7607        M 0x8000256c lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
       0     7610        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7611        M 0x80002570 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
       0     7614        M                                           #; (lsu) s3  <-- 0x0011ff28
       0     7615        M 0x80002574 lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
       0     7618        M                                           #; (lsu) s2  <-- 0x8000158c
       0     7619        M 0x80002578 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
       0     7622        M                                           #; (lsu) s1  <-- 0x0011febe
       0     7623        M 0x8000257c lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
       0     7626        M                                           #; (lsu) s0  <-- 256
       0     7627        M 0x80002580 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
       0     7628        M 0x80002584 addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
       0     7630        M                                           #; (lsu) ra  <-- 0x8000147c
       0     7631        M 0x80002588 ret                            #; ra  = 0x8000147c, goto 0x8000147c
       0     7647        M 0x8000147c mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
       0     7659        M 0x80001480 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7660        M 0x80001484 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7661        M 0x80001488 addi    s0, s10, 1             #; s10 = 0x80002c8c, (wrb) s0  <-- 0x80002c8d
       0     7662        M 0x8000148c j       pc - 0xa74             #; goto 0x80000a18
       0     7663        M 0x80000a18 addi    s10, s0, 2             #; s0  = 0x80002c8d, (wrb) s10 <-- 0x80002c8f
       0     7664        M 0x80000a1c mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
       0     7666        M 0x80000a20 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7667        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c8d, a0  <~~ Byte[0x80002c8d]
       0     7678        M                                           #; (lsu) a0  <-- 10
       0     7679        M 0x80000a28 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7680        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7681        M 0x80000a30 addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
       0     7682        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7683        M 0x80000a38 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
       0     7684        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7685        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     7699        M 0x8000158c beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7711        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7712        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7713        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7714        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     7715        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     7716        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7717        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7718        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7729        M                                           #; (lsu) a4  <-- 12
       0     7730        M 0x800015ac addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7731        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 13 ~~> Word[0x80002fd4]
       0     7732        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 12, (wrb) a4  <-- 0x80002fe0
       0     7733        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fe0, 10 ~~> Byte[0x80003028]
       0     7734        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7755        M                                           #; (lsu) a4  <-- 13
       0     7756        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7757        M 0x800015c4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7758        M 0x800015c8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7759        M 0x800015cc snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7760        M 0x800015d0 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7761        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7762        M 0x800015d8 add     a0, a3, a2             #; a3  = 0x80002fd4, a2  = 0, (wrb) a0  <-- 0x80002fd4
       0     7763        M 0x800015dc addi    a2, a0, 72             #; a0  = 0x80002fd4, (wrb) a2  <-- 0x8000301c
       0     7764        M 0x800015e0 sw      zero, 12(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe0]
       0     7765        M 0x800015e4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     7766        M 0x800015e8 sw      a3, 8(a0)              #; a0  = 0x80002fd4, 64 ~~> Word[0x80002fdc]
       0     7767        M 0x800015ec sw      zero, 20(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe8]
       0     7776        M 0x800015f0 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7777        M 0x800015f4 sw      a3, 16(a0)             #; a0  = 0x80002fd4, 1 ~~> Word[0x80002fe4]
       0     7778        M 0x800015f8 sw      zero, 28(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff0]
       0     7780        M 0x800015fc sw      a2, 24(a0)             #; a0  = 0x80002fd4, 0x8000301c ~~> Word[0x80002fec]
       0     7790        M 0x80001600 lw      a2, 0(a1)              #; a1  = 0x80002fd4, a2  <~~ Word[0x80002fd4]
       0     7791        M 0x80001604 addi    a3, a0, 8              #; a0  = 0x80002fd4, (wrb) a3  <-- 0x80002fdc
       0     7792        M 0x80001608 sw      zero, 36(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff8]
       0     7812        M                                           #; (lsu) a2  <-- 13
       0     7813        M 0x8000160c sw      a2, 32(a0)             #; a0  = 0x80002fd4, 13 ~~> Word[0x80002ff4]
       0     7814        M 0x80001610 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003610
       0     7815        M 0x80001614 addi    a0, a0, -1872          #; a0  = 0x80003610, (wrb) a0  <-- 0x80002ec0
       0     7816        M 0x80001618 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80002fdc ~~> Word[0x80002ec0]
       0     7817        M 0x8000161c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000361c
       0     7826        M 0x80001620 addi    a0, a0, -1820          #; a0  = 0x8000361c, (wrb) a0  <-- 0x80002f00
       0     7827        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7842        M                                           #; (lsu) a2  <-- 0
       0     7843        M 0x80001628 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001624
       0     7844        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7855        M                                           #; (lsu) a2  <-- 0
       0     7856        M 0x80001628 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001624
       0     7857        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7868        M                                           #; (lsu) a2  <-- 0
       0     7869        M 0x80001628 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001624
       0     7870        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7881        M                                           #; (lsu) a2  <-- 0
       0     7882        M 0x80001628 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001624
       0     7883        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7894        M                                           #; (lsu) a2  <-- 0
       0     7895        M 0x80001628 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001624
       0     7896        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7907        M                                           #; (lsu) a2  <-- 1
       0     7908        M 0x80001628 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     7909        M 0x8000162c sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
       0     7912        M 0x80001630 sw      zero, 0(a1)            #; a1  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
       0     7913        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     7917        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c8d, (wrb) s0  <-- 0x80002c8e
       0     7918        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c8f, (wrb) s10 <-- 0x80002c90
       0     7919        M 0x80000a4c mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
       0     7920        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c8e, a0  <~~ Byte[0x80002c8e]
       0     7933        M                                           #; (lsu) a0  <-- 0
       0     7934        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     7935        M 0x80000a58 j       pc + 0xad8             #; goto 0x80001530
       0     7947        M 0x80001530 mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
       0     7948        M 0x80001534 bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x8000153c
       0     7949        M 0x8000153c li      a0, 0                  #; (wrb) a0  <-- 0
       0     7959        M 0x80001540 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7960        M 0x80001544 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7961        M 0x80001548 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x8000154c, goto 0x8000158c
       0     7973        M 0x8000158c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001634
       0     7978        M 0x80001634 ret                            #; ra  = 0x8000154c, goto 0x8000154c
       0     7979        M 0x8000154c mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
       0     7980        M 0x80001550 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     7983        M                                           #; (lsu) s11 <-- 0
       0     7984        M 0x80001554 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     7987        M                                           #; (lsu) s10 <-- 0
       0     7988        M 0x80001558 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     7991        M                                           #; (lsu) s9  <-- 0
       0     7992        M 0x8000155c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     7995        M                                           #; (lsu) s8  <-- 0
       0     7996        M 0x80001560 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     7999        M                                           #; (lsu) s7  <-- 0
       0     8000        M 0x80001564 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8003        M                                           #; (lsu) s6  <-- 0
       0     8004        M 0x80001568 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8007        M                                           #; (lsu) s5  <-- 0
       0     8008        M 0x8000156c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8011        M                                           #; (lsu) s4  <-- 0
       0     8012        M 0x80001570 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8015        M                                           #; (lsu) s3  <-- 0
       0     8016        M 0x80001574 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8019        M                                           #; (lsu) s2  <-- 0
       0     8020        M 0x80001578 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8023        M                                           #; (lsu) s1  <-- 0
       0     8024        M 0x8000157c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8027        M                                           #; (lsu) s0  <-- 0
       0     8028        M 0x80001580 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8029        M 0x80001584 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8031        M                                           #; (lsu) ra  <-- 0x80000988
       0     8032        M 0x80001588 ret                            #; ra  = 0x80000988, goto 0x80000988
       0     8035        M 0x80000988 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8036        M 0x8000098c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8038        M                                           #; (lsu) ra  <-- 0x800008e8
       0     8039        M 0x80000990 ret                            #; ra  = 0x800008e8, goto 0x800008e8
       0     8043        M 0x800008e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e8
       0     8044        M 0x800008ec addi    a0, a0, 1584           #; a0  = 0x800028e8, (wrb) a0  <-- 0x80002f18
       0     8048        M 0x800008f0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f18]
       0     8057        M                                           #; (f:lsu) ft3  <-- -2850.0
       0     8058        M 0x80000900 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x800008f4 fadd.d  ft3, fs0, ft3          #; fs0  = 2850.0, ft3  = -2850.0
       0     8061        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     8062        M 0x80000904 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x800008f8 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     8063        M 0x80000908 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002908
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     8064        M 0x8000090c addi    a0, a0, 877            #; a0  = 0x80002908, (wrb) a0  <-- 0x80002c75
                         M 0x800008fc fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     8065        M                                           #; (lsu) a3  <-- 0
       0     8070        M 0x80000910 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000910
       0     8071        M 0x80000914 jalr    ra, ra, 40             #; ra  = 0x80000910, (wrb) ra  <-- 0x80000918, goto 0x80000938
       0     8075        M 0x80000938 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     8076        M 0x8000093c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000918 ~~> Word[0x0011ff1c]
       0     8078        M 0x80000940 mv      t0, a0                 #; a0  = 0x80002c75, (wrb) t0  <-- 0x80002c75
       0     8079        M 0x80000944 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
       0     8080        M 0x80000948 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
       0     8081        M 0x8000094c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 13 ~~> Word[0x0011ff34]
       0     8082        M 0x80000950 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     8083        M 0x80000954 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     8084        M 0x80000958 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     8085        M 0x8000095c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     8086        M 0x80000960 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     8087        M 0x80000964 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     8088        M 0x80000968 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001968
       0     8089        M 0x8000096c addi    a0, a0, -988           #; a0  = 0x80001968, (wrb) a0  <-- 0x8000158c
       0     8090        M 0x80000970 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     8091        M 0x80000974 li      a2, -1                 #; (wrb) a2  <-- -1
       0     8092        M 0x80000978 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     8093        M 0x8000097c mv      a3, t0                 #; t0  = 0x80002c75, (wrb) a3  <-- 0x80002c75
       0     8094        M 0x80000980 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000980
       0     8095        M 0x80000984 jalr    ra, ra, 20             #; ra  = 0x80000980, (wrb) ra  <-- 0x80000988, goto 0x80000994
       0     8097        M 0x80000994 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     8098        M 0x80000998 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000988 ~~> Word[0x0011ff0c]
       0     8099        M 0x8000099c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     8100        M 0x800009a0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     8101        M 0x800009a4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     8102        M 0x800009a8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     8103        M 0x800009ac sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     8104        M 0x800009b0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     8105        M 0x800009b4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     8106        M 0x800009b8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     8107        M 0x800009bc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     8108        M 0x800009c0 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     8109        M 0x800009c4 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     8110        M 0x800009c8 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     8111        M 0x800009cc mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     8112        M 0x800009d0 mv      s0, a3                 #; a3  = 0x80002c75, (wrb) s0  <-- 0x80002c75
       0     8113        M 0x800009d4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8114        M 0x800009d8 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     8115        M 0x800009dc beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     8116        M 0x800009e0 mv      s2, a0                 #; a0  = 0x8000158c, (wrb) s2  <-- 0x8000158c
       0     8117        M 0x800009e4 j       pc + 0xc               #; goto 0x800009f0
       0     8119        M 0x800009f0 li      s8, 0                  #; (wrb) s8  <-- 0
       0     8120        M 0x800009f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8121        M 0x800009f8 li      s11, 16                #; (wrb) s11 <-- 16
       0     8122        M 0x800009fc li      s7, 46                 #; (wrb) s7  <-- 46
       0     8123        M 0x80000a00 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8124        M 0x80000a04 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8125        M 0x80000a08 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     8126        M 0x80000a0c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8127        M 0x80000a10 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8128        M 0x80000a14 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     8129        M 0x80000a18 addi    s10, s0, 2             #; s0  = 0x80002c75, (wrb) s10 <-- 0x80002c77
       0     8130        M 0x80000a1c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8131        M 0x80000a20 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8132        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c75, a0  <~~ Byte[0x80002c75]
       0     8143        M                                           #; (lsu) a0  <-- 101
       0     8144        M 0x80000a28 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8145        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8146        M 0x80000a30 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8147        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8148        M 0x80000a38 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8149        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8150        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8155        M 0x8000158c beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8158        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8159        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8160        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8161        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8162        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8163        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8164        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8165        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8176        M                                           #; (lsu) a4  <-- 0
       0     8177        M 0x800015ac addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8178        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 1 ~~> Word[0x80002fd4]
       0     8179        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 0, (wrb) a4  <-- 0x80002fd4
       0     8180        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd4, 101 ~~> Byte[0x8000301c]
       0     8181        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8202        M                                           #; (lsu) a4  <-- 1
       0     8203        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8204        M 0x800015c4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8205        M 0x800015c8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8206        M 0x800015cc snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8207        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8208        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8212        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8217        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c75, (wrb) s0  <-- 0x80002c76
       0     8218        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c77, (wrb) s10 <-- 0x80002c78
       0     8219        M 0x80000a4c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8220        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c76, a0  <~~ Byte[0x80002c76]
       0     8231        M                                           #; (lsu) a0  <-- 114
       0     8232        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a2c
       0     8233        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8236        M 0x80000a30 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8237        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8238        M 0x80000a38 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8239        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8240        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8243        M 0x8000158c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8246        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8247        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8248        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8249        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8250        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8251        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8252        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8253        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8264        M                                           #; (lsu) a4  <-- 1
       0     8265        M 0x800015ac addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8266        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 2 ~~> Word[0x80002fd4]
       0     8267        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 1, (wrb) a4  <-- 0x80002fd5
       0     8268        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd5, 114 ~~> Byte[0x8000301d]
       0     8269        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8290        M                                           #; (lsu) a4  <-- 2
       0     8291        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8292        M 0x800015c4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8293        M 0x800015c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8294        M 0x800015cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8295        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8296        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8300        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8305        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c76, (wrb) s0  <-- 0x80002c77
       0     8306        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c78, (wrb) s10 <-- 0x80002c79
       0     8307        M 0x80000a4c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8308        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c77, a0  <~~ Byte[0x80002c77]
       0     8319        M                                           #; (lsu) a0  <-- 114
       0     8320        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a2c
       0     8321        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8324        M 0x80000a30 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8325        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8326        M 0x80000a38 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8327        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8328        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8331        M 0x8000158c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8334        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8335        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8336        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8337        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8338        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8339        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8340        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8341        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8352        M                                           #; (lsu) a4  <-- 2
       0     8353        M 0x800015ac addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8354        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 3 ~~> Word[0x80002fd4]
       0     8355        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 2, (wrb) a4  <-- 0x80002fd6
       0     8356        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd6, 114 ~~> Byte[0x8000301e]
       0     8357        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8378        M                                           #; (lsu) a4  <-- 3
       0     8379        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8380        M 0x800015c4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8381        M 0x800015c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8382        M 0x800015cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8383        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8384        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8388        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8393        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c77, (wrb) s0  <-- 0x80002c78
       0     8394        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c79, (wrb) s10 <-- 0x80002c7a
       0     8395        M 0x80000a4c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     8396        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c78, a0  <~~ Byte[0x80002c78]
       0     8407        M                                           #; (lsu) a0  <-- 111
       0     8408        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a2c
       0     8409        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     8412        M 0x80000a30 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     8413        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8414        M 0x80000a38 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     8415        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8416        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8419        M 0x8000158c beqz    a0, pc + 168           #; a0  = 111, not taken
       0     8422        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8423        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8424        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8425        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8426        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8427        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8428        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8429        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8440        M                                           #; (lsu) a4  <-- 3
       0     8441        M 0x800015ac addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     8442        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 4 ~~> Word[0x80002fd4]
       0     8443        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 3, (wrb) a4  <-- 0x80002fd7
       0     8444        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd7, 111 ~~> Byte[0x8000301f]
       0     8445        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8466        M                                           #; (lsu) a4  <-- 4
       0     8467        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     8468        M 0x800015c4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     8469        M 0x800015c8 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     8470        M 0x800015cc snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     8471        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8472        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8476        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8481        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c78, (wrb) s0  <-- 0x80002c79
       0     8482        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c7a, (wrb) s10 <-- 0x80002c7b
       0     8483        M 0x80000a4c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     8484        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c79, a0  <~~ Byte[0x80002c79]
       0     8495        M                                           #; (lsu) a0  <-- 114
       0     8496        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a2c
       0     8497        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8500        M 0x80000a30 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     8501        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8502        M 0x80000a38 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     8503        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8504        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8507        M 0x8000158c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8510        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8511        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8512        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8513        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8514        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8515        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8516        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8517        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8528        M                                           #; (lsu) a4  <-- 4
       0     8529        M 0x800015ac addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     8530        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 5 ~~> Word[0x80002fd4]
       0     8531        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 4, (wrb) a4  <-- 0x80002fd8
       0     8532        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd8, 114 ~~> Byte[0x80003020]
       0     8533        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8554        M                                           #; (lsu) a4  <-- 5
       0     8555        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     8556        M 0x800015c4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     8557        M 0x800015c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8558        M 0x800015cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8559        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8560        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8564        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8569        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c79, (wrb) s0  <-- 0x80002c7a
       0     8570        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c7b, (wrb) s10 <-- 0x80002c7c
       0     8571        M 0x80000a4c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     8572        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c7a, a0  <~~ Byte[0x80002c7a]
       0     8583        M                                           #; (lsu) a0  <-- 32
       0     8584        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a2c
       0     8585        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8588        M 0x80000a30 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     8589        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8590        M 0x80000a38 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     8591        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8592        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8595        M 0x8000158c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8598        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8599        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8600        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8601        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8602        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8603        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8604        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8605        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8616        M                                           #; (lsu) a4  <-- 5
       0     8617        M 0x800015ac addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     8618        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 6 ~~> Word[0x80002fd4]
       0     8619        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 5, (wrb) a4  <-- 0x80002fd9
       0     8620        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fd9, 32 ~~> Byte[0x80003021]
       0     8621        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8642        M                                           #; (lsu) a4  <-- 6
       0     8643        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     8644        M 0x800015c4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     8645        M 0x800015c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8646        M 0x800015cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8647        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8648        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8652        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8657        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c7a, (wrb) s0  <-- 0x80002c7b
       0     8658        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c7c, (wrb) s10 <-- 0x80002c7d
       0     8659        M 0x80000a4c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     8660        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c7b, a0  <~~ Byte[0x80002c7b]
       0     8671        M                                           #; (lsu) a0  <-- 61
       0     8672        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a2c
       0     8673        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     8676        M 0x80000a30 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     8677        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8678        M 0x80000a38 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     8679        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8680        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8683        M 0x8000158c beqz    a0, pc + 168           #; a0  = 61, not taken
       0     8686        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8687        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8688        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8689        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8690        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8691        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8692        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8693        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8704        M                                           #; (lsu) a4  <-- 6
       0     8705        M 0x800015ac addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     8706        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 7 ~~> Word[0x80002fd4]
       0     8707        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 6, (wrb) a4  <-- 0x80002fda
       0     8708        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fda, 61 ~~> Byte[0x80003022]
       0     8709        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8730        M                                           #; (lsu) a4  <-- 7
       0     8731        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     8732        M 0x800015c4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     8733        M 0x800015c8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     8734        M 0x800015cc snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     8735        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8736        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8740        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8745        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c7b, (wrb) s0  <-- 0x80002c7c
       0     8746        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c7d, (wrb) s10 <-- 0x80002c7e
       0     8747        M 0x80000a4c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     8748        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c7c, a0  <~~ Byte[0x80002c7c]
       0     8759        M                                           #; (lsu) a0  <-- 32
       0     8760        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a2c
       0     8761        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8764        M 0x80000a30 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     8765        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8766        M 0x80000a38 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     8767        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8768        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0     8771        M 0x8000158c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8774        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8775        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8776        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8777        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     8778        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     8779        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8780        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8781        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8792        M                                           #; (lsu) a4  <-- 7
       0     8793        M 0x800015ac addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     8794        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 8 ~~> Word[0x80002fd4]
       0     8795        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 7, (wrb) a4  <-- 0x80002fdb
       0     8796        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdb, 32 ~~> Byte[0x80003023]
       0     8797        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8818        M                                           #; (lsu) a4  <-- 8
       0     8819        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     8820        M 0x800015c4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     8821        M 0x800015c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8822        M 0x800015cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8823        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8824        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     8828        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0     8833        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c7c, (wrb) s0  <-- 0x80002c7d
       0     8834        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c7e, (wrb) s10 <-- 0x80002c7f
       0     8835        M 0x80000a4c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     8836        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c7d, a0  <~~ Byte[0x80002c7d]
       0     8847        M                                           #; (lsu) a0  <-- 37
       0     8848        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a2c
       0     8849        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a5c
       0     8850        M 0x80000a5c li      s0, 0                  #; (wrb) s0  <-- 0
       0     8854        M 0x80000a60 j       pc + 0x10              #; goto 0x80000a70
       0     8857        M 0x80000a70 lbu     a0, -1(s10)            #; s10 = 0x80002c7f, a0  <~~ Byte[0x80002c7e]
       0     8868        M                                           #; (lsu) a0  <-- 102
       0     8869        M 0x80000a74 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     8870        M 0x80000a78 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ab0
       0     8873        M 0x80000ab0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     8874        M 0x80000ab4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     8875        M 0x80000ab8 addi    a1, s10, -1            #; s10 = 0x80002c7f, (wrb) a1  <-- 0x80002c7e
       0     8876        M 0x80000abc li      a3, 9                  #; (wrb) a3  <-- 9
       0     8877        M 0x80000ac0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b3c
       0     8882        M 0x80000b3c li      a2, 42                 #; (wrb) a2  <-- 42
       0     8885        M 0x80000b40 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b90
       0     8890        M 0x80000b90 li      s6, 0                  #; (wrb) s6  <-- 0
       0     8891        M 0x80000b94 mv      s10, a1                #; a1  = 0x80002c7e, (wrb) s10 <-- 0x80002c7e
       0     8892        M 0x80000b98 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     8893        M 0x80000b9c li      s7, 0                  #; (wrb) s7  <-- 0
       0     8896        M 0x80000ba0 j       pc + 0xc               #; goto 0x80000bac
       0     8897        M 0x80000bac addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     8900        M 0x80000bb0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     8901        M 0x80000bb4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     8902        M 0x80000bb8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     8903        M 0x80000bbc li      a2, 9                  #; (wrb) a2  <-- 9
       0     8904        M 0x80000bc0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c24
       0     8909        M 0x80000c24 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     8910        M 0x80000c28 li      a2, 83                 #; (wrb) a2  <-- 83
       0     8911        M 0x80000c2c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     8912        M 0x80000c30 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     8913        M 0x80000c34 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c34
       0     8914        M 0x80000c38 addi    a2, a2, 204            #; a2  = 0x80002c34, (wrb) a2  <-- 0x80002d00
       0     8915        M 0x80000c3c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d00, (wrb) a1  <-- 0x80002e04
       0     8916        M 0x80000c40 lw      a2, 0(a1)              #; a1  = 0x80002e04, a2  <~~ Word[0x80002e04]
       0     8917        M 0x80000c44 li      a1, 8                  #; (wrb) a1  <-- 8
       0     8918        M 0x80000c48 li      s8, 16                 #; (wrb) s8  <-- 16
       0     8927        M                                           #; (lsu) a2  <-- 0x80000c7c
       0     8928        M 0x80000c4c jr      a2                     #; a2  = 0x80000c7c, goto 0x80000c7c
       0     8931        M 0x80000c7c li      a1, 70                 #; (wrb) a1  <-- 70
       0     8943        M 0x80000c80 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c88
       0     8944        M 0x80000c88 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     8945        M 0x80000c8c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     8956        M 0x80000c94 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     8957        M 0x80000c98 mv      a0, s2                 #; s2  = 0x8000158c, (wrb) a0  <-- 0x8000158c
                         M 0x80000c90 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     8958        M 0x80000c9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     8967        M 0x80000ca0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     8968        M 0x80000ca4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8969        M 0x80000ca8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     8970        M 0x80000cac mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     8979        M 0x80000cb0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     8980        M 0x80000cb4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cb4
       0     8981        M 0x80000cb8 jalr    ra, ra, -1656          #; ra  = 0x80001cb4, (wrb) ra  <-- 0x80000cbc, goto 0x8000163c
       0     8984        M 0x8000163c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     8987        M 0x80001640 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cbc ~~> Word[0x0011fe9c]
       0     8988        M 0x80001644 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     8989        M 0x80001648 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     8990        M 0x8000164c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000158c ~~> Word[0x0011fe90]
       0     8999        M 0x80001650 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     9000        M 0x80001654 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     9001        M 0x80001658 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     9002        M 0x8000165c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     9011        M 0x80001660 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     9012        M 0x80001664 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     9013        M 0x80001668 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     9014        M 0x8000166c sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c7e ~~> Word[0x0011fe70]
       0     9025        M 0x80001670 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     9026        M 0x8000167c auipc   s1, 0x2                #; (wrb) s1  <-- 0x8000367c
                         M 0x80001674 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     9027        M 0x80001678 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     9035        M 0x80001680 addi    s1, s1, -1876          #; s1  = 0x8000367c, (wrb) s1  <-- 0x80002f28
       0     9038        M 0x8000168c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001684 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f28]
       0     9047        M 0x80001690 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9048        M 0x80001694 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001688 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9049        M 0x80001698 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9050        M 0x8000169c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     9059        M 0x800016a0 mv      s7, a0                 #; a0  = 0x8000158c, (wrb) s7  <-- 0x8000158c
       0     9060        M 0x800016a4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001794
       0     9083        M 0x80001798 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002798
       0     9084        M 0x8000179c addi    a0, a0, 1944           #; a0  = 0x80002798, (wrb) a0  <-- 0x80002f30
                         M 0x80001794 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9085        M                                           #; (f:fpu) fs0  <-- 0.0
       0     9096        M 0x800017a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f30]
       0     9105        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9106        M 0x800017a4 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9108        M                                           #; (acc) t3  <-- 0x00051e63
       0     9109        M 0x800017a8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017c4
       0     9121        M 0x800017c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027c4
       0     9122        M 0x800017c8 addi    a0, a0, 1908           #; a0  = 0x800027c4, (wrb) a0  <-- 0x80002f38
       0     9125        M 0x800017cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f38]
       0     9133        M 0x800017d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027d0
       0     9134        M 0x800017d4 addi    a0, a0, 1904           #; a0  = 0x800027d0, (wrb) a0  <-- 0x80002f40
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9137        M 0x800017d8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f40]
       0     9138        M 0x800017dc fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9146        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9147        M 0x800017e0 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9149        M                                           #; (acc) a0  <-- 0x00b57533
       0     9150        M 0x800017e4 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9151        M 0x800017e8 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018e4
       0     9168        M 0x800018e4 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9169        M 0x800018e8 li      s8, 6                  #; (wrb) s8  <-- 6
       0     9170        M 0x800018ec beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018f4
       0     9180        M 0x800018f4 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9182        M 0x800018fc bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001934
       0     9183        M 0x800018f8 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9184        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9203        M 0x80001934 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9204        M 0x80001938 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9205        M 0x8000193c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000293c
       0     9215        M 0x80001940 addi    a1, a1, 1300           #; a1  = 0x8000293c, (wrb) a1  <-- 0x80002e50
       0     9216        M 0x80001944 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e50, (wrb) a0  <-- 0x80002e80
       0     9219        M 0x80001948 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e80]
       0     9220        M 0x8000194c fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     9228        M 0x80001950 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     9229        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9230        M 0x8000195c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000295c
                         M 0x80001954 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     9233        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9234        M 0x80001958 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     9237        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9239        M 0x80001960 addi    a0, a0, 1516           #; a0  = 0x8000295c, (wrb) a0  <-- 0x80002f48
       0     9242        M 0x80001964 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f48]
       0     9243        M 0x80001968 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     9245        M                                           #; (acc) gp  <-- 0xd21501d3
       0     9247        M 0x8000196c fcvt.d.wu ft3, a0              #; ac1  = 0
       0     9248        M                                           #; (f:fpu) ft3  <-- 0.0
       0     9251        M                                           #; (f:lsu) ft0  <-- 0.5
       0     9253        M 0x80001970 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     9256        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9257        M 0x80001974 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9260        M 0x80001978 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001998
       0     9275        M 0x80001998 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9277        M                                           #; (acc) s4  <-- 0x00059a63
       0     9278        M 0x8000199c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019b0
       0     9298        M 0x800019b4 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800019b0 fcvt.d.w fs1, zero             #; ac1  = 0
       0     9299        M 0x800019b8 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     9300        M 0x800019bc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9309        M 0x800019c0 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     9310        M 0x800019c4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9311        M 0x800019c8 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     9312        M 0x800019cc lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     9321        M 0x800019d0 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     9322        M 0x800019d4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9323        M 0x800019d8 li      a7, 9                  #; (wrb) a7  <-- 9
       0     9324        M 0x800019dc beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     9333        M 0x800019e0 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     9334        M 0x800019e4 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     9337        M                                           #; (acc) a0  <-- 0x00355513
       0     9338        M 0x800019e8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     9339        M 0x800019ec mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     9345        M 0x800019f0 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     9346        M 0x800019f4 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     9347        M 0x800019f8 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     9348        M 0x800019fc sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     9357        M 0x80001a00 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     9358        M 0x80001a04 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     9359        M 0x80001a08 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     9360        M 0x80001a0c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     9371        M 0x80001a10 li      a3, 30                 #; (wrb) a3  <-- 30
       0     9372        M 0x80001a14 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     9373        M 0x80001a18 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     9374        M 0x80001a1c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     9383        M 0x80001a20 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     9384        M 0x80001a24 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     9385        M 0x80001a28 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     9386        M 0x80001a2c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     9395        M 0x80001a30 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     9396        M 0x80001a34 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     9397        M 0x80001a38 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     9398        M 0x80001a3c li      a1, 31                 #; (wrb) a1  <-- 31
       0     9407        M 0x80001a40 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     9408        M 0x80001a44 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     9409        M 0x80001a48 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     9410        M 0x80001a4c bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a54
       0     9419        M 0x80001a54 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     9420        M 0x80001a58 li      a1, 48                 #; (wrb) a1  <-- 48
       0     9421        M 0x80001a5c auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a5c
       0     9431        M 0x80001a60 jalr    ra, ra, -1284          #; ra  = 0x80000a5c, (wrb) ra  <-- 0x80001a64, goto 0x80000558
       0     9454        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     9455        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     9466        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     9489        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     9501        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     9502        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     9503        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     9504        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     9524        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     9525        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     9536        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     9537        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     9538        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     9539        M 0x800005ec ret                            #; ra  = 0x80001a64, goto 0x80001a64
       0     9550        M 0x80001a64 li      a0, 0                  #; (wrb) a0  <-- 0
       0     9551        M 0x80001a68 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     9552        M 0x80001a6c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     9553        M 0x80001a70 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     9554        M 0x80001a74 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     9555        M 0x80001a78 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9556        M 0x80001a7c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     9565        M 0x80001a80 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a68
       0     9566        M 0x80001a68 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     9567        M 0x80001a6c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     9568        M 0x80001a70 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     9569        M 0x80001a74 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     9570        M 0x80001a78 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9571        M 0x80001a7c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     9572        M 0x80001a80 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a68
       0     9573        M 0x80001a68 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     9574        M 0x80001a6c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     9575        M 0x80001a70 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     9576        M 0x80001a74 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     9577        M 0x80001a78 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9578        M 0x80001a7c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     9579        M 0x80001a80 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a68
       0     9580        M 0x80001a68 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     9581        M 0x80001a6c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     9582        M 0x80001a70 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     9583        M 0x80001a74 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     9584        M 0x80001a78 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9585        M 0x80001a7c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     9586        M 0x80001a80 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a68
       0     9587        M 0x80001a68 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     9588        M 0x80001a6c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     9589        M 0x80001a70 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     9590        M 0x80001a74 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     9591        M 0x80001a78 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     9592        M 0x80001a7c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     9593        M 0x80001a80 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     9594        M 0x80001a84 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     9595        M 0x80001a88 j       pc + 0x28              #; goto 0x80001ab0
       0     9606        M 0x80001ab0 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     9607        M 0x80001ab4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     9608        M 0x80001ab8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9609        M 0x80001abc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     9618        M 0x80001ac0 li      a1, 46                 #; (wrb) a1  <-- 46
       0     9619        M 0x80001ac4 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     9620        M 0x80001ac8 j       pc + 0x8               #; goto 0x80001ad0
       0     9630        M 0x80001ad0 li      a0, 32                 #; (wrb) a0  <-- 32
       0     9631        M 0x80001ad4 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     9632        M 0x80001ad8 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     9633        M 0x80001adc li      t0, 32                 #; (wrb) t0  <-- 32
       0     9643        M 0x80001ae4 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001ae0 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     9644        M 0x80001ae8 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     9645        M 0x80001aec li      a6, 10                 #; (wrb) a6  <-- 10
       0     9654        M 0x80001af0 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     9655        M 0x80001af4 li      a4, 18                 #; (wrb) a4  <-- 18
       0     9656        M 0x80001af8 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     9657        M 0x80001afc mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     9666        M 0x80001b00 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     9667        M 0x80001b04 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     9668        M 0x80001b08 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     9669        M 0x80001b0c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     9678        M 0x80001b10 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     9679        M 0x80001b14 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     9680        M 0x80001b18 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     9681        M 0x80001b1c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     9690        M 0x80001b20 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     9691        M 0x80001b24 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     9692        M 0x80001b28 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     9693        M 0x80001b2c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     9702        M 0x80001b30 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     9703        M 0x80001b34 j       pc + 0x8               #; goto 0x80001b3c
       0     9704        M 0x80001b3c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     9716        M 0x80001b40 li      a0, 1                  #; (wrb) a0  <-- 1
       0     9717        M 0x80001b44 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001bb0
       0     9739        M 0x80001bb0 li      a0, 31                 #; (wrb) a0  <-- 31
       0     9740        M 0x80001bb4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     9741        M 0x80001bb8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bd0
       0     9762        M 0x80001bd0 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     9763        M 0x80001bd4 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     9764        M 0x80001bd8 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     9765        M 0x80001bdc beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c08
       0     9785        M 0x80001c08 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     9786        M 0x80001c0c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     9797        M 0x80001c10 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     9798        M 0x80001c14 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     9799        M 0x80001c18 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     9800        M 0x80001c1c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     9809        M 0x80001c20 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c4c
       0     9832        M 0x80001c4c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     9844        M 0x80001c50 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     9845        M 0x80001c54 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     9846        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     9847        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     9850        M                                           #; (lsu) a0  <-- 48
       0     9856        M 0x80001c60 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     9857        M 0x80001c64 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     9858        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9859        M 0x80001c6c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     9868        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9869        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0     9882        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     9885        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9886        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9887        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9888        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     9889        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     9890        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9891        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     9892        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9903        M                                           #; (lsu) a4  <-- 8
       0     9904        M 0x800015ac addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     9905        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 9 ~~> Word[0x80002fd4]
       0     9906        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 8, (wrb) a4  <-- 0x80002fdc
       0     9907        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdc, 48 ~~> Byte[0x80003024]
       0     9908        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9929        M                                           #; (lsu) a4  <-- 9
       0     9930        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     9931        M 0x800015c4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     9932        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     9933        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     9934        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9935        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0     9948        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0     9953        M 0x80001c78 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     9954        M 0x80001c7c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     9956        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c58
       0     9959        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     9960        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     9962        M 0x80001c60 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     9963        M 0x80001c64 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     9964        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9965        M 0x80001c6c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     9966        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9967        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0     9968        M                                           #; (lsu) a0  <-- 46
       0     9970        M 0x8000158c beqz    a0, pc + 168           #; a0  = 46, not taken
       0     9973        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9974        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9975        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9976        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0     9977        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0     9978        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9979        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     9980        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9991        M                                           #; (lsu) a4  <-- 9
       0     9992        M 0x800015ac addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     9993        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 10 ~~> Word[0x80002fd4]
       0     9994        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 9, (wrb) a4  <-- 0x80002fdd
       0     9995        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdd, 46 ~~> Byte[0x80003025]
       0     9996        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10017        M                                           #; (lsu) a4  <-- 10
       0    10018        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10019        M 0x800015c4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10020        M 0x800015c8 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10021        M 0x800015cc snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10022        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10023        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10027        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10032        M 0x80001c78 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10033        M 0x80001c7c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10035        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c58
       0    10038        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0    10039        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0    10041        M 0x80001c60 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10042        M 0x80001c64 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10043        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10044        M 0x80001c6c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10045        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10046        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0    10047        M                                           #; (lsu) a0  <-- 48
       0    10049        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10052        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10053        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10054        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10055        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10056        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10057        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10058        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10059        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10070        M                                           #; (lsu) a4  <-- 10
       0    10071        M 0x800015ac addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10072        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 11 ~~> Word[0x80002fd4]
       0    10073        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 10, (wrb) a4  <-- 0x80002fde
       0    10074        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fde, 48 ~~> Byte[0x80003026]
       0    10075        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10096        M                                           #; (lsu) a4  <-- 11
       0    10097        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10098        M 0x800015c4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10099        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10100        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10101        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10102        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10106        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10111        M 0x80001c78 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10112        M 0x80001c7c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10114        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c58
       0    10117        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10118        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10120        M 0x80001c60 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10121        M 0x80001c64 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10122        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10123        M 0x80001c6c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10124        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10125        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0    10126        M                                           #; (lsu) a0  <-- 48
       0    10128        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10131        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10132        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10133        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10134        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10135        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10136        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10137        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10138        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10149        M                                           #; (lsu) a4  <-- 11
       0    10150        M 0x800015ac addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10151        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 12 ~~> Word[0x80002fd4]
       0    10152        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 11, (wrb) a4  <-- 0x80002fdf
       0    10153        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fdf, 48 ~~> Byte[0x80003027]
       0    10154        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10175        M                                           #; (lsu) a4  <-- 12
       0    10176        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10177        M 0x800015c4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10178        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10179        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10180        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10181        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10185        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10190        M 0x80001c78 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10191        M 0x80001c7c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10193        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c58
       0    10196        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10197        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10199        M 0x80001c60 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10200        M 0x80001c64 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10201        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10202        M 0x80001c6c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10203        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10204        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0    10205        M                                           #; (lsu) a0  <-- 48
       0    10207        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10210        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10211        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10212        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10213        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10214        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10215        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10216        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10217        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10228        M                                           #; (lsu) a4  <-- 12
       0    10229        M 0x800015ac addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10230        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 13 ~~> Word[0x80002fd4]
       0    10231        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 12, (wrb) a4  <-- 0x80002fe0
       0    10232        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fe0, 48 ~~> Byte[0x80003028]
       0    10233        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10254        M                                           #; (lsu) a4  <-- 13
       0    10255        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10256        M 0x800015c4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10257        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10258        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10259        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10260        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10264        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10269        M 0x80001c78 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10270        M 0x80001c7c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10272        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c58
       0    10275        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    10276        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    10278        M 0x80001c60 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10279        M 0x80001c64 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10280        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10281        M 0x80001c6c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10282        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10283        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0    10284        M                                           #; (lsu) a0  <-- 48
       0    10286        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10289        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10290        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10291        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10292        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10293        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10294        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10295        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10296        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10307        M                                           #; (lsu) a4  <-- 13
       0    10308        M 0x800015ac addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10309        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 14 ~~> Word[0x80002fd4]
       0    10310        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 13, (wrb) a4  <-- 0x80002fe1
       0    10311        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fe1, 48 ~~> Byte[0x80003029]
       0    10312        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10333        M                                           #; (lsu) a4  <-- 14
       0    10334        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10335        M 0x800015c4 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10336        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10337        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10338        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10339        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10343        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10348        M 0x80001c78 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10349        M 0x80001c7c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10351        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c58
       0    10354        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    10355        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    10357        M 0x80001c60 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10358        M 0x80001c64 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10359        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10360        M 0x80001c6c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10361        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10362        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0    10363        M                                           #; (lsu) a0  <-- 48
       0    10365        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10368        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10369        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10370        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10371        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10372        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10373        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10374        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10375        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10386        M                                           #; (lsu) a4  <-- 14
       0    10387        M 0x800015ac addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10388        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 15 ~~> Word[0x80002fd4]
       0    10389        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 14, (wrb) a4  <-- 0x80002fe2
       0    10390        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fe2, 48 ~~> Byte[0x8000302a]
       0    10391        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10412        M                                           #; (lsu) a4  <-- 15
       0    10413        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10414        M 0x800015c4 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10415        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10416        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10417        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10418        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10422        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10427        M 0x80001c78 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10428        M 0x80001c7c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10430        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c58
       0    10433        M 0x80001c58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    10434        M 0x80001c5c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    10436        M 0x80001c60 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10437        M 0x80001c64 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10438        M 0x80001c68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10439        M 0x80001c6c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10440        M 0x80001c70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10441        M 0x80001c74 jalr    s7                     #; s7  = 0x8000158c, (wrb) ra  <-- 0x80001c78, goto 0x8000158c
       0    10442        M                                           #; (lsu) a0  <-- 48
       0    10444        M 0x8000158c beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10447        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10448        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10449        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10450        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10451        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10452        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10453        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10454        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10465        M                                           #; (lsu) a4  <-- 15
       0    10466        M 0x800015ac addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10467        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 16 ~~> Word[0x80002fd4]
       0    10468        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 15, (wrb) a4  <-- 0x80002fe3
       0    10469        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fe3, 48 ~~> Byte[0x8000302b]
       0    10470        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10491        M                                           #; (lsu) a4  <-- 16
       0    10492        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10493        M 0x800015c4 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10494        M 0x800015c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10495        M 0x800015cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10496        M 0x800015d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10497        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001634
       0    10501        M 0x80001634 ret                            #; ra  = 0x80001c78, goto 0x80001c78
       0    10506        M 0x80001c78 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10507        M 0x80001c7c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10509        M 0x80001c80 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10510        M 0x80001c84 j       pc + 0x8               #; goto 0x80001c8c
       0    10511        M 0x80001c8c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10523        M 0x80001c90 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10524        M 0x80001c94 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10525        M 0x80001c98 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10526        M 0x80001c9c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10535        M 0x80001ca0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cd0
       0    10558        M 0x80001cd0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10559        M 0x80001cd4 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10562        M 0x80001cd8 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    10563        M 0x80001cdc fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0    10564        M                                           #; (f:lsu) fs1  <-- 0.0
       0    10571        M 0x80001ce4 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0    10572        M 0x80001ce0 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0    10573        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10575        M                                           #; (lsu) s10 <-- 0x80002c7e
       0    10576        M 0x80001ce8 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    10579        M                                           #; (lsu) s9  <-- 8
       0    10580        M 0x80001cec lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    10583        M                                           #; (lsu) s8  <-- 16
       0    10584        M 0x80001cf0 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    10587        M                                           #; (lsu) s7  <-- 0
       0    10588        M 0x80001cf4 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    10591        M                                           #; (lsu) s6  <-- 0
       0    10592        M 0x80001cf8 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    10595        M                                           #; (lsu) s5  <-- -1
       0    10596        M 0x80001cfc lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    10599        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    10600        M 0x80001d00 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    10603        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    10604        M 0x80001d04 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    10607        M                                           #; (lsu) s2  <-- 0x8000158c
       0    10608        M 0x80001d08 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    10611        M                                           #; (lsu) s1  <-- 8
       0    10612        M 0x80001d0c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    10615        M                                           #; (lsu) s0  <-- 0
       0    10616        M 0x80001d10 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    10617        M 0x80001d14 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    10619        M                                           #; (lsu) ra  <-- 0x80000cbc
       0    10620        M 0x80001d18 ret                            #; ra  = 0x80000cbc, goto 0x80000cbc
       0    10628        M 0x80000cbc j       pc + 0x7c0             #; goto 0x8000147c
       0    10631        M 0x8000147c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10634        M 0x80001480 li      s6, 37                 #; (wrb) s6  <-- 37
       0    10635        M 0x80001484 li      s7, 46                 #; (wrb) s7  <-- 46
       0    10636        M 0x80001488 addi    s0, s10, 1             #; s10 = 0x80002c7e, (wrb) s0  <-- 0x80002c7f
       0    10637        M 0x8000148c j       pc - 0xa74             #; goto 0x80000a18
       0    10638        M 0x80000a18 addi    s10, s0, 2             #; s0  = 0x80002c7f, (wrb) s10 <-- 0x80002c81
       0    10639        M 0x80000a1c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10641        M 0x80000a20 li      s8, 10                 #; (wrb) s8  <-- 10
       0    10642        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c7f, a0  <~~ Byte[0x80002c7f]
       0    10653        M                                           #; (lsu) a0  <-- 10
       0    10654        M 0x80000a28 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10655        M 0x80000a2c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10656        M 0x80000a30 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10657        M 0x80000a34 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10658        M 0x80000a38 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10659        M 0x80000a3c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10660        M 0x80000a40 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x80000a44, goto 0x8000158c
       0    10665        M 0x8000158c beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10668        M 0x80001590 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10669        M 0x80001594 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10670        M 0x80001598 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10671        M 0x8000159c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000359c
       0    10672        M 0x800015a0 addi    a3, a3, -1480          #; a3  = 0x8000359c, (wrb) a3  <-- 0x80002fd4
       0    10673        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10674        M 0x800015a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10675        M 0x800015a8 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10686        M                                           #; (lsu) a4  <-- 16
       0    10687        M 0x800015ac addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10688        M 0x800015b0 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 17 ~~> Word[0x80002fd4]
       0    10689        M 0x800015b4 add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 16, (wrb) a4  <-- 0x80002fe4
       0    10690        M 0x800015b8 sb      a0, 72(a4)             #; a4  = 0x80002fe4, 10 ~~> Byte[0x8000302c]
       0    10691        M 0x800015bc lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10712        M                                           #; (lsu) a4  <-- 17
       0    10713        M 0x800015c0 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    10714        M 0x800015c4 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    10715        M 0x800015c8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    10716        M 0x800015cc snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    10717        M 0x800015d0 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    10718        M 0x800015d4 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    10719        M 0x800015d8 add     a0, a3, a2             #; a3  = 0x80002fd4, a2  = 0, (wrb) a0  <-- 0x80002fd4
       0    10720        M 0x800015dc addi    a2, a0, 72             #; a0  = 0x80002fd4, (wrb) a2  <-- 0x8000301c
       0    10721        M 0x800015e0 sw      zero, 12(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe0]
       0    10722        M 0x800015e4 li      a3, 64                 #; (wrb) a3  <-- 64
       0    10723        M 0x800015e8 sw      a3, 8(a0)              #; a0  = 0x80002fd4, 64 ~~> Word[0x80002fdc]
       0    10724        M 0x800015ec sw      zero, 20(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe8]
       0    10725        M 0x800015f0 li      a3, 1                  #; (wrb) a3  <-- 1
       0    10726        M 0x800015f4 sw      a3, 16(a0)             #; a0  = 0x80002fd4, 1 ~~> Word[0x80002fe4]
       0    10735        M 0x800015f8 sw      zero, 28(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff0]
       0    10737        M 0x800015fc sw      a2, 24(a0)             #; a0  = 0x80002fd4, 0x8000301c ~~> Word[0x80002fec]
       0    10747        M 0x80001600 lw      a2, 0(a1)              #; a1  = 0x80002fd4, a2  <~~ Word[0x80002fd4]
       0    10748        M 0x80001604 addi    a3, a0, 8              #; a0  = 0x80002fd4, (wrb) a3  <-- 0x80002fdc
       0    10749        M 0x80001608 sw      zero, 36(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff8]
       0    10769        M                                           #; (lsu) a2  <-- 17
       0    10770        M 0x8000160c sw      a2, 32(a0)             #; a0  = 0x80002fd4, 17 ~~> Word[0x80002ff4]
       0    10771        M 0x80001610 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003610
       0    10772        M 0x80001614 addi    a0, a0, -1872          #; a0  = 0x80003610, (wrb) a0  <-- 0x80002ec0
       0    10773        M 0x80001618 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80002fdc ~~> Word[0x80002ec0]
       0    10774        M 0x8000161c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000361c
       0    10775        M 0x80001620 addi    a0, a0, -1820          #; a0  = 0x8000361c, (wrb) a0  <-- 0x80002f00
       0    10776        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0    10799        M                                           #; (lsu) a2  <-- 0
       0    10800        M 0x80001628 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001624
       0    10801        M 0x80001624 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0    10812        M                                           #; (lsu) a2  <-- 1
       0    10813        M 0x80001628 beqz    a2, pc - 4             #; a2  = 1, not taken
       0    10814        M 0x8000162c sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
       0    10817        M 0x80001630 sw      zero, 0(a1)            #; a1  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
       0    10818        M 0x80001634 ret                            #; ra  = 0x80000a44, goto 0x80000a44
       0    10822        M 0x80000a44 addi    s0, s0, 1              #; s0  = 0x80002c7f, (wrb) s0  <-- 0x80002c80
       0    10823        M 0x80000a48 addi    s10, s10, 1            #; s10 = 0x80002c81, (wrb) s10 <-- 0x80002c82
       0    10824        M 0x80000a4c mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    10825        M 0x80000a50 lbu     a0, 0(s0)              #; s0  = 0x80002c80, a0  <~~ Byte[0x80002c80]
       0    10838        M                                           #; (lsu) a0  <-- 0
       0    10839        M 0x80000a54 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    10840        M 0x80000a58 j       pc + 0xad8             #; goto 0x80001530
       0    10843        M 0x80001530 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    10844        M 0x80001534 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000153c
       0    10845        M 0x8000153c li      a0, 0                  #; (wrb) a0  <-- 0
       0    10846        M 0x80001540 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10847        M 0x80001544 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10848        M 0x80001548 jalr    s2                     #; s2  = 0x8000158c, (wrb) ra  <-- 0x8000154c, goto 0x8000158c
       0    10851        M 0x8000158c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001634
       0    10856        M 0x80001634 ret                            #; ra  = 0x8000154c, goto 0x8000154c
       0    10857        M 0x8000154c mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    10858        M 0x80001550 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    10861        M                                           #; (lsu) s11 <-- 0
       0    10862        M 0x80001554 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    10865        M                                           #; (lsu) s10 <-- 0
       0    10866        M 0x80001558 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    10869        M                                           #; (lsu) s9  <-- 0
       0    10870        M 0x8000155c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    10873        M                                           #; (lsu) s8  <-- 0
       0    10874        M 0x80001560 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    10877        M                                           #; (lsu) s7  <-- 0
       0    10878        M 0x80001564 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    10881        M                                           #; (lsu) s6  <-- 0
       0    10882        M 0x80001568 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    10885        M                                           #; (lsu) s5  <-- 0
       0    10886        M 0x8000156c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    10889        M                                           #; (lsu) s4  <-- 0
       0    10890        M 0x80001570 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    10893        M                                           #; (lsu) s3  <-- 0
       0    10894        M 0x80001574 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    10897        M                                           #; (lsu) s2  <-- 0
       0    10898        M 0x80001578 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    10901        M                                           #; (lsu) s1  <-- 0
       0    10902        M 0x8000157c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    10905        M                                           #; (lsu) s0  <-- 0
       0    10906        M 0x80001580 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    10907        M 0x80001584 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    10909        M                                           #; (lsu) ra  <-- 0x80000988
       0    10910        M 0x80001588 ret                            #; ra  = 0x80000988, goto 0x80000988
       0    10913        M 0x80000988 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    10914        M 0x8000098c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    10916        M                                           #; (lsu) ra  <-- 0x80000918
       0    10917        M 0x80000990 ret                            #; ra  = 0x80000918, goto 0x80000918
       0    10921        M 0x80000918 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002918
       0    10922        M 0x8000091c addi    a0, a0, 1544           #; a0  = 0x80002918, (wrb) a0  <-- 0x80002f20
       0    10926        M 0x80000920 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f20]
       0    10927        M 0x8000092c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0    10935        M                                           #; (f:lsu) ft3  <-- 0.0001
       0    10936        M 0x80000930 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x80000924 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0    10937        M                                           #; (lsu) ra  <-- 0x800029f0
       0    10938        M 0x80000934 ret                            #; ra  = 0x800029f0, goto 0x800029f0
                         M 0x80000928 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0    10939        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10950        M 0x800029f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0    10951        M 0x800029f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029f4
       0    10952        M 0x800029f8 jalr    ra, ra, 524            #; ra  = 0x800029f4, (wrb) ra  <-- 0x800029fc, goto 0x80002c00
       0    10973        M 0x80002c00 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    10974        M 0x80002c04 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029fc ~~> Word[0x0011ff5c]
       0    10975        M 0x80002c08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c08
       0    10976        M 0x80002c0c jalr    ra, ra, -1268          #; ra  = 0x80002c08, (wrb) ra  <-- 0x80002c10, goto 0x80002714
       0    10988        M 0x80002714 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    10989        M 0x80002718 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    10990        M 0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    10993        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11000        M 0x80002720 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11003        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11004        M 0x80002724 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11005        M 0x80002728 ret                            #; ra  = 0x80002c10, goto 0x80002c10
       0    11007        M                                           #; (lsu) a0  <-- 0x00120190
       0    11008        M 0x80002c10 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11018        M                                           #; (lsu) a0  <-- 0
       0    11019        M 0x80002c14 mv      zero, a0               #; a0  = 0
       0    11020        M 0x80002c18 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11021        M 0x80002c1c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11023        M                                           #; (lsu) ra  <-- 0x800029fc
       0    11024        M 0x80002c20 ret                            #; ra  = 0x800029fc, goto 0x800029fc
       0    11038        M 0x800029fc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0    11042        M 0x80002a00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a00
       0    11043        M 0x80002a04 jalr    ra, ra, 556            #; ra  = 0x80002a00, (wrb) ra  <-- 0x80002a08, goto 0x80002c2c
       0    11044        M 0x80002c2c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11045        M 0x80002c30 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0    11046        M 0x80002c34 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a08 ~~> Word[0x0011ff5c]
       0    11047        M 0x80002c38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c38
       0    11048        M 0x80002c3c jalr    ra, ra, -1348          #; ra  = 0x80002c38, (wrb) ra  <-- 0x80002c40, goto 0x800026f4
       0    11067        M 0x800026f4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11068        M 0x800026f8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11069        M 0x800026fc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11072        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11079        M 0x80002700 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11084        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11085        M 0x80002704 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11086        M 0x80002708 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11088        M                                           #; (lsu) a0  <-- 0
       0    11089        M 0x8000270c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11090        M 0x80002710 ret                            #; ra  = 0x80002c40, goto 0x80002c40
       0    11091        M 0x80002c40 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11094        M                                           #; (lsu) t0  <-- 0
       0    11095        M 0x80002c44 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11096        M 0x80002c48 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11097        M 0x80002c4c bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11098        M                                           #; (lsu) ra  <-- 0x80002a08
       0    11105        M 0x80002c50 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0    11106        M 0x80002c54 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0    11107        M 0x80002c58 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c58
       0    11108        M 0x80002c5c addi    t1, t1, 616            #; t1  = 0x80002c58, (wrb) t1  <-- 0x80002ec0
       0    11116        M 0x80002c60 sw      t0, 0(t1)              #; t1  = 0x80002ec0, 1 ~~> Word[0x80002ec0]
       0    11117        M 0x80002c64 ret                            #; ra  = 0x80002a08, goto 0x80002a08
       0    11131        M 0x80002a08 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4841):
snitch_loads                                    38
snitch_stores                                   50
fpss_stores                                      1
fpss_loads                                       0
snitch_avg_load_latency                    17.9737
snitch_occupancy                            0.3487
snitch_fseq_rel_offloads                    0.2060
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0905
fpss_fpu_occupancy                          0.0894
fpss_fpu_rel_occupancy                      0.9886
cycles                                        4830
total_ipc                                   0.4391

Performance metrics for section 1 @ (4843, 5267):
snitch_loads                                     0
fpss_loads                                       0
snitch_avg_load_latency                          0
snitch_occupancy                            0.4682
snitch_fseq_rel_offloads                    0.3179
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                            47
fpss_avg_fpu_latency                        3.4205
fpss_avg_load_latency                            0
fpss_occupancy                              0.2182
fpss_fpu_occupancy                          0.1864
fpss_fpu_rel_occupancy                      0.8544
cycles                                         472
total_ipc                                   0.6864

Performance metrics for section 2 @ (5269, 11131):
snitch_stores                                  171
snitch_loads                                   178
fpss_loads                                      13
fpss_stores                                      4
snitch_avg_load_latency                     9.7079
snitch_occupancy                            0.2966
snitch_fseq_rel_offloads                    0.0208
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.5455
fpss_avg_load_latency                       5.9231
fpss_occupancy                              0.0063
fpss_fpu_occupancy                          0.0056
fpss_fpu_rel_occupancy                      0.8919
cycles                                        5863
total_ipc                                   0.3029
