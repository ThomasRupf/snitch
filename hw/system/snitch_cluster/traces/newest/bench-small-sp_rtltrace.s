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
       0      551        M 0x80002828 addi    t0, t0, 1964           #; t0  = 0x80002824, (wrb) t0  <-- 0x80002fd0
       0      552        M 0x8000282c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000282c
       0      562        M 0x80002830 addi    t1, t1, 1960           #; t1  = 0x8000282c, (wrb) t1  <-- 0x80002fd4
       0      563        M 0x80002834 bge     t0, t1, pc + 16        #; t0  = 0x80002fd0, t1  = 0x80002fd4, not taken
       0      564        M 0x80002838 sw      zero, 0(t0)            #; t0  = 0x80002fd0, 0 ~~> Word[0x80002fd0]
       0      565        M 0x8000283c addi    t0, t0, 4              #; t0  = 0x80002fd0, (wrb) t0  <-- 0x80002fd4
       0      573        M 0x80002840 blt     t0, t1, pc - 8         #; t0  = 0x80002fd4, t1  = 0x80002fd4, not taken
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
       0      877        M 0x800029a8 jalr    ra, ra, -1056          #; ra  = 0x800029a4, (wrb) ra  <-- 0x800029ac, goto 0x80002584
       0      899        M 0x80002584 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002588 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x8000258c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002590 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002594 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002598 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x8000259c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800025a0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800025a4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800025a8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800025ac csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800025b0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800025b4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800025b8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800025bc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x800025c0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800025c4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800025c8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800025cc lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800025d0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800025d4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800025d8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800025dc lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800025e0 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x800025e4 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x800025e8 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x800025ec sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x800025f0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x800025f4 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x800025f8 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x800025fc lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002600 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002604 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002608 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000260c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002610 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002614 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002618 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x8000261c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002620 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002624 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002628 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x8000262c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002630 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002634 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002638 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x8000263c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002640 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002644 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002648 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x8000264c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002650 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002654 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002658 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x8000265c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002660 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002664 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x8000266c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002670 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002674 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002678 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003678
       0     1273        M 0x8000267c addi    a1, a1, -1700          #; a1  = 0x80003678, (wrb) a1  <-- 0x80002fd4
       0     1282        M 0x80002680 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002fd4, (wrb) a0  <-- 0x80002fd4
       0     1283        M 0x80002684 sw      zero, 0(a0)            #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
       0     1284        M 0x80002688 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x8000268c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002690 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002694 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002698 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x8000269c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x800026a0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x800026a4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x800026a8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x800026ac sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x800026b0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x800026b4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800026b8 lw      a0, 0(a1)              #; a1  = 0x80002fd4, a0  <~~ Word[0x80002fd4]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800026bc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800026c0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800026c4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800026c8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x800026cc sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x800026d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x800026d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x800026d8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x800026dc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x800026e0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x800026e4 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x800026e8 ret                            #; ra  = 0x800029ac, goto 0x800029ac
       0     1406        M 0x800029ac lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x800029b0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x800029b4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x800029b8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x800029bc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x800029c0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x800029c4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029c4
       0     1425        M 0x800029c8 addi    t0, t0, 60             #; t0  = 0x800029c4, (wrb) t0  <-- 0x80002a00
       0     1426        M 0x800029cc csrw    mtvec, t0              #; t0  = 0x80002a00, (lsu) a4  <-- 4132
       0     1434        M 0x800029d0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d0
       0     1435        M 0x800029d4 jalr    ra, ra, 544            #; ra  = 0x800029d0, (wrb) ra  <-- 0x800029d8, goto 0x80002bf0
       0     1451        M 0x80002bf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002bf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029d8 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
       0     1454        M 0x80002bfc jalr    ra, ra, -1260          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x8000270c
       0     1472        M 0x8000270c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002710 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002714 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x8000271c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002720 ret                            #; ra  = 0x80002c00, goto 0x80002c00
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002c00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002c04 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002c08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002c0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x800029d8
       0     1533        M 0x80002c10 ret                            #; ra  = 0x800029d8, goto 0x800029d8
       0     1537        M 0x800029d8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009d8
       0     1538        M 0x800029dc jalr    ra, ra, -932           #; ra  = 0x800009d8, (wrb) ra  <-- 0x800029e0, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029e0 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1549        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1559        M 0x80000650 bnez    a1, pc + 720           #; a1  = 0, not taken
       0     1560        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1561        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1562        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1565        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1571        M 0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1574        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1575        M 0x80000664 lw      t1, 88(a2)             #; a2  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
       0     1578        M                                           #; (lsu) t1  <-- 0x00100000
       0     1579        M 0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1582        M                                           #; (lsu) a1  <-- 0x00100000
       0     1583        M 0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1586        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1587        M 0x80000670 addi    a4, t1, 800            #; t1  = 0x00100000, (wrb) a4  <-- 0x00100320
       0     1588        M 0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1589        M 0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000690
       0     1623        M 0x80000690 mv      t0, t1                 #; t1  = 0x00100000, (wrb) t0  <-- 0x00100000
       0     1624        M 0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1625        M 0x80000698 addi    a1, t1, 1600           #; t1  = 0x00100000, (wrb) a1  <-- 0x00100640
       0     1626        M 0x8000069c mv      t1, a4                 #; a4  = 0x00100320, (wrb) t1  <-- 0x00100320
       0     1635        M 0x800006a0 bgeu    a3, a1, pc - 24        #; a3  = 0x0011df30, a1  = 0x00100640, taken, goto 0x80000688
       0     1636        M 0x80000688 sw      a1, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1637        M 0x8000068c j       pc + 0x1c              #; goto 0x800006a8
       0     1638        M 0x800006a8 srli    a1, t0, 20             #; t0  = 0x00100000, (wrb) a1  <-- 1
       0     1639        M 0x800006ac snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1650        M 0x800006b0 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1651        M 0x800006b4 addi    a2, a2, -791           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fce9
       0     1652        M 0x800006b8 sltu    a2, t0, a2             #; t0  = 0x00100000, a2  = 0x0011fce9, (wrb) a2  <-- 1
       0     1653        M 0x800006bc and     a6, a1, a2             #; a1  = 1, a2  = 1, (wrb) a6  <-- 1
       0     1662        M 0x800006c0 beqz    a6, pc + 108           #; a6  = 1, not taken
       0     1663        M 0x800006c4 li      a3, 0                  #; (wrb) a3  <-- 0
       0     1664        M 0x800006c8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1665        M 0x800006cc li      a2, 99                 #; (wrb) a2  <-- 99
       0     1674        M 0x800006d0 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1675        M 0x800006d4 scfgw   a2, a4                 #; a2  = 99, a4  = 64
       0     1676        M 0x800006d8 li      a2, 192                #; (wrb) a2  <-- 192
       0     1677        M 0x800006dc scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     1686        M 0x800006e0 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1687        M 0x800006e4 scfgw   zero, a1               #; a1  = 32
       0     1688        M 0x800006e8 scfgwi  t0, 896                #; t0  = 0x00100000
       0     1690        M 0x800006ec csrrsi  a1, ssr, 1             #; 
       0     1698        M 0x800006f0 li      a4, 100                #; (wrb) a4  <-- 100
       0     1699        M 0x800006f4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     1700        M 0x800006f8 addi    a5, a1, -819           #; a1  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
       0     1701        M 0x800006fc li      a2, 10                 #; (wrb) a2  <-- 10
       0     1710        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 0, a5  = 0xcccccccd
       0     1713        M                                           #; (acc) a0  <-- 0x00355513
       0     1714        M 0x80000704 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     1715        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1718        M                                           #; (acc) a0  <-- 0x40a68533
       0     1719        M 0x8000070c sub     a0, a3, a0             #; a3  = 0, a0  = 0, (wrb) a0  <-- 0
       0     1723        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     1724        M 0x80000718 addi    a4, a4, -1             #; a4  = 100, (wrb) a4  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1725        M 0x8000071c addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1726        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1734        M 0x80000720 bnez    a4, pc - 32            #; a4  = 99, taken, goto 0x80000700
       0     1735        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 1, a5  = 0xcccccccd
       0     1738        M                                           #; (acc) a0  <-- 0x00355513
       0     1739        M 0x80000704 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     1740        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1743        M                                           #; (acc) a0  <-- 0x40a68533
       0     1744        M 0x8000070c sub     a0, a3, a0             #; a3  = 1, a0  = 0, (wrb) a0  <-- 1
       0     1746        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     1747        M 0x80000718 addi    a4, a4, -1             #; a4  = 99, (wrb) a4  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1748        M 0x8000071c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1749        M 0x80000720 bnez    a4, pc - 32            #; a4  = 98, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1750        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 2, a5  = 0xcccccccd
       0     1753        M                                           #; (acc) a0  <-- 0x00355513
       0     1754        M 0x80000704 srli    a0, a0, 3              #; a0  = 1, (wrb) a0  <-- 0
       0     1755        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1758        M                                           #; (acc) a0  <-- 0x40a68533
       0     1759        M 0x8000070c sub     a0, a3, a0             #; a3  = 2, a0  = 0, (wrb) a0  <-- 2
       0     1761        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     1762        M 0x80000718 addi    a4, a4, -1             #; a4  = 98, (wrb) a4  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1763        M 0x8000071c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1764        M 0x80000720 bnez    a4, pc - 32            #; a4  = 97, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1765        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 3, a5  = 0xcccccccd
       0     1768        M                                           #; (acc) a0  <-- 0x00355513
       0     1769        M 0x80000704 srli    a0, a0, 3              #; a0  = 2, (wrb) a0  <-- 0
       0     1770        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1773        M                                           #; (acc) a0  <-- 0x40a68533
       0     1774        M 0x8000070c sub     a0, a3, a0             #; a3  = 3, a0  = 0, (wrb) a0  <-- 3
       0     1776        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     1777        M 0x80000718 addi    a4, a4, -1             #; a4  = 97, (wrb) a4  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1778        M 0x8000071c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1779        M 0x80000720 bnez    a4, pc - 32            #; a4  = 96, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1780        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 4, a5  = 0xcccccccd
       0     1783        M                                           #; (acc) a0  <-- 0x00355513
       0     1784        M 0x80000704 srli    a0, a0, 3              #; a0  = 3, (wrb) a0  <-- 0
       0     1785        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1788        M                                           #; (acc) a0  <-- 0x40a68533
       0     1789        M 0x8000070c sub     a0, a3, a0             #; a3  = 4, a0  = 0, (wrb) a0  <-- 4
       0     1791        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     1792        M 0x80000718 addi    a4, a4, -1             #; a4  = 96, (wrb) a4  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1793        M 0x8000071c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1794        M 0x80000720 bnez    a4, pc - 32            #; a4  = 95, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1795        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 5, a5  = 0xcccccccd
       0     1798        M                                           #; (acc) a0  <-- 0x00355513
       0     1799        M 0x80000704 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     1800        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1803        M                                           #; (acc) a0  <-- 0x40a68533
       0     1804        M 0x8000070c sub     a0, a3, a0             #; a3  = 5, a0  = 0, (wrb) a0  <-- 5
       0     1806        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     1807        M 0x80000718 addi    a4, a4, -1             #; a4  = 95, (wrb) a4  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1808        M 0x8000071c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1809        M 0x80000720 bnez    a4, pc - 32            #; a4  = 94, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1810        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 6, a5  = 0xcccccccd
       0     1813        M                                           #; (acc) a0  <-- 0x00355513
       0     1814        M 0x80000704 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     1815        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1818        M                                           #; (acc) a0  <-- 0x40a68533
       0     1819        M 0x8000070c sub     a0, a3, a0             #; a3  = 6, a0  = 0, (wrb) a0  <-- 6
       0     1821        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     1822        M 0x80000718 addi    a4, a4, -1             #; a4  = 94, (wrb) a4  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1823        M 0x8000071c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1824        M 0x80000720 bnez    a4, pc - 32            #; a4  = 93, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1825        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 7, a5  = 0xcccccccd
       0     1828        M                                           #; (acc) a0  <-- 0x00355513
       0     1829        M 0x80000704 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     1830        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1833        M                                           #; (acc) a0  <-- 0x40a68533
       0     1834        M 0x8000070c sub     a0, a3, a0             #; a3  = 7, a0  = 0, (wrb) a0  <-- 7
       0     1836        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     1837        M 0x80000718 addi    a4, a4, -1             #; a4  = 93, (wrb) a4  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1838        M 0x8000071c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1839        M 0x80000720 bnez    a4, pc - 32            #; a4  = 92, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1840        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 8, a5  = 0xcccccccd
       0     1843        M                                           #; (acc) a0  <-- 0x00355513
       0     1844        M 0x80000704 srli    a0, a0, 3              #; a0  = 6, (wrb) a0  <-- 0
       0     1845        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1848        M                                           #; (acc) a0  <-- 0x40a68533
       0     1849        M 0x8000070c sub     a0, a3, a0             #; a3  = 8, a0  = 0, (wrb) a0  <-- 8
       0     1851        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     1852        M 0x80000718 addi    a4, a4, -1             #; a4  = 92, (wrb) a4  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1853        M 0x8000071c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1854        M 0x80000720 bnez    a4, pc - 32            #; a4  = 91, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     1855        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 9, a5  = 0xcccccccd
       0     1858        M                                           #; (acc) a0  <-- 0x00355513
       0     1859        M 0x80000704 srli    a0, a0, 3              #; a0  = 7, (wrb) a0  <-- 0
       0     1860        M 0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
       0     1863        M                                           #; (acc) a0  <-- 0x40a68533
       0     1864        M 0x8000070c sub     a0, a3, a0             #; a3  = 9, a0  = 0, (wrb) a0  <-- 9
       0     1866        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     1867        M 0x80000718 addi    a4, a4, -1             #; a4  = 91, (wrb) a4  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1868        M 0x8000071c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1869        M 0x80000720 bnez    a4, pc - 32            #; a4  = 90, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     1870        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 10, a5  = 0xcccccccd
       0     1873        M                                           #; (acc) a0  <-- 0x00355513
       0     1874        M 0x80000704 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     1875        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1878        M                                           #; (acc) a0  <-- 0x40a68533
       0     1879        M 0x8000070c sub     a0, a3, a0             #; a3  = 10, a0  = 10, (wrb) a0  <-- 0
       0     1881        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     1882        M 0x80000718 addi    a4, a4, -1             #; a4  = 90, (wrb) a4  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1883        M 0x8000071c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1884        M 0x80000720 bnez    a4, pc - 32            #; a4  = 89, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1885        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 11, a5  = 0xcccccccd
       0     1888        M                                           #; (acc) a0  <-- 0x00355513
       0     1889        M 0x80000704 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     1890        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1893        M                                           #; (acc) a0  <-- 0x40a68533
       0     1894        M 0x8000070c sub     a0, a3, a0             #; a3  = 11, a0  = 10, (wrb) a0  <-- 1
       0     1896        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     1897        M 0x80000718 addi    a4, a4, -1             #; a4  = 89, (wrb) a4  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1898        M 0x8000071c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1899        M 0x80000720 bnez    a4, pc - 32            #; a4  = 88, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1900        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 12, a5  = 0xcccccccd
       0     1903        M                                           #; (acc) a0  <-- 0x00355513
       0     1904        M 0x80000704 srli    a0, a0, 3              #; a0  = 9, (wrb) a0  <-- 1
       0     1905        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1908        M                                           #; (acc) a0  <-- 0x40a68533
       0     1909        M 0x8000070c sub     a0, a3, a0             #; a3  = 12, a0  = 10, (wrb) a0  <-- 2
       0     1911        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     1912        M 0x80000718 addi    a4, a4, -1             #; a4  = 88, (wrb) a4  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1913        M 0x8000071c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1914        M 0x80000720 bnez    a4, pc - 32            #; a4  = 87, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1915        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 13, a5  = 0xcccccccd
       0     1918        M                                           #; (acc) a0  <-- 0x00355513
       0     1919        M 0x80000704 srli    a0, a0, 3              #; a0  = 10, (wrb) a0  <-- 1
       0     1920        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1923        M                                           #; (acc) a0  <-- 0x40a68533
       0     1924        M 0x8000070c sub     a0, a3, a0             #; a3  = 13, a0  = 10, (wrb) a0  <-- 3
       0     1926        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     1927        M 0x80000718 addi    a4, a4, -1             #; a4  = 87, (wrb) a4  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1928        M 0x8000071c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1929        M 0x80000720 bnez    a4, pc - 32            #; a4  = 86, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1930        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 14, a5  = 0xcccccccd
       0     1933        M                                           #; (acc) a0  <-- 0x00355513
       0     1934        M 0x80000704 srli    a0, a0, 3              #; a0  = 11, (wrb) a0  <-- 1
       0     1935        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1938        M                                           #; (acc) a0  <-- 0x40a68533
       0     1939        M 0x8000070c sub     a0, a3, a0             #; a3  = 14, a0  = 10, (wrb) a0  <-- 4
       0     1941        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     1942        M 0x80000718 addi    a4, a4, -1             #; a4  = 86, (wrb) a4  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1943        M 0x8000071c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1944        M 0x80000720 bnez    a4, pc - 32            #; a4  = 85, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1945        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 15, a5  = 0xcccccccd
       0     1948        M                                           #; (acc) a0  <-- 0x00355513
       0     1949        M 0x80000704 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     1950        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1953        M                                           #; (acc) a0  <-- 0x40a68533
       0     1954        M 0x8000070c sub     a0, a3, a0             #; a3  = 15, a0  = 10, (wrb) a0  <-- 5
       0     1956        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     1957        M 0x80000718 addi    a4, a4, -1             #; a4  = 85, (wrb) a4  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1958        M 0x8000071c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1959        M 0x80000720 bnez    a4, pc - 32            #; a4  = 84, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1960        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 16, a5  = 0xcccccccd
       0     1963        M                                           #; (acc) a0  <-- 0x00355513
       0     1964        M 0x80000704 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     1965        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1968        M                                           #; (acc) a0  <-- 0x40a68533
       0     1969        M 0x8000070c sub     a0, a3, a0             #; a3  = 16, a0  = 10, (wrb) a0  <-- 6
       0     1971        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     1972        M 0x80000718 addi    a4, a4, -1             #; a4  = 84, (wrb) a4  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1973        M 0x8000071c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1974        M 0x80000720 bnez    a4, pc - 32            #; a4  = 83, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1975        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 17, a5  = 0xcccccccd
       0     1978        M                                           #; (acc) a0  <-- 0x00355513
       0     1979        M 0x80000704 srli    a0, a0, 3              #; a0  = 13, (wrb) a0  <-- 1
       0     1980        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1983        M                                           #; (acc) a0  <-- 0x40a68533
       0     1984        M 0x8000070c sub     a0, a3, a0             #; a3  = 17, a0  = 10, (wrb) a0  <-- 7
       0     1986        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     1987        M 0x80000718 addi    a4, a4, -1             #; a4  = 83, (wrb) a4  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1988        M 0x8000071c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1989        M 0x80000720 bnez    a4, pc - 32            #; a4  = 82, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1990        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 18, a5  = 0xcccccccd
       0     1993        M                                           #; (acc) a0  <-- 0x00355513
       0     1994        M 0x80000704 srli    a0, a0, 3              #; a0  = 14, (wrb) a0  <-- 1
       0     1995        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     1998        M                                           #; (acc) a0  <-- 0x40a68533
       0     1999        M 0x8000070c sub     a0, a3, a0             #; a3  = 18, a0  = 10, (wrb) a0  <-- 8
       0     2001        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2002        M 0x80000718 addi    a4, a4, -1             #; a4  = 82, (wrb) a4  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2003        M 0x8000071c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2004        M 0x80000720 bnez    a4, pc - 32            #; a4  = 81, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2005        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 19, a5  = 0xcccccccd
       0     2008        M                                           #; (acc) a0  <-- 0x00355513
       0     2009        M 0x80000704 srli    a0, a0, 3              #; a0  = 15, (wrb) a0  <-- 1
       0     2010        M 0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
       0     2013        M                                           #; (acc) a0  <-- 0x40a68533
       0     2014        M 0x8000070c sub     a0, a3, a0             #; a3  = 19, a0  = 10, (wrb) a0  <-- 9
       0     2016        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2017        M 0x80000718 addi    a4, a4, -1             #; a4  = 81, (wrb) a4  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2018        M 0x8000071c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2019        M 0x80000720 bnez    a4, pc - 32            #; a4  = 80, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2020        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 20, a5  = 0xcccccccd
       0     2023        M                                           #; (acc) a0  <-- 0x00355513
       0     2024        M 0x80000704 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     2025        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2028        M                                           #; (acc) a0  <-- 0x40a68533
       0     2029        M 0x8000070c sub     a0, a3, a0             #; a3  = 20, a0  = 20, (wrb) a0  <-- 0
       0     2031        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2032        M 0x80000718 addi    a4, a4, -1             #; a4  = 80, (wrb) a4  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2033        M 0x8000071c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2034        M 0x80000720 bnez    a4, pc - 32            #; a4  = 79, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2035        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 21, a5  = 0xcccccccd
       0     2038        M                                           #; (acc) a0  <-- 0x00355513
       0     2039        M 0x80000704 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     2040        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2043        M                                           #; (acc) a0  <-- 0x40a68533
       0     2044        M 0x8000070c sub     a0, a3, a0             #; a3  = 21, a0  = 20, (wrb) a0  <-- 1
       0     2046        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2047        M 0x80000718 addi    a4, a4, -1             #; a4  = 79, (wrb) a4  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2048        M 0x8000071c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2049        M 0x80000720 bnez    a4, pc - 32            #; a4  = 78, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2050        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 22, a5  = 0xcccccccd
       0     2053        M                                           #; (acc) a0  <-- 0x00355513
       0     2054        M 0x80000704 srli    a0, a0, 3              #; a0  = 17, (wrb) a0  <-- 2
       0     2055        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2058        M                                           #; (acc) a0  <-- 0x40a68533
       0     2059        M 0x8000070c sub     a0, a3, a0             #; a3  = 22, a0  = 20, (wrb) a0  <-- 2
       0     2061        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2062        M 0x80000718 addi    a4, a4, -1             #; a4  = 78, (wrb) a4  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2063        M 0x8000071c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2064        M 0x80000720 bnez    a4, pc - 32            #; a4  = 77, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2065        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 23, a5  = 0xcccccccd
       0     2068        M                                           #; (acc) a0  <-- 0x00355513
       0     2069        M 0x80000704 srli    a0, a0, 3              #; a0  = 18, (wrb) a0  <-- 2
       0     2070        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2073        M                                           #; (acc) a0  <-- 0x40a68533
       0     2074        M 0x8000070c sub     a0, a3, a0             #; a3  = 23, a0  = 20, (wrb) a0  <-- 3
       0     2076        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2077        M 0x80000718 addi    a4, a4, -1             #; a4  = 77, (wrb) a4  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2078        M 0x8000071c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2079        M 0x80000720 bnez    a4, pc - 32            #; a4  = 76, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2080        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 24, a5  = 0xcccccccd
       0     2083        M                                           #; (acc) a0  <-- 0x00355513
       0     2084        M 0x80000704 srli    a0, a0, 3              #; a0  = 19, (wrb) a0  <-- 2
       0     2085        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2088        M                                           #; (acc) a0  <-- 0x40a68533
       0     2089        M 0x8000070c sub     a0, a3, a0             #; a3  = 24, a0  = 20, (wrb) a0  <-- 4
       0     2091        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2092        M 0x80000718 addi    a4, a4, -1             #; a4  = 76, (wrb) a4  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2093        M 0x8000071c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2094        M 0x80000720 bnez    a4, pc - 32            #; a4  = 75, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2095        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 25, a5  = 0xcccccccd
       0     2098        M                                           #; (acc) a0  <-- 0x00355513
       0     2099        M 0x80000704 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     2100        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2103        M                                           #; (acc) a0  <-- 0x40a68533
       0     2104        M 0x8000070c sub     a0, a3, a0             #; a3  = 25, a0  = 20, (wrb) a0  <-- 5
       0     2106        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2107        M 0x80000718 addi    a4, a4, -1             #; a4  = 75, (wrb) a4  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2108        M 0x8000071c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2109        M 0x80000720 bnez    a4, pc - 32            #; a4  = 74, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2110        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 26, a5  = 0xcccccccd
       0     2113        M                                           #; (acc) a0  <-- 0x00355513
       0     2114        M 0x80000704 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     2115        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2118        M                                           #; (acc) a0  <-- 0x40a68533
       0     2119        M 0x8000070c sub     a0, a3, a0             #; a3  = 26, a0  = 20, (wrb) a0  <-- 6
       0     2121        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2122        M 0x80000718 addi    a4, a4, -1             #; a4  = 74, (wrb) a4  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2123        M 0x8000071c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2124        M 0x80000720 bnez    a4, pc - 32            #; a4  = 73, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2125        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 27, a5  = 0xcccccccd
       0     2128        M                                           #; (acc) a0  <-- 0x00355513
       0     2129        M 0x80000704 srli    a0, a0, 3              #; a0  = 21, (wrb) a0  <-- 2
       0     2130        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2133        M                                           #; (acc) a0  <-- 0x40a68533
       0     2134        M 0x8000070c sub     a0, a3, a0             #; a3  = 27, a0  = 20, (wrb) a0  <-- 7
       0     2136        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2137        M 0x80000718 addi    a4, a4, -1             #; a4  = 73, (wrb) a4  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2138        M 0x8000071c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2139        M 0x80000720 bnez    a4, pc - 32            #; a4  = 72, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2140        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 28, a5  = 0xcccccccd
       0     2143        M                                           #; (acc) a0  <-- 0x00355513
       0     2144        M 0x80000704 srli    a0, a0, 3              #; a0  = 22, (wrb) a0  <-- 2
       0     2145        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2148        M                                           #; (acc) a0  <-- 0x40a68533
       0     2149        M 0x8000070c sub     a0, a3, a0             #; a3  = 28, a0  = 20, (wrb) a0  <-- 8
       0     2151        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2152        M 0x80000718 addi    a4, a4, -1             #; a4  = 72, (wrb) a4  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2153        M 0x8000071c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2154        M 0x80000720 bnez    a4, pc - 32            #; a4  = 71, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2155        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 29, a5  = 0xcccccccd
       0     2158        M                                           #; (acc) a0  <-- 0x00355513
       0     2159        M 0x80000704 srli    a0, a0, 3              #; a0  = 23, (wrb) a0  <-- 2
       0     2160        M 0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
       0     2163        M                                           #; (acc) a0  <-- 0x40a68533
       0     2164        M 0x8000070c sub     a0, a3, a0             #; a3  = 29, a0  = 20, (wrb) a0  <-- 9
       0     2166        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2167        M 0x80000718 addi    a4, a4, -1             #; a4  = 71, (wrb) a4  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2168        M 0x8000071c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2169        M 0x80000720 bnez    a4, pc - 32            #; a4  = 70, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2170        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 30, a5  = 0xcccccccd
       0     2173        M                                           #; (acc) a0  <-- 0x00355513
       0     2174        M 0x80000704 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     2175        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2178        M                                           #; (acc) a0  <-- 0x40a68533
       0     2179        M 0x8000070c sub     a0, a3, a0             #; a3  = 30, a0  = 30, (wrb) a0  <-- 0
       0     2181        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2182        M 0x80000718 addi    a4, a4, -1             #; a4  = 70, (wrb) a4  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2183        M 0x8000071c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2184        M 0x80000720 bnez    a4, pc - 32            #; a4  = 69, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2185        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 31, a5  = 0xcccccccd
       0     2188        M                                           #; (acc) a0  <-- 0x00355513
       0     2189        M 0x80000704 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     2190        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2193        M                                           #; (acc) a0  <-- 0x40a68533
       0     2194        M 0x8000070c sub     a0, a3, a0             #; a3  = 31, a0  = 30, (wrb) a0  <-- 1
       0     2196        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2197        M 0x80000718 addi    a4, a4, -1             #; a4  = 69, (wrb) a4  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2198        M 0x8000071c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2199        M 0x80000720 bnez    a4, pc - 32            #; a4  = 68, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2200        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 32, a5  = 0xcccccccd
       0     2203        M                                           #; (acc) a0  <-- 0x00355513
       0     2204        M 0x80000704 srli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 3
       0     2205        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2208        M                                           #; (acc) a0  <-- 0x40a68533
       0     2209        M 0x8000070c sub     a0, a3, a0             #; a3  = 32, a0  = 30, (wrb) a0  <-- 2
       0     2211        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2212        M 0x80000718 addi    a4, a4, -1             #; a4  = 68, (wrb) a4  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2213        M 0x8000071c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2214        M 0x80000720 bnez    a4, pc - 32            #; a4  = 67, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2215        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 33, a5  = 0xcccccccd
       0     2218        M                                           #; (acc) a0  <-- 0x00355513
       0     2219        M 0x80000704 srli    a0, a0, 3              #; a0  = 26, (wrb) a0  <-- 3
       0     2220        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2223        M                                           #; (acc) a0  <-- 0x40a68533
       0     2224        M 0x8000070c sub     a0, a3, a0             #; a3  = 33, a0  = 30, (wrb) a0  <-- 3
       0     2226        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2227        M 0x80000718 addi    a4, a4, -1             #; a4  = 67, (wrb) a4  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2228        M 0x8000071c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2229        M 0x80000720 bnez    a4, pc - 32            #; a4  = 66, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2230        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 34, a5  = 0xcccccccd
       0     2233        M                                           #; (acc) a0  <-- 0x00355513
       0     2234        M 0x80000704 srli    a0, a0, 3              #; a0  = 27, (wrb) a0  <-- 3
       0     2235        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2238        M                                           #; (acc) a0  <-- 0x40a68533
       0     2239        M 0x8000070c sub     a0, a3, a0             #; a3  = 34, a0  = 30, (wrb) a0  <-- 4
       0     2241        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2242        M 0x80000718 addi    a4, a4, -1             #; a4  = 66, (wrb) a4  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2243        M 0x8000071c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2244        M 0x80000720 bnez    a4, pc - 32            #; a4  = 65, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2245        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 35, a5  = 0xcccccccd
       0     2248        M                                           #; (acc) a0  <-- 0x00355513
       0     2249        M 0x80000704 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     2250        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2253        M                                           #; (acc) a0  <-- 0x40a68533
       0     2254        M 0x8000070c sub     a0, a3, a0             #; a3  = 35, a0  = 30, (wrb) a0  <-- 5
       0     2256        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2257        M 0x80000718 addi    a4, a4, -1             #; a4  = 65, (wrb) a4  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2258        M 0x8000071c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2259        M 0x80000720 bnez    a4, pc - 32            #; a4  = 64, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2260        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 36, a5  = 0xcccccccd
       0     2263        M                                           #; (acc) a0  <-- 0x00355513
       0     2264        M 0x80000704 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     2265        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2268        M                                           #; (acc) a0  <-- 0x40a68533
       0     2269        M 0x8000070c sub     a0, a3, a0             #; a3  = 36, a0  = 30, (wrb) a0  <-- 6
       0     2271        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2272        M 0x80000718 addi    a4, a4, -1             #; a4  = 64, (wrb) a4  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2273        M 0x8000071c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2274        M 0x80000720 bnez    a4, pc - 32            #; a4  = 63, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2275        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 37, a5  = 0xcccccccd
       0     2278        M                                           #; (acc) a0  <-- 0x00355513
       0     2279        M 0x80000704 srli    a0, a0, 3              #; a0  = 29, (wrb) a0  <-- 3
       0     2280        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2283        M                                           #; (acc) a0  <-- 0x40a68533
       0     2284        M 0x8000070c sub     a0, a3, a0             #; a3  = 37, a0  = 30, (wrb) a0  <-- 7
       0     2286        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2287        M 0x80000718 addi    a4, a4, -1             #; a4  = 63, (wrb) a4  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2288        M 0x8000071c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2289        M 0x80000720 bnez    a4, pc - 32            #; a4  = 62, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2290        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 38, a5  = 0xcccccccd
       0     2293        M                                           #; (acc) a0  <-- 0x00355513
       0     2294        M 0x80000704 srli    a0, a0, 3              #; a0  = 30, (wrb) a0  <-- 3
       0     2295        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2298        M                                           #; (acc) a0  <-- 0x40a68533
       0     2299        M 0x8000070c sub     a0, a3, a0             #; a3  = 38, a0  = 30, (wrb) a0  <-- 8
       0     2301        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2302        M 0x80000718 addi    a4, a4, -1             #; a4  = 62, (wrb) a4  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2303        M 0x8000071c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2304        M 0x80000720 bnez    a4, pc - 32            #; a4  = 61, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2305        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 39, a5  = 0xcccccccd
       0     2308        M                                           #; (acc) a0  <-- 0x00355513
       0     2309        M 0x80000704 srli    a0, a0, 3              #; a0  = 31, (wrb) a0  <-- 3
       0     2310        M 0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
       0     2313        M                                           #; (acc) a0  <-- 0x40a68533
       0     2314        M 0x8000070c sub     a0, a3, a0             #; a3  = 39, a0  = 30, (wrb) a0  <-- 9
       0     2316        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2317        M 0x80000718 addi    a4, a4, -1             #; a4  = 61, (wrb) a4  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2318        M 0x8000071c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2319        M 0x80000720 bnez    a4, pc - 32            #; a4  = 60, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2320        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 40, a5  = 0xcccccccd
       0     2323        M                                           #; (acc) a0  <-- 0x00355513
       0     2324        M 0x80000704 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     2325        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2328        M                                           #; (acc) a0  <-- 0x40a68533
       0     2329        M 0x8000070c sub     a0, a3, a0             #; a3  = 40, a0  = 40, (wrb) a0  <-- 0
       0     2331        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2332        M 0x80000718 addi    a4, a4, -1             #; a4  = 60, (wrb) a4  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2333        M 0x8000071c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2334        M 0x80000720 bnez    a4, pc - 32            #; a4  = 59, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2335        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 41, a5  = 0xcccccccd
       0     2338        M                                           #; (acc) a0  <-- 0x00355513
       0     2339        M 0x80000704 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     2340        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2343        M                                           #; (acc) a0  <-- 0x40a68533
       0     2344        M 0x8000070c sub     a0, a3, a0             #; a3  = 41, a0  = 40, (wrb) a0  <-- 1
       0     2346        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2347        M 0x80000718 addi    a4, a4, -1             #; a4  = 59, (wrb) a4  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2348        M 0x8000071c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2349        M 0x80000720 bnez    a4, pc - 32            #; a4  = 58, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2350        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 42, a5  = 0xcccccccd
       0     2353        M                                           #; (acc) a0  <-- 0x00355513
       0     2354        M 0x80000704 srli    a0, a0, 3              #; a0  = 33, (wrb) a0  <-- 4
       0     2355        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2358        M                                           #; (acc) a0  <-- 0x40a68533
       0     2359        M 0x8000070c sub     a0, a3, a0             #; a3  = 42, a0  = 40, (wrb) a0  <-- 2
       0     2361        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2362        M 0x80000718 addi    a4, a4, -1             #; a4  = 58, (wrb) a4  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2363        M 0x8000071c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2364        M 0x80000720 bnez    a4, pc - 32            #; a4  = 57, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2365        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 43, a5  = 0xcccccccd
       0     2368        M                                           #; (acc) a0  <-- 0x00355513
       0     2369        M 0x80000704 srli    a0, a0, 3              #; a0  = 34, (wrb) a0  <-- 4
       0     2370        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2373        M                                           #; (acc) a0  <-- 0x40a68533
       0     2374        M 0x8000070c sub     a0, a3, a0             #; a3  = 43, a0  = 40, (wrb) a0  <-- 3
       0     2376        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2377        M 0x80000718 addi    a4, a4, -1             #; a4  = 57, (wrb) a4  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2378        M 0x8000071c addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2379        M 0x80000720 bnez    a4, pc - 32            #; a4  = 56, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2380        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 44, a5  = 0xcccccccd
       0     2383        M                                           #; (acc) a0  <-- 0x00355513
       0     2384        M 0x80000704 srli    a0, a0, 3              #; a0  = 35, (wrb) a0  <-- 4
       0     2385        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2388        M                                           #; (acc) a0  <-- 0x40a68533
       0     2389        M 0x8000070c sub     a0, a3, a0             #; a3  = 44, a0  = 40, (wrb) a0  <-- 4
       0     2391        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2392        M 0x80000718 addi    a4, a4, -1             #; a4  = 56, (wrb) a4  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2393        M 0x8000071c addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2394        M 0x80000720 bnez    a4, pc - 32            #; a4  = 55, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2395        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 45, a5  = 0xcccccccd
       0     2398        M                                           #; (acc) a0  <-- 0x00355513
       0     2399        M 0x80000704 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     2400        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2403        M                                           #; (acc) a0  <-- 0x40a68533
       0     2404        M 0x8000070c sub     a0, a3, a0             #; a3  = 45, a0  = 40, (wrb) a0  <-- 5
       0     2406        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2407        M 0x80000718 addi    a4, a4, -1             #; a4  = 55, (wrb) a4  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2408        M 0x8000071c addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2409        M 0x80000720 bnez    a4, pc - 32            #; a4  = 54, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2410        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 46, a5  = 0xcccccccd
       0     2413        M                                           #; (acc) a0  <-- 0x00355513
       0     2414        M 0x80000704 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     2415        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2418        M                                           #; (acc) a0  <-- 0x40a68533
       0     2419        M 0x8000070c sub     a0, a3, a0             #; a3  = 46, a0  = 40, (wrb) a0  <-- 6
       0     2421        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2422        M 0x80000718 addi    a4, a4, -1             #; a4  = 54, (wrb) a4  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2423        M 0x8000071c addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2424        M 0x80000720 bnez    a4, pc - 32            #; a4  = 53, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2425        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 47, a5  = 0xcccccccd
       0     2428        M                                           #; (acc) a0  <-- 0x00355513
       0     2429        M 0x80000704 srli    a0, a0, 3              #; a0  = 37, (wrb) a0  <-- 4
       0     2430        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2433        M                                           #; (acc) a0  <-- 0x40a68533
       0     2434        M 0x8000070c sub     a0, a3, a0             #; a3  = 47, a0  = 40, (wrb) a0  <-- 7
       0     2436        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2437        M 0x80000718 addi    a4, a4, -1             #; a4  = 53, (wrb) a4  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2438        M 0x8000071c addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2439        M 0x80000720 bnez    a4, pc - 32            #; a4  = 52, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2440        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 48, a5  = 0xcccccccd
       0     2443        M                                           #; (acc) a0  <-- 0x00355513
       0     2444        M 0x80000704 srli    a0, a0, 3              #; a0  = 38, (wrb) a0  <-- 4
       0     2445        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2448        M                                           #; (acc) a0  <-- 0x40a68533
       0     2449        M 0x8000070c sub     a0, a3, a0             #; a3  = 48, a0  = 40, (wrb) a0  <-- 8
       0     2451        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2452        M 0x80000718 addi    a4, a4, -1             #; a4  = 52, (wrb) a4  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2453        M 0x8000071c addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2454        M 0x80000720 bnez    a4, pc - 32            #; a4  = 51, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2455        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 49, a5  = 0xcccccccd
       0     2458        M                                           #; (acc) a0  <-- 0x00355513
       0     2459        M 0x80000704 srli    a0, a0, 3              #; a0  = 39, (wrb) a0  <-- 4
       0     2460        M 0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
       0     2463        M                                           #; (acc) a0  <-- 0x40a68533
       0     2464        M 0x8000070c sub     a0, a3, a0             #; a3  = 49, a0  = 40, (wrb) a0  <-- 9
       0     2466        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2467        M 0x80000718 addi    a4, a4, -1             #; a4  = 51, (wrb) a4  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2468        M 0x8000071c addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2469        M 0x80000720 bnez    a4, pc - 32            #; a4  = 50, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2470        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 50, a5  = 0xcccccccd
       0     2473        M                                           #; (acc) a0  <-- 0x00355513
       0     2474        M 0x80000704 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     2475        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2478        M                                           #; (acc) a0  <-- 0x40a68533
       0     2479        M 0x8000070c sub     a0, a3, a0             #; a3  = 50, a0  = 50, (wrb) a0  <-- 0
       0     2481        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2482        M 0x80000718 addi    a4, a4, -1             #; a4  = 50, (wrb) a4  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2483        M 0x8000071c addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2484        M 0x80000720 bnez    a4, pc - 32            #; a4  = 49, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2485        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 51, a5  = 0xcccccccd
       0     2488        M                                           #; (acc) a0  <-- 0x00355513
       0     2489        M 0x80000704 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     2490        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2493        M                                           #; (acc) a0  <-- 0x40a68533
       0     2494        M 0x8000070c sub     a0, a3, a0             #; a3  = 51, a0  = 50, (wrb) a0  <-- 1
       0     2496        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2497        M 0x80000718 addi    a4, a4, -1             #; a4  = 49, (wrb) a4  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2498        M 0x8000071c addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2499        M 0x80000720 bnez    a4, pc - 32            #; a4  = 48, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2500        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 52, a5  = 0xcccccccd
       0     2503        M                                           #; (acc) a0  <-- 0x00355513
       0     2504        M 0x80000704 srli    a0, a0, 3              #; a0  = 41, (wrb) a0  <-- 5
       0     2505        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2508        M                                           #; (acc) a0  <-- 0x40a68533
       0     2509        M 0x8000070c sub     a0, a3, a0             #; a3  = 52, a0  = 50, (wrb) a0  <-- 2
       0     2511        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2512        M 0x80000718 addi    a4, a4, -1             #; a4  = 48, (wrb) a4  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2513        M 0x8000071c addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2514        M 0x80000720 bnez    a4, pc - 32            #; a4  = 47, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2515        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 53, a5  = 0xcccccccd
       0     2518        M                                           #; (acc) a0  <-- 0x00355513
       0     2519        M 0x80000704 srli    a0, a0, 3              #; a0  = 42, (wrb) a0  <-- 5
       0     2520        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2523        M                                           #; (acc) a0  <-- 0x40a68533
       0     2524        M 0x8000070c sub     a0, a3, a0             #; a3  = 53, a0  = 50, (wrb) a0  <-- 3
       0     2526        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2527        M 0x80000718 addi    a4, a4, -1             #; a4  = 47, (wrb) a4  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2528        M 0x8000071c addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2529        M 0x80000720 bnez    a4, pc - 32            #; a4  = 46, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2530        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 54, a5  = 0xcccccccd
       0     2533        M                                           #; (acc) a0  <-- 0x00355513
       0     2534        M 0x80000704 srli    a0, a0, 3              #; a0  = 43, (wrb) a0  <-- 5
       0     2535        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2538        M                                           #; (acc) a0  <-- 0x40a68533
       0     2539        M 0x8000070c sub     a0, a3, a0             #; a3  = 54, a0  = 50, (wrb) a0  <-- 4
       0     2541        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2542        M 0x80000718 addi    a4, a4, -1             #; a4  = 46, (wrb) a4  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2543        M 0x8000071c addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2544        M 0x80000720 bnez    a4, pc - 32            #; a4  = 45, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2545        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 55, a5  = 0xcccccccd
       0     2548        M                                           #; (acc) a0  <-- 0x00355513
       0     2549        M 0x80000704 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     2550        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2553        M                                           #; (acc) a0  <-- 0x40a68533
       0     2554        M 0x8000070c sub     a0, a3, a0             #; a3  = 55, a0  = 50, (wrb) a0  <-- 5
       0     2556        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2557        M 0x80000718 addi    a4, a4, -1             #; a4  = 45, (wrb) a4  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2558        M 0x8000071c addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2559        M 0x80000720 bnez    a4, pc - 32            #; a4  = 44, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2560        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 56, a5  = 0xcccccccd
       0     2563        M                                           #; (acc) a0  <-- 0x00355513
       0     2564        M 0x80000704 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     2565        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2568        M                                           #; (acc) a0  <-- 0x40a68533
       0     2569        M 0x8000070c sub     a0, a3, a0             #; a3  = 56, a0  = 50, (wrb) a0  <-- 6
       0     2571        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2572        M 0x80000718 addi    a4, a4, -1             #; a4  = 44, (wrb) a4  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2573        M 0x8000071c addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2574        M 0x80000720 bnez    a4, pc - 32            #; a4  = 43, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2575        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 57, a5  = 0xcccccccd
       0     2578        M                                           #; (acc) a0  <-- 0x00355513
       0     2579        M 0x80000704 srli    a0, a0, 3              #; a0  = 45, (wrb) a0  <-- 5
       0     2580        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2583        M                                           #; (acc) a0  <-- 0x40a68533
       0     2584        M 0x8000070c sub     a0, a3, a0             #; a3  = 57, a0  = 50, (wrb) a0  <-- 7
       0     2586        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2587        M 0x80000718 addi    a4, a4, -1             #; a4  = 43, (wrb) a4  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2588        M 0x8000071c addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2589        M 0x80000720 bnez    a4, pc - 32            #; a4  = 42, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2590        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 58, a5  = 0xcccccccd
       0     2593        M                                           #; (acc) a0  <-- 0x00355513
       0     2594        M 0x80000704 srli    a0, a0, 3              #; a0  = 46, (wrb) a0  <-- 5
       0     2595        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2598        M                                           #; (acc) a0  <-- 0x40a68533
       0     2599        M 0x8000070c sub     a0, a3, a0             #; a3  = 58, a0  = 50, (wrb) a0  <-- 8
       0     2601        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2602        M 0x80000718 addi    a4, a4, -1             #; a4  = 42, (wrb) a4  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2603        M 0x8000071c addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2604        M 0x80000720 bnez    a4, pc - 32            #; a4  = 41, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2605        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 59, a5  = 0xcccccccd
       0     2608        M                                           #; (acc) a0  <-- 0x00355513
       0     2609        M 0x80000704 srli    a0, a0, 3              #; a0  = 47, (wrb) a0  <-- 5
       0     2610        M 0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
       0     2613        M                                           #; (acc) a0  <-- 0x40a68533
       0     2614        M 0x8000070c sub     a0, a3, a0             #; a3  = 59, a0  = 50, (wrb) a0  <-- 9
       0     2616        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2617        M 0x80000718 addi    a4, a4, -1             #; a4  = 41, (wrb) a4  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2618        M 0x8000071c addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2619        M 0x80000720 bnez    a4, pc - 32            #; a4  = 40, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2620        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 60, a5  = 0xcccccccd
       0     2623        M                                           #; (acc) a0  <-- 0x00355513
       0     2624        M 0x80000704 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     2625        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2628        M                                           #; (acc) a0  <-- 0x40a68533
       0     2629        M 0x8000070c sub     a0, a3, a0             #; a3  = 60, a0  = 60, (wrb) a0  <-- 0
       0     2631        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2632        M 0x80000718 addi    a4, a4, -1             #; a4  = 40, (wrb) a4  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2633        M 0x8000071c addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2634        M 0x80000720 bnez    a4, pc - 32            #; a4  = 39, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2635        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 61, a5  = 0xcccccccd
       0     2638        M                                           #; (acc) a0  <-- 0x00355513
       0     2639        M 0x80000704 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     2640        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2643        M                                           #; (acc) a0  <-- 0x40a68533
       0     2644        M 0x8000070c sub     a0, a3, a0             #; a3  = 61, a0  = 60, (wrb) a0  <-- 1
       0     2646        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2647        M 0x80000718 addi    a4, a4, -1             #; a4  = 39, (wrb) a4  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2648        M 0x8000071c addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2649        M 0x80000720 bnez    a4, pc - 32            #; a4  = 38, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2650        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 62, a5  = 0xcccccccd
       0     2653        M                                           #; (acc) a0  <-- 0x00355513
       0     2654        M 0x80000704 srli    a0, a0, 3              #; a0  = 49, (wrb) a0  <-- 6
       0     2655        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2658        M                                           #; (acc) a0  <-- 0x40a68533
       0     2659        M 0x8000070c sub     a0, a3, a0             #; a3  = 62, a0  = 60, (wrb) a0  <-- 2
       0     2661        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2662        M 0x80000718 addi    a4, a4, -1             #; a4  = 38, (wrb) a4  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2663        M 0x8000071c addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2664        M 0x80000720 bnez    a4, pc - 32            #; a4  = 37, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2665        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 63, a5  = 0xcccccccd
       0     2668        M                                           #; (acc) a0  <-- 0x00355513
       0     2669        M 0x80000704 srli    a0, a0, 3              #; a0  = 50, (wrb) a0  <-- 6
       0     2670        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2673        M                                           #; (acc) a0  <-- 0x40a68533
       0     2674        M 0x8000070c sub     a0, a3, a0             #; a3  = 63, a0  = 60, (wrb) a0  <-- 3
       0     2676        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2677        M 0x80000718 addi    a4, a4, -1             #; a4  = 37, (wrb) a4  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2678        M 0x8000071c addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2679        M 0x80000720 bnez    a4, pc - 32            #; a4  = 36, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2680        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 64, a5  = 0xcccccccd
       0     2683        M                                           #; (acc) a0  <-- 0x00355513
       0     2684        M 0x80000704 srli    a0, a0, 3              #; a0  = 51, (wrb) a0  <-- 6
       0     2685        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2688        M                                           #; (acc) a0  <-- 0x40a68533
       0     2689        M 0x8000070c sub     a0, a3, a0             #; a3  = 64, a0  = 60, (wrb) a0  <-- 4
       0     2691        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2692        M 0x80000718 addi    a4, a4, -1             #; a4  = 36, (wrb) a4  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2693        M 0x8000071c addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2694        M 0x80000720 bnez    a4, pc - 32            #; a4  = 35, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2695        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 65, a5  = 0xcccccccd
       0     2698        M                                           #; (acc) a0  <-- 0x00355513
       0     2699        M 0x80000704 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     2700        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2703        M                                           #; (acc) a0  <-- 0x40a68533
       0     2704        M 0x8000070c sub     a0, a3, a0             #; a3  = 65, a0  = 60, (wrb) a0  <-- 5
       0     2706        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2707        M 0x80000718 addi    a4, a4, -1             #; a4  = 35, (wrb) a4  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2708        M 0x8000071c addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2709        M 0x80000720 bnez    a4, pc - 32            #; a4  = 34, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2710        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 66, a5  = 0xcccccccd
       0     2713        M                                           #; (acc) a0  <-- 0x00355513
       0     2714        M 0x80000704 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     2715        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2718        M                                           #; (acc) a0  <-- 0x40a68533
       0     2719        M 0x8000070c sub     a0, a3, a0             #; a3  = 66, a0  = 60, (wrb) a0  <-- 6
       0     2721        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2722        M 0x80000718 addi    a4, a4, -1             #; a4  = 34, (wrb) a4  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2723        M 0x8000071c addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2724        M 0x80000720 bnez    a4, pc - 32            #; a4  = 33, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2725        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 67, a5  = 0xcccccccd
       0     2728        M                                           #; (acc) a0  <-- 0x00355513
       0     2729        M 0x80000704 srli    a0, a0, 3              #; a0  = 53, (wrb) a0  <-- 6
       0     2730        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2733        M                                           #; (acc) a0  <-- 0x40a68533
       0     2734        M 0x8000070c sub     a0, a3, a0             #; a3  = 67, a0  = 60, (wrb) a0  <-- 7
       0     2736        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2737        M 0x80000718 addi    a4, a4, -1             #; a4  = 33, (wrb) a4  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2738        M 0x8000071c addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2739        M 0x80000720 bnez    a4, pc - 32            #; a4  = 32, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2740        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 68, a5  = 0xcccccccd
       0     2743        M                                           #; (acc) a0  <-- 0x00355513
       0     2744        M 0x80000704 srli    a0, a0, 3              #; a0  = 54, (wrb) a0  <-- 6
       0     2745        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2748        M                                           #; (acc) a0  <-- 0x40a68533
       0     2749        M 0x8000070c sub     a0, a3, a0             #; a3  = 68, a0  = 60, (wrb) a0  <-- 8
       0     2751        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2752        M 0x80000718 addi    a4, a4, -1             #; a4  = 32, (wrb) a4  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2753        M 0x8000071c addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2754        M 0x80000720 bnez    a4, pc - 32            #; a4  = 31, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2755        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 69, a5  = 0xcccccccd
       0     2758        M                                           #; (acc) a0  <-- 0x00355513
       0     2759        M 0x80000704 srli    a0, a0, 3              #; a0  = 55, (wrb) a0  <-- 6
       0     2760        M 0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
       0     2763        M                                           #; (acc) a0  <-- 0x40a68533
       0     2764        M 0x8000070c sub     a0, a3, a0             #; a3  = 69, a0  = 60, (wrb) a0  <-- 9
       0     2766        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2767        M 0x80000718 addi    a4, a4, -1             #; a4  = 31, (wrb) a4  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2768        M 0x8000071c addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2769        M 0x80000720 bnez    a4, pc - 32            #; a4  = 30, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2770        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 70, a5  = 0xcccccccd
       0     2773        M                                           #; (acc) a0  <-- 0x00355513
       0     2774        M 0x80000704 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     2775        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2778        M                                           #; (acc) a0  <-- 0x40a68533
       0     2779        M 0x8000070c sub     a0, a3, a0             #; a3  = 70, a0  = 70, (wrb) a0  <-- 0
       0     2781        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2782        M 0x80000718 addi    a4, a4, -1             #; a4  = 30, (wrb) a4  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2783        M 0x8000071c addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2784        M 0x80000720 bnez    a4, pc - 32            #; a4  = 29, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2785        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 71, a5  = 0xcccccccd
       0     2788        M                                           #; (acc) a0  <-- 0x00355513
       0     2789        M 0x80000704 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     2790        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2793        M                                           #; (acc) a0  <-- 0x40a68533
       0     2794        M 0x8000070c sub     a0, a3, a0             #; a3  = 71, a0  = 70, (wrb) a0  <-- 1
       0     2796        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2797        M 0x80000718 addi    a4, a4, -1             #; a4  = 29, (wrb) a4  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2798        M 0x8000071c addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2799        M 0x80000720 bnez    a4, pc - 32            #; a4  = 28, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2800        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 72, a5  = 0xcccccccd
       0     2803        M                                           #; (acc) a0  <-- 0x00355513
       0     2804        M 0x80000704 srli    a0, a0, 3              #; a0  = 57, (wrb) a0  <-- 7
       0     2805        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2808        M                                           #; (acc) a0  <-- 0x40a68533
       0     2809        M 0x8000070c sub     a0, a3, a0             #; a3  = 72, a0  = 70, (wrb) a0  <-- 2
       0     2811        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2812        M 0x80000718 addi    a4, a4, -1             #; a4  = 28, (wrb) a4  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2813        M 0x8000071c addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2814        M 0x80000720 bnez    a4, pc - 32            #; a4  = 27, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2815        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 73, a5  = 0xcccccccd
       0     2818        M                                           #; (acc) a0  <-- 0x00355513
       0     2819        M 0x80000704 srli    a0, a0, 3              #; a0  = 58, (wrb) a0  <-- 7
       0     2820        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2823        M                                           #; (acc) a0  <-- 0x40a68533
       0     2824        M 0x8000070c sub     a0, a3, a0             #; a3  = 73, a0  = 70, (wrb) a0  <-- 3
       0     2826        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2827        M 0x80000718 addi    a4, a4, -1             #; a4  = 27, (wrb) a4  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2828        M 0x8000071c addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2829        M 0x80000720 bnez    a4, pc - 32            #; a4  = 26, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2830        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 74, a5  = 0xcccccccd
       0     2833        M                                           #; (acc) a0  <-- 0x00355513
       0     2834        M 0x80000704 srli    a0, a0, 3              #; a0  = 59, (wrb) a0  <-- 7
       0     2835        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2838        M                                           #; (acc) a0  <-- 0x40a68533
       0     2839        M 0x8000070c sub     a0, a3, a0             #; a3  = 74, a0  = 70, (wrb) a0  <-- 4
       0     2841        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2842        M 0x80000718 addi    a4, a4, -1             #; a4  = 26, (wrb) a4  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2843        M 0x8000071c addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2844        M 0x80000720 bnez    a4, pc - 32            #; a4  = 25, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2845        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 75, a5  = 0xcccccccd
       0     2848        M                                           #; (acc) a0  <-- 0x00355513
       0     2849        M 0x80000704 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     2850        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2853        M                                           #; (acc) a0  <-- 0x40a68533
       0     2854        M 0x8000070c sub     a0, a3, a0             #; a3  = 75, a0  = 70, (wrb) a0  <-- 5
       0     2856        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     2857        M 0x80000718 addi    a4, a4, -1             #; a4  = 25, (wrb) a4  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2858        M 0x8000071c addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2859        M 0x80000720 bnez    a4, pc - 32            #; a4  = 24, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2860        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 76, a5  = 0xcccccccd
       0     2863        M                                           #; (acc) a0  <-- 0x00355513
       0     2864        M 0x80000704 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     2865        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2868        M                                           #; (acc) a0  <-- 0x40a68533
       0     2869        M 0x8000070c sub     a0, a3, a0             #; a3  = 76, a0  = 70, (wrb) a0  <-- 6
       0     2871        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     2872        M 0x80000718 addi    a4, a4, -1             #; a4  = 24, (wrb) a4  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2873        M 0x8000071c addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2874        M 0x80000720 bnez    a4, pc - 32            #; a4  = 23, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2875        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 77, a5  = 0xcccccccd
       0     2878        M                                           #; (acc) a0  <-- 0x00355513
       0     2879        M 0x80000704 srli    a0, a0, 3              #; a0  = 61, (wrb) a0  <-- 7
       0     2880        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2883        M                                           #; (acc) a0  <-- 0x40a68533
       0     2884        M 0x8000070c sub     a0, a3, a0             #; a3  = 77, a0  = 70, (wrb) a0  <-- 7
       0     2886        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     2887        M 0x80000718 addi    a4, a4, -1             #; a4  = 23, (wrb) a4  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2888        M 0x8000071c addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2889        M 0x80000720 bnez    a4, pc - 32            #; a4  = 22, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2890        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 78, a5  = 0xcccccccd
       0     2893        M                                           #; (acc) a0  <-- 0x00355513
       0     2894        M 0x80000704 srli    a0, a0, 3              #; a0  = 62, (wrb) a0  <-- 7
       0     2895        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2898        M                                           #; (acc) a0  <-- 0x40a68533
       0     2899        M 0x8000070c sub     a0, a3, a0             #; a3  = 78, a0  = 70, (wrb) a0  <-- 8
       0     2901        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     2902        M 0x80000718 addi    a4, a4, -1             #; a4  = 22, (wrb) a4  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2903        M 0x8000071c addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2904        M 0x80000720 bnez    a4, pc - 32            #; a4  = 21, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2905        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 79, a5  = 0xcccccccd
       0     2908        M                                           #; (acc) a0  <-- 0x00355513
       0     2909        M 0x80000704 srli    a0, a0, 3              #; a0  = 63, (wrb) a0  <-- 7
       0     2910        M 0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
       0     2913        M                                           #; (acc) a0  <-- 0x40a68533
       0     2914        M 0x8000070c sub     a0, a3, a0             #; a3  = 79, a0  = 70, (wrb) a0  <-- 9
       0     2916        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     2917        M 0x80000718 addi    a4, a4, -1             #; a4  = 21, (wrb) a4  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2918        M 0x8000071c addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2919        M 0x80000720 bnez    a4, pc - 32            #; a4  = 20, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2920        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 80, a5  = 0xcccccccd
       0     2923        M                                           #; (acc) a0  <-- 0x00355513
       0     2924        M 0x80000704 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     2925        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2928        M                                           #; (acc) a0  <-- 0x40a68533
       0     2929        M 0x8000070c sub     a0, a3, a0             #; a3  = 80, a0  = 80, (wrb) a0  <-- 0
       0     2931        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     2932        M 0x80000718 addi    a4, a4, -1             #; a4  = 20, (wrb) a4  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2933        M 0x8000071c addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2934        M 0x80000720 bnez    a4, pc - 32            #; a4  = 19, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2935        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 81, a5  = 0xcccccccd
       0     2938        M                                           #; (acc) a0  <-- 0x00355513
       0     2939        M 0x80000704 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     2940        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2943        M                                           #; (acc) a0  <-- 0x40a68533
       0     2944        M 0x8000070c sub     a0, a3, a0             #; a3  = 81, a0  = 80, (wrb) a0  <-- 1
       0     2946        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     2947        M 0x80000718 addi    a4, a4, -1             #; a4  = 19, (wrb) a4  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2948        M 0x8000071c addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2949        M 0x80000720 bnez    a4, pc - 32            #; a4  = 18, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2950        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 82, a5  = 0xcccccccd
       0     2953        M                                           #; (acc) a0  <-- 0x00355513
       0     2954        M 0x80000704 srli    a0, a0, 3              #; a0  = 65, (wrb) a0  <-- 8
       0     2955        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2958        M                                           #; (acc) a0  <-- 0x40a68533
       0     2959        M 0x8000070c sub     a0, a3, a0             #; a3  = 82, a0  = 80, (wrb) a0  <-- 2
       0     2961        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     2962        M 0x80000718 addi    a4, a4, -1             #; a4  = 18, (wrb) a4  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2963        M 0x8000071c addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2964        M 0x80000720 bnez    a4, pc - 32            #; a4  = 17, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2965        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 83, a5  = 0xcccccccd
       0     2968        M                                           #; (acc) a0  <-- 0x00355513
       0     2969        M 0x80000704 srli    a0, a0, 3              #; a0  = 66, (wrb) a0  <-- 8
       0     2970        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2973        M                                           #; (acc) a0  <-- 0x40a68533
       0     2974        M 0x8000070c sub     a0, a3, a0             #; a3  = 83, a0  = 80, (wrb) a0  <-- 3
       0     2976        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     2977        M 0x80000718 addi    a4, a4, -1             #; a4  = 17, (wrb) a4  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2978        M 0x8000071c addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2979        M 0x80000720 bnez    a4, pc - 32            #; a4  = 16, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2980        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 84, a5  = 0xcccccccd
       0     2983        M                                           #; (acc) a0  <-- 0x00355513
       0     2984        M 0x80000704 srli    a0, a0, 3              #; a0  = 67, (wrb) a0  <-- 8
       0     2985        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     2988        M                                           #; (acc) a0  <-- 0x40a68533
       0     2989        M 0x8000070c sub     a0, a3, a0             #; a3  = 84, a0  = 80, (wrb) a0  <-- 4
       0     2991        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     2992        M 0x80000718 addi    a4, a4, -1             #; a4  = 16, (wrb) a4  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2993        M 0x8000071c addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2994        M 0x80000720 bnez    a4, pc - 32            #; a4  = 15, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2995        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 85, a5  = 0xcccccccd
       0     2998        M                                           #; (acc) a0  <-- 0x00355513
       0     2999        M 0x80000704 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     3000        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3003        M                                           #; (acc) a0  <-- 0x40a68533
       0     3004        M 0x8000070c sub     a0, a3, a0             #; a3  = 85, a0  = 80, (wrb) a0  <-- 5
       0     3006        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3007        M 0x80000718 addi    a4, a4, -1             #; a4  = 15, (wrb) a4  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3008        M 0x8000071c addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3009        M 0x80000720 bnez    a4, pc - 32            #; a4  = 14, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3010        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 86, a5  = 0xcccccccd
       0     3013        M                                           #; (acc) a0  <-- 0x00355513
       0     3014        M 0x80000704 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     3015        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3018        M                                           #; (acc) a0  <-- 0x40a68533
       0     3019        M 0x8000070c sub     a0, a3, a0             #; a3  = 86, a0  = 80, (wrb) a0  <-- 6
       0     3021        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3022        M 0x80000718 addi    a4, a4, -1             #; a4  = 14, (wrb) a4  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3023        M 0x8000071c addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3024        M 0x80000720 bnez    a4, pc - 32            #; a4  = 13, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3025        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 87, a5  = 0xcccccccd
       0     3028        M                                           #; (acc) a0  <-- 0x00355513
       0     3029        M 0x80000704 srli    a0, a0, 3              #; a0  = 69, (wrb) a0  <-- 8
       0     3030        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3033        M                                           #; (acc) a0  <-- 0x40a68533
       0     3034        M 0x8000070c sub     a0, a3, a0             #; a3  = 87, a0  = 80, (wrb) a0  <-- 7
       0     3036        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3037        M 0x80000718 addi    a4, a4, -1             #; a4  = 13, (wrb) a4  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3038        M 0x8000071c addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3039        M 0x80000720 bnez    a4, pc - 32            #; a4  = 12, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3040        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 88, a5  = 0xcccccccd
       0     3043        M                                           #; (acc) a0  <-- 0x00355513
       0     3044        M 0x80000704 srli    a0, a0, 3              #; a0  = 70, (wrb) a0  <-- 8
       0     3045        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3048        M                                           #; (acc) a0  <-- 0x40a68533
       0     3049        M 0x8000070c sub     a0, a3, a0             #; a3  = 88, a0  = 80, (wrb) a0  <-- 8
       0     3051        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3052        M 0x80000718 addi    a4, a4, -1             #; a4  = 12, (wrb) a4  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3053        M 0x8000071c addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3054        M 0x80000720 bnez    a4, pc - 32            #; a4  = 11, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3055        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 89, a5  = 0xcccccccd
       0     3058        M                                           #; (acc) a0  <-- 0x00355513
       0     3059        M 0x80000704 srli    a0, a0, 3              #; a0  = 71, (wrb) a0  <-- 8
       0     3060        M 0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
       0     3063        M                                           #; (acc) a0  <-- 0x40a68533
       0     3064        M 0x8000070c sub     a0, a3, a0             #; a3  = 89, a0  = 80, (wrb) a0  <-- 9
       0     3066        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3067        M 0x80000718 addi    a4, a4, -1             #; a4  = 11, (wrb) a4  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3068        M 0x8000071c addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3069        M 0x80000720 bnez    a4, pc - 32            #; a4  = 10, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3070        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 90, a5  = 0xcccccccd
       0     3073        M                                           #; (acc) a0  <-- 0x00355513
       0     3074        M 0x80000704 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     3075        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3078        M                                           #; (acc) a0  <-- 0x40a68533
       0     3079        M 0x8000070c sub     a0, a3, a0             #; a3  = 90, a0  = 90, (wrb) a0  <-- 0
       0     3081        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3082        M 0x80000718 addi    a4, a4, -1             #; a4  = 10, (wrb) a4  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3083        M 0x8000071c addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3084        M 0x80000720 bnez    a4, pc - 32            #; a4  = 9, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3085        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 91, a5  = 0xcccccccd
       0     3088        M                                           #; (acc) a0  <-- 0x00355513
       0     3089        M 0x80000704 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     3090        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3093        M                                           #; (acc) a0  <-- 0x40a68533
       0     3094        M 0x8000070c sub     a0, a3, a0             #; a3  = 91, a0  = 90, (wrb) a0  <-- 1
       0     3096        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3097        M 0x80000718 addi    a4, a4, -1             #; a4  = 9, (wrb) a4  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3098        M 0x8000071c addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3099        M 0x80000720 bnez    a4, pc - 32            #; a4  = 8, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3100        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 92, a5  = 0xcccccccd
       0     3103        M                                           #; (acc) a0  <-- 0x00355513
       0     3104        M 0x80000704 srli    a0, a0, 3              #; a0  = 73, (wrb) a0  <-- 9
       0     3105        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3108        M                                           #; (acc) a0  <-- 0x40a68533
       0     3109        M 0x8000070c sub     a0, a3, a0             #; a3  = 92, a0  = 90, (wrb) a0  <-- 2
       0     3111        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3112        M 0x80000718 addi    a4, a4, -1             #; a4  = 8, (wrb) a4  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3113        M 0x8000071c addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3114        M 0x80000720 bnez    a4, pc - 32            #; a4  = 7, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3115        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 93, a5  = 0xcccccccd
       0     3118        M                                           #; (acc) a0  <-- 0x00355513
       0     3119        M 0x80000704 srli    a0, a0, 3              #; a0  = 74, (wrb) a0  <-- 9
       0     3120        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3123        M                                           #; (acc) a0  <-- 0x40a68533
       0     3124        M 0x8000070c sub     a0, a3, a0             #; a3  = 93, a0  = 90, (wrb) a0  <-- 3
       0     3126        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3127        M 0x80000718 addi    a4, a4, -1             #; a4  = 7, (wrb) a4  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3128        M 0x8000071c addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3129        M 0x80000720 bnez    a4, pc - 32            #; a4  = 6, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3130        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 94, a5  = 0xcccccccd
       0     3133        M                                           #; (acc) a0  <-- 0x00355513
       0     3134        M 0x80000704 srli    a0, a0, 3              #; a0  = 75, (wrb) a0  <-- 9
       0     3135        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3138        M                                           #; (acc) a0  <-- 0x40a68533
       0     3139        M 0x8000070c sub     a0, a3, a0             #; a3  = 94, a0  = 90, (wrb) a0  <-- 4
       0     3141        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3142        M 0x80000718 addi    a4, a4, -1             #; a4  = 6, (wrb) a4  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3143        M 0x8000071c addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3144        M 0x80000720 bnez    a4, pc - 32            #; a4  = 5, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3145        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 95, a5  = 0xcccccccd
       0     3148        M                                           #; (acc) a0  <-- 0x00355513
       0     3149        M 0x80000704 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     3150        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3153        M                                           #; (acc) a0  <-- 0x40a68533
       0     3154        M 0x8000070c sub     a0, a3, a0             #; a3  = 95, a0  = 90, (wrb) a0  <-- 5
       0     3156        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3157        M 0x80000718 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3158        M 0x8000071c addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3159        M 0x80000720 bnez    a4, pc - 32            #; a4  = 4, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3160        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 96, a5  = 0xcccccccd
       0     3163        M                                           #; (acc) a0  <-- 0x00355513
       0     3164        M 0x80000704 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     3165        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3168        M                                           #; (acc) a0  <-- 0x40a68533
       0     3169        M 0x8000070c sub     a0, a3, a0             #; a3  = 96, a0  = 90, (wrb) a0  <-- 6
       0     3171        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3172        M 0x80000718 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3173        M 0x8000071c addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3174        M 0x80000720 bnez    a4, pc - 32            #; a4  = 3, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3175        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 97, a5  = 0xcccccccd
       0     3178        M                                           #; (acc) a0  <-- 0x00355513
       0     3179        M 0x80000704 srli    a0, a0, 3              #; a0  = 77, (wrb) a0  <-- 9
       0     3180        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3183        M                                           #; (acc) a0  <-- 0x40a68533
       0     3184        M 0x8000070c sub     a0, a3, a0             #; a3  = 97, a0  = 90, (wrb) a0  <-- 7
       0     3186        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3187        M 0x80000718 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3188        M 0x8000071c addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3189        M 0x80000720 bnez    a4, pc - 32            #; a4  = 2, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3190        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 98, a5  = 0xcccccccd
       0     3193        M                                           #; (acc) a0  <-- 0x00355513
       0     3194        M 0x80000704 srli    a0, a0, 3              #; a0  = 78, (wrb) a0  <-- 9
       0     3195        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3198        M                                           #; (acc) a0  <-- 0x40a68533
       0     3199        M 0x8000070c sub     a0, a3, a0             #; a3  = 98, a0  = 90, (wrb) a0  <-- 8
       0     3201        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3202        M 0x80000718 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3203        M 0x8000071c addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3204        M 0x80000720 bnez    a4, pc - 32            #; a4  = 1, taken, goto 0x80000700
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3205        M 0x80000700 mulhu   a0, a3, a5             #; a3  = 99, a5  = 0xcccccccd
       0     3208        M                                           #; (acc) a0  <-- 0x00355513
       0     3209        M 0x80000704 srli    a0, a0, 3              #; a0  = 79, (wrb) a0  <-- 9
       0     3210        M 0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
       0     3213        M                                           #; (acc) a0  <-- 0x40a68533
       0     3214        M 0x8000070c sub     a0, a3, a0             #; a3  = 99, a0  = 90, (wrb) a0  <-- 9
       0     3216        M 0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3217        M 0x80000718 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3218        M 0x8000071c addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
                         M 0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3219        M 0x80000720 bnez    a4, pc - 32            #; a4  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3221        M 0x80000728 j       pc + 0x44              #; goto 0x8000076c
                         M 0x80000724 csrrci  a1, ssr, 1             #; 
       0     3232        M 0x8000076c srli    a0, t1, 20             #; t1  = 0x00100320, (wrb) a0  <-- 1
       0     3244        M 0x80000770 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     3245        M 0x80000774 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     3246        M 0x80000778 addi    a1, a1, -791           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011fce9
       0     3247        M 0x8000077c sltu    a1, t1, a1             #; t1  = 0x00100320, a1  = 0x0011fce9, (wrb) a1  <-- 1
       0     3256        M 0x80000780 and     a7, a0, a1             #; a0  = 1, a1  = 1, (wrb) a7  <-- 1
       0     3257        M 0x80000784 beqz    a7, pc + 108           #; a7  = 1, not taken
       0     3258        M 0x80000788 li      a4, 0                  #; (wrb) a4  <-- 0
       0     3259        M 0x8000078c li      a0, 8                  #; (wrb) a0  <-- 8
       0     3268        M 0x80000790 li      a1, 99                 #; (wrb) a1  <-- 99
       0     3269        M 0x80000794 li      a2, 64                 #; (wrb) a2  <-- 64
       0     3270        M 0x80000798 scfgw   a1, a2                 #; a1  = 99, a2  = 64
       0     3271        M 0x8000079c li      a1, 192                #; (wrb) a1  <-- 192
       0     3280        M 0x800007a0 scfgw   a0, a1                 #; a0  = 8, a1  = 192
       0     3281        M 0x800007a4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     3282        M 0x800007a8 scfgw   zero, a0               #; a0  = 32
       0     3283        M 0x800007ac scfgwi  t1, 896                #; t1  = 0x00100320
       0     3293        M 0x800007b4 li      a5, 100                #; (wrb) a5  <-- 100
                         M 0x800007b0 csrrsi  a0, ssr, 1             #; 
       0     3294        M 0x800007b8 lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     3295        M 0x800007bc addi    a2, a0, -819           #; a0  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
       0     3304        M 0x800007c0 li      a3, 10                 #; (wrb) a3  <-- 10
       0     3305        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 0, a2  = 0xcccccccd
       0     3308        M                                           #; (acc) a0  <-- 0x00355513
       0     3309        M 0x800007c8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3310        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3316        M 0x800007d0 sub     a0, a4, a0             #; a4  = 0, a0  = 0, (wrb) a0  <-- 0
       0     3318        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3319        M 0x800007dc addi    a5, a5, -1             #; a5  = 100, (wrb) a5  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3320        M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3321        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3328        M 0x800007e0 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
       0     3329        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 99, taken, goto 0x800007c4
       0     3330        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 1, a2  = 0xcccccccd
       0     3333        M                                           #; (acc) a0  <-- 0x00355513
       0     3334        M 0x800007c8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3335        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3338        M                                           #; (acc) a0  <-- 0x40a70533
       0     3339        M 0x800007d0 sub     a0, a4, a0             #; a4  = 1, a0  = 0, (wrb) a0  <-- 1
       0     3341        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3342        M 0x800007dc addi    a5, a5, -1             #; a5  = 99, (wrb) a5  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3343        M 0x800007e0 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3344        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 98, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3345        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 2, a2  = 0xcccccccd
       0     3348        M                                           #; (acc) a0  <-- 0x00355513
       0     3349        M 0x800007c8 srli    a0, a0, 3              #; a0  = 1, (wrb) a0  <-- 0
       0     3350        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3353        M                                           #; (acc) a0  <-- 0x40a70533
       0     3354        M 0x800007d0 sub     a0, a4, a0             #; a4  = 2, a0  = 0, (wrb) a0  <-- 2
       0     3356        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3357        M 0x800007dc addi    a5, a5, -1             #; a5  = 98, (wrb) a5  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3358        M 0x800007e0 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3359        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 97, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3360        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 3, a2  = 0xcccccccd
       0     3363        M                                           #; (acc) a0  <-- 0x00355513
       0     3364        M 0x800007c8 srli    a0, a0, 3              #; a0  = 2, (wrb) a0  <-- 0
       0     3365        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3368        M                                           #; (acc) a0  <-- 0x40a70533
       0     3369        M 0x800007d0 sub     a0, a4, a0             #; a4  = 3, a0  = 0, (wrb) a0  <-- 3
       0     3371        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3372        M 0x800007dc addi    a5, a5, -1             #; a5  = 97, (wrb) a5  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3373        M 0x800007e0 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3374        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 96, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3375        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 4, a2  = 0xcccccccd
       0     3378        M                                           #; (acc) a0  <-- 0x00355513
       0     3379        M 0x800007c8 srli    a0, a0, 3              #; a0  = 3, (wrb) a0  <-- 0
       0     3380        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3383        M                                           #; (acc) a0  <-- 0x40a70533
       0     3384        M 0x800007d0 sub     a0, a4, a0             #; a4  = 4, a0  = 0, (wrb) a0  <-- 4
       0     3386        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3387        M 0x800007dc addi    a5, a5, -1             #; a5  = 96, (wrb) a5  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3388        M 0x800007e0 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3389        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 95, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3390        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 5, a2  = 0xcccccccd
       0     3393        M                                           #; (acc) a0  <-- 0x00355513
       0     3394        M 0x800007c8 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     3395        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3398        M                                           #; (acc) a0  <-- 0x40a70533
       0     3399        M 0x800007d0 sub     a0, a4, a0             #; a4  = 5, a0  = 0, (wrb) a0  <-- 5
       0     3401        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3402        M 0x800007dc addi    a5, a5, -1             #; a5  = 95, (wrb) a5  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3403        M 0x800007e0 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3404        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 94, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3405        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 6, a2  = 0xcccccccd
       0     3408        M                                           #; (acc) a0  <-- 0x00355513
       0     3409        M 0x800007c8 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
       0     3410        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3413        M                                           #; (acc) a0  <-- 0x40a70533
       0     3414        M 0x800007d0 sub     a0, a4, a0             #; a4  = 6, a0  = 0, (wrb) a0  <-- 6
       0     3416        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3417        M 0x800007dc addi    a5, a5, -1             #; a5  = 94, (wrb) a5  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3418        M 0x800007e0 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3419        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 93, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3420        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 7, a2  = 0xcccccccd
       0     3423        M                                           #; (acc) a0  <-- 0x00355513
       0     3424        M 0x800007c8 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     3425        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3428        M                                           #; (acc) a0  <-- 0x40a70533
       0     3429        M 0x800007d0 sub     a0, a4, a0             #; a4  = 7, a0  = 0, (wrb) a0  <-- 7
       0     3431        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3432        M 0x800007dc addi    a5, a5, -1             #; a5  = 93, (wrb) a5  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3433        M 0x800007e0 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3434        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 92, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3435        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 8, a2  = 0xcccccccd
       0     3438        M                                           #; (acc) a0  <-- 0x00355513
       0     3439        M 0x800007c8 srli    a0, a0, 3              #; a0  = 6, (wrb) a0  <-- 0
       0     3440        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3443        M                                           #; (acc) a0  <-- 0x40a70533
       0     3444        M 0x800007d0 sub     a0, a4, a0             #; a4  = 8, a0  = 0, (wrb) a0  <-- 8
       0     3446        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3447        M 0x800007dc addi    a5, a5, -1             #; a5  = 92, (wrb) a5  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3448        M 0x800007e0 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3449        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 91, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3450        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 9, a2  = 0xcccccccd
       0     3453        M                                           #; (acc) a0  <-- 0x00355513
       0     3454        M 0x800007c8 srli    a0, a0, 3              #; a0  = 7, (wrb) a0  <-- 0
       0     3455        M 0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
       0     3458        M                                           #; (acc) a0  <-- 0x40a70533
       0     3459        M 0x800007d0 sub     a0, a4, a0             #; a4  = 9, a0  = 0, (wrb) a0  <-- 9
       0     3461        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3462        M 0x800007dc addi    a5, a5, -1             #; a5  = 91, (wrb) a5  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3463        M 0x800007e0 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3464        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 90, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3465        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 10, a2  = 0xcccccccd
       0     3468        M                                           #; (acc) a0  <-- 0x00355513
       0     3469        M 0x800007c8 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     3470        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3473        M                                           #; (acc) a0  <-- 0x40a70533
       0     3474        M 0x800007d0 sub     a0, a4, a0             #; a4  = 10, a0  = 10, (wrb) a0  <-- 0
       0     3476        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3477        M 0x800007dc addi    a5, a5, -1             #; a5  = 90, (wrb) a5  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3478        M 0x800007e0 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3479        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 89, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3480        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 11, a2  = 0xcccccccd
       0     3483        M                                           #; (acc) a0  <-- 0x00355513
       0     3484        M 0x800007c8 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
       0     3485        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3488        M                                           #; (acc) a0  <-- 0x40a70533
       0     3489        M 0x800007d0 sub     a0, a4, a0             #; a4  = 11, a0  = 10, (wrb) a0  <-- 1
       0     3491        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3492        M 0x800007dc addi    a5, a5, -1             #; a5  = 89, (wrb) a5  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3493        M 0x800007e0 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3494        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 88, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3495        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 12, a2  = 0xcccccccd
       0     3498        M                                           #; (acc) a0  <-- 0x00355513
       0     3499        M 0x800007c8 srli    a0, a0, 3              #; a0  = 9, (wrb) a0  <-- 1
       0     3500        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3503        M                                           #; (acc) a0  <-- 0x40a70533
       0     3504        M 0x800007d0 sub     a0, a4, a0             #; a4  = 12, a0  = 10, (wrb) a0  <-- 2
       0     3506        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3507        M 0x800007dc addi    a5, a5, -1             #; a5  = 88, (wrb) a5  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3508        M 0x800007e0 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3509        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 87, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3510        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 13, a2  = 0xcccccccd
       0     3513        M                                           #; (acc) a0  <-- 0x00355513
       0     3514        M 0x800007c8 srli    a0, a0, 3              #; a0  = 10, (wrb) a0  <-- 1
       0     3515        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3518        M                                           #; (acc) a0  <-- 0x40a70533
       0     3519        M 0x800007d0 sub     a0, a4, a0             #; a4  = 13, a0  = 10, (wrb) a0  <-- 3
       0     3521        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3522        M 0x800007dc addi    a5, a5, -1             #; a5  = 87, (wrb) a5  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3523        M 0x800007e0 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3524        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 86, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3525        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 14, a2  = 0xcccccccd
       0     3528        M                                           #; (acc) a0  <-- 0x00355513
       0     3529        M 0x800007c8 srli    a0, a0, 3              #; a0  = 11, (wrb) a0  <-- 1
       0     3530        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3533        M                                           #; (acc) a0  <-- 0x40a70533
       0     3534        M 0x800007d0 sub     a0, a4, a0             #; a4  = 14, a0  = 10, (wrb) a0  <-- 4
       0     3536        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3537        M 0x800007dc addi    a5, a5, -1             #; a5  = 86, (wrb) a5  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3538        M 0x800007e0 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3539        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 85, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3540        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 15, a2  = 0xcccccccd
       0     3543        M                                           #; (acc) a0  <-- 0x00355513
       0     3544        M 0x800007c8 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     3545        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3548        M                                           #; (acc) a0  <-- 0x40a70533
       0     3549        M 0x800007d0 sub     a0, a4, a0             #; a4  = 15, a0  = 10, (wrb) a0  <-- 5
       0     3551        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3552        M 0x800007dc addi    a5, a5, -1             #; a5  = 85, (wrb) a5  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3553        M 0x800007e0 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3554        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 84, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3555        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 16, a2  = 0xcccccccd
       0     3558        M                                           #; (acc) a0  <-- 0x00355513
       0     3559        M 0x800007c8 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
       0     3560        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3563        M                                           #; (acc) a0  <-- 0x40a70533
       0     3564        M 0x800007d0 sub     a0, a4, a0             #; a4  = 16, a0  = 10, (wrb) a0  <-- 6
       0     3566        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3567        M 0x800007dc addi    a5, a5, -1             #; a5  = 84, (wrb) a5  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3568        M 0x800007e0 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3569        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 83, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3570        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 17, a2  = 0xcccccccd
       0     3573        M                                           #; (acc) a0  <-- 0x00355513
       0     3574        M 0x800007c8 srli    a0, a0, 3              #; a0  = 13, (wrb) a0  <-- 1
       0     3575        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3578        M                                           #; (acc) a0  <-- 0x40a70533
       0     3579        M 0x800007d0 sub     a0, a4, a0             #; a4  = 17, a0  = 10, (wrb) a0  <-- 7
       0     3581        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3582        M 0x800007dc addi    a5, a5, -1             #; a5  = 83, (wrb) a5  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3583        M 0x800007e0 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3584        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 82, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3585        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 18, a2  = 0xcccccccd
       0     3588        M                                           #; (acc) a0  <-- 0x00355513
       0     3589        M 0x800007c8 srli    a0, a0, 3              #; a0  = 14, (wrb) a0  <-- 1
       0     3590        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3593        M                                           #; (acc) a0  <-- 0x40a70533
       0     3594        M 0x800007d0 sub     a0, a4, a0             #; a4  = 18, a0  = 10, (wrb) a0  <-- 8
       0     3596        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3597        M 0x800007dc addi    a5, a5, -1             #; a5  = 82, (wrb) a5  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3598        M 0x800007e0 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3599        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 81, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3600        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 19, a2  = 0xcccccccd
       0     3603        M                                           #; (acc) a0  <-- 0x00355513
       0     3604        M 0x800007c8 srli    a0, a0, 3              #; a0  = 15, (wrb) a0  <-- 1
       0     3605        M 0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
       0     3608        M                                           #; (acc) a0  <-- 0x40a70533
       0     3609        M 0x800007d0 sub     a0, a4, a0             #; a4  = 19, a0  = 10, (wrb) a0  <-- 9
       0     3611        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3612        M 0x800007dc addi    a5, a5, -1             #; a5  = 81, (wrb) a5  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3613        M 0x800007e0 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3614        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 80, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3615        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 20, a2  = 0xcccccccd
       0     3618        M                                           #; (acc) a0  <-- 0x00355513
       0     3619        M 0x800007c8 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     3620        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3623        M                                           #; (acc) a0  <-- 0x40a70533
       0     3624        M 0x800007d0 sub     a0, a4, a0             #; a4  = 20, a0  = 20, (wrb) a0  <-- 0
       0     3626        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3627        M 0x800007dc addi    a5, a5, -1             #; a5  = 80, (wrb) a5  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3628        M 0x800007e0 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3629        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 79, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3630        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 21, a2  = 0xcccccccd
       0     3633        M                                           #; (acc) a0  <-- 0x00355513
       0     3634        M 0x800007c8 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
       0     3635        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3638        M                                           #; (acc) a0  <-- 0x40a70533
       0     3639        M 0x800007d0 sub     a0, a4, a0             #; a4  = 21, a0  = 20, (wrb) a0  <-- 1
       0     3641        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3642        M 0x800007dc addi    a5, a5, -1             #; a5  = 79, (wrb) a5  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3643        M 0x800007e0 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3644        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 78, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3645        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 22, a2  = 0xcccccccd
       0     3648        M                                           #; (acc) a0  <-- 0x00355513
       0     3649        M 0x800007c8 srli    a0, a0, 3              #; a0  = 17, (wrb) a0  <-- 2
       0     3650        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3653        M                                           #; (acc) a0  <-- 0x40a70533
       0     3654        M 0x800007d0 sub     a0, a4, a0             #; a4  = 22, a0  = 20, (wrb) a0  <-- 2
       0     3656        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3657        M 0x800007dc addi    a5, a5, -1             #; a5  = 78, (wrb) a5  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3658        M 0x800007e0 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3659        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 77, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3660        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 23, a2  = 0xcccccccd
       0     3663        M                                           #; (acc) a0  <-- 0x00355513
       0     3664        M 0x800007c8 srli    a0, a0, 3              #; a0  = 18, (wrb) a0  <-- 2
       0     3665        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3668        M                                           #; (acc) a0  <-- 0x40a70533
       0     3669        M 0x800007d0 sub     a0, a4, a0             #; a4  = 23, a0  = 20, (wrb) a0  <-- 3
       0     3671        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3672        M 0x800007dc addi    a5, a5, -1             #; a5  = 77, (wrb) a5  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3673        M 0x800007e0 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3674        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 76, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3675        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 24, a2  = 0xcccccccd
       0     3678        M                                           #; (acc) a0  <-- 0x00355513
       0     3679        M 0x800007c8 srli    a0, a0, 3              #; a0  = 19, (wrb) a0  <-- 2
       0     3680        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3683        M                                           #; (acc) a0  <-- 0x40a70533
       0     3684        M 0x800007d0 sub     a0, a4, a0             #; a4  = 24, a0  = 20, (wrb) a0  <-- 4
       0     3686        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3687        M 0x800007dc addi    a5, a5, -1             #; a5  = 76, (wrb) a5  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3688        M 0x800007e0 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3689        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 75, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3690        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 25, a2  = 0xcccccccd
       0     3693        M                                           #; (acc) a0  <-- 0x00355513
       0     3694        M 0x800007c8 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     3695        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3698        M                                           #; (acc) a0  <-- 0x40a70533
       0     3699        M 0x800007d0 sub     a0, a4, a0             #; a4  = 25, a0  = 20, (wrb) a0  <-- 5
       0     3701        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3702        M 0x800007dc addi    a5, a5, -1             #; a5  = 75, (wrb) a5  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3703        M 0x800007e0 addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3704        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 74, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3705        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 26, a2  = 0xcccccccd
       0     3708        M                                           #; (acc) a0  <-- 0x00355513
       0     3709        M 0x800007c8 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
       0     3710        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3713        M                                           #; (acc) a0  <-- 0x40a70533
       0     3714        M 0x800007d0 sub     a0, a4, a0             #; a4  = 26, a0  = 20, (wrb) a0  <-- 6
       0     3716        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3717        M 0x800007dc addi    a5, a5, -1             #; a5  = 74, (wrb) a5  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3718        M 0x800007e0 addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3719        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 73, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3720        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 27, a2  = 0xcccccccd
       0     3723        M                                           #; (acc) a0  <-- 0x00355513
       0     3724        M 0x800007c8 srli    a0, a0, 3              #; a0  = 21, (wrb) a0  <-- 2
       0     3725        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3728        M                                           #; (acc) a0  <-- 0x40a70533
       0     3729        M 0x800007d0 sub     a0, a4, a0             #; a4  = 27, a0  = 20, (wrb) a0  <-- 7
       0     3731        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3732        M 0x800007dc addi    a5, a5, -1             #; a5  = 73, (wrb) a5  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3733        M 0x800007e0 addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3734        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 72, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3735        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 28, a2  = 0xcccccccd
       0     3738        M                                           #; (acc) a0  <-- 0x00355513
       0     3739        M 0x800007c8 srli    a0, a0, 3              #; a0  = 22, (wrb) a0  <-- 2
       0     3740        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3743        M                                           #; (acc) a0  <-- 0x40a70533
       0     3744        M 0x800007d0 sub     a0, a4, a0             #; a4  = 28, a0  = 20, (wrb) a0  <-- 8
       0     3746        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3747        M 0x800007dc addi    a5, a5, -1             #; a5  = 72, (wrb) a5  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3748        M 0x800007e0 addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3749        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 71, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3750        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 29, a2  = 0xcccccccd
       0     3753        M                                           #; (acc) a0  <-- 0x00355513
       0     3754        M 0x800007c8 srli    a0, a0, 3              #; a0  = 23, (wrb) a0  <-- 2
       0     3755        M 0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
       0     3758        M                                           #; (acc) a0  <-- 0x40a70533
       0     3759        M 0x800007d0 sub     a0, a4, a0             #; a4  = 29, a0  = 20, (wrb) a0  <-- 9
       0     3761        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3762        M 0x800007dc addi    a5, a5, -1             #; a5  = 71, (wrb) a5  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3763        M 0x800007e0 addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3764        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 70, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3765        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 30, a2  = 0xcccccccd
       0     3768        M                                           #; (acc) a0  <-- 0x00355513
       0     3769        M 0x800007c8 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     3770        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3773        M                                           #; (acc) a0  <-- 0x40a70533
       0     3774        M 0x800007d0 sub     a0, a4, a0             #; a4  = 30, a0  = 30, (wrb) a0  <-- 0
       0     3776        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3777        M 0x800007dc addi    a5, a5, -1             #; a5  = 70, (wrb) a5  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3778        M 0x800007e0 addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3779        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 69, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3780        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 31, a2  = 0xcccccccd
       0     3783        M                                           #; (acc) a0  <-- 0x00355513
       0     3784        M 0x800007c8 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
       0     3785        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3788        M                                           #; (acc) a0  <-- 0x40a70533
       0     3789        M 0x800007d0 sub     a0, a4, a0             #; a4  = 31, a0  = 30, (wrb) a0  <-- 1
       0     3791        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3792        M 0x800007dc addi    a5, a5, -1             #; a5  = 69, (wrb) a5  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3793        M 0x800007e0 addi    a4, a4, 1              #; a4  = 31, (wrb) a4  <-- 32
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3794        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 68, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3795        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 32, a2  = 0xcccccccd
       0     3798        M                                           #; (acc) a0  <-- 0x00355513
       0     3799        M 0x800007c8 srli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 3
       0     3800        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3803        M                                           #; (acc) a0  <-- 0x40a70533
       0     3804        M 0x800007d0 sub     a0, a4, a0             #; a4  = 32, a0  = 30, (wrb) a0  <-- 2
       0     3806        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3807        M 0x800007dc addi    a5, a5, -1             #; a5  = 68, (wrb) a5  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3808        M 0x800007e0 addi    a4, a4, 1              #; a4  = 32, (wrb) a4  <-- 33
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3809        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 67, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3810        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 33, a2  = 0xcccccccd
       0     3813        M                                           #; (acc) a0  <-- 0x00355513
       0     3814        M 0x800007c8 srli    a0, a0, 3              #; a0  = 26, (wrb) a0  <-- 3
       0     3815        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3818        M                                           #; (acc) a0  <-- 0x40a70533
       0     3819        M 0x800007d0 sub     a0, a4, a0             #; a4  = 33, a0  = 30, (wrb) a0  <-- 3
       0     3821        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3822        M 0x800007dc addi    a5, a5, -1             #; a5  = 67, (wrb) a5  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3823        M 0x800007e0 addi    a4, a4, 1              #; a4  = 33, (wrb) a4  <-- 34
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3824        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 66, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3825        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 34, a2  = 0xcccccccd
       0     3828        M                                           #; (acc) a0  <-- 0x00355513
       0     3829        M 0x800007c8 srli    a0, a0, 3              #; a0  = 27, (wrb) a0  <-- 3
       0     3830        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3833        M                                           #; (acc) a0  <-- 0x40a70533
       0     3834        M 0x800007d0 sub     a0, a4, a0             #; a4  = 34, a0  = 30, (wrb) a0  <-- 4
       0     3836        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3837        M 0x800007dc addi    a5, a5, -1             #; a5  = 66, (wrb) a5  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3838        M 0x800007e0 addi    a4, a4, 1              #; a4  = 34, (wrb) a4  <-- 35
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3839        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 65, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3840        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 35, a2  = 0xcccccccd
       0     3843        M                                           #; (acc) a0  <-- 0x00355513
       0     3844        M 0x800007c8 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     3845        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3848        M                                           #; (acc) a0  <-- 0x40a70533
       0     3849        M 0x800007d0 sub     a0, a4, a0             #; a4  = 35, a0  = 30, (wrb) a0  <-- 5
       0     3851        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     3852        M 0x800007dc addi    a5, a5, -1             #; a5  = 65, (wrb) a5  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3853        M 0x800007e0 addi    a4, a4, 1              #; a4  = 35, (wrb) a4  <-- 36
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3854        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 64, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3855        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 36, a2  = 0xcccccccd
       0     3858        M                                           #; (acc) a0  <-- 0x00355513
       0     3859        M 0x800007c8 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
       0     3860        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3863        M                                           #; (acc) a0  <-- 0x40a70533
       0     3864        M 0x800007d0 sub     a0, a4, a0             #; a4  = 36, a0  = 30, (wrb) a0  <-- 6
       0     3866        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     3867        M 0x800007dc addi    a5, a5, -1             #; a5  = 64, (wrb) a5  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3868        M 0x800007e0 addi    a4, a4, 1              #; a4  = 36, (wrb) a4  <-- 37
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3869        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 63, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3870        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 37, a2  = 0xcccccccd
       0     3873        M                                           #; (acc) a0  <-- 0x00355513
       0     3874        M 0x800007c8 srli    a0, a0, 3              #; a0  = 29, (wrb) a0  <-- 3
       0     3875        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3878        M                                           #; (acc) a0  <-- 0x40a70533
       0     3879        M 0x800007d0 sub     a0, a4, a0             #; a4  = 37, a0  = 30, (wrb) a0  <-- 7
       0     3881        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     3882        M 0x800007dc addi    a5, a5, -1             #; a5  = 63, (wrb) a5  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3883        M 0x800007e0 addi    a4, a4, 1              #; a4  = 37, (wrb) a4  <-- 38
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3884        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 62, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3885        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 38, a2  = 0xcccccccd
       0     3888        M                                           #; (acc) a0  <-- 0x00355513
       0     3889        M 0x800007c8 srli    a0, a0, 3              #; a0  = 30, (wrb) a0  <-- 3
       0     3890        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3893        M                                           #; (acc) a0  <-- 0x40a70533
       0     3894        M 0x800007d0 sub     a0, a4, a0             #; a4  = 38, a0  = 30, (wrb) a0  <-- 8
       0     3896        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     3897        M 0x800007dc addi    a5, a5, -1             #; a5  = 62, (wrb) a5  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3898        M 0x800007e0 addi    a4, a4, 1              #; a4  = 38, (wrb) a4  <-- 39
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3899        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 61, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3900        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 39, a2  = 0xcccccccd
       0     3903        M                                           #; (acc) a0  <-- 0x00355513
       0     3904        M 0x800007c8 srli    a0, a0, 3              #; a0  = 31, (wrb) a0  <-- 3
       0     3905        M 0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
       0     3908        M                                           #; (acc) a0  <-- 0x40a70533
       0     3909        M 0x800007d0 sub     a0, a4, a0             #; a4  = 39, a0  = 30, (wrb) a0  <-- 9
       0     3911        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     3912        M 0x800007dc addi    a5, a5, -1             #; a5  = 61, (wrb) a5  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3913        M 0x800007e0 addi    a4, a4, 1              #; a4  = 39, (wrb) a4  <-- 40
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3914        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 60, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3915        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 40, a2  = 0xcccccccd
       0     3918        M                                           #; (acc) a0  <-- 0x00355513
       0     3919        M 0x800007c8 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     3920        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3923        M                                           #; (acc) a0  <-- 0x40a70533
       0     3924        M 0x800007d0 sub     a0, a4, a0             #; a4  = 40, a0  = 40, (wrb) a0  <-- 0
       0     3926        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3927        M 0x800007dc addi    a5, a5, -1             #; a5  = 60, (wrb) a5  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3928        M 0x800007e0 addi    a4, a4, 1              #; a4  = 40, (wrb) a4  <-- 41
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3929        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 59, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3930        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 41, a2  = 0xcccccccd
       0     3933        M                                           #; (acc) a0  <-- 0x00355513
       0     3934        M 0x800007c8 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
       0     3935        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3938        M                                           #; (acc) a0  <-- 0x40a70533
       0     3939        M 0x800007d0 sub     a0, a4, a0             #; a4  = 41, a0  = 40, (wrb) a0  <-- 1
       0     3941        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     3942        M 0x800007dc addi    a5, a5, -1             #; a5  = 59, (wrb) a5  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3943        M 0x800007e0 addi    a4, a4, 1              #; a4  = 41, (wrb) a4  <-- 42
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3944        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 58, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3945        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 42, a2  = 0xcccccccd
       0     3948        M                                           #; (acc) a0  <-- 0x00355513
       0     3949        M 0x800007c8 srli    a0, a0, 3              #; a0  = 33, (wrb) a0  <-- 4
       0     3950        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3953        M                                           #; (acc) a0  <-- 0x40a70533
       0     3954        M 0x800007d0 sub     a0, a4, a0             #; a4  = 42, a0  = 40, (wrb) a0  <-- 2
       0     3956        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     3957        M 0x800007dc addi    a5, a5, -1             #; a5  = 58, (wrb) a5  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3958        M 0x800007e0 addi    a4, a4, 1              #; a4  = 42, (wrb) a4  <-- 43
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3959        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 57, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3960        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 43, a2  = 0xcccccccd
       0     3963        M                                           #; (acc) a0  <-- 0x00355513
       0     3964        M 0x800007c8 srli    a0, a0, 3              #; a0  = 34, (wrb) a0  <-- 4
       0     3965        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3968        M                                           #; (acc) a0  <-- 0x40a70533
       0     3969        M 0x800007d0 sub     a0, a4, a0             #; a4  = 43, a0  = 40, (wrb) a0  <-- 3
       0     3971        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     3972        M 0x800007dc addi    a5, a5, -1             #; a5  = 57, (wrb) a5  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3973        M 0x800007e0 addi    a4, a4, 1              #; a4  = 43, (wrb) a4  <-- 44
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3974        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 56, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3975        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 44, a2  = 0xcccccccd
       0     3978        M                                           #; (acc) a0  <-- 0x00355513
       0     3979        M 0x800007c8 srli    a0, a0, 3              #; a0  = 35, (wrb) a0  <-- 4
       0     3980        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3983        M                                           #; (acc) a0  <-- 0x40a70533
       0     3984        M 0x800007d0 sub     a0, a4, a0             #; a4  = 44, a0  = 40, (wrb) a0  <-- 4
       0     3986        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     3987        M 0x800007dc addi    a5, a5, -1             #; a5  = 56, (wrb) a5  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3988        M 0x800007e0 addi    a4, a4, 1              #; a4  = 44, (wrb) a4  <-- 45
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3989        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 55, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3990        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 45, a2  = 0xcccccccd
       0     3993        M                                           #; (acc) a0  <-- 0x00355513
       0     3994        M 0x800007c8 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     3995        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     3998        M                                           #; (acc) a0  <-- 0x40a70533
       0     3999        M 0x800007d0 sub     a0, a4, a0             #; a4  = 45, a0  = 40, (wrb) a0  <-- 5
       0     4001        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4002        M 0x800007dc addi    a5, a5, -1             #; a5  = 55, (wrb) a5  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4003        M 0x800007e0 addi    a4, a4, 1              #; a4  = 45, (wrb) a4  <-- 46
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4004        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 54, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4005        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 46, a2  = 0xcccccccd
       0     4008        M                                           #; (acc) a0  <-- 0x00355513
       0     4009        M 0x800007c8 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
       0     4010        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4013        M                                           #; (acc) a0  <-- 0x40a70533
       0     4014        M 0x800007d0 sub     a0, a4, a0             #; a4  = 46, a0  = 40, (wrb) a0  <-- 6
       0     4016        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4017        M 0x800007dc addi    a5, a5, -1             #; a5  = 54, (wrb) a5  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4018        M 0x800007e0 addi    a4, a4, 1              #; a4  = 46, (wrb) a4  <-- 47
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4019        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 53, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4020        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 47, a2  = 0xcccccccd
       0     4023        M                                           #; (acc) a0  <-- 0x00355513
       0     4024        M 0x800007c8 srli    a0, a0, 3              #; a0  = 37, (wrb) a0  <-- 4
       0     4025        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4028        M                                           #; (acc) a0  <-- 0x40a70533
       0     4029        M 0x800007d0 sub     a0, a4, a0             #; a4  = 47, a0  = 40, (wrb) a0  <-- 7
       0     4031        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4032        M 0x800007dc addi    a5, a5, -1             #; a5  = 53, (wrb) a5  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4033        M 0x800007e0 addi    a4, a4, 1              #; a4  = 47, (wrb) a4  <-- 48
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4034        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 52, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4035        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 48, a2  = 0xcccccccd
       0     4038        M                                           #; (acc) a0  <-- 0x00355513
       0     4039        M 0x800007c8 srli    a0, a0, 3              #; a0  = 38, (wrb) a0  <-- 4
       0     4040        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4043        M                                           #; (acc) a0  <-- 0x40a70533
       0     4044        M 0x800007d0 sub     a0, a4, a0             #; a4  = 48, a0  = 40, (wrb) a0  <-- 8
       0     4046        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4047        M 0x800007dc addi    a5, a5, -1             #; a5  = 52, (wrb) a5  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4048        M 0x800007e0 addi    a4, a4, 1              #; a4  = 48, (wrb) a4  <-- 49
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4049        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 51, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4050        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 49, a2  = 0xcccccccd
       0     4053        M                                           #; (acc) a0  <-- 0x00355513
       0     4054        M 0x800007c8 srli    a0, a0, 3              #; a0  = 39, (wrb) a0  <-- 4
       0     4055        M 0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
       0     4058        M                                           #; (acc) a0  <-- 0x40a70533
       0     4059        M 0x800007d0 sub     a0, a4, a0             #; a4  = 49, a0  = 40, (wrb) a0  <-- 9
       0     4061        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4062        M 0x800007dc addi    a5, a5, -1             #; a5  = 51, (wrb) a5  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4063        M 0x800007e0 addi    a4, a4, 1              #; a4  = 49, (wrb) a4  <-- 50
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4064        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 50, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4065        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 50, a2  = 0xcccccccd
       0     4068        M                                           #; (acc) a0  <-- 0x00355513
       0     4069        M 0x800007c8 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     4070        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4073        M                                           #; (acc) a0  <-- 0x40a70533
       0     4074        M 0x800007d0 sub     a0, a4, a0             #; a4  = 50, a0  = 50, (wrb) a0  <-- 0
       0     4076        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4077        M 0x800007dc addi    a5, a5, -1             #; a5  = 50, (wrb) a5  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4078        M 0x800007e0 addi    a4, a4, 1              #; a4  = 50, (wrb) a4  <-- 51
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4079        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 49, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4080        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 51, a2  = 0xcccccccd
       0     4083        M                                           #; (acc) a0  <-- 0x00355513
       0     4084        M 0x800007c8 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
       0     4085        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4088        M                                           #; (acc) a0  <-- 0x40a70533
       0     4089        M 0x800007d0 sub     a0, a4, a0             #; a4  = 51, a0  = 50, (wrb) a0  <-- 1
       0     4091        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4092        M 0x800007dc addi    a5, a5, -1             #; a5  = 49, (wrb) a5  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4093        M 0x800007e0 addi    a4, a4, 1              #; a4  = 51, (wrb) a4  <-- 52
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4094        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 48, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4095        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 52, a2  = 0xcccccccd
       0     4098        M                                           #; (acc) a0  <-- 0x00355513
       0     4099        M 0x800007c8 srli    a0, a0, 3              #; a0  = 41, (wrb) a0  <-- 5
       0     4100        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4103        M                                           #; (acc) a0  <-- 0x40a70533
       0     4104        M 0x800007d0 sub     a0, a4, a0             #; a4  = 52, a0  = 50, (wrb) a0  <-- 2
       0     4106        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4107        M 0x800007dc addi    a5, a5, -1             #; a5  = 48, (wrb) a5  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4108        M 0x800007e0 addi    a4, a4, 1              #; a4  = 52, (wrb) a4  <-- 53
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4109        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 47, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4110        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 53, a2  = 0xcccccccd
       0     4113        M                                           #; (acc) a0  <-- 0x00355513
       0     4114        M 0x800007c8 srli    a0, a0, 3              #; a0  = 42, (wrb) a0  <-- 5
       0     4115        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4118        M                                           #; (acc) a0  <-- 0x40a70533
       0     4119        M 0x800007d0 sub     a0, a4, a0             #; a4  = 53, a0  = 50, (wrb) a0  <-- 3
       0     4121        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4122        M 0x800007dc addi    a5, a5, -1             #; a5  = 47, (wrb) a5  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4123        M 0x800007e0 addi    a4, a4, 1              #; a4  = 53, (wrb) a4  <-- 54
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4124        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 46, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4125        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 54, a2  = 0xcccccccd
       0     4128        M                                           #; (acc) a0  <-- 0x00355513
       0     4129        M 0x800007c8 srli    a0, a0, 3              #; a0  = 43, (wrb) a0  <-- 5
       0     4130        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4133        M                                           #; (acc) a0  <-- 0x40a70533
       0     4134        M 0x800007d0 sub     a0, a4, a0             #; a4  = 54, a0  = 50, (wrb) a0  <-- 4
       0     4136        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4137        M 0x800007dc addi    a5, a5, -1             #; a5  = 46, (wrb) a5  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4138        M 0x800007e0 addi    a4, a4, 1              #; a4  = 54, (wrb) a4  <-- 55
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4139        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 45, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4140        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 55, a2  = 0xcccccccd
       0     4143        M                                           #; (acc) a0  <-- 0x00355513
       0     4144        M 0x800007c8 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     4145        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4148        M                                           #; (acc) a0  <-- 0x40a70533
       0     4149        M 0x800007d0 sub     a0, a4, a0             #; a4  = 55, a0  = 50, (wrb) a0  <-- 5
       0     4151        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4152        M 0x800007dc addi    a5, a5, -1             #; a5  = 45, (wrb) a5  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4153        M 0x800007e0 addi    a4, a4, 1              #; a4  = 55, (wrb) a4  <-- 56
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4154        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 44, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4155        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 56, a2  = 0xcccccccd
       0     4158        M                                           #; (acc) a0  <-- 0x00355513
       0     4159        M 0x800007c8 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
       0     4160        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4163        M                                           #; (acc) a0  <-- 0x40a70533
       0     4164        M 0x800007d0 sub     a0, a4, a0             #; a4  = 56, a0  = 50, (wrb) a0  <-- 6
       0     4166        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4167        M 0x800007dc addi    a5, a5, -1             #; a5  = 44, (wrb) a5  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4168        M 0x800007e0 addi    a4, a4, 1              #; a4  = 56, (wrb) a4  <-- 57
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4169        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 43, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4170        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 57, a2  = 0xcccccccd
       0     4173        M                                           #; (acc) a0  <-- 0x00355513
       0     4174        M 0x800007c8 srli    a0, a0, 3              #; a0  = 45, (wrb) a0  <-- 5
       0     4175        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4178        M                                           #; (acc) a0  <-- 0x40a70533
       0     4179        M 0x800007d0 sub     a0, a4, a0             #; a4  = 57, a0  = 50, (wrb) a0  <-- 7
       0     4181        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4182        M 0x800007dc addi    a5, a5, -1             #; a5  = 43, (wrb) a5  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4183        M 0x800007e0 addi    a4, a4, 1              #; a4  = 57, (wrb) a4  <-- 58
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4184        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 42, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4185        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 58, a2  = 0xcccccccd
       0     4188        M                                           #; (acc) a0  <-- 0x00355513
       0     4189        M 0x800007c8 srli    a0, a0, 3              #; a0  = 46, (wrb) a0  <-- 5
       0     4190        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4193        M                                           #; (acc) a0  <-- 0x40a70533
       0     4194        M 0x800007d0 sub     a0, a4, a0             #; a4  = 58, a0  = 50, (wrb) a0  <-- 8
       0     4196        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4197        M 0x800007dc addi    a5, a5, -1             #; a5  = 42, (wrb) a5  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4198        M 0x800007e0 addi    a4, a4, 1              #; a4  = 58, (wrb) a4  <-- 59
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4199        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 41, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4200        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 59, a2  = 0xcccccccd
       0     4203        M                                           #; (acc) a0  <-- 0x00355513
       0     4204        M 0x800007c8 srli    a0, a0, 3              #; a0  = 47, (wrb) a0  <-- 5
       0     4205        M 0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
       0     4208        M                                           #; (acc) a0  <-- 0x40a70533
       0     4209        M 0x800007d0 sub     a0, a4, a0             #; a4  = 59, a0  = 50, (wrb) a0  <-- 9
       0     4211        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4212        M 0x800007dc addi    a5, a5, -1             #; a5  = 41, (wrb) a5  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4213        M 0x800007e0 addi    a4, a4, 1              #; a4  = 59, (wrb) a4  <-- 60
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4214        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 40, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4215        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 60, a2  = 0xcccccccd
       0     4218        M                                           #; (acc) a0  <-- 0x00355513
       0     4219        M 0x800007c8 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     4220        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4223        M                                           #; (acc) a0  <-- 0x40a70533
       0     4224        M 0x800007d0 sub     a0, a4, a0             #; a4  = 60, a0  = 60, (wrb) a0  <-- 0
       0     4226        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4227        M 0x800007dc addi    a5, a5, -1             #; a5  = 40, (wrb) a5  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4228        M 0x800007e0 addi    a4, a4, 1              #; a4  = 60, (wrb) a4  <-- 61
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4229        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 39, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4230        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 61, a2  = 0xcccccccd
       0     4233        M                                           #; (acc) a0  <-- 0x00355513
       0     4234        M 0x800007c8 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
       0     4235        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4238        M                                           #; (acc) a0  <-- 0x40a70533
       0     4239        M 0x800007d0 sub     a0, a4, a0             #; a4  = 61, a0  = 60, (wrb) a0  <-- 1
       0     4241        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4242        M 0x800007dc addi    a5, a5, -1             #; a5  = 39, (wrb) a5  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4243        M 0x800007e0 addi    a4, a4, 1              #; a4  = 61, (wrb) a4  <-- 62
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4244        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 38, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4245        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 62, a2  = 0xcccccccd
       0     4248        M                                           #; (acc) a0  <-- 0x00355513
       0     4249        M 0x800007c8 srli    a0, a0, 3              #; a0  = 49, (wrb) a0  <-- 6
       0     4250        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4253        M                                           #; (acc) a0  <-- 0x40a70533
       0     4254        M 0x800007d0 sub     a0, a4, a0             #; a4  = 62, a0  = 60, (wrb) a0  <-- 2
       0     4256        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4257        M 0x800007dc addi    a5, a5, -1             #; a5  = 38, (wrb) a5  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4258        M 0x800007e0 addi    a4, a4, 1              #; a4  = 62, (wrb) a4  <-- 63
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4259        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 37, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4260        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 63, a2  = 0xcccccccd
       0     4263        M                                           #; (acc) a0  <-- 0x00355513
       0     4264        M 0x800007c8 srli    a0, a0, 3              #; a0  = 50, (wrb) a0  <-- 6
       0     4265        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4268        M                                           #; (acc) a0  <-- 0x40a70533
       0     4269        M 0x800007d0 sub     a0, a4, a0             #; a4  = 63, a0  = 60, (wrb) a0  <-- 3
       0     4271        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4272        M 0x800007dc addi    a5, a5, -1             #; a5  = 37, (wrb) a5  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4273        M 0x800007e0 addi    a4, a4, 1              #; a4  = 63, (wrb) a4  <-- 64
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4274        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 36, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4275        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 64, a2  = 0xcccccccd
       0     4278        M                                           #; (acc) a0  <-- 0x00355513
       0     4279        M 0x800007c8 srli    a0, a0, 3              #; a0  = 51, (wrb) a0  <-- 6
       0     4280        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4283        M                                           #; (acc) a0  <-- 0x40a70533
       0     4284        M 0x800007d0 sub     a0, a4, a0             #; a4  = 64, a0  = 60, (wrb) a0  <-- 4
       0     4286        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4287        M 0x800007dc addi    a5, a5, -1             #; a5  = 36, (wrb) a5  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4288        M 0x800007e0 addi    a4, a4, 1              #; a4  = 64, (wrb) a4  <-- 65
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4289        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 35, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4290        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 65, a2  = 0xcccccccd
       0     4293        M                                           #; (acc) a0  <-- 0x00355513
       0     4294        M 0x800007c8 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     4295        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4298        M                                           #; (acc) a0  <-- 0x40a70533
       0     4299        M 0x800007d0 sub     a0, a4, a0             #; a4  = 65, a0  = 60, (wrb) a0  <-- 5
       0     4301        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4302        M 0x800007dc addi    a5, a5, -1             #; a5  = 35, (wrb) a5  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4303        M 0x800007e0 addi    a4, a4, 1              #; a4  = 65, (wrb) a4  <-- 66
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4304        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 34, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4305        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 66, a2  = 0xcccccccd
       0     4308        M                                           #; (acc) a0  <-- 0x00355513
       0     4309        M 0x800007c8 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
       0     4310        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4313        M                                           #; (acc) a0  <-- 0x40a70533
       0     4314        M 0x800007d0 sub     a0, a4, a0             #; a4  = 66, a0  = 60, (wrb) a0  <-- 6
       0     4316        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4317        M 0x800007dc addi    a5, a5, -1             #; a5  = 34, (wrb) a5  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4318        M 0x800007e0 addi    a4, a4, 1              #; a4  = 66, (wrb) a4  <-- 67
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4319        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 33, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4320        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 67, a2  = 0xcccccccd
       0     4323        M                                           #; (acc) a0  <-- 0x00355513
       0     4324        M 0x800007c8 srli    a0, a0, 3              #; a0  = 53, (wrb) a0  <-- 6
       0     4325        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4328        M                                           #; (acc) a0  <-- 0x40a70533
       0     4329        M 0x800007d0 sub     a0, a4, a0             #; a4  = 67, a0  = 60, (wrb) a0  <-- 7
       0     4331        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4332        M 0x800007dc addi    a5, a5, -1             #; a5  = 33, (wrb) a5  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4333        M 0x800007e0 addi    a4, a4, 1              #; a4  = 67, (wrb) a4  <-- 68
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4334        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 32, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4335        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 68, a2  = 0xcccccccd
       0     4338        M                                           #; (acc) a0  <-- 0x00355513
       0     4339        M 0x800007c8 srli    a0, a0, 3              #; a0  = 54, (wrb) a0  <-- 6
       0     4340        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4343        M                                           #; (acc) a0  <-- 0x40a70533
       0     4344        M 0x800007d0 sub     a0, a4, a0             #; a4  = 68, a0  = 60, (wrb) a0  <-- 8
       0     4346        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4347        M 0x800007dc addi    a5, a5, -1             #; a5  = 32, (wrb) a5  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4348        M 0x800007e0 addi    a4, a4, 1              #; a4  = 68, (wrb) a4  <-- 69
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4349        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 31, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4350        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 69, a2  = 0xcccccccd
       0     4353        M                                           #; (acc) a0  <-- 0x00355513
       0     4354        M 0x800007c8 srli    a0, a0, 3              #; a0  = 55, (wrb) a0  <-- 6
       0     4355        M 0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
       0     4358        M                                           #; (acc) a0  <-- 0x40a70533
       0     4359        M 0x800007d0 sub     a0, a4, a0             #; a4  = 69, a0  = 60, (wrb) a0  <-- 9
       0     4361        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4362        M 0x800007dc addi    a5, a5, -1             #; a5  = 31, (wrb) a5  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4363        M 0x800007e0 addi    a4, a4, 1              #; a4  = 69, (wrb) a4  <-- 70
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4364        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 30, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4365        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 70, a2  = 0xcccccccd
       0     4368        M                                           #; (acc) a0  <-- 0x00355513
       0     4369        M 0x800007c8 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4370        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4373        M                                           #; (acc) a0  <-- 0x40a70533
       0     4374        M 0x800007d0 sub     a0, a4, a0             #; a4  = 70, a0  = 70, (wrb) a0  <-- 0
       0     4376        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4377        M 0x800007dc addi    a5, a5, -1             #; a5  = 30, (wrb) a5  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4378        M 0x800007e0 addi    a4, a4, 1              #; a4  = 70, (wrb) a4  <-- 71
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4379        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 29, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4380        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 71, a2  = 0xcccccccd
       0     4383        M                                           #; (acc) a0  <-- 0x00355513
       0     4384        M 0x800007c8 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4385        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4388        M                                           #; (acc) a0  <-- 0x40a70533
       0     4389        M 0x800007d0 sub     a0, a4, a0             #; a4  = 71, a0  = 70, (wrb) a0  <-- 1
       0     4391        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4392        M 0x800007dc addi    a5, a5, -1             #; a5  = 29, (wrb) a5  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4393        M 0x800007e0 addi    a4, a4, 1              #; a4  = 71, (wrb) a4  <-- 72
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4394        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 28, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4395        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 72, a2  = 0xcccccccd
       0     4398        M                                           #; (acc) a0  <-- 0x00355513
       0     4399        M 0x800007c8 srli    a0, a0, 3              #; a0  = 57, (wrb) a0  <-- 7
       0     4400        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4403        M                                           #; (acc) a0  <-- 0x40a70533
       0     4404        M 0x800007d0 sub     a0, a4, a0             #; a4  = 72, a0  = 70, (wrb) a0  <-- 2
       0     4406        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4407        M 0x800007dc addi    a5, a5, -1             #; a5  = 28, (wrb) a5  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4408        M 0x800007e0 addi    a4, a4, 1              #; a4  = 72, (wrb) a4  <-- 73
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4409        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 27, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4410        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 73, a2  = 0xcccccccd
       0     4413        M                                           #; (acc) a0  <-- 0x00355513
       0     4414        M 0x800007c8 srli    a0, a0, 3              #; a0  = 58, (wrb) a0  <-- 7
       0     4415        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4418        M                                           #; (acc) a0  <-- 0x40a70533
       0     4419        M 0x800007d0 sub     a0, a4, a0             #; a4  = 73, a0  = 70, (wrb) a0  <-- 3
       0     4421        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4422        M 0x800007dc addi    a5, a5, -1             #; a5  = 27, (wrb) a5  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4423        M 0x800007e0 addi    a4, a4, 1              #; a4  = 73, (wrb) a4  <-- 74
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4424        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 26, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4425        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 74, a2  = 0xcccccccd
       0     4428        M                                           #; (acc) a0  <-- 0x00355513
       0     4429        M 0x800007c8 srli    a0, a0, 3              #; a0  = 59, (wrb) a0  <-- 7
       0     4430        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4433        M                                           #; (acc) a0  <-- 0x40a70533
       0     4434        M 0x800007d0 sub     a0, a4, a0             #; a4  = 74, a0  = 70, (wrb) a0  <-- 4
       0     4436        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4437        M 0x800007dc addi    a5, a5, -1             #; a5  = 26, (wrb) a5  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4438        M 0x800007e0 addi    a4, a4, 1              #; a4  = 74, (wrb) a4  <-- 75
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4439        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 25, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4440        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 75, a2  = 0xcccccccd
       0     4443        M                                           #; (acc) a0  <-- 0x00355513
       0     4444        M 0x800007c8 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     4445        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4448        M                                           #; (acc) a0  <-- 0x40a70533
       0     4449        M 0x800007d0 sub     a0, a4, a0             #; a4  = 75, a0  = 70, (wrb) a0  <-- 5
       0     4451        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4452        M 0x800007dc addi    a5, a5, -1             #; a5  = 25, (wrb) a5  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4453        M 0x800007e0 addi    a4, a4, 1              #; a4  = 75, (wrb) a4  <-- 76
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4454        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 24, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4455        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 76, a2  = 0xcccccccd
       0     4458        M                                           #; (acc) a0  <-- 0x00355513
       0     4459        M 0x800007c8 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
       0     4460        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4463        M                                           #; (acc) a0  <-- 0x40a70533
       0     4464        M 0x800007d0 sub     a0, a4, a0             #; a4  = 76, a0  = 70, (wrb) a0  <-- 6
       0     4466        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4467        M 0x800007dc addi    a5, a5, -1             #; a5  = 24, (wrb) a5  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4468        M 0x800007e0 addi    a4, a4, 1              #; a4  = 76, (wrb) a4  <-- 77
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4469        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 23, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4470        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 77, a2  = 0xcccccccd
       0     4473        M                                           #; (acc) a0  <-- 0x00355513
       0     4474        M 0x800007c8 srli    a0, a0, 3              #; a0  = 61, (wrb) a0  <-- 7
       0     4475        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4478        M                                           #; (acc) a0  <-- 0x40a70533
       0     4479        M 0x800007d0 sub     a0, a4, a0             #; a4  = 77, a0  = 70, (wrb) a0  <-- 7
       0     4481        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4482        M 0x800007dc addi    a5, a5, -1             #; a5  = 23, (wrb) a5  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4483        M 0x800007e0 addi    a4, a4, 1              #; a4  = 77, (wrb) a4  <-- 78
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4484        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 22, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4485        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 78, a2  = 0xcccccccd
       0     4488        M                                           #; (acc) a0  <-- 0x00355513
       0     4489        M 0x800007c8 srli    a0, a0, 3              #; a0  = 62, (wrb) a0  <-- 7
       0     4490        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4493        M                                           #; (acc) a0  <-- 0x40a70533
       0     4494        M 0x800007d0 sub     a0, a4, a0             #; a4  = 78, a0  = 70, (wrb) a0  <-- 8
       0     4496        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4497        M 0x800007dc addi    a5, a5, -1             #; a5  = 22, (wrb) a5  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4498        M 0x800007e0 addi    a4, a4, 1              #; a4  = 78, (wrb) a4  <-- 79
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4499        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 21, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4500        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 79, a2  = 0xcccccccd
       0     4503        M                                           #; (acc) a0  <-- 0x00355513
       0     4504        M 0x800007c8 srli    a0, a0, 3              #; a0  = 63, (wrb) a0  <-- 7
       0     4505        M 0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
       0     4508        M                                           #; (acc) a0  <-- 0x40a70533
       0     4509        M 0x800007d0 sub     a0, a4, a0             #; a4  = 79, a0  = 70, (wrb) a0  <-- 9
       0     4511        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4512        M 0x800007dc addi    a5, a5, -1             #; a5  = 21, (wrb) a5  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4513        M 0x800007e0 addi    a4, a4, 1              #; a4  = 79, (wrb) a4  <-- 80
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4514        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 20, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4515        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 80, a2  = 0xcccccccd
       0     4518        M                                           #; (acc) a0  <-- 0x00355513
       0     4519        M 0x800007c8 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     4520        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4523        M                                           #; (acc) a0  <-- 0x40a70533
       0     4524        M 0x800007d0 sub     a0, a4, a0             #; a4  = 80, a0  = 80, (wrb) a0  <-- 0
       0     4526        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4527        M 0x800007dc addi    a5, a5, -1             #; a5  = 20, (wrb) a5  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4528        M 0x800007e0 addi    a4, a4, 1              #; a4  = 80, (wrb) a4  <-- 81
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4529        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 19, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4530        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 81, a2  = 0xcccccccd
       0     4533        M                                           #; (acc) a0  <-- 0x00355513
       0     4534        M 0x800007c8 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
       0     4535        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4538        M                                           #; (acc) a0  <-- 0x40a70533
       0     4539        M 0x800007d0 sub     a0, a4, a0             #; a4  = 81, a0  = 80, (wrb) a0  <-- 1
       0     4541        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4542        M 0x800007dc addi    a5, a5, -1             #; a5  = 19, (wrb) a5  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4543        M 0x800007e0 addi    a4, a4, 1              #; a4  = 81, (wrb) a4  <-- 82
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4544        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 18, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4545        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 82, a2  = 0xcccccccd
       0     4548        M                                           #; (acc) a0  <-- 0x00355513
       0     4549        M 0x800007c8 srli    a0, a0, 3              #; a0  = 65, (wrb) a0  <-- 8
       0     4550        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4553        M                                           #; (acc) a0  <-- 0x40a70533
       0     4554        M 0x800007d0 sub     a0, a4, a0             #; a4  = 82, a0  = 80, (wrb) a0  <-- 2
       0     4556        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4557        M 0x800007dc addi    a5, a5, -1             #; a5  = 18, (wrb) a5  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4558        M 0x800007e0 addi    a4, a4, 1              #; a4  = 82, (wrb) a4  <-- 83
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4559        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 17, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4560        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 83, a2  = 0xcccccccd
       0     4563        M                                           #; (acc) a0  <-- 0x00355513
       0     4564        M 0x800007c8 srli    a0, a0, 3              #; a0  = 66, (wrb) a0  <-- 8
       0     4565        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4568        M                                           #; (acc) a0  <-- 0x40a70533
       0     4569        M 0x800007d0 sub     a0, a4, a0             #; a4  = 83, a0  = 80, (wrb) a0  <-- 3
       0     4571        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4572        M 0x800007dc addi    a5, a5, -1             #; a5  = 17, (wrb) a5  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4573        M 0x800007e0 addi    a4, a4, 1              #; a4  = 83, (wrb) a4  <-- 84
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4574        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 16, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4575        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 84, a2  = 0xcccccccd
       0     4578        M                                           #; (acc) a0  <-- 0x00355513
       0     4579        M 0x800007c8 srli    a0, a0, 3              #; a0  = 67, (wrb) a0  <-- 8
       0     4580        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4583        M                                           #; (acc) a0  <-- 0x40a70533
       0     4584        M 0x800007d0 sub     a0, a4, a0             #; a4  = 84, a0  = 80, (wrb) a0  <-- 4
       0     4586        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4587        M 0x800007dc addi    a5, a5, -1             #; a5  = 16, (wrb) a5  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4588        M 0x800007e0 addi    a4, a4, 1              #; a4  = 84, (wrb) a4  <-- 85
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4589        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 15, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4590        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 85, a2  = 0xcccccccd
       0     4593        M                                           #; (acc) a0  <-- 0x00355513
       0     4594        M 0x800007c8 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     4595        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4598        M                                           #; (acc) a0  <-- 0x40a70533
       0     4599        M 0x800007d0 sub     a0, a4, a0             #; a4  = 85, a0  = 80, (wrb) a0  <-- 5
       0     4601        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4602        M 0x800007dc addi    a5, a5, -1             #; a5  = 15, (wrb) a5  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4603        M 0x800007e0 addi    a4, a4, 1              #; a4  = 85, (wrb) a4  <-- 86
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4604        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 14, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4605        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 86, a2  = 0xcccccccd
       0     4608        M                                           #; (acc) a0  <-- 0x00355513
       0     4609        M 0x800007c8 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
       0     4610        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4613        M                                           #; (acc) a0  <-- 0x40a70533
       0     4614        M 0x800007d0 sub     a0, a4, a0             #; a4  = 86, a0  = 80, (wrb) a0  <-- 6
       0     4616        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4617        M 0x800007dc addi    a5, a5, -1             #; a5  = 14, (wrb) a5  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4618        M 0x800007e0 addi    a4, a4, 1              #; a4  = 86, (wrb) a4  <-- 87
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4619        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 13, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4620        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 87, a2  = 0xcccccccd
       0     4623        M                                           #; (acc) a0  <-- 0x00355513
       0     4624        M 0x800007c8 srli    a0, a0, 3              #; a0  = 69, (wrb) a0  <-- 8
       0     4625        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4628        M                                           #; (acc) a0  <-- 0x40a70533
       0     4629        M 0x800007d0 sub     a0, a4, a0             #; a4  = 87, a0  = 80, (wrb) a0  <-- 7
       0     4631        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4632        M 0x800007dc addi    a5, a5, -1             #; a5  = 13, (wrb) a5  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4633        M 0x800007e0 addi    a4, a4, 1              #; a4  = 87, (wrb) a4  <-- 88
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4634        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 12, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4635        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 88, a2  = 0xcccccccd
       0     4638        M                                           #; (acc) a0  <-- 0x00355513
       0     4639        M 0x800007c8 srli    a0, a0, 3              #; a0  = 70, (wrb) a0  <-- 8
       0     4640        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4643        M                                           #; (acc) a0  <-- 0x40a70533
       0     4644        M 0x800007d0 sub     a0, a4, a0             #; a4  = 88, a0  = 80, (wrb) a0  <-- 8
       0     4646        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4647        M 0x800007dc addi    a5, a5, -1             #; a5  = 12, (wrb) a5  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4648        M 0x800007e0 addi    a4, a4, 1              #; a4  = 88, (wrb) a4  <-- 89
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4649        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 11, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4650        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 89, a2  = 0xcccccccd
       0     4653        M                                           #; (acc) a0  <-- 0x00355513
       0     4654        M 0x800007c8 srli    a0, a0, 3              #; a0  = 71, (wrb) a0  <-- 8
       0     4655        M 0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
       0     4658        M                                           #; (acc) a0  <-- 0x40a70533
       0     4659        M 0x800007d0 sub     a0, a4, a0             #; a4  = 89, a0  = 80, (wrb) a0  <-- 9
       0     4661        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4662        M 0x800007dc addi    a5, a5, -1             #; a5  = 11, (wrb) a5  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4663        M 0x800007e0 addi    a4, a4, 1              #; a4  = 89, (wrb) a4  <-- 90
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4664        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 10, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4665        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 90, a2  = 0xcccccccd
       0     4668        M                                           #; (acc) a0  <-- 0x00355513
       0     4669        M 0x800007c8 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     4670        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4673        M                                           #; (acc) a0  <-- 0x40a70533
       0     4674        M 0x800007d0 sub     a0, a4, a0             #; a4  = 90, a0  = 90, (wrb) a0  <-- 0
       0     4676        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4677        M 0x800007dc addi    a5, a5, -1             #; a5  = 10, (wrb) a5  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4678        M 0x800007e0 addi    a4, a4, 1              #; a4  = 90, (wrb) a4  <-- 91
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4679        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 9, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4680        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 91, a2  = 0xcccccccd
       0     4683        M                                           #; (acc) a0  <-- 0x00355513
       0     4684        M 0x800007c8 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
       0     4685        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4688        M                                           #; (acc) a0  <-- 0x40a70533
       0     4689        M 0x800007d0 sub     a0, a4, a0             #; a4  = 91, a0  = 90, (wrb) a0  <-- 1
       0     4691        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     4692        M 0x800007dc addi    a5, a5, -1             #; a5  = 9, (wrb) a5  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4693        M 0x800007e0 addi    a4, a4, 1              #; a4  = 91, (wrb) a4  <-- 92
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4694        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 8, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4695        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 92, a2  = 0xcccccccd
       0     4698        M                                           #; (acc) a0  <-- 0x00355513
       0     4699        M 0x800007c8 srli    a0, a0, 3              #; a0  = 73, (wrb) a0  <-- 9
       0     4700        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4703        M                                           #; (acc) a0  <-- 0x40a70533
       0     4704        M 0x800007d0 sub     a0, a4, a0             #; a4  = 92, a0  = 90, (wrb) a0  <-- 2
       0     4706        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     4707        M 0x800007dc addi    a5, a5, -1             #; a5  = 8, (wrb) a5  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4708        M 0x800007e0 addi    a4, a4, 1              #; a4  = 92, (wrb) a4  <-- 93
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4709        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 7, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4710        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 93, a2  = 0xcccccccd
       0     4713        M                                           #; (acc) a0  <-- 0x00355513
       0     4714        M 0x800007c8 srli    a0, a0, 3              #; a0  = 74, (wrb) a0  <-- 9
       0     4715        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4718        M                                           #; (acc) a0  <-- 0x40a70533
       0     4719        M 0x800007d0 sub     a0, a4, a0             #; a4  = 93, a0  = 90, (wrb) a0  <-- 3
       0     4721        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     4722        M 0x800007dc addi    a5, a5, -1             #; a5  = 7, (wrb) a5  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4723        M 0x800007e0 addi    a4, a4, 1              #; a4  = 93, (wrb) a4  <-- 94
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4724        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 6, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4725        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 94, a2  = 0xcccccccd
       0     4728        M                                           #; (acc) a0  <-- 0x00355513
       0     4729        M 0x800007c8 srli    a0, a0, 3              #; a0  = 75, (wrb) a0  <-- 9
       0     4730        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4733        M                                           #; (acc) a0  <-- 0x40a70533
       0     4734        M 0x800007d0 sub     a0, a4, a0             #; a4  = 94, a0  = 90, (wrb) a0  <-- 4
       0     4736        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     4737        M 0x800007dc addi    a5, a5, -1             #; a5  = 6, (wrb) a5  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4738        M 0x800007e0 addi    a4, a4, 1              #; a4  = 94, (wrb) a4  <-- 95
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4739        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 5, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4740        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 95, a2  = 0xcccccccd
       0     4743        M                                           #; (acc) a0  <-- 0x00355513
       0     4744        M 0x800007c8 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     4745        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4748        M                                           #; (acc) a0  <-- 0x40a70533
       0     4749        M 0x800007d0 sub     a0, a4, a0             #; a4  = 95, a0  = 90, (wrb) a0  <-- 5
       0     4751        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     4752        M 0x800007dc addi    a5, a5, -1             #; a5  = 5, (wrb) a5  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4753        M 0x800007e0 addi    a4, a4, 1              #; a4  = 95, (wrb) a4  <-- 96
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4754        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 4, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4755        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 96, a2  = 0xcccccccd
       0     4758        M                                           #; (acc) a0  <-- 0x00355513
       0     4759        M 0x800007c8 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
       0     4760        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4763        M                                           #; (acc) a0  <-- 0x40a70533
       0     4764        M 0x800007d0 sub     a0, a4, a0             #; a4  = 96, a0  = 90, (wrb) a0  <-- 6
       0     4766        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     4767        M 0x800007dc addi    a5, a5, -1             #; a5  = 4, (wrb) a5  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4768        M 0x800007e0 addi    a4, a4, 1              #; a4  = 96, (wrb) a4  <-- 97
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4769        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 3, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4770        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 97, a2  = 0xcccccccd
       0     4773        M                                           #; (acc) a0  <-- 0x00355513
       0     4774        M 0x800007c8 srli    a0, a0, 3              #; a0  = 77, (wrb) a0  <-- 9
       0     4775        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4778        M                                           #; (acc) a0  <-- 0x40a70533
       0     4779        M 0x800007d0 sub     a0, a4, a0             #; a4  = 97, a0  = 90, (wrb) a0  <-- 7
       0     4781        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     4782        M 0x800007dc addi    a5, a5, -1             #; a5  = 3, (wrb) a5  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4783        M 0x800007e0 addi    a4, a4, 1              #; a4  = 97, (wrb) a4  <-- 98
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4784        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 2, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4785        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 98, a2  = 0xcccccccd
       0     4788        M                                           #; (acc) a0  <-- 0x00355513
       0     4789        M 0x800007c8 srli    a0, a0, 3              #; a0  = 78, (wrb) a0  <-- 9
       0     4790        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4793        M                                           #; (acc) a0  <-- 0x40a70533
       0     4794        M 0x800007d0 sub     a0, a4, a0             #; a4  = 98, a0  = 90, (wrb) a0  <-- 8
       0     4796        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     4797        M 0x800007dc addi    a5, a5, -1             #; a5  = 2, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4798        M 0x800007e0 addi    a4, a4, 1              #; a4  = 98, (wrb) a4  <-- 99
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4799        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 1, taken, goto 0x800007c4
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4800        M 0x800007c4 mulhu   a0, a4, a2             #; a4  = 99, a2  = 0xcccccccd
       0     4803        M                                           #; (acc) a0  <-- 0x00355513
       0     4804        M 0x800007c8 srli    a0, a0, 3              #; a0  = 79, (wrb) a0  <-- 9
       0     4805        M 0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
       0     4808        M                                           #; (acc) a0  <-- 0x40a70533
       0     4809        M 0x800007d0 sub     a0, a4, a0             #; a4  = 99, a0  = 90, (wrb) a0  <-- 9
       0     4811        M 0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     4812        M 0x800007dc addi    a5, a5, -1             #; a5  = 1, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4813        M 0x800007e0 addi    a4, a4, 1              #; a4  = 99, (wrb) a4  <-- 100
                         M 0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4814        M 0x800007e4 bnez    a5, pc - 32            #; a5  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4816        M 0x800007ec j       pc + 0x44              #; goto 0x80000830
                         M 0x800007e8 csrrci  a0, ssr, 1             #; 
       0     4827        M 0x80000830 and     a0, a6, a7             #; a6  = 1, a7  = 1, (wrb) a0  <-- 1
       0     4828        M 0x80000834 csrr    a2, mcycle             #; mcycle = 4827, (wrb) a2  <-- 4827
       0     4829        M 0x80000838 beqz    a0, pc + 104           #; a0  = 1, not taken
       0     4830        M 0x8000083c li      a0, 8                  #; (wrb) a0  <-- 8
       0     4839        M 0x80000840 li      a1, 99                 #; (wrb) a1  <-- 99
       0     4840        M 0x80000844 li      a3, 64                 #; (wrb) a3  <-- 64
       0     4841        M 0x80000848 li      a4, 192                #; (wrb) a4  <-- 192
       0     4842        M 0x8000084c scfgw   a1, a3                 #; a1  = 99, a3  = 64
       0     4851        M 0x80000850 scfgw   a0, a4                 #; a0  = 8, a4  = 192
       0     4852        M 0x80000854 li      a3, 32                 #; (wrb) a3  <-- 32
       0     4853        M 0x80000858 scfgw   zero, a3               #; a3  = 32
       0     4854        M 0x8000085c scfgwi  t0, 768                #; t0  = 0x00100000
       0     4863        M 0x80000860 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4864        M 0x80000864 addi    a4, a3, 64             #; a3  = 1, (wrb) a4  <-- 65
       0     4865        M 0x80000868 addi    a5, a3, 192            #; a3  = 1, (wrb) a5  <-- 193
       0     4866        M 0x8000086c scfgw   a1, a4                 #; a1  = 99, a4  = 65
       0     4875        M 0x80000870 scfgw   a0, a5                 #; a0  = 8, a5  = 193
       0     4876        M 0x80000874 addi    a0, a3, 32             #; a3  = 1, (wrb) a0  <-- 33
       0     4877        M 0x80000878 scfgw   zero, a0               #; a0  = 33
       0     4878        M 0x8000087c scfgwi  t1, 769                #; t1  = 0x00100320
       0     4888        M 0x80000880 csrrsi  a0, ssr, 1             #; 
       0     4889        M 0x80000888 li      a0, 100                #; (wrb) a0  <-- 100
                         M 0x80000884 fcvt.d.w fs0, zero             #; ac1  = 0
       0     4890        M 0x8000088c addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     4900        M 0x80000894 bnez    a0, pc - 8             #; a0  = 99, taken, goto 0x8000088c
       0     4901        M 0x8000088c addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 0.0
       0     4903        M 0x80000894 bnez    a0, pc - 8             #; a0  = 98, taken, goto 0x8000088c
       0     4904        M 0x8000088c addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     4905        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 0.0
       0     4906        M 0x80000894 bnez    a0, pc - 8             #; a0  = 97, taken, goto 0x8000088c
       0     4907        M 0x8000088c addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
       0     4908        M                                           #; (f:fpu) fs0  <-- 1.0
       0     4909        M 0x80000894 bnez    a0, pc - 8             #; a0  = 96, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1.0
       0     4910        M 0x8000088c addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
       0     4912        M 0x80000894 bnez    a0, pc - 8             #; a0  = 95, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 5.0
       0     4913        M 0x8000088c addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 5.0
       0     4915        M 0x80000894 bnez    a0, pc - 8             #; a0  = 94, taken, goto 0x8000088c
       0     4916        M 0x8000088c addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                         M                                           #; (f:fpu) fs0  <-- 14.0
       0     4917        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 14.0
       0     4918        M 0x80000894 bnez    a0, pc - 8             #; a0  = 93, taken, goto 0x8000088c
       0     4919        M 0x8000088c addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
       0     4920        M                                           #; (f:fpu) fs0  <-- 30.0
       0     4921        M 0x80000894 bnez    a0, pc - 8             #; a0  = 92, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 30.0
       0     4922        M 0x8000088c addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
       0     4924        M 0x80000894 bnez    a0, pc - 8             #; a0  = 91, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 55.0
       0     4925        M 0x8000088c addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 55.0
       0     4927        M 0x80000894 bnez    a0, pc - 8             #; a0  = 90, taken, goto 0x8000088c
       0     4928        M 0x8000088c addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                         M                                           #; (f:fpu) fs0  <-- 91.0
       0     4929        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 91.0
       0     4930        M 0x80000894 bnez    a0, pc - 8             #; a0  = 89, taken, goto 0x8000088c
       0     4931        M 0x8000088c addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
       0     4932        M                                           #; (f:fpu) fs0  <-- 140.0
       0     4933        M 0x80000894 bnez    a0, pc - 8             #; a0  = 88, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 140.0
       0     4934        M 0x8000088c addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
       0     4936        M 0x80000894 bnez    a0, pc - 8             #; a0  = 87, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 204.0
       0     4937        M 0x8000088c addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 204.0
       0     4939        M 0x80000894 bnez    a0, pc - 8             #; a0  = 86, taken, goto 0x8000088c
       0     4940        M 0x8000088c addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                         M                                           #; (f:fpu) fs0  <-- 285.0
       0     4941        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 285.0
       0     4942        M 0x80000894 bnez    a0, pc - 8             #; a0  = 85, taken, goto 0x8000088c
       0     4943        M 0x8000088c addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
       0     4944        M                                           #; (f:fpu) fs0  <-- 285.0
       0     4945        M 0x80000894 bnez    a0, pc - 8             #; a0  = 84, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 285.0
       0     4946        M 0x8000088c addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
       0     4948        M 0x80000894 bnez    a0, pc - 8             #; a0  = 83, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 286.0
       0     4949        M 0x8000088c addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 286.0
       0     4951        M 0x80000894 bnez    a0, pc - 8             #; a0  = 82, taken, goto 0x8000088c
       0     4952        M 0x8000088c addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                         M                                           #; (f:fpu) fs0  <-- 290.0
       0     4953        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 290.0
       0     4954        M 0x80000894 bnez    a0, pc - 8             #; a0  = 81, taken, goto 0x8000088c
       0     4955        M 0x8000088c addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
       0     4956        M                                           #; (f:fpu) fs0  <-- 299.0
       0     4957        M 0x80000894 bnez    a0, pc - 8             #; a0  = 80, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 299.0
       0     4958        M 0x8000088c addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
       0     4960        M 0x80000894 bnez    a0, pc - 8             #; a0  = 79, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 315.0
       0     4961        M 0x8000088c addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 315.0
       0     4963        M 0x80000894 bnez    a0, pc - 8             #; a0  = 78, taken, goto 0x8000088c
       0     4964        M 0x8000088c addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                         M                                           #; (f:fpu) fs0  <-- 340.0
       0     4965        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 340.0
       0     4966        M 0x80000894 bnez    a0, pc - 8             #; a0  = 77, taken, goto 0x8000088c
       0     4967        M 0x8000088c addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
       0     4968        M                                           #; (f:fpu) fs0  <-- 376.0
       0     4969        M 0x80000894 bnez    a0, pc - 8             #; a0  = 76, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 376.0
       0     4970        M 0x8000088c addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
       0     4972        M 0x80000894 bnez    a0, pc - 8             #; a0  = 75, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 425.0
       0     4973        M 0x8000088c addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 425.0
       0     4975        M 0x80000894 bnez    a0, pc - 8             #; a0  = 74, taken, goto 0x8000088c
       0     4976        M 0x8000088c addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                         M                                           #; (f:fpu) fs0  <-- 489.0
       0     4977        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 489.0
       0     4978        M 0x80000894 bnez    a0, pc - 8             #; a0  = 73, taken, goto 0x8000088c
       0     4979        M 0x8000088c addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
       0     4980        M                                           #; (f:fpu) fs0  <-- 570.0
       0     4981        M 0x80000894 bnez    a0, pc - 8             #; a0  = 72, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 570.0
       0     4982        M 0x8000088c addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
       0     4984        M 0x80000894 bnez    a0, pc - 8             #; a0  = 71, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 570.0
       0     4985        M 0x8000088c addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 570.0
       0     4987        M 0x80000894 bnez    a0, pc - 8             #; a0  = 70, taken, goto 0x8000088c
       0     4988        M 0x8000088c addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                         M                                           #; (f:fpu) fs0  <-- 571.0
       0     4989        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 571.0
       0     4990        M 0x80000894 bnez    a0, pc - 8             #; a0  = 69, taken, goto 0x8000088c
       0     4991        M 0x8000088c addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
       0     4992        M                                           #; (f:fpu) fs0  <-- 575.0
       0     4993        M 0x80000894 bnez    a0, pc - 8             #; a0  = 68, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 575.0
       0     4994        M 0x8000088c addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
       0     4996        M 0x80000894 bnez    a0, pc - 8             #; a0  = 67, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 584.0
       0     4997        M 0x8000088c addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 584.0
       0     4999        M 0x80000894 bnez    a0, pc - 8             #; a0  = 66, taken, goto 0x8000088c
       0     5000        M 0x8000088c addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                         M                                           #; (f:fpu) fs0  <-- 600.0
       0     5001        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 600.0
       0     5002        M 0x80000894 bnez    a0, pc - 8             #; a0  = 65, taken, goto 0x8000088c
       0     5003        M 0x8000088c addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
       0     5004        M                                           #; (f:fpu) fs0  <-- 625.0
       0     5005        M 0x80000894 bnez    a0, pc - 8             #; a0  = 64, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 625.0
       0     5006        M 0x8000088c addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
       0     5008        M 0x80000894 bnez    a0, pc - 8             #; a0  = 63, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 661.0
       0     5009        M 0x8000088c addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 661.0
       0     5011        M 0x80000894 bnez    a0, pc - 8             #; a0  = 62, taken, goto 0x8000088c
       0     5012        M 0x8000088c addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                         M                                           #; (f:fpu) fs0  <-- 710.0
       0     5013        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 710.0
       0     5014        M 0x80000894 bnez    a0, pc - 8             #; a0  = 61, taken, goto 0x8000088c
       0     5015        M 0x8000088c addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
       0     5016        M                                           #; (f:fpu) fs0  <-- 774.0
       0     5017        M 0x80000894 bnez    a0, pc - 8             #; a0  = 60, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 774.0
       0     5018        M 0x8000088c addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
       0     5020        M 0x80000894 bnez    a0, pc - 8             #; a0  = 59, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 855.0
       0     5021        M 0x8000088c addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 855.0
       0     5023        M 0x80000894 bnez    a0, pc - 8             #; a0  = 58, taken, goto 0x8000088c
       0     5024        M 0x8000088c addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                         M                                           #; (f:fpu) fs0  <-- 855.0
       0     5025        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 855.0
       0     5026        M 0x80000894 bnez    a0, pc - 8             #; a0  = 57, taken, goto 0x8000088c
       0     5027        M 0x8000088c addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
       0     5028        M                                           #; (f:fpu) fs0  <-- 856.0
       0     5029        M 0x80000894 bnez    a0, pc - 8             #; a0  = 56, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 856.0
       0     5030        M 0x8000088c addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
       0     5032        M 0x80000894 bnez    a0, pc - 8             #; a0  = 55, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 860.0
       0     5033        M 0x8000088c addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 860.0
       0     5035        M 0x80000894 bnez    a0, pc - 8             #; a0  = 54, taken, goto 0x8000088c
       0     5036        M 0x8000088c addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                         M                                           #; (f:fpu) fs0  <-- 869.0
       0     5037        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 869.0
       0     5038        M 0x80000894 bnez    a0, pc - 8             #; a0  = 53, taken, goto 0x8000088c
       0     5039        M 0x8000088c addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
       0     5040        M                                           #; (f:fpu) fs0  <-- 885.0
       0     5041        M 0x80000894 bnez    a0, pc - 8             #; a0  = 52, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 885.0
       0     5042        M 0x8000088c addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
       0     5044        M 0x80000894 bnez    a0, pc - 8             #; a0  = 51, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 910.0
       0     5045        M 0x8000088c addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 910.0
       0     5047        M 0x80000894 bnez    a0, pc - 8             #; a0  = 50, taken, goto 0x8000088c
       0     5048        M 0x8000088c addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                         M                                           #; (f:fpu) fs0  <-- 946.0
       0     5049        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 946.0
       0     5050        M 0x80000894 bnez    a0, pc - 8             #; a0  = 49, taken, goto 0x8000088c
       0     5051        M 0x8000088c addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
       0     5052        M                                           #; (f:fpu) fs0  <-- 995.0
       0     5053        M 0x80000894 bnez    a0, pc - 8             #; a0  = 48, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 995.0
       0     5054        M 0x8000088c addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
       0     5056        M 0x80000894 bnez    a0, pc - 8             #; a0  = 47, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1059.0
       0     5057        M 0x8000088c addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1059.0
       0     5059        M 0x80000894 bnez    a0, pc - 8             #; a0  = 46, taken, goto 0x8000088c
       0     5060        M 0x8000088c addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                         M                                           #; (f:fpu) fs0  <-- 1140.0
       0     5061        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1140.0
       0     5062        M 0x80000894 bnez    a0, pc - 8             #; a0  = 45, taken, goto 0x8000088c
       0     5063        M 0x8000088c addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
       0     5064        M                                           #; (f:fpu) fs0  <-- 1140.0
       0     5065        M 0x80000894 bnez    a0, pc - 8             #; a0  = 44, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1140.0
       0     5066        M 0x8000088c addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
       0     5068        M 0x80000894 bnez    a0, pc - 8             #; a0  = 43, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1141.0
       0     5069        M 0x8000088c addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1141.0
       0     5071        M 0x80000894 bnez    a0, pc - 8             #; a0  = 42, taken, goto 0x8000088c
       0     5072        M 0x8000088c addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                         M                                           #; (f:fpu) fs0  <-- 1145.0
       0     5073        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1145.0
       0     5074        M 0x80000894 bnez    a0, pc - 8             #; a0  = 41, taken, goto 0x8000088c
       0     5075        M 0x8000088c addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
       0     5076        M                                           #; (f:fpu) fs0  <-- 1154.0
       0     5077        M 0x80000894 bnez    a0, pc - 8             #; a0  = 40, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1154.0
       0     5078        M 0x8000088c addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
       0     5080        M 0x80000894 bnez    a0, pc - 8             #; a0  = 39, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1170.0
       0     5081        M 0x8000088c addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1170.0
       0     5083        M 0x80000894 bnez    a0, pc - 8             #; a0  = 38, taken, goto 0x8000088c
       0     5084        M 0x8000088c addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                         M                                           #; (f:fpu) fs0  <-- 1195.0
       0     5085        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1195.0
       0     5086        M 0x80000894 bnez    a0, pc - 8             #; a0  = 37, taken, goto 0x8000088c
       0     5087        M 0x8000088c addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
       0     5088        M                                           #; (f:fpu) fs0  <-- 1231.0
       0     5089        M 0x80000894 bnez    a0, pc - 8             #; a0  = 36, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1231.0
       0     5090        M 0x8000088c addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
       0     5092        M 0x80000894 bnez    a0, pc - 8             #; a0  = 35, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1280.0
       0     5093        M 0x8000088c addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1280.0
       0     5095        M 0x80000894 bnez    a0, pc - 8             #; a0  = 34, taken, goto 0x8000088c
       0     5096        M 0x8000088c addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                         M                                           #; (f:fpu) fs0  <-- 1344.0
       0     5097        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1344.0
       0     5098        M 0x80000894 bnez    a0, pc - 8             #; a0  = 33, taken, goto 0x8000088c
       0     5099        M 0x8000088c addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
       0     5100        M                                           #; (f:fpu) fs0  <-- 1425.0
       0     5101        M 0x80000894 bnez    a0, pc - 8             #; a0  = 32, taken, goto 0x8000088c
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1425.0
       0     5102        M 0x8000088c addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
       0     5104        M 0x80000894 bnez    a0, pc - 8             #; a0  = 31, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1425.0
       0     5105        M 0x8000088c addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1425.0
       0     5108        M 0x80000894 bnez    a0, pc - 8             #; a0  = 30, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1426.0
       0     5109        M 0x8000088c addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1426.0
       0     5112        M 0x80000894 bnez    a0, pc - 8             #; a0  = 29, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1430.0
       0     5113        M 0x8000088c addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1430.0
       0     5116        M 0x80000894 bnez    a0, pc - 8             #; a0  = 28, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1439.0
       0     5117        M 0x8000088c addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1439.0
       0     5120        M 0x80000894 bnez    a0, pc - 8             #; a0  = 27, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1455.0
       0     5121        M 0x8000088c addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1455.0
       0     5124        M 0x80000894 bnez    a0, pc - 8             #; a0  = 26, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1480.0
       0     5125        M 0x8000088c addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1480.0
       0     5128        M 0x80000894 bnez    a0, pc - 8             #; a0  = 25, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1516.0
       0     5129        M 0x8000088c addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1516.0
       0     5132        M 0x80000894 bnez    a0, pc - 8             #; a0  = 24, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1565.0
       0     5133        M 0x8000088c addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1565.0
       0     5136        M 0x80000894 bnez    a0, pc - 8             #; a0  = 23, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1629.0
       0     5137        M 0x8000088c addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1629.0
       0     5140        M 0x80000894 bnez    a0, pc - 8             #; a0  = 22, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1710.0
       0     5141        M 0x8000088c addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1710.0
       0     5144        M 0x80000894 bnez    a0, pc - 8             #; a0  = 21, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1710.0
       0     5145        M 0x8000088c addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1710.0
       0     5148        M 0x80000894 bnez    a0, pc - 8             #; a0  = 20, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1711.0
       0     5149        M 0x8000088c addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1711.0
       0     5152        M 0x80000894 bnez    a0, pc - 8             #; a0  = 19, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1715.0
       0     5153        M 0x8000088c addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1715.0
       0     5156        M 0x80000894 bnez    a0, pc - 8             #; a0  = 18, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1724.0
       0     5157        M 0x8000088c addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1724.0
       0     5160        M 0x80000894 bnez    a0, pc - 8             #; a0  = 17, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1740.0
       0     5161        M 0x8000088c addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1740.0
       0     5164        M 0x80000894 bnez    a0, pc - 8             #; a0  = 16, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1765.0
       0     5165        M 0x8000088c addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1765.0
       0     5168        M 0x80000894 bnez    a0, pc - 8             #; a0  = 15, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1801.0
       0     5169        M 0x8000088c addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1801.0
       0     5172        M 0x80000894 bnez    a0, pc - 8             #; a0  = 14, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1850.0
       0     5173        M 0x8000088c addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1850.0
       0     5176        M 0x80000894 bnez    a0, pc - 8             #; a0  = 13, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1914.0
       0     5177        M 0x8000088c addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1914.0
       0     5180        M 0x80000894 bnez    a0, pc - 8             #; a0  = 12, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1995.0
       0     5181        M 0x8000088c addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1995.0
       0     5184        M 0x80000894 bnez    a0, pc - 8             #; a0  = 11, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1995.0
       0     5185        M 0x8000088c addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1995.0
       0     5188        M 0x80000894 bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 1996.0
       0     5189        M 0x8000088c addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1996.0
       0     5192        M 0x80000894 bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2000.0
       0     5193        M 0x8000088c addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2000.0
       0     5196        M 0x80000894 bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2009.0
       0     5197        M 0x8000088c addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2009.0
       0     5200        M 0x80000894 bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2025.0
       0     5201        M 0x8000088c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2025.0
       0     5204        M 0x80000894 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2050.0
       0     5205        M 0x8000088c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2050.0
       0     5208        M 0x80000894 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2086.0
       0     5209        M 0x8000088c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2086.0
       0     5212        M 0x80000894 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2135.0
       0     5213        M 0x8000088c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2135.0
       0     5216        M 0x80000894 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2199.0
       0     5217        M 0x8000088c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2199.0
       0     5220        M 0x80000894 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2280.0
       0     5221        M 0x8000088c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2280.0
       0     5224        M 0x80000894 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x8000088c
                         M                                           #; (f:fpu) fs0  <-- 2280.0
       0     5225        M 0x8000088c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2280.0
       0     5228        M 0x80000894 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) fs0  <-- 2281.0
       0     5229        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2281.0
       0     5232        M 0x8000089c j       pc + 0x2c              #; goto 0x800008c8
                         M                                           #; (f:fpu) fs0  <-- 2285.0
       0     5233        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2285.0
       0     5236        M                                           #; (f:fpu) fs0  <-- 2294.0
       0     5237        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2294.0
       0     5240        M                                           #; (f:fpu) fs0  <-- 2310.0
       0     5241        M 0x800008c8 csrr    a0, mcycle             #; mcycle = 5240, (wrb) a0  <-- 5240
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2310.0
       0     5242        M 0x800008cc sub     a1, a0, a2             #; a0  = 5240, a2  = 4827, (wrb) a1  <-- 413
       0     5244        M                                           #; (f:fpu) fs0  <-- 2335.0
       0     5245        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2335.0
       0     5248        M                                           #; (f:fpu) fs0  <-- 2371.0
       0     5249        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2371.0
       0     5252        M                                           #; (f:fpu) fs0  <-- 2420.0
       0     5253        M 0x800008d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d0
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2420.0
       0     5254        M 0x800008d4 addi    a0, a0, 929            #; a0  = 0x800028d0, (wrb) a0  <-- 0x80002c71
       0     5255        M 0x800008d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d8
       0     5256        M 0x800008dc jalr    ra, ra, 88             #; ra  = 0x800008d8, (wrb) ra  <-- 0x800008e0, goto 0x80000930
                         M                                           #; (f:fpu) fs0  <-- 2484.0
       0     5257        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2484.0
       0     5260        M                                           #; (f:fpu) fs0  <-- 2565.0
       0     5261        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2565.0
       0     5264        M                                           #; (f:fpu) fs0  <-- 2565.0
       0     5265        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2565.0
       0     5267        M 0x80000930 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5268        M 0x80000934 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008e0 ~~> Word[0x0011ff1c]
                         M                                           #; (f:fpu) fs0  <-- 2566.0
       0     5269        M 0x80000938 mv      t0, a0                 #; a0  = 0x80002c71, (wrb) t0  <-- 0x80002c71
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2566.0
       0     5270        M 0x8000093c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     5272        M                                           #; (f:fpu) fs0  <-- 2570.0
       0     5273        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2570.0
       0     5276        M                                           #; (f:fpu) fs0  <-- 2579.0
       0     5277        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2579.0
       0     5279        M 0x80000940 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     5280        M 0x80000944 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
                         M                                           #; (f:fpu) fs0  <-- 2595.0
       0     5281        M 0x80000948 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2595.0
       0     5282        M 0x8000094c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff2c]
       0     5284        M                                           #; (f:fpu) fs0  <-- 2620.0
       0     5285        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2620.0
       0     5288        M                                           #; (f:fpu) fs0  <-- 2656.0
       0     5289        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2656.0
       0     5291        M 0x80000950 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 4827 ~~> Word[0x0011ff28]
       0     5292        M 0x80000954 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 413 ~~> Word[0x0011ff24]
                         M                                           #; (f:fpu) fs0  <-- 2705.0
       0     5293        M 0x80000958 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
                         M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2705.0
       0     5294        M 0x8000095c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5296        M                                           #; (f:fpu) fs0  <-- 2769.0
       0     5297        M 0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2769.0
       0     5298        M 0x80000898 csrrci  a0, ssr, 1             #; 
       0     5300        M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5303        M 0x80000960 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001960
       0     5304        M 0x80000964 addi    a0, a0, -988           #; a0  = 0x80001960, (wrb) a0  <-- 0x80001584
       0     5305        M 0x80000968 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5306        M 0x8000096c li      a2, -1                 #; (wrb) a2  <-- -1
       0     5315        M 0x80000970 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5316        M 0x80000974 mv      a3, t0                 #; t0  = 0x80002c71, (wrb) a3  <-- 0x80002c71
       0     5317        M 0x80000978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000978
       0     5318        M 0x8000097c jalr    ra, ra, 20             #; ra  = 0x80000978, (wrb) ra  <-- 0x80000980, goto 0x8000098c
       0     5327        M 0x8000098c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5339        M 0x80000990 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000980 ~~> Word[0x0011ff0c]
       0     5340        M 0x80000994 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     5341        M 0x80000998 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     5342        M 0x8000099c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     5351        M 0x800009a0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5352        M 0x800009a4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5353        M 0x800009a8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5354        M 0x800009ac sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5363        M 0x800009b0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5364        M 0x800009b4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5365        M 0x800009b8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5366        M 0x800009bc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5375        M 0x800009c0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5376        M 0x800009c4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5377        M 0x800009c8 mv      s0, a3                 #; a3  = 0x80002c71, (wrb) s0  <-- 0x80002c71
       0     5378        M 0x800009cc mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5387        M 0x800009d0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5388        M 0x800009d4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5389        M 0x800009d8 mv      s2, a0                 #; a0  = 0x80001584, (wrb) s2  <-- 0x80001584
       0     5390        M 0x800009dc j       pc + 0xc               #; goto 0x800009e8
       0     5399        M 0x800009e8 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5400        M 0x800009ec li      s6, 37                 #; (wrb) s6  <-- 37
       0     5411        M 0x800009f0 li      s11, 16                #; (wrb) s11 <-- 16
       0     5412        M 0x800009f4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5413        M 0x800009f8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5414        M 0x800009fc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5423        M 0x80000a00 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5424        M 0x80000a04 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5425        M 0x80000a08 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5426        M 0x80000a0c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5435        M 0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c71, (wrb) s10 <-- 0x80002c73
       0     5436        M 0x80000a14 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5437        M 0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5438        M 0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c71, a0  <~~ Byte[0x80002c71]
       0     5449        M                                           #; (lsu) a0  <-- 99
       0     5450        M 0x80000a20 beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5451        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5452        M 0x80000a28 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5453        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5459        M 0x80000a30 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5460        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5461        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     5482        M 0x80001584 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5483        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5484        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5494        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5495        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     5496        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     5497        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5498        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5506        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5517        M                                           #; (lsu) a4  <-- 0
       0     5518        M 0x800015a4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5519        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 1 ~~> Word[0x80002fd4]
       0     5520        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 0, (wrb) a4  <-- 0x80002fd4
       0     5521        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd4, 99 ~~> Byte[0x8000301c]
       0     5522        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5543        M                                           #; (lsu) a4  <-- 1
       0     5544        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5545        M 0x800015bc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5546        M 0x800015c0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5547        M 0x800015c4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5548        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5549        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     5569        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     5583        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c71, (wrb) s0  <-- 0x80002c72
       0     5586        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c73, (wrb) s10 <-- 0x80002c74
       0     5587        M 0x80000a44 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5588        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c72, a0  <~~ Byte[0x80002c72]
       0     5599        M                                           #; (lsu) a0  <-- 121
       0     5600        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a24
       0     5601        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     5602        M 0x80000a28 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5603        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5604        M 0x80000a30 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5605        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5606        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     5609        M 0x80001584 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     5610        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5611        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5612        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5613        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     5614        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     5615        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5616        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5617        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5628        M                                           #; (lsu) a4  <-- 1
       0     5629        M 0x800015a4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5630        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 2 ~~> Word[0x80002fd4]
       0     5631        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 1, (wrb) a4  <-- 0x80002fd5
       0     5632        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd5, 121 ~~> Byte[0x8000301d]
       0     5633        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5654        M                                           #; (lsu) a4  <-- 2
       0     5655        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5656        M 0x800015bc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5657        M 0x800015c0 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     5658        M 0x800015c4 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     5659        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5660        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     5663        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     5668        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c72, (wrb) s0  <-- 0x80002c73
       0     5671        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c74, (wrb) s10 <-- 0x80002c75
       0     5672        M 0x80000a44 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5673        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c73, a0  <~~ Byte[0x80002c73]
       0     5684        M                                           #; (lsu) a0  <-- 99
       0     5685        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a24
       0     5686        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5687        M 0x80000a28 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5688        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5689        M 0x80000a30 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5690        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5691        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     5694        M 0x80001584 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5695        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5696        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5697        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5698        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     5699        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     5700        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5701        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5702        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5713        M                                           #; (lsu) a4  <-- 2
       0     5714        M 0x800015a4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5715        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 3 ~~> Word[0x80002fd4]
       0     5716        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 2, (wrb) a4  <-- 0x80002fd6
       0     5717        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd6, 99 ~~> Byte[0x8000301e]
       0     5718        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5739        M                                           #; (lsu) a4  <-- 3
       0     5740        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5741        M 0x800015bc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5742        M 0x800015c0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5743        M 0x800015c4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5744        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5745        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     5748        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     5753        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c73, (wrb) s0  <-- 0x80002c74
       0     5756        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c75, (wrb) s10 <-- 0x80002c76
       0     5757        M 0x80000a44 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5758        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c74, a0  <~~ Byte[0x80002c74]
       0     5769        M                                           #; (lsu) a0  <-- 108
       0     5770        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a24
       0     5771        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     5772        M 0x80000a28 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5773        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5774        M 0x80000a30 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5775        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5776        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     5779        M 0x80001584 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     5780        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5781        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5782        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5783        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     5784        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     5785        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5786        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5787        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5798        M                                           #; (lsu) a4  <-- 3
       0     5799        M 0x800015a4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5800        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 4 ~~> Word[0x80002fd4]
       0     5801        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 3, (wrb) a4  <-- 0x80002fd7
       0     5802        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd7, 108 ~~> Byte[0x8000301f]
       0     5803        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5824        M                                           #; (lsu) a4  <-- 4
       0     5825        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5826        M 0x800015bc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5827        M 0x800015c0 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     5828        M 0x800015c4 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     5829        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5830        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     5833        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     5838        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c74, (wrb) s0  <-- 0x80002c75
       0     5841        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c76, (wrb) s10 <-- 0x80002c77
       0     5842        M 0x80000a44 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5843        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c75, a0  <~~ Byte[0x80002c75]
       0     5854        M                                           #; (lsu) a0  <-- 101
       0     5855        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a24
       0     5856        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5857        M 0x80000a28 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5858        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5859        M 0x80000a30 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5860        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5861        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     5864        M 0x80001584 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5865        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5866        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5867        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5868        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     5869        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     5870        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5871        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5872        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5883        M                                           #; (lsu) a4  <-- 4
       0     5884        M 0x800015a4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5885        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 5 ~~> Word[0x80002fd4]
       0     5886        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 4, (wrb) a4  <-- 0x80002fd8
       0     5887        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd8, 101 ~~> Byte[0x80003020]
       0     5888        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5909        M                                           #; (lsu) a4  <-- 5
       0     5910        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5911        M 0x800015bc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5912        M 0x800015c0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5913        M 0x800015c4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5914        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5915        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     5918        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     5923        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c75, (wrb) s0  <-- 0x80002c76
       0     5926        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c77, (wrb) s10 <-- 0x80002c78
       0     5927        M 0x80000a44 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5928        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c76, a0  <~~ Byte[0x80002c76]
       0     5939        M                                           #; (lsu) a0  <-- 115
       0     5940        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a24
       0     5941        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     5942        M 0x80000a28 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5943        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5944        M 0x80000a30 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5945        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5946        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     5949        M 0x80001584 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     5950        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5951        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5952        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5953        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     5954        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     5955        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5956        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     5957        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5968        M                                           #; (lsu) a4  <-- 5
       0     5969        M 0x800015a4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     5970        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 6 ~~> Word[0x80002fd4]
       0     5971        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 5, (wrb) a4  <-- 0x80002fd9
       0     5972        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd9, 115 ~~> Byte[0x80003021]
       0     5973        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     5994        M                                           #; (lsu) a4  <-- 6
       0     5995        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     5996        M 0x800015bc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     5997        M 0x800015c0 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     5998        M 0x800015c4 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     5999        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6000        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     6003        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     6008        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c76, (wrb) s0  <-- 0x80002c77
       0     6011        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c78, (wrb) s10 <-- 0x80002c79
       0     6012        M 0x80000a44 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6013        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c77, a0  <~~ Byte[0x80002c77]
       0     6024        M                                           #; (lsu) a0  <-- 32
       0     6025        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
       0     6026        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6027        M 0x80000a28 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6028        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6029        M 0x80000a30 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6030        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6031        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     6034        M 0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6035        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6036        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6037        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6038        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     6039        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     6040        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6041        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6042        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6053        M                                           #; (lsu) a4  <-- 6
       0     6054        M 0x800015a4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6055        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 7 ~~> Word[0x80002fd4]
       0     6056        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 6, (wrb) a4  <-- 0x80002fda
       0     6057        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fda, 32 ~~> Byte[0x80003022]
       0     6058        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6079        M                                           #; (lsu) a4  <-- 7
       0     6080        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6081        M 0x800015bc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6082        M 0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6083        M 0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6084        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6085        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     6088        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     6093        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c77, (wrb) s0  <-- 0x80002c78
       0     6096        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c79, (wrb) s10 <-- 0x80002c7a
       0     6097        M 0x80000a44 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6098        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c78, a0  <~~ Byte[0x80002c78]
       0     6109        M                                           #; (lsu) a0  <-- 61
       0     6110        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a24
       0     6111        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6112        M 0x80000a28 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6113        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6114        M 0x80000a30 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6115        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6116        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     6119        M 0x80001584 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6120        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6121        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6122        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6123        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     6124        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     6125        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6126        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6127        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6138        M                                           #; (lsu) a4  <-- 7
       0     6139        M 0x800015a4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6140        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 8 ~~> Word[0x80002fd4]
       0     6141        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 7, (wrb) a4  <-- 0x80002fdb
       0     6142        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdb, 61 ~~> Byte[0x80003023]
       0     6143        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6164        M                                           #; (lsu) a4  <-- 8
       0     6165        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6166        M 0x800015bc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6167        M 0x800015c0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6168        M 0x800015c4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6169        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6170        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     6173        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     6178        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c78, (wrb) s0  <-- 0x80002c79
       0     6181        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c7a, (wrb) s10 <-- 0x80002c7b
       0     6182        M 0x80000a44 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6183        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c79, a0  <~~ Byte[0x80002c79]
       0     6194        M                                           #; (lsu) a0  <-- 32
       0     6195        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
       0     6196        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6197        M 0x80000a28 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6198        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6199        M 0x80000a30 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6200        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6201        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     6204        M 0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6205        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6206        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6207        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6208        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     6209        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     6210        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6211        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     6212        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6223        M                                           #; (lsu) a4  <-- 8
       0     6224        M 0x800015a4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6225        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 9 ~~> Word[0x80002fd4]
       0     6226        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 8, (wrb) a4  <-- 0x80002fdc
       0     6227        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdc, 32 ~~> Byte[0x80003024]
       0     6228        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     6249        M                                           #; (lsu) a4  <-- 9
       0     6250        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6251        M 0x800015bc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6252        M 0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6253        M 0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6254        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6255        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     6258        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     6263        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c79, (wrb) s0  <-- 0x80002c7a
       0     6266        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c7b, (wrb) s10 <-- 0x80002c7c
       0     6267        M 0x80000a44 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6268        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c7a, a0  <~~ Byte[0x80002c7a]
       0     6279        M                                           #; (lsu) a0  <-- 37
       0     6280        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a24
       0     6281        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a54
       0     6293        M 0x80000a54 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6294        M 0x80000a58 j       pc + 0x10              #; goto 0x80000a68
       0     6305        M 0x80000a68 lbu     a0, -1(s10)            #; s10 = 0x80002c7c, a0  <~~ Byte[0x80002c7b]
       0     6316        M                                           #; (lsu) a0  <-- 108
       0     6317        M 0x80000a6c addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
       0     6318        M 0x80000a70 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000aa8
       0     6341        M 0x80000aa8 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
       0     6342        M 0x80000aac andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
       0     6353        M 0x80000ab0 addi    a1, s10, -1            #; s10 = 0x80002c7c, (wrb) a1  <-- 0x80002c7b
       0     6354        M 0x80000ab4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6355        M 0x80000ab8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000b34
       0     6376        M 0x80000b34 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6377        M 0x80000b38 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000b88
       0     6399        M 0x80000b88 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6400        M 0x80000b8c mv      s10, a1                #; a1  = 0x80002c7b, (wrb) s10 <-- 0x80002c7b
       0     6411        M 0x80000b90 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
       0     6412        M 0x80000b94 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6413        M 0x80000b98 j       pc + 0xc               #; goto 0x80000ba4
       0     6434        M 0x80000ba4 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
       0     6435        M 0x80000ba8 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
       0     6436        M 0x80000bac slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
       0     6446        M 0x80000bb0 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
       0     6447        M 0x80000bb4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6448        M 0x80000bb8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
       0     6449        M 0x80000bbc slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
       0     6458        M 0x80000bc0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bc0
       0     6459        M 0x80000bc4 addi    a2, a2, 264            #; a2  = 0x80002bc0, (wrb) a2  <-- 0x80002cc8
       0     6460        M 0x80000bc8 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002cc8, (wrb) a1  <-- 0x80002cd0
       0     6461        M 0x80000bcc lw      a3, 0(a1)              #; a1  = 0x80002cd0, a3  <~~ Word[0x80002cd0]
       0     6470        M 0x80000bd0 li      a1, 1                  #; (wrb) a1  <-- 1
       0     6471        M 0x80000bd4 li      a2, 256                #; (wrb) a2  <-- 256
       0     6472        M                                           #; (lsu) a3  <-- 0x80000bfc
       0     6473        M 0x80000bd8 jr      a3                     #; a3  = 0x80000bfc, goto 0x80000bfc
       0     6493        M 0x80000bfc lbu     a0, 1(s10)             #; s10 = 0x80002c7b, a0  <~~ Byte[0x80002c7c]
       0     6504        M                                           #; (lsu) a0  <-- 117
       0     6505        M 0x80000c00 li      a1, 108                #; (wrb) a1  <-- 108
       0     6506        M 0x80000c04 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000d14
       0     6528        M 0x80000d14 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
       0     6529        M 0x80000d18 addi    s10, s10, 1            #; s10 = 0x80002c7b, (wrb) s10 <-- 0x80002c7c
       0     6530        M 0x80000d1c j       pc - 0x100             #; goto 0x80000c1c
       0     6531        M 0x80000c1c addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
       0     6543        M 0x80000c20 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6544        M 0x80000c24 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
       0     6545        M 0x80000c28 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
       0     6546        M 0x80000c2c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c2c
       0     6555        M 0x80000c30 addi    a2, a2, 196            #; a2  = 0x80002c2c, (wrb) a2  <-- 0x80002cf0
       0     6556        M 0x80000c34 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002cf0, (wrb) a1  <-- 0x80002e30
       0     6557        M 0x80000c38 lw      a2, 0(a1)              #; a1  = 0x80002e30, a2  <~~ Word[0x80002e30]
       0     6558        M 0x80000c3c li      a1, 8                  #; (wrb) a1  <-- 8
       0     6567        M 0x80000c40 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6568        M                                           #; (lsu) a2  <-- 0x80000c48
       0     6569        M 0x80000c44 jr      a2                     #; a2  = 0x80000c48
       0     6570        M 0x80000c48 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
       0     6571        M 0x80000c4c li      s8, 10                 #; (wrb) s8  <-- 10
       0     6579        M 0x80000c50 li      a1, 88                 #; (wrb) a1  <-- 88
       0     6580        M 0x80000c54 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000c5c
       0     6581        M 0x80000c5c li      a1, 100                #; (wrb) a1  <-- 100
       0     6591        M 0x80000c60 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
       0     6592        M 0x80000c64 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
       0     6593        M 0x80000c68 li      a2, 105                #; (wrb) a2  <-- 105
       0     6594        M 0x80000c6c beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
       0     6603        M 0x80000c70 j       pc + 0xd8              #; goto 0x80000d48
       0     6615        M 0x80000d48 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
       0     6616        M 0x80000d4c mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
       0     6627        M 0x80000d50 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
       0     6628        M 0x80000d54 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000d5c
       0     6629        M 0x80000d5c li      a1, 105                #; (wrb) a1  <-- 105
       0     6639        M 0x80000d60 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
       0     6640        M 0x80000d64 li      a1, 100                #; (wrb) a1  <-- 100
       0     6641        M 0x80000d68 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000ea0
       0     6662        M 0x80000ea0 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
       0     6663        M 0x80000ea4 bnez    a0, pc + 196           #; a0  = 0, not taken
       0     6664        M 0x80000ea8 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
       0     6665        M 0x80000eac bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x80001328
       0     6685        M 0x80001328 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
       0     6688        M                                           #; (lsu) a0  <-- 413
       0     6689        M 0x8000132c bnez    a0, pc + 8             #; a0  = 413, taken, goto 0x80001334
       0     6697        M 0x80001334 seqz    a1, a0                 #; a0  = 413, (wrb) a1  <-- 0
       0     6698        M 0x80001338 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
       0     6699        M 0x8000133c srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
       0     6709        M 0x80001340 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     6710        M 0x80001344 li      a5, 0                  #; (wrb) a5  <-- 0
       0     6711        M 0x80001348 bnez    a1, pc + 248           #; a1  = 0, not taken
       0     6712        M 0x8000134c li      a2, 0                  #; (wrb) a2  <-- 0
       0     6721        M 0x80001350 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
       0     6722        M 0x80001354 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
       0     6723        M 0x80001358 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
       0     6724        M 0x8000135c j       pc + 0x34              #; goto 0x80001390
       0     6733        M 0x80001390 divu    a3, a0, s8             #; a0  = 413, s8  = 10
       0     6742        M                                           #; (acc) a4  <-- 0x03868733
       0     6743        M 0x80001394 mul     a4, a3, s8             #; a3  = 41, s8  = 10
       0     6746        M                                           #; (acc) a4  <-- 0x40e50733
       0     6747        M 0x80001398 sub     a4, a0, a4             #; a0  = 413, a4  = 410, (wrb) a4  <-- 3
       0     6748        M 0x8000139c andi    s1, a4, 254            #; a4  = 3, (wrb) s1  <-- 2
       0     6749        M 0x800013a0 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6750        M 0x800013a4 li      a1, 10                 #; (wrb) a1  <-- 10
       0     6751        M 0x800013a8 bltu    s1, a1, pc - 72        #; s1  = 2, a1  = 10, taken, goto 0x80001360
       0     6761        M 0x80001360 add     a4, a5, a4             #; a5  = 48, a4  = 3, (wrb) a4  <-- 51
       0     6762        M 0x80001364 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
       0     6763        M 0x80001368 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6764        M 0x8000136c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
       0     6773        M 0x80001370 sltu    a0, a0, s8             #; a0  = 413, s8  = 10, (wrb) a0  <-- 0
       0     6774        M 0x80001374 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6775        M 0x80001378 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
       0     6776        M 0x8000137c and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     6785        M 0x80001380 sb      a4, 0(s1)              #; s1  = 0x0011febc, 51 ~~> Byte[0x0011febc]
       0     6786        M 0x80001384 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
       0     6787        M 0x80001388 mv      a0, a3                 #; a3  = 41, (wrb) a0  <-- 41
       0     6788        M 0x8000138c beqz    a1, pc + 180           #; a1  = 1, not taken
       0     6789        M 0x80001390 divu    a3, a0, s8             #; a0  = 41, s8  = 10
       0     6795        M                                           #; (acc) a4  <-- 0x03868733
       0     6796        M 0x80001394 mul     a4, a3, s8             #; a3  = 4, s8  = 10
       0     6799        M                                           #; (acc) a4  <-- 0x40e50733
       0     6800        M 0x80001398 sub     a4, a0, a4             #; a0  = 41, a4  = 40, (wrb) a4  <-- 1
       0     6801        M 0x8000139c andi    s1, a4, 254            #; a4  = 1, (wrb) s1  <-- 0
       0     6802        M 0x800013a0 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6803        M 0x800013a4 li      a1, 10                 #; (wrb) a1  <-- 10
       0     6804        M 0x800013a8 bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x80001360
       0     6805        M 0x80001360 add     a4, a5, a4             #; a5  = 48, a4  = 1, (wrb) a4  <-- 49
       0     6806        M 0x80001364 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
       0     6807        M 0x80001368 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6808        M 0x8000136c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
       0     6809        M 0x80001370 sltu    a0, a0, s8             #; a0  = 41, s8  = 10, (wrb) a0  <-- 0
       0     6810        M 0x80001374 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6811        M 0x80001378 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
       0     6812        M 0x8000137c and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     6813        M 0x80001380 sb      a4, 0(s1)              #; s1  = 0x0011febd, 49 ~~> Byte[0x0011febd]
       0     6814        M 0x80001384 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
       0     6815        M 0x80001388 mv      a0, a3                 #; a3  = 4, (wrb) a0  <-- 4
       0     6816        M 0x8000138c beqz    a1, pc + 180           #; a1  = 1, not taken
       0     6817        M 0x80001390 divu    a3, a0, s8             #; a0  = 4, s8  = 10
       0     6820        M                                           #; (acc) a4  <-- 0x03868733
       0     6821        M 0x80001394 mul     a4, a3, s8             #; a3  = 0, s8  = 10
       0     6824        M                                           #; (acc) a4  <-- 0x40e50733
       0     6825        M 0x80001398 sub     a4, a0, a4             #; a0  = 4, a4  = 0, (wrb) a4  <-- 4
       0     6826        M 0x8000139c andi    s1, a4, 254            #; a4  = 4, (wrb) s1  <-- 4
       0     6827        M 0x800013a0 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6828        M 0x800013a4 li      a1, 10                 #; (wrb) a1  <-- 10
       0     6829        M 0x800013a8 bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x80001360
       0     6830        M 0x80001360 add     a4, a5, a4             #; a5  = 48, a4  = 4, (wrb) a4  <-- 52
       0     6831        M 0x80001364 addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
       0     6832        M 0x80001368 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6833        M 0x8000136c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 2, (wrb) s1  <-- 0x0011febe
       0     6834        M 0x80001370 sltu    a0, a0, s8             #; a0  = 4, s8  = 10, (wrb) a0  <-- 1
       0     6835        M 0x80001374 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
       0     6836        M 0x80001378 sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
       0     6837        M 0x8000137c and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
       0     6838        M 0x80001380 sb      a4, 0(s1)              #; s1  = 0x0011febe, 52 ~~> Byte[0x0011febe]
       0     6839        M 0x80001384 mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
       0     6840        M 0x80001388 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
       0     6841        M 0x8000138c beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x80001440
       0     6853        M 0x80001440 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
       0     6854        M 0x80001444 addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
       0     6855        M 0x80001448 mv      a0, s2                 #; s2  = 0x80001584, (wrb) a0  <-- 0x80001584
       0     6856        M 0x8000144c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6865        M 0x80001450 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     6866        M 0x80001454 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6867        M 0x80001458 li      a6, 0                  #; (wrb) a6  <-- 0
       0     6868        M 0x8000145c mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
       0     6877        M 0x80001460 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
       0     6878        M 0x80001464 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
       0     6879        M 0x80001468 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
       0     6880        M 0x8000146c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000246c
       0     6889        M 0x80001470 jalr    ra, ra, -620           #; ra  = 0x8000246c, (wrb) ra  <-- 0x80001474, goto 0x80002200
       0     6912        M 0x80002200 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
       0     6913        M 0x80002204 sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x80001474 ~~> Word[0x0011fe9c]
       0     6914        M 0x80002208 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
       0     6915        M 0x8000220c sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febe ~~> Word[0x0011fe94]
       0     6924        M 0x80002210 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x80001584 ~~> Word[0x0011fe90]
       0     6925        M 0x80002214 sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
       0     6926        M 0x80002218 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6927        M 0x8000221c sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
       0     6936        M 0x80002220 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
       0     6937        M 0x80002224 sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
       0     6938        M 0x80002228 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
       0     6939        M 0x8000222c sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
       0     6948        M 0x80002230 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002c7c ~~> Word[0x0011fe70]
       0     6949        M 0x80002234 sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
       0     6950        M 0x80002238 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
       0     6951        M 0x8000223c andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
       0     6960        M 0x80002240 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
       0     6961        M 0x80002244 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
       0     6962        M 0x80002248 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
       0     6963        M 0x8000224c mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
       0     6972        M 0x80002250 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     6973        M 0x80002254 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     6974        M 0x80002258 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     6975        M 0x8000225c mv      s11, a0                #; a0  = 0x80001584, (wrb) s11 <-- 0x80001584
       0     6984        M 0x80002260 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
       0     6985        M 0x80002264 bnez    s5, pc + 220           #; s5  = 0, not taken
       0     6986        M 0x80002268 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
       0     6987        M 0x8000226c beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002288
       0     7007        M 0x80002288 li      s2, 0                  #; (wrb) s2  <-- 0
       0     7008        M 0x8000228c sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
       0     7019        M 0x80002290 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
       0     7020        M 0x80002294 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7021        M 0x80002298 sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
       0     7022        M 0x8000229c or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
       0     7031        M 0x800022a0 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x800022e8
       0     7054        M 0x800022e8 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x80002340
       0     7077        M 0x80002340 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
       0     7078        M 0x80002344 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x80002428
       0     7100        M 0x80002428 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7101        M 0x8000242c bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
       0     7112        M 0x80002430 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x80002444
       0     7124        M 0x80002444 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
       0     7125        M 0x80002448 bnez    a0, pc + 28            #; a0  = 0, not taken
       0     7126        M 0x8000244c andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
       0     7136        M 0x80002450 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x80002474
       0     7159        M 0x80002474 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
       0     7160        M 0x80002478 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7161        M 0x8000247c sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
       0     7171        M 0x80002480 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7172        M 0x80002484 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7173        M 0x80002488 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7174        M 0x8000248c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800024b8
       0     7194        M 0x800024b8 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
       0     7195        M 0x800024bc beqz    s8, pc + 60            #; s8  = 3, not taken
       0     7206        M 0x800024c0 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
       0     7209        M                                           #; (lsu) a0  <-- 0x0011febc
       0     7210        M 0x800024c4 addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
       0     7211        M 0x800024c8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 3, (wrb) a0  <-- 0x0011febe
       0     7212        M 0x800024cc lbu     a0, 0(a0)              #; a0  = 0x0011febe, a0  <~~ Byte[0x0011febe]
       0     7215        M                                           #; (lsu) a0  <-- 52
       0     7218        M 0x800024d0 addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
       0     7219        M 0x800024d4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7220        M 0x800024d8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7221        M 0x800024dc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7230        M 0x800024e0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7231        M 0x800024e4 jalr    s11                    #; s11 = 0x80001584, (wrb) ra  <-- 0x800024e8, goto 0x80001584
       0     7244        M 0x80001584 beqz    a0, pc + 168           #; a0  = 52, not taken
       0     7245        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7246        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7247        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7248        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     7249        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     7250        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7251        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7252        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7263        M                                           #; (lsu) a4  <-- 9
       0     7264        M 0x800015a4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7265        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 10 ~~> Word[0x80002fd4]
       0     7266        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 9, (wrb) a4  <-- 0x80002fdd
       0     7267        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdd, 52 ~~> Byte[0x80003025]
       0     7268        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7289        M                                           #; (lsu) a4  <-- 10
       0     7290        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7291        M 0x800015bc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7292        M 0x800015c0 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
       0     7293        M 0x800015c4 snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
       0     7294        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7295        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     7298        M 0x8000162c ret                            #; ra  = 0x800024e8, goto 0x800024e8
       0     7303        M 0x800024e8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7304        M 0x800024ec mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
       0     7306        M 0x800024f0 bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x800024c8
       0     7309        M 0x800024c8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
       0     7310        M 0x800024cc lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
       0     7312        M 0x800024d0 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
       0     7313        M 0x800024d4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7314        M 0x800024d8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7315        M 0x800024dc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7316        M 0x800024e0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7317        M 0x800024e4 jalr    s11                    #; s11 = 0x80001584, (wrb) ra  <-- 0x800024e8, goto 0x80001584
       0     7318        M                                           #; (lsu) a0  <-- 49
       0     7320        M 0x80001584 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     7321        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7322        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7323        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7324        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     7325        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     7326        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7327        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7328        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7339        M                                           #; (lsu) a4  <-- 10
       0     7340        M 0x800015a4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7341        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 11 ~~> Word[0x80002fd4]
       0     7342        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 10, (wrb) a4  <-- 0x80002fde
       0     7343        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fde, 49 ~~> Byte[0x80003026]
       0     7344        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7365        M                                           #; (lsu) a4  <-- 11
       0     7366        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7367        M 0x800015bc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7368        M 0x800015c0 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     7369        M 0x800015c4 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     7370        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7371        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     7374        M 0x8000162c ret                            #; ra  = 0x800024e8, goto 0x800024e8
       0     7379        M 0x800024e8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7380        M 0x800024ec mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
       0     7382        M 0x800024f0 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x800024c8
       0     7385        M 0x800024c8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
       0     7386        M 0x800024cc lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
       0     7388        M 0x800024d0 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
       0     7389        M 0x800024d4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7390        M 0x800024d8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7391        M 0x800024dc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7392        M 0x800024e0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7393        M 0x800024e4 jalr    s11                    #; s11 = 0x80001584, (wrb) ra  <-- 0x800024e8, goto 0x80001584
       0     7394        M                                           #; (lsu) a0  <-- 51
       0     7396        M 0x80001584 beqz    a0, pc + 168           #; a0  = 51, not taken
       0     7397        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7398        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7399        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7400        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     7401        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     7402        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7403        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7404        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7415        M                                           #; (lsu) a4  <-- 11
       0     7416        M 0x800015a4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7417        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 12 ~~> Word[0x80002fd4]
       0     7418        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 11, (wrb) a4  <-- 0x80002fdf
       0     7419        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdf, 51 ~~> Byte[0x80003027]
       0     7420        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7441        M                                           #; (lsu) a4  <-- 12
       0     7442        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7443        M 0x800015bc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7444        M 0x800015c0 addi    a0, a0, -10            #; a0  = 51, (wrb) a0  <-- 41
       0     7445        M 0x800015c4 snez    a0, a0                 #; a0  = 41, (wrb) a0  <-- 1
       0     7446        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7447        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     7450        M 0x8000162c ret                            #; ra  = 0x800024e8, goto 0x800024e8
       0     7455        M 0x800024e8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7456        M 0x800024ec mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
       0     7458        M 0x800024f0 bnez    s9, pc - 40            #; s9  = 0, not taken
       0     7459        M 0x800024f4 j       pc + 0x8               #; goto 0x800024fc
       0     7460        M 0x800024fc sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
       0     7472        M 0x80002500 sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
       0     7473        M 0x80002504 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7474        M 0x80002508 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7475        M 0x8000250c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7484        M 0x80002510 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002540
       0     7507        M 0x80002540 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7508        M 0x80002544 mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
       0     7509        M 0x80002548 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
       0     7512        M                                           #; (lsu) s11 <-- 16
       0     7513        M 0x8000254c lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
       0     7516        M                                           #; (lsu) s10 <-- 0x80002c7c
       0     7519        M 0x80002550 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
       0     7522        M                                           #; (lsu) s9  <-- 9
       0     7523        M 0x80002554 lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
       0     7526        M                                           #; (lsu) s8  <-- 10
       0     7527        M 0x80002558 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
       0     7530        M                                           #; (lsu) s7  <-- 0
       0     7531        M 0x8000255c lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
       0     7534        M                                           #; (lsu) s6  <-- 0
       0     7535        M 0x80002560 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
       0     7538        M                                           #; (lsu) s5  <-- -1
       0     7539        M 0x80002564 lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
       0     7542        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7543        M 0x80002568 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
       0     7546        M                                           #; (lsu) s3  <-- 0x0011ff28
       0     7547        M 0x8000256c lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
       0     7550        M                                           #; (lsu) s2  <-- 0x80001584
       0     7551        M 0x80002570 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
       0     7554        M                                           #; (lsu) s1  <-- 0x0011febe
       0     7555        M 0x80002574 lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
       0     7558        M                                           #; (lsu) s0  <-- 256
       0     7559        M 0x80002578 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
       0     7560        M 0x8000257c addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
       0     7562        M                                           #; (lsu) ra  <-- 0x80001474
       0     7563        M 0x80002580 ret                            #; ra  = 0x80001474, goto 0x80001474
       0     7566        M 0x80001474 mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
       0     7567        M 0x80001478 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7568        M 0x8000147c li      s7, 46                 #; (wrb) s7  <-- 46
       0     7569        M 0x80001480 addi    s0, s10, 1             #; s10 = 0x80002c7c, (wrb) s0  <-- 0x80002c7d
       0     7570        M 0x80001484 j       pc - 0xa74             #; goto 0x80000a10
       0     7572        M 0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c7d, (wrb) s10 <-- 0x80002c7f
       0     7573        M 0x80000a14 mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
       0     7574        M 0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7575        M 0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c7d, a0  <~~ Byte[0x80002c7d]
       0     7586        M                                           #; (lsu) a0  <-- 10
       0     7587        M 0x80000a20 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7588        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7589        M 0x80000a28 addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
       0     7590        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7591        M 0x80000a30 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
       0     7592        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7593        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     7597        M 0x80001584 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7598        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7599        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7600        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7601        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     7602        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     7603        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7604        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     7605        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7616        M                                           #; (lsu) a4  <-- 12
       0     7617        M 0x800015a4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7618        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 13 ~~> Word[0x80002fd4]
       0     7619        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 12, (wrb) a4  <-- 0x80002fe0
       0     7620        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe0, 10 ~~> Byte[0x80003028]
       0     7621        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     7642        M                                           #; (lsu) a4  <-- 13
       0     7643        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7644        M 0x800015bc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7645        M 0x800015c0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7646        M 0x800015c4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7647        M 0x800015c8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7648        M 0x800015cc bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7649        M 0x800015d0 add     a0, a3, a2             #; a3  = 0x80002fd4, a2  = 0, (wrb) a0  <-- 0x80002fd4
       0     7650        M 0x800015d4 addi    a2, a0, 72             #; a0  = 0x80002fd4, (wrb) a2  <-- 0x8000301c
       0     7651        M 0x800015d8 sw      zero, 12(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe0]
       0     7652        M 0x800015dc li      a3, 64                 #; (wrb) a3  <-- 64
       0     7661        M 0x800015e0 sw      a3, 8(a0)              #; a0  = 0x80002fd4, 64 ~~> Word[0x80002fdc]
       0     7662        M 0x800015e4 sw      zero, 20(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe8]
       0     7663        M 0x800015e8 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7664        M 0x800015ec sw      a3, 16(a0)             #; a0  = 0x80002fd4, 1 ~~> Word[0x80002fe4]
       0     7673        M 0x800015f0 sw      zero, 28(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff0]
       0     7674        M 0x800015f4 sw      a2, 24(a0)             #; a0  = 0x80002fd4, 0x8000301c ~~> Word[0x80002fec]
       0     7676        M 0x800015f8 lw      a2, 0(a1)              #; a1  = 0x80002fd4, a2  <~~ Word[0x80002fd4]
       0     7677        M 0x800015fc addi    a3, a0, 8              #; a0  = 0x80002fd4, (wrb) a3  <-- 0x80002fdc
       0     7686        M 0x80001600 sw      zero, 36(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff8]
       0     7705        M                                           #; (lsu) a2  <-- 13
       0     7706        M 0x80001604 sw      a2, 32(a0)             #; a0  = 0x80002fd4, 13 ~~> Word[0x80002ff4]
       0     7707        M 0x80001608 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003608
       0     7708        M 0x8000160c addi    a0, a0, -1864          #; a0  = 0x80003608, (wrb) a0  <-- 0x80002ec0
       0     7709        M 0x80001610 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80002fdc ~~> Word[0x80002ec0]
       0     7710        M 0x80001614 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003614
       0     7711        M 0x80001618 addi    a0, a0, -1812          #; a0  = 0x80003614, (wrb) a0  <-- 0x80002f00
       0     7712        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7735        M                                           #; (lsu) a2  <-- 0
       0     7736        M 0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
       0     7737        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7748        M                                           #; (lsu) a2  <-- 0
       0     7749        M 0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
       0     7750        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7761        M                                           #; (lsu) a2  <-- 0
       0     7762        M 0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
       0     7763        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7774        M                                           #; (lsu) a2  <-- 0
       0     7775        M 0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
       0     7776        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7787        M                                           #; (lsu) a2  <-- 0
       0     7788        M 0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
       0     7789        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7800        M                                           #; (lsu) a2  <-- 0
       0     7801        M 0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
       0     7802        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     7813        M                                           #; (lsu) a2  <-- 1
       0     7814        M 0x80001620 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     7815        M 0x80001624 sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
       0     7816        M 0x80001628 sw      zero, 0(a1)            #; a1  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
       0     7817        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     7820        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c7d, (wrb) s0  <-- 0x80002c7e
       0     7823        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c7f, (wrb) s10 <-- 0x80002c80
       0     7824        M 0x80000a44 mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
       0     7825        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c7e, a0  <~~ Byte[0x80002c7e]
       0     7838        M                                           #; (lsu) a0  <-- 0
       0     7839        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     7842        M 0x80000a50 j       pc + 0xad8             #; goto 0x80001528
       0     7854        M 0x80001528 mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
       0     7855        M 0x8000152c bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x80001534
       0     7866        M 0x80001534 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7867        M 0x80001538 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7868        M 0x8000153c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7878        M 0x80001540 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80001544, goto 0x80001584
       0     7892        M 0x80001584 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000162c
       0     7897        M 0x8000162c ret                            #; ra  = 0x80001544, goto 0x80001544
       0     7898        M 0x80001544 mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
       0     7899        M 0x80001548 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     7902        M                                           #; (lsu) s11 <-- 0
       0     7903        M 0x8000154c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     7906        M                                           #; (lsu) s10 <-- 0
       0     7907        M 0x80001550 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     7910        M                                           #; (lsu) s9  <-- 0
       0     7911        M 0x80001554 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     7914        M                                           #; (lsu) s8  <-- 0
       0     7915        M 0x80001558 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     7918        M                                           #; (lsu) s7  <-- 0
       0     7919        M 0x8000155c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     7922        M                                           #; (lsu) s6  <-- 0
       0     7923        M 0x80001560 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     7926        M                                           #; (lsu) s5  <-- 0
       0     7927        M 0x80001564 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     7930        M                                           #; (lsu) s4  <-- 0
       0     7931        M 0x80001568 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     7934        M                                           #; (lsu) s3  <-- 0
       0     7935        M 0x8000156c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     7938        M                                           #; (lsu) s2  <-- 0
       0     7939        M 0x80001570 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     7942        M                                           #; (lsu) s1  <-- 0
       0     7943        M 0x80001574 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     7946        M                                           #; (lsu) s0  <-- 0
       0     7947        M 0x80001578 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     7948        M 0x8000157c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     7950        M                                           #; (lsu) ra  <-- 0x80000980
       0     7951        M 0x80001580 ret                            #; ra  = 0x80000980, goto 0x80000980
       0     7954        M 0x80000980 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     7955        M 0x80000984 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     7957        M                                           #; (lsu) ra  <-- 0x800008e0
       0     7958        M 0x80000988 ret                            #; ra  = 0x800008e0, goto 0x800008e0
       0     7961        M 0x800008e0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e0
       0     7962        M 0x800008e4 addi    a0, a0, 1592           #; a0  = 0x800028e0, (wrb) a0  <-- 0x80002f18
       0     7965        M 0x800008e8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f18]
       0     7974        M                                           #; (f:lsu) ft3  <-- -2850.0
       0     7975        M 0x800008f8 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x800008ec fadd.d  ft3, fs0, ft3          #; fs0  = 2850.0, ft3  = -2850.0
       0     7978        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     7979        M 0x800008fc lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x800008f0 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     7980        M                                           #; (f:fpu) fs0  <-- 0.0
       0     7981        M 0x800008f4 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     7982        M                                           #; (lsu) a3  <-- 0
       0     7985        M 0x80000900 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002900
       0     7986        M 0x80000904 addi    a0, a0, 869            #; a0  = 0x80002900, (wrb) a0  <-- 0x80002c65
       0     7987        M 0x80000908 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000908
       0     7988        M 0x8000090c jalr    ra, ra, 40             #; ra  = 0x80000908, (wrb) ra  <-- 0x80000910, goto 0x80000930
       0     7999        M 0x80000930 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     8000        M 0x80000934 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000910 ~~> Word[0x0011ff1c]
       0     8001        M 0x80000938 mv      t0, a0                 #; a0  = 0x80002c65, (wrb) t0  <-- 0x80002c65
       0     8002        M 0x8000093c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
       0     8003        M 0x80000940 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
       0     8004        M 0x80000944 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 13 ~~> Word[0x0011ff34]
       0     8005        M 0x80000948 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     8006        M 0x8000094c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     8007        M 0x80000950 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     8008        M 0x80000954 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     8009        M 0x80000958 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     8010        M 0x8000095c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     8011        M 0x80000960 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001960
       0     8012        M 0x80000964 addi    a0, a0, -988           #; a0  = 0x80001960, (wrb) a0  <-- 0x80001584
       0     8013        M 0x80000968 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     8014        M 0x8000096c li      a2, -1                 #; (wrb) a2  <-- -1
       0     8015        M 0x80000970 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     8016        M 0x80000974 mv      a3, t0                 #; t0  = 0x80002c65, (wrb) a3  <-- 0x80002c65
       0     8017        M 0x80000978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000978
       0     8018        M 0x8000097c jalr    ra, ra, 20             #; ra  = 0x80000978, (wrb) ra  <-- 0x80000980, goto 0x8000098c
       0     8019        M 0x8000098c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     8022        M 0x80000990 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000980 ~~> Word[0x0011ff0c]
       0     8023        M 0x80000994 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     8024        M 0x80000998 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     8025        M 0x8000099c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     8026        M 0x800009a0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     8027        M 0x800009a4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     8028        M 0x800009a8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     8029        M 0x800009ac sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     8030        M 0x800009b0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     8031        M 0x800009b4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     8032        M 0x800009b8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     8033        M 0x800009bc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     8034        M 0x800009c0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     8035        M 0x800009c4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     8036        M 0x800009c8 mv      s0, a3                 #; a3  = 0x80002c65, (wrb) s0  <-- 0x80002c65
       0     8037        M 0x800009cc mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8038        M 0x800009d0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     8039        M 0x800009d4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     8040        M 0x800009d8 mv      s2, a0                 #; a0  = 0x80001584, (wrb) s2  <-- 0x80001584
       0     8041        M 0x800009dc j       pc + 0xc               #; goto 0x800009e8
       0     8042        M 0x800009e8 li      s8, 0                  #; (wrb) s8  <-- 0
       0     8043        M 0x800009ec li      s6, 37                 #; (wrb) s6  <-- 37
       0     8045        M 0x800009f0 li      s11, 16                #; (wrb) s11 <-- 16
       0     8046        M 0x800009f4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8047        M 0x800009f8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8048        M 0x800009fc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8049        M 0x80000a00 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     8050        M 0x80000a04 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8051        M 0x80000a08 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8052        M 0x80000a0c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     8053        M 0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c65, (wrb) s10 <-- 0x80002c67
       0     8054        M 0x80000a14 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8055        M 0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8056        M 0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c65, a0  <~~ Byte[0x80002c65]
       0     8067        M                                           #; (lsu) a0  <-- 101
       0     8068        M 0x80000a20 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8069        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8070        M 0x80000a28 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8071        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8072        M 0x80000a30 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8073        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8074        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8077        M 0x80001584 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8078        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8079        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8080        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8081        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8082        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8083        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8084        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8085        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8096        M                                           #; (lsu) a4  <-- 0
       0     8097        M 0x800015a4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8098        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 1 ~~> Word[0x80002fd4]
       0     8099        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 0, (wrb) a4  <-- 0x80002fd4
       0     8100        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd4, 101 ~~> Byte[0x8000301c]
       0     8101        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8122        M                                           #; (lsu) a4  <-- 1
       0     8123        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8124        M 0x800015bc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8125        M 0x800015c0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8126        M 0x800015c4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8127        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8128        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8131        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8136        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c65, (wrb) s0  <-- 0x80002c66
       0     8139        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c67, (wrb) s10 <-- 0x80002c68
       0     8140        M 0x80000a44 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8141        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c66, a0  <~~ Byte[0x80002c66]
       0     8152        M                                           #; (lsu) a0  <-- 114
       0     8153        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a24
       0     8154        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8155        M 0x80000a28 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8156        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8157        M 0x80000a30 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8158        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8159        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8162        M 0x80001584 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8163        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8164        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8165        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8166        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8167        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8168        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8169        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8170        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8181        M                                           #; (lsu) a4  <-- 1
       0     8182        M 0x800015a4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8183        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 2 ~~> Word[0x80002fd4]
       0     8184        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 1, (wrb) a4  <-- 0x80002fd5
       0     8185        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd5, 114 ~~> Byte[0x8000301d]
       0     8186        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8207        M                                           #; (lsu) a4  <-- 2
       0     8208        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8209        M 0x800015bc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8210        M 0x800015c0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8211        M 0x800015c4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8212        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8213        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8216        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8221        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c66, (wrb) s0  <-- 0x80002c67
       0     8224        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c68, (wrb) s10 <-- 0x80002c69
       0     8225        M 0x80000a44 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8226        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c67, a0  <~~ Byte[0x80002c67]
       0     8237        M                                           #; (lsu) a0  <-- 114
       0     8238        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a24
       0     8239        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8240        M 0x80000a28 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8241        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8242        M 0x80000a30 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8243        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8244        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8247        M 0x80001584 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8248        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8249        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8250        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8251        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8252        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8253        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8254        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8255        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8266        M                                           #; (lsu) a4  <-- 2
       0     8267        M 0x800015a4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8268        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 3 ~~> Word[0x80002fd4]
       0     8269        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 2, (wrb) a4  <-- 0x80002fd6
       0     8270        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd6, 114 ~~> Byte[0x8000301e]
       0     8271        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8292        M                                           #; (lsu) a4  <-- 3
       0     8293        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8294        M 0x800015bc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8295        M 0x800015c0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8296        M 0x800015c4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8297        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8298        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8301        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8306        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c67, (wrb) s0  <-- 0x80002c68
       0     8309        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c69, (wrb) s10 <-- 0x80002c6a
       0     8310        M 0x80000a44 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     8311        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c68, a0  <~~ Byte[0x80002c68]
       0     8322        M                                           #; (lsu) a0  <-- 111
       0     8323        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a24
       0     8324        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     8325        M 0x80000a28 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     8326        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8327        M 0x80000a30 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     8328        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8329        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8332        M 0x80001584 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     8333        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8334        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8335        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8336        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8337        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8338        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8339        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8340        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8351        M                                           #; (lsu) a4  <-- 3
       0     8352        M 0x800015a4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     8353        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 4 ~~> Word[0x80002fd4]
       0     8354        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 3, (wrb) a4  <-- 0x80002fd7
       0     8355        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd7, 111 ~~> Byte[0x8000301f]
       0     8356        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8377        M                                           #; (lsu) a4  <-- 4
       0     8378        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     8379        M 0x800015bc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     8380        M 0x800015c0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     8381        M 0x800015c4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     8382        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8383        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8386        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8391        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c68, (wrb) s0  <-- 0x80002c69
       0     8394        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6a, (wrb) s10 <-- 0x80002c6b
       0     8395        M 0x80000a44 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     8396        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c69, a0  <~~ Byte[0x80002c69]
       0     8407        M                                           #; (lsu) a0  <-- 114
       0     8408        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a24
       0     8409        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8410        M 0x80000a28 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     8411        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8412        M 0x80000a30 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     8413        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8414        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8417        M 0x80001584 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8418        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8419        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8420        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8421        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8422        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8423        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8424        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8425        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8436        M                                           #; (lsu) a4  <-- 4
       0     8437        M 0x800015a4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     8438        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 5 ~~> Word[0x80002fd4]
       0     8439        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 4, (wrb) a4  <-- 0x80002fd8
       0     8440        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd8, 114 ~~> Byte[0x80003020]
       0     8441        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8462        M                                           #; (lsu) a4  <-- 5
       0     8463        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     8464        M 0x800015bc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     8465        M 0x800015c0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8466        M 0x800015c4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8467        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8468        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8471        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8476        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c69, (wrb) s0  <-- 0x80002c6a
       0     8479        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
       0     8480        M 0x80000a44 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     8481        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6a, a0  <~~ Byte[0x80002c6a]
       0     8492        M                                           #; (lsu) a0  <-- 32
       0     8493        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
       0     8494        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8495        M 0x80000a28 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     8496        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8497        M 0x80000a30 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     8498        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8499        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8502        M 0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8503        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8504        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8505        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8506        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8507        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8508        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8509        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8510        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8521        M                                           #; (lsu) a4  <-- 5
       0     8522        M 0x800015a4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     8523        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 6 ~~> Word[0x80002fd4]
       0     8524        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 5, (wrb) a4  <-- 0x80002fd9
       0     8525        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd9, 32 ~~> Byte[0x80003021]
       0     8526        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8547        M                                           #; (lsu) a4  <-- 6
       0     8548        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     8549        M 0x800015bc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     8550        M 0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8551        M 0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8552        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8553        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8556        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8561        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6a, (wrb) s0  <-- 0x80002c6b
       0     8564        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6c, (wrb) s10 <-- 0x80002c6d
       0     8565        M 0x80000a44 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     8566        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6b, a0  <~~ Byte[0x80002c6b]
       0     8577        M                                           #; (lsu) a0  <-- 61
       0     8578        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a24
       0     8579        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     8580        M 0x80000a28 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     8581        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8582        M 0x80000a30 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     8583        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8584        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8587        M 0x80001584 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     8588        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8589        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8590        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8591        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8592        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8593        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8594        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8595        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8606        M                                           #; (lsu) a4  <-- 6
       0     8607        M 0x800015a4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     8608        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 7 ~~> Word[0x80002fd4]
       0     8609        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 6, (wrb) a4  <-- 0x80002fda
       0     8610        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fda, 61 ~~> Byte[0x80003022]
       0     8611        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8632        M                                           #; (lsu) a4  <-- 7
       0     8633        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     8634        M 0x800015bc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     8635        M 0x800015c0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     8636        M 0x800015c4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     8637        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8638        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8641        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8646        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6b, (wrb) s0  <-- 0x80002c6c
       0     8649        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6d, (wrb) s10 <-- 0x80002c6e
       0     8650        M 0x80000a44 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     8651        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6c, a0  <~~ Byte[0x80002c6c]
       0     8662        M                                           #; (lsu) a0  <-- 32
       0     8663        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
       0     8664        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8665        M 0x80000a28 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     8666        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8667        M 0x80000a30 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     8668        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8669        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0     8672        M 0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8673        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8674        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8675        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8676        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     8677        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     8678        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8679        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     8680        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8691        M                                           #; (lsu) a4  <-- 7
       0     8692        M 0x800015a4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     8693        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 8 ~~> Word[0x80002fd4]
       0     8694        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 7, (wrb) a4  <-- 0x80002fdb
       0     8695        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdb, 32 ~~> Byte[0x80003023]
       0     8696        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     8717        M                                           #; (lsu) a4  <-- 8
       0     8718        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     8719        M 0x800015bc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     8720        M 0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8721        M 0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8722        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8723        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     8726        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0     8731        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6c, (wrb) s0  <-- 0x80002c6d
       0     8734        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6e, (wrb) s10 <-- 0x80002c6f
       0     8735        M 0x80000a44 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     8736        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6d, a0  <~~ Byte[0x80002c6d]
       0     8747        M                                           #; (lsu) a0  <-- 37
       0     8748        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a24
       0     8749        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a54
       0     8752        M 0x80000a54 li      s0, 0                  #; (wrb) s0  <-- 0
       0     8753        M 0x80000a58 j       pc + 0x10              #; goto 0x80000a68
       0     8755        M 0x80000a68 lbu     a0, -1(s10)            #; s10 = 0x80002c6f, a0  <~~ Byte[0x80002c6e]
       0     8766        M                                           #; (lsu) a0  <-- 102
       0     8767        M 0x80000a6c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     8768        M 0x80000a70 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000aa8
       0     8773        M 0x80000aa8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     8774        M 0x80000aac andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     8776        M 0x80000ab0 addi    a1, s10, -1            #; s10 = 0x80002c6f, (wrb) a1  <-- 0x80002c6e
       0     8777        M 0x80000ab4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     8778        M 0x80000ab8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b34
       0     8781        M 0x80000b34 li      a2, 42                 #; (wrb) a2  <-- 42
       0     8782        M 0x80000b38 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b88
       0     8786        M 0x80000b88 li      s6, 0                  #; (wrb) s6  <-- 0
       0     8787        M 0x80000b8c mv      s10, a1                #; a1  = 0x80002c6e, (wrb) s10 <-- 0x80002c6e
       0     8789        M 0x80000b90 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     8790        M 0x80000b94 li      s7, 0                  #; (wrb) s7  <-- 0
       0     8791        M 0x80000b98 j       pc + 0xc               #; goto 0x80000ba4
       0     8794        M 0x80000ba4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     8795        M 0x80000ba8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     8796        M 0x80000bac slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     8797        M 0x80000bb0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     8798        M 0x80000bb4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     8799        M 0x80000bb8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c1c
       0     8802        M 0x80000c1c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     8805        M 0x80000c20 li      a2, 83                 #; (wrb) a2  <-- 83
       0     8806        M 0x80000c24 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     8807        M 0x80000c28 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     8808        M 0x80000c2c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c2c
       0     8809        M 0x80000c30 addi    a2, a2, 196            #; a2  = 0x80002c2c, (wrb) a2  <-- 0x80002cf0
       0     8810        M 0x80000c34 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cf0, (wrb) a1  <-- 0x80002df4
       0     8811        M 0x80000c38 lw      a2, 0(a1)              #; a1  = 0x80002df4, a2  <~~ Word[0x80002df4]
       0     8812        M 0x80000c3c li      a1, 8                  #; (wrb) a1  <-- 8
       0     8813        M 0x80000c40 li      s8, 16                 #; (wrb) s8  <-- 16
       0     8822        M                                           #; (lsu) a2  <-- 0x80000c74
       0     8823        M 0x80000c44 jr      a2                     #; a2  = 0x80000c74, goto 0x80000c74
       0     8826        M 0x80000c74 li      a1, 70                 #; (wrb) a1  <-- 70
       0     8827        M 0x80000c78 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c80
       0     8838        M 0x80000c80 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     8839        M 0x80000c84 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     8841        M 0x80000c8c addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     8842        M 0x80000c88 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     8843        M                                           #; (f:lsu) fa0  <-- 0.0
       0     8850        M 0x80000c90 mv      a0, s2                 #; s2  = 0x80001584, (wrb) a0  <-- 0x80001584
       0     8851        M 0x80000c94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8852        M 0x80000c98 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     8853        M 0x80000c9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8862        M 0x80000ca0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     8863        M 0x80000ca4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     8864        M 0x80000ca8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     8865        M 0x80000cac auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cac
       0     8874        M 0x80000cb0 jalr    ra, ra, -1656          #; ra  = 0x80001cac, (wrb) ra  <-- 0x80000cb4, goto 0x80001634
       0     8879        M 0x80001634 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     8880        M 0x80001638 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cb4 ~~> Word[0x0011fe9c]
       0     8881        M 0x8000163c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     8891        M 0x80001640 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     8892        M 0x80001644 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001584 ~~> Word[0x0011fe90]
       0     8893        M 0x80001648 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     8894        M 0x8000164c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     8903        M 0x80001650 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     8904        M 0x80001654 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     8905        M 0x80001658 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     8906        M 0x8000165c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     8915        M 0x80001660 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     8916        M 0x80001664 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c6e ~~> Word[0x0011fe70]
       0     8919        M 0x80001668 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     8920        M 0x8000166c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     8928        M 0x80001674 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003674
       0     8929        M 0x80001678 addi    s1, s1, -1868          #; s1  = 0x80003674, (wrb) s1  <-- 0x80002f28
                         M 0x80001670 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     8932        M 0x8000167c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f28]
       0     8940        M 0x80001684 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     8941        M 0x80001688 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     8942        M 0x8000168c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001680 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     8951        M 0x80001690 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     8952        M 0x80001694 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     8953        M 0x80001698 mv      s7, a0                 #; a0  = 0x80001584, (wrb) s7  <-- 0x80001584
       0     8954        M 0x8000169c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000178c
       0     8976        M 0x8000178c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     8977        M                                           #; (f:fpu) fs0  <-- 0.0
       0     8986        M 0x80001790 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002790
       0     8987        M 0x80001794 addi    a0, a0, 1952           #; a0  = 0x80002790, (wrb) a0  <-- 0x80002f30
       0     8990        M 0x80001798 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f30]
       0     8999        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9000        M 0x8000179c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9002        M                                           #; (acc) t3  <-- 0x00051e63
       0     9003        M 0x800017a0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017bc
       0     9010        M 0x800017bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027bc
       0     9022        M 0x800017c0 addi    a0, a0, 1916           #; a0  = 0x800027bc, (wrb) a0  <-- 0x80002f38
       0     9024        M 0x800017c8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027c8
       0     9025        M 0x800017cc addi    a0, a0, 1912           #; a0  = 0x800027c8, (wrb) a0  <-- 0x80002f40
                         M 0x800017c4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f38]
       0     9034        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9036        M 0x800017d0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f40]
       0     9037        M 0x800017d4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9039        M                                           #; (acc) a0  <-- 0x00b57533
       0     9045        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9046        M 0x800017d8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9048        M                                           #; (acc) a0  <-- 0x00b57533
       0     9049        M 0x800017dc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9050        M 0x800017e0 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018dc
       0     9073        M 0x800018dc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9085        M 0x800018e0 li      s8, 6                  #; (wrb) s8  <-- 6
       0     9086        M 0x800018e4 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018ec
       0     9087        M 0x800018ec li      a0, 10                 #; (wrb) a0  <-- 10
       0     9098        M 0x800018f4 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000192c
       0     9099        M 0x800018f0 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9100        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9120        M 0x8000192c li      s0, 0                  #; (wrb) s0  <-- 0
       0     9132        M 0x80001930 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9133        M 0x80001934 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002934
       0     9134        M 0x80001938 addi    a1, a1, 1292           #; a1  = 0x80002934, (wrb) a1  <-- 0x80002e40
       0     9135        M 0x8000193c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e40, (wrb) a0  <-- 0x80002e70
       0     9146        M 0x80001940 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e70]
       0     9147        M 0x80001944 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     9151        M 0x80001948 fcvt.d.w ft0, s1               #; ac1  = 0
       0     9152        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9153        M 0x8000194c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     9155        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     9156        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9157        M 0x80001954 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002954
       0     9158        M 0x80001958 addi    a0, a0, 1524           #; a0  = 0x80002954, (wrb) a0  <-- 0x80002f48
                         M 0x80001950 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     9161        M 0x8000195c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f48], (f:fpu) ft2  <-- 0.0
       0     9169        M 0x80001960 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     9170        M                                           #; (f:lsu) ft0  <-- 0.5
       0     9171        M                                           #; (acc) gp  <-- 0xd21501d3
       0     9173        M 0x80001964 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     9174        M                                           #; (f:fpu) ft3  <-- 0.0
       0     9175        M 0x80001968 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     9178        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9179        M 0x8000196c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9182        M 0x80001970 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001990
       0     9204        M 0x80001990 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9206        M                                           #; (acc) s4  <-- 0x00059a63
       0     9207        M 0x80001994 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019a8
       0     9216        M 0x800019ac beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800019a8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     9217        M                                           #; (f:fpu) fs1  <-- 0.0
       0     9227        M 0x800019b0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     9228        M 0x800019b4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9229        M 0x800019b8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     9230        M 0x800019bc li      t0, 32                 #; (wrb) t0  <-- 32
       0     9239        M 0x800019c0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     9240        M 0x800019c4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     9241        M 0x800019c8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     9242        M 0x800019cc li      a6, 10                 #; (wrb) a6  <-- 10
       0     9251        M 0x800019d0 li      a7, 9                  #; (wrb) a7  <-- 9
       0     9252        M 0x800019d4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     9253        M 0x800019d8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     9254        M 0x800019dc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     9263        M 0x800019e0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     9264        M 0x800019e4 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     9267        M                                           #; (acc) a3  <-- 0x40d586b3
       0     9268        M 0x800019e8 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     9269        M 0x800019ec ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     9275        M 0x800019f0 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     9276        M 0x800019f4 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     9277        M 0x800019f8 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     9278        M 0x800019fc bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     9290        M 0x80001a00 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     9291        M 0x80001a04 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     9292        M 0x80001a08 li      a3, 30                 #; (wrb) a3  <-- 30
       0     9293        M 0x80001a0c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     9302        M 0x80001a10 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     9303        M 0x80001a14 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     9304        M 0x80001a18 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     9305        M 0x80001a1c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     9314        M 0x80001a20 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     9315        M 0x80001a24 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     9316        M 0x80001a28 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     9317        M 0x80001a2c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     9326        M 0x80001a30 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     9327        M 0x80001a34 li      a1, 31                 #; (wrb) a1  <-- 31
       0     9328        M 0x80001a38 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     9329        M 0x80001a3c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     9338        M 0x80001a40 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     9339        M 0x80001a44 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a4c
       0     9340        M 0x80001a4c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     9350        M 0x80001a50 li      a1, 48                 #; (wrb) a1  <-- 48
       0     9351        M 0x80001a54 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a54
       0     9352        M 0x80001a58 jalr    ra, ra, -1276          #; ra  = 0x80000a54, (wrb) ra  <-- 0x80001a5c, goto 0x80000558
       0     9373        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     9374        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     9385        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     9408        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     9420        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     9421        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     9422        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     9423        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     9443        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     9444        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     9455        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     9456        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     9457        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     9458        M 0x800005ec ret                            #; ra  = 0x80001a5c, goto 0x80001a5c
       0     9469        M 0x80001a5c li      a0, 0                  #; (wrb) a0  <-- 0
       0     9472        M 0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     9473        M 0x80001a64 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     9474        M 0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     9475        M 0x80001a6c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     9484        M 0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9485        M 0x80001a74 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     9486        M 0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
       0     9487        M 0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     9488        M 0x80001a64 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     9489        M 0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     9490        M 0x80001a6c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     9491        M 0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9492        M 0x80001a74 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     9493        M 0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
       0     9494        M 0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     9495        M 0x80001a64 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     9496        M 0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     9497        M 0x80001a6c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     9498        M 0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9499        M 0x80001a74 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     9500        M 0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
       0     9501        M 0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     9502        M 0x80001a64 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     9503        M 0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     9504        M 0x80001a6c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     9505        M 0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9506        M 0x80001a74 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     9507        M 0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
       0     9508        M 0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     9509        M 0x80001a64 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     9510        M 0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     9511        M 0x80001a6c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     9512        M 0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     9513        M 0x80001a74 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     9514        M 0x80001a78 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     9515        M 0x80001a7c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     9527        M 0x80001a80 j       pc + 0x28              #; goto 0x80001aa8
       0     9539        M 0x80001aa8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     9540        M 0x80001aac addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     9551        M 0x80001ab0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9552        M 0x80001ab4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     9553        M 0x80001ab8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     9554        M 0x80001abc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     9563        M 0x80001ac0 j       pc + 0x8               #; goto 0x80001ac8
       0     9564        M 0x80001ac8 li      a0, 32                 #; (wrb) a0  <-- 32
       0     9565        M 0x80001acc mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     9576        M 0x80001ad0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     9577        M 0x80001ad4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9579        M 0x80001adc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001ad8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     9588        M 0x80001ae0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     9589        M 0x80001ae4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9590        M 0x80001ae8 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     9591        M 0x80001aec li      a4, 18                 #; (wrb) a4  <-- 18
       0     9600        M 0x80001af0 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     9601        M 0x80001af4 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     9604        M                                           #; (acc) a5  <-- 0x01f55793
       0     9605        M 0x80001af8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     9606        M 0x80001afc srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     9612        M 0x80001b00 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     9613        M 0x80001b04 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     9616        M                                           #; (acc) a5  <-- 0x40f487b3
       0     9617        M 0x80001b08 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     9618        M 0x80001b0c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     9624        M 0x80001b10 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     9625        M 0x80001b14 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     9626        M 0x80001b18 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     9627        M 0x80001b1c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     9636        M 0x80001b20 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     9637        M 0x80001b24 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     9638        M 0x80001b28 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     9639        M 0x80001b2c j       pc + 0x8               #; goto 0x80001b34
       0     9651        M 0x80001b34 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     9652        M 0x80001b38 li      a0, 1                  #; (wrb) a0  <-- 1
       0     9653        M 0x80001b3c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ba8
       0     9674        M 0x80001ba8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     9675        M 0x80001bac bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     9686        M 0x80001bb0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bc8
       0     9698        M 0x80001bc8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     9699        M 0x80001bcc bnez    a0, pc + 32            #; a0  = 0, not taken
       0     9710        M 0x80001bd0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     9711        M 0x80001bd4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c00
       0     9733        M 0x80001c00 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     9734        M 0x80001c04 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     9735        M 0x80001c08 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     9736        M 0x80001c0c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     9745        M 0x80001c10 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     9746        M 0x80001c14 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     9747        M 0x80001c18 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c44
       0     9768        M 0x80001c44 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     9769        M 0x80001c48 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     9770        M 0x80001c4c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     9780        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     9781        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     9782        M 0x80001c58 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     9783        M 0x80001c5c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     9784        M                                           #; (lsu) a0  <-- 48
       0     9792        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9793        M 0x80001c64 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     9794        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9795        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0     9806        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     9807        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9808        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9818        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9819        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     9820        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     9821        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9822        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     9830        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9841        M                                           #; (lsu) a4  <-- 8
       0     9842        M 0x800015a4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     9843        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 9 ~~> Word[0x80002fd4]
       0     9844        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 8, (wrb) a4  <-- 0x80002fdc
       0     9845        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdc, 48 ~~> Byte[0x80003024]
       0     9846        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9867        M                                           #; (lsu) a4  <-- 9
       0     9868        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     9869        M 0x800015bc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     9870        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     9871        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     9872        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9873        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     9876        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0     9881        M 0x80001c70 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     9882        M 0x80001c74 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     9883        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c50
       0     9884        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     9885        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     9886        M 0x80001c58 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     9887        M 0x80001c5c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     9888        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9889        M 0x80001c64 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     9890        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9891        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0     9892        M                                           #; (lsu) a0  <-- 46
       0     9894        M 0x80001584 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     9895        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9896        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9897        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9898        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     9899        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     9900        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9901        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     9902        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9913        M                                           #; (lsu) a4  <-- 9
       0     9914        M 0x800015a4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     9915        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 10 ~~> Word[0x80002fd4]
       0     9916        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 9, (wrb) a4  <-- 0x80002fdd
       0     9917        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdd, 46 ~~> Byte[0x80003025]
       0     9918        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9939        M                                           #; (lsu) a4  <-- 10
       0     9940        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     9941        M 0x800015bc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     9942        M 0x800015c0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     9943        M 0x800015c4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     9944        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9945        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0     9948        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0     9953        M 0x80001c70 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     9954        M 0x80001c74 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     9955        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c50
       0     9956        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     9957        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     9958        M 0x80001c58 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     9959        M 0x80001c5c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     9960        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9961        M 0x80001c64 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     9962        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9963        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0     9964        M                                           #; (lsu) a0  <-- 48
       0     9966        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     9967        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9968        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9969        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9970        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0     9971        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0     9972        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9973        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0     9974        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0     9985        M                                           #; (lsu) a4  <-- 10
       0     9986        M 0x800015a4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     9987        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 11 ~~> Word[0x80002fd4]
       0     9988        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 10, (wrb) a4  <-- 0x80002fde
       0     9989        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fde, 48 ~~> Byte[0x80003026]
       0     9990        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10011        M                                           #; (lsu) a4  <-- 11
       0    10012        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10013        M 0x800015bc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10014        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10015        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10016        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10017        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0    10020        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0    10025        M 0x80001c70 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10026        M 0x80001c74 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10027        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c50
       0    10028        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10029        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10030        M 0x80001c58 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10031        M 0x80001c5c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10032        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10033        M 0x80001c64 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10034        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10035        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0    10036        M                                           #; (lsu) a0  <-- 48
       0    10038        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10039        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10040        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10041        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10042        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0    10043        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0    10044        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10045        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10046        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10057        M                                           #; (lsu) a4  <-- 11
       0    10058        M 0x800015a4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10059        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 12 ~~> Word[0x80002fd4]
       0    10060        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 11, (wrb) a4  <-- 0x80002fdf
       0    10061        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdf, 48 ~~> Byte[0x80003027]
       0    10062        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10083        M                                           #; (lsu) a4  <-- 12
       0    10084        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10085        M 0x800015bc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10086        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10087        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10088        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10089        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0    10092        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0    10097        M 0x80001c70 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10098        M 0x80001c74 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10099        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c50
       0    10100        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10101        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10102        M 0x80001c58 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10103        M 0x80001c5c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10104        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10105        M 0x80001c64 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10106        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10107        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0    10108        M                                           #; (lsu) a0  <-- 48
       0    10110        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10111        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10112        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10113        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10114        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0    10115        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0    10116        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10117        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10118        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10129        M                                           #; (lsu) a4  <-- 12
       0    10130        M 0x800015a4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10131        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 13 ~~> Word[0x80002fd4]
       0    10132        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 12, (wrb) a4  <-- 0x80002fe0
       0    10133        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe0, 48 ~~> Byte[0x80003028]
       0    10134        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10155        M                                           #; (lsu) a4  <-- 13
       0    10156        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10157        M 0x800015bc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10158        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10159        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10160        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10161        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0    10164        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0    10169        M 0x80001c70 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10170        M 0x80001c74 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10171        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c50
       0    10172        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    10173        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    10174        M 0x80001c58 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10175        M 0x80001c5c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10176        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10177        M 0x80001c64 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10178        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10179        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0    10180        M                                           #; (lsu) a0  <-- 48
       0    10182        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10183        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10184        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10185        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10186        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0    10187        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0    10188        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10189        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10190        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10201        M                                           #; (lsu) a4  <-- 13
       0    10202        M 0x800015a4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10203        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 14 ~~> Word[0x80002fd4]
       0    10204        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 13, (wrb) a4  <-- 0x80002fe1
       0    10205        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe1, 48 ~~> Byte[0x80003029]
       0    10206        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10227        M                                           #; (lsu) a4  <-- 14
       0    10228        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10229        M 0x800015bc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10230        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10231        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10232        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10233        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0    10236        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0    10241        M 0x80001c70 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10242        M 0x80001c74 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10243        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c50
       0    10244        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    10245        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    10246        M 0x80001c58 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10247        M 0x80001c5c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10248        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10249        M 0x80001c64 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10250        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10251        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0    10252        M                                           #; (lsu) a0  <-- 48
       0    10254        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10255        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10256        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10257        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10258        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0    10259        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0    10260        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10261        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10262        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10273        M                                           #; (lsu) a4  <-- 14
       0    10274        M 0x800015a4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10275        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 15 ~~> Word[0x80002fd4]
       0    10276        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 14, (wrb) a4  <-- 0x80002fe2
       0    10277        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe2, 48 ~~> Byte[0x8000302a]
       0    10278        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10299        M                                           #; (lsu) a4  <-- 15
       0    10300        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10301        M 0x800015bc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10302        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10303        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10304        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10305        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0    10308        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0    10313        M 0x80001c70 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10314        M 0x80001c74 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10315        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c50
       0    10316        M 0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    10317        M 0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    10318        M 0x80001c58 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10319        M 0x80001c5c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10320        M 0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10321        M 0x80001c64 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10322        M 0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10323        M 0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
       0    10324        M                                           #; (lsu) a0  <-- 48
       0    10326        M 0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10327        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10328        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10329        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10330        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0    10331        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0    10332        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10333        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10334        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10345        M                                           #; (lsu) a4  <-- 15
       0    10346        M 0x800015a4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10347        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 16 ~~> Word[0x80002fd4]
       0    10348        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 15, (wrb) a4  <-- 0x80002fe3
       0    10349        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe3, 48 ~~> Byte[0x8000302b]
       0    10350        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10371        M                                           #; (lsu) a4  <-- 16
       0    10372        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10373        M 0x800015bc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10374        M 0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10375        M 0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10376        M 0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10377        M 0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
       0    10380        M 0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
       0    10385        M 0x80001c70 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10386        M 0x80001c74 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10387        M 0x80001c78 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10388        M 0x80001c7c j       pc + 0x8               #; goto 0x80001c84
       0    10400        M 0x80001c84 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10401        M 0x80001c88 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10402        M 0x80001c8c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10412        M 0x80001c90 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10413        M 0x80001c94 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10414        M 0x80001c98 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cc8
       0    10435        M 0x80001cc8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10436        M 0x80001ccc mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10449        M 0x80001cd0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    10450        M 0x80001cdc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001cd4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0    10451        M 0x80001cd8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0    10452        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10454        M                                           #; (lsu) s10 <-- 0x80002c6e
       0    10459        M 0x80001ce0 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    10462        M                                           #; (lsu) s9  <-- 8
       0    10463        M 0x80001ce4 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    10466        M                                           #; (lsu) s8  <-- 16
       0    10467        M 0x80001ce8 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    10470        M                                           #; (lsu) s7  <-- 0
       0    10471        M 0x80001cec lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    10474        M                                           #; (lsu) s6  <-- 0
       0    10475        M 0x80001cf0 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    10478        M                                           #; (lsu) s5  <-- -1
       0    10479        M 0x80001cf4 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    10482        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    10483        M 0x80001cf8 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    10486        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    10487        M 0x80001cfc lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    10490        M                                           #; (lsu) s2  <-- 0x80001584
       0    10491        M 0x80001d00 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    10494        M                                           #; (lsu) s1  <-- 8
       0    10495        M 0x80001d04 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    10498        M                                           #; (lsu) s0  <-- 0
       0    10499        M 0x80001d08 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    10500        M 0x80001d0c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    10502        M                                           #; (lsu) ra  <-- 0x80000cb4
       0    10503        M 0x80001d10 ret                            #; ra  = 0x80000cb4, goto 0x80000cb4
       0    10515        M 0x80000cb4 j       pc + 0x7c0             #; goto 0x80001474
       0    10518        M 0x80001474 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10519        M 0x80001478 li      s6, 37                 #; (wrb) s6  <-- 37
       0    10520        M 0x8000147c li      s7, 46                 #; (wrb) s7  <-- 46
       0    10521        M 0x80001480 addi    s0, s10, 1             #; s10 = 0x80002c6e, (wrb) s0  <-- 0x80002c6f
       0    10522        M 0x80001484 j       pc - 0xa74             #; goto 0x80000a10
       0    10533        M 0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c6f, (wrb) s10 <-- 0x80002c71
       0    10534        M 0x80000a14 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10535        M 0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
       0    10536        M 0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c6f, a0  <~~ Byte[0x80002c6f]
       0    10547        M                                           #; (lsu) a0  <-- 10
       0    10548        M 0x80000a20 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10549        M 0x80000a24 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10550        M 0x80000a28 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10551        M 0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10557        M 0x80000a30 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10558        M 0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10559        M 0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
       0    10571        M 0x80001584 beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10572        M 0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10573        M 0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10574        M 0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10575        M 0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
       0    10576        M 0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
       0    10577        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10578        M 0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
       0    10579        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10590        M                                           #; (lsu) a4  <-- 16
       0    10591        M 0x800015a4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10592        M 0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 17 ~~> Word[0x80002fd4]
       0    10593        M 0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 16, (wrb) a4  <-- 0x80002fe4
       0    10594        M 0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe4, 10 ~~> Byte[0x8000302c]
       0    10595        M 0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
       0    10616        M                                           #; (lsu) a4  <-- 17
       0    10617        M 0x800015b8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    10618        M 0x800015bc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    10619        M 0x800015c0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    10620        M 0x800015c4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    10621        M 0x800015c8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    10622        M 0x800015cc bnez    a0, pc + 96            #; a0  = 0, not taken
       0    10623        M 0x800015d0 add     a0, a3, a2             #; a3  = 0x80002fd4, a2  = 0, (wrb) a0  <-- 0x80002fd4
       0    10624        M 0x800015d4 addi    a2, a0, 72             #; a0  = 0x80002fd4, (wrb) a2  <-- 0x8000301c
       0    10625        M 0x800015d8 sw      zero, 12(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe0]
       0    10626        M 0x800015dc li      a3, 64                 #; (wrb) a3  <-- 64
       0    10635        M 0x800015e0 sw      a3, 8(a0)              #; a0  = 0x80002fd4, 64 ~~> Word[0x80002fdc]
       0    10636        M 0x800015e4 sw      zero, 20(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe8]
       0    10637        M 0x800015e8 li      a3, 1                  #; (wrb) a3  <-- 1
       0    10638        M 0x800015ec sw      a3, 16(a0)             #; a0  = 0x80002fd4, 1 ~~> Word[0x80002fe4]
       0    10647        M 0x800015f0 sw      zero, 28(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff0]
       0    10648        M 0x800015f4 sw      a2, 24(a0)             #; a0  = 0x80002fd4, 0x8000301c ~~> Word[0x80002fec]
       0    10650        M 0x800015f8 lw      a2, 0(a1)              #; a1  = 0x80002fd4, a2  <~~ Word[0x80002fd4]
       0    10651        M 0x800015fc addi    a3, a0, 8              #; a0  = 0x80002fd4, (wrb) a3  <-- 0x80002fdc
       0    10660        M 0x80001600 sw      zero, 36(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff8]
       0    10679        M                                           #; (lsu) a2  <-- 17
       0    10680        M 0x80001604 sw      a2, 32(a0)             #; a0  = 0x80002fd4, 17 ~~> Word[0x80002ff4]
       0    10681        M 0x80001608 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003608
       0    10682        M 0x8000160c addi    a0, a0, -1864          #; a0  = 0x80003608, (wrb) a0  <-- 0x80002ec0
       0    10683        M 0x80001610 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80002fdc ~~> Word[0x80002ec0]
       0    10684        M 0x80001614 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003614
       0    10685        M 0x80001618 addi    a0, a0, -1812          #; a0  = 0x80003614, (wrb) a0  <-- 0x80002f00
       0    10686        M 0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0    10709        M                                           #; (lsu) a2  <-- 1
       0    10710        M 0x80001620 beqz    a2, pc - 4             #; a2  = 1, not taken
       0    10711        M 0x80001624 sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
       0    10712        M 0x80001628 sw      zero, 0(a1)            #; a1  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
       0    10713        M 0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
       0    10716        M 0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6f, (wrb) s0  <-- 0x80002c70
       0    10719        M 0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c71, (wrb) s10 <-- 0x80002c72
       0    10720        M 0x80000a44 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    10721        M 0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c70, a0  <~~ Byte[0x80002c70]
       0    10734        M                                           #; (lsu) a0  <-- 0
       0    10735        M 0x80000a4c bnez    a0, pc - 40            #; a0  = 0, not taken
       0    10747        M 0x80000a50 j       pc + 0xad8             #; goto 0x80001528
       0    10750        M 0x80001528 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    10751        M 0x8000152c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001534
       0    10753        M 0x80001534 li      a0, 0                  #; (wrb) a0  <-- 0
       0    10754        M 0x80001538 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10755        M 0x8000153c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10756        M 0x80001540 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80001544, goto 0x80001584
       0    10770        M 0x80001584 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000162c
       0    10775        M 0x8000162c ret                            #; ra  = 0x80001544, goto 0x80001544
       0    10776        M 0x80001544 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    10777        M 0x80001548 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    10780        M                                           #; (lsu) s11 <-- 0
       0    10781        M 0x8000154c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    10784        M                                           #; (lsu) s10 <-- 0
       0    10785        M 0x80001550 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    10788        M                                           #; (lsu) s9  <-- 0
       0    10789        M 0x80001554 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    10792        M                                           #; (lsu) s8  <-- 0
       0    10793        M 0x80001558 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    10796        M                                           #; (lsu) s7  <-- 0
       0    10797        M 0x8000155c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    10800        M                                           #; (lsu) s6  <-- 0
       0    10801        M 0x80001560 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    10804        M                                           #; (lsu) s5  <-- 0
       0    10805        M 0x80001564 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    10808        M                                           #; (lsu) s4  <-- 0
       0    10809        M 0x80001568 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    10812        M                                           #; (lsu) s3  <-- 0
       0    10813        M 0x8000156c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    10816        M                                           #; (lsu) s2  <-- 0
       0    10817        M 0x80001570 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    10820        M                                           #; (lsu) s1  <-- 0
       0    10821        M 0x80001574 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    10824        M                                           #; (lsu) s0  <-- 0
       0    10825        M 0x80001578 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    10826        M 0x8000157c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    10828        M                                           #; (lsu) ra  <-- 0x80000980
       0    10829        M 0x80001580 ret                            #; ra  = 0x80000980, goto 0x80000980
       0    10841        M 0x80000980 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    10842        M 0x80000984 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    10844        M                                           #; (lsu) ra  <-- 0x80000910
       0    10845        M 0x80000988 ret                            #; ra  = 0x80000910, goto 0x80000910
       0    10855        M 0x80000910 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002910
       0    10856        M 0x80000914 addi    a0, a0, 1552           #; a0  = 0x80002910, (wrb) a0  <-- 0x80002f20
       0    10859        M 0x80000918 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f20]
       0    10860        M 0x80000924 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0    10861        M 0x80000928 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0    10868        M                                           #; (f:lsu) ft3  <-- 0.0001
       0    10869        M 0x8000091c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0    10870        M                                           #; (lsu) ra  <-- 0x800029e0
       0    10871        M 0x8000092c ret                            #; ra  = 0x800029e0, goto 0x800029e0
                         M 0x80000920 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0    10872        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10883        M 0x800029e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0    10884        M 0x800029e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e4
       0    10885        M 0x800029e8 jalr    ra, ra, 524            #; ra  = 0x800029e4, (wrb) ra  <-- 0x800029ec, goto 0x80002bf0
       0    10906        M 0x80002bf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    10907        M 0x80002bf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029ec ~~> Word[0x0011ff5c]
       0    10908        M 0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
       0    10909        M 0x80002bfc jalr    ra, ra, -1260          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x8000270c
       0    10929        M 0x8000270c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    10941        M 0x80002710 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    10942        M 0x80002714 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    10945        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    10946        M 0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    10949        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    10950        M 0x8000271c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    10953        M 0x80002720 ret                            #; ra  = 0x80002c00, (lsu) a0  <-- 0x00120190, goto 0x80002c00
       0    10954        M 0x80002c00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    10964        M                                           #; (lsu) a0  <-- 0
       0    10965        M 0x80002c04 mv      zero, a0               #; a0  = 0
       0    10966        M 0x80002c08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    10967        M 0x80002c0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    10969        M                                           #; (lsu) ra  <-- 0x800029ec
       0    10970        M 0x80002c10 ret                            #; ra  = 0x800029ec, goto 0x800029ec
       0    10973        M 0x800029ec mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0    10977        M 0x800029f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029f0
       0    10978        M 0x800029f4 jalr    ra, ra, 556            #; ra  = 0x800029f0, (wrb) ra  <-- 0x800029f8, goto 0x80002c1c
       0    10979        M 0x80002c1c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    10980        M 0x80002c20 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0    10981        M 0x80002c24 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029f8 ~~> Word[0x0011ff5c]
       0    10982        M 0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
       0    10983        M 0x80002c2c jalr    ra, ra, -1340          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x800026ec
       0    11004        M 0x800026ec lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11016        M 0x800026f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11017        M 0x800026f4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11020        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11021        M 0x800026f8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11024        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11025        M 0x800026fc lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11026        M 0x80002700 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11028        M                                           #; (lsu) a0  <-- 0
       0    11029        M 0x80002704 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11030        M 0x80002708 ret                            #; ra  = 0x80002c30, goto 0x80002c30
       0    11031        M 0x80002c30 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11034        M                                           #; (lsu) t0  <-- 0
       0    11035        M 0x80002c34 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11036        M 0x80002c38 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11037        M 0x80002c3c bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11038        M                                           #; (lsu) ra  <-- 0x800029f8
       0    11043        M 0x80002c40 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0    11044        M 0x80002c44 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0    11045        M 0x80002c48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c48
       0    11046        M 0x80002c4c addi    t1, t1, 632            #; t1  = 0x80002c48, (wrb) t1  <-- 0x80002ec0
       0    11054        M 0x80002c50 sw      t0, 0(t1)              #; t1  = 0x80002ec0, 1 ~~> Word[0x80002ec0]
       0    11055        M 0x80002c54 ret                            #; ra  = 0x800029f8, goto 0x800029f8
       0    11069        M 0x800029f8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4827):
snitch_loads                                    38
snitch_stores                                   50
fpss_stores                                      1
fpss_loads                                       0
snitch_avg_load_latency                    18.2105
snitch_occupancy                            0.3493
snitch_fseq_rel_offloads                    0.2062
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0907
fpss_fpu_occupancy                          0.0897
fpss_fpu_rel_occupancy                      0.9886
cycles                                        4816
total_ipc                                   0.4400

Performance metrics for section 1 @ (4829, 5240):
snitch_loads                                     0
fpss_loads                                       0
snitch_avg_load_latency                          0
snitch_occupancy                            0.4702
snitch_fseq_rel_offloads                    0.3179
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                            58
fpss_avg_fpu_latency                           3.5
fpss_avg_load_latency                            0
fpss_occupancy                              0.2191
fpss_fpu_occupancy                          0.1830
fpss_fpu_rel_occupancy                      0.8350
cycles                                         470
total_ipc                                   0.6894

Performance metrics for section 2 @ (5242, 11069):
snitch_stores                                  171
snitch_loads                                   178
fpss_loads                                      13
fpss_stores                                      4
snitch_avg_load_latency                     9.7921
snitch_occupancy                            0.2984
snitch_fseq_rel_offloads                    0.0208
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.5143
fpss_avg_load_latency                       5.9231
fpss_occupancy                              0.0063
fpss_fpu_occupancy                          0.0060
fpss_fpu_rel_occupancy                      0.9459
cycles                                        5828
total_ipc                                   0.3047
